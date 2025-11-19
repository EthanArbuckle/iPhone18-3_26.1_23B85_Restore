@interface ATXUniversalBlendingFeedbackWriter
- (ATXUniversalBlendingFeedbackWriter)init;
- (ATXUniversalBlendingFeedbackWriter)initWithClientModelStream:(id)a3 lightWeightClientModelStream:(id)a4 blendingModelStream:(id)a5 uiStream:(id)a6;
- (void)donateBlendingModelUICacheUpdate:(id)a3 uiConsumer:(unsigned __int8)a4;
- (void)donateUIInteractionEvent:(id)a3;
- (void)sendEventToBiomeIfNeededForClientModelCacheUpdate:(id)a3 previousUpdate:(id)a4;
@end

@implementation ATXUniversalBlendingFeedbackWriter

- (ATXUniversalBlendingFeedbackWriter)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXUniversalBlendingFeedbackWriter *)self initWithClientModelStream:v3 lightWeightClientModelStream:v4 blendingModelStream:v5 uiStream:v6];

  return v7;
}

- (ATXUniversalBlendingFeedbackWriter)initWithClientModelStream:(id)a3 lightWeightClientModelStream:(id)a4 blendingModelStream:(id)a5 uiStream:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = ATXUniversalBlendingFeedbackWriter;
  v15 = [(ATXUniversalBlendingFeedbackWriter *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientModelStream, a3);
    objc_storeStrong(&v16->_lightWeightClientModelStream, a4);
    objc_storeStrong(&v16->_blendingModelStream, a5);
    objc_storeStrong(&v16->_uiStream, a6);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("ATXUniversalBlendingFeedbackWriter.internalQueue", v17);
    internalQueue = v16->_internalQueue;
    v16->_internalQueue = v18;
  }

  return v16;
}

- (void)sendEventToBiomeIfNeededForClientModelCacheUpdate:(id)a3 previousUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__ATXUniversalBlendingFeedbackWriter_sendEventToBiomeIfNeededForClientModelCacheUpdate_previousUpdate___block_invoke;
  block[3] = &unk_1E86A4150;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_sync(internalQueue, block);
}

void __103__ATXUniversalBlendingFeedbackWriter_sendEventToBiomeIfNeededForClientModelCacheUpdate_previousUpdate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) suggestions];
  if ([v2 count])
  {

LABEL_4:
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) clientModelId];
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "Adding event to client model Biome stream for: %{public}@", &v13, 0xCu);
    }

    v7 = [*(*(a1 + 48) + 8) source];
    [v7 sendEvent:*(a1 + 40)];

    v8 = [[ATXLightweightClientModelCacheUpdate alloc] initWithClientModelCacheUpdate:*(a1 + 40)];
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(ATXLightweightClientModelCacheUpdate *)v8 clientModelId];
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_1DEFC4000, v9, OS_LOG_TYPE_DEFAULT, "Adding event to lightweight client model Biome stream for: %{public}@", &v13, 0xCu);
    }

    v11 = [*(*(a1 + 48) + 16) source];
    [v11 sendEvent:v8];
    goto LABEL_9;
  }

  v3 = [*(a1 + 40) suggestions];
  v4 = [v3 count];

  if (v4)
  {
    goto LABEL_4;
  }

  v8 = __atxlog_handle_blending();
  if (!os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  v11 = [*(a1 + 40) clientModelId];
  v13 = 138543362;
  v14 = v11;
  _os_log_impl(&dword_1DEFC4000, &v8->super, OS_LOG_TYPE_DEFAULT, "Not adding event for client model to Biome stream (%{public}@) because our previous suggestion was empty and so is our new one.", &v13, 0xCu);
LABEL_9:

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)donateBlendingModelUICacheUpdate:(id)a3 uiConsumer:(unsigned __int8)a4
{
  v5 = a3;
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__ATXUniversalBlendingFeedbackWriter_donateBlendingModelUICacheUpdate_uiConsumer___block_invoke;
  v8[3] = &unk_1E86A4B50;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(internalQueue, v8);
}

- (void)donateUIInteractionEvent:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__ATXUniversalBlendingFeedbackWriter_donateUIInteractionEvent___block_invoke;
  v7[3] = &unk_1E86A4B50;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

uint64_t __63__ATXUniversalBlendingFeedbackWriter_donateUIInteractionEvent___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_blending();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{objc_msgSend(*(a1 + 32), "consumerSubTypeForUIStream")}];
    v4 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1DEFC4000, v2, OS_LOG_TYPE_DEFAULT, "Feedback Writer: Recording UI interaction event for consumerSubType %@. Event: %@", &v7, 0x16u);
  }

  result = [*(*(a1 + 40) + 32) donateGenericUIEvent:*(a1 + 32)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end