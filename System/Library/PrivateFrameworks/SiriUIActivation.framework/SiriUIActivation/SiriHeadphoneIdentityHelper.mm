@interface SiriHeadphoneIdentityHelper
- (BOOL)deviceSupportsActivation:(id)activation;
- (BOOL)isBluetoothSpeaker:(id)speaker;
- (BOOL)isHeadphoneConnected;
- (BOOL)isSupportedHeadphoneDevice:(id)device;
- (NSObject)viewController;
- (id)associatedUserProfileIdentifier;
- (id)debugStringForProfileMetadata:(id)metadata;
- (id)init:(id)init;
- (void)assignUserData:(id)data identifier:(id)identifier;
- (void)bluetoothDeviceConnectSuccess:(id)success;
- (void)bluetoothDeviceDisconnectSuccess:(id)success;
- (void)bluetoothDeviceEndedVoiceControl:(id)control;
- (void)bluetoothDeviceInitiatedVoiceControl:(id)control;
- (void)clearUserData;
- (void)setupBluetoothNotificationObservers;
- (void)siriWentIdleAndQuiet:(BOOL)quiet;
- (void)updatePersonaId:(BOOL)id identifier:(id)identifier;
@end

@implementation SiriHeadphoneIdentityHelper

- (id)init:(id)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SiriHeadphoneIdentityHelper;
  initCopy = init;
  v4 = [(SiriHeadphoneIdentityHelper *)&v9 init];
  [(SiriHeadphoneIdentityHelper *)v4 setViewController:initCopy, v9.receiver, v9.super_class];

  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  [(SiriHeadphoneIdentityHelper *)v4 setBluetoothManager:mEMORY[0x277CF3248]];

  [(SiriHeadphoneIdentityHelper *)v4 setupBluetoothNotificationObservers];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SiriHeadphoneIdentityHelper init:]";
    _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s #shih headphone monitor setup start", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)debugStringForProfileMetadata:(id)metadata
{
  metadataCopy = metadata;
  confidence = [metadataCopy confidence];
  if (confidence > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_2784300B8[confidence];
  }

  v6 = MEMORY[0x277CCACA8];
  headphoneConnected = [metadataCopy headphoneConnected];
  userProfileIdentifier = [metadataCopy userProfileIdentifier];

  v9 = [v6 stringWithFormat:@"SMTUPM<connected: %d, confidence: %@, persona: %@>", headphoneConnected, v5, userProfileIdentifier];

  return v9;
}

- (void)setupBluetoothNotificationObservers
{
  v8 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_bluetoothDeviceInitiatedVoiceControl_ name:*MEMORY[0x277CF31E8] object:0];
  [defaultCenter addObserver:self selector:sel_bluetoothDeviceEndedVoiceControl_ name:*MEMORY[0x277CF31E0] object:0];
  [defaultCenter addObserver:self selector:sel_bluetoothDeviceConnectSuccess_ name:*MEMORY[0x277CF3190] object:0];
  [defaultCenter addObserver:self selector:sel_bluetoothDeviceDisconnectSuccess_ name:*MEMORY[0x277CF31A0] object:0];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SiriHeadphoneIdentityHelper setupBluetoothNotificationObservers]";
    _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #shih setup observer", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSupportedHeadphoneDevice:(id)device
{
  deviceCopy = device;
  v4 = ([deviceCopy isAppleAudioDevice] & 1) == 0 && (objc_msgSend(deviceCopy, "type") == 16 || objc_msgSend(deviceCopy, "type") == 20);

  return v4;
}

- (BOOL)isBluetoothSpeaker:(id)speaker
{
  speakerCopy = speaker;
  v4 = ([speakerCopy isAppleAudioDevice] & 1) == 0 && objc_msgSend(speakerCopy, "type") == 19;

  return v4;
}

- (BOOL)deviceSupportsActivation:(id)activation
{
  activationCopy = activation;
  if ([(SiriHeadphoneIdentityHelper *)self isBluetoothSpeaker:activationCopy])
  {
    v5 = _os_feature_enabled_impl();
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SiriHeadphoneIdentityHelper *)self isSupportedHeadphoneDevice:activationCopy]| v5;

  return v6 & 1;
}

- (void)bluetoothDeviceInitiatedVoiceControl:(id)control
{
  v11 = *MEMORY[0x277D85DE8];
  object = [control object];
  if ([(SiriHeadphoneIdentityHelper *)self deviceSupportsActivation:object])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[SiriHeadphoneIdentityHelper bluetoothDeviceInitiatedVoiceControl:]";
      _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #shih initiated voice control", &v9, 0xCu);
    }

    v6 = [MEMORY[0x277D551D0] bluetoothDeviceForIdentifier:3 bluetoothDevice:object];
    [v6 activate];
    [(SiriHeadphoneIdentityHelper *)self setActivationDevice:object];
    v7 = [MEMORY[0x277CBEAA8] now];
    [(SiriHeadphoneIdentityHelper *)self setActivationTime:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)bluetoothDeviceEndedVoiceControl:(id)control
{
  v10 = *MEMORY[0x277D85DE8];
  object = [control object];
  if ([(SiriHeadphoneIdentityHelper *)self deviceSupportsActivation:object])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SiriHeadphoneIdentityHelper bluetoothDeviceEndedVoiceControl:]";
      _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #shih ended voice control", &v8, 0xCu);
    }

    v6 = [MEMORY[0x277D551D0] bluetoothDeviceForIdentifier:3 bluetoothDevice:object];
    [v6 deactivate];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)bluetoothDeviceDisconnectSuccess:(id)success
{
  v12 = *MEMORY[0x277D85DE8];
  object = [success object];
  userProfileMetadata = [(SiriHeadphoneIdentityHelper *)self userProfileMetadata];
  headphoneConnected = [userProfileMetadata headphoneConnected];

  if (headphoneConnected)
  {
    if ([(SiriHeadphoneIdentityHelper *)self isBluetoothSpeaker:object]|| [(SiriHeadphoneIdentityHelper *)self isSupportedHeadphoneDevice:object])
    {
      v7 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "[SiriHeadphoneIdentityHelper bluetoothDeviceDisconnectSuccess:]";
        _os_log_impl(&dword_21FEE5000, v7, OS_LOG_TYPE_DEFAULT, "%s #shih disconnected success", &v10, 0xCu);
      }

      [(SiriHeadphoneIdentityHelper *)self clearUserData];
    }

    else
    {
      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "[SiriHeadphoneIdentityHelper bluetoothDeviceDisconnectSuccess:]";
        _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #shih Not a supported device, ignoring bluetooth disconnect", &v10, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)bluetoothDeviceConnectSuccess:(id)success
{
  v22 = *MEMORY[0x277D85DE8];
  object = [success object];
  if ([(SiriHeadphoneIdentityHelper *)self isSupportedHeadphoneDevice:object]|| [(SiriHeadphoneIdentityHelper *)self isBluetoothSpeaker:object])
  {
    userProfileMetadata = [(SiriHeadphoneIdentityHelper *)self userProfileMetadata];
    headphoneConnected = [userProfileMetadata headphoneConnected];

    if (!headphoneConnected)
    {
      if ([(SiriHeadphoneIdentityHelper *)self isBluetoothSpeaker:object])
      {
        if (!_os_feature_enabled_impl())
        {
          goto LABEL_19;
        }

        v11 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315138;
          v19 = "[SiriHeadphoneIdentityHelper bluetoothDeviceConnectSuccess:]";
          _os_log_impl(&dword_21FEE5000, v11, OS_LOG_TYPE_DEFAULT, "%s #shih Guest success", &v18, 0xCu);
        }

        address2 = objc_alloc_init(MEMORY[0x277D5D308]);
        [address2 setUserProfileIdentifier:@"00000000-0000-0000-0000-000000000000"];
        [address2 setConfidence:0];
        [address2 setHeadphoneConnected:1];
        address = [object address];
        [(SiriHeadphoneIdentityHelper *)self assignUserData:address2 identifier:address];
      }

      else
      {
        v15 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v18 = 136315394;
          v19 = "[SiriHeadphoneIdentityHelper bluetoothDeviceConnectSuccess:]";
          v20 = 1024;
          isAppleAudioDevice = [object isAppleAudioDevice];
          _os_log_impl(&dword_21FEE5000, v16, OS_LOG_TYPE_DEFAULT, "%s #shih connected success (Apple:%d)", &v18, 0x12u);
        }

        address2 = [object address];
        [(SiriHeadphoneIdentityHelper *)self updatePersonaId:1 identifier:address2];
      }

      goto LABEL_19;
    }

    btIdentifier = [(SiriHeadphoneIdentityHelper *)self btIdentifier];
    address3 = [object address];
    v9 = [btIdentifier isEqualToString:address3];

    if ((v9 & 1) == 0)
    {
      v10 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[SiriHeadphoneIdentityHelper bluetoothDeviceConnectSuccess:]";
        _os_log_impl(&dword_21FEE5000, v10, OS_LOG_TYPE_DEFAULT, "%s #shih multiple devices connected, this is not allowed", &v18, 0xCu);
      }

      [(SiriHeadphoneIdentityHelper *)self clearUserData];
    }
  }

  else
  {
    v14 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[SiriHeadphoneIdentityHelper bluetoothDeviceConnectSuccess:]";
      _os_log_impl(&dword_21FEE5000, v14, OS_LOG_TYPE_DEFAULT, "%s #shih Not a supported device, ignoring bluetooth", &v18, 0xCu);
    }
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)clearUserData
{
  [(SiriHeadphoneIdentityHelper *)self assignUserData:0 identifier:0];
  [(SiriHeadphoneIdentityHelper *)self setActivationDevice:0];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [(SiriHeadphoneIdentityHelper *)self setActivationTime:distantPast];
}

- (void)assignUserData:(id)data identifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  [(SiriHeadphoneIdentityHelper *)self setBtIdentifier:identifier];
  [(SiriHeadphoneIdentityHelper *)self setUserProfileMetadata:dataCopy];

  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    userProfileMetadata = [(SiriHeadphoneIdentityHelper *)self userProfileMetadata];
    v10 = [(SiriHeadphoneIdentityHelper *)self debugStringForProfileMetadata:userProfileMetadata];
    v12 = 136315394;
    v13 = "[SiriHeadphoneIdentityHelper assignUserData:identifier:]";
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #shih updated assignment %@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updatePersonaId:(BOOL)id identifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  viewController = [(SiriHeadphoneIdentityHelper *)self viewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    viewController2 = [(SiriHeadphoneIdentityHelper *)self viewController];
    v10 = [viewController2 performSelector:sel_canCallOldPersonaAPI] != 0;
  }

  else
  {
    v10 = 0;
  }

  viewController3 = [(SiriHeadphoneIdentityHelper *)self viewController];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    viewController4 = [(SiriHeadphoneIdentityHelper *)self viewController];
    v14 = [viewController4 performSelector:sel_canCallNewPersonaAPI];

    if (v14)
    {
      v15 = aBlock;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__SiriHeadphoneIdentityHelper_updatePersonaId_identifier___block_invoke;
      aBlock[3] = &unk_278430070;
      idCopy = id;
      v16 = &v25;
      objc_copyWeak(&v25, &location);
      aBlock[4] = identifierCopy;
      v17 = _Block_copy(aBlock);
      viewController5 = [(SiriHeadphoneIdentityHelper *)self viewController];
      v19 = _Block_copy(v17);
      [viewController5 performSelector:sel_currentUserProfileMetadata_ withObject:v19];
LABEL_11:

      objc_destroyWeak(v16);
      goto LABEL_12;
    }
  }

  if (v10)
  {
    v20 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SiriHeadphoneIdentityHelper updatePersonaId:v20 identifier:?];
    }

    v15 = v21;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__SiriHeadphoneIdentityHelper_updatePersonaId_identifier___block_invoke_59;
    v21[3] = &unk_278430098;
    idCopy2 = id;
    v16 = &v22;
    objc_copyWeak(&v22, &location);
    v21[4] = identifierCopy;
    v17 = _Block_copy(v21);
    viewController5 = [(SiriHeadphoneIdentityHelper *)self viewController];
    v19 = _Block_copy(v17);
    [viewController5 performSelector:sel_currentPersonaId_ withObject:v19];
    goto LABEL_11;
  }

LABEL_12:
  objc_destroyWeak(&location);
}

void __58__SiriHeadphoneIdentityHelper_updatePersonaId_identifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __58__SiriHeadphoneIdentityHelper_updatePersonaId_identifier___block_invoke_cold_1();
    }
  }

  else
  {
    [v5 setHeadphoneConnected:*(a1 + 48)];
    v7 = [v5 userProfileIdentifier];

    if (!v7)
    {
      [v5 setUserProfileIdentifier:@"00000000-0000-0000-0000-000000000000"];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained assignUserData:v5 identifier:*(a1 + 32)];
  }
}

void __58__SiriHeadphoneIdentityHelper_updatePersonaId_identifier___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __58__SiriHeadphoneIdentityHelper_updatePersonaId_identifier___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D5D308]);
    [v7 setHeadphoneConnected:*(a1 + 48)];
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = @"00000000-0000-0000-0000-000000000000";
    }

    [v7 setUserProfileIdentifier:v8];
    [v7 setConfidence:0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained assignUserData:v7 identifier:*(a1 + 32)];
  }
}

- (id)associatedUserProfileIdentifier
{
  userProfileMetadata = [(SiriHeadphoneIdentityHelper *)self userProfileMetadata];
  userProfileIdentifier = [userProfileMetadata userProfileIdentifier];

  return userProfileIdentifier;
}

- (BOOL)isHeadphoneConnected
{
  userProfileMetadata = [(SiriHeadphoneIdentityHelper *)self userProfileMetadata];
  headphoneConnected = [userProfileMetadata headphoneConnected];

  return headphoneConnected;
}

- (void)siriWentIdleAndQuiet:(BOOL)quiet
{
  v15 = *MEMORY[0x277D85DE8];
  if (quiet)
  {
    activationDevice = [(SiriHeadphoneIdentityHelper *)self activationDevice];

    if (activationDevice)
    {
      activationTime = [(SiriHeadphoneIdentityHelper *)self activationTime];
      [activationTime timeIntervalSinceNow];
      v7 = v6;

      if (v7 < -4.0)
      {
        activationDevice2 = [(SiriHeadphoneIdentityHelper *)self activationDevice];
        v9 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315138;
          v14 = "[SiriHeadphoneIdentityHelper siriWentIdleAndQuiet:]";
          _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #shih idle siri deactivated voice control", &v13, 0xCu);
        }

        v10 = [MEMORY[0x277D551D0] bluetoothDeviceForIdentifier:3 bluetoothDevice:activationDevice2];
        [v10 deactivate];
        [(SiriHeadphoneIdentityHelper *)self setActivationDevice:0];
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        [(SiriHeadphoneIdentityHelper *)self setActivationTime:distantPast];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSObject)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (void)updatePersonaId:(os_log_t)log identifier:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SiriHeadphoneIdentityHelper updatePersonaId:identifier:]";
  _os_log_error_impl(&dword_21FEE5000, log, OS_LOG_TYPE_ERROR, "%s #shih DANGER using old api", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __58__SiriHeadphoneIdentityHelper_updatePersonaId_identifier___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_21FEE5000, v0, OS_LOG_TYPE_ERROR, "%s #shih Error getting current persona id: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end