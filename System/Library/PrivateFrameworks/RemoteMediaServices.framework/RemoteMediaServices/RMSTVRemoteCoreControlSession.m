@interface RMSTVRemoteCoreControlSession
- (BOOL)deviceShouldAllowConnectionAuthentication:(id)a3;
- (RMSControlSessionDelegate)delegate;
- (void)addToWishlist:(unint64_t)a3 databaseID:(unint64_t)a4 completionHandler:(id)a5;
- (void)connectToService:(id)a3 pairingGUID:(id)a4 allowPairing:(BOOL)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)device:(id)a3 disconnectedForReason:(int64_t)a4 error:(id)a5;
- (void)device:(id)a3 encounteredAuthenticationChallenge:(id)a4;
- (void)deviceConnected:(id)a3;
- (void)pickAudioRoute:(id)a3 completionHandler:(id)a4;
- (void)seekToPlaybackTime:(int)a3 completionHandler:(id)a4;
- (void)sendNavigationCommand:(int64_t)a3;
- (void)sendPlaybackCommand:(int64_t)a3 completionHandler:(id)a4;
- (void)sendText:(id)a3 completionHandler:(id)a4;
- (void)sendTouchMoveWithDirection:(int64_t)a3 repeatCount:(unsigned int)a4;
- (void)setLikedState:(int64_t)a3 itemID:(unint64_t)a4 databaseID:(unint64_t)a5 completionHandler:(id)a6;
- (void)setVolume:(float)a3 completionHandler:(id)a4;
@end

@implementation RMSTVRemoteCoreControlSession

- (void)dealloc
{
  [(TVRCDevice *)self->_device disconnectWithType:0];
  v3.receiver = self;
  v3.super_class = RMSTVRemoteCoreControlSession;
  [(RMSTVRemoteCoreControlSession *)&v3 dealloc];
}

- (void)connectToService:(id)a3 pairingGUID:(id)a4 allowPairing:(BOOL)a5 completionHandler:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  objc_storeStrong(&self->_service, a3);
  self->_allowPairing = a5;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__RMSTVRemoteCoreControlSession_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke;
  v23[3] = &unk_279B09318;
  v12 = v11;
  v25 = a5;
  v23[4] = self;
  v24 = v12;
  v13 = MEMORY[0x266721590](v23);
  v14 = [v10 device];

  if (v14)
  {
    v15 = [v10 device];
    (v13)[2](v13, v15);
  }

  else
  {
    v16 = RMSLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v10 uniqueIdentifier];
      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&dword_261E98000, v16, OS_LOG_TYPE_DEFAULT, "Will discoverDeviceWithIdentifier: %@", buf, 0xCu);
    }

    v18 = +[RMSTVRemoteCoreDeviceController sharedController];
    v19 = [v10 uniqueIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __93__RMSTVRemoteCoreControlSession_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke_1;
    v20[3] = &unk_279B09340;
    v21 = v10;
    v22 = v13;
    [v18 discoverDeviceWithIdentifier:v19 timeout:v20 completionHandler:5.0];

    v15 = v21;
  }
}

void __93__RMSTVRemoteCoreControlSession_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    if (*(a1 + 48) != 1)
    {
      goto LABEL_9;
    }

    if ([v4 pairingCapability])
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = *(v6 + 16);
LABEL_14:
        v7();
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if ((*(a1 + 48) & 1) == 0)
    {
LABEL_9:
      if (([v5 isPaired] & 1) == 0)
      {
        v12 = *(a1 + 40);
        if (v12)
        {
          v7 = *(v12 + 16);
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }

    [*(*(a1 + 32) + 16) setDelegate:0];
    objc_storeStrong((*(a1 + 32) + 16), a2);
    [*(*(a1 + 32) + 16) setDelegate:?];
    v9 = MEMORY[0x266721590](*(a1 + 40));
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = v9;

    if ([v5 connectionState] == 2)
    {
      [*(a1 + 32) deviceConnected:v5];
    }

    else
    {
      v13 = RMSLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_261E98000, v13, OS_LOG_TYPE_DEFAULT, "device: %@ connect", &v14, 0xCu);
      }

      [v5 connect];
    }

    goto LABEL_18;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v7 = *(v8 + 16);
    goto LABEL_14;
  }

LABEL_18:
}

void __93__RMSTVRemoteCoreControlSession_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = RMSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) uniqueIdentifier];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "Did discoverDeviceWithIdentifier: %@ device: %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendPlaybackCommand:(int64_t)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)setVolume:(float)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, a3);
  }
}

- (void)pickAudioRoute:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)seekToPlaybackTime:(int)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)setLikedState:(int64_t)a3 itemID:(unint64_t)a4 databaseID:(unint64_t)a5 completionHandler:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6, 0);
  }
}

- (void)addToWishlist:(unint64_t)a3 databaseID:(unint64_t)a4 completionHandler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

- (void)sendTouchMoveWithDirection:(int64_t)a3 repeatCount:(unsigned int)a4
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_261F21930[a3];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(TVRCDevice *)self->_device supportedButtons];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (v6 == [v12 buttonType])
        {
          v13 = [MEMORY[0x277D6C4D0] buttonEventForButton:v12 eventType:0];

          if (v13)
          {
            v14 = a4 == -1;
            if (a4 + 1 >= 3)
            {
              v15 = 3;
            }

            else
            {
              v15 = a4 + 1;
            }

            if (!v14)
            {
              do
              {
                [(TVRCDevice *)self->_device sendButtonEvent:v13];
                --v15;
              }

              while (v15);
            }
          }

          goto LABEL_19;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_19:
}

- (void)sendNavigationCommand:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_261F21950[a3];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(TVRCDevice *)self->_device supportedButtons];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if (v4 == [v10 buttonType])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }

    v11 = [MEMORY[0x277D6C4D0] buttonEventForButton:v10 eventType:0];

    if (!v11)
    {
      return;
    }

    [(TVRCDevice *)self->_device sendButtonEvent:v11];
    v5 = v11;
  }

LABEL_15:
}

- (void)sendText:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (BOOL)deviceShouldAllowConnectionAuthentication:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "deviceShouldAllowConnectionAuthentication: %@", &v8, 0xCu);
  }

  allowPairing = self->_allowPairing;
  return allowPairing;
}

- (void)device:(id)a3 encounteredAuthenticationChallenge:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "device: %@ encounteredAuthenticationChallenge: %@", buf, 0x16u);
  }

  v9 = objc_alloc_init(RMSPairingCredentials);
  [(RMSPairingCredentials *)v9 setRequirementType:1];
  [(RMSPairingCredentials *)v9 setCharacterCount:4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__RMSTVRemoteCoreControlSession_device_encounteredAuthenticationChallenge___block_invoke;
  v12[3] = &unk_279B09368;
  v13 = v7;
  v11 = v7;
  [WeakRetained controlSession:self didReceivePairingChallengeRequestWithCredentials:v9 completionHandler:v12];
}

void __75__RMSTVRemoteCoreControlSession_device_encounteredAuthenticationChallenge___block_invoke(uint64_t a1, void *a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = RMSLogger();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "challenge: %@ cancel", &v10, 0xCu);
    }

    [*(a1 + 32) cancel];
  }

  else
  {
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "challenge: %@ userEnteredCodeLocally: %@", &v10, 0x16u);
    }

    [*(a1 + 32) userEnteredCodeLocally:v5];
  }
}

- (void)deviceConnected:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "deviceConnected: %@", &v8, 0xCu);
  }

  if (self->_connectionResponseBlock)
  {
    v6 = objc_alloc_init(RMSControlInterface);
    [(RMSControlInterface *)v6 setSupportsSpeakerSelection:0];
    [(RMSControlInterface *)v6 setSupportsVolumeControl:0];
    [(RMSControlInterface *)v6 setSupportsDirectionalControl:1];
    (*(self->_connectionResponseBlock + 2))();
    connectionResponseBlock = self->_connectionResponseBlock;
    self->_connectionResponseBlock = 0;
  }
}

- (void)device:(id)a3 disconnectedForReason:(int64_t)a4 error:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = RMSLogger();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412802;
      v18 = v8;
      v19 = 2048;
      v20 = a4;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&dword_261E98000, v11, OS_LOG_TYPE_ERROR, "device: %@ disconnectedForReason: %ld error: %@", &v17, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v8;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "device: %@ disconnectedForReason: %ld", &v17, 0x16u);
  }

  if (self->_connectionResponseBlock)
  {
    if (a4 == 4)
    {
      v13 = [v9 domain];
      v14 = [v13 isEqualToString:*MEMORY[0x277D6C598]];

      if (v14)
      {
        if ([v9 code] == 201)
        {
          v15 = [v9 userInfo];
          v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D6C5A0]];
          [v16 intValue];
        }
      }
    }

    (*(self->_connectionResponseBlock + 2))();
    connectionResponseBlock = self->_connectionResponseBlock;
    self->_connectionResponseBlock = 0;
  }

  else
  {
    connectionResponseBlock = objc_loadWeakRetained(&self->_delegate);
    [connectionResponseBlock controlSessionDidEnd:self];
  }
}

- (RMSControlSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end