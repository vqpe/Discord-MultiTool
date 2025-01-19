@echo off
if not exist requirements.txt (
    echo requirements.txt not found!
    pause
    exit /b
)

echo Installing packages from requirements.txt..
for /f "tokens=*" %%i in (requirements.txt) do (
    echo Installing %%i...
    pip install %%i
)

echo All packages installed successfully!
pause
