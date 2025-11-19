@interface PREResponsesServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation PREResponsesServerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v28 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873439A0];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = objc_opt_class();
  v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v7);
  [v6 setClasses:v10 forSelector:sel_preResponseItemsForMessage_maximumResponses_conversationTurns_context_time_language_recipientHandles_modelFilePath_modelConfigPath_espressoBinFilePath_vocabFilePath_registerDisplayed_includeCustomResponses_includeResponsesToRobots_completion_ argumentIndex:2 ofReply:0];

  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc(MEMORY[0x277CBEB98]);
  v13 = objc_opt_class();
  v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v11);
  [v6 setClasses:v14 forSelector:sel_preResponseItemsForMessage_maximumResponses_conversationTurns_context_time_language_recipientHandles_modelFilePath_modelConfigPath_espressoBinFilePath_vocabFilePath_registerDisplayed_includeCustomResponses_includeResponsesToRobots_completion_ argumentIndex:6 ofReply:0];

  v15 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x277CBEB98]);
  v17 = objc_opt_class();
  v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v15);
  [v6 setClasses:v18 forSelector:sel_predictForMessage_conversationTurns_language_plistPath_espressoBinPath_vocabPath_heads_completion_ argumentIndex:1 ofReply:0];

  v19 = objc_autoreleasePoolPush();
  v20 = objc_alloc(MEMORY[0x277CBEB98]);
  v21 = objc_opt_class();
  v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v19);
  [v6 setClasses:v22 forSelector:sel_predictForMessage_conversationTurns_language_plistPath_espressoBinPath_vocabPath_heads_completion_ argumentIndex:6 ofReply:0];

  v23 = objc_opt_new();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __65__PREResponsesServerDelegate_listener_shouldAcceptNewConnection___block_invoke;
  v31[3] = &unk_279ABC5A8;
  v24 = v23;
  v32 = v24;
  v25 = MEMORY[0x2666ED060](v31);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __65__PREResponsesServerDelegate_listener_shouldAcceptNewConnection___block_invoke_38;
  v29[3] = &unk_279ABC5D0;
  v30 = v24;
  v26 = v24;
  LOBYTE(v22) = [PREXPCServerHelper shouldAcceptConnection:v5 serviceName:@"com.apple.proactive.experiments.responses" whitelistedServerInterface:v6 requestHandler:v26 validateConnection:v25 setupClientProxy:v29 interruptionHandler:&__block_literal_global invalidationHandler:&__block_literal_global_42];

  return v22;
}

BOOL __65__PREResponsesServerDelegate_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setClientProcessName:v6];
  v7 = [objc_alloc(MEMORY[0x277D42550]) initWithProcessIdentifier:{objc_msgSend(v5, "processIdentifier")}];
  [*(a1 + 32) setBundleIdResolver:v7];

  v8 = [PREXPCServerHelper hasTrueBooleanEntitlement:@"com.apple.proactive.experiments.responses" connection:v5];
  if (!v8)
  {
    v9 = [v6 length];
    v10 = pre_sv_xpc_handle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v11)
      {
        v20 = 138412546;
        *v21 = v6;
        *&v21[8] = 2112;
        *&v21[10] = @"com.apple.proactive.experiments.responses";
        v12 = "Rejecting connection from %@ to %@ due to missing entitlement";
        v13 = v10;
        v14 = 22;
LABEL_9:
        _os_log_error_impl(&dword_260D12000, v13, OS_LOG_TYPE_ERROR, v12, &v20, v14);
      }
    }

    else if (v11)
    {
      v17 = [v5 processIdentifier];
      v18 = __error();
      v19 = strerror(*v18);
      v20 = 67109634;
      *v21 = v17;
      *&v21[4] = 2112;
      *&v21[6] = @"com.apple.proactive.experiments.responses";
      *&v21[14] = 2080;
      *&v21[16] = v19;
      v12 = "Rejecting connection from %d to %@ due to failed entitlement check (error: %s)";
      v13 = v10;
      v14 = 28;
      goto LABEL_9;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

@end