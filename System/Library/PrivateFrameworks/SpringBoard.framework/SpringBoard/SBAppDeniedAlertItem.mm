@interface SBAppDeniedAlertItem
- (SBAppDeniedAlertItem)initWithApp:(id)app;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBAppDeniedAlertItem

- (SBAppDeniedAlertItem)initWithApp:(id)app
{
  appCopy = app;
  v6 = [(SBAlertItem *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_application, app);
  }

  return v7;
}

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v5 = [(SBAlertItem *)self alertController:configure];
  v6 = objc_alloc(MEMORY[0x277D28AB0]);
  bundleIdentifier = [(SBApplication *)self->_application bundleIdentifier];
  v8 = [v6 initWithBundleIdentifier:bundleIdentifier];

  if (v8)
  {
    title = [v8 title];
    [v5 setTitle:title];

    v10 = [v8 description];
    [v5 setMessage:v10];

    v11 = MEMORY[0x277D750F8];
    deleteAppButtonText = [v8 deleteAppButtonText];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__SBAppDeniedAlertItem_configure_requirePasscodeForActions___block_invoke;
    v26[3] = &unk_2783A8A18;
    v26[4] = self;
    v13 = v8;
    v27 = v13;
    v14 = [v11 actionWithTitle:deleteAppButtonText style:2 handler:v26];

    v15 = MEMORY[0x277D750F8];
    learnMoreButtonText = [v13 learnMoreButtonText];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__SBAppDeniedAlertItem_configure_requirePasscodeForActions___block_invoke_2;
    v24[3] = &unk_2783A8A18;
    v24[4] = self;
    v17 = v13;
    v25 = v17;
    v18 = [v15 actionWithTitle:learnMoreButtonText style:0 handler:v24];

    v19 = MEMORY[0x277D750F8];
    cancelButtonText = [v17 cancelButtonText];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __60__SBAppDeniedAlertItem_configure_requirePasscodeForActions___block_invoke_3;
    v23[3] = &unk_2783A8A40;
    v23[4] = self;
    v21 = [v19 actionWithTitle:cancelButtonText style:1 handler:v23];

    [v5 addAction:v14];
    [v5 addAction:v18];
    [v5 addAction:v21];
    [v5 setPreferredAction:v14];
  }

  else
  {
    v22 = SBLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SBAppDeniedAlertItem configure:v22 requirePasscodeForActions:?];
    }
  }
}

uint64_t __60__SBAppDeniedAlertItem_configure_requirePasscodeForActions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) deactivateForButton];
  v2 = *(a1 + 40);

  return [v2 deleteAppHandler];
}

void __60__SBAppDeniedAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) deactivateForButton];
  v2 = [*(a1 + 40) learnMoreURL];
  SBWorkspaceActivateApplicationFromURL(v2, 0, 0);
}

@end