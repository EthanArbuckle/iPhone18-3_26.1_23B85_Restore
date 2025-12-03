@interface PLEntryDefinition
+ (BOOL)cacheSQLPrepareStatementForEntryDefinition:(id)definition;
+ (BOOL)cacheSQLPrepareStatementForEntryKey:(id)key;
+ (BOOL)filterEntryLoggingForEntryDefinition:(id)definition;
+ (BOOL)filterEntryLoggingForEntryKey:(id)key;
+ (BOOL)hasAppIdentifierKeysForEntryDefinition:(id)definition;
+ (BOOL)hasArrayKeysForEntryDefinition:(id)definition;
+ (BOOL)hasArrayKeysForEntryKey:(id)key;
+ (BOOL)hasDMAKeysForEntryDefinition:(id)definition;
+ (BOOL)hasDMAKeysForEntryKey:(id)key;
+ (BOOL)hasDynamicKeysForEntryDefinition:(id)definition;
+ (BOOL)hasDynamicKeysForEntryKey:(id)key;
+ (BOOL)hasTaskModeKeyForEntryDefinition:(id)definition;
+ (BOOL)hasTaskModeKeyInConfig:(id)config;
+ (BOOL)isAggregateForEntryDefinition:(id)definition;
+ (BOOL)isAggregateForEntryKey:(id)key;
+ (BOOL)isAggregateWallClockBucket:(id)bucket;
+ (BOOL)isAggregateWallClockBucketForEntryDefinition:(id)definition;
+ (BOOL)isNonEmptyDictionary:(id)dictionary;
+ (BOOL)isOnDemandQueryableForEntryDefinition:(id)definition;
+ (BOOL)isOnDemandQueryableForEntryKey:(id)key;
+ (BOOL)overridesEntryDateForEntryDefinition:(id)definition;
+ (BOOL)overridesEntryDateForEntryKey:(id)key;
+ (double)schemaVersionForEntryDefinition:(id)definition;
+ (double)schemaVersionForEntryKey:(id)key;
+ (id)DMAKeysForEntryDefinition:(id)definition;
+ (id)aggregateBucketDefinitionsForEntryKey:(id)key;
+ (id)allAggregateKeysForEntryKey:(id)key;
+ (id)allAggregatePrimaryKeysForEntryDefinition:(id)definition;
+ (id)allAggregatePrimaryKeysForEntryKey:(id)key;
+ (id)allDynamicKeysForEntryDefinition:(id)definition;
+ (id)allDynamicKeysForEntryKey:(id)key;
+ (id)allIndexKeysForEntryKey:(id)key;
+ (id)allKeysForEntryDefinition:(id)definition;
+ (id)allKeysForEntryKey:(id)key;
+ (id)arrayKeyConfigsForEntryKey:(id)key;
+ (id)arrayKeysForEntryKey:(id)key;
+ (id)configsForEntryKey:(id)key;
+ (id)constructEntryDefinition:(id)definition;
+ (id)definitionForEntryKey:(id)key;
+ (id)dynamicKeyConfigsForEntryKey:(id)key;
+ (id)entryDefinitionsForOperator:(id)operator;
+ (id)entryDefinitionsForOperatorClass:(Class)class;
+ (id)keyConfigsForEntryKey:(id)key;
+ (id)logSelectorStringForEnteryKey:(id)key;
+ (id)logSelectorStringForEntryDefinition:(id)definition;
+ (id)manualSortOrderForEntryDefinition:(id)definition;
+ (id)manualSortOrderForEntryKey:(id)key;
+ (id)notificationNameForEntryKey:(id)key withFilterDefintion:(id)defintion;
+ (id)sharedInstance;
+ (id)sortedKeysFromEntryDefinition:(id)definition;
+ (id)subEntryKeyKeyForEntryDefinition:(id)definition;
+ (id)subEntryKeyKeyForEntryKey:(id)key;
+ (int)cacheCountForEntryDefition:(id)defition;
+ (int)cacheCountForEntryKey:(id)key;
+ (int)limitOfType:(id)type forEntryDefinition:(id)definition;
+ (int)limitOfType:(id)type forEntryKey:(id)key;
+ (signed)aggregateFunctionForEntryDefinition:(id)definition forKey:(id)key;
- (id)commonTypeDict_BoolFormat;
- (id)commonTypeDict_DateFormat;
- (id)commonTypeDict_DateFormat_isCFAbsoluteTime;
- (id)commonTypeDict_IntegerFormat;
- (id)commonTypeDict_IntegerFormat_aggregateFunction_sum;
- (id)commonTypeDict_IntegerFormat_withUnit_W;
- (id)commonTypeDict_IntegerFormat_withUnit_mA;
- (id)commonTypeDict_IntegerFormat_withUnit_mAh;
- (id)commonTypeDict_IntegerFormat_withUnit_mJ;
- (id)commonTypeDict_IntegerFormat_withUnit_mV;
- (id)commonTypeDict_IntegerFormat_withUnit_ms;
- (id)commonTypeDict_IntegerFormat_withUnit_s;
- (id)commonTypeDict_IntegerFormat_withUnit_us;
- (id)commonTypeDict_RawDataFormat;
- (id)commonTypeDict_RealFormat;
- (id)commonTypeDict_RealFormat_aggregateFunction_sum;
- (id)commonTypeDict_RealFormat_withUnit_W;
- (id)commonTypeDict_RealFormat_withUnit_mJ;
- (id)commonTypeDict_RealFormat_withUnit_mW;
- (id)commonTypeDict_RealFormat_withUnit_mWhr;
- (id)commonTypeDict_RealFormat_withUnit_s;
- (id)commonTypeDict_StringFormat;
- (id)commonTypeDict_StringFormat_withAppName;
- (id)commonTypeDict_StringFormat_withBundleID;
- (id)commonTypeDict_StringFormat_withProcessName;
@end

@implementation PLEntryDefinition

+ (id)entryDefinitionsForOperatorClass:(Class)class
{
  v29[6] = *MEMORY[0x1E69E9840];
  if (entryDefinitionsForOperatorClass__onceToken != -1)
  {
    +[PLEntryDefinition entryDefinitionsForOperatorClass:];
    if (class)
    {
      goto LABEL_3;
    }

LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  if (!class)
  {
    goto LABEL_14;
  }

LABEL_3:
  dispatch_semaphore_wait(entryDefinitionsForOperatorClass__entryDefinitionsSem, 0xFFFFFFFFFFFFFFFFLL);
  v5 = [entryDefinitionsForOperatorClass__entryDefinitions objectForKeyedSubscript:class];
  if (!v5)
  {
    if (+[PLDefaults debugEnabled])
    {
      v6 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__PLEntryDefinition_entryDefinitionsForOperatorClass___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (entryDefinitionsForOperatorClass__defaultOnce != -1)
      {
        dispatch_once(&entryDefinitionsForOperatorClass__defaultOnce, block);
      }

      if (entryDefinitionsForOperatorClass__classDebugEnabled == 1)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setting up entry Definitions for %@", class];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLEntryDefinition.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntryDefinition entryDefinitionsForOperatorClass:]"];
        [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:116];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [(PLSubmissionFileSP *)v7 copyAndPrepareLog];
        }
      }
    }

    v28[0] = @"EventPoint";
    entryEventPointDefinitions = [(objc_class *)class entryEventPointDefinitions];
    v25 = [self constructEntryDefinition:entryEventPointDefinitions];
    v29[0] = v25;
    v28[1] = @"EventForward";
    entryEventForwardDefinitions = [(objc_class *)class entryEventForwardDefinitions];
    v23 = [self constructEntryDefinition:entryEventForwardDefinitions];
    v29[1] = v23;
    v28[2] = @"EventBackward";
    entryEventBackwardDefinitions = [(objc_class *)class entryEventBackwardDefinitions];
    v13 = [self constructEntryDefinition:entryEventBackwardDefinitions];
    v29[2] = v13;
    v28[3] = @"EventInterval";
    entryEventIntervalDefinitions = [(objc_class *)class entryEventIntervalDefinitions];
    v15 = [self constructEntryDefinition:entryEventIntervalDefinitions];
    v29[3] = v15;
    v28[4] = @"EventNone";
    entryEventNoneDefinitions = [(objc_class *)class entryEventNoneDefinitions];
    v17 = [self constructEntryDefinition:entryEventNoneDefinitions];
    v29[4] = v17;
    v28[5] = @"Aggregate";
    entryAggregateDefinitions = [(objc_class *)class entryAggregateDefinitions];
    v19 = [self constructEntryDefinition:entryAggregateDefinitions];
    v29[5] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:6];
    [entryDefinitionsForOperatorClass__entryDefinitions setObject:v20 forKeyedSubscript:class];

    v5 = [entryDefinitionsForOperatorClass__entryDefinitions objectForKeyedSubscript:class];
  }

  dispatch_semaphore_signal(entryDefinitionsForOperatorClass__entryDefinitionsSem);
LABEL_15:
  v21 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __54__PLEntryDefinition_entryDefinitionsForOperatorClass___block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = entryDefinitionsForOperatorClass__entryDefinitionsSem;
  entryDefinitionsForOperatorClass__entryDefinitionsSem = v0;

  entryDefinitionsForOperatorClass__entryDefinitions = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

BOOL __54__PLEntryDefinition_entryDefinitionsForOperatorClass___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  entryDefinitionsForOperatorClass__classDebugEnabled = result;
  return result;
}

+ (BOOL)isNonEmptyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || [dictionaryCopy count];

  return v4;
}

+ (BOOL)hasTaskModeKeyInConfig:(id)config
{
  configCopy = config;
  v5 = +[PLDefaults liteMode](PLDefaults, "liteMode") && ([self hasTaskModeKeyForEntryDefinition:configCopy] & 1) != 0;

  return v5;
}

+ (id)constructEntryDefinition:(id)definition
{
  definitionCopy = definition;
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PLEntryDefinition_constructEntryDefinition___block_invoke;
  v8[3] = &unk_1E8519900;
  selfCopy = self;
  v6 = v5;
  v9 = v6;
  [definitionCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __46__PLEntryDefinition_constructEntryDefinition___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 40) isNonEmptyDictionary:v5] && (objc_msgSend(*(a1 + 40), "hasTaskModeKeyInConfig:", v5) & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

+ (id)entryDefinitionsForOperator:(id)operator
{
  v4 = objc_opt_class();

  return [self entryDefinitionsForOperatorClass:v4];
}

+ (id)definitionForEntryKey:(id)key
{
  v4 = [PLEntryKey PLEntryKeyForEntryKey:key];
  v5 = [self entryDefinitionsForOperatorClass:{objc_msgSend(v4, "operatorClass")}];
  entryType = [v4 entryType];
  v7 = [v5 objectForKeyedSubscript:entryType];
  entryName = [v4 entryName];
  v9 = [v7 objectForKeyedSubscript:entryName];

  return v9;
}

+ (id)configsForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self configsForEntryDefinition:v4];

  return v5;
}

+ (id)keyConfigsForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self keyConfigsForEntryDefinition:v4];

  return v5;
}

+ (id)dynamicKeyConfigsForEntryKey:(id)key
{
  keyCopy = key;
  if ([PPSEntryKey PPSEnabled:keyCopy])
  {
    v5 = [PPSEntryKey dynamicMetricsForEntryKey:keyCopy];
  }

  else
  {
    v6 = [self definitionForEntryKey:keyCopy];

    v5 = [self dynamicKeyConfigsForEntryDefinition:v6];
    keyCopy = v6;
  }

  return v5;
}

+ (id)arrayKeyConfigsForEntryKey:(id)key
{
  keyCopy = key;
  if ([PPSEntryKey PPSEnabled:keyCopy])
  {
    v5 = [PPSEntryKey arrayMetricsForEntryKey:keyCopy];
  }

  else
  {
    v6 = [self definitionForEntryKey:keyCopy];

    v5 = [self dynamicKeyConfigsForEntryDefinition:v6];
    keyCopy = v6;
  }

  return v5;
}

+ (id)arrayKeysForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self arrayKeysForEntryDefinition:v4];

  return v5;
}

+ (id)aggregateBucketDefinitionsForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self aggregateBucketDefinitionsForEntryDefinition:v4];

  return v5;
}

+ (id)allKeysForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self allKeysForEntryDefinition:v4];

  return v5;
}

+ (id)subEntryKeyKeyForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self subEntryKeyKeyForEntryDefinition:v4];

  return v5;
}

+ (id)allDynamicKeysForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self allDynamicKeysForEntryDefinition:v4];

  return v5;
}

+ (id)allAggregateKeysForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self allAggregateKeysForEntryDefinition:v4];

  return v5;
}

+ (id)allIndexKeysForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self allIndexKeysForEntryDefinition:v4];

  return v5;
}

+ (id)allAggregatePrimaryKeysForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self allAggregatePrimaryKeysForEntryDefinition:v4];

  return v5;
}

+ (BOOL)hasDynamicKeysForEntryKey:(id)key
{
  selfCopy = self;
  v4 = [self definitionForEntryKey:key];
  LOBYTE(selfCopy) = [selfCopy hasDynamicKeysForEntryDefinition:v4];

  return selfCopy;
}

+ (BOOL)hasArrayKeysForEntryKey:(id)key
{
  selfCopy = self;
  v4 = [self definitionForEntryKey:key];
  LOBYTE(selfCopy) = [selfCopy hasArrayKeysForEntryDefinition:v4];

  return selfCopy;
}

+ (BOOL)hasDMAKeysForEntryKey:(id)key
{
  selfCopy = self;
  v4 = [self definitionForEntryKey:key];
  LOBYTE(selfCopy) = [selfCopy hasDMAKeysForEntryDefinition:v4];

  return selfCopy;
}

+ (BOOL)isOnDemandQueryableForEntryKey:(id)key
{
  selfCopy = self;
  v4 = [self definitionForEntryKey:key];
  LOBYTE(selfCopy) = [selfCopy isOnDemandQueryableForEntryDefinition:v4];

  return selfCopy;
}

+ (BOOL)filterEntryLoggingForEntryKey:(id)key
{
  selfCopy = self;
  v4 = [self definitionForEntryKey:key];
  LOBYTE(selfCopy) = [selfCopy filterEntryLoggingForEntryDefinition:v4];

  return selfCopy;
}

+ (BOOL)isAggregateForEntryKey:(id)key
{
  selfCopy = self;
  v4 = [self definitionForEntryKey:key];
  LOBYTE(selfCopy) = [selfCopy isAggregateForEntryDefinition:v4];

  return selfCopy;
}

+ (BOOL)isAggregateWallClockBucket:(id)bucket
{
  selfCopy = self;
  v4 = [self definitionForEntryKey:bucket];
  LOBYTE(selfCopy) = [selfCopy isAggregateWallClockBucketForEntryDefinition:v4];

  return selfCopy;
}

+ (BOOL)overridesEntryDateForEntryKey:(id)key
{
  selfCopy = self;
  v4 = [self definitionForEntryKey:key];
  LOBYTE(selfCopy) = [selfCopy overridesEntryDateForEntryDefinition:v4];

  return selfCopy;
}

+ (double)schemaVersionForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  [self schemaVersionForEntryDefinition:v4];
  v6 = v5;

  return v6;
}

+ (int)cacheCountForEntryKey:(id)key
{
  selfCopy = self;
  v4 = [self definitionForEntryKey:key];
  LODWORD(selfCopy) = [selfCopy cacheCountForEntryDefition:v4];

  return selfCopy;
}

+ (BOOL)cacheSQLPrepareStatementForEntryKey:(id)key
{
  keyCopy = key;
  if ([PPSEntryKey PPSEnabled:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [self definitionForEntryKey:keyCopy];
    v5 = [self cacheSQLPrepareStatementForEntryDefinition:v6];
  }

  return v5;
}

+ (id)manualSortOrderForEntryKey:(id)key
{
  v4 = [self definitionForEntryKey:key];
  v5 = [self manualSortOrderForEntryDefinition:v4];

  return v5;
}

+ (id)logSelectorStringForEnteryKey:(id)key
{
  keyCopy = key;
  if ([self isOnDemandQueryableForEntryKey:keyCopy])
  {
    v5 = [self definitionForEntryKey:keyCopy];
    v6 = [self logSelectorStringForEntryDefinition:v5];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = [PLEntryKey PLEntryKeyForEntryKey:keyCopy];
      v9 = MEMORY[0x1E696AEC0];
      entryType = [v8 entryType];
      entryName = [v8 entryName];
      v7 = [v9 stringWithFormat:@"log%@%@", entryType, entryName];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (int)limitOfType:(id)type forEntryKey:(id)key
{
  typeCopy = type;
  v7 = [self definitionForEntryKey:key];
  LODWORD(self) = [self limitOfType:typeCopy forEntryDefinition:v7];

  return self;
}

+ (id)DMAKeysForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKeyedSubscript:@"DMACompliantKeys"];

  return v4;
}

+ (id)allKeysForEntryDefinition:(id)definition
{
  v3 = [self keyConfigsForEntryDefinition:definition];
  allKeys = [v3 allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

  return v5;
}

+ (id)subEntryKeyKeyForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKeyedSubscript:@"SubEntryKey"];

  return v4;
}

+ (id)allDynamicKeysForEntryDefinition:(id)definition
{
  v3 = [self dynamicKeyConfigsForEntryDefinition:definition];
  allKeys = [v3 allKeys];

  return allKeys;
}

+ (id)allAggregatePrimaryKeysForEntryDefinition:(id)definition
{
  definitionCopy = definition;
  v5 = [self allKeysForEntryDefinition:definitionCopy];
  v6 = [v5 mutableCopy];

  v7 = [self allAggregateKeysForEntryDefinition:definitionCopy];

  [v6 removeObjectsInArray:v7];

  return v6;
}

+ (BOOL)hasTaskModeKeyForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKey:@"TaskModeTable"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)hasDynamicKeysForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKey:@"DynamicDefinition"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)hasArrayKeysForEntryDefinition:(id)definition
{
  v3 = [self arrayKeysForEntryDefinition:definition];
  v4 = [v3 count] != 0;

  return v4;
}

+ (BOOL)hasDMAKeysForEntryDefinition:(id)definition
{
  v3 = [self DMAKeysForEntryDefinition:definition];
  v4 = [v3 count] != 0;

  return v4;
}

+ (BOOL)hasAppIdentifierKeysForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKey:@"AppIdentifierKeys"];

  LOBYTE(v3) = [v4 BOOLValue];
  return v3;
}

+ (BOOL)isOnDemandQueryableForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKey:@"OnDemandQuery"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (BOOL)filterEntryLoggingForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKey:@"FilterEntryLogging"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)isAggregateForEntryDefinition:(id)definition
{
  v3 = [self aggregateBucketDefinitionsForEntryDefinition:definition];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)isAggregateWallClockBucketForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKey:@"AggregateWallClockBucket"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)overridesEntryDateForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKey:@"OverridesEntryDate"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (double)schemaVersionForEntryDefinition:(id)definition
{
  v3 = [definition objectForKeyedSubscript:@"Configs"];
  v4 = [v3 objectForKeyedSubscript:@"SchemaVersion"];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

+ (int)cacheCountForEntryDefition:(id)defition
{
  v3 = [defition objectForKeyedSubscript:@"Configs"];
  v4 = [v3 objectForKeyedSubscript:@"EntryCaching"];

  if (v4)
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

+ (BOOL)cacheSQLPrepareStatementForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKey:@"SQLPrepareStatementCaching"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)manualSortOrderForEntryDefinition:(id)definition
{
  definitionCopy = definition;
  v5 = [self configsForEntryDefinition:definitionCopy];
  v6 = [v5 objectForKey:@"SortOrderManual"];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DFA8] setWithArray:v6];
    v8 = MEMORY[0x1E695DFD8];
    v9 = [self allKeysForEntryDefinition:definitionCopy];
    v10 = [v8 setWithArray:v9];
    [v7 minusSet:v10];

    if ([v7 count])
    {
      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(PLEntryDefinition *)v7 manualSortOrderForEntryDefinition:v11];
      }

      v12 = [MEMORY[0x1E695DFA8] setWithArray:v6];
      [v12 minusSet:v7];
      allObjects = [v12 allObjects];
    }

    else
    {
      allObjects = v6;
    }
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

+ (id)sortedKeysFromEntryDefinition:(id)definition
{
  v4 = MEMORY[0x1E695DF70];
  definitionCopy = definition;
  v6 = [self allKeysForEntryDefinition:definitionCopy];
  v7 = [v4 arrayWithArray:v6];

  v8 = [self manualSortOrderForEntryDefinition:definitionCopy];
  v9 = [definitionCopy objectForKey:@"Configs"];

  v10 = [v9 objectForKey:@"SortOrderAuto"];
  intValue = [v10 intValue];

  v12 = objc_opt_new();
  [v12 addObjectsFromArray:v8];
  [v7 removeObjectsInArray:v8];
  if ((intValue & 0xFFFE) == 0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__PLEntryDefinition_sortedKeysFromEntryDefinition___block_invoke;
    v15[3] = &__block_descriptor_34_e11_q24__0_8_16l;
    v16 = intValue;
    v13 = [v7 sortedArrayUsingComparator:v15];
  }

  [v12 addObjectsFromArray:v7];

  return v12;
}

uint64_t __51__PLEntryDefinition_sortedKeysFromEntryDefinition___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 32) == 1)
  {
    v8 = v5;
  }

  else
  {
    if (*(a1 + 32))
    {
      v9 = 0;
      goto LABEL_7;
    }

    v6 = v5;
    v8 = v7;
  }

  v9 = [v6 compare:v8];
LABEL_7:

  return v9;
}

+ (signed)aggregateFunctionForEntryDefinition:(id)definition forKey:(id)key
{
  keyCopy = key;
  v6 = [definition objectForKeyedSubscript:@"Keys"];
  v7 = [v6 objectForKeyedSubscript:keyCopy];

  v8 = [v7 objectForKeyedSubscript:@"AggregateFunction"];
  shortValue = [v8 shortValue];

  return shortValue;
}

+ (id)logSelectorStringForEntryDefinition:(id)definition
{
  v3 = [self configsForEntryDefinition:definition];
  v4 = [v3 objectForKey:@"LogSelector"];

  return v4;
}

+ (int)limitOfType:(id)type forEntryDefinition:(id)definition
{
  typeCopy = type;
  v7 = [self configsForEntryDefinition:definition];
  v8 = [v7 objectForKeyedSubscript:typeCopy];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:typeCopy];
    intValue = [v9 intValue];
  }

  else
  {
    if ([typeCopy isEqualToString:@"RateLimit"])
    {
      v11 = 50;
    }

    else if ([typeCopy isEqualToString:@"WarningLimit"])
    {
      v11 = 3;
    }

    else if ([typeCopy isEqualToString:@"SafetyDropLimit"])
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    intValue = [PLDefaults longForKey:typeCopy ifNotSet:v11];
  }

  return intValue;
}

+ (id)notificationNameForEntryKey:(id)key withFilterDefintion:(id)defintion
{
  v38 = *MEMORY[0x1E69E9840];
  defintionCopy = defintion;
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@.filtered", key];
  v25 = defintionCopy;
  allKeys = [defintionCopy allKeys];
  v8 = [allKeys sortedArrayUsingSelector:?];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v8;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v24 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v9;
        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = [v25 objectForKeyedSubscript:v10];
        allKeys2 = [v11 allKeys];
        v13 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v29;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v28 + 1) + 8 * i);
              v20 = [v11 objectForKeyedSubscript:v19];
              [v6 appendFormat:@".%@_%@_%@", v10, v19, v20];
            }

            v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v16);
        }

        v9 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[PLEntryDefinition sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __35__PLEntryDefinition_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(PLEntryDefinition);

  return MEMORY[0x1EEE66BB8]();
}

- (id)commonTypeDict_BoolFormat
{
  if (commonTypeDict_BoolFormat_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_BoolFormat];
  }

  v3 = commonTypeDict_BoolFormat__typedict_BOOL;

  return v3;
}

void __46__PLEntryDefinition_commonTypeDict_BoolFormat__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"Type";
  v4[0] = &unk_1F5405AD8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = commonTypeDict_BoolFormat__typedict_BOOL;
  commonTypeDict_BoolFormat__typedict_BOOL = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_IntegerFormat
{
  if (commonTypeDict_IntegerFormat_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_IntegerFormat];
  }

  v3 = commonTypeDict_IntegerFormat__typedict_integer;

  return v3;
}

void __49__PLEntryDefinition_commonTypeDict_IntegerFormat__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"Type";
  v4[0] = &unk_1F5405AF0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = commonTypeDict_IntegerFormat__typedict_integer;
  commonTypeDict_IntegerFormat__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_IntegerFormat_withUnit_s
{
  if (commonTypeDict_IntegerFormat_withUnit_s_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_IntegerFormat_withUnit_s];
  }

  v3 = commonTypeDict_IntegerFormat_withUnit_s__typedict_integer;

  return v3;
}

void __60__PLEntryDefinition_commonTypeDict_IntegerFormat_withUnit_s__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405AF0;
  v4[1] = @"s";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_IntegerFormat_withUnit_s__typedict_integer;
  commonTypeDict_IntegerFormat_withUnit_s__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_IntegerFormat_withUnit_ms
{
  if (commonTypeDict_IntegerFormat_withUnit_ms_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_IntegerFormat_withUnit_ms];
  }

  v3 = commonTypeDict_IntegerFormat_withUnit_ms__typedict_integer;

  return v3;
}

void __61__PLEntryDefinition_commonTypeDict_IntegerFormat_withUnit_ms__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405AF0;
  v4[1] = @"ms";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_IntegerFormat_withUnit_ms__typedict_integer;
  commonTypeDict_IntegerFormat_withUnit_ms__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_IntegerFormat_withUnit_us
{
  if (commonTypeDict_IntegerFormat_withUnit_us_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_IntegerFormat_withUnit_us];
  }

  v3 = commonTypeDict_IntegerFormat_withUnit_us__typedict_integer;

  return v3;
}

void __61__PLEntryDefinition_commonTypeDict_IntegerFormat_withUnit_us__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405AF0;
  v4[1] = @"us";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_IntegerFormat_withUnit_us__typedict_integer;
  commonTypeDict_IntegerFormat_withUnit_us__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_IntegerFormat_withUnit_mV
{
  if (commonTypeDict_IntegerFormat_withUnit_mV_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_IntegerFormat_withUnit_mV];
  }

  v3 = commonTypeDict_IntegerFormat_withUnit_mV__typedict_integer;

  return v3;
}

void __61__PLEntryDefinition_commonTypeDict_IntegerFormat_withUnit_mV__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405AF0;
  v4[1] = @"mV";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_IntegerFormat_withUnit_mV__typedict_integer;
  commonTypeDict_IntegerFormat_withUnit_mV__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_IntegerFormat_withUnit_mA
{
  if (commonTypeDict_IntegerFormat_withUnit_mA_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_IntegerFormat_withUnit_mA];
  }

  v3 = commonTypeDict_IntegerFormat_withUnit_mA__typedict_integer;

  return v3;
}

void __61__PLEntryDefinition_commonTypeDict_IntegerFormat_withUnit_mA__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405AF0;
  v4[1] = @"mA";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_IntegerFormat_withUnit_mA__typedict_integer;
  commonTypeDict_IntegerFormat_withUnit_mA__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_IntegerFormat_withUnit_mAh
{
  if (commonTypeDict_IntegerFormat_withUnit_mAh_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_IntegerFormat_withUnit_mAh];
  }

  v3 = commonTypeDict_IntegerFormat_withUnit_mAh__typedict_integer;

  return v3;
}

void __62__PLEntryDefinition_commonTypeDict_IntegerFormat_withUnit_mAh__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405AF0;
  v4[1] = @"mAh";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_IntegerFormat_withUnit_mAh__typedict_integer;
  commonTypeDict_IntegerFormat_withUnit_mAh__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_IntegerFormat_withUnit_mJ
{
  if (commonTypeDict_IntegerFormat_withUnit_mJ_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_IntegerFormat_withUnit_mJ];
  }

  v3 = commonTypeDict_IntegerFormat_withUnit_mJ__typedict_integer;

  return v3;
}

void __61__PLEntryDefinition_commonTypeDict_IntegerFormat_withUnit_mJ__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405AF0;
  v4[1] = @"mJ";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_IntegerFormat_withUnit_mJ__typedict_integer;
  commonTypeDict_IntegerFormat_withUnit_mJ__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_IntegerFormat_withUnit_W
{
  if (commonTypeDict_IntegerFormat_withUnit_W_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_IntegerFormat_withUnit_W];
  }

  v3 = commonTypeDict_IntegerFormat_withUnit_W__typedict_integer;

  return v3;
}

void __60__PLEntryDefinition_commonTypeDict_IntegerFormat_withUnit_W__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405AF0;
  v4[1] = @"W";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_IntegerFormat_withUnit_W__typedict_integer;
  commonTypeDict_IntegerFormat_withUnit_W__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_IntegerFormat_aggregateFunction_sum
{
  if (commonTypeDict_IntegerFormat_aggregateFunction_sum_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_IntegerFormat_aggregateFunction_sum];
  }

  v3 = commonTypeDict_IntegerFormat_aggregateFunction_sum__typedict_integer;

  return v3;
}

void __71__PLEntryDefinition_commonTypeDict_IntegerFormat_aggregateFunction_sum__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"IsAggregateValue";
  v4[0] = &unk_1F5405AF0;
  v4[1] = MEMORY[0x1E695E118];
  v3[2] = @"AggregateFunction";
  v4[2] = &unk_1F5405B08;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = commonTypeDict_IntegerFormat_aggregateFunction_sum__typedict_integer;
  commonTypeDict_IntegerFormat_aggregateFunction_sum__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_RealFormat
{
  if (commonTypeDict_RealFormat_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_RealFormat];
  }

  v3 = commonTypeDict_RealFormat__typedict_real;

  return v3;
}

void __46__PLEntryDefinition_commonTypeDict_RealFormat__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"Type";
  v4[0] = &unk_1F5405B20;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = commonTypeDict_RealFormat__typedict_real;
  commonTypeDict_RealFormat__typedict_real = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_RealFormat_withUnit_s
{
  if (commonTypeDict_RealFormat_withUnit_s_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_RealFormat_withUnit_s];
  }

  v3 = commonTypeDict_RealFormat_withUnit_s__typedict_real;

  return v3;
}

void __57__PLEntryDefinition_commonTypeDict_RealFormat_withUnit_s__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405B20;
  v4[1] = @"s";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_RealFormat_withUnit_s__typedict_real;
  commonTypeDict_RealFormat_withUnit_s__typedict_real = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_RealFormat_withUnit_mJ
{
  if (commonTypeDict_RealFormat_withUnit_mJ_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_RealFormat_withUnit_mJ];
  }

  v3 = commonTypeDict_RealFormat_withUnit_mJ__typedict_real;

  return v3;
}

void __58__PLEntryDefinition_commonTypeDict_RealFormat_withUnit_mJ__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405B20;
  v4[1] = @"mJ";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_RealFormat_withUnit_mJ__typedict_real;
  commonTypeDict_RealFormat_withUnit_mJ__typedict_real = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_RealFormat_withUnit_mW
{
  if (commonTypeDict_RealFormat_withUnit_mW_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_RealFormat_withUnit_mW];
  }

  v3 = commonTypeDict_RealFormat_withUnit_mW__typedict_real;

  return v3;
}

void __58__PLEntryDefinition_commonTypeDict_RealFormat_withUnit_mW__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405B20;
  v4[1] = @"mW";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_RealFormat_withUnit_mW__typedict_real;
  commonTypeDict_RealFormat_withUnit_mW__typedict_real = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_RealFormat_withUnit_W
{
  if (commonTypeDict_RealFormat_withUnit_W_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_RealFormat_withUnit_W];
  }

  v3 = commonTypeDict_RealFormat_withUnit_W__typedict_real;

  return v3;
}

void __57__PLEntryDefinition_commonTypeDict_RealFormat_withUnit_W__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405B20;
  v4[1] = @"W";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_RealFormat_withUnit_W__typedict_real;
  commonTypeDict_RealFormat_withUnit_W__typedict_real = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_RealFormat_withUnit_mWhr
{
  if (commonTypeDict_RealFormat_withUnit_mWhr_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_RealFormat_withUnit_mWhr];
  }

  v3 = commonTypeDict_RealFormat_withUnit_mWhr__typedict_real;

  return v3;
}

void __60__PLEntryDefinition_commonTypeDict_RealFormat_withUnit_mWhr__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"Unit";
  v4[0] = &unk_1F5405B20;
  v4[1] = @"mWhr";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_RealFormat_withUnit_mWhr__typedict_real;
  commonTypeDict_RealFormat_withUnit_mWhr__typedict_real = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_RealFormat_aggregateFunction_sum
{
  if (commonTypeDict_RealFormat_aggregateFunction_sum_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_RealFormat_aggregateFunction_sum];
  }

  v3 = commonTypeDict_RealFormat_aggregateFunction_sum__typedict_integer;

  return v3;
}

void __68__PLEntryDefinition_commonTypeDict_RealFormat_aggregateFunction_sum__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"IsAggregateValue";
  v4[0] = &unk_1F5405B20;
  v4[1] = MEMORY[0x1E695E118];
  v3[2] = @"AggregateFunction";
  v4[2] = &unk_1F5405B08;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = commonTypeDict_RealFormat_aggregateFunction_sum__typedict_integer;
  commonTypeDict_RealFormat_aggregateFunction_sum__typedict_integer = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_StringFormat
{
  if (commonTypeDict_StringFormat_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_StringFormat];
  }

  v3 = commonTypeDict_StringFormat__typedict_string;

  return v3;
}

void __48__PLEntryDefinition_commonTypeDict_StringFormat__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"Type";
  v4[0] = &unk_1F5405B38;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = commonTypeDict_StringFormat__typedict_string;
  commonTypeDict_StringFormat__typedict_string = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_StringFormat_withBundleID
{
  if (commonTypeDict_StringFormat_withBundleID_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_StringFormat_withBundleID];
  }

  v3 = commonTypeDict_StringFormat_withBundleID__typedict_string;

  return v3;
}

void __61__PLEntryDefinition_commonTypeDict_StringFormat_withBundleID__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"BundleID";
  v4[0] = &unk_1F5405B38;
  v4[1] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_StringFormat_withBundleID__typedict_string;
  commonTypeDict_StringFormat_withBundleID__typedict_string = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_StringFormat_withAppName
{
  if (commonTypeDict_StringFormat_withAppName_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_StringFormat_withAppName];
  }

  v3 = commonTypeDict_StringFormat_withAppName__typedict_string;

  return v3;
}

void __60__PLEntryDefinition_commonTypeDict_StringFormat_withAppName__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"AppName";
  v4[0] = &unk_1F5405B38;
  v4[1] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_StringFormat_withAppName__typedict_string;
  commonTypeDict_StringFormat_withAppName__typedict_string = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_StringFormat_withProcessName
{
  if (commonTypeDict_StringFormat_withProcessName_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_StringFormat_withProcessName];
  }

  v3 = commonTypeDict_StringFormat_withProcessName__typedict_string;

  return v3;
}

void __64__PLEntryDefinition_commonTypeDict_StringFormat_withProcessName__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"ProcessName";
  v4[0] = &unk_1F5405B38;
  v4[1] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_StringFormat_withProcessName__typedict_string;
  commonTypeDict_StringFormat_withProcessName__typedict_string = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_DateFormat
{
  if (commonTypeDict_DateFormat_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_DateFormat];
  }

  v3 = commonTypeDict_DateFormat__typedict_date;

  return v3;
}

void __46__PLEntryDefinition_commonTypeDict_DateFormat__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"Type";
  v4[0] = &unk_1F5405B50;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = commonTypeDict_DateFormat__typedict_date;
  commonTypeDict_DateFormat__typedict_date = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_DateFormat_isCFAbsoluteTime
{
  if (commonTypeDict_DateFormat_isCFAbsoluteTime_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_DateFormat_isCFAbsoluteTime];
  }

  v3 = commonTypeDict_DateFormat_isCFAbsoluteTime__typedict_date;

  return v3;
}

void __63__PLEntryDefinition_commonTypeDict_DateFormat_isCFAbsoluteTime__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"Type";
  v3[1] = @"isCFAbsoluteTime";
  v4[0] = &unk_1F5405B50;
  v4[1] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = commonTypeDict_DateFormat_isCFAbsoluteTime__typedict_date;
  commonTypeDict_DateFormat_isCFAbsoluteTime__typedict_date = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)commonTypeDict_RawDataFormat
{
  if (commonTypeDict_RawDataFormat_onceToken != -1)
  {
    [PLEntryDefinition commonTypeDict_RawDataFormat];
  }

  v3 = commonTypeDict_RawDataFormat__typedict_rawdata;

  return v3;
}

void __49__PLEntryDefinition_commonTypeDict_RawDataFormat__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"Type";
  v4[0] = &unk_1F5405B68;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = commonTypeDict_RawDataFormat__typedict_rawdata;
  commonTypeDict_RawDataFormat__typedict_rawdata = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (void)manualSortOrderForEntryDefinition:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "[Error] Manual sort order keys not in table schema: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end