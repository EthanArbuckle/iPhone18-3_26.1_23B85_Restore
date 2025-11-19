@interface SBAppSwitcherSystemService
- (SBAppSwitcherSystemService)initWithSwitcherCoordinator:(id)a3 commandTabController:(id)a4;
- (void)requestAppearanceForHiddenAppWithBundleIdentifier:(id)a3 assertionPort:(id)a4 forClient:(id)a5 withCompletion:(id)a6;
- (void)systemServiceServer:(id)a3 requestAppearanceForHiddenAppWithBundleIdentifier:(id)a4 assertionPort:(id)a5 forClient:(id)a6 withCompletion:(id)a7;
- (void)systemServiceServer:(id)a3 requestUpdateWindowingMode:(int)a4 forClient:(id)a5 completion:(id)a6;
- (void)systemServiceServer:(id)a3 resetLayoutAttributesForClient:(id)a4 completion:(id)a5;
@end

@implementation SBAppSwitcherSystemService

- (SBAppSwitcherSystemService)initWithSwitcherCoordinator:(id)a3 commandTabController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SBAppSwitcherSystemService;
  v9 = [(SBAppSwitcherSystemService *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_switcherCoordinator, a3);
    v11 = [v7 _recentAppLayoutsController];
    recentAppLayouts = v10->_recentAppLayouts;
    v10->_recentAppLayouts = v11;

    objc_storeStrong(&v10->_commandTabController, a4);
    v13 = +[SBSystemServiceServer sharedInstance];
    [v13 setAppSwitcherDelegate:v10];

    v14 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.requestAppSwitcherAppearanceForHiddenApp"];
    requestAppearanceForHiddenAppAuthenticator = v10->_requestAppearanceForHiddenAppAuthenticator;
    v10->_requestAppearanceForHiddenAppAuthenticator = v14;
  }

  return v10;
}

- (void)requestAppearanceForHiddenAppWithBundleIdentifier:(id)a3 assertionPort:(id)a4 forClient:(id)a5 withCompletion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  BSDispatchQueueAssertMain();
  if (!v13)
  {
    [SBAppSwitcherSystemService requestAppearanceForHiddenAppWithBundleIdentifier:a2 assertionPort:self forClient:? withCompletion:?];
  }

  requestAppearanceForHiddenAppAuthenticator = self->_requestAppearanceForHiddenAppAuthenticator;
  v16 = [v13 processHandle];
  v17 = [v16 auditToken];
  v30 = 0;
  v18 = [(FBServiceClientAuthenticator *)requestAppearanceForHiddenAppAuthenticator authenticateAuditToken:v17 error:&v30];
  v19 = v30;

  if (v18)
  {
    v20 = +[SBApplicationController sharedInstance];
    v21 = [v20 applicationWithBundleIdentifier:v11];

    if (v21)
    {
      v22 = [(SBRecentAppLayouts *)self->_recentAppLayouts _acquireAllowHiddenAppAssertionForBundleIdentifier:v11 reason:@"SBAppSwitcherSystemService"];
      [(SBCommandTabController *)self->_commandTabController _allowAppToAppearWhileHidden:v11];
      v23 = MEMORY[0x277CF0CB8];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __119__SBAppSwitcherSystemService_requestAppearanceForHiddenAppWithBundleIdentifier_assertionPort_forClient_withCompletion___block_invoke;
      v26[3] = &unk_2783A8ED8;
      v27 = v22;
      v28 = self;
      v29 = v11;
      v24 = v22;
      [v23 monitorSendRight:v12 withHandler:v26];
    }

    v14[2](v14, v21 != 0);
  }

  else
  {
    v25 = SBLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SBAppSwitcherSystemService requestAppearanceForHiddenAppWithBundleIdentifier:v19 assertionPort:v25 forClient:? withCompletion:?];
    }

    v14[2](v14, 0);
  }
}

void __119__SBAppSwitcherSystemService_requestAppearanceForHiddenAppWithBundleIdentifier_assertionPort_forClient_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  BSDispatchMain();
}

uint64_t __119__SBAppSwitcherSystemService_requestAppearanceForHiddenAppWithBundleIdentifier_assertionPort_forClient_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 24);

  return [v3 _disallowAppFromAppearingWhileHidden:v2];
}

- (void)systemServiceServer:(id)a3 requestAppearanceForHiddenAppWithBundleIdentifier:(id)a4 assertionPort:(id)a5 forClient:(id)a6 withCompletion:(id)a7
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v10 = v17;
  v11 = v16;
  v12 = v15;
  v13 = v14;
  BSDispatchMain();
}

- (void)systemServiceServer:(id)a3 resetLayoutAttributesForClient:(id)a4 completion:(id)a5
{
  v6 = a5;
  v5 = v6;
  BSDispatchMain();
}

- (void)systemServiceServer:(id)a3 requestUpdateWindowingMode:(int)a4 forClient:(id)a5 completion:(id)a6
{
  v7 = a6;
  v6 = v7;
  BSDispatchMain();
}

void __98__SBAppSwitcherSystemService_systemServiceServer_requestUpdateWindowingMode_forClient_completion___block_invoke(uint64_t a1)
{
  v2 = +[SBDefaults localDefaults];
  v6 = [v2 appSwitcherDefaults];

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = 6u >> v3;
    [v6 setChamoisWindowingEnabled:(4u >> v3) & 1];
    [v6 setMedusaMultitaskingEnabled:v4 & 1];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)requestAppearanceForHiddenAppWithBundleIdentifier:(uint64_t)a1 assertionPort:(uint64_t)a2 forClient:withCompletion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppSwitcherSystemService.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"client"}];
}

- (void)requestAppearanceForHiddenAppWithBundleIdentifier:(void *)a1 assertionPort:(NSObject *)a2 forClient:withCompletion:.cold.2(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 136315394;
  v5 = "[SBAppSwitcherSystemService requestAppearanceForHiddenAppWithBundleIdentifier:assertionPort:forClient:withCompletion:]";
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%s %{public}@", &v4, 0x16u);
}

@end