@interface NSString(BRCPathAdditions)
+ (__CFString)brc_applicationBundleIDForExtension:()BRCPathAdditions;
+ (__CFString)brc_applicationContainerIDForExtension:()BRCPathAdditions;
+ (id)_brc_fileProviderStoragePath;
+ (id)br_currentMobileDocumentsDirWithRefreshCache:()BRCPathAdditions;
+ (id)brc_groupDownloadStagePath;
+ (id)brc_locateUbiquityTokenSaltInOldAccountPath:()BRCPathAdditions;
@end

@implementation NSString(BRCPathAdditions)

+ (id)brc_locateUbiquityTokenSaltInOldAccountPath:()BRCPathAdditions
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_25;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager contentsOfDirectoryAtPath:v3 error:0];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v39 count:16];
  v9 = v6;
  if (!v7)
  {
    goto LABEL_20;
  }

  v10 = v7;
  v11 = 0;
  v12 = *v30;
  *&v8 = 138412546;
  v28 = v8;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v29 + 1) + 8 * i);
      v37 = 0;
      v38 = 0;
      brc_stringByDeletingPathExtension = [v14 brc_stringByDeletingPathExtension];
      v16 = _br_parseUUIDString();

      if (v16)
      {
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = v28;
          v34 = v14;
          v35 = 2112;
          v36 = v17;
          _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Located ubiquity salt path by the duck test - %@%@", buf, 0x16u);
        }

        v19 = [v3 stringByAppendingPathComponent:v14];

        v11 = v19;
      }
    }

    v10 = [v6 countByEnumeratingWithState:&v29 objects:v39 count:16];
  }

  while (v10);

  if (!v11)
  {
    goto LABEL_21;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = [defaultManager2 fileExistsAtPath:v11];

  if ((v21 & 1) == 0)
  {
    v9 = [v3 stringByAppendingPathComponent:@"UnknownHost.txt"];

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = [defaultManager3 fileExistsAtPath:v9];

    if (v23)
    {
      if (v9)
      {
        goto LABEL_24;
      }

LABEL_21:
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v34 = v3;
        v35 = 2112;
        v36 = v24;
        _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't locate ubiquity salt path in %@%@", buf, 0x16u);
      }

      v9 = 0;
      goto LABEL_24;
    }

LABEL_20:

    goto LABEL_21;
  }

  v9 = v11;
LABEL_24:

LABEL_25:
  v26 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)br_currentMobileDocumentsDirWithRefreshCache:()BRCPathAdditions
{
  v37 = *MEMORY[0x277D85DE8];
  if (br_currentMobileDocumentsDirWithRefreshCache__once != -1)
  {
    +[NSString(BRCPathAdditions) br_currentMobileDocumentsDirWithRefreshCache:];
  }

  v5 = br_currentMobileDocumentsDirWithRefreshCache__pathByPersonaID;
  objc_sync_enter(v5);
  v33 = 0;
  v6 = [self br_currentPersonaIDWithIsDataSeparated:&v33];
  if (a3)
  {
    [br_currentMobileDocumentsDirWithRefreshCache__pathByPersonaID removeObjectForKey:v6];
  }

  v7 = [br_currentMobileDocumentsDirWithRefreshCache__pathByPersonaID objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    br_getProviderDomainIDForCurrentPersona = [MEMORY[0x277CFAE58] br_getProviderDomainIDForCurrentPersona];
    if (br_getProviderDomainIDForCurrentPersona)
    {
      v32 = 0;
      v10 = [MEMORY[0x277CC6420] providerDomainWithID:br_getProviderDomainIDForCurrentPersona cachePolicy:0 error:&v32];
      v11 = v32;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      *&buf[4] = br_getProviderDomainIDForCurrentPersona;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v35 = v6;
      LOWORD(v36) = 2112;
      *(&v36 + 2) = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Getting root item for provider domain ID: %@. Found domain: %@. Current persona: %@%@", buf, 0x2Au);
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__22;
    *&v36 = __Block_byref_object_dispose__22;
    *(&v36 + 1) = 0;
    storageURLs = [v10 storageURLs];
    v15 = [storageURLs count] == 0;

    if (v15)
    {
      v21 = dispatch_group_create();
      dispatch_group_enter(v21);
      defaultManager = [MEMORY[0x277CC6408] defaultManager];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __75__NSString_BRCPathAdditions__br_currentMobileDocumentsDirWithRefreshCache___block_invoke_15;
      v29[3] = &unk_278502C98;
      v31 = buf;
      v19 = v21;
      v30 = v19;
      [defaultManager fetchRootItemForProviderDomain:v10 completionHandler:v29];

      dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      v20 = v30;
    }

    else
    {
      storageURLs2 = [v10 storageURLs];
      v17 = [storageURLs2 objectAtIndexedSubscript:0];
      v18 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v17;

      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(NSString(BRCPathAdditions) *)&buf[8] br_currentMobileDocumentsDirWithRefreshCache:v19, v20];
      }
    }

    v23 = *(*&buf[8] + 40);
    if (v23)
    {
      path = [v23 path];
    }

    else
    {
      path = 0;
    }

    _Block_object_dispose(buf, 8);

    if (path)
    {
      br_realpath = [path br_realpath];
      [br_currentMobileDocumentsDirWithRefreshCache__pathByPersonaID setObject:br_realpath forKeyedSubscript:v6];
    }

    else
    {
LABEL_22:
      br_realpath = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = br_realpath;
        _os_log_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] No path for Mobile Documents directory%@", buf, 0xCu);
      }

      path = 0;
    }

    v8 = path;
  }

  objc_sync_exit(v5);
  v27 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_brc_fileProviderStoragePath
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.iCloudDrive"];
  path = [v1 path];
  v3 = [path stringByAppendingPathComponent:@"File Provider Storage"];

  return v3;
}

+ (id)brc_groupDownloadStagePath
{
  _brc_fileProviderStoragePath = [MEMORY[0x277CCACA8] _brc_fileProviderStoragePath];
  v1 = [_brc_fileProviderStoragePath stringByAppendingPathComponent:@"DownloadStage"];

  return v1;
}

+ (__CFString)brc_applicationBundleIDForExtension:()BRCPathAdditions
{
  v3 = a3;
  lowercaseString = [v3 lowercaseString];
  v5 = [lowercaseString isEqualToString:@"pages"];

  if (v5)
  {
    v6 = @"com.apple.Pages";
    goto LABEL_7;
  }

  lowercaseString2 = [v3 lowercaseString];
  if ([lowercaseString2 isEqualToString:@"keynote"])
  {

LABEL_6:
    v6 = @"com.apple.Keynote";
    goto LABEL_7;
  }

  lowercaseString3 = [v3 lowercaseString];
  v9 = [lowercaseString3 isEqualToString:@"key"];

  if (v9)
  {
    goto LABEL_6;
  }

  lowercaseString4 = [v3 lowercaseString];
  v12 = [lowercaseString4 isEqualToString:@"numbers"];

  if (v12)
  {
    v6 = @"com.apple.Numbers";
  }

  else
  {
    v6 = *MEMORY[0x277CFAD68];
  }

LABEL_7:

  return v6;
}

+ (__CFString)brc_applicationContainerIDForExtension:()BRCPathAdditions
{
  v3 = a3;
  lowercaseString = [v3 lowercaseString];
  v5 = [lowercaseString isEqualToString:@"pages"];

  if (v5)
  {
    v6 = @"com.apple.Pages";
    goto LABEL_10;
  }

  lowercaseString2 = [v3 lowercaseString];
  if ([lowercaseString2 isEqualToString:@"keynote"])
  {

LABEL_6:
    v6 = @"com.apple.Keynote";
    goto LABEL_10;
  }

  lowercaseString3 = [v3 lowercaseString];
  v9 = [lowercaseString3 isEqualToString:@"key"];

  if (v9)
  {
    goto LABEL_6;
  }

  lowercaseString4 = [v3 lowercaseString];
  v11 = [lowercaseString4 isEqualToString:@"numbers"];

  if (v11)
  {
    v6 = @"com.apple.Numbers";
  }

  else
  {
    v6 = 0;
  }

LABEL_10:

  return v6;
}

+ (void)br_currentMobileDocumentsDirWithRefreshCache:()BRCPathAdditions .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Getting root URL from storage URLs: %@%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end