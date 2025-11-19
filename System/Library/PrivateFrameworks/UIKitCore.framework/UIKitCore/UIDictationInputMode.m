@interface UIDictationInputMode
- (id)indicatorIconForDictationLanguage:(id)a3 scaleFactor:(double)a4;
- (void)setIsCurrentDictationLanguageOnDevice:(BOOL)a3;
- (void)setUsingTypeAndTalk:(BOOL)a3;
@end

@implementation UIDictationInputMode

- (void)setUsingTypeAndTalk:(BOOL)a3
{
  if (+[UIKeyboard isMajelEnabled])
  {
    self->_usingTypeAndTalk = a3;
    if (+[UIKeyboard isKeyboardProcess])
    {
      v5 = +[UIKeyboardImpl activeInstance];
      v6 = [v5 inputDelegateManager];
      v11 = [v6 inputSystemSourceSession];

      if (v11)
      {
        v7 = [v11 textOperations];
        v8 = [MEMORY[0x1E695DF90] dictionary];
        v9 = NSStringFromSelector(sel_setUsingTypeAndTalk_);
        [v8 setObject:v9 forKeyedSubscript:@"selector"];

        v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_usingTypeAndTalk];
        [v8 setObject:v10 forKeyedSubscript:@"usingTypeAndTalk"];

        [v7 setCustomInfoType:0x1EFB7C8F0];
        [v7 setCustomInfo:v8];
        [v11 flushOperations];
      }
    }
  }
}

- (void)setIsCurrentDictationLanguageOnDevice:(BOOL)a3
{
  v3 = a3;
  self->_isCurrentDictationLanguageOnDevice = a3;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v5 = [v4 inputDelegateManager];
    v10 = [v5 inputSystemSourceSession];

    if (v10)
    {
      v6 = [v10 textOperations];
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v8 = NSStringFromSelector(sel_setIsCurrentDictationLanguageOnDevice_);
      [v7 setObject:v8 forKeyedSubscript:@"selector"];

      v9 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      [v7 setObject:v9 forKeyedSubscript:@"isCurrentDictationLanguageOnDevice"];

      [v6 setCustomInfoType:0x1EFB7C8F0];
      [v6 setCustomInfo:v7];
      [v10 flushOperations];
    }
  }
}

- (id)indicatorIconForDictationLanguage:(id)a3 scaleFactor:(double)a4
{
  v6 = a3;
  if (self->_cachedIcons)
  {
    v7 = [(UIKeyboardInputMode *)self cachedSizeCategory];
    v8 = [UIApp preferredContentSizeCategory];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      [(NSMutableDictionary *)self->_cachedIcons removeAllObjects];
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    cachedIcons = self->_cachedIcons;
    self->_cachedIcons = v10;
  }

  v12 = [v6 stringByAppendingFormat:@".%.2f", *&a4];
  v13 = [(NSMutableDictionary *)self->_cachedIcons objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    goto LABEL_19;
  }

  v15 = +[UIKeyboardInputModeController sharedInputModeController];
  v16 = [v15 keyboardLanguageForDictationLanguage:v6];

  if ([v16 isEqualToString:v6])
  {
    v17 = +[UIKeyboardInputModeController sharedInputModeController];
    v18 = [v17 activeInputModes];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __70__UIDictationInputMode_indicatorIconForDictationLanguage_scaleFactor___block_invoke;
    v32[3] = &unk_1E70FD190;
    v19 = v16;
    v33 = v19;
    v20 = [v18 indexOfObjectPassingTest:v32];

    v21 = +[UIKeyboardInputModeController sharedInputModeController];
    v22 = v21;
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = [v21 inputModeWithIdentifier:v19];
    }

    else
    {
      v28 = [v21 activeInputModes];
      v23 = [v28 objectAtIndex:v20];
    }

    v29 = +[_UIKeyboardInputModeIconConfiguration defaultConfiguration];
    [v29 setScaleFactor:a4];
    v27 = [v23 _indicatorIconWithConfiguration:v29];

    if (!v27)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v24 = UIKeyboardLocalizedDictationDisplayName(v6);
    if ([v24 length])
    {
      v25 = +[_UIKeyboardInputModeIconConfiguration defaultConfiguration];
      v26 = [v24 substringToIndex:1];
      v27 = [(UIKeyboardInputMode *)self imageForInputModeLabel:v26 secondaryIconLabel:0 artwork:0 withConfiguration:v25];
    }

    else
    {
      v27 = 0;
    }

    if (!v27)
    {
      goto LABEL_18;
    }
  }

  [(NSMutableDictionary *)self->_cachedIcons setObject:v27 forKey:v12];
  v30 = [UIApp preferredContentSizeCategory];
  [(UIKeyboardInputMode *)self setCachedSizeCategory:v30];

LABEL_18:
  v14 = v27;

LABEL_19:

  return v14;
}

uint64_t __70__UIDictationInputMode_indicatorIconForDictationLanguage_scaleFactor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 normalizedIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end