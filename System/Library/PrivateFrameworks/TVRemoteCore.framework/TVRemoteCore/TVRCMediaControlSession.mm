@interface TVRCMediaControlSession
- (TVRCMediaControlSession)init;
- (void)_activateWithCompletion:(id)a3;
- (void)_handleMediaControlEvent:(id)a3;
- (void)_invalidate;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)mediaCaptionSettingGetFromDestinationID:(id)a3 completion:(id)a4;
- (void)mediaGetVolumeFromDestinationID:(id)a3 completion:(id)a4;
- (void)mediaSetVolume:(double)a3 destinationID:(id)a4 completion:(id)a5;
- (void)mediaSkipBySeconds:(double)a3 destinationID:(id)a4 completion:(id)a5;
@end

@implementation TVRCMediaControlSession

- (TVRCMediaControlSession)init
{
  v6.receiver = self;
  v6.super_class = TVRCMediaControlSession;
  v2 = [(TVRCMediaControlSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)a3
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
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__TVRCMediaControlSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_279D82568;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (void)_activateWithCompletion:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_messenger)
  {
    if (self->_mediaControlFlagsChangedHandler)
    {
      v6 = *MEMORY[0x277D442E8];
      v18[0] = *MEMORY[0x277D44280];
      v18[1] = v6;
      v19[0] = MEMORY[0x277CBEC38];
      v19[1] = &unk_287E66B38;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
      messenger = self->_messenger;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__TVRCMediaControlSession__activateWithCompletion___block_invoke;
      v17[3] = &unk_279D82590;
      v17[4] = self;
      [(RPMessageable *)messenger registerEventID:@"MediaControlStatus" options:v7 handler:v17];
      v9 = self->_messenger;
      v10 = *MEMORY[0x277D44228];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __51__TVRCMediaControlSession__activateWithCompletion___block_invoke_2;
      v15[3] = &unk_279D825B8;
      v15[4] = self;
      v16 = v5;
      [(RPMessageable *)v9 sendRequestID:@"FetchMediaControlStatus" request:MEMORY[0x277CBEC10] destinationID:v10 options:0 responseHandler:v15];
      self->_registeredMediaControlInterest = 1;
    }

    else if (v4)
    {
      (*(v4 + 2))(v4, 0);
    }

    v11 = _TVRCMediaEventsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Activated", v14, 2u);
    }
  }

  else
  {
    v11 = RPErrorF();
    v12 = _TVRCMediaEventsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(TVRCMediaControlSession *)v11 _activateWithCompletion:v12];
    }

    if (v5)
    {
      (v5)[2](v5, v11);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__TVRCMediaControlSession__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _TVRCMediaEventsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Received request response for FetchMediaControlStatus, response %{public}@, error %{public}@", &v11, 0x16u);
  }

  if (v7)
  {
    v9 = _TVRCMediaEventsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __51__TVRCMediaControlSession__activateWithCompletion___block_invoke_2_cold_1(v7, v9);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _handleMediaControlEvent:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TVRCMediaControlSession_invalidate__block_invoke;
  block[3] = &unk_279D825E0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    v3 = _TVRCMediaEventsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_registeredMediaControlInterest)
      {
        v4 = "yes";
      }

      else
      {
        v4 = "no";
      }

      v8 = 136315138;
      v9 = v4;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate: Interest %s\n", &v8, 0xCu);
    }

    if (self->_registeredMediaControlInterest)
    {
      [(RPMessageable *)self->_messenger deregisterEventID:@"MediaControlStatus"];
      self->_registeredMediaControlInterest = 0;
    }

    mediaControlFlagsChangedHandler = self->_mediaControlFlagsChangedHandler;
    self->_mediaControlFlagsChangedHandler = 0;

    messenger = self->_messenger;
    self->_messenger = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleMediaControlEvent:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  Int64 = CFDictionaryGetInt64();
  v5 = _TVRCMediaEventsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v10 = Int64;
    v11 = 1024;
    v12 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "MediaControl event: %llu, %d", buf, 0x12u);
  }

  if (Int64 != self->_mediaControlFlags)
  {
    self->_mediaControlFlags = Int64;
    v6 = MEMORY[0x26D6B0B70](self->_mediaControlFlagsChangedHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)mediaCaptionSettingGetFromDestinationID:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  messenger = self->_messenger;
  v15 = @"MediaControlCommand";
  v16[0] = &unk_287E66B50;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a3;
  v10 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__TVRCMediaControlSession_mediaCaptionSettingGetFromDestinationID_completion___block_invoke;
  v13[3] = &unk_279D82F80;
  v14 = v6;
  v11 = v6;
  [(RPMessageable *)messenger sendRequestID:@"MediaControlCommand" request:v10 destinationID:v9 options:0 responseHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __78__TVRCMediaControlSession_mediaCaptionSettingGetFromDestinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetInt64Ranged();
  (*(*(a1 + 32) + 16))();
}

uint64_t __75__TVRCMediaControlSession_mediaCaptionSettingSet_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

uint64_t __65__TVRCMediaControlSession_mediaCommand_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)mediaSkipBySeconds:(double)a3 destinationID:(id)a4 completion:(id)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  messenger = self->_messenger;
  v18[0] = @"MediaControlCommand";
  v18[1] = @"MessageKeySkipSeconds";
  v19[0] = &unk_287E66B80;
  v10 = MEMORY[0x277CCABB0];
  v11 = a4;
  v12 = [v10 numberWithDouble:a3];
  v19[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__TVRCMediaControlSession_mediaSkipBySeconds_destinationID_completion___block_invoke;
  v16[3] = &unk_279D82F80;
  v17 = v8;
  v14 = v8;
  [(RPMessageable *)messenger sendRequestID:@"MediaControlCommand" request:v13 destinationID:v11 options:0 responseHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __71__TVRCMediaControlSession_mediaSkipBySeconds_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)mediaGetVolumeFromDestinationID:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  messenger = self->_messenger;
  v15 = @"MediaControlCommand";
  v16[0] = &unk_287E66B98;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a3;
  v10 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__TVRCMediaControlSession_mediaGetVolumeFromDestinationID_completion___block_invoke;
  v13[3] = &unk_279D82F80;
  v14 = v6;
  v11 = v6;
  [(RPMessageable *)messenger sendRequestID:@"MediaControlCommand" request:v10 destinationID:v9 options:0 responseHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __70__TVRCMediaControlSession_mediaGetVolumeFromDestinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetDouble();
  (*(*(a1 + 32) + 16))(v6);
}

- (void)mediaSetVolume:(double)a3 destinationID:(id)a4 completion:(id)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  messenger = self->_messenger;
  v19[0] = @"MediaControlCommand";
  v19[1] = @"MessageKeyVolume";
  v20[0] = &unk_287E66BB0;
  v10 = MEMORY[0x277CCABB0];
  v11 = a4;
  v12 = [v10 numberWithDouble:a3];
  v20[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__TVRCMediaControlSession_mediaSetVolume_destinationID_completion___block_invoke;
  v16[3] = &unk_279D82FA8;
  v18 = a3;
  v17 = v8;
  v14 = v8;
  [(RPMessageable *)messenger sendRequestID:@"MediaControlCommand" request:v13 destinationID:v11 options:0 responseHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __67__TVRCMediaControlSession_mediaSetVolume_destinationID_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  CFDictionaryGetDouble();
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

- (void)_activateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "### Activate failed: %{public}@\n", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __51__TVRCMediaControlSession__activateWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "FetchMediaControlStatus failed: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end