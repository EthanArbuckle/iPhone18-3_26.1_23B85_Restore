@interface PET2LoggingOutlet
+ (id)sharedInstance;
- (PET2LoggingOutlet)init;
- (id)_findBucketsForKey:(id)a3;
- (void)_dispatchBatchForKey:(id)a3 value:(unint64_t)a4 isUpdate:(BOOL)a5;
- (void)logDoubleValue:(double)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7;
- (void)logErrorForEvent:(id)a3 featureId:(id)a4 reason:(id)a5;
- (void)logUnsignedIntegerValue:(unint64_t)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7;
- (void)setUnsignedIntegerValue:(unint64_t)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7;
@end

@implementation PET2LoggingOutlet

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global);
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __35__PET2LoggingOutlet_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance_instance;
  sharedInstance_instance = v1;

  objc_autoreleasePoolPop(v0);
}

- (PET2LoggingOutlet)init
{
  v12.receiver = self;
  v12.super_class = PET2LoggingOutlet;
  v2 = [(PET2LoggingOutlet *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_create("PET2LoggingOutlet", v4);
    loggingQueue = v2->_loggingQueue;
    v2->_loggingQueue = v5;

    v7 = objc_opt_new();
    addKeys = v2->_addKeys;
    v2->_addKeys = v7;

    v9 = objc_opt_new();
    updateKeys = v2->_updateKeys;
    v2->_updateKeys = v9;
  }

  return v2;
}

- (void)logErrorForEvent:(id)a3 featureId:(id)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  loggingQueue = self->_loggingQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__PET2LoggingOutlet_logErrorForEvent_featureId_reason___block_invoke;
  v15[3] = &unk_1E86C2BF8;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(loggingQueue, v15);
}

void __55__PET2LoggingOutlet_logErrorForEvent_featureId_reason___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [PETStringPairs alloc];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:3];
  v4 = [(PETStringPairs *)v2 initWithKeys:&unk_1F5AB6CD8 values:v3];

  v5 = [PETLoggingUtils keyStringForEvent:@"error" featureId:@"framework" stringifiedProperties:v4 metaData:0];
  [*(a1 + 56) _dispatchBatchForKey:v5 value:1 isUpdate:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logDoubleValue:(double)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  loggingQueue = self->_loggingQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __86__PET2LoggingOutlet_logDoubleValue_forEvent_featureId_stringifiedProperties_metaData___block_invoke;
  v21[3] = &unk_1E86C27A8;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a3;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(loggingQueue, v21);
}

void __86__PET2LoggingOutlet_logDoubleValue_forEvent_featureId_stringifiedProperties_metaData___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v3 = [v2 pathForResource:@"pet1_histogram_buckets" ofType:@"plist"];

    if (v3)
    {
      v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v3];
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      *(v5 + 16) = v4;
    }

    if (!*(*(a1 + 32) + 16))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load histogram buckets for PET1 keys", buf, 2u);
      }

      v7 = objc_opt_new();
      v8 = *(a1 + 32);
      v9 = *(v8 + 16);
      *(v8 + 16) = v7;
    }
  }

  v10 = [PETLoggingUtils keyStringForEvent:*(a1 + 40) featureId:*(a1 + 48) stringifiedProperties:*(a1 + 56) metaData:*(a1 + 64)];
  v11 = [*(a1 + 32) _findBucketsForKey:v10];
  v12 = v11;
  if (v11)
  {
    v13 = *(a1 + 72);
    v14 = [v11 sortedArrayUsingSelector:sel_compare_];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    v16 = [v14 indexOfObject:v15 inSortedRange:0 options:objc_msgSend(v14 usingComparator:{"count"), 1280, &__block_literal_global_110}];

    if (v16 >= [v14 count])
    {
      v19 = 0x7FF0000000000000;
    }

    else
    {
      v17 = [v14 objectAtIndexedSubscript:v16];
      [v17 doubleValue];
      v19 = v18;
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.[%f, %f]", v10, v19, v19];

    [*(a1 + 32) _dispatchBatchForKey:v20 value:1 isUpdate:0];
    v10 = v20;
  }
}

- (id)_findBucketsForKey:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_pet1HistogramBuckets;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v4 hasPrefix:{v10, v14}])
        {
          v11 = [(NSDictionary *)self->_pet1HistogramBuckets objectForKeyedSubscript:v10];
          goto LABEL_11;
        }
      }

      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setUnsignedIntegerValue:(unint64_t)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  loggingQueue = self->_loggingQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __95__PET2LoggingOutlet_setUnsignedIntegerValue_forEvent_featureId_stringifiedProperties_metaData___block_invoke;
  v21[3] = &unk_1E86C27A8;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = self;
  v27 = a3;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(loggingQueue, v21);
}

void __95__PET2LoggingOutlet_setUnsignedIntegerValue_forEvent_featureId_stringifiedProperties_metaData___block_invoke(uint64_t a1)
{
  v2 = [PETLoggingUtils keyStringForEvent:*(a1 + 32) featureId:*(a1 + 40) stringifiedProperties:*(a1 + 48) metaData:*(a1 + 56)];
  [*(a1 + 64) _dispatchBatchForKey:v2 value:*(a1 + 72) isUpdate:1];
}

- (void)logUnsignedIntegerValue:(unint64_t)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  loggingQueue = self->_loggingQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __95__PET2LoggingOutlet_logUnsignedIntegerValue_forEvent_featureId_stringifiedProperties_metaData___block_invoke;
  v21[3] = &unk_1E86C27A8;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = self;
  v27 = a3;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(loggingQueue, v21);
}

void __95__PET2LoggingOutlet_logUnsignedIntegerValue_forEvent_featureId_stringifiedProperties_metaData___block_invoke(uint64_t a1)
{
  v2 = [PETLoggingUtils keyStringForEvent:*(a1 + 32) featureId:*(a1 + 40) stringifiedProperties:*(a1 + 48) metaData:*(a1 + 56)];
  [*(a1 + 64) _dispatchBatchForKey:v2 value:*(a1 + 72) isUpdate:0];
}

- (void)_dispatchBatchForKey:(id)a3 value:(unint64_t)a4 isUpdate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v5)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    p_updateKeys = &self->_updateKeys;
  }

  else
  {
    p_updateKeys = &self->_addKeys;
    v11 = [(NSMutableDictionary *)self->_addKeys objectForKeyedSubscript:v8];
    v12 = v11;
    v13 = &unk_1F5AB6C18;
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = MEMORY[0x1E696AD98];
    v16 = [v14 unsignedIntegerValue];

    v9 = [v15 numberWithUnsignedInteger:v16 + a4];
  }

  [(NSMutableDictionary *)*p_updateKeys setObject:v9 forKeyedSubscript:v8];

  if (!self->_batchTxn)
  {
    v17 = os_transaction_create();
    batchTxn = self->_batchTxn;
    self->_batchTxn = v17;

    v19 = dispatch_time(0, 1000000000);
    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PET2LoggingOutlet__dispatchBatchForKey_value_isUpdate___block_invoke;
    block[3] = &unk_1E86C2B30;
    block[4] = self;
    dispatch_after(v19, loggingQueue, block);
  }
}

void __57__PET2LoggingOutlet__dispatchBatchForKey_value_isUpdate___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v42;
    v7 = MEMORY[0x1E69E9C10];
    *&v4 = 138412546;
    v35 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = objc_opt_new();
        [v10 setKey:v9];
        v11 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v9];
        v12 = [v11 unsignedIntegerValue];

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = v35;
          v47 = v9;
          v48 = 1024;
          v49 = v12;
          _os_log_debug_impl(&dword_1DF726000, v7, OS_LOG_TYPE_DEBUG, "Batch adding key: %@, value: %d", buf, 0x12u);
        }

        v13 = +[PETEventTracker2 sharedInstance];
        [v13 trackScalarForMessage:v10 count:v12];

        ++v8;
      }

      while (v5 != v8);
      v5 = [v2 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v5);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = *(*(a1 + 32) + 32);
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v38;
    v19 = MEMORY[0x1E69E9C10];
    *&v16 = 138412546;
    v36 = v16;
    do
    {
      v20 = 0;
      do
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v37 + 1) + 8 * v20);
        v22 = objc_opt_new();
        [v22 setKey:v21];
        v23 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v21];
        v24 = [v23 unsignedIntegerValue];

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = v36;
          v47 = v21;
          v48 = 1024;
          v49 = v24;
          _os_log_debug_impl(&dword_1DF726000, v19, OS_LOG_TYPE_DEBUG, "Batch updating key: %@, value: %d", buf, 0x12u);
        }

        v25 = [PETEventTracker2 sharedInstance:v36];
        [v25 trackScalarForMessage:v22 updateCount:v24];

        ++v20;
      }

      while (v17 != v20);
      v17 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v17);
  }

  v26 = objc_opt_new();
  v27 = *(a1 + 32);
  v28 = *(v27 + 24);
  *(v27 + 24) = v26;

  v29 = objc_opt_new();
  v30 = *(a1 + 32);
  v31 = *(v30 + 32);
  *(v30 + 32) = v29;

  v32 = *(a1 + 32);
  v33 = *(v32 + 40);
  *(v32 + 40) = 0;

  v34 = *MEMORY[0x1E69E9840];
}

@end