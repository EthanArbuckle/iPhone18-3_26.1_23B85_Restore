@interface TVRCRapportDeviceImpl
+ (id)implWithDevice:(id)device;
- (NSString)description;
- (TVRCRapportDeviceImpl)initWithDevice:(id)device;
- (_TVRCDeviceImplDelegate)delegate;
- (id)allIdentifiers;
- (id)model;
- (void)_setupKeyboardController;
- (void)connectedToDevice:(id)device;
- (void)dealloc;
- (void)deviceEncounteredAuthenticationChallenge:(id)challenge;
- (void)deviceUpdateSiriRemoteFindingState;
- (void)deviceUpdatedAttentionState;
- (void)deviceUpdatedNowPlayingInfo:(id)info;
- (void)deviceUpdatedPairedRemoteInfo:(id)info;
- (void)deviceUpdatedSupportedButtons:(id)buttons;
- (void)didUpdateDevice:(id)device;
- (void)disconnect;
- (void)disconnectedFromDevice:(id)device error:(id)error;
- (void)sendButtonEvent:(id)event;
@end

@implementation TVRCRapportDeviceImpl

+ (id)implWithDevice:(id)device
{
  deviceCopy = device;
  v4 = [[TVRCRapportDeviceImpl alloc] initWithDevice:deviceCopy];

  return v4;
}

- (TVRCRapportDeviceImpl)initWithDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = TVRCRapportDeviceImpl;
  v6 = [(TVRCRapportDeviceImpl *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceWrapper, device);
    [(TVRCRPCompanionLinkClientWrapper *)v7->_deviceWrapper setDelegate:v7];
    v7->_priority = 0;
    _init = [[TVRXKeyboardController alloc] _init];
    keyboardController = v7->_keyboardController;
    v7->_keyboardController = _init;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(TVRCRapportDeviceImpl *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  v5 = TVRCDeviceLinkTypeDescription([(TVRCRapportDeviceImpl *)self linkType]);
  [v3 appendString:v5 withName:@"linkType"];

  name = [(TVRCRapportDeviceImpl *)self name];
  [v3 appendString:name withName:@"name"];

  build = [v3 build];

  return build;
}

- (id)allIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] set];
  alternateIdentifiers = [(TVRCRapportDeviceImpl *)self alternateIdentifiers];
  allValues = [alternateIdentifiers allValues];
  [v3 addObjectsFromArray:allValues];

  identifier = [(TVRCRapportDeviceImpl *)self identifier];

  if (identifier)
  {
    identifier2 = [(TVRCRapportDeviceImpl *)self identifier];
    [v3 addObject:identifier2];
  }

  rapportIdentifier = [(TVRCRapportDeviceImpl *)self rapportIdentifier];

  if (rapportIdentifier)
  {
    rapportIdentifier2 = [(TVRCRapportDeviceImpl *)self rapportIdentifier];
    [v3 addObject:rapportIdentifier2];
  }

  v10 = [MEMORY[0x277CBEB98] setWithSet:v3];

  return v10;
}

- (id)model
{
  model = [(TVRCRPCompanionLinkClientWrapper *)self->_deviceWrapper model];
  v3 = [model copy];

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

- (void)sendButtonEvent:(id)event
{
  eventCopy = event;
  button = [eventCopy button];
  buttonType = [button buttonType];

  if ((buttonType - 17) <= 1)
  {
    nowPlayingInfo = [(TVRCRapportDeviceImpl *)self nowPlayingInfo];
    captionsEnabled = [nowPlayingInfo captionsEnabled];

    if (captionsEnabled)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:buttonType == 17];
      nowPlayingInfo2 = [(TVRCRapportDeviceImpl *)self nowPlayingInfo];
      [nowPlayingInfo2 setCaptionsEnabled:v8];
    }
  }

  [(TVRCRPCompanionLinkClientWrapper *)self->_deviceWrapper sendButtonEvent:eventCopy];
}

- (void)connectedToDevice:(id)device
{
  [(TVRCRapportDeviceImpl *)self _setupKeyboardController];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didConnectWithDevice:self];
}

- (void)disconnectedFromDevice:(id)device error:(id)error
{
  v5 = 4 * (error != 0);
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained device:self didDisconnectWithReason:v5 error:errorCopy];
}

- (void)deviceEncounteredAuthenticationChallenge:(id)challenge
{
  challengeCopy = challenge;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained device:self didEncounterAuthenticationChallenge:challengeCopy];
}

- (void)deviceUpdatedSupportedButtons:(id)buttons
{
  buttonsCopy = buttons;
  if ([buttonsCopy connected])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    supportedButtons = [buttonsCopy supportedButtons];
    [WeakRetained device:self didUpdateSupportedButtons:supportedButtons];
  }
}

- (void)deviceUpdatedAttentionState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didUpdateAttentionStateWithDevice:self];
}

- (void)deviceUpdatedPairedRemoteInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pairedRemoteInfo = [infoCopy pairedRemoteInfo];

  [WeakRetained device:self didUpdatePairedRemoteInfo:pairedRemoteInfo];
}

- (void)deviceUpdatedNowPlayingInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  nowPlayingInfo = [infoCopy nowPlayingInfo];

  [WeakRetained device:self didUpdateNowPlayingInfo:nowPlayingInfo];
}

- (void)deviceUpdateSiriRemoteFindingState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didUpdateSiriRemoteFindingStateWithDevice:self];
}

- (void)didUpdateDevice:(id)device
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
    selfCopy = self;
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
    selfCopy = self;
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