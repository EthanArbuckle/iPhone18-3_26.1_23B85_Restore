@interface _SBAppProtectionPlugin
- (SBAppProtectionCoordinator)_owningCoordinator;
- (void)setApplication:(id)a3 shielded:(BOOL)a4 forOutlet:(id)a5 completion:(id)a6;
@end

@implementation _SBAppProtectionPlugin

- (void)setApplication:(id)a3 shielded:(BOOL)a4 forOutlet:(id)a5 completion:(id)a6
{
  v7 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  v10 = SBLogAppProtection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v8;
    v16 = 1024;
    v17 = v7;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ shielded: %{BOOL}u", buf, 0x12u);
  }

  v13 = v8;
  v11 = v9;
  v12 = v8;
  BSDispatchMain();
}

- (SBAppProtectionCoordinator)_owningCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->__owningCoordinator);

  return WeakRetained;
}

@end