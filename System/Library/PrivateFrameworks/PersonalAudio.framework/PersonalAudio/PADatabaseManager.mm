@interface PADatabaseManager
+ (id)sharedManager;
- (BOOL)saveConfiguration:(id)configuration;
- (id)currentConfiguration;
- (void)contentDidUpdate:(id)update;
- (void)logMessage:(id)message;
@end

@implementation PADatabaseManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[PADatabaseManager sharedManager];
  }

  v3 = sharedManager_Manager;

  return v3;
}

uint64_t __34__PADatabaseManager_sharedManager__block_invoke()
{
  sharedManager_Manager = objc_alloc_init(PADatabaseManager);

  return MEMORY[0x2821F96F8]();
}

- (void)logMessage:(id)message
{
  v8 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = messageCopy;
    _os_log_impl(&dword_25E445000, v4, OS_LOG_TYPE_DEFAULT, "PA DB message %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)contentDidUpdate:(id)update
{
  v8.receiver = self;
  v8.super_class = PADatabaseManager;
  [(HCDatabaseManager *)&v8 contentDidUpdate:update];
  v4 = +[PASettings sharedInstance];
  personalMediaConfiguration = [v4 personalMediaConfiguration];
  if (personalMediaConfiguration)
  {
    currentConfiguration2 = personalMediaConfiguration;
  }

  else
  {
    currentConfiguration = [(PADatabaseManager *)self currentConfiguration];

    if (!currentConfiguration)
    {
      return;
    }

    v4 = +[PASettings sharedInstance];
    currentConfiguration2 = [(PADatabaseManager *)self currentConfiguration];
    [v4 setPersonalMediaConfiguration:currentConfiguration2];
  }
}

- (BOOL)saveConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(HCDatabaseManager *)self setupDatabase];
  managedObjectContext = [(HCDatabaseManager *)self managedObjectContext];

  if (managedObjectContext)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy_;
    v14[4] = __Block_byref_object_dispose_;
    v15 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v6 encodeObject:configurationCopy forKey:*MEMORY[0x277CCA308]];
    [v6 finishEncoding];
    encodedData = [v6 encodedData];
    if ([encodedData length])
    {
      managedObjectContext2 = [(HCDatabaseManager *)self managedObjectContext];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __39__PADatabaseManager_saveConfiguration___block_invoke;
      v11[3] = &unk_279A1D8C0;
      v11[4] = self;
      v13 = v14;
      v12 = encodedData;
      [managedObjectContext2 performBlockAndWait:v11];

      saveIfPossible = [(HCDatabaseManager *)self saveIfPossible];
    }

    else
    {
      saveIfPossible = 0;
    }

    _Block_object_dispose(v14, 8);
  }

  else
  {
    [(PADatabaseManager *)self logMessage:@"No context"];
    saveIfPossible = 0;
  }

  return saveIfPossible;
}

void __39__PADatabaseManager_saveConfiguration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"PersonalAudioSettings"];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  v6 = [v5 lastObject];
  if (!v6 || *(*(*(a1 + 48) + 8) + 40))
  {
    v7 = MEMORY[0x277CBE408];
    v8 = [*(a1 + 32) managedObjectContext];
    v9 = [v7 insertNewObjectForEntityForName:@"PersonalAudioSettings" inManagedObjectContext:v8];

    v6 = v9;
  }

  [v6 setVersion:&unk_28702BE08];
  [v6 setAudioSettings:*(a1 + 40)];
  v10 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_25E445000, v10, OS_LOG_TYPE_DEFAULT, "Updated config. Saving", v11, 2u);
  }
}

- (id)currentConfiguration
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"PersonalAudioSettings"];
  [v4 setReturnsObjectsAsFaults:0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  managedObjectContext = [(HCDatabaseManager *)self managedObjectContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41__PADatabaseManager_currentConfiguration__block_invoke;
  v19[3] = &unk_279A1D8E8;
  v21 = &v23;
  v19[4] = self;
  v6 = v4;
  v20 = v6;
  v22 = &v29;
  [managedObjectContext performBlockAndWait:v19];

  if (v30[5])
  {
    v7 = 0;
  }

  else
  {
    lastObject = [v24[5] lastObject];
    audioSettings = [lastObject audioSettings];
    if (audioSettings && ([lastObject version], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToNumber:", &unk_28702BE08), v10, audioSettings, v11))
    {
      v12 = objc_alloc(MEMORY[0x277CCAAC8]);
      audioSettings2 = [lastObject audioSettings];
      v14 = (v30 + 5);
      obj = v30[5];
      v15 = [v12 initForReadingFromData:audioSettings2 error:&obj];
      objc_storeStrong(v14, obj);

      if (v30[5])
      {
        v7 = 0;
      }

      else
      {
        v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
        v7 = [v15 decodeObjectOfClasses:v16 forKey:*MEMORY[0x277CCA308]];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  _Block_object_dispose(&v23, 8);
  objc_autoreleasePoolPop(v3);
  _Block_object_dispose(&v29, 8);

  return v7;
}

void __41__PADatabaseManager_currentConfiguration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end