@interface PLEntry
+ (Class)classForEntryKey:(id)key;
+ (id)entryWithEntryKey:(id)key withData:(id)data;
+ (id)entryWithEntryKey:(id)key withRawData:(id)data;
+ (id)summarizeAggregateEntries:(id)entries;
+ (id)summarizeAggregateEntries:(id)entries withPrimaryKeys:(id)keys;
+ (signed)dataFormatForMetric:(id)metric auxiliaryMetrics:(id)metrics;
+ (void)load;
+ (void)registerEntry:(Class)entry;
- (BOOL)filterEntryLogging;
- (BOOL)hasAppIdentifierKeys;
- (BOOL)hasArrayKeys;
- (BOOL)hasDMAKeys;
- (BOOL)hasDynamicKeys;
- (BOOL)isKeyAggregateValue:(id)value;
- (BOOL)isKeyDynamic:(id)dynamic;
- (BOOL)isPPSEnabled;
- (NSArray)DMAKeys;
- (NSArray)arrayKeys;
- (NSArray)definedKeys;
- (NSArray)dynamicKeys;
- (NSDictionary)entryDefinition;
- (NSMutableArray)allValues;
- (NSMutableArray)keys;
- (OS_dispatch_semaphore)sem;
- (PLEntry)initWithEntryDate:(id)date;
- (PLEntry)initWithEntryKey:(id)key;
- (PLEntry)initWithEntryKey:(id)key withData:(id)data;
- (PLEntry)initWithEntryKey:(id)key withDate:(id)date;
- (PLEntry)initWithEntryKey:(id)key withRawData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)definitionForKey:(id)key;
- (id)initEntryWithData:(id)data;
- (id)initEntryWithRawData:(id)data;
- (id)keyValuePathForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)serialized;
- (id)serializedForJSON;
- (id)subEntryKey;
- (id)unitForKey:(id)key;
- (int)staticArraySizeForKey:(id)key;
- (int64_t)compare:(id)compare options:(signed __int16)options;
- (signed)formaterForKey:(id)key;
- (void)checkOverridesEntryDateWithNowDate:(id)date;
- (void)loadDynamicKeys;
- (void)removeObjectForKey:(id)key;
- (void)setDynamicObjectsFromRawData:(id)data;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObjectsFromData:(id)data;
- (void)setObjectsFromRawData:(id)data;
- (void)setObjectsUsingMetricsFromData:(id)data;
@end

@implementation PLEntry

- (NSDictionary)entryDefinition
{
  entryDefinition = self->_entryDefinition;
  if (!entryDefinition)
  {
    entryKey = [(PLEntry *)self entryKey];
    v5 = [PLEntryDefinition definitionForEntryKey:entryKey];
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
    entryKey = [(PLEntry *)self entryKey];
    v6 = [v4 objectForKeyedSubscript:entryKey];
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
      entryKey2 = [(PLEntry *)self entryKey];
      [v11 setObject:v10 forKeyedSubscript:entryKey2];

      sem = self->_sem;
    }
  }

  v13 = sem;
  dispatch_semaphore_signal(sem_masterSem);

  return v13;
}

- (BOOL)filterEntryLogging
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey filterEntryLoggingForEntryKey:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition filterEntryLoggingForEntryDefinition:entryKey2];
  }

  v7 = v6;

  return v7;
}

- (BOOL)hasDMAKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey hasDMAKeys:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition hasDMAKeysForEntryDefinition:entryKey2];
  }

  v7 = v6;

  return v7;
}

- (id)subEntryKey
{
  entryDefinition = [(PLEntry *)self entryDefinition];
  v4 = [PLEntryDefinition subEntryKeyKeyForEntryDefinition:entryDefinition];

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
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey hasDynamicKeys:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition hasDynamicKeysForEntryDefinition:entryKey2];
  }

  v7 = v6;

  return v7;
}

- (NSArray)DMAKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    [PPSEntryKey allDMAKeysForEntryKey:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    [PLEntryDefinition DMAKeysForEntryDefinition:entryKey2];
  }
  v6 = ;

  return v6;
}

- (NSMutableArray)keys
{
  dictionary = [(PLEntry *)self dictionary];
  allKeys = [dictionary allKeys];

  return allKeys;
}

- (NSArray)definedKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    [PPSEntryKey allBaseKeysForEntryKey:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    [PLEntryDefinition allKeysForEntryDefinition:entryKey2];
  }
  v6 = ;

  return v6;
}

- (BOOL)isPPSEnabled
{
  entryKey = [(PLEntry *)self entryKey];
  v3 = [PPSEntryKey PPSEnabled:entryKey];

  return v3;
}

- (BOOL)hasArrayKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey hasArrayKeys:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition hasArrayKeysForEntryDefinition:entryKey2];
  }

  v7 = v6;

  return v7;
}

- (void)loadDynamicKeys
{
  v4 = +[PowerlogCore sharedCore];
  storage = [v4 storage];
  [storage loadDynamicValuesIntoEntry:self];
}

- (NSArray)dynamicKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey allDynamicKeysForEntryKey:entryKey2];
  }

  else
  {
    v7 = MEMORY[0x1E695DF70];
    keys = [(PLEntry *)self keys];
    v6 = [v7 arrayWithArray:keys];

    definedKeys = [(PLEntry *)self definedKeys];
    [v6 removeObjectsInArray:definedKeys];

    if ([v6 containsObject:@"timestampLogged"])
    {
      [v6 removeObject:@"timestampLogged"];
    }
  }

  return v6;
}

- (NSArray)arrayKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    [PPSEntryKey allArrayKeysForEntryKey:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    [PLEntryDefinition arrayKeysForEntryDefinition:entryKey2];
  }
  v6 = ;

  return v6;
}

- (NSMutableArray)allValues
{
  dictionary = [(PLEntry *)self dictionary];
  allValues = [dictionary allValues];

  return allValues;
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

+ (void)registerEntry:(Class)entry
{
  if (registerEntry__onceToken != -1)
  {
    +[PLEntry registerEntry:];
  }

  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(PLEntry *)entry registerEntry:v4];
  }

  v5 = _registeredEntries;
  objc_sync_enter(v5);
  [_registeredEntries addObject:entry];
  objc_sync_exit(v5);
}

uint64_t __25__PLEntry_registerEntry___block_invoke()
{
  v0 = objc_opt_new();
  _registeredEntries = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)entryWithEntryKey:(id)key withRawData:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v7 = [PLEntry classForEntryKey:keyCopy];
  if (v7 == objc_opt_class())
  {
    v8 = [[PLEntry alloc] initWithEntryKey:keyCopy withRawData:dataCopy];
  }

  else
  {
    v8 = [[v7 alloc] initEntryWithRawData:dataCopy];
  }

  v9 = v8;

  return v9;
}

+ (id)entryWithEntryKey:(id)key withData:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v7 = [PLEntry classForEntryKey:keyCopy];
  if (v7 == objc_opt_class())
  {
    v8 = [[PLEntry alloc] initWithEntryKey:keyCopy withData:dataCopy];
  }

  else
  {
    v8 = [[v7 alloc] initEntryWithData:dataCopy];
  }

  v9 = v8;

  return v9;
}

+ (Class)classForEntryKey:(id)key
{
  keyCopy = key;
  if (classForEntryKey__onceToken != -1)
  {
    +[PLEntry classForEntryKey:];
  }

  v4 = [_entryKeyToClass objectForKeyedSubscript:keyCopy];

  if (v4)
  {
    [_entryKeyToClass objectForKeyedSubscript:keyCopy];
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
  entryDefinition = [(PLEntry *)self entryDefinition];
  v3 = [PLEntryDefinition hasAppIdentifierKeysForEntryDefinition:entryDefinition];

  return v3;
}

- (void)checkOverridesEntryDateWithNowDate:(id)date
{
  dateCopy = date;
  entryDefinition = [(PLEntry *)self entryDefinition];
  v5 = [PLEntryDefinition overridesEntryDateForEntryDefinition:entryDefinition];

  if (v5)
  {
    monotonicDate = dateCopy;
    if (!dateCopy)
    {
      monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    }

    dateCopy = monotonicDate;
    [(PLEntry *)self setObject:monotonicDate forKeyedSubscript:@"timestampLogged"];
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

- (PLEntry)initWithEntryDate:(id)date
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

- (id)initEntryWithRawData:(id)data
{
  dataCopy = data;
  entryKey = [objc_opt_class() entryKey];
  v6 = [(PLEntry *)self initWithEntryKey:entryKey withRawData:dataCopy];

  return v6;
}

- (id)initEntryWithData:(id)data
{
  dataCopy = data;
  entryKey = [objc_opt_class() entryKey];
  v6 = [(PLEntry *)self initWithEntryKey:entryKey withData:dataCopy];

  return v6;
}

- (PLEntry)initWithEntryKey:(id)key
{
  keyCopy = key;
  v6 = [(PLEntry *)self init];
  if (v6)
  {
    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    entryDate = v6->_entryDate;
    v6->_entryDate = monotonicDate;

    objc_storeStrong(&v6->_entryKey, key);
    [(PLEntry *)v6 checkOverridesEntryDateWithNowDate:v6->_entryDate];
  }

  return v6;
}

- (PLEntry)initWithEntryKey:(id)key withDate:(id)date
{
  keyCopy = key;
  dateCopy = date;
  v9 = [(PLEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryDate, date);
    objc_storeStrong(&v10->_entryKey, key);
    [(PLEntry *)v10 checkOverridesEntryDateWithNowDate:0];
  }

  return v10;
}

- (PLEntry)initWithEntryKey:(id)key withRawData:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v9 = [(PLEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryKey, key);
    [(PLEntry *)v10 setObjectsFromRawData:dataCopy];
    if (v10->_entryDate)
    {
      v11 = 0;
    }

    else
    {
      monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
      entryDate = v10->_entryDate;
      v10->_entryDate = monotonicDate;

      v11 = v10->_entryDate;
    }

    [(PLEntry *)v10 checkOverridesEntryDateWithNowDate:v11];
  }

  return v10;
}

- (PLEntry)initWithEntryKey:(id)key withData:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v9 = [(PLEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryKey, key);
    [(PLEntry *)v10 setObjectsFromData:dataCopy];
    v11 = [dataCopy objectForKeyedSubscript:@"ID"];
    v10->_entryID = [v11 longLongValue];

    v12 = [dataCopy objectForKeyedSubscript:@"timestamp"];
    if (!v12)
    {
      goto LABEL_5;
    }

    v13 = v12;
    v14 = [dataCopy objectForKeyedSubscript:@"timestamp"];
    null = [MEMORY[0x1E695DFB0] null];

    if (v14 == null)
    {
LABEL_5:
      entryDefinition = [(PLEntry *)v10 entryDefinition];
      v21 = [entryDefinition objectForKeyedSubscript:@"Configs"];
      v22 = [v21 objectForKeyedSubscript:@"AllowNilTimestamp"];
      bOOLValue = [v22 BOOLValue];

      if (bOOLValue)
      {
        entryDate = v10->_entryDate;
        v10->_entryDate = 0;
      }

      else if (+[PLDefaults debugEnabled])
      {
        dataCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** ERROR *** missing timestamp from Database record entryKey=%@ data=%@", keyCopy, dataCopy];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        lastPathComponent = [v26 lastPathComponent];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry initWithEntryKey:withData:]"];
        [PLCoreStorage logMessage:dataCopy fromFile:lastPathComponent fromFunction:v28 fromLineNumber:275];

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
      v17 = [dataCopy objectForKeyedSubscript:@"timestamp"];
      [v17 doubleValue];
      v18 = [v16 dateWithTimeIntervalSince1970:?];
      v19 = v10->_entryDate;
      v10->_entryDate = v18;
    }

    if ([PLEntryDefinition isAggregateForEntryKey:keyCopy])
    {
      v30 = [dataCopy objectForKeyedSubscript:@"timeInterval"];
      if (v30)
      {
        v31 = v30;
        v32 = [dataCopy objectForKeyedSubscript:@"timeInterval"];
        null2 = [MEMORY[0x1E695DFB0] null];

        if (v32 != null2)
        {
          v34 = [dataCopy objectForKeyedSubscript:@"timeInterval"];
          [(PLEntry *)v10 setObject:v34 forKeyedSubscript:@"timeInterval"];
        }
      }
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  entryKey = [(PLEntry *)self entryKey];
  entryDate = [(PLEntry *)self entryDate];
  v7 = [v4 initWithEntryKey:entryKey withDate:entryDate];

  dictionary = [(PLEntry *)self dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __24__PLEntry_copyWithZone___block_invoke;
  v11[3] = &unk_1E8519700;
  v9 = v7;
  v12 = v9;
  [dictionary enumerateKeysAndObjectsUsingBlock:v11];

  return v9;
}

- (void)setObjectsFromRawData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      entryDefinition = [(PLEntry *)self entryDefinition];
      v6 = [entryDefinition objectForKeyedSubscript:@"Keys"];

      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __33__PLEntry_setObjectsFromRawData___block_invoke;
      v17 = &unk_1E8519948;
      selfCopy = self;
      v7 = dataCopy;
      v19 = v7;
      [v6 enumerateKeysAndObjectsUsingBlock:&v14];
      v8 = [v7 objectForKey:{@"entryDate", v14, v15, v16, v17, selfCopy}];

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
        convertFromSystemToMonotonic = [entryDate convertFromSystemToMonotonic];
        v13 = self->_entryDate;
        self->_entryDate = convertFromSystemToMonotonic;
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

- (void)setDynamicObjectsFromRawData:(id)data
{
  dataCopy = data;
  if ([(PLEntry *)self hasDynamicKeys])
  {
    entryDefinition = [(PLEntry *)self entryDefinition];
    v6 = [entryDefinition objectForKeyedSubscript:@"Keys"];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__PLEntry_setDynamicObjectsFromRawData___block_invoke;
    v8[3] = &unk_1E8519948;
    v9 = v6;
    selfCopy = self;
    v7 = v6;
    [dataCopy enumerateKeysAndObjectsUsingBlock:v8];
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

- (void)setObjectsFromData:(id)data
{
  dataCopy = data;
  entryKey = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey PPSEnabled:entryKey];

  if (v6)
  {
    [(PLEntry *)self setObjectsUsingMetricsFromData:dataCopy];
  }

  else
  {
    entryDefinition = [(PLEntry *)self entryDefinition];
    v8 = [entryDefinition objectForKeyedSubscript:@"Keys"];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__PLEntry_setObjectsFromData___block_invoke;
    v9[3] = &unk_1E8519948;
    v10 = dataCopy;
    selfCopy = self;
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

- (void)setObjectsUsingMetricsFromData:(id)data
{
  dataCopy = data;
  entryKey = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey metricsForEntryKey:entryKey];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PLEntry_setObjectsUsingMetricsFromData___block_invoke;
  v8[3] = &unk_1E851B0C0;
  v9 = dataCopy;
  selfCopy = self;
  v7 = dataCopy;
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

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = [(PLEntry *)self sem];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  if (!objectCopy)
  {
    objectCopy = [MEMORY[0x1E695DFB0] null];
  }

  dictionary = [(PLEntry *)self dictionary];
  [dictionary setObject:objectCopy forKeyedSubscript:keyCopy];

  v9 = [(PLEntry *)self sem];
  dispatch_semaphore_signal(v9);
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  v5 = [(PLEntry *)self sem];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  dictionary = [(PLEntry *)self dictionary];
  [dictionary removeObjectForKey:keyCopy];

  v7 = [(PLEntry *)self sem];
  dispatch_semaphore_signal(v7);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(PLEntry *)self sem];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  dictionary = [(PLEntry *)self dictionary];
  v7 = [dictionary objectForKeyedSubscript:keyCopy];

  null = [MEMORY[0x1E695DFB0] null];

  if (v7 == null)
  {

    goto LABEL_6;
  }

  if (v7)
  {
    goto LABEL_13;
  }

  if ([keyCopy isEqualToString:@"timestamp"])
  {
    v9 = MEMORY[0x1E696AD98];
    entryDate = [(PLEntry *)self entryDate];
    [entryDate timeIntervalSince1970];
    v7 = [v9 numberWithDouble:?];

    goto LABEL_13;
  }

  if (![keyCopy isEqualToString:@"entryDate"])
  {
    if (([keyCopy isEqualToString:@"ID"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"entryID"))
    {
      entryDate2 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLEntry entryID](self, "entryID")}];
      goto LABEL_12;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_13;
  }

  entryDate2 = [(PLEntry *)self entryDate];
LABEL_12:
  v7 = entryDate2;
LABEL_13:
  v12 = [(PLEntry *)self sem];
  dispatch_semaphore_signal(v12);

  return v7;
}

- (id)definitionForKey:(id)key
{
  keyCopy = key;
  entryDefinition = [(PLEntry *)self entryDefinition];
  v6 = [entryDefinition objectForKeyedSubscript:@"Keys"];
  v7 = [v6 objectForKeyedSubscript:keyCopy];

  return v7;
}

- (BOOL)isKeyDynamic:(id)dynamic
{
  dynamicCopy = dynamic;
  if ([(PLEntry *)self hasDynamicKeys])
  {
    v5 = [(PLEntry *)self definitionForKey:dynamicCopy];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isKeyAggregateValue:(id)value
{
  v3 = [(PLEntry *)self definitionForKey:value];
  v4 = [v3 objectForKeyedSubscript:@"IsAggregateValue"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"IsAggregateValue"];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)unitForKey:(id)key
{
  v3 = [(PLEntry *)self definitionForKey:key];
  v4 = [v3 objectForKeyedSubscript:@"Unit"];

  return v4;
}

- (signed)formaterForKey:(id)key
{
  keyCopy = key;
  entryKey = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey PPSEnabled:entryKey];

  if (v6)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v8 = [PPSEntryKey subsystemForEntryKey:entryKey2];

    entryKey3 = [(PLEntry *)self entryKey];
    v10 = [PPSEntryKey categoryForEntryKey:entryKey3];

    v11 = [MEMORY[0x1E69BDC20] getMetadataForSubsystem:v8 category:v10 name:keyCopy];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "datatype")}];
    shortValue = [PLValueUtilties formatterFromDataType:v12];
  }

  else
  {
    v14 = [(PLEntry *)self definitionForKey:keyCopy];
    v8 = [v14 objectForKeyedSubscript:@"Type"];

    if (v8)
    {
      shortValue = [v8 shortValue];
    }

    else
    {
      shortValue = 0x8000;
    }
  }

  return shortValue;
}

+ (signed)dataFormatForMetric:(id)metric auxiliaryMetrics:(id)metrics
{
  if (!metric || !metrics)
  {
    return 0x8000;
  }

  v4 = [metrics objectForKeyedSubscript:?];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "datatype")}];
  v6 = [PLValueUtilties formatterFromDataType:v5];

  return v6;
}

- (int)staticArraySizeForKey:(id)key
{
  keyCopy = key;
  entryKey = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey PPSEnabled:entryKey];

  if (v6)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v8 = [PPSEntryKey subsystemForEntryKey:entryKey2];

    entryKey3 = [(PLEntry *)self entryKey];
    v10 = [PPSEntryKey categoryForEntryKey:entryKey3];

    v11 = [MEMORY[0x1E69BDC20] getMetadataForSubsystem:v8 category:v10 name:keyCopy];
    v12 = v11;
    if (v11 && [v11 auxiliaryType] == 3 && objc_msgSend(v12, "fixedArraySize"))
    {
      fixedArraySize = [v12 fixedArraySize];
    }

    else
    {
      fixedArraySize = -1;
    }

    goto LABEL_10;
  }

  if (![(PLEntry *)self formaterForKey:keyCopy])
  {
    v15 = [(PLEntry *)self definitionForKey:keyCopy];
    v16 = [v15 objectForKeyedSubscript:@"TypeArraySize"];

    if (v16)
    {
      v8 = [(PLEntry *)self definitionForKey:keyCopy];
      v10 = [v8 objectForKeyedSubscript:@"TypeArraySize"];
      fixedArraySize = [v10 intValue];
LABEL_10:

      goto LABEL_11;
    }
  }

  fixedArraySize = -1;
LABEL_11:

  return fixedArraySize;
}

- (id)keyValuePathForKey:(id)key
{
  v3 = [(PLEntry *)self definitionForKey:key];
  v4 = [v3 objectForKeyedSubscript:@"KeyValuePath"];
  v5 = [v4 componentsJoinedByString:@"."];

  return v5;
}

- (int64_t)compare:(id)compare options:(signed __int16)options
{
  optionsCopy = options;
  v214 = *MEMORY[0x1E69E9840];
  compareCopy = compare;
  entryDate = [(PLEntry *)self entryDate];
  entryDate2 = [compareCopy entryDate];
  v9 = [entryDate compare:entryDate2];

  p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
  v206 = compareCopy;
  if (optionsCopy == 2)
  {
    if (PLEntryDebug == 1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tolerance in play"];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v11 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:547];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      compareCopy = v206;
      p_superclass = (&OBJC_METACLASS___PLEntryDefinition + 8);
    }
  }

  else if (optionsCopy == 1)
  {
    if (PLEntryDebug != 1)
    {
      goto LABEL_20;
    }

    v16 = MEMORY[0x1E696AEC0];
    entryDate3 = [(PLEntry *)self entryDate];
    entryDate4 = [compareCopy entryDate];
    v19 = [v16 stringWithFormat:@"PLEntry.compare date: self.date=%@ other.date=%@", entryDate3, entryDate4];

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    lastPathComponent2 = [v20 lastPathComponent];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    obj = v19;
    [PLCoreStorage logMessage:v19 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:550];

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

  keys = [(PLEntry *)self keys];
  v25 = [keys count];
  keys2 = [compareCopy keys];
  v27 = [keys2 count];

  if (v25 != v27)
  {
    if (*(p_superclass + 3928) != 1)
    {
      goto LABEL_20;
    }

    v38 = MEMORY[0x1E696AEC0];
    keys3 = [(PLEntry *)self keys];
    v40 = [keys3 count];
    keys4 = [compareCopy keys];
    v42 = [v38 stringWithFormat:@"PLEntry.compare key count: self.count=%lu other.count=%lu", v40, objc_msgSend(keys4, "count")];

    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    lastPathComponent3 = [v43 lastPathComponent];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    obj = v42;
    [PLCoreStorage logMessage:v42 fromFile:lastPathComponent3 fromFunction:v45 fromLineNumber:555];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  entryKey = [(PLEntry *)self entryKey];
  entryKey2 = [compareCopy entryKey];
  v30 = [entryKey caseInsensitiveCompare:entryKey2];

  if (v30)
  {
    if (*(p_superclass + 3928) != 1)
    {
      goto LABEL_20;
    }

    v31 = MEMORY[0x1E696AEC0];
    entryKey3 = [(PLEntry *)self entryKey];
    entryKey4 = [compareCopy entryKey];
    v34 = [v31 stringWithFormat:@"PLEntry.compare key: self.key=%@ other.key=%@", entryKey3, entryKey4];

    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    lastPathComponent4 = [v35 lastPathComponent];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    obj = v34;
    [PLCoreStorage logMessage:v34 fromFile:lastPathComponent4 fromFunction:v37 fromLineNumber:560];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v203 = optionsCopy;
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
      lastPathComponent5 = [v153 lastPathComponent];
      v155 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v46 fromFile:lastPathComponent5 fromFunction:v155 fromLineNumber:692];

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
    entryDefinition = [(PLEntry *)self entryDefinition];
    v57 = [PLEntryDefinition keyConfigsForEntryDefinition:entryDefinition];
    v58 = [v57 objectForKeyedSubscript:v55];
    v23 = [v58 objectForKeyedSubscript:@"FilterEntryLoggingTolerances"];

    v59 = *(p_superclass + 3928);
    v61 = v203 == 2 && v23 != 0;
    if (v59 == 1 && v61)
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key=%@ toleranceDefinition=%@", v55, v23];
      v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent6 = [v63 lastPathComponent];
      v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v62 fromFile:lastPathComponent6 fromFunction:v65 fromLineNumber:567];

      v66 = PLLogCommon();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v212 = v62;
        _os_log_debug_impl(&dword_1D8611000, v66, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    compareCopy = v206;
    if (v61)
    {
      v67 = [v23 objectForKeyedSubscript:@"Ignore"];
      v126 = v67;
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
      v158 = [v156 stringWithFormat:@"PLEntry.compare(%@) nil value: self.value=%@ other.value=%@", v55, v157, v158];

      v160 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent7 = [v160 lastPathComponent];
      v162 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v158 fromFile:lastPathComponent7 fromFunction:v162 fromLineNumber:579];

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
      v158 = [v164 stringWithFormat:@"PLEntry.compare(%@) class value: self.value.class=%@ other.value.class=%@", v55, v167, v170];

      v171 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent8 = [v171 lastPathComponent];
      v173 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v158 fromFile:lastPathComponent8 fromFunction:v173 fromLineNumber:584];

      v163 = PLLogCommon();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      compareCopy = v206;
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
          v126 = [v123 stringWithFormat:@"bailing on class %@", v126];

          v127 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          lastPathComponent9 = [v127 lastPathComponent];
          v129 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v126 fromFile:lastPathComponent9 fromFunction:v129 fromLineNumber:603];

          v122 = PLLogCommon();
          if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_86;
          }

LABEL_99:
          *buf = 138412290;
          v212 = v126;
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
          lastPathComponent10 = [v98 lastPathComponent];
          v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v97 fromFile:lastPathComponent10 fromFunction:v100 fromLineNumber:608];

          v101 = PLLogCommon();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v97;
            _os_log_debug_impl(&dword_1D8611000, v101, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          compareCopy = v206;
        }

        v102 = v83 == v96 || v80 == v96;
        if (v102 && v80 != v83)
        {
          if (*(p_superclass + 3928) != 1)
          {
            goto LABEL_145;
          }

          v158 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hit specialCase!"];
          v196 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          lastPathComponent11 = [v196 lastPathComponent];
          v198 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v158 fromFile:lastPathComponent11 fromFunction:v198 fromLineNumber:610];

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
          lastPathComponent12 = [v114 lastPathComponent];
          v116 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v113 fromFile:lastPathComponent12 fromFunction:v116 fromLineNumber:661];

          v117 = PLLogCommon();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v212 = v113;
            _os_log_debug_impl(&dword_1D8611000, v117, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          compareCopy = v206;
        }

        v118 = *(p_superclass + 3928);
        if (v107 <= v83 && v83 <= v108)
        {
          if (!*(p_superclass + 3928))
          {
            goto LABEL_88;
          }

          v126 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inside tolerance"];
          v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          lastPathComponent13 = [v119 lastPathComponent];
          v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v126 fromFile:lastPathComponent13 fromFunction:v121 fromLineNumber:663];

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

        v158 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outside tolerance"];
        v193 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        lastPathComponent14 = [v193 lastPathComponent];
        v195 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
        [PLCoreStorage logMessage:v158 fromFile:lastPathComponent14 fromFunction:v195 fromLineNumber:666];

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
        v126 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bailing on no matched tolerance..."];
        v149 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        lastPathComponent15 = [v149 lastPathComponent];
        v151 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
        [PLCoreStorage logMessage:v126 fromFile:lastPathComponent15 fromFunction:v151 fromLineNumber:657];

        v122 = PLLogCommon();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_99;
        }

LABEL_86:
        compareCopy = v206;

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

      v158 = [v174 stringWithFormat:@"PLEntry.compare(%@) respondsToSelector: self.respondsToSelector=%@ other.respondsToSelector=%@", v55, v176, v178];

      v179 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent16 = [v179 lastPathComponent];
      v181 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v158 fromFile:lastPathComponent16 fromFunction:v181 fromLineNumber:681];

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
    v158 = [v204 stringWithFormat:@"PLEntry.compare(%@) value: self.value(%@)=%@ other.value(%@)=%@", v55, v184, v185, v188, v189];

    v190 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    lastPathComponent17 = [v190 lastPathComponent];
    v192 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    [PLCoreStorage logMessage:v158 fromFile:lastPathComponent17 fromFunction:v192 fromLineNumber:673];

    v163 = PLLogCommon();
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

    compareCopy = v206;
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
    lastPathComponent18 = [v47 lastPathComponent];
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    [PLCoreStorage logMessage:v46 fromFile:lastPathComponent18 fromFunction:v49 fromLineNumber:689];

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
  dictionary = [(PLEntry *)self dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __21__PLEntry_serialized__block_invoke;
  v10[3] = &unk_1E8519700;
  v5 = v3;
  v11 = v5;
  [dictionary enumerateKeysAndObjectsUsingBlock:v10];

  entryDate = [(PLEntry *)self entryDate];

  if (entryDate)
  {
    [(PLEntry *)self entryDate];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v7 = ;
  [v5 setObject:v7 forKeyedSubscript:@"timestamp"];

  entryKey = [(PLEntry *)self entryKey];
  [v5 setObject:entryKey forKeyedSubscript:@"EntryKey"];

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
  dictionary = [(PLEntry *)self dictionary];
  v4 = [PLUtilities JSONSanitizeDictionary:dictionary];
  v5 = [v4 mutableCopy];

  v6 = MEMORY[0x1E696AD98];
  entryDate = [(PLEntry *)self entryDate];
  [entryDate timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  [v5 setObject:v8 forKeyedSubscript:@"timestamp"];

  return v5;
}

+ (id)summarizeAggregateEntries:(id)entries
{
  entriesCopy = entries;
  if ([entriesCopy count])
  {
    v4 = [entriesCopy objectAtIndexedSubscript:0];
    entryDefinition = [v4 entryDefinition];
    v6 = [entryDefinition objectForKeyedSubscript:@"AggregateKeys"];

    v7 = [entriesCopy objectAtIndexedSubscript:0];
    definedKeys = [v7 definedKeys];
    v9 = [definedKeys arrayByRemovingObjectsFromArray:v6];

    v10 = [PLEntry summarizeAggregateEntries:entriesCopy withPrimaryKeys:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)summarizeAggregateEntries:(id)entries withPrimaryKeys:(id)keys
{
  v133 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  keysCopy = keys;
  v90 = entriesCopy;
  v7 = [entriesCopy count];
  v104 = 0;
  if (keysCopy && v7)
  {
    if ([keysCopy count])
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
      v11 = [entriesCopy objectAtIndexedSubscript:0];
      entryDefinition = [v11 entryDefinition];
      v93 = [entryDefinition objectForKeyedSubscript:@"AggregateKeys"];

      v101 = objc_opt_new();
      if (v9 == 1)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"primaryKeys=%@\naggregateKeys=%@", keysCopy, v93];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
        [PLCoreStorage logMessage:v13 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:803];

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
      v92 = keysCopy;
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
              if (![keysCopy count])
              {
                v20 = v19;
                v105 = 0;
LABEL_40:
                v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"aggregating... for %@", v100];
                v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
                lastPathComponent2 = [v41 lastPathComponent];
                v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
                [PLCoreStorage logMessage:v100 fromFile:lastPathComponent2 fromFunction:v43 fromLineNumber:842];

                v44 = PLLogCommon();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v131 = v100;
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
                    shortValue = [v52 shortValue];

                    if (shortValue <= 1)
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
                      if (shortValue == 1)
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
                          keysCopy = v92;
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

                  if (shortValue == 3)
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
                    if (shortValue != 2)
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
                lastPathComponent3 = [v70 lastPathComponent];
                v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
                v102 = v69;
                [PLCoreStorage logMessage:v69 fromFile:lastPathComponent3 fromFunction:v72 fromLineNumber:864];

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
              if (![keysCopy count])
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
              v23 = [keysCopy objectAtIndexedSubscript:v21];
              v24 = [v103 objectForKeyedSubscript:v23];

              if (v9)
              {
                v25 = [keysCopy objectAtIndexedSubscript:v21];
                [v100 setObject:v24 forKeyedSubscript:v25];
              }

              v26 = [v19 objectForKeyedSubscript:v24];

              if (!v26)
              {
                if (v21 == [keysCopy count] - 1)
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

              v31 = [keysCopy count] - 1;
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

            while ([keysCopy count] > v21);
            if (v22)
            {
              if (!v9)
              {
                goto LABEL_69;
              }

              v1002 = [MEMORY[0x1E696AEC0] stringWithFormat:@"first hit for %@", v100];
              v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
              lastPathComponent4 = [v36 lastPathComponent];
              v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
              v102 = v1002;
              [PLCoreStorage logMessage:v1002 fromFile:lastPathComponent4 fromFunction:v38 fromLineNumber:838];

              v39 = PLLogCommon();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v131 = v1002;
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

      keysCopy = v92;
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