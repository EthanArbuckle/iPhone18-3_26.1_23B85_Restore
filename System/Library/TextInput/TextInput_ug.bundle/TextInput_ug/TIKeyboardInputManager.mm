@interface TIKeyboardInputManager
@end

@implementation TIKeyboardInputManager

void __59__TIKeyboardInputManager_ug_keyboardConfigurationLayoutTag__block_invoke()
{
  v2 = [MEMORY[0x29EDB9F50] letterCharacterSet];
  v0 = [v2 invertedSet];
  v1 = [TIKeyboardInputManager_ug keyboardConfigurationLayoutTag]::__nonLetterSet;
  [TIKeyboardInputManager_ug keyboardConfigurationLayoutTag]::__nonLetterSet = v0;
}

@end