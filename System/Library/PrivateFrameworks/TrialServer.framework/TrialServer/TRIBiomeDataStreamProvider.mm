@interface TRIBiomeDataStreamProvider
- (TRIBiomeDataStreamProvider)init;
- (id)_streamForIdentifier:(id)identifier eventHandler:(id)handler;
- (void)_subscribeForStreamIdentifier:(id)identifier eventHandler:(id)handler;
- (void)_unsubscribeAllDataStreams;
- (void)dealloc;
- (void)readLastDataStreamEventForIdentifier:(id)identifier eventHandler:(id)handler;
- (void)readLastDataStreamEventForIdentifier:(id)identifier withFilter:(id)filter eventHandler:(id)handler;
- (void)subscribeDataStreamForIdentifier:(id)identifier eventHandler:(id)handler;
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

- (void)readLastDataStreamEventForIdentifier:(id)identifier eventHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v7 = BiomeLibrary();
  v17 = 0;
  v8 = [v7 streamWithIdentifier:identifierCopy error:&v17];

  v9 = v17;
  if (v9)
  {
    handlerCopy[2](handlerCopy, 0, v9);
  }

  else
  {
    publisher = [v8 publisher];
    last = [publisher last];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_eventHandler___block_invoke;
    v15[3] = &unk_279DE1100;
    v16 = handlerCopy;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __80__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_eventHandler___block_invoke_12;
    v13[3] = &unk_279DE1128;
    v14 = v16;
    v12 = [last sinkWithCompletion:v15 receiveInput:v13];
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

- (void)readLastDataStreamEventForIdentifier:(id)identifier withFilter:(id)filter eventHandler:(id)handler
{
  filterCopy = filter;
  handlerCopy = handler;
  v10 = [(TRIBiomeDataStreamProvider *)self _streamForIdentifier:identifier eventHandler:handlerCopy];
  v11 = v10;
  if (v10)
  {
    publisher = [v10 publisher];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_withFilter_eventHandler___block_invoke;
    v20[3] = &unk_279DE1150;
    v21 = filterCopy;
    v13 = [publisher filterWithIsIncluded:v20];

    last = [v13 last];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_withFilter_eventHandler___block_invoke_2;
    v18[3] = &unk_279DE1100;
    v19 = handlerCopy;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __91__TRIBiomeDataStreamProvider_readLastDataStreamEventForIdentifier_withFilter_eventHandler___block_invoke_16;
    v16[3] = &unk_279DE1128;
    v17 = v19;
    v15 = [last sinkWithCompletion:v18 receiveInput:v16];
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

- (void)subscribeDataStreamForIdentifier:(id)identifier eventHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  providerQueue = self->_providerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__TRIBiomeDataStreamProvider_subscribeDataStreamForIdentifier_eventHandler___block_invoke;
  block[3] = &unk_279DDF470;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_sync(providerQueue, block);
}

- (id)_streamForIdentifier:(id)identifier eventHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v7 = BiomeLibrary();
  v12 = 0;
  v8 = [v7 streamWithIdentifier:identifierCopy error:&v12];

  v9 = v12;
  if (v9)
  {
    handlerCopy[2](handlerCopy, 0, v9);
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (void)_subscribeForStreamIdentifier:(id)identifier eventHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  providerQueue = self->_providerQueue;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(providerQueue);
  v9 = [(TRIBiomeDataStreamProvider *)self _streamForIdentifier:identifierCopy eventHandler:handlerCopy];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    identifier = [v9 identifier];
    v12 = [v10 stringWithFormat:@"com.apple.trial.%@", identifier];

    v13 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v12;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Subscribing to events from Biome stream: %@", buf, 0xCu);
    }

    v14 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:v12 targetQueue:self->_providerQueue waking:self->_shouldSubscribeWithWaking];
    dSLPublisher = [v9 DSLPublisher];
    v16 = [dSLPublisher subscribeOn:v14];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __73__TRIBiomeDataStreamProvider__subscribeForStreamIdentifier_eventHandler___block_invoke;
    v27[3] = &unk_279DE1100;
    v28 = handlerCopy;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __73__TRIBiomeDataStreamProvider__subscribeForStreamIdentifier_eventHandler___block_invoke_23;
    v25[3] = &unk_279DE1128;
    v26 = v28;
    v17 = [v16 sinkWithCompletion:v27 receiveInput:v25];

    streamIdentifierstoSubscribedSinks = self->_streamIdentifierstoSubscribedSinks;
    identifier2 = [v9 identifier];
    v20 = [(NSMutableDictionary *)streamIdentifierstoSubscribedSinks objectForKeyedSubscript:identifier2];

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
    identifier3 = [v9 identifier];
    [(NSMutableDictionary *)v22 setObject:v17 forKeyedSubscript:identifier3];
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