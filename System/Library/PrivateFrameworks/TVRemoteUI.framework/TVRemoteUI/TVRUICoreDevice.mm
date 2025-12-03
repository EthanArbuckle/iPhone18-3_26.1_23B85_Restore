@interface TVRUICoreDevice
- (BOOL)_isVolumeButton:(id)button;
- (BOOL)_isVolumeControlButton:(id)button;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDevice:(id)device;
- (BOOL)isPaired;
- (BOOL)supportsModernConnections;
- (NSString)description;
- (TVRUIDeviceDelegate)delegate;
- (id)_initWithCoreDevice:(id)device;
- (id)_initWithDeviceIdentifier:(id)identifier;
- (id)currentText;
- (id)debugName;
- (id)deviceContextInformation;
- (id)keyboardAttributes;
- (int64_t)_tvrcTouchPhaseFromUITouchPhase:(int64_t)phase;
- (unint64_t)hash;
- (void)_disconnectWithType:(unint64_t)type;
- (void)_processButtonsForFeatureAdditions:(id)additions;
- (void)_processButtonsForFeatureRemovals:(id)removals;
- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)cancelAuthenitcationChallenge;
- (void)connectWithConnectionContext:(int64_t)context;
- (void)device:(id)device disconnectedForReason:(int64_t)reason error:(id)error;
- (void)device:(id)device encounteredAuthenticationChallenge:(id)challenge;
- (void)device:(id)device removedSupportedButtons:(id)buttons added:(id)added;
- (void)device:(id)device supportsFindMyRemote:(BOOL)remote;
- (void)device:(id)device updatedAttentionState:(int64_t)state;
- (void)device:(id)device updatedNowPlayingInfo:(id)info;
- (void)device:(id)device updatedSiriRemoteFindingSessionState:(int64_t)state;
- (void)deviceBeganConnecting:(id)connecting;
- (void)deviceConnected:(id)connected;
- (void)deviceNameChanged:(id)changed;
- (void)disconnectWithTimeOut;
- (void)enableFindingSession:(BOOL)session;
- (void)enableTVRemoteOnLockscreen:(BOOL)lockscreen;
- (void)fetchLaunchableAppsWithCompletion:(id)completion;
- (void)fetchUpNextInfoWithPaginationToken:(id)token completion:(id)completion;
- (void)keyboardController:(id)controller beganTextEditingWithAttributes:(id)attributes;
- (void)keyboardController:(id)controller didUpdateAttributes:(id)attributes;
- (void)keyboardController:(id)controller didUpdateText:(id)text;
- (void)keyboardControllerEndedTextEditing:(id)editing;
- (void)launchAppWithBundleID:(id)d completion:(id)completion;
- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)playItem:(id)item completion:(id)completion;
- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)sendAuthenticationCode:(id)code;
- (void)sendButtonEvent:(id)event;
- (void)sendReturnKey;
- (void)sendText:(id)text;
- (void)sendTextInputPayload:(id)payload;
- (void)sendTouchEvent:(id)event;
@end

@implementation TVRUICoreDevice

- (id)_initWithDeviceIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = TVRUICoreDevice;
  v5 = [(TVRUICoreDevice *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D6C4D8]) initWithDeviceIdentifier:identifierCopy];
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

- (id)_initWithCoreDevice:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = TVRUICoreDevice;
  v6 = [(TVRUICoreDevice *)&v11 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
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
      keyboardController = [p_isa[3] keyboardController];
      [keyboardController setDelegate:p_isa];
    }
  }

  return p_isa;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(TVRUICoreDevice *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  name = [(TVRUICoreDevice *)self name];
  [v3 appendString:name withName:@"name"];

  model = [(TVRUICoreDevice *)self model];
  [v3 appendString:model withName:@"model"];

  v7 = [v3 appendBool:-[TVRUICoreDevice supportsDirectCaptionQueries](self withName:{"supportsDirectCaptionQueries"), @"supportsDirectCaptionQueries"}];
  v8 = [v3 appendBool:-[TVRUICoreDevice supportsFindMyRemote](self withName:{"supportsFindMyRemote"), @"supportsFindMyRemote"}];
  v9 = [v3 appendBool:-[TVRUICoreDevice isConnected](self withName:{"isConnected"), @"isConnected"}];
  device = [(TVRUICoreDevice *)self device];
  [device classification];
  v11 = TVRCDeviceClassificationDescription();
  [v3 appendString:v11 withName:@"classification"];

  device2 = [(TVRUICoreDevice *)self device];
  v13 = [v3 appendObject:device2 withName:@"device"];

  build = [v3 build];

  return build;
}

- (id)debugName
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  name = [(TVRUICoreDevice *)self name];
  v5 = [v3 initWithString:name];

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

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = deviceCopy;
    device = [(TVRUICoreDevice *)self device];
    device2 = [v5 device];

    v8 = [device isEqualToDevice:device2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TVRUICoreDevice *)self isEqualToDevice:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  identifier = [(TVRUICoreDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)sendButtonEvent:(id)event
{
  v26[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    if ([eventCopy buttonType] == 9998)
    {
      v6 = objc_alloc(MEMORY[0x277D6C4C8]);
      v25 = *MEMORY[0x277D6C568];
      v26[0] = @"com.apple.TVSearch";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v8 = [v6 _initWithButtonType:20 hasTapAction:1 properties:v7];

      device2 = [(TVRUICoreDevice *)self device];
      v10 = [MEMORY[0x277D6C4D0] buttonEventForButton:v8 eventType:0];
      [device2 sendButtonEvent:v10];

      v11 = _TVRUIViewControllerLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "#search - sent search tap action", v22, 2u);
      }
    }

    else
    {
      v12 = +[TVRUICoreDevice _coreButtonEventTypeForEventType:](TVRUICoreDevice, "_coreButtonEventTypeForEventType:", [eventCopy eventType]);
      coreButtons = [(TVRUICoreDevice *)self coreButtons];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "buttonType")}];
      v8 = [coreButtons objectForKeyedSubscript:v14];

      if (!v8)
      {
        v15 = +[TVRUICoreDevice _coreButtonTypeForButton:](TVRUICoreDevice, "_coreButtonTypeForButton:", [eventCopy buttonType]);
        if ([eventCopy buttonType] == 6 || objc_msgSend(eventCopy, "buttonType") == 7)
        {
          if ([eventCopy buttonType] == 6)
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
          [(TVRUICoreDevice *)eventCopy sendButtonEvent:v20];
        }
      }

      v11 = [MEMORY[0x277D6C4D0] buttonEventForButton:v8 eventType:v12];
      device3 = [(TVRUICoreDevice *)self device];
      [device3 sendButtonEvent:v11];
    }
  }
}

- (void)sendTouchEvent:(id)event
{
  eventCopy = event;
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    v5 = objc_alloc(MEMORY[0x277D6C538]);
    [eventCopy timestamp];
    v7 = v6;
    fingerIndex = [eventCopy fingerIndex];
    v9 = -[TVRUICoreDevice _tvrcTouchPhaseFromUITouchPhase:](self, "_tvrcTouchPhaseFromUITouchPhase:", [eventCopy touchPhase]);
    [eventCopy digitizerLocation];
    v12 = [v5 _initWithTimestamp:fingerIndex finger:v9 phase:v7 digitizerLocation:{v10, v11}];
    device2 = [(TVRUICoreDevice *)self device];
    [device2 sendTouchEvent:v12];
  }
}

- (void)sendText:(id)text
{
  textCopy = text;
  device = [(TVRUICoreDevice *)self device];

  if (textCopy && device)
  {
    device2 = [(TVRUICoreDevice *)self device];
    keyboardController = [device2 keyboardController];
    [keyboardController setText:textCopy];
  }
}

- (void)sendReturnKey
{
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    device2 = [(TVRUICoreDevice *)self device];
    keyboardController = [device2 keyboardController];
    [keyboardController sendReturnKey];
  }
}

- (void)sendTextInputPayload:(id)payload
{
  payloadCopy = payload;
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    device2 = [(TVRUICoreDevice *)self device];
    [device2 _sendRTIDataPayload:payloadCopy];
  }
}

- (void)fetchUpNextInfoWithPaginationToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  device = [(TVRUICoreDevice *)self device];
  if (device)
  {
    v8 = device;
    device2 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      device3 = [(TVRUICoreDevice *)self device];
      [device3 fetchUpNextInfoWithPaginationToken:tokenCopy completion:completionCopy];
    }
  }
}

- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  device = [(TVRUICoreDevice *)self device];
  if (device)
  {
    v8 = device;
    device2 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      device3 = [(TVRUICoreDevice *)self device];
      [device3 markAsWatchedWithMediaIdentifier:identifierCopy completion:completionCopy];
    }
  }
}

- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  device = [(TVRUICoreDevice *)self device];
  if (device)
  {
    v8 = device;
    device2 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      device3 = [(TVRUICoreDevice *)self device];
      [device3 addItemWithMediaIdentifier:identifierCopy completion:completionCopy];
    }
  }
}

- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  device = [(TVRUICoreDevice *)self device];
  if (device)
  {
    v8 = device;
    device2 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      device3 = [(TVRUICoreDevice *)self device];
      [device3 removeItemWithMediaIdentifier:identifierCopy completion:completionCopy];
    }
  }
}

- (void)playItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  device = [(TVRUICoreDevice *)self device];
  if (device)
  {
    v8 = device;
    device2 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      device3 = [(TVRUICoreDevice *)self device];
      [device3 playItem:itemCopy completion:completionCopy];
    }
  }
}

- (void)fetchLaunchableAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(TVRUICoreDevice *)self device];
  if (device)
  {
    v5 = device;
    device2 = [(TVRUICoreDevice *)self device];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      device3 = [(TVRUICoreDevice *)self device];
      [device3 fetchLaunchableAppsWithCompletion:completionCopy];
    }
  }
}

- (void)launchAppWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  device = [(TVRUICoreDevice *)self device];
  if (device)
  {
    v8 = device;
    device2 = [(TVRUICoreDevice *)self device];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      device3 = [(TVRUICoreDevice *)self device];
      [device3 launchAppWithBundleID:dCopy completion:completionCopy];
    }
  }
}

- (id)keyboardAttributes
{
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    device2 = [(TVRUICoreDevice *)self device];
    keyboardController = [device2 keyboardController];
    attributes = [keyboardController attributes];
  }

  else
  {
    attributes = 0;
  }

  return attributes;
}

- (id)currentText
{
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    device2 = [(TVRUICoreDevice *)self device];
    keyboardController = [device2 keyboardController];
    text = [keyboardController text];
  }

  else
  {
    text = &stru_287E6AEF8;
  }

  return text;
}

- (void)sendAuthenticationCode:(id)code
{
  codeCopy = code;
  device = [(TVRUICoreDevice *)self device];
  if (device)
  {
    v5 = device;
    currentChallenge = [(TVRUICoreDevice *)self currentChallenge];

    if (currentChallenge)
    {
      currentChallenge2 = [(TVRUICoreDevice *)self currentChallenge];
      [currentChallenge2 userEnteredCodeLocally:codeCopy];
    }
  }
}

- (void)cancelAuthenitcationChallenge
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentChallenge = [(TVRUICoreDevice *)self currentChallenge];
    device = [(TVRUICoreDevice *)self device];
    v10 = 138412546;
    v11 = currentChallenge;
    v12 = 2114;
    v13 = device;
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "ui device cancelling auth challenge %@ for device %{public}@", &v10, 0x16u);
  }

  device2 = [(TVRUICoreDevice *)self device];
  if (device2)
  {
    v7 = device2;
    currentChallenge2 = [(TVRUICoreDevice *)self currentChallenge];

    if (currentChallenge2)
    {
      currentChallenge3 = [(TVRUICoreDevice *)self currentChallenge];
      [currentChallenge3 cancel];

      [(TVRUICoreDevice *)self setCurrentChallenge:0];
      [(TVRUICoreDevice *)self setConnecting:0];
    }
  }
}

- (int64_t)_tvrcTouchPhaseFromUITouchPhase:(int64_t)phase
{
  if (phase > 4)
  {
    return 0;
  }

  else
  {
    return qword_26D0D2648[phase];
  }
}

- (BOOL)isPaired
{
  device = [(TVRUICoreDevice *)self device];

  if (!device)
  {
    return 0;
  }

  device2 = [(TVRUICoreDevice *)self device];
  isPaired = [device2 isPaired];

  return isPaired;
}

- (void)connectWithConnectionContext:(int64_t)context
{
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    v6 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "UI requesting deviceConnect on core device", v9, 2u);
    }

    device2 = [(TVRUICoreDevice *)self device];
    [device2 setDelegate:self];

    device3 = [(TVRUICoreDevice *)self device];
    [device3 connectWithConnectionContext:context];

    [(TVRUICoreDevice *)self setConnecting:1];
  }
}

- (void)disconnectWithTimeOut
{
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    mEMORY[0x277D6C4B8] = [MEMORY[0x277D6C4B8] sharedInstance];
    device2 = [(TVRUICoreDevice *)self device];
    [mEMORY[0x277D6C4B8] logConnectionStatus:3 type:objc_msgSend(device2 reason:{"connectionType"), -1}];

    [(TVRUICoreDevice *)self disconnectUserInitiated];
  }
}

- (void)_disconnectWithType:(unint64_t)type
{
  v10 = *MEMORY[0x277D85DE8];
  device = [(TVRUICoreDevice *)self device];
  if (device)
  {
    [(TVRUICoreDevice *)self cancelAuthenitcationChallenge];
    [device disconnectWithType:type];
    [(TVRUICoreDevice *)self setConnecting:0];
    [device setDelegate:0];
    keyboardController = [device keyboardController];
    [keyboardController setDelegate:0];

    self->_supportsLaunchingApplications = 0;
    *&self->_supportsSiri = 0;
    self->_supportsPaging = 0;
    v7 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "UI requested disconnect with type %ld", &v8, 0xCu);
    }
  }
}

- (BOOL)isConnected
{
  device = [(TVRUICoreDevice *)self device];

  if (!device)
  {
    return 0;
  }

  device2 = [(TVRUICoreDevice *)self device];
  v5 = [device2 connectionState] == 2;

  return v5;
}

- (BOOL)isConnecting
{
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    device2 = [(TVRUICoreDevice *)self device];
    v5 = [device2 connectionState] == 1 || self->_connecting;
  }

  else
  {
    return 0;
  }

  return v5;
}

- (void)device:(id)device encounteredAuthenticationChallenge:(id)challenge
{
  v28 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  v6 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 67109376;
    *v26 = [challengeCopy challengeAttributes] == 1;
    *&v26[4] = 1024;
    *&v26[6] = [challengeCopy challengeAttributes] == 2;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "tvrui deviceEncounteredAuthChallenge pin=%d text=%d", &v25, 0xEu);
  }

  if ([challengeCopy throttleSeconds] < 0)
  {
    [(TVRUICoreDevice *)self setCurrentChallenge:challengeCopy];
    delegate = [(TVRUICoreDevice *)self delegate];
    if (!delegate)
    {
      goto LABEL_17;
    }

    v16 = delegate;
    delegate2 = [(TVRUICoreDevice *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }

    if ([challengeCopy challengeAttributes] == 1)
    {
      delegate3 = [(TVRUICoreDevice *)self delegate];
      delegate4 = delegate3;
      selfCopy2 = self;
      v21 = 0;
    }

    else
    {
      if ([challengeCopy challengeAttributes] != 2)
      {
        if ([challengeCopy challengeType] == 1)
        {
          codeToEnterOnDevice = [challengeCopy codeToEnterOnDevice];
          v23 = [codeToEnterOnDevice length];

          if (v23 == 4)
          {
            delegate4 = [(TVRUICoreDevice *)self delegate];
            codeToEnterOnDevice2 = [challengeCopy codeToEnterOnDevice];
            [delegate4 deviceDidEncounterAuthenticationChallenge:self passwordType:2 passcode:codeToEnterOnDevice2];

            goto LABEL_16;
          }
        }

        goto LABEL_17;
      }

      delegate3 = [(TVRUICoreDevice *)self delegate];
      delegate4 = delegate3;
      selfCopy2 = self;
      v21 = 1;
    }

    [delegate3 deviceDidEncounterAuthenticationChallenge:selfCopy2 passwordType:v21 passcode:0];
    goto LABEL_16;
  }

  v7 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    throttleSeconds = [challengeCopy throttleSeconds];
    delegate5 = [(TVRUICoreDevice *)self delegate];
    v25 = 134218242;
    *v26 = throttleSeconds;
    *&v26[8] = 2112;
    v27 = delegate5;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "tvrui encountered a throttle challenge for %ld seconds. sending to delegate %@", &v25, 0x16u);
  }

  delegate6 = [(TVRUICoreDevice *)self delegate];
  if (delegate6)
  {
    v11 = delegate6;
    delegate7 = [(TVRUICoreDevice *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate4 = [(TVRUICoreDevice *)self delegate];
      [delegate4 device:self didEncounterAuthenticationThrottle:{objc_msgSend(challengeCopy, "throttleSeconds")}];
LABEL_16:
    }
  }

LABEL_17:
}

- (void)deviceBeganConnecting:(id)connecting
{
  v13 = *MEMORY[0x277D85DE8];
  connectingCopy = connecting;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = connectingCopy;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "deviceBeganConnecting %{public}@", &v11, 0xCu);
  }

  [(TVRUICoreDevice *)self setConnecting:1];
  delegate = [(TVRUICoreDevice *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(TVRUICoreDevice *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(TVRUICoreDevice *)self delegate];
      [delegate3 deviceBeganConnecting:self];
    }
  }
}

- (void)deviceConnected:(id)connected
{
  v21 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = connectedCopy;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "deviceConnected %{public}@", &v19, 0xCu);
  }

  [(TVRUICoreDevice *)self setDevice:connectedCopy];
  device = [(TVRUICoreDevice *)self device];
  keyboardController = [device keyboardController];
  [keyboardController setDelegate:self];

  currentChallenge = [(TVRUICoreDevice *)self currentChallenge];

  if (currentChallenge)
  {
    [(TVRUICoreDevice *)self setCurrentChallenge:0];
  }

  v9 = MEMORY[0x277CBEB38];
  supportedButtons = [connectedCopy supportedButtons];
  v11 = [v9 dictionaryWithCapacity:{objc_msgSend(supportedButtons, "count")}];
  [(TVRUICoreDevice *)self setCoreButtons:v11];

  supportedButtons2 = [connectedCopy supportedButtons];
  [(TVRUICoreDevice *)self _processButtonsForFeatureAdditions:supportedButtons2];

  delegate = [(TVRUICoreDevice *)self delegate];
  if (delegate)
  {
    v14 = delegate;
    delegate2 = [(TVRUICoreDevice *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate3 = [(TVRUICoreDevice *)self delegate];
      [delegate3 deviceDidConnect:self];
    }
  }

  [(TVRUICoreDevice *)self setConnecting:0];
  mEMORY[0x277D6C4B8] = [MEMORY[0x277D6C4B8] sharedInstance];
  [mEMORY[0x277D6C4B8] logConnectionStatus:2 type:objc_msgSend(connectedCopy reason:{"connectionType"), -1}];
}

- (void)device:(id)device disconnectedForReason:(int64_t)reason error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  errorCopy = error;
  v10 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(TVRUICoreDevice *)self delegate];
    v21 = 138413058;
    v22 = deviceCopy;
    v23 = 2048;
    reasonCopy = reason;
    v25 = 2112;
    v26 = errorCopy;
    v27 = 2112;
    v28 = delegate;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "UIDevice: deviceDisconnected device=%@, reason=%ld, error=%@. Sending to delegate %@", &v21, 0x2Au);
  }

  delegate2 = [(TVRUICoreDevice *)self delegate];
  if (delegate2)
  {
    v13 = delegate2;
    delegate3 = [(TVRUICoreDevice *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate4 = [(TVRUICoreDevice *)self delegate];
      [delegate4 deviceDidDisconnect:self reason:-[TVRUICoreDevice _disconnectReasonFromCoreReason:](self error:{"_disconnectReasonFromCoreReason:", reason), errorCopy}];
    }
  }

  [(TVRUICoreDevice *)self setConnecting:0];
  if (reason && errorCopy)
  {
    mEMORY[0x277D6C4B8] = [MEMORY[0x277D6C4B8] sharedInstance];
    [mEMORY[0x277D6C4B8] logConnectionStatus:1 type:objc_msgSend(deviceCopy reason:{"connectionType"), reason}];
  }

  device = [(TVRUICoreDevice *)self device];
  [device setDelegate:0];

  device2 = [(TVRUICoreDevice *)self device];
  keyboardController = [device2 keyboardController];
  [keyboardController setDelegate:0];
}

- (void)device:(id)device removedSupportedButtons:(id)buttons added:(id)added
{
  v54 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  buttonsCopy = buttons;
  addedCopy = added;
  v10 = _TVRUIButtonLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v51 = buttonsCopy;
    v52 = 2114;
    v53 = addedCopy;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ added %{public}@", buf, 0x16u);
  }

  v32 = addedCopy;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v34 = deviceCopy;
  supportedButtons = [deviceCopy supportedButtons];
  v12 = [supportedButtons countByEnumeratingWithState:&v43 objects:v49 count:16];
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
          objc_enumerationMutation(supportedButtons);
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

      v13 = [supportedButtons countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v13);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = buttonsCopy;
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

- (void)_processButtonsForFeatureAdditions:(id)additions
{
  v48 = *MEMORY[0x277D85DE8];
  additionsCopy = additions;
  v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  delegate11 = additionsCopy;
  v6 = [delegate11 countByEnumeratingWithState:&v43 objects:v47 count:16];
  obj = delegate11;
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

      coreButtons = [(TVRUICoreDevice *)self coreButtons];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
      [coreButtons setObject:v11 forKeyedSubscript:v15];
    }

    v7 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v7);

  if (v39)
  {
    delegate = [(TVRUICoreDevice *)self delegate];
    if (delegate)
    {
      v17 = delegate;
      delegate2 = [(TVRUICoreDevice *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        delegate3 = [(TVRUICoreDevice *)self delegate];
        [delegate3 device:self supportsSiri:self->_supportsSiri volumeControl:self->_supportsVolumeControl];
LABEL_39:
      }
    }
  }

  else if (v8)
  {
    delegate4 = [(TVRUICoreDevice *)self delegate];
    if (delegate4)
    {
      v22 = delegate4;
      delegate5 = [(TVRUICoreDevice *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        delegate3 = [(TVRUICoreDevice *)self delegate];
        [delegate3 device:self supportsVolumeControl:1];
        goto LABEL_39;
      }
    }
  }

  if ((v40 & 0x100000000) != 0)
  {
    delegate6 = [(TVRUICoreDevice *)self delegate];
    if (delegate6)
    {
      v26 = delegate6;
      delegate7 = [(TVRUICoreDevice *)self delegate];
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        delegate8 = [(TVRUICoreDevice *)self delegate];
        [delegate8 device:self needsMediaControls:v41];
      }
    }
  }

  if (v40)
  {
    delegate9 = [(TVRUICoreDevice *)self delegate];
    if (delegate9)
    {
      v31 = delegate9;
      delegate10 = [(TVRUICoreDevice *)self delegate];
      v33 = objc_opt_respondsToSelector();

      if (v33)
      {
        delegate11 = [(TVRUICoreDevice *)self delegate];
        [delegate11 device:self hasCaptionsEnabled:self->_captionsEnabled];
LABEL_48:
      }
    }
  }

  delegate12 = [(TVRUICoreDevice *)self delegate];
  if (delegate12)
  {
    v35 = delegate12;
    delegate13 = [(TVRUICoreDevice *)self delegate];
    v37 = objc_opt_respondsToSelector();

    if (v37)
    {
      delegate14 = [(TVRUICoreDevice *)self delegate];
      [delegate14 device:self hasGuideButtonEnabled:self->_supportsGuide];
    }
  }
}

- (void)_processButtonsForFeatureRemovals:(id)removals
{
  v38 = *MEMORY[0x277D85DE8];
  removalsCopy = removals;
  v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = removalsCopy;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  delegate6 = v5;
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

      coreButtons = [(TVRUICoreDevice *)self coreButtons];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
      [coreButtons removeObjectForKey:v16];
    }

    v8 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v8);

  if (v9)
  {
    delegate = [(TVRUICoreDevice *)self delegate];
    if (delegate)
    {
      v18 = delegate;
      delegate2 = [(TVRUICoreDevice *)self delegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        delegate3 = [(TVRUICoreDevice *)self delegate];
        [delegate3 device:self hidesMediaControls:v32];
      }
    }
  }

  if (v31)
  {
    delegate4 = [(TVRUICoreDevice *)self delegate];
    if (delegate4)
    {
      v23 = delegate4;
      delegate5 = [(TVRUICoreDevice *)self delegate];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        delegate6 = [(TVRUICoreDevice *)self delegate];
        [delegate6 device:self supportsVolumeControl:0];
LABEL_22:
      }
    }
  }

  delegate7 = [(TVRUICoreDevice *)self delegate];
  if (delegate7)
  {
    v27 = delegate7;
    delegate8 = [(TVRUICoreDevice *)self delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      delegate9 = [(TVRUICoreDevice *)self delegate];
      [delegate9 device:self hasGuideButtonEnabled:self->_supportsGuide];
    }
  }
}

- (void)device:(id)device supportsFindMyRemote:(BOOL)remote
{
  remoteCopy = remote;
  v13 = *MEMORY[0x277D85DE8];
  v6 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = remoteCopy;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Find My Remote state enabled: %d", v12, 8u);
  }

  delegate = [(TVRUICoreDevice *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(TVRUICoreDevice *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate3 = [(TVRUICoreDevice *)self delegate];
      [delegate3 device:self supportsFindMyRemote:remoteCopy];
    }
  }
}

- (void)device:(id)device updatedNowPlayingInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = infoCopy;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Now playing info changed: %@", &v12, 0xCu);
  }

  delegate = [(TVRUICoreDevice *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(TVRUICoreDevice *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate3 = [(TVRUICoreDevice *)self delegate];
      [delegate3 device:self didUpdateNowPlayingInfo:infoCopy];
    }
  }
}

- (void)device:(id)device updatedSiriRemoteFindingSessionState:(int64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (state < 7 && ((0x77u >> state) & 1) != 0)
    {
      v7 = off_279D88698[state];
    }

    else
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:state];
      v7 = [v8 stringWithFormat:@"Unknown %@", v9];
    }

    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Siri Remote finding session state changed to: %{public}@", buf, 0xCu);
  }

  delegate = [(TVRUICoreDevice *)self delegate];
  if (delegate)
  {
    v11 = delegate;
    delegate2 = [(TVRUICoreDevice *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate3 = [(TVRUICoreDevice *)self delegate];
      [delegate3 device:self didUpdateSiriRemoteFindingSessionState:state];
    }
  }
}

- (void)device:(id)device updatedAttentionState:(int64_t)state
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((state - 1) >= 3)
    {
      state = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", state];
    }

    else
    {
      state = off_279D886D0[state - 1];
    }

    *buf = 138543362;
    v8 = state;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Attention state was updated to: %{public}@", buf, 0xCu);
  }
}

- (void)deviceNameChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [changedCopy name];
    v10 = 138543362;
    v11 = name;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Device name was changed: %{public}@", &v10, 0xCu);
  }

  delegate = [(TVRUICoreDevice *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(TVRUICoreDevice *)self delegate];
    [delegate2 deviceInfoUpdated:self];
  }
}

- (BOOL)_isVolumeButton:(id)button
{
  buttonCopy = button;
  v4 = [buttonCopy buttonType] == 10 || objc_msgSend(buttonCopy, "buttonType") == 11;

  return v4;
}

- (BOOL)_isVolumeControlButton:(id)button
{
  buttonCopy = button;
  v4 = [buttonCopy buttonType] == 10 || objc_msgSend(buttonCopy, "buttonType") == 11 || objc_msgSend(buttonCopy, "buttonType") == 29;

  return v4;
}

- (void)keyboardController:(id)controller beganTextEditingWithAttributes:(id)attributes
{
  v12 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v6 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(TVRUICoreDevice *)self identifier];
    v10 = 138412290;
    v11 = identifier;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Started text editing for %@", &v10, 0xCu);
  }

  delegate = [(TVRUICoreDevice *)self delegate];

  if (delegate)
  {
    delegate2 = [(TVRUICoreDevice *)self delegate];
    [delegate2 device:self beganTextEditingWithAttributes:attributesCopy initialText:0];
  }
}

- (void)keyboardControllerEndedTextEditing:(id)editing
{
  v13 = *MEMORY[0x277D85DE8];
  editingCopy = editing;
  v5 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(TVRUICoreDevice *)self identifier];
    v11 = 138412290;
    v12 = identifier;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Ended text editing for %@", &v11, 0xCu);
  }

  delegate = [(TVRUICoreDevice *)self delegate];

  if (delegate)
  {
    text = [editingCopy text];
    delegate2 = [(TVRUICoreDevice *)self delegate];
    attributes = [editingCopy attributes];
    [delegate2 device:self endedTextEditingWithAttributes:attributes endingText:text];
  }
}

- (void)keyboardController:(id)controller didUpdateText:(id)text
{
  v11 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v6 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = textCopy;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Text updated with value %@", &v9, 0xCu);
  }

  delegate = [(TVRUICoreDevice *)self delegate];

  if (delegate)
  {
    delegate2 = [(TVRUICoreDevice *)self delegate];
    [delegate2 device:self didUpdateText:textCopy];
  }
}

- (void)keyboardController:(id)controller didUpdateAttributes:(id)attributes
{
  attributesCopy = attributes;
  v6 = _TVRUIKeyboardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Keyboard attributes attributed", v9, 2u);
  }

  delegate = [(TVRUICoreDevice *)self delegate];

  if (delegate)
  {
    delegate2 = [(TVRUICoreDevice *)self delegate];
    [delegate2 device:self didUpdateAttributes:attributesCopy];
  }
}

- (id)deviceContextInformation
{
  v9[1] = *MEMORY[0x277D85DE8];
  device = [(TVRUICoreDevice *)self device];

  if (device && (-[TVRUICoreDevice device](self, "device"), v4 = objc_claimAutoreleasedReturnValue(), [v4 connectionType], TVRCDeviceConnectionTypeDescription(), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
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
  deviceContextInformation = [(TVRUICoreDevice *)self deviceContextInformation];
  v3 = [deviceContextInformation objectForKeyedSubscript:@"connectionType"];
  v4 = [v3 isEqualToString:@"Rapport"];

  return v4;
}

- (void)enableTVRemoteOnLockscreen:(BOOL)lockscreen
{
  lockscreenCopy = lockscreen;
  v11 = *MEMORY[0x277D85DE8];
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    v6 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"stop showing";
      if (lockscreenCopy)
      {
        v7 = @"show";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "UI requesting to %@ TVRemote app on lock screen", &v9, 0xCu);
    }

    device2 = [(TVRUICoreDevice *)self device];
    [device2 enableTVRemoteOnLockscreen:lockscreenCopy];
  }
}

- (void)enableFindingSession:(BOOL)session
{
  sessionCopy = session;
  v11 = *MEMORY[0x277D85DE8];
  device = [(TVRUICoreDevice *)self device];

  if (device)
  {
    v6 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"disable";
      if (sessionCopy)
      {
        v7 = @"enable";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "UI requesting to %@ finding session", &v9, 0xCu);
    }

    device2 = [(TVRUICoreDevice *)self device];
    [device2 enableFindingSession:sessionCopy];
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