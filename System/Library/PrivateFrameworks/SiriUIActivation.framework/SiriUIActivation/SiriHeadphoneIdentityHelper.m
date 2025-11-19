@interface SiriHeadphoneIdentityHelper
- (BOOL)deviceSupportsActivation:(id)a3;
- (BOOL)isBluetoothSpeaker:(id)a3;
- (BOOL)isHeadphoneConnected;
- (BOOL)isSupportedHeadphoneDevice:(id)a3;
- (NSObject)viewController;
- (id)associatedUserProfileIdentifier;
- (id)debugStringForProfileMetadata:(id)a3;
- (id)init:(id)a3;
- (void)assignUserData:(id)a3 identifier:(id)a4;
- (void)bluetoothDeviceConnectSuccess:(id)a3;
- (void)bluetoothDeviceDisconnectSuccess:(id)a3;
- (void)bluetoothDeviceEndedVoiceControl:(id)a3;
- (void)bluetoothDeviceInitiatedVoiceControl:(id)a3;
- (void)clearUserData;
- (void)setupBluetoothNotificationObservers;
- (void)siriWentIdleAndQuiet:(BOOL)a3;
- (void)updatePersonaId:(BOOL)a3 identifier:(id)a4;
@end

@implementation SiriHeadphoneIdentityHelper

- (id)init:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SiriHeadphoneIdentityHelper;
  v3 = a3;
  v4 = [(SiriHeadphoneIdentityHelper *)&v9 init];
  [(SiriHeadphoneIdentityHelper *)v4 setViewController:v3, v9.receiver, v9.super_class];

  v5 = [MEMORY[0x277CF3248] sharedInstance];
  [(SiriHeadphoneIdentityHelper *)v4 setBluetoothManager:v5];

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

- (id)debugStringForProfileMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 confidence];
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_2784300B8[v4];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [v3 headphoneConnected];
  v8 = [v3 userProfileIdentifier];

  v9 = [v6 stringWithFormat:@"SMTUPM<connected: %d, confidence: %@, persona: %@>", v7, v5, v8];

  return v9;
}

- (void)setupBluetoothNotificationObservers
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_bluetoothDeviceInitiatedVoiceControl_ name:*MEMORY[0x277CF31E8] object:0];
  [v3 addObserver:self selector:sel_bluetoothDeviceEndedVoiceControl_ name:*MEMORY[0x277CF31E0] object:0];
  [v3 addObserver:self selector:sel_bluetoothDeviceConnectSuccess_ name:*MEMORY[0x277CF3190] object:0];
  [v3 addObserver:self selector:sel_bluetoothDeviceDisconnectSuccess_ name:*MEMORY[0x277CF31A0] object:0];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SiriHeadphoneIdentityHelper setupBluetoothNotificationObservers]";
    _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s #shih setup observer", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSupportedHeadphoneDevice:(id)a3
{
  v3 = a3;
  v4 = ([v3 isAppleAudioDevice] & 1) == 0 && (objc_msgSend(v3, "type") == 16 || objc_msgSend(v3, "type") == 20);

  return v4;
}

- (BOOL)isBluetoothSpeaker:(id)a3
{
  v3 = a3;
  v4 = ([v3 isAppleAudioDevice] & 1) == 0 && objc_msgSend(v3, "type") == 19;

  return v4;
}

- (BOOL)deviceSupportsActivation:(id)a3
{
  v4 = a3;
  if ([(SiriHeadphoneIdentityHelper *)self isBluetoothSpeaker:v4])
  {
    v5 = _os_feature_enabled_impl();
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SiriHeadphoneIdentityHelper *)self isSupportedHeadphoneDevice:v4]| v5;

  return v6 & 1;
}

- (void)bluetoothDeviceInitiatedVoiceControl:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  if ([(SiriHeadphoneIdentityHelper *)self deviceSupportsActivation:v4])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[SiriHeadphoneIdentityHelper bluetoothDeviceInitiatedVoiceControl:]";
      _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #shih initiated voice control", &v9, 0xCu);
    }

    v6 = [MEMORY[0x277D551D0] bluetoothDeviceForIdentifier:3 bluetoothDevice:v4];
    [v6 activate];
    [(SiriHeadphoneIdentityHelper *)self setActivationDevice:v4];
    v7 = [MEMORY[0x277CBEAA8] now];
    [(SiriHeadphoneIdentityHelper *)self setActivationTime:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)bluetoothDeviceEndedVoiceControl:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  if ([(SiriHeadphoneIdentityHelper *)self deviceSupportsActivation:v4])
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SiriHeadphoneIdentityHelper bluetoothDeviceEndedVoiceControl:]";
      _os_log_impl(&dword_21FEE5000, v5, OS_LOG_TYPE_DEFAULT, "%s #shih ended voice control", &v8, 0xCu);
    }

    v6 = [MEMORY[0x277D551D0] bluetoothDeviceForIdentifier:3 bluetoothDevice:v4];
    [v6 deactivate];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)bluetoothDeviceDisconnectSuccess:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [(SiriHeadphoneIdentityHelper *)self userProfileMetadata];
  v6 = [v5 headphoneConnected];

  if (v6)
  {
    if ([(SiriHeadphoneIdentityHelper *)self isBluetoothSpeaker:v4]|| [(SiriHeadphoneIdentityHelper *)self isSupportedHeadphoneDevice:v4])
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

- (void)bluetoothDeviceConnectSuccess:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  if ([(SiriHeadphoneIdentityHelper *)self isSupportedHeadphoneDevice:v4]|| [(SiriHeadphoneIdentityHelper *)self isBluetoothSpeaker:v4])
  {
    v5 = [(SiriHeadphoneIdentityHelper *)self userProfileMetadata];
    v6 = [v5 headphoneConnected];

    if (!v6)
    {
      if ([(SiriHeadphoneIdentityHelper *)self isBluetoothSpeaker:v4])
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

        v12 = objc_alloc_init(MEMORY[0x277D5D308]);
        [v12 setUserProfileIdentifier:@"00000000-0000-0000-0000-000000000000"];
        [v12 setConfidence:0];
        [v12 setHeadphoneConnected:1];
        v13 = [v4 address];
        [(SiriHeadphoneIdentityHelper *)self assignUserData:v12 identifier:v13];
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
          v21 = [v4 isAppleAudioDevice];
          _os_log_impl(&dword_21FEE5000, v16, OS_LOG_TYPE_DEFAULT, "%s #shih connected success (Apple:%d)", &v18, 0x12u);
        }

        v12 = [v4 address];
        [(SiriHeadphoneIdentityHelper *)self updatePersonaId:1 identifier:v12];
      }

      goto LABEL_19;
    }

    v7 = [(SiriHeadphoneIdentityHelper *)self btIdentifier];
    v8 = [v4 address];
    v9 = [v7 isEqualToString:v8];

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
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  [(SiriHeadphoneIdentityHelper *)self setActivationTime:v3];
}

- (void)assignUserData:(id)a3 identifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SiriHeadphoneIdentityHelper *)self setBtIdentifier:a4];
  [(SiriHeadphoneIdentityHelper *)self setUserProfileMetadata:v6];

  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(SiriHeadphoneIdentityHelper *)self userProfileMetadata];
    v10 = [(SiriHeadphoneIdentityHelper *)self debugStringForProfileMetadata:v9];
    v12 = 136315394;
    v13 = "[SiriHeadphoneIdentityHelper assignUserData:identifier:]";
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_21FEE5000, v8, OS_LOG_TYPE_DEFAULT, "%s #shih updated assignment %@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updatePersonaId:(BOOL)a3 identifier:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(SiriHeadphoneIdentityHelper *)self viewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SiriHeadphoneIdentityHelper *)self viewController];
    v10 = [v9 performSelector:sel_canCallOldPersonaAPI] != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SiriHeadphoneIdentityHelper *)self viewController];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(SiriHeadphoneIdentityHelper *)self viewController];
    v14 = [v13 performSelector:sel_canCallNewPersonaAPI];

    if (v14)
    {
      v15 = aBlock;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__SiriHeadphoneIdentityHelper_updatePersonaId_identifier___block_invoke;
      aBlock[3] = &unk_278430070;
      v26 = a3;
      v16 = &v25;
      objc_copyWeak(&v25, &location);
      aBlock[4] = v6;
      v17 = _Block_copy(aBlock);
      v18 = [(SiriHeadphoneIdentityHelper *)self viewController];
      v19 = _Block_copy(v17);
      [v18 performSelector:sel_currentUserProfileMetadata_ withObject:v19];
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
    v23 = a3;
    v16 = &v22;
    objc_copyWeak(&v22, &location);
    v21[4] = v6;
    v17 = _Block_copy(v21);
    v18 = [(SiriHeadphoneIdentityHelper *)self viewController];
    v19 = _Block_copy(v17);
    [v18 performSelector:sel_currentPersonaId_ withObject:v19];
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
  v2 = [(SiriHeadphoneIdentityHelper *)self userProfileMetadata];
  v3 = [v2 userProfileIdentifier];

  return v3;
}

- (BOOL)isHeadphoneConnected
{
  v2 = [(SiriHeadphoneIdentityHelper *)self userProfileMetadata];
  v3 = [v2 headphoneConnected];

  return v3;
}

- (void)siriWentIdleAndQuiet:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(SiriHeadphoneIdentityHelper *)self activationDevice];

    if (v4)
    {
      v5 = [(SiriHeadphoneIdentityHelper *)self activationTime];
      [v5 timeIntervalSinceNow];
      v7 = v6;

      if (v7 < -4.0)
      {
        v8 = [(SiriHeadphoneIdentityHelper *)self activationDevice];
        v9 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315138;
          v14 = "[SiriHeadphoneIdentityHelper siriWentIdleAndQuiet:]";
          _os_log_impl(&dword_21FEE5000, v9, OS_LOG_TYPE_DEFAULT, "%s #shih idle siri deactivated voice control", &v13, 0xCu);
        }

        v10 = [MEMORY[0x277D551D0] bluetoothDeviceForIdentifier:3 bluetoothDevice:v8];
        [v10 deactivate];
        [(SiriHeadphoneIdentityHelper *)self setActivationDevice:0];
        v11 = [MEMORY[0x277CBEAA8] distantPast];
        [(SiriHeadphoneIdentityHelper *)self setActivationTime:v11];
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