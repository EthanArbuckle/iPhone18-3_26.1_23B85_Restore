@interface NSXPCConnection
@end

@implementation NSXPCConnection

void __74__NSXPCConnection_TUCallServicesAdditions__callServicesServerXPCInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A0A2E0];
  v1 = callServicesServerXPCInterface_xpcInterface;
  callServicesServerXPCInterface_xpcInterface = v0;

  v2 = callServicesServerXPCInterface_xpcInterface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_fetchCurrentCallUpdates_ argumentIndex:0 ofReply:1];

  v6 = callServicesServerXPCInterface_xpcInterface;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  [v6 setClasses:v10 forSelector:sel_requestInitialState_ argumentIndex:0 ofReply:1];

  v11 = callServicesServerXPCInterface_xpcInterface;
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  [v11 setClasses:v15 forSelector:sel_dialWithRequest_reply_ argumentIndex:1 ofReply:1];

  v16 = callServicesServerXPCInterface_xpcInterface;
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
  [v16 setClasses:v20 forSelector:sel_pullCallFromClientUsingHandoffActivityUserInfo_reply_ argumentIndex:1 ofReply:1];

  v21 = callServicesServerXPCInterface_xpcInterface;
  v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v21 setClasses:v22 forSelector:sel_pullPersistedChannel_ argumentIndex:1 ofReply:1];

  v23 = callServicesServerXPCInterface_xpcInterface;
  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
  [v23 setClasses:v27 forSelector:sel_localRoutesByUniqueIdentifier_ argumentIndex:0 ofReply:1];

  v28 = callServicesServerXPCInterface_xpcInterface;
  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = [v29 setWithObjects:{v30, v31, objc_opt_class(), 0}];
  [v28 setClasses:v32 forSelector:sel_pairedHostDeviceRoutesByUniqueIdentifier_ argumentIndex:0 ofReply:1];

  v33 = callServicesServerXPCInterface_xpcInterface;
  v34 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v33 setClasses:v34 forSelector:sel_setSharingScreen_attributes_forCallWithUniqueProxyIdentifier_ argumentIndex:1 ofReply:0];

  v35 = callServicesServerXPCInterface_xpcInterface;
  v36 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v35 setClasses:v36 forSelector:sel_setScreenShareAttributesForCallWithUniqueProxyIdentifier_attributes_ argumentIndex:1 ofReply:0];

  v37 = callServicesServerXPCInterface_xpcInterface;
  v38 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v37 setClasses:v38 forSelector:sel_registerAnonymousXPCEndpoint_ argumentIndex:0 ofReply:0];

  v39 = callServicesServerXPCInterface_xpcInterface;
  v40 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v39 setClasses:v40 forSelector:sel_fetchAnonymousXPCEndpoint_ argumentIndex:0 ofReply:1];

  v41 = callServicesServerXPCInterface_xpcInterface;
  v42 = MEMORY[0x1E695DFD8];
  v43 = objc_opt_class();
  v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
  [v41 setClasses:v44 forSelector:sel_setEmergencyMediaItems_forCallWithUniqueProxyIdentifier_ argumentIndex:0 ofReply:0];

  v45 = callServicesServerXPCInterface_xpcInterface;
  v46 = MEMORY[0x1E695DFD8];
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = [v46 setWithObjects:{v47, v48, objc_opt_class(), 0}];
  [v45 setClasses:v49 forSelector:sel_performRecordingRequest_completion_ argumentIndex:0 ofReply:1];

  v50 = callServicesServerXPCInterface_xpcInterface;
  v51 = MEMORY[0x1E695DFD8];
  v52 = objc_opt_class();
  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = [v51 setWithObjects:{v52, v53, v54, v55, v56, v57, objc_opt_class(), 0}];
  [v50 setClasses:v58 forSelector:sel_performTranslationRequest_completion_ argumentIndex:0 ofReply:1];

  v59 = callServicesServerXPCInterface_xpcInterface;
  v60 = MEMORY[0x1E695DFD8];
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = objc_opt_class();
  v65 = [v60 setWithObjects:{v61, v62, v63, v64, objc_opt_class(), 0}];
  [v59 setClasses:v65 forSelector:sel__performSmartHoldingRequest_completion_ argumentIndex:0 ofReply:0];

  v66 = callServicesServerXPCInterface_xpcInterface;
  v67 = MEMORY[0x1E695DFD8];
  v68 = objc_opt_class();
  v69 = [v67 setWithObjects:{v68, objc_opt_class(), 0}];
  [v66 setClasses:v69 forSelector:sel_performSmartHoldingRequest_completion_ argumentIndex:0 ofReply:0];
}

void __74__NSXPCConnection_TUCallServicesAdditions__callServicesClientXPCInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09E0FC0];
  v1 = callServicesClientXPCInterface_xpcInterface;
  callServicesClientXPCInterface_xpcInterface = v0;

  v2 = callServicesClientXPCInterface_xpcInterface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_handleCurrentCallsChanged_callDisconnected_ argumentIndex:0 ofReply:0];

  v6 = callServicesClientXPCInterface_xpcInterface;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v7 setWithObjects:{v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  [v6 setClasses:v14 forSelector:sel_handleNotificationName_forCallWithUniqueProxyIdentifier_userInfo_ argumentIndex:2 ofReply:0];

  v15 = callServicesClientXPCInterface_xpcInterface;
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
  [v15 setClasses:v19 forSelector:sel_handleLocalRoutesByUniqueIdentifierUpdated_ argumentIndex:0 ofReply:0];

  v20 = callServicesClientXPCInterface_xpcInterface;
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
  [v20 setClasses:v24 forSelector:sel_handlePairedHostDeviceRoutesByUniqueIdentifierUpdated_ argumentIndex:0 ofReply:0];
}

@end