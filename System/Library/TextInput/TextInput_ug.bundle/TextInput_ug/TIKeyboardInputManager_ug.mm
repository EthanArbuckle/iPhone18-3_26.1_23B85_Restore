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

  keyboardState = [(TIKeyboardInputManager_ug *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];

  if ([contextBeforeInput length])
  {
    v6 = [contextBeforeInput rangeOfCharacterFromSet:-[TIKeyboardInputManager_ug keyboardConfigurationLayoutTag]::__nonLetterSet options:4];
  }

  else
  {
    v7 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [contextBeforeInput substringFromIndex:v6 + v7];

    contextBeforeInput = v8;
  }

  if ([contextBeforeInput length])
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