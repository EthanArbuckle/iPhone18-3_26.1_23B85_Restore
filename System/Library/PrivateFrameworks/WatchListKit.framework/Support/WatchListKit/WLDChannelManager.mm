@interface WLDChannelManager
+ (id)defaultChannelManager;
- (void)vppaConsentedBundleIDsWithCompletion:(id)completion;
@end

@implementation WLDChannelManager

+ (id)defaultChannelManager
{
  if (defaultChannelManager_token != -1)
  {
    +[WLDChannelManager defaultChannelManager];
  }

  v3 = defaultChannelManager_defaultChannelManager;

  return v3;
}

void __42__WLDChannelManager_defaultChannelManager__block_invoke(id a1)
{
  defaultChannelManager_defaultChannelManager = objc_alloc_init(WLDChannelManager);

  _objc_release_x1();
}

- (void)vppaConsentedBundleIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[WLKSettingsStore sharedSettings];
  consentedBrands = [v4 consentedBrands];

  if (![consentedBrands count])
  {
    v6 = dispatch_semaphore_create(0);
    v7 = +[WLKSettingsStore sharedSettings];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __58__WLDChannelManager_vppaConsentedBundleIDsWithCompletion___block_invoke;
    v19[3] = &unk_100044DB8;
    v20 = v6;
    v8 = v6;
    [v7 refreshWithCompletion:v19];

    v9 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v8, v9);
    v10 = +[WLKSettingsStore sharedSettings];
    consentedBrands2 = [v10 consentedBrands];

    consentedBrands = consentedBrands2;
  }

  if (consentedBrands)
  {
    v12 = [NSSet setWithArray:consentedBrands];
    NSLog(@"Consented Channel IDs: %@", v12);
    v13 = +[WLKChannelUtilities sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __58__WLDChannelManager_vppaConsentedBundleIDsWithCompletion___block_invoke_2;
    v16[3] = &unk_100044EB0;
    v17 = v12;
    v18 = completionCopy;
    v14 = v12;
    [v13 loadIfNeededWithCompletion:v16];

    v15 = v17;
  }

  else
  {
    v14 = objc_alloc_init(NSSet);
    v15 = WLKError();
    (*(completionCopy + 2))(completionCopy, v14, v15);
  }
}

void __58__WLDChannelManager_vppaConsentedBundleIDsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v4 = objc_alloc_init(NSSet);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = *(a1 + 32);
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
        v11 = +[WLKChannelUtilities sharedInstance];
        v12 = [v11 channelForID:v10];

        v13 = [v12 appBundleIDs];
        if (v13)
        {
          v14 = [v4 setByAddingObjectsFromArray:v13];

          v4 = v14;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  NSLog(@"Consented Bundle IDs: %@", v4);
  (*(*(a1 + 40) + 16))();
}

@end