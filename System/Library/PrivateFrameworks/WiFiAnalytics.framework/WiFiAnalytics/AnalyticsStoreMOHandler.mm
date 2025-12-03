@interface AnalyticsStoreMOHandler
+ (id)sharedAnalyticsStoreMOHandlerWithContainer:(id)container;
- (AnalyticsStoreMOHandler)initWithContainer:(id)container;
- (BOOL)managedObjectContextSave:(BOOL)save reset:(BOOL)reset release:(BOOL)release withError:(id *)error;
- (BOOL)saveManagedObjectContextWithError:(id *)error;
- (BOOL)setBssManagedObjectPropertyValueForKeyWithoutSave:(id)save forKey:(id)key withValue:(id)value;
- (BOOL)setNetworkManagedObjectPropertyValueForKeyWithoutSave:(id)save forKey:(id)key withValue:(id)value;
- (id)managedObjectContext;
- (void)contextDidSave:(id)save;
- (void)dealloc;
- (void)performBlockOnManagedObjectContext:(id)context block:(id)block;
- (void)performBlockOnManagedObjectContextForNSData:(id)data withDate:(id)date block:(id)block;
- (void)releaseBackgroundMOC;
- (void)resetManagedObjectContext;
- (void)updateManagedObjectContextWithoutSave;
@end

@implementation AnalyticsStoreMOHandler

+ (id)sharedAnalyticsStoreMOHandlerWithContainer:(id)container
{
  v16 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AnalyticsStoreMOHandler_sharedAnalyticsStoreMOHandlerWithContainer___block_invoke;
  block[3] = &unk_1E830D880;
  v4 = containerCopy;
  v11 = v4;
  if (qword_1EDE5CAF0 != -1)
  {
    dispatch_once(&qword_1EDE5CAF0, block);
  }

  v5 = _MergedGlobals_3;
  if (!_MergedGlobals_3)
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v13 = "+[AnalyticsStoreMOHandler sharedAnalyticsStoreMOHandlerWithContainer:]";
      v14 = 1024;
      v15 = 45;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:AnalyticsStoreMOHandler failed to init", buf, 0x12u);
    }

    v5 = _MergedGlobals_3;
  }

  v7 = v5;

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __70__AnalyticsStoreMOHandler_sharedAnalyticsStoreMOHandlerWithContainer___block_invoke(uint64_t a1)
{
  _MergedGlobals_3 = [[AnalyticsStoreMOHandler alloc] initWithContainer:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (AnalyticsStoreMOHandler)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = AnalyticsStoreMOHandler;
  v6 = [(AnalyticsStoreMOHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentContainer, container);
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AnalyticsStoreMOHandler;
  [(AnalyticsStoreMOHandler *)&v4 dealloc];
}

- (id)managedObjectContext
{
  persistentContainer = [(AnalyticsStoreMOHandler *)self persistentContainer];
  viewContext = [persistentContainer viewContext];

  return viewContext;
}

- (void)performBlockOnManagedObjectContext:(id)context block:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler performBlock", "", buf, 2u);
  }

  managedObjectContext = [(AnalyticsStoreMOHandler *)self managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__AnalyticsStoreMOHandler_performBlockOnManagedObjectContext_block___block_invoke;
  v13[3] = &unk_1E830EAF0;
  v14 = contextCopy;
  v15 = blockCopy;
  v10 = contextCopy;
  v11 = blockCopy;
  [managedObjectContext performBlockAndWait:v13];

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler performBlock", "", buf, 2u);
  }
}

- (void)performBlockOnManagedObjectContextForNSData:(id)data withDate:(id)date block:(id)block
{
  dataCopy = data;
  dateCopy = date;
  blockCopy = block;
  v11 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler performBlockNSData", "", buf, 2u);
  }

  managedObjectContext = [(AnalyticsStoreMOHandler *)self managedObjectContext];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__AnalyticsStoreMOHandler_performBlockOnManagedObjectContextForNSData_withDate_block___block_invoke;
  v17[3] = &unk_1E830EB18;
  v19 = dateCopy;
  v20 = blockCopy;
  v18 = dataCopy;
  v13 = dateCopy;
  v14 = dataCopy;
  v15 = blockCopy;
  [managedObjectContext performBlockAndWait:v17];

  v16 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler performBlockNSData", "", buf, 2u);
  }
}

- (void)updateManagedObjectContextWithoutSave
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler updateManagedObjectContextWithoutSave", "", buf, 2u);
  }

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v10 = "[AnalyticsStoreMOHandler updateManagedObjectContextWithoutSave]";
    v11 = 1024;
    v12 = 122;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Attempting Update MOC without save", buf, 0x12u);
  }

  managedObjectContext = [(AnalyticsStoreMOHandler *)self managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__AnalyticsStoreMOHandler_updateManagedObjectContextWithoutSave__block_invoke;
  v8[3] = &unk_1E830D880;
  v8[4] = self;
  [managedObjectContext performBlockAndWait:v8];

  v6 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler updateManagedObjectContextWithoutSave", "", buf, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __64__AnalyticsStoreMOHandler_updateManagedObjectContextWithoutSave__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[AnalyticsStoreMOHandler updateManagedObjectContextWithoutSave]_block_invoke";
    v7 = 1024;
    v8 = 126;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Update MOC without save, calling processPendingChanges", &v5, 0x12u);
  }

  v3 = [*(a1 + 32) managedObjectContext];
  [v3 processPendingChanges];

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveManagedObjectContextWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_backgroundStoreMoHandlerMOC)
  {
    v9 = 0;
    LOBYTE(v8) = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v5))
  {
    backgroundStoreMoHandlerMOC = self->_backgroundStoreMoHandlerMOC;
    *buf = 134217984;
    v24 = backgroundStoreMoHandlerMOC;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler save", "(%p)", buf, 0xCu);
  }

  [(NSManagedObjectContext *)self->_backgroundStoreMoHandlerMOC processPendingChanges];
  if ([(NSManagedObjectContext *)self->_backgroundStoreMoHandlerMOC hasChanges])
  {
    v7 = self->_backgroundStoreMoHandlerMOC;
    v22 = 0;
    v8 = [(NSManagedObjectContext *)v7 save:&v22];
    v9 = v22;
    v10 = WALogCategoryDeviceStoreHandle();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_backgroundStoreMoHandlerMOC;
        *buf = 136446722;
        v24 = "[AnalyticsStoreMOHandler saveManagedObjectContextWithError:]";
        v25 = 1024;
        v26 = 151;
        v27 = 2048;
        v28 = v12;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Saved context(%p)", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_backgroundStoreMoHandlerMOC;
      localizedDescription = [v9 localizedDescription];
      userInfo = [v9 userInfo];
      *buf = 136447234;
      v24 = "[AnalyticsStoreMOHandler saveManagedObjectContextWithError:]";
      v25 = 1024;
      v26 = 149;
      v27 = 2048;
      v28 = v13;
      v29 = 2112;
      v30 = localizedDescription;
      v31 = 2112;
      v32 = userInfo;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error saving context(%p): %@ %@", buf, 0x30u);
    }

    v16 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v16))
    {
      v17 = self->_backgroundStoreMoHandlerMOC;
      *buf = 134218240;
      v24 = v17;
      v25 = 1024;
      v26 = v8;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler save", "(%p) success:%d", buf, 0x12u);
    }
  }

  else
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = self->_backgroundStoreMoHandlerMOC;
      *buf = 136446722;
      v24 = "[AnalyticsStoreMOHandler saveManagedObjectContextWithError:]";
      v25 = 1024;
      v26 = 144;
      v27 = 2048;
      v28 = v21;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:No changes to be saved (%p)", buf, 0x1Cu);
    }

    v9 = 0;
    LOBYTE(v8) = 0;
  }

  if (error)
  {
LABEL_13:
    v18 = v9;
    *error = v9;
  }

LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)resetManagedObjectContext
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_backgroundStoreMoHandlerMOC)
  {
    v3 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      backgroundStoreMoHandlerMOC = self->_backgroundStoreMoHandlerMOC;
      v8 = 136446722;
      v9 = "[AnalyticsStoreMOHandler resetManagedObjectContext]";
      v10 = 1024;
      v11 = 166;
      v12 = 2048;
      v13 = backgroundStoreMoHandlerMOC;
      _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:moc reset (%p)", &v8, 0x1Cu);
    }

    v5 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v5))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler resetManagedObjectContext", "", &v8, 2u);
    }

    [(NSManagedObjectContext *)self->_backgroundStoreMoHandlerMOC reset];
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v6))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsStoreMOHandler resetManagedObjectContext", "", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)releaseBackgroundMOC
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (self->_backgroundStoreMoHandlerMOC)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      backgroundStoreMoHandlerMOC = self->_backgroundStoreMoHandlerMOC;
      v7 = 136446722;
      v8 = "[AnalyticsStoreMOHandler releaseBackgroundMOC]";
      v9 = 1024;
      v10 = 177;
      v11 = 2048;
      v12 = backgroundStoreMoHandlerMOC;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:moc release (%p)", &v7, 0x1Cu);
    }

    [(AnalyticsStoreMOHandler *)self setBackgroundStoreMoHandlerMOC:0];
  }

  objc_autoreleasePoolPop(v3);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)managedObjectContextSave:(BOOL)save reset:(BOOL)reset release:(BOOL)release withError:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  backgroundStoreMoHandlerMOC = self->_backgroundStoreMoHandlerMOC;
  if (backgroundStoreMoHandlerMOC)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__AnalyticsStoreMOHandler_managedObjectContextSave_reset_release_withError___block_invoke;
    v10[3] = &unk_1E830E640;
    saveCopy = save;
    v10[4] = self;
    v10[5] = &v20;
    v10[6] = &v14;
    resetCopy = reset;
    releaseCopy = release;
    [(NSManagedObjectContext *)backgroundStoreMoHandlerMOC performBlockAndWait:v10];
  }

  if (error)
  {
    *error = v15[5];
  }

  v8 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v8;
}

void __76__AnalyticsStoreMOHandler_managedObjectContextSave_reset_release_withError___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 48) + 8);
    obj = *(v3 + 40);
    v4 = [v2 saveManagedObjectContextWithError:&obj];
    objc_storeStrong((v3 + 40), obj);
  }

  else
  {
    v4 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  if (*(a1 + 57) == 1)
  {
    [*(a1 + 32) resetManagedObjectContext];
  }

  if (*(a1 + 58) == 1)
  {
    [*(a1 + 32) releaseBackgroundMOC];
  }
}

- (void)contextDidSave:(id)save
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136446466;
    v6 = "[AnalyticsStoreMOHandler contextDidSave:]";
    v7 = 1024;
    v8 = 210;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Notification contextDidSave NSManagedObjectContextDidSaveNotification", &v5, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)setBssManagedObjectPropertyValueForKeyWithoutSave:(id)save forKey:(id)key withValue:(id)value
{
  v31 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  keyCopy = key;
  valueCopy = value;
  v11 = objc_autoreleasePoolPush();
  v12 = [BSSMO setBssManagedObjectPropertyValueForKey:saveCopy forKey:keyCopy withValue:valueCopy];
  if (v12)
  {
    [(AnalyticsStoreMOHandler *)self updateManagedObjectContextWithoutSave];
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      bssid = [saveCopy bssid];
      network = [saveCopy network];
      ssid = [network ssid];
      v19 = 136447490;
      v20 = "[AnalyticsStoreMOHandler setBssManagedObjectPropertyValueForKeyWithoutSave:forKey:withValue:]";
      v21 = 1024;
      v22 = 223;
      v23 = 2112;
      v24 = keyCopy;
      v25 = 2112;
      v26 = bssid;
      v27 = 2112;
      v28 = ssid;
      v29 = 2112;
      v30 = valueCopy;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updated BSSMO unparsedBeacon property for key:%@ for bssid:%@ ssid:%@ value:%@", &v19, 0x3Au);
    }
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446466;
      v20 = "[AnalyticsStoreMOHandler setBssManagedObjectPropertyValueForKeyWithoutSave:forKey:withValue:]";
      v21 = 1024;
      v22 = 219;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed", &v19, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v11);
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)setNetworkManagedObjectPropertyValueForKeyWithoutSave:(id)save forKey:(id)key withValue:(id)value
{
  v27 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  keyCopy = key;
  valueCopy = value;
  v11 = objc_autoreleasePoolPush();
  v12 = [NetworkMO setNetworkManagedObjectPropertyValueForKey:saveCopy forKey:keyCopy withValue:valueCopy];
  if (v12)
  {
    [(AnalyticsStoreMOHandler *)self updateManagedObjectContextWithoutSave];
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      ssid = [saveCopy ssid];
      v17 = 136447234;
      v18 = "[AnalyticsStoreMOHandler setNetworkManagedObjectPropertyValueForKeyWithoutSave:forKey:withValue:]";
      v19 = 1024;
      v20 = 237;
      v21 = 2112;
      v22 = keyCopy;
      v23 = 2112;
      v24 = ssid;
      v25 = 2112;
      v26 = valueCopy;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updated NetworkMO channels property for key:%@ ssid:%@ value:%@", &v17, 0x30u);
    }
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446466;
      v18 = "[AnalyticsStoreMOHandler setNetworkManagedObjectPropertyValueForKeyWithoutSave:forKey:withValue:]";
      v19 = 1024;
      v20 = 233;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed", &v17, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v11);
  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

@end