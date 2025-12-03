@interface PLEntryKey
+ (BOOL)isEntryKeySetup:(id)setup forOperatorName:(id)name;
+ (BOOL)shouldConfigureAdditionalTable:(id)table withType:(id)type withName:(id)name;
+ (BOOL)shouldConfigureTable:(id)table withType:(id)type withName:(id)name withConfigs:(id)configs;
+ (Class)operatorClassForEntryKey:(id)key;
+ (_PLTimeIntervalRange)timeIntervalRangeForEntryKey:(id)key;
+ (id)PLEntryAggregateKeysForOperator:(id)operator;
+ (id)PLEntryAggregateKeysForOperatorClass:(Class)class;
+ (id)PLEntryAggregateKeysForOperatorName:(id)name;
+ (id)PLEntryKeyForEntryKey:(id)key;
+ (id)PLEntryKeyForOperatorName:(id)name withType:(id)type withName:(id)withName withWildCardName:(id)cardName isDynamic:(BOOL)dynamic;
+ (id)PLEntryKeyStringsForTasking;
+ (id)PLEntryKeysForEntryType:(id)type;
+ (id)baseEntryKeyForEntryKey:(id)key;
+ (id)dynamicEntryKeyForEntryKey:(id)key;
+ (id)entryKeysForOperator:(id)operator;
+ (id)entryKeysForOperatorClass:(Class)class;
+ (id)entryKeysForOperatorName:(id)name;
+ (id)entryKeysForOperatorNameCopy:(id)copy;
+ (id)operatorNameForEntryKey:(id)key;
+ (id)timeintervalRangeEntryKeyForEntryKey:(id)key withTimeIntervalRange:(_PLTimeIntervalRange)range;
+ (id)wildCardForEntryKey:(id)key;
+ (void)PLEntryKeyStringsForTaskingReset;
+ (void)addPLEntryKey:(id)key;
+ (void)addPLEntryKeyStringToTasking:(id)tasking;
+ (void)setupEntryObjectsForOperatorClass:(Class)class;
- (PLEntryKey)baseEntryKey;
- (PLEntryKey)initWithOperatorName:(id)name withEntryType:(id)type withEntryName:(id)entryName;
- (_PLTimeIntervalRange)timeIntervalRange;
- (id)copyWithTimeIntervalRange:(_PLTimeIntervalRange)range;
- (id)copyWithWildCardName:(id)name;
- (id)debugDescription;
- (void)setIsDynamic:(BOOL)dynamic;
- (void)setTimeIntervalRange:(_PLTimeIntervalRange)range;
- (void)setWildCardName:(id)name;
@end

@implementation PLEntryKey

+ (void)addPLEntryKey:(id)key
{
  keyCopy = key;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  if ([keyCopy isDynamic])
  {
    v4 = _PLEntryKeysDynamic;
    baseEntryKey = [keyCopy baseEntryKey];
    entryKey = [baseEntryKey entryKey];
    [v4 setObject:keyCopy forKeyedSubscript:entryKey];
  }

  else
  {
    wildCardName = [keyCopy wildCardName];

    if (wildCardName)
    {
      [keyCopy timeIntervalRange];
      if (v8 != -1.0)
      {
        [keyCopy timeIntervalRange];
        if (v9 != -1.0)
        {
          v10 = _PLEntryKeyForEntryKeyForPLTimeInterval;
          baseEntryKey2 = [keyCopy baseEntryKey];
          entryKey2 = [baseEntryKey2 entryKey];
          v13 = [v10 objectForKeyedSubscript:entryKey2];

          if (!v13)
          {
            v14 = objc_opt_new();
            v15 = _PLEntryKeyForEntryKeyForPLTimeInterval;
            baseEntryKey3 = [keyCopy baseEntryKey];
            entryKey3 = [baseEntryKey3 entryKey];
            [v15 setObject:v14 forKeyedSubscript:entryKey3];
          }

          [keyCopy timeIntervalRange];
          v19 = v18;
          v21 = v20;
          v22 = _PLEntryKeyForEntryKeyForPLTimeInterval;
          baseEntryKey4 = [keyCopy baseEntryKey];
          entryKey4 = [baseEntryKey4 entryKey];
          v25 = [v22 objectForKeyedSubscript:entryKey4];
          v86[0] = v19;
          v86[1] = v21;
          v26 = [MEMORY[0x1E696B098] value:v86 withObjCType:"{_PLTimeIntervalRange=dd}"];
          [v25 setObject:keyCopy forKeyedSubscript:v26];
        }
      }

      v27 = _PLEntryKeyForEntryKeyForWildCardName;
      baseEntryKey5 = [keyCopy baseEntryKey];
      entryKey5 = [baseEntryKey5 entryKey];
      v30 = [v27 objectForKeyedSubscript:entryKey5];

      if (!v30)
      {
        v31 = objc_opt_new();
        v32 = _PLEntryKeyForEntryKeyForWildCardName;
        baseEntryKey6 = [keyCopy baseEntryKey];
        entryKey6 = [baseEntryKey6 entryKey];
        [v32 setObject:v31 forKeyedSubscript:entryKey6];
      }

      v35 = _PLEntryKeyForEntryKeyForWildCardName;
      baseEntryKey = [keyCopy baseEntryKey];
      entryKey7 = [baseEntryKey entryKey];
      v37 = [v35 objectForKeyedSubscript:entryKey7];
      wildCardName2 = [keyCopy wildCardName];
      [v37 setObject:keyCopy forKeyedSubscript:wildCardName2];
    }

    else
    {
      v39 = _PLEntryKeysForOperator;
      operatorName = [keyCopy operatorName];
      v41 = [v39 objectForKeyedSubscript:operatorName];

      if (!v41)
      {
        v42 = objc_opt_new();
        v43 = _PLEntryKeysForOperator;
        operatorName2 = [keyCopy operatorName];
        [v43 setObject:v42 forKeyedSubscript:operatorName2];

        v45 = objc_opt_new();
        v46 = _entryKeysForOperator;
        operatorName3 = [keyCopy operatorName];
        [v46 setObject:v45 forKeyedSubscript:operatorName3];
      }

      v48 = _PLEntryKeysForOperator;
      operatorName4 = [keyCopy operatorName];
      v50 = [v48 objectForKeyedSubscript:operatorName4];
      [v50 addObject:keyCopy];

      v51 = _entryKeysForOperator;
      operatorName5 = [keyCopy operatorName];
      v53 = [v51 objectForKeyedSubscript:operatorName5];
      entryKey8 = [keyCopy entryKey];
      [v53 addObject:entryKey8];

      v55 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
      operatorName6 = [keyCopy operatorName];
      v57 = [v55 objectForKeyedSubscript:operatorName6];

      if (!v57)
      {
        v58 = objc_opt_new();
        v59 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
        operatorName7 = [keyCopy operatorName];
        [v59 setObject:v58 forKeyedSubscript:operatorName7];
      }

      v61 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
      operatorName8 = [keyCopy operatorName];
      v63 = [v61 objectForKeyedSubscript:operatorName8];
      entryType = [keyCopy entryType];
      v65 = [v63 objectForKeyedSubscript:entryType];

      if (!v65)
      {
        v66 = objc_opt_new();
        v67 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
        operatorName9 = [keyCopy operatorName];
        v69 = [v67 objectForKeyedSubscript:operatorName9];
        entryType2 = [keyCopy entryType];
        [v69 setObject:v66 forKeyedSubscript:entryType2];
      }

      v71 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
      operatorName10 = [keyCopy operatorName];
      v73 = [v71 objectForKeyedSubscript:operatorName10];
      entryType3 = [keyCopy entryType];
      v75 = [v73 objectForKeyedSubscript:entryType3];
      entryName = [keyCopy entryName];
      [v75 setObject:keyCopy forKeyedSubscript:entryName];

      v77 = _PLEntryKeysForEntryType;
      entryType4 = [keyCopy entryType];
      v79 = [v77 objectForKeyedSubscript:entryType4];

      if (!v79)
      {
        v80 = objc_opt_new();
        v81 = _PLEntryKeysForEntryType;
        entryType5 = [keyCopy entryType];
        [v81 setObject:v80 forKeyedSubscript:entryType5];
      }

      v83 = _PLEntryKeysForEntryType;
      baseEntryKey = [keyCopy entryType];
      entryKey7 = [v83 objectForKeyedSubscript:baseEntryKey];
      [entryKey7 addObject:keyCopy];
    }
  }

  v84 = _PLEntryKeys;
  entryKey9 = [keyCopy entryKey];
  [v84 setObject:keyCopy forKeyedSubscript:entryKey9];

  objc_sync_exit(@"++entryKeyObjectsSync++");
}

+ (void)addPLEntryKeyStringToTasking:(id)tasking
{
  taskingCopy = tasking;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  [_PLEntryKeyStringsForTasking addObject:taskingCopy];
  objc_sync_exit(@"++entryKeyObjectsSync++");
}

+ (BOOL)shouldConfigureAdditionalTable:(id)table withType:(id)type withName:(id)name
{
  tableCopy = table;
  typeCopy = type;
  nameCopy = name;
  v11 = +[PLCoreStorage additionalTables];

  if (v11 && (+[PLCoreStorage additionalTables](PLCoreStorage, "additionalTables"), v12 = objc_claimAutoreleasedReturnValue(), [v12 objectForKey:tableCopy], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = [PLEntryKey entryKeyStringForOperatorName:tableCopy withType:typeCopy withName:nameCopy];
    v15 = +[PLCoreStorage additionalTables];
    v16 = [v15 objectForKeyedSubscript:tableCopy];
    v17 = [v16 count];

    if (!v17)
    {
      goto LABEL_7;
    }

    v18 = +[PLCoreStorage additionalTables];
    v19 = [v18 objectForKeyedSubscript:tableCopy];
    v20 = [v19 objectForKey:typeCopy];

    if (!v20)
    {
      goto LABEL_9;
    }

    v21 = +[PLCoreStorage additionalTables];
    v22 = [v21 objectForKeyedSubscript:tableCopy];
    v23 = [v22 objectForKeyedSubscript:typeCopy];
    v24 = [v23 count];

    if (!v24)
    {
      goto LABEL_7;
    }

    v25 = +[PLCoreStorage additionalTables];
    v26 = [v25 objectForKeyedSubscript:tableCopy];
    v27 = [v26 objectForKeyedSubscript:typeCopy];
    v28 = [v27 containsObject:nameCopy];

    if (!v28)
    {
LABEL_9:
      v29 = 0;
    }

    else
    {
LABEL_7:
      [self addPLEntryKeyStringToTasking:v14];
      v29 = 1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (BOOL)shouldConfigureTable:(id)table withType:(id)type withName:(id)name withConfigs:(id)configs
{
  tableCopy = table;
  typeCopy = type;
  nameCopy = name;
  configsCopy = configs;
  if (!+[PLDefaults fullMode](PLDefaults, "fullMode") && ([configsCopy objectForKey:@"TaskModeTable"], v14 = objc_claimAutoreleasedReturnValue(), v14, v14) && (objc_msgSend(configsCopy, "objectForKeyedSubscript:", @"TaskModeTable"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "BOOLValue"), v15, v16))
  {
    if (+[PLDefaults liteMode])
    {
      v17 = 0;
    }

    else
    {
      v17 = [self shouldConfigureAdditionalTable:tableCopy withType:typeCopy withName:nameCopy];
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

+ (void)setupEntryObjectsForOperatorClass:(Class)class
{
  v5 = [PLEntryDefinition entryDefinitionsForOperatorClass:?];
  if (setupEntryObjectsForOperatorClass__onceToken != -1)
  {
    +[PLEntryKey setupEntryObjectsForOperatorClass:];
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__11;
  v12[4] = __Block_byref_object_dispose__11;
  v13 = 0;
  className = [(objc_class *)class className];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PLEntryKey_setupEntryObjectsForOperatorClass___block_invoke_16;
  v8[3] = &unk_1E851A4C0;
  v10 = v12;
  selfCopy = self;
  v7 = className;
  v9 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];

  _Block_object_dispose(v12, 8);
}

uint64_t __48__PLEntryKey_setupEntryObjectsForOperatorClass___block_invoke()
{
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v0 = objc_opt_new();
  v1 = _PLEntryKeysForOperator;
  _PLEntryKeysForOperator = v0;

  v2 = objc_opt_new();
  v3 = _entryKeysForOperator;
  _entryKeysForOperator = v2;

  v4 = objc_opt_new();
  v5 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
  _PLEntryKeyForOperatorForEntryTypeForEntryName = v4;

  v6 = objc_opt_new();
  v7 = _PLEntryKeysForEntryType;
  _PLEntryKeysForEntryType = v6;

  v8 = objc_opt_new();
  v9 = _PLEntryKeys;
  _PLEntryKeys = v8;

  v10 = objc_opt_new();
  v11 = _PLEntryKeyForEntryKeyForWildCardName;
  _PLEntryKeyForEntryKeyForWildCardName = v10;

  v12 = objc_opt_new();
  v13 = _PLEntryKeyForEntryKeyForPLTimeInterval;
  _PLEntryKeyForEntryKeyForPLTimeInterval = v12;

  v14 = objc_opt_new();
  v15 = _PLEntryKeysDynamic;
  _PLEntryKeysDynamic = v14;

  v16 = objc_opt_new();
  v17 = _PLEntryKeyStringsForTasking;
  _PLEntryKeyStringsForTasking = v16;

  return objc_sync_exit(@"++entryKeyObjectsSync++");
}

void __48__PLEntryKey_setupEntryObjectsForOperatorClass___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];
        v14 = [v13 objectForKeyedSubscript:@"Configs"];
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        if ([*(a1 + 48) shouldConfigureTable:*(a1 + 32) withType:v5 withName:v12 withConfigs:*(*(*(a1 + 40) + 8) + 40)])
        {
          v17 = [[PLEntryKey alloc] initWithOperatorName:*(a1 + 32) withEntryType:v5 withEntryName:v12];
          [*(a1 + 48) addPLEntryKey:v17];
        }

        v18 = *(*(a1 + 40) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = 0;
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)entryKeysForOperator:(id)operator
{
  className = [operator className];
  v5 = [self entryKeysForOperatorName:className];

  return v5;
}

+ (id)entryKeysForOperatorClass:(Class)class
{
  className = [(objc_class *)class className];
  v5 = [self entryKeysForOperatorName:className];

  return v5;
}

+ (id)entryKeysForOperatorName:(id)name
{
  nameCopy = name;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_entryKeysForOperator objectForKeyedSubscript:nameCopy];
  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v4;
}

+ (id)entryKeysForOperatorNameCopy:(id)copy
{
  copyCopy = copy;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_entryKeysForOperator objectForKeyedSubscript:copyCopy];
  v5 = [v4 copy];

  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v5;
}

+ (id)PLEntryKeysForEntryType:(id)type
{
  typeCopy = type;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_PLEntryKeysForEntryType objectForKeyedSubscript:typeCopy];
  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v4;
}

+ (id)PLEntryKeyStringsForTasking
{
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v2 = _PLEntryKeyStringsForTasking;
  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v2;
}

+ (void)PLEntryKeyStringsForTaskingReset
{
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v2 = _PLEntryKeyStringsForTasking;
  _PLEntryKeyStringsForTasking = 0;

  objc_sync_exit(@"++entryKeyObjectsSync++");
}

+ (id)PLEntryAggregateKeysForOperator:(id)operator
{
  className = [operator className];
  v5 = [self PLEntryAggregateKeysForOperatorName:className];

  return v5;
}

+ (id)PLEntryAggregateKeysForOperatorClass:(Class)class
{
  className = [(objc_class *)class className];
  v5 = [self PLEntryAggregateKeysForOperatorName:className];

  return v5;
}

+ (id)PLEntryAggregateKeysForOperatorName:(id)name
{
  nameCopy = name;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_PLEntryKeyForOperatorForEntryTypeForEntryName objectForKeyedSubscript:nameCopy];
  v5 = [v4 objectForKeyedSubscript:@"Aggregate"];
  allValues = [v5 allValues];

  objc_sync_exit(@"++entryKeyObjectsSync++");

  return allValues;
}

+ (id)PLEntryKeyForEntryKey:(id)key
{
  keyCopy = key;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  0x7FFFFFFFFFFFFFFFLL = [_PLEntryKeys objectForKeyedSubscript:keyCopy];
  objc_sync_exit(@"++entryKeyObjectsSync++");
  if (0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%@", @"Dynamic"];
  v7 = [keyCopy rangeOfString:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [keyCopy stringByReplacingOccurrencesOfString:v6 withString:&stru_1F539D228];

    keyCopy = v8;
  }

  if ([keyCopy rangeOfString:@"+"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = [keyCopy componentsSeparatedByString:@"+"];
    v11 = [v10 objectAtIndexedSubscript:0];

    v9 = [v10 objectAtIndexedSubscript:1];

    keyCopy = v11;
  }

  v12 = [keyCopy componentsSeparatedByString:@"_"];
  v13 = [v12 mutableCopy];

  v14 = [v13 count];
  if (v14 < 3)
  {
    0x7FFFFFFFFFFFFFFFLL = 0;
  }

  else
  {
    v15 = [v13 objectAtIndexedSubscript:0];
    [v13 removeObjectAtIndex:0];
    v16 = [v13 objectAtIndexedSubscript:0];
    [v13 removeObjectAtIndex:0];
    if ([v13 count] < 2)
    {
      [v13 objectAtIndexedSubscript:0];
    }

    else
    {
      [v13 componentsJoinedByString:@"_"];
    }
    v17 = ;
    0x7FFFFFFFFFFFFFFFLL = [self PLEntryKeyForOperatorName:v15 withType:v16 withName:v17 withWildCardName:v9 isDynamic:v7 != 0x7FFFFFFFFFFFFFFFLL];
  }

  if (v14 >= 3)
  {
LABEL_14:
    0x7FFFFFFFFFFFFFFFLL = 0x7FFFFFFFFFFFFFFFLL;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)PLEntryKeyForOperatorName:(id)name withType:(id)type withName:(id)withName withWildCardName:(id)cardName isDynamic:(BOOL)dynamic
{
  dynamicCopy = dynamic;
  nameCopy = name;
  typeCopy = type;
  withNameCopy = withName;
  cardNameCopy = cardName;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v16 = [_PLEntryKeyForOperatorForEntryTypeForEntryName objectForKeyedSubscript:nameCopy];
  v17 = [v16 objectForKeyedSubscript:typeCopy];
  v18 = [v17 objectForKeyedSubscript:withNameCopy];

  objc_sync_exit(@"++entryKeyObjectsSync++");
  if (v18)
  {
    if (dynamicCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [[PLEntryKey alloc] initWithOperatorName:nameCopy withEntryType:typeCopy withEntryName:withNameCopy];
    if (+[PLDefaults debugEnabled])
    {
      v37 = cardNameCopy;
      selfCopy = self;
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown entryKey %@", v18];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLEntryKey.m"];
      lastPathComponent = [v24 lastPathComponent];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntryKey PLEntryKeyForOperatorName:withType:withName:withWildCardName:isDynamic:]"];
      [PLCoreStorage logMessage:v23 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:295];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [(PLSubmissionFileSP *)v23 copyAndPrepareLog];
      }

      cardNameCopy = v37;
      self = selfCopy;
    }

    [self addPLEntryKey:v18];
    if (dynamicCopy)
    {
LABEL_3:
      objc_sync_enter(@"++entryKeyObjectsSync++");
      v19 = _PLEntryKeysDynamic;
      entryKey = [(PLEntryKey *)v18 entryKey];
      v21 = [v19 objectForKeyedSubscript:entryKey];

      objc_sync_exit(@"++entryKeyObjectsSync++");
      if (!v21)
      {
        v22 = [(PLEntryKey *)v18 copyWithIsDynamic:1];
LABEL_15:
        v21 = v22;
        [self addPLEntryKey:v22];
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  if (!cardNameCopy)
  {
    goto LABEL_17;
  }

  objc_sync_enter(@"++entryKeyObjectsSync++");
  v28 = _PLEntryKeyForEntryKeyForWildCardName;
  entryKey2 = [(PLEntryKey *)v18 entryKey];
  v30 = [v28 objectForKeyedSubscript:entryKey2];
  v21 = [v30 objectForKeyedSubscript:cardNameCopy];

  objc_sync_exit(@"++entryKeyObjectsSync++");
  if (!v21)
  {
    if ([typeCopy isEqualToString:@"Aggregate"])
    {
      v31 = [cardNameCopy componentsSeparatedByString:@"_"];
      [v31 count];
      v32 = [v31 objectAtIndex:0];
      v33 = atof([v32 UTF8String]);

      v34 = [v31 objectAtIndex:1];
      v35 = atof([v34 UTF8String]);

      v22 = [(PLEntryKey *)v18 copyWithTimeIntervalRange:v33, v35];
    }

    else
    {
      v22 = [(PLEntryKey *)v18 copyWithWildCardName:cardNameCopy];
    }

    goto LABEL_15;
  }

LABEL_16:

  v18 = v21;
LABEL_17:

  return v18;
}

+ (id)dynamicEntryKeyForEntryKey:(id)key
{
  v4 = [self PLEntryKeyForEntryKey:key];
  operatorName = [v4 operatorName];
  entryType = [v4 entryType];
  entryName = [v4 entryName];
  v8 = [self entryKeyForOperatorName:operatorName withType:entryType withName:entryName isDynamic:1];

  return v8;
}

+ (id)timeintervalRangeEntryKeyForEntryKey:(id)key withTimeIntervalRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  keyCopy = key;
  v8 = [self PLEntryKeyForEntryKey:keyCopy];
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v9 = _PLEntryKeyForEntryKeyForPLTimeInterval;
  entryKey = [v8 entryKey];
  v11 = [v9 objectForKeyedSubscript:entryKey];
  *v16 = location;
  *&v16[1] = length;
  v12 = [MEMORY[0x1E696B098] value:v16 withObjCType:"{_PLTimeIntervalRange=dd}"];
  v13 = [v11 objectForKeyedSubscript:v12];

  objc_sync_exit(@"++entryKeyObjectsSync++");
  if (!v13)
  {
    v13 = [v8 copyWithTimeIntervalRange:{location, length}];
    [self addPLEntryKey:v13];
  }

  entryKey2 = [v13 entryKey];

  return entryKey2;
}

+ (Class)operatorClassForEntryKey:(id)key
{
  v3 = [self PLEntryKeyForEntryKey:key];
  operatorClass = [v3 operatorClass];

  return operatorClass;
}

+ (id)operatorNameForEntryKey:(id)key
{
  v3 = [self PLEntryKeyForEntryKey:key];
  operatorName = [v3 operatorName];

  return operatorName;
}

+ (id)wildCardForEntryKey:(id)key
{
  v3 = [self PLEntryKeyForEntryKey:key];
  wildCardName = [v3 wildCardName];

  return wildCardName;
}

+ (id)baseEntryKeyForEntryKey:(id)key
{
  v3 = [self PLEntryKeyForEntryKey:key];
  baseEntryKey = [v3 baseEntryKey];
  entryKey = [baseEntryKey entryKey];

  return entryKey;
}

+ (_PLTimeIntervalRange)timeIntervalRangeForEntryKey:(id)key
{
  v3 = [self PLEntryKeyForEntryKey:key];
  [v3 timeIntervalRange];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

+ (BOOL)isEntryKeySetup:(id)setup forOperatorName:(id)name
{
  setupCopy = setup;
  v6 = [PLEntryKey entryKeysForOperatorNameCopy:name];
  v7 = [v6 containsObject:setupCopy];

  return v7;
}

- (void)setWildCardName:(id)name
{
  v4 = [name copy];
  wildCardName = self->_wildCardName;
  self->_wildCardName = v4;

  v6 = MEMORY[0x1E696AEC0];
  entryKey = [(PLEntryKey *)self entryKey];
  v7 = [v6 stringWithFormat:@"%@+%@", entryKey, self->_wildCardName];
  entryKey = self->_entryKey;
  self->_entryKey = v7;
}

- (void)setIsDynamic:(BOOL)dynamic
{
  self->_isDynamic = dynamic;
  v4 = MEMORY[0x1E696AEC0];
  entryKey = [(PLEntryKey *)self entryKey];
  v5 = [v4 stringWithFormat:@"%@_%@", entryKey, @"Dynamic"];
  entryKey = self->_entryKey;
  self->_entryKey = v5;
}

- (void)setTimeIntervalRange:(_PLTimeIntervalRange)range
{
  self->_timeIntervalRange = range;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f_%f", *&range.location, *&range.length];
  [(PLEntryKey *)self setWildCardName:v4];
}

- (PLEntryKey)initWithOperatorName:(id)name withEntryType:(id)type withEntryName:(id)entryName
{
  nameCopy = name;
  typeCopy = type;
  entryNameCopy = entryName;
  v25.receiver = self;
  v25.super_class = PLEntryKey;
  v12 = [(PLEntryKey *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operatorName, name);
    v14 = NSClassFromString(nameCopy);
    operatorClass = v13->_operatorClass;
    v13->_operatorClass = v14;

    objc_storeStrong(&v13->_entryType, type);
    objc_storeStrong(&v13->_entryName, entryName);
    entryNameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", nameCopy, typeCopy, entryNameCopy];
    entryKey = v13->_entryKey;
    v13->_entryKey = entryNameCopy;

    objc_storeWeak(&v13->_baseEntryKey, v13);
    wildCardName = v13->_wildCardName;
    v13->_wildCardName = 0;

    __asm { FMOV            V0.2D, #-1.0 }

    v13->_timeIntervalRange = _Q0;
    v13->_isDynamic = 0;
  }

  return v13;
}

- (id)copyWithWildCardName:(id)name
{
  nameCopy = name;
  v5 = [PLEntryKey alloc];
  operatorName = [(PLEntryKey *)self operatorName];
  entryType = [(PLEntryKey *)self entryType];
  entryName = [(PLEntryKey *)self entryName];
  v9 = [(PLEntryKey *)v5 initWithOperatorName:operatorName withEntryType:entryType withEntryName:entryName];

  [(PLEntryKey *)v9 setWildCardName:nameCopy];
  [(PLEntryKey *)v9 setBaseEntryKey:self];
  return v9;
}

- (id)copyWithTimeIntervalRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v6 = [PLEntryKey alloc];
  operatorName = [(PLEntryKey *)self operatorName];
  entryType = [(PLEntryKey *)self entryType];
  entryName = [(PLEntryKey *)self entryName];
  v10 = [(PLEntryKey *)v6 initWithOperatorName:operatorName withEntryType:entryType withEntryName:entryName];

  [(PLEntryKey *)v10 setTimeIntervalRange:location, length];
  [(PLEntryKey *)v10 setBaseEntryKey:self];
  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  entryKey = [(PLEntryKey *)self entryKey];
  operatorName = [(PLEntryKey *)self operatorName];
  entryType = [(PLEntryKey *)self entryType];
  entryName = [(PLEntryKey *)self entryName];
  wildCardName = [(PLEntryKey *)self wildCardName];
  [(PLEntryKey *)self isDynamic];
  v9 = NSStringFromBOOL();
  v10 = [v3 stringWithFormat:@"[%p] entryKey=%@ operatorName=%@ entryType=%@ entryName=%@ wildCardName=%@ isDynamc=%@", self, entryKey, operatorName, entryType, entryName, wildCardName, v9];

  return v10;
}

- (PLEntryKey)baseEntryKey
{
  WeakRetained = objc_loadWeakRetained(&self->_baseEntryKey);

  return WeakRetained;
}

- (_PLTimeIntervalRange)timeIntervalRange
{
  location = self->_timeIntervalRange.location;
  length = self->_timeIntervalRange.length;
  result.length = length;
  result.location = location;
  return result;
}

@end