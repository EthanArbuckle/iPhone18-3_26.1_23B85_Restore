@interface VSAppSettingsViewModel
+ (id)keyPathsForValuesAffectingAccessGranted;
- (BOOL)canChangePrivacyAccess;
- (BOOL)canRevokeVoucher;
- (NSString)description;
- (NSURL)appStoreURL;
- (VSAppSettingsViewModel)init;
- (VSAppSettingsViewModel)initWithAppDescription:(id)a3 privacyVoucher:(id)a4 restrictionsCenter:(id)a5 privacyFacade:(id)a6;
- (VSAppSettingsViewModel)initWithApplicationWorkspace:(id)a3;
- (VSAppSettingsViewModel)initWithBundle:(id)a3 restrictionsCenter:(id)a4 privacyFacade:(id)a5;
- (VSAppSettingsViewModel)initWithBundle:(id)a3 restrictionsCenter:(id)a4 privacyFacade:(id)a5 adamID:(id)a6;
- (id)appAdamIDs;
- (id)appBundleIDs;
- (id)iconURLForSize:(CGSize)a3;
- (void)_denyPrivacyAccess;
- (void)_grantPrivacyAccess;
- (void)_updatePrivacyState;
- (void)applicationsDidFailToInstall:(id)a3;
- (void)applicationsDidFailToUninstall:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsWillInstall:(id)a3;
- (void)applicationsWillUninstall:(id)a3;
- (void)dealloc;
- (void)installApp;
- (void)launchApp;
- (void)revokeVoucher;
- (void)setAccessGranted:(BOOL)a3;
@end

@implementation VSAppSettingsViewModel

- (VSAppSettingsViewModel)initWithApplicationWorkspace:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = VSAppSettingsViewModel;
  v6 = [(VSAppSettingsViewModel *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workspace, a3);
    displayName = v7->_displayName;
    v7->_displayName = &stru_2880B8BB0;

    bundleID = v7->_bundleID;
    v7->_bundleID = &stru_2880B8BB0;

    buyParams = v7->_buyParams;
    v7->_buyParams = &stru_2880B8BB0;

    v11 = objc_alloc_init(MEMORY[0x277CE2298]);
    voucher = v7->_voucher;
    v7->_voucher = v11;

    [v5 addObserver:v7];
    objc_initWeak(&location, v7);
    v13 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__VSAppSettingsViewModel_initWithApplicationWorkspace___block_invoke;
    v17[3] = &unk_279E19AB8;
    objc_copyWeak(&v18, &location);
    LODWORD(v13) = notify_register_dispatch("com.apple.tcc.access.changed", &v7->_registrationToken, v13, v17);

    if (v13)
    {
      v15 = VSErrorLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [VSAppSettingsViewModel initWithApplicationWorkspace:v15];
      }
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __55__VSAppSettingsViewModel_initWithApplicationWorkspace___block_invoke(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "TCC access changed notification received.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePrivacyState];
}

- (VSAppSettingsViewModel)init
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [(VSAppSettingsViewModel *)self initWithApplicationWorkspace:v3];

  return v4;
}

- (VSAppSettingsViewModel)initWithBundle:(id)a3 restrictionsCenter:(id)a4 privacyFacade:(id)a5 adamID:(id)a6
{
  v11 = a6;
  v12 = [(VSAppSettingsViewModel *)self initWithBundle:a3 restrictionsCenter:a4 privacyFacade:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_adamID, a6);
  }

  return v13;
}

- (VSAppSettingsViewModel)initWithBundle:(id)a3 restrictionsCenter:(id)a4 privacyFacade:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_14:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The restrictionsCenter parameter must not be nil."];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The bundle parameter must not be nil."];
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_15:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The privacyFacade parameter must not be nil."];
LABEL_4:
  v12 = [(VSAppSettingsViewModel *)self init];
  if (v12)
  {
    v13 = [v9 bundleIdentifier];

    if (!v13)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [bundle bundleIdentifier] parameter must not be nil."];
    }

    v14 = [v9 bundleIdentifier];
    commonInit_0(v12, v10, v11, v14);
    objc_storeStrong(&v12->_bundle, a3);
    v12->_installState = 4;
    v12->_decided = 1;
    v15 = VSIconForBundleWithIdentifier(v14);
    icon = v12->_icon;
    v12->_icon = v15;

    v17 = [v11 knownAppBundles];
    v18 = [v17 containsObject:v9];

    if (v18)
    {
      v19 = [v11 isAccessGrantedForBundleID:v14];
      v20 = 1;
      if (!v19)
      {
        v20 = 2;
      }

      v12->_privacyState = v20;
    }

    v21 = [MEMORY[0x277CC1E70] vs_applicationRecordWithBundleIdentifier:v12->_bundleID];
    v22 = [[VSAppInstallMetadata alloc] initWithApplicationRecord:v21];
    v12->_installSource = [(VSAppInstallMetadata *)v22 installSource];
    v23 = [v21 iTunesMetadata];
    v24 = [v23 artistName];
    artistName = v12->_artistName;
    v12->_artistName = v24;
  }

  return v12;
}

- (VSAppSettingsViewModel)initWithAppDescription:(id)a3 privacyVoucher:(id)a4 restrictionsCenter:(id)a5 privacyFacade:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_11:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The restrictionsCenter parameter must not be nil."];
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The appDescription parameter must not be nil."];
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_12:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The privacyFacade parameter must not be nil."];
LABEL_4:
  v15 = [(VSAppSettingsViewModel *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_appDescription, a3);
    v17 = [objc_alloc(MEMORY[0x277CE2298]) initWithObject:v12];
    voucher = v16->_voucher;
    v16->_voucher = v17;

    v19 = [v11 icon];
    icon = v16->_icon;
    v16->_icon = v19;

    v21 = [v11 sellerName];
    v22 = [v21 copy];
    storeName = v16->_storeName;
    v16->_storeName = v22;

    v24 = [v11 shortenedDisplayName];
    v25 = [v24 copy];
    displayName = v16->_displayName;
    v16->_displayName = v25;

    v27 = [v11 adamID];
    v28 = [v27 stringValue];
    v29 = [v28 copy];
    adamID = v16->_adamID;
    v16->_adamID = v29;

    v31 = [v11 bundleID];
    v32 = v31;
    if (v31 && [v31 length])
    {
      v33 = v32;
      commonInit_0(v16, v13, v14, v33);
      v34 = [(VSAppSettingsViewModel *)v16 workspace];
      v35 = [v34 applicationIsInstalled:v33];

      if (v35)
      {
        v36 = VSIconForBundleWithIdentifier(v33);
        v37 = v16->_icon;
        v16->_icon = v36;

        v38 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v33];
        bundle = v16->_bundle;
        v16->_bundle = v38;
        v40 = 4;
      }

      else
      {
        v41 = [v11 buyParams];
        bundle = v41;
        if (v41 && [(NSBundle *)v41 length])
        {
          v42 = [(NSBundle *)bundle copy];
          buyParams = v16->_buyParams;
          v16->_buyParams = v42;

          v40 = 2;
        }

        else
        {
          v40 = 1;
        }
      }

      v16->_installState = v40;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempt to create an app settings view model from an app description that lacks a bundle identifier."];
    }
  }

  return v16;
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_registrationToken))
  {
    notify_cancel(self->_registrationToken);
  }

  [(LSApplicationWorkspace *)self->_workspace removeObserver:self];
  v3.receiver = self;
  v3.super_class = VSAppSettingsViewModel;
  [(VSAppSettingsViewModel *)&v3 dealloc];
}

- (void)_updatePrivacyState
{
  v10 = [(VSAppSettingsViewModel *)self privacyFacade];
  v3 = [(VSAppSettingsViewModel *)self bundle];
  if (v3)
  {
    v4 = [v10 knownAppBundles];
    v5 = [v4 containsObject:v3];

    if (v5)
    {
      v6 = [v3 bundleIdentifier];

      if (!v6)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [bundle bundleIdentifier] parameter must not be nil."];
      }

      v7 = [v3 bundleIdentifier];
      v8 = [v10 isAccessGrantedForBundleID:v7];

      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      [(VSAppSettingsViewModel *)self setPrivacyState:v9];
    }
  }
}

- (NSURL)appStoreURL
{
  v2 = [(VSAppSettingsViewModel *)self appDescription];
  v3 = [v2 appStoreURL];

  return v3;
}

- (id)iconURLForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(VSAppSettingsViewModel *)self appDescription];
  v6 = [v5 iconURLForSize:{width, height}];

  return v6;
}

- (BOOL)canRevokeVoucher
{
  v2 = [(VSAppSettingsViewModel *)self voucher];
  v3 = [v2 object];

  return v3 != 0;
}

- (void)revokeVoucher
{
  v3 = [(VSAppSettingsViewModel *)self privacyFacade];
  v6 = [v3 voucherLockbox];

  v4 = [(VSAppSettingsViewModel *)self voucher];
  v5 = [v4 forceUnwrapObject];
  [v6 redeemVoucher:v5];
}

- (void)installApp
{
  v3 = [(VSAppSettingsViewModel *)self buyParams];
  if (![v3 length])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempt to install an app without buy params."];
  }

  v4 = [(VSAppSettingsViewModel *)self installState];
  if (v4 <= 5 && ((0x3Bu >> v4) & 1) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:off_279E19B00[v4]];
  }

  [(VSAppSettingsViewModel *)self setInstallState:3];
  v5 = objc_alloc_init(VSWLKAppInstallationOperation);
  [(VSWLKAppInstallationOperation *)v5 setInstallable:self];
  [(VSAsyncOperation *)v5 start];
  v6 = v5;
  v7 = VSMainThreadOperationWithBlock();
  [v7 addDependency:v6];
  VSEnqueueCompletionOperation();
}

void __36__VSAppSettingsViewModel_installApp__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];
  v4 = [v3 object];

  if (!v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    [v5 setInstallState:v6];
  }
}

- (void)launchApp
{
  v3 = [(VSAppSettingsViewModel *)self installState];
  v4 = MEMORY[0x277CBE660];
  if (v3 != 4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempt to launch app that is not installed."];
  }

  if ([(VSAppSettingsViewModel *)self privacyState])
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"Attempt to launch app with a decided privacy access state."];
  }

  v5 = [(VSAppSettingsViewModel *)self workspace];
  v6 = [(VSAppSettingsViewModel *)self bundleID];
  v7 = [v5 openApplicationWithBundleID:v6];

  if (v7)
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Did open application.", v9, 2u);
    }
  }

  else
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(VSAppSettingsViewModel *)v8 launchApp];
    }
  }
}

- (BOOL)canChangePrivacyAccess
{
  v3 = [(VSAppSettingsViewModel *)self restrictionsCenter];
  if ([v3 isAcountModificationAllowed])
  {
    v4 = [(VSAppSettingsViewModel *)self bundle];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)keyPathsForValuesAffectingAccessGranted
{
  if (keyPathsForValuesAffectingAccessGranted___vs_lazy_init_predicate != -1)
  {
    +[VSAppSettingsViewModel keyPathsForValuesAffectingAccessGranted];
  }

  v3 = keyPathsForValuesAffectingAccessGranted___vs_lazy_init_variable;

  return v3;
}

uint64_t __65__VSAppSettingsViewModel_keyPathsForValuesAffectingAccessGranted__block_invoke()
{
  keyPathsForValuesAffectingAccessGranted___vs_lazy_init_variable = __65__VSAppSettingsViewModel_keyPathsForValuesAffectingAccessGranted__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __65__VSAppSettingsViewModel_keyPathsForValuesAffectingAccessGranted__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObject:@"privacyState"];
  v1 = [v0 copy];

  return v1;
}

- (void)setAccessGranted:(BOOL)a3
{
  if (a3)
  {
    [(VSAppSettingsViewModel *)self _grantPrivacyAccess];
  }

  else
  {
    [(VSAppSettingsViewModel *)self _denyPrivacyAccess];
  }
}

- (void)_grantPrivacyAccess
{
  v3 = [(VSAppSettingsViewModel *)self installState];
  v4 = MEMORY[0x277CBE660];
  if (v3 != 4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempt to grant privacy access to an app that is not installed."];
  }

  if ([(VSAppSettingsViewModel *)self privacyState]!= 2)
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"Attempt to grant access to an app that had not been previously denied access."];
  }

  if (![(VSAppSettingsViewModel *)self canChangePrivacyAccess])
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"Attempt to grant access to an app when access cannot be changed."];
  }

  v5 = [(VSAppSettingsViewModel *)self privacyFacade];
  v6 = [(VSAppSettingsViewModel *)self bundle];
  v7 = [v6 bundleIdentifier];

  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"The [[self bundle] bundleIdentifier] parameter must not be nil."];
  }

  v8 = [(VSAppSettingsViewModel *)self bundle];
  v9 = [v8 bundleIdentifier];

  [v5 setAccessGranted:1 forBundleID:v9];

  [(VSAppSettingsViewModel *)self setPrivacyState:1];
}

- (void)_denyPrivacyAccess
{
  v3 = [(VSAppSettingsViewModel *)self installState];
  v4 = MEMORY[0x277CBE660];
  if (v3 != 4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempt to deny privacy access to an app that is not installed."];
  }

  if ([(VSAppSettingsViewModel *)self privacyState]!= 1)
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"Attempt to deny access to an app that had not been previously granted access."];
  }

  if (![(VSAppSettingsViewModel *)self canChangePrivacyAccess])
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"Attempt to deny access to an app when access cannot be changed."];
  }

  v5 = [(VSAppSettingsViewModel *)self privacyFacade];
  v6 = [(VSAppSettingsViewModel *)self bundle];
  v7 = [v6 bundleIdentifier];

  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"The [[self bundle] bundleIdentifier] parameter must not be nil."];
  }

  v8 = [(VSAppSettingsViewModel *)self bundle];
  v9 = [v8 bundleIdentifier];

  [v5 setAccessGranted:0 forBundleID:v9];

  [(VSAppSettingsViewModel *)self setPrivacyState:2];
}

- (void)applicationsWillInstall:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        v10 = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          VSPerformBlockOnMainThread();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidInstall:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * v8) bundleIdentifier];
        v10 = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          v13 = MEMORY[0x277D85DD0];
          v14 = 3221225472;
          v15 = __49__VSAppSettingsViewModel_applicationsDidInstall___block_invoke;
          v16 = &unk_279E19848;
          v17 = v9;
          VSPerformBlockOnMainThread();
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __49__VSAppSettingsViewModel_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:*(a1 + 32)];
  [*(a1 + 40) setBundle:v4];
  v2 = VSIconForBundleWithIdentifier(*(a1 + 32));
  [*(a1 + 40) setIcon:v2];
  v3 = *(a1 + 32);
  setDisplayNameIfAvailable(*(a1 + 40));
  [*(a1 + 40) setInstallState:4];
}

- (void)applicationsDidFailToInstall:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        v10 = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          VSPerformBlockOnMainThread();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)applicationsWillUninstall:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        v10 = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          VSPerformBlockOnMainThread();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        v10 = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          VSPerformBlockOnMainThread();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __51__VSAppSettingsViewModel_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInstallState:2];
  v2 = *(a1 + 32);

  return [v2 setBundle:0];
}

- (void)applicationsDidFailToUninstall:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        v10 = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          VSPerformBlockOnMainThread();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  v5 = [(VSAppSettingsViewModel *)self adamID];
  v6 = [v4 stringWithFormat:@"%@ = %@", @"adamID", v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(VSAppSettingsViewModel *)self bundleID];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"bundleID", v8];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(VSAppSettingsViewModel *)self displayName];
  v12 = [v10 stringWithFormat:@"%@ = %@", @"displayName", v11];
  [v3 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  v14 = [(VSAppSettingsViewModel *)self voucher];
  v15 = [v13 stringWithFormat:@"%@ = %@", @"voucher", v14];
  [v3 addObject:v15];

  v16 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = VSAppSettingsViewModel;
  v17 = [(VSAppSettingsViewModel *)&v21 description];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v16 stringWithFormat:@"<%@ %@>", v17, v18];

  return v19;
}

- (id)appBundleIDs
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(VSAppSettingsViewModel *)self bundleID];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)appAdamIDs
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(VSAppSettingsViewModel *)self adamID];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end