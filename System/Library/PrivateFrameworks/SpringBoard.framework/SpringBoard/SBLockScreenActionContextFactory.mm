@interface SBLockScreenActionContextFactory
+ (id)sharedInstance;
- (id)lockScreenActionContextForAction:(id)action fromPlugin:(id)plugin;
- (id)lockScreenActionContextForAlertItem:(id)item;
- (id)lockScreenActionContextForPlugin:(id)plugin;
@end

@implementation SBLockScreenActionContextFactory

+ (id)sharedInstance
{
  if (sharedInstance___once_3 != -1)
  {
    +[SBLockScreenActionContextFactory sharedInstance];
  }

  v3 = sharedInstance___instance_5;

  return v3;
}

void __50__SBLockScreenActionContextFactory_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBLockScreenActionContextFactory);
  v1 = sharedInstance___instance_5;
  sharedInstance___instance_5 = v0;
}

- (id)lockScreenActionContextForAlertItem:(id)item
{
  itemCopy = item;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBLockScreenActionContextFactory_lockScreenActionContextForAlertItem___block_invoke;
  v10[3] = &unk_2783A8C18;
  v11 = itemCopy;
  v4 = itemCopy;
  v5 = MEMORY[0x223D6F7F0](v10);
  lockLabel = [v4 lockLabel];
  shortLockLabel = [v4 shortLockLabel];
  v8 = [objc_alloc(MEMORY[0x277D65EF8]) initWithLockLabel:lockLabel shortLockLabel:shortLockLabel action:v5 identifier:0];
  [v8 setCanBypassPinLock:0];
  [v8 setRequiresUIUnlock:1];
  [v8 setDeactivateAwayController:1];

  return v8;
}

- (id)lockScreenActionContextForPlugin:(id)plugin
{
  pluginCopy = plugin;
  unlockAction = [pluginCopy unlockAction];
  v6 = [(SBLockScreenActionContextFactory *)self lockScreenActionContextForAction:unlockAction fromPlugin:pluginCopy];

  return v6;
}

- (id)lockScreenActionContextForAction:(id)action fromPlugin:(id)plugin
{
  actionCopy = action;
  pluginCopy = plugin;
  v7 = pluginCopy;
  v8 = 0;
  if (actionCopy && pluginCopy)
  {
    if ([actionCopy isApplicationAction])
    {
      v9 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
      policyAggregator = [v9 policyAggregator];
      v11 = [policyAggregator allowsCapability:3];

      if (!v11)
      {
        v18 = 0;
LABEL_14:
        v8 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v12 = actionCopy;
      name = [v7 name];
      bundleID = [v12 bundleID];
      v15 = [v12 url];
      transitionStyle = [v12 transitionStyle];
      if (bundleID | v15)
      {
        v17 = transitionStyle;
        v18 = objc_alloc_init(MEMORY[0x277D65EF8]);
        label = [v12 label];
        [v18 setLockLabel:label];

        [v18 setRequiresAuthentication:1];
        [v18 setCanBypassPinLock:0];
        [v18 setRequiresUIUnlock:1];
        [v18 setDeactivateAwayController:1];
        [v18 setIntent:3];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __80__SBLockScreenActionContextFactory_lockScreenActionContextForAction_fromPlugin___block_invoke;
        v25[3] = &unk_2783AB280;
        v26 = bundleID;
        v27 = v15;
        v28 = name;
        v29 = v17;
        [v18 setAction:v25];
      }

      else
      {
        v18 = 0;
      }

      if (!(bundleID | v15))
      {
        goto LABEL_14;
      }
    }

    else if ([actionCopy isEmergencyDialerAction])
    {
      v18 = objc_alloc_init(MEMORY[0x277D65EF8]);
      [v18 setRequiresAuthentication:0];
      [v18 setRequiresUIUnlock:0];
      [v18 setDeactivateAwayController:0];
      [v18 setAction:&__block_literal_global_11_3];
    }

    else if ([actionCopy isCallAction])
    {
      v20 = actionCopy;
      v18 = objc_alloc_init(MEMORY[0x277D65EF8]);
      [v18 setRequiresAuthentication:0];
      [v18 setRequiresUIUnlock:0];
      [v18 setDeactivateAwayController:0];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __80__SBLockScreenActionContextFactory_lockScreenActionContextForAction_fromPlugin___block_invoke_5;
      v23[3] = &unk_2783A8C18;
      v24 = v20;
      v21 = v20;
      [v18 setAction:v23];
    }

    else
    {
      v18 = 0;
    }

    [v18 setSource:8];
    v18 = v18;
    v8 = v18;
    goto LABEL_17;
  }

LABEL_18:

  return v8;
}

void __80__SBLockScreenActionContextFactory_lockScreenActionContextForAction_fromPlugin___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = SBWorkspaceApplicationForURLWithError(*(a1 + 40), 0, 0);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = +[SBApplicationController sharedInstance];
  v3 = [v2 applicationWithBundleIdentifier:*(a1 + 32)];

  if (v3)
  {
LABEL_3:
    v4 = +[(SBWorkspace *)SBMainWorkspace];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__SBLockScreenActionContextFactory_lockScreenActionContextForAction_fromPlugin___block_invoke_2;
    v7[3] = &unk_2783B72F8;
    v8 = v3;
    v9 = *(a1 + 48);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v10 = v5;
    v11 = v6;
    [v4 requestTransitionWithBuilder:v7];
  }

LABEL_4:
}

void __80__SBLockScreenActionContextFactory_lockScreenActionContextForAction_fromPlugin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 bundleIdentifier];
  v7 = [v3 stringWithFormat:@"Activate %@ from plugin %@", v6, *(a1 + 40)];
  [v5 setEventLabel:v7];

  [v5 setSource:7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__SBLockScreenActionContextFactory_lockScreenActionContextForAction_fromPlugin___block_invoke_3;
  v10[3] = &unk_2783B4538;
  v11 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = v8;
  v13 = v9;
  [v5 modifyApplicationContext:v10];
}

void __80__SBLockScreenActionContextFactory_lockScreenActionContextForAction_fromPlugin___block_invoke_3(void *a1, void *a2)
{
  v4 = a2;
  v3 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:a1[4]];
  [(SBWorkspaceEntity *)v3 setObject:a1[5] forActivationSetting:5];
  [v4 setActivatingEntity:v3];
  if (a1[6] == 2)
  {
    [v4 setAnimationDisabled:1];
  }
}

void __80__SBLockScreenActionContextFactory_lockScreenActionContextForAction_fromPlugin___block_invoke_4()
{
  v2 = +[SBLockScreenManager sharedInstance];
  v0 = [v2 lockScreenEnvironment];
  v1 = [v0 callController];
  [v1 launchEmergencyDialer];
}

void __80__SBLockScreenActionContextFactory_lockScreenActionContextForAction_fromPlugin___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) url];
  SBWorkspaceActivateApplicationFromURL(v1, 0, 0);
}

@end