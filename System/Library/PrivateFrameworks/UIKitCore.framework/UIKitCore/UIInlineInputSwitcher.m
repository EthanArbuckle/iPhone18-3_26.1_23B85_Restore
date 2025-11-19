@interface UIInlineInputSwitcher
- (id)defaultInputMode;
- (id)nextInputMode;
- (id)previousInputMode;
- (void)reloadInputModes;
- (void)updateInputModes:(id)a3 withHUD:(BOOL)a4;
@end

@implementation UIInlineInputSwitcher

- (void)reloadInputModes
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  [v4 _clearAllExtensionsIfNeeded];

  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 isMinimized];

  if (v6)
  {
    v29 = self;
    v30 = v3;
    v7 = UIKeyboardGetActiveUniqueInputModesForHardwareKeyboard();
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v9 = [v8 inputViews];
    v10 = [v9 isCustomInputView];

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

          if (!v10 || ([v18 hardwareLayout], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
          {
            if (([v18 isEmojiInputMode] & 1) == 0)
            {
              v20 = [v18 primaryLanguage];
              IsNonLinguistic = UIKeyboardInputModeIsNonLinguistic(v20);

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

    self = v29;
    v3 = v30;
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
            [v3 addObject:v26];
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v23);
    }
  }

  [(UIInlineInputSwitcher *)self setAvailableInputModes:v3];
}

- (id)defaultInputMode
{
  v3 = UIKeyboardGetCurrentInputMode();
  v4 = [(UIInlineInputSwitcher *)self availableInputModes];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [(UIInlineInputSwitcher *)self availableInputModes];
    v7 = [v6 firstObject];

    v3 = v7;
  }

  return v3;
}

- (id)nextInputMode
{
  v3 = [(UIInlineInputSwitcher *)self availableInputModes];
  if ([(UIInputSwitcher *)self isVisible])
  {
    [(UIInlineInputSwitcher *)self selectedInputMode];
  }

  else
  {
    [(UIInlineInputSwitcher *)self defaultInputMode];
  }
  v4 = ;
  v5 = [v3 indexOfObject:v4];

  v6 = [(UIInlineInputSwitcher *)self availableInputModes];
  v7 = (v5 + 1) % [v6 count];

  v8 = [(UIInlineInputSwitcher *)self availableInputModes];
  v9 = [v8 objectAtIndexedSubscript:v7];

  return v9;
}

- (id)previousInputMode
{
  v3 = [(UIInlineInputSwitcher *)self availableInputModes];
  if ([(UIInputSwitcher *)self isVisible])
  {
    [(UIInlineInputSwitcher *)self selectedInputMode];
  }

  else
  {
    [(UIInlineInputSwitcher *)self defaultInputMode];
  }
  v4 = ;
  v5 = [v3 indexOfObject:v4];

  if (v5 <= 0)
  {
    v6 = [(UIInlineInputSwitcher *)self availableInputModes];
    v5 = [v6 count];
  }

  v7 = [(UIInlineInputSwitcher *)self availableInputModes];
  v8 = [v7 objectAtIndexedSubscript:v5 - 1];

  return v8;
}

- (void)updateInputModes:(id)a3 withHUD:(BOOL)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(UIInputSwitcher *)self usingCapsLockLanguageSwitch];
  if (!a4)
  {
    v18[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(UIInlineInputSwitcher *)self setAvailableInputModes:v9];
LABEL_11:

    goto LABEL_12;
  }

  if (v7)
  {
    v8 = +[UIKeyboardInputModeController sharedInputModeController];
    v9 = [v8 currentLinguisticInputMode];

    v10 = [v9 identifier];
    v11 = [v10 isEqualToString:v6];

    if (v11)
    {
      v12 = +[UIKeyboardInputModeController sharedInputModeController];
      v13 = [v12 inputModeForASCIIToggleWithTraits:0];

      v9 = v13;
    }

    if (v9)
    {
      v17[0] = v6;
      v14 = [v9 identifier];
      v17[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      [(UIInlineInputSwitcher *)self setAvailableInputModes:v15];
    }

    else
    {
      v16 = v6;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      [(UIInlineInputSwitcher *)self setAvailableInputModes:v14];
    }

    goto LABEL_11;
  }

  [(UIInlineInputSwitcher *)self reloadInputModes];
LABEL_12:
}

@end