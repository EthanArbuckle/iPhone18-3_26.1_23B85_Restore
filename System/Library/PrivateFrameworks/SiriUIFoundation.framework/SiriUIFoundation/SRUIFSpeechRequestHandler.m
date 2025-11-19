@interface SRUIFSpeechRequestHandler
- (SRUIFSpeechRequestHandler)initWithDelegate:(id)a3;
- (SRUIFSpeechRequestHandlerDelegate)delegate;
- (id)prepareForNewSpeechRequest;
- (void)_continuePendingSpeechRequest;
- (void)_performOnCurrentSpeechDipatchGroup:(id)a3;
- (void)cancelSpeechRequest;
- (void)discardCurrentSpeechGroup;
- (void)nonSpeechRequestWillBegin;
- (void)speechRecordingDidFail;
- (void)speechRecordingWillBegin;
- (void)startSpeechRequestWithSpeechFileAtURL:(id)a3 completion:(id)a4;
- (void)startSpeechRequestWithSpeechRequestOptions:(id)a3 instrumentationTurn:(id)a4 isInitialBringUp:(BOOL)a5 completion:(id)a6;
- (void)stopSpeechRequest;
- (void)stopSpeechRequestWithOptions:(id)a3;
- (void)updateSpeechRequestOptions:(id)a3;
@end

@implementation SRUIFSpeechRequestHandler

- (void)discardCurrentSpeechGroup
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[SRUIFSpeechRequestHandler discardCurrentSpeechGroup]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4 = self->_currentSpeechRequestGroup;
  if (v4)
  {
    speechRequestGroupGraveyard = self->_speechRequestGroupGraveyard;
    if (!speechRequestGroupGraveyard)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_speechRequestGroupGraveyard;
      self->_speechRequestGroupGraveyard = v6;

      speechRequestGroupGraveyard = self->_speechRequestGroupGraveyard;
    }

    if (([(NSMutableSet *)speechRequestGroupGraveyard containsObject:v4]& 1) == 0)
    {
      [(NSMutableSet *)self->_speechRequestGroupGraveyard addObject:v4];
      objc_initWeak(buf, self);
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __54__SRUIFSpeechRequestHandler_discardCurrentSpeechGroup__block_invoke;
      v12 = &unk_279C61898;
      objc_copyWeak(&v14, buf);
      v13 = v4;
      dispatch_group_notify(v13, MEMORY[0x277D85CD0], &v9);

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }

    [(SRUIFSpeechRequestHandler *)self _continuePendingSpeechRequest:v9];
    [(SRUIFSpeechRequestHandler *)self _setCurrentSpeechRequestGroup:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)prepareForNewSpeechRequest
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[SRUIFSpeechRequestHandler prepareForNewSpeechRequest]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  v4 = dispatch_group_create();
  currentSpeechRequestGroup = self->_currentSpeechRequestGroup;
  self->_currentSpeechRequestGroup = v4;

  v6 = self->_currentSpeechRequestGroup;
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)nonSpeechRequestWillBegin
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(SRUIFSpeechRequestHandler *)self delegate];
  v4 = [v3 connectionForSpeechRequestHandler:self];

  if ([v4 isRecording])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[SRUIFSpeechRequestHandler nonSpeechRequestWillBegin]";
      _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s Request will begin while recording is ongoing. Cancelling speech request", &v7, 0xCu);
    }

    [(SRUIFSpeechRequestHandler *)self cancelSpeechRequest];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (SRUIFSpeechRequestHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_continuePendingSpeechRequest
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    continuePendingRequest = self->_continuePendingRequest;
    v5 = v3;
    v6 = _Block_copy(continuePendingRequest);
    v10 = 136315394;
    v11 = "[SRUIFSpeechRequestHandler _continuePendingSpeechRequest]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  v7 = self->_continuePendingRequest;
  if (v7)
  {
    v7[2]();
    v8 = self->_continuePendingRequest;
    self->_continuePendingRequest = 0;

    self->_sendContextBeforeContinuingSpeechRequest = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__SRUIFSpeechRequestHandler_discardCurrentSpeechGroup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (SRUIFSpeechRequestHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SRUIFSpeechRequestHandler;
  v5 = [(SRUIFSpeechRequestHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)startSpeechRequestWithSpeechRequestOptions:(id)a3 instrumentationTurn:(id)a4 isInitialBringUp:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SRUIFSpeechRequestHandler *)self _currentSpeechRequestGroup];
  if (v13)
  {
    v14 = [(SRUIFSpeechRequestHandler *)self delegate];
    v15 = [v14 connectionForSpeechRequestHandler:self];

    v16 = MEMORY[0x277CEF098];
    v17 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v11 turnIdentifier];
      v33 = 136315394;
      v34 = "[SRUIFSpeechRequestHandler startSpeechRequestWithSpeechRequestOptions:instrumentationTurn:isInitialBringUp:completion:]";
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&dword_26951F000, v18, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Setting turn identifier for speech request %@", &v33, 0x16u);
    }

    v20 = [v11 turnIdentifier];
    [v10 setTurnIdentifier:v20];

    v21 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = [v10 userProfileHeadphoneConnected];
      v33 = 136315394;
      v34 = "[SRUIFSpeechRequestHandler startSpeechRequestWithSpeechRequestOptions:instrumentationTurn:isInitialBringUp:completion:]";
      v35 = 1024;
      LODWORD(v36) = v23;
      _os_log_impl(&dword_26951F000, v22, OS_LOG_TYPE_DEFAULT, "%s #shih startSpeech headphone connected %d", &v33, 0x12u);
    }

    if (([v15 isRecording] & 1) == 0)
    {
      v24 = [v15 startRecordingAndGetContinueBlockForPendingSpeechRequestWithOptions:v10];
      continuePendingRequest = self->_continuePendingRequest;
      if (continuePendingRequest)
      {
        continuePendingRequest[2]();
      }

      self->_sendContextBeforeContinuingSpeechRequest = 0;
      if (v15)
      {
        v27 = *v16;
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 136315394;
          v34 = "[SRUIFSpeechRequestHandler startSpeechRequestWithSpeechRequestOptions:instrumentationTurn:isInitialBringUp:completion:]";
          v35 = 1024;
          LODWORD(v36) = v7;
          _os_log_impl(&dword_26951F000, v27, OS_LOG_TYPE_DEFAULT, "%s Captured pending speech request dispatch block. Is Initial Bring up %{BOOL}d", &v33, 0x12u);
        }

        v28 = _Block_copy(v24);
        v29 = self->_continuePendingRequest;
        self->_continuePendingRequest = v28;

        self->_sendContextBeforeContinuingSpeechRequest = !v7;
        if (v12)
        {
          v12[2](v12, 0);
        }
      }

      else
      {
        if (v24)
        {
          v24[2](v24);
        }

        v31 = self->_continuePendingRequest;
        self->_continuePendingRequest = 0;

        if (v12)
        {
          v32 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"No AFConnection." underlyingError:0];
          (v12)[2](v12, v32);
        }
      }

      goto LABEL_19;
    }

    if (v12)
    {
      v24 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"AFConnection is already recording." underlyingError:0];
      (v12)[2](v12, v24);
LABEL_19:
    }

LABEL_20:

    goto LABEL_21;
  }

  v25 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [SRUIFSpeechRequestHandler startSpeechRequestWithSpeechRequestOptions:v25 instrumentationTurn:? isInitialBringUp:? completion:?];
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  if (v12)
  {
LABEL_11:
    v15 = [MEMORY[0x277CEF2A0] errorWithCode:2510 description:@"No speech request dispatch group." underlyingError:0];
    (v12)[2](v12, v15);
    goto LABEL_20;
  }

LABEL_21:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)startSpeechRequestWithSpeechFileAtURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRUIFSpeechRequestHandler *)self _currentSpeechRequestGroup];
  v9 = v8;
  if (v8)
  {
    dispatch_group_enter(v8);
  }

  objc_initWeak(&location, self);
  v10 = [(SRUIFSpeechRequestHandler *)self delegate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__SRUIFSpeechRequestHandler_startSpeechRequestWithSpeechFileAtURL_completion___block_invoke;
  v14[3] = &unk_279C61848;
  objc_copyWeak(&v18, &location);
  v11 = v9;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  v13 = v7;
  v17 = v13;
  [v10 sendContextForSpeechRequestContinuationWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

uint64_t __78__SRUIFSpeechRequestHandler_startSpeechRequestWithSpeechFileAtURL_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [WeakRetained _currentSpeechRequestGroup];

    if (v3 == v4)
    {
      v5 = [v10 delegate];
      v6 = [v5 connectionForSpeechRequestHandler:v10];
      [v6 startSpeechRequestWithSpeechFileAtURL:*(a1 + 40)];

      v7 = *(a1 + 48);
      if (v7)
      {
        (*(v7 + 16))(v7, 0);
      }
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    dispatch_group_leave(v8);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)speechRecordingWillBegin
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    sendContextBeforeContinuingSpeechRequest = self->_sendContextBeforeContinuingSpeechRequest;
    *buf = 136315394;
    v10 = "[SRUIFSpeechRequestHandler speechRecordingWillBegin]";
    v11 = 1024;
    v12 = sendContextBeforeContinuingSpeechRequest;
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s Should send context before speech request continuation: %{BOOL}d", buf, 0x12u);
  }

  if (self->_sendContextBeforeContinuingSpeechRequest)
  {
    objc_initWeak(buf, self);
    v5 = [(SRUIFSpeechRequestHandler *)self delegate];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__SRUIFSpeechRequestHandler_speechRecordingWillBegin__block_invoke;
    v7[3] = &unk_279C61870;
    objc_copyWeak(&v8, buf);
    [v5 sendContextForSpeechRequestContinuationWithCompletion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SRUIFSpeechRequestHandler *)self _continuePendingSpeechRequest];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __53__SRUIFSpeechRequestHandler_speechRecordingWillBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _continuePendingSpeechRequest];
}

- (void)speechRecordingDidFail
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRUIFSpeechRequestHandler speechRecordingDidFail]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  [(SRUIFSpeechRequestHandler *)self _continuePendingSpeechRequest];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)stopSpeechRequestWithOptions:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SRUIFSpeechRequestHandler stopSpeechRequestWithOptions:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SRUIFSpeechRequestHandler_stopSpeechRequestWithOptions___block_invoke;
  v8[3] = &unk_279C61898;
  objc_copyWeak(&v10, buf);
  v6 = v4;
  v9 = v6;
  [(SRUIFSpeechRequestHandler *)self _performOnCurrentSpeechDipatchGroup:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v7 = *MEMORY[0x277D85DE8];
}

void __58__SRUIFSpeechRequestHandler_stopSpeechRequestWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v2 connectionForSpeechRequestHandler:v3];
  [v4 stopSpeechWithOptions:*(a1 + 32)];
}

- (void)stopSpeechRequest
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SRUIFSpeechRequestHandler stopSpeechRequest]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  v4 = [(SRUIFSpeechRequestHandler *)self delegate];
  v5 = [v4 connectionForSpeechRequestHandler:self];
  [v5 stopSpeech];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateSpeechRequestOptions:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SRUIFSpeechRequestHandler updateSpeechRequestOptions:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SRUIFSpeechRequestHandler_updateSpeechRequestOptions___block_invoke;
  v8[3] = &unk_279C61898;
  objc_copyWeak(&v10, buf);
  v6 = v4;
  v9 = v6;
  [(SRUIFSpeechRequestHandler *)self _performOnCurrentSpeechDipatchGroup:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v7 = *MEMORY[0x277D85DE8];
}

void __56__SRUIFSpeechRequestHandler_updateSpeechRequestOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v2 connectionForSpeechRequestHandler:v3];
  [v4 updateSpeechOptions:*(a1 + 32)];
}

- (void)_performOnCurrentSpeechDipatchGroup:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFSpeechRequestHandler *)self _currentSpeechRequestGroup];
  if (v5)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__SRUIFSpeechRequestHandler__performOnCurrentSpeechDipatchGroup___block_invoke;
    v7[3] = &unk_279C618C0;
    objc_copyWeak(&v10, &location);
    v8 = v5;
    v9 = v4;
    dispatch_group_notify(v8, MEMORY[0x277D85CD0], v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SRUIFSpeechRequestHandler _performOnCurrentSpeechDipatchGroup:v6];
    }
  }
}

void __65__SRUIFSpeechRequestHandler__performOnCurrentSpeechDipatchGroup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained _currentSpeechRequestGroup];

    WeakRetained = v5;
    if (v3 == v4)
    {
      (*(*(a1 + 40) + 16))();
      WeakRetained = v5;
    }
  }
}

- (void)cancelSpeechRequest
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF098];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SRUIFSpeechRequestHandler cancelSpeechRequest]";
    _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v13, 0xCu);
  }

  v5 = [(SRUIFSpeechRequestHandler *)self delegate];
  [v5 speechRequestHandlerWillCancelSpeechRequest:self];

  v6 = [(SRUIFSpeechRequestHandler *)self delegate];
  v7 = [v6 connectionForSpeechRequestHandler:self];

  v8 = [(SRUIFSpeechRequestHandler *)self delegate];
  v9 = [v8 speechRequestHandlerShouldRollBackRequestForSpeechCancellation:self];

  if (v9)
  {
    v10 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SRUIFSpeechRequestHandler cancelSpeechRequest]";
      _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, "%s Delegate specified a rollback is necessary", &v13, 0xCu);
    }

    [v7 rollbackRequest];
  }

  [v7 cancelRequest];
  v11 = [(SRUIFSpeechRequestHandler *)self delegate];
  [v11 speechRequestHandlerDidCancelSpeechRequest:self];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startSpeechRequestWithSpeechRequestOptions:(os_log_t)log instrumentationTurn:isInitialBringUp:completion:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SRUIFSpeechRequestHandler startSpeechRequestWithSpeechRequestOptions:instrumentationTurn:isInitialBringUp:completion:]";
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s couldn't find a speech request dispatch group", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_performOnCurrentSpeechDipatchGroup:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SRUIFSpeechRequestHandler _performOnCurrentSpeechDipatchGroup:]";
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s Speech Request Dispatch Group nil.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end