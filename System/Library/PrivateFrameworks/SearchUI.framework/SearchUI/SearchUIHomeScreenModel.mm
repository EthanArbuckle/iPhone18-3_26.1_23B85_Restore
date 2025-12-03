@interface SearchUIHomeScreenModel
+ (id)sharedInstance;
- (SearchUIHomeScreenModel)init;
- (id)appIconForApplicationBundleIdentifier:(id)identifier;
- (id)clipIconForIdentifier:(id)identifier;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)resetIconModel;
@end

@implementation SearchUIHomeScreenModel

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SearchUIHomeScreenModel sharedInstance];
  }

  v3 = sharedInstance_iconModel;

  return v3;
}

uint64_t __41__SearchUIHomeScreenModel_sharedInstance__block_invoke()
{
  sharedInstance_iconModel = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SearchUIHomeScreenModel)init
{
  v9.receiver = self;
  v9.super_class = SearchUIHomeScreenModel;
  v2 = [(SearchUIHomeScreenModel *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(SearchUIHomeScreenModel *)v2 resetIconModel];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_resetIconModel name:*MEMORY[0x1E69DDAD8] object:0];

    subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
    v6 = [subjectMonitorRegistry addMonitor:v3 subjectMask:1];
    subscription = v3->_subscription;
    v3->_subscription = v6;
  }

  return v3;
}

- (void)resetIconModel
{
  v3 = objc_opt_new();
  [(SearchUIHomeScreenModel *)self setDataSource:v3];

  v4 = objc_alloc(MEMORY[0x1E69D40A8]);
  dataSource = [(SearchUIHomeScreenModel *)self dataSource];
  v5 = [v4 initWithStore:0 applicationDataSource:dataSource];
  [(SearchUIHomeScreenModel *)self setIconModel:v5];
}

- (id)appIconForApplicationBundleIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    identifierCopy = identifier;
    dataSource = [(SearchUIHomeScreenModel *)self dataSource];
    v10[0] = identifierCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [dataSource beginTrackingApplicationsWithBundleIdentifiers:v6];

    iconModel = [(SearchUIHomeScreenModel *)self iconModel];
    v8 = [iconModel applicationIconForBundleIdentifier:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)clipIconForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = identifierCopy;
    v6 = *MEMORY[0x1E69DE790];
    if ([identifierCopy hasPrefix:*MEMORY[0x1E69DE790]])
    {
      v7 = [v5 substringFromIndex:{objc_msgSend(v6, "length")}];

      v5 = v7;
    }

    iconModel = [(SearchUIHomeScreenModel *)self iconModel];
    v9 = [MEMORY[0x1E69DD2B8] webClipWithIdentifier:v5];
    v10 = [iconModel addBookmarkIconForWebClip:v9];

    iconModel2 = [(SearchUIHomeScreenModel *)self iconModel];
    v12 = [iconModel2 bookmarkIconForWebClipIdentifier:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v21 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [changedCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(changedCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isHidden])
        {
          v11 = v10;
          bundleIdentifier = [v11 bundleIdentifier];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __72__SearchUIHomeScreenModel_appProtectionSubjectsChanged_forSubscription___block_invoke;
          v14[3] = &unk_1E85B2540;
          v14[4] = self;
          v15 = bundleIdentifier;
          v13 = bundleIdentifier;
          [SearchUIUtilities dispatchMainIfNecessary:v14];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [changedCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

void __72__SearchUIHomeScreenModel_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) appIconForApplicationBundleIdentifier:*(a1 + 40)];
  if (v1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v3 = *MEMORY[0x1E69D4170];
    v5 = *MEMORY[0x1E69D4178];
    v6[0] = v1;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
    [v2 postNotificationName:v3 object:0 userInfo:v4];
  }
}

@end