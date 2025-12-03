@interface PUIFileAccessController
- (PUIFileAccessController)init;
- (id)applicationProxiesDictionary;
- (id)bundleIdentifiersAccessingFiles;
- (id)cameraAccessForSpecifier:(id)specifier;
- (id)specifiers;
- (void)provideNavigationDonations;
- (void)setAccess:(id)access forSpecifier:(id)specifier;
- (void)setCameraAccess:(id)access forSpecifier:(id)specifier;
@end

@implementation PUIFileAccessController

- (PUIFileAccessController)init
{
  v9.receiver = self;
  v9.super_class = PUIFileAccessController;
  v2 = [(PUIFileAccessController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(PUIFileAccessController *)v2 setReusesCells:1];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = getFPAccessControlManagerClass_softClass;
    v14 = getFPAccessControlManagerClass_softClass;
    if (!getFPAccessControlManagerClass_softClass)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getFPAccessControlManagerClass_block_invoke;
      v10[3] = &unk_279BA0D08;
      v10[4] = &v11;
      __getFPAccessControlManagerClass_block_invoke(v10);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    v6 = objc_alloc_init(v4);
    accessManager = v3->_accessManager;
    v3->_accessManager = v6;
  }

  return v3;
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"FILEACCESS" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/FILEACCESS"];
  [(PUIFileAccessController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)applicationProxiesDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CC1EC0] enumeratorForApplicationProxiesWithOptions:0];
  nextObject = [v3 nextObject];
  if (nextObject)
  {
    v5 = nextObject;
    do
    {
      bundleIdentifier = [v5 bundleIdentifier];
      lowercaseString = [bundleIdentifier lowercaseString];
      [dictionary setObject:v5 forKey:lowercaseString];

      nextObject2 = [v3 nextObject];

      v5 = nextObject2;
    }

    while (nextObject2);
  }

  return dictionary;
}

- (id)bundleIdentifiersAccessingFiles
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v3 = dispatch_semaphore_create(0);
  accessManager = [(PUIFileAccessController *)self accessManager];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __58__PUIFileAccessController_bundleIdentifiersAccessingFiles__block_invoke;
  v12 = &unk_279BA1A20;
  v14 = &v15;
  v5 = v3;
  v13 = v5;
  [accessManager bundleIdentifiersWithAccessToAnyItemCompletionHandler:&v9];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.PrivacySettingsUI.FileAccessStateChanged" object:0];

  v7 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __58__PUIFileAccessController_bundleIdentifiersAccessingFiles__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)specifiers
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v54 = *MEMORY[0x277D3FC48];
    applicationProxiesDictionary = [(PUIFileAccessController *)self applicationProxiesDictionary];
    v5 = MEMORY[0x277CBEB98];
    [(PUIFileAccessController *)self bundleIdentifiersAccessingFiles];
    v6 = v61 = self;
    v7 = [v5 setWithArray:v6];

    v8 = MEMORY[0x277CBEB98];
    bundleIdentifiersAccessingExternalMediaDevices = [MEMORY[0x277CD2C38] bundleIdentifiersAccessingExternalMediaDevices];
    v52 = [v8 setWithArray:bundleIdentifiersAccessingExternalMediaDevices];

    v10 = objc_opt_new();
    v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v11 setIdentifier:@"FILE_APP_GROUP"];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"FILEACCESS_FOOTER" value:&stru_28771E540 table:@"Privacy"];
    [v11 setProperty:v13 forKey:*MEMORY[0x277D3FF88]];

    v14 = v61;
    v72 = v10;
    v53 = v11;
    [v10 addObject:v11];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v7;
    v15 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
    v70 = applicationProxiesDictionary;
    if (v15)
    {
      v16 = v15;
      v17 = *v78;
      v59 = *MEMORY[0x277CBEC40];
      v57 = *MEMORY[0x277CBED50];
      v66 = *MEMORY[0x277D40008];
      v64 = *MEMORY[0x277CBED28];
      v62 = *MEMORY[0x277D40020];
      v68 = *v78;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v78 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v77 + 1) + 8 * i);
          lowercaseString = [v19 lowercaseString];
          if (([lowercaseString isEqualToString:@"com.apple.documentsapp"] & 1) == 0)
          {
            v21 = [applicationProxiesDictionary objectForKey:lowercaseString];
            v22 = v21;
            if (v21)
            {
              bundleIdentifier = [v21 bundleIdentifier];
              v24 = [v22 localizedNameForContext:0];
              if (![v24 length])
              {
                BundleWithIdentifier = CFBundleGetBundleWithIdentifier(bundleIdentifier);
                v26 = CFBundleGetInfoDictionary(BundleWithIdentifier);
                stringByDeletingPathExtension = [v26 objectForKeyedSubscript:v59];

                if (![stringByDeletingPathExtension length])
                {
                  v28 = [v26 objectForKeyedSubscript:v57];

                  if ([v28 length])
                  {
                    stringByDeletingPathExtension = v28;
                  }

                  else
                  {
                    v55 = CFBundleCopyBundleURL(BundleWithIdentifier);
                    lastPathComponent = [(__CFURL *)v55 lastPathComponent];
                    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
                  }
                }

                v24 = stringByDeletingPathExtension;
                v14 = v61;
                applicationProxiesDictionary = v70;
              }

              v30 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v24 target:v14 set:sel_setAccess_forSpecifier_ get:sel_accesssForSpecifier_ detail:0 cell:6 edit:0];
              [v30 setIdentifier:v19];
              [v30 setProperty:bundleIdentifier forKey:v66];
              [v30 setProperty:v64 forKey:v62];
              [v72 addObject:v30];

              v17 = v68;
            }
          }
        }

        v16 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
      }

      while (v16);
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v31 = v52;
    v32 = [v31 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v74;
      v60 = *MEMORY[0x277CBEC40];
      v58 = *MEMORY[0x277CBED50];
      v69 = *MEMORY[0x277D40008];
      v67 = *MEMORY[0x277CBED28];
      v63 = v31;
      v65 = *MEMORY[0x277D40020];
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v74 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v73 + 1) + 8 * j);
          if (([v36 isEqualToString:@"com.apple.MobileSlideShow"] & 1) == 0)
          {
            lowercaseString2 = [v36 lowercaseString];
            v38 = [applicationProxiesDictionary objectForKey:lowercaseString2];
            v39 = v38;
            if (v38)
            {
              bundleIdentifier2 = [v38 bundleIdentifier];
              v41 = [v39 localizedNameForContext:0];
              if (![v41 length])
              {
                v42 = CFBundleGetBundleWithIdentifier(bundleIdentifier2);
                v43 = CFBundleGetInfoDictionary(v42);
                stringByDeletingPathExtension2 = [v43 objectForKeyedSubscript:v60];

                if (![stringByDeletingPathExtension2 length])
                {
                  v45 = [v43 objectForKeyedSubscript:v58];

                  if ([v45 length])
                  {
                    stringByDeletingPathExtension2 = v45;
                  }

                  else
                  {
                    v56 = CFBundleCopyBundleURL(v42);
                    lastPathComponent2 = [(__CFURL *)v56 lastPathComponent];
                    stringByDeletingPathExtension2 = [lastPathComponent2 stringByDeletingPathExtension];
                  }
                }

                v31 = v63;

                v41 = stringByDeletingPathExtension2;
                v14 = v61;
              }

              v47 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v41 target:v14 set:sel_setCameraAccess_forSpecifier_ get:sel_cameraAccessForSpecifier_ detail:0 cell:6 edit:0];
              [v47 setIdentifier:bundleIdentifier2];
              [v47 setProperty:bundleIdentifier2 forKey:v69];
              [v47 setProperty:v67 forKey:v65];
              [v72 addObject:v47];

              applicationProxiesDictionary = v70;
            }
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v33);
    }

    [v72 sortUsingComparator:&__block_literal_global_8];
    v48 = [v72 copy];
    v49 = *(&v14->super.super.super.super.super.isa + v54);
    *(&v14->super.super.super.super.super.isa + v54) = v48;

    v3 = *(&v14->super.super.super.super.super.isa + v54);
  }

  v50 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __37__PUIFileAccessController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)setAccess:(id)access forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (([access BOOLValue] & 1) == 0)
  {
    accessManager = [(PUIFileAccessController *)self accessManager];
    identifier = [specifierCopy identifier];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__PUIFileAccessController_setAccess_forSpecifier___block_invoke;
    v9[3] = &unk_279BA0C90;
    v9[4] = self;
    [accessManager revokeAccessToAllItemsForBundle:identifier completionHandler:v9];
  }
}

void __50__PUIFileAccessController_setAccess_forSpecifier___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PUIFileAccessController_setAccess_forSpecifier___block_invoke_2;
  block[3] = &unk_279BA0B28;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)setCameraAccess:(id)access forSpecifier:(id)specifier
{
  v6 = MEMORY[0x277CD2C38];
  accessCopy = access;
  identifier = [specifier identifier];
  bOOLValue = [accessCopy BOOLValue];

  [v6 updateBundleIdentifierAccessingExternalMediaDevices:identifier withStatus:bOOLValue];

  [(PUIFileAccessController *)self reloadSpecifiers];
}

- (id)cameraAccessForSpecifier:(id)specifier
{
  v21 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  [MEMORY[0x277CD2C38] bundleIdentifiersAccessingExternalMediaDevicesWithStatus];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"bundle_id", v16}];
        identifier = [specifierCopy identifier];
        v12 = [v10 isEqualToString:identifier];

        if (v12)
        {
          v13 = [v9 objectForKeyedSubscript:@"whitelisted"];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:0];
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end