@interface SearchUIHomeScreenModel
+ (id)sharedInstance;
- (SearchUIHomeScreenModel)init;
- (id)appIconForApplicationBundleIdentifier:(id)a3;
- (id)clipIconForIdentifier:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_resetIconModel name:*MEMORY[0x1E69DDAD8] object:0];

    v5 = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
    v6 = [v5 addMonitor:v3 subjectMask:1];
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
  v6 = [(SearchUIHomeScreenModel *)self dataSource];
  v5 = [v4 initWithStore:0 applicationDataSource:v6];
  [(SearchUIHomeScreenModel *)self setIconModel:v5];
}

- (id)appIconForApplicationBundleIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [(SearchUIHomeScreenModel *)self dataSource];
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v5 beginTrackingApplicationsWithBundleIdentifiers:v6];

    v7 = [(SearchUIHomeScreenModel *)self iconModel];
    v8 = [v7 applicationIconForBundleIdentifier:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)clipIconForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E69DE790];
    if ([v4 hasPrefix:*MEMORY[0x1E69DE790]])
    {
      v7 = [v5 substringFromIndex:{objc_msgSend(v6, "length")}];

      v5 = v7;
    }

    v8 = [(SearchUIHomeScreenModel *)self iconModel];
    v9 = [MEMORY[0x1E69DD2B8] webClipWithIdentifier:v5];
    v10 = [v8 addBookmarkIconForWebClip:v9];

    v11 = [(SearchUIHomeScreenModel *)self iconModel];
    v12 = [v11 bookmarkIconForWebClipIdentifier:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isHidden])
        {
          v11 = v10;
          v12 = [v11 bundleIdentifier];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __72__SearchUIHomeScreenModel_appProtectionSubjectsChanged_forSubscription___block_invoke;
          v14[3] = &unk_1E85B2540;
          v14[4] = self;
          v15 = v12;
          v13 = v12;
          [SearchUIUtilities dispatchMainIfNecessary:v14];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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