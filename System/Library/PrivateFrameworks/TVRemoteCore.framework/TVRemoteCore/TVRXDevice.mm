@interface TVRXDevice
- (BOOL)_authenticationIsSupported;
- (BOOL)containsIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTVRXDevice:(id)device;
- (BOOL)paired;
- (BOOL)supportsDirectCaptionQueries;
- (BOOL)supportsFindMyRemote;
- (BOOL)supportsTouchEvents;
- (NSDictionary)alternateIdentifiers;
- (NSSet)allIdentifiers;
- (NSString)description;
- (NSString)extendedDescription;
- (NSString)idsIdentifier;
- (NSString)model;
- (TVRCNowPlayingInfo)nowPlayingInfo;
- (TVRCSiriRemoteInfo)pairedRemoteInfo;
- (TVRXKeyboardController)keyboardController;
- (_TVRCDeviceImpl)_impl;
- (_TVRXDeviceDelegate)delegate;
- (id)_init;
- (id)preferredImpl;
- (id)stateDictionary;
- (int64_t)attentionState;
- (int64_t)connectionState;
- (int64_t)connectionType;
- (int64_t)linkType;
- (int64_t)siriRemoteFindingState;
- (unint64_t)hash;
- (unint64_t)pairingCapability;
- (void)_connectionAttemptSucceeded;
- (void)_deviceUpdateAttentionState;
- (void)_deviceUpdateSiriRemoteFindingState;
- (void)_disconnected:(int64_t)_disconnected error:(id)error;
- (void)_encounteredAuthenticationChallenge:(id)challenge;
- (void)_reevaluate;
- (void)_setActiveEndpoint;
- (void)_setDeviceName:(id)name;
- (void)_setIdentifier:(id)identifier name:(id)name supportedButtons:(id)buttons;
- (void)_setImpl:(id)impl;
- (void)_setNowPlayingInfo:(id)info;
- (void)_setPairedRemoteInfo:(id)info;
- (void)_setSupportedButtons:(id)buttons;
- (void)_updateDeviceProperties;
- (void)addDeviceImpl:(id)impl;
- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)fetchLaunchableAppsWithCompletion:(id)completion;
- (void)fetchUpNextInfoWithPaginationToken:(id)token completion:(id)completion;
- (void)launchAppWithBundleID:(id)d completion:(id)completion;
- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)playItem:(id)item completion:(id)completion;
- (void)removeDeviceImpl:(id)impl;
- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)sendButtonEvent:(id)event;
- (void)sendEvent:(id)event options:(id)options response:(id)response;
- (void)sendGameControllerEvent:(id)event;
- (void)sendTouchEvent:(id)event;
- (void)setDelegate:(id)delegate;
@end

@implementation TVRXDevice

- (id)_init
{
  v6.receiver = self;
  v6.super_class = TVRXDevice;
  v2 = [(TVRXDevice *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    deviceImplSet = v2->_deviceImplSet;
    v2->_deviceImplSet = v3;
  }

  return v2;
}

- (void)addDeviceImpl:(id)impl
{
  v13 = *MEMORY[0x277D85DE8];
  implCopy = impl;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[TVRXDevice addDeviceImpl:]";
    v9 = 2112;
    v10 = implCopy;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s impl: %@ for device: %@", &v7, 0x20u);
  }

  [(NSMutableSet *)self->_deviceImplSet addObject:implCopy];
  [(TVRXDevice *)self _reevaluate];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeDeviceImpl:(id)impl
{
  v13 = *MEMORY[0x277D85DE8];
  implCopy = impl;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[TVRXDevice removeDeviceImpl:]";
    v9 = 2112;
    v10 = implCopy;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s impl: %@ for device: %@", &v7, 0x20u);
  }

  [(NSMutableSet *)self->_deviceImplSet removeObject:implCopy];
  [(TVRXDevice *)self _reevaluate];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)preferredImpl
{
  v14[1] = *MEMORY[0x277D85DE8];
  deviceImplSet = self->_deviceImplSet;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"linkType" ascending:0];
  v14[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v5 = [(NSMutableSet *)deviceImplSet sortedArrayUsingDescriptors:v4];

  v6 = _TVRCGeneralLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[TVRXDevice preferredImpl]";
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s sortedImpls: %{public}@", &v10, 0x16u);
  }

  firstObject = [v5 firstObject];

  v8 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)_reevaluate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[TVRXDevice _reevaluate]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  preferredImpl = [(TVRXDevice *)self preferredImpl];
  _impl = [(TVRXDevice *)self _impl];
  if (!_impl)
  {
    goto LABEL_6;
  }

  preferredImpl2 = _impl;
  if (!preferredImpl)
  {
LABEL_7:

    goto LABEL_8;
  }

  _impl2 = [(TVRXDevice *)self _impl];

  if (_impl2 != preferredImpl)
  {
LABEL_6:
    preferredImpl2 = [(TVRXDevice *)self preferredImpl];
    [(TVRXDevice *)self _setImpl:preferredImpl2];
    goto LABEL_7;
  }

LABEL_8:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendButtonEvent:(id)event
{
  eventCopy = event;
  button = [eventCopy button];
  isEnabled = [button isEnabled];

  if (isEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_impl);
    [WeakRetained sendButtonEvent:eventCopy];
  }
}

- (void)sendTouchEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  [WeakRetained sendTouchEvent:eventCopy];
}

- (void)sendGameControllerEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  [WeakRetained sendGameControllerEvent:eventCopy];
}

- (TVRXKeyboardController)keyboardController
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  keyboardController = [WeakRetained keyboardController];

  return keyboardController;
}

- (unint64_t)pairingCapability
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  pairingCapability = [WeakRetained pairingCapability];

  return pairingCapability;
}

- (BOOL)supportsDirectCaptionQueries
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  supportsDirectCaptionQueries = [WeakRetained supportsDirectCaptionQueries];

  return supportsDirectCaptionQueries;
}

- (BOOL)supportsFindMyRemote
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  supportsFindMyRemote = [WeakRetained supportsFindMyRemote];

  return supportsFindMyRemote;
}

- (BOOL)supportsTouchEvents
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  supportsTouchEvents = [WeakRetained supportsTouchEvents];

  return supportsTouchEvents;
}

- (int64_t)connectionState
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  connectionState = [WeakRetained connectionState];

  return connectionState;
}

- (BOOL)paired
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_impl);
  isPaired = [v5 isPaired];

  return isPaired;
}

- (void)connect
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    selfCopy4 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> was asked to connect.", &v13, 0xCu);
  }

  if ([(TVRXDevice *)self connectionState])
  {
    v4 = _TVRCGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      connectionState = [(TVRXDevice *)self connectionState];
      v13 = 134218240;
      selfCopy4 = self;
      v15 = 2048;
      v16 = connectionState;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> device is not in the disconnected state, ignoring connect request. Current state is %ld", &v13, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  _authenticationIsSupported = [(TVRXDevice *)self _authenticationIsSupported];
  v7 = _TVRCGeneralLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    selfCopy4 = self;
    v15 = 1024;
    LODWORD(v16) = _authenticationIsSupported;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> will allow authentication challenge: %d", &v13, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_impl);
  [WeakRetained setAuthenticationSupported:_authenticationIsSupported];

  v9 = objc_loadWeakRetained(&self->_impl);
  [v9 connect];

  v10 = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(WeakRetained) = objc_opt_respondsToSelector();

  if (WeakRetained)
  {
    v11 = _TVRCGeneralLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      selfCopy4 = self;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> informing delegate that device began connecting.", &v13, 0xCu);
    }

    v4 = objc_loadWeakRetained(&self->_delegate);
    [v4 deviceBeganConnecting:self];
    goto LABEL_12;
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)disconnect
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> was asked to disconnect.", &v10, 0xCu);
  }

  if (![(TVRXDevice *)self connectionState])
  {
    v8 = _TVRCGeneralLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> device is already in the disconnected state, ignoring disconnect request.", &v10, 0xCu);
    }

    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_impl);
  [WeakRetained disconnect];

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _TVRCGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> informing delegate that device disconnected (user-initiated).", &v10, 0xCu);
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 device:self disconnectedForReason:0 error:0];
LABEL_10:
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSSet)allIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  allIdentifiers = [WeakRetained allIdentifiers];

  return allIdentifiers;
}

- (BOOL)containsIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allIdentifiers = [(TVRXDevice *)self allIdentifiers];
  v6 = [allIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allIdentifiers);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:identifierCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [allIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int64_t)connectionType
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  connectionType = [WeakRetained connectionType];

  return connectionType;
}

- (int64_t)linkType
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_impl);
  linkType = [v5 linkType];

  return linkType;
}

- (int64_t)attentionState
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_impl);
  deviceAttentionState = [v5 deviceAttentionState];

  return deviceAttentionState;
}

- (TVRCSiriRemoteInfo)pairedRemoteInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_impl);
    pairedRemoteInfo = [v5 pairedRemoteInfo];
  }

  else
  {
    pairedRemoteInfo = 0;
  }

  return pairedRemoteInfo;
}

- (TVRCNowPlayingInfo)nowPlayingInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_impl);
    nowPlayingInfo = [v5 nowPlayingInfo];
  }

  else
  {
    nowPlayingInfo = 0;
  }

  return nowPlayingInfo;
}

- (NSDictionary)alternateIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  alternateIdentifiers = [WeakRetained alternateIdentifiers];

  return alternateIdentifiers;
}

- (NSString)idsIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_impl);
    idsIdentifier = [v5 idsIdentifier];
  }

  else
  {
    idsIdentifier = 0;
  }

  return idsIdentifier;
}

- (NSString)model
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  model = [WeakRetained model];

  return model;
}

- (int64_t)siriRemoteFindingState
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_impl);
  siriRemoteFindingState = [v5 siriRemoteFindingState];

  return siriRemoteFindingState;
}

- (void)_updateDeviceProperties
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  identifier = [WeakRetained identifier];
  [(TVRXDevice *)self setIdentifier:identifier];

  v5 = objc_loadWeakRetained(&self->_impl);
  name = [v5 name];
  [(TVRXDevice *)self _setDeviceName:name];

  v8 = objc_loadWeakRetained(&self->_impl);
  supportedButtons = [v8 supportedButtons];
  [(TVRXDevice *)self setSupportedButtons:supportedButtons];
}

- (void)_setImpl:(id)impl
{
  v18 = *MEMORY[0x277D85DE8];
  implCopy = impl;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    selfCopy2 = "[TVRXDevice _setImpl:]";
    v14 = 2112;
    v15 = implCopy;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s impl:%@ %@", &v12, 0x20u);
  }

  if ([(TVRXDevice *)self connectionState])
  {
    v6 = _TVRCGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      name = [(TVRXDevice *)self name];
      v12 = 134218242;
      selfCopy2 = self;
      v14 = 2114;
      v15 = name;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> %{public}@ has an already established connection", &v12, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_impl);
    [WeakRetained setAuthenticationSupported:0];

    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 setDelegate:0];

    v10 = objc_storeWeak(&self->_impl, implCopy);
    [implCopy setDelegate:self];

    [(TVRXDevice *)self _updateDeviceProperties];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)_setDeviceName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy length] && !-[NSString isEqualToString:](self->_name, "isEqualToString:", nameCopy))
  {
    v5 = _TVRCGeneralLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v14 = 134218498;
      selfCopy = self;
      v16 = 2114;
      v17 = nameCopy;
      v18 = 2114;
      nameCopy2 = name;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> has a new name: %{public}@ old name: %{public}@", &v14, 0x20u);
    }

    v7 = self->_name;
    v8 = [nameCopy copy];
    v9 = self->_name;
    self->_name = v8;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 device:self didUpdateNameFrom:v7];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setSupportedButtons:(id)buttons
{
  v17 = *MEMORY[0x277D85DE8];
  buttonsCopy = buttons;
  if (![(NSSet *)self->_supportedButtons isEqualToSet:buttonsCopy])
  {
    v5 = [buttonsCopy copy];
    supportedButtons = self->_supportedButtons;
    self->_supportedButtons = v5;

    v7 = _TVRCGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_supportedButtons;
      v13 = 134218242;
      selfCopy = self;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> has new set of supported buttons: %{public}@", &v13, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 device:self updatedSupportedButtons:self->_supportedButtons];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_encounteredAuthenticationChallenge:(id)challenge
{
  v16 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    selfCopy4 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> encountered authentication challenge.", &v12, 0xCu);
  }

  if ([(TVRXDevice *)self connectionState]!= 1)
  {
    WeakRetained = _TVRCGeneralLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v10 = TVRCDeviceConnectionStateDescription([(TVRXDevice *)self connectionState]);
      v12 = 134218242;
      selfCopy4 = self;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_26CF7F000, WeakRetained, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> device is not in the connected state, ignoring notification. Current state is: %{public}@", &v12, 0x16u);
    }

    goto LABEL_10;
  }

  _authenticationIsSupported = [(TVRXDevice *)self _authenticationIsSupported];
  v7 = _TVRCGeneralLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (_authenticationIsSupported)
  {
    if (v8)
    {
      v12 = 134217984;
      selfCopy4 = self;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> informing delegate that device encountered authentication challenge.", &v12, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained device:self encounteredAuthenticationChallenge:challengeCopy];
LABEL_10:

    goto LABEL_14;
  }

  if (v8)
  {
    v12 = 134217984;
    selfCopy4 = self;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> delegate does not implement authentication method, cancelling authentication challenge.", &v12, 0xCu);
  }

  [challengeCopy cancel];
LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_connectionAttemptSucceeded
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> underlying connection attempt succeeded.", &v11, 0xCu);
  }

  if ([(TVRXDevice *)self connectionState]== 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = _TVRCGeneralLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> informing delegate that device became connected.", &v11, 0xCu);
      }

      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 deviceConnected:self];
    }

    [(TVRXDevice *)self _setActiveEndpoint];
  }

  else
  {
    v8 = _TVRCGeneralLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = TVRCDeviceConnectionStateDescription([(TVRXDevice *)self connectionState]);
      v11 = 134218242;
      selfCopy3 = self;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> device is not in the connected state, ignoring notification. Current state is: %{public}@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_disconnected:(int64_t)_disconnected error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = _TVRCGeneralLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218496;
    selfCopy3 = self;
    v18 = 2048;
    _disconnectedCopy = _disconnected;
    v20 = 2048;
    code = [errorCopy code];
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> underlying connection was disconnected for TVRCDeviceDisconnectReason %ld, TVRCErrorCode %ld.", &v16, 0x20u);
  }

  _authenticationIsSupported = [(TVRXDevice *)self _authenticationIsSupported];
  if (!_disconnected && !_authenticationIsSupported)
  {
    v9 = _TVRCGeneralLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> disconnected for what appears to be an attempt to pair while locked.", &v16, 0xCu);
    }

    v10 = TVRCMakeError(102, MEMORY[0x277CBEC10]);

    _disconnected = 4;
    errorCopy = v10;
  }

  if ([(TVRXDevice *)self connectionState]== 2)
  {
    [(TVRXDevice *)self _setActiveEndpoint];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = _TVRCGeneralLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> informing delegate that device disconnected.", &v16, 0xCu);
    }

    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 device:self disconnectedForReason:_disconnected error:errorCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_setActiveEndpoint
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_impl);
    alternateIdentifiers = [v5 alternateIdentifiers];
    v7 = [alternateIdentifiers objectForKey:@"AirplayID"];

    v8 = _TVRCGeneralLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> will attempt to update the active MR endpoint", buf, 0xCu);
      }

      v8 = +[TVRCMediaRemoteEndpointManager sharedInstance];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __32__TVRXDevice__setActiveEndpoint__block_invoke;
      v11[3] = &unk_279D82DB0;
      v11[4] = self;
      [v8 updateActiveEndpoint:v7 withCompletion:v11];
    }

    else if (v9)
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> cannot update the active MR endpoint since there is no Airplay ID associated with the device", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __32__TVRXDevice__setActiveEndpoint__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TVRCGeneralLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __32__TVRXDevice__setActiveEndpoint__block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> successfully updated the active MR endpoint", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_authenticationIsSupported
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 deviceShouldAllowConnectionAuthentication:self];

    v7 = _TVRCGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      selfCopy2 = self;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> delegate will allow authentication challenge: %d", buf, 0x12u);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v8 = _TVRCGeneralLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy2 = self;
    _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> checking with SpringBoard for locked-state.", buf, 0xCu);
  }

  SBSGetScreenLockStatus();
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_deviceUpdateAttentionState
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> device's attention state was updated", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 device:self updatedAttentionState:{-[TVRXDevice attentionState](self, "attentionState")}];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_deviceUpdateSiriRemoteFindingState
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> device's siri remote finding state was updated", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 device:self updatedSiriRemoteFindingState:{-[TVRXDevice siriRemoteFindingState](self, "siriRemoteFindingState")}];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setPairedRemoteInfo:(id)info
{
  v12 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> connected remote info was updated", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 device:self updatedPairedRemoteInfo:infoCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setNowPlayingInfo:(id)info
{
  v12 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> now playing info was updated", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 device:self updatedNowPlayingInfo:infoCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)extendedDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  name = [(TVRXDevice *)self name];
  [v3 appendString:name withName:@"name"];

  identifier = [(TVRXDevice *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  v6 = TVRCDeviceConnectionStateDescription([(TVRXDevice *)self connectionState]);
  [v3 appendString:v6 withName:@"connectionState"];

  idsIdentifier = [(TVRXDevice *)self idsIdentifier];
  [v3 appendString:idsIdentifier withName:@"idsIdentifier"];

  alternateIdentifiers = [(TVRXDevice *)self alternateIdentifiers];
  [v3 appendDictionarySection:alternateIdentifiers withName:@"alternateIdentifiers" skipIfEmpty:0];

  _impl = [(TVRXDevice *)self _impl];
  v10 = [v3 appendObject:_impl withName:@"impl"];

  deviceImplSet = [(TVRXDevice *)self deviceImplSet];
  [v3 appendCollectionSection:deviceImplSet withName:@"deviceImplSet" skipIfEmpty:0];

  v12 = TVRCDeviceClassificationDescription([(TVRXDevice *)self classification]);
  [v3 appendString:v12 withName:@"classification"];

  build = [v3 build];

  return build;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  name = [(TVRXDevice *)self name];
  [v3 appendString:name withName:@"name"];

  identifier = [(TVRXDevice *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  idsIdentifier = [(TVRXDevice *)self idsIdentifier];
  [v3 appendString:idsIdentifier withName:@"idsIdentifier"];

  alternateIdentifiers = [(TVRXDevice *)self alternateIdentifiers];
  v8 = [alternateIdentifiers objectForKeyedSubscript:@"AirplayID"];
  [v3 appendString:v8 withName:@"AirplayID"];

  alternateIdentifiers2 = [(TVRXDevice *)self alternateIdentifiers];
  v10 = [alternateIdentifiers2 objectForKeyedSubscript:@"HomeKitID"];
  [v3 appendString:v10 withName:@"HomeKitID"];

  v11 = TVRCDeviceConnectionStateDescription([(TVRXDevice *)self connectionState]);
  [v3 appendString:v11 withName:@"connectionState"];

  v12 = TVRCDeviceClassificationDescription([(TVRXDevice *)self classification]);
  [v3 appendString:v12 withName:@"classification"];

  build = [v3 build];

  return build;
}

- (id)stateDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(TVRXDevice *)self name];
  [dictionary setObject:name forKeyedSubscript:@"name"];

  identifier = [(TVRXDevice *)self identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"identifier"];

  idsIdentifier = [(TVRXDevice *)self idsIdentifier];
  [dictionary setObject:idsIdentifier forKeyedSubscript:@"idsIdentifier"];

  alternateIdentifiers = [(TVRXDevice *)self alternateIdentifiers];
  v8 = [alternateIdentifiers objectForKeyedSubscript:@"AirplayID"];
  [dictionary setObject:v8 forKeyedSubscript:@"AirplayID"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRXDevice connectionState](self, "connectionState")}];
  [dictionary setObject:v9 forKeyedSubscript:@"connectionState"];

  v10 = TVRCDeviceClassificationDescription([(TVRXDevice *)self classification]);
  [dictionary setObject:v10 forKeyedSubscript:@"classification"];

  v11 = [dictionary copy];

  return v11;
}

- (BOOL)isEqualToTVRXDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allIdentifiers = [device allIdentifiers];
  v5 = [allIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allIdentifiers);
        }

        if ([(TVRXDevice *)self containsIdentifier:*(*(&v12 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [allIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TVRXDevice *)self isEqualToTVRXDevice:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  identifier = [(TVRXDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[TVRXDevice dealloc]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = TVRXDevice;
  [(TVRXDevice *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sendEvent:(id)event options:(id)options response:(id)response
{
  eventCopy = event;
  optionsCopy = options;
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_impl);
    [v12 sendEvent:eventCopy options:optionsCopy response:responseCopy];
  }
}

- (void)fetchUpNextInfoWithPaginationToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 fetchUpNextInfoWithPaginationToken:tokenCopy completion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, MEMORY[0x277CBEC10], 0);
  }
}

- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 markAsWatchedWithMediaIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 addItemWithMediaIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 removeItemWithMediaIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)playItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 playItem:itemCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)fetchLaunchableAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_impl);
    [v6 fetchLaunchableAppsWithCompletion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEC10], 0);
  }
}

- (void)launchAppWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 launchAppWithBundleID:dCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_setIdentifier:(id)identifier name:(id)name supportedButtons:(id)buttons
{
  buttonsCopy = buttons;
  nameCopy = name;
  [(TVRXDevice *)self setIdentifier:identifier];
  [(TVRXDevice *)self setName:nameCopy];

  [(TVRXDevice *)self setSupportedButtons:buttonsCopy];
}

- (_TVRXDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_TVRCDeviceImpl)_impl
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);

  return WeakRetained;
}

void __32__TVRXDevice__setActiveEndpoint__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_26CF7F000, log, OS_LOG_TYPE_ERROR, "<TVRXDevice %p> could not update active MR endpoint. Error - %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end