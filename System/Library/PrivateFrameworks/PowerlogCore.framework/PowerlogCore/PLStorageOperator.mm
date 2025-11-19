@interface PLStorageOperator
+ (id)entryEventForwardDefinitionActivityStates;
+ (id)entryEventForwardDefinitionConfiguration;
+ (id)entryEventForwardDefinitionSchemaChange;
+ (id)entryEventForwardDefinitionSubmissionTag;
+ (id)entryEventForwardDefinitionTaskingMode;
+ (id)entryEventForwardDefinitionTimeOffset;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionCacheSize;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneDefinitionActivity;
+ (id)entryEventNoneDefinitionAdditionalTablesTurnedOn;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionArchive;
+ (id)entryEventPointDefinitionCacheFlush;
+ (id)entryEventPointDefinitionOTA;
+ (id)entryEventPointDefinitionPLLog;
+ (id)entryEventPointDefinitionTimeCorrection;
+ (id)entryEventPointDefinitions;
+ (id)eventIntervalCacheSizeWithPayload:(id)a3 withEntryDate:(id)a4;
+ (id)eventPointCacheFlushWithPayload:(id)a3;
- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4;
- (void)logEventForwardConfiguration:(id)a3;
- (void)logEventForwardSchemaChange:(id)a3;
- (void)logEventForwardTaskingMode:(id)a3;
- (void)logEventForwardTimeOffset:(id)a3;
- (void)logEventNoneAdditionalTablesTurnedOn:(id)a3;
- (void)logEventPointArchive:(id)a3;
- (void)logEventPointCacheFlush:(id)a3;
- (void)logEventPointOTA:(id)a3;
- (void)logEventPointPLLog:(id)a3;
- (void)logEventPointTimeCorrection:(id)a3;
@end

@implementation PLStorageOperator

+ (id)entryEventIntervalDefinitions
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([a1 isDebugEnabledForKey:@"LogCacheSize"])
  {
    v7 = @"CacheSize";
    v3 = [a1 entryEventIntervalDefinitionCacheSize];
    v8[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)entryEventIntervalDefinitionCacheSize
{
  v26[2] = *MEMORY[0x1E69E9840];
  v25[0] = @"Configs";
  v23[0] = @"SchemaVersion";
  v23[1] = @"OnDemandQuery";
  v24[0] = &unk_1F540A3C0;
  v24[1] = MEMORY[0x1E695E110];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v26[0] = v20;
  v25[1] = @"Keys";
  v21[0] = @"timestampEnd";
  v19 = +[PLEntryDefinition sharedInstance];
  v18 = [v19 commonTypeDict_DateFormat];
  v22[0] = v18;
  v21[1] = @"EntryKey";
  v17 = +[PLEntryDefinition sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat];
  v22[1] = v16;
  v21[2] = @"InsertCount";
  v15 = +[PLEntryDefinition sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v22[2] = v14;
  v21[3] = @"UpdateCount";
  v2 = +[PLEntryDefinition sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v22[3] = v3;
  v21[4] = @"State";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v22[4] = v5;
  v21[5] = @"WarningCount";
  v6 = +[PLEntryDefinition sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v22[5] = v7;
  v21[6] = @"SafetyDropCount";
  v8 = +[PLEntryDefinition sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v22[6] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v26[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventPointDefinitions
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"OTA";
  v3 = [a1 entryEventPointDefinitionOTA];
  v12[0] = v3;
  v11[1] = @"TimeCorrection";
  v4 = [a1 entryEventPointDefinitionTimeCorrection];
  v12[1] = v4;
  v11[2] = @"Archive";
  v5 = [a1 entryEventPointDefinitionArchive];
  v12[2] = v5;
  v11[3] = @"PLLog";
  v6 = [a1 entryEventPointDefinitionPLLog];
  v12[3] = v6;
  v11[4] = @"CacheFlush";
  v7 = [a1 entryEventPointDefinitionCacheFlush];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)entryEventPointDefinitionCacheFlush
{
  v26[3] = *MEMORY[0x1E69E9840];
  if (+[PLPlatform isiOS](PLPlatform, "isiOS") && +[PLPlatform internalBuild])
  {
    v25[0] = @"Configs";
    v23[0] = @"SchemaVersion";
    v23[1] = @"OnDemandQuery";
    v24[0] = &unk_1F540A3D0;
    v24[1] = MEMORY[0x1E695E110];
    v23[2] = @"DynamicDefinition";
    v24[2] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v26[0] = v16;
    v25[1] = @"Keys";
    v21[0] = @"Reason";
    v15 = +[PLEntryDefinition sharedInstance];
    v14 = [v15 commonTypeDict_StringFormat];
    v21[1] = @"Size";
    v22[0] = v14;
    v2 = +[PLEntryDefinition sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v22[1] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v26[1] = v4;
    v25[2] = @"DynamicKeys";
    v19[0] = @"key";
    v17 = @"TableName";
    v5 = +[PLEntryDefinition sharedInstance];
    v6 = [v5 commonTypeDict_StringFormat];
    v18 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v19[1] = @"value";
    v20[0] = v7;
    v8 = +[PLEntryDefinition sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v20[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v26[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventPointDefinitionOTA
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"Configs";
  v15[0] = @"SchemaVersion";
  v15[1] = @"OnDemandQuery";
  v16[0] = &unk_1F540A3E0;
  v16[1] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v2;
  v17[1] = @"Keys";
  v13[0] = @"Type";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v14[0] = v4;
  v13[1] = @"Name";
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v14[1] = v6;
  v13[2] = @"Success";
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_BoolFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)entryEventPointDefinitionTimeCorrection
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19[0] = @"Configs";
  v17[0] = @"SchemaVersion";
  v17[1] = @"OnDemandQuery";
  v18[0] = &unk_1F540A3C0;
  v18[1] = MEMORY[0x1E695E110];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v14;
  v19[1] = @"Keys";
  v15[0] = @"TimeReferenceType";
  v2 = +[PLEntryDefinition sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v16[0] = v3;
  v15[1] = @"TimeInReference";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_DateFormat];
  v16[1] = v5;
  v15[2] = @"ProjectedTimeInMonotonic";
  v6 = +[PLEntryDefinition sharedInstance];
  v7 = [v6 commonTypeDict_DateFormat];
  v16[2] = v7;
  v15[3] = @"CallStack";
  v8 = +[PLEntryDefinition sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventPointDefinitionArchive
{
  v34[2] = *MEMORY[0x1E69E9840];
  v33[0] = @"Configs";
  v31[0] = @"SchemaVersion";
  v31[1] = @"OnDemandQuery";
  v32[0] = &unk_1F540A3F0;
  v32[1] = MEMORY[0x1E695E110];
  v31[2] = @"TrimConditionsTemplate";
  v31[3] = @"TrimConditionsTemplateArg";
  v32[2] = &unk_1F5406108;
  v32[3] = &unk_1F540A400;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
  v34[0] = v28;
  v33[1] = @"Keys";
  v29[0] = @"StartDate";
  v27 = +[PLEntryDefinition sharedInstance];
  v26 = [v27 commonTypeDict_DateFormat];
  v30[0] = v26;
  v29[1] = @"EndDate";
  v25 = +[PLEntryDefinition sharedInstance];
  v24 = [v25 commonTypeDict_DateFormat];
  v30[1] = v24;
  v29[2] = @"SystemTimeOffset";
  v23 = +[PLEntryDefinition sharedInstance];
  v22 = [v23 commonTypeDict_RealFormat];
  v30[2] = v22;
  v29[3] = @"SystemTimeOffsetModified";
  v21 = +[PLEntryDefinition sharedInstance];
  v20 = [v21 commonTypeDict_BoolFormat];
  v30[3] = v20;
  v29[4] = @"UUID";
  v19 = +[PLEntryDefinition sharedInstance];
  v18 = [v19 commonTypeDict_StringFormat];
  v30[4] = v18;
  v29[5] = @"FullMode";
  v17 = +[PLEntryDefinition sharedInstance];
  v16 = [v17 commonTypeDict_BoolFormat];
  v30[5] = v16;
  v29[6] = @"Stage";
  v15 = +[PLEntryDefinition sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v30[6] = v14;
  v29[7] = @"NumAttempts";
  v2 = +[PLEntryDefinition sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v30[7] = v3;
  v29[8] = @"SyncedOffDate";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_DateFormat];
  v30[8] = v5;
  v29[9] = @"RemovedDate";
  v6 = +[PLEntryDefinition sharedInstance];
  v7 = [v6 commonTypeDict_DateFormat];
  v30[9] = v7;
  v29[10] = @"MainDBSizeAtStart";
  v8 = +[PLEntryDefinition sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v30[10] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:11];
  v34[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventPointDefinitionPLLog
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19[0] = @"Configs";
  v17[0] = @"SchemaVersion";
  v17[1] = @"OnDemandQuery";
  v18[0] = &unk_1F540A410;
  v18[1] = MEMORY[0x1E695E110];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v14;
  v19[1] = @"Keys";
  v15[0] = @"file";
  v2 = +[PLEntryDefinition sharedInstance];
  v3 = [v2 commonTypeDict_StringFormat];
  v16[0] = v3;
  v15[1] = @"function";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v16[1] = v5;
  v15[2] = @"line";
  v6 = +[PLEntryDefinition sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v16[2] = v7;
  v15[3] = @"message";
  v8 = +[PLEntryDefinition sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventForwardDefinitions
{
  v13[6] = *MEMORY[0x1E69E9840];
  v12[0] = @"SchemaChange";
  v3 = [a1 entryEventForwardDefinitionSchemaChange];
  v13[0] = v3;
  v12[1] = @"Configuration";
  v4 = [a1 entryEventForwardDefinitionConfiguration];
  v13[1] = v4;
  v12[2] = @"TimeOffset";
  v5 = [a1 entryEventForwardDefinitionTimeOffset];
  v13[2] = v5;
  v12[3] = @"ActivityStates";
  v6 = [a1 entryEventForwardDefinitionActivityStates];
  v13[3] = v6;
  v12[4] = @"TaskingMode";
  v7 = [a1 entryEventForwardDefinitionTaskingMode];
  v13[4] = v7;
  v12[5] = @"SubmissionTag";
  v8 = [a1 entryEventForwardDefinitionSubmissionTag];
  v13[5] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)entryEventForwardDefinitionConfiguration
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23[0] = @"Configs";
  v21[0] = @"SchemaVersion";
  v21[1] = @"OnDemandQuery";
  v22[0] = &unk_1F540A420;
  v22[1] = MEMORY[0x1E695E110];
  v21[2] = @"TrimConditionsTemplate";
  v21[3] = @"TrimConditionsTemplateArg";
  v22[2] = &unk_1F5406108;
  v22[3] = &unk_1F540A430;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24[0] = v18;
  v23[1] = @"Keys";
  v19[0] = @"Mode";
  v17 = +[PLEntryDefinition sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat];
  v20[0] = v16;
  v19[1] = @"Version";
  v15 = +[PLEntryDefinition sharedInstance];
  v14 = [v15 commonTypeDict_RealFormat];
  v20[1] = v14;
  v19[2] = @"PID";
  v2 = +[PLEntryDefinition sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v20[2] = v3;
  v19[3] = @"ProcessName";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v20[3] = v5;
  v19[4] = @"ExitReason";
  v6 = +[PLEntryDefinition sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v20[4] = v7;
  v19[5] = @"DefaultsEnabled";
  v8 = +[PLEntryDefinition sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v20[5] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventForwardDefinitionSchemaChange
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"Configs";
  v15[0] = @"SchemaVersion";
  v15[1] = @"OnDemandQuery";
  v16[0] = &unk_1F540A440;
  v16[1] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v2;
  v17[1] = @"Keys";
  v13[0] = @"TableName";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v14[0] = v4;
  v13[1] = @"PreviousVersion";
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v14[1] = v6;
  v13[2] = @"CurrentVersion";
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)entryEventForwardDefinitionTimeOffset
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"Configs";
  v15[0] = @"SchemaVersion";
  v15[1] = @"OnDemandQuery";
  v16[0] = &unk_1F540A3C0;
  v16[1] = MEMORY[0x1E695E110];
  v15[2] = @"TrimConditionsTemplate";
  v15[3] = @"TrimConditionsTemplateArg";
  v16[2] = &unk_1F5406108;
  v16[3] = &unk_1F540A430;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v18[0] = v2;
  v17[1] = @"Keys";
  v13[0] = @"kernel";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v14[0] = v4;
  v13[1] = @"system";
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v14[1] = v6;
  v13[2] = @"baseband";
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)entryEventForwardDefinitionActivityStates
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"Configs";
  v13[0] = @"SchemaVersion";
  v13[1] = @"OnDemandQuery";
  v14[0] = &unk_1F540A440;
  v14[1] = MEMORY[0x1E695E110];
  v13[2] = @"TrimConditionsTemplate";
  v13[3] = @"TrimConditionsTemplateArg";
  v14[2] = &unk_1F5406108;
  v14[3] = &unk_1F540A430;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v16[0] = v2;
  v15[1] = @"Keys";
  v11[0] = @"ActivityID";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"State";
  v12[0] = v4;
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)entryEventForwardDefinitionTaskingMode
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"Configs";
  v15[0] = @"SchemaVersion";
  v15[1] = @"OnDemandQuery";
  v16[0] = &unk_1F540A410;
  v16[1] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v2;
  v17[1] = @"Keys";
  v13[0] = @"Action";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v14[0] = v4;
  v13[1] = @"ErrorType";
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v14[1] = v6;
  v13[2] = @"TaskingTablesPayload";
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)entryEventForwardDefinitionSubmissionTag
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"Configs";
  v13[0] = @"SchemaVersion";
  v13[1] = @"TrimConditionsTemplate";
  v14[0] = &unk_1F540A410;
  v14[1] = &unk_1F5406120;
  v13[2] = @"TrimConditionsTemplateArg";
  v14[2] = &unk_1F5406138;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[0] = v2;
  v15[1] = @"Keys";
  v11[0] = @"UUIDTag";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v11[1] = @"Reason";
  v12[0] = v4;
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)entryEventNoneDefinitions
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"Activity";
  v3 = [a1 entryEventNoneDefinitionActivity];
  v8[1] = @"AdditionalTablesTurnedOn";
  v9[0] = v3;
  v4 = [a1 entryEventNoneDefinitionAdditionalTablesTurnedOn];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)entryEventNoneDefinitionActivity
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"Configs";
  v15[0] = @"SchemaVersion";
  v15[1] = @"OnDemandQuery";
  v16[0] = &unk_1F540A3C0;
  v16[1] = MEMORY[0x1E695E110];
  v15[2] = @"TrimConditionsTemplate";
  v16[2] = &unk_1F5406150;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v18[0] = v2;
  v17[1] = @"Keys";
  v13[0] = @"Identifier";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v14[0] = v4;
  v13[1] = @"Criteria";
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v14[1] = v6;
  v13[2] = @"MustRunCriterion";
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)entryEventNoneDefinitionAdditionalTablesTurnedOn
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"Configs";
  v11[0] = @"SchemaVersion";
  v11[1] = @"OnDemandQuery";
  v12[0] = &unk_1F540A3C0;
  v12[1] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v2;
  v13[1] = @"Keys";
  v9 = @"TableName";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v10 = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)eventIntervalCacheSizeWithPayload:(id)a3 withEntryDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() entryKeyForType:@"EventInterval" andName:@"CacheSize"];
  v8 = [[PLEntry alloc] initWithEntryKey:v7 withDate:v5];

  [(PLEntry *)v8 setObjectsFromRawData:v6];

  return v8;
}

+ (id)eventPointCacheFlushWithPayload:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v26 = [objc_opt_class() entryKeyForType:@"EventPoint" andName:@"CacheFlush"];
  v3 = [[PLEntry alloc] initWithEntryKey:v26];
  v4 = [v27 objectForKeyedSubscript:@"Reason"];
  [(PLEntry *)v3 setObject:v4 forKeyedSubscript:@"Reason"];

  v5 = [v27 objectForKeyedSubscript:@"Size"];
  [(PLEntry *)v3 setObject:v5 forKeyedSubscript:@"Size"];

  if (_os_feature_enabled_impl())
  {
    v6 = +[PLStorageCache sharedStorageCache];
    v7 = [v6 cacheContent];
    v8 = [v7 copy];

    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(PLStorageOperator *)v8 eventPointCacheFlushWithPayload:v9];
    }

    v10 = +[PLStorageCache sharedStorageCache];
    obj = [v10 cacheContent];

    objc_sync_enter(obj);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v12)
    {
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v11 objectForKeyedSubscript:v15];
          v17 = [v16 intValue] > 50;

          if (v17)
          {
            v18 = PLLogCommon();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v35 = v15;
              _os_log_debug_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEBUG, "Flush cache cacheContent tableEntry: %@", buf, 0xCu);
            }

            v32 = @"TableName";
            v33 = v15;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            v20 = [v11 objectForKeyedSubscript:v15];
            [(PLEntry *)v3 setObject:v20 forKeyedSubscript:v19];
          }

          else
          {
            v19 = PLLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v35 = v15;
              _os_log_debug_impl(&dword_1D8611000, v19, OS_LOG_TYPE_DEBUG, "Flush cache cacheContent tableEntry's size is less than 50: %@", buf, 0xCu);
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v12);
    }

    v21 = +[PLStorageCache sharedStorageCache];
    v22 = [v21 cacheContent];
    [v22 removeAllObjects];

    objc_sync_exit(obj);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)logEventPointCacheFlush:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PLStorageOperator_logEventPointCacheFlush___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__PLStorageOperator_logEventPointCacheFlush___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() eventPointCacheFlushWithPayload:*(a1 + 40)];
  [*(a1 + 32) logEntry:v3];
}

- (void)logEventPointOTA:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PLStorageOperator_logEventPointOTA___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __38__PLStorageOperator_logEventPointOTA___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() entryKeyForType:@"EventPoint" andName:@"OTA"];
  v3 = [[PLEntry alloc] initWithEntryKey:v4 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v3];
}

- (void)logEventPointTimeCorrection:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PLStorageOperator_logEventPointTimeCorrection___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__PLStorageOperator_logEventPointTimeCorrection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() entryKeyForType:@"EventPoint" andName:@"TimeCorrection"];
  v3 = [[PLEntry alloc] initWithEntryKey:v4 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v3];
}

- (void)logEventPointArchive:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PLStorageOperator_logEventPointArchive___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __42__PLStorageOperator_logEventPointArchive___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() entryKeyForType:@"EventPoint" andName:@"Archive"];
  v3 = [[PLEntry alloc] initWithEntryKey:v4 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v3];
}

- (void)logEventPointPLLog:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PLStorageOperator_logEventPointPLLog___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __40__PLStorageOperator_logEventPointPLLog___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() entryKeyForType:@"EventPoint" andName:@"PLLog"];
  v3 = [[PLEntry alloc] initWithEntryKey:v4 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v3];
}

- (void)logEventForwardConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PLStorageOperator_logEventForwardConfiguration___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__PLStorageOperator_logEventForwardConfiguration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() entryKeyForType:@"EventForward" andName:@"Configuration"];
  v3 = [[PLEntry alloc] initWithEntryKey:v4 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v3];
}

- (void)logEventForwardSchemaChange:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PLStorageOperator_logEventForwardSchemaChange___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__PLStorageOperator_logEventForwardSchemaChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() entryKeyForType:@"EventForward" andName:@"SchemaChange"];
  v3 = [[PLEntry alloc] initWithEntryKey:v4 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v3];
}

- (void)logEventForwardTimeOffset:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PLStorageOperator_logEventForwardTimeOffset___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__PLStorageOperator_logEventForwardTimeOffset___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = [objc_opt_class() entryKeyForType:@"EventForward" andName:@"TimeOffset"];
  v3 = [[PLEntry alloc] initWithEntryKey:v13 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [(PLEntry *)v3 entryDate];
  [v4 logForSubsystem:@"PPTStorageOperator" category:@"TimeOffset" data:v5 date:v6];

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [(PLEntry *)v3 entryDate];
  [v7 logForSubsystem:@"XcodeMetrics" category:@"TimeOffset" data:v8 date:v9];

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = [(PLEntry *)v3 entryDate];
  [v11 logForSubsystem:@"BackgroundProcessing" category:@"TimeOffset" data:v10 date:v12];
}

- (void)logEventForwardTaskingMode:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PLStorageOperator_logEventForwardTaskingMode___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__PLStorageOperator_logEventForwardTaskingMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() entryKeyForType:@"EventForward" andName:@"TaskingMode"];
  v3 = [[PLEntry alloc] initWithEntryKey:v4 withRawData:*(a1 + 40)];
  [*(a1 + 32) logEntry:v3];
}

- (void)logEventNoneAdditionalTablesTurnedOn:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PLStorageOperator_logEventNoneAdditionalTablesTurnedOn___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__PLStorageOperator_logEventNoneAdditionalTablesTurnedOn___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() entryKeyForType:@"EventNone" andName:@"AdditionalTablesTurnedOn"];
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = a1;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [[PLEntry alloc] initWithEntryKey:v3];
        [(PLEntry *)v11 setObject:v10 forKeyedSubscript:@"TableName"];
        [v4 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = *(v15 + 32);
  v20 = v3;
  v21 = v4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v12 logEntries:v13 withGroupID:v3];

  v14 = *MEMORY[0x1E69E9840];
}

- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4
{
  v4 = a3;
  v5 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventNone" andName:@"Activity"];
  v6 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventForward" andName:@"ActivityStates"];
  v7 = [v4 isEqualToString:v5];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ID NOT IN (SELECT %@ FROM %@)", @"ActivityID", v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)eventPointCacheFlushWithPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "Flush cache cacheContent:%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end