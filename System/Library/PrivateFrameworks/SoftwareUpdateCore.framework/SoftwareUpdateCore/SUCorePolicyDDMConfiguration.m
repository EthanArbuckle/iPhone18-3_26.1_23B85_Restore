@interface SUCorePolicyDDMConfiguration
+ (id)declarationFromAllDeclarationDicts:(id)a3;
+ (id)declarationFromAllDeclarations:(id)a3;
+ (id)getDaemonCacheDirectory;
+ (id)sharedInstance;
+ (id)statePersistencePath;
+ (void)getDaemonCacheDirectory;
- (BOOL)addDeclaration:(id)a3 returningError:(id *)a4;
- (BOOL)addGlobalSettingsDeclaration:(id)a3 returningError:(id *)a4;
- (BOOL)hasManagedConfigurations;
- (BOOL)invalidateDeclarationForKey:(id)a3;
- (BOOL)removeDeclarationForKey:(id)a3;
- (BOOL)setActiveDeclarationKey:(id)a3;
- (SUCorePolicyDDMConfiguration)initWithStatePersistencePath:(id)a3;
- (id)_dateFromString:(id)a3;
- (id)_getActiveDeclarationKey;
- (id)activeDeclarationKey;
- (id)allDeclarations;
- (id)allDeclarationsIncludingInvalid;
- (id)allKeys;
- (id)currentGlobalSettingsDeclaration;
- (id)currentlyApplicableDeclaration;
- (id)declarationForKey:(id)a3;
- (id)description;
- (id)invalidateAllInvalidDeclarationsReturningAllInvalid;
- (void)_getDeclarations:(id *)a3 invalid:(id *)a4;
- (void)_persistActiveDeclarationKey:(id)a3;
- (void)_persistInvalidDeclarations:(id)a3;
- (void)_persistState;
- (void)_persistValidDeclarations:(id)a3;
- (void)removeAllDeclarations;
- (void)removeGlobalSettingsDeclaration;
@end

@implementation SUCorePolicyDDMConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SUCorePolicyDDMConfiguration sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __46__SUCorePolicyDDMConfiguration_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = [[SUCorePolicyDDMConfiguration alloc] initWithState];

  return MEMORY[0x2821F96F8]();
}

- (SUCorePolicyDDMConfiguration)initWithStatePersistencePath:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SUCorePolicyDDMConfiguration;
  v5 = [(SUCorePolicyDDMConfiguration *)&v25 init];
  v6 = v5;
  if (v5)
  {
    v5->_allowInvalidDeclaration = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.su.ddm.stateQueue", v7);
    stateQueue = v6->_stateQueue;
    v6->_stateQueue = v8;

    if (!v4)
    {
      v4 = [objc_opt_class() statePersistencePath];
      if (!v4)
      {
        v10 = +[SUCoreDDMUtilities sharedLogger];
        v11 = [v10 oslog];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(SUCorePolicyDDMConfiguration *)v11 initWithStatePersistencePath:v12, v13, v14, v15, v16, v17, v18];
        }

        v4 = @"/tmp/SoftwareUpdateDDMStatePersistence.plist";
      }
    }

    v19 = [objc_alloc(MEMORY[0x277D64478]) initWithDispatchQueue:v6->_stateQueue withPersistencePath:v4 forPolicyVersion:@"1.0"];
    persistedState = v6->_persistedState;
    v6->_persistedState = v19;

    dispatch_assert_queue_not_V2(v6->_stateQueue);
    v21 = v6->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUCorePolicyDDMConfiguration_initWithStatePersistencePath___block_invoke;
    block[3] = &unk_27892C8A8;
    v24 = v6;
    dispatch_sync(v21, block);
  }

  return v6;
}

void __61__SUCorePolicyDDMConfiguration_initWithStatePersistencePath___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 16) loadPersistedState])
  {
    v1 = +[SUCoreDDMUtilities sharedLogger];
    v2 = [v1 oslog];

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SUCorePolicyDDMConfiguration initWithStatePersistencePath:]_block_invoke";
      _os_log_impl(&dword_23193C000, v2, OS_LOG_TYPE_DEFAULT, "%s: Loaded persisted state", &v6, 0xCu);
    }
  }

  else
  {
    v3 = +[SUCoreDDMUtilities sharedLogger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__SUCorePolicyDDMConfiguration_initWithStatePersistencePath___block_invoke_cold_1();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)statePersistencePath
{
  v2 = [objc_opt_class() getDaemonCacheDirectory];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@"com.apple.su.ddm.plist"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)getDaemonCacheDirectory
{
  v30 = *MEMORY[0x277D85DE8];
  bzero(__s, 0x400uLL);
  if (confstr(65538, __s, 0x400uLL) >= 1)
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v2 stringWithFileSystemRepresentation:__s length:strlen(__s)];

    v4 = [v3 stringByAppendingPathComponent:@"SUCorePolicyDDMConfiguration"];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if ((v6 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), v26 = 0, objc_msgSend(v7, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v4, 0, 0, &v26), v8 = v26, v7, !v8))
    {
      v11 = v4;
    }

    else
    {
      v9 = +[SUCoreDDMUtilities sharedLogger];
      v10 = [v9 oslog];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[SUCorePolicyDDMConfiguration getDaemonCacheDirectory];
      }

      v11 = 0;
    }

    goto LABEL_20;
  }

  v12 = +[SUCoreDDMUtilities sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[SUCorePolicyDDMConfiguration getDaemonCacheDirectory];
  }

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v14 temporaryDirectory];

  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [v3 path];
  v17 = [v15 fileExistsAtPath:v16];

  if (v17)
  {
LABEL_19:
    v11 = [v3 path];
    goto LABEL_20;
  }

  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [v3 path];
  v25 = 0;
  [v18 createDirectoryAtPath:v19 withIntermediateDirectories:0 attributes:0 error:&v25];
  v20 = v25;

  v21 = +[SUCoreDDMUtilities sharedLogger];
  v22 = [v21 oslog];

  if (!v20)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "+[SUCorePolicyDDMConfiguration getDaemonCacheDirectory]";
      _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, "%s: Created tmp directory", buf, 0xCu);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    +[SUCorePolicyDDMConfiguration getDaemonCacheDirectory];
  }

  v11 = 0;
LABEL_20:

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)hasManagedConfigurations
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = v2->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SUCorePolicyDDMConfiguration_hasManagedConfigurations__block_invoke;
  v5[3] = &unk_27892C880;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __56__SUCorePolicyDDMConfiguration_hasManagedConfigurations__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v13 = 0;
  v14 = 0;
  [v2 _getDeclarations:&v14 invalid:&v13];
  v3 = v14;
  v4 = v13;
  v5 = [*(a1 + 32) persistedState];
  v6 = [v5 dictionaryForKey:@"SUCoreDDMDeclarationGlobalSettings"];

  v7 = +[SUCoreDDMUtilities sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 count];
    v10 = [v4 count];
    *buf = 136315906;
    v16 = "[SUCorePolicyDDMConfiguration hasManagedConfigurations]_block_invoke";
    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    v21 = 2048;
    v22 = v6;
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%s: valid.count = %lu, invalid.count = %lu, globalSettings = %p", buf, 0x2Au);
  }

  if ([v3 count])
  {
    v11 = 1;
  }

  else
  {
    v11 = ([v4 count] | v6) != 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v11;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_getDeclarations:(id *)a3 invalid:(id *)a4
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (a3)
  {
    v7 = [(SUCorePolicyDDMConfiguration *)self persistedState];
    v8 = [v7 dictionaryForKey:@"Declarations"];

    v9 = [v8 mutableCopy];
    if (!v9)
    {
      v9 = objc_opt_new();
    }

    v10 = v9;
    *a3 = v10;
  }

  if (a4)
  {
    v11 = [(SUCorePolicyDDMConfiguration *)self persistedState];
    v14 = [v11 dictionaryForKey:@"invalidDeclarations"];

    v12 = [v14 mutableCopy];
    if (!v12)
    {
      v12 = objc_opt_new();
    }

    v13 = v12;
    *a4 = v13;
  }
}

- (void)_persistValidDeclarations:(id)a3
{
  stateQueue = self->_stateQueue;
  v5 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v6 = [(SUCorePolicyDDMConfiguration *)self persistedState];
  [v6 persistDictionary:v5 forKey:@"Declarations" shouldPersist:0];
}

- (void)_persistInvalidDeclarations:(id)a3
{
  stateQueue = self->_stateQueue;
  v5 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v6 = [(SUCorePolicyDDMConfiguration *)self persistedState];
  [v6 persistDictionary:v5 forKey:@"invalidDeclarations" shouldPersist:0];
}

- (void)_persistActiveDeclarationKey:(id)a3
{
  stateQueue = self->_stateQueue;
  v5 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v6 = [(SUCorePolicyDDMConfiguration *)self persistedState];
  [v6 persistString:v5 forKey:@"activeDeclarationKey" shouldPersist:0];
}

- (void)_persistState
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = [(SUCorePolicyDDMConfiguration *)self persistedState];
  [v3 persistState];
}

- (id)_getActiveDeclarationKey
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = [(SUCorePolicyDDMConfiguration *)self persistedState];
  v4 = [v3 stringForKey:@"activeDeclarationKey"];

  return v4;
}

- (id)activeDeclarationKey
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SUCorePolicyDDMConfiguration_activeDeclarationKey__block_invoke;
  v6[3] = &unk_27892C8D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __52__SUCorePolicyDDMConfiguration_activeDeclarationKey__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getActiveDeclarationKey];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)setActiveDeclarationKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUCorePolicyDDMConfiguration_setActiveDeclarationKey___block_invoke;
  block[3] = &unk_27892D520;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(stateQueue, block);
  LOBYTE(v4) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v4;
}

void __56__SUCorePolicyDDMConfiguration_setActiveDeclarationKey___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v14 = 0;
  [v2 _getDeclarations:&v14 invalid:0];
  v3 = v14;
  v4 = (a1 + 40);
  v5 = *(a1 + 40);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v6 = [v3 safeObjectForKey:v5 ofClass:objc_opt_class()];

  if (v6)
  {
    v7 = *v4;
LABEL_5:
    [*(a1 + 32) _persistActiveDeclarationKey:v7];
    [*(a1 + 32) _persistState];
    v8 = +[SUCoreDDMUtilities sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v4;
      *buf = 136315394;
      v16 = "[SUCorePolicyDDMConfiguration setActiveDeclarationKey:]_block_invoke";
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "%s: Successfully set %{public}@ as active", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_11;
  }

  v11 = +[SUCoreDDMUtilities sharedLogger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __56__SUCorePolicyDDMConfiguration_setActiveDeclarationKey___block_invoke_cold_1(v4);
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)addDeclaration:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SUCorePolicyDDMConfiguration_addDeclaration_returningError___block_invoke;
  v11[3] = &unk_27892DD98;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = &v16;
  v15 = &v22;
  dispatch_sync(stateQueue, v11);
  v9 = *(v23 + 24);
  if (a4 && (v23[3] & 1) == 0)
  {
    *a4 = v17[5];
    v9 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9 & 1;
}

void __62__SUCorePolicyDDMConfiguration_addDeclaration_returningError___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [[SUCoreDDMDeclaration alloc] initWithDeclarationKeys:*(a1 + 32)];
  v3 = [MEMORY[0x277D64418] sharedDevice];
  if ([v3 isInternal])
  {
    v4 = *(*(a1 + 40) + 8);

    if (v4 == 1)
    {
      v5 = +[SUCoreDDMUtilities sharedLogger];
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v26 = "[SUCorePolicyDDMConfiguration addDeclaration:returningError:]_block_invoke";
        _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "%s: [INTERNAL] _allowInvalidDeclaration is set to YES!!! Allow invalid declarations", buf, 0xCu);
      }

      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v24 = 0;
  v8 = [(SUCoreDDMDeclaration *)v2 isValidDeclarationWithReason:&v24];
  v7 = v24;
  if (!v8)
  {
    v9 = [MEMORY[0x277D643F8] sharedCore];
    v16 = [v9 buildError:9100 underlying:0 description:v7];
    v17 = *(*(a1 + 48) + 8);
    v11 = *(v17 + 40);
    *(v17 + 40) = v16;
    goto LABEL_18;
  }

LABEL_8:
  v9 = [(SUCoreDDMDeclaration *)v2 declarationKey];
  v10 = *(a1 + 40);
  v22 = 0;
  v23 = 0;
  [v10 _getDeclarations:&v23 invalid:&v22];
  v11 = v23;
  v12 = v22;
  v13 = [v11 objectForKey:v9];

  if (v13)
  {
    v14 = +[SUCoreDDMUtilities sharedLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __62__SUCorePolicyDDMConfiguration_addDeclaration_returningError___block_invoke_cold_1();
    }
  }

  else
  {
    v18 = [v12 objectForKey:v9];

    if (v18)
    {
      v19 = +[SUCoreDDMUtilities sharedLogger];
      v15 = [v19 oslog];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __62__SUCorePolicyDDMConfiguration_addDeclaration_returningError___block_invoke_cold_2();
      }
    }

    else
    {
      [v11 setSafeObject:*(a1 + 32) forKey:v9];
      [*(a1 + 40) _persistValidDeclarations:v11];
      [*(a1 + 40) _persistState];
      v20 = +[SUCoreDDMUtilities sharedLogger];
      v15 = [v20 oslog];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "[SUCorePolicyDDMConfiguration addDeclaration:returningError:]_block_invoke";
        v27 = 2114;
        v28 = v2;
        _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "%s: Adding %{public}@", buf, 0x16u);
      }
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
}

- (id)declarationForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUCorePolicyDDMConfiguration_declarationForKey___block_invoke;
  block[3] = &unk_27892D520;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(stateQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__SUCorePolicyDDMConfiguration_declarationForKey___block_invoke(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v18 = 0;
  v19 = 0;
  [v2 _getDeclarations:&v19 invalid:&v18];
  v3 = v19;
  v4 = v18;
  v5 = a1 + 5;
  v6 = [v3 safeObjectForKey:a1[5] ofClass:objc_opt_class()];
  if (v6)
  {
    v7 = v6;
    v8 = @"a valid";
LABEL_5:
    v10 = [[SUCoreDDMDeclaration alloc] initWithDeclarationKeys:v7];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = +[SUCoreDDMUtilities sharedLogger];
    v14 = [v13 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *v5;
      *buf = 136315650;
      v21 = "[SUCorePolicyDDMConfiguration declarationForKey:]_block_invoke";
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "%s: Found %{public}@ declaration for %{public}@", buf, 0x20u);
    }

    goto LABEL_8;
  }

  v9 = [v4 safeObjectForKey:*v5 ofClass:objc_opt_class()];
  if (v9)
  {
    v7 = v9;
    v8 = @"an invalid";
    goto LABEL_5;
  }

  v17 = +[SUCoreDDMUtilities sharedLogger];
  v7 = [v17 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __50__SUCorePolicyDDMConfiguration_declarationForKey___block_invoke_cold_1(v5);
  }

LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

- (id)allDeclarations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = objc_opt_new();
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SUCorePolicyDDMConfiguration_allDeclarations__block_invoke;
  v6[3] = &unk_27892C880;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__SUCorePolicyDDMConfiguration_allDeclarations__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = 0;
  [v2 _getDeclarations:&v9 invalid:0];
  v3 = v9;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SUCorePolicyDDMConfiguration_allDeclarations__block_invoke_2;
  v8[3] = &unk_27892DDC0;
  v8[4] = *(a1 + 40);
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  [*(*(*(a1 + 40) + 8) + 40) sortUsingComparator:&__block_literal_global_331];
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v4 = +[SUCoreDDMUtilities sharedLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 136315394;
      v11 = "[SUCorePolicyDDMConfiguration allDeclarations]_block_invoke";
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "%s: Sorted valid enforced-su declarations: %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __47__SUCorePolicyDDMConfiguration_allDeclarations__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[SUCoreDDMDeclaration alloc] initWithDeclarationKeys:v4];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
}

- (id)allDeclarationsIncludingInvalid
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = objc_opt_new();
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SUCorePolicyDDMConfiguration_allDeclarationsIncludingInvalid__block_invoke;
  v10[3] = &unk_27892C880;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(stateQueue, v10);
  v4 = +[SUCoreDDMUtilities sharedLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v12[5];
    *buf = 136315394;
    v18 = "[SUCorePolicyDDMConfiguration allDeclarationsIncludingInvalid]";
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "%s: All enforced-su declarations: %{public}@", buf, 0x16u);
  }

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __63__SUCorePolicyDDMConfiguration_allDeclarationsIncludingInvalid__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v8 = 0;
  [v2 _getDeclarations:&v8 invalid:&v7];
  v3 = v8;
  v4 = v7;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SUCorePolicyDDMConfiguration_allDeclarationsIncludingInvalid__block_invoke_2;
  v6[3] = &unk_27892DDC0;
  v6[4] = *(a1 + 40);
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SUCorePolicyDDMConfiguration_allDeclarationsIncludingInvalid__block_invoke_3;
  v5[3] = &unk_27892DDC0;
  v5[4] = *(a1 + 40);
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __63__SUCorePolicyDDMConfiguration_allDeclarationsIncludingInvalid__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[SUCoreDDMDeclaration alloc] initWithDeclarationKeys:v4];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
}

void __63__SUCorePolicyDDMConfiguration_allDeclarationsIncludingInvalid__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[SUCoreDDMDeclaration alloc] initWithDeclarationKeys:v4];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
}

- (BOOL)invalidateDeclarationForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    dispatch_assert_queue_not_V2(self->_stateQueue);
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SUCorePolicyDDMConfiguration_invalidateDeclarationForKey___block_invoke;
    block[3] = &unk_27892D520;
    block[4] = self;
    v11 = v4;
    v12 = &v13;
    dispatch_sync(stateQueue, block);
    v6 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = +[SUCoreDDMUtilities sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SUCorePolicyDDMConfiguration invalidateDeclarationForKey:];
    }

    v6 = 0;
  }

  return v6 & 1;
}

void __60__SUCorePolicyDDMConfiguration_invalidateDeclarationForKey___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v21 = 0;
  v22 = 0;
  [v2 _getDeclarations:&v22 invalid:&v21];
  v3 = v22;
  v4 = v21;
  v5 = (a1 + 40);
  v6 = [v3 objectForKey:*(a1 + 40)];
  v7 = [*(a1 + 32) _getActiveDeclarationKey];
  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    v9 = 0;
LABEL_9:
    v12 = [v4 objectForKey:*v5];

    v13 = +[SUCoreDDMUtilities sharedLogger];
    v14 = [v13 oslog];

    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __60__SUCorePolicyDDMConfiguration_invalidateDeclarationForKey___block_invoke_cold_2((a1 + 40));
      }

      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *v5;
        *buf = 136315394;
        v24 = "[SUCorePolicyDDMConfiguration invalidateDeclarationForKey:]_block_invoke";
        v25 = 2114;
        v26 = v20;
        _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "%s: Marking the declaration invalid for %{public}@", buf, 0x16u);
      }

      [v4 setObject:v6 forKey:*(a1 + 40)];
      [*(a1 + 32) _persistInvalidDeclarations:v4];
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    [*(a1 + 32) _persistActiveDeclarationKey:0];
LABEL_14:
    [v3 removeObjectForKey:*(a1 + 40)];
    [*(a1 + 32) _persistValidDeclarations:v3];
    [*(a1 + 32) _persistState];
LABEL_19:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_20;
  }

  v8 = [*v5 isEqualToString:v7];
  v9 = v8;
  if (v6)
  {
    goto LABEL_9;
  }

  if (v8)
  {
    v10 = +[SUCoreDDMUtilities sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __60__SUCorePolicyDDMConfiguration_invalidateDeclarationForKey___block_invoke_cold_1((a1 + 40));
    }

    [*(a1 + 32) _persistActiveDeclarationKey:0];
    [*(a1 + 32) _persistState];
  }

LABEL_15:
  v15 = [v4 objectForKey:*v5];

  v16 = +[SUCoreDDMUtilities sharedLogger];
  v17 = [v16 oslog];

  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *v5;
      *buf = 136315394;
      v24 = "[SUCorePolicyDDMConfiguration invalidateDeclarationForKey:]_block_invoke";
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_23193C000, v17, OS_LOG_TYPE_DEFAULT, "%s: The declaration is already invalid for %{public}@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __60__SUCorePolicyDDMConfiguration_invalidateDeclarationForKey___block_invoke_cold_3((a1 + 40));
  }

LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)removeAllDeclarations
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUCorePolicyDDMConfiguration_removeAllDeclarations__block_invoke;
  block[3] = &unk_27892C8A8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

uint64_t __53__SUCorePolicyDDMConfiguration_removeAllDeclarations__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEC10];
  [*(a1 + 32) _persistValidDeclarations:MEMORY[0x277CBEC10]];
  [*(a1 + 32) _persistInvalidDeclarations:v2];
  [*(a1 + 32) _persistActiveDeclarationKey:0];
  v3 = *(a1 + 32);

  return [v3 _persistState];
}

- (id)invalidateAllInvalidDeclarationsReturningAllInvalid
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = objc_opt_new();
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__SUCorePolicyDDMConfiguration_invalidateAllInvalidDeclarationsReturningAllInvalid__block_invoke;
  v6[3] = &unk_27892C880;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __83__SUCorePolicyDDMConfiguration_invalidateAllInvalidDeclarationsReturningAllInvalid__block_invoke(uint64_t a1)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v2 = *(a1 + 32);
  v17 = 0;
  v18 = 0;
  [v2 _getDeclarations:&v18 invalid:&v17];
  v3 = v18;
  v4 = v17;
  v5 = [*(a1 + 32) _getActiveDeclarationKey];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SUCorePolicyDDMConfiguration_invalidateAllInvalidDeclarationsReturningAllInvalid__block_invoke_2;
  v10[3] = &unk_27892DE08;
  v6 = v5;
  v11 = v6;
  v14 = &v19;
  v7 = v4;
  v12 = v7;
  v15 = &v23;
  v8 = v3;
  v13 = v8;
  v16 = &v27;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];
  if (*(v28 + 24) == 1)
  {
    [*(a1 + 32) _persistValidDeclarations:v8];
  }

  if (*(v24 + 24) == 1)
  {
    [*(a1 + 32) _persistInvalidDeclarations:v7];
  }

  if (*(v20 + 24) == 1)
  {
    [*(a1 + 32) _persistActiveDeclarationKey:0];
  }

  if ((v28[3] & 1) != 0 || (v24[3] & 1) != 0 || *(v20 + 24) == 1)
  {
    [*(a1 + 32) _persistState];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__SUCorePolicyDDMConfiguration_invalidateAllInvalidDeclarationsReturningAllInvalid__block_invoke_334;
  v9[3] = &unk_27892DE30;
  v9[4] = *(a1 + 40);
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

void __83__SUCorePolicyDDMConfiguration_invalidateAllInvalidDeclarationsReturningAllInvalid__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[SUCoreDDMDeclaration alloc] initWithDeclarationKeys:v6];
  v8 = v7;
  if (v7 && ![(SUCoreDDMDeclaration *)v7 isValidDeclaration])
  {
    v9 = +[SUCoreDDMUtilities sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[SUCorePolicyDDMConfiguration invalidateAllInvalidDeclarationsReturningAllInvalid]_block_invoke_2";
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ is nolonger valid; invalidating it", &v15, 0x16u);
    }

    if ([v5 isEqualToString:*(a1 + 32)])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    v11 = [*(a1 + 40) objectForKey:v5];

    if (v11)
    {
      v12 = +[SUCoreDDMUtilities sharedLogger];
      v13 = [v12 oslog];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __83__SUCorePolicyDDMConfiguration_invalidateAllInvalidDeclarationsReturningAllInvalid__block_invoke_2_cold_1();
      }
    }

    else
    {
      [*(a1 + 40) setObject:v6 forKey:v5];
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    [*(a1 + 48) removeObjectForKey:v5];
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __83__SUCorePolicyDDMConfiguration_invalidateAllInvalidDeclarationsReturningAllInvalid__block_invoke_334(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a3;
  v5 = [[SUCoreDDMDeclaration alloc] initWithDeclarationKeys:v4];

  [v3 addObject:v5];
}

- (id)allKeys
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = objc_opt_new();
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SUCorePolicyDDMConfiguration_allKeys__block_invoke;
  v6[3] = &unk_27892C880;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__SUCorePolicyDDMConfiguration_allKeys__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  v10 = 0;
  [v2 _getDeclarations:&v10 invalid:&v9];
  v3 = v10;
  v4 = v9;
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [v3 allKeys];
  [v5 addObjectsFromArray:v6];

  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [v4 allKeys];
  [v7 addObjectsFromArray:v8];
}

- (BOOL)removeDeclarationForKey:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    dispatch_assert_queue_not_V2(self->_stateQueue);
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SUCorePolicyDDMConfiguration_removeDeclarationForKey___block_invoke;
    block[3] = &unk_27892D520;
    block[4] = self;
    v6 = v4;
    v16 = v6;
    v17 = &v18;
    dispatch_sync(stateQueue, block);
    if (*(v19 + 24) == 1)
    {
      v7 = +[SUCoreDDMUtilities sharedLogger];
      v8 = [v7 oslog];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "[SUCorePolicyDDMConfiguration removeDeclarationForKey:]";
        v24 = 2114;
        v25 = v6;
        _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%s: Successfully removed %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v12 = +[SUCoreDDMUtilities sharedLogger];
      v8 = [v12 oslog];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SUCorePolicyDDMConfiguration removeDeclarationForKey:];
      }
    }

    v11 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v9 = +[SUCoreDDMUtilities sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SUCorePolicyDDMConfiguration removeDeclarationForKey:];
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __56__SUCorePolicyDDMConfiguration_removeDeclarationForKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = 0;
  v15 = 0;
  [v2 _getDeclarations:&v15 invalid:&v14];
  v3 = v15;
  v4 = v14;
  v5 = [*(a1 + 32) _getActiveDeclarationKey];
  v6 = (a1 + 40);
  v7 = [*(a1 + 40) isEqualToString:v5];
  v8 = [v3 objectForKey:*(a1 + 40)];

  if (v8)
  {
    [v3 removeObjectForKey:*v6];
  }

  v9 = [v4 objectForKey:*v6];

  if (v9)
  {
    [v4 removeObjectForKey:*v6];
    if (v7)
    {
      v10 = +[SUCoreDDMUtilities sharedLogger];
      v11 = [v10 oslog];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __56__SUCorePolicyDDMConfiguration_removeDeclarationForKey___block_invoke_cold_1((a1 + 40));
      }
    }

    if (v8)
    {
      v12 = +[SUCoreDDMUtilities sharedLogger];
      v13 = [v12 oslog];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __56__SUCorePolicyDDMConfiguration_removeDeclarationForKey___block_invoke_cold_2((a1 + 40));
      }

      [*(a1 + 32) _persistValidDeclarations:v3];
    }

    [*(a1 + 32) _persistInvalidDeclarations:v4];
  }

  else if (v8)
  {
    [*(a1 + 32) _persistValidDeclarations:v3];
  }

  if (v7)
  {
    [*(a1 + 32) _persistActiveDeclarationKey:0];
LABEL_18:
    [*(a1 + 32) _persistState];
    goto LABEL_19;
  }

  if (v8 | v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  *(*(*(a1 + 48) + 8) + 24) = (v8 | v9) != 0;
}

- (id)currentlyApplicableDeclaration
{
  v3 = objc_opt_class();
  v4 = [(SUCorePolicyDDMConfiguration *)self allDeclarations];
  v5 = [v3 declarationFromAllDeclarations:v4];

  return v5;
}

+ (id)declarationFromAllDeclarationDicts:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [SUCoreDDMDeclaration alloc];
        v12 = [(SUCoreDDMDeclaration *)v11 initWithDeclarationKeys:v10, v16];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [objc_opt_class() declarationFromAllDeclarations:v4];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)declarationFromAllDeclarations:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global_336];
  v4 = +[SUCoreDDMUtilities sharedLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "+[SUCorePolicyDDMConfiguration declarationFromAllDeclarations:]";
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "%s: Sorted DDM declarations: %{public}@", &v9, 0x16u);
  }

  v6 = [v3 firstObject];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)addGlobalSettingsDeclaration:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__SUCorePolicyDDMConfiguration_addGlobalSettingsDeclaration_returningError___block_invoke;
  v11[3] = &unk_27892DD98;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = &v22;
  v15 = &v16;
  dispatch_sync(stateQueue, v11);
  v9 = *(v23 + 24);
  if (a4 && (v23[3] & 1) == 0)
  {
    *a4 = v17[5];
    v9 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9 & 1;
}

void __76__SUCorePolicyDDMConfiguration_addGlobalSettingsDeclaration_returningError___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [[SUCoreDDMDeclarationGlobalSettings alloc] initWithDeclarationKeys:*(a1 + 32)];
  v13 = 0;
  v3 = [(SUCoreDDMDeclarationGlobalSettings *)v2 isValidDeclarationWithReason:&v13];
  v4 = v13;
  if (v3)
  {
    v5 = [*(a1 + 40) persistedState];
    [v5 persistDictionary:*(a1 + 32) forKey:@"SUCoreDDMDeclarationGlobalSettings" shouldPersist:1];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v6 = +[SUCoreDDMUtilities sharedLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[SUCorePolicyDDMConfiguration addGlobalSettingsDeclaration:returningError:]_block_invoke";
      v16 = 2114;
      v17 = v2;
      _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "%s: Invalid global settings declaration: %{public}@", buf, 0x16u);
    }

    v8 = [MEMORY[0x277D643F8] sharedCore];
    v9 = [v8 buildError:9100 underlying:0 description:v4];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)currentGlobalSettingsDeclaration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SUCorePolicyDDMConfiguration_currentGlobalSettingsDeclaration__block_invoke;
  v6[3] = &unk_27892C880;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __64__SUCorePolicyDDMConfiguration_currentGlobalSettingsDeclaration__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistedState];
  v3 = [v2 dictionaryForKey:@"SUCoreDDMDeclarationGlobalSettings"];

  v4 = [[SUCoreDDMDeclarationGlobalSettings alloc] initWithDeclarationKeys:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if ([v3 count])
  {
    v7 = +[SUCoreDDMUtilities sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v11 = 136315394;
      v12 = "[SUCorePolicyDDMConfiguration currentGlobalSettingsDeclaration]_block_invoke";
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%s: Current global settings declaration: %{public}@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeGlobalSettingsDeclaration
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SUCorePolicyDDMConfiguration_removeGlobalSettingsDeclaration__block_invoke;
  block[3] = &unk_27892C8A8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

void __63__SUCorePolicyDDMConfiguration_removeGlobalSettingsDeclaration__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedState];
  [v1 persistDictionary:0 forKey:@"SUCoreDDMDeclarationGlobalSettings" shouldPersist:1];
}

- (id)_dateFromString:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  v6 = [v5 dateFromString:v4];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUCorePolicyDDMConfiguration *)self allDeclarations];
  v4 = [v2 stringWithFormat:@"SUCorePolicyDDMConfiguration (Declarations:%@)", v3];

  return v4;
}

- (void)initWithStatePersistencePath:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_23193C000, a1, a3, "%s: Failed to create persisted path; fall back to '%{public}@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__SUCorePolicyDDMConfiguration_initWithStatePersistencePath___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__SUCorePolicyDDMConfiguration_initWithStatePersistencePath___block_invoke_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2(&dword_23193C000, v0, v1, "%s: Unable to read corrupted software update state file.  Exception: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)getDaemonCacheDirectory
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_5(&dword_23193C000, v0, v1, "%s: Failed to create cache directory at path: %{public}@, error: %{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __56__SUCorePolicyDDMConfiguration_setActiveDeclarationKey___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  v4 = 136315650;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5(&dword_23193C000, v1, v2, "%s: %{public}@ is not in the valid declarations %{public}@", v4);
  v3 = *MEMORY[0x277D85DE8];
}

void __62__SUCorePolicyDDMConfiguration_addDeclaration_returningError___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2(&dword_23193C000, v0, v1, "%s: There is already a tracked valid declaration for %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__SUCorePolicyDDMConfiguration_addDeclaration_returningError___block_invoke_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2(&dword_23193C000, v0, v1, "%s: There is already a tracked invalid declaration for %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__SUCorePolicyDDMConfiguration_declarationForKey___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_23193C000, v1, v2, "%s: Unable to find any declaration for %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidateDeclarationForKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__SUCorePolicyDDMConfiguration_invalidateDeclarationForKey___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_23193C000, v1, v2, "%s: The declaration with active key = %{public}@ was invalid", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__SUCorePolicyDDMConfiguration_invalidateDeclarationForKey___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_23193C000, v1, v2, "%s: The declaration is both valid and invalid for %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__SUCorePolicyDDMConfiguration_invalidateDeclarationForKey___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_23193C000, v1, v2, "%s: Unable to find any declaration to invalidate for %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __83__SUCorePolicyDDMConfiguration_invalidateAllInvalidDeclarationsReturningAllInvalid__block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2(&dword_23193C000, v0, v1, "%s: The declaration is both valid and invalid for %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeDeclarationForKey:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2(&dword_23193C000, v0, v1, "%s: Unable to find any declaration to remove for %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeDeclarationForKey:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__SUCorePolicyDDMConfiguration_removeDeclarationForKey___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_23193C000, v1, v2, "%s: The declaration with key = %{public}@ was invalid", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __56__SUCorePolicyDDMConfiguration_removeDeclarationForKey___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2(&dword_23193C000, v1, v2, "%s: The declaration was both valid and invalid for %{public}@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

@end