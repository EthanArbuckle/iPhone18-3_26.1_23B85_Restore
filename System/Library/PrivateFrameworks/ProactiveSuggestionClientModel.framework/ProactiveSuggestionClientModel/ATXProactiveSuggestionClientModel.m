@interface ATXProactiveSuggestionClientModel
+ (BOOL)clientModelTypeIsEligibleForShortcutConversion:(int64_t)a3;
+ (id)clientModelIdFromClientModelType:(int64_t)a3;
+ (id)clientModelIdsFromClientModelTypesArray:(id)a3;
+ (int64_t)actionConversionTypeForClientModelType:(int64_t)a3;
+ (int64_t)clientModelTypeFromClientModelId:(id)a3;
+ (void)refreshBlendingLayer;
+ (void)refreshBlendingLayerWithReason:(id)a3;
- (ATXProactiveSuggestionClientModel)initWithClientModelId:(id)a3 requestDelegate:(id)a4;
- (ATXProactiveSuggestionClientModel)initWithClientModelId:(id)a3 requestDelegate:(id)a4 blendingLayerServer:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)clientModelMismatchErrorResponseForRequest:(id)a3 clientModelId:(id)a4;
- (id)emptyResponseForRequest:(id)a3;
- (void)dealloc;
- (void)pingWithCompletion:(id)a3;
- (void)retrieveCurrentSuggestionsWithReply:(id)a3;
- (void)setupRemoteClientXPCConnection;
- (void)setupXPCListenerWithClientModelId:(id)a3;
- (void)suggestionsForContextualActionSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5;
- (void)suggestionsForIntentSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5;
- (void)suggestionsForInteractionSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5;
- (void)transmitSuggestionsToReceiver:(id)a3 feedbackMetadata:(id)a4 completionHandler:(id)a5;
- (void)updateSuggestions:(id)a3 feedbackMetadata:(id)a4 completionHandler:(id)a5;
@end

@implementation ATXProactiveSuggestionClientModel

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  [(NSXPCListener *)self->_xpcListener invalidate];
  v3.receiver = self;
  v3.super_class = ATXProactiveSuggestionClientModel;
  [(ATXProactiveSuggestionClientModel *)&v3 dealloc];
}

- (ATXProactiveSuggestionClientModel)initWithClientModelId:(id)a3 requestDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ATXProactiveSuggestionClientModel *)self setupRemoteClientXPCConnection];
  v8 = [(ATXProactiveSuggestionClientModel *)self remoteAsyncBlendingLayerServer];
  if (v7)
  {
    v9 = [v6 copy];
    [(ATXProactiveSuggestionClientModel *)self setupXPCListenerWithClientModelId:v9];
  }

  v10 = [(ATXProactiveSuggestionClientModel *)self initWithClientModelId:v6 requestDelegate:v7 blendingLayerServer:v8];

  return v10;
}

- (ATXProactiveSuggestionClientModel)initWithClientModelId:(id)a3 requestDelegate:(id)a4 blendingLayerServer:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = __atxlog_handle_blending();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v8;
    _os_log_impl(&dword_1DEFC4000, v11, OS_LOG_TYPE_DEFAULT, "Creating a ProactiveSuggestionClientModel object for clientModelId: %{public}@", buf, 0xCu);
  }

  v17.receiver = self;
  v17.super_class = ATXProactiveSuggestionClientModel;
  v12 = [(ATXProactiveSuggestionClientModel *)&v17 init];
  if (v12)
  {
    v13 = [v8 copy];
    clientModelId = v12->_clientModelId;
    v12->_clientModelId = v13;

    objc_storeStrong(&v12->_requestDelegate, a4);
    objc_storeStrong(&v12->_blendingLayerServer, a5);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)setupRemoteClientXPCConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.ProactiveSuggestionClientModel.xpc" options:0];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v3;

  v5 = ATXCreateProactiveSuggestionClientModelXPCInterface();
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v5];

  v6 = [(NSString *)self->_clientModelId copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__ATXProactiveSuggestionClientModel_setupRemoteClientXPCConnection__block_invoke;
  v10[3] = &unk_1E86A45B0;
  v11 = v6;
  v7 = self->_xpcConnection;
  v8 = v6;
  [(NSXPCConnection *)v7 setInterruptionHandler:v10];
  v9 = [(NSXPCConnection *)self->_xpcConnection interruptionHandler];
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v9];

  [(NSXPCConnection *)self->_xpcConnection resume];
}

void __67__ATXProactiveSuggestionClientModel_setupRemoteClientXPCConnection__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_blending();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __67__ATXProactiveSuggestionClientModel_setupRemoteClientXPCConnection__block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

- (void)setupXPCListenerWithClientModelId:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v8 = [[v4 alloc] initWithFormat:@"com.apple.proactive.SuggestionRequest.%@", v5];

  v6 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v8];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v6;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  [(NSXPCListener *)self->_xpcListener resume];
}

void __67__ATXProactiveSuggestionClientModel_remoteAsyncBlendingLayerServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__ATXProactiveSuggestionClientModel_remoteAsyncBlendingLayerServer__block_invoke_cold_1();
  }
}

- (void)transmitSuggestionsToReceiver:(id)a3 feedbackMetadata:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  blendingLayerServer = self->_blendingLayerServer;
  clientModelId = self->_clientModelId;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __102__ATXProactiveSuggestionClientModel_transmitSuggestionsToReceiver_feedbackMetadata_completionHandler___block_invoke;
  v12[3] = &unk_1E86A45D8;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [(ATXProactiveSuggestionClientModelXPCInterface *)blendingLayerServer clientModelUpdatedSuggestions:a3 feedbackMetadata:a4 clientModelId:clientModelId completion:v12];
}

void __102__ATXProactiveSuggestionClientModel_transmitSuggestionsToReceiver_feedbackMetadata_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = __atxlog_handle_blending();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __102__ATXProactiveSuggestionClientModel_transmitSuggestionsToReceiver_feedbackMetadata_completionHandler___block_invoke_cold_1();
    }

    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

- (void)updateSuggestions:(id)a3 feedbackMetadata:(id)a4 completionHandler:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = __atxlog_handle_blending();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    clientModelId = self->_clientModelId;
    v18 = 138543618;
    v19 = clientModelId;
    v20 = 2048;
    v21 = [v8 count];
    _os_log_impl(&dword_1DEFC4000, v11, OS_LOG_TYPE_DEFAULT, "Blending: (%{public}@) Updating suggestions. Client Model produced %lu new suggestions.", &v18, 0x16u);
  }

  v13 = __atxlog_handle_blending();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_clientModelId;
    v18 = 138543362;
    v19 = v14;
    _os_log_impl(&dword_1DEFC4000, v13, OS_LOG_TYPE_DEFAULT, "Blending: (%{public}@) Transmiting...", &v18, 0xCu);
  }

  [(ATXProactiveSuggestionClientModel *)self transmitSuggestionsToReceiver:v8 feedbackMetadata:v10 completionHandler:v9];
  v15 = __atxlog_handle_blending();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_clientModelId;
    v18 = 138543362;
    v19 = v16;
    _os_log_impl(&dword_1DEFC4000, v15, OS_LOG_TYPE_DEFAULT, "Blending: (%{public}@) Done transmitting.", &v18, 0xCu);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)retrieveCurrentSuggestionsWithReply:(id)a3
{
  v4 = a3;
  blendingLayerServer = self->_blendingLayerServer;
  clientModelId = self->_clientModelId;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__ATXProactiveSuggestionClientModel_retrieveCurrentSuggestionsWithReply___block_invoke;
  v8[3] = &unk_1E86A4620;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(ATXProactiveSuggestionClientModelXPCInterface *)blendingLayerServer retrieveSuggestionsForClientModelId:clientModelId reply:v8];
}

void __73__ATXProactiveSuggestionClientModel_retrieveCurrentSuggestionsWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__ATXProactiveSuggestionClientModel_retrieveCurrentSuggestionsWithReply___block_invoke_cold_1(a1, v6, v7);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)clientModelIdFromClientModelType:(int64_t)a3
{
  result = @"atx_anchor_model";
  switch(a3)
  {
    case 0:
      v4 = __atxlog_handle_blending();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        +[ATXProactiveSuggestionClientModel clientModelIdFromClientModelType:];
      }

      result = @"unknown";
      break;
    case 2:
      result = @"atx_anchor_model_action_conversion";
      break;
    case 3:
      result = @"atx_heuristics";
      break;
    case 4:
      result = @"atx_heuristics_action_conversion";
      break;
    case 5:
      result = @"atx_action_relevance_model";
      break;
    case 6:
      result = @"atx_action_predictions_spotlight";
      break;
    case 7:
      result = @"atx_action_predictions_homescreen";
      break;
    case 8:
      result = @"atx_action_predictions_homescreen_action_conversion";
      break;
    case 9:
      result = @"atx_action_predictions_lockscreen";
      break;
    case 10:
      result = @"atx_action_fallbacks_homescreen";
      break;
    case 11:
      result = @"atx_recent_shortcuts_homescreen";
      break;
    case 12:
      result = @"atx_recent_shortcuts_homescreen_action_conversion";
      break;
    case 13:
      result = @"atx_app_clip_predictions";
      break;
    case 14:
      result = @"atx_app_relevance_model";
      break;
    case 15:
      result = @"atx_app_predictions_spotlight";
      break;
    case 16:
      result = @"atx_app_predictions_homescreen";
      break;
    case 17:
      result = @"atx_app_predictions_app_library";
      break;
    case 18:
      result = @"atx_glanceable_information";
      break;
    case 19:
      result = @"atx_timeline_donation";
      break;
    case 20:
      result = @"atx_relevant_shortcut";
      break;
    case 21:
      result = @"atx_first_party_offers";
      break;
    case 22:
      result = @"tps_tips";
      break;
    case 23:
      result = @"atx_hero_app_predictions";
      break;
    case 24:
      result = @"atx_magical_moments";
      break;
    case 25:
      result = @"atx_debug_high_priority";
      break;
    case 26:
      result = @"atx_debug_medium_priority";
      break;
    case 27:
      result = @"atx_debug_low_priority";
      break;
    case 28:
      result = @"ck_universal_recents";
      break;
    case 29:
      result = @"cd_calendar_interaction_suggestions";
      break;
    case 30:
      result = @"ps_unstructured_calendar_interaction_suggestions";
      break;
    case 31:
      result = @"ps_unstructured_reminder_interaction_suggestions";
      break;
    case 32:
      result = @"ps_facetime_interaction_model";
      break;
    case 33:
      result = @"ps_facetime_fallback_interaction_model";
      break;
    case 34:
      result = @"ps_share_sheet_interaction_model";
      break;
    case 35:
      result = @"ps_phone_call_interaction_heuristics";
      break;
    case 36:
      result = @"ps_expanse_session_interaction_heuristics";
      break;
    case 37:
      result = @"ps_hyper_recent_interaction_heuristics";
      break;
    case 38:
      result = @"ps_photos_asset_present_interaction_heuristics";
      break;
    case 39:
      result = @"ps_photos_asset_or_memory_present_interaction_heuristics";
      break;
    case 40:
      result = @"ps_rule_mining_interaction_model";
      break;
    case 41:
      result = @"ps_knn_interaction_model";
      break;
    case 42:
      result = @"ps_share_sheet_fallback_interaction_model";
      break;
    case 43:
      result = @"atx_contextual_actions";
      break;
    case 44:
      result = @"atx_context_heuristics";
      break;
    case 45:
      result = @"atx_hero_spotlight_poi";
      break;
    case 46:
      result = @"atx_spotlight_recents";
      break;
    case 47:
      result = @"atx_hourglass";
      break;
    case 48:
      result = @"atx_action_predictions_settings";
      break;
    case 49:
      result = @"atx_action_predictions_watchappsettings";
      break;
    case 50:
      v5 = __atxlog_handle_blending();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        +[ATXProactiveSuggestionClientModel clientModelIdFromClientModelType:];
      }

      result = @"atx_max";
      break;
    default:
      return result;
  }

  return result;
}

+ (id)clientModelIdsFromClientModelTypesArray:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = +[ATXProactiveSuggestionClientModel clientModelIdFromClientModelType:](ATXProactiveSuggestionClientModel, "clientModelIdFromClientModelType:", [*(*(&v14 + 1) + 8 * i) integerValue]);
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (int64_t)clientModelTypeFromClientModelId:(id)a3
{
  v3 = a3;
  if (clientModelTypeFromClientModelId__onceToken != -1)
  {
    +[ATXProactiveSuggestionClientModel clientModelTypeFromClientModelId:];
  }

  v4 = [clientModelTypeFromClientModelId__clientModelMap objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __70__ATXProactiveSuggestionClientModel_clientModelTypeFromClientModelId___block_invoke()
{
  v0 = objc_opt_new();
  v1 = clientModelTypeFromClientModelId__clientModelMap;
  clientModelTypeFromClientModelId__clientModelMap = v0;

  for (i = 1; i != 50; ++i)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    v4 = clientModelTypeFromClientModelId__clientModelMap;
    v5 = [ATXProactiveSuggestionClientModel clientModelIdFromClientModelType:i];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

+ (BOOL)clientModelTypeIsEligibleForShortcutConversion:(int64_t)a3
{
  if (a3 <= 0x32)
  {
    if (((1 << a3) & 0x37FFFC003F754) != 0 || ((1 << a3) & 0x80003FFC0000) != 0)
    {
      return 0;
    }

    if (a3 == 50)
    {
      v4 = __atxlog_handle_blending();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        +[ATXProactiveSuggestionClientModel clientModelIdFromClientModelType:];
      }

LABEL_11:

      return 0;
    }
  }

  if (!a3)
  {
    v4 = __atxlog_handle_blending();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      +[ATXProactiveSuggestionClientModel clientModelIdFromClientModelType:];
    }

    goto LABEL_11;
  }

  return 1;
}

+ (int64_t)actionConversionTypeForClientModelType:(int64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1) < 0xB && ((0x455u >> v3))
  {
    return qword_1DF03AB10[v3];
  }

  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    +[ATXProactiveSuggestionClientModel actionConversionTypeForClientModelType:];
  }

  return 0;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = __atxlog_handle_blending();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientModelId = self->_clientModelId;
    v14 = 138543362;
    v15 = clientModelId;
    _os_log_impl(&dword_1DEFC4000, v6, OS_LOG_TYPE_DEFAULT, "Client Model %{public}@ is accepting an XPC connection", &v14, 0xCu);
  }

  if (self->_requestDelegate)
  {
    v8 = [v5 valueForEntitlement:@"com.apple.proactive.ProactiveSuggestionClientModel.xpc"];
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0 && ([v8 BOOLValue] & 1) != 0)
    {
      v9 = ATXProactiveSuggestionRealTimeProviderXPCInterface();
      [v5 setExportedInterface:v9];

      [v5 setExportedObject:self];
      [v5 setInterruptionHandler:&__block_literal_global_190];
      [v5 setInvalidationHandler:&__block_literal_global_193];
      [v5 resume];
      v10 = 1;
    }

    else
    {
      v11 = __atxlog_handle_blending();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ATXProactiveSuggestionClientModel listener:shouldAcceptNewConnection:];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

void __72__ATXProactiveSuggestionClientModel_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_blending();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __72__ATXProactiveSuggestionClientModel_listener_shouldAcceptNewConnection___block_invoke_cold_1();
  }
}

void __72__ATXProactiveSuggestionClientModel_listener_shouldAcceptNewConnection___block_invoke_191()
{
  v0 = __atxlog_handle_blending();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __72__ATXProactiveSuggestionClientModel_listener_shouldAcceptNewConnection___block_invoke_191_cold_1();
  }
}

- (void)suggestionsForInteractionSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if ([(NSString *)self->_clientModelId isEqualToString:v8])
  {
    requestDelegate = self->_requestDelegate;
    if (objc_opt_respondsToSelector())
    {
      [(ATXProactiveSuggestionRealTimeProviderDelegateProtocol *)self->_requestDelegate suggestionsForInteractionSuggestionRequest:v13 clientModelId:v8 reply:v9];
      goto LABEL_7;
    }

    v11 = [(ATXProactiveSuggestionClientModel *)self emptyResponseForRequest:v13];
  }

  else
  {
    v11 = [(ATXProactiveSuggestionClientModel *)self clientModelMismatchErrorResponseForRequest:v13 clientModelId:v8];
  }

  v12 = v11;
  v9[2](v9, v11);

LABEL_7:
}

- (void)suggestionsForContextualActionSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if ([(NSString *)self->_clientModelId isEqualToString:v8])
  {
    requestDelegate = self->_requestDelegate;
    if (objc_opt_respondsToSelector())
    {
      [(ATXProactiveSuggestionRealTimeProviderDelegateProtocol *)self->_requestDelegate suggestionsForContextualActionSuggestionRequest:v13 clientModelId:v8 reply:v9];
      goto LABEL_7;
    }

    v11 = [(ATXProactiveSuggestionClientModel *)self emptyResponseForRequest:v13];
  }

  else
  {
    v11 = [(ATXProactiveSuggestionClientModel *)self clientModelMismatchErrorResponseForRequest:v13 clientModelId:v8];
  }

  v12 = v11;
  v9[2](v9, v11);

LABEL_7:
}

- (void)suggestionsForIntentSuggestionRequest:(id)a3 clientModelId:(id)a4 reply:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if ([(NSString *)self->_clientModelId isEqualToString:v8])
  {
    requestDelegate = self->_requestDelegate;
    if (objc_opt_respondsToSelector())
    {
      [(ATXProactiveSuggestionRealTimeProviderDelegateProtocol *)self->_requestDelegate suggestionsForIntentSuggestionRequest:v13 clientModelId:v8 reply:v9];
      goto LABEL_7;
    }

    v11 = [(ATXProactiveSuggestionClientModel *)self emptyResponseForRequest:v13];
  }

  else
  {
    v11 = [(ATXProactiveSuggestionClientModel *)self clientModelMismatchErrorResponseForRequest:v13 clientModelId:v8];
  }

  v12 = v11;
  v9[2](v9, v11);

LABEL_7:
}

- (void)pingWithCompletion:(id)a3
{
  v8 = a3;
  requestDelegate = self->_requestDelegate;
  if (objc_opt_respondsToSelector() & 1) != 0 || (v5 = self->_requestDelegate, (objc_opt_respondsToSelector()))
  {
    v6 = v8[2];
  }

  else
  {
    v7 = self->_requestDelegate;
    objc_opt_respondsToSelector();
    v6 = v8[2];
  }

  v6();
}

- (id)emptyResponseForRequest:(id)a3
{
  v3 = a3;
  v4 = [[ATXSuggestionRequestResponse alloc] initWithSuggestions:0 feedbackMetadata:0 originalRequest:v3 responseCode:1 error:0];

  return v4;
}

- (id)clientModelMismatchErrorResponseForRequest:(id)a3 clientModelId:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  clientModelId = self->_clientModelId;
  v7 = a3;
  v8 = [v5 stringWithFormat:@"Wrong delegate for request. Expected %@ but found %@.", a4, clientModelId];
  v9 = [ATXSuggestionRequestResponse alloc];
  v10 = MEMORY[0x1E696ABC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v18 = *MEMORY[0x1E696A578];
  v19[0] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v14 = [v10 errorWithDomain:v12 code:5 userInfo:v13];
  v15 = [(ATXSuggestionRequestResponse *)v9 initWithSuggestions:0 feedbackMetadata:0 originalRequest:v7 responseCode:3 error:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (void)refreshBlendingLayer
{
  v2 = [@"com.apple.duetexpertd.clientModelRefreshBlendingLayer" UTF8String];

  notify_post(v2);
}

+ (void)refreshBlendingLayerWithReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1DEFC4000, v4, OS_LOG_TYPE_DEFAULT, "Sending refresh blending notification with reason: %@", &v10, 0xCu);
  }

  v5 = [MEMORY[0x1E696AE30] processInfo];
  v6 = [v5 processName];
  v7 = [v6 isEqualToString:@"duetexpertd"];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"com.apple.duetexpertd.clientModelRefreshBlendingLayer" object:0];
  }

  else
  {
    notify_post([@"com.apple.duetexpertd.clientModelRefreshBlendingLayer" UTF8String]);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __67__ATXProactiveSuggestionClientModel_setupRemoteClientXPCConnection__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, a2, a3, "Blending: Connection to Proactive Suggestion Client Model server interrupted for clientModelId: %{public}@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __67__ATXProactiveSuggestionClientModel_remoteAsyncBlendingLayerServer__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "Blending: Error while communicating with Suggestion Receiver. Error: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __102__ATXProactiveSuggestionClientModel_transmitSuggestionsToReceiver_feedbackMetadata_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "Blending: Error while sending the updated cache file to the Suggestion Receiver. Error: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__ATXProactiveSuggestionClientModel_retrieveCurrentSuggestionsWithReply___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(*(a1 + 32) + 8);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_4_2(&dword_1DEFC4000, a2, a3, "Blending: Error retrieving suggestions for %{public}@: %{public}@.", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)actionConversionTypeForClientModelType:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_FAULT, "Tried to get action conversion type for unsupported client model type: %ld", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_2(&dword_1DEFC4000, v0, v1, "Blending: Rejecting connection %@ without entitlement %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end