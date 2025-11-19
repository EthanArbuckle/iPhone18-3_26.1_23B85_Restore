@interface TRIBiomeDataStreamProvider
- (TRIBiomeDataStreamProvider)init;
- (id)_streamForIdentifier:(id)a3 eventHandler:(id)a4;
- (void)_subscribeForStreamIdentifier:(id)a3 eventHandler:(id)a4;
- (void)_unsubscribeAllDataStreams;
- (void)dealloc;
- (void)readLastDataStreamEventForIdentifier:(id)a3 eventHandler:(id)a4;
- (void)readLastDataStreamEventForIdentifier:(id)a3 withFilter:(id)a4 eventHandler:(id)a5;
- (void)subscribeDataStreamForIdentifier:(id)a3 eventHandler:(id)a4;
- (void)unsubscribeAllDataStreams;
@end

@implementation TRIBiomeDataStreamProvider

- (TRIBiomeDataStreamProvider)init
{
  v8.receiver = self;
  v8.super_class = TRIBiomeDataStreamProvider;
  v2 = [(TRIBiomeDataStreamProvider *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.biome-provider" qosClass:17];
    providerQueue = v2->_providerQueue;
    v2->_providerQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    streamIdentifierstoSubscribedSinks = v2->_streamIdentifierstoSubscribedSinks;
    v2->_streamIdentifierstoSubscribedSinks = v5;

    v2->_shouldSubscribeWithWaking = 1;
  }

  return v2;
}

- (void)dealloc
{
  [(TRIBiomeDataStreamProvider *)self unsubscribeAllDataStreams];
  v3.receiver = self;
  v3.super_class = TRIBiomeDataStreamProvider;
  [(TRIBiomeDataStreamProvider *)&v3 dealloc];
}

- (void)readLastDataStreamEventForIdentifier:(id)a3 eventHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = BiomeLibrary();
  v17 = 0;
  v8 = [v7 streamWithIdentifier:v6 error:&v17];

  v9 = v17;
  if (v9)
  {
    v5[2](v5, 0, v9);
  }

  else
  {
    v10 = [v8 publisher];
    v11 = [v10 last];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_eventHandler___block_invoke;
    v15[3] = &unk_279DE1100;
    v16 = v5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __80__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_eventHandler___block_invoke_12;
    v13[3] = &unk_279DE1128;
    v14 = v16;
    v12 = [v11 sinkWithCompletion:v15 receiveInput:v13];
  }
}

void __80__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_eventHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 error];
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "failed to to read Biome stream: %@", &v9, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = [v3 error];
    (*(v5 + 16))(v5, 0, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __80__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_eventHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v5 = [v3 json];

  if (v5)
  {
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)readLastDataStreamEventForIdentifier:(id)a3 withFilter:(id)a4 eventHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(TRIBiomeDataStreamProvider *)self _streamForIdentifier:a3 eventHandler:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 publisher];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_withFilter_eventHandler___block_invoke;
    v20[3] = &unk_279DE1150;
    v21 = v8;
    v13 = [v12 filterWithIsIncluded:v20];

    v14 = [v13 last];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_withFilter_eventHandler___block_invoke_2;
    v18[3] = &unk_279DE1100;
    v19 = v9;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __91__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_withFilter_eventHandler___block_invoke_16;
    v16[3] = &unk_279DE1128;
    v17 = v19;
    v15 = [v14 sinkWithCompletion:v18 receiveInput:v16];
  }
}

uint64_t __91__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_withFilter_eventHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [v5 json];

  if (v6)
  {
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v4);
  return v8;
}

void __91__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_withFilter_eventHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 error];
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "failed to to read Biome stream: %@", &v9, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = [v3 error];
    (*(v5 + 16))(v5, 0, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __91__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_withFilter_eventHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v7 eventBody];
  v5 = [v4 json];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:0];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v3);
}

- (void)subscribeDataStreamForIdentifier:(id)a3 eventHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__TRIBiomeDataStreamProvider_subscribeDataStreamForIdentifier_eventHandler___block_invoke;
  block[3] = &unk_279DDF470;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(providerQueue, block);
}

- (id)_streamForIdentifier:(id)a3 eventHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = BiomeLibrary();
  v12 = 0;
  v8 = [v7 streamWithIdentifier:v6 error:&v12];

  v9 = v12;
  if (v9)
  {
    v5[2](v5, 0, v9);
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (void)_subscribeForStreamIdentifier:(id)a3 eventHandler:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  providerQueue = self->_providerQueue;
  v8 = a3;
  dispatch_assert_queue_V2(providerQueue);
  v9 = [(TRIBiomeDataStreamProvider *)self _streamForIdentifier:v8 eventHandler:v6];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [v9 identifier];
    v12 = [v10 stringWithFormat:@"com.apple.trial.%@", v11];

    v13 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v12;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Subscribing to events from Biome stream: %@", buf, 0xCu);
    }

    v14 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:v12 targetQueue:self->_providerQueue waking:self->_shouldSubscribeWithWaking];
    v15 = [v9 DSLPublisher];
    v16 = [v15 subscribeOn:v14];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __73__TRIBiomeDataStreamProvider__subscribeForStreamIdentifier_eventHandler___block_invoke;
    v27[3] = &unk_279DE1100;
    v28 = v6;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __73__TRIBiomeDataStreamProvider__subscribeForStreamIdentifier_eventHandler___block_invoke_23;
    v25[3] = &unk_279DE1128;
    v26 = v28;
    v17 = [v16 sinkWithCompletion:v27 receiveInput:v25];

    streamIdentifierstoSubscribedSinks = self->_streamIdentifierstoSubscribedSinks;
    v19 = [v9 identifier];
    v20 = [(NSMutableDictionary *)streamIdentifierstoSubscribedSinks objectForKeyedSubscript:v19];

    if (v20)
    {
      v21 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v12;
        _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_DEFAULT, "Subscribed sink already exists. Replacing: %@", buf, 0xCu);
      }
    }

    v22 = self->_streamIdentifierstoSubscribedSinks;
    v23 = [v9 identifier];
    [(NSMutableDictionary *)v22 setObject:v17 forKeyedSubscript:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __73__TRIBiomeDataStreamProvider__subscribeForStreamIdentifier_eventHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 error];
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "failed to to read Biome stream: %@", &v9, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = [v3 error];
    (*(v5 + 16))(v5, 0, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __73__TRIBiomeDataStreamProvider__subscribeForStreamIdentifier_eventHandler___block_invoke_23(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v7 eventBody];
  v5 = [v4 json];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:0];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v3);
}

- (void)unsubscribeAllDataStreams
{
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TRIBiomeDataStreamProvider_unsubscribeAllDataStreams__block_invoke;
  block[3] = &unk_279DDEEE0;
  block[4] = self;
  dispatch_sync(providerQueue, block);
}

- (void)_unsubscribeAllDataStreams
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_providerQueue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_streamIdentifierstoSubscribedSinks;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_streamIdentifierstoSubscribedSinks objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7), v10];
        [v8 cancel];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end