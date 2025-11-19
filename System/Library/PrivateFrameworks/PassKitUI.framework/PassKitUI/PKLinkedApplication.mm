@interface PKLinkedApplication
+ (id)_openOptionsWithURL:(id)a3;
- (BOOL)_useLibraryItem;
- (BOOL)canOpenApplication;
- (CGSize)expectedIconSize;
- (NSNumber)storeIdentifier;
- (NSString)displayName;
- (PKLinkedApplication)initWithPass:(id)a3;
- (PKLinkedApplication)initWithStoreIDs:(id)a3 systemAppBundleIdentifiers:(id)a4 defaultLaunchURL:(id)a5 applicationIdentifiers:(id)a6;
- (id)_foundStoreItemProductPageURL;
- (id)_iconImageDescriptorForScale:(double)a3;
- (int64_t)state;
- (void)_notifyObserversOfStateChange;
- (void)_reloadApplicationStateWithCompletion:(id)a3;
- (void)_unloadApplicationState;
- (void)_updateApplicationStateWithCompletion:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)installedApplicationsDidChangeNotification:(id)a3;
- (void)openApplication:(id)a3 withLaunchOptions:(unint64_t)a4 launchURL:(id)a5;
- (void)productViewControllerDidFinish:(id)a3;
- (void)reloadApplicationStateIfNecessaryWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setStoreIDs:(id)a3;
- (void)setUseSmallIcon:(BOOL)a3;
@end

@implementation PKLinkedApplication

- (CGSize)expectedIconSize
{
  v2 = [(PKLinkedApplication *)self _iconImageDescriptorForScale:PKUIScreenScale()];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (id)_openOptionsWithURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F970]];
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x1E699F960]];
  }

  v5 = [MEMORY[0x1E699FB70] optionsWithDictionary:v4];

  return v5;
}

- (PKLinkedApplication)initWithPass:(id)a3
{
  v4 = a3;
  v5 = [v4 storeIdentifiers];
  v6 = [v4 systemAppBundleIdentifiers];
  v7 = [v4 appLaunchURL];

  v8 = [(PKLinkedApplication *)self initWithStoreIDs:v5 systemAppBundleIdentifiers:v6 defaultLaunchURL:v7 applicationIdentifiers:0];
  return v8;
}

- (PKLinkedApplication)initWithStoreIDs:(id)a3 systemAppBundleIdentifiers:(id)a4 defaultLaunchURL:(id)a5 applicationIdentifiers:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v34.receiver = self;
  v34.super_class = PKLinkedApplication;
  v14 = [(PKLinkedApplication *)&v34 init];
  v15 = v14;
  if (v14)
  {
    v14->_pendingLock._os_unfair_lock_opaque = 0;
    v16 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v15->_observers;
    v15->_observers = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = v15->_completionHandlers;
    v15->_completionHandlers = v18;

    v20 = [v10 copy];
    storeIDs = v15->_storeIDs;
    v15->_storeIDs = v20;

    v22 = [v11 copy];
    systemAppBundleIdentifiers = v15->_systemAppBundleIdentifiers;
    v15->_systemAppBundleIdentifiers = v22;

    v24 = [v12 copy];
    defaultLaunchURL = v15->_defaultLaunchURL;
    v15->_defaultLaunchURL = v24;

    v26 = [v13 copy];
    applicationIdentifiers = v15->_applicationIdentifiers;
    v15->_applicationIdentifiers = v26;

    v28 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v28 addObserver:v15 selector:sel_installedApplicationsDidChangeNotification_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v28 addObserver:v15 selector:sel_installedApplicationsDidChangeNotification_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    *&v15->_shouldApplyMask = 257;
    v29 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v30 = dispatch_queue_attr_make_with_autorelease_frequency(v29, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v31 = dispatch_queue_create("com.apple.passkitui.system.app.lookup", v30);
    appLookupQueue = v15->_appLookupQueue;
    v15->_appLookupQueue = v31;
  }

  return v15;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  [(PKCancelable *)self->_pendingUpdate cancel];

  v4.receiver = self;
  v4.super_class = PKLinkedApplication;
  [(PKLinkedApplication *)&v4 dealloc];
}

- (void)_reloadApplicationStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    completionHandlers = self->_completionHandlers;
    v7 = _Block_copy(v4);
    [(NSMutableArray *)completionHandlers addObject:v7];
  }

  if (!self->_loading)
  {
    self->_loading = 1;
    [(PKLinkedApplication *)self _notifyObserversOfStateChange];
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__PKLinkedApplication__reloadApplicationStateWithCompletion___block_invoke;
    v8[3] = &unk_1E8011180;
    objc_copyWeak(&v9, &location);
    [(PKLinkedApplication *)self _updateApplicationStateWithCompletion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __61__PKLinkedApplication__reloadApplicationStateWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      *(WeakRetained + 16) = 1;
      [WeakRetained _notifyObserversOfStateChange];
    }

    v5 = [v4[6] copy];
    [v4[6] removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)reloadApplicationStateIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!self->_loaded || ((v5 = v4, (foundLibraryItem = self->_foundLibraryItem) == 0) || (v7 = [(SSSoftwareLibraryItem *)foundLibraryItem isPlaceholder], v5 = v8, v7)) && !self->_foundStoreItem)
  {
    [(PKLinkedApplication *)self _reloadApplicationStateWithCompletion:v8];
    v5 = v8;
  }
}

- (BOOL)canOpenApplication
{
  if (![(PKLinkedApplication *)self isInstalled])
  {
    goto LABEL_7;
  }

  foundLibraryItem = self->_foundLibraryItem;
  if (foundLibraryItem)
  {
    [(SSSoftwareLibraryItem *)foundLibraryItem valueForProperty:*MEMORY[0x1E69D4D40]];
  }

  else
  {
    [(LSApplicationRecord *)self->_foundSystemAppRecord bundleIdentifier];
  }
  v4 = ;
  v5 = v4;
  if (v4)
  {
    v6 = PKCanOpenApplication(v4);

    return v6;
  }

  else
  {
LABEL_7:
    v8 = [(PKLinkedApplication *)self _foundStoreItemProductPageURL];

    if (v8)
    {
      v9 = *MEMORY[0x1E69BB738];

      return PKCanOpenApplication(v9);
    }

    else
    {
      return 1;
    }
  }
}

- (void)openApplication:(id)a3 withLaunchOptions:(unint64_t)a4 launchURL:(id)a5
{
  v6 = a4;
  v51 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v8 = a5;
  presentedViewController = self->_presentedViewController;
  if (presentedViewController)
  {
    v10 = [(SKStoreProductViewController *)presentedViewController presentingViewController];

    if (!v10)
    {
      v17 = self->_presentedViewController;
      self->_presentedViewController = 0;

      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if (!v8)
  {
LABEL_4:
    v8 = self->_defaultLaunchURL;
  }

LABEL_5:
  v11 = [(PKAMSLookupItem *)self->_foundStoreItem distributionIdentifier];
  if (!v11 || [(PKLinkedApplication *)self isInstalled])
  {
    if (PKRunningInViewService() && (v12 = v41) != 0)
    {
      v13 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = 1;
      }

      else
      {
        while (1)
        {
          v15 = [v13 parentViewController];
          if (!v15)
          {
            v15 = [v13 presentingViewController];
            if (!v15)
            {
              break;
            }
          }

          objc_opt_class();
          v13 = v15;
          if (objc_opt_isKindOfClass())
          {
            v14 = 1;
            v13 = v15;
            goto LABEL_30;
          }
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = [v13 childViewControllers];
        v18 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v18)
        {
          v19 = *v47;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v47 != v19)
              {
                objc_enumerationMutation(obj);
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = 1;
                goto LABEL_29;
              }
            }

            v18 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v14 = 0;
LABEL_29:

        v13 = 0;
      }

LABEL_30:
    }

    else
    {
      v14 = 0;
    }

    v21 = [(PKLinkedApplication *)self storeIdentifier];
    if ((v14 | PKRunningInLockScreenPlugin()) == 1)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ([(PKLinkedApplication *)self isInstalled])
      {
        foundLibraryItem = self->_foundLibraryItem;
        if (foundLibraryItem)
        {
          [(SSSoftwareLibraryItem *)foundLibraryItem valueForProperty:*MEMORY[0x1E69D4D40]];
        }

        else
        {
          [(LSApplicationRecord *)self->_foundSystemAppRecord bundleIdentifier];
        }
        v32 = ;
        if (v32)
        {
          [v22 setObject:v32 forKeyedSubscript:@"bundleID"];
          v30 = v8;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v29 = [(PKLinkedApplication *)self _foundStoreItemProductPageURL];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
          v32 = @"com.apple.AppStore";
        }

        else
        {
          v32 = 0;
        }
      }

      v36 = [v41 viewIfLoaded];
      v37 = [v36 window];

      if (v32 && v37)
      {
        v38 = [objc_opt_class() _openOptionsWithURL:v30];
        PKPostOpenApplicationNotification(v37, v32, v38);
      }

      goto LABEL_65;
    }

    if ([(PKLinkedApplication *)self isInstalled])
    {
      v24 = self->_foundLibraryItem;
      if (v24)
      {
        [(SSSoftwareLibraryItem *)v24 valueForProperty:*MEMORY[0x1E69D4D40]];
      }

      else
      {
        [(LSApplicationRecord *)self->_foundSystemAppRecord bundleIdentifier];
      }
      v34 = ;
      if (v34)
      {
        v35 = [objc_opt_class() _openOptionsWithURL:v8];
        PKOpenApplication(v34, v35);
      }

      MEMORY[0x1BFB41980](*MEMORY[0x1E69B9ED0], 0);

      goto LABEL_65;
    }

    if (v6)
    {
      v27 = [(PKLinkedApplication *)self _foundStoreItemProductPageURL];
      if (v27)
      {
        v33 = [objc_opt_class() _openOptionsWithURL:v27];
        PKOpenApplication(@"com.apple.AppStore", v33);
      }
    }

    else
    {
      if (v41)
      {
        if (!self->_presentedViewController)
        {
          if (v21)
          {
            v25 = [v41 presentedViewController];
            v26 = v25 == 0;

            if (v26)
            {
              objc_initWeak(&location, self);
              v39 = [[PKStoreProductViewPresenter alloc] initWithProductDelegate:self];
              [(PKStoreProductViewPresenter *)v39 loadProductForItemIdentifier:v21 customProductPageIdentifier:self->_customProductPageIdentifier];
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __67__PKLinkedApplication_openApplication_withLaunchOptions_launchURL___block_invoke;
              v42[3] = &unk_1E8014110;
              objc_copyWeak(&v44, &location);
              v43 = v41;
              [(PKStoreProductViewPresenter *)v39 presentStoreViewWithBlock:v42];

              objc_destroyWeak(&v44);
              objc_destroyWeak(&location);
              goto LABEL_65;
            }
          }
        }
      }

      v27 = [(PKLinkedApplication *)self _foundStoreItemProductPageURL];
      if (v27)
      {
        v28 = [objc_opt_class() _openOptionsWithURL:v27];
        PKOpenApplication(@"com.apple.AppStore", v28);
      }
    }

LABEL_65:
    goto LABEL_66;
  }

  v16 = [(PKAMSLookupItem *)self->_foundStoreItem appStoreIdentifier];
  +[_PKDistributedAppLauncher launchAppWithDistributorBundleID:itemID:completion:](_TtC9PassKitUI25_PKDistributedAppLauncher, "launchAppWithDistributorBundleID:itemID:completion:", v11, [v16 integerValue], 0);

LABEL_66:
}

void __67__PKLinkedApplication_openApplication_withLaunchOptions_launchURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 7, a2);
  }

  [*(a1 + 32) presentViewController:v9 animated:1 completion:v6];
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9ED8], 0);
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)_unloadApplicationState
{
  os_unfair_lock_lock(&self->_pendingLock);
  pendingUpdate = self->_pendingUpdate;
  if (pendingUpdate)
  {
    [(PKCancelable *)pendingUpdate cancel];
    v4 = self->_pendingUpdate;
    self->_pendingUpdate = 0;
  }

  os_unfair_lock_unlock(&self->_pendingLock);
  *&self->_loaded = 0;
  foundSystemAppRecord = self->_foundSystemAppRecord;
  self->_foundSystemAppRecord = 0;

  foundLibraryItem = self->_foundLibraryItem;
  self->_foundLibraryItem = 0;

  foundStoreItem = self->_foundStoreItem;
  self->_foundStoreItem = 0;

  iconImage = self->_iconImage;
  self->_iconImage = 0;

  [(PKLinkedApplication *)self _notifyObserversOfStateChange];
}

- (void)_updateApplicationStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self->_storeIDs;
  v18 = self->_systemAppBundleIdentifiers;
  v6 = self->_applicationIdentifiers;
  if ([(NSArray *)v5 count]|| [(NSArray *)v18 count]|| [(NSArray *)v6 count])
  {
    from[0] = 0;
    from[1] = from;
    from[2] = 0x3032000000;
    from[3] = __Block_byref_object_copy__6;
    from[4] = __Block_byref_object_dispose__6;
    v60 = 0;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = __Block_byref_object_copy__6;
    v57[4] = __Block_byref_object_dispose__6;
    v58 = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x3032000000;
    v55[3] = __Block_byref_object_copy__6;
    v55[4] = __Block_byref_object_dispose__6;
    v56 = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x3032000000;
    v53[3] = __Block_byref_object_copy__6;
    v53[4] = __Block_byref_object_dispose__6;
    v54 = 0;
    v7 = [(PKLinkedApplication *)self _iconImageDescriptorForScale:PKUIScreenScale()];
    v8 = objc_alloc_init(MEMORY[0x1E69B8658]);
    if ([(NSArray *)self->_systemAppBundleIdentifiers count])
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke;
      v47[3] = &unk_1E8014160;
      v48 = v18;
      v49 = v7;
      v50 = self;
      v51 = from;
      v52 = v53;
      [v8 addOperation:v47];
    }

    if ([(NSArray *)v6 count])
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_3;
      v41[3] = &unk_1E8014160;
      v45 = v53;
      v42 = v6;
      v43 = v7;
      v44 = self;
      v46 = from;
      [v8 addOperation:v41];
    }

    if ([(NSArray *)v5 count])
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_5;
      v36[3] = &unk_1E80141B0;
      v39 = v53;
      v9 = v5;
      v37 = v9;
      v10 = v7;
      v38 = v10;
      v40 = v57;
      [v8 addOperation:v36];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_7;
      v30[3] = &unk_1E8014200;
      v33 = v53;
      v34 = v57;
      v31 = v9;
      v32 = v10;
      v35 = v55;
      [v8 addOperation:v30];
    }

    os_unfair_lock_lock(&self->_pendingLock);
    pendingUpdate = self->_pendingUpdate;
    if (pendingUpdate)
    {
      [(PKCancelable *)pendingUpdate cancel];
      v12 = self->_pendingUpdate;
      self->_pendingUpdate = 0;
    }

    objc_initWeak(&location, self);
    v13 = [MEMORY[0x1E695DFB0] null];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_9;
    v22[3] = &unk_1E8014250;
    objc_copyWeak(&v28, &location);
    v24 = from;
    v25 = v57;
    v26 = v55;
    v27 = v53;
    v23 = v4;
    v14 = [v8 evaluateWithInput:v13 completion:v22];
    v15 = self->_pendingUpdate;
    self->_pendingUpdate = v14;

    os_unfair_lock_unlock(&self->_pendingLock);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);

    _Block_object_dispose(v53, 8);
    _Block_object_dispose(v55, 8);

    _Block_object_dispose(v57, 8);
    _Block_object_dispose(from, 8);
  }

  else
  {
    os_unfair_lock_lock(&self->_pendingLock);
    v16 = self->_pendingUpdate;
    if (v16)
    {
      [(PKCancelable *)v16 cancel];
      v17 = self->_pendingUpdate;
      self->_pendingUpdate = 0;
    }

    os_unfair_lock_unlock(&self->_pendingLock);
    objc_initWeak(from, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_11;
    block[3] = &unk_1E80111D0;
    objc_copyWeak(&v21, from);
    v20 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(from);
  }
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(*(a1 + 48) + 80);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_2;
  v18[3] = &unk_1E8014138;
  v21 = *(a1 + 56);
  v19 = v6;
  v20 = v7;
  v11 = v8;
  v12 = v9;
  v13 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __LookupSystemApplications_block_invoke;
  block[3] = &unk_1E8012300;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v14 = v12;
  v15 = v11;
  v16 = v6;
  v17 = v7;
  dispatch_async(v10, block);
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[5] + 16))();
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_3(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = a1[7];
  if (*(*(v9 + 8) + 40))
  {
    (*(v7 + 2))(v7, v6, 0);
  }

  else
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = *(a1[6] + 80);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_4;
    v18[3] = &unk_1E8014138;
    v21 = a1[8];
    v22 = v9;
    v20 = v7;
    v19 = v6;
    v13 = v10;
    v14 = v11;
    v15 = v18;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __LookupApplications_block_invoke;
    block[3] = &unk_1E8012300;
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v16 = v14;
    v17 = v13;
    dispatch_async(v12, block);
  }
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_4(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  objc_storeStrong((*(a1[7] + 8) + 40), a3);
  v7 = a1[5];
  if (v7)
  {
    (*(v7 + 16))(v7, a1[4], 0);
  }
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_5(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = a1[6];
  if (*(*(v11 + 8) + 40))
  {
    (*(v9 + 2))(v9, v8, 0);
  }

  else
  {
    v12 = a1[4];
    v13 = a1[5];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_6;
    v36[3] = &unk_1E8014188;
    v39 = a1[7];
    v40 = v11;
    v38 = v9;
    v37 = v8;
    v14 = v12;
    v15 = v7;
    v16 = v13;
    v17 = v36;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__6;
    v56[4] = __Block_byref_object_dispose__6;
    v57 = objc_alloc_init(MEMORY[0x1E69D49D8]);
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = v7;
    v35 = v15;
    v19 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*MEMORY[0x1E69BB938]];
    v21 = [v14 containsObject:v20];

    if (v21)
    {
      v22 = *MEMORY[0x1E69BB930];
    }

    else
    {
      v22 = 0;
    }

    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __LookupInstalledApplications_block_invoke;
    v53[3] = &unk_1E8014448;
    v55 = v56;
    v23 = v18;
    v54 = v23;
    [v19 addOperation:v53];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __LookupInstalledApplications_block_invoke_3;
    v49[3] = &unk_1E8014470;
    v52 = v56;
    v24 = v14;
    v50 = v24;
    v25 = v23;
    v51 = v25;
    [v19 addOperation:v49];
    v26 = [MEMORY[0x1E695DFB0] null];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __LookupInstalledApplications_block_invoke_5;
    v42[3] = &unk_1E8014498;
    v27 = v24;
    v43 = v27;
    v28 = v25;
    v44 = v28;
    v29 = v22;
    v45 = v29;
    v30 = v16;
    v46 = v30;
    v31 = v35;
    v47 = v31;
    v32 = v17;
    v48 = v32;
    v33 = [v19 evaluateWithInput:v26 completion:v42];

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __LookupInstalledApplications_block_invoke_7;
    v41[3] = &unk_1E8011A18;
    v41[4] = v56;
    [v31 addCancelAction:v41];

    _Block_object_dispose(v56, 8);
    v7 = v34;
  }
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_6(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[5] + 16))();
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_7(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[6];
  if (!*(*(v10 + 8) + 40))
  {
    goto LABEL_5;
  }

  v11 = [*(*(a1[7] + 8) + 40) valueForProperty:*MEMORY[0x1E69D4D50]];
  v12 = [v11 length];

  if (!v12)
  {
    v10 = a1[6];
LABEL_5:
    v13 = a1[4];
    v14 = a1[5];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_8;
    v23[3] = &unk_1E80141D8;
    v26 = a1[8];
    v27 = v10;
    v25 = v9;
    v24 = v8;
    v15 = v13;
    v16 = v7;
    v17 = v14;
    v18 = v23;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __LookupStoreApplications_block_invoke;
    v30[3] = &unk_1E8014510;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v18;
    v19 = v17;
    v20 = v15;
    v21 = PKLookupAppStoreApplications(v20, v30);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __LookupStoreApplications_block_invoke_396;
    v28[3] = &unk_1E8010970;
    v29 = v21;
    v22 = v21;
    [v16 addCancelAction:v28];

    goto LABEL_6;
  }

  (*(v9 + 2))(v9, v8, 0);
LABEL_6:
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_8(void *a1, void *a2)
{
  v7 = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (!*(*(a1[7] + 8) + 40))
  {
    v4 = [v7 iconImage];
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  (*(a1[5] + 16))();
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_10;
  block[3] = &unk_1E8014228;
  objc_copyWeak(&v14, (a1 + 72));
  v10 = v5;
  v8 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v6 = v8;
  v11 = v8;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  os_unfair_lock_lock(WeakRetained + 4);
  v3 = v7;
  v4 = *&v7[6]._os_unfair_lock_opaque;
  if (v4 == *(a1 + 32))
  {
    *&v7[6]._os_unfair_lock_opaque = 0;

    v3 = v7;
  }

  os_unfair_lock_unlock(v3 + 4);
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    objc_storeStrong(&v7[18], *(*(*(a1 + 48) + 8) + 40));
    objc_storeStrong(&v7[16], *(*(*(a1 + 56) + 8) + 40));
    objc_storeStrong(&v7[2], *(*(*(a1 + 64) + 8) + 40));
    objc_storeStrong(&v7[34], *(*(*(a1 + 72) + 8) + 40));
    v5 = 0;
  }

  else
  {
LABEL_5:
    v5 = 1;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void __61__PKLinkedApplication__updateApplicationStateWithCompletion___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;

    v5 = v8[8];
    v8[8] = 0;

    v6 = v8[1];
    v8[1] = 0;

    v3 = v8;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3 == 0);
    v3 = v8;
  }
}

- (id)_iconImageDescriptorForScale:(double)a3
{
  if (PKUserInterfaceIdiomSupportsLargeLayouts())
  {
    v5 = MEMORY[0x1E69A8A30];
    v6 = @"com.apple.IconServices.ImageDescriptor.LargeHomeScreen";
  }

  else
  {
    v5 = MEMORY[0x1E69A8A30];
    if (self->_useSmallIcon)
    {
      v7 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A90]];
      [v7 setDrawBorder:1];
      goto LABEL_7;
    }

    v6 = *MEMORY[0x1E69A8A78];
  }

  v7 = [v5 imageDescriptorNamed:v6];
LABEL_7:
  [v7 setScale:a3];
  [v7 setDrawBorder:self->_shouldApplyBorder];
  [v7 setShouldApplyMask:self->_shouldApplyMask];

  return v7;
}

- (void)_notifyObserversOfStateChange
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSHashTable *)self->_observers copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) linkedApplicationDidChangeState:{self, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)installedApplicationsDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKLinkedApplication_installedApplicationsDidChangeNotification___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setStoreIDs:(id)a3
{
  v6 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    storeIDs = self->_storeIDs;
    self->_storeIDs = v4;

    [(PKLinkedApplication *)self _unloadApplicationState];
  }
}

- (int64_t)state
{
  foundLibraryItem = self->_foundLibraryItem;
  if (foundLibraryItem && ![(SSSoftwareLibraryItem *)foundLibraryItem isPlaceholder]|| self->_foundStoreItem || self->_foundSystemAppRecord)
  {
    return 1;
  }

  if (!self->_loaded)
  {
    return 0;
  }

  if (self->_loading)
  {
    return 0;
  }

  return 2;
}

- (void)setUseSmallIcon:(BOOL)a3
{
  if (self->_useSmallIcon == !a3)
  {
    self->_useSmallIcon = a3;
    [(PKLinkedApplication *)self _unloadApplicationState];
  }
}

- (BOOL)_useLibraryItem
{
  if (self->_foundStoreItem)
  {
    return [(SSSoftwareLibraryItem *)self->_foundLibraryItem isPlaceholder];
  }

  else
  {
    return 1;
  }
}

- (NSNumber)storeIdentifier
{
  if ([(PKLinkedApplication *)self _useLibraryItem])
  {
    [(SSSoftwareLibraryItem *)self->_foundLibraryItem valueForProperty:*MEMORY[0x1E69D4D48]];
  }

  else
  {
    [(PKAMSLookupItem *)self->_foundStoreItem appStoreIdentifier];
  }
  v3 = ;

  return v3;
}

- (NSString)displayName
{
  foundSystemAppRecord = self->_foundSystemAppRecord;
  if (foundSystemAppRecord)
  {
    v4 = [(LSApplicationRecord *)foundSystemAppRecord localizedName];
  }

  else
  {
    if ([(PKLinkedApplication *)self _useLibraryItem])
    {
      [(SSSoftwareLibraryItem *)self->_foundLibraryItem valueForProperty:*MEMORY[0x1E69D4D50]];
    }

    else
    {
      [(PKAMSLookupItem *)self->_foundStoreItem displayName];
    }
    v4 = ;
  }

  return v4;
}

- (id)_foundStoreItemProductPageURL
{
  v12[1] = *MEMORY[0x1E69E9840];
  foundStoreItem = self->_foundStoreItem;
  if (foundStoreItem)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(PKAMSLookupItem *)foundStoreItem appStoreIdentifier];
    v6 = [v4 stringWithFormat:@"itms-appss://apps.apple.com/app/id%@", v5];

    v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:v6];
    if (self->_customProductPageIdentifier)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ppid" value:self->_customProductPageIdentifier];
      v12[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v7 setQueryItems:v9];
    }

    v10 = [v7 URL];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)productViewControllerDidFinish:(id)a3
{
  v4 = a3;
  [(SKStoreProductViewController *)v4 dismissViewControllerAnimated:1 completion:0];
  presentedViewController = self->_presentedViewController;

  if (presentedViewController == v4)
  {
    self->_presentedViewController = 0;
  }
}

@end