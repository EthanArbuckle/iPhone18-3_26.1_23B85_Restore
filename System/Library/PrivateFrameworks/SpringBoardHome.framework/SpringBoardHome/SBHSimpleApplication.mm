@interface SBHSimpleApplication
+ (id)homeScreenService;
- (BOOL)iconCompleteUninstall:(id)a3;
- (SBHIconModelApplicationDataSource)iconModelApplicationDataSource;
- (SBHSimpleApplication)initWithApplicationInfo:(id)a3;
- (SBHSimpleApplication)initWithApplicationProxy:(id)a3;
- (SBHSimpleApplication)initWithApplicationRecord:(id)a3;
- (SBHSimpleApplication)initWithBundleIdentifier:(id)a3 allowPlaceholder:(BOOL)a4;
- (SBHSimpleApplication)initWithBundleIdentifier:(id)a3 forcePlaceholder:(BOOL)a4;
- (id)badgeNumberOrStringForIcon:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)labelAccessoryTypeForIcon:(id)a3;
- (unint64_t)priorityForIcon:(id)a3;
- (void)dealloc;
- (void)remoteBadgeValueDidChange;
- (void)updateDeviceManagementPolicy:(int64_t)a3;
- (void)updateProgressState:(int64_t)a3 progressPercent:(double)a4 progressPaused:(BOOL)a5;
@end

@implementation SBHSimpleApplication

- (SBHSimpleApplication)initWithBundleIdentifier:(id)a3 allowPlaceholder:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:v4 error:&v12];
  v8 = v12;
  if (v7)
  {
    self = [(SBHSimpleApplication *)self initWithApplicationRecord:v7];
    v9 = self;
  }

  else
  {
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Error creating SBHSimpleApplication with '%@': %@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (SBHSimpleApplication)initWithBundleIdentifier:(id)a3 forcePlaceholder:(BOOL)a4
{
  v4 = a4;
  result = [(SBHSimpleApplication *)self initWithBundleIdentifier:a3 allowPlaceholder:1];
  if (result)
  {
    if (v4)
    {
      result->_placeholder = 1;
    }
  }

  return result;
}

- (SBHSimpleApplication)initWithApplicationInfo:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SBHSimpleApplication;
  v5 = [(SBHSimpleApplication *)&v21 init];
  if (v5)
  {
    v6 = [v4 bundleIdentifier];
    v7 = [v6 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [v4 bundleURL];
    v10 = [v9 copy];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v10;

    v12 = [v4 displayName];
    v13 = [v12 copy];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    v15 = [v4 tags];
    v16 = [v15 copy];
    tags = v5->_tags;
    v5->_tags = v16;

    v5->_beta = [v4 isBeta];
    v5->_blockedForScreenTimeExpiration = [v4 isBlockedForScreenTimeExpiration];
    v18 = [v4 type];
    v5->_systemApplication = v18 < 2;
    v5->_internalApplication = v18 == 0;
    v19 = +[SBHSimpleApplicationPolicyMonitor sharedInstance];
    [v19 registerApplication:v5];
  }

  return v5;
}

- (SBHSimpleApplication)initWithApplicationProxy:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SBHSimpleApplication;
  v5 = [(SBHSimpleApplication *)&v24 init];
  if (v5)
  {
    v6 = [v4 bundleIdentifier];
    v7 = [v6 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [v4 bundleURL];
    v10 = [v9 copy];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v10;

    v12 = [v4 localizedName];
    v13 = [v12 copy];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    v15 = [v4 appTags];
    tags = v5->_tags;
    v5->_tags = v15;

    v5->_beta = [v4 isBetaApp];
    v17 = [v4 appState];
    v5->_placeholder = [v17 isPlaceholder];

    v5->_installType = [v4 installType];
    v18 = [v4 applicationType];
    v19 = [v18 isEqualToString:*MEMORY[0x1E69635A8]];
    v20 = *MEMORY[0x1E6963578];
    if (v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = [v18 isEqualToString:*MEMORY[0x1E6963578]];
    }

    v5->_systemApplication = v21;
    v5->_internalApplication = [v18 isEqualToString:v20];
    v22 = +[SBHSimpleApplicationPolicyMonitor sharedInstance];
    [v22 registerApplication:v5];
  }

  return v5;
}

- (SBHSimpleApplication)initWithApplicationRecord:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SBHSimpleApplication;
  v5 = [(SBHSimpleApplication *)&v21 init];
  if (v5)
  {
    v6 = [v4 bundleIdentifier];
    v7 = [v6 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [v4 URL];
    v10 = [v9 copy];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v10;

    v12 = [v4 localizedName];
    v13 = [v12 copy];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    v15 = [v4 appTags];
    tags = v5->_tags;
    v5->_tags = v15;

    v5->_beta = [v4 isBeta];
    v5->_placeholder = [v4 isPlaceholder];
    v5->_installType = [v4 installType];
    v17 = [v4 typeForInstallMachinery];
    v5->_internalApplication = [v17 isEqualToString:*MEMORY[0x1E6963578]];
    v18 = ([v17 isEqualToString:*MEMORY[0x1E69635A8]] & 1) != 0 || v5->_internalApplication;
    v5->_systemApplication = v18 & 1;
    v19 = +[SBHSimpleApplicationPolicyMonitor sharedInstance];
    [v19 registerApplication:v5];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[SBHSimpleApplicationPolicyMonitor sharedInstance];
  [v3 unregisterApplication:self];

  v4.receiver = self;
  v4.super_class = SBHSimpleApplication;
  [(SBHSimpleApplication *)&v4 dealloc];
}

- (void)updateDeviceManagementPolicy:(int64_t)a3
{
  v4 = a3 != 0;
  if (self->_blockedForScreenTimeExpiration != v4)
  {
    self->_blockedForScreenTimeExpiration = v4;
    v6 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [v6 postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:self];
  }
}

- (void)updateProgressState:(int64_t)a3 progressPercent:(double)a4 progressPaused:(BOOL)a5
{
  v5 = a5;
  [(SBHSimpleApplication *)self setProgressState:a3];
  [(SBHSimpleApplication *)self setProgressPercent:a4];
  [(SBHSimpleApplication *)self setProgressPaused:v5];
  v8 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [v8 postNotificationName:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self];
}

- (unint64_t)priorityForIcon:(id)a3
{
  if ([(SBHSimpleApplication *)self isPlaceholder])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)labelAccessoryTypeForIcon:(id)a3
{
  if ([(SBHSimpleApplication *)self isBlockedForScreenTimeExpiration])
  {
    return 4;
  }

  if ([(SBHSimpleApplication *)self isBeta])
  {
    return 2;
  }

  if ([(SBHSimpleApplication *)self isPlaceholder])
  {
    [(SBHSimpleApplication *)self installType];
    if (FBSInstallTypeIsCloudDemoted())
    {
      return 3;
    }
  }

  return 0;
}

- (BOOL)iconCompleteUninstall:(id)a3
{
  v4 = [(SBHSimpleApplication *)self iconModelApplicationDataSource];
  v5 = [(SBHSimpleApplication *)self bundleIdentifier];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 uninstallApplicationWithBundleIdentifier:v5 completion:0];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)badgeNumberOrStringForIcon:(id)a3
{
  if (![(SBHSimpleApplication *)self isBadgeValueValid])
  {
    v4 = [MEMORY[0x1E698E740] processHandle];
    v5 = [v4 hasEntitlement:@"com.apple.springboard.iconBadgeValue"];

    if (v5)
    {
      v6 = [(SBHSimpleApplication *)self bundleIdentifier];
      v7 = [objc_opt_class() homeScreenService];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __51__SBHSimpleApplication_badgeNumberOrStringForIcon___block_invoke;
      v10[3] = &unk_1E808AA10;
      v10[4] = self;
      [v7 badgeValueForIconWithApplicationBundleIdentifier:v6 completionHandler:v10];
    }
  }

  v8 = [(SBHSimpleApplication *)self badgeValue];

  return v8;
}

void __51__SBHSimpleApplication_badgeNumberOrStringForIcon___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) setBadgeValueValid:1];
  v3 = [*(a1 + 32) badgeValue];
  v4 = BSEqualObjects();

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) setBadgeValue:v6];
    v5 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [v5 postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:*(a1 + 32)];
  }
}

- (void)remoteBadgeValueDidChange
{
  [(SBHSimpleApplication *)self setBadgeValueValid:0];
  v3 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [v3 postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:self];
}

+ (id)homeScreenService
{
  if (homeScreenService_onceToken != -1)
  {
    +[SBHSimpleApplication homeScreenService];
  }

  v3 = homeScreenService__homeScreenService;

  return v3;
}

uint64_t __41__SBHSimpleApplication_homeScreenService__block_invoke(uint64_t a1)
{
  result = SBHIsRunningInSpringBoard(a1);
  if ((result & 1) == 0)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69D4240]);
    v3 = homeScreenService__homeScreenService;
    homeScreenService__homeScreenService = v2;

    return MEMORY[0x1EEE66BB8](v2, v3);
  }

  return result;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHSimpleApplication *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [(SBHSimpleApplication *)self bundleIdentifier];
  v6 = [v4 appendObject:v5 withName:@"bundleIdentifier"];

  v7 = [(SBHSimpleApplication *)self displayName];
  v8 = [v4 appendObject:v7 withName:@"displayName"];

  v9 = [v4 appendBool:-[SBHSimpleApplication isPlaceholder](self withName:"isPlaceholder") ifEqualTo:{@"isPlaceholder", 1}];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBHSimpleApplication *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (SBHIconModelApplicationDataSource)iconModelApplicationDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_iconModelApplicationDataSource);

  return WeakRetained;
}

@end