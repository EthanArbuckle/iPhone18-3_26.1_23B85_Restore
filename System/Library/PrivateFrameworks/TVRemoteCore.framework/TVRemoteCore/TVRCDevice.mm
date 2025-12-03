@interface TVRCDevice
- (BOOL)containsIdentifier:(id)identifier;
- (BOOL)isEqualToDevice:(id)device;
- (BOOL)isInEditingSession;
- (BOOL)supportsFindMyRemote;
- (NSSet)allIdentifiers;
- (TVRCDevice)initWithDeviceIdentifier:(id)identifier;
- (TVRCDeviceDelegate)delegate;
- (id)_deviceStateDictionary;
- (id)description;
- (void)_connectWithConnectionContext:(int64_t)context;
- (void)_deviceEncounteredAuthChallengeType:(int64_t)type attributes:(int64_t)attributes codeToEnterOnDevice:(id)device throttleSeconds:(int64_t)seconds;
- (void)_deviceUpdatedState:(id)state;
- (void)_disconnectDeviceDueToConnectionInterruption;
- (void)_sendRTIDataPayload:(id)payload;
- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)dealloc;
- (void)disconnectWithType:(unint64_t)type;
- (void)fetchLaunchableAppsWithCompletion:(id)completion;
- (void)fetchUpNextInfoWithPaginationToken:(id)token completion:(id)completion;
- (void)launchAppWithBundleID:(id)d completion:(id)completion;
- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)playItem:(id)item completion:(id)completion;
- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)sendButtonEvent:(id)event;
- (void)sendGameControllerEvent:(id)event;
- (void)sendTouchEvent:(id)event;
- (void)setDelegate:(id)delegate;
@end

@implementation TVRCDevice

- (TVRCDevice)initWithDeviceIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = TVRCDevice;
  v5 = [(TVRCDevice *)&v16 init];
  if (v5)
  {
    v6 = _TVRCGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "[TVRCDevice initWithDeviceIdentifier:]";
      v19 = 2114;
      v20 = identifierCopy;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s identifier:%{public}@, %{public}@", buf, 0x20u);
    }

    v7 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [[TVRCKeyboardController alloc] _initWithDevice:v5];
    keyboardController = v5->_keyboardController;
    v5->_keyboardController = v9;

    v11 = objc_alloc_init(TVRCDeviceInfo);
    info = v5->_info;
    v5->_info = v11;

    v13 = +[TVRCXPCClient sharedInstance];
    [v13 addEventObserver:v5 forDeviceWithIdentifier:v5->_identifier];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setDelegate:(id)delegate
{
  v13 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[TVRCDevice setDelegate:]";
    v9 = 2114;
    v10 = delegateCopy;
    v11 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s delegate:%{public}@, %{public}@", &v7, 0x20u);
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[TVRCDevice dealloc]";
    v10 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  v4 = +[TVRCXPCClient sharedInstance];
  identifier = [(TVRCDevice *)self identifier];
  [v4 removeEventObserver:self forDeviceWithIdentifier:identifier];

  v7.receiver = self;
  v7.super_class = TVRCDevice;
  [(TVRCDevice *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ %p", objc_opt_class(), self];
  name = [(TVRCDevice *)self name];
  v5 = name;
  if (name)
  {
    [v3 appendFormat:@" %@", name];
  }

  if (self->_identifier)
  {
    [v3 appendFormat:@"; identifier=%@", self->_identifier];
  }

  if (self->_info)
  {
    [v3 appendFormat:@"; info=%@", self->_info];
  }

  v6 = TVRCDeviceConnectionTypeDescription([(TVRCDevice *)self connectionType]);
  [v3 appendFormat:@"; connectionType=%@", v6];

  if ([(TVRCDevice *)self classification])
  {
    v7 = TVRCDeviceClassificationDescription([(TVRCDevice *)self classification]);
    [v3 appendFormat:@"; suggestion=%@", v7];
  }

  if ([(TVRCDevice *)self linkType])
  {
    v8 = TVRCDeviceLinkTypeDescription([(TVRCDevice *)self linkType]);
    [v3 appendFormat:@"; linkType=%@", v8];
  }

  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (id)_deviceStateDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(TVRCDevice *)self name];
  [dictionary setObject:name forKeyedSubscript:@"name"];

  identifier = [(TVRCDevice *)self identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"identifier"];

  model = [(TVRCDevice *)self model];
  [dictionary setObject:model forKeyedSubscript:@"model"];

  v7 = TVRCDeviceConnectionTypeDescription([(TVRCDevice *)self connectionType]);
  [dictionary setObject:v7 forKeyedSubscript:@"connectionType"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRCDevice connectionState](self, "connectionState")}];
  [dictionary setObject:v8 forKeyedSubscript:@"connectionState"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice isPaired](self, "isPaired")}];
  [dictionary setObject:v9 forKeyedSubscript:@"paired"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice supportsDirectCaptionQueries](self, "supportsDirectCaptionQueries")}];
  [dictionary setObject:v10 forKeyedSubscript:@"supportsDirectCaptionQueries"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice supportsFindMyRemote](self, "supportsFindMyRemote")}];
  [dictionary setObject:v11 forKeyedSubscript:@"supportsFindMyRemote"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice supportsTouchEvents](self, "supportsTouchEvents")}];
  [dictionary setObject:v12 forKeyedSubscript:@"supportsTouchEvents"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRCDevice attentionState](self, "attentionState")}];
  [dictionary setObject:v13 forKeyedSubscript:@"attentionState"];

  deviceState = [(TVRCDevice *)self deviceState];
  alternateIdentifiers = [deviceState alternateIdentifiers];
  [dictionary setObject:alternateIdentifiers forKeyedSubscript:@"alternateIdentifiers"];

  v16 = [dictionary copy];

  return v16;
}

- (void)_connectWithConnectionContext:(int64_t)context
{
  if (![(TVRCDeviceState *)self->_deviceState connectionState])
  {
    v5 = +[TVRCXPCClient sharedInstance];
    [v5 openConnectionToDeviceWithIdentifier:self->_identifier connectionContext:context];
  }
}

- (void)disconnectWithType:(unint64_t)type
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "TVRCDevice disconnecting with type: %ld", &v8, 0xCu);
  }

  [(TVRCDeviceState *)self->_deviceState setConnectionState:0];
  v6 = +[TVRCXPCClient sharedInstance];
  [v6 closeConnectionToDeviceWithIdentifier:self->_identifier withType:type];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendButtonEvent:(id)event
{
  eventCopy = event;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendButtonEvent:eventCopy toDeviceWithIdentifier:self->_identifier];
}

- (void)sendTouchEvent:(id)event
{
  eventCopy = event;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendTouchEvent:eventCopy toDeviceWithIdentifier:self->_identifier];
}

- (void)sendGameControllerEvent:(id)event
{
  eventCopy = event;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendGameControllerEvent:eventCopy toDeviceWithIdentifier:self->_identifier];
}

- (BOOL)containsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allIdentifiers = [(TVRCDevice *)self allIdentifiers];
  v6 = [allIdentifiers containsObject:identifierCopy];

  return v6;
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  info = [deviceCopy info];
  identifier = [deviceCopy identifier];

  if ([(TVRCDevice *)self containsIdentifier:identifier])
  {
    v7 = 1;
  }

  else
  {
    mediaRemoteID = [info mediaRemoteID];
    if ([(TVRCDevice *)self containsIdentifier:mediaRemoteID])
    {
      v7 = 1;
    }

    else
    {
      airplayID = [info airplayID];
      v7 = [(TVRCDevice *)self containsIdentifier:airplayID];
    }
  }

  return v7;
}

- (void)fetchUpNextInfoWithPaginationToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 fetchUpNextInfoForDeviceWithIdentifier:self->_identifier paginationToken:tokenCopy completion:completionCopy];
}

- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 markAsWatchedForDeviceWithIdentifier:self->_identifier mediaIdentifier:identifierCopy completion:completionCopy];
}

- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 addItemForDeviceWithIdentifier:self->_identifier mediaIdentifier:identifierCopy completion:completionCopy];
}

- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 removeItemForDeviceWithIdentifier:self->_identifier mediaIdentifier:identifierCopy completion:completionCopy];
}

- (void)playItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 playItem:itemCopy deviceIdentifier:self->_identifier completion:completionCopy];
}

- (void)fetchLaunchableAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 fetchLaunchableAppsForDeviceWithIdentifier:self->_identifier completion:completionCopy];
}

- (void)launchAppWithBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 launchAppForDeviceWithIdentifier:self->_identifier bundleID:dCopy completion:completionCopy];
}

- (BOOL)isInEditingSession
{
  keyboardState = [(TVRCDeviceState *)self->_deviceState keyboardState];
  isEditing = [keyboardState isEditing];

  return isEditing;
}

- (BOOL)supportsFindMyRemote
{
  if ([(TVRCDeviceState *)self->_deviceState supportsFindMyRemote])
  {
    return 1;
  }

  pairedRemoteInfo = [(TVRCDeviceState *)self->_deviceState pairedRemoteInfo];
  supportsFindMy = [pairedRemoteInfo supportsFindMy];

  return supportsFindMy;
}

- (NSSet)allIdentifiers
{
  identifier = self->_identifier;
  if (identifier)
  {
    identifier = identifier;
  }

  else
  {
    deviceState = [(TVRCDevice *)self deviceState];
    identifier = [deviceState identifier];
  }

  v6 = [MEMORY[0x277CBEB58] setWithObject:identifier];
  name = [(TVRCDevice *)self name];

  if (name)
  {
    name2 = [(TVRCDevice *)self name];
    [v6 addObject:name2];
  }

  deviceState2 = [(TVRCDevice *)self deviceState];
  idsIdentifier = [deviceState2 idsIdentifier];

  if (idsIdentifier)
  {
    deviceState3 = [(TVRCDevice *)self deviceState];
    idsIdentifier2 = [deviceState3 idsIdentifier];
    [v6 addObject:idsIdentifier2];
  }

  deviceState4 = [(TVRCDevice *)self deviceState];
  alternateIdentifiers = [deviceState4 alternateIdentifiers];
  allValues = [alternateIdentifiers allValues];
  [v6 addObjectsFromArray:allValues];

  v16 = [v6 copy];

  return v16;
}

- (void)_deviceUpdatedState:(id)state
{
  v124 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = _TVRCGeneralLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v119 = "[TVRCDevice _deviceUpdatedState:]";
    v120 = 2048;
    selfCopy = self;
    v122 = 2114;
    v123 = stateCopy;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s - device:<%p> state: %{public}@ ", buf, 0x20u);
  }

  alternateIdentifiers = [stateCopy alternateIdentifiers];
  allValues = [alternateIdentifiers allValues];

  v9 = MEMORY[0x277CBEB98];
  alternateIdentifiers2 = [stateCopy alternateIdentifiers];
  allValues2 = [alternateIdentifiers2 allValues];
  v12 = [v9 setWithArray:allValues2];

  identifier = self->_identifier;
  identifier = [stateCopy identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:identifier];

  if ((identifier & 1) == 0)
  {
    v15 = _TVRCGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_identifier;
      identifier2 = [stateCopy identifier];
      *buf = 138412546;
      v119 = v16;
      v120 = 2112;
      selfCopy = identifier2;
      _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "Identifiers do NOT match - old: %@ new: %@", buf, 0x16u);
    }

    idsIdentifier = [(TVRCDeviceState *)self->_deviceState idsIdentifier];
    idsIdentifier2 = [stateCopy idsIdentifier];
    v20 = [idsIdentifier isEqualToString:idsIdentifier2];

    if (v20)
    {
      v21 = _TVRCGeneralLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      idsIdentifier3 = [(TVRCDeviceState *)self->_deviceState idsIdentifier];
      idsIdentifier4 = [stateCopy idsIdentifier];
      *buf = 138412546;
      v119 = idsIdentifier3;
      v120 = 2112;
      selfCopy = idsIdentifier4;
      _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "Found matching IDS identifiers - old: %@ new: %@", buf, 0x16u);
    }

    else
    {
      allIdentifiers = [(TVRCDevice *)self allIdentifiers];
      v25 = [v12 intersectsSet:allIdentifiers];

      if (!v25)
      {
        goto LABEL_17;
      }

      v21 = _TVRCGeneralLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      idsIdentifier3 = [(TVRCDevice *)self allIdentifiers];
      *buf = 138412546;
      v119 = idsIdentifier3;
      v120 = 2112;
      selfCopy = allValues;
      _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "Found matching alternate identifiers - old: %@ new: %@", buf, 0x16u);
    }

LABEL_13:
    linkType = [(TVRCDeviceState *)self->_deviceState linkType];
    if (linkType == [stateCopy linkType])
    {
      identifier3 = [stateCopy identifier];
      v28 = _TVRCGeneralLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = self->_identifier;
        *buf = 138412546;
        v119 = v29;
        v120 = 2112;
        selfCopy = identifier3;
        _os_log_impl(&dword_26CF7F000, v28, OS_LOG_TYPE_DEFAULT, "Updating identifier - old: %@ new: %@", buf, 0x16u);
      }

      [(TVRCDevice *)self setIdentifier:identifier3];
    }
  }

LABEL_17:
  v30 = self->_identifier;
  identifier4 = [stateCopy identifier];
  if ([(NSString *)v30 isEqualToString:identifier4])
  {

    goto LABEL_20;
  }

  v32 = [(TVRCDevice *)allValues containsObject:self->_identifier];

  if (v32)
  {
LABEL_20:
    v33 = self->_deviceState;
    objc_storeStrong(&self->_deviceState, state);
    info = self->_info;
    alternateIdentifiers3 = [stateCopy alternateIdentifiers];
    [(TVRCDeviceInfo *)info _populateValidIdentifiers:alternateIdentifiers3];

    v36 = _TVRCGeneralLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v119 = v33;
      _os_log_impl(&dword_26CF7F000, v36, OS_LOG_TYPE_DEFAULT, "Old state: %{public}@", buf, 0xCu);
    }

    v37 = _TVRCGeneralLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v119 = stateCopy;
      _os_log_impl(&dword_26CF7F000, v37, OS_LOG_TYPE_DEFAULT, "New state: %{public}@", buf, 0xCu);
    }

    if (!-[TVRCDeviceState connectionState](v33, "connectionState") && [stateCopy connectionState] == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v39 = objc_opt_respondsToSelector();

      if (v39)
      {
        v40 = objc_loadWeakRetained(&self->_delegate);
        [v40 deviceBeganConnecting:self];
      }
    }

    if (-[TVRCDeviceState connectionState](v33, "connectionState") != 2 && [stateCopy connectionState] == 2)
    {
      v41 = objc_loadWeakRetained(&self->_delegate);
      v42 = objc_opt_respondsToSelector();

      if (v42)
      {
        v43 = objc_loadWeakRetained(&self->_delegate);
        [v43 deviceConnected:self];
      }

      v44 = +[TVRCPreferredDeviceManager sharedInstance];
      [v44 setPreferredDevice:self];
    }

    if (!v33)
    {
      goto LABEL_87;
    }

    if (-[TVRCDeviceState connectionState](v33, "connectionState") && ![stateCopy connectionState])
    {
      if ([stateCopy disconnectReason] == 1)
      {
        v46 = +[TVRCPreferredDeviceManager sharedInstance];
        preferredDevice = [v46 preferredDevice];

        allIdentifiers2 = [preferredDevice allIdentifiers];
        v49 = [allIdentifiers2 containsObject:self->_identifier];

        if (v49)
        {
          v50 = +[TVRCPreferredDeviceManager sharedInstance];
          [v50 setPreferredDevice:0];
        }
      }

      goto LABEL_44;
    }

    if (!-[TVRCDeviceState connectionState](v33, "connectionState") && ![stateCopy connectionState])
    {
      disconnectError = [stateCopy disconnectError];
      if (disconnectError)
      {

        goto LABEL_44;
      }

      if ([stateCopy disconnectReason] < 5)
      {
LABEL_44:
        v51 = objc_loadWeakRetained(&self->_delegate);
        v52 = objc_opt_respondsToSelector();

        if (v52)
        {
          v53 = objc_loadWeakRetained(&self->_delegate);
          disconnectReason = [stateCopy disconnectReason];
          disconnectError2 = [stateCopy disconnectError];
          [v53 device:self disconnectedForReason:disconnectReason error:disconnectError2];
        }
      }
    }

    supportedButtons = [(TVRCDeviceState *)v33 supportedButtons];
    supportedButtons2 = [stateCopy supportedButtons];
    v58 = [supportedButtons isEqualToSet:supportedButtons2];

    if ((v58 & 1) == 0)
    {
      supportedButtons3 = [(TVRCDeviceState *)v33 supportedButtons];
      v60 = [supportedButtons3 mutableCopy];

      supportedButtons4 = [stateCopy supportedButtons];
      [v60 minusSet:supportedButtons4];

      supportedButtons5 = [stateCopy supportedButtons];
      v63 = [supportedButtons5 mutableCopy];

      supportedButtons6 = [(TVRCDeviceState *)v33 supportedButtons];
      [v63 minusSet:supportedButtons6];

      v65 = objc_loadWeakRetained(&self->_delegate);
      v66 = objc_opt_respondsToSelector();

      if (v66)
      {
        v67 = objc_loadWeakRetained(&self->_delegate);
        [v67 device:self removedSupportedButtons:v60 added:v63];
      }
    }

    name = [(TVRCDeviceState *)v33 name];
    name2 = [stateCopy name];
    v70 = [name isEqualToString:name2];

    if ((v70 & 1) == 0)
    {
      v71 = objc_loadWeakRetained(&self->_delegate);
      v72 = objc_opt_respondsToSelector();

      if (v72)
      {
        v73 = objc_loadWeakRetained(&self->_delegate);
        [v73 deviceNameChanged:self];
      }

      v74 = +[TVRCPreferredDeviceManager sharedInstance];
      [v74 setPreferredDevice:self];
    }

    supportsFindMyRemote = [(TVRCDeviceState *)v33 supportsFindMyRemote];
    if (supportsFindMyRemote != [stateCopy supportsFindMyRemote] || (-[TVRCDeviceState pairedRemoteInfo](v33, "pairedRemoteInfo"), v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend(stateCopy, "pairedRemoteInfo"), v77 = objc_claimAutoreleasedReturnValue(), v78 = objc_msgSend(v76, "isEqualToRemoteInfo:", v77), v77, v76, (v78 & 1) == 0))
    {
      v79 = _TVRCGeneralLog();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        supportsFindMyRemote2 = [stateCopy supportsFindMyRemote];
        *buf = 67109120;
        LODWORD(v119) = supportsFindMyRemote2;
        _os_log_impl(&dword_26CF7F000, v79, OS_LOG_TYPE_DEFAULT, "Updated supportsFindMyRemote: %d", buf, 8u);
      }

      v81 = _TVRCGeneralLog();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        pairedRemoteInfo = [stateCopy pairedRemoteInfo];
        *buf = 138412290;
        v119 = pairedRemoteInfo;
        _os_log_impl(&dword_26CF7F000, v81, OS_LOG_TYPE_DEFAULT, "Updated pairedRemoteInfo: %@", buf, 0xCu);
      }

      if ([stateCopy supportsFindMyRemote])
      {
        supportsFindMy = 1;
      }

      else
      {
        pairedRemoteInfo2 = [stateCopy pairedRemoteInfo];
        supportsFindMy = [pairedRemoteInfo2 supportsFindMy];
      }

      v85 = objc_loadWeakRetained(&self->_delegate);
      v86 = objc_opt_respondsToSelector();

      if (v86)
      {
        v87 = objc_loadWeakRetained(&self->_delegate);
        [v87 device:self supportsFindMyRemote:supportsFindMy];
      }
    }

    nowPlayingInfo = [(TVRCDeviceState *)v33 nowPlayingInfo];
    nowPlayingInfo2 = [stateCopy nowPlayingInfo];
    v90 = [nowPlayingInfo isEqualToNowPlayingInfo:nowPlayingInfo2];

    if ((v90 & 1) == 0)
    {
      v91 = _TVRCGeneralLog();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        nowPlayingInfo3 = [stateCopy nowPlayingInfo];
        *buf = 138412290;
        v119 = nowPlayingInfo3;
        _os_log_impl(&dword_26CF7F000, v91, OS_LOG_TYPE_DEFAULT, "Updated nowPlayingInfo: %@", buf, 0xCu);
      }

      v93 = objc_loadWeakRetained(&self->_delegate);
      v94 = objc_opt_respondsToSelector();

      if (v94)
      {
        v95 = objc_loadWeakRetained(&self->_delegate);
        nowPlayingInfo4 = [stateCopy nowPlayingInfo];
        [v95 device:self updatedNowPlayingInfo:nowPlayingInfo4];
      }
    }

    siriRemoteFindingState = [(TVRCDeviceState *)v33 siriRemoteFindingState];
    if (siriRemoteFindingState != [stateCopy siriRemoteFindingState])
    {
      v98 = _TVRCGeneralLog();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        siriRemoteFindingState2 = [stateCopy siriRemoteFindingState];
        if (siriRemoteFindingState2 < 7 && ((0x77u >> siriRemoteFindingState2) & 1) != 0)
        {
          v102 = off_279D82B48[siriRemoteFindingState2];
        }

        else
        {
          v101 = MEMORY[0x277CCACA8];
          v102 = [MEMORY[0x277CCABB0] numberWithInteger:siriRemoteFindingState2];
          v102 = [v101 stringWithFormat:@"Unknown %@", v102];
        }

        v103 = v102;
        *buf = 138543362;
        v119 = v103;
        _os_log_impl(&dword_26CF7F000, v98, OS_LOG_TYPE_DEFAULT, "Updated siriRemoteFindingState: %{public}@", buf, 0xCu);
      }

      v104 = objc_loadWeakRetained(&self->_delegate);
      v105 = objc_opt_respondsToSelector();

      if (v105)
      {
        v106 = objc_loadWeakRetained(&self->_delegate);
        [v106 device:self updatedSiriRemoteFindingSessionState:{objc_msgSend(stateCopy, "siriRemoteFindingState")}];
      }
    }

    attentionState = [(TVRCDeviceState *)v33 attentionState];
    if (attentionState != [stateCopy attentionState])
    {
      v108 = _TVRCGeneralLog();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        attentionState2 = [stateCopy attentionState];
        if ((attentionState2 - 1) >= 3)
        {
          v109 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", attentionState2];
        }

        else
        {
          v109 = off_279D82B80[attentionState2 - 1];
        }

        v111 = v109;
        *buf = 138543362;
        v119 = v111;
        _os_log_impl(&dword_26CF7F000, v108, OS_LOG_TYPE_DEFAULT, "Updated attentionState: %{public}@", buf, 0xCu);
      }

      v112 = objc_loadWeakRetained(&self->_delegate);
      v113 = objc_opt_respondsToSelector();

      if (v113)
      {
        v114 = objc_loadWeakRetained(&self->_delegate);
        [v114 device:self updatedAttentionState:{objc_msgSend(stateCopy, "attentionState")}];
      }
    }

LABEL_87:
    keyboardController = self->_keyboardController;
    keyboardState = [stateCopy keyboardState];
    [(TVRCKeyboardController *)keyboardController _setCurrentState:keyboardState];
  }

  v117 = *MEMORY[0x277D85DE8];
}

- (void)_deviceEncounteredAuthChallengeType:(int64_t)type attributes:(int64_t)attributes codeToEnterOnDevice:(id)device throttleSeconds:(int64_t)seconds
{
  deviceCopy = device;
  objc_copyWeak(&to, &self->_delegate);
  v11 = objc_loadWeakRetained(&to);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [[TVRCDeviceAuthenticationChallenge alloc] _initWithDeviceIdentifier:self->_identifier challengeType:type codeToEnterOnDevice:deviceCopy];
    [v13 setChallengeAttributes:attributes];
    [v13 setThrottleSeconds:seconds];
    v14 = objc_loadWeakRetained(&to);
    [v14 device:self encounteredAuthenticationChallenge:v13];
  }

  else
  {
    v13 = _TVRCGeneralLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [TVRCDevice _deviceEncounteredAuthChallengeType:v13 attributes:? codeToEnterOnDevice:? throttleSeconds:?];
    }
  }

  objc_destroyWeak(&to);
}

- (void)_disconnectDeviceDueToConnectionInterruption
{
  [(TVRCDeviceState *)self->_deviceState setConnectionState:0];
  if ([(TVRCDeviceState *)self->_deviceState connectionState]== 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 device:self disconnectedForReason:4 error:0];
    }
  }
}

- (void)_sendRTIDataPayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendInputTextPayload:payloadCopy toDeviceWithIdentifier:self->_identifier];
}

- (TVRCDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_deviceEncounteredAuthChallengeType:(uint64_t)a1 attributes:(NSObject *)a2 codeToEnterOnDevice:throttleSeconds:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_FAULT, "There is no delegate for device %@ to receive the auth challenge", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end