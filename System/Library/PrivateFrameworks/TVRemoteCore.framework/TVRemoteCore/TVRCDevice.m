@interface TVRCDevice
- (BOOL)containsIdentifier:(id)a3;
- (BOOL)isEqualToDevice:(id)a3;
- (BOOL)isInEditingSession;
- (BOOL)supportsFindMyRemote;
- (NSSet)allIdentifiers;
- (TVRCDevice)initWithDeviceIdentifier:(id)a3;
- (TVRCDeviceDelegate)delegate;
- (id)_deviceStateDictionary;
- (id)description;
- (void)_connectWithConnectionContext:(int64_t)a3;
- (void)_deviceEncounteredAuthChallengeType:(int64_t)a3 attributes:(int64_t)a4 codeToEnterOnDevice:(id)a5 throttleSeconds:(int64_t)a6;
- (void)_deviceUpdatedState:(id)a3;
- (void)_disconnectDeviceDueToConnectionInterruption;
- (void)_sendRTIDataPayload:(id)a3;
- (void)addItemWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)disconnectWithType:(unint64_t)a3;
- (void)fetchLaunchableAppsWithCompletion:(id)a3;
- (void)fetchUpNextInfoWithPaginationToken:(id)a3 completion:(id)a4;
- (void)launchAppWithBundleID:(id)a3 completion:(id)a4;
- (void)markAsWatchedWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)playItem:(id)a3 completion:(id)a4;
- (void)removeItemWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)sendButtonEvent:(id)a3;
- (void)sendGameControllerEvent:(id)a3;
- (void)sendTouchEvent:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation TVRCDevice

- (TVRCDevice)initWithDeviceIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v20 = v4;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s identifier:%{public}@, %{public}@", buf, 0x20u);
    }

    v7 = [v4 copy];
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

- (void)setDelegate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[TVRCDevice setDelegate:]";
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s delegate:%{public}@, %{public}@", &v7, 0x20u);
  }

  objc_storeWeak(&self->_delegate, v4);
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
    v11 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  v4 = +[TVRCXPCClient sharedInstance];
  v5 = [(TVRCDevice *)self identifier];
  [v4 removeEventObserver:self forDeviceWithIdentifier:v5];

  v7.receiver = self;
  v7.super_class = TVRCDevice;
  [(TVRCDevice *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TVRCDevice *)self name];
  v5 = v4;
  if (v4)
  {
    [v3 appendFormat:@" %@", v4];
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(TVRCDevice *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = [(TVRCDevice *)self identifier];
  [v3 setObject:v5 forKeyedSubscript:@"identifier"];

  v6 = [(TVRCDevice *)self model];
  [v3 setObject:v6 forKeyedSubscript:@"model"];

  v7 = TVRCDeviceConnectionTypeDescription([(TVRCDevice *)self connectionType]);
  [v3 setObject:v7 forKeyedSubscript:@"connectionType"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRCDevice connectionState](self, "connectionState")}];
  [v3 setObject:v8 forKeyedSubscript:@"connectionState"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice isPaired](self, "isPaired")}];
  [v3 setObject:v9 forKeyedSubscript:@"paired"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice supportsDirectCaptionQueries](self, "supportsDirectCaptionQueries")}];
  [v3 setObject:v10 forKeyedSubscript:@"supportsDirectCaptionQueries"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice supportsFindMyRemote](self, "supportsFindMyRemote")}];
  [v3 setObject:v11 forKeyedSubscript:@"supportsFindMyRemote"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice supportsTouchEvents](self, "supportsTouchEvents")}];
  [v3 setObject:v12 forKeyedSubscript:@"supportsTouchEvents"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRCDevice attentionState](self, "attentionState")}];
  [v3 setObject:v13 forKeyedSubscript:@"attentionState"];

  v14 = [(TVRCDevice *)self deviceState];
  v15 = [v14 alternateIdentifiers];
  [v3 setObject:v15 forKeyedSubscript:@"alternateIdentifiers"];

  v16 = [v3 copy];

  return v16;
}

- (void)_connectWithConnectionContext:(int64_t)a3
{
  if (![(TVRCDeviceState *)self->_deviceState connectionState])
  {
    v5 = +[TVRCXPCClient sharedInstance];
    [v5 openConnectionToDeviceWithIdentifier:self->_identifier connectionContext:a3];
  }
}

- (void)disconnectWithType:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "TVRCDevice disconnecting with type: %ld", &v8, 0xCu);
  }

  [(TVRCDeviceState *)self->_deviceState setConnectionState:0];
  v6 = +[TVRCXPCClient sharedInstance];
  [v6 closeConnectionToDeviceWithIdentifier:self->_identifier withType:a3];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendButtonEvent:(id)a3
{
  v4 = a3;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendButtonEvent:v4 toDeviceWithIdentifier:self->_identifier];
}

- (void)sendTouchEvent:(id)a3
{
  v4 = a3;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendTouchEvent:v4 toDeviceWithIdentifier:self->_identifier];
}

- (void)sendGameControllerEvent:(id)a3
{
  v4 = a3;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendGameControllerEvent:v4 toDeviceWithIdentifier:self->_identifier];
}

- (BOOL)containsIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TVRCDevice *)self allIdentifiers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)isEqualToDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 info];
  v6 = [v4 identifier];

  if ([(TVRCDevice *)self containsIdentifier:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 mediaRemoteID];
    if ([(TVRCDevice *)self containsIdentifier:v8])
    {
      v7 = 1;
    }

    else
    {
      v9 = [v5 airplayID];
      v7 = [(TVRCDevice *)self containsIdentifier:v9];
    }
  }

  return v7;
}

- (void)fetchUpNextInfoWithPaginationToken:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 fetchUpNextInfoForDeviceWithIdentifier:self->_identifier paginationToken:v7 completion:v6];
}

- (void)markAsWatchedWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 markAsWatchedForDeviceWithIdentifier:self->_identifier mediaIdentifier:v7 completion:v6];
}

- (void)addItemWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 addItemForDeviceWithIdentifier:self->_identifier mediaIdentifier:v7 completion:v6];
}

- (void)removeItemWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 removeItemForDeviceWithIdentifier:self->_identifier mediaIdentifier:v7 completion:v6];
}

- (void)playItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 playItem:v7 deviceIdentifier:self->_identifier completion:v6];
}

- (void)fetchLaunchableAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 fetchLaunchableAppsForDeviceWithIdentifier:self->_identifier completion:v4];
}

- (void)launchAppWithBundleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 launchAppForDeviceWithIdentifier:self->_identifier bundleID:v7 completion:v6];
}

- (BOOL)isInEditingSession
{
  v2 = [(TVRCDeviceState *)self->_deviceState keyboardState];
  v3 = [v2 isEditing];

  return v3;
}

- (BOOL)supportsFindMyRemote
{
  if ([(TVRCDeviceState *)self->_deviceState supportsFindMyRemote])
  {
    return 1;
  }

  v4 = [(TVRCDeviceState *)self->_deviceState pairedRemoteInfo];
  v5 = [v4 supportsFindMy];

  return v5;
}

- (NSSet)allIdentifiers
{
  identifier = self->_identifier;
  if (identifier)
  {
    v4 = identifier;
  }

  else
  {
    v5 = [(TVRCDevice *)self deviceState];
    v4 = [v5 identifier];
  }

  v6 = [MEMORY[0x277CBEB58] setWithObject:v4];
  v7 = [(TVRCDevice *)self name];

  if (v7)
  {
    v8 = [(TVRCDevice *)self name];
    [v6 addObject:v8];
  }

  v9 = [(TVRCDevice *)self deviceState];
  v10 = [v9 idsIdentifier];

  if (v10)
  {
    v11 = [(TVRCDevice *)self deviceState];
    v12 = [v11 idsIdentifier];
    [v6 addObject:v12];
  }

  v13 = [(TVRCDevice *)self deviceState];
  v14 = [v13 alternateIdentifiers];
  v15 = [v14 allValues];
  [v6 addObjectsFromArray:v15];

  v16 = [v6 copy];

  return v16;
}

- (void)_deviceUpdatedState:(id)a3
{
  v124 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _TVRCGeneralLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v119 = "[TVRCDevice _deviceUpdatedState:]";
    v120 = 2048;
    v121 = self;
    v122 = 2114;
    v123 = v5;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s - device:<%p> state: %{public}@ ", buf, 0x20u);
  }

  v7 = [v5 alternateIdentifiers];
  v8 = [v7 allValues];

  v9 = MEMORY[0x277CBEB98];
  v10 = [v5 alternateIdentifiers];
  v11 = [v10 allValues];
  v12 = [v9 setWithArray:v11];

  identifier = self->_identifier;
  v14 = [v5 identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:v14];

  if ((identifier & 1) == 0)
  {
    v15 = _TVRCGeneralLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_identifier;
      v17 = [v5 identifier];
      *buf = 138412546;
      v119 = v16;
      v120 = 2112;
      v121 = v17;
      _os_log_impl(&dword_26CF7F000, v15, OS_LOG_TYPE_DEFAULT, "Identifiers do NOT match - old: %@ new: %@", buf, 0x16u);
    }

    v18 = [(TVRCDeviceState *)self->_deviceState idsIdentifier];
    v19 = [v5 idsIdentifier];
    v20 = [v18 isEqualToString:v19];

    if (v20)
    {
      v21 = _TVRCGeneralLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v22 = [(TVRCDeviceState *)self->_deviceState idsIdentifier];
      v23 = [v5 idsIdentifier];
      *buf = 138412546;
      v119 = v22;
      v120 = 2112;
      v121 = v23;
      _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "Found matching IDS identifiers - old: %@ new: %@", buf, 0x16u);
    }

    else
    {
      v24 = [(TVRCDevice *)self allIdentifiers];
      v25 = [v12 intersectsSet:v24];

      if (!v25)
      {
        goto LABEL_17;
      }

      v21 = _TVRCGeneralLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v22 = [(TVRCDevice *)self allIdentifiers];
      *buf = 138412546;
      v119 = v22;
      v120 = 2112;
      v121 = v8;
      _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "Found matching alternate identifiers - old: %@ new: %@", buf, 0x16u);
    }

LABEL_13:
    v26 = [(TVRCDeviceState *)self->_deviceState linkType];
    if (v26 == [v5 linkType])
    {
      v27 = [v5 identifier];
      v28 = _TVRCGeneralLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = self->_identifier;
        *buf = 138412546;
        v119 = v29;
        v120 = 2112;
        v121 = v27;
        _os_log_impl(&dword_26CF7F000, v28, OS_LOG_TYPE_DEFAULT, "Updating identifier - old: %@ new: %@", buf, 0x16u);
      }

      [(TVRCDevice *)self setIdentifier:v27];
    }
  }

LABEL_17:
  v30 = self->_identifier;
  v31 = [v5 identifier];
  if ([(NSString *)v30 isEqualToString:v31])
  {

    goto LABEL_20;
  }

  v32 = [(TVRCDevice *)v8 containsObject:self->_identifier];

  if (v32)
  {
LABEL_20:
    v33 = self->_deviceState;
    objc_storeStrong(&self->_deviceState, a3);
    info = self->_info;
    v35 = [v5 alternateIdentifiers];
    [(TVRCDeviceInfo *)info _populateValidIdentifiers:v35];

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
      v119 = v5;
      _os_log_impl(&dword_26CF7F000, v37, OS_LOG_TYPE_DEFAULT, "New state: %{public}@", buf, 0xCu);
    }

    if (!-[TVRCDeviceState connectionState](v33, "connectionState") && [v5 connectionState] == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v39 = objc_opt_respondsToSelector();

      if (v39)
      {
        v40 = objc_loadWeakRetained(&self->_delegate);
        [v40 deviceBeganConnecting:self];
      }
    }

    if (-[TVRCDeviceState connectionState](v33, "connectionState") != 2 && [v5 connectionState] == 2)
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

    if (-[TVRCDeviceState connectionState](v33, "connectionState") && ![v5 connectionState])
    {
      if ([v5 disconnectReason] == 1)
      {
        v46 = +[TVRCPreferredDeviceManager sharedInstance];
        v47 = [v46 preferredDevice];

        v48 = [v47 allIdentifiers];
        v49 = [v48 containsObject:self->_identifier];

        if (v49)
        {
          v50 = +[TVRCPreferredDeviceManager sharedInstance];
          [v50 setPreferredDevice:0];
        }
      }

      goto LABEL_44;
    }

    if (!-[TVRCDeviceState connectionState](v33, "connectionState") && ![v5 connectionState])
    {
      v45 = [v5 disconnectError];
      if (v45)
      {

        goto LABEL_44;
      }

      if ([v5 disconnectReason] < 5)
      {
LABEL_44:
        v51 = objc_loadWeakRetained(&self->_delegate);
        v52 = objc_opt_respondsToSelector();

        if (v52)
        {
          v53 = objc_loadWeakRetained(&self->_delegate);
          v54 = [v5 disconnectReason];
          v55 = [v5 disconnectError];
          [v53 device:self disconnectedForReason:v54 error:v55];
        }
      }
    }

    v56 = [(TVRCDeviceState *)v33 supportedButtons];
    v57 = [v5 supportedButtons];
    v58 = [v56 isEqualToSet:v57];

    if ((v58 & 1) == 0)
    {
      v59 = [(TVRCDeviceState *)v33 supportedButtons];
      v60 = [v59 mutableCopy];

      v61 = [v5 supportedButtons];
      [v60 minusSet:v61];

      v62 = [v5 supportedButtons];
      v63 = [v62 mutableCopy];

      v64 = [(TVRCDeviceState *)v33 supportedButtons];
      [v63 minusSet:v64];

      v65 = objc_loadWeakRetained(&self->_delegate);
      v66 = objc_opt_respondsToSelector();

      if (v66)
      {
        v67 = objc_loadWeakRetained(&self->_delegate);
        [v67 device:self removedSupportedButtons:v60 added:v63];
      }
    }

    v68 = [(TVRCDeviceState *)v33 name];
    v69 = [v5 name];
    v70 = [v68 isEqualToString:v69];

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

    v75 = [(TVRCDeviceState *)v33 supportsFindMyRemote];
    if (v75 != [v5 supportsFindMyRemote] || (-[TVRCDeviceState pairedRemoteInfo](v33, "pairedRemoteInfo"), v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "pairedRemoteInfo"), v77 = objc_claimAutoreleasedReturnValue(), v78 = objc_msgSend(v76, "isEqualToRemoteInfo:", v77), v77, v76, (v78 & 1) == 0))
    {
      v79 = _TVRCGeneralLog();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = [v5 supportsFindMyRemote];
        *buf = 67109120;
        LODWORD(v119) = v80;
        _os_log_impl(&dword_26CF7F000, v79, OS_LOG_TYPE_DEFAULT, "Updated supportsFindMyRemote: %d", buf, 8u);
      }

      v81 = _TVRCGeneralLog();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = [v5 pairedRemoteInfo];
        *buf = 138412290;
        v119 = v82;
        _os_log_impl(&dword_26CF7F000, v81, OS_LOG_TYPE_DEFAULT, "Updated pairedRemoteInfo: %@", buf, 0xCu);
      }

      if ([v5 supportsFindMyRemote])
      {
        v83 = 1;
      }

      else
      {
        v84 = [v5 pairedRemoteInfo];
        v83 = [v84 supportsFindMy];
      }

      v85 = objc_loadWeakRetained(&self->_delegate);
      v86 = objc_opt_respondsToSelector();

      if (v86)
      {
        v87 = objc_loadWeakRetained(&self->_delegate);
        [v87 device:self supportsFindMyRemote:v83];
      }
    }

    v88 = [(TVRCDeviceState *)v33 nowPlayingInfo];
    v89 = [v5 nowPlayingInfo];
    v90 = [v88 isEqualToNowPlayingInfo:v89];

    if ((v90 & 1) == 0)
    {
      v91 = _TVRCGeneralLog();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v92 = [v5 nowPlayingInfo];
        *buf = 138412290;
        v119 = v92;
        _os_log_impl(&dword_26CF7F000, v91, OS_LOG_TYPE_DEFAULT, "Updated nowPlayingInfo: %@", buf, 0xCu);
      }

      v93 = objc_loadWeakRetained(&self->_delegate);
      v94 = objc_opt_respondsToSelector();

      if (v94)
      {
        v95 = objc_loadWeakRetained(&self->_delegate);
        v96 = [v5 nowPlayingInfo];
        [v95 device:self updatedNowPlayingInfo:v96];
      }
    }

    v97 = [(TVRCDeviceState *)v33 siriRemoteFindingState];
    if (v97 != [v5 siriRemoteFindingState])
    {
      v98 = _TVRCGeneralLog();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v99 = [v5 siriRemoteFindingState];
        if (v99 < 7 && ((0x77u >> v99) & 1) != 0)
        {
          v100 = off_279D82B48[v99];
        }

        else
        {
          v101 = MEMORY[0x277CCACA8];
          v102 = [MEMORY[0x277CCABB0] numberWithInteger:v99];
          v100 = [v101 stringWithFormat:@"Unknown %@", v102];
        }

        v103 = v100;
        *buf = 138543362;
        v119 = v103;
        _os_log_impl(&dword_26CF7F000, v98, OS_LOG_TYPE_DEFAULT, "Updated siriRemoteFindingState: %{public}@", buf, 0xCu);
      }

      v104 = objc_loadWeakRetained(&self->_delegate);
      v105 = objc_opt_respondsToSelector();

      if (v105)
      {
        v106 = objc_loadWeakRetained(&self->_delegate);
        [v106 device:self updatedSiriRemoteFindingSessionState:{objc_msgSend(v5, "siriRemoteFindingState")}];
      }
    }

    v107 = [(TVRCDeviceState *)v33 attentionState];
    if (v107 != [v5 attentionState])
    {
      v108 = _TVRCGeneralLog();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = [v5 attentionState];
        if ((v109 - 1) >= 3)
        {
          v110 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", v109];
        }

        else
        {
          v110 = off_279D82B80[v109 - 1];
        }

        v111 = v110;
        *buf = 138543362;
        v119 = v111;
        _os_log_impl(&dword_26CF7F000, v108, OS_LOG_TYPE_DEFAULT, "Updated attentionState: %{public}@", buf, 0xCu);
      }

      v112 = objc_loadWeakRetained(&self->_delegate);
      v113 = objc_opt_respondsToSelector();

      if (v113)
      {
        v114 = objc_loadWeakRetained(&self->_delegate);
        [v114 device:self updatedAttentionState:{objc_msgSend(v5, "attentionState")}];
      }
    }

LABEL_87:
    keyboardController = self->_keyboardController;
    v116 = [v5 keyboardState];
    [(TVRCKeyboardController *)keyboardController _setCurrentState:v116];
  }

  v117 = *MEMORY[0x277D85DE8];
}

- (void)_deviceEncounteredAuthChallengeType:(int64_t)a3 attributes:(int64_t)a4 codeToEnterOnDevice:(id)a5 throttleSeconds:(int64_t)a6
{
  v10 = a5;
  objc_copyWeak(&to, &self->_delegate);
  v11 = objc_loadWeakRetained(&to);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [[TVRCDeviceAuthenticationChallenge alloc] _initWithDeviceIdentifier:self->_identifier challengeType:a3 codeToEnterOnDevice:v10];
    [v13 setChallengeAttributes:a4];
    [v13 setThrottleSeconds:a6];
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

- (void)_sendRTIDataPayload:(id)a3
{
  v4 = a3;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendInputTextPayload:v4 toDeviceWithIdentifier:self->_identifier];
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