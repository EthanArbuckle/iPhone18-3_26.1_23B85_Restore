@interface TVRCRapportMediaEventsManager
- (BOOL)volumeSupported;
- (NSSet)supportedMediaCommands;
- (TVRCRapportMediaEventsManager)initWithCompanionLinkClient:(id)client supportsDirectCaptionQueries:(BOOL)queries eventHandler:(id)handler;
- (id)supportedCaptionEvents;
- (int)_captionSettingForButtonEvent:(id)event;
- (int)_commandForMediaButtonEvent:(id)event;
- (void)_refreshCaptionState;
- (void)_setupMediaCommands:(unint64_t)commands;
- (void)activateWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)sendMediaEvent:(id)event;
@end

@implementation TVRCRapportMediaEventsManager

- (TVRCRapportMediaEventsManager)initWithCompanionLinkClient:(id)client supportsDirectCaptionQueries:(BOOL)queries eventHandler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = TVRCRapportMediaEventsManager;
  v10 = [(TVRCRapportMediaEventsManager *)&v21 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D441C0]);
    [(TVRCRapportMediaEventsManager *)v10 setMediaSession:v11];

    mediaSession = [(TVRCRapportMediaEventsManager *)v10 mediaSession];
    [mediaSession setMessenger:clientCopy];

    v13 = [handlerCopy copy];
    eventHandler = v10->_eventHandler;
    v10->_eventHandler = v13;

    v10->_supportsDirectCaptionQueries = queries;
    objc_initWeak(&location, v10);
    mediaSession2 = [(TVRCRapportMediaEventsManager *)v10 mediaSession];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __103__TVRCRapportMediaEventsManager_initWithCompanionLinkClient_supportsDirectCaptionQueries_eventHandler___block_invoke;
    v17[3] = &unk_279D82FD0;
    objc_copyWeak(&v19, &location);
    v18 = clientCopy;
    [mediaSession2 setMediaControlFlagsChangedHandler:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __103__TVRCRapportMediaEventsManager_initWithCompanionLinkClient_supportsDirectCaptionQueries_eventHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _TVRCMediaEventsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v19 = v4;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "MediaControlFlagsChangedHandler called for companionLinkClient <%{public}@>", buf, 0xCu);
    }

    v5 = [WeakRetained mediaSession];
    v6 = [v5 mediaControlFlags];

    v7 = _TVRCMediaEventsLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if ((v6 & 0x100) != 0)
    {
      if (v8)
      {
        v10 = *(a1 + 32);
        *buf = 138543362;
        v19 = v10;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "RPMediaControlFlagsVolume available for <%{public}@>", buf, 0xCu);
      }

      v11 = [[TVRCButton alloc] _initWithButtonType:10];
      v12 = [[TVRCButton alloc] _initWithButtonType:11];
      v13 = [[TVRCButton alloc] _initWithButtonType:29];
      v14 = [MEMORY[0x277CBEB98] setWithObjects:{v11, v12, v13, 0}];
      [WeakRetained setVolumeCommands:v14];
    }

    else
    {
      if (v8)
      {
        v9 = *(a1 + 32);
        *buf = 138543362;
        v19 = v9;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "RPMediaControlFlagsVolume not available for companionLinkClient <%{public}@>", buf, 0xCu);
      }

      [WeakRetained setVolumeCommands:0];
    }

    [WeakRetained _setupMediaCommands:v6];
    v15 = [WeakRetained eventHandler];

    if (v15)
    {
      v16 = [WeakRetained eventHandler];
      v16[2]();
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)activateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_initWeak(&location, self);
  mediaSession = [(TVRCRapportMediaEventsManager *)self mediaSession];
  messenger = [mediaSession messenger];

  mediaSession2 = [(TVRCRapportMediaEventsManager *)self mediaSession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__TVRCRapportMediaEventsManager_activateWithCompletionHandler___block_invoke;
  v11[3] = &unk_279D830C0;
  v9 = messenger;
  v12 = v9;
  v10 = handlerCopy;
  v13 = v10;
  objc_copyWeak(&v14, &location);
  [mediaSession2 activateWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __63__TVRCRapportMediaEventsManager_activateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCMediaEventsLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__TVRCRapportMediaEventsManager_activateWithCompletionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "MediaSession activated for companionLinkClient <%{public}@>", &v9, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _refreshCaptionState];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  mediaSession = [(TVRCRapportMediaEventsManager *)self mediaSession];
  [mediaSession invalidate];

  [(TVRCRapportMediaEventsManager *)self setMediaSession:0];
  v4 = _TVRCRapportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Invalidated MediaManager", v5, 2u);
  }
}

- (NSSet)supportedMediaCommands
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  volumeCommands = [(TVRCRapportMediaEventsManager *)self volumeCommands];

  if (volumeCommands)
  {
    volumeCommands2 = [(TVRCRapportMediaEventsManager *)self volumeCommands];
    [v3 unionSet:volumeCommands2];
  }

  mediaCommands = [(TVRCRapportMediaEventsManager *)self mediaCommands];

  if (mediaCommands)
  {
    mediaCommands2 = [(TVRCRapportMediaEventsManager *)self mediaCommands];
    [v3 unionSet:mediaCommands2];
  }

  supportedCaptionEvents = [(TVRCRapportMediaEventsManager *)self supportedCaptionEvents];
  [v3 unionSet:supportedCaptionEvents];

  v9 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v9;
}

- (BOOL)volumeSupported
{
  volumeCommands = [(TVRCRapportMediaEventsManager *)self volumeCommands];
  v3 = volumeCommands != 0;

  return v3;
}

- (void)sendMediaEvent:(id)event
{
  v31 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  button = [eventCopy button];
  buttonType = [button buttonType];

  if ((buttonType - 16) > 2)
  {
    v9 = [(TVRCRapportMediaEventsManager *)self _commandForMediaButtonEvent:eventCopy];
    if (v9 == 7)
    {
      if (buttonType == 31)
      {
        v10 = -9999999.0;
      }

      else
      {
        button2 = [eventCopy button];
        properties = [button2 properties];
        v16 = [properties objectForKey:@"TVRCButtonSkipInterval"];

        v10 = 10.0;
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v16 doubleValue];
            v10 = v17;
          }
        }
      }

      v18 = _TVRCMediaEventsLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315394;
        *&location[4] = "SkipBy";
        v29 = 2048;
        v30 = v10;
        _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Sending %s with skipInterval=%f", location, 0x16u);
      }

      mediaSession = [(TVRCRapportMediaEventsManager *)self mediaSession];
      v20 = *MEMORY[0x277D44228];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke_6;
      v24[3] = &__block_descriptor_36_e17_v16__0__NSError_8l;
      v25 = 7;
      [mediaSession mediaSkipBySeconds:v20 destinationID:v24 completion:v10];
    }

    else
    {
      v11 = v9;
      mediaSession2 = [(TVRCRapportMediaEventsManager *)self mediaSession];
      v13 = *MEMORY[0x277D44228];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke_7;
      v22[3] = &__block_descriptor_36_e17_v16__0__NSError_8l;
      v23 = v11;
      [mediaSession2 mediaCommand:v11 destinationID:v13 completion:v22];
    }
  }

  else
  {
    v7 = [(TVRCRapportMediaEventsManager *)self _captionSettingForButtonEvent:eventCopy];
    objc_initWeak(location, self);
    mediaSession3 = [(TVRCRapportMediaEventsManager *)self mediaSession];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke;
    v26[3] = &unk_279D82D38;
    objc_copyWeak(&v27, location);
    [mediaSession3 mediaCaptionSettingSet:v7 destinationID:*MEMORY[0x277D44228] completion:v26];

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _TVRCMediaEventsLog();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke_cold_1(v3, v6);
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Media caption setting set for RPDestinationIdentifierDirectPeer", v7, 2u);
      }

      [WeakRetained _refreshCaptionState];
    }
  }
}

void __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRCMediaEventsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke_6_cold_1(a1);
    }
  }
}

void __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRCMediaEventsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke_6_cold_1(a1);
    }
  }
}

- (void)_setupMediaCommands:(unint64_t)commands
{
  commandsCopy = commands;
  v39 = *MEMORY[0x277D85DE8];
  v5 = _TVRCMediaEventsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[TVRCRapportMediaEventsManager _setupMediaCommands:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  mediaCommands = self->_mediaCommands;
  self->_mediaCommands = v6;

  v35[0] = @"_TVRCButtonLongPressBeginAction";
  v35[1] = @"_TVRCButtonLongPressEndAction";
  v36[0] = &unk_287E66BC8;
  v36[1] = &unk_287E66BE0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  if ((commandsCopy & 0x200) != 0)
  {
    v9 = [TVRCButton alloc];
    v33 = @"TVRCButtonSkipInterval";
    v34 = &unk_287E66D10;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v11 = [(TVRCButton *)v9 _initWithButtonType:6 hasTapAction:1 properties:v10];

    mediaCommands = [(TVRCRapportMediaEventsManager *)self mediaCommands];
    [mediaCommands addObject:v11];

    if ((commandsCopy & 0x400) == 0)
    {
LABEL_5:
      if ((commandsCopy & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      v17 = [TVRCButton alloc];
      if ((commandsCopy & 0x10) != 0)
      {
        v18 = v8;
      }

      else
      {
        v18 = MEMORY[0x277CBEC10];
      }

      v19 = [(TVRCButton *)v17 _initWithButtonType:8 hasTapAction:1 properties:v18];
      mediaCommands2 = [(TVRCRapportMediaEventsManager *)self mediaCommands];
      [mediaCommands2 addObject:v19];

      if ((commandsCopy & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  else if ((commandsCopy & 0x400) == 0)
  {
    goto LABEL_5;
  }

  v13 = [TVRCButton alloc];
  v31 = @"TVRCButtonSkipInterval";
  v32 = &unk_287E66D20;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v15 = [(TVRCButton *)v13 _initWithButtonType:7 hasTapAction:1 properties:v14];

  mediaCommands3 = [(TVRCRapportMediaEventsManager *)self mediaCommands];
  [mediaCommands3 addObject:v15];

  if ((commandsCopy & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((commandsCopy & 8) != 0)
  {
LABEL_14:
    v21 = [TVRCButton alloc];
    if ((commandsCopy & 0x20) != 0)
    {
      v23 = 1;
      v22 = v8;
    }

    else
    {
      v22 = MEMORY[0x277CBEC10];
      v23 = 0;
    }

    v24 = [(TVRCButton *)v21 _initWithButtonType:9 hasTapAction:v23 properties:v22];
    mediaCommands4 = [(TVRCRapportMediaEventsManager *)self mediaCommands];
    [mediaCommands4 addObject:v24];
  }

LABEL_18:
  v26 = _TVRCMediaEventsLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    mediaCommands5 = [(TVRCRapportMediaEventsManager *)self mediaCommands];
    allObjects = [mediaCommands5 allObjects];
    v29 = [allObjects componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v38 = v29;
    _os_log_impl(&dword_26CF7F000, v26, OS_LOG_TYPE_DEFAULT, "Supported media commands \n%{public}@", buf, 0xCu);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (int)_commandForMediaButtonEvent:(id)event
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  button = [eventCopy button];
  properties = [button properties];

  eventType = [eventCopy eventType];
  v7 = 0;
  if (eventType <= 1)
  {
    if (eventType)
    {
      if (eventType != 1)
      {
        goto LABEL_37;
      }

      v8 = _TVRCButtonLongPressBeginActionKey;
      goto LABEL_9;
    }

LABEL_7:
    button2 = [eventCopy button];
    buttonType = [button2 buttonType];
    goto LABEL_10;
  }

  if (eventType != 2)
  {
    if (eventType != 3)
    {
      goto LABEL_37;
    }

    goto LABEL_7;
  }

  v8 = _TVRCButtonLongPressEndActionKey;
LABEL_9:
  button2 = [properties objectForKey:*v8];
  buttonType = [button2 integerValue];
LABEL_10:
  v11 = buttonType;

  v7 = 0;
  if (v11 > 200)
  {
    if (v11 > 203)
    {
      switch(v11)
      {
        case 204:
          v7 = 1;
          break;
        case 205:
          v7 = 2;
          break;
        case 9999:
          goto LABEL_37;
      }
    }

    else if (v11 == 201)
    {
      v7 = 9;
    }

    else if (v11 == 202)
    {
      v7 = 10;
    }

    else
    {
      v7 = 11;
    }

    goto LABEL_34;
  }

  if (v11 > 8)
  {
    if (v11 == 9)
    {
      v7 = 4;
      goto LABEL_34;
    }

    if (v11 != 31)
    {
      if (v11 == 200)
      {
        v7 = 8;
      }

      goto LABEL_34;
    }
  }

  else if (v11 != 6 && v11 != 7)
  {
    if (v11 == 8)
    {
      v7 = 3;
    }

    goto LABEL_34;
  }

  v7 = 7;
LABEL_34:
  v12 = _TVRCMediaEventsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = off_279D83198[v7];
    v16 = 136315650;
    v17 = "[TVRCRapportMediaEventsManager _commandForMediaButtonEvent:]";
    v18 = 2114;
    v19 = eventCopy;
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "%s event=%{public}@, command=%s", &v16, 0x20u);
  }

LABEL_37:
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)_captionSettingForButtonEvent:(id)event
{
  button = [event button];
  buttonType = [button buttonType];

  if ((buttonType - 16) > 2)
  {
    return 0;
  }

  else
  {
    return dword_26CFC88E0[buttonType - 16];
  }
}

- (void)_refreshCaptionState
{
  v10 = *MEMORY[0x277D85DE8];
  if (![(TVRCRapportMediaEventsManager *)self supportsDirectCaptionQueries])
  {
    v3 = _TVRCMediaEventsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[TVRCRapportMediaEventsManager _refreshCaptionState]";
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    mediaSession = [(TVRCRapportMediaEventsManager *)self mediaSession];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__TVRCRapportMediaEventsManager__refreshCaptionState__block_invoke;
    v6[3] = &unk_279D83108;
    objc_copyWeak(&v7, buf);
    [mediaSession mediaCaptionSettingGetFromDestinationID:*MEMORY[0x277D44228] completion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __53__TVRCRapportMediaEventsManager__refreshCaptionState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _TVRCMediaEventsLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__TVRCRapportMediaEventsManager__refreshCaptionState__block_invoke_cold_1(v5, v7);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 4)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_279D831F8[a2];
    }

    v13 = 136315138;
    v14 = v9;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Current caption setting is %s", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained setCurrentSetting:a2];
    v11 = [v7 eventHandler];

    if (v11)
    {
      v12 = [v7 eventHandler];
      v12[2]();
    }

    goto LABEL_4;
  }

LABEL_5:

  v8 = *MEMORY[0x277D85DE8];
}

- (id)supportedCaptionEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  currentSetting = [(TVRCRapportMediaEventsManager *)self currentSetting];
  if (currentSetting <= 3)
  {
    v5 = [[TVRCButton alloc] _initWithButtonType:qword_26CFC88F0[currentSetting] hasTapAction:1 properties:0];
    [v3 addObject:v5];
  }

  v6 = _TVRCMediaEventsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentSetting2 = [(TVRCRapportMediaEventsManager *)self currentSetting];
    if (currentSetting2 > 4)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_279D831F8[currentSetting2];
    }

    allObjects = [v3 allObjects];
    v10 = [allObjects componentsJoinedByString:@"\n"];
    v14 = 136315394;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "Supported Caption Events for current settings=%s, events=\n%{public}@", &v14, 0x16u);
  }

  v11 = [MEMORY[0x277CBEB98] setWithSet:v3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __63__TVRCRapportMediaEventsManager_activateWithCompletionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v2, v3, "Could not create mediaSession for companionLinkClient <%{public}@>, error - %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Could not set media caption setting for companionLinkClient, error - %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __48__TVRCRapportMediaEventsManager_sendMediaEvent___block_invoke_6_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1 <= 0xD)
  {
    v2 = off_279D83128[v1];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v3, v4, "Could not send %s, error=%{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

void __53__TVRCRapportMediaEventsManager__refreshCaptionState__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Could not get current caption settings error= %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end