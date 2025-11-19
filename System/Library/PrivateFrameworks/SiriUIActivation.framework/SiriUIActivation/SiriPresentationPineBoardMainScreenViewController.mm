@interface SiriPresentationPineBoardMainScreenViewController
- (BOOL)_getValueForShouldRequestDictation;
- (SiriPresentationPineBoardMainScreenViewController)initWithIdentifier:(int64_t)a3 hostedPresentationFrame:(CGRect)a4;
- (id)siriViewController:(id)a3 willStartRequestWithOptions:(id)a4;
- (void)_forwardHIDButtonEventWithUsagePage:(unsigned int)a3 usage:(unsigned int)a4 type:(int64_t)a5 senderID:(unint64_t)a6;
- (void)_prewarmSiriVideoFlowDelegatePlugin;
- (void)setNextAssistantRecognitionStrings:(id)a3;
- (void)setNextVoiceRecognitionAudioInputPaths:(id)a3;
- (void)siriViewController:(id)a3 didChangePresentationPeekMode:(unint64_t)a4;
- (void)siriViewController:(id)a3 didChangePresentationVisualState:(unint64_t)a4;
- (void)siriViewController:(id)a3 didReceiveButtonUpWithRequestOptions:(id)a4;
- (void)siriViewController:(id)a3 sceneDidActivateWithIdentifier:(id)a4;
- (void)siriViewControllerDidChangeToListeningMode:(id)a3;
- (void)siriViewControllerDidDeactivateScene:(id)a3;
- (void)siriViewControllerDidPresentKeyboard:(id)a3;
@end

@implementation SiriPresentationPineBoardMainScreenViewController

- (SiriPresentationPineBoardMainScreenViewController)initWithIdentifier:(int64_t)a3 hostedPresentationFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11.receiver = self;
  v11.super_class = SiriPresentationPineBoardMainScreenViewController;
  v8 = [(SiriPresentationViewController *)&v11 initWithIdentifier:a3 hostedPresentationFrame:?];
  v9 = v8;
  if (v8)
  {
    [(SiriPresentationPineBoardMainScreenViewController *)v8 _prewarmFlamesWithPresentationFrame:x, y, width, height];
    v9->_shouldRequestDictation = 0;
    v9->_didRequestDictationStart = 0;
    v9->_shouldListenForSceneActivation = 0;
  }

  return v9;
}

- (void)_prewarmSiriVideoFlowDelegatePlugin
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SiriPresentationPineBoardMainScreenViewController _prewarmSiriVideoFlowDelegatePlugin]";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s #activation  _prewarmSiriVideoFlowDelegatePlugin", &v11, 0xCu);
  }

  clientLite = self->_clientLite;
  self->_clientLite = 0;

  v5 = objc_alloc_init(MEMORY[0x277CEF1D8]);
  v6 = self->_clientLite;
  self->_clientLite = v5;

  v7 = [objc_alloc(MEMORY[0x277D47458]) initWithBundleIdentifier:@"com.apple.siri.VideoFlowDelegatePlugin"];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];
  [v7 setAceId:v9];

  [(AFClientLite *)self->_clientLite handleCommand:v7 commandHandler:0 completion:&__block_literal_global_0];
  v10 = *MEMORY[0x277D85DE8];
}

void __88__SiriPresentationPineBoardMainScreenViewController__prewarmSiriVideoFlowDelegatePlugin__block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  v6 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v4 || !a2)
  {
    if (v6)
    {
      v11 = 136315394;
      v12 = "[SiriPresentationPineBoardMainScreenViewController _prewarmSiriVideoFlowDelegatePlugin]_block_invoke";
      v13 = 2112;
      v14 = v4;
      v7 = "%s #activation _prewarmSiriVideoFlowDelegatePlugin failed with error: %@";
      v8 = v5;
      v9 = 22;
      goto LABEL_7;
    }
  }

  else if (v6)
  {
    v11 = 136315138;
    v12 = "[SiriPresentationPineBoardMainScreenViewController _prewarmSiriVideoFlowDelegatePlugin]_block_invoke";
    v7 = "%s #activation _prewarmSiriVideoFlowDelegatePlugin successful";
    v8 = v5;
    v9 = 12;
LABEL_7:
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)siriViewController:(id)a3 didChangePresentationPeekMode:(unint64_t)a4
{
  v6 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  v7 = [objc_opt_class() conformsToProtocol:&unk_2833C6AF8];

  if (v7)
  {
    v8 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
    [v8 siriPresentation:self didChangePresentationPeekMode:a4];
  }
}

- (void)siriViewController:(id)a3 didChangePresentationVisualState:(unint64_t)a4
{
  v6 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 siriPresentation:self didChangePresentationVisualState:a4];
  }
}

- (id)siriViewController:(id)a3 willStartRequestWithOptions:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v47 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    v48 = 2112;
    v49 = v7;
    _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v10 = v7;
  [v10 setUseAutomaticEndpointing:0];
  [v10 setUseStreamingDictation:1];
  v11 = [v10 requestInfo];
  if ([v11 afui_isRemoteHeadsetActivation])
  {
  }

  else
  {
    v12 = [v10 afui_isTVFollowUpHearstActivation];

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #tv Automatic endpointing for hearst request and server command in multi-turn", buf, 0xCu);
  }

  [v10 setUseAutomaticEndpointing:1];
LABEL_9:
  [v10 setReleaseAudioSessionOnRecordingCompletion:1];
  v14 = [(SiriPresentationViewController *)self _updateRequestOptionsWithTestingInput:v10];

  v15 = [v14 activationDeviceIdentifier];
  v16 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = MEMORY[0x277CCACC8];
    v18 = v16;
    v19 = [v17 currentThread];
    v20 = [v19 qualityOfService];
    *buf = 136315394;
    v47 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    v48 = 2048;
    v49 = v20;
    _os_log_impl(&dword_21FEE5000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictationInProgressLock);
  v21 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    _os_log_impl(&dword_21FEE5000, v21, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", buf, 0xCu);
  }

  v22 = [v14 inputType];
  v23 = ([v14 isShortButtonPressAction] & 1) == 0 && objc_msgSend(v14, "requestSource") != 36 && objc_msgSend(v14, "requestSource") != 24 && objc_msgSend(v15, "length") != 0;
  self->_shouldRequestDictation = v22 == v23;
  os_unfair_lock_unlock(&self->_dictationInProgressLock);
  v24 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    _os_log_impl(&dword_21FEE5000, v24, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock unlocked", buf, 0xCu);
  }

  v25 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    shouldRequestDictation = self->_shouldRequestDictation;
    v27 = v25;
    v28 = NSStringFromBOOL();
    *buf = 136315394;
    v47 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
    v48 = 2112;
    v49 = v28;
    _os_log_impl(&dword_21FEE5000, v27, OS_LOG_TYPE_DEFAULT, "%s #activation Should start Dictation - %@", buf, 0x16u);
  }

  if (self->_shouldRequestDictation)
  {
    requestDictationFromSiriGroup = self->_requestDictationFromSiriGroup;
    self->_requestDictationFromSiriGroup = 0;

    v30 = dispatch_group_create();
    v31 = self->_requestDictationFromSiriGroup;
    self->_requestDictationFromSiriGroup = v30;

    if ([v14 isInitialBringUp])
    {
      dispatch_group_enter(self->_requestDictationFromSiriGroup);
      v32 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v33 = MEMORY[0x277CCACC8];
        v34 = v32;
        v35 = [v33 currentThread];
        v36 = [v35 qualityOfService];
        *buf = 136315394;
        v47 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
        v48 = 2048;
        v49 = v36;
        _os_log_impl(&dword_21FEE5000, v34, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", buf, 0x16u);
      }

      os_unfair_lock_lock(&self->_dictationInProgressLock);
      v37 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v47 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
        _os_log_impl(&dword_21FEE5000, v37, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", buf, 0xCu);
      }

      self->_shouldListenForSceneActivation = 1;
      os_unfair_lock_unlock(&self->_dictationInProgressLock);
      v38 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v47 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
        _os_log_impl(&dword_21FEE5000, v38, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock unlocked", buf, 0xCu);
      }
    }

    dispatch_group_enter(self->_requestDictationFromSiriGroup);
    objc_initWeak(buf, self);
    v39 = self->_requestDictationFromSiriGroup;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __100__SiriPresentationPineBoardMainScreenViewController_siriViewController_willStartRequestWithOptions___block_invoke;
    v43[3] = &unk_2784300F8;
    objc_copyWeak(&v45, buf);
    v44 = v15;
    dispatch_group_notify(v39, MEMORY[0x277D85CD0], v43);

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
  }

  else
  {
    v40 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v47 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]";
      _os_log_impl(&dword_21FEE5000, v40, OS_LOG_TYPE_DEFAULT, "%s #activation sending command to warm up VideoFlowDelegatePlugin", buf, 0xCu);
    }

    [(SiriPresentationPineBoardMainScreenViewController *)self _prewarmSiriVideoFlowDelegatePlugin];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v14;
}

void __100__SiriPresentationPineBoardMainScreenViewController_siriViewController_willStartRequestWithOptions___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x277CCACC8];
      v6 = v4;
      v7 = [v5 currentThread];
      v12 = 136315394;
      v13 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]_block_invoke";
      v14 = 2048;
      v15 = [v7 qualityOfService];
      _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_dictationInProgressLock about to lock with qos: %zd", &v12, 0x16u);
    }

    os_unfair_lock_lock(WeakRetained + 372);
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_dictationInProgressLock successfully locked", &v12, 0xCu);
    }

    if (BYTE2(WeakRetained[373]._os_unfair_lock_opaque) == 1)
    {
      -[os_unfair_lock_s _forwardHIDButtonEventWithUsagePage:usage:type:senderID:](WeakRetained, "_forwardHIDButtonEventWithUsagePage:usage:type:senderID:", 12, 4, 0, [*(a1 + 32) longLongValue]);
      LOBYTE(WeakRetained[373]._os_unfair_lock_opaque) = 1;
      BYTE2(WeakRetained[373]._os_unfair_lock_opaque) = 0;
      v9 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]_block_invoke";
        _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Forwarded Dictation Start Event to BackBoard", &v12, 0xCu);
      }
    }

    os_unfair_lock_unlock(WeakRetained + 372);
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:willStartRequestWithOptions:]_block_invoke";
      _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy strongSelf->_dictationInProgressLock unlocked", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)siriViewController:(id)a3 didReceiveButtonUpWithRequestOptions:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x277CCACC8];
    v11 = v9;
    v12 = [v10 currentThread];
    v20 = 136315394;
    v21 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:didReceiveButtonUpWithRequestOptions:]";
    v22 = 2048;
    v23 = [v12 qualityOfService];
    _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", &v20, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictationInProgressLock);
  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:didReceiveButtonUpWithRequestOptions:]";
    _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", &v20, 0xCu);
  }

  didRequestDictationStart = self->_didRequestDictationStart;
  self->_shouldRequestDictation = 0;
  self->_didRequestDictationStart = 0;
  os_unfair_lock_unlock(&self->_dictationInProgressLock);
  v15 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:didReceiveButtonUpWithRequestOptions:]";
    _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock unlocked", &v20, 0xCu);
  }

  if (didRequestDictationStart)
  {
    v16 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:didReceiveButtonUpWithRequestOptions:]";
      _os_log_impl(&dword_21FEE5000, v16, OS_LOG_TYPE_DEFAULT, "%s #activation Forwarding Dictation stop event to BackBoard", &v20, 0xCu);
    }

    v17 = [v7 activationDeviceIdentifier];
    -[SiriPresentationPineBoardMainScreenViewController _forwardHIDButtonEventWithUsagePage:usage:type:senderID:](self, "_forwardHIDButtonEventWithUsagePage:usage:type:senderID:", 12, 4, 1, [v17 longLongValue]);
  }

  requestDictationFromSiriGroup = self->_requestDictationFromSiriGroup;
  self->_requestDictationFromSiriGroup = 0;

  v19 = *MEMORY[0x277D85DE8];
}

- (void)siriViewControllerDidPresentKeyboard:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCACC8];
    v8 = v6;
    v9 = [v7 currentThread];
    v15 = 136315394;
    v16 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidPresentKeyboard:]";
    v17 = 2048;
    v18 = [v9 qualityOfService];
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", &v15, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictationInProgressLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidPresentKeyboard:]";
    _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", &v15, 0xCu);
  }

  if (self->_requestDictationFromSiriGroup)
  {
    shouldRequestDictation = self->_shouldRequestDictation;
  }

  else
  {
    shouldRequestDictation = 0;
  }

  os_unfair_lock_unlock(&self->_dictationInProgressLock);
  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidPresentKeyboard:]";
    _os_log_impl(&dword_21FEE5000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock unlocked", &v15, 0xCu);
  }

  if (shouldRequestDictation)
  {
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidPresentKeyboard:]";
      _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation Keyboard Ready to Start Dictation", &v15, 0xCu);
    }

    dispatch_group_leave(self->_requestDictationFromSiriGroup);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)siriViewController:(id)a3 sceneDidActivateWithIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 siriPresentation:self sceneDidActivateWithIdentifier:v5];
  }

  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x277CCACC8];
    v10 = v8;
    v11 = [v9 currentThread];
    v17 = 136315394;
    v18 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:sceneDidActivateWithIdentifier:]";
    v19 = 2048;
    v20 = [v11 qualityOfService];
    _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", &v17, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictationInProgressLock);
  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:sceneDidActivateWithIdentifier:]";
    _os_log_impl(&dword_21FEE5000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", &v17, 0xCu);
  }

  if (self->_requestDictationFromSiriGroup && self->_shouldRequestDictation && self->_shouldListenForSceneActivation)
  {
    self->_shouldListenForSceneActivation = 0;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(&self->_dictationInProgressLock);
  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:sceneDidActivateWithIdentifier:]";
    _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock unlocked", &v17, 0xCu);
  }

  if (v13)
  {
    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[SiriPresentationPineBoardMainScreenViewController siriViewController:sceneDidActivateWithIdentifier:]";
      _os_log_impl(&dword_21FEE5000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation Scene Activated & ready to start dictation", &v17, 0xCu);
    }

    dispatch_group_leave(self->_requestDictationFromSiriGroup);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)siriViewControllerDidDeactivateScene:(id)a3
{
  v4 = [(SiriPresentationViewController *)self siriPresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 siriPresentationDidDeactivateScene:self];
  }
}

- (void)siriViewControllerDidChangeToListeningMode:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  [(SiriPresentationPineBoardMainScreenViewController *)self _buttonDownTimestamp];
  if (v4 > 0.0)
  {
    CFAbsoluteTimeGetCurrent();
    SiriSystemUpTimeFromCFAbsoluteCurrentTime();
    v6 = v5 - self->_buttonDownTimestamp;
    v7 = MEMORY[0x277CEF098];
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = v8;
      v11 = [v9 numberWithDouble:v6];
      v15 = 136315394;
      v16 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidChangeToListeningMode:]";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation Launch time (button.down - listening): %@", &v15, 0x16u);
    }

    [(SiriPresentationPineBoardMainScreenViewController *)self _thresholdForTriggeringABCInLaunch];
    if (v6 >= v12)
    {
      v13 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = "[SiriPresentationPineBoardMainScreenViewController siriViewControllerDidChangeToListeningMode:]";
        _os_log_impl(&dword_21FEE5000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation Triggering ABC for launch time >= 2.5 seconds", &v15, 0xCu);
      }

      [(SiriPresentationViewController *)self _logSignatureWithType:@"tvos_launch_performance" subType:@"tvos_long_launch_time" context:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setNextVoiceRecognitionAudioInputPaths:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[SiriPresentationPineBoardMainScreenViewController setNextVoiceRecognitionAudioInputPaths:]";
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(SiriPresentationViewController *)self _clearAllTestingInputs];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(*(&v18 + 1) + 8 * v9)];
        v11 = objc_alloc(MEMORY[0x277D551B8]);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __92__SiriPresentationPineBoardMainScreenViewController_setNextVoiceRecognitionAudioInputPaths___block_invoke;
        v16[3] = &unk_278430120;
        v17 = v10;
        v12 = v10;
        v13 = [v11 initWithBuilder:v16];
        [(SiriPresentationViewController *)self _enqueueTestInput:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __92__SiriPresentationPineBoardMainScreenViewController_setNextVoiceRecognitionAudioInputPaths___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setType:2];
  [v3 setRecordedSpeechURL:*(a1 + 32)];
}

- (void)setNextAssistantRecognitionStrings:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SiriPresentationPineBoardMainScreenViewController setNextAssistantRecognitionStrings:]";
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(SiriPresentationViewController *)self _clearAllTestingInputs];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = objc_alloc(MEMORY[0x277D551B8]);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __88__SiriPresentationPineBoardMainScreenViewController_setNextAssistantRecognitionStrings___block_invoke;
        v15[3] = &unk_278430120;
        v15[4] = v11;
        v13 = [v12 initWithBuilder:v15];
        [(SiriPresentationViewController *)self _enqueueTestInput:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __88__SiriPresentationPineBoardMainScreenViewController_setNextAssistantRecognitionStrings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setType:1];
  [v3 setText:*(a1 + 32)];
}

- (void)_forwardHIDButtonEventWithUsagePage:(unsigned int)a3 usage:(unsigned int)a4 type:(int64_t)a5 senderID:(unint64_t)a6
{
  v9 = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
  if (a5 <= 1)
  {
    v7 = *MEMORY[0x277CBECE8];
    mach_absolute_time();
    KeyboardEvent = IOHIDEventCreateKeyboardEvent();
    IOHIDEventSetSenderID();
    BKSHIDEventSendToResolvedProcessForDeferringEnvironment();
    CFRelease(KeyboardEvent);
  }
}

- (BOOL)_getValueForShouldRequestDictation
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCACC8];
    v6 = v4;
    v7 = [v5 currentThread];
    v11 = 136315394;
    v12 = "[SiriPresentationPineBoardMainScreenViewController _getValueForShouldRequestDictation]";
    v13 = 2048;
    v14 = [v7 qualityOfService];
    _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock about to lock with qos: %zd", &v11, 0x16u);
  }

  os_unfair_lock_lock(&self->_dictationInProgressLock);
  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SiriPresentationPineBoardMainScreenViewController _getValueForShouldRequestDictation]";
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy _dictationInProgressLock successfully locked", &v11, 0xCu);
  }

  result = self->_shouldRequestDictation;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

@end