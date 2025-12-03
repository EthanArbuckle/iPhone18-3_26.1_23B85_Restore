@interface VSAppSettingsViewModel
+ (id)keyPathsForValuesAffectingAccessGranted;
- (BOOL)canChangePrivacyAccess;
- (BOOL)canRevokeVoucher;
- (NSString)description;
- (NSURL)appStoreURL;
- (VSAppSettingsViewModel)init;
- (VSAppSettingsViewModel)initWithAppDescription:(id)description privacyVoucher:(id)voucher restrictionsCenter:(id)center privacyFacade:(id)facade;
- (VSAppSettingsViewModel)initWithApplicationWorkspace:(id)workspace;
- (VSAppSettingsViewModel)initWithBundle:(id)bundle restrictionsCenter:(id)center privacyFacade:(id)facade;
- (VSAppSettingsViewModel)initWithBundle:(id)bundle restrictionsCenter:(id)center privacyFacade:(id)facade adamID:(id)d;
- (id)appAdamIDs;
- (id)appBundleIDs;
- (id)iconURLForSize:(CGSize)size;
- (void)_denyPrivacyAccess;
- (void)_grantPrivacyAccess;
- (void)_updatePrivacyState;
- (void)applicationsDidFailToInstall:(id)install;
- (void)applicationsDidFailToUninstall:(id)uninstall;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillInstall:(id)install;
- (void)applicationsWillUninstall:(id)uninstall;
- (void)dealloc;
- (void)installApp;
- (void)launchApp;
- (void)revokeVoucher;
- (void)setAccessGranted:(BOOL)granted;
@end

@implementation VSAppSettingsViewModel

- (VSAppSettingsViewModel)initWithApplicationWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  v20.receiver = self;
  v20.super_class = VSAppSettingsViewModel;
  v6 = [(VSAppSettingsViewModel *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workspace, workspace);
    displayName = v7->_displayName;
    v7->_displayName = &stru_2880B8BB0;

    bundleID = v7->_bundleID;
    v7->_bundleID = &stru_2880B8BB0;

    buyParams = v7->_buyParams;
    v7->_buyParams = &stru_2880B8BB0;

    v11 = objc_alloc_init(MEMORY[0x277CE2298]);
    voucher = v7->_voucher;
    v7->_voucher = v11;

    [workspaceCopy addObserver:v7];
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
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4 = [(VSAppSettingsViewModel *)self initWithApplicationWorkspace:defaultWorkspace];

  return v4;
}

- (VSAppSettingsViewModel)initWithBundle:(id)bundle restrictionsCenter:(id)center privacyFacade:(id)facade adamID:(id)d
{
  dCopy = d;
  v12 = [(VSAppSettingsViewModel *)self initWithBundle:bundle restrictionsCenter:center privacyFacade:facade];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_adamID, d);
  }

  return v13;
}

- (VSAppSettingsViewModel)initWithBundle:(id)bundle restrictionsCenter:(id)center privacyFacade:(id)facade
{
  bundleCopy = bundle;
  centerCopy = center;
  facadeCopy = facade;
  if (bundleCopy)
  {
    if (centerCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The restrictionsCenter parameter must not be nil."];
    if (facadeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The bundle parameter must not be nil."];
  if (!centerCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (facadeCopy)
  {
    goto LABEL_4;
  }

LABEL_15:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The privacyFacade parameter must not be nil."];
LABEL_4:
  v12 = [(VSAppSettingsViewModel *)self init];
  if (v12)
  {
    bundleIdentifier = [bundleCopy bundleIdentifier];

    if (!bundleIdentifier)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [bundle bundleIdentifier] parameter must not be nil."];
    }

    bundleIdentifier2 = [bundleCopy bundleIdentifier];
    commonInit_0(v12, centerCopy, facadeCopy, bundleIdentifier2);
    objc_storeStrong(&v12->_bundle, bundle);
    v12->_installState = 4;
    v12->_decided = 1;
    v15 = VSIconForBundleWithIdentifier(bundleIdentifier2);
    icon = v12->_icon;
    v12->_icon = v15;

    knownAppBundles = [facadeCopy knownAppBundles];
    v18 = [knownAppBundles containsObject:bundleCopy];

    if (v18)
    {
      v19 = [facadeCopy isAccessGrantedForBundleID:bundleIdentifier2];
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
    iTunesMetadata = [v21 iTunesMetadata];
    artistName = [iTunesMetadata artistName];
    artistName = v12->_artistName;
    v12->_artistName = artistName;
  }

  return v12;
}

- (VSAppSettingsViewModel)initWithAppDescription:(id)description privacyVoucher:(id)voucher restrictionsCenter:(id)center privacyFacade:(id)facade
{
  descriptionCopy = description;
  voucherCopy = voucher;
  centerCopy = center;
  facadeCopy = facade;
  if (descriptionCopy)
  {
    if (centerCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The restrictionsCenter parameter must not be nil."];
    if (facadeCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The appDescription parameter must not be nil."];
  if (!centerCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (facadeCopy)
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
    objc_storeStrong(&v15->_appDescription, description);
    v17 = [objc_alloc(MEMORY[0x277CE2298]) initWithObject:voucherCopy];
    voucher = v16->_voucher;
    v16->_voucher = v17;

    icon = [descriptionCopy icon];
    icon = v16->_icon;
    v16->_icon = icon;

    sellerName = [descriptionCopy sellerName];
    v22 = [sellerName copy];
    storeName = v16->_storeName;
    v16->_storeName = v22;

    shortenedDisplayName = [descriptionCopy shortenedDisplayName];
    v25 = [shortenedDisplayName copy];
    displayName = v16->_displayName;
    v16->_displayName = v25;

    adamID = [descriptionCopy adamID];
    stringValue = [adamID stringValue];
    v29 = [stringValue copy];
    adamID = v16->_adamID;
    v16->_adamID = v29;

    bundleID = [descriptionCopy bundleID];
    v32 = bundleID;
    if (bundleID && [bundleID length])
    {
      v33 = v32;
      commonInit_0(v16, centerCopy, facadeCopy, v33);
      workspace = [(VSAppSettingsViewModel *)v16 workspace];
      v35 = [workspace applicationIsInstalled:v33];

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
        buyParams = [descriptionCopy buyParams];
        bundle = buyParams;
        if (buyParams && [(NSBundle *)buyParams length])
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
  privacyFacade = [(VSAppSettingsViewModel *)self privacyFacade];
  bundle = [(VSAppSettingsViewModel *)self bundle];
  if (bundle)
  {
    knownAppBundles = [privacyFacade knownAppBundles];
    v5 = [knownAppBundles containsObject:bundle];

    if (v5)
    {
      bundleIdentifier = [bundle bundleIdentifier];

      if (!bundleIdentifier)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [bundle bundleIdentifier] parameter must not be nil."];
      }

      bundleIdentifier2 = [bundle bundleIdentifier];
      v8 = [privacyFacade isAccessGrantedForBundleID:bundleIdentifier2];

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
  appDescription = [(VSAppSettingsViewModel *)self appDescription];
  appStoreURL = [appDescription appStoreURL];

  return appStoreURL;
}

- (id)iconURLForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  appDescription = [(VSAppSettingsViewModel *)self appDescription];
  v6 = [appDescription iconURLForSize:{width, height}];

  return v6;
}

- (BOOL)canRevokeVoucher
{
  voucher = [(VSAppSettingsViewModel *)self voucher];
  object = [voucher object];

  return object != 0;
}

- (void)revokeVoucher
{
  privacyFacade = [(VSAppSettingsViewModel *)self privacyFacade];
  voucherLockbox = [privacyFacade voucherLockbox];

  voucher = [(VSAppSettingsViewModel *)self voucher];
  forceUnwrapObject = [voucher forceUnwrapObject];
  [voucherLockbox redeemVoucher:forceUnwrapObject];
}

- (void)installApp
{
  buyParams = [(VSAppSettingsViewModel *)self buyParams];
  if (![buyParams length])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempt to install an app without buy params."];
  }

  installState = [(VSAppSettingsViewModel *)self installState];
  if (installState <= 5 && ((0x3Bu >> installState) & 1) != 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:off_279E19B00[installState]];
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
  installState = [(VSAppSettingsViewModel *)self installState];
  v4 = MEMORY[0x277CBE660];
  if (installState != 4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempt to launch app that is not installed."];
  }

  if ([(VSAppSettingsViewModel *)self privacyState])
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"Attempt to launch app with a decided privacy access state."];
  }

  workspace = [(VSAppSettingsViewModel *)self workspace];
  bundleID = [(VSAppSettingsViewModel *)self bundleID];
  v7 = [workspace openApplicationWithBundleID:bundleID];

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
  restrictionsCenter = [(VSAppSettingsViewModel *)self restrictionsCenter];
  if ([restrictionsCenter isAcountModificationAllowed])
  {
    bundle = [(VSAppSettingsViewModel *)self bundle];
    v5 = bundle != 0;
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

- (void)setAccessGranted:(BOOL)granted
{
  if (granted)
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
  installState = [(VSAppSettingsViewModel *)self installState];
  v4 = MEMORY[0x277CBE660];
  if (installState != 4)
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

  privacyFacade = [(VSAppSettingsViewModel *)self privacyFacade];
  bundle = [(VSAppSettingsViewModel *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"The [[self bundle] bundleIdentifier] parameter must not be nil."];
  }

  bundle2 = [(VSAppSettingsViewModel *)self bundle];
  bundleIdentifier2 = [bundle2 bundleIdentifier];

  [privacyFacade setAccessGranted:1 forBundleID:bundleIdentifier2];

  [(VSAppSettingsViewModel *)self setPrivacyState:1];
}

- (void)_denyPrivacyAccess
{
  installState = [(VSAppSettingsViewModel *)self installState];
  v4 = MEMORY[0x277CBE660];
  if (installState != 4)
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

  privacyFacade = [(VSAppSettingsViewModel *)self privacyFacade];
  bundle = [(VSAppSettingsViewModel *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    [MEMORY[0x277CBEAD8] raise:*v4 format:@"The [[self bundle] bundleIdentifier] parameter must not be nil."];
  }

  bundle2 = [(VSAppSettingsViewModel *)self bundle];
  bundleIdentifier2 = [bundle2 bundleIdentifier];

  [privacyFacade setAccessGranted:0 forBundleID:bundleIdentifier2];

  [(VSAppSettingsViewModel *)self setPrivacyState:2];
}

- (void)applicationsWillInstall:(id)install
{
  v18 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        bundleID = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [bundleIdentifier isEqual:bundleID];

        if (v11)
        {
          VSPerformBlockOnMainThread();
        }
      }

      v6 = [installCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidInstall:(id)install
{
  v23 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v18 + 1) + 8 * v8) bundleIdentifier];
        bundleID = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [bundleIdentifier isEqual:bundleID];

        if (v11)
        {
          v13 = MEMORY[0x277D85DD0];
          v14 = 3221225472;
          v15 = __49__VSAppSettingsViewModel_applicationsDidInstall___block_invoke;
          v16 = &unk_279E19848;
          v17 = bundleIdentifier;
          VSPerformBlockOnMainThread();
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [installCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)applicationsDidFailToInstall:(id)install
{
  v18 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        bundleID = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [bundleIdentifier isEqual:bundleID];

        if (v11)
        {
          VSPerformBlockOnMainThread();
        }
      }

      v6 = [installCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)applicationsWillUninstall:(id)uninstall
{
  v18 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        bundleID = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [bundleIdentifier isEqual:bundleID];

        if (v11)
        {
          VSPerformBlockOnMainThread();
        }
      }

      v6 = [uninstallCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v18 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        bundleID = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [bundleIdentifier isEqual:bundleID];

        if (v11)
        {
          VSPerformBlockOnMainThread();
        }
      }

      v6 = [uninstallCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)applicationsDidFailToUninstall:(id)uninstall
{
  v18 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(uninstallCopy);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        bundleID = [(VSAppSettingsViewModel *)self bundleID];
        v11 = [bundleIdentifier isEqual:bundleID];

        if (v11)
        {
          VSPerformBlockOnMainThread();
        }
      }

      v6 = [uninstallCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  adamID = [(VSAppSettingsViewModel *)self adamID];
  v6 = [v4 stringWithFormat:@"%@ = %@", @"adamID", adamID];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  bundleID = [(VSAppSettingsViewModel *)self bundleID];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"bundleID", bundleID];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  displayName = [(VSAppSettingsViewModel *)self displayName];
  v12 = [v10 stringWithFormat:@"%@ = %@", @"displayName", displayName];
  [v3 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  voucher = [(VSAppSettingsViewModel *)self voucher];
  v15 = [v13 stringWithFormat:@"%@ = %@", @"voucher", voucher];
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
  bundleID = [(VSAppSettingsViewModel *)self bundleID];
  v6[0] = bundleID;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)appAdamIDs
{
  v6[1] = *MEMORY[0x277D85DE8];
  adamID = [(VSAppSettingsViewModel *)self adamID];
  v6[0] = adamID;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end