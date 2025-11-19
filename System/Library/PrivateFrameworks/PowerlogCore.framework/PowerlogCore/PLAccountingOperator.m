@interface PLAccountingOperator
+ (id)entryAggregateDefinitionEnergy;
+ (id)entryAggregateDefinitionQualificationEnergy;
+ (id)entryAggregateDefinitions;
+ (id)entryEventBackwardDefinitionDistributionEvents;
+ (id)entryEventBackwardDefinitionPowerEvents;
+ (id)entryEventBackwardDefinitionQualificationEvents;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionDistributionEvents;
+ (id)entryEventForwardDefinitionPowerEvents;
+ (id)entryEventForwardDefinitionQualificationEvents;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionDistributionEvents;
+ (id)entryEventIntervalDefinitionEnergyEstimateEvents;
+ (id)entryEventIntervalDefinitionPowerEvents;
+ (id)entryEventIntervalDefinitionQualificationEvents;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneDefinitionDistributionRules;
+ (id)entryEventNoneDefinitionNodes;
+ (id)entryEventNoneDefinitionQualificationRules;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionDistributionEvents;
+ (id)entryEventPointDefinitionQualificationEvents;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLAccountingOperator)init;
- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4;
- (void)initOperatorDependancies;
- (void)startAccounting;
@end

@implementation PLAccountingOperator

+ (void)load
{
  if (!+[PLUtilities isPowerexceptionsd](PLUtilities, "isPowerexceptionsd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v3.receiver = a1;
    v3.super_class = &OBJC_METACLASS___PLAccountingOperator;
    objc_msgSendSuper2(&v3, sel_load);
  }
}

+ (id)entryEventNoneDefinitions
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"Nodes";
  v2 = [objc_opt_class() entryEventNoneDefinitionNodes];
  v9[0] = v2;
  v8[1] = @"DistributionRules";
  v3 = [objc_opt_class() entryEventNoneDefinitionDistributionRules];
  v9[1] = v3;
  v8[2] = @"QualificationRules";
  v4 = [objc_opt_class() entryEventNoneDefinitionQualificationRules];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)entryEventNoneDefinitionNodes
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"Configs";
  v13[0] = @"SchemaVersion";
  v13[1] = @"TrimConditionsTemplate";
  v14[0] = &unk_1F540A450;
  v14[1] = &unk_1F5406168;
  v13[2] = @"AppIdentifierKeys";
  v14[2] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[0] = v2;
  v15[1] = @"Keys";
  v11[0] = @"Name";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat_withBundleID];
  v11[1] = @"IsPermanent";
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

+ (id)entryEventNoneDefinitionDistributionRules
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"Configs";
  v15[0] = @"SchemaVersion";
  v15[1] = @"TrimConditionsTemplate";
  v16[0] = &unk_1F540A460;
  v16[1] = &unk_1F5406168;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v2;
  v17[1] = @"Keys";
  v13[0] = @"NodeID";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v14[0] = v4;
  v13[1] = @"RootNodeID";
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v14[1] = v6;
  v13[2] = @"DistributionID";
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)entryEventNoneDefinitionQualificationRules
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"Configs";
  v13[0] = @"SchemaVersion";
  v13[1] = @"TrimConditionsTemplate";
  v14[0] = &unk_1F540A460;
  v14[1] = &unk_1F5406168;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v2;
  v15[1] = @"Keys";
  v11[0] = @"RootNodeID";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"QualificationID";
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

+ (id)entryEventForwardDefinitions
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"PowerEvents";
  v2 = [objc_opt_class() entryEventForwardDefinitionPowerEvents];
  v9[0] = v2;
  v8[1] = @"DistributionEvents";
  v3 = [objc_opt_class() entryEventForwardDefinitionDistributionEvents];
  v9[1] = v3;
  v8[2] = @"QualificationEvents";
  v4 = [objc_opt_class() entryEventForwardDefinitionQualificationEvents];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)entryEventForwardDefinitionPowerEvents
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19[0] = @"Configs";
  v17[0] = @"SchemaVersion";
  v17[1] = @"SQLPrepareStatementCaching";
  v18[0] = &unk_1F540A470;
  v18[1] = MEMORY[0x1E695E118];
  v17[2] = @"SubEntryKey";
  v18[2] = @"RootNodeID";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v20[0] = v2;
  v19[1] = @"Keys";
  v15[0] = @"RootNodeID";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v16[0] = v4;
  v15[1] = @"Power";
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v16[1] = v6;
  v15[2] = @"StartOffset";
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v16[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v20[1] = v9;
  v19[2] = @"IndexKeys";
  v14 = @"RootNodeID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v20[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventForwardDefinitionDistributionEvents
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27[0] = @"Configs";
  v25[0] = @"SchemaVersion";
  v25[1] = @"DynamicDefinition";
  v26[0] = &unk_1F540A470;
  v26[1] = MEMORY[0x1E695E118];
  v25[2] = @"SQLPrepareStatementCaching";
  v25[3] = @"SubEntryKey";
  v26[2] = MEMORY[0x1E695E118];
  v26[3] = @"DistributionID";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v28[0] = v17;
  v27[1] = @"Keys";
  v23[0] = @"DistributionID";
  v16 = +[PLEntryDefinition sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[1] = @"StartOffset";
  v24[0] = v15;
  v14 = +[PLEntryDefinition sharedInstance];
  v2 = [v14 commonTypeDict_IntegerFormat];
  v24[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v28[1] = v3;
  v27[2] = @"DynamicKeys";
  v21[0] = @"key";
  v19 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v21[1] = @"value";
  v22[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v28[2] = v9;
  v27[3] = @"IndexKeys";
  v18[0] = @"DistributionID";
  v18[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v28[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventForwardDefinitionQualificationEvents
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27[0] = @"Configs";
  v25[0] = @"SchemaVersion";
  v25[1] = @"DynamicDefinition";
  v26[0] = &unk_1F540A470;
  v26[1] = MEMORY[0x1E695E118];
  v25[2] = @"SQLPrepareStatementCaching";
  v25[3] = @"SubEntryKey";
  v26[2] = MEMORY[0x1E695E118];
  v26[3] = @"QualificationID";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v28[0] = v17;
  v27[1] = @"Keys";
  v23[0] = @"QualificationID";
  v16 = +[PLEntryDefinition sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[1] = @"StartOffset";
  v24[0] = v15;
  v14 = +[PLEntryDefinition sharedInstance];
  v2 = [v14 commonTypeDict_IntegerFormat];
  v24[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v28[1] = v3;
  v27[2] = @"DynamicKeys";
  v21[0] = @"key";
  v19 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v21[1] = @"value";
  v22[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v28[2] = v9;
  v27[3] = @"IndexKeys";
  v18[0] = @"QualificationID";
  v18[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v28[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventBackwardDefinitions
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"PowerEvents";
  v2 = [objc_opt_class() entryEventBackwardDefinitionPowerEvents];
  v9[0] = v2;
  v8[1] = @"DistributionEvents";
  v3 = [objc_opt_class() entryEventBackwardDefinitionDistributionEvents];
  v9[1] = v3;
  v8[2] = @"QualificationEvents";
  v4 = [objc_opt_class() entryEventBackwardDefinitionQualificationEvents];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)entryEventBackwardDefinitionPowerEvents
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19[0] = @"Configs";
  v17[0] = @"SchemaVersion";
  v17[1] = @"SQLPrepareStatementCaching";
  v18[0] = &unk_1F540A470;
  v18[1] = MEMORY[0x1E695E118];
  v17[2] = @"SubEntryKey";
  v18[2] = @"RootNodeID";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v20[0] = v2;
  v19[1] = @"Keys";
  v15[0] = @"RootNodeID";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v16[0] = v4;
  v15[1] = @"Power";
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v16[1] = v6;
  v15[2] = @"EndOffset";
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v16[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v20[1] = v9;
  v19[2] = @"IndexKeys";
  v14 = @"RootNodeID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v20[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventBackwardDefinitionDistributionEvents
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27[0] = @"Configs";
  v25[0] = @"SchemaVersion";
  v25[1] = @"DynamicDefinition";
  v26[0] = &unk_1F540A470;
  v26[1] = MEMORY[0x1E695E118];
  v25[2] = @"SQLPrepareStatementCaching";
  v25[3] = @"SubEntryKey";
  v26[2] = MEMORY[0x1E695E118];
  v26[3] = @"DistributionID";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v28[0] = v17;
  v27[1] = @"Keys";
  v23[0] = @"DistributionID";
  v16 = +[PLEntryDefinition sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[1] = @"EndOffset";
  v24[0] = v15;
  v14 = +[PLEntryDefinition sharedInstance];
  v2 = [v14 commonTypeDict_IntegerFormat];
  v24[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v28[1] = v3;
  v27[2] = @"DynamicKeys";
  v21[0] = @"key";
  v19 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v21[1] = @"value";
  v22[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v28[2] = v9;
  v27[3] = @"IndexKeys";
  v18[0] = @"DistributionID";
  v18[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v28[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventBackwardDefinitionQualificationEvents
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27[0] = @"Configs";
  v25[0] = @"SchemaVersion";
  v25[1] = @"DynamicDefinition";
  v26[0] = &unk_1F540A470;
  v26[1] = MEMORY[0x1E695E118];
  v25[2] = @"SQLPrepareStatementCaching";
  v25[3] = @"SubEntryKey";
  v26[2] = MEMORY[0x1E695E118];
  v26[3] = @"QualificationID";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v28[0] = v17;
  v27[1] = @"Keys";
  v23[0] = @"QualificationID";
  v16 = +[PLEntryDefinition sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[1] = @"EndOffset";
  v24[0] = v15;
  v14 = +[PLEntryDefinition sharedInstance];
  v2 = [v14 commonTypeDict_IntegerFormat];
  v24[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v28[1] = v3;
  v27[2] = @"DynamicKeys";
  v21[0] = @"key";
  v19 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v21[1] = @"value";
  v22[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v28[2] = v9;
  v27[3] = @"IndexKeys";
  v18[0] = @"QualificationID";
  v18[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v28[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventIntervalDefinitions
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"PowerEvents";
  v2 = [objc_opt_class() entryEventIntervalDefinitionPowerEvents];
  v10[0] = v2;
  v9[1] = @"EnergyEstimateEvents";
  v3 = [objc_opt_class() entryEventIntervalDefinitionEnergyEstimateEvents];
  v10[1] = v3;
  v9[2] = @"DistributionEvents";
  v4 = [objc_opt_class() entryEventIntervalDefinitionDistributionEvents];
  v10[2] = v4;
  v9[3] = @"QualificationEvents";
  v5 = [objc_opt_class() entryEventIntervalDefinitionQualificationEvents];
  v10[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)entryEventIntervalDefinitionPowerEvents
{
  v22[3] = *MEMORY[0x1E69E9840];
  v21[0] = @"Configs";
  v19[0] = @"SchemaVersion";
  v19[1] = @"SQLPrepareStatementCaching";
  v20[0] = &unk_1F540A470;
  v20[1] = MEMORY[0x1E695E118];
  v19[2] = @"SubEntryKey";
  v20[2] = @"RootNodeID";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v22[0] = v15;
  v21[1] = @"Keys";
  v17[0] = @"RootNodeID";
  v14 = +[PLEntryDefinition sharedInstance];
  v2 = [v14 commonTypeDict_IntegerFormat];
  v18[0] = v2;
  v17[1] = @"Power";
  v3 = +[PLEntryDefinition sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v18[1] = v4;
  v17[2] = @"StartOffset";
  v5 = +[PLEntryDefinition sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v18[2] = v6;
  v17[3] = @"EndOffset";
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v18[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v22[1] = v9;
  v21[2] = @"IndexKeys";
  v16 = @"RootNodeID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v22[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventIntervalDefinitionEnergyEstimateEvents
{
  v28[2] = *MEMORY[0x1E69E9840];
  v27[0] = @"Configs";
  v25[0] = @"SchemaVersion";
  v25[1] = @"SQLPrepareStatementCaching";
  v26[0] = &unk_1F540A480;
  v26[1] = MEMORY[0x1E695E118];
  v25[2] = @"SubEntryKey";
  v26[2] = @"NodeID";
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v27[1] = @"Keys";
  v28[0] = v22;
  v23[0] = @"NodeID";
  v21 = +[PLEntryDefinition sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v24[0] = v20;
  v23[1] = @"RootNodeID";
  v19 = +[PLEntryDefinition sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v24[1] = v18;
  v23[2] = @"ParentEntryID";
  v17 = +[PLEntryDefinition sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v24[2] = v16;
  v23[3] = @"Energy";
  v15 = +[PLEntryDefinition sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v24[3] = v14;
  v23[4] = @"CorrectionEnergy";
  v2 = +[PLEntryDefinition sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v24[4] = v3;
  v23[5] = @"TerminationRatio";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v24[5] = v5;
  v23[6] = @"StartOffset";
  v6 = +[PLEntryDefinition sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v24[6] = v7;
  v23[7] = @"EndOffset";
  v8 = +[PLEntryDefinition sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v24[7] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:8];
  v28[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventIntervalDefinitionDistributionEvents
{
  v30[4] = *MEMORY[0x1E69E9840];
  v29[0] = @"Configs";
  v27[0] = @"SchemaVersion";
  v27[1] = @"DynamicDefinition";
  v28[0] = &unk_1F540A470;
  v28[1] = MEMORY[0x1E695E118];
  v27[2] = @"SQLPrepareStatementCaching";
  v27[3] = @"SubEntryKey";
  v28[2] = MEMORY[0x1E695E118];
  v28[3] = @"DistributionID";
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v30[0] = v19;
  v29[1] = @"Keys";
  v25[0] = @"DistributionID";
  v18 = +[PLEntryDefinition sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v26[0] = v17;
  v25[1] = @"StartOffset";
  v16 = +[PLEntryDefinition sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v26[1] = v15;
  v25[2] = @"EndOffset";
  v14 = +[PLEntryDefinition sharedInstance];
  v2 = [v14 commonTypeDict_IntegerFormat];
  v26[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v30[1] = v3;
  v29[2] = @"DynamicKeys";
  v23[0] = @"key";
  v21 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v22 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v23[1] = @"value";
  v24[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v24[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v30[2] = v9;
  v29[3] = @"IndexKeys";
  v20[0] = @"DistributionID";
  v20[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v30[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventIntervalDefinitionQualificationEvents
{
  v30[4] = *MEMORY[0x1E69E9840];
  v29[0] = @"Configs";
  v27[0] = @"SchemaVersion";
  v27[1] = @"DynamicDefinition";
  v28[0] = &unk_1F540A470;
  v28[1] = MEMORY[0x1E695E118];
  v27[2] = @"SQLPrepareStatementCaching";
  v27[3] = @"SubEntryKey";
  v28[2] = MEMORY[0x1E695E118];
  v28[3] = @"QualificationID";
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v30[0] = v19;
  v29[1] = @"Keys";
  v25[0] = @"QualificationID";
  v18 = +[PLEntryDefinition sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v26[0] = v17;
  v25[1] = @"StartOffset";
  v16 = +[PLEntryDefinition sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v26[1] = v15;
  v25[2] = @"EndOffset";
  v14 = +[PLEntryDefinition sharedInstance];
  v2 = [v14 commonTypeDict_IntegerFormat];
  v26[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v30[1] = v3;
  v29[2] = @"DynamicKeys";
  v23[0] = @"key";
  v21 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v22 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v23[1] = @"value";
  v24[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v24[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v30[2] = v9;
  v29[3] = @"IndexKeys";
  v20[0] = @"QualificationID";
  v20[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v30[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventPointDefinitions
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"DistributionEvents";
  v2 = [objc_opt_class() entryEventPointDefinitionDistributionEvents];
  v7[1] = @"QualificationEvents";
  v8[0] = v2;
  v3 = [objc_opt_class() entryEventPointDefinitionQualificationEvents];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)entryEventPointDefinitionDistributionEvents
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27[0] = @"Configs";
  v25[0] = @"SchemaVersion";
  v25[1] = @"DynamicDefinition";
  v26[0] = &unk_1F540A470;
  v26[1] = MEMORY[0x1E695E118];
  v25[2] = @"SQLPrepareStatementCaching";
  v25[3] = @"SubEntryKey";
  v26[2] = MEMORY[0x1E695E118];
  v26[3] = @"DistributionID";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v28[0] = v17;
  v27[1] = @"Keys";
  v23[0] = @"DistributionID";
  v16 = +[PLEntryDefinition sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[1] = @"StartOffset";
  v24[0] = v15;
  v14 = +[PLEntryDefinition sharedInstance];
  v2 = [v14 commonTypeDict_IntegerFormat];
  v24[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v28[1] = v3;
  v27[2] = @"DynamicKeys";
  v21[0] = @"key";
  v19 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v21[1] = @"value";
  v22[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v28[2] = v9;
  v27[3] = @"IndexKeys";
  v18[0] = @"DistributionID";
  v18[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v28[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventPointDefinitionQualificationEvents
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27[0] = @"Configs";
  v25[0] = @"SchemaVersion";
  v25[1] = @"DynamicDefinition";
  v26[0] = &unk_1F540A470;
  v26[1] = MEMORY[0x1E695E118];
  v25[2] = @"SQLPrepareStatementCaching";
  v25[3] = @"SubEntryKey";
  v26[2] = MEMORY[0x1E695E118];
  v26[3] = @"QualificationID";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v28[0] = v17;
  v27[1] = @"Keys";
  v23[0] = @"QualificationID";
  v16 = +[PLEntryDefinition sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[1] = @"StartOffset";
  v24[0] = v15;
  v14 = +[PLEntryDefinition sharedInstance];
  v2 = [v14 commonTypeDict_IntegerFormat];
  v24[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v28[1] = v3;
  v27[2] = @"DynamicKeys";
  v21[0] = @"key";
  v19 = @"ChildNodeID";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v21[1] = @"value";
  v22[0] = v6;
  v7 = +[PLEntryDefinition sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v28[2] = v9;
  v27[3] = @"IndexKeys";
  v18[0] = @"QualificationID";
  v18[1] = @"FK_ID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v28[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryAggregateDefinitions
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"RootNodeEnergy";
  v3 = [a1 entryAggregateDefinitionEnergy];
  v8[1] = @"QualificationEnergy";
  v9[0] = v3;
  v4 = [a1 entryAggregateDefinitionQualificationEnergy];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)entryAggregateDefinitionEnergy
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28[0] = @"Configs";
  v26[0] = @"SchemaVersion";
  v26[1] = @"AggregateWallClockBucket";
  v27[0] = &unk_1F540A470;
  v27[1] = MEMORY[0x1E695E118];
  v26[2] = @"SQLPrepareStatementCaching";
  v26[3] = @"TrimConditionsTemplate";
  v27[2] = MEMORY[0x1E695E118];
  v27[3] = &unk_1F5406168;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v29[0] = v16;
  v28[1] = @"Keys";
  v24[0] = @"NodeID";
  v15 = +[PLEntryDefinition sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v25[0] = v14;
  v24[1] = @"RootNodeID";
  v2 = +[PLEntryDefinition sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v25[1] = v3;
  v24[2] = @"Energy";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v25[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v29[1] = v6;
  v28[2] = @"AggregateBuckets";
  v22[0] = &unk_1F540A490;
  v20 = @"AggregateBucketRetainDuration";
  v21 = &unk_1F540A4A0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v22[1] = &unk_1F540A4B0;
  v23[0] = v7;
  v18 = @"AggregateBucketRetainDuration";
  v19 = &unk_1F540A4C0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v23[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v29[2] = v9;
  v28[3] = @"AggregateKeys";
  v17 = @"Energy";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v29[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryAggregateDefinitionQualificationEnergy
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30[0] = @"Configs";
  v28[0] = @"SchemaVersion";
  v28[1] = @"AggregateWallClockBucket";
  v29[0] = &unk_1F540A470;
  v29[1] = MEMORY[0x1E695E118];
  v28[2] = @"SQLPrepareStatementCaching";
  v28[3] = @"TrimConditionsTemplate";
  v29[2] = MEMORY[0x1E695E118];
  v29[3] = &unk_1F5406168;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v31[0] = v18;
  v30[1] = @"Keys";
  v26[0] = @"NodeID";
  v17 = +[PLEntryDefinition sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v27[0] = v16;
  v26[1] = @"RootNodeID";
  v15 = +[PLEntryDefinition sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v27[1] = v14;
  v26[2] = @"QualificationID";
  v2 = +[PLEntryDefinition sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v27[2] = v3;
  v26[3] = @"Energy";
  v4 = +[PLEntryDefinition sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v27[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v31[1] = v6;
  v30[2] = @"AggregateBuckets";
  v24[0] = &unk_1F540A490;
  v22 = @"AggregateBucketRetainDuration";
  v23 = &unk_1F540A4A0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v24[1] = &unk_1F540A4B0;
  v25[0] = v7;
  v20 = @"AggregateBucketRetainDuration";
  v21 = &unk_1F540A4C0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v25[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v31[2] = v9;
  v30[3] = @"AggregateKeys";
  v19 = @"Energy";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v31[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (PLAccountingOperator)init
{
  v3.receiver = self;
  v3.super_class = PLAccountingOperator;
  return [(PLOperator *)&v3 init];
}

- (void)initOperatorDependancies
{
  if (!+[PLUtilities isPowerlogHelperd])
  {

    +[PLUtilities isPerfPowerMetricd];
  }
}

- (void)startAccounting
{
  [PLEntryKey setupEntryObjectsForOperatorClass:objc_opt_class()];
  v3 = +[PowerlogCore sharedCore];
  v2 = [v3 storage];
  [v2 setupStorageForOperatorClass:objc_opt_class()];
}

- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4
{
  v4 = a3;
  v5 = [(PLOperator *)PLAccountingOperator entryKeyForType:@"EventNone" andName:@"Nodes"];
  v6 = [v4 isEqualToString:v5];

  v7 = [(PLOperator *)PLAccountingOperator entryKeyForType:@"Aggregate" andName:@"RootNodeEnergy"];
  if (v6)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(ID > %i) AND (%@ = 0) AND (ID NOT IN (SELECT %@ FROM '%@'))", 10000, @"IsPermanent", @"NodeID", v7];
    v8 = LABEL_3:;
LABEL_7:

    goto LABEL_8;
  }

  v9 = [v4 isEqualToString:v7];

  if (v9 || (+[PLOperator entryKeyForType:andName:](PLAccountingOperator, "entryKeyForType:andName:", @"Aggregate", @"QualificationEnergy"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v4 isEqualToString:v10], v10, v11))
  {
    v12 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E695DF00] monotonicDate];
    v13 = [v7 dateByAddingTimeInterval:-1209600.0];
    [v13 timeIntervalSince1970];
    v15 = v14;
    v16 = [MEMORY[0x1E695DF00] monotonicDate];
    v17 = [v16 dateByAddingTimeInterval:-1209600.0];
    [v17 timeIntervalSince1970];
    v19 = v18;
    v20 = [MEMORY[0x1E695DF00] monotonicDate];
    v21 = [v20 dateByAddingTimeInterval:-2592000.0];
    [v21 timeIntervalSince1970];
    v8 = [v12 stringWithFormat:@"(timeInterval = %f AND timestamp < %f) OR (timeInterval = %f AND Energy < %f AND timestamp < %f) OR (timeInterval = %f AND timestamp < %f)", 0x40AC200000000000, v15, 0x40F5180000000000, 0x40F86A0000000000, v19, 0x40F5180000000000, v22];

    goto LABEL_7;
  }

  v24 = [(PLOperator *)PLAccountingOperator entryKeyForType:@"EventNone" andName:@"DistributionRules"];
  v25 = [v4 isEqualToString:v24];

  if (v25 || (+[PLOperator entryKeyForType:andName:](PLAccountingOperator, "entryKeyForType:andName:", @"EventNone", @"QualificationRules"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v4 isEqualToString:v26], v26, v27))
  {
    v28 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E695DF00] distantPast];
    [v7 timeIntervalSince1970];
    [v28 stringWithFormat:@"timestamp<%f", v29, v30, v31, v32];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end