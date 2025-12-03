@interface REMPaths
+ (BOOL)_legacy_shouldUseCentralizedDataPath;
+ (id)URLForGroupContainerWithIdentifier:(id)identifier;
+ (id)attributesForGroupContainerDirectory;
+ (id)createTemporaryFileDirectoryURLIfNeededWithError:(id *)error;
+ (id)dataSeparationEnabled_applicationDocumentsURL;
+ (id)legacy_applicationDocumentsURL;
+ (id)legacy_centralizedDataPath;
+ (void)unitTest_setLegacyApplicationDocumentsURL:(id)l;
@end

@implementation REMPaths

+ (id)createTemporaryFileDirectoryURLIfNeededWithError:(id *)error
{
  if (rem_feature_enabled(@"Reminders", @"dataSeparation"))
  {
    [self dataSeparationEnabled_applicationDocumentsURL];
  }

  else
  {
    [self legacy_applicationDocumentsURL];
  }
  v5 = ;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:error];

  return v7;
}

+ (id)legacy_centralizedDataPath
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library"];
  v3 = [v2 URLByAppendingPathComponent:@"Reminders/"];

  return v3;
}

+ (id)legacy_applicationDocumentsURL
{
  if (onceToken != -1)
  {
    +[REMPaths legacy_applicationDocumentsURL];
  }

  v3 = legacy_applicationDocumentsURL;
  if (!legacy_applicationDocumentsURL)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__REMPaths_legacy_applicationDocumentsURL__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_sync(creationQueue, block);
    v3 = legacy_applicationDocumentsURL;
  }

  return v3;
}

void __42__REMPaths_legacy_applicationDocumentsURL__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("REMPathsCreateApplicationDocumentsURLs", v2);
  v1 = creationQueue;
  creationQueue = v0;
}

void __42__REMPaths_legacy_applicationDocumentsURL__block_invoke_2(uint64_t a1)
{
  if (!legacy_applicationDocumentsURL)
  {
    v2 = [*(a1 + 32) _legacy_shouldUseCentralizedDataPath];
    v3 = *(a1 + 32);
    if (v2)
    {
      [v3 legacy_centralizedDataPath];
    }

    else
    {
      [v3 URLForGroupContainerWithIdentifier:@"group.com.apple.reminders"];
    }
    v4 = ;
    v5 = legacy_applicationDocumentsURL;
    legacy_applicationDocumentsURL = v4;

    if (!legacy_applicationDocumentsURL)
    {
      legacy_applicationDocumentsURL = [*(a1 + 32) legacy_centralizedDataPath];

      MEMORY[0x1EEE66BB8]();
    }
  }
}

+ (id)dataSeparationEnabled_applicationDocumentsURL
{
  if (onceToken != -1)
  {
    +[REMPaths dataSeparationEnabled_applicationDocumentsURL];
  }

  v3 = dataSeparationEnabled_applicationDocumentsURL;
  if (!dataSeparationEnabled_applicationDocumentsURL)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__REMPaths_dataSeparationEnabled_applicationDocumentsURL__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_sync(creationQueue, block);
    v3 = dataSeparationEnabled_applicationDocumentsURL;
  }

  return v3;
}

void __57__REMPaths_dataSeparationEnabled_applicationDocumentsURL__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("REMPathsCreateApplicationDocumentsURLs", v2);
  v1 = creationQueue;
  creationQueue = v0;
}

void __57__REMPaths_dataSeparationEnabled_applicationDocumentsURL__block_invoke_2(uint64_t a1)
{
  if (!dataSeparationEnabled_applicationDocumentsURL)
  {
    v2 = [*(a1 + 32) URLForGroupContainerWithIdentifier:@"group.com.apple.reminders"];
    v3 = dataSeparationEnabled_applicationDocumentsURL;
    dataSeparationEnabled_applicationDocumentsURL = v2;

    if (!dataSeparationEnabled_applicationDocumentsURL)
    {
      dataSeparationEnabled_applicationDocumentsURL = [*(a1 + 32) legacy_applicationDocumentsURL];

      MEMORY[0x1EEE66BB8]();
    }
  }
}

+ (id)URLForGroupContainerWithIdentifier:(id)identifier
{
  v48 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v5 = getUMUserManagerClass_softClass_0;
  v44 = getUMUserManagerClass_softClass_0;
  if (!getUMUserManagerClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getUMUserManagerClass_block_invoke_0;
    v46 = &unk_1E75093A0;
    v47 = &v41;
    __getUMUserManagerClass_block_invoke_0(buf);
    v5 = v42[3];
  }

  v6 = v5;
  _Block_object_dispose(&v41, 8);
  sharedManager = [v5 sharedManager];
  currentPersona = [sharedManager currentPersona];
  v9 = [currentPersona isProxy];
  v40 = 0;
  v36 = [currentPersona copyCurrentPersonaContextWithError:&v40];
  v10 = v40;
  v11 = v10;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  if (v12 == 1)
  {
    v13 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, v13, OS_LOG_TYPE_INFO, "URLForGroupContainer: Temporarily adopting personal persona context instead of system proxy", buf, 2u);
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v14 = getUMUserPersonaAttributesClass_softClass_0;
    v44 = getUMUserPersonaAttributesClass_softClass_0;
    if (!getUMUserPersonaAttributesClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getUMUserPersonaAttributesClass_block_invoke_0;
      v46 = &unk_1E75093A0;
      v47 = &v41;
      __getUMUserPersonaAttributesClass_block_invoke_0(buf);
      v14 = v42[3];
    }

    v15 = v14;
    _Block_object_dispose(&v41, 8);
    v16 = [v14 personaAttributesForPersonaType:0];
    userPersonaUniqueString = [v16 userPersonaUniqueString];
    v18 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:userPersonaUniqueString];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    v16 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(REMPaths *)v11 URLForGroupContainerWithIdentifier:v16];
    }
  }

LABEL_16:
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v20 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:identifierCopy];

  if (!v20)
  {
    v21 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, v21, OS_LOG_TYPE_INFO, "URLForGroupContainer: NSFileManager failed to return our group container, falling back to bundle proxy", buf, 2u);
    }

    v22 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:@"com.apple.reminders"];
    groupContainerURLs = [v22 groupContainerURLs];
    v20 = [groupContainerURLs objectForKey:identifierCopy];
  }

  if (v12)
  {
    v24 = [currentPersona restorePersonaWithSavedPersonaContext:v37];
  }

  if (v20)
  {
    v39 = 0;
    v25 = [v20 checkResourceIsReachableAndReturnError:&v39];
    v26 = v39;
    if ((v25 & 1) == 0)
    {
      v27 = os_log_create("com.apple.reminderkit", "default");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = identifierCopy;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&dword_19A0DB000, v27, OS_LOG_TYPE_DEFAULT, "URLForGroupContainer: %@ group container URL is not reachable. URL=%@", buf, 0x16u);
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      attributesForGroupContainerDirectory = [self attributesForGroupContainerDirectory];
      v38 = 0;
      v30 = [defaultManager2 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:attributesForGroupContainerDirectory error:&v38];
      v31 = v38;

      if ((v30 & 1) == 0)
      {
        v32 = os_log_create("com.apple.reminderkit", "default");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [(REMPaths *)identifierCopy URLForGroupContainerWithIdentifier:v31, v32];
        }
      }
    }
  }

  else
  {
    v26 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(REMPaths *)identifierCopy URLForGroupContainerWithIdentifier:v26];
    }
  }

  v33 = os_log_create("com.apple.reminderkit", "default");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_impl(&dword_19A0DB000, v33, OS_LOG_TYPE_INFO, "URLForGroupContainer: Group container URL: %@", buf, 0xCu);
  }

  v34 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (BOOL)_legacy_shouldUseCentralizedDataPath
{
  if (_legacy_shouldUseCentralizedDataPath_onceToken != -1)
  {
    +[REMPaths _legacy_shouldUseCentralizedDataPath];
  }

  return _legacy_shouldUseCentralizedDataPath_sResult;
}

void __48__REMPaths__legacy_shouldUseCentralizedDataPath__block_invoke()
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v2 processName];
  if ([v0 isEqual:@"remindd"] & 1) != 0 || (objc_msgSend(v0, "isEqualToString:", @"xctest"))
  {
    v1 = 1;
  }

  else
  {
    v1 = [v0 isEqualToString:@"remindtool"];
  }

  _legacy_shouldUseCentralizedDataPath_sResult = v1;
}

+ (id)attributesForGroupContainerDirectory
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E696A370];
  v6[0] = &unk_1F0D99B38;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (void)unitTest_setLegacyApplicationDocumentsURL:(id)l
{
  lCopy = l;
  if (onceToken != -1)
  {
    +[REMPaths(UnitTests) unitTest_setLegacyApplicationDocumentsURL:];
  }

  v4 = creationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__REMPaths_UnitTests__unitTest_setLegacyApplicationDocumentsURL___block_invoke_2;
  block[3] = &unk_1E7508028;
  v7 = lCopy;
  v5 = lCopy;
  dispatch_sync(v4, block);
}

void __65__REMPaths_UnitTests__unitTest_setLegacyApplicationDocumentsURL___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("REMPathsCreateApplicationDocumentsURLs", v2);
  v1 = creationQueue;
  creationQueue = v0;
}

+ (void)URLForGroupContainerWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "URLForGroupContainer: Error saving persona context {error: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)URLForGroupContainerWithIdentifier:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_19A0DB000, log, OS_LOG_TYPE_ERROR, "URLForGroupContainer: Error creating %@ group container: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)URLForGroupContainerWithIdentifier:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "URLForGroupContainer: Failed to get group container URL (maybe simulator) for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end