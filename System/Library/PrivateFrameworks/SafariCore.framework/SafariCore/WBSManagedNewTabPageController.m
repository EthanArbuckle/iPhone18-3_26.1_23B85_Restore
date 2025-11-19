@interface WBSManagedNewTabPageController
+ (id)sharedController;
- (NSString)managedNewTabPageExtensionComposedIdentifier;
- (NSString)managedNewTabPageHomepageURLString;
- (WBSManagedNewTabPageController)init;
- (int64_t)_computeManagedNewTabPageType;
- (int64_t)managedNewTabPageState;
@end

@implementation WBSManagedNewTabPageController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[WBSManagedNewTabPageController sharedController];
  }

  v3 = sharedController_sharedController;

  return v3;
}

void __50__WBSManagedNewTabPageController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(WBSManagedNewTabPageController);
  v1 = sharedController_sharedController;
  sharedController_sharedController = v0;
}

- (WBSManagedNewTabPageController)init
{
  v20.receiver = self;
  v20.super_class = WBSManagedNewTabPageController;
  v2 = [(WBSManagedNewTabPageController *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasCachedNewTabPageState = 0;
    v4 = objc_opt_new();
    managedSettingsStore = v3->_managedSettingsStore;
    v3->_managedSettingsStore = v4;

    v6 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__WBSManagedNewTabPageController_init__block_invoke;
    block[3] = &unk_1E7CF16E0;
    v7 = v3;
    v19 = v7;
    dispatch_async(v6, block);

    v8 = MEMORY[0x1E69AE020];
    v9 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69ADFD8]];
    v10 = [v8 publisherForGroups:v9];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __38__WBSManagedNewTabPageController_init__block_invoke_2;
    v16[3] = &unk_1E7CF2108;
    v11 = v7;
    v17 = v11;
    v12 = [v10 sinkWithReceiveInput:v16];
    managedNewTabPageSubscription = v11->_managedNewTabPageSubscription;
    v11->_managedNewTabPageSubscription = v12;

    v14 = v11;
  }

  return v3;
}

void __38__WBSManagedNewTabPageController_init__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  *(*(a1 + 32) + 32) = [*(a1 + 32) _computeManagedNewTabPageType];
  *(*(a1 + 32) + 24) = 1;
  objc_sync_exit(obj);
}

- (int64_t)_computeManagedNewTabPageType
{
  v2 = [(MOEffectiveSettingsStore *)self->_managedSettingsStore safari];
  v3 = [v2 newTabStartPage];

  if (v3)
  {
    v4 = [v3 pageType];
    v5 = 3;
    if (v4 != 2)
    {
      v5 = 1;
    }

    if (v4 == 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)managedNewTabPageState
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_hasCachedNewTabPageState)
  {
    cachedNewTabPageState = v2->_cachedNewTabPageState;
  }

  else
  {
    cachedNewTabPageState = [(WBSManagedNewTabPageController *)v2 _computeManagedNewTabPageType];
    v2->_cachedNewTabPageState = cachedNewTabPageState;
    v2->_hasCachedNewTabPageState = 1;
  }

  objc_sync_exit(v2);

  return cachedNewTabPageState;
}

void __38__WBSManagedNewTabPageController_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = a2;
  objc_sync_enter(v4);
  *(*(v3 + 32) + 24) = 0;
  objc_sync_exit(v4);

  LODWORD(v3) = [v5 containsObject:*MEMORY[0x1E69ADFD8]];
  if (v3)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"ManagedNewTabPageDidChange" object:0];
  }
}

- (NSString)managedNewTabPageHomepageURLString
{
  v2 = [(MOEffectiveSettingsStore *)self->_managedSettingsStore safari];
  v3 = [v2 newTabStartPage];
  v4 = [v3 homepageURL];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    v6 = v5;
    if (v5 && [v5 safari_isHTTPFamilyURL])
    {
      v7 = v4;
    }

    else
    {
      v7 = &stru_1F3064D08;
    }
  }

  else
  {
    v7 = &stru_1F3064D08;
  }

  return v7;
}

- (NSString)managedNewTabPageExtensionComposedIdentifier
{
  v2 = [(MOEffectiveSettingsStore *)self->_managedSettingsStore safari];
  v3 = [v2 newTabStartPage];
  v4 = [v3 extensionIdentifier];

  return v4;
}

@end