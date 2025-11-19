@interface PLEntry
+ (Class)classForEntryKey:(id)a3;
+ (id)entryWithEntryKey:(id)a3 withData:(id)a4;
+ (id)entryWithEntryKey:(id)a3 withRawData:(id)a4;
+ (id)summarizeAggregateEntries:(id)a3;
+ (id)summarizeAggregateEntries:(id)a3 withPrimaryKeys:(id)a4;
+ (signed)dataFormatForMetric:(id)a3 auxiliaryMetrics:(id)a4;
+ (void)load;
+ (void)registerEntry:(Class)a3;
- (BOOL)filterEntryLogging;
- (BOOL)hasAppIdentifierKeys;
- (BOOL)hasArrayKeys;
- (BOOL)hasDMAKeys;
- (BOOL)hasDynamicKeys;
- (BOOL)isKeyAggregateValue:(id)a3;
- (BOOL)isKeyDynamic:(id)a3;
- (BOOL)isPPSEnabled;
- (NSArray)DMAKeys;
- (NSArray)arrayKeys;
- (NSArray)definedKeys;
- (NSArray)dynamicKeys;
- (NSDictionary)entryDefinition;
- (NSMutableArray)allValues;
- (NSMutableArray)keys;
- (OS_dispatch_semaphore)sem;
- (PLEntry)initWithEntryDate:(id)a3;
- (PLEntry)initWithEntryKey:(id)a3;
- (PLEntry)initWithEntryKey:(id)a3 withData:(id)a4;
- (PLEntry)initWithEntryKey:(id)a3 withDate:(id)a4;
- (PLEntry)initWithEntryKey:(id)a3 withRawData:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)definitionForKey:(id)a3;
- (id)initEntryWithData:(id)a3;
- (id)initEntryWithRawData:(id)a3;
- (id)keyValuePathForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)serialized;
- (id)serializedForJSON;
- (id)subEntryKey;
- (id)unitForKey:(id)a3;
- (int)staticArraySizeForKey:(id)a3;
- (int64_t)compare:(id)a3 options:(signed __int16)a4;
- (signed)formaterForKey:(id)a3;
- (void)checkOverridesEntryDateWithNowDate:(id)a3;
- (void)loadDynamicKeys;
- (void)removeObjectForKey:(id)a3;
- (void)setDynamicObjectsFromRawData:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObjectsFromData:(id)a3;
- (void)setObjectsFromRawData:(id)a3;
- (void)setObjectsUsingMetricsFromData:(id)a3;
@end

@implementation PLEntry

- (NSDictionary)entryDefinition
{
  entryDefinition = self->_entryDefinition;
  if (!entryDefinition)
  {
    v4 = [(PLEntry *)self entryKey];
    v5 = [PLEntryDefinition definitionForEntryKey:v4];
    v6 = self->_entryDefinition;
    self->_entryDefinition = v5;

    entryDefinition = self->_entryDefinition;
  }

  return entryDefinition;
}

- (OS_dispatch_semaphore)sem
{
  if (sem_onceToken != -1)
  {
    [PLEntry sem];
  }

  dispatch_semaphore_wait(sem_masterSem, 0xFFFFFFFFFFFFFFFFLL);
  sem = self->_sem;
  if (!sem)
  {
    v4 = sem_entryKeyToSem;
    v5 = [(PLEntry *)self entryKey];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = self->_sem;
    self->_sem = v6;

    sem = self->_sem;
    if (!sem)
    {
      v8 = dispatch_semaphore_create(1);
      v9 = self->_sem;
      self->_sem = v8;

      v10 = self->_sem;
      v11 = sem_entryKeyToSem;
      v12 = [(PLEntry *)self entryKey];
      [v11 setObject:v10 forKeyedSubscript:v12];

      sem = self->_sem;
    }
  }

  v13 = sem;
  dispatch_semaphore_signal(sem_masterSem);

  return v13;
}

- (BOOL)filterEntryLogging
{
  v3 = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:v3];

  if (v4)
  {
    v5 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey filterEntryLoggingForEntryKey:v5];
  }

  else
  {
    v5 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition filterEntryLoggingForEntryDefinition:v5];
  }

  v7 = v6;

  return v7;
}

- (BOOL)hasDMAKeys
{
  v3 = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:v3];

  if (v4)
  {
    v5 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey hasDMAKeys:v5];
  }

  else
  {
    v5 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition hasDMAKeysForEntryDefinition:v5];
  }

  v7 = v6;

  return v7;
}

- (id)subEntryKey
{
  v3 = [(PLEntry *)self entryDefinition];
  v4 = [PLEntryDefinition subEntryKeyKeyForEntryDefinition:v3];

  if (v4)
  {
    v5 = [(PLEntry *)self objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasDynamicKeys
{
  v3 = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:v3];

  if (v4)
  {
    v5 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey hasDynamicKeys:v5];
  }

  else
  {
    v5 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition hasDynamicKeysForEntryDefinition:v5];
  }

  v7 = v6;

  return v7;
}

- (NSArray)DMAKeys
{
  v3 = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:v3];

  if (v4)
  {
    v5 = [(PLEntry *)self entryKey];
    [PPSEntryKey allDMAKeysForEntryKey:v5];
  }

  else
  {
    v5 = [(PLEntry *)self entryDefinition];
    [PLEntryDefinition DMAKeysForEntryDefinition:v5];
  }
  v6 = ;

  return v6;
}

- (NSMutableArray)keys
{
  v2 = [(PLEntry *)self dictionary];
  v3 = [v2 allKeys];

  return v3;
}

- (NSArray)definedKeys
{
  v3 = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:v3];

  if (v4)
  {
    v5 = [(PLEntry *)self entryKey];
    [PPSEntryKey allBaseKeysForEntryKey:v5];
  }

  else
  {
    v5 = [(PLEntry *)self entryDefinition];
    [PLEntryDefinition allKeysForEntryDefinition:v5];
  }
  v6 = ;

  return v6;
}

- (BOOL)isPPSEnabled
{
  v2 = [(PLEntry *)self entryKey];
  v3 = [PPSEntryKey PPSEnabled:v2];

  return v3;
}

- (BOOL)hasArrayKeys
{
  v3 = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:v3];

  if (v4)
  {
    v5 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey hasArrayKeys:v5];
  }

  else
  {
    v5 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition hasArrayKeysForEntryDefinition:v5];
  }

  v7 = v6;

  return v7;
}

- (void)loadDynamicKeys
{
  v4 = +[PowerlogCore sharedCore];
  v3 = [v4 storage];
  [v3 loadDynamicValuesIntoEntry:self];
}

- (NSArray)dynamicKeys
{
  v3 = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:v3];

  if (v4)
  {
    v5 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey allDynamicKeysForEntryKey:v5];
  }

  else
  {
    v7 = MEMORY[0x1E695DF70];
    v8 = [(PLEntry *)self keys];
    v6 = [v7 arrayWithArray:v8];

    v9 = [(PLEntry *)self definedKeys];
    [v6 removeObjectsInArray:v9];

    if ([v6 containsObject:@"timestampLogged"])
    {
      [v6 removeObject:@"timestampLogged"];
    }
  }

  return v6;
}

- (NSArray)arrayKeys
{
  v3 = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:v3];

  if (v4)
  {
    v5 = [(PLEntry *)self entryKey];
    [PPSEntryKey allArrayKeysForEntryKey:v5];
  }

  else
  {
    v5 = [(PLEntry *)self entryDefinition];
    [PLEntryDefinition arrayKeysForEntryDefinition:v5];
  }
  v6 = ;

  return v6;
}

- (NSMutableArray)allValues
{
  v2 = [(PLEntry *)self dictionary];
  v3 = [v2 allValues];

  return v3;
}

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [PLEntry registerEntry:v3];
  }
}

+ (void)registerEntry:(Class)a3
{
  if (registerEntry__onceToken != -1)
  {
    +[PLEntry registerEntry:];
  }

  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(PLEntry *)a3 registerEntry:v4];
  }

  v5 = _registeredEntries;
  objc_sync_enter(v5);
  [_registeredEntries addObject:a3];
  objc_sync_exit(v5);
}

uint64_t __25__PLEntry_registerEntry___block_invoke()
{
  v0 = objc_opt_new();
  _registeredEntries = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)entryWithEntryKey:(id)a3 withRawData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [PLEntry classForEntryKey:v5];
  if (v7 == objc_opt_class())
  {
    v8 = [[PLEntry alloc] initWithEntryKey:v5 withRawData:v6];
  }

  else
  {
    v8 = [[v7 alloc] initEntryWithRawData:v6];
  }

  v9 = v8;

  return v9;
}

+ (id)entryWithEntryKey:(id)a3 withData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [PLEntry classForEntryKey:v5];
  if (v7 == objc_opt_class())
  {
    v8 = [[PLEntry alloc] initWithEntryKey:v5 withData:v6];
  }

  else
  {
    v8 = [[v7 alloc] initEntryWithData:v6];
  }

  v9 = v8;

  return v9;
}

+ (Class)classForEntryKey:(id)a3
{
  v3 = a3;
  if (classForEntryKey__onceToken != -1)
  {
    +[PLEntry classForEntryKey:];
  }

  v4 = [_entryKeyToClass objectForKeyedSubscript:v3];

  if (v4)
  {
    [_entryKeyToClass objectForKeyedSubscript:v3];
  }

  else
  {
    objc_opt_class();
  }
  v5 = ;

  return v5;
}

void __28__PLEntry_classForEntryKey___block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = _entryKeyToClass;
  _entryKeyToClass = v0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = _registeredEntries;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = _entryKeyToClass;
        v9 = [v7 entryKey];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasAppIdentifierKeys
{
  v2 = [(PLEntry *)self entryDefinition];
  v3 = [PLEntryDefinition hasAppIdentifierKeysForEntryDefinition:v2];

  return v3;
}

- (void)checkOverridesEntryDateWithNowDate:(id)a3
{
  v7 = a3;
  v4 = [(PLEntry *)self entryDefinition];
  v5 = [PLEntryDefinition overridesEntryDateForEntryDefinition:v4];

  if (v5)
  {
    v6 = v7;
    if (!v7)
    {
      v6 = [MEMORY[0x1E695DF00] monotonicDate];
    }

    v7 = v6;
    [(PLEntry *)self setObject:v6 forKeyedSubscript:@"timestampLogged"];
  }
}

uint64_t __14__PLEntry_sem__block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = sem_masterSem;
  sem_masterSem = v0;

  v2 = [MEMORY[0x1E695DF90] dictionary];
  sem_entryKeyToSem = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

- (PLEntry)initWithEntryDate:(id)a3
{
  v8.receiver = self;
  v8.super_class = PLEntry;
  v3 = [(PLEntry *)&v8 init];
  if (v3)
  {
    if (initWithEntryDate__onceToken != -1)
    {
      [PLEntry initWithEntryDate:];
    }

    v4 = objc_opt_new();
    v5 = *(v3 + 2);
    *(v3 + 2) = v4;

    v6 = *(v3 + 3);
    *(v3 + 3) = 0;

    *(v3 + 6) = -1;
    *(v3 + 9) = 256;
  }

  return v3;
}

BOOL __29__PLEntry_initWithEntryDate___block_invoke()
{
  result = [PLDefaults isClassDebugEnabled:objc_opt_class()];
  PLEntryDebug = result;
  return result;
}

- (id)initEntryWithRawData:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() entryKey];
  v6 = [(PLEntry *)self initWithEntryKey:v5 withRawData:v4];

  return v6;
}

- (id)initEntryWithData:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() entryKey];
  v6 = [(PLEntry *)self initWithEntryKey:v5 withData:v4];

  return v6;
}

- (PLEntry)initWithEntryKey:(id)a3
{
  v5 = a3;
  v6 = [(PLEntry *)self init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] monotonicDate];
    entryDate = v6->_entryDate;
    v6->_entryDate = v7;

    objc_storeStrong(&v6->_entryKey, a3);
    [(PLEntry *)v6 checkOverridesEntryDateWithNowDate:v6->_entryDate];
  }

  return v6;
}

- (PLEntry)initWithEntryKey:(id)a3 withDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PLEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryDate, a4);
    objc_storeStrong(&v10->_entryKey, a3);
    [(PLEntry *)v10 checkOverridesEntryDateWithNowDate:0];
  }

  return v10;
}

- (PLEntry)initWithEntryKey:(id)a3 withRawData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PLEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryKey, a3);
    [(PLEntry *)v10 setObjectsFromRawData:v8];
    if (v10->_entryDate)
    {
      v11 = 0;
    }

    else
    {
      v12 = [MEMORY[0x1E695DF00] monotonicDate];
      entryDate = v10->_entryDate;
      v10->_entryDate = v12;

      v11 = v10->_entryDate;
    }

    [(PLEntry *)v10 checkOverridesEntryDateWithNowDate:v11];
  }

  return v10;
}

- (PLEntry)initWithEntryKey:(id)a3 withData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PLEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryKey, a3);
    [(PLEntry *)v10 setObjectsFromData:v8];
    v11 = [v8 objectForKeyedSubscript:@"ID"];
    v10->_entryID = [v11 longLongValue];

    v12 = [v8 objectForKeyedSubscript:@"timestamp"];
    if (!v12)
    {
      goto LABEL_5;
    }

    v13 = v12;
    v14 = [v8 objectForKeyedSubscript:@"timestamp"];
    v15 = [MEMORY[0x1E695DFB0] null];

    if (v14 == v15)
    {
LABEL_5:
      v20 = [(PLEntry *)v10 entryDefinition];
      v21 = [v20 objectForKeyedSubscript:@"Configs"];
      v22 = [v21 objectForKeyedSubscript:@"AllowNilTimestamp"];
      v23 = [v22 BOOLValue];

      if (v23)
      {
        entryDate = v10->_entryDate;
        v10->_entryDate = 0;
      }

      else if (+[PLDefaults debugEnabled])
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** ERROR *** missing timestamp from Database record entryKey=%@ data=%@", v7, v8];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        v27 = [v26 lastPathComponent];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry initWithEntryKey:withData:]"];
        [PLCoreStorage logMessage:v25 fromFile:v27 fromFunction:v28 fromLineNumber:275];

        v29 = PLLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    else
    {
      v16 = MEMORY[0x1E695DF00];
      v17 = [v8 objectForKeyedSubscript:@"timestamp"];
      [v17 doubleValue];
      v18 = [v16 dateWithTimeIntervalSince1970:?];
      v19 = v10->_entryDate;
      v10->_entryDate = v18;
    }

    if ([PLEntryDefinition isAggregateForEntryKey:v7])
    {
      v30 = [v8 objectForKeyedSubscript:@"timeInterval"];
      if (v30)
      {
        v31 = v30;
        v32 = [v8 objectForKeyedSubscript:@"timeInterval"];
        v33 = [MEMORY[0x1E695DFB0] null];

        if (v32 != v33)
        {
          v34 = [v8 objectForKeyedSubscript:@"timeInterval"];
          [(PLEntry *)v10 setObject:v34 forKeyedSubscript:@"timeInterval"];
        }
      }
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PLEntry *)self entryKey];
  v6 = [(PLEntry *)self entryDate];
  v7 = [v4 initWithEntryKey:v5 withDate:v6];

  v8 = [(PLEntry *)self dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __24__PLEntry_copyWithZone___block_invoke;
  v11[3] = &unk_1E8519700;
  v9 = v7;
  v12 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];

  return v9;
}

- (void)setObjectsFromRawData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [(PLEntry *)self entryDefinition];
      v6 = [v5 objectForKeyedSubscript:@"Keys"];

      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __33__PLEntry_setObjectsFromRawData___block_invoke;
      v17 = &unk_1E8519948;
      v18 = self;
      v7 = v4;
      v19 = v7;
      [v6 enumerateKeysAndObjectsUsingBlock:&v14];
      v8 = [v7 objectForKey:{@"entryDate", v14, v15, v16, v17, v18}];

      if (v8)
      {
        v9 = [v7 objectForKeyedSubscript:@"entryDate"];
        entryDate = self->_entryDate;
        self->_entryDate = v9;
      }

      else
      {
        v11 = [v7 objectForKey:@"__pl_internal_timeSensitiveSystemDate"];

        if (!v11)
        {
LABEL_8:

          goto LABEL_9;
        }

        entryDate = [v7 objectForKey:@"__pl_internal_timeSensitiveSystemDate"];
        v12 = [entryDate convertFromSystemToMonotonic];
        v13 = self->_entryDate;
        self->_entryDate = v12;
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

void __33__PLEntry_setObjectsFromRawData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"CalculatedValue"];
  if (([v6 BOOLValue] & 1) == 0)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v18];

    if (v7)
    {
      goto LABEL_16;
    }

    v8 = [v5 objectForKeyedSubscript:@"Type"];
    v9 = [v8 shortValue];

    v10 = [v5 objectForKeyedSubscript:@"KeyValuePath"];

    if (v10)
    {
      v11 = [v5 objectForKeyedSubscript:@"KeyValuePath"];
      v12 = [v11 componentsJoinedByString:@"."];

      v6 = [*(a1 + 40) valueForKeyPath:v12];
    }

    else
    {
      v6 = [*(a1 + 40) objectForKey:v18];
    }

    v13 = v18;
    if (v6 && v9 == 2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = [v5 objectForKeyedSubscript:@"isCFAbsoluteTime"];
        v15 = [v14 BOOLValue];

        v16 = MEMORY[0x1E695DF00];
        [v6 doubleValue];
        if (v15)
        {
          [v16 dateWithTimeIntervalSinceReferenceDate:?];
        }

        else
        {
          [v16 dateWithTimeIntervalSince1970:?];
        }
        v17 = ;

        v6 = v17;
      }

      v13 = v18;
    }

    [*(a1 + 32) setObject:v6 forKeyedSubscript:v13];
  }

LABEL_16:
}

- (void)setDynamicObjectsFromRawData:(id)a3
{
  v4 = a3;
  if ([(PLEntry *)self hasDynamicKeys])
  {
    v5 = [(PLEntry *)self entryDefinition];
    v6 = [v5 objectForKeyedSubscript:@"Keys"];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__PLEntry_setDynamicObjectsFromRawData___block_invoke;
    v8[3] = &unk_1E8519948;
    v9 = v6;
    v10 = self;
    v7 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __40__PLEntry_setDynamicObjectsFromRawData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];

  if (!v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *(a1 + 40);
    if (isKindOfClass)
    {
      [v8 setObjectsFromRawData:v5];
    }

    else
    {
      [v8 setObject:v5 forKeyedSubscript:v9];
    }
  }
}

- (void)setObjectsFromData:(id)a3
{
  v4 = a3;
  v5 = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey PPSEnabled:v5];

  if (v6)
  {
    [(PLEntry *)self setObjectsUsingMetricsFromData:v4];
  }

  else
  {
    v7 = [(PLEntry *)self entryDefinition];
    v8 = [v7 objectForKeyedSubscript:@"Keys"];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__PLEntry_setObjectsFromData___block_invoke;
    v9[3] = &unk_1E8519948;
    v10 = v4;
    v11 = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void __30__PLEntry_setObjectsFromData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = [a3 objectForKeyedSubscript:@"Type"];
  v6 = [v5 shortValue];

  v7 = [*(a1 + 32) objectForKey:v17];
  if (v6 == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ([v7 isNil] & 1) == 0)
    {
      v15 = MEMORY[0x1E695DF00];
      [v7 doubleValue];
      v16 = [v15 dateWithTimeIntervalSince1970:?];

      v7 = v16;
    }
  }

  else if (!v6 && [*(a1 + 40) staticArraySizeForKey:v17] >= 1 && !v7)
  {
    v7 = objc_opt_new();
    v8 = [*(a1 + 40) staticArraySizeForKey:v17];
    if (v8 >= 1)
    {
      v9 = v8;
      v10 = 0;
      do
      {
        v11 = *(a1 + 32);
        v12 = [v17 stringByAppendingFormat:@"_%d", v10];
        v13 = [v11 objectForKey:v12];

        if (v13)
        {
          [v7 addObject:v13];
        }

        else
        {
          v14 = [MEMORY[0x1E695DFB0] null];
          [v7 addObject:v14];
        }

        v10 = (v10 + 1);
      }

      while (v9 != v10);
    }
  }

  [*(a1 + 40) setObject:v7 forKeyedSubscript:v17];
}

- (void)setObjectsUsingMetricsFromData:(id)a3
{
  v4 = a3;
  v5 = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey metricsForEntryKey:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PLEntry_setObjectsUsingMetricsFromData___block_invoke;
  v8[3] = &unk_1E851B0C0;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __42__PLEntry_setObjectsUsingMetricsFromData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 datatype];
  v6 = [*(a1 + 32) objectForKey:v9];
  if (v5 == 4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ([v6 isNil] & 1) == 0)
    {
      v7 = MEMORY[0x1E695DF00];
      [v6 doubleValue];
      v8 = [v7 dateWithTimeIntervalSince1970:?];

      v6 = v8;
    }
  }

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v9];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(PLEntry *)self sem];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v8 = [(PLEntry *)self dictionary];
  [v8 setObject:v10 forKeyedSubscript:v6];

  v9 = [(PLEntry *)self sem];
  dispatch_semaphore_signal(v9);
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(PLEntry *)self sem];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = [(PLEntry *)self dictionary];
  [v6 removeObjectForKey:v4];

  v7 = [(PLEntry *)self sem];
  dispatch_semaphore_signal(v7);
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(PLEntry *)self sem];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = [(PLEntry *)self dictionary];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [MEMORY[0x1E695DFB0] null];

  if (v7 == v8)
  {

    goto LABEL_6;
  }

  if (v7)
  {
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"timestamp"])
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(PLEntry *)self entryDate];
    [v10 timeIntervalSince1970];
    v7 = [v9 numberWithDouble:?];

    goto LABEL_13;
  }

  if (![v4 isEqualToString:@"entryDate"])
  {
    if (([v4 isEqualToString:@"ID"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"entryID"))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLEntry entryID](self, "entryID")}];
      goto LABEL_12;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_13;
  }

  v11 = [(PLEntry *)self entryDate];
LABEL_12:
  v7 = v11;
LABEL_13:
  v12 = [(PLEntry *)self sem];
  dispatch_semaphore_signal(v12);

  return v7;
}

- (id)definitionForKey:(id)a3
{
  v4 = a3;
  v5 = [(PLEntry *)self entryDefinition];
  v6 = [v5 objectForKeyedSubscript:@"Keys"];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (BOOL)isKeyDynamic:(id)a3
{
  v4 = a3;
  if ([(PLEntry *)self hasDynamicKeys])
  {
    v5 = [(PLEntry *)self definitionForKey:v4];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isKeyAggregateValue:(id)a3
{
  v3 = [(PLEntry *)self definitionForKey:a3];
  v4 = [v3 objectForKeyedSubscript:@"IsAggregateValue"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"IsAggregateValue"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)unitForKey:(id)a3
{
  v3 = [(PLEntry *)self definitionForKey:a3];
  v4 = [v3 objectForKeyedSubscript:@"Unit"];

  return v4;
}

- (signed)formaterForKey:(id)a3
{
  v4 = a3;
  v5 = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey PPSEnabled:v5];

  if (v6)
  {
    v7 = [(PLEntry *)self entryKey];
    v8 = [PPSEntryKey subsystemForEntryKey:v7];

    v9 = [(PLEntry *)self entryKey];
    v10 = [PPSEntryKey categoryForEntryKey:v9];

    v11 = [MEMORY[0x1E69BDC20] getMetadataForSubsystem:v8 category:v10 name:v4];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "datatype")}];
    v13 = [PLValueUtilties formatterFromDataType:v12];
  }

  else
  {
    v14 = [(PLEntry *)self definitionForKey:v4];
    v8 = [v14 objectForKeyedSubscript:@"Type"];

    if (v8)
    {
      v13 = [v8 shortValue];
    }

    else
    {
      v13 = 0x8000;
    }
  }

  return v13;
}

+ (signed)dataFormatForMetric:(id)a3 auxiliaryMetrics:(id)a4
{
  if (!a3 || !a4)
  {
    return 0x8000;
  }

  v4 = [a4 objectForKeyedSubscript:?];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "datatype")}];
  v6 = [PLValueUtilties formatterFromDataType:v5];

  return v6;
}

- (int)staticArraySizeForKey:(id)a3
{
  v4 = a3;
  v5 = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey PPSEnabled:v5];

  if (v6)
  {
    v7 = [(PLEntry *)self entryKey];
    v8 = [PPSEntryKey subsystemForEntryKey:v7];

    v9 = [(PLEntry *)self entryKey];
    v10 = [PPSEntryKey categoryForEntryKey:v9];

    v11 = [MEMORY[0x1E69BDC20] getMetadataForSubsystem:v8 category:v10 name:v4];
    v12 = v11;
    if (v11 && [v11 auxiliaryType] == 3 && objc_msgSend(v12, "fixedArraySize"))
    {
      v13 = [v12 fixedArraySize];
    }

    else
    {
      v13 = -1;
    }

    goto LABEL_10;
  }

  if (![(PLEntry *)self formaterForKey:v4])
  {
    v15 = [(PLEntry *)self definitionForKey:v4];
    v16 = [v15 objectForKeyedSubscript:@"TypeArraySize"];

    if (v16)
    {
      v8 = [(PLEntry *)self definitionForKey:v4];
      v10 = [v8 objectForKeyedSubscript:@"TypeArraySize"];
      v13 = [v10 intValue];
LABEL_10:

      goto LABEL_11;
    }
  }

  v13 = -1;
LABEL_11:

  return v13;
}

- (id)keyValuePathForKey:(id)a3
{
  v3 = [(PLEntry *)self definitionForKey:a3];
  v4 = [v3 objectForKeyedSubscript:@"KeyValuePath"];
  v5 = [v4 componentsJoinedByString:@"."];

  return v5;
}

- (int64_t)compare:(id)a3 options:(signed __int16)a4
{
  v4 = a4;
  v214 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLEntry *)self entryDate];
  v8 = [v6 entryDate];
  v9 = [v7 compare:v8];

  p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
  v206 = v6;
  if (v4 == 2)
  {
    if (PLEntryDebug == 1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tolerance in play"];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v11 fromFile:v13 fromFunction:v14 fromLineNumber:547];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v6 = v206;
      p_superclass = (&OBJC_METACLASS___PLEntryDefinition + 8);
    }
  }

  else if (v4 == 1)
  {
    if (PLEntryDebug != 1)
    {
      goto LABEL_20;
    }

    v16 = MEMORY[0x1E696AEC0];
    v17 = [(PLEntry *)self entryDate];
    v18 = [v6 entryDate];
    v19 = [v16 stringWithFormat:@"PLEntry.compare date: self.date=%@ other.date=%@", v17, v18];

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    v21 = [v20 lastPathComponent];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    obj = v19;
    [PLCoreStorage logMessage:v19 fromFile:v21 fromFunction:v22 fromLineNumber:550];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

LABEL_18:
    p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
    goto LABEL_19;
  }

  v24 = [(PLEntry *)self keys];
  v25 = [v24 count];
  v26 = [v6 keys];
  v27 = [v26 count];

  if (v25 != v27)
  {
    if (*(p_superclass + 3928) != 1)
    {
      goto LABEL_20;
    }

    v38 = MEMORY[0x1E696AEC0];
    v39 = [(PLEntry *)self keys];
    v40 = [v39 count];
    v41 = [v6 keys];
    v42 = [v38 stringWithFormat:@"PLEntry.compare key count: self.count=%lu other.count=%lu", v40, objc_msgSend(v41, "count")];

    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    v44 = [v43 lastPathComponent];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    obj = v42;
    [PLCoreStorage logMessage:v42 fromFile:v44 fromFunction:v45 fromLineNumber:555];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v28 = [(PLEntry *)self entryKey];
  v29 = [v6 entryKey];
  v30 = [v28 caseInsensitiveCompare:v29];

  if (v30)
  {
    if (*(p_superclass + 3928) != 1)
    {
      goto LABEL_20;
    }

    v31 = MEMORY[0x1E696AEC0];
    v32 = [(PLEntry *)self entryKey];
    v33 = [v6 entryKey];
    v34 = [v31 stringWithFormat:@"PLEntry.compare key: self.key=%@ other.key=%@", v32, v33];

    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    v36 = [v35 lastPathComponent];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    obj = v34;
    [PLCoreStorage logMessage:v34 fromFile:v36 fromFunction:v37 fromLineNumber:560];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v203 = v4;
  v199 = v9;
  v209 = 0u;
  v210 = 0u;
  v207 = 0u;
  v208 = 0u;
  obj = [(PLEntry *)self keys];
  v201 = [obj countByEnumeratingWithState:&v207 objects:v213 count:16];
  if (!v201)
  {
LABEL_110:

    if (*(p_superclass + 3928) == 1)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLEntry.compare NSOrderedSame!"];
      v153 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      v154 = [v153 lastPathComponent];
      v155 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v46 fromFile:v154 fromFunction:v155 fromLineNumber:692];

      v50 = PLLogCommon();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v9 = 0;
LABEL_23:
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_24;
  }

  v53 = &selRef_cacheContent;
  v202 = *v208;
LABEL_27:
  v54 = 0;
  v200 = v53[61];
  while (1)
  {
    if (*v208 != v202)
    {
      objc_enumerationMutation(obj);
    }

    v55 = *(*(&v207 + 1) + 8 * v54);
    v56 = [(PLEntry *)self entryDefinition];
    v57 = [PLEntryDefinition keyConfigsForEntryDefinition:v56];
    v58 = [v57 objectForKeyedSubscript:v55];
    v23 = [v58 objectForKeyedSubscript:@"FilterEntryLoggingTolerances"];

    v59 = *(p_superclass + 3928);
    v61 = v203 == 2 && v23 != 0;
    if (v59 == 1 && v61)
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key=%@ toleranceDefinition=%@", v55, v23];
      v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      v64 = [v63 lastPathComponent];
      v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v62 fromFile:v64 fromFunction:v65 fromLineNumber:567];

      v66 = PLLogCommon();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v212 = v62;
        _os_log_debug_impl(&dword_1D8611000, v66, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v6 = v206;
    if (v61)
    {
      v67 = [v23 objectForKeyedSubscript:@"Ignore"];
      v68 = v67;
      if (v67 && ([v67 BOOLValue] & 1) != 0)
      {
        goto LABEL_87;
      }
    }

    v69 = [(PLEntry *)self objectForKeyedSubscript:v55];
    if (v69)
    {
    }

    else
    {
      v70 = [v206 objectForKeyedSubscript:v55];

      if (!v70)
      {
        goto LABEL_88;
      }
    }

    v71 = [v206 objectForKeyedSubscript:v55];

    if (!v71)
    {
      p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
      if (PLEntryDebug != 1)
      {
        goto LABEL_145;
      }

      v156 = MEMORY[0x1E696AEC0];
      v157 = [(PLEntry *)self objectForKeyedSubscript:v55];
      v158 = [v206 objectForKeyedSubscript:v55];
      v159 = [v156 stringWithFormat:@"PLEntry.compare(%@) nil value: self.value=%@ other.value=%@", v55, v157, v158];

      v160 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      v161 = [v160 lastPathComponent];
      v162 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v159 fromFile:v161 fromFunction:v162 fromLineNumber:579];

      v163 = PLLogCommon();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      goto LABEL_122;
    }

    v72 = [(PLEntry *)self objectForKeyedSubscript:v55];
    v73 = [v206 objectForKeyedSubscript:v55];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
      if (PLEntryDebug != 1)
      {
        goto LABEL_145;
      }

      v164 = MEMORY[0x1E696AEC0];
      v165 = [(PLEntry *)self objectForKeyedSubscript:v55];
      v166 = objc_opt_class();
      v167 = NSStringFromClass(v166);
      v168 = [v206 objectForKeyedSubscript:v55];
      v169 = objc_opt_class();
      v170 = NSStringFromClass(v169);
      v159 = [v164 stringWithFormat:@"PLEntry.compare(%@) class value: self.value.class=%@ other.value.class=%@", v55, v167, v170];

      v171 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      v172 = [v171 lastPathComponent];
      v173 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v159 fromFile:v172 fromFunction:v173 fromLineNumber:584];

      v163 = PLLogCommon();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v6 = v206;
LABEL_122:
      v9 = v199;
LABEL_138:

      goto LABEL_19;
    }

    v75 = [(PLEntry *)self objectForKeyedSubscript:v55];
    if (v61)
    {
      objc_opt_class();
      v76 = objc_opt_isKindOfClass();

      v77 = [(PLEntry *)self objectForKeyedSubscript:v55];
      v78 = v77;
      if (v76)
      {
        [v77 doubleValue];
        v80 = v79;

        v81 = [v206 objectForKeyedSubscript:v55];
        [v81 doubleValue];
        v83 = v82;
        p_superclass = (&OBJC_METACLASS___PLEntryDefinition + 8);
      }

      else
      {
        objc_opt_class();
        v89 = objc_opt_isKindOfClass();

        p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
        if ((v89 & 1) == 0)
        {
          if (PLEntryDebug != 1)
          {
            goto LABEL_88;
          }

          v123 = MEMORY[0x1E696AEC0];
          v124 = [(PLEntry *)self objectForKeyedSubscript:v55];
          v125 = objc_opt_class();
          v126 = NSStringFromClass(v125);
          v68 = [v123 stringWithFormat:@"bailing on class %@", v126];

          v127 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          v128 = [v127 lastPathComponent];
          v129 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v68 fromFile:v128 fromFunction:v129 fromLineNumber:603];

          v122 = PLLogCommon();
          if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_86;
          }

LABEL_99:
          *buf = 138412290;
          v212 = v68;
          _os_log_debug_impl(&dword_1D8611000, v122, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_86;
        }

        v90 = [(PLEntry *)self objectForKeyedSubscript:v55];
        [v90 timeIntervalSince1970];
        v80 = v91;

        v81 = [v206 objectForKeyedSubscript:v55];
        [v81 timeIntervalSince1970];
        v83 = v92;
      }

      v93 = [v23 objectForKeyedSubscript:@"SpecialCase"];

      if (v93)
      {
        v94 = [v23 objectForKeyedSubscript:@"SpecialCase"];
        [v94 doubleValue];
        v96 = v95;

        if (*(p_superclass + 3928) == 1)
        {
          v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"specialCase! specialCase=%f thisValue=%f otherValue=%f", *&v96, *&v80, *&v83];
          v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          v99 = [v98 lastPathComponent];
          v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v97 fromFile:v99 fromFunction:v100 fromLineNumber:608];

          v101 = PLLogCommon();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v97;
            _os_log_debug_impl(&dword_1D8611000, v101, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v6 = v206;
        }

        v102 = v83 == v96 || v80 == v96;
        if (v102 && v80 != v83)
        {
          if (*(p_superclass + 3928) != 1)
          {
            goto LABEL_145;
          }

          v159 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hit specialCase!"];
          v196 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          v197 = [v196 lastPathComponent];
          v198 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v159 fromFile:v197 fromFunction:v198 fromLineNumber:610];

          v163 = PLLogCommon();
          v9 = v199;
          if (!os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_138;
          }

          goto LABEL_141;
        }
      }

      v103 = [v23 objectForKeyedSubscript:@"ChangeBy"];

      if (v103)
      {
        v104 = [v23 objectForKeyedSubscript:@"ChangeBy"];
        [v104 doubleValue];
        v106 = v105;

        v107 = v80 - v106;
LABEL_72:
        v108 = v80 + v106;
        goto LABEL_75;
      }

      v109 = [v23 objectForKeyedSubscript:@"ChangePercent"];

      if (v109)
      {
        v110 = [v23 objectForKeyedSubscript:@"ChangePercent"];
        [v110 doubleValue];
        v112 = v111;

        v107 = v80 - v112 * v80;
        v108 = v80 + v112 * v80;
        goto LABEL_75;
      }

      v130 = [v23 objectForKeyedSubscript:@"ChangeByUpper"];
      if (v130)
      {

LABEL_93:
        v132 = [v23 objectForKeyedSubscript:@"ChangeByLower"];

        v107 = v80;
        if (v132)
        {
          v133 = [v23 objectForKeyedSubscript:@"ChangeByLower"];
          [v133 doubleValue];
          v135 = v134;

          v107 = v80 - v135;
        }

        v136 = [v23 objectForKeyedSubscript:@"ChangeByUpper"];

        if (v136)
        {
          v137 = [v23 objectForKeyedSubscript:@"ChangeByUpper"];
          [v137 doubleValue];
          v106 = v138;

          goto LABEL_72;
        }

LABEL_105:
        v108 = v80;
        goto LABEL_75;
      }

      v131 = [v23 objectForKeyedSubscript:@"ChangeByLower"];

      if (v131)
      {
        goto LABEL_93;
      }

      v139 = [v23 objectForKeyedSubscript:@"ChangePercentUpper"];
      if (v139)
      {

LABEL_101:
        v141 = [v23 objectForKeyedSubscript:@"ChangePercentLower"];

        v107 = v80;
        if (v141)
        {
          v142 = [v23 objectForKeyedSubscript:@"ChangePercentLower"];
          [v142 doubleValue];
          v144 = v143;

          v107 = v80 - v80 * v144;
        }

        v145 = [v23 objectForKeyedSubscript:@"ChangePercentUpper"];

        if (!v145)
        {
          goto LABEL_105;
        }

        v146 = [v23 objectForKeyedSubscript:@"ChangePercentUpper"];
        [v146 doubleValue];
        v148 = v147;

        v108 = v80 + v80 * v148;
LABEL_75:
        if (*(p_superclass + 3928) == 1)
        {
          v113 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key=%@ thisValue=%f otherValue=%f lowerBound=%f upperBound=%f", v55, *&v80, *&v83, *&v107, *&v108];
          v114 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          v115 = [v114 lastPathComponent];
          v116 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v113 fromFile:v115 fromFunction:v116 fromLineNumber:661];

          v117 = PLLogCommon();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v113;
            _os_log_debug_impl(&dword_1D8611000, v117, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v6 = v206;
        }

        v118 = *(p_superclass + 3928);
        if (v107 <= v83 && v83 <= v108)
        {
          if (!*(p_superclass + 3928))
          {
            goto LABEL_88;
          }

          v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inside tolerance"];
          v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          v120 = [v119 lastPathComponent];
          v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v68 fromFile:v120 fromFunction:v121 fromLineNumber:663];

          v122 = PLLogCommon();
          if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_86;
          }

          goto LABEL_99;
        }

        if (!*(p_superclass + 3928))
        {
          goto LABEL_145;
        }

        v159 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outside tolerance"];
        v193 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        v194 = [v193 lastPathComponent];
        v195 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
        [PLCoreStorage logMessage:v159 fromFile:v194 fromFunction:v195 fromLineNumber:666];

        v163 = PLLogCommon();
        v9 = v199;
        if (!os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_138;
        }

LABEL_141:
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        goto LABEL_138;
      }

      v140 = [v23 objectForKeyedSubscript:@"ChangePercentLower"];

      if (v140)
      {
        goto LABEL_101;
      }

      if (*(p_superclass + 3928) == 1)
      {
        v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bailing on no matched tolerance..."];
        v149 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        v150 = [v149 lastPathComponent];
        v151 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
        [PLCoreStorage logMessage:v68 fromFile:v150 fromFunction:v151 fromLineNumber:657];

        v122 = PLLogCommon();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_99;
        }

LABEL_86:
        v6 = v206;

LABEL_87:
        goto LABEL_88;
      }

      goto LABEL_88;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {

LABEL_124:
      p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
      if (PLEntryDebug != 1)
      {
        goto LABEL_145;
      }

      v174 = MEMORY[0x1E696AEC0];
      v175 = [(PLEntry *)self objectForKeyedSubscript:v55];
      if (objc_opt_respondsToSelector())
      {
        v176 = @"YES";
      }

      else
      {
        v176 = @"NO";
      }

      v177 = [v206 objectForKeyedSubscript:v55];
      if (objc_opt_respondsToSelector())
      {
        v178 = @"YES";
      }

      else
      {
        v178 = @"NO";
      }

      v159 = [v174 stringWithFormat:@"PLEntry.compare(%@) respondsToSelector: self.respondsToSelector=%@ other.respondsToSelector=%@", v55, v176, v178];

      v179 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      v180 = [v179 lastPathComponent];
      v181 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v159 fromFile:v180 fromFunction:v181 fromLineNumber:681];

      v163 = PLLogCommon();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

LABEL_137:
      v9 = v199;
      p_superclass = (&OBJC_METACLASS___PLEntryDefinition + 8);
      goto LABEL_138;
    }

    v84 = [v206 objectForKeyedSubscript:v55];
    v85 = objc_opt_respondsToSelector();

    if ((v85 & 1) == 0)
    {
      goto LABEL_124;
    }

    v86 = [(PLEntry *)self objectForKeyedSubscript:v55];
    v87 = [v206 objectForKeyedSubscript:v55];
    v88 = [v86 compare:v87];

    if (v88)
    {
      break;
    }

LABEL_88:

    ++v54;
    p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
    if (v201 == v54)
    {
      v152 = [obj countByEnumeratingWithState:&v207 objects:v213 count:16];
      v201 = v152;
      v53 = &selRef_cacheContent;
      if (!v152)
      {
        goto LABEL_110;
      }

      goto LABEL_27;
    }
  }

  p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
  if (PLEntryDebug == 1)
  {
    v204 = MEMORY[0x1E696AEC0];
    v182 = [(PLEntry *)self objectForKeyedSubscript:v55];
    v183 = objc_opt_class();
    v184 = NSStringFromClass(v183);
    v185 = [(PLEntry *)self objectForKeyedSubscript:v55];
    v186 = [v206 objectForKeyedSubscript:v55];
    v187 = objc_opt_class();
    v188 = NSStringFromClass(v187);
    v189 = [v206 objectForKeyedSubscript:v55];
    v159 = [v204 stringWithFormat:@"PLEntry.compare(%@) value: self.value(%@)=%@ other.value(%@)=%@", v55, v184, v185, v188, v189];

    v190 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    v191 = [v190 lastPathComponent];
    v192 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    [PLCoreStorage logMessage:v159 fromFile:v191 fromFunction:v192 fromLineNumber:673];

    v163 = PLLogCommon();
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

    v6 = v206;
    goto LABEL_137;
  }

LABEL_145:
  v9 = v199;
LABEL_19:

LABEL_20:
  if (*(p_superclass + 3928) == 1)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLEntry.compare notSame"];
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    v48 = [v47 lastPathComponent];
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    [PLCoreStorage logMessage:v46 fromFile:v48 fromFunction:v49 fromLineNumber:689];

    v50 = PLLogCommon();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

    goto LABEL_23;
  }

LABEL_24:

  v51 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL __42__PLEntry_descriptionRespectingAllowlist___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  descriptionRespectingAllowlist__classDebugEnabled = result;
  return result;
}

- (id)serialized
{
  v3 = objc_opt_new();
  v4 = [(PLEntry *)self dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __21__PLEntry_serialized__block_invoke;
  v10[3] = &unk_1E8519700;
  v5 = v3;
  v11 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  v6 = [(PLEntry *)self entryDate];

  if (v6)
  {
    [(PLEntry *)self entryDate];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v7 = ;
  [v5 setObject:v7 forKeyedSubscript:@"timestamp"];

  v8 = [(PLEntry *)self entryKey];
  [v5 setObject:v8 forKeyedSubscript:@"EntryKey"];

  return v5;
}

void __21__PLEntry_serialized__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v5 isNil] & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)serializedForJSON
{
  v3 = [(PLEntry *)self dictionary];
  v4 = [PLUtilities JSONSanitizeDictionary:v3];
  v5 = [v4 mutableCopy];

  v6 = MEMORY[0x1E696AD98];
  v7 = [(PLEntry *)self entryDate];
  [v7 timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  [v5 setObject:v8 forKeyedSubscript:@"timestamp"];

  return v5;
}

+ (id)summarizeAggregateEntries:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 entryDefinition];
    v6 = [v5 objectForKeyedSubscript:@"AggregateKeys"];

    v7 = [v3 objectAtIndexedSubscript:0];
    v8 = [v7 definedKeys];
    v9 = [v8 arrayByRemovingObjectsFromArray:v6];

    v10 = [PLEntry summarizeAggregateEntries:v3 withPrimaryKeys:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)summarizeAggregateEntries:(id)a3 withPrimaryKeys:(id)a4
{
  v133 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v90 = v5;
  v7 = [v5 count];
  v104 = 0;
  if (v6 && v7)
  {
    if ([v6 count])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__PLEntry_summarizeAggregateEntries_withPrimaryKeys___block_invoke;
      block[3] = &unk_1E8519630;
      v125 = @"sumarizeAggregate";
      v126 = v8;
      if (summarizeAggregateEntries_withPrimaryKeys__defaultOnce != -1)
      {
        dispatch_once(&summarizeAggregateEntries_withPrimaryKeys__defaultOnce, block);
      }

      v9 = summarizeAggregateEntries_withPrimaryKeys__classDebugEnabled;

      v10 = objc_opt_new();
      v98 = objc_opt_new();
      v11 = [v5 objectAtIndexedSubscript:0];
      v12 = [v11 entryDefinition];
      v93 = [v12 objectForKeyedSubscript:@"AggregateKeys"];

      v101 = objc_opt_new();
      if (v9 == 1)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"primaryKeys=%@\naggregateKeys=%@", v6, v93];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        v15 = [v14 lastPathComponent];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
        [PLCoreStorage logMessage:v13 fromFile:v15 fromFunction:v16 fromLineNumber:803];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      obj = v90;
      v91 = v10;
      v92 = v6;
      v96 = [obj countByEnumeratingWithState:&v120 objects:v132 count:16];
      if (v96)
      {
        v95 = *v121;
        v99 = v9;
        do
        {
          v18 = 0;
          do
          {
            if (*v121 != v95)
            {
              objc_enumerationMutation(obj);
            }

            v97 = v18;
            v103 = *(*(&v120 + 1) + 8 * v18);
            v19 = v10;
            if (v9)
            {
              v100 = objc_opt_new();
              if (![v6 count])
              {
                v20 = v19;
                v105 = 0;
LABEL_40:
                v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"aggregating... for %@", v100];
                v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
                v42 = [v41 lastPathComponent];
                v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
                [PLCoreStorage logMessage:v40 fromFile:v42 fromFunction:v43 fromLineNumber:842];

                v44 = PLLogCommon();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v131 = v40;
                  _os_log_debug_impl(&dword_1D8611000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v19 = v20;
                if (v105)
                {
                  v9 = v99;
LABEL_46:
                  v118 = 0u;
                  v119 = 0u;
                  v116 = 0u;
                  v117 = 0u;
                  v102 = v93;
                  v45 = [v102 countByEnumeratingWithState:&v116 objects:v129 count:16];
                  if (!v45)
                  {
                    goto LABEL_68;
                  }

                  v46 = v45;
                  v94 = v19;
                  v47 = *v117;
                  v48 = v103;
                  while (2)
                  {
                    v49 = 0;
LABEL_49:
                    if (*v117 != v47)
                    {
                      objc_enumerationMutation(v102);
                    }

                    v50 = *(*(&v116 + 1) + 8 * v49);
                    v51 = [v48 definitionForKey:v50];
                    v52 = [v51 objectForKeyedSubscript:@"AggregateFunction"];
                    v53 = [v52 shortValue];

                    if (v53 <= 1)
                    {
                      v54 = MEMORY[0x1E696AD98];
                      v55 = [v105 objectForKeyedSubscript:v50];
                      [v55 doubleValue];
                      v57 = v56;
                      v58 = [v48 objectForKeyedSubscript:v50];
                      [v58 doubleValue];
                      v60 = [v54 numberWithDouble:v57 + v59];
                      [v105 setObject:v60 forKeyedSubscript:v50];

                      v48 = v103;
                      if (v53 == 1)
                      {
                        [v101 addObject:v50];
                      }

LABEL_58:

                      if (v46 == ++v49)
                      {
                        v68 = [v102 countByEnumeratingWithState:&v116 objects:v129 count:16];
                        v46 = v68;
                        if (!v68)
                        {
                          v10 = v91;
                          v6 = v92;
                          v9 = v99;
                          v19 = v94;
                          goto LABEL_68;
                        }

                        continue;
                      }

                      goto LABEL_49;
                    }

                    break;
                  }

                  if (v53 == 3)
                  {
                    v65 = [v105 objectForKeyedSubscript:v50];
                    v66 = [v48 objectForKeyedSubscript:v50];
                    v67 = [v65 compare:v66];

                    if (v67 != -1)
                    {
                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    if (v53 != 2)
                    {
                      goto LABEL_58;
                    }

                    v61 = [v105 objectForKeyedSubscript:v50];
                    v62 = [v48 objectForKeyedSubscript:v50];
                    v63 = [v61 compare:v62];

                    if (v63 != 1)
                    {
                      goto LABEL_58;
                    }
                  }

                  v64 = [v48 objectForKeyedSubscript:v50];
                  [v105 setObject:v64 forKeyedSubscript:v50];

                  goto LABEL_58;
                }

                v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"We should not be here!"];
                v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
                v71 = [v70 lastPathComponent];
                v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
                v102 = v69;
                [PLCoreStorage logMessage:v69 fromFile:v71 fromFunction:v72 fromLineNumber:864];

                v39 = PLLogCommon();
                v9 = v99;
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v131 = v69;
                  _os_log_debug_impl(&dword_1D8611000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v105 = 0;
LABEL_67:

LABEL_68:
                goto LABEL_69;
              }
            }

            else
            {
              v100 = 0;
              if (![v6 count])
              {
                v105 = 0;
                goto LABEL_69;
              }
            }

            v21 = 0;
            v105 = 0;
            v22 = 0;
            do
            {
              v23 = [v6 objectAtIndexedSubscript:v21];
              v24 = [v103 objectForKeyedSubscript:v23];

              if (v9)
              {
                v25 = [v6 objectAtIndexedSubscript:v21];
                [v100 setObject:v24 forKeyedSubscript:v25];
              }

              v26 = [v19 objectForKeyedSubscript:v24];

              if (!v26)
              {
                if (v21 == [v6 count] - 1)
                {
                  v27 = [v103 copy];
                  [v27 entryKey];
                  v29 = v28 = v19;
                  v30 = [PLEntryKey baseEntryKeyForEntryKey:v29];
                  [v27 setEntryKey:v30];

                  v19 = v28;
                  v9 = v99;
                  [v28 setObject:v27 forKeyedSubscript:v24];
                  [v98 addObject:v27];
                  v22 = 1;
                }

                else
                {
                  v27 = objc_opt_new();
                  [v19 setObject:v27 forKeyedSubscript:v24];
                }
              }

              v31 = [v6 count] - 1;
              v32 = [v19 objectForKeyedSubscript:v24];
              v33 = v105;
              if (v21 == v31)
              {
                v34 = v105;
              }

              else
              {
                v34 = v19;
              }

              if (v21 == v31)
              {
                v33 = v32;
              }

              else
              {
                v19 = v32;
              }

              v105 = v33;

              ++v21;
            }

            while ([v6 count] > v21);
            if (v22)
            {
              if (!v9)
              {
                goto LABEL_69;
              }

              v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"first hit for %@", v100];
              v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
              v37 = [v36 lastPathComponent];
              v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
              v102 = v35;
              [PLCoreStorage logMessage:v35 fromFile:v37 fromFunction:v38 fromLineNumber:838];

              v39 = PLLogCommon();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v131 = v35;
                _os_log_debug_impl(&dword_1D8611000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              goto LABEL_67;
            }

            if (v9)
            {
              v20 = v19;
              goto LABEL_40;
            }

            if (v105)
            {
              goto LABEL_46;
            }

            v105 = 0;
LABEL_69:

            v18 = v97 + 1;
          }

          while (v97 + 1 != v96);
          v73 = [obj countByEnumeratingWithState:&v120 objects:v132 count:16];
          v96 = v73;
        }

        while (v73);
      }

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v104 = v98;
      v74 = [v104 countByEnumeratingWithState:&v112 objects:v128 count:16];
      if (v74)
      {
        v75 = v74;
        v106 = *v113;
        do
        {
          for (i = 0; i != v75; ++i)
          {
            if (*v113 != v106)
            {
              objc_enumerationMutation(v104);
            }

            v77 = *(*(&v112 + 1) + 8 * i);
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v78 = v101;
            v79 = [v78 countByEnumeratingWithState:&v108 objects:v127 count:16];
            if (v79)
            {
              v80 = v79;
              v81 = *v109;
              do
              {
                for (j = 0; j != v80; ++j)
                {
                  if (*v109 != v81)
                  {
                    objc_enumerationMutation(v78);
                  }

                  v83 = *(*(&v108 + 1) + 8 * j);
                  v84 = MEMORY[0x1E696AD98];
                  v85 = [v77 objectForKeyedSubscript:v83];
                  [v85 doubleValue];
                  v87 = [v84 numberWithDouble:{v86 / objc_msgSend(obj, "count")}];
                  [v77 setObject:v87 forKeyedSubscript:v83];
                }

                v80 = [v78 countByEnumeratingWithState:&v108 objects:v127 count:16];
              }

              while (v80);
            }
          }

          v75 = [v104 countByEnumeratingWithState:&v112 objects:v128 count:16];
        }

        while (v75);
      }

      v6 = v92;
    }

    else
    {
      v104 = 0;
    }
  }

  v88 = *MEMORY[0x1E69E9840];

  return v104;
}

BOOL __53__PLEntry_summarizeAggregateEntries_withPrimaryKeys___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  summarizeAggregateEntries_withPrimaryKeys__classDebugEnabled = result;
  return result;
}

+ (void)registerEntry:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 superclass];
  OUTLINED_FUNCTION_2();
  v8 = 2112;
  v9 = a1;
  v5 = v4;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "%@ %@ registered", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end