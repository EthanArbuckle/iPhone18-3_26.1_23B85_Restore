@interface _SBAppProtectionPlugin
- (SBAppProtectionCoordinator)_owningCoordinator;
- (void)setApplication:(id)application shielded:(BOOL)shielded forOutlet:(id)outlet completion:(id)completion;
@end

@implementation _SBAppProtectionPlugin

- (void)setApplication:(id)application shielded:(BOOL)shielded forOutlet:(id)outlet completion:(id)completion
{
  shieldedCopy = shielded;
  v18 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  completionCopy = completion;
  v10 = SBLogAppProtection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = applicationCopy;
    v16 = 1024;
    v17 = shieldedCopy;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ shielded: %{BOOL}u", buf, 0x12u);
  }

  v13 = applicationCopy;
  v11 = completionCopy;
  v12 = applicationCopy;
  BSDispatchMain();
}

- (SBAppProtectionCoordinator)_owningCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->__owningCoordinator);

  return WeakRetained;
}

@end