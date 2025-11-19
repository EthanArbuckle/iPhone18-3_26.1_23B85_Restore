@interface SBLegacyVOIPRefreshWakeTracker
- (BOOL)beginWakeForApplication:(id)a3;
- (id)_createAssertionForAppProcessIdentity:(id)a3;
- (void)dealloc;
- (void)endWake;
- (void)setAppKeepAliveAssertion:(id)a3;
@end

@implementation SBLegacyVOIPRefreshWakeTracker

- (void)dealloc
{
  [(SBLegacyVOIPRefreshWakeTracker *)self setAppKeepAliveAssertion:0];
  v3.receiver = self;
  v3.super_class = SBLegacyVOIPRefreshWakeTracker;
  [(SBLegacyVOIPRefreshWakeTracker *)&v3 dealloc];
}

- (BOOL)beginWakeForApplication:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [v4 info];
  v6 = [v5 processIdentity];

  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBLegacyVOIPRefreshWakeTracker: waking %{public}@.", buf, 0xCu);
  }

  v8 = +[SBWorkspace mainWorkspace];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__SBLegacyVOIPRefreshWakeTracker_beginWakeForApplication___block_invoke;
  v12[3] = &unk_2783AD9F0;
  v13 = v4;
  v14 = self;
  v15 = v6;
  v9 = v6;
  v10 = v4;
  [v8 requestTransitionWithBuilder:v12];

  return 1;
}

void __58__SBLegacyVOIPRefreshWakeTracker_beginWakeForApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:59];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SBLegacyVOIPRefreshWakeTracker_beginWakeForApplication___block_invoke_2;
  v8[3] = &unk_2783A98C8;
  v9 = *(a1 + 32);
  [v3 modifyApplicationContext:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SBLegacyVOIPRefreshWakeTracker_beginWakeForApplication___block_invoke_3;
  v6[3] = &unk_2783A8BF0;
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v4;
  v5 = [v3 addCompletionHandler:v6];
}

void __58__SBLegacyVOIPRefreshWakeTracker_beginWakeForApplication___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:*(a1 + 32)];
  v4 = [objc_alloc(MEMORY[0x277D75148]) initWithInfo:0 responder:0];
  v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
  [(SBApplicationSceneEntity *)v6 addActions:v5];

  [v3 setBackground:1];
  [v3 setWaitsForSceneUpdates:0];
  [v3 setEntity:v6 forLayoutRole:1];
}

void __58__SBLegacyVOIPRefreshWakeTracker_beginWakeForApplication___block_invoke_3(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    v6 = [v3 _createAssertionForAppProcessIdentity:*(a1 + 40)];
    [v3 setAppKeepAliveAssertion:?];
  }

  else
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138543362;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBLegacyVOIPRefreshWakeTracker: SBWorkspace rejected activation of %{public}@.", buf, 0xCu);
    }
  }
}

- (void)endWake
{
  BSDispatchQueueAssertMain();

  [(SBLegacyVOIPRefreshWakeTracker *)self setAppKeepAliveAssertion:0];
}

- (void)setAppKeepAliveAssertion:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  appKeepAliveAssertion = self->_appKeepAliveAssertion;
  if (appKeepAliveAssertion != v4)
  {
    [(RBSAssertion *)appKeepAliveAssertion invalidate];
  }

  v6 = self->_appKeepAliveAssertion;
  self->_appKeepAliveAssertion = v4;
}

- (id)_createAssertionForAppProcessIdentity:(id)a3
{
  v22[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [MEMORY[0x277D47008] targetWithProcessIdentity:v4];
  v6 = [MEMORY[0x277D46DF0] grantUserInitiated];
  v22[0] = v6;
  v7 = [MEMORY[0x277D46FD0] withReason:10003];
  v22[1] = v7;
  v8 = [MEMORY[0x277D46E30] grant];
  v22[2] = v8;
  v9 = [MEMORY[0x277D46EA8] grantWithForegroundPriority];
  v22[3] = v9;
  v10 = [MEMORY[0x277D46FC0] grantWithResistance:30];
  v22[4] = v10;
  v11 = MEMORY[0x277D46E48];
  [(SBLegacyVOIPRefreshWakeTracker *)self wakeDuration];
  v12 = [v11 invalidateAfterInterval:?];
  v22[5] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:6];

  v14 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:@"Wake for VoIP Keep Alive" target:v5 attributes:v13];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__SBLegacyVOIPRefreshWakeTracker__createAssertionForAppProcessIdentity___block_invoke;
  v20[3] = &unk_2783ADA18;
  v20[4] = self;
  v15 = v4;
  v21 = v15;
  [v14 setInvalidationHandler:v20];
  v19 = 0;
  LOBYTE(v7) = [v14 acquireWithError:&v19];
  v16 = v19;
  if ((v7 & 1) == 0)
  {
    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(SBLegacyVOIPRefreshWakeTracker *)v15 _createAssertionForAppProcessIdentity:v16, v17];
    }

    v14 = 0;
  }

  return v14;
}

void __72__SBLegacyVOIPRefreshWakeTracker__createAssertionForAppProcessIdentity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = *(a1 + 40);
  v10 = v6;
  v7 = v6;
  v8 = v5;
  BSDispatchMain();
}

uint64_t __72__SBLegacyVOIPRefreshWakeTracker__createAssertionForAppProcessIdentity___block_invoke_2(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(result + 32) == *(*(result + 40) + 8))
  {
    v1 = result;
    v2 = SBLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 48);
      v4 = [*(v1 + 56) localizedFailureReason];
      v5 = 138543618;
      v6 = v3;
      v7 = 2114;
      v8 = v4;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBLegacyVOIPRefreshWakeTracker: keep-alive assertion for %{public}@ invalidated: %{public}@", &v5, 0x16u);
    }

    return [*(v1 + 40) setAppKeepAliveAssertion:0];
  }

  return result;
}

- (void)_createAssertionForAppProcessIdentity:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 descriptionWithMultilinePrefix:0];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "SBLegacyVOIPRefreshWakeTracker: failed to acquire keep-alive assertion for %{public}@: %{public}@.", &v6, 0x16u);
}

@end