@interface SBFApplication
- (NSArray)dynamicApplicationShortcutItems;
- (NSArray)staticApplicationShortcutItems;
- (SBFApplication)init;
- (SBFApplication)initWithApplicationBundleIdentifier:(id)identifier;
- (void)_updateApplicationShortcutServiceFetchResult;
- (void)dealloc;
@end

@implementation SBFApplication

- (SBFApplication)initWithApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(SBFApplication *)a2 initWithApplicationBundleIdentifier:?];
  }

  v24.receiver = self;
  v24.super_class = SBFApplication;
  v7 = [(SBFApplication *)&v24 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_applicationBundleIdentifier, identifier);
    v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
    v10 = v9;
    if (v9)
    {
      localizedName = [v9 localizedName];
      displayName = v8->_displayName;
      v8->_displayName = localizedName;

      v13 = [v10 URL];
      bundleURL = v8->_bundleURL;
      v8->_bundleURL = v13;

      typeForInstallMachinery = [v10 typeForInstallMachinery];
      if (([typeForInstallMachinery isEqualToString:@"System"] & 1) != 0 || objc_msgSend(typeForInstallMachinery, "isEqualToString:", @"Internal"))
      {
        v8->_systemOrInternalApplication = 1;
      }

      iTunesMetadata = [v10 iTunesMetadata];
      storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

      if (storeItemIdentifier)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:storeItemIdentifier];
        appStoreItemID = v8->_appStoreItemID;
        v8->_appStoreItemID = v18;
      }

      infoDictionary = [v10 infoDictionary];
      v21 = [infoDictionary objectForKey:@"UIApplicationShortcutWidget" ofClass:objc_opt_class()];
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

  staticApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)applicationShortcutServiceFetchResult staticApplicationShortcutItems];
  objc_sync_exit(v3);

  return staticApplicationShortcutItems;
}

- (NSArray)dynamicApplicationShortcutItems
{
  v3 = self->_applicationShortcutServiceFetchResult;
  objc_sync_enter(v3);
  [(SBFApplication *)self _updateApplicationShortcutServiceFetchResult];
  dynamicApplicationShortcutItems = [(SBSApplicationShortcutServiceFetchResult *)self->_applicationShortcutServiceFetchResult dynamicApplicationShortcutItems];
  objc_sync_exit(v3);

  return dynamicApplicationShortcutItems;
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
    applicationBundleIdentifier = [(SBFApplication *)self applicationBundleIdentifier];
    v8 = [(SBSApplicationShortcutService *)v6 applicationShortcutItemsOfTypes:3 forBundleIdentifier:applicationBundleIdentifier];
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