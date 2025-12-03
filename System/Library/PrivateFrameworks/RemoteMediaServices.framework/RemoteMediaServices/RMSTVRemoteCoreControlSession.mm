@interface RMSTVRemoteCoreControlSession
- (BOOL)deviceShouldAllowConnectionAuthentication:(id)authentication;
- (RMSControlSessionDelegate)delegate;
- (void)addToWishlist:(unint64_t)wishlist databaseID:(unint64_t)d completionHandler:(id)handler;
- (void)connectToService:(id)service pairingGUID:(id)d allowPairing:(BOOL)pairing completionHandler:(id)handler;
- (void)dealloc;
- (void)device:(id)device disconnectedForReason:(int64_t)reason error:(id)error;
- (void)device:(id)device encounteredAuthenticationChallenge:(id)challenge;
- (void)deviceConnected:(id)connected;
- (void)pickAudioRoute:(id)route completionHandler:(id)handler;
- (void)seekToPlaybackTime:(int)time completionHandler:(id)handler;
- (void)sendNavigationCommand:(int64_t)command;
- (void)sendPlaybackCommand:(int64_t)command completionHandler:(id)handler;
- (void)sendText:(id)text completionHandler:(id)handler;
- (void)sendTouchMoveWithDirection:(int64_t)direction repeatCount:(unsigned int)count;
- (void)setLikedState:(int64_t)state itemID:(unint64_t)d databaseID:(unint64_t)iD completionHandler:(id)handler;
- (void)setVolume:(float)volume completionHandler:(id)handler;
@end

@implementation RMSTVRemoteCoreControlSession

- (void)dealloc
{
  [(TVRCDevice *)self->_device disconnectWithType:0];
  v3.receiver = self;
  v3.super_class = RMSTVRemoteCoreControlSession;
  [(RMSTVRemoteCoreControlSession *)&v3 dealloc];
}

- (void)connectToService:(id)service pairingGUID:(id)d allowPairing:(BOOL)pairing completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  handlerCopy = handler;
  objc_storeStrong(&self->_service, service);
  self->_allowPairing = pairing;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__RMSTVRemoteCoreControlSession_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke;
  v23[3] = &unk_279B09318;
  v12 = handlerCopy;
  pairingCopy = pairing;
  v23[4] = self;
  v24 = v12;
  v13 = MEMORY[0x266721590](v23);
  device = [serviceCopy device];

  if (device)
  {
    device2 = [serviceCopy device];
    (v13)[2](v13, device2);
  }

  else
  {
    v16 = RMSLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [serviceCopy uniqueIdentifier];
      *buf = 138412290;
      v27 = uniqueIdentifier;
      _os_log_impl(&dword_261E98000, v16, OS_LOG_TYPE_DEFAULT, "Will discoverDeviceWithIdentifier: %@", buf, 0xCu);
    }

    v18 = +[RMSTVRemoteCoreDeviceController sharedController];
    uniqueIdentifier2 = [serviceCopy uniqueIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __93__RMSTVRemoteCoreControlSession_connectToService_pairingGUID_allowPairing_completionHandler___block_invoke_1;
    v20[3] = &unk_279B09340;
    v21 = serviceCopy;
    v22 = v13;
    [v18 discoverDeviceWithIdentifier:uniqueIdentifier2 timeout:v20 completionHandler:5.0];

    device2 = v21;
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

- (void)sendPlaybackCommand:(int64_t)command completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)setVolume:(float)volume completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0, volume);
  }
}

- (void)pickAudioRoute:(id)route completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)seekToPlaybackTime:(int)time completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)setLikedState:(int64_t)state itemID:(unint64_t)d databaseID:(unint64_t)iD completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)addToWishlist:(unint64_t)wishlist databaseID:(unint64_t)d completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)sendTouchMoveWithDirection:(int64_t)direction repeatCount:(unsigned int)count
{
  v21 = *MEMORY[0x277D85DE8];
  if (direction > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_261F21930[direction];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  supportedButtons = [(TVRCDevice *)self->_device supportedButtons];
  v8 = [supportedButtons countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(supportedButtons);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (v6 == [v12 buttonType])
        {
          v13 = [MEMORY[0x277D6C4D0] buttonEventForButton:v12 eventType:0];

          if (v13)
          {
            v14 = count == -1;
            if (count + 1 >= 3)
            {
              v15 = 3;
            }

            else
            {
              v15 = count + 1;
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

      v9 = [supportedButtons countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)sendNavigationCommand:(int64_t)command
{
  v17 = *MEMORY[0x277D85DE8];
  if (command > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_261F21950[command];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  supportedButtons = [(TVRCDevice *)self->_device supportedButtons];
  v6 = [supportedButtons countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(supportedButtons);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      if (v4 == [v10 buttonType])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [supportedButtons countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    supportedButtons = v11;
  }

LABEL_15:
}

- (void)sendText:(id)text completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (BOOL)deviceShouldAllowConnectionAuthentication:(id)authentication
{
  v10 = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = authenticationCopy;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "deviceShouldAllowConnectionAuthentication: %@", &v8, 0xCu);
  }

  allowPairing = self->_allowPairing;
  return allowPairing;
}

- (void)device:(id)device encounteredAuthenticationChallenge:(id)challenge
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  challengeCopy = challenge;
  v8 = RMSLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = deviceCopy;
    v16 = 2112;
    v17 = challengeCopy;
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
  v13 = challengeCopy;
  v11 = challengeCopy;
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

- (void)deviceConnected:(id)connected
{
  v10 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = connectedCopy;
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

- (void)device:(id)device disconnectedForReason:(int64_t)reason error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  v10 = RMSLogger();
  v11 = v10;
  if (errorCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412802;
      v18 = deviceCopy;
      v19 = 2048;
      reasonCopy2 = reason;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_error_impl(&dword_261E98000, v11, OS_LOG_TYPE_ERROR, "device: %@ disconnectedForReason: %ld error: %@", &v17, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = deviceCopy;
    v19 = 2048;
    reasonCopy2 = reason;
    _os_log_impl(&dword_261E98000, v11, OS_LOG_TYPE_DEFAULT, "device: %@ disconnectedForReason: %ld", &v17, 0x16u);
  }

  if (self->_connectionResponseBlock)
  {
    if (reason == 4)
    {
      domain = [errorCopy domain];
      v14 = [domain isEqualToString:*MEMORY[0x277D6C598]];

      if (v14)
      {
        if ([errorCopy code] == 201)
        {
          userInfo = [errorCopy userInfo];
          v16 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D6C5A0]];
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