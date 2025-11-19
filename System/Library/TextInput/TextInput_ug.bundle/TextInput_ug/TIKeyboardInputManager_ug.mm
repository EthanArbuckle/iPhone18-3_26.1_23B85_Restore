@interface TIKeyboardInputManager_ug
- (id)keyboardConfigurationLayoutTag;
@end

@implementation TIKeyboardInputManager_ug

- (id)keyboardConfigurationLayoutTag
{
  if ([TIKeyboardInputManager_ug keyboardConfigurationLayoutTag]::__onceToken != -1)
  {
    [TIKeyboardInputManager_ug keyboardConfigurationLayoutTag];
  }

  v3 = [(TIKeyboardInputManager_ug *)self keyboardState];
  v4 = [v3 documentState];
  v5 = [v4 contextBeforeInput];

  if ([v5 length])
  {
    v6 = [v5 rangeOfCharacterFromSet:-[TIKeyboardInputManager_ug keyboardConfigurationLayoutTag]::__nonLetterSet options:4];
  }

  else
  {
    v7 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v5 substringFromIndex:v6 + v7];

    v5 = v8;
  }

  if ([v5 length])
  {
    v9 = @"Default";
  }

  else
  {
    v9 = @"Initial";
  }

  return v9;
}

@end