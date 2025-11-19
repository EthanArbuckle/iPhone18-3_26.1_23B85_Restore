@interface SBHApplicationIcon
- (BOOL)cancelDownload;
- (BOOL)hasApplication;
- (BOOL)hasApplicationPlaceholder;
- (BOOL)pauseDownload;
- (BOOL)prioritizeDownload;
- (BOOL)resumeDownload;
- (NSString)applicationDisplayName;
- (SBHApplicationIcon)initWithApplication:(id)a3;
- (SBHApplicationIcon)initWithApplicationPlaceholder:(id)a3;
- (SBHApplicationIcon)initWithApplicationWithBundleIdentifier:(id)a3;
- (SBHApplicationIcon)initWithLeafIdentifier:(id)a3 application:(id)a4;
- (SBHApplicationIcon)initWithLeafIdentifier:(id)a3 applicationPlaceholder:(id)a4;
- (id)automationID;
- (id)copyWithLeafIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)iconImageCacheIdentifier;
- (void)changeEnablement:(unint64_t)a3 ofFeature:(unint64_t)a4;
- (void)changeHiddenStatusToHidden:(BOOL)a3;
- (void)changeLockedStatusToLocked:(BOOL)a3;
- (void)possibleUserTapBeganWithAbsoluteTime:(unint64_t)a3 andContinuousTime:(unint64_t)a4;
- (void)possibleUserTapDidCancel;
- (void)replaceApplicationDataSourcesWithApplication:(id)a3;
- (void)replaceApplicationPlaceholderDataSourcesWithApplicationPlaceholder:(id)a3;
- (void)replaceIconDataSourcesWithApplication:(id)a3;
- (void)replaceIconDataSourcesWithApplicationPlaceholder:(id)a3;
- (void)setBadge:(id)a3;
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
  v3 = [(SBLeafIcon *)self applicationBundleID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHApplicationIcon;
    v5 = [(SBIcon *)&v8 iconImageCacheIdentifier];
  }

  v6 = v5;

  return v6;
}

- (void)possibleUserTapDidCancel
{
  v4.receiver = self;
  v4.super_class = SBHApplicationIcon;
  [(SBIcon *)&v4 possibleUserTapDidCancel];
  v3 = [(SBHApplicationIcon *)self application];
  if (objc_opt_respondsToSelector())
  {
    [v3 possibleUserTapDidCancel];
  }
}

- (BOOL)hasApplicationPlaceholder
{
  v2 = [(SBHApplicationIcon *)self applicationPlaceholder];
  v3 = v2 != 0;

  return v3;
}

- (SBHApplicationIcon)initWithLeafIdentifier:(id)a3 application:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 bundleIdentifier];
  v9 = [(SBLeafIcon *)self initWithLeafIdentifier:v7 applicationBundleID:v8];

  if (v9)
  {
    [(SBLeafIcon *)v9 addIconDataSource:v6];
  }

  return v9;
}

- (SBHApplicationIcon)initWithApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  if (objc_opt_respondsToSelector())
  {
    [v4 iconIdentifier];
  }

  else
  {
    [v4 bundleIdentifier];
  }
  v6 = ;
  if (v6)
  {
    v7 = [(SBLeafIcon *)self initWithLeafIdentifier:v6 applicationBundleID:v5];
    v8 = v7;
    if (v7)
    {
      [(SBLeafIcon *)v7 addIconDataSource:v4];
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SBHApplicationIcon)initWithApplicationWithBundleIdentifier:(id)a3
{
  v4 = a3;
  if (SBHIsRunningInSpringBoard(v4))
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"SpringBoard should not use this initializer" userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [[SBHSimpleApplication alloc] initWithBundleIdentifier:v4];
  if (v5)
  {
    self = [(SBHApplicationIcon *)self initWithApplication:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBHApplicationIcon)initWithLeafIdentifier:(id)a3 applicationPlaceholder:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 applicationBundleIdentifier];
  v9 = [(SBLeafIcon *)self initWithLeafIdentifier:v7 applicationBundleID:v8];

  if (v9)
  {
    [(SBLeafIcon *)v9 addIconDataSource:v6];
  }

  return v9;
}

- (SBHApplicationIcon)initWithApplicationPlaceholder:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationBundleIdentifier];
  v6 = [(SBLeafIcon *)self initWithLeafIdentifier:v5 applicationBundleID:v5];
  v7 = v6;
  if (v6)
  {
    [(SBLeafIcon *)v6 addIconDataSource:v4];
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

- (void)replaceIconDataSourcesWithApplication:(id)a3
{
  v4 = a3;
  [(SBLeafIcon *)self removeAllIconDataSources];
  [(SBHApplicationIcon *)self addApplicationDataSource:v4];
}

- (void)replaceApplicationDataSourcesWithApplication:(id)a3
{
  v4 = a3;
  [(SBHApplicationIcon *)self removeApplicationDataSources];
  [(SBHApplicationIcon *)self addApplicationDataSource:v4];
}

- (void)replaceIconDataSourcesWithApplicationPlaceholder:(id)a3
{
  v4 = a3;
  [(SBLeafIcon *)self removeAllIconDataSources];
  [(SBLeafIcon *)self addIconDataSource:v4];
}

- (void)replaceApplicationPlaceholderDataSourcesWithApplicationPlaceholder:(id)a3
{
  v4 = a3;
  [(SBHApplicationIcon *)self removeApplicationPlaceholderDataSources];
  [(SBLeafIcon *)self addIconDataSource:v4];
}

- (BOOL)prioritizeDownload
{
  v2 = [(SBHApplicationIcon *)self applicationPlaceholder];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 prioritize];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)pauseDownload
{
  v2 = [(SBHApplicationIcon *)self applicationPlaceholder];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 pause];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)resumeDownload
{
  v2 = [(SBHApplicationIcon *)self applicationPlaceholder];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 resume];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)cancelDownload
{
  v2 = [(SBHApplicationIcon *)self applicationPlaceholder];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 cancel];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)changeLockedStatusToLocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(SBHApplicationIcon *)self changeEnablement:v3 ofFeature:1];
}

- (void)changeHiddenStatusToHidden:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(SBHApplicationIcon *)self changeEnablement:v3 ofFeature:2];
}

- (void)changeEnablement:(unint64_t)a3 ofFeature:(unint64_t)a4
{
  v6 = [(SBLeafIcon *)self applicationBundleID];
  v7 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v6];
  if (v7)
  {
    v8 = MEMORY[0x1E698B110];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__SBHApplicationIcon_changeEnablement_ofFeature___block_invoke;
    v9[3] = &unk_1E808CAB0;
    v10 = v6;
    v11 = a4;
    v12 = a3;
    [v8 oneshotBeginFlowToSetEnablement:a3 ofFeature:a4 forSubject:v7 completion:v9];
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
  v3 = [(SBHApplicationIcon *)self applicationPlaceholder];
  v4 = v3;
  if (v3)
  {
    [v3 applicationDisplayName];
  }

  else
  {
    [(SBIcon *)self displayName];
  }
  v5 = ;

  return v5;
}

- (void)setBadge:(id)a3
{
  v5 = a3;
  v4 = [(SBHApplicationIcon *)self application];
  if (objc_opt_respondsToSelector())
  {
    [v4 setBadgeValue:v5];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SBHApplicationIcon;
  v4 = [(SBLeafIcon *)&v6 copyWithZone:a3];
  [v4 setUninstalledByUser:{-[SBHApplicationIcon isUninstalledByUser](self, "isUninstalledByUser")}];
  return v4;
}

- (id)copyWithLeafIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBHApplicationIcon;
  v4 = [(SBLeafIcon *)&v6 copyWithLeafIdentifier:a3];
  [v4 setUninstalledByUser:{-[SBHApplicationIcon isUninstalledByUser](self, "isUninstalledByUser")}];
  return v4;
}

- (BOOL)hasApplication
{
  v2 = [(SBHApplicationIcon *)self application];
  v3 = v2 != 0;

  return v3;
}

- (void)possibleUserTapBeganWithAbsoluteTime:(unint64_t)a3 andContinuousTime:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = SBHApplicationIcon;
  [SBIcon possibleUserTapBeganWithAbsoluteTime:sel_possibleUserTapBeganWithAbsoluteTime_andContinuousTime_ andContinuousTime:?];
  v7 = [(SBHApplicationIcon *)self application];
  if (objc_opt_respondsToSelector())
  {
    [v7 possibleUserTapBeganWithAbsoluteTime:a3 andContinuousTime:a4];
  }
}

- (id)automationID
{
  v2 = [(SBLeafIcon *)self applicationBundleID];
  v3 = [@"BTN " stringByAppendingString:v2];

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