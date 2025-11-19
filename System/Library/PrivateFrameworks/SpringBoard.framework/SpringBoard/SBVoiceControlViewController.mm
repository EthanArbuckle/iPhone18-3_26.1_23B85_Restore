@interface SBVoiceControlViewController
- (BOOL)_hasPickableBluetoothDevice;
- (BOOL)recognitionSessionWillBeginAction:(id)a3;
- (CGRect)_flamesViewFrame;
- (SBVoiceControlViewController)initWithSource:(id)a3;
- (SBVoiceControlViewControllerDelegate)voiceControlDelegate;
- (float)audioLevelForFlamesView:(id)a3;
- (id)_availableRouteDictionaries;
- (id)_currentPreferredRouteDictionary;
- (id)_localizedStringForKey:(id)a3;
- (id)_newRecognitionSession;
- (id)_popNextRecognitionAudioInputPath;
- (id)_preferredRouteDictionaryWithAvailableRouteDictionaries:(id)a3 preferredAVAudioRouteName:(id)a4 preferredAVAudioRouteUID:(id)a5 shouldPreferBluetooth:(BOOL)a6;
- (id)nextSuggestionsForSuggestionsView:(id)a3 maxSuggestions:(unint64_t)a4;
- (void)_avSystemControllerHeadphoneJackIsConnectedDidChangeNotification:(id)a3;
- (void)_avSystemControllerPickableRoutesDidChangeNotification:(id)a3;
- (void)_configureRoutingIfNeeded;
- (void)_continueRecognitionAction;
- (void)_continueWithRecognitionAction;
- (void)_deviceProximityStateDidChangeNotification:(id)a3;
- (void)_handleButtonUpCancel;
- (void)_performConfirmationAction;
- (void)_performNoMatchFound;
- (void)_recognitionSessionKeywordsDidChangeNotification:(id)a3;
- (void)_requestDismissal;
- (void)_resetSession;
- (void)_setAVAudioRouteUID:(id)a3;
- (void)_setFeedbackVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_setPrefersProximityDetectionEnabled:(BOOL)a3;
- (void)_setSession:(id)a3;
- (void)_setStatusText:(id)a3;
- (void)_setTitleText:(id)a3;
- (void)_speakFeedbackText;
- (void)_speakText:(id)a3;
- (void)_startSession;
- (void)dealloc;
- (void)handleHeadsetButtonUpFromButtonDownSource:(BOOL)a3;
- (void)performDismissalTransitionAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)performPresentationTransitionAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)recognitionSession:(id)a3 didCompleteActionWithError:(id)a4;
- (void)recognitionSession:(id)a3 didFinishSpeakingFeedbackStringWithError:(id)a4;
- (void)recognitionSession:(id)a3 openURL:(id)a4 completion:(id)a5;
- (void)recognitionSessionDidBeginAction:(id)a3;
- (void)resetSessionWithSource:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBVoiceControlViewController

- (SBVoiceControlViewController)initWithSource:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = SBVoiceControlViewController;
  v6 = [(SBVoiceControlViewController *)&v22 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, a3);
    v8 = [(SBVoiceControlPresentationSource *)v7->_source sourceType];
    if (v8)
    {
      if (v8 != 1)
      {
        if (v8 == 2)
        {
          avAudioRouteName = v7->_avAudioRouteName;
          v7->_avAudioRouteName = @"Headphone";

          v7->_isHeadsetButtonPressedDown = 1;
        }

        goto LABEL_13;
      }

      v10 = [(SBVoiceControlPresentationSource *)v7->_source bluetoothDevice];
      v11 = [v10 address];
      [(SBVoiceControlViewController *)v7 _setAVAudioRouteUID:v11];
    }

    else
    {
      v10 = [MEMORY[0x277D26E58] sharedAVSystemController];
      v12 = [v10 attributeForKey:*MEMORY[0x277D26C08]];
      v13 = [v12 BOOLValue];

      if (v13)
      {
        v14 = @"Headphone";
      }

      else
      {
        [(SBVoiceControlViewController *)v7 _setPrefersProximityDetectionEnabled:1];
        v15 = [MEMORY[0x277D75418] currentDevice];
        v16 = [v15 proximityState];

        v14 = @"Speaker";
        if (v16)
        {
          v14 = @"Receiver";
        }
      }

      v17 = v7->_avAudioRouteName;
      v7->_avAudioRouteName = &v14->isa;
    }

LABEL_13:
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = *MEMORY[0x277D76880];
    v20 = [MEMORY[0x277D75418] currentDevice];
    [v18 addObserver:v7 selector:sel__deviceProximityStateDidChangeNotification_ name:v19 object:v20];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = v3;
  if (self->_session)
  {
    [v3 removeObserver:self name:*MEMORY[0x277D79A38] object:?];
    [(VSRecognitionSession *)self->_session setDelegate:0];
    v5 = [(VSRecognitionSession *)self->_session cancel];
  }

  [v4 removeObserver:self name:*MEMORY[0x277D26C68] object:0];
  [v4 removeObserver:self name:*MEMORY[0x277D26C10] object:0];
  v6 = *MEMORY[0x277D76880];
  v7 = [MEMORY[0x277D75418] currentDevice];
  [v4 removeObserver:self name:v6 object:v7];

  [(NSTimer *)self->_delayedConfirmationActionTimer invalidate];
  [(SUICFlamesView *)self->_flamesView setDelegate:0];
  [(SiriUISuggestionsView *)self->_suggestionsView setDelegate:0];

  v8.receiver = self;
  v8.super_class = SBVoiceControlViewController;
  [(SBVoiceControlViewController *)&v8 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = SBVoiceControlViewController;
  [(SBVoiceControlViewController *)&v34 viewDidLayoutSubviews];
  v3 = [(SBVoiceControlViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_contentView setFrame:v5, v7, v9, v11];
  v12 = [(SBVoiceControlViewController *)self traitCollection];
  [v12 displayScale];
  v14 = v13;

  if (v14 <= 0.00000011920929)
  {
    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 scale];
  }

  [(UIView *)self->_contentView bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *MEMORY[0x277CBF3A0];
  v25 = [(UILabel *)self->_titleLabel font];
  v35.origin.x = v17;
  v35.origin.y = v19;
  v35.size.width = v21;
  v35.size.height = v23;
  CGRectGetMinY(v35);
  [(SBVoiceControlViewController *)self _titleBaseline];
  [v25 descender];
  [v25 lineHeight];
  UIRoundToScale();
  v27 = v26;
  [v25 lineHeight];
  [(UILabel *)self->_titleLabel setFrame:v24, v27, v21, v28];
  v29 = [(UILabel *)self->_subtitleLabel font];
  v36.origin.x = v17;
  v36.origin.y = v19;
  v36.size.width = v21;
  v36.size.height = v23;
  CGRectGetMinY(v36);
  [(SBVoiceControlViewController *)self _subtitleBaseline];
  [v29 descender];
  [v29 lineHeight];
  UIRoundToScale();
  v31 = v30;
  [v29 lineHeight];
  [(UILabel *)self->_subtitleLabel setFrame:v24, v31, v21, v32];
  flamesView = self->_flamesView;
  [(SBVoiceControlViewController *)self _flamesViewFrame];
  [(SUICFlamesView *)flamesView setFrame:?];
}

- (void)viewDidLoad
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBVoiceControlViewController.m" lineNumber:191 description:@"can't create Siri UI feedback view -- was the appropriate framework mastered onto this device?"];

  *v0 = *v1;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBVoiceControlViewController;
  [(SBVoiceControlViewController *)&v4 viewWillAppear:a3];
  [(SBVoiceControlViewController *)self _startSession];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBVoiceControlViewController;
  [(SBVoiceControlViewController *)&v6 viewWillDisappear:a3];
  [(NSTimer *)self->_delayedConfirmationActionTimer invalidate];
  delayedConfirmationActionTimer = self->_delayedConfirmationActionTimer;
  self->_delayedConfirmationActionTimer = 0;

  v5 = [(VSRecognitionSession *)self->_session cancel];
}

- (id)nextSuggestionsForSuggestionsView:(id)a3 maxSuggestions:(unint64_t)a4
{
  v6 = [(VSRecognitionSession *)self->_session keywordCount];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277CBEBF8];
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
  if (v7 < a4)
  {
    self->_startingKeywordIndex = 0;
    a4 = v7;
    goto LABEL_6;
  }

  if (a4)
  {
LABEL_6:
    v9 = 0;
    do
    {
      v10 = [(VSRecognitionSession *)self->_session keywordAtIndex:(v9 + self->_startingKeywordIndex) % v7];
      [v8 addObject:v10];

      ++v9;
    }

    while (a4 != v9);
  }

  self->_startingKeywordIndex = (self->_startingKeywordIndex + a4) % v7;
LABEL_9:

  return v8;
}

- (float)audioLevelForFlamesView:(id)a3
{
  if (![(VSRecognitionSession *)self->_session isActivelyRecognizing])
  {
    return -120.0;
  }

  [(VSRecognitionSession *)self->_session inputLevelDB];
  if (v4 == 0.0)
  {
    return -120.0;
  }

  session = self->_session;

  [(VSRecognitionSession *)session inputLevelDB];
  return result;
}

- (void)recognitionSessionDidBeginAction:(id)a3
{
  if ([a3 isRecognizing])
  {
    [(SBVoiceControlViewController *)self _setFeedbackVisible:1 animated:1];
    suggestionsView = self->_suggestionsView;

    [(SiriUISuggestionsView *)suggestionsView startSuggesting];
  }

  else
  {
    self->_wasRecognizing = 0;
  }
}

- (void)recognitionSession:(id)a3 didCompleteActionWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SBVoiceControlViewController *)self _setFeedbackVisible:0 animated:1];
  [(SiriUISuggestionsView *)self->_suggestionsView stopSuggesting];
  if (v7)
  {
    v8 = [v7 domain];
    if ([v8 isEqualToString:*MEMORY[0x277D79A28]])
    {
      v9 = [v7 code];

      if (v9 == -4002)
      {
LABEL_14:
        [(SBVoiceControlViewController *)self _handleButtonUpCancel];
        goto LABEL_25;
      }
    }

    else
    {
    }

    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBVoiceControlViewController recognitionSession:didCompleteActionWithError:];
    }

    if (!self->_wasRecognizing)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([v6 isFinished])
  {
    if (![(VSRecognitionSession *)self->_session isValid])
    {
      [(SBVoiceControlViewController *)self _requestDismissal];
      goto LABEL_25;
    }

    [(SBVoiceControlViewController *)self _configureRoutingIfNeeded];
    if (self->_wasRecognizing)
    {
LABEL_13:
      [(SBVoiceControlViewController *)self _performNoMatchFound];
      goto LABEL_25;
    }

    [(SBVoiceControlViewController *)self _continueWithRecognitionAction];
  }

  else
  {
    [(SBVoiceControlViewController *)self _configureRoutingIfNeeded];
    v11 = [v6 displayResultString];
    if (v11)
    {
      [(SBVoiceControlViewController *)self _setTitleText:v11];
    }

    v12 = [v6 displayStatusString];
    [(SBVoiceControlViewController *)self _setStatusText:v12];

    if (self->_wasRecognizing)
    {
      objc_initWeak(&location, self);
      if ([v6 nextActionWillRecognize])
      {
        v13 = 1115;
      }

      else
      {
        v13 = 1111;
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __78__SBVoiceControlViewController_recognitionSession_didCompleteActionWithError___block_invoke;
      v14[3] = &unk_2783A8C68;
      objc_copyWeak(&v15, &location);
      AudioServicesPlaySystemSoundWithCompletion(v13, v14);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [(SBVoiceControlViewController *)self _speakFeedbackText];
    }
  }

LABEL_25:
}

void __78__SBVoiceControlViewController_recognitionSession_didCompleteActionWithError___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __78__SBVoiceControlViewController_recognitionSession_didCompleteActionWithError___block_invoke_2;
  v1[3] = &unk_2783A8C68;
  objc_copyWeak(&v2, (a1 + 32));
  _SBVoiceControlDispatchMain(v1);
  objc_destroyWeak(&v2);
}

void __78__SBVoiceControlViewController_recognitionSession_didCompleteActionWithError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _speakFeedbackText];
}

- (void)recognitionSession:(id)a3 didFinishSpeakingFeedbackStringWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_session == v6)
  {
    if (v7)
    {
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SBVoiceControlViewController recognitionSession:didFinishSpeakingFeedbackStringWithError:];
      }
    }

    [(SBVoiceControlViewController *)self _continueWithRecognitionAction];
  }
}

- (void)recognitionSession:(id)a3 openURL:(id)a4 completion:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = [v6 absoluteString];
  if (![v8 length])
  {

    goto LABEL_5;
  }

  v9 = [objc_alloc(MEMORY[0x277D6EED0]) initWithURL:v6];
  v10 = [v9 isValid];

  if (!v10)
  {
LABEL_5:
    v16 = [MEMORY[0x277D75128] sharedApplication];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__SBVoiceControlViewController_recognitionSession_openURL_completion___block_invoke_62;
    v17[3] = &unk_2783A9C70;
    v18 = v7;
    v11 = v7;
    [v16 openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:v17];

    v15 = v18;
    goto LABEL_6;
  }

  v11 = objc_opt_new();
  v12 = *MEMORY[0x277D0AC70];
  v21[0] = *MEMORY[0x277D0AC58];
  v21[1] = v12;
  v22[0] = MEMORY[0x277CBEC38];
  v22[1] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v11 setFrontBoardOptions:v13];

  [v11 setSensitive:1];
  v14 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__SBVoiceControlViewController_recognitionSession_openURL_completion___block_invoke;
  v19[3] = &unk_2783C4498;
  v20 = v7;
  v15 = v7;
  [v14 openURL:v6 configuration:v11 completionHandler:v19];

LABEL_6:
}

void __70__SBVoiceControlViewController_recognitionSession_openURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__SBVoiceControlViewController_recognitionSession_openURL_completion___block_invoke_cold_1();
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D79A28];
      v14 = *MEMORY[0x277CCA7E8];
      v15[0] = v6;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v12 = [v9 errorWithDomain:v10 code:-4007 userInfo:v11];
      (*(v8 + 16))(v8, v12);
    }
  }

  else
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }
  }
}

void __70__SBVoiceControlViewController_recognitionSession_openURL_completion___block_invoke_62(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __70__SBVoiceControlViewController_recognitionSession_openURL_completion___block_invoke_62_cold_1(v5);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D79A28] code:-4007 userInfo:0];
      (*(v6 + 16))(v6, v7);
    }
  }
}

- (BOOL)recognitionSessionWillBeginAction:(id)a3
{
  v4 = a3;
  v5 = [(VSRecognitionSession *)self->_session isRecognizing];
  if (v5)
  {
    [(SBVoiceControlViewController *)self _configureRoutingIfNeeded];
    self->_wasRecognizing = 1;
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__SBVoiceControlViewController_recognitionSessionWillBeginAction___block_invoke;
    v7[3] = &unk_2783A8C68;
    objc_copyWeak(&v8, &location);
    AudioServicesPlaySystemSoundWithCompletion(0x456u, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v5 ^ 1;
}

void __66__SBVoiceControlViewController_recognitionSessionWillBeginAction___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __66__SBVoiceControlViewController_recognitionSessionWillBeginAction___block_invoke_2;
  v1[3] = &unk_2783A8C68;
  objc_copyWeak(&v2, (a1 + 32));
  _SBVoiceControlDispatchMain(v1);
  objc_destroyWeak(&v2);
}

void __66__SBVoiceControlViewController_recognitionSessionWillBeginAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _continueRecognitionAction];
}

- (void)handleHeadsetButtonUpFromButtonDownSource:(BOOL)a3
{
  if (a3)
  {
    if (self->_isHeadsetButtonPressedDown && [(VSRecognitionSession *)self->_session hasDeferredAction])
    {
      [(SBVoiceControlViewController *)self _continueRecognitionAction];
    }
  }

  else
  {
    [(SBVoiceControlViewController *)self _handleButtonUpCancel];
  }

  self->_isHeadsetButtonPressedDown = 0;
}

- (void)performDismissalTransitionAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v4)
  {
    v8 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __85__SBVoiceControlViewController_performDismissalTransitionAnimated_completionHandler___block_invoke;
    v11[3] = &unk_2783A8C18;
    v11[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __85__SBVoiceControlViewController_performDismissalTransitionAnimated_completionHandler___block_invoke_2;
    v9[3] = &unk_2783A9C70;
    v10 = v6;
    [v8 animateWithDuration:v11 animations:v9 completion:0.3];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 1);
  }
}

uint64_t __85__SBVoiceControlViewController_performDismissalTransitionAnimated_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)performPresentationTransitionAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__SBVoiceControlViewController_performPresentationTransitionAnimated_completionHandler___block_invoke;
    v11[3] = &unk_2783A8C18;
    v11[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v11];
    v7 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __88__SBVoiceControlViewController_performPresentationTransitionAnimated_completionHandler___block_invoke_2;
    v10[3] = &unk_2783A8C18;
    v10[4] = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __88__SBVoiceControlViewController_performPresentationTransitionAnimated_completionHandler___block_invoke_3;
    v8[3] = &unk_2783A9C70;
    v9 = v6;
    [v7 animateWithDuration:v10 animations:v8 completion:0.3];
  }

  else
  {
    [(UIView *)self->_contentView setAlpha:1.0];
    if (v6)
    {
      (*(v6 + 2))(v6, 1);
    }
  }
}

uint64_t __88__SBVoiceControlViewController_performPresentationTransitionAnimated_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)resetSessionWithSource:(id)a3
{
  if ([a3 sourceType] == 2)
  {
    self->_isHeadsetButtonPressedDown = 1;
  }

  [(SBVoiceControlViewController *)self _resetSession];
}

- (void)_avSystemControllerPickableRoutesDidChangeNotification:(id)a3
{
  v4 = [(SBVoiceControlViewController *)self _currentPreferredRouteDictionary];

  if (!v4)
  {

    [(SBVoiceControlViewController *)self _requestDismissal];
  }
}

- (void)_avSystemControllerHeadphoneJackIsConnectedDidChangeNotification:(id)a3
{
  v4 = [(SBVoiceControlViewController *)self _currentPreferredRouteDictionary];

  if (!v4)
  {

    [(SBVoiceControlViewController *)self _requestDismissal];
  }
}

- (void)_deviceProximityStateDidChangeNotification:(id)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 proximityState];
  v6 = @"Speaker";
  if (v5)
  {
    v6 = @"Receiver";
  }

  v12 = v6;

  v7 = v12;
  avAudioRouteName = self->_avAudioRouteName;
  if (avAudioRouteName != v12)
  {
    v9 = [(NSString *)avAudioRouteName isEqualToString:v12];
    v7 = v12;
    if (!v9)
    {
      v10 = [(__CFString *)v12 copy];
      v11 = self->_avAudioRouteName;
      self->_avAudioRouteName = v10;

      [(SBVoiceControlViewController *)self _setNeedsRoutingUpdate];
      v7 = v12;
    }
  }
}

- (void)_recognitionSessionKeywordsDidChangeNotification:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__SBVoiceControlViewController__recognitionSessionKeywordsDidChangeNotification___block_invoke;
  v3[3] = &unk_2783A8C18;
  v3[4] = self;
  _SBVoiceControlDispatchMain(v3);
}

uint64_t __81__SBVoiceControlViewController__recognitionSessionKeywordsDidChangeNotification___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1072) = 0;
  [*(*(a1 + 32) + 1088) stopSuggesting];
  v2 = *(*(a1 + 32) + 1088);

  return [v2 startSuggesting];
}

- (id)_availableRouteDictionaries
{
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x277D26C60]];

  return v3;
}

- (void)_configureRoutingIfNeeded
{
  if (!self->_hasConfiguredRouting)
  {
    self->_hasConfiguredRouting = 1;
    v3 = [(SBVoiceControlViewController *)self _currentPreferredRouteDictionary];
    if (v3)
    {
      v4 = [MEMORY[0x277D26E58] sharedAVSystemController];
      v5 = *MEMORY[0x277D26C70];
      v15 = 0;
      [v4 setAttribute:v3 forKey:v5 error:&v15];
      v6 = v15;
      v7 = [v3 objectForKey:*MEMORY[0x277D26D30]];
      if ([v7 length])
      {
        [(SBVoiceControlViewController *)self _setAVAudioRouteUID:v7];
      }

      v8 = [v3 objectForKey:*MEMORY[0x277D26D28]];
      v9 = [v8 isEqualToString:*MEMORY[0x277D26C58]];

      [(SBVoiceControlViewController *)self _setPrefersProximityDetectionEnabled:v9 ^ 1u];
      if (v6)
      {
        v10 = SBLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [SBVoiceControlViewController _configureRoutingIfNeeded];
        }
      }

      else
      {
        v10 = [MEMORY[0x277CCAB98] defaultCenter];
        v11 = MEMORY[0x277D26C68];
        [v10 removeObserver:self name:*MEMORY[0x277D26C68] object:v4];
        v12 = MEMORY[0x277D26C10];
        [v10 removeObserver:self name:*MEMORY[0x277D26C10] object:v4];
        [v10 addObserver:self selector:sel__avSystemControllerPickableRoutesDidChangeNotification_ name:*v11 object:v4];
        v13 = [v3 objectForKey:*MEMORY[0x277D26CA8]];
        v14 = [v13 isEqualToString:@"Headphone"];

        if (v14)
        {
          [v10 addObserver:self selector:sel__avSystemControllerHeadphoneJackIsConnectedDidChangeNotification_ name:*v12 object:v4];
        }
      }
    }
  }
}

- (void)_continueRecognitionAction
{
  if (!self->_isHeadsetButtonPressedDown && [(VSRecognitionSession *)self->_session hasDeferredAction])
  {
    v3 = [(VSRecognitionSession *)self->_session beginNextAction];
    if (v3)
    {
      v4 = SBLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [SBVoiceControlViewController _continueRecognitionAction];
      }

      [(SBVoiceControlViewController *)self _requestDismissal];
    }
  }
}

- (void)_continueWithRecognitionAction
{
  v3 = [(SBVoiceControlViewController *)self _popNextRecognitionAudioInputPath];
  if (v3)
  {
    [(VSRecognitionSession *)self->_session setNextRecognitionAudioInputPath:v3];
  }

  v4 = [(VSRecognitionSession *)self->_session isFinished];
  session = self->_session;
  if (v4)
  {
    if ([(VSRecognitionSession *)session isValid])
    {
      v6 = [(VSRecognitionSession *)self->_session reset];
      [(SBVoiceControlViewController *)self _setStatusText:0];
      [(SBVoiceControlViewController *)self _setTitleText:0];
      v7 = [(VSRecognitionSession *)self->_session beginNextAction];
      if (v7)
      {
        v8 = SBLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [SBVoiceControlViewController _continueWithRecognitionAction];
        }

LABEL_14:

        [(SBVoiceControlViewController *)self _requestDismissal];
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    [(SBVoiceControlViewController *)self _requestDismissal];
  }

  else
  {
    if (([(VSRecognitionSession *)session nextActionWillTerminateSession]& 1) == 0)
    {
      v7 = [(VSRecognitionSession *)self->_session beginNextAction];
      if (v7)
      {
        v8 = SBLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [SBVoiceControlViewController _continueWithRecognitionAction];
        }

        goto LABEL_14;
      }

LABEL_15:

      goto LABEL_16;
    }

    [(NSTimer *)self->_delayedConfirmationActionTimer invalidate];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277CBEBB8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__SBVoiceControlViewController__continueWithRecognitionAction__block_invoke;
    v12[3] = &unk_2783AA438;
    objc_copyWeak(&v13, &location);
    v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:v12 block:1.0];
    delayedConfirmationActionTimer = self->_delayedConfirmationActionTimer;
    self->_delayedConfirmationActionTimer = v10;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

LABEL_16:
}

void __62__SBVoiceControlViewController__continueWithRecognitionAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performConfirmationAction];
}

- (id)_currentPreferredRouteDictionary
{
  v3 = [(SBVoiceControlViewController *)self _availableRouteDictionaries];
  v4 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v5 = [v4 attributeForKey:*MEMORY[0x277D26BF8]];
  v6 = [v5 BOOLValue];

  if ([(SBVoiceControlViewController *)self shouldDisableVoiceControlForBluetoothRequests])
  {
    v7 = 0;
  }

  else
  {
    v7 = ([(SBVoiceControlPresentationSource *)self->_source sourceType]== 0) & (v6 ^ 1u);
  }

  v8 = [(SBVoiceControlViewController *)self _preferredRouteDictionaryWithAvailableRouteDictionaries:v3 preferredAVAudioRouteName:self->_avAudioRouteName preferredAVAudioRouteUID:self->_avAudioRouteUID shouldPreferBluetooth:v7];

  return v8;
}

- (CGRect)_flamesViewFrame
{
  [(UIView *)self->_contentView bounds];
  v4 = v3 + -95.0;
  v5 = 95.0;
  v6 = 0.0;
  result.size.height = v5;
  result.size.width = v2;
  result.origin.y = v4;
  result.origin.x = v6;
  return result;
}

- (void)_handleButtonUpCancel
{
  v3 = [(VSRecognitionSession *)self->_session cancelMaintainingKeepAlive:1];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__SBVoiceControlViewController__handleButtonUpCancel__block_invoke;
  v4[3] = &unk_2783A8C68;
  objc_copyWeak(&v5, &location);
  AudioServicesPlaySystemSoundWithCompletion(0x458u, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__SBVoiceControlViewController__handleButtonUpCancel__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 270000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SBVoiceControlViewController__handleButtonUpCancel__block_invoke_2;
  block[3] = &unk_2783A8C68;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
}

void __53__SBVoiceControlViewController__handleButtonUpCancel__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestDismissal];
}

- (BOOL)_hasPickableBluetoothDevice
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [v2 pickableRoutesForCategory:@"VoiceCommand_WithBluetooth"];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    v7 = MEMORY[0x277D26D28];
    v8 = MEMORY[0x277D26C58];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) objectForKey:{*v7, v13}];
        v11 = [v10 isEqualToString:*v8];

        if (v11)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)_localizedStringForKey:(id)a3
{
  v4 = a3;
  localizationKeys = self->_localizationKeys;
  if (!localizationKeys)
  {
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = VSRecognitionModelCopyResourceURL();

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v7];
      v9 = self->_localizationKeys;
      self->_localizationKeys = v8;

      CFRelease(v7);
    }

    localizationKeys = self->_localizationKeys;
    if (!localizationKeys)
    {
      self->_localizationKeys = MEMORY[0x277CBEC10];

      localizationKeys = self->_localizationKeys;
    }
  }

  v10 = [(NSDictionary *)localizationKeys objectForKey:v4];
  if (!v10)
  {
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v11 localizedStringForKey:v4 value:&stru_283094718 table:@"Jibbler"];
  }

  return v10;
}

- (id)_newRecognitionSession
{
  v3 = objc_alloc_init(MEMORY[0x277D79980]);
  [v3 setDebugDumpEnabled:{-[SBVoiceControlViewController isVoiceControlLoggingEnabled](self, "isVoiceControlLoggingEnabled")}];
  [v3 setSensitiveActionsEnabled:{-[SBVoiceControlViewController shouldAllowSensitiveActions](self, "shouldAllowSensitiveActions")}];
  if ([(SBVoiceControlViewController *)self shouldDisableHandlerActions])
  {
    [v3 setPerformRecognitionHandlerActions:0];
  }

  [v3 setInputLevelUpdateInterval:0.1];
  [v3 setKeywordPhase:5];
  v4 = [(SBVoiceControlViewController *)self _hasPickableBluetoothDevice];
  if (v4 || [(SBVoiceControlPresentationSource *)self->_source sourceType]!= 1)
  {
    [v3 setBluetoothInputAllowed:v4];
  }

  else
  {
    v5 = [(SBVoiceControlPresentationSource *)self->_source bluetoothDevice];
    [v3 setBluetoothInputAllowed:v5 != 0];
  }

  return v3;
}

- (void)_performConfirmationAction
{
  v3 = [(VSRecognitionSession *)self->_session beginNextAction];
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SBVoiceControlViewController _performConfirmationAction];
    }

    [(SBVoiceControlViewController *)self _requestDismissal];
  }
}

- (void)_performNoMatchFound
{
  [(SBVoiceControlViewController *)self _setTitleText:0];
  [(SBVoiceControlViewController *)self _setStatusText:0];
  v3 = [(SBVoiceControlViewController *)self _localizedStringForKey:@"NO_MATCH_FOUND"];
  objc_initWeak(&location, self);
  inCompletionBlock[0] = MEMORY[0x277D85DD0];
  inCompletionBlock[1] = 3221225472;
  inCompletionBlock[2] = __52__SBVoiceControlViewController__performNoMatchFound__block_invoke;
  inCompletionBlock[3] = &unk_2783A9CE8;
  objc_copyWeak(&v7, &location);
  v4 = v3;
  v6 = v4;
  AudioServicesPlaySystemSoundWithCompletion(0x45Cu, inCompletionBlock);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__SBVoiceControlViewController__performNoMatchFound__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__SBVoiceControlViewController__performNoMatchFound__block_invoke_2;
  v2[3] = &unk_2783A9CE8;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  _SBVoiceControlDispatchMain(v2);

  objc_destroyWeak(&v4);
}

void __52__SBVoiceControlViewController__performNoMatchFound__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _speakText:*(a1 + 32)];
}

- (id)_popNextRecognitionAudioInputPath
{
  v3 = [(NSArray *)self->_nextRecognitionAudioInputPaths lastObject];
  v4 = [(NSArray *)self->_nextRecognitionAudioInputPaths count];
  nextRecognitionAudioInputPaths = self->_nextRecognitionAudioInputPaths;
  if (v4 < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)nextRecognitionAudioInputPaths subarrayWithRange:0, [(NSArray *)self->_nextRecognitionAudioInputPaths count]- 1];
    nextRecognitionAudioInputPaths = self->_nextRecognitionAudioInputPaths;
  }

  self->_nextRecognitionAudioInputPaths = v6;

  return v3;
}

- (id)_preferredRouteDictionaryWithAvailableRouteDictionaries:(id)a3 preferredAVAudioRouteName:(id)a4 preferredAVAudioRouteUID:(id)a5 shouldPreferBluetooth:(BOOL)a6
{
  v6 = a6;
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!(v10 | v11))
  {
    goto LABEL_30;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v13)
  {

LABEL_30:
    v15 = 0;
    v27 = 0;
    goto LABEL_31;
  }

  v14 = v13;
  v29 = v9;
  v15 = 0;
  v16 = *v32;
  v30 = *v32;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v32 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v31 + 1) + 8 * i);
      if (v11)
      {
        v19 = [*(*(&v31 + 1) + 8 * i) objectForKey:*MEMORY[0x277D26D30]];
        if ([v19 hasPrefix:v11])
        {
          v27 = v18;

          goto LABEL_26;
        }
      }

      if (!v15)
      {
        v20 = [v18 objectForKey:*MEMORY[0x277D26CA8]];
        v21 = v20;
        if (v10 && v20 && ([v20 isEqualToString:v10] & 1) != 0)
        {
          goto LABEL_18;
        }

        if (!v6)
        {
          goto LABEL_19;
        }

        v22 = v12;
        v23 = v10;
        v24 = v6;
        v25 = [v18 objectForKey:*MEMORY[0x277D26D28]];
        v26 = [v25 isEqualToString:*MEMORY[0x277D26C58]];

        if (!v26)
        {
          v15 = 0;
          v6 = v24;
          v10 = v23;
          v12 = v22;
          v16 = v30;
          goto LABEL_21;
        }

        v6 = v24;
        v10 = v23;
        v12 = v22;
        v16 = v30;
        if (([v21 isEqualToString:@"HeadsetBT"] & 1) != 0 || objc_msgSend(v21, "isEqualToString:", @"HeadphonesBT"))
        {
LABEL_18:
          v15 = v18;
        }

        else
        {
LABEL_19:
          v15 = 0;
        }

LABEL_21:

        continue;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  v27 = 0;
LABEL_26:

  v9 = v29;
  if (!v27 && v15)
  {
    v15 = v15;
    v27 = v15;
  }

LABEL_31:

  return v27;
}

- (void)_requestDismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceControlDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained voiceControlViewControllerRequestsDismissal:self];
  }
}

- (void)_resetSession
{
  [(SBVoiceControlViewController *)self _setFeedbackVisible:0 animated:1];
  [(SiriUISuggestionsView *)self->_suggestionsView stopSuggesting];
  v3 = [(VSRecognitionSession *)self->_session cancel];
  [(SBVoiceControlViewController *)self _setTitleText:0];
  [(SBVoiceControlViewController *)self _setStatusText:0];
  v4 = [(SBVoiceControlViewController *)self _newRecognitionSession];
  [(SBVoiceControlViewController *)self _setSession:v4];
  [(SBVoiceControlViewController *)self _startSession];
  [(SiriUISuggestionsView *)self->_suggestionsView startSuggesting];
}

- (void)_setAVAudioRouteUID:(id)a3
{
  v8 = a3;
  if ([v8 containsString:@"-"])
  {
    v4 = [v8 substringToIndex:{objc_msgSend(v8, "rangeOfString:", @"-"}];

    v5 = v4;
  }

  else
  {
    v5 = v8;
  }

  v9 = v5;
  v6 = [v5 copy];
  avAudioRouteUID = self->_avAudioRouteUID;
  self->_avAudioRouteUID = v6;
}

- (void)_setFeedbackVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(SBVoiceControlViewController *)self loadViewIfNeeded];
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__SBVoiceControlViewController__setFeedbackVisible_animated___block_invoke;
    v8[3] = &unk_2783A9F58;
    v8[4] = self;
    v9 = v5;
    [MEMORY[0x277D75D18] animateWithDuration:v8 animations:0.25];
    if (v5)
    {
      return;
    }

LABEL_8:
    [(SiriUISuggestionsView *)self->_suggestionsView stopSuggesting];
    return;
  }

  if (v5)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(SUICFlamesView *)self->_flamesView setAlpha:v7];
  [(SiriUISuggestionsView *)self->_suggestionsView setAlpha:v7];
  if (!v5)
  {
    goto LABEL_8;
  }
}

uint64_t __61__SBVoiceControlViewController__setFeedbackVisible_animated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  v4 = *(*(a1 + 32) + 1088);
  if (*(a1 + 40))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  return [v4 setAlpha:v5];
}

- (void)_setPrefersProximityDetectionEnabled:(BOOL)a3
{
  if (self->_prefersProximityDetectionEnabled != a3)
  {
    self->_prefersProximityDetectionEnabled = a3;
    WeakRetained = objc_loadWeakRetained(&self->_voiceControlDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained voiceControlViewControllerPrefersProximityDetectionEnabledDidChange:self];
    }
  }
}

- (void)_setSession:(id)a3
{
  v5 = a3;
  session = self->_session;
  v11 = v5;
  if (session != v5)
  {
    v7 = MEMORY[0x277D79A38];
    if (session)
    {
      [(VSRecognitionSession *)session setDelegate:0];
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 removeObserver:self name:*v7 object:self->_session];
    }

    objc_storeStrong(&self->_session, a3);
    v9 = self->_session;
    if (v9)
    {
      [(VSRecognitionSession *)v9 setDelegate:self];
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      [v10 addObserver:self selector:sel__recognitionSessionKeywordsDidChangeNotification_ name:*v7 object:self->_session];
    }
  }
}

- (void)_setStatusText:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(UILabel *)self->_subtitleLabel setText:v4];
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&v15.a = *MEMORY[0x277CBF2C0];
    *&v15.c = v5;
    *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGAffineTransformMakeTranslation(&v15, 0.0, -10.0);
  }

  else
  {
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v15.a = *MEMORY[0x277CBF2C0];
    *&v15.c = v6;
    *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  v7 = MEMORY[0x277D75D18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__SBVoiceControlViewController__setStatusText___block_invoke;
  v12[3] = &unk_2783AE868;
  v12[4] = self;
  v14 = v15;
  v13 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SBVoiceControlViewController__setStatusText___block_invoke_2;
  v9[3] = &unk_2783A8BF0;
  v10 = v13;
  v11 = self;
  v8 = v13;
  [v7 animateWithDuration:327680 delay:v12 options:v9 animations:0.25 completion:0.0];
}

uint64_t __47__SBVoiceControlViewController__setStatusText___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1096);
  v3 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 80);
  [v2 setTransform:&v8];
  v4 = *(*(a1 + 32) + 1080);
  v5 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = v5;
  v10 = *(a1 + 80);
  [v4 setTransform:&v8];
  v6 = 1.0;
  if (!*(a1 + 40))
  {
    v6 = 0.0;
  }

  return [*(*(a1 + 32) + 1080) setAlpha:v6];
}

uint64_t __47__SBVoiceControlViewController__setStatusText___block_invoke_2(uint64_t result)
{
  if (!*(result + 32))
  {
    return [*(*(result + 40) + 1080) setText:0];
  }

  return result;
}

- (void)_setTitleText:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(SBVoiceControlViewController *)self _localizedStringForKey:@"JIBBLER"];
  }

  v5 = v4;
  [(UILabel *)self->_titleLabel setText:v4];
}

- (void)_speakFeedbackText
{
  v3 = [(VSRecognitionSession *)self->_session beginSpeakingFeedbackString];
  if (v3)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SBVoiceControlViewController _speakFeedbackText];
    }

    [(SBVoiceControlViewController *)self _continueWithRecognitionAction];
  }
}

- (void)_speakText:(id)a3
{
  v4 = [(VSRecognitionSession *)self->_session beginSpeakingString:a3];
  if (v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SBVoiceControlViewController _speakFeedbackText];
    }

    [(SBVoiceControlViewController *)self _continueWithRecognitionAction];
  }
}

- (void)_startSession
{
  if ([(VSRecognitionSession *)self->_session hasDeferredAction]&& [(VSRecognitionSession *)self->_session isRecognizing])
  {
    session = self->_session;

    [(SBVoiceControlViewController *)self recognitionSessionWillBeginAction:session];
  }

  else if (([(VSRecognitionSession *)self->_session isBusy]& 1) == 0)
  {
    v4 = [(SBVoiceControlViewController *)self _popNextRecognitionAudioInputPath];
    if (v4)
    {
      [(VSRecognitionSession *)self->_session setNextRecognitionAudioInputPath:v4];
      [(VSRecognitionSession *)self->_session setNextRecognitionRequiresReset:1];
    }

    v5 = [(VSRecognitionSession *)self->_session beginNextAction];
    if (v5)
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [SBVoiceControlViewController _startSession];
      }

      [(SBVoiceControlViewController *)self _requestDismissal];
    }
  }
}

- (SBVoiceControlViewControllerDelegate)voiceControlDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceControlDelegate);

  return WeakRetained;
}

@end