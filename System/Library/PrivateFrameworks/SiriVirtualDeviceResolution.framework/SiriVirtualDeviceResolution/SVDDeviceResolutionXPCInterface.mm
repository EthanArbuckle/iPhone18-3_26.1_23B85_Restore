@interface SVDDeviceResolutionXPCInterface
+ (id)xpcInterface;
@end

@implementation SVDDeviceResolutionXPCInterface

+ (id)xpcInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A616F0];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getAllReachableDevicesWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_getSourceDeviceForContextWithIdentifiers_completion_ argumentIndex:0 ofReply:0];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_getSourceDeviceForContextWithIdentifiers_completion_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v2 setClasses:v15 forSelector:sel_getDevicesMatchingCapabilityDescriptions_completion_ argumentIndex:0 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
  [v2 setClasses:v20 forSelector:sel_getDevicesMatchingCapabilityDescriptions_completion_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v2 setClasses:v23 forSelector:sel_getContextAndProximitySnapshotForCurrentRequestForDeviceUnits_serviceContexts_completion_ argumentIndex:0 ofReply:0];

  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v2 setClasses:v26 forSelector:sel_getContextAndProximitySnapshotForCurrentRequestForDeviceUnits_serviceContexts_completion_ argumentIndex:1 ofReply:0];

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
  [v2 setClasses:v30 forSelector:sel_getContextAndProximitySnapshotForCurrentRequestForDeviceUnits_serviceContexts_completion_ argumentIndex:0 ofReply:1];

  v31 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
  [v2 setClasses:v34 forSelector:sel_logCrossDeviceCommandEnded_action_contextProximityPairs_ argumentIndex:2 ofReply:0];

  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
  [v2 setClasses:v38 forSelector:sel_logCrossDeviceCommandEnded_action_homeKitTarget_contextProximityPairs_ argumentIndex:3 ofReply:0];

  v39 = MEMORY[0x277CBEB98];
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = [v39 setWithObjects:{v40, v41, objc_opt_class(), 0}];
  [v2 setClasses:v42 forSelector:sel_logCrossDeviceCommandEnded_action_actionResult_homeKitTarget_contextProximityPairs_ argumentIndex:4 ofReply:0];

  v43 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v43 forSelector:sel_pairedCompanionDeviceWithCompletion_ argumentIndex:0 ofReply:1];

  v44 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v44 forSelector:sel_meDeviceWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

@end