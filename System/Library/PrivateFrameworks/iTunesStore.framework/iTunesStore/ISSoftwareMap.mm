@interface ISSoftwareMap
+ (BOOL)currentMapIsValid;
+ (BOOL)haveApplicationsOfType:(id)a3;
+ (id)_newSoftwareUpdateDictionaryForApplication:(id)a3;
+ (id)applicationForBundleIdentifier:(id)a3 applicationType:(id)a4;
+ (id)applicationForPluginBundleIdentifier:(id)a3 extensionType:(id)a4;
+ (id)containerPathForApp:(id)a3 homeDirectory:(id)a4 systemMetadataDirectory:(id)a5;
+ (id)copySoftwareUpdatesPropertyListWithApplications:(id)a3 updatesContext:(id)a4;
+ (id)currentMap;
+ (id)loadedMap;
+ (void)_startWatchingInstallationNotifications;
+ (void)enumerateApplicationsForProxies:(id)a3 usingBlock:(id)a4;
+ (void)enumerateApplicationsOfType:(unint64_t)a3 usingBlock:(id)a4;
+ (void)invalidateCurrentMap;
+ (void)removableSystemApplicationsWithCompletionBlock:(id)a3;
+ (void)setCurrentMap:(id)a3;
- (ISSoftwareMap)init;
- (NSArray)applications;
- (id)applicationForBundleIdentifier:(id)a3;
- (id)applicationForItemIdentifier:(id)a3;
- (id)copySoftwareUpdatesPropertyListWithUpdatesContext:(id)a3;
- (void)_loadFromMobileInstallation;
- (void)dealloc;
@end

@implementation ISSoftwareMap

- (ISSoftwareMap)init
{
  __ISRecordSPIClassUsage(self);
  [objc_opt_class() startObservingNotifications];
  v5.receiver = self;
  v5.super_class = ISSoftwareMap;
  v3 = [(ISSoftwareMap *)&v5 init];
  if (v3)
  {
    v3->_applications = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(ISSoftwareMap *)v3 _loadFromMobileInstallation];
  }

  return v3;
}

- (void)dealloc
{
  self->_applications = 0;
  v3.receiver = self;
  v3.super_class = ISSoftwareMap;
  [(ISSoftwareMap *)&v3 dealloc];
}

+ (BOOL)haveApplicationsOfType:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (SSIsDaemon())
  {
    if ([a3 isEqualToString:*MEMORY[0x277CC1E30]])
    {
      v4 = 1;
    }

    else if ([a3 isEqualToString:*MEMORY[0x277CC1E08]])
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v14 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __40__ISSoftwareMap_haveApplicationsOfType___block_invoke;
    v20[3] = &unk_27A6711F8;
    v20[4] = &v21;
    [v14 enumerateApplicationsOfType:v4 block:v20];
  }

  else
  {
    if (SSIsInternalBuild() && _os_feature_enabled_impl())
    {
      v5 = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v6 = [v5 shouldLog];
      v7 = [v5 shouldLogToDisk];
      v8 = [v5 OSLogObject];
      if (v7)
      {
        v6 |= 2u;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = v6;
      }

      else
      {
        v9 = v6 & 2;
      }

      if (v9)
      {
        v25 = 136446210;
        v26 = "+[ISSoftwareMap haveApplicationsOfType:]";
        LODWORD(v18) = 12;
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          v11 = v10;
          [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, &v25, v18}];
          free(v11);
          SSFileLog();
        }
      }
    }

    v12 = SSXPCCreateMessageDictionary();
    SSXPCDictionarySetCFObject();
    v13 = dispatch_semaphore_create(0);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__ISSoftwareMap_haveApplicationsOfType___block_invoke_21;
    v19[3] = &unk_27A671220;
    v19[4] = v13;
    v19[5] = &v21;
    __ISSoftwareMapXPC(v12, v19);
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v13);
    xpc_release(v12);
  }

  v15 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __40__ISSoftwareMap_haveApplicationsOfType___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

intptr_t __40__ISSoftwareMap_haveApplicationsOfType___block_invoke_21(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x277C8C570](a2) == MEMORY[0x277D86468])
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "0");
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

+ (id)currentMap
{
  pthread_mutex_lock(&__CurrentMapLock);
  v2 = __CurrentMap;
  pthread_mutex_unlock(&__CurrentMapLock);
  return v2;
}

+ (BOOL)currentMapIsValid
{
  pthread_mutex_lock(&__CurrentMapLock);
  v2 = __CurrentMapIsValid;
  pthread_mutex_unlock(&__CurrentMapLock);
  return v2;
}

+ (void)invalidateCurrentMap
{
  pthread_mutex_lock(&__CurrentMapLock);
  __CurrentMapIsValid = 0;
  pthread_mutex_unlock(&__CurrentMapLock);
  v2 = [MEMORY[0x277CCAB98] defaultCenter];

  [v2 postNotificationName:@"ISSoftwareMapInvalidatedNotification" object:0];
}

+ (id)loadedMap
{
  pthread_mutex_lock(&__CurrentMapLock);
  v2 = __CurrentMap;
  if (!__CurrentMap || (__CurrentMapIsValid & 1) == 0)
  {

    v2 = objc_alloc_init(ISSoftwareMap);
    __CurrentMap = v2;
    __CurrentMapIsValid = 1;
  }

  v3 = v2;
  pthread_mutex_unlock(&__CurrentMapLock);
  return v3;
}

+ (void)setCurrentMap:(id)a3
{
  pthread_mutex_lock(&__CurrentMapLock);
  if (__CurrentMap != a3)
  {

    a3 = a3;
    __CurrentMap = a3;
  }

  __CurrentMapIsValid = a3 != 0;

  pthread_mutex_unlock(&__CurrentMapLock);
}

+ (id)applicationForBundleIdentifier:(id)a3 applicationType:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__9;
  v28 = __Block_byref_object_dispose__9;
  v29 = 0;
  [objc_opt_class() startObservingNotifications];
  v7 = [a1 currentMap];
  if (v7 && [a1 currentMapIsValid] && objc_msgSend(a4, "isEqualToString:", *MEMORY[0x277CC1E40]))
  {
    v8 = [v7 applicationForBundleIdentifier:a3];
LABEL_8:
    v25[5] = v8;
    goto LABEL_22;
  }

  if (SSIsDaemon())
  {
    v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a3];
    if ([objc_msgSend(v9 "bundleType")])
    {
      v8 = [[ISSoftwareApplication alloc] initWithLaunchServicesApplication:v9];
      goto LABEL_8;
    }
  }

  else
  {
    if (SSIsInternalBuild() && _os_feature_enabled_impl())
    {
      v10 = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
      if (!v10)
      {
        v10 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v11 = [v10 shouldLog];
      v12 = [v10 shouldLogToDisk];
      v13 = [v10 OSLogObject];
      if (v12)
      {
        v11 |= 2u;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = v11;
      }

      else
      {
        v14 = v11 & 2;
      }

      if (v14)
      {
        v30 = 136446210;
        v31 = "+[ISSoftwareMap applicationForBundleIdentifier:applicationType:]";
        LODWORD(v22) = 12;
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          v16 = v15;
          [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v30, v22}];
          free(v16);
          SSFileLog();
        }
      }
    }

    v17 = SSXPCCreateMessageDictionary();
    SSXPCDictionarySetCFObject();
    SSXPCDictionarySetCFObject();
    v18 = dispatch_semaphore_create(0);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__ISSoftwareMap_applicationForBundleIdentifier_applicationType___block_invoke;
    v23[3] = &unk_27A671220;
    v23[4] = v18;
    v23[5] = &v24;
    __ISSoftwareMapXPC(v17, v23);
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v18);
    xpc_release(v17);
  }

LABEL_22:
  v19 = v25[5];
  _Block_object_dispose(&v24, 8);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

intptr_t __64__ISSoftwareMap_applicationForBundleIdentifier_applicationType___block_invoke(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x277C8C570](a2) == MEMORY[0x277D86468])
  {
    *(*(*(a1 + 40) + 8) + 40) = [[ISSoftwareApplication alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "0")];
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

+ (id)applicationForPluginBundleIdentifier:(id)a3 extensionType:(id)a4
{
  if (SSIsDaemon() && ((v6 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:a3], v7 = v6, !a4) || objc_msgSend(objc_msgSend(v6, "protocol"), "isEqualToString:", a4)) && (objc_msgSend(v7, "containingBundle"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8 = objc_msgSend(objc_msgSend(v7, "containingBundle"), "bundleType"), objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277CC1E40])))
  {
    v9 = -[ISSoftwareApplication initWithLaunchServicesApplication:]([ISSoftwareApplication alloc], "initWithLaunchServicesApplication:", [v7 containingBundle]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)applicationForBundleIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  applications = self->_applications;
  result = [(NSArray *)applications countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(applications);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([objc_msgSend(v9 "bundleIdentifier")])
        {
          result = v9;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)applications countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)applicationForItemIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  applications = self->_applications;
  result = [(NSArray *)applications countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(applications);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([objc_msgSend(v9 "itemIdentifier")])
        {
          result = v9;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)applications countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSArray)applications
{
  v2 = self->_applications;

  return v2;
}

- (id)copySoftwareUpdatesPropertyListWithUpdatesContext:(id)a3
{
  v5 = objc_opt_class();
  applications = self->_applications;

  return [v5 copySoftwareUpdatesPropertyListWithApplications:applications updatesContext:a3];
}

+ (id)containerPathForApp:(id)a3 homeDirectory:(id)a4 systemMetadataDirectory:(id)a5
{
  v8 = [a3 bundleContainerURL];
  if (v8 && (v9 = v8, ![v8 isEqual:a4]))
  {

    return [v9 path];
  }

  else
  {
    v10 = [a3 bundleIdentifier];

    return [a5 stringByAppendingPathComponent:v10];
  }
}

+ (id)copySoftwareUpdatesPropertyListWithApplications:(id)a3 updatesContext:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  if (![a3 count])
  {
    v12 = 0;
    goto LABEL_35;
  }

  v7 = [a3 mutableCopy];
  v8 = [a4 softwareTypes];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 containsObject:*MEMORY[0x277D6A5E0]] ^ 1;
    v11 = [v9 containsObject:*MEMORY[0x277D6A5E8]] ^ 1;
    if (v10)
    {
LABEL_8:
      v13 = [v7 count];
      if (v13 - 1 >= 0)
      {
        v14 = v13;
        v15 = *MEMORY[0x277D6A0F0];
        while (1)
        {
          v16 = [objc_msgSend(v7 objectAtIndex:{--v14), "softwareType"}];
          if (![v16 isEqualToString:v15])
          {
            break;
          }

          if (v10)
          {
            goto LABEL_12;
          }

LABEL_13:
          if (v14 <= 0)
          {
            goto LABEL_20;
          }
        }

        if (v16)
        {
          if ([v9 containsObject:v16])
          {
            goto LABEL_13;
          }
        }

        else if ((v11 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_12:
        [v7 removeObjectAtIndex:v14];
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (v11)
  {
    goto LABEL_8;
  }

LABEL_20:
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v7);
        }

        v22 = *(*(&v26 + 1) + 8 * i);
        if (([v22 isPlaceholder] & 1) == 0)
        {
          v23 = [a1 _newSoftwareUpdateDictionaryForApplication:v22];
          if ([v23 count])
          {
            [v17 addObject:v23];
          }
        }
      }

      v19 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

  if ([v17 count])
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:v17 forKey:@"local-software"];
  }

  else
  {
    v12 = 0;
  }

LABEL_35:
  v24 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (void)enumerateApplicationsForProxies:(id)a3 usingBlock:(id)a4
{
  v24[4] = *MEMORY[0x277D85DE8];
  v5 = CPSharedResourcesDirectory();
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v24[0] = v5;
    v24[1] = @"Library";
    v24[2] = @"com.apple.itunesstored";
    v24[3] = @"iTunesMetadata";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    v5 = [MEMORY[0x277CCACA8] pathWithComponents:v7];
  }

  else
  {
    v6 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:{16, a3}];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obja);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = -[ISSoftwareApplication initWithLaunchServicesApplication:containerPath:]([ISSoftwareApplication alloc], "initWithLaunchServicesApplication:containerPath:", v12, [a1 containerPathForApp:v12 homeDirectory:v6 systemMetadataDirectory:v5]);
        if ([(ISSoftwareApplication *)v14 bundleIdentifier])
        {
          (*(a4 + 2))(a4, v14);
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obja countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)enumerateApplicationsOfType:(unint64_t)a3 usingBlock:(id)a4
{
  v13[4] = *MEMORY[0x277D85DE8];
  v7 = CPSharedResourcesDirectory();
  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
    v13[0] = v7;
    v13[1] = @"Library";
    v13[2] = @"com.apple.itunesstored";
    v13[3] = @"iTunesMetadata";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
    v7 = [MEMORY[0x277CCACA8] pathWithComponents:v9];
  }

  else
  {
    v8 = 0;
  }

  v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ISSoftwareMap_enumerateApplicationsOfType_usingBlock___block_invoke;
  v12[3] = &unk_27A671248;
  v12[4] = a1;
  v12[5] = v8;
  v12[6] = v7;
  v12[7] = a4;
  [v10 enumerateApplicationsOfType:a3 block:v12];
  v11 = *MEMORY[0x277D85DE8];
}

void __56__ISSoftwareMap_enumerateApplicationsOfType_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = -[ISSoftwareApplication initWithLaunchServicesApplication:containerPath:]([ISSoftwareApplication alloc], "initWithLaunchServicesApplication:containerPath:", a2, [*(a1 + 32) containerPathForApp:a2 homeDirectory:*(a1 + 40) systemMetadataDirectory:*(a1 + 48)]);
    if ([(ISSoftwareApplication *)v5 bundleIdentifier])
    {
      (*(*(a1 + 56) + 16))();
    }

    objc_autoreleasePoolPop(v4);
  }
}

+ (void)removableSystemApplicationsWithCompletionBlock:(id)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = objc_alloc_init(RemovableSoftwareLookupTable);
  if (SSIsDaemon())
  {
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__ISSoftwareMap_removableSystemApplicationsWithCompletionBlock___block_invoke;
    v7[3] = &unk_27A671270;
    v7[4] = v5;
    v7[5] = v4;
    [v6 enumerateApplicationsOfType:1 block:v7];
  }

  if (a3)
  {
    (*(a3 + 2))(a3, [v4 copy]);
  }
}

void __64__ISSoftwareMap_removableSystemApplicationsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_autoreleasePoolPush();
    if ([objc_msgSend(a2 "applicationType")] && objc_msgSend(a2, "isDeletable"))
    {
      v5 = [[ISSoftwareApplication alloc] initWithLaunchServicesApplication:a2];
      if (![(ISSoftwareApplication *)v5 itemIdentifier])
      {
        v6 = [*(a1 + 32) itemIdentifierForBundleIdentifer:{-[ISSoftwareApplication bundleIdentifier](v5, "bundleIdentifier")}];
        if (v6)
        {
          [(ISSoftwareApplication *)v5 setItemIdentifier:v6];
        }
      }

      if ([(ISSoftwareApplication *)v5 bundleIdentifier])
      {
        [*(a1 + 40) addObject:v5];
      }
    }

    objc_autoreleasePoolPop(v4);
  }
}

+ (id)_newSoftwareUpdateDictionaryForApplication:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [a3 itemIdentifier];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"adam-id"];
  }

  v6 = [a3 versionIdentifier];
  if (v6)
  {
    [v4 setObject:v6 forKey:@"installed-version-identifier"];
  }

  return v4;
}

+ (void)_startWatchingInstallationNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, __SoftwareMappingChangedNotification, @"com.apple.itunesstored.invalidatedSoftwareMap", 0, CFNotificationSuspensionBehaviorCoalesce);
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, a1, __SoftwareMappingChangedNotification, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorCoalesce);

  CFNotificationCenterAddObserver(DistributedCenter, a1, __SoftwareMappingChangedNotification, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)_loadFromMobileInstallation
{
  v22 = *MEMORY[0x277D85DE8];
  if (SSIsDaemon())
  {
    v3 = objc_alloc_init(RemovableSoftwareLookupTable);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_opt_class();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__ISSoftwareMap__loadFromMobileInstallation__block_invoke;
    v19[3] = &unk_27A671298;
    v19[4] = v4;
    [v5 enumerateApplicationsOfType:0 usingBlock:v19];
    v6 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __44__ISSoftwareMap__loadFromMobileInstallation__block_invoke_2;
    v18[3] = &unk_27A6712C0;
    v18[4] = v3;
    v18[5] = v4;
    [v6 enumerateApplicationsOfType:1 usingBlock:v18];

    self->_applications = v4;
  }

  else
  {
    if (SSIsInternalBuild() && _os_feature_enabled_impl())
    {
      v7 = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
      if (!v7)
      {
        v7 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v8 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v9 = v8 | 2;
      }

      else
      {
        v9 = v8;
      }

      if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_FAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 2;
      }

      if (v10)
      {
        v20 = 136446210;
        v21 = "[ISSoftwareMap _loadFromMobileInstallation]";
        LODWORD(v16) = 12;
        v11 = _os_log_send_and_compose_impl();
        if (v11)
        {
          v12 = v11;
          [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v20, v16}];
          free(v12);
          SSFileLog();
        }
      }
    }

    v13 = SSXPCCreateMessageDictionary();
    v14 = dispatch_semaphore_create(0);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__ISSoftwareMap__loadFromMobileInstallation__block_invoke_61;
    v17[3] = &unk_27A6712E8;
    v17[4] = self;
    v17[5] = v14;
    __ISSoftwareMapXPC(v13, v17);
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v14);
    xpc_release(v13);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __44__ISSoftwareMap__loadFromMobileInstallation__block_invoke_2(uint64_t a1, void *a2)
{
  if (![a2 itemIdentifier])
  {
    v4 = [*(a1 + 32) itemIdentifierForBundleIdentifer:{objc_msgSend(a2, "bundleIdentifier")}];
    if (v4)
    {
      [a2 setItemIdentifier:v4];
    }
  }

  v5 = [a2 removableStatus];
  result = [a2 itemIdentifier];
  if (result && (v5 & 4) == 0)
  {
    v7 = *(a1 + 40);

    return [v7 addObject:a2];
  }

  return result;
}

intptr_t __44__ISSoftwareMap__loadFromMobileInstallation__block_invoke_61(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x277C8C570](a2) == MEMORY[0x277D86468])
  {
    xpc_dictionary_get_value(a2, "0");
    objc_opt_class();
    *(*(a1 + 32) + 8) = SSXPCCreateNSArrayFromXPCEncodedArray();
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

@end