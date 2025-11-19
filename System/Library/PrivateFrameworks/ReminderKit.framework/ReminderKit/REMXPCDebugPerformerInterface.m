@interface REMXPCDebugPerformerInterface
+ (id)interface;
@end

@implementation REMXPCDebugPerformerInterface

+ (id)interface
{
  if (interface_onceToken_4 != -1)
  {
    +[REMXPCDebugPerformerInterface interface];
  }

  v3 = interface_result_3;

  return v3;
}

void __42__REMXPCDebugPerformerInterface_interface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DC8908];
  v1 = interface_result_3;
  interface_result_3 = v0;

  v2 = interface_result_3;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_validateHashtagLabelsWithoutHashtagWithRepair_completion_ argumentIndex:0 ofReply:1];

  v6 = interface_result_3;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_validateHashtagLabelsWithConcealedHashtagsWithRepair_completion_ argumentIndex:0 ofReply:1];

  v10 = interface_result_3;
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:sel_fetchAllSharedEntitySyncActivities_ argumentIndex:0 ofReply:1];

  v14 = interface_result_3;
  v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v15 forSelector:sel_addSharedEntitySyncActivityWithActivity_completion_ argumentIndex:0 ofReply:0];

  v16 = interface_result_3;
  v17 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v16 setClasses:v17 forSelector:sel_purgeCKRecordWithRecordType_identifier_completion_ argumentIndex:1 ofReply:0];

  v18 = interface_result_3;
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
  [v18 setClasses:v22 forSelector:sel_fetchAllDueDateDeltaAlertsIncludingUnsupported_completion_ argumentIndex:0 ofReply:1];

  v23 = interface_result_3;
  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v23 setClasses:v26 forSelector:sel_initDummyAutoCategorizationWithCategoryByTitle_ argumentIndex:0 ofReply:0];
}

@end