@interface TRIXPCInternalAgentToSystemServiceListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (TRIXPCInternalAgentToSystemServiceListener)init;
@end

@implementation TRIXPCInternalAgentToSystemServiceListener

- (TRIXPCInternalAgentToSystemServiceListener)init
{
  v58.receiver = self;
  v58.super_class = TRIXPCInternalAgentToSystemServiceListener;
  v2 = [(TRIXPCInternalAgentToSystemServiceListener *)&v58 init];
  if (v2)
  {
    v57 = objc_opt_new();
    v3 = [[TRIInternalAgentToSystemServiceRequestHandler alloc] initWithEntitlementWitness:v57];
    v4 = [[TRIXPCInternalAgentToSystemServiceWrapper alloc] initWithUnderlyingHandler:v3];

    wrapper = v2->_wrapper;
    v2->_wrapper = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FCDDA8];
    interface = v2->_interface;
    v2->_interface = v6;

    v8 = v2->_interface;
    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc(MEMORY[0x277CBEB98]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 initWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v9);
    [(NSXPCInterface *)v8 setClasses:v14 forSelector:sel_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion_ argumentIndex:0 ofReply:0];

    v15 = v2->_interface;
    v16 = objc_autoreleasePoolPush();
    v17 = objc_alloc(MEMORY[0x277CBEB98]);
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v17 initWithObjects:{v18, v19, v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v16);
    [(NSXPCInterface *)v15 setClasses:v21 forSelector:sel_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion_ argumentIndex:1 ofReply:0];

    v22 = v2->_interface;
    v23 = objc_autoreleasePoolPush();
    v24 = objc_alloc(MEMORY[0x277CBEB98]);
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [v24 initWithObjects:{v25, v26, v27, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v23);
    [(NSXPCInterface *)v22 setClasses:v28 forSelector:sel_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion_ argumentIndex:2 ofReply:0];

    v29 = v2->_interface;
    v30 = objc_autoreleasePoolPush();
    v31 = objc_alloc(MEMORY[0x277CBEB98]);
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v31 initWithObjects:{v32, v33, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v30);
    [(NSXPCInterface *)v29 setClasses:v34 forSelector:sel_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_completion_ argumentIndex:4 ofReply:0];

    v35 = v2->_interface;
    v36 = objc_autoreleasePoolPush();
    v37 = objc_alloc(MEMORY[0x277CBEB98]);
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v37 initWithObjects:{v38, v39, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v36);
    [(NSXPCInterface *)v35 setClasses:v40 forSelector:sel_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_completion_ argumentIndex:1 ofReply:1];

    v41 = v2->_interface;
    v42 = objc_autoreleasePoolPush();
    v43 = objc_alloc(MEMORY[0x277CBEB98]);
    v44 = objc_opt_class();
    v45 = [v43 initWithObjects:{v44, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v42);
    [(NSXPCInterface *)v41 setClasses:v45 forSelector:sel_saveFactorPackForUserId_toGlobalPath_fromTemporaryPath_factors_sourceExtension_completion_ argumentIndex:3 ofReply:0];

    v46 = v2->_interface;
    v47 = objc_autoreleasePoolPush();
    v48 = objc_alloc(MEMORY[0x277CBEB98]);
    v49 = objc_opt_class();
    v50 = [v48 initWithObjects:{v49, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v47);
    [(NSXPCInterface *)v46 setClasses:v50 forSelector:sel_updateFactorPackForUserId_atGlobalPath_populatingFactors_completion_ argumentIndex:2 ofReply:0];

    v51 = v2->_interface;
    v52 = objc_autoreleasePoolPush();
    v53 = objc_alloc(MEMORY[0x277CBEB98]);
    v54 = objc_opt_class();
    v55 = [v53 initWithObjects:{v54, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v52);
    [(NSXPCInterface *)v51 setClasses:v55 forSelector:sel_updateFactorPackForUserId_atGlobalPath_deletingFactors_completion_ argumentIndex:2 ofReply:0];
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = MEMORY[0x277D42660];
  wrapper = self->_wrapper;
  interface = self->_interface;
  v7 = a4;
  v8 = TRILogCategory_Server();
  LOBYTE(v4) = [v4 shouldAcceptConnection:v7 serviceName:@"com.apple.triald.system.from-agent" whitelistedServerInterface:interface whitelistedClientInterface:0 requestHandler:wrapper validateConnection:&__block_literal_global_8 setupClientProxy:0 interruptionHandler:&__block_literal_global_159 invalidationHandler:&__block_literal_global_161 logHandle:v8];

  return v4;
}

uint64_t __81__TRIXPCInternalAgentToSystemServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D42660];
  v3 = a2;
  v4 = TRILogCategory_Server();
  v5 = [v2 checkForAndLogTrueBooleanEntitlement:@"com.apple.triald.system.from-agent" connection:v3 serviceName:@"com.apple.triald.system.from-agent" logHandle:v4];

  return v5;
}

@end