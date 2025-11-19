@interface TVRXDevice
- (BOOL)_authenticationIsSupported;
- (BOOL)containsIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTVRXDevice:(id)a3;
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
- (void)_disconnected:(int64_t)a3 error:(id)a4;
- (void)_encounteredAuthenticationChallenge:(id)a3;
- (void)_reevaluate;
- (void)_setActiveEndpoint;
- (void)_setDeviceName:(id)a3;
- (void)_setIdentifier:(id)a3 name:(id)a4 supportedButtons:(id)a5;
- (void)_setImpl:(id)a3;
- (void)_setNowPlayingInfo:(id)a3;
- (void)_setPairedRemoteInfo:(id)a3;
- (void)_setSupportedButtons:(id)a3;
- (void)_updateDeviceProperties;
- (void)addDeviceImpl:(id)a3;
- (void)addItemWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)fetchLaunchableAppsWithCompletion:(id)a3;
- (void)fetchUpNextInfoWithPaginationToken:(id)a3 completion:(id)a4;
- (void)launchAppWithBundleID:(id)a3 completion:(id)a4;
- (void)markAsWatchedWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)playItem:(id)a3 completion:(id)a4;
- (void)removeDeviceImpl:(id)a3;
- (void)removeItemWithMediaIdentifier:(id)a3 completion:(id)a4;
- (void)sendButtonEvent:(id)a3;
- (void)sendEvent:(id)a3 options:(id)a4 response:(id)a5;
- (void)sendGameControllerEvent:(id)a3;
- (void)sendTouchEvent:(id)a3;
- (void)setDelegate:(id)a3;
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

- (void)addDeviceImpl:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[TVRXDevice addDeviceImpl:]";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s impl: %@ for device: %@", &v7, 0x20u);
  }

  [(NSMutableSet *)self->_deviceImplSet addObject:v4];
  [(TVRXDevice *)self _reevaluate];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeDeviceImpl:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[TVRXDevice removeDeviceImpl:]";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s impl: %@ for device: %@", &v7, 0x20u);
  }

  [(NSMutableSet *)self->_deviceImplSet removeObject:v4];
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

  v7 = [v5 firstObject];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
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
    v12 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  v4 = [(TVRXDevice *)self preferredImpl];
  v5 = [(TVRXDevice *)self _impl];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  if (!v4)
  {
LABEL_7:

    goto LABEL_8;
  }

  v7 = [(TVRXDevice *)self _impl];

  if (v7 != v4)
  {
LABEL_6:
    v6 = [(TVRXDevice *)self preferredImpl];
    [(TVRXDevice *)self _setImpl:v6];
    goto LABEL_7;
  }

LABEL_8:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendButtonEvent:(id)a3
{
  v7 = a3;
  v4 = [v7 button];
  v5 = [v4 isEnabled];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_impl);
    [WeakRetained sendButtonEvent:v7];
  }
}

- (void)sendTouchEvent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  [WeakRetained sendTouchEvent:v4];
}

- (void)sendGameControllerEvent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  [WeakRetained sendGameControllerEvent:v4];
}

- (TVRXKeyboardController)keyboardController
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v3 = [WeakRetained keyboardController];

  return v3;
}

- (unint64_t)pairingCapability
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v3 = [WeakRetained pairingCapability];

  return v3;
}

- (BOOL)supportsDirectCaptionQueries
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v3 = [WeakRetained supportsDirectCaptionQueries];

  return v3;
}

- (BOOL)supportsFindMyRemote
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v3 = [WeakRetained supportsFindMyRemote];

  return v3;
}

- (BOOL)supportsTouchEvents
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v3 = [WeakRetained supportsTouchEvents];

  return v3;
}

- (int64_t)connectionState
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v3 = [WeakRetained connectionState];

  return v3;
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
  v6 = [v5 isPaired];

  return v6;
}

- (void)connect
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> was asked to connect.", &v13, 0xCu);
  }

  if ([(TVRXDevice *)self connectionState])
  {
    v4 = _TVRCGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(TVRXDevice *)self connectionState];
      v13 = 134218240;
      v14 = self;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> device is not in the disconnected state, ignoring connect request. Current state is %ld", &v13, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  v6 = [(TVRXDevice *)self _authenticationIsSupported];
  v7 = _TVRCGeneralLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    v14 = self;
    v15 = 1024;
    LODWORD(v16) = v6;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> will allow authentication challenge: %d", &v13, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_impl);
  [WeakRetained setAuthenticationSupported:v6];

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
      v14 = self;
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
    v11 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> was asked to disconnect.", &v10, 0xCu);
  }

  if (![(TVRXDevice *)self connectionState])
  {
    v8 = _TVRCGeneralLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = self;
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
      v11 = self;
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
  v3 = [WeakRetained allIdentifiers];

  return v3;
}

- (BOOL)containsIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(TVRXDevice *)self allIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [WeakRetained connectionType];

  return v3;
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
  v6 = [v5 linkType];

  return v6;
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
  v6 = [v5 deviceAttentionState];

  return v6;
}

- (TVRCSiriRemoteInfo)pairedRemoteInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_impl);
    v6 = [v5 pairedRemoteInfo];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TVRCNowPlayingInfo)nowPlayingInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_impl);
    v6 = [v5 nowPlayingInfo];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)alternateIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v3 = [WeakRetained alternateIdentifiers];

  return v3;
}

- (NSString)idsIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_impl);
    v6 = [v5 idsIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)model
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v3 = [WeakRetained model];

  return v3;
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
  v6 = [v5 siriRemoteFindingState];

  return v6;
}

- (void)_updateDeviceProperties
{
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v4 = [WeakRetained identifier];
  [(TVRXDevice *)self setIdentifier:v4];

  v5 = objc_loadWeakRetained(&self->_impl);
  v6 = [v5 name];
  [(TVRXDevice *)self _setDeviceName:v6];

  v8 = objc_loadWeakRetained(&self->_impl);
  v7 = [v8 supportedButtons];
  [(TVRXDevice *)self setSupportedButtons:v7];
}

- (void)_setImpl:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[TVRXDevice _setImpl:]";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s impl:%@ %@", &v12, 0x20u);
  }

  if ([(TVRXDevice *)self connectionState])
  {
    v6 = _TVRCGeneralLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(TVRXDevice *)self name];
      v12 = 134218242;
      v13 = self;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> %{public}@ has an already established connection", &v12, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_impl);
    [WeakRetained setAuthenticationSupported:0];

    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 setDelegate:0];

    v10 = objc_storeWeak(&self->_impl, v4);
    [v4 setDelegate:self];

    [(TVRXDevice *)self _updateDeviceProperties];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)_setDeviceName:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length] && !-[NSString isEqualToString:](self->_name, "isEqualToString:", v4))
  {
    v5 = _TVRCGeneralLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v14 = 134218498;
      v15 = self;
      v16 = 2114;
      v17 = v4;
      v18 = 2114;
      v19 = name;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> has a new name: %{public}@ old name: %{public}@", &v14, 0x20u);
    }

    v7 = self->_name;
    v8 = [v4 copy];
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

- (void)_setSupportedButtons:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSSet *)self->_supportedButtons isEqualToSet:v4])
  {
    v5 = [v4 copy];
    supportedButtons = self->_supportedButtons;
    self->_supportedButtons = v5;

    v7 = _TVRCGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_supportedButtons;
      v13 = 134218242;
      v14 = self;
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

- (void)_encounteredAuthenticationChallenge:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> encountered authentication challenge.", &v12, 0xCu);
  }

  if ([(TVRXDevice *)self connectionState]!= 1)
  {
    WeakRetained = _TVRCGeneralLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v10 = TVRCDeviceConnectionStateDescription([(TVRXDevice *)self connectionState]);
      v12 = 134218242;
      v13 = self;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_26CF7F000, WeakRetained, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> device is not in the connected state, ignoring notification. Current state is: %{public}@", &v12, 0x16u);
    }

    goto LABEL_10;
  }

  v6 = [(TVRXDevice *)self _authenticationIsSupported];
  v7 = _TVRCGeneralLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v12 = 134217984;
      v13 = self;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> informing delegate that device encountered authentication challenge.", &v12, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained device:self encounteredAuthenticationChallenge:v4];
LABEL_10:

    goto LABEL_14;
  }

  if (v8)
  {
    v12 = 134217984;
    v13 = self;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> delegate does not implement authentication method, cancelling authentication challenge.", &v12, 0xCu);
  }

  [v4 cancel];
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
    v12 = self;
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
        v12 = self;
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
      v12 = self;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> device is not in the connected state, ignoring notification. Current state is: %{public}@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_disconnected:(int64_t)a3 error:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _TVRCGeneralLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218496;
    v17 = self;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = [v6 code];
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> underlying connection was disconnected for TVRCDeviceDisconnectReason %ld, TVRCErrorCode %ld.", &v16, 0x20u);
  }

  v8 = [(TVRXDevice *)self _authenticationIsSupported];
  if (!a3 && !v8)
  {
    v9 = _TVRCGeneralLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = self;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> disconnected for what appears to be an attempt to pair while locked.", &v16, 0xCu);
    }

    v10 = TVRCMakeError(102, MEMORY[0x277CBEC10]);

    a3 = 4;
    v6 = v10;
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
      v17 = self;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> informing delegate that device disconnected.", &v16, 0xCu);
    }

    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 device:self disconnectedForReason:a3 error:v6];
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
    v6 = [v5 alternateIdentifiers];
    v7 = [v6 objectForKey:@"AirplayID"];

    v8 = _TVRCGeneralLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 134217984;
        v13 = self;
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
      v13 = self;
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
      v12 = self;
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
    v12 = self;
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
    v9 = self;
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
    v9 = self;
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

- (void)_setPairedRemoteInfo:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> connected remote info was updated", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 device:self updatedPairedRemoteInfo:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setNowPlayingInfo:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _TVRCGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "<TVRXDevice %p> now playing info was updated", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 device:self updatedNowPlayingInfo:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)extendedDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(TVRXDevice *)self name];
  [v3 appendString:v4 withName:@"name"];

  v5 = [(TVRXDevice *)self identifier];
  [v3 appendString:v5 withName:@"identifier"];

  v6 = TVRCDeviceConnectionStateDescription([(TVRXDevice *)self connectionState]);
  [v3 appendString:v6 withName:@"connectionState"];

  v7 = [(TVRXDevice *)self idsIdentifier];
  [v3 appendString:v7 withName:@"idsIdentifier"];

  v8 = [(TVRXDevice *)self alternateIdentifiers];
  [v3 appendDictionarySection:v8 withName:@"alternateIdentifiers" skipIfEmpty:0];

  v9 = [(TVRXDevice *)self _impl];
  v10 = [v3 appendObject:v9 withName:@"impl"];

  v11 = [(TVRXDevice *)self deviceImplSet];
  [v3 appendCollectionSection:v11 withName:@"deviceImplSet" skipIfEmpty:0];

  v12 = TVRCDeviceClassificationDescription([(TVRXDevice *)self classification]);
  [v3 appendString:v12 withName:@"classification"];

  v13 = [v3 build];

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(TVRXDevice *)self name];
  [v3 appendString:v4 withName:@"name"];

  v5 = [(TVRXDevice *)self identifier];
  [v3 appendString:v5 withName:@"identifier"];

  v6 = [(TVRXDevice *)self idsIdentifier];
  [v3 appendString:v6 withName:@"idsIdentifier"];

  v7 = [(TVRXDevice *)self alternateIdentifiers];
  v8 = [v7 objectForKeyedSubscript:@"AirplayID"];
  [v3 appendString:v8 withName:@"AirplayID"];

  v9 = [(TVRXDevice *)self alternateIdentifiers];
  v10 = [v9 objectForKeyedSubscript:@"HomeKitID"];
  [v3 appendString:v10 withName:@"HomeKitID"];

  v11 = TVRCDeviceConnectionStateDescription([(TVRXDevice *)self connectionState]);
  [v3 appendString:v11 withName:@"connectionState"];

  v12 = TVRCDeviceClassificationDescription([(TVRXDevice *)self classification]);
  [v3 appendString:v12 withName:@"classification"];

  v13 = [v3 build];

  return v13;
}

- (id)stateDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(TVRXDevice *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = [(TVRXDevice *)self identifier];
  [v3 setObject:v5 forKeyedSubscript:@"identifier"];

  v6 = [(TVRXDevice *)self idsIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"idsIdentifier"];

  v7 = [(TVRXDevice *)self alternateIdentifiers];
  v8 = [v7 objectForKeyedSubscript:@"AirplayID"];
  [v3 setObject:v8 forKeyedSubscript:@"AirplayID"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRXDevice connectionState](self, "connectionState")}];
  [v3 setObject:v9 forKeyedSubscript:@"connectionState"];

  v10 = TVRCDeviceClassificationDescription([(TVRXDevice *)self classification]);
  [v3 setObject:v10 forKeyedSubscript:@"classification"];

  v11 = [v3 copy];

  return v11;
}

- (BOOL)isEqualToTVRXDevice:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 allIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([(TVRXDevice *)self containsIdentifier:*(*(&v12 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TVRXDevice *)self isEqualToTVRXDevice:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(TVRXDevice *)self identifier];
  v3 = [v2 hash];

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
    v9 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = TVRXDevice;
  [(TVRXDevice *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)sendEvent:(id)a3 options:(id)a4 response:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_impl);
    [v12 sendEvent:v13 options:v8 response:v9];
  }
}

- (void)fetchUpNextInfoWithPaginationToken:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 fetchUpNextInfoWithPaginationToken:v10 completion:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, MEMORY[0x277CBEC10], 0);
  }
}

- (void)markAsWatchedWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 markAsWatchedWithMediaIdentifier:v10 completion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)addItemWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 addItemWithMediaIdentifier:v10 completion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)removeItemWithMediaIdentifier:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 removeItemWithMediaIdentifier:v10 completion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)playItem:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 playItem:v10 completion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)fetchLaunchableAppsWithCompletion:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_impl);
    [v6 fetchLaunchableAppsWithCompletion:v7];
  }

  else
  {
    (*(v7 + 2))(v7, MEMORY[0x277CBEC10], 0);
  }
}

- (void)launchAppWithBundleID:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_impl);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_impl);
    [v9 launchAppWithBundleID:v10 completion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)_setIdentifier:(id)a3 name:(id)a4 supportedButtons:(id)a5
{
  v9 = a5;
  v8 = a4;
  [(TVRXDevice *)self setIdentifier:a3];
  [(TVRXDevice *)self setName:v8];

  [(TVRXDevice *)self setSupportedButtons:v9];
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