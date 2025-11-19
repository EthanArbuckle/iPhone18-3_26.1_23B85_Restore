@interface RPSiriSession
- (BOOL)voiceControllerSetupAndReturnError:(id *)a3;
- (NSString)description;
- (RPSiriSession)init;
- (void)_activate2;
- (void)_activateCompletedWithError:(id)a3;
- (void)_activateWithCompletion:(id)a3;
- (void)_invalidateWithCompletion:(id)a3;
- (void)_invalidated;
- (void)_recordingLimitTimerFired;
- (void)_recordingLimitTimerStart:(unsigned int)a3;
- (void)_sendSiriStop;
- (void)_startActivationWithDestinationID:(id)a3 messenger:(id)a4 completion:(id)a5;
- (void)_stopRecording;
- (void)_teardownVoiceController;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateWithCompletion:(id)a3;
- (void)prewarmWithCompletion:(id)a3;
- (void)receivedButtonUpWithCompletion:(id)a3;
- (void)setMessenger:(id)a3;
- (void)voiceControllerAudioCallback:(id)a3 forStream:(unint64_t)a4 buffer:(id)a5;
- (void)voiceControllerDidDetectEndpoint:(id)a3 ofType:(int)a4 atTime:(double)a5;
- (void)voiceControllerDidDetectStartpoint:(id)a3;
- (void)voiceControllerDidStartRecording:(id)a3 forStream:(unint64_t)a4 successfully:(BOOL)a5 error:(id)a6;
- (void)voiceControllerDidStopRecording:(id)a3 forStream:(unint64_t)a4 forReason:(int64_t)a5;
- (void)voiceControllerEncoderErrorDidOccur:(id)a3 error:(id)a4;
- (void)voiceControllerMediaServicesWereReset:(id)a3;
- (void)voiceControllerTearDown;
@end

@implementation RPSiriSession

- (RPSiriSession)init
{
  v6.receiver = self;
  v6.super_class = RPSiriSession;
  v2 = [(RPSiriSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_isSourcePTTEligible = _os_feature_enabled_impl();
    v4 = v3;
  }

  return v3;
}

- (void)setMessenger:(id)a3
{
  v5 = a3;
  if (self->_messenger != v5)
  {
    objc_storeStrong(&self->_messenger, a3);
    if (_os_feature_enabled_impl())
    {
      if ([(RPSiriSession *)self isDestinationPTTEligible])
      {
        messenger = self->_messenger;
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __30__RPSiriSession_setMessenger___block_invoke;
        v7[3] = &unk_1E7C94EE8;
        v7[4] = self;
        [(RPMessageable *)messenger registerRequestID:@"_siriEndpoint" options:0 handler:v7];
      }
    }
  }
}

void __30__RPSiriSession_setMessenger___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __30__RPSiriSession_setMessenger___block_invoke_cold_1();
  }

  [*(a1 + 32) _stopRecording];
  (*(v8 + 2))(v8, MEMORY[0x1E695E0F8], 0, 0);
}

- (void)_stopRecording
{
  startRecordingState = self->_startRecordingState;
  if (startRecordingState == 6 || startRecordingState == 1)
  {
    v5 = [(RPSiriSession *)self delegate];
    [v5 rpSiriSessionDidReceiveStopRecording];
  }
}

- (NSString)description
{
  NSAppendPrintF();

  return 0;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession activateWithCompletion:];
  }

  v5 = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = v5;
  if (!v5)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__RPSiriSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (void)prewarmWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = v5;
  if (!v5)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__RPSiriSession_prewarmWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __39__RPSiriSession_prewarmWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 voiceControllerSetupAndReturnError:&v6];
  v4 = v6;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  if (v3)
  {
    if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      __39__RPSiriSession_prewarmWithCompletion___block_invoke_cold_2();
    }
  }

  else if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __39__RPSiriSession_prewarmWithCompletion___block_invoke_cold_1();
  }
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self->_destinationID;
  if (!v5)
  {
    v6 = RPErrorF();
    if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _activateWithCompletion:];
      if (!v4)
      {
        goto LABEL_35;
      }
    }

    else if (!v4)
    {
      goto LABEL_35;
    }

    v4[2](v4, v6);
    goto LABEL_35;
  }

  v6 = self->_messenger;
  if (!v6)
  {
    v11 = RPErrorF();
    if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _activateWithCompletion:];
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else if (!v4)
    {
LABEL_25:

      goto LABEL_35;
    }

    v4[2](v4, v11);
    goto LABEL_25;
  }

  if (self->_activateState)
  {
    if (gLogCategory_RPSiriSession <= 40 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _activateWithCompletion:];
    }

    activateState = self->_activateState;
    v7 = RPErrorF();
    if (_os_feature_enabled_impl() && [(RPSiriSession *)self isDestinationPTTEligible]&& ((startRecordingState = self->_startRecordingState, startRecordingState == 6) || startRecordingState == 1))
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSourcePTTEligible];
      [v9 setObject:v10 forKeyedSubscript:@"_pttEligible"];

      if (gLogCategory_RPSiriSession <= 40 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
      {
        [RPSiriSession _activateWithCompletion:];
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __41__RPSiriSession__activateWithCompletion___block_invoke;
      v15[3] = &unk_1E7C93780;
      v16 = v4;
      [(RPMessageable *)v6 sendRequestID:@"_siriStartWhileRecording" request:MEMORY[0x1E695E0F8] destinationID:v5 options:v9 responseHandler:v15];
    }

    else if (v4)
    {
      v4[2](v4, v7);
    }
  }

  else if (self->_voiceController)
  {
    [(RPSiriSession *)self _startActivationWithDestinationID:v5 messenger:v6 completion:v4];
  }

  else
  {
    if (gLogCategory_RPSiriSession <= 40 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _activateWithCompletion:];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__RPSiriSession__activateWithCompletion___block_invoke_2;
    v13[3] = &unk_1E7C94F10;
    v13[4] = self;
    v13[5] = v5;
    v13[6] = v6;
    v14 = v4;
    [(RPSiriSession *)self prewarmWithCompletion:v13];
  }

LABEL_35:
}

void __41__RPSiriSession__activateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __41__RPSiriSession__activateWithCompletion___block_invoke_cold_1();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }
}

void __41__RPSiriSession__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!v3)
  {
    [*(a1 + 32) _startActivationWithDestinationID:*(a1 + 40) messenger:*(a1 + 48) completion:*(a1 + 56)];
    goto LABEL_8;
  }

  v4 = v3;
  if (gLogCategory_RPSiriSession <= 90)
  {
    if (gLogCategory_RPSiriSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      __41__RPSiriSession__activateWithCompletion___block_invoke_2_cold_1();
      v4 = v7;
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
LABEL_8:
    v4 = v7;
  }
}

- (void)_startActivationWithDestinationID:(id)a3 messenger:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  self->_activateState = 1;
  v10 = _Block_copy(a5);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v10;

  objc_storeStrong(&self->_selfRef, self);
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession _startActivationWithDestinationID:messenger:completion:];
  }

  [(RPSiriSession *)self _activate2];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSourcePTTEligible];
  [v12 setObject:v13 forKeyedSubscript:@"_pttEligible"];

  if (_os_feature_enabled_impl())
  {
    if ([(RPSiriSession *)self isDestinationPTTEligible])
    {
      sourceID = self->_sourceID;
      if (sourceID)
      {
        [v12 setObject:sourceID forKeyedSubscript:@"senderIDS"];
      }
    }
  }

  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession _startActivationWithDestinationID:messenger:completion:];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__RPSiriSession__startActivationWithDestinationID_messenger_completion___block_invoke;
  v15[3] = &unk_1E7C93B48;
  v15[4] = self;
  [v9 sendRequestID:@"_siriStart" request:MEMORY[0x1E695E0F8] destinationID:v8 options:v12 responseHandler:v15];
}

void __72__RPSiriSession__startActivationWithDestinationID_messenger_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __72__RPSiriSession__startActivationWithDestinationID_messenger_completion___block_invoke_cold_1();
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 32);
  if (v9[4] == 1)
  {
    [v9 _activateCompletedWithError:v8];
  }

LABEL_7:
}

- (void)_activate2
{
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [(RPSiriSession *)self _activate2];
  }

  self->_startRecordingState = 1;
  v3 = [objc_alloc(getAVVCStartRecordSettingsClass[0]()) initWithStreamID:self->_streamId atStartHostTime:0];
  voiceController = self->_voiceController;
  v8 = 0;
  v5 = [(AVVoiceController *)voiceController startRecordForStream:v3 error:&v8];
  v6 = v8;
  [(RPSiriSession *)self _recordingLimitTimerStart:60];
  if ((v5 & 1) == 0)
  {
    self->_startRecordingState = 3;
    v7 = RPNestedErrorF();
    [(RPSiriSession *)self _activateCompletedWithError:v7];
  }
}

- (void)_activateCompletedWithError:(id)a3
{
  v7 = a3;
  if (v7)
  {
    if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _activateCompletedWithError:];
    }

    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  self->_activateState = v4;
  v5 = _Block_copy(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v5)
  {
    v5[2](v5, v7);
  }

  if (self->_invalidateCalled)
  {
    [(RPSiriSession *)self _invalidated];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__RPSiriSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__RPSiriSession_invalidateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)receivedButtonUpWithCompletion:(id)a3
{
  if (_os_feature_enabled_impl() && [(RPSiriSession *)self isDestinationPTTEligible])
  {
    if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession receivedButtonUpWithCompletion:];
    }

    [(RPSiriSession *)self _sendSiriStop];
  }
}

- (void)_sendSiriStop
{
  activateState = self->_activateState;
  if (activateState == 4 || activateState == 1)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSourcePTTEligible];
    [v6 setObject:v5 forKeyedSubscript:@"_pttEligible"];

    if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _sendSiriStop];
    }

    [(RPMessageable *)self->_messenger sendRequestID:@"_siriStop" request:MEMORY[0x1E695E0F8] destinationID:self->_destinationID options:v6 responseHandler:&__block_literal_global_16];
  }

  else
  {
    if (gLogCategory_RPSiriSession <= 40 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _sendSiriStop];
    }

    [(RPSiriSession *)self invalidateWithCompletion:0];
  }
}

void __30__RPSiriSession__sendSiriStop__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v6 = a3;
  v7 = a4;
  if (v7 && gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __30__RPSiriSession__sendSiriStop__block_invoke_cold_1();
  }
}

- (void)_invalidateWithCompletion:(id)a3
{
  v4 = a3;
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _invalidateWithCompletion:];
    }

    activateState = self->_activateState;
    self->_activateState = 7;
    [(RPSiriSession *)self voiceControllerTearDown];
    if (!_os_feature_enabled_impl() || ![(RPSiriSession *)self isDestinationPTTEligible])
    {
      if (activateState == 4 || activateState == 1)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSourcePTTEligible];
        [v6 setObject:v7 forKeyedSubscript:@"_pttEligible"];

        if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
        {
          [RPSiriSession _invalidateWithCompletion:];
        }

        messenger = self->_messenger;
        destinationID = self->_destinationID;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __43__RPSiriSession__invalidateWithCompletion___block_invoke;
        v16[3] = &unk_1E7C94DB8;
        v16[4] = self;
        v17 = v4;
        [(RPMessageable *)messenger sendRequestID:@"_siriStop" request:MEMORY[0x1E695E0F8] destinationID:destinationID options:v6 responseHandler:v16];
        v10 = self->_messenger;
        self->_messenger = 0;
      }

      else
      {
        v11 = self->_messenger;
        self->_messenger = 0;

        [(RPSiriSession *)self _invalidated];
      }
    }

    v12 = self->_messenger;
    self->_messenger = 0;

    [(RPSiriSession *)self _invalidated];
    if (_os_feature_enabled_impl() && [(RPSiriSession *)self isDestinationPTTEligible])
    {
      [(RPMessageable *)self->_messenger deregisterRequestID:@"_siriEndpoint"];
    }

    recordingLimitTimer = self->_recordingLimitTimer;
    if (recordingLimitTimer)
    {
      v14 = recordingLimitTimer;
      dispatch_source_cancel(v14);
      v15 = self->_recordingLimitTimer;
      self->_recordingLimitTimer = 0;
    }
  }
}

void __43__RPSiriSession__invalidateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      __43__RPSiriSession__invalidateWithCompletion___block_invoke_cold_1();
    }
  }

  else if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __43__RPSiriSession__invalidateWithCompletion___block_invoke_cold_2();
  }

  [*(a1 + 32) _invalidated];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }
}

- (void)_teardownVoiceController
{
  voiceController = self->_voiceController;
  if (voiceController)
  {
    v7 = 0;
    [(AVVoiceController *)voiceController teardownWithError:&v7];
    v4 = v7;
    if (v4 && gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession _teardownVoiceController];
    }

    v5 = objc_autoreleasePoolPush();
    v6 = self->_voiceController;
    self->_voiceController = 0;

    objc_autoreleasePoolPop(v5);
  }
}

- (void)dealloc
{
  [(RPSiriSession *)self _teardownVoiceController];
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession dealloc];
  }

  v3.receiver = self;
  v3.super_class = RPSiriSession;
  [(RPSiriSession *)&v3 dealloc];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_messenger)
  {
    startRecordingState = self->_startRecordingState;
    if (startRecordingState != 1 && startRecordingState != 6 && self->_stopRecordingState != 1)
    {
      [(AVVoiceController *)self->_voiceController deactivateAudioSessionForStream:self->_streamId withOptions:1 error:0];
      if (self->_voiceController)
      {
        [(RPSiriSession *)self _teardownVoiceController];
        if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
        {
          [RPSiriSession _invalidated];
        }
      }

      voiceController = self->_voiceController;
      self->_voiceController = 0;

      delegate = self->_delegate;
      self->_delegate = 0;

      self->_streamId = 0;
      self->_invalidateDone = 1;
      if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
      {
        [RPSiriSession _invalidated];
      }

      selfRef = self->_selfRef;
      self->_selfRef = 0;
    }
  }
}

- (BOOL)voiceControllerSetupAndReturnError:(id *)a3
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0x40CF400000000000;
  LODWORD(v29) = 1869641075;
  HIDWORD(v29) = 320;
  DWORD1(v30) = 1;
  v5 = [objc_alloc(getAVAudioFormatClass()) initWithStreamDescription:&v28];
  audioFormat = self->_audioFormat;
  self->_audioFormat = v5;

  if (self->_audioFormat)
  {
    if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession voiceControllerSetupAndReturnError:];
    }

    voiceController = self->_voiceController;
    if (voiceController)
    {
      v8 = 0;
    }

    else
    {
      v27 = 0;
      v10 = [objc_alloc(getAVVoiceControllerClass[0]()) initVoiceControllerForClient:4 withError:&v27];
      v8 = v27;
      v11 = self->_voiceController;
      self->_voiceController = v10;

      voiceController = self->_voiceController;
      if (!voiceController)
      {
        if (a3)
        {
          RPNestedErrorF();
          *a3 = v9 = 0;
        }

        else
        {
          v9 = 0;
        }

LABEL_33:

        return v9;
      }
    }

    [(AVVoiceController *)voiceController setRecordDelegate:self];
    v12 = [objc_alloc(getAVVCContextSettingsClass[0]()) initWithMode:1969840752 deviceUID:0];
    v25 = v8;
    v26 = 0;
    v13 = [(AVVoiceController *)self->_voiceController setContext:v12 streamType:&v26 error:&v25];
    v14 = v25;

    if (v13)
    {
      self->_streamId = v13;
      if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
      {
        [RPSiriSession voiceControllerSetupAndReturnError:];
      }

      v15 = [(AVAudioFormat *)self->_audioFormat settings];
      if (v15)
      {
        v16 = self->_voiceController;
        streamId = self->_streamId;
        v24 = v14;
        [(AVVoiceController *)v16 activateAudioSessionForStream:streamId isPrewarm:1 recordMode:1 error:&v24];
        v18 = v24;

        if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
        {
          [RPSiriSession voiceControllerSetupAndReturnError:];
        }

        v19 = [objc_alloc(getAVVCPrepareRecordSettingsClass[0]()) initWithStreamID:self->_streamId settings:v15 bufferDuration:0.1];
        [v19 setMeteringEnabled:1];
        v20 = self->_voiceController;
        v23 = v18;
        v21 = [(AVVoiceController *)v20 prepareRecordForStream:v19 error:&v23];
        v14 = v23;

        v9 = (v14 == 0) & v21;
        if (a3 && !v9)
        {
          *a3 = RPNestedErrorF();
        }
      }

      else if (a3)
      {
        RPErrorF();
        *a3 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }

    else if (a3)
    {
      RPNestedErrorF();
      *a3 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    v8 = v14;
    goto LABEL_33;
  }

  if (!a3)
  {
    return 0;
  }

  RPErrorF();
  *a3 = v9 = 0;
  return v9;
}

- (void)voiceControllerTearDown
{
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession voiceControllerTearDown];
  }

  *&self->_startRecordingState = 0x100000007;
  voiceController = self->_voiceController;
  if (voiceController)
  {
    streamId = self->_streamId;
    v7 = 0;
    v5 = [(AVVoiceController *)voiceController stopRecordForStream:streamId error:&v7];
    v6 = v7;
    if ((v5 & 1) == 0 && gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession voiceControllerTearDown];
    }
  }

  else
  {
    if (gLogCategory_RPSiriSession <= 40 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      [RPSiriSession voiceControllerTearDown];
    }

    v6 = 0;
  }
}

- (void)voiceControllerDidStartRecording:(id)a3 forStream:(unint64_t)a4 successfully:(BOOL)a5 error:(id)a6
{
  v9 = a6;
  dispatchQueue = self->_dispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__RPSiriSession_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke;
  v12[3] = &unk_1E7C94F38;
  v15 = a5;
  v12[4] = self;
  v13 = v9;
  v14 = a4;
  v11 = v9;
  dispatch_async(dispatchQueue, v12);
}

void __79__RPSiriSession_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 40))
    {
      v2 = 3;
    }

    else
    {
      v2 = 6;
    }

    *(*(a1 + 32) + 56) = v2;
    if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      __79__RPSiriSession_voiceControllerDidStartRecording_forStream_successfully_error___block_invoke_cold_1(a1);
    }

    v3 = *(a1 + 32);
    if (v3[40] == 1)
    {
      [v3 voiceControllerTearDown];
      v3 = *(a1 + 32);
    }

    [v3 _activateCompletedWithError:0];
  }

  else
  {
    *(*(a1 + 32) + 56) = 3;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = RPNestedErrorF();
    [v5 _activateCompletedWithError:v6];
  }
}

- (void)voiceControllerDidStopRecording:(id)a3 forStream:(unint64_t)a4 forReason:(int64_t)a5
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__RPSiriSession_voiceControllerDidStopRecording_forStream_forReason___block_invoke;
  block[3] = &unk_1E7C94590;
  block[4] = self;
  block[5] = a4;
  block[6] = a5;
  dispatch_async(dispatchQueue, block);
}

_BYTE *__69__RPSiriSession_voiceControllerDidStopRecording_forStream_forReason___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 60) = 5;
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    __69__RPSiriSession_voiceControllerDidStopRecording_forStream_forReason___block_invoke_cold_1(a1);
  }

  result = *(a1 + 32);
  if (result[40] == 1)
  {

    return [result _invalidated];
  }

  return result;
}

- (void)voiceControllerAudioCallback:(id)a3 forStream:(unint64_t)a4 buffer:(id)a5
{
  v7 = a5;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__RPSiriSession_voiceControllerAudioCallback_forStream_buffer___block_invoke;
  block[3] = &unk_1E7C94F60;
  v11 = v7;
  v12 = a4;
  block[4] = self;
  v9 = v7;
  dispatch_async(dispatchQueue, block);
}

void __63__RPSiriSession_voiceControllerAudioCallback_forStream_buffer___block_invoke(uint64_t a1)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 56) == 6)
  {
    [*(v1 + 64) updateMeterForStream:*(a1 + 48)];
    [*(*(a1 + 32) + 64) getAveragePowerForStream:*(a1 + 48) forChannel:0];
    v4 = __exp10f(v3 / 20.0);
    if (gLogCategory_RPSiriSession <= 10 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
    {
      __63__RPSiriSession_voiceControllerAudioCallback_forStream_buffer___block_invoke_cold_1(a1);
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [*(a1 + 40) packetDescriptions];
    v7 = [*(a1 + 40) packetDescriptionCount];
    if (v7)
    {
      v8 = 16 * v7;
      do
      {
        v20[0] = &unk_1F2EEC8A8;
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v6 + 12)];
        v20[1] = &unk_1F2EEC8C0;
        v21[0] = v9;
        v10 = *v6;
        v6 += 16;
        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
        v21[1] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
        [v5 addObject:v12];

        v8 -= 16;
      }

      while (v8);
    }

    v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:objc_msgSend(*(a1 + 40) length:{"data"), objc_msgSend(*(a1 + 40), "bytesDataSize")}];
    v19[0] = v13;
    v18[0] = &unk_1F2EEC8D8;
    v18[1] = &unk_1F2EEC8F0;
    *&v14 = v4;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    v18[2] = &unk_1F2EEC908;
    v19[1] = v15;
    v19[2] = v5;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

    [*(*(a1 + 32) + 112) sendEventID:@"_siA" event:v16 destinationID:*(*(a1 + 32) + 96) options:0 completion:0];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)voiceControllerDidDetectStartpoint:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (gLogCategory_RPSiriSession <= 30)
  {
    v6 = v3;
    if (gLogCategory_RPSiriSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [RPSiriSession voiceControllerDidDetectStartpoint:];
      v4 = v6;
    }
  }
}

- (void)voiceControllerDidDetectEndpoint:(id)a3 ofType:(int)a4 atTime:(double)a5
{
  v5 = a3;
  v6 = v5;
  if (gLogCategory_RPSiriSession <= 30)
  {
    v8 = v5;
    if (gLogCategory_RPSiriSession != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
    {
      LogPrintF();
      v6 = v8;
    }
  }
}

- (void)voiceControllerEncoderErrorDidOccur:(id)a3 error:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (gLogCategory_RPSiriSession <= 90 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession voiceControllerEncoderErrorDidOccur:error:];
  }
}

- (void)voiceControllerMediaServicesWereReset:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (gLogCategory_RPSiriSession <= 60)
  {
    v6 = v3;
    if (gLogCategory_RPSiriSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [RPSiriSession voiceControllerMediaServicesWereReset:];
      v4 = v6;
    }
  }
}

- (void)_recordingLimitTimerStart:(unsigned int)a3
{
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession _recordingLimitTimerStart:];
  }

  recordingLimitTimer = self->_recordingLimitTimer;
  if (recordingLimitTimer)
  {
    v5 = recordingLimitTimer;
    dispatch_source_cancel(v5);
    v6 = self->_recordingLimitTimer;
    self->_recordingLimitTimer = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v8 = self->_recordingLimitTimer;
  self->_recordingLimitTimer = v7;
  v9 = v7;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__RPSiriSession__recordingLimitTimerStart___block_invoke;
  v10[3] = &unk_1E7C92D80;
  v10[4] = v9;
  v10[5] = self;
  dispatch_source_set_event_handler(v9, v10);
  CUDispatchTimerSet();
  dispatch_activate(v9);
}

void *__43__RPSiriSession__recordingLimitTimerStart___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[10])
  {
    return [result _recordingLimitTimerFired];
  }

  return result;
}

- (void)_recordingLimitTimerFired
{
  if (gLogCategory_RPSiriSession <= 30 && (gLogCategory_RPSiriSession != -1 || _LogCategory_Initialize()))
  {
    [RPSiriSession _recordingLimitTimerFired];
  }

  if (_os_feature_enabled_impl() && [(RPSiriSession *)self isDestinationPTTEligible])
  {

    [(RPSiriSession *)self _stopRecording];
  }
}

uint64_t __69__RPSiriSession_voiceControllerDidStopRecording_forStream_forReason___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  return LogPrintF();
}

uint64_t __63__RPSiriSession_voiceControllerAudioCallback_forStream_buffer___block_invoke_cold_1(uint64_t a1)
{
  [*(a1 + 40) timeStamp];
  [*(a1 + 40) bytesDataSize];
  [*(a1 + 40) packetDescriptionCount];
  [*(a1 + 40) channels];
  return LogPrintF();
}

@end