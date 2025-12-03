@interface UIDictationInputMode
- (id)indicatorIconForDictationLanguage:(id)language scaleFactor:(double)factor;
- (void)setIsCurrentDictationLanguageOnDevice:(BOOL)device;
- (void)setUsingTypeAndTalk:(BOOL)talk;
@end

@implementation UIDictationInputMode

- (void)setUsingTypeAndTalk:(BOOL)talk
{
  if (+[UIKeyboard isMajelEnabled])
  {
    self->_usingTypeAndTalk = talk;
    if (+[UIKeyboard isKeyboardProcess])
    {
      v5 = +[UIKeyboardImpl activeInstance];
      inputDelegateManager = [v5 inputDelegateManager];
      inputSystemSourceSession = [inputDelegateManager inputSystemSourceSession];

      if (inputSystemSourceSession)
      {
        textOperations = [inputSystemSourceSession textOperations];
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v9 = NSStringFromSelector(sel_setUsingTypeAndTalk_);
        [dictionary setObject:v9 forKeyedSubscript:@"selector"];

        v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_usingTypeAndTalk];
        [dictionary setObject:v10 forKeyedSubscript:@"usingTypeAndTalk"];

        [textOperations setCustomInfoType:0x1EFB7C8F0];
        [textOperations setCustomInfo:dictionary];
        [inputSystemSourceSession flushOperations];
      }
    }
  }
}

- (void)setIsCurrentDictationLanguageOnDevice:(BOOL)device
{
  deviceCopy = device;
  self->_isCurrentDictationLanguageOnDevice = device;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v4 inputDelegateManager];
    inputSystemSourceSession = [inputDelegateManager inputSystemSourceSession];

    if (inputSystemSourceSession)
    {
      textOperations = [inputSystemSourceSession textOperations];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v8 = NSStringFromSelector(sel_setIsCurrentDictationLanguageOnDevice_);
      [dictionary setObject:v8 forKeyedSubscript:@"selector"];

      v9 = [MEMORY[0x1E696AD98] numberWithBool:deviceCopy];
      [dictionary setObject:v9 forKeyedSubscript:@"isCurrentDictationLanguageOnDevice"];

      [textOperations setCustomInfoType:0x1EFB7C8F0];
      [textOperations setCustomInfo:dictionary];
      [inputSystemSourceSession flushOperations];
    }
  }
}

- (id)indicatorIconForDictationLanguage:(id)language scaleFactor:(double)factor
{
  languageCopy = language;
  if (self->_cachedIcons)
  {
    cachedSizeCategory = [(UIKeyboardInputMode *)self cachedSizeCategory];
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    v9 = [cachedSizeCategory isEqual:preferredContentSizeCategory];

    if ((v9 & 1) == 0)
    {
      [(NSMutableDictionary *)self->_cachedIcons removeAllObjects];
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cachedIcons = self->_cachedIcons;
    self->_cachedIcons = dictionary;
  }

  v12 = [languageCopy stringByAppendingFormat:@".%.2f", *&factor];
  v13 = [(NSMutableDictionary *)self->_cachedIcons objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    goto LABEL_19;
  }

  v15 = +[UIKeyboardInputModeController sharedInputModeController];
  v16 = [v15 keyboardLanguageForDictationLanguage:languageCopy];

  if ([v16 isEqualToString:languageCopy])
  {
    v17 = +[UIKeyboardInputModeController sharedInputModeController];
    activeInputModes = [v17 activeInputModes];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __70__UIDictationInputMode_indicatorIconForDictationLanguage_scaleFactor___block_invoke;
    v32[3] = &unk_1E70FD190;
    v19 = v16;
    v33 = v19;
    v20 = [activeInputModes indexOfObjectPassingTest:v32];

    v21 = +[UIKeyboardInputModeController sharedInputModeController];
    v22 = v21;
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = [v21 inputModeWithIdentifier:v19];
    }

    else
    {
      activeInputModes2 = [v21 activeInputModes];
      v23 = [activeInputModes2 objectAtIndex:v20];
    }

    v29 = +[_UIKeyboardInputModeIconConfiguration defaultConfiguration];
    [v29 setScaleFactor:factor];
    v27 = [v23 _indicatorIconWithConfiguration:v29];

    if (!v27)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v24 = UIKeyboardLocalizedDictationDisplayName(languageCopy);
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
  preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
  [(UIKeyboardInputMode *)self setCachedSizeCategory:preferredContentSizeCategory2];

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