@interface UIInlineInputSwitcher
- (id)defaultInputMode;
- (id)nextInputMode;
- (id)previousInputMode;
- (void)reloadInputModes;
- (void)updateInputModes:(id)modes withHUD:(BOOL)d;
@end

@implementation UIInlineInputSwitcher

- (void)reloadInputModes
{
  v41 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  [v4 _clearAllExtensionsIfNeeded];

  v5 = +[UIKeyboardImpl activeInstance];
  isMinimized = [v5 isMinimized];

  if (isMinimized)
  {
    selfCopy = self;
    v30 = array;
    v7 = UIKeyboardGetActiveUniqueInputModesForHardwareKeyboard();
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    inputViews = [v8 inputViews];
    isCustomInputView = [inputViews isCustomInputView];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        v15 = 0;
        do
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * v15);
          v17 = +[UIKeyboardInputModeController sharedInputModeController];
          v18 = [v17 inputModeWithIdentifier:v16];

          if (!isCustomInputView || ([v18 hardwareLayout], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
          {
            if (([v18 isEmojiInputMode] & 1) == 0)
            {
              primaryLanguage = [v18 primaryLanguage];
              IsNonLinguistic = UIKeyboardInputModeIsNonLinguistic(primaryLanguage);

              if ((IsNonLinguistic & 1) == 0 && ([v18 isExtensionInputMode] & 1) == 0)
              {
                [v30 addObject:v16];
              }
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v13);
    }

    self = selfCopy;
    array = v30;
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = UIKeyboardActiveInputModes;
    v22 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        v25 = 0;
        do
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v11);
          }

          v26 = *(*(&v31 + 1) + 8 * v25);
          v27 = +[UIKeyboardInputModeController sharedInputModeController];
          v28 = [v27 inputModeWithIdentifier:v26];

          if (([v28 isEmojiInputMode] & 1) == 0)
          {
            [array addObject:v26];
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v23);
    }
  }

  [(UIInlineInputSwitcher *)self setAvailableInputModes:array];
}

- (id)defaultInputMode
{
  v3 = UIKeyboardGetCurrentInputMode();
  availableInputModes = [(UIInlineInputSwitcher *)self availableInputModes];
  v5 = [availableInputModes containsObject:v3];

  if ((v5 & 1) == 0)
  {
    availableInputModes2 = [(UIInlineInputSwitcher *)self availableInputModes];
    firstObject = [availableInputModes2 firstObject];

    v3 = firstObject;
  }

  return v3;
}

- (id)nextInputMode
{
  availableInputModes = [(UIInlineInputSwitcher *)self availableInputModes];
  if ([(UIInputSwitcher *)self isVisible])
  {
    [(UIInlineInputSwitcher *)self selectedInputMode];
  }

  else
  {
    [(UIInlineInputSwitcher *)self defaultInputMode];
  }
  v4 = ;
  v5 = [availableInputModes indexOfObject:v4];

  availableInputModes2 = [(UIInlineInputSwitcher *)self availableInputModes];
  v7 = (v5 + 1) % [availableInputModes2 count];

  availableInputModes3 = [(UIInlineInputSwitcher *)self availableInputModes];
  v9 = [availableInputModes3 objectAtIndexedSubscript:v7];

  return v9;
}

- (id)previousInputMode
{
  availableInputModes = [(UIInlineInputSwitcher *)self availableInputModes];
  if ([(UIInputSwitcher *)self isVisible])
  {
    [(UIInlineInputSwitcher *)self selectedInputMode];
  }

  else
  {
    [(UIInlineInputSwitcher *)self defaultInputMode];
  }
  v4 = ;
  v5 = [availableInputModes indexOfObject:v4];

  if (v5 <= 0)
  {
    availableInputModes2 = [(UIInlineInputSwitcher *)self availableInputModes];
    v5 = [availableInputModes2 count];
  }

  availableInputModes3 = [(UIInlineInputSwitcher *)self availableInputModes];
  v8 = [availableInputModes3 objectAtIndexedSubscript:v5 - 1];

  return v8;
}

- (void)updateInputModes:(id)modes withHUD:(BOOL)d
{
  v18[1] = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  usingCapsLockLanguageSwitch = [(UIInputSwitcher *)self usingCapsLockLanguageSwitch];
  if (!d)
  {
    v18[0] = modesCopy;
    currentLinguisticInputMode = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(UIInlineInputSwitcher *)self setAvailableInputModes:currentLinguisticInputMode];
LABEL_11:

    goto LABEL_12;
  }

  if (usingCapsLockLanguageSwitch)
  {
    v8 = +[UIKeyboardInputModeController sharedInputModeController];
    currentLinguisticInputMode = [v8 currentLinguisticInputMode];

    identifier = [currentLinguisticInputMode identifier];
    v11 = [identifier isEqualToString:modesCopy];

    if (v11)
    {
      v12 = +[UIKeyboardInputModeController sharedInputModeController];
      v13 = [v12 inputModeForASCIIToggleWithTraits:0];

      currentLinguisticInputMode = v13;
    }

    if (currentLinguisticInputMode)
    {
      v17[0] = modesCopy;
      identifier2 = [currentLinguisticInputMode identifier];
      v17[1] = identifier2;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      [(UIInlineInputSwitcher *)self setAvailableInputModes:v15];
    }

    else
    {
      v16 = modesCopy;
      identifier2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      [(UIInlineInputSwitcher *)self setAvailableInputModes:identifier2];
    }

    goto LABEL_11;
  }

  [(UIInlineInputSwitcher *)self reloadInputModes];
LABEL_12:
}

@end