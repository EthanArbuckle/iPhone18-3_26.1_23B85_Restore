@interface SBHApplicationIcon
- (BOOL)cancelDownload;
- (BOOL)hasApplication;
- (BOOL)hasApplicationPlaceholder;
- (BOOL)pauseDownload;
- (BOOL)prioritizeDownload;
- (BOOL)resumeDownload;
- (NSString)applicationDisplayName;
- (SBHApplicationIcon)initWithApplication:(id)application;
- (SBHApplicationIcon)initWithApplicationPlaceholder:(id)placeholder;
- (SBHApplicationIcon)initWithApplicationWithBundleIdentifier:(id)identifier;
- (SBHApplicationIcon)initWithLeafIdentifier:(id)identifier application:(id)application;
- (SBHApplicationIcon)initWithLeafIdentifier:(id)identifier applicationPlaceholder:(id)placeholder;
- (id)automationID;
- (id)copyWithLeafIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)iconImageCacheIdentifier;
- (void)changeEnablement:(unint64_t)enablement ofFeature:(unint64_t)feature;
- (void)changeHiddenStatusToHidden:(BOOL)hidden;
- (void)changeLockedStatusToLocked:(BOOL)locked;
- (void)possibleUserTapBeganWithAbsoluteTime:(unint64_t)time andContinuousTime:(unint64_t)continuousTime;
- (void)possibleUserTapDidCancel;
- (void)replaceApplicationDataSourcesWithApplication:(id)application;
- (void)replaceApplicationPlaceholderDataSourcesWithApplicationPlaceholder:(id)placeholder;
- (void)replaceIconDataSourcesWithApplication:(id)application;
- (void)replaceIconDataSourcesWithApplicationPlaceholder:(id)placeholder;
- (void)setBadge:(id)badge;
@end

@implementation SBHApplicationIcon

uint64_t __33__SBHApplicationIcon_application__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_respondsToSelector();

  return v3 & (v2 != 0);
}

uint64_t __44__SBHApplicationIcon_applicationPlaceholder__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_respondsToSelector();

  return v3 & (v2 != 0);
}

- (id)iconImageCacheIdentifier
{
  applicationBundleID = [(SBLeafIcon *)self applicationBundleID];
  v4 = applicationBundleID;
  if (applicationBundleID)
  {
    iconImageCacheIdentifier = applicationBundleID;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHApplicationIcon;
    iconImageCacheIdentifier = [(SBIcon *)&v8 iconImageCacheIdentifier];
  }

  v6 = iconImageCacheIdentifier;

  return v6;
}

- (void)possibleUserTapDidCancel
{
  v4.receiver = self;
  v4.super_class = SBHApplicationIcon;
  [(SBIcon *)&v4 possibleUserTapDidCancel];
  application = [(SBHApplicationIcon *)self application];
  if (objc_opt_respondsToSelector())
  {
    [application possibleUserTapDidCancel];
  }
}

- (BOOL)hasApplicationPlaceholder
{
  applicationPlaceholder = [(SBHApplicationIcon *)self applicationPlaceholder];
  v3 = applicationPlaceholder != 0;

  return v3;
}

- (SBHApplicationIcon)initWithLeafIdentifier:(id)identifier application:(id)application
{
  applicationCopy = application;
  identifierCopy = identifier;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v9 = [(SBLeafIcon *)self initWithLeafIdentifier:identifierCopy applicationBundleID:bundleIdentifier];

  if (v9)
  {
    [(SBLeafIcon *)v9 addIconDataSource:applicationCopy];
  }

  return v9;
}

- (SBHApplicationIcon)initWithApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  if (objc_opt_respondsToSelector())
  {
    [applicationCopy iconIdentifier];
  }

  else
  {
    [applicationCopy bundleIdentifier];
  }
  v6 = ;
  if (v6)
  {
    v7 = [(SBLeafIcon *)self initWithLeafIdentifier:v6 applicationBundleID:bundleIdentifier];
    v8 = v7;
    if (v7)
    {
      [(SBLeafIcon *)v7 addIconDataSource:applicationCopy];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SBHApplicationIcon)initWithApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (SBHIsRunningInSpringBoard(identifierCopy))
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"SpringBoard should not use this initializer" userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [[SBHSimpleApplication alloc] initWithBundleIdentifier:identifierCopy];
  if (v5)
  {
    self = [(SBHApplicationIcon *)self initWithApplication:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SBHApplicationIcon)initWithLeafIdentifier:(id)identifier applicationPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  identifierCopy = identifier;
  applicationBundleIdentifier = [placeholderCopy applicationBundleIdentifier];
  v9 = [(SBLeafIcon *)self initWithLeafIdentifier:identifierCopy applicationBundleID:applicationBundleIdentifier];

  if (v9)
  {
    [(SBLeafIcon *)v9 addIconDataSource:placeholderCopy];
  }

  return v9;
}

- (SBHApplicationIcon)initWithApplicationPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  applicationBundleIdentifier = [placeholderCopy applicationBundleIdentifier];
  v6 = [(SBLeafIcon *)self initWithLeafIdentifier:applicationBundleIdentifier applicationBundleID:applicationBundleIdentifier];
  v7 = v6;
  if (v6)
  {
    [(SBLeafIcon *)v6 addIconDataSource:placeholderCopy];
  }

  return v7;
}

uint64_t __50__SBHApplicationIcon_removeApplicationDataSources__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_respondsToSelector();

  return v3 & (v2 != 0);
}

uint64_t __61__SBHApplicationIcon_removeApplicationPlaceholderDataSources__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_respondsToSelector();

  return v3 & (v2 != 0);
}

- (void)replaceIconDataSourcesWithApplication:(id)application
{
  applicationCopy = application;
  [(SBLeafIcon *)self removeAllIconDataSources];
  [(SBHApplicationIcon *)self addApplicationDataSource:applicationCopy];
}

- (void)replaceApplicationDataSourcesWithApplication:(id)application
{
  applicationCopy = application;
  [(SBHApplicationIcon *)self removeApplicationDataSources];
  [(SBHApplicationIcon *)self addApplicationDataSource:applicationCopy];
}

- (void)replaceIconDataSourcesWithApplicationPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  [(SBLeafIcon *)self removeAllIconDataSources];
  [(SBLeafIcon *)self addIconDataSource:placeholderCopy];
}

- (void)replaceApplicationPlaceholderDataSourcesWithApplicationPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  [(SBHApplicationIcon *)self removeApplicationPlaceholderDataSources];
  [(SBLeafIcon *)self addIconDataSource:placeholderCopy];
}

- (BOOL)prioritizeDownload
{
  applicationPlaceholder = [(SBHApplicationIcon *)self applicationPlaceholder];
  if (objc_opt_respondsToSelector())
  {
    prioritize = [applicationPlaceholder prioritize];
  }

  else
  {
    prioritize = 0;
  }

  return prioritize;
}

- (BOOL)pauseDownload
{
  applicationPlaceholder = [(SBHApplicationIcon *)self applicationPlaceholder];
  if (objc_opt_respondsToSelector())
  {
    pause = [applicationPlaceholder pause];
  }

  else
  {
    pause = 0;
  }

  return pause;
}

- (BOOL)resumeDownload
{
  applicationPlaceholder = [(SBHApplicationIcon *)self applicationPlaceholder];
  if (objc_opt_respondsToSelector())
  {
    resume = [applicationPlaceholder resume];
  }

  else
  {
    resume = 0;
  }

  return resume;
}

- (BOOL)cancelDownload
{
  applicationPlaceholder = [(SBHApplicationIcon *)self applicationPlaceholder];
  if (objc_opt_respondsToSelector())
  {
    cancel = [applicationPlaceholder cancel];
  }

  else
  {
    cancel = 0;
  }

  return cancel;
}

- (void)changeLockedStatusToLocked:(BOOL)locked
{
  if (locked)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(SBHApplicationIcon *)self changeEnablement:v3 ofFeature:1];
}

- (void)changeHiddenStatusToHidden:(BOOL)hidden
{
  if (hidden)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(SBHApplicationIcon *)self changeEnablement:v3 ofFeature:2];
}

- (void)changeEnablement:(unint64_t)enablement ofFeature:(unint64_t)feature
{
  applicationBundleID = [(SBLeafIcon *)self applicationBundleID];
  v7 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:applicationBundleID];
  if (v7)
  {
    v8 = MEMORY[0x1E698B110];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__SBHApplicationIcon_changeEnablement_ofFeature___block_invoke;
    v9[3] = &unk_1E808CAB0;
    v10 = applicationBundleID;
    featureCopy = feature;
    enablementCopy = enablement;
    [v8 oneshotBeginFlowToSetEnablement:enablement ofFeature:feature forSubject:v7 completion:v9];
  }
}

void __49__SBHApplicationIcon_changeEnablement_ofFeature___block_invoke(void *a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = SBLogProtectedApps();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__SBHApplicationIcon_changeEnablement_ofFeature___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

- (NSString)applicationDisplayName
{
  applicationPlaceholder = [(SBHApplicationIcon *)self applicationPlaceholder];
  v4 = applicationPlaceholder;
  if (applicationPlaceholder)
  {
    [applicationPlaceholder applicationDisplayName];
  }

  else
  {
    [(SBIcon *)self displayName];
  }
  v5 = ;

  return v5;
}

- (void)setBadge:(id)badge
{
  badgeCopy = badge;
  application = [(SBHApplicationIcon *)self application];
  if (objc_opt_respondsToSelector())
  {
    [application setBadgeValue:badgeCopy];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SBHApplicationIcon;
  v4 = [(SBLeafIcon *)&v6 copyWithZone:zone];
  [v4 setUninstalledByUser:{-[SBHApplicationIcon isUninstalledByUser](self, "isUninstalledByUser")}];
  return v4;
}

- (id)copyWithLeafIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = SBHApplicationIcon;
  v4 = [(SBLeafIcon *)&v6 copyWithLeafIdentifier:identifier];
  [v4 setUninstalledByUser:{-[SBHApplicationIcon isUninstalledByUser](self, "isUninstalledByUser")}];
  return v4;
}

- (BOOL)hasApplication
{
  application = [(SBHApplicationIcon *)self application];
  v3 = application != 0;

  return v3;
}

- (void)possibleUserTapBeganWithAbsoluteTime:(unint64_t)time andContinuousTime:(unint64_t)continuousTime
{
  v8.receiver = self;
  v8.super_class = SBHApplicationIcon;
  [SBIcon possibleUserTapBeganWithAbsoluteTime:sel_possibleUserTapBeganWithAbsoluteTime_andContinuousTime_ andContinuousTime:?];
  application = [(SBHApplicationIcon *)self application];
  if (objc_opt_respondsToSelector())
  {
    [application possibleUserTapBeganWithAbsoluteTime:time andContinuousTime:continuousTime];
  }
}

- (id)automationID
{
  applicationBundleID = [(SBLeafIcon *)self applicationBundleID];
  v3 = [@"BTN " stringByAppendingString:applicationBundleID];

  return v3;
}

void __49__SBHApplicationIcon_changeEnablement_ofFeature___block_invoke_cold_1(void *a1, uint64_t a2, os_log_t log)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = 138413058;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  v12 = 2114;
  v13 = a2;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "Failed to change enablement status of application: %@ feature %llu to %llu with error: %{public}@", &v6, 0x2Au);
}

@end