@interface HKSPDNDConfigurationService(Editing)
- (uint64_t)_actuallyUpdateModeConfiguration:()Editing state:error:;
- (uint64_t)_createSleepFocusModeInState:()Editing error:;
- (uint64_t)_updateSleepFocusModeWithState:()Editing error:;
- (uint64_t)configureSleepFocusModeWithState:()Editing error:;
- (uint64_t)createSleepFocusModeInState:()Editing error:;
- (uint64_t)removeSleepFocusMode:()Editing;
@end

@implementation HKSPDNDConfigurationService(Editing)

- (uint64_t)createSleepFocusModeInState:()Editing error:
{
  v13 = *MEMORY[0x277D85DE8];
  if ([self hasSleepFocusMode:a4])
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] already have a sleep focus mode", &v11, 0xCu);
    }

    v8 = *MEMORY[0x277D85DE8];
    return 1;
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    return [self _createSleepFocusModeInState:a3 error:a4];
  }
}

- (uint64_t)removeSleepFocusMode:()Editing
{
  modeConfigService = [self modeConfigService];
  v6 = [modeConfigService removeModeConfigurationForModeIdentifier:*MEMORY[0x277D622D0] error:a3];

  if (v6)
  {
    [self updateCachedUUID:0 state:0];
  }

  return v6;
}

- (uint64_t)configureSleepFocusModeWithState:()Editing error:
{
  v13 = *MEMORY[0x277D85DE8];
  if ([self hasSleepFocusMode:a4])
  {
    v7 = *MEMORY[0x277D85DE8];

    return [self _updateSleepFocusModeWithState:a3 error:a4];
  }

  else
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] we don't have a sleep focus mode", &v11, 0xCu);
    }

    v10 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (uint64_t)_createSleepFocusModeInState:()Editing error:
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHKSPSleepFocusConfigurationState();
    v16 = 138543618;
    selfCopy2 = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating default sleep focus mode (state: %{public}@)", &v16, 0x16u);
  }

  modeConfigService = [self modeConfigService];
  v10 = [modeConfigService createDefaultSleepingModeConfigurationWithError:a4];

  if (v10)
  {
    v11 = [self _actuallyUpdateModeConfiguration:v10 state:a3 error:a4];
  }

  else
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *a4;
      v16 = 138543618;
      selfCopy2 = self;
      v18 = 2114;
      v19 = v15;
      _os_log_error_impl(&dword_269B11000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] failed to create default sleep focus mode configuration with error: %{public}@", &v16, 0x16u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (uint64_t)_updateSleepFocusModeWithState:()Editing error:
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHKSPSleepFocusConfigurationState();
    v16 = 138543618;
    selfCopy2 = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating existing sleep focus mode (state: %{public}@)", &v16, 0x16u);
  }

  modeConfigService = [self modeConfigService];
  v10 = [modeConfigService modeConfigurationForModeIdentifier:*MEMORY[0x277D622D0] error:a4];

  if (v10)
  {
    v11 = [self _actuallyUpdateModeConfiguration:v10 state:a3 error:a4];
  }

  else
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *a4;
      v16 = 138543618;
      selfCopy2 = self;
      v18 = 2114;
      v19 = v15;
      _os_log_error_impl(&dword_269B11000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] failed to fetch existing sleep focus mode configuration with error: %{public}@", &v16, 0x16u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (uint64_t)_actuallyUpdateModeConfiguration:()Editing state:error:
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [a3 hksp_configurationWithConfigurationState:a4];
  modeConfigService = [self modeConfigService];
  v9 = [modeConfigService setModeConfiguration:v7 error:a5];

  v10 = HKSPLogForCategory();
  mode = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_269B11000, mode, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully set sleep focus mode configuration", &v16, 0xCu);
    }

    mode = [v7 mode];
    identifier = [mode identifier];
    [self updateCachedUUID:identifier state:{objc_msgSend(v7, "hksp_configurationState")}];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v15 = *a5;
    v16 = 138543618;
    selfCopy2 = self;
    v18 = 2114;
    v19 = v15;
    _os_log_error_impl(&dword_269B11000, mode, OS_LOG_TYPE_ERROR, "[%{public}@] failed to set sleep focus mode configuration with error: %{public}@", &v16, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

@end