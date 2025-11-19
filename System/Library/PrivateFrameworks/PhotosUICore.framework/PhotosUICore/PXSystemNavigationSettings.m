@interface PXSystemNavigationSettings
+ (PXSystemNavigationSettings)sharedInstance;
+ (id)settingsControllerModule;
@end

@implementation PXSystemNavigationSettings

+ (id)settingsControllerModule
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PXSystemNavigationSettings_settingsControllerModule__block_invoke;
  v9[3] = &unk_1E7748D18;
  v10 = v2;
  v3 = v2;
  PXSystemNavigationEnumerateDestinations(v9);
  v4 = [MEMORY[0x1E69C6638] sectionWithRows:v3 title:@"Destinations"];
  v5 = MEMORY[0x1E69C6638];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v5 moduleWithTitle:@"System Navigation" contents:v6];

  return v7;
}

void __54__PXSystemNavigationSettings_settingsControllerModule__block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = PXSystemNavigationDestinationDescription(a2);
  v5 = MEMORY[0x1E69C6658];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __54__PXSystemNavigationSettings_settingsControllerModule__block_invoke_2;
  v13 = &unk_1E7749C88;
  v14 = v4;
  v15 = a2;
  v6 = v4;
  v7 = [v5 actionWithHandler:&v10];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E69C65E8] rowWithTitle:v6 action:{v7, v10, v11, v12, v13}];
  [v8 addObject:v9];
}

uint64_t __54__PXSystemNavigationSettings_settingsControllerModule__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Will navigate to destination: %{public}@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PXSystemNavigationSettings_settingsControllerModule__block_invoke_4;
  v6[3] = &unk_1E774C5C0;
  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  [PXSystemNavigation navigateToDestination:v4 completion:v6];

  return 1;
}

void __54__PXSystemNavigationSettings_settingsControllerModule__block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLUIGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138543362;
      v15 = v8;
      v9 = "Did navigate to destination: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138543618;
    v15 = v13;
    v16 = 2114;
    v17 = v5;
    v9 = "Failed to navigate to destination: %{public}@, error: %{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

+ (PXSystemNavigationSettings)sharedInstance
{
  if (sharedInstance_onceToken_128512 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_128512, &__block_literal_global_128513);
  }

  v3 = sharedInstance_sharedInstance_128514;

  return v3;
}

void __44__PXSystemNavigationSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 systemNavigationSettings];
  v1 = sharedInstance_sharedInstance_128514;
  sharedInstance_sharedInstance_128514 = v0;
}

@end