@interface SUICVoiceSelectionPresenter
- (SUICVoiceSelectionPresenter)initWithDataManaging:(id)managing view:(id)view delegate:(id)delegate voicePreviewing:(id)previewing recognitionLanguage:(id)language;
- (SUICVoiceSelectionPresenterDelegate)delegate;
- (SUICVoiceSelectionViewModel)voiceSelectionViewModel;
- (id)_localizedDisplayNameForLanguageCode:(id)code;
- (void)_determineVoiceOrdering;
- (void)_logVoicePreview:(id)preview;
- (void)_previewVoice:(id)voice completion:(id)completion;
- (void)_processVoiceSelection:(id)selection completion:(id)completion;
- (void)selectRandomVoiceWithCompletion:(id)completion;
- (void)stopVoicePreview;
- (void)voicePreviewerAudioOutputDidChangePowerLevel:(float)level;
- (void)voiceSelectionDataProviderVoiceCollectionDidChange:(id)change;
- (void)voiceSelectionView:(id)view receivedRequestToSelectLanguage:(id)language;
- (void)voiceSelectionView:(id)view receivedRequestToSelectVoice:(id)voice;
@end

@implementation SUICVoiceSelectionPresenter

- (SUICVoiceSelectionPresenter)initWithDataManaging:(id)managing view:(id)view delegate:(id)delegate voicePreviewing:(id)previewing recognitionLanguage:(id)language
{
  managingCopy = managing;
  viewCopy = view;
  delegateCopy = delegate;
  previewingCopy = previewing;
  languageCopy = language;
  v21.receiver = self;
  v21.super_class = SUICVoiceSelectionPresenter;
  v18 = [(SUICVoiceSelectionPresenter *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dataManager, managing);
    objc_storeStrong(&v19->_view, view);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    objc_storeStrong(&v19->_voicePreviewer, previewing);
    [(SUICVoicePreviewing *)v19->_voicePreviewer setDelegate:v19];
    [(SUICVoiceSelectionPresenter *)v19 _determineVoiceOrdering];
    [(SUICVoiceSelectionDataManaging *)v19->_dataManager setVoiceSelectionDataProviderObserver:v19];
    [(SUICVoiceSelectionDisplaying *)v19->_view setVoiceSelectionEventHandler:v19];
    [(SUICVoiceSelectionDisplaying *)v19->_view setVoiceSelectionViewModelProvider:v19];
    [(SUICVoiceSelectionDataManaging *)v19->_dataManager setRecognitionLanguageCode:languageCopy];
  }

  return v19;
}

- (void)selectRandomVoiceWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  voiceSelectionVoiceCollection = [(SUICVoiceSelectionDataManaging *)self->_dataManager voiceSelectionVoiceCollection];
  randomVoice = [voiceSelectionVoiceCollection randomVoice];

  self->_isRandomVoiceSelection = 1;
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SUICVoiceSelectionPresenter selectRandomVoiceWithCompletion:]";
    v15 = 2112;
    v16 = randomVoice;
    _os_log_impl(&dword_1C432B000, v7, OS_LOG_TYPE_DEFAULT, "%s Randomly selected voice:%@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__SUICVoiceSelectionPresenter_selectRandomVoiceWithCompletion___block_invoke;
  v10[3] = &unk_1E81E81F0;
  v11 = randomVoice;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = randomVoice;
  [(SUICVoiceSelectionPresenter *)self _processVoiceSelection:v9 completion:v10];
}

void __63__SUICVoiceSelectionPresenter_selectRandomVoiceWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *MEMORY[0x1E698D0A0];
  v7 = *MEMORY[0x1E698D0A0];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 136315650;
      v11 = "[SUICVoiceSelectionPresenter selectRandomVoiceWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1C432B000, v6, OS_LOG_TYPE_DEFAULT, "%s Processed randomly selected voice:%@ error:%@", &v10, 0x20u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__SUICVoiceSelectionPresenter_selectRandomVoiceWithCompletion___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

- (void)stopVoicePreview
{
  if (objc_opt_respondsToSelector())
  {
    voicePreviewer = self->_voicePreviewer;

    [(SUICVoicePreviewing *)voicePreviewer stopVoicePreview];
  }
}

- (void)_determineVoiceOrdering
{
  v9 = *MEMORY[0x1E69E9840];
  self->_reverseVoiceOrder = 0;
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    reverseVoiceOrder = self->_reverseVoiceOrder;
    v5 = 136315394;
    v6 = "[SUICVoiceSelectionPresenter _determineVoiceOrdering]";
    v7 = 1024;
    v8 = reverseVoiceOrder;
    _os_log_impl(&dword_1C432B000, v3, OS_LOG_TYPE_DEFAULT, "%s Should reverse order: %d", &v5, 0x12u);
  }
}

- (void)voiceSelectionDataProviderVoiceCollectionDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  voiceSelectionVoiceCollection = [changeCopy voiceSelectionVoiceCollection];

  currentVoice = [voiceSelectionVoiceCollection currentVoice];
  [WeakRetained presenter:self didChangeVoiceSelection:currentVoice];

  view = self->_view;

  [(SUICVoiceSelectionDisplaying *)view voiceSelectionViewModelDidChange];
}

- (void)voiceSelectionView:(id)view receivedRequestToSelectVoice:(id)voice
{
  voiceInfo = [voice voiceInfo];
  [(SUICVoiceSelectionPresenter *)self _processVoiceSelection:voiceInfo completion:0];
}

- (void)_processVoiceSelection:(id)selection completion:(id)completion
{
  selectionCopy = selection;
  completionCopy = completion;
  objc_initWeak(&location, self);
  dataManager = self->_dataManager;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__SUICVoiceSelectionPresenter__processVoiceSelection_completion___block_invoke;
  v11[3] = &unk_1E81E8218;
  v9 = completionCopy;
  v13 = v9;
  v11[4] = self;
  objc_copyWeak(&v14, &location);
  v10 = selectionCopy;
  v12 = v10;
  [(SUICVoiceSelectionDataManaging *)dataManager changeSiriVoiceToVoice:v10 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __65__SUICVoiceSelectionPresenter__processVoiceSelection_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (*(*(a1 + 32) + 17) != 1 || (v6 = objc_loadWeakRetained((a1 + 56)), v7 = [v6 bypassPreviewForRandomSelection], v6, (v7 & 1) == 0))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [WeakRetained _previewVoice:*(a1 + 40) completion:*(a1 + 48)];
    }

    *(*(a1 + 32) + 17) = 0;
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      __65__SUICVoiceSelectionPresenter__processVoiceSelection_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_previewVoice:(id)voice completion:(id)completion
{
  voiceCopy = voice;
  completionCopy = completion;
  if (([(AFVoiceInfo *)self->_voiceBeingPreviewed isEqual:voiceCopy]& 1) != 0)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }

    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [SUICVoiceSelectionPresenter _previewVoice:completion:];
    }
  }

  else
  {
    objc_storeStrong(&self->_voiceBeingPreviewed, voice);
    [(SUICVoiceSelectionPresenter *)self _logVoicePreview:voiceCopy];
    objc_initWeak(&location, self);
    voicePreviewer = self->_voicePreviewer;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__SUICVoiceSelectionPresenter__previewVoice_completion___block_invoke;
    v10[3] = &unk_1E81E8268;
    objc_copyWeak(&v13, &location);
    v11 = voiceCopy;
    v12 = completionCopy;
    [(SUICVoicePreviewing *)voicePreviewer previewVoice:v11 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __56__SUICVoiceSelectionPresenter__previewVoice_completion___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SUICVoiceSelectionPresenter__previewVoice_completion___block_invoke_2;
  block[3] = &unk_1E81E8240;
  objc_copyWeak(&v12, a1 + 6);
  v6 = a1[4];
  v13 = a2;
  v9 = v6;
  v10 = v5;
  v11 = a1[5];
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __56__SUICVoiceSelectionPresenter__previewVoice_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isEqual:WeakRetained[1]])
    {
      v3 = WeakRetained[1];
      WeakRetained[1] = 0;
    }

    if ((*(a1 + 64) & 1) == 0 && os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      __56__SUICVoiceSelectionPresenter__previewVoice_completion___block_invoke_2_cold_1();
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, *(a1 + 64), *(a1 + 40));
    }
  }
}

- (void)voiceSelectionView:(id)view receivedRequestToSelectLanguage:(id)language
{
  dataManager = self->_dataManager;
  languageCode = [language languageCode];
  [(SUICVoiceSelectionDataManaging *)dataManager changeSiriDialectLanguageToLanguageIdentifiedByLanguageCode:languageCode completion:&__block_literal_global_4];
}

void __82__SUICVoiceSelectionPresenter_voiceSelectionView_receivedRequestToSelectLanguage___block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[SUICVoiceSelectionPresenter voiceSelectionView:receivedRequestToSelectLanguage:]_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1C432B000, v5, OS_LOG_TYPE_DEFAULT, "%s Error changing Siri Output Accent: %@", &v6, 0x16u);
    }
  }
}

- (SUICVoiceSelectionViewModel)voiceSelectionViewModel
{
  v49 = *MEMORY[0x1E69E9840];
  _voiceCollection = [(SUICVoiceSelectionPresenter *)self _voiceCollection];
  array = [MEMORY[0x1E695DF70] array];
  languageCode = [_voiceCollection languageCode];
  v6 = [(SUICVoiceSelectionPresenter *)self _localizedDisplayNameForLanguageCode:languageCode];

  v7 = [SUICVoiceSelectionViewModelLanguage alloc];
  languageCode2 = [_voiceCollection languageCode];
  v36 = v6;
  v9 = [(SUICVoiceSelectionViewModelLanguage *)v7 initWithLanguageCode:languageCode2 localizedDisplayName:v6 isCurrentOutputLanguage:1];

  v35 = v9;
  [array addObject:v9];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  dialectLanguageCodes = [_voiceCollection dialectLanguageCodes];
  v11 = [dialectLanguageCodes countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(dialectLanguageCodes);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = [(SUICVoiceSelectionPresenter *)self _localizedDisplayNameForLanguageCode:v15];
        v17 = [[SUICVoiceSelectionViewModelLanguage alloc] initWithLanguageCode:v15 localizedDisplayName:v16 isCurrentOutputLanguage:0];
        [array addObject:v17];
      }

      v12 = [dialectLanguageCodes countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v12);
  }

  [array sortUsingComparator:&__block_literal_global_17];
  reverseVoiceOrder = self->_reverseVoiceOrder;
  v18 = _voiceCollection;
  v19 = [MEMORY[0x1E695DFA8] set];
  alternativeVoices = [v18 alternativeVoices];
  [v19 unionSet:alternativeVoices];

  v34 = v18;
  currentVoice = [v18 currentVoice];
  if (currentVoice)
  {
    [v19 addObject:currentVoice];
  }

  v22 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v19, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v23 = v19;
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v44;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [[SUICVoiceSelectionViewModelVoice alloc] initWithVoice:*(*(&v43 + 1) + 8 * j) isCurrentSiriVoice:*(*(&v43 + 1) + 8 * j) == currentVoice];
        [v22 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v25);
  }

  allObjects = [v22 allObjects];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = ___SUICGetViewModelVoicesForVoiceCollection_block_invoke;
  v41[3] = &__block_descriptor_33_e11_q24__0_8_16l;
  v42 = reverseVoiceOrder;
  v30 = [allObjects sortedArrayUsingComparator:v41];

  v31 = [[SUICVoiceSelectionViewModel alloc] initWithLanguages:array voices:v30];

  return v31;
}

uint64_t __54__SUICVoiceSelectionPresenter_voiceSelectionViewModel__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDisplayName];
  v6 = [v4 localizedDisplayName];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_localizedDisplayNameForLanguageCode:(id)code
{
  v3 = MEMORY[0x1E698D178];
  codeCopy = code;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance localizedNameForSiriLanguage:codeCopy inDisplayLanguage:0];

  return v6;
}

- (void)voicePreviewerAudioOutputDidChangePowerLevel:(float)level
{
  delegate = [(SUICVoiceSelectionPresenter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SUICVoiceSelectionPresenter *)self delegate];
    *&v7 = level;
    [delegate2 presenter:self didChangeAudioOutputPowerLevel:v7];
  }
}

- (void)_logVoicePreview:(id)preview
{
  previewCopy = preview;
  v3 = previewCopy;
  AnalyticsSendEventLazy();
}

id __48__SUICVoiceSelectionPresenter__logVoicePreview___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) languageCode];

  if (v3)
  {
    v4 = [*(a1 + 32) languageCode];
    [v2 setObject:v4 forKey:@"languageCode"];
  }

  v5 = [*(a1 + 32) name];

  if (v5)
  {
    v6 = [*(a1 + 32) name];
    [v2 setObject:v6 forKey:@"voiceName"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 40) + 16)];
  [v2 setObject:v7 forKey:@"isOrderReversed"];

  return v2;
}

- (SUICVoiceSelectionPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __63__SUICVoiceSelectionPresenter_selectRandomVoiceWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_1_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_1C432B000, v2, OS_LOG_TYPE_ERROR, "%s Failed to process randomly selected voice:%@ error:%@", v3, 0x20u);
}

@end