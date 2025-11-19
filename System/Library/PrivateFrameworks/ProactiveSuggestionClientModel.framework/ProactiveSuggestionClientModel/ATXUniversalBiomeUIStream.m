@interface ATXUniversalBiomeUIStream
- (ATXUniversalBiomeUIStream)initWithStoreConfig:(id)a3;
- (id)_innerStreamForStreamId:(id)a3;
- (id)deprecatedGenericEventPublisherFromStartTime:(double)a3;
- (id)genericEventPublisherFromStartTime:(double)a3;
- (id)streamIdentifiers;
- (void)donateGenericUIEvent:(id)a3;
@end

@implementation ATXUniversalBiomeUIStream

- (id)streamIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(ATXUniversalBiomeUIStream *)self _validUIStreamConsumerSubTypes];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[ATXUniversalBiomeUIStream _streamIdForConsumerSubType:](self, "_streamIdForConsumerSubType:", [*(*(&v13 + 1) + 8 * i) unsignedIntValue]);
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (ATXUniversalBiomeUIStream)initWithStoreConfig:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXUniversalBiomeUIStream;
  v5 = [(ATXUniversalBiomeUIStream *)&v13 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E698F130] atx_storeConfig];
    }

    storeConfig = v5->_storeConfig;
    v5->_storeConfig = v6;

    v8 = objc_alloc(MEMORY[0x1E69C5D60]);
    v9 = objc_opt_new();
    v10 = [v8 initWithGuardedData:v9];
    lock = v5->_lock;
    v5->_lock = v10;
  }

  return v5;
}

- (id)genericEventPublisherFromStartTime:(double)a3
{
  v5 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"homeScreen" storeConfig:self->_storeConfig];
  v6 = [v5 publisherFromStartTime:a3];

  v7 = [(ATXUniversalBiomeUIStream *)self streamIdentifiers];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__ATXUniversalBiomeUIStream_genericEventPublisherFromStartTime___block_invoke;
  v11[3] = &unk_1E86A4468;
  v11[4] = self;
  *&v11[5] = a3;
  v8 = [v7 _pas_mappedArrayWithTransform:v11];

  v9 = [v6 orderedMergeWithOthers:v8 comparator:&__block_literal_global_11];

  return v9;
}

id __64__ATXUniversalBiomeUIStream_genericEventPublisherFromStartTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _innerStreamForStreamId:a2];
  v4 = [v3 publisherFromStartTime:*(a1 + 40)];

  return v4;
}

uint64_t __64__ATXUniversalBiomeUIStream_genericEventPublisherFromStartTime___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)deprecatedGenericEventPublisherFromStartTime:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"homeScreen" storeConfig:self->_storeConfig];
  v5 = [v4 publisherFromStartTime:a3];

  return v5;
}

- (void)donateGenericUIEvent:(id)a3
{
  v4 = a3;
  v6 = -[ATXUniversalBiomeUIStream _innerStreamForConsumerSubType:](self, "_innerStreamForConsumerSubType:", [v4 consumerSubTypeForUIStream]);
  v5 = [v6 source];
  [v5 sendEvent:v4];
}

- (id)_innerStreamForStreamId:(id)a3
{
  v4 = a3;
  v5 = [(ATXUniversalBiomeUIStream *)self streamIdentifiers];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__6;
    v19 = __Block_byref_object_dispose__6;
    v20 = 0;
    lock = self->_lock;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__ATXUniversalBiomeUIStream__innerStreamForStreamId___block_invoke;
    v11[3] = &unk_1E86A4578;
    v14 = &v15;
    v12 = v4;
    v13 = self;
    [(_PASLock *)lock runWithLockAcquired:v11];
    v8 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXUniversalBiomeUIStream *)self _innerStreamForStreamId:v4, v9];
    }

    v8 = 0;
  }

  return v8;
}

void __53__ATXUniversalBiomeUIStream__innerStreamForStreamId___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9[1] objectForKey:a1[4]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[6] + 8) + 40))
  {
    v6 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:a1[4] storeConfig:*(a1[5] + 8)];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [v9[1] setObject:*(*(a1[6] + 8) + 40) forKey:a1[4]];
  }
}

- (void)_innerStreamForStreamId:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_fault_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_FAULT, "%@ - could not create BMStoreStream for streamId: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end