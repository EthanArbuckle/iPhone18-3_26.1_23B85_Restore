@interface ATXProactiveSuggestionConsumer
- (ATXProactiveSuggestionConsumer)initWithConsumerSubType:(unsigned __int8)type;
- (id)cachedSuggestionsForClientModelType:(int64_t)type;
- (id)layoutForRequest:(id)request;
- (id)suggestionLayoutFromCache;
- (id)suggestionsForRequest:(id)request limit:(id)limit;
- (void)dealloc;
- (void)setupRemoteClientXPCConnection;
- (void)suggestionLayoutFromCache;
@end

@implementation ATXProactiveSuggestionConsumer

- (void)setupRemoteClientXPCConnection
{
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DEFC4000, v3, OS_LOG_TYPE_DEFAULT, "Establishing a new XPC connection to BlendingLayerServer from ATXProactiveSuggestionConsumer.", v7, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.proactive.ProactiveSuggestionClientModel.xpc" options:0];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v4;

  v6 = ATXCreateProactiveSuggestionClientModelXPCInterface();
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:&__block_literal_global_18];
  [(NSXPCConnection *)self->_xpcConnection resume];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = ATXProactiveSuggestionConsumer;
  [(ATXProactiveSuggestionConsumer *)&v3 dealloc];
}

- (ATXProactiveSuggestionConsumer)initWithConsumerSubType:(unsigned __int8)type
{
  v9.receiver = self;
  v9.super_class = ATXProactiveSuggestionConsumer;
  v4 = [(ATXProactiveSuggestionConsumer *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_consumer = type;
    v6 = objc_opt_new();
    cacheManager = v5->_cacheManager;
    v5->_cacheManager = v6;
  }

  return v5;
}

- (id)suggestionLayoutFromCache
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumer];
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_1DEFC4000, v3, OS_LOG_TYPE_DEFAULT, "Accessing Blending's suggestionLayout cache for consumer subtype: %@", &v12, 0xCu);
  }

  consumer = self->_consumer;
  p_consumer = &self->_consumer;
  v7 = [*(p_consumer + 1) cachedLayoutForConsumerSubType:consumer expectedClass:objc_opt_class()];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestionConsumer *)p_consumer suggestionLayoutFromCache];
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)layoutForRequest:(id)request
{
  requestCopy = request;
  if (!self->_xpcConnection)
  {
    [(ATXProactiveSuggestionConsumer *)self setupRemoteClientXPCConnection];
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  remoteSyncBlendingLayerServer = [(ATXProactiveSuggestionConsumer *)self remoteSyncBlendingLayerServer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__ATXProactiveSuggestionConsumer_layoutForRequest___block_invoke;
  v8[3] = &unk_1E86A4230;
  v8[4] = &v9;
  [remoteSyncBlendingLayerServer generateLayoutForRequest:requestCopy reply:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)suggestionsForRequest:(id)request limit:(id)limit
{
  requestCopy = request;
  limitCopy = limit;
  if (!self->_xpcConnection)
  {
    [(ATXProactiveSuggestionConsumer *)self setupRemoteClientXPCConnection];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  remoteSyncBlendingLayerServer = [(ATXProactiveSuggestionConsumer *)self remoteSyncBlendingLayerServer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__ATXProactiveSuggestionConsumer_suggestionsForRequest_limit___block_invoke;
  v11[3] = &unk_1E86A4258;
  v11[4] = &v12;
  [remoteSyncBlendingLayerServer generateRankedSuggestionsForRequest:requestCopy limit:limitCopy reply:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __63__ATXProactiveSuggestionConsumer_remoteSyncBlendingLayerServer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__ATXProactiveSuggestionConsumer_remoteSyncBlendingLayerServer__block_invoke_cold_1(v2, v3);
  }
}

void __64__ATXProactiveSuggestionConsumer_setupRemoteClientXPCConnection__block_invoke()
{
  v0 = __atxlog_handle_blending();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __64__ATXProactiveSuggestionConsumer_setupRemoteClientXPCConnection__block_invoke_cold_1(v0);
  }
}

- (id)cachedSuggestionsForClientModelType:(int64_t)type
{
  v4 = [ATXProactiveSuggestionClientModel clientModelIdFromClientModelType:?];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v5 cachedSuggestionsForClientModel:v4];
  }

  else
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXProactiveSuggestionConsumer *)type cachedSuggestionsForClientModelType:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (void)suggestionLayoutFromCache
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698B028] stringForConsumerSubtype:*self];
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "A suggestion client tried to access cached suggestions for consumerSubType: %@, but the object type wasn't an ATXSuggestionLayout.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __63__ATXProactiveSuggestionConsumer_remoteSyncBlendingLayerServer__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Blending: Error while communicating with Suggestion Receiver. Error: %@.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cachedSuggestionsForClientModelType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Unrecognized clientModelType provided: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end