@interface SBFApplication
- (NSArray)dynamicApplicationShortcutItems;
- (NSArray)staticApplicationShortcutItems;
- (SBFApplication)init;
- (SBFApplication)initWithApplicationBundleIdentifier:(id)a3;
- (void)_updateApplicationShortcutServiceFetchResult;
- (void)dealloc;
@end

@implementation SBFApplication

- (SBFApplication)initWithApplicationBundleIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBFApplication *)a2 initWithApplicationBundleIdentifier:?];
  }

  v24.receiver = self;
  v24.super_class = SBFApplication;
  v7 = [(SBFApplication *)&v24 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_applicationBundleIdentifier, a3);
    v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 localizedName];
      displayName = v8->_displayName;
      v8->_displayName = v11;

      v13 = [v10 URL];
      bundleURL = v8->_bundleURL;
      v8->_bundleURL = v13;

      v15 = [v10 typeForInstallMachinery];
      if (([v15 isEqualToString:@"System"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"Internal"))
      {
        v8->_systemOrInternalApplication = 1;
      }

      v16 = [v10 iTunesMetadata];
      v17 = [v16 storeItemIdentifier];

      if (v17)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
        appStoreItemID = v8->_appStoreItemID;
        v8->_appStoreItemID = v18;
      }

      v20 = [v10 infoDictionary];
      v21 = [v20 objectForKey:@"UIApplicationShortcutWidget" ofClass:objc_opt_class()];
      applicationShortcutWidgetBundleIdentifier = v8->_applicationShortcutWidgetBundleIdentifier;
      v8->_applicationShortcutWidgetBundleIdentifier = v21;
    }
  }

  return v8;
}

- (SBFApplication)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%s is not a valid initializer. You must call -[%@ initWithApplicationBundleIdentifier:].", "-[SBFApplication init]", v6}];

  return [(SBFApplication *)self initWithApplicationBundleIdentifier:0];
}

- (void)dealloc
{
  applicationShortcutService = self->_applicationShortcutService;
  if (applicationShortcutService)
  {
    [(SBSApplicationShortcutService *)applicationShortcutService invalidate];
  }

  v4.receiver = self;
  v4.super_class = SBFApplication;
  [(SBFApplication *)&v4 dealloc];
}

- (NSArray)staticApplicationShortcutItems
{
  v3 = self->_applicationShortcutServiceFetchResult;
  objc_sync_enter(v3);
  applicationShortcutServiceFetchResult = self->_applicationShortcutServiceFetchResult;
  if (!applicationShortcutServiceFetchResult)
  {
    [(SBFApplication *)self _updateApplicationShortcutServiceFetchResult];
    applicationShortcutServiceFetchResult = self->_applicationShortcutServiceFetchResult;
  }

  v5 = [(SBSApplicationShortcutServiceFetchResult *)applicationShortcutServiceFetchResult staticApplicationShortcutItems];
  objc_sync_exit(v3);

  return v5;
}

- (NSArray)dynamicApplicationShortcutItems
{
  v3 = self->_applicationShortcutServiceFetchResult;
  objc_sync_enter(v3);
  [(SBFApplication *)self _updateApplicationShortcutServiceFetchResult];
  v4 = [(SBSApplicationShortcutServiceFetchResult *)self->_applicationShortcutServiceFetchResult dynamicApplicationShortcutItems];
  objc_sync_exit(v3);

  return v4;
}

- (void)_updateApplicationShortcutServiceFetchResult
{
  if (!self->_applicationShortcutService)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D41C0]);
    applicationShortcutService = self->_applicationShortcutService;
    self->_applicationShortcutService = v3;
  }

  BSContinuousMachTimeNow();
  if (v5 - self->_applicationShortcutServiceFetchResultExpirationReferenceTime >= 2.0)
  {
    v6 = self->_applicationShortcutService;
    v7 = [(SBFApplication *)self applicationBundleIdentifier];
    v8 = [(SBSApplicationShortcutService *)v6 applicationShortcutItemsOfTypes:3 forBundleIdentifier:v7];
    applicationShortcutServiceFetchResult = self->_applicationShortcutServiceFetchResult;
    self->_applicationShortcutServiceFetchResult = v8;

    BSContinuousMachTimeNow();
    self->_applicationShortcutServiceFetchResultExpirationReferenceTime = v10;
  }
}

- (void)initWithApplicationBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFApplication.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"applicationBundleIdentifier != nil"}];
}

@end