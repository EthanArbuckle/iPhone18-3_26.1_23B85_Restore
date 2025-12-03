@interface MTCoreDataContainer
- (MTCoreDataContainer)initWithConfig:(id)config;
- (MTManagedObjectContext)carPlayContext;
- (MTManagedObjectContext)importContext;
- (MTManagedObjectContext)loggingContext;
- (MTManagedObjectContext)mainQueueContext;
- (MTManagedObjectContext)playbackContext;
- (MTManagedObjectContext)privateQueueContext;
- (MTManagedObjectContext)resetableImportContext;
- (MTManagedObjectContext)storeContext;
- (id)_createManagedObjectContextWithName:(id)name coordinator:(id)coordinator concurrencyType:(unint64_t)type;
- (id)allContexts;
- (id)contextForName:(id)name;
- (id)createSingleUsePrivateContext:(id)context;
- (id)mainOrPrivateContext;
- (id)managedObjectIDForURI:(id)i error:(id *)error;
- (id)persistentStoreCoordinator;
- (id)persistentStoreUuid;
- (id)safePersistentStoreCoordinatorWithError:(id *)error;
- (void)_addChanges:(id)changes ofType:(int)type toLibraryChanges:(id)libraryChanges;
- (void)_notifyLibraryChanged:(id)changed contextName:(id)name;
- (void)_tearDown:(BOOL)down;
- (void)addChangeNotifier:(id)notifier;
- (void)checkForFullDisk_probablyNotABug:(id)bug;
- (void)checkForRadar75450416_probablyNotABug:(id)bug;
- (void)checkForWritePermissions:(id)permissions;
- (void)destroy;
- (void)mergeFromContextDidSaveNotification:(id)notification;
- (void)removeChangeNotifier:(id)notifier;
- (void)tearDownAsync:(BOOL)async;
@end

@implementation MTCoreDataContainer

- (MTManagedObjectContext)privateQueueContext
{
  privateQueueContext = self->_privateQueueContext;
  if (!privateQueueContext)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_privateQueueContext)
    {
      persistentStoreCoordinator = [(MTCoreDataContainer *)selfCopy persistentStoreCoordinator];
      v6 = [(MTCoreDataContainer *)selfCopy _createManagedObjectContextWithName:@"background context" coordinator:persistentStoreCoordinator concurrencyType:1];
      v7 = self->_privateQueueContext;
      self->_privateQueueContext = v6;

      v8 = [[PFDatabaseHangDetector alloc] initWithContext:self->_privateQueueContext label:0 pingInterval:1.0 shortHangDuration:5.0 severeHangDuration:10.0 criticalHangDuration:15.0 criticalHangRepeatInterval:1.0];
      [(MTManagedObjectContext *)self->_privateQueueContext setHangDetector:v8];

      hangDetector = [(MTManagedObjectContext *)self->_privateQueueContext hangDetector];
      [hangDetector beginMonitoring];
    }

    objc_sync_exit(selfCopy);

    privateQueueContext = self->_privateQueueContext;
  }

  v10 = privateQueueContext;

  return v10;
}

- (id)persistentStoreCoordinator
{
  v28 = *MEMORY[0x1E69E9840];
  coordinator = self->_coordinator;
  if (coordinator)
  {
    coordinator = coordinator;
    goto LABEL_7;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = +[MTDB libraryPath];
  path = [v6 path];
  v8 = [defaultManager fileExistsAtPath:path];

  v9 = objc_alloc(MEMORY[0x1E695D6C0]);
  config = [(MTCoreDataContainer *)self config];
  managedObjectModel = [config managedObjectModel];
  v12 = [v9 initWithManagedObjectModel:managedObjectModel];

  v13 = *MEMORY[0x1E695D4A8];
  config2 = [(MTCoreDataContainer *)self config];
  databaseFileUrl = [config2 databaseFileUrl];
  config3 = [(MTCoreDataContainer *)self config];
  persistentStoreOptions = [config3 persistentStoreOptions];
  v25 = 0;
  v18 = [v12 addPersistentStoreWithType:v13 configuration:0 URL:databaseFileUrl options:persistentStoreOptions error:&v25];
  v19 = v25;

  if (!v18)
  {
    v22 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v27 = v19;
      _os_log_impl(&dword_1D8CEC000, v22, OS_LOG_TYPE_FAULT, "Critical error in Core Data intialization. (Error: %@)", buf, 0xCu);
    }

    domain = [v19 domain];
    if ([domain isEqual:*MEMORY[0x1E696A250]])
    {
      code = [v19 code];

      if (code == 134100)
      {
        [MTDB setCoreDataChecksum:0];
      }
    }

    else
    {
    }

    [(MTCoreDataContainer *)self checkForFullDisk_probablyNotABug:v19];
    [(MTCoreDataContainer *)self checkForRadar75450416_probablyNotABug:v19];
    [(MTCoreDataContainer *)self checkForWritePermissions:v19];
    [MEMORY[0x1E695DF30] raise:@"Error creating persistent store" format:{@"Error: %@", v19}];
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v8 & 1) == 0)
  {
LABEL_5:
    +[MTDBExtensionAccess postDatabaseCreatedNotification];
  }

LABEL_6:
  [(MTCoreDataContainer *)self setCoordinator:v12];
  coordinator = [(MTCoreDataContainer *)self coordinator];

LABEL_7:
  v20 = *MEMORY[0x1E69E9840];

  return coordinator;
}

- (MTManagedObjectContext)importContext
{
  importContext = self->_importContext;
  if (!importContext)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_importContext)
    {
      persistentStoreCoordinator = [(MTCoreDataContainer *)selfCopy persistentStoreCoordinator];
      v6 = [(MTCoreDataContainer *)selfCopy _createManagedObjectContextWithName:@"import context" coordinator:persistentStoreCoordinator concurrencyType:1];
      v7 = self->_importContext;
      self->_importContext = v6;

      v8 = [[PFDatabaseHangDetector alloc] initWithContext:self->_importContext label:1 pingInterval:1.0 shortHangDuration:10.0 severeHangDuration:20.0 criticalHangDuration:30.0 criticalHangRepeatInterval:1.0];
      [(MTManagedObjectContext *)self->_importContext setHangDetector:v8];

      hangDetector = [(MTManagedObjectContext *)self->_importContext hangDetector];
      [hangDetector beginMonitoring];
    }

    objc_sync_exit(selfCopy);

    importContext = self->_importContext;
  }

  v10 = importContext;

  return v10;
}

- (MTManagedObjectContext)storeContext
{
  storeContext = self->_storeContext;
  if (!storeContext)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_storeContext)
    {
      persistentStoreCoordinator = [(MTCoreDataContainer *)selfCopy persistentStoreCoordinator];
      v6 = [(MTCoreDataContainer *)selfCopy _createManagedObjectContextWithName:@"state machine context" coordinator:persistentStoreCoordinator concurrencyType:1];
      v7 = self->_storeContext;
      self->_storeContext = v6;
    }

    objc_sync_exit(selfCopy);

    storeContext = self->_storeContext;
  }

  v8 = storeContext;

  return v8;
}

- (id)mainOrPrivateContext
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(MTCoreDataContainer *)self mainQueueContext];
  }

  else
  {
    [(MTCoreDataContainer *)self privateQueueContext];
  }
  v3 = ;

  return v3;
}

- (MTManagedObjectContext)loggingContext
{
  loggingContext = self->_loggingContext;
  if (!loggingContext)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_loggingContext)
    {
      persistentStoreCoordinator = [(MTCoreDataContainer *)selfCopy persistentStoreCoordinator];
      v6 = [(MTCoreDataContainer *)selfCopy _createManagedObjectContextWithName:@"logging" coordinator:persistentStoreCoordinator concurrencyType:1];
      v7 = self->_loggingContext;
      self->_loggingContext = v6;
    }

    objc_sync_exit(selfCopy);

    loggingContext = self->_loggingContext;
  }

  v8 = loggingContext;

  return v8;
}

- (id)allContexts
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
  v4 = v3;
  if (self->_mainQueueContext)
  {
    [v3 addObject:?];
  }

  if (self->_privateQueueContext)
  {
    [v4 addObject:?];
  }

  if (self->_carPlayContext)
  {
    [v4 addObject:?];
  }

  if (self->_storeContext)
  {
    [v4 addObject:?];
  }

  if (self->_importContext)
  {
    [v4 addObject:?];
  }

  if (self->_resetableImportContext)
  {
    [v4 addObject:?];
  }

  if (self->_loggingContext)
  {
    [v4 addObject:?];
  }

  if (self->_playbackContext)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (MTCoreDataContainer)initWithConfig:(id)config
{
  v22[5] = *MEMORY[0x1E69E9840];
  configCopy = config;
  v21.receiver = self;
  v21.super_class = MTCoreDataContainer;
  v5 = [(MTCoreDataContainer *)&v21 init];
  v6 = v5;
  if (v5)
  {
    [(MTCoreDataContainer *)v5 setConfig:configCopy];
    [(MTCoreDataContainer *)v6 setValid:1];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(MTCoreDataContainer *)v6 setNotifiers:weakObjectsHashTable];

    v22[0] = @"MTPodcast";
    v22[1] = @"MTEpisode";
    v22[2] = @"MTPlaylist";
    v22[3] = @"MTPodcastPlaylistSettings";
    v22[4] = @"MTChannel";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
    [(MTCoreDataContainer *)v6 setEntityNames:v8];

    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"%@MergeQueue", v11];
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    [(MTCoreDataContainer *)v6 setMergeQueue:v13];

    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@MergeNotifierQueue", v16];
    v18 = dispatch_queue_create([v17 UTF8String], 0);
    [(MTCoreDataContainer *)v6 setMergeNotifierQueue:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MTManagedObjectContext)mainQueueContext
{
  mainQueueContext = self->_mainQueueContext;
  if (!mainQueueContext)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    persistentStoreCoordinator = [(MTCoreDataContainer *)selfCopy persistentStoreCoordinator];
    v6 = [(MTCoreDataContainer *)selfCopy _createManagedObjectContextWithName:@"main queue context" coordinator:persistentStoreCoordinator concurrencyType:2];
    v7 = self->_mainQueueContext;
    self->_mainQueueContext = v6;

    objc_sync_exit(selfCopy);
    mainQueueContext = self->_mainQueueContext;
  }

  v8 = mainQueueContext;

  return v8;
}

- (MTManagedObjectContext)carPlayContext
{
  carPlayContext = self->_carPlayContext;
  if (!carPlayContext)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_carPlayContext)
    {
      persistentStoreCoordinator = [(MTCoreDataContainer *)selfCopy persistentStoreCoordinator];
      v6 = [(MTCoreDataContainer *)selfCopy _createManagedObjectContextWithName:@"carplay context" coordinator:persistentStoreCoordinator concurrencyType:1];
      v7 = self->_carPlayContext;
      self->_carPlayContext = v6;
    }

    objc_sync_exit(selfCopy);

    carPlayContext = self->_carPlayContext;
  }

  v8 = carPlayContext;

  return v8;
}

- (MTManagedObjectContext)resetableImportContext
{
  resetableImportContext = self->_resetableImportContext;
  if (!resetableImportContext)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_resetableImportContext)
    {
      persistentStoreCoordinator = [(MTCoreDataContainer *)selfCopy persistentStoreCoordinator];
      v6 = [(MTCoreDataContainer *)selfCopy _createManagedObjectContextWithName:@"resetable import context" coordinator:persistentStoreCoordinator concurrencyType:1];
      v7 = self->_resetableImportContext;
      self->_resetableImportContext = v6;

      [(MTManagedObjectContext *)self->_resetableImportContext setIsResetable:1];
    }

    objc_sync_exit(selfCopy);

    resetableImportContext = self->_resetableImportContext;
  }

  v8 = resetableImportContext;

  return v8;
}

- (MTManagedObjectContext)playbackContext
{
  playbackContext = self->_playbackContext;
  if (!playbackContext)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_playbackContext)
    {
      persistentStoreCoordinator = [(MTCoreDataContainer *)selfCopy persistentStoreCoordinator];
      v6 = [(MTCoreDataContainer *)selfCopy _createManagedObjectContextWithName:@"playback" coordinator:persistentStoreCoordinator concurrencyType:1];
      v7 = self->_playbackContext;
      self->_playbackContext = v6;

      v8 = [[PFDatabaseHangDetector alloc] initWithContext:self->_playbackContext label:2 pingInterval:1.0 shortHangDuration:1.0 severeHangDuration:2.0 criticalHangDuration:5.0 criticalHangRepeatInterval:1.0];
      [(MTManagedObjectContext *)self->_playbackContext setHangDetector:v8];

      hangDetector = [(MTManagedObjectContext *)self->_playbackContext hangDetector];
      [hangDetector beginMonitoring];
    }

    objc_sync_exit(selfCopy);

    playbackContext = self->_playbackContext;
  }

  v10 = playbackContext;

  return v10;
}

- (id)_createManagedObjectContextWithName:(id)name coordinator:(id)coordinator concurrencyType:(unint64_t)type
{
  coordinatorCopy = coordinator;
  nameCopy = name;
  v10 = [[MTManagedObjectContext alloc] initWithConcurrencyType:type name:nameCopy];

  [(MTManagedObjectContext *)v10 setPersistentStoreCoordinator:coordinatorCopy];
  [(MTManagedObjectContext *)v10 setMergePolicy:*MEMORY[0x1E695D370]];
  [(MTManagedObjectContext *)v10 setUndoManager:0];
  [(MTManagedObjectContext *)v10 setType:type != 2];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_mergeFromContextDidSaveNotification_ name:*MEMORY[0x1E695D358] object:v10];

  return v10;
}

- (id)managedObjectIDForURI:(id)i error:(id *)error
{
  iCopy = i;
  v7 = [(MTCoreDataContainer *)self safePersistentStoreCoordinatorWithError:error];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 managedObjectIDForURIRepresentation:iCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)safePersistentStoreCoordinatorWithError:(id *)error
{
  coordinator = self->_coordinator;
  if (coordinator)
  {
    coordinator2 = coordinator;
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = +[MTDB libraryPath];
    path = [v8 path];
    v10 = [defaultManager fileExistsAtPath:path];

    v11 = objc_alloc(MEMORY[0x1E695D6C0]);
    config = [(MTCoreDataContainer *)self config];
    managedObjectModel = [config managedObjectModel];
    v14 = [v11 initWithManagedObjectModel:managedObjectModel];
    [(MTCoreDataContainer *)self setCoordinator:v14];

    coordinator = [(MTCoreDataContainer *)self coordinator];
    v16 = *MEMORY[0x1E695D4A8];
    config2 = [(MTCoreDataContainer *)self config];
    databaseFileUrl = [config2 databaseFileUrl];
    config3 = [(MTCoreDataContainer *)self config];
    persistentStoreOptions = [config3 persistentStoreOptions];
    v21 = [coordinator addPersistentStoreWithType:v16 configuration:0 URL:databaseFileUrl options:persistentStoreOptions error:error];

    if ((v10 & 1) == 0)
    {
      +[MTDBExtensionAccess postDatabaseCreatedNotification];
    }

    coordinator2 = [(MTCoreDataContainer *)self coordinator];
  }

  return coordinator2;
}

- (void)checkForFullDisk_probablyNotABug:(id)bug
{
  bugCopy = bug;
  domain = [bugCopy domain];
  v4 = *MEMORY[0x1E695D488];
  if ([domain isEqualToString:*MEMORY[0x1E695D488]])
  {
    userInfo = [bugCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:v4];
    intValue = [v6 intValue];

    if (intValue == 13)
    {
      [MEMORY[0x1E695DF30] raise:@"Disk is full" format:@"Could not open podcasts library because the disk is full."];
    }
  }

  else
  {
  }
}

- (void)checkForRadar75450416_probablyNotABug:(id)bug
{
  bugCopy = bug;
  domain = [bugCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [bugCopy code];

    if (code == 134100 && +[MTDB coreDataVersion_deprecated]== 78)
    {
      [MEMORY[0x1E695DF30] raise:@"Unmigratable database" format:{@"This device has a corrupt, unmigrateable database that never shipped to the public. See rdar://75450416 for mitigation instructions."}];
    }
  }

  else
  {
  }
}

- (void)checkForWritePermissions:(id)permissions
{
  permissionsCopy = permissions;
  domain = [permissionsCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [permissionsCopy code];

    if (code == 513)
    {
      [MEMORY[0x1E695DF30] raise:@"No write permissions" format:@"The current user does not have write permissions for the Podcasts library path."];
    }
  }

  else
  {
  }
}

- (id)persistentStoreUuid
{
  v3 = MEMORY[0x1E695D6C0];
  v4 = *MEMORY[0x1E695D4A8];
  config = [(MTCoreDataContainer *)self config];
  databaseFileUrl = [config databaseFileUrl];
  config2 = [(MTCoreDataContainer *)self config];
  persistentStoreOptions = [config2 persistentStoreOptions];
  v13 = 0;
  v9 = [v3 metadataForPersistentStoreOfType:v4 URL:databaseFileUrl options:persistentStoreOptions error:&v13];
  v10 = v13;

  if (v9 || [v10 code] != 260)
  {
    v11 = [v9 objectForKey:*MEMORY[0x1E695D4B8]];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)contextForName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    [(MTCoreDataContainer *)self allContexts];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          mt_immutableName = [v9 mt_immutableName];
          v11 = [mt_immutableName isEqualToString:nameCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)createSingleUsePrivateContext:(id)context
{
  contextCopy = context;
  persistentStoreCoordinator = [(MTCoreDataContainer *)self persistentStoreCoordinator];
  v6 = [(MTCoreDataContainer *)self _createManagedObjectContextWithName:contextCopy coordinator:persistentStoreCoordinator concurrencyType:1];

  return v6;
}

- (void)mergeFromContextDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  allContexts = [(MTCoreDataContainer *)self allContexts];
  v7 = allContexts;
  if (!object)
  {
    goto LABEL_4;
  }

  if ([allContexts containsObject:object])
  {
    [v7 removeObject:object];
LABEL_4:
    objc_initWeak(&location, self);
    mergeQueue = [(MTCoreDataContainer *)self mergeQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MTCoreDataContainer_mergeFromContextDidSaveNotification___block_invoke;
    block[3] = &unk_1E8569F88;
    objc_copyWeak(&v13, &location);
    v10 = object;
    v11 = notificationCopy;
    v12 = v7;
    dispatch_async(mergeQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __59__MTCoreDataContainer_mergeFromContextDidSaveNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained valid])
  {
    v3 = _MTLogCategoryDatabase();
    v4 = os_signpost_id_generate(v3);

    v5 = _MTLogCategoryDatabase();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = [*(a1 + 32) name];
      v15 = 138543362;
      v16 = v7;
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "mergeFromContextDidSaveNotification", "from: %{public}@", &v15, 0xCu);
    }

    v8 = MEMORY[0x1E695D628];
    v9 = [*(a1 + 40) userInfo];
    [v8 mergeChangesFromRemoteContextSave:v9 intoContexts:*(a1 + 48)];

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) name];
    [WeakRetained _notifyLibraryChanged:v10 contextName:v11];

    v12 = _MTLogCategoryDatabase();
    v13 = v12;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v15) = 0;
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v13, OS_SIGNPOST_INTERVAL_END, v4, "mergeFromContextDidSaveNotification", "", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addChangeNotifier:(id)notifier
{
  notifierCopy = notifier;
  notifiers = [(MTCoreDataContainer *)self notifiers];
  objc_sync_enter(notifiers);
  notifiers2 = [(MTCoreDataContainer *)self notifiers];
  [notifiers2 addObject:notifierCopy];

  objc_sync_exit(notifiers);
}

- (void)removeChangeNotifier:(id)notifier
{
  notifierCopy = notifier;
  notifiers = [(MTCoreDataContainer *)self notifiers];
  objc_sync_enter(notifiers);
  notifiers2 = [(MTCoreDataContainer *)self notifiers];
  [notifiers2 removeObject:notifierCopy];

  objc_sync_exit(notifiers);
}

- (void)_notifyLibraryChanged:(id)changed contextName:(id)name
{
  changedCopy = changed;
  nameCopy = name;
  notifiers = [(MTCoreDataContainer *)self notifiers];
  objc_sync_enter(notifiers);
  notifiers2 = [(MTCoreDataContainer *)self notifiers];
  allObjects = [notifiers2 allObjects];

  objc_sync_exit(notifiers);
  inited = objc_initWeak(&location, self);
  v12 = objc_autoreleasePoolPush();
  v13 = inited;
  v14 = [[MTLibraryChanges alloc] initWithContextName:nameCopy];
  userInfo = [changedCopy userInfo];
  v16 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D320]];
  [(MTCoreDataContainer *)self _addChanges:v16 ofType:0 toLibraryChanges:v14];

  userInfo2 = [changedCopy userInfo];
  v18 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E695D4C8]];
  [(MTCoreDataContainer *)self _addChanges:v18 ofType:2 toLibraryChanges:v14];

  userInfo3 = [changedCopy userInfo];
  v20 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E695D2F0]];
  [(MTCoreDataContainer *)self _addChanges:v20 ofType:1 toLibraryChanges:v14];

  if ([(MTLibraryChanges *)v14 hasChanges])
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57__MTCoreDataContainer__notifyLibraryChanged_contextName___block_invoke;
    v21[3] = &unk_1E8569FB0;
    v21[4] = self;
    v22 = v14;
    [allObjects enumerateObjectsUsingBlock:v21];
  }

  objc_autoreleasePoolPop(v12);
  objc_destroyWeak(&location);
}

void __57__MTCoreDataContainer__notifyLibraryChanged_contextName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mergeNotifierQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MTCoreDataContainer__notifyLibraryChanged_contextName___block_invoke_2;
  v6[3] = &unk_1E8569318;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)_addChanges:(id)changes ofType:(int)type toLibraryChanges:(id)libraryChanges
{
  v25 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  libraryChangesCopy = libraryChanges;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [changesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(changesCopy);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        entity = [v13 entity];
        name = [entity name];

        entityNames = [(MTCoreDataContainer *)self entityNames];
        v17 = [entityNames containsObject:name];

        if (v17)
        {
          [libraryChangesCopy addChangeWith:v13 entityName:name changeType:type];
        }
      }

      v10 = [changesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)tearDownAsync:(BOOL)async
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  mergeQueue = [(MTCoreDataContainer *)self mergeQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MTCoreDataContainer_tearDownAsync___block_invoke;
  v7[3] = &unk_1E8569FD8;
  v7[4] = self;
  asyncCopy = async;
  dispatch_async(mergeQueue, v7);
}

- (void)_tearDown:(BOOL)down
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  mainQueueContext = self->_mainQueueContext;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __33__MTCoreDataContainer__tearDown___block_invoke;
  v40[3] = &unk_1E8568E28;
  v8 = v6;
  v41 = v8;
  [(MTManagedObjectContext *)mainQueueContext performBlock:v40];
  dispatch_group_enter(v8);
  privateQueueContext = self->_privateQueueContext;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __33__MTCoreDataContainer__tearDown___block_invoke_2;
  v38[3] = &unk_1E8568E28;
  v10 = v8;
  v39 = v10;
  [(MTManagedObjectContext *)privateQueueContext performBlock:v38];
  dispatch_group_enter(v10);
  carPlayContext = self->_carPlayContext;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __33__MTCoreDataContainer__tearDown___block_invoke_3;
  v36[3] = &unk_1E8568E28;
  v12 = v10;
  v37 = v12;
  [(MTManagedObjectContext *)carPlayContext performBlock:v36];
  dispatch_group_enter(v12);
  storeContext = self->_storeContext;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __33__MTCoreDataContainer__tearDown___block_invoke_4;
  v34[3] = &unk_1E8568E28;
  v14 = v12;
  v35 = v14;
  [(MTManagedObjectContext *)storeContext performBlock:v34];
  dispatch_group_enter(v14);
  importContext = self->_importContext;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __33__MTCoreDataContainer__tearDown___block_invoke_5;
  v32[3] = &unk_1E8568E28;
  v16 = v14;
  v33 = v16;
  [(MTManagedObjectContext *)importContext performBlock:v32];
  dispatch_group_enter(v16);
  resetableImportContext = self->_resetableImportContext;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __33__MTCoreDataContainer__tearDown___block_invoke_6;
  v30[3] = &unk_1E8568E28;
  v18 = v16;
  v31 = v18;
  [(MTManagedObjectContext *)resetableImportContext performBlock:v30];
  dispatch_group_enter(v18);
  loggingContext = self->_loggingContext;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __33__MTCoreDataContainer__tearDown___block_invoke_7;
  v28[3] = &unk_1E8568E28;
  v20 = v18;
  v29 = v20;
  [(MTManagedObjectContext *)loggingContext performBlock:v28];
  dispatch_group_enter(v20);
  playbackContext = self->_playbackContext;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __33__MTCoreDataContainer__tearDown___block_invoke_8;
  v26[3] = &unk_1E8568E28;
  v27 = v20;
  v22 = v20;
  [(MTManagedObjectContext *)playbackContext performBlock:v26];
  mergeQueue = [(MTCoreDataContainer *)self mergeQueue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __33__MTCoreDataContainer__tearDown___block_invoke_9;
  v24[3] = &unk_1E8569FD8;
  v24[4] = self;
  downCopy = down;
  dispatch_group_notify(v22, mergeQueue, v24);
}

void __33__MTCoreDataContainer__tearDown___block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 setValid:0];
  if (*(a1 + 40) == 1)
  {
    [v2 destroy];
  }
}

- (void)destroy
{
  persistentStoreCoordinator = [(MTCoreDataContainer *)self persistentStoreCoordinator];
  config = [(MTCoreDataContainer *)self config];
  databaseFileUrl = [config databaseFileUrl];
  v6 = *MEMORY[0x1E695D4A8];
  config2 = [(MTCoreDataContainer *)self config];
  persistentStoreOptions = [config2 persistentStoreOptions];
  v20 = 0;
  v9 = [persistentStoreCoordinator destroyPersistentStoreAtURL:databaseFileUrl withType:v6 options:persistentStoreOptions error:&v20];
  v10 = v20;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    config3 = [(MTCoreDataContainer *)self config];
    databaseFileUrl2 = [config3 databaseFileUrl];
    v19 = v10;
    v15 = [defaultManager removeItemAtURL:databaseFileUrl2 error:&v19];
    v18 = config;
    v16 = persistentStoreCoordinator;
    v17 = v19;

    v11 = v15 ^ 1;
    v10 = v17;
    persistentStoreCoordinator = v16;
    config = v18;
  }

  if (v11)
  {
    [MEMORY[0x1E695DF30] raise:@"Failed to destory store" format:{@"Error: %@", v10}];
  }
}

@end