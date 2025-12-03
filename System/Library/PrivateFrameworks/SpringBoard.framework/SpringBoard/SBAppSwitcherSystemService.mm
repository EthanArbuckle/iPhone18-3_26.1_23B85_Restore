@interface SBAppSwitcherSystemService
- (SBAppSwitcherSystemService)initWithSwitcherCoordinator:(id)coordinator commandTabController:(id)controller;
- (void)requestAppearanceForHiddenAppWithBundleIdentifier:(id)identifier assertionPort:(id)port forClient:(id)client withCompletion:(id)completion;
- (void)systemServiceServer:(id)server requestAppearanceForHiddenAppWithBundleIdentifier:(id)identifier assertionPort:(id)port forClient:(id)client withCompletion:(id)completion;
- (void)systemServiceServer:(id)server requestUpdateWindowingMode:(int)mode forClient:(id)client completion:(id)completion;
- (void)systemServiceServer:(id)server resetLayoutAttributesForClient:(id)client completion:(id)completion;
@end

@implementation SBAppSwitcherSystemService

- (SBAppSwitcherSystemService)initWithSwitcherCoordinator:(id)coordinator commandTabController:(id)controller
{
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = SBAppSwitcherSystemService;
  v9 = [(SBAppSwitcherSystemService *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_switcherCoordinator, coordinator);
    _recentAppLayoutsController = [coordinatorCopy _recentAppLayoutsController];
    recentAppLayouts = v10->_recentAppLayouts;
    v10->_recentAppLayouts = _recentAppLayoutsController;

    objc_storeStrong(&v10->_commandTabController, controller);
    v13 = +[SBSystemServiceServer sharedInstance];
    [v13 setAppSwitcherDelegate:v10];

    v14 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.requestAppSwitcherAppearanceForHiddenApp"];
    requestAppearanceForHiddenAppAuthenticator = v10->_requestAppearanceForHiddenAppAuthenticator;
    v10->_requestAppearanceForHiddenAppAuthenticator = v14;
  }

  return v10;
}

- (void)requestAppearanceForHiddenAppWithBundleIdentifier:(id)identifier assertionPort:(id)port forClient:(id)client withCompletion:(id)completion
{
  identifierCopy = identifier;
  portCopy = port;
  clientCopy = client;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  if (!clientCopy)
  {
    [SBAppSwitcherSystemService requestAppearanceForHiddenAppWithBundleIdentifier:a2 assertionPort:self forClient:? withCompletion:?];
  }

  requestAppearanceForHiddenAppAuthenticator = self->_requestAppearanceForHiddenAppAuthenticator;
  processHandle = [clientCopy processHandle];
  auditToken = [processHandle auditToken];
  v30 = 0;
  v18 = [(FBServiceClientAuthenticator *)requestAppearanceForHiddenAppAuthenticator authenticateAuditToken:auditToken error:&v30];
  v19 = v30;

  if (v18)
  {
    v20 = +[SBApplicationController sharedInstance];
    v21 = [v20 applicationWithBundleIdentifier:identifierCopy];

    if (v21)
    {
      v22 = [(SBRecentAppLayouts *)self->_recentAppLayouts _acquireAllowHiddenAppAssertionForBundleIdentifier:identifierCopy reason:@"SBAppSwitcherSystemService"];
      [(SBCommandTabController *)self->_commandTabController _allowAppToAppearWhileHidden:identifierCopy];
      v23 = MEMORY[0x277CF0CB8];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __119__SBAppSwitcherSystemService_requestAppearanceForHiddenAppWithBundleIdentifier_assertionPort_forClient_withCompletion___block_invoke;
      v26[3] = &unk_2783A8ED8;
      v27 = v22;
      selfCopy = self;
      v29 = identifierCopy;
      v24 = v22;
      [v23 monitorSendRight:portCopy withHandler:v26];
    }

    completionCopy[2](completionCopy, v21 != 0);
  }

  else
  {
    v25 = SBLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SBAppSwitcherSystemService requestAppearanceForHiddenAppWithBundleIdentifier:v19 assertionPort:v25 forClient:? withCompletion:?];
    }

    completionCopy[2](completionCopy, 0);
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

- (void)systemServiceServer:(id)server requestAppearanceForHiddenAppWithBundleIdentifier:(id)identifier assertionPort:(id)port forClient:(id)client withCompletion:(id)completion
{
  identifierCopy = identifier;
  portCopy = port;
  clientCopy = client;
  completionCopy = completion;
  v10 = completionCopy;
  v11 = clientCopy;
  v12 = portCopy;
  v13 = identifierCopy;
  BSDispatchMain();
}

- (void)systemServiceServer:(id)server resetLayoutAttributesForClient:(id)client completion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  BSDispatchMain();
}

- (void)systemServiceServer:(id)server requestUpdateWindowingMode:(int)mode forClient:(id)client completion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
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