@interface SBHSimpleApplication
+ (id)homeScreenService;
- (BOOL)iconCompleteUninstall:(id)uninstall;
- (SBHIconModelApplicationDataSource)iconModelApplicationDataSource;
- (SBHSimpleApplication)initWithApplicationInfo:(id)info;
- (SBHSimpleApplication)initWithApplicationProxy:(id)proxy;
- (SBHSimpleApplication)initWithApplicationRecord:(id)record;
- (SBHSimpleApplication)initWithBundleIdentifier:(id)identifier allowPlaceholder:(BOOL)placeholder;
- (SBHSimpleApplication)initWithBundleIdentifier:(id)identifier forcePlaceholder:(BOOL)placeholder;
- (id)badgeNumberOrStringForIcon:(id)icon;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)labelAccessoryTypeForIcon:(id)icon;
- (unint64_t)priorityForIcon:(id)icon;
- (void)dealloc;
- (void)remoteBadgeValueDidChange;
- (void)updateDeviceManagementPolicy:(int64_t)policy;
- (void)updateProgressState:(int64_t)state progressPercent:(double)percent progressPaused:(BOOL)paused;
@end

@implementation SBHSimpleApplication

- (SBHSimpleApplication)initWithBundleIdentifier:(id)identifier allowPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v12 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:placeholderCopy error:&v12];
  v8 = v12;
  if (v7)
  {
    self = [(SBHSimpleApplication *)self initWithApplicationRecord:v7];
    selfCopy = self;
  }

  else
  {
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = identifierCopy;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Error creating SBHSimpleApplication with '%@': %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (SBHSimpleApplication)initWithBundleIdentifier:(id)identifier forcePlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  result = [(SBHSimpleApplication *)self initWithBundleIdentifier:identifier allowPlaceholder:1];
  if (result)
  {
    if (placeholderCopy)
    {
      result->_placeholder = 1;
    }
  }

  return result;
}

- (SBHSimpleApplication)initWithApplicationInfo:(id)info
{
  infoCopy = info;
  v21.receiver = self;
  v21.super_class = SBHSimpleApplication;
  v5 = [(SBHSimpleApplication *)&v21 init];
  if (v5)
  {
    bundleIdentifier = [infoCopy bundleIdentifier];
    v7 = [bundleIdentifier copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    bundleURL = [infoCopy bundleURL];
    v10 = [bundleURL copy];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v10;

    displayName = [infoCopy displayName];
    v13 = [displayName copy];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    tags = [infoCopy tags];
    v16 = [tags copy];
    tags = v5->_tags;
    v5->_tags = v16;

    v5->_beta = [infoCopy isBeta];
    v5->_blockedForScreenTimeExpiration = [infoCopy isBlockedForScreenTimeExpiration];
    type = [infoCopy type];
    v5->_systemApplication = type < 2;
    v5->_internalApplication = type == 0;
    v19 = +[SBHSimpleApplicationPolicyMonitor sharedInstance];
    [v19 registerApplication:v5];
  }

  return v5;
}

- (SBHSimpleApplication)initWithApplicationProxy:(id)proxy
{
  proxyCopy = proxy;
  v24.receiver = self;
  v24.super_class = SBHSimpleApplication;
  v5 = [(SBHSimpleApplication *)&v24 init];
  if (v5)
  {
    bundleIdentifier = [proxyCopy bundleIdentifier];
    v7 = [bundleIdentifier copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    bundleURL = [proxyCopy bundleURL];
    v10 = [bundleURL copy];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v10;

    localizedName = [proxyCopy localizedName];
    v13 = [localizedName copy];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    appTags = [proxyCopy appTags];
    tags = v5->_tags;
    v5->_tags = appTags;

    v5->_beta = [proxyCopy isBetaApp];
    appState = [proxyCopy appState];
    v5->_placeholder = [appState isPlaceholder];

    v5->_installType = [proxyCopy installType];
    applicationType = [proxyCopy applicationType];
    v19 = [applicationType isEqualToString:*MEMORY[0x1E69635A8]];
    v20 = *MEMORY[0x1E6963578];
    if (v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = [applicationType isEqualToString:*MEMORY[0x1E6963578]];
    }

    v5->_systemApplication = v21;
    v5->_internalApplication = [applicationType isEqualToString:v20];
    v22 = +[SBHSimpleApplicationPolicyMonitor sharedInstance];
    [v22 registerApplication:v5];
  }

  return v5;
}

- (SBHSimpleApplication)initWithApplicationRecord:(id)record
{
  recordCopy = record;
  v21.receiver = self;
  v21.super_class = SBHSimpleApplication;
  v5 = [(SBHSimpleApplication *)&v21 init];
  if (v5)
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    v7 = [bundleIdentifier copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [recordCopy URL];
    v10 = [v9 copy];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v10;

    localizedName = [recordCopy localizedName];
    v13 = [localizedName copy];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    appTags = [recordCopy appTags];
    tags = v5->_tags;
    v5->_tags = appTags;

    v5->_beta = [recordCopy isBeta];
    v5->_placeholder = [recordCopy isPlaceholder];
    v5->_installType = [recordCopy installType];
    typeForInstallMachinery = [recordCopy typeForInstallMachinery];
    v5->_internalApplication = [typeForInstallMachinery isEqualToString:*MEMORY[0x1E6963578]];
    v18 = ([typeForInstallMachinery isEqualToString:*MEMORY[0x1E69635A8]] & 1) != 0 || v5->_internalApplication;
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

- (void)updateDeviceManagementPolicy:(int64_t)policy
{
  v4 = policy != 0;
  if (self->_blockedForScreenTimeExpiration != v4)
  {
    self->_blockedForScreenTimeExpiration = v4;
    sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
    [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:self];
  }
}

- (void)updateProgressState:(int64_t)state progressPercent:(double)percent progressPaused:(BOOL)paused
{
  pausedCopy = paused;
  [(SBHSimpleApplication *)self setProgressState:state];
  [(SBHSimpleApplication *)self setProgressPercent:percent];
  [(SBHSimpleApplication *)self setProgressPaused:pausedCopy];
  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self];
}

- (unint64_t)priorityForIcon:(id)icon
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

- (int64_t)labelAccessoryTypeForIcon:(id)icon
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

- (BOOL)iconCompleteUninstall:(id)uninstall
{
  iconModelApplicationDataSource = [(SBHSimpleApplication *)self iconModelApplicationDataSource];
  bundleIdentifier = [(SBHSimpleApplication *)self bundleIdentifier];
  if (bundleIdentifier && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [iconModelApplicationDataSource uninstallApplicationWithBundleIdentifier:bundleIdentifier completion:0];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)badgeNumberOrStringForIcon:(id)icon
{
  if (![(SBHSimpleApplication *)self isBadgeValueValid])
  {
    processHandle = [MEMORY[0x1E698E740] processHandle];
    v5 = [processHandle hasEntitlement:@"com.apple.springboard.iconBadgeValue"];

    if (v5)
    {
      bundleIdentifier = [(SBHSimpleApplication *)self bundleIdentifier];
      homeScreenService = [objc_opt_class() homeScreenService];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __51__SBHSimpleApplication_badgeNumberOrStringForIcon___block_invoke;
      v10[3] = &unk_1E808AA10;
      v10[4] = self;
      [homeScreenService badgeValueForIconWithApplicationBundleIdentifier:bundleIdentifier completionHandler:v10];
    }
  }

  badgeValue = [(SBHSimpleApplication *)self badgeValue];

  return badgeValue;
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
  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:self];
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHSimpleApplication *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  bundleIdentifier = [(SBHSimpleApplication *)self bundleIdentifier];
  v6 = [v4 appendObject:bundleIdentifier withName:@"bundleIdentifier"];

  displayName = [(SBHSimpleApplication *)self displayName];
  v8 = [v4 appendObject:displayName withName:@"displayName"];

  v9 = [v4 appendBool:-[SBHSimpleApplication isPlaceholder](self withName:"isPlaceholder") ifEqualTo:{@"isPlaceholder", 1}];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHSimpleApplication *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (SBHIconModelApplicationDataSource)iconModelApplicationDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_iconModelApplicationDataSource);

  return WeakRetained;
}

@end