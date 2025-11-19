@interface SWCGetServerInterface
@end

@implementation SWCGetServerInterface

void ___SWCGetServerInterface_block_invoke()
{
  v45[6] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2877ABD00];
  v1 = qword_280B218F0;
  qword_280B218F0 = v0;

  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v45[0] = objc_opt_class();
  v45[1] = objc_opt_class();
  v45[2] = objc_opt_class();
  v45[3] = objc_opt_class();
  v45[4] = objc_opt_class();
  v45[5] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:6];
  v35 = [v2 initWithArray:v3];

  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v44[2] = objc_opt_class();
  v44[3] = objc_opt_class();
  v44[4] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:5];
  v36 = [v4 initWithArray:v5];

  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_waitForSiteApprovalWithServiceSpecifier_completionHandler_ argumentIndex:0 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_waitForSiteApprovalWithServiceSpecifier_completionHandler_ argumentIndex:0 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_waitForSiteApprovalWithServiceSpecifier_completionHandler_ argumentIndex:1 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_getDetailsWithServiceSpecifier_URL_limit_callerAuditToken_completionHandler_ argumentIndex:0 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_getDetailsWithServiceSpecifier_URL_limit_callerAuditToken_completionHandler_ argumentIndex:1 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_getDetailsWithServiceSpecifier_URL_limit_callerAuditToken_completionHandler_ argumentIndex:3 ofReply:0];
  v6 = qword_280B218F0;
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v9 = [v7 initWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_getDetailsWithServiceSpecifier_URL_limit_callerAuditToken_completionHandler_ argumentIndex:0 ofReply:1];

  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_getDetailsWithServiceSpecifier_URL_limit_callerAuditToken_completionHandler_ argumentIndex:1 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_addServiceWithServiceSpecifier_completionHandler_ argumentIndex:0 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_addServiceWithServiceSpecifier_completionHandler_ argumentIndex:1 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_removeServiceWithServiceSpecifier_completionHandler_ argumentIndex:0 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_removeServiceWithServiceSpecifier_completionHandler_ argumentIndex:1 ofReply:1];
  [qword_280B218F0 setClasses:v36 forSelector:sel_setDetails_forServiceWithServiceSpecifier_completionHandler_ argumentIndex:0 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_setDetails_forServiceWithServiceSpecifier_completionHandler_ argumentIndex:1 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_setDetails_forServiceWithServiceSpecifier_completionHandler_ argumentIndex:1 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_setUserApprovalState_forServiceWithServiceSpecifier_completionHandler_ argumentIndex:1 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_setUserApprovalState_forServiceWithServiceSpecifier_completionHandler_ argumentIndex:1 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_addAllAppsWithCompletionHandler_ argumentIndex:1 ofReply:1];
  [qword_280B218F0 setXPCType:MEMORY[0x277D86488] forSelector:sel_showWithVerbosity_isTTY_fileDescriptor_completionHandler_ argumentIndex:2 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_resetWithCompletionHandler_ argumentIndex:1 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_getServiceSettingsWithServiceSpecifier_completionHandler_ argumentIndex:0 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_getServiceSettingsWithServiceSpecifier_completionHandler_ argumentIndex:0 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_getServiceSettingsWithServiceSpecifier_completionHandler_ argumentIndex:1 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_commitServiceSettings_completionHandler_ argumentIndex:0 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_commitServiceSettings_completionHandler_ argumentIndex:0 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_commitServiceSettings_completionHandler_ argumentIndex:1 ofReply:1];
  v10 = qword_280B218F0;
  v11 = objc_alloc(MEMORY[0x277CBEB98]);
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v13 = [v11 initWithArray:v12];
  [v10 setClasses:v13 forSelector:sel_removeSettingsForKeys_serviceType_completionHandler_ argumentIndex:0 ofReply:0];

  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_removeSettingsForKeys_serviceType_completionHandler_ argumentIndex:1 ofReply:1];
  v14 = qword_280B218F0;
  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v17 = [v15 initWithArray:v16];
  [v14 setClasses:v17 forSelector:sel_removeSettingsForKeys_serviceSpecifier_completionHandler_ argumentIndex:0 ofReply:0];

  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_removeSettingsForKeys_serviceSpecifier_completionHandler_ argumentIndex:1 ofReply:0];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_removeSettingsForKeys_serviceSpecifier_completionHandler_ argumentIndex:1 ofReply:1];
  v18 = qword_280B218F0;
  v19 = objc_alloc(MEMORY[0x277CBEB98]);
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v21 = [v19 initWithArray:v20];
  [v18 setClasses:v21 forSelector:sel_getTrackingDomains_sources_completionHandler_ argumentIndex:0 ofReply:0];

  v22 = qword_280B218F0;
  v23 = objc_alloc(MEMORY[0x277CBEB98]);
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v39[2] = objc_opt_class();
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  v25 = [v23 initWithArray:v24];
  [v22 setClasses:v25 forSelector:sel_getTrackingDomains_sources_completionHandler_ argumentIndex:0 ofReply:1];

  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_getDeveloperModeEnabledWithCompletionHandler_ argumentIndex:0 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_getDeveloperModeEnabledWithCompletionHandler_ argumentIndex:1 ofReply:1];
  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_setDeveloperModeEnabled_completionHandler_ argumentIndex:1 ofReply:1];
  v26 = qword_280B218F0;
  v27 = objc_alloc(MEMORY[0x277CBEB98]);
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v29 = [v27 initWithArray:v28];
  [v26 setClasses:v29 forSelector:sel_setAdditionalServiceDetailsForApplicationIdentifiers_usingContentsOfDictionary_completionHandler_ argumentIndex:0 ofReply:0];

  v30 = qword_280B218F0;
  v31 = objc_alloc(MEMORY[0x277CBEB98]);
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v37[2] = objc_opt_class();
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
  v33 = [v31 initWithArray:v32];
  [v30 setClasses:v33 forSelector:sel_setAdditionalServiceDetailsForApplicationIdentifiers_usingContentsOfDictionary_completionHandler_ argumentIndex:1 ofReply:0];

  [qword_280B218F0 setClass:objc_opt_class() forSelector:sel_setAdditionalServiceDetailsForApplicationIdentifiers_usingContentsOfDictionary_completionHandler_ argumentIndex:1 ofReply:1];
  v34 = *MEMORY[0x277D85DE8];
}

@end