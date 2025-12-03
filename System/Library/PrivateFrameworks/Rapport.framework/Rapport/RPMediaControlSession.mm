@interface RPMediaControlSession
- (RPMediaControlSession)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_handleMediaControlEvent:(id)event;
- (void)_invalidate;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)mediaCaptionSettingGetFromDestinationID:(id)d completion:(id)completion;
- (void)mediaGetVolumeFromDestinationID:(id)d completion:(id)completion;
- (void)mediaSetVolume:(double)volume destinationID:(id)d completion:(id)completion;
- (void)mediaSkipBySeconds:(double)seconds destinationID:(id)d completion:(id)completion;
@end

@implementation RPMediaControlSession

- (RPMediaControlSession)init
{
  v6.receiver = self;
  v6.super_class = RPMediaControlSession;
  v2 = [(RPMediaControlSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__RPMediaControlSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

- (void)_activateWithCompletion:(id)completion
{
  v11[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!self->_messenger)
  {
    v7 = RPErrorF();
    if (gLogCategory_RPMediaControlSession <= 90 && (gLogCategory_RPMediaControlSession != -1 || _LogCategory_Initialize()))
    {
      [RPMediaControlSession _activateWithCompletion:];
      if (!completionCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!completionCopy)
    {
LABEL_9:

      goto LABEL_15;
    }

    completionCopy[2](completionCopy, v7);
    goto LABEL_9;
  }

  if (self->_mediaControlFlagsChangedHandler)
  {
    v10[0] = @"interest";
    v10[1] = @"statusFlags";
    v11[0] = MEMORY[0x1E695E118];
    v11[1] = &unk_1F2EEC818;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    messenger = self->_messenger;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__RPMediaControlSession__activateWithCompletion___block_invoke;
    v9[3] = &unk_1E7C94AD0;
    v9[4] = self;
    [(RPMessageable *)messenger registerEventID:@"_iMC" options:v5 handler:v9];
    self->_registeredMediaControlInterest = 1;
  }

  if (gLogCategory_RPMediaControlSession <= 30 && (gLogCategory_RPMediaControlSession != -1 || _LogCategory_Initialize()))
  {
    [RPMediaControlSession _activateWithCompletion:];
    if (!completionCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (completionCopy)
  {
LABEL_14:
    completionCopy[2](completionCopy, 0);
  }

LABEL_15:

  v8 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__RPMediaControlSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (gLogCategory_RPMediaControlSession <= 30 && (gLogCategory_RPMediaControlSession != -1 || _LogCategory_Initialize()))
    {
      [(RPMediaControlSession *)self _invalidate];
    }

    if (self->_registeredMediaControlInterest)
    {
      [(RPMessageable *)self->_messenger deregisterEventID:@"_iMC"];
      self->_registeredMediaControlInterest = 0;
    }

    mediaControlFlagsChangedHandler = self->_mediaControlFlagsChangedHandler;
    self->_mediaControlFlagsChangedHandler = 0;

    messenger = self->_messenger;
    self->_messenger = 0;
  }
}

- (void)_handleMediaControlEvent:(id)event
{
  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_RPMediaControlSession <= 30 && (gLogCategory_RPMediaControlSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (Int64 != self->_mediaControlFlags)
  {
    self->_mediaControlFlags = Int64;
    v5 = _Block_copy(self->_mediaControlFlagsChangedHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5);
    }
  }
}

- (void)mediaCaptionSettingGetFromDestinationID:(id)d completion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v15 = @"_mcc";
  v16[0] = &unk_1F2EEC830;
  v8 = MEMORY[0x1E695DF20];
  dCopy = d;
  v10 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__RPMediaControlSession_mediaCaptionSettingGetFromDestinationID_completion___block_invoke;
  v13[3] = &unk_1E7C93780;
  v14 = completionCopy;
  v11 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_mcc" request:v10 destinationID:dCopy options:0 responseHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __76__RPMediaControlSession_mediaCaptionSettingGetFromDestinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetInt64Ranged();
  (*(*(a1 + 32) + 16))();
}

uint64_t __73__RPMediaControlSession_mediaCaptionSettingSet_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

uint64_t __63__RPMediaControlSession_mediaCommand_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)mediaSkipBySeconds:(double)seconds destinationID:(id)d completion:(id)completion
{
  v19[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v18[0] = @"_mcc";
  v18[1] = @"_skpS";
  v19[0] = &unk_1F2EEC860;
  v10 = MEMORY[0x1E696AD98];
  dCopy = d;
  v12 = [v10 numberWithDouble:seconds];
  v19[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__RPMediaControlSession_mediaSkipBySeconds_destinationID_completion___block_invoke;
  v16[3] = &unk_1E7C93780;
  v17 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_mcc" request:v13 destinationID:dCopy options:0 responseHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __69__RPMediaControlSession_mediaSkipBySeconds_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)mediaGetVolumeFromDestinationID:(id)d completion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v15 = @"_mcc";
  v16[0] = &unk_1F2EEC878;
  v8 = MEMORY[0x1E695DF20];
  dCopy = d;
  v10 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__RPMediaControlSession_mediaGetVolumeFromDestinationID_completion___block_invoke;
  v13[3] = &unk_1E7C93780;
  v14 = completionCopy;
  v11 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_mcc" request:v10 destinationID:dCopy options:0 responseHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __68__RPMediaControlSession_mediaGetVolumeFromDestinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetDouble();
  (*(*(a1 + 32) + 16))(v6);
}

- (void)mediaSetVolume:(double)volume destinationID:(id)d completion:(id)completion
{
  v20[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  messenger = self->_messenger;
  v19[0] = @"_mcc";
  v19[1] = @"_vol";
  v20[0] = &unk_1F2EEC890;
  v10 = MEMORY[0x1E696AD98];
  dCopy = d;
  v12 = [v10 numberWithDouble:volume];
  v20[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__RPMediaControlSession_mediaSetVolume_destinationID_completion___block_invoke;
  v16[3] = &unk_1E7C94AF8;
  volumeCopy = volume;
  v17 = completionCopy;
  v14 = completionCopy;
  [(RPMessageable *)messenger sendRequestID:@"_mcc" request:v13 destinationID:dCopy options:0 responseHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __65__RPMediaControlSession_mediaSetVolume_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetDouble();
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

@end