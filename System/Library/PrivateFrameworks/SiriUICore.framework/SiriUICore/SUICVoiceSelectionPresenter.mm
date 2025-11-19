@interface SUICVoiceSelectionPresenter
- (SUICVoiceSelectionPresenter)initWithDataManaging:(id)a3 view:(id)a4 delegate:(id)a5 voicePreviewing:(id)a6 recognitionLanguage:(id)a7;
- (SUICVoiceSelectionPresenterDelegate)delegate;
- (SUICVoiceSelectionViewModel)voiceSelectionViewModel;
- (id)_localizedDisplayNameForLanguageCode:(id)a3;
- (void)_determineVoiceOrdering;
- (void)_logVoicePreview:(id)a3;
- (void)_previewVoice:(id)a3 completion:(id)a4;
- (void)_processVoiceSelection:(id)a3 completion:(id)a4;
- (void)selectRandomVoiceWithCompletion:(id)a3;
- (void)stopVoicePreview;
- (void)voicePreviewerAudioOutputDidChangePowerLevel:(float)a3;
- (void)voiceSelectionDataProviderVoiceCollectionDidChange:(id)a3;
- (void)voiceSelectionView:(id)a3 receivedRequestToSelectLanguage:(id)a4;
- (void)voiceSelectionView:(id)a3 receivedRequestToSelectVoice:(id)a4;
@end

@implementation SUICVoiceSelectionPresenter

- (SUICVoiceSelectionPresenter)initWithDataManaging:(id)a3 view:(id)a4 delegate:(id)a5 voicePreviewing:(id)a6 recognitionLanguage:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = SUICVoiceSelectionPresenter;
  v18 = [(SUICVoiceSelectionPresenter *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dataManager, a3);
    objc_storeStrong(&v19->_view, a4);
    objc_storeWeak(&v19->_delegate, v15);
    objc_storeStrong(&v19->_voicePreviewer, a6);
    [(SUICVoicePreviewing *)v19->_voicePreviewer setDelegate:v19];
    [(SUICVoiceSelectionPresenter *)v19 _determineVoiceOrdering];
    [(SUICVoiceSelectionDataManaging *)v19->_dataManager setVoiceSelectionDataProviderObserver:v19];
    [(SUICVoiceSelectionDisplaying *)v19->_view setVoiceSelectionEventHandler:v19];
    [(SUICVoiceSelectionDisplaying *)v19->_view setVoiceSelectionViewModelProvider:v19];
    [(SUICVoiceSelectionDataManaging *)v19->_dataManager setRecognitionLanguageCode:v17];
  }

  return v19;
}

- (void)selectRandomVoiceWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SUICVoiceSelectionDataManaging *)self->_dataManager voiceSelectionVoiceCollection];
  v6 = [v5 randomVoice];

  self->_isRandomVoiceSelection = 1;
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[SUICVoiceSelectionPresenter selectRandomVoiceWithCompletion:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1C432B000, v7, OS_LOG_TYPE_DEFAULT, "%s Randomly selected voice:%@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__SUICVoiceSelectionPresenter_selectRandomVoiceWithCompletion___block_invoke;
  v10[3] = &unk_1E81E81F0;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
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

- (void)voiceSelectionDataProviderVoiceCollectionDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [v4 voiceSelectionVoiceCollection];

  v7 = [v6 currentVoice];
  [WeakRetained presenter:self didChangeVoiceSelection:v7];

  view = self->_view;

  [(SUICVoiceSelectionDisplaying *)view voiceSelectionViewModelDidChange];
}

- (void)voiceSelectionView:(id)a3 receivedRequestToSelectVoice:(id)a4
{
  v5 = [a4 voiceInfo];
  [(SUICVoiceSelectionPresenter *)self _processVoiceSelection:v5 completion:0];
}

- (void)_processVoiceSelection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  dataManager = self->_dataManager;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__SUICVoiceSelectionPresenter__processVoiceSelection_completion___block_invoke;
  v11[3] = &unk_1E81E8218;
  v9 = v7;
  v13 = v9;
  v11[4] = self;
  objc_copyWeak(&v14, &location);
  v10 = v6;
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

- (void)_previewVoice:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([(AFVoiceInfo *)self->_voiceBeingPreviewed isEqual:v7]& 1) != 0)
  {
    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }

    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [SUICVoiceSelectionPresenter _previewVoice:completion:];
    }
  }

  else
  {
    objc_storeStrong(&self->_voiceBeingPreviewed, a3);
    [(SUICVoiceSelectionPresenter *)self _logVoicePreview:v7];
    objc_initWeak(&location, self);
    voicePreviewer = self->_voicePreviewer;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__SUICVoiceSelectionPresenter__previewVoice_completion___block_invoke;
    v10[3] = &unk_1E81E8268;
    objc_copyWeak(&v13, &location);
    v11 = v7;
    v12 = v8;
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

- (void)voiceSelectionView:(id)a3 receivedRequestToSelectLanguage:(id)a4
{
  dataManager = self->_dataManager;
  v5 = [a4 languageCode];
  [(SUICVoiceSelectionDataManaging *)dataManager changeSiriDialectLanguageToLanguageIdentifiedByLanguageCode:v5 completion:&__block_literal_global_4];
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
  v3 = [(SUICVoiceSelectionPresenter *)self _voiceCollection];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 languageCode];
  v6 = [(SUICVoiceSelectionPresenter *)self _localizedDisplayNameForLanguageCode:v5];

  v7 = [SUICVoiceSelectionViewModelLanguage alloc];
  v8 = [v3 languageCode];
  v36 = v6;
  v9 = [(SUICVoiceSelectionViewModelLanguage *)v7 initWithLanguageCode:v8 localizedDisplayName:v6 isCurrentOutputLanguage:1];

  v35 = v9;
  [v4 addObject:v9];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = [v3 dialectLanguageCodes];
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v47 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = [(SUICVoiceSelectionPresenter *)self _localizedDisplayNameForLanguageCode:v15];
        v17 = [[SUICVoiceSelectionViewModelLanguage alloc] initWithLanguageCode:v15 localizedDisplayName:v16 isCurrentOutputLanguage:0];
        [v4 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v12);
  }

  [v4 sortUsingComparator:&__block_literal_global_17];
  reverseVoiceOrder = self->_reverseVoiceOrder;
  v18 = v3;
  v19 = [MEMORY[0x1E695DFA8] set];
  v20 = [v18 alternativeVoices];
  [v19 unionSet:v20];

  v34 = v18;
  v21 = [v18 currentVoice];
  if (v21)
  {
    [v19 addObject:v21];
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

        v28 = [[SUICVoiceSelectionViewModelVoice alloc] initWithVoice:*(*(&v43 + 1) + 8 * j) isCurrentSiriVoice:*(*(&v43 + 1) + 8 * j) == v21];
        [v22 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v25);
  }

  v29 = [v22 allObjects];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = ___SUICGetViewModelVoicesForVoiceCollection_block_invoke;
  v41[3] = &__block_descriptor_33_e11_q24__0_8_16l;
  v42 = reverseVoiceOrder;
  v30 = [v29 sortedArrayUsingComparator:v41];

  v31 = [[SUICVoiceSelectionViewModel alloc] initWithLanguages:v4 voices:v30];

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

- (id)_localizedDisplayNameForLanguageCode:(id)a3
{
  v3 = MEMORY[0x1E698D178];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 localizedNameForSiriLanguage:v4 inDisplayLanguage:0];

  return v6;
}

- (void)voicePreviewerAudioOutputDidChangePowerLevel:(float)a3
{
  v5 = [(SUICVoiceSelectionPresenter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(SUICVoiceSelectionPresenter *)self delegate];
    *&v7 = a3;
    [v8 presenter:self didChangeAudioOutputPowerLevel:v7];
  }
}

- (void)_logVoicePreview:(id)a3
{
  v4 = a3;
  v3 = v4;
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