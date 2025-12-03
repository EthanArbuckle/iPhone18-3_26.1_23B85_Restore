@interface SRUIFStateFeedbackDefaultProvider
- (SRUIFStateFeedbackDefaultProvider)initWithConnection:(id)connection withPlaybackOptions:(unint64_t)options;
- (void)_playAudioPlaybackRequest:(id)request completion:(id)completion;
- (void)_playFeedbackWithSoundId:(int64_t)id hapticLibraryKey:(id)key UUID:(id)d completion:(id)completion;
- (void)_startDelayFeedbackWithResponseMode:(id)mode withCompletion:(id)completion;
- (void)_startSuccessFeedback:(id)feedback withCompletion:(id)completion;
- (void)cancelFeedbackWithCompletion:(id)completion;
- (void)playAudioPlaybackRequest:(id)request completion:(id)completion;
- (void)playFeedbackForStateFeedbackType:(int64_t)type withResponseMode:(id)mode completion:(id)completion;
- (void)releaseAudioSessionWithCompletion:(id)completion;
@end

@implementation SRUIFStateFeedbackDefaultProvider

- (SRUIFStateFeedbackDefaultProvider)initWithConnection:(id)connection withPlaybackOptions:(unint64_t)options
{
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = SRUIFStateFeedbackDefaultProvider;
  v7 = [(SRUIFStateFeedbackDefaultProvider *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_connection, connectionCopy);
    v8->_options = options;
    v9 = dispatch_queue_create("com.apple.siri.stateFeedbackProviderQueue", 0);
    queue = v8->_queue;
    v8->_queue = v9;
  }

  return v8;
}

- (void)playFeedbackForStateFeedbackType:(int64_t)type withResponseMode:(id)mode completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  completionCopy = completion;
  if (type == 1)
  {
    [(SRUIFStateFeedbackDefaultProvider *)self _startSuccessFeedback:modeCopy withCompletion:completionCopy];
  }

  else if (type)
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[SRUIFStateFeedbackDefaultProvider playFeedbackForStateFeedbackType:withResponseMode:completion:]";
      _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, "%s #statefeedback state feedback type not handled by feedback provier", &v12, 0xCu);
    }
  }

  else
  {
    [(SRUIFStateFeedbackDefaultProvider *)self _startDelayFeedbackWithResponseMode:modeCopy withCompletion:completionCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)playAudioPlaybackRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  itemURL = [requestCopy itemURL];
  if (itemURL)
  {

LABEL_4:
    v10 = objc_alloc(MEMORY[0x277CEF188]);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __73__SRUIFStateFeedbackDefaultProvider_playAudioPlaybackRequest_completion___block_invoke;
    v19[3] = &unk_279C619B8;
    v20 = requestCopy;
    v11 = [v10 initWithBuilder:v19];
    currentAudioPlaybackRequest = self->_currentAudioPlaybackRequest;
    self->_currentAudioPlaybackRequest = v11;
    v13 = v11;

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__SRUIFStateFeedbackDefaultProvider_playAudioPlaybackRequest_completion___block_invoke_2;
    v17[3] = &unk_279C619E0;
    v18 = completionCopy;
    [(SRUIFStateFeedbackDefaultProvider *)self _playAudioPlaybackRequest:v13 completion:v17];

    goto LABEL_5;
  }

  itemData = [requestCopy itemData];

  if (itemData)
  {
    goto LABEL_4;
  }

  toneLibraryAlertType = [requestCopy toneLibraryAlertType];

  if (toneLibraryAlertType)
  {
    toneLibraryAlertType2 = [requestCopy toneLibraryAlertType];
    integerValue = [toneLibraryAlertType2 integerValue];

    [MEMORY[0x277D71F50] playAlertForType:integerValue];
    (*(completionCopy + 2))(completionCopy, 1);
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SRUIFStateFeedbackDefaultProvider playAudioPlaybackRequest:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_5:
}

void __73__SRUIFStateFeedbackDefaultProvider_playAudioPlaybackRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [*(a1 + 32) itemURL];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEBC0]);
    v5 = [*(a1 + 32) itemURL];
    v6 = [v4 initWithString:v5];

    [v26 setItemURL:v6];
  }

  v7 = [*(a1 + 32) itemData];
  v8 = [v7 audioBuffer];

  if (v8)
  {
    v9 = [*(a1 + 32) itemData];
    v10 = [v9 audioBuffer];
    [v26 setItemData:v10];
  }

  v11 = [*(a1 + 32) volume];

  if (v11)
  {
    v12 = [*(a1 + 32) volume];
    [v12 floatValue];
    [v26 setVolume:?];
  }

  v13 = [*(a1 + 32) fadeInDuration];

  if (v13)
  {
    v14 = [*(a1 + 32) fadeInDuration];
    [v14 floatValue];
    [v26 setFadeInDuration:v15];
  }

  v16 = [*(a1 + 32) fadeOutDuration];

  if (v16)
  {
    v17 = [*(a1 + 32) fadeOutDuration];
    [v17 floatValue];
    [v26 setFadeOutDuration:v18];
  }

  v19 = [*(a1 + 32) numberOfLoops];

  if (v19)
  {
    v20 = [*(a1 + 32) numberOfLoops];
    [v26 setNumberOfLoops:{objc_msgSend(v20, "integerValue")}];
  }

  v21 = [*(a1 + 32) hapticLibraryKey];

  if (v21)
  {
    v22 = [*(a1 + 32) hapticLibraryKey];
    [v26 setHapticLibraryKey:v22];
  }

  v23 = [*(a1 + 32) refId];

  v24 = *(a1 + 32);
  if (v23)
  {
    [v24 refId];
  }

  else
  {
    [v24 aceId];
  }
  v25 = ;
  [v26 setUUID:v25];
}

void __73__SRUIFStateFeedbackDefaultProvider_playAudioPlaybackRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __73__SRUIFStateFeedbackDefaultProvider_playAudioPlaybackRequest_completion___block_invoke_2_cold_1();
    }

    v4 = *(*(a1 + 32) + 16);
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);
  }

  v4();
}

- (void)cancelFeedbackWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (self->_currentAudioPlaybackRequest)
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    [WeakRetained stopAudioPlaybackRequest:self->_currentAudioPlaybackRequest immediately:0];

    if (self->_audioSessionRelinquishBlock)
    {
      v6 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "[SRUIFStateFeedbackDefaultProvider cancelFeedbackWithCompletion:]";
        _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s #statefeedback cancelling feedback, calling audio session relinquish block", buf, 0xCu);
      }

      (*(self->_audioSessionRelinquishBlock + 2))();
      audioSessionRelinquishBlock = self->_audioSessionRelinquishBlock;
      self->_audioSessionRelinquishBlock = 0;
    }

    currentAudioPlaybackRequest = self->_currentAudioPlaybackRequest;
    self->_currentAudioPlaybackRequest = 0;

    uuidForFirstDelayTone = self->_uuidForFirstDelayTone;
    self->_uuidForFirstDelayTone = 0;
  }

  [(AFWatchdogTimer *)self->_delayToneTimer cancel];
  if (self->_acquiringAudioSession)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__SRUIFStateFeedbackDefaultProvider_cancelFeedbackWithCompletion___block_invoke;
    aBlock[3] = &unk_279C61A08;
    v14 = completionCopy;
    v10 = _Block_copy(aBlock);
    audioSessionAcquiredBlock = self->_audioSessionAcquiredBlock;
    self->_audioSessionAcquiredBlock = v10;
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __66__SRUIFStateFeedbackDefaultProvider_cancelFeedbackWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)releaseAudioSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained forceAudioSessionInactiveWithOptions:0 completion:completionCopy];
}

- (void)_playFeedbackWithSoundId:(int64_t)id hapticLibraryKey:(id)key UUID:(id)d completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dCopy = d;
  completionCopy = completion;
  if (AFSoundIDGetIsValidAndSpecified())
  {
    mEMORY[0x277CEF1C0] = [MEMORY[0x277CEF1C0] sharedManager];
    v14 = [mEMORY[0x277CEF1C0] URLForSoundID:id];
  }

  else
  {
    v14 = 0;
  }

  if (keyCopy | v14)
  {
    v15 = objc_alloc(MEMORY[0x277CEF188]);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __95__SRUIFStateFeedbackDefaultProvider__playFeedbackWithSoundId_hapticLibraryKey_UUID_completion___block_invoke;
    v24[3] = &unk_279C61A30;
    v25 = v14;
    v26 = dCopy;
    v27 = keyCopy;
    v16 = [v15 initWithBuilder:v24];
    currentAudioPlaybackRequest = self->_currentAudioPlaybackRequest;
    self->_currentAudioPlaybackRequest = v16;
    v18 = v16;

    v19 = self->_currentAudioPlaybackRequest;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __95__SRUIFStateFeedbackDefaultProvider__playFeedbackWithSoundId_hapticLibraryKey_UUID_completion___block_invoke_2;
    v22[3] = &unk_279C619E0;
    v23 = completionCopy;
    [(SRUIFStateFeedbackDefaultProvider *)self _playAudioPlaybackRequest:v19 completion:v22];
  }

  else
  {
    v20 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[SRUIFStateFeedbackDefaultProvider _playFeedbackWithSoundId:hapticLibraryKey:UUID:completion:]";
      _os_log_impl(&dword_26951F000, v20, OS_LOG_TYPE_DEFAULT, "%s #statefeedback no audio or haptic specified, visual only feedback", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __95__SRUIFStateFeedbackDefaultProvider__playFeedbackWithSoundId_hapticLibraryKey_UUID_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v5 = a2;
  [v5 setItemURL:v3];
  [v5 setNumberOfLoops:0];
  LODWORD(v4) = 1.0;
  [v5 setVolume:v4];
  [v5 setFadeOutDuration:0.5];
  [v5 setUUID:a1[5]];
  [v5 setHapticLibraryKey:a1[6]];
}

uint64_t __95__SRUIFStateFeedbackDefaultProvider__playFeedbackWithSoundId_hapticLibraryKey_UUID_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)_playAudioPlaybackRequest:(id)request completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x277CEF398]) initWithBuilder:&__block_literal_global];
  objc_initWeak(&location, self);
  self->_acquiringAudioSession = 1;
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SRUIFStateFeedbackDefaultProvider _playAudioPlaybackRequest:completion:]";
    _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #statefeedback Acquiring Audio Session", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__SRUIFStateFeedbackDefaultProvider__playAudioPlaybackRequest_completion___block_invoke_9;
  v14[3] = &unk_279C61A78;
  objc_copyWeak(&v17, &location);
  v11 = requestCopy;
  v15 = v11;
  v12 = completionCopy;
  v16 = v12;
  [WeakRetained acquireAudioSessionWithContext:v8 completion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __74__SRUIFStateFeedbackDefaultProvider__playAudioPlaybackRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setReason:3];
  [v2 setOptions:2];
}

void __74__SRUIFStateFeedbackDefaultProvider__playAudioPlaybackRequest_completion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[56] = 0;
    v9 = *(WeakRetained + 8);
    if (v9)
    {
      (*(v9 + 16))();
      v10 = *(v8 + 8);
      *(v8 + 8) = 0;
    }

    v11 = [v5 error];

    v12 = MEMORY[0x277CEF098];
    v13 = *MEMORY[0x277CEF098];
    v14 = *MEMORY[0x277CEF098];
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __74__SRUIFStateFeedbackDefaultProvider__playAudioPlaybackRequest_completion___block_invoke_9_cold_1(v13, v5);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v13;
        v21 = 136315394;
        v22 = "[SRUIFStateFeedbackDefaultProvider _playAudioPlaybackRequest:completion:]_block_invoke";
        v23 = 1024;
        v24 = [v5 audioSessionID];
        _os_log_impl(&dword_26951F000, v15, OS_LOG_TYPE_DEFAULT, "%s #statefeedback Acquired Audio Session: %d", &v21, 0x12u);
      }

      if (*(v8 + 2))
      {
        v16 = objc_loadWeakRetained(v8 + 1);
        [v16 startAudioPlaybackRequest:*(a1 + 32) options:*(v8 + 3) completion:*(a1 + 40)];

        v17 = _Block_copy(v6);
        v18 = *(v8 + 4);
        *(v8 + 4) = v17;
      }

      else
      {
        v19 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136315138;
          v22 = "[SRUIFStateFeedbackDefaultProvider _playAudioPlaybackRequest:completion:]_block_invoke";
          _os_log_impl(&dword_26951F000, v19, OS_LOG_TYPE_DEFAULT, "%s #statefeedback Relinquishing audio session as there is no active audio playback request anymore", &v21, 0xCu);
        }

        v6[2](v6);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_startSuccessFeedback:(id)feedback withCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSoundIDGetFromName();
  if ([MEMORY[0x277CEF4D0] saeAvailable])
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uUIDString = [v7 UUIDString];
    [(SRUIFStateFeedbackDefaultProvider *)self _playFeedbackWithSoundId:v5 hapticLibraryKey:@"TestPattern01" UUID:uUIDString completion:completionCopy];
  }
}

- (void)_startDelayFeedbackWithResponseMode:(id)mode withCompletion:(id)completion
{
  modeCopy = mode;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CCAD78]);
  uUIDString = [v8 UUIDString];

  if ([MEMORY[0x277CEF4D0] saeAvailable])
  {
    v10 = AFSoundIDGetFromName();
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = 8;
    }
  }

  else
  {
    v11 = 8;
  }

  if (([modeCopy isEqualToString:*MEMORY[0x277D48C98]] & 1) == 0 && (!AFIsNano() || !objc_msgSend(modeCopy, "isEqualToString:", *MEMORY[0x277D48C90])))
  {
    objc_storeStrong(&self->_uuidForFirstDelayTone, uUIDString);
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__SRUIFStateFeedbackDefaultProvider__startDelayFeedbackWithResponseMode_withCompletion___block_invoke;
    v12[3] = &unk_279C61AE8;
    objc_copyWeak(v15, &location);
    v16 = 1076887552;
    v15[1] = v11;
    v13 = 0;
    v14 = completionCopy;
    [(SRUIFStateFeedbackDefaultProvider *)self _playFeedbackWithSoundId:v11 hapticLibraryKey:0 UUID:uUIDString completion:v12];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
    goto LABEL_13;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [SRUIFStateFeedbackDefaultProvider _startDelayFeedbackWithResponseMode:withCompletion:];
    if (!completionCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (completionCopy)
  {
LABEL_9:
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

LABEL_13:
}

void __88__SRUIFStateFeedbackDefaultProvider__startDelayFeedbackWithResponseMode_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __88__SRUIFStateFeedbackDefaultProvider__startDelayFeedbackWithResponseMode_withCompletion___block_invoke_cold_1();
      }
    }

    else if (a2 != 1)
    {
      v7 = objc_alloc(MEMORY[0x277CEF530]);
      v8 = *(a1 + 64);
      v9 = *(WeakRetained + 9);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __88__SRUIFStateFeedbackDefaultProvider__startDelayFeedbackWithResponseMode_withCompletion___block_invoke_21;
      v21[3] = &unk_279C61AC0;
      v10 = *(a1 + 56);
      v21[4] = WeakRetained;
      v23 = v10;
      v22 = *(a1 + 32);
      v11 = [v7 initWithTimeoutInterval:v9 onQueue:v21 timeoutHandler:v8];
      v12 = *(WeakRetained + 5);
      *(WeakRetained + 5) = v11;

      v13 = *(WeakRetained + 2);
      if (v13 && ([v13 UUID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", *(WeakRetained + 6)), v14, v15))
      {
        v16 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 64);
          *buf = 136315394;
          v25 = "[SRUIFStateFeedbackDefaultProvider _startDelayFeedbackWithResponseMode:withCompletion:]_block_invoke";
          v26 = 2048;
          v27 = v17;
          _os_log_impl(&dword_26951F000, v16, OS_LOG_TYPE_DEFAULT, "%s #statefeedback Starting timer for second delay tone for %f seconds", buf, 0x16u);
        }

        [*(WeakRetained + 5) start];
      }

      else
      {
        v18 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v25 = "[SRUIFStateFeedbackDefaultProvider _startDelayFeedbackWithResponseMode:withCompletion:]_block_invoke";
          _os_log_impl(&dword_26951F000, v18, OS_LOG_TYPE_DEFAULT, "%s #statefeedback Not playing second delay tone, delay feedback has been cancelled", buf, 0xCu);
        }
      }
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, a2, v5);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __88__SRUIFStateFeedbackDefaultProvider__startDelayFeedbackWithResponseMode_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3 && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __88__SRUIFStateFeedbackDefaultProvider__startDelayFeedbackWithResponseMode_withCompletion___block_invoke_2_cold_1();
  }
}

- (void)playAudioPlaybackRequest:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__SRUIFStateFeedbackDefaultProvider_playAudioPlaybackRequest_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__SRUIFStateFeedbackDefaultProvider__playAudioPlaybackRequest_completion___block_invoke_9_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 error];
  v6[0] = 136315394;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_26951F000, v3, OS_LOG_TYPE_ERROR, "%s #statefeedback Failed to acquire Audio Session for playback with error: %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startDelayFeedbackWithResponseMode:withCompletion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_26951F000, v0, OS_LOG_TYPE_DEBUG, "%s #statefeedback Stripping delay tone sound for response mode: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __88__SRUIFStateFeedbackDefaultProvider__startDelayFeedbackWithResponseMode_withCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __88__SRUIFStateFeedbackDefaultProvider__startDelayFeedbackWithResponseMode_withCompletion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end