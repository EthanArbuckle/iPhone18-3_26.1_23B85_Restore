@interface PLEntryKey
+ (BOOL)isEntryKeySetup:(id)a3 forOperatorName:(id)a4;
+ (BOOL)shouldConfigureAdditionalTable:(id)a3 withType:(id)a4 withName:(id)a5;
+ (BOOL)shouldConfigureTable:(id)a3 withType:(id)a4 withName:(id)a5 withConfigs:(id)a6;
+ (Class)operatorClassForEntryKey:(id)a3;
+ (_PLTimeIntervalRange)timeIntervalRangeForEntryKey:(id)a3;
+ (id)PLEntryAggregateKeysForOperator:(id)a3;
+ (id)PLEntryAggregateKeysForOperatorClass:(Class)a3;
+ (id)PLEntryAggregateKeysForOperatorName:(id)a3;
+ (id)PLEntryKeyForEntryKey:(id)a3;
+ (id)PLEntryKeyForOperatorName:(id)a3 withType:(id)a4 withName:(id)a5 withWildCardName:(id)a6 isDynamic:(BOOL)a7;
+ (id)PLEntryKeyStringsForTasking;
+ (id)PLEntryKeysForEntryType:(id)a3;
+ (id)baseEntryKeyForEntryKey:(id)a3;
+ (id)dynamicEntryKeyForEntryKey:(id)a3;
+ (id)entryKeysForOperator:(id)a3;
+ (id)entryKeysForOperatorClass:(Class)a3;
+ (id)entryKeysForOperatorName:(id)a3;
+ (id)entryKeysForOperatorNameCopy:(id)a3;
+ (id)operatorNameForEntryKey:(id)a3;
+ (id)timeintervalRangeEntryKeyForEntryKey:(id)a3 withTimeIntervalRange:(_PLTimeIntervalRange)a4;
+ (id)wildCardForEntryKey:(id)a3;
+ (void)PLEntryKeyStringsForTaskingReset;
+ (void)addPLEntryKey:(id)a3;
+ (void)addPLEntryKeyStringToTasking:(id)a3;
+ (void)setupEntryObjectsForOperatorClass:(Class)a3;
- (PLEntryKey)baseEntryKey;
- (PLEntryKey)initWithOperatorName:(id)a3 withEntryType:(id)a4 withEntryName:(id)a5;
- (_PLTimeIntervalRange)timeIntervalRange;
- (id)copyWithTimeIntervalRange:(_PLTimeIntervalRange)a3;
- (id)copyWithWildCardName:(id)a3;
- (id)debugDescription;
- (void)setIsDynamic:(BOOL)a3;
- (void)setTimeIntervalRange:(_PLTimeIntervalRange)a3;
- (void)setWildCardName:(id)a3;
@end

@implementation PLEntryKey

+ (void)addPLEntryKey:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  if ([v3 isDynamic])
  {
    v4 = _PLEntryKeysDynamic;
    v5 = [v3 baseEntryKey];
    v6 = [v5 entryKey];
    [v4 setObject:v3 forKeyedSubscript:v6];
  }

  else
  {
    v7 = [v3 wildCardName];

    if (v7)
    {
      [v3 timeIntervalRange];
      if (v8 != -1.0)
      {
        [v3 timeIntervalRange];
        if (v9 != -1.0)
        {
          v10 = _PLEntryKeyForEntryKeyForPLTimeInterval;
          v11 = [v3 baseEntryKey];
          v12 = [v11 entryKey];
          v13 = [v10 objectForKeyedSubscript:v12];

          if (!v13)
          {
            v14 = objc_opt_new();
            v15 = _PLEntryKeyForEntryKeyForPLTimeInterval;
            v16 = [v3 baseEntryKey];
            v17 = [v16 entryKey];
            [v15 setObject:v14 forKeyedSubscript:v17];
          }

          [v3 timeIntervalRange];
          v19 = v18;
          v21 = v20;
          v22 = _PLEntryKeyForEntryKeyForPLTimeInterval;
          v23 = [v3 baseEntryKey];
          v24 = [v23 entryKey];
          v25 = [v22 objectForKeyedSubscript:v24];
          v86[0] = v19;
          v86[1] = v21;
          v26 = [MEMORY[0x1E696B098] value:v86 withObjCType:"{_PLTimeIntervalRange=dd}"];
          [v25 setObject:v3 forKeyedSubscript:v26];
        }
      }

      v27 = _PLEntryKeyForEntryKeyForWildCardName;
      v28 = [v3 baseEntryKey];
      v29 = [v28 entryKey];
      v30 = [v27 objectForKeyedSubscript:v29];

      if (!v30)
      {
        v31 = objc_opt_new();
        v32 = _PLEntryKeyForEntryKeyForWildCardName;
        v33 = [v3 baseEntryKey];
        v34 = [v33 entryKey];
        [v32 setObject:v31 forKeyedSubscript:v34];
      }

      v35 = _PLEntryKeyForEntryKeyForWildCardName;
      v5 = [v3 baseEntryKey];
      v36 = [v5 entryKey];
      v37 = [v35 objectForKeyedSubscript:v36];
      v38 = [v3 wildCardName];
      [v37 setObject:v3 forKeyedSubscript:v38];
    }

    else
    {
      v39 = _PLEntryKeysForOperator;
      v40 = [v3 operatorName];
      v41 = [v39 objectForKeyedSubscript:v40];

      if (!v41)
      {
        v42 = objc_opt_new();
        v43 = _PLEntryKeysForOperator;
        v44 = [v3 operatorName];
        [v43 setObject:v42 forKeyedSubscript:v44];

        v45 = objc_opt_new();
        v46 = _entryKeysForOperator;
        v47 = [v3 operatorName];
        [v46 setObject:v45 forKeyedSubscript:v47];
      }

      v48 = _PLEntryKeysForOperator;
      v49 = [v3 operatorName];
      v50 = [v48 objectForKeyedSubscript:v49];
      [v50 addObject:v3];

      v51 = _entryKeysForOperator;
      v52 = [v3 operatorName];
      v53 = [v51 objectForKeyedSubscript:v52];
      v54 = [v3 entryKey];
      [v53 addObject:v54];

      v55 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
      v56 = [v3 operatorName];
      v57 = [v55 objectForKeyedSubscript:v56];

      if (!v57)
      {
        v58 = objc_opt_new();
        v59 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
        v60 = [v3 operatorName];
        [v59 setObject:v58 forKeyedSubscript:v60];
      }

      v61 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
      v62 = [v3 operatorName];
      v63 = [v61 objectForKeyedSubscript:v62];
      v64 = [v3 entryType];
      v65 = [v63 objectForKeyedSubscript:v64];

      if (!v65)
      {
        v66 = objc_opt_new();
        v67 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
        v68 = [v3 operatorName];
        v69 = [v67 objectForKeyedSubscript:v68];
        v70 = [v3 entryType];
        [v69 setObject:v66 forKeyedSubscript:v70];
      }

      v71 = _PLEntryKeyForOperatorForEntryTypeForEntryName;
      v72 = [v3 operatorName];
      v73 = [v71 objectForKeyedSubscript:v72];
      v74 = [v3 entryType];
      v75 = [v73 objectForKeyedSubscript:v74];
      v76 = [v3 entryName];
      [v75 setObject:v3 forKeyedSubscript:v76];

      v77 = _PLEntryKeysForEntryType;
      v78 = [v3 entryType];
      v79 = [v77 objectForKeyedSubscript:v78];

      if (!v79)
      {
        v80 = objc_opt_new();
        v81 = _PLEntryKeysForEntryType;
        v82 = [v3 entryType];
        [v81 setObject:v80 forKeyedSubscript:v82];
      }

      v83 = _PLEntryKeysForEntryType;
      v5 = [v3 entryType];
      v36 = [v83 objectForKeyedSubscript:v5];
      [v36 addObject:v3];
    }
  }

  v84 = _PLEntryKeys;
  v85 = [v3 entryKey];
  [v84 setObject:v3 forKeyedSubscript:v85];

  objc_sync_exit(@"++entryKeyObjectsSync++");
}

+ (void)addPLEntryKeyStringToTasking:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  [_PLEntryKeyStringsForTasking addObject:v3];
  objc_sync_exit(@"++entryKeyObjectsSync++");
}

+ (BOOL)shouldConfigureAdditionalTable:(id)a3 withType:(id)a4 withName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[PLCoreStorage additionalTables];

  if (v11 && (+[PLCoreStorage additionalTables](PLCoreStorage, "additionalTables"), v12 = objc_claimAutoreleasedReturnValue(), [v12 objectForKey:v8], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = [PLEntryKey entryKeyStringForOperatorName:v8 withType:v9 withName:v10];
    v15 = +[PLCoreStorage additionalTables];
    v16 = [v15 objectForKeyedSubscript:v8];
    v17 = [v16 count];

    if (!v17)
    {
      goto LABEL_7;
    }

    v18 = +[PLCoreStorage additionalTables];
    v19 = [v18 objectForKeyedSubscript:v8];
    v20 = [v19 objectForKey:v9];

    if (!v20)
    {
      goto LABEL_9;
    }

    v21 = +[PLCoreStorage additionalTables];
    v22 = [v21 objectForKeyedSubscript:v8];
    v23 = [v22 objectForKeyedSubscript:v9];
    v24 = [v23 count];

    if (!v24)
    {
      goto LABEL_7;
    }

    v25 = +[PLCoreStorage additionalTables];
    v26 = [v25 objectForKeyedSubscript:v8];
    v27 = [v26 objectForKeyedSubscript:v9];
    v28 = [v27 containsObject:v10];

    if (!v28)
    {
LABEL_9:
      v29 = 0;
    }

    else
    {
LABEL_7:
      [a1 addPLEntryKeyStringToTasking:v14];
      v29 = 1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (BOOL)shouldConfigureTable:(id)a3 withType:(id)a4 withName:(id)a5 withConfigs:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!+[PLDefaults fullMode](PLDefaults, "fullMode") && ([v13 objectForKey:@"TaskModeTable"], v14 = objc_claimAutoreleasedReturnValue(), v14, v14) && (objc_msgSend(v13, "objectForKeyedSubscript:", @"TaskModeTable"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "BOOLValue"), v15, v16))
  {
    if (+[PLDefaults liteMode])
    {
      v17 = 0;
    }

    else
    {
      v17 = [a1 shouldConfigureAdditionalTable:v10 withType:v11 withName:v12];
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

+ (void)setupEntryObjectsForOperatorClass:(Class)a3
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
  v6 = [(objc_class *)a3 className];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PLEntryKey_setupEntryObjectsForOperatorClass___block_invoke_16;
  v8[3] = &unk_1E851A4C0;
  v10 = v12;
  v11 = a1;
  v7 = v6;
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

+ (id)entryKeysForOperator:(id)a3
{
  v4 = [a3 className];
  v5 = [a1 entryKeysForOperatorName:v4];

  return v5;
}

+ (id)entryKeysForOperatorClass:(Class)a3
{
  v4 = [(objc_class *)a3 className];
  v5 = [a1 entryKeysForOperatorName:v4];

  return v5;
}

+ (id)entryKeysForOperatorName:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_entryKeysForOperator objectForKeyedSubscript:v3];
  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v4;
}

+ (id)entryKeysForOperatorNameCopy:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_entryKeysForOperator objectForKeyedSubscript:v3];
  v5 = [v4 copy];

  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v5;
}

+ (id)PLEntryKeysForEntryType:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_PLEntryKeysForEntryType objectForKeyedSubscript:v3];
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

+ (id)PLEntryAggregateKeysForOperator:(id)a3
{
  v4 = [a3 className];
  v5 = [a1 PLEntryAggregateKeysForOperatorName:v4];

  return v5;
}

+ (id)PLEntryAggregateKeysForOperatorClass:(Class)a3
{
  v4 = [(objc_class *)a3 className];
  v5 = [a1 PLEntryAggregateKeysForOperatorName:v4];

  return v5;
}

+ (id)PLEntryAggregateKeysForOperatorName:(id)a3
{
  v3 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v4 = [_PLEntryKeyForOperatorForEntryTypeForEntryName objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"Aggregate"];
  v6 = [v5 allValues];

  objc_sync_exit(@"++entryKeyObjectsSync++");

  return v6;
}

+ (id)PLEntryKeyForEntryKey:(id)a3
{
  v4 = a3;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v5 = [_PLEntryKeys objectForKeyedSubscript:v4];
  objc_sync_exit(@"++entryKeyObjectsSync++");
  if (v5)
  {
    goto LABEL_14;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_%@", @"Dynamic"];
  v7 = [v4 rangeOfString:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v4 stringByReplacingOccurrencesOfString:v6 withString:&stru_1F539D228];

    v4 = v8;
  }

  if ([v4 rangeOfString:@"+"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v4 componentsSeparatedByString:@"+"];
    v11 = [v10 objectAtIndexedSubscript:0];

    v9 = [v10 objectAtIndexedSubscript:1];

    v4 = v11;
  }

  v12 = [v4 componentsSeparatedByString:@"_"];
  v13 = [v12 mutableCopy];

  v14 = [v13 count];
  if (v14 < 3)
  {
    v5 = 0;
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
    v5 = [a1 PLEntryKeyForOperatorName:v15 withType:v16 withName:v17 withWildCardName:v9 isDynamic:v7 != 0x7FFFFFFFFFFFFFFFLL];
  }

  if (v14 >= 3)
  {
LABEL_14:
    v5 = v5;
    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)PLEntryKeyForOperatorName:(id)a3 withType:(id)a4 withName:(id)a5 withWildCardName:(id)a6 isDynamic:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v16 = [_PLEntryKeyForOperatorForEntryTypeForEntryName objectForKeyedSubscript:v12];
  v17 = [v16 objectForKeyedSubscript:v13];
  v18 = [v17 objectForKeyedSubscript:v14];

  objc_sync_exit(@"++entryKeyObjectsSync++");
  if (v18)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [[PLEntryKey alloc] initWithOperatorName:v12 withEntryType:v13 withEntryName:v14];
    if (+[PLDefaults debugEnabled])
    {
      v37 = v15;
      v38 = a1;
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown entryKey %@", v18];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/DataTypes/PLEntryKey.m"];
      v25 = [v24 lastPathComponent];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntryKey PLEntryKeyForOperatorName:withType:withName:withWildCardName:isDynamic:]"];
      [PLCoreStorage logMessage:v23 fromFile:v25 fromFunction:v26 fromLineNumber:295];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [(PLSubmissionFileSP *)v23 copyAndPrepareLog];
      }

      v15 = v37;
      a1 = v38;
    }

    [a1 addPLEntryKey:v18];
    if (v7)
    {
LABEL_3:
      objc_sync_enter(@"++entryKeyObjectsSync++");
      v19 = _PLEntryKeysDynamic;
      v20 = [(PLEntryKey *)v18 entryKey];
      v21 = [v19 objectForKeyedSubscript:v20];

      objc_sync_exit(@"++entryKeyObjectsSync++");
      if (!v21)
      {
        v22 = [(PLEntryKey *)v18 copyWithIsDynamic:1];
LABEL_15:
        v21 = v22;
        [a1 addPLEntryKey:v22];
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  if (!v15)
  {
    goto LABEL_17;
  }

  objc_sync_enter(@"++entryKeyObjectsSync++");
  v28 = _PLEntryKeyForEntryKeyForWildCardName;
  v29 = [(PLEntryKey *)v18 entryKey];
  v30 = [v28 objectForKeyedSubscript:v29];
  v21 = [v30 objectForKeyedSubscript:v15];

  objc_sync_exit(@"++entryKeyObjectsSync++");
  if (!v21)
  {
    if ([v13 isEqualToString:@"Aggregate"])
    {
      v31 = [v15 componentsSeparatedByString:@"_"];
      [v31 count];
      v32 = [v31 objectAtIndex:0];
      v33 = atof([v32 UTF8String]);

      v34 = [v31 objectAtIndex:1];
      v35 = atof([v34 UTF8String]);

      v22 = [(PLEntryKey *)v18 copyWithTimeIntervalRange:v33, v35];
    }

    else
    {
      v22 = [(PLEntryKey *)v18 copyWithWildCardName:v15];
    }

    goto LABEL_15;
  }

LABEL_16:

  v18 = v21;
LABEL_17:

  return v18;
}

+ (id)dynamicEntryKeyForEntryKey:(id)a3
{
  v4 = [a1 PLEntryKeyForEntryKey:a3];
  v5 = [v4 operatorName];
  v6 = [v4 entryType];
  v7 = [v4 entryName];
  v8 = [a1 entryKeyForOperatorName:v5 withType:v6 withName:v7 isDynamic:1];

  return v8;
}

+ (id)timeintervalRangeEntryKeyForEntryKey:(id)a3 withTimeIntervalRange:(_PLTimeIntervalRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [a1 PLEntryKeyForEntryKey:v7];
  objc_sync_enter(@"++entryKeyObjectsSync++");
  v9 = _PLEntryKeyForEntryKeyForPLTimeInterval;
  v10 = [v8 entryKey];
  v11 = [v9 objectForKeyedSubscript:v10];
  *v16 = location;
  *&v16[1] = length;
  v12 = [MEMORY[0x1E696B098] value:v16 withObjCType:"{_PLTimeIntervalRange=dd}"];
  v13 = [v11 objectForKeyedSubscript:v12];

  objc_sync_exit(@"++entryKeyObjectsSync++");
  if (!v13)
  {
    v13 = [v8 copyWithTimeIntervalRange:{location, length}];
    [a1 addPLEntryKey:v13];
  }

  v14 = [v13 entryKey];

  return v14;
}

+ (Class)operatorClassForEntryKey:(id)a3
{
  v3 = [a1 PLEntryKeyForEntryKey:a3];
  v4 = [v3 operatorClass];

  return v4;
}

+ (id)operatorNameForEntryKey:(id)a3
{
  v3 = [a1 PLEntryKeyForEntryKey:a3];
  v4 = [v3 operatorName];

  return v4;
}

+ (id)wildCardForEntryKey:(id)a3
{
  v3 = [a1 PLEntryKeyForEntryKey:a3];
  v4 = [v3 wildCardName];

  return v4;
}

+ (id)baseEntryKeyForEntryKey:(id)a3
{
  v3 = [a1 PLEntryKeyForEntryKey:a3];
  v4 = [v3 baseEntryKey];
  v5 = [v4 entryKey];

  return v5;
}

+ (_PLTimeIntervalRange)timeIntervalRangeForEntryKey:(id)a3
{
  v3 = [a1 PLEntryKeyForEntryKey:a3];
  [v3 timeIntervalRange];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

+ (BOOL)isEntryKeySetup:(id)a3 forOperatorName:(id)a4
{
  v5 = a3;
  v6 = [PLEntryKey entryKeysForOperatorNameCopy:a4];
  v7 = [v6 containsObject:v5];

  return v7;
}

- (void)setWildCardName:(id)a3
{
  v4 = [a3 copy];
  wildCardName = self->_wildCardName;
  self->_wildCardName = v4;

  v6 = MEMORY[0x1E696AEC0];
  v9 = [(PLEntryKey *)self entryKey];
  v7 = [v6 stringWithFormat:@"%@+%@", v9, self->_wildCardName];
  entryKey = self->_entryKey;
  self->_entryKey = v7;
}

- (void)setIsDynamic:(BOOL)a3
{
  self->_isDynamic = a3;
  v4 = MEMORY[0x1E696AEC0];
  v7 = [(PLEntryKey *)self entryKey];
  v5 = [v4 stringWithFormat:@"%@_%@", v7, @"Dynamic"];
  entryKey = self->_entryKey;
  self->_entryKey = v5;
}

- (void)setTimeIntervalRange:(_PLTimeIntervalRange)a3
{
  self->_timeIntervalRange = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f_%f", *&a3.location, *&a3.length];
  [(PLEntryKey *)self setWildCardName:v4];
}

- (PLEntryKey)initWithOperatorName:(id)a3 withEntryType:(id)a4 withEntryName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = PLEntryKey;
  v12 = [(PLEntryKey *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operatorName, a3);
    v14 = NSClassFromString(v9);
    operatorClass = v13->_operatorClass;
    v13->_operatorClass = v14;

    objc_storeStrong(&v13->_entryType, a4);
    objc_storeStrong(&v13->_entryName, a5);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", v9, v10, v11];
    entryKey = v13->_entryKey;
    v13->_entryKey = v16;

    objc_storeWeak(&v13->_baseEntryKey, v13);
    wildCardName = v13->_wildCardName;
    v13->_wildCardName = 0;

    __asm { FMOV            V0.2D, #-1.0 }

    v13->_timeIntervalRange = _Q0;
    v13->_isDynamic = 0;
  }

  return v13;
}

- (id)copyWithWildCardName:(id)a3
{
  v4 = a3;
  v5 = [PLEntryKey alloc];
  v6 = [(PLEntryKey *)self operatorName];
  v7 = [(PLEntryKey *)self entryType];
  v8 = [(PLEntryKey *)self entryName];
  v9 = [(PLEntryKey *)v5 initWithOperatorName:v6 withEntryType:v7 withEntryName:v8];

  [(PLEntryKey *)v9 setWildCardName:v4];
  [(PLEntryKey *)v9 setBaseEntryKey:self];
  return v9;
}

- (id)copyWithTimeIntervalRange:(_PLTimeIntervalRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [PLEntryKey alloc];
  v7 = [(PLEntryKey *)self operatorName];
  v8 = [(PLEntryKey *)self entryType];
  v9 = [(PLEntryKey *)self entryName];
  v10 = [(PLEntryKey *)v6 initWithOperatorName:v7 withEntryType:v8 withEntryName:v9];

  [(PLEntryKey *)v10 setTimeIntervalRange:location, length];
  [(PLEntryKey *)v10 setBaseEntryKey:self];
  return v10;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLEntryKey *)self entryKey];
  v5 = [(PLEntryKey *)self operatorName];
  v6 = [(PLEntryKey *)self entryType];
  v7 = [(PLEntryKey *)self entryName];
  v8 = [(PLEntryKey *)self wildCardName];
  [(PLEntryKey *)self isDynamic];
  v9 = NSStringFromBOOL();
  v10 = [v3 stringWithFormat:@"[%p] entryKey=%@ operatorName=%@ entryType=%@ entryName=%@ wildCardName=%@ isDynamc=%@", self, v4, v5, v6, v7, v8, v9];

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