@interface PPSocialHighlightServerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PPSocialHighlightServerDelegate)init;
@end

@implementation PPSocialHighlightServerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v6 = [PPXPCServerHelper hasTrueBooleanEntitlement:@"com.apple.private.sociallayer.highlights" connection:connectionCopy];
  v25 = [PPXPCServerHelper hasTrueBooleanEntitlement:@"com.apple.developer.shared-with-you" connection:connectionCopy];
  v7 = [PPXPCServerHelper hasTrueBooleanEntitlement:@"com.apple.developer.shared-with-you.collaboration" connection:connectionCopy];
  v8 = &protocolRef_PPSocialHighlightInternalServerProtocol;
  if (!v6)
  {
    v8 = &protocolRef_PPSocialHighlightServerProtocol;
  }

  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:*v8];
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x277CBEB98]);
  v12 = objc_opt_class();
  v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v10);
  [v9 setClasses:v13 forSelector:sel_rankedHighlightsWithLimit_client_variant_queryId_ argumentIndex:0 ofReply:0];

  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v16 = objc_opt_class();
  v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v14);
  [v9 setClasses:v17 forSelector:sel_rankedHighlightsForSyncedItems_client_variant_queryId_ argumentIndex:0 ofReply:0];

  v18 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2847B98D8];
  v19 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PPSocialHighlightServerDelegate_listener_shouldAcceptNewConnection___block_invoke;
  aBlock[3] = &unk_278971570;
  v20 = v19;
  v34 = v20;
  v35 = v6;
  v36 = v25;
  v37 = v7;
  v21 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __70__PPSocialHighlightServerDelegate_listener_shouldAcceptNewConnection___block_invoke_156;
  v31[3] = &unk_278977638;
  v32 = v20;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __70__PPSocialHighlightServerDelegate_listener_shouldAcceptNewConnection___block_invoke_2;
  v29[3] = &unk_2789790A8;
  v30 = v32;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __70__PPSocialHighlightServerDelegate_listener_shouldAcceptNewConnection___block_invoke_3;
  v27[3] = &unk_2789790A8;
  v28 = v30;
  v22 = v30;
  v23 = [PPXPCServerHelper shouldAcceptConnection:connectionCopy serviceName:@"com.apple.proactive.PersonalizationPortrait.SocialHighlight" allowedServerInterface:v9 allowedClientInterface:v18 requestHandler:v22 validateConnection:v21 setupClientProxy:v31 interruptionHandler:v29 invalidationHandler:v27];

  return v23;
}

BOOL __70__PPSocialHighlightServerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) setClientProcessName:a3];
  v6 = objc_opt_new();
  v7 = MEMORY[0x277CC1E90];
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v8 = [v7 bundleRecordForAuditToken:&v19 error:0];
  v9 = [v8 applicationIdentifier];

  if (v9)
  {
    v10 = [v8 applicationIdentifier];
    [v6 addObject:v10];
  }

  v11 = [v5 valueForEntitlement:{@"com.apple.private.interstellar.data-access", v19, v20}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 addObject:v11];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 addObjectsFromArray:v11];
    }
  }

  if (*(a1 + 40) == 1)
  {
    v12 = @"com.apple.private.sociallayer.highlights";
    [v6 addObject:@"com.apple.private.sociallayer.highlights"];
    v13 = 0;
  }

  else if (*(a1 + 41))
  {
    v13 = 0;
    v12 = @"com.apple.developer.shared-with-you";
  }

  else
  {
    v13 = *(a1 + 42) ^ 1;
    if (*(a1 + 42))
    {
      v12 = @"com.apple.developer.shared-with-you.collaboration";
    }

    else
    {
      v12 = 0;
    }
  }

  [*(a1 + 32) setApplicationIdentifiers:v6];
  v14 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [*(a1 + 32) applicationIdentifiers];
    LODWORD(v19) = 138412290;
    *(&v19 + 4) = v15;
    _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_INFO, "PPSocialHighlightServer: validateConnection applicationIdentifiers: %@", &v19, 0xCu);
  }

  v16 = (v13 & 1) == 0 && [PPXPCServerHelper checkForAndLogTrueBooleanEntitlement:v12 connection:v5 serviceName:@"com.apple.proactive.PersonalizationPortrait.SocialHighlight"];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (PPSocialHighlightServerDelegate)init
{
  v3.receiver = self;
  v3.super_class = PPSocialHighlightServerDelegate;
  return [(PPSocialHighlightServerDelegate *)&v3 init];
}

@end