@interface TVRUICoreDevice
- (BOOL)_isVolumeButton:(id)a3;
- (BOOL)_isVolumeControlButton:(id)a3;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDevice:(id)a3;
- (BOOL)isPaired;
- (BOOL)supportsModernConnections;
- (NSString)description;
- (TVRUIDeviceDelegate)delegate;
- (id)_initWithCoreDevice:(id)a3;
- (id)_initWithDeviceIdentifier:(id)a3;
- (id)currentText;
- (id)debugName;
- (id)deviceContextInformation;
- (id)keyboardAttributes;
- (int64_t)_tvrcTouchPhaseFromUITouchPhase:(int64_t)a3;
- (unint64_t)hash;
- (void)_disconnectWithType:(unint64_t)a3;
- (void)_processButtonsForFeatureAdditions:(id)a3;
- (void)_processButtonsForFeatureRemovals:(id)a3;
- (void)addItemWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)cancelAuthenitcationChallenge;
- (void)connectWithConnectionContext:(int64_t)a3;
- (void)device:(id)a3 disconnectedForReason:(int64_t)a4 error:(id)a5;
- (void)device:(id)a3 encounteredAuthenticationChallenge:(id)a4;
- (void)device:(id)a3 removedSupportedButtons:(id)a4 added:(id)a5;
- (void)device:(id)a3 supportsFindMyRemote:(BOOL)a4;
- (void)device:(id)a3 updatedAttentionState:(int64_t)a4;
- (void)device:(id)a3 updatedNowPlayingInfo:(id)a4;
- (void)device:(id)a3 updatedSiriRemoteFindingSessionState:(int64_t)a4;
- (void)deviceBeganConnecting:(id)a3;
- (void)deviceConnected:(id)a3;
- (void)deviceNameChanged:(id)a3;
- (void)disconnectWithTimeOut;
- (void)enableFindingSession:(BOOL)a3;
- (void)enableTVRemoteOnLockscreen:(BOOL)a3;
- (void)fetchLaunchableAppsWithCompletion:(id)a3;
- (void)fetchUpNextInfoWithPaginationToken:(id)a3 completion:(id)a4;
- (void)keyboardController:(id)a3 beganTextEditingWithAttributes:(id)a4;
- (void)keyboardController:(id)a3 didUpdateAttributes:(id)a4;
- (void)keyboardController:(id)a3 didUpdateText:(id)a4;
- (void)keyboardControllerEndedTextEditing:(id)a3;
- (void)launchAppWithBundleID:(id)a3 completion:(id)a4;
- (void)markAsWatchedWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)playItem:(id)a3 completion:(id)a4;
- (void)removeItemWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)sendAuthenticationCode:(id)a3;
- (void)sendButtonEvent:(id)a3;
- (void)sendReturnKey;
- (void)sendText:(id)a3;
- (void)sendTextInputPayload:(id)a3;
- (void)sendTouchEvent:(id)a3;
@end

@implementation TVRUICoreDevice

- (id)_initWithDeviceIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TVRUICoreDevice;
  v5 = [(TVRUICoreDevice *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D6C4D8]) initWithDeviceIdentifier:v4];
    device = v5->_device;
    v5->_device = v6;

    v8 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[TVRUICoreDevice _initWithDeviceIdentifier:]";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
    }
  }

  return v5;
}

- (id)_initWithCoreDevice:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TVRUICoreDevice;
  v6 = [(TVRUICoreDevice *)&v11 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[TVRUICoreDevice _initWithCoreDevice:]";
      v14 = 2114;
      v15 = p_isa;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
    }

    if ([p_isa[3] connectionState] == 2)
    {
      v9 = [p_isa[3] keyboardController];
      [v9 setDelegate:p_isa];
    }
  }

  return p_isa;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(TVRUICoreDevice *)self identifier];
  [v3 appendString:v4 withName:@"identifier"];

  v5 = [(TVRUICoreDevice *)self name];
  [v3 appendString:v5 withName:@"name"];

  v6 = [(TVRUICoreDevice *)self model];
  [v3 appendString:v6 withName:@"model"];

  v7 = [v3 appendBool:-[TVRUICoreDevice supportsDirectCaptionQueries](self withName:{"supportsDirectCaptionQueries"), @"supportsDirectCaptionQueries"}];
  v8 = [v3 appendBool:-[TVRUICoreDevice supportsFindMyRemote](self withName:{"supportsFindMyRemote"), @"supportsFindMyRemote"}];
  v9 = [v3 appendBool:-[TVRUICoreDevice isConnected](self withName:{"isConnected"), @"isConnected"}];
  v10 = [(TVRUICoreDevice *)self device];
  [v10 classification];
  v11 = TVRCDeviceClassificationDescription();
  [v3 appendString:v11 withName:@"classification"];

  v12 = [(TVRUICoreDevice *)self device];
  v13 = [v3 appendObject:v12 withName:@"device"];

  v14 = [v3 build];

  return v14;
}

- (id)debugName
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = [(TVRUICoreDevice *)self name];
  v5 = [v3 initWithString:v4];

  [(TVRCDevice *)self->_device linkType];
  v6 = TVRCDeviceLinkTypeDescription();
  [v5 appendFormat:@"-[%@]", v6];
  if ([(TVRCDevice *)self->_device classification])
  {
    [(TVRCDevice *)self->_device classification];
    v7 = TVRCDeviceClassificationDescription();
    [v5 appendFormat:@" (%@)", v7];
  }

  return v5;
}

- (BOOL)isEqualToDevice:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TVRUICoreDevice *)self device];
    v7 = [v5 device];

    v8 = [v6 isEqualToDevice:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TVRUICoreDevice *)self isEqualToDevice:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(TVRUICoreDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)sendButtonEvent:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TVRUICoreDevice *)self device];

  if (v5)
  {
    if ([v4 buttonType] == 9998)
    {
      v6 = objc_alloc(MEMORY[0x277D6C4C8]);
      v25 = *MEMORY[0x277D6C568];
      v26[0] = @"com.apple.TVSearch";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v8 = [v6 _initWithButtonType:20 hasTapAction:1 properties:v7];

      v9 = [(TVRUICoreDevice *)self device];
      v10 = [MEMORY[0x277D6C4D0] buttonEventForButton:v8 eventType:0];
      [v9 sendButtonEvent:v10];

      v11 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "#search - sent search tap action", v22, 2u);
      }
    }

    else
    {
      v12 = +[TVRUICoreDevice _coreButtonEventTypeForEventType:](TVRUICoreDevice, "_coreButtonEventTypeForEventType:", [v4 eventType]);
      v13 = [(TVRUICoreDevice *)self coreButtons];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "buttonType")}];
      v8 = [v13 objectForKeyedSubscript:v14];

      if (!v8)
      {
        v15 = +[TVRUICoreDevice _coreButtonTypeForButton:](TVRUICoreDevice, "_coreButtonTypeForButton:", [v4 buttonType]);
        if ([v4 buttonType] == 6 || objc_msgSend(v4, "buttonType") == 7)
        {
          if ([v4 buttonType] == 6)
          {
            v16 = 10.0;
          }

          else
          {
            v16 = -10.0;
          }

          v17 = objc_alloc(MEMORY[0x277D6C4C8]);
          v23 = *MEMORY[0x277D6C570];
          v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
          v24 = v18;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          v8 = [v17 _initWithButtonType:v15 hasTapAction:1 properties:v19];
        }

        else
        {
          v8 = [objc_alloc(MEMORY[0x277D6C4C8]) _initWithButtonType:v15];
        }

        v20 = _TVRUIViewControllerLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(TVRUICoreDevice *)v4 sendButtonEvent:v20];
        }
      }

      v11 = [MEMORY[0x277D6C4D0] buttonEventForButton:v8 eventType:v12];
      v21 = [(TVRUICoreDevice *)self device];
      [v21 sendButtonEvent:v11];
    }
  }
}

- (void)sendTouchEvent:(id)a3
{
  v14 = a3;
  v4 = [(TVRUICoreDevice *)self device];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D6C538]);
    [v14 timestamp];
    v7 = v6;
    v8 = [v14 fingerIndex];
    v9 = -[TVRUICoreDevice _tvrcTouchPhaseFromUITouchPhase:](self, "_tvrcTouchPhaseFromUITouchPhase:", [v14 touchPhase]);
    [v14 digitizerLocation];
    v12 = [v5 _initWithTimestamp:v8 finger:v9 phase:v7 digitizerLocation:{v10, v11}];
    v13 = [(TVRUICoreDevice *)self device];
    [v13 sendTouchEvent:v12];
  }
}

- (void)sendText:(id)a3
{
  v7 = a3;
  v4 = [(TVRUICoreDevice *)self device];

  if (v7 && v4)
  {
    v5 = [(TVRUICoreDevice *)self device];
    v6 = [v5 keyboardController];
    [v6 setText:v7];
  }
}

- (void)sendReturnKey
{
  v3 = [(TVRUICoreDevice *)self device];

  if (v3)
  {
    v5 = [(TVRUICoreDevice *)self device];
    v4 = [v5 keyboardController];
    [v4 sendReturnKey];
  }
}

- (void)sendTextInputPayload:(id)a3
{
  v6 = a3;
  v4 = [(TVRUICoreDevice *)self device];

  if (v4)
  {
    v5 = [(TVRUICoreDevice *)self device];
    [v5 _sendRTIDataPayload:v6];
  }
}

- (void)fetchUpNextInfoWithPaginationToken:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(TVRUICoreDevice *)self device];
  if (v7)
  {
    v8 = v7;
    v9 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TVRUICoreDevice *)self device];
      [v11 fetchUpNextInfoWithPaginationToken:v12 completion:v6];
    }
  }
}

- (void)markAsWatchedWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(TVRUICoreDevice *)self device];
  if (v7)
  {
    v8 = v7;
    v9 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TVRUICoreDevice *)self device];
      [v11 markAsWatchedWithMediaIdentifier:v12 completion:v6];
    }
  }
}

- (void)addItemWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(TVRUICoreDevice *)self device];
  if (v7)
  {
    v8 = v7;
    v9 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TVRUICoreDevice *)self device];
      [v11 addItemWithMediaIdentifier:v12 completion:v6];
    }
  }
}

- (void)removeItemWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(TVRUICoreDevice *)self device];
  if (v7)
  {
    v8 = v7;
    v9 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TVRUICoreDevice *)self device];
      [v11 removeItemWithMediaIdentifier:v12 completion:v6];
    }
  }
}

- (void)playItem:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(TVRUICoreDevice *)self device];
  if (v7)
  {
    v8 = v7;
    v9 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TVRUICoreDevice *)self device];
      [v11 playItem:v12 completion:v6];
    }
  }
}

- (void)fetchLaunchableAppsWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(TVRUICoreDevice *)self device];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUICoreDevice *)self device];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(TVRUICoreDevice *)self device];
      [v8 fetchLaunchableAppsWithCompletion:v9];
    }
  }
}

- (void)launchAppWithBundleID:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(TVRUICoreDevice *)self device];
  if (v7)
  {
    v8 = v7;
    v9 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TVRUICoreDevice *)self device];
      [v11 launchAppWithBundleID:v12 completion:v6];
    }
  }
}

- (id)keyboardAttributes
{
  v3 = [(TVRUICoreDevice *)self device];

  if (v3)
  {
    v4 = [(TVRUICoreDevice *)self device];
    v5 = [v4 keyboardController];
    v6 = [v5 attributes];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)currentText
{
  v3 = [(TVRUICoreDevice *)self device];

  if (v3)
  {
    v4 = [(TVRUICoreDevice *)self device];
    v5 = [v4 keyboardController];
    v6 = [v5 text];
  }

  else
  {
    v6 = &stru_287E6AEF8;
  }

  return v6;
}

- (void)sendAuthenticationCode:(id)a3
{
  v8 = a3;
  v4 = [(TVRUICoreDevice *)self device];
  if (v4)
  {
    v5 = v4;
    v6 = [(TVRUICoreDevice *)self currentChallenge];

    if (v6)
    {
      v7 = [(TVRUICoreDevice *)self currentChallenge];
      [v7 userEnteredCodeLocally:v8];
    }
  }
}

- (void)cancelAuthenitcationChallenge
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TVRUICoreDevice *)self currentChallenge];
    v5 = [(TVRUICoreDevice *)self device];
    v10 = 138412546;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "ui device cancelling auth challenge %@ for device %{public}@", &v10, 0x16u);
  }

  v6 = [(TVRUICoreDevice *)self device];
  if (v6)
  {
    v7 = v6;
    v8 = [(TVRUICoreDevice *)self currentChallenge];

    if (v8)
    {
      v9 = [(TVRUICoreDevice *)self currentChallenge];
      [v9 cancel];

      [(TVRUICoreDevice *)self setCurrentChallenge:0];
      [(TVRUICoreDevice *)self setConnecting:0];
    }
  }
}

- (int64_t)_tvrcTouchPhaseFromUITouchPhase:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_26D0D2648[a3];
  }
}

- (BOOL)isPaired
{
  v3 = [(TVRUICoreDevice *)self device];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TVRUICoreDevice *)self device];
  v5 = [v4 isPaired];

  return v5;
}

- (void)connectWithConnectionContext:(int64_t)a3
{
  v5 = [(TVRUICoreDevice *)self device];

  if (v5)
  {
    v6 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "UI requesting deviceConnect on core device", v9, 2u);
    }

    v7 = [(TVRUICoreDevice *)self device];
    [v7 setDelegate:self];

    v8 = [(TVRUICoreDevice *)self device];
    [v8 connectWithConnectionContext:a3];

    [(TVRUICoreDevice *)self setConnecting:1];
  }
}

- (void)disconnectWithTimeOut
{
  v3 = [(TVRUICoreDevice *)self device];

  if (v3)
  {
    v4 = [MEMORY[0x277D6C4B8] sharedInstance];
    v5 = [(TVRUICoreDevice *)self device];
    [v4 logConnectionStatus:3 type:objc_msgSend(v5 reason:{"connectionType"), -1}];

    [(TVRUICoreDevice *)self disconnectUserInitiated];
  }
}

- (void)_disconnectWithType:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [(TVRUICoreDevice *)self device];
  if (v5)
  {
    [(TVRUICoreDevice *)self cancelAuthenitcationChallenge];
    [v5 disconnectWithType:a3];
    [(TVRUICoreDevice *)self setConnecting:0];
    [v5 setDelegate:0];
    v6 = [v5 keyboardController];
    [v6 setDelegate:0];

    self->_supportsLaunchingApplications = 0;
    *&self->_supportsSiri = 0;
    self->_supportsPaging = 0;
    v7 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "UI requested disconnect with type %ld", &v8, 0xCu);
    }
  }
}

- (BOOL)isConnected
{
  v3 = [(TVRUICoreDevice *)self device];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TVRUICoreDevice *)self device];
  v5 = [v4 connectionState] == 2;

  return v5;
}

- (BOOL)isConnecting
{
  v3 = [(TVRUICoreDevice *)self device];

  if (v3)
  {
    v4 = [(TVRUICoreDevice *)self device];
    v5 = [v4 connectionState] == 1 || self->_connecting;
  }

  else
  {
    return 0;
  }

  return v5;
}

- (void)device:(id)a3 encounteredAuthenticationChallenge:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 67109376;
    *v26 = [v5 challengeAttributes] == 1;
    *&v26[4] = 1024;
    *&v26[6] = [v5 challengeAttributes] == 2;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "tvrui deviceEncounteredAuthChallenge pin=%d text=%d", &v25, 0xEu);
  }

  if ([v5 throttleSeconds] < 0)
  {
    [(TVRUICoreDevice *)self setCurrentChallenge:v5];
    v15 = [(TVRUICoreDevice *)self delegate];
    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = v15;
    v17 = [(TVRUICoreDevice *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }

    if ([v5 challengeAttributes] == 1)
    {
      v19 = [(TVRUICoreDevice *)self delegate];
      v14 = v19;
      v20 = self;
      v21 = 0;
    }

    else
    {
      if ([v5 challengeAttributes] != 2)
      {
        if ([v5 challengeType] == 1)
        {
          v22 = [v5 codeToEnterOnDevice];
          v23 = [v22 length];

          if (v23 == 4)
          {
            v14 = [(TVRUICoreDevice *)self delegate];
            v24 = [v5 codeToEnterOnDevice];
            [v14 deviceDidEncounterAuthenticationChallenge:self passwordType:2 passcode:v24];

            goto LABEL_16;
          }
        }

        goto LABEL_17;
      }

      v19 = [(TVRUICoreDevice *)self delegate];
      v14 = v19;
      v20 = self;
      v21 = 1;
    }

    [v19 deviceDidEncounterAuthenticationChallenge:v20 passwordType:v21 passcode:0];
    goto LABEL_16;
  }

  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 throttleSeconds];
    v9 = [(TVRUICoreDevice *)self delegate];
    v25 = 134218242;
    *v26 = v8;
    *&v26[8] = 2112;
    v27 = v9;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "tvrui encountered a throttle challenge for %ld seconds. sending to delegate %@", &v25, 0x16u);
  }

  v10 = [(TVRUICoreDevice *)self delegate];
  if (v10)
  {
    v11 = v10;
    v12 = [(TVRUICoreDevice *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(TVRUICoreDevice *)self delegate];
      [v14 device:self didEncounterAuthenticationThrottle:{objc_msgSend(v5, "throttleSeconds")}];
LABEL_16:
    }
  }

LABEL_17:
}

- (void)deviceBeganConnecting:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "deviceBeganConnecting %{public}@", &v11, 0xCu);
  }

  [(TVRUICoreDevice *)self setConnecting:1];
  v6 = [(TVRUICoreDevice *)self delegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(TVRUICoreDevice *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(TVRUICoreDevice *)self delegate];
      [v10 deviceBeganConnecting:self];
    }
  }
}

- (void)deviceConnected:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v4;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "deviceConnected %{public}@", &v19, 0xCu);
  }

  [(TVRUICoreDevice *)self setDevice:v4];
  v6 = [(TVRUICoreDevice *)self device];
  v7 = [v6 keyboardController];
  [v7 setDelegate:self];

  v8 = [(TVRUICoreDevice *)self currentChallenge];

  if (v8)
  {
    [(TVRUICoreDevice *)self setCurrentChallenge:0];
  }

  v9 = MEMORY[0x277CBEB38];
  v10 = [v4 supportedButtons];
  v11 = [v9 dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
  [(TVRUICoreDevice *)self setCoreButtons:v11];

  v12 = [v4 supportedButtons];
  [(TVRUICoreDevice *)self _processButtonsForFeatureAdditions:v12];

  v13 = [(TVRUICoreDevice *)self delegate];
  if (v13)
  {
    v14 = v13;
    v15 = [(TVRUICoreDevice *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(TVRUICoreDevice *)self delegate];
      [v17 deviceDidConnect:self];
    }
  }

  [(TVRUICoreDevice *)self setConnecting:0];
  v18 = [MEMORY[0x277D6C4B8] sharedInstance];
  [v18 logConnectionStatus:2 type:objc_msgSend(v4 reason:{"connectionType"), -1}];
}

- (void)device:(id)a3 disconnectedForReason:(int64_t)a4 error:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(TVRUICoreDevice *)self delegate];
    v21 = 138413058;
    v22 = v8;
    v23 = 2048;
    v24 = a4;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "UIDevice: deviceDisconnected device=%@, reason=%ld, error=%@. Sending to delegate %@", &v21, 0x2Au);
  }

  v12 = [(TVRUICoreDevice *)self delegate];
  if (v12)
  {
    v13 = v12;
    v14 = [(TVRUICoreDevice *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(TVRUICoreDevice *)self delegate];
      [v16 deviceDidDisconnect:self reason:-[TVRUICoreDevice _disconnectReasonFromCoreReason:](self error:{"_disconnectReasonFromCoreReason:", a4), v9}];
    }
  }

  [(TVRUICoreDevice *)self setConnecting:0];
  if (a4 && v9)
  {
    v17 = [MEMORY[0x277D6C4B8] sharedInstance];
    [v17 logConnectionStatus:1 type:objc_msgSend(v8 reason:{"connectionType"), a4}];
  }

  v18 = [(TVRUICoreDevice *)self device];
  [v18 setDelegate:0];

  v19 = [(TVRUICoreDevice *)self device];
  v20 = [v19 keyboardController];
  [v20 setDelegate:0];
}

- (void)device:(id)a3 removedSupportedButtons:(id)a4 added:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _TVRUIButtonLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v51 = v8;
    v52 = 2114;
    v53 = v9;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ added %{public}@", buf, 0x16u);
  }

  v32 = v9;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v34 = v7;
  v11 = [v7 supportedButtons];
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = _TVRUIButtonLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v51 = v16;
          _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "Supported %{public}@", buf, 0xCu);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v13);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v40;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v39 + 1) + 8 * j);
        v24 = _TVRUIButtonLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v51 = v23;
          _os_log_impl(&dword_26CFEB000, v24, OS_LOG_TYPE_DEFAULT, "Removed %{public}@", buf, 0xCu);
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v20);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = v32;
  v26 = [v25 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v35 + 1) + 8 * k);
        v31 = _TVRUIButtonLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v51 = v30;
          _os_log_impl(&dword_26CFEB000, v31, OS_LOG_TYPE_DEFAULT, "Added %{public}@", buf, 0xCu);
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v27);
  }

  [(TVRUICoreDevice *)self _processButtonsForFeatureRemovals:v18];
  [(TVRUICoreDevice *)self _processButtonsForFeatureAdditions:v25];
}

- (void)_processButtonsForFeatureAdditions:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v47 count:16];
  obj = v5;
  if (!v6)
  {
    goto LABEL_48;
  }

  v7 = v6;
  v39 = 0;
  v40 = 0;
  v8 = 0;
  v9 = *v44;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v44 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v43 + 1) + 8 * i);
      v12 = +[TVRUICoreDevice _uiButtonTypeFromCore:](TVRUICoreDevice, "_uiButtonTypeFromCore:", [v11 buttonType]);
      if ([(TVRUICoreDevice *)self _isMediaButton:v11])
      {
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
        [v41 addObject:v13];

        BYTE4(v40) = 1;
      }

      else if ([(TVRUICoreDevice *)self _isVolumeButton:v11])
      {
        v8 = 1;
        self->_supportsVolumeControl = 1;
      }

      else if ([(TVRUICoreDevice *)self _isLaunchApplicationButton:v11])
      {
        self->_supportsLaunchingApplications = 1;
      }

      else if ([(TVRUICoreDevice *)self _isCaptionsToggleButton:v11])
      {
        self->_supportsCaptionsToggle = 1;
      }

      else if ([v11 buttonType] == 17)
      {
        self->_captionsEnabled = 0;
        LOBYTE(v40) = 1;
      }

      else if ([v11 buttonType] == 18)
      {
        LOBYTE(v40) = 1;
        self->_captionsEnabled = 1;
      }

      else if ([v11 buttonType] == 4)
      {
        v39 = 1;
        self->_supportsSiri = 1;
      }

      else if ([v11 buttonType] == 30)
      {
        self->_supportsPower = 1;
      }

      else if ([v11 buttonType] == 28)
      {
        self->_supportsGuide = 1;
      }

      else if ([v11 buttonType] == 29)
      {
        self->_supportsMute = 1;
      }

      else if ([v11 buttonType] == 26 || objc_msgSend(v11, "buttonType") == 27)
      {
        self->_supportsPaging = 1;
      }

      v14 = [(TVRUICoreDevice *)self coreButtons];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
      [v14 setObject:v11 forKeyedSubscript:v15];
    }

    v7 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v7);

  if (v39)
  {
    v16 = [(TVRUICoreDevice *)self delegate];
    if (v16)
    {
      v17 = v16;
      v18 = [(TVRUICoreDevice *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = [(TVRUICoreDevice *)self delegate];
        [v20 device:self supportsSiri:self->_supportsSiri volumeControl:self->_supportsVolumeControl];
LABEL_39:
      }
    }
  }

  else if (v8)
  {
    v21 = [(TVRUICoreDevice *)self delegate];
    if (v21)
    {
      v22 = v21;
      v23 = [(TVRUICoreDevice *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v20 = [(TVRUICoreDevice *)self delegate];
        [v20 device:self supportsVolumeControl:1];
        goto LABEL_39;
      }
    }
  }

  if ((v40 & 0x100000000) != 0)
  {
    v25 = [(TVRUICoreDevice *)self delegate];
    if (v25)
    {
      v26 = v25;
      v27 = [(TVRUICoreDevice *)self delegate];
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        v29 = [(TVRUICoreDevice *)self delegate];
        [v29 device:self needsMediaControls:v41];
      }
    }
  }

  if (v40)
  {
    v30 = [(TVRUICoreDevice *)self delegate];
    if (v30)
    {
      v31 = v30;
      v32 = [(TVRUICoreDevice *)self delegate];
      v33 = objc_opt_respondsToSelector();

      if (v33)
      {
        v5 = [(TVRUICoreDevice *)self delegate];
        [v5 device:self hasCaptionsEnabled:self->_captionsEnabled];
LABEL_48:
      }
    }
  }

  v34 = [(TVRUICoreDevice *)self delegate];
  if (v34)
  {
    v35 = v34;
    v36 = [(TVRUICoreDevice *)self delegate];
    v37 = objc_opt_respondsToSelector();

    if (v37)
    {
      v38 = [(TVRUICoreDevice *)self delegate];
      [v38 device:self hasGuideButtonEnabled:self->_supportsGuide];
    }
  }
}

- (void)_processButtonsForFeatureRemovals:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  v7 = v5;
  if (!v6)
  {
    goto LABEL_22;
  }

  v8 = v6;
  v31 = 0;
  v9 = 0;
  v10 = *v34;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v33 + 1) + 8 * i);
      v13 = +[TVRUICoreDevice _uiButtonTypeFromCore:](TVRUICoreDevice, "_uiButtonTypeFromCore:", [v12 buttonType]);
      if ([(TVRUICoreDevice *)self _isMediaButton:v12])
      {
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
        [v32 addObject:v14];

        v9 = 1;
      }

      else if ([(TVRUICoreDevice *)self _isVolumeControlButton:v12])
      {
        self->_supportsVolumeControl = 0;
        self->_supportsMute = 0;
        v31 = 1;
      }

      else if ([v12 buttonType] == 28)
      {
        self->_supportsGuide = 0;
      }

      v15 = [(TVRUICoreDevice *)self coreButtons];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
      [v15 removeObjectForKey:v16];
    }

    v8 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v8);

  if (v9)
  {
    v17 = [(TVRUICoreDevice *)self delegate];
    if (v17)
    {
      v18 = v17;
      v19 = [(TVRUICoreDevice *)self delegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = [(TVRUICoreDevice *)self delegate];
        [v21 device:self hidesMediaControls:v32];
      }
    }
  }

  if (v31)
  {
    v22 = [(TVRUICoreDevice *)self delegate];
    if (v22)
    {
      v23 = v22;
      v24 = [(TVRUICoreDevice *)self delegate];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        v7 = [(TVRUICoreDevice *)self delegate];
        [v7 device:self supportsVolumeControl:0];
LABEL_22:
      }
    }
  }

  v26 = [(TVRUICoreDevice *)self delegate];
  if (v26)
  {
    v27 = v26;
    v28 = [(TVRUICoreDevice *)self delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v30 = [(TVRUICoreDevice *)self delegate];
      [v30 device:self hasGuideButtonEnabled:self->_supportsGuide];
    }
  }
}

- (void)device:(id)a3 supportsFindMyRemote:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v4;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Find My Remote state enabled: %d", v12, 8u);
  }

  v7 = [(TVRUICoreDevice *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(TVRUICoreDevice *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TVRUICoreDevice *)self delegate];
      [v11 device:self supportsFindMyRemote:v4];
    }
  }
}

- (void)device:(id)a3 updatedNowPlayingInfo:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Now playing info changed: %@", &v12, 0xCu);
  }

  v7 = [(TVRUICoreDevice *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(TVRUICoreDevice *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TVRUICoreDevice *)self delegate];
      [v11 device:self didUpdateNowPlayingInfo:v5];
    }
  }
}

- (void)device:(id)a3 updatedSiriRemoteFindingSessionState:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 < 7 && ((0x77u >> a4) & 1) != 0)
    {
      v7 = off_279D88698[a4];
    }

    else
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v7 = [v8 stringWithFormat:@"Unknown %@", v9];
    }

    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Siri Remote finding session state changed to: %{public}@", buf, 0xCu);
  }

  v10 = [(TVRUICoreDevice *)self delegate];
  if (v10)
  {
    v11 = v10;
    v12 = [(TVRUICoreDevice *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(TVRUICoreDevice *)self delegate];
      [v14 device:self didUpdateSiriRemoteFindingSessionState:a4];
    }
  }
}

- (void)device:(id)a3 updatedAttentionState:(int64_t)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((a4 - 1) >= 3)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", a4];
    }

    else
    {
      v6 = off_279D886D0[a4 - 1];
    }

    *buf = 138543362;
    v8 = v6;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Attention state was updated to: %{public}@", buf, 0xCu);
  }
}

- (void)deviceNameChanged:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Device name was changed: %{public}@", &v10, 0xCu);
  }

  v7 = [(TVRUICoreDevice *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(TVRUICoreDevice *)self delegate];
    [v9 deviceInfoUpdated:self];
  }
}

- (BOOL)_isVolumeButton:(id)a3
{
  v3 = a3;
  v4 = [v3 buttonType] == 10 || objc_msgSend(v3, "buttonType") == 11;

  return v4;
}

- (BOOL)_isVolumeControlButton:(id)a3
{
  v3 = a3;
  v4 = [v3 buttonType] == 10 || objc_msgSend(v3, "buttonType") == 11 || objc_msgSend(v3, "buttonType") == 29;

  return v4;
}

- (void)keyboardController:(id)a3 beganTextEditingWithAttributes:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(TVRUICoreDevice *)self identifier];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Started text editing for %@", &v10, 0xCu);
  }

  v8 = [(TVRUICoreDevice *)self delegate];

  if (v8)
  {
    v9 = [(TVRUICoreDevice *)self delegate];
    [v9 device:self beganTextEditingWithAttributes:v5 initialText:0];
  }
}

- (void)keyboardControllerEndedTextEditing:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TVRUICoreDevice *)self identifier];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Ended text editing for %@", &v11, 0xCu);
  }

  v7 = [(TVRUICoreDevice *)self delegate];

  if (v7)
  {
    v8 = [v4 text];
    v9 = [(TVRUICoreDevice *)self delegate];
    v10 = [v4 attributes];
    [v9 device:self endedTextEditingWithAttributes:v10 endingText:v8];
  }
}

- (void)keyboardController:(id)a3 didUpdateText:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Text updated with value %@", &v9, 0xCu);
  }

  v7 = [(TVRUICoreDevice *)self delegate];

  if (v7)
  {
    v8 = [(TVRUICoreDevice *)self delegate];
    [v8 device:self didUpdateText:v5];
  }
}

- (void)keyboardController:(id)a3 didUpdateAttributes:(id)a4
{
  v5 = a4;
  v6 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Keyboard attributes attributed", v9, 2u);
  }

  v7 = [(TVRUICoreDevice *)self delegate];

  if (v7)
  {
    v8 = [(TVRUICoreDevice *)self delegate];
    [v8 device:self didUpdateAttributes:v5];
  }
}

- (id)deviceContextInformation
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(TVRUICoreDevice *)self device];

  if (v3 && (-[TVRUICoreDevice device](self, "device"), v4 = objc_claimAutoreleasedReturnValue(), [v4 connectionType], TVRCDeviceConnectionTypeDescription(), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v8 = @"connectionType";
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

- (BOOL)supportsModernConnections
{
  v2 = [(TVRUICoreDevice *)self deviceContextInformation];
  v3 = [v2 objectForKeyedSubscript:@"connectionType"];
  v4 = [v3 isEqualToString:@"Rapport"];

  return v4;
}

- (void)enableTVRemoteOnLockscreen:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = [(TVRUICoreDevice *)self device];

  if (v5)
  {
    v6 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"stop showing";
      if (v3)
      {
        v7 = @"show";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "UI requesting to %@ TVRemote app on lock screen", &v9, 0xCu);
    }

    v8 = [(TVRUICoreDevice *)self device];
    [v8 enableTVRemoteOnLockscreen:v3];
  }
}

- (void)enableFindingSession:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = [(TVRUICoreDevice *)self device];

  if (v5)
  {
    v6 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"disable";
      if (v3)
      {
        v7 = @"enable";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "UI requesting to %@ finding session", &v9, 0xCu);
    }

    v8 = [(TVRUICoreDevice *)self device];
    [v8 enableFindingSession:v3];
  }
}

- (TVRUIDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendButtonEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_ERROR, "UI did not find a core button instance. creating one for UI event %{public}@", &v2, 0xCu);
}

@end