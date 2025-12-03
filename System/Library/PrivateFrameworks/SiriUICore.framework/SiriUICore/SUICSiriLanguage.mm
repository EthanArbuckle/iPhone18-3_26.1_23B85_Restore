@interface SUICSiriLanguage
- (BOOL)_setupAssistantHasCompletedInitialRunAvailable;
- (SUICSiriLanguage)initWithDelegate:(id)delegate;
- (SUICSiriLanguageDelegate)_delegate;
- (id)_computeSpokenLanguageCode;
- (uint64_t)_computeSpokenLanguageCode;
- (void)_setSpokenLanguageCode:(id)code;
- (void)_updateSpokenLanguageCode;
- (void)dealloc;
@end

@implementation SUICSiriLanguage

- (SUICSiriLanguage)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SUICSiriLanguage;
  v5 = [(SUICSiriLanguage *)&v12 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_setupAssistantHasCompletedInitialRunChecked = 0;
    objc_storeWeak(&v5->_delegate, delegateCopy);
    _computeSpokenLanguageCode = [(SUICSiriLanguage *)v6 _computeSpokenLanguageCode];
    spokenLanguageCode = v6->_spokenLanguageCode;
    v6->_spokenLanguageCode = _computeSpokenLanguageCode;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__spokenLanguageDidChange_ name:*MEMORY[0x1E698D080] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SUICSiriLanguage;
  [(SUICSiriLanguage *)&v4 dealloc];
}

- (void)_updateSpokenLanguageCode
{
  _computeSpokenLanguageCode = [(SUICSiriLanguage *)self _computeSpokenLanguageCode];
  [(SUICSiriLanguage *)self _setSpokenLanguageCode:_computeSpokenLanguageCode];
}

- (void)_setSpokenLanguageCode:(id)code
{
  codeCopy = code;
  if (![(NSString *)self->_spokenLanguageCode isEqualToString:?])
  {
    v4 = [codeCopy copy];
    spokenLanguageCode = self->_spokenLanguageCode;
    self->_spokenLanguageCode = v4;

    _delegate = [(SUICSiriLanguage *)self _delegate];
    [_delegate siriLanguageSpokenLanguageCodeDidChange:self];
  }
}

- (BOOL)_setupAssistantHasCompletedInitialRunAvailable
{
  if (self->_setupAssistantHasCompletedInitialRunChecked)
  {
    return self->_setupAssistantHasCompletedInitialRunAvailable;
  }

  else
  {
    v3 = SetupAssistantLibraryCore() != 0;
    self->_setupAssistantHasCompletedInitialRunAvailable = v3;
    self->_setupAssistantHasCompletedInitialRunChecked = 1;
  }

  return v3;
}

- (id)_computeSpokenLanguageCode
{
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  languageCode = [mEMORY[0x1E698D1C0] languageCode];

  if ([(SUICSiriLanguage *)self _setupAssistantHasCompletedInitialRunAvailable])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v5 = getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr;
    v22 = getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr;
    if (!getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke;
      v18[3] = &unk_1E81E7E68;
      v18[4] = &v19;
      __getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke(v18);
      v5 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v5)
    {
      _computeSpokenLanguageCode = [SUICSiriLanguage _computeSpokenLanguageCode];
      _Block_object_dispose(&v19, 8);
      _Unwind_Resume(_computeSpokenLanguageCode);
    }

    if ((v5() & 1) == 0)
    {
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      if (![preferredLanguages count])
      {
LABEL_20:

        goto LABEL_21;
      }

      v7 = [preferredLanguages objectAtIndex:0];
      if ([v7 isEqualToString:@"en-GB"])
      {
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        v9 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];

        if (([v9 isEqualToString:@"AU"] & 1) == 0)
        {
LABEL_15:

LABEL_16:
          v13 = AFPreferencesSupportedLanguages();
          v14 = [v13 containsObject:v7];

          if (v14 && ([languageCode isEqualToString:v7] & 1) == 0)
          {
            v15 = v7;

            languageCode = v15;
          }

          goto LABEL_20;
        }

        v10 = @"en-AU";
      }

      else
      {
        if ([v7 length] >= 6)
        {
          v11 = [v7 substringToIndex:2];

          v7 = v11;
        }

        if ([v7 length] > 2)
        {
          goto LABEL_16;
        }

        currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
        v9 = [currentLocale2 objectForKey:*MEMORY[0x1E695D978]];

        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v7, v9];
      }

      v7 = v10;
      goto LABEL_15;
    }
  }

LABEL_21:

  return languageCode;
}

- (SUICSiriLanguageDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (uint64_t)_computeSpokenLanguageCode
{
  dlerror();
  v0 = abort_report_np();
  return [_SUICProgressRingLayer setSpinning:v0];
}

@end