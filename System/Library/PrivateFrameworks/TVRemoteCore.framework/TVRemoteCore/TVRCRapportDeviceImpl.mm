@interface TVRCRapportDeviceImpl
+ (id)implWithDevice:(id)a3;
- (NSString)description;
- (TVRCRapportDeviceImpl)initWithDevice:(id)a3;
- (_TVRCDeviceImplDelegate)delegate;
- (id)allIdentifiers;
- (id)model;
- (void)_setupKeyboardController;
- (void)connectedToDevice:(id)a3;
- (void)dealloc;
- (void)deviceEncounteredAuthenticationChallenge:(id)a3;
- (void)deviceUpdateSiriRemoteFindingState;
- (void)deviceUpdatedAttentionState;
- (void)deviceUpdatedNowPlayingInfo:(id)a3;
- (void)deviceUpdatedPairedRemoteInfo:(id)a3;
- (void)deviceUpdatedSupportedButtons:(id)a3;
- (void)didUpdateDevice:(id)a3;
- (void)disconnect;
- (void)disconnectedFromDevice:(id)a3 error:(id)a4;
- (void)sendButtonEvent:(id)a3;
@end

@implementation TVRCRapportDeviceImpl

+ (id)implWithDevice:(id)a3
{
  v3 = a3;
  v4 = [[TVRCRapportDeviceImpl alloc] initWithDevice:v3];

  return v4;
}

- (TVRCRapportDeviceImpl)initWithDevice:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TVRCRapportDeviceImpl;
  v6 = [(TVRCRapportDeviceImpl *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceWrapper, a3);
    [(TVRCRPCompanionLinkClientWrapper *)v7->_deviceWrapper setDelegate:v7];
    v7->_priority = 0;
    v8 = [[TVRXKeyboardController alloc] _init];
    keyboardController = v7->_keyboardController;
    v7->_keyboardController = v8;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(TVRCRapportDeviceImpl *)self identifier];
  [v3 appendString:v4 withName:@"identifier"];

  v5 = TVRCDeviceLinkTypeDescription([(TVRCRapportDeviceImpl *)self linkType]);
  [v3 appendString:v5 withName:@"linkType"];

  v6 = [(TVRCRapportDeviceImpl *)self name];
  [v3 appendString:v6 withName:@"name"];

  v7 = [v3 build];

  return v7;
}

- (id)allIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(TVRCRapportDeviceImpl *)self alternateIdentifiers];
  v5 = [v4 allValues];
  [v3 addObjectsFromArray:v5];

  v6 = [(TVRCRapportDeviceImpl *)self identifier];

  if (v6)
  {
    v7 = [(TVRCRapportDeviceImpl *)self identifier];
    [v3 addObject:v7];
  }

  v8 = [(TVRCRapportDeviceImpl *)self rapportIdentifier];

  if (v8)
  {
    v9 = [(TVRCRapportDeviceImpl *)self rapportIdentifier];
    [v3 addObject:v9];
  }

  v10 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v10;
}

- (id)model
{
  v2 = [(TVRCRPCompanionLinkClientWrapper *)self->_deviceWrapper model];
  v3 = [v2 copy];

  return v3;
}

- (void)disconnect
{
  [(TVRCRPCompanionLinkClientWrapper *)self->_deviceWrapper disconnect];
  v3 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Disconnected. Stop observing TV editing session", v4, 2u);
  }

  [(TVRCRapportRemoteTextInputKeyboardImpl *)self->_keyboardImpl _stopObservingTelevisionEditingSession];
  [(TVRXKeyboardController *)self->_keyboardController _setKeyboardImpl:0];
  [(TVRCRapportRemoteTextInputKeyboardImpl *)self->_keyboardImpl setKeyboardController:0];
}

- (void)sendButtonEvent:(id)a3
{
  v10 = a3;
  v4 = [v10 button];
  v5 = [v4 buttonType];

  if ((v5 - 17) <= 1)
  {
    v6 = [(TVRCRapportDeviceImpl *)self nowPlayingInfo];
    v7 = [v6 captionsEnabled];

    if (v7)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:v5 == 17];
      v9 = [(TVRCRapportDeviceImpl *)self nowPlayingInfo];
      [v9 setCaptionsEnabled:v8];
    }
  }

  [(TVRCRPCompanionLinkClientWrapper *)self->_deviceWrapper sendButtonEvent:v10];
}

- (void)connectedToDevice:(id)a3
{
  [(TVRCRapportDeviceImpl *)self _setupKeyboardController];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didConnectWithDevice:self];
}

- (void)disconnectedFromDevice:(id)a3 error:(id)a4
{
  v5 = 4 * (a4 != 0);
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained device:self didDisconnectWithReason:v5 error:v6];
}

- (void)deviceEncounteredAuthenticationChallenge:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained device:self didEncounterAuthenticationChallenge:v4];
}

- (void)deviceUpdatedSupportedButtons:(id)a3
{
  v6 = a3;
  if ([v6 connected])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [v6 supportedButtons];
    [WeakRetained device:self didUpdateSupportedButtons:v5];
  }
}

- (void)deviceUpdatedAttentionState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didUpdateAttentionStateWithDevice:self];
}

- (void)deviceUpdatedPairedRemoteInfo:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 pairedRemoteInfo];

  [WeakRetained device:self didUpdatePairedRemoteInfo:v5];
}

- (void)deviceUpdatedNowPlayingInfo:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 nowPlayingInfo];

  [WeakRetained device:self didUpdateNowPlayingInfo:v5];
}

- (void)deviceUpdateSiriRemoteFindingState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didUpdateSiriRemoteFindingStateWithDevice:self];
}

- (void)didUpdateDevice:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didUpdateDevice:self];
}

- (void)_setupKeyboardController
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRemoteTextInputLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[TVRCRapportDeviceImpl _setupKeyboardController]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
  }

  v4 = objc_alloc_init(TVRCRapportRemoteTextInputKeyboardImpl);
  keyboardImpl = self->_keyboardImpl;
  self->_keyboardImpl = v4;

  [(TVRCRapportRemoteTextInputKeyboardImpl *)self->_keyboardImpl setCompanionLinkWrapper:self->_deviceWrapper];
  [(TVRXKeyboardController *)self->_keyboardController _setKeyboardImpl:self->_keyboardImpl];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[TVRCRapportDeviceImpl dealloc]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = TVRCRapportDeviceImpl;
  [(TVRCRapportDeviceImpl *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (_TVRCDeviceImplDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end