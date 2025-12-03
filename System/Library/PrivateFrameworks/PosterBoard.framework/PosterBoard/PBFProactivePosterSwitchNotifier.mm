@interface PBFProactivePosterSwitchNotifier
- (void)posterExtensionDataStore:(id)store didUpdateActiveConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason;
@end

@implementation PBFProactivePosterSwitchNotifier

- (void)posterExtensionDataStore:(id)store didUpdateActiveConfiguration:(id)configuration associatedConfiguration:(id)associatedConfiguration reason:(id)reason
{
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  configurationCopy = configuration;
  role = [configurationCopy role];
  v10 = PBFLogDataStore();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = role;
    _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "Preparing to update proactive poster switch for role %{public}@", buf, 0xCu);
  }

  _path = [configurationCopy _path];

  serverIdentity = [_path serverIdentity];
  posterUUID = [serverIdentity posterUUID];
  uUIDString = [posterUUID UUIDString];

  v15 = [objc_alloc(MEMORY[0x277CEB7C0]) initWithLockscreenId:uUIDString switchMechanism:reasonCopy outcome:&stru_282CD3858 duration:0];
  mEMORY[0x277CEB530] = [MEMORY[0x277CEB530] sharedInstance];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __121__PBFProactivePosterSwitchNotifier_posterExtensionDataStore_didUpdateActiveConfiguration_associatedConfiguration_reason___block_invoke;
  v18[3] = &unk_2782C59F0;
  v19 = role;
  v17 = role;
  [mEMORY[0x277CEB530] logPosterSwitch:v15 completion:v18];
}

void __121__PBFProactivePosterSwitchNotifier_posterExtensionDataStore_didUpdateActiveConfiguration_associatedConfiguration_reason___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBFLogDataStore();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __121__PBFProactivePosterSwitchNotifier_posterExtensionDataStore_didUpdateActiveConfiguration_associatedConfiguration_reason___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "Success logging poster switch to proactive for role %{public}@", &v7, 0xCu);
  }
}

void __121__PBFProactivePosterSwitchNotifier_posterExtensionDataStore_didUpdateActiveConfiguration_associatedConfiguration_reason___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_21B526000, log, OS_LOG_TYPE_ERROR, "Error logging poster switch to proactive for role %{public}@: %{public}@", &v4, 0x16u);
}

@end