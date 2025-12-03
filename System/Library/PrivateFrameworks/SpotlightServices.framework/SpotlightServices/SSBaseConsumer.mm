@interface SSBaseConsumer
- (SSBaseConsumer)init;
- (id)queryWithString:(id)string bundleIDs:(id)ds fetchAttributes:(id)attributes;
- (void)indexItems:(id)items protectionClass:(id)class bundleID:(id)d;
- (void)start;
- (void)stop;
@end

@implementation SSBaseConsumer

- (SSBaseConsumer)init
{
  v9.receiver = self;
  v9.super_class = SSBaseConsumer;
  v2 = [(SSBaseConsumer *)&v9 init];
  if (v2)
  {
    if ([(SSBaseConsumer *)v2 isMemberOfClass:objc_opt_class()])
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"SSBaseConsumer is an abstract class and should not be instantiated directly."];
    }

    if (![(SSBaseConsumer *)v2 enabled])
    {
      v7 = 0;
      goto LABEL_8;
    }

    v3 = MEMORY[0x1E696AEC0];
    consumerLabel = [(SSBaseConsumer *)v2 consumerLabel];
    v5 = [v3 stringWithFormat:@"%@.BiomeConsumer.%@", @"com.apple.searchd", consumerLabel];
    identifier = v2->_identifier;
    v2->_identifier = v5;
  }

  v7 = v2;
LABEL_8:

  return v7;
}

- (void)start
{
  v37 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  if (!self->_queue)
  {
    identifier = [(SSBaseConsumer *)self identifier];
    v4 = identifier;
    uTF8String = [identifier UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create(uTF8String, v7);
    queue = self->_queue;
    self->_queue = v8;
  }

  if (!self->_indexQueue)
  {
    v10 = MEMORY[0x1E696AEC0];
    identifier2 = [(SSBaseConsumer *)self identifier];
    v12 = [v10 stringWithFormat:@"%@.indexQueue", identifier2];
    v13 = v12;
    uTF8String2 = [v12 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_BACKGROUND, 0);
    v17 = dispatch_queue_create(uTF8String2, v16);
    indexQueue = self->_indexQueue;
    self->_indexQueue = v17;
  }

  v19 = objc_alloc(MEMORY[0x1E698F258]);
  identifier3 = [(SSBaseConsumer *)self identifier];
  v21 = [v19 initWithIdentifier:identifier3 targetQueue:self->_queue waking:0];
  scheduler = self->_scheduler;
  self->_scheduler = v21;

  stream = [(SSBaseConsumer *)self stream];
  v24 = [stream DSLPublisherWithUseCase:@"SpotlightEngagementData"];

  v25 = [v24 subscribeOn:self->_scheduler];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __23__SSBaseConsumer_start__block_invoke;
  v33[3] = &unk_1E8595F70;
  v33[4] = self;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __23__SSBaseConsumer_start__block_invoke_99;
  v31[3] = &unk_1E8595F98;
  objc_copyWeak(&v32, &location);
  v26 = [v25 sinkWithCompletion:v33 receiveInput:v31];
  sink = self->_sink;
  self->_sink = v26;

  v28 = SSGeneralLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    identifier4 = [(SSBaseConsumer *)self identifier];
    *buf = 138412290;
    v36 = identifier4;
    _os_log_impl(&dword_1D9F69000, v28, OS_LOG_TYPE_DEFAULT, "%@: start listening.", buf, 0xCu);
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
  v30 = *MEMORY[0x1E69E9840];
}

void __23__SSBaseConsumer_start__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  v5 = SSGeneralLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __23__SSBaseConsumer_start__block_invoke_cold_1(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) identifier];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1D9F69000, v6, OS_LOG_TYPE_DEFAULT, "%@: done listening.", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __23__SSBaseConsumer_start__block_invoke_99(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 eventBody];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = [v6 eventBody];
      [WeakRetained handleEvent:v5];
    }
  }
}

- (void)stop
{
  v10 = *MEMORY[0x1E69E9840];
  [(BMBiomeScheduler *)self->_scheduler cancel];
  [(BPSSink *)self->_sink cancel];
  sink = self->_sink;
  self->_sink = 0;

  scheduler = self->_scheduler;
  self->_scheduler = 0;

  v5 = SSGeneralLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(SSBaseConsumer *)self identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&dword_1D9F69000, v5, OS_LOG_TYPE_DEFAULT, "%@: finished listening.", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)indexItems:(id)items protectionClass:(id)class bundleID:(id)d
{
  v7 = MEMORY[0x1E69D3DC0];
  dCopy = d;
  classCopy = class;
  itemsCopy = items;
  sharedInstance = [v7 sharedInstance];
  [sharedInstance indexSearchableItems:itemsCopy deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:classCopy forBundleID:dCopy options:0 completionHandler:0];
}

- (id)queryWithString:(id)string bundleIDs:(id)ds fetchAttributes:(id)attributes
{
  stringCopy = string;
  dsCopy = ds;
  attributesCopy = attributes;
  v10 = objc_alloc_init(MEMORY[0x1E6964E70]);
  [v10 setBundleIDs:dsCopy];
  [v10 setInternal:1];
  [v10 setFetchAttributes:attributesCopy];
  v11 = dispatch_group_create();
  v12 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:stringCopy queryContext:v10];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  array = [MEMORY[0x1E695DF70] array];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60__SSBaseConsumer_queryWithString_bundleIDs_fetchAttributes___block_invoke;
  v23[3] = &unk_1E8595CD0;
  v23[4] = &v24;
  [v12 setFoundItemsHandler:v23];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __60__SSBaseConsumer_queryWithString_bundleIDs_fetchAttributes___block_invoke_2;
  v21 = &unk_1E8595FC0;
  v13 = v11;
  v22 = v13;
  [v12 setCompletionHandler:&v18];
  dispatch_group_enter(v13);
  [v12 start];
  v14 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v13, v14);
  v15 = v25[5];
  objc_sync_enter(v15);
  v16 = [v25[5] copy];
  objc_sync_exit(v15);

  _Block_object_dispose(&v24, 8);

  return v16;
}

void __60__SSBaseConsumer_queryWithString_bundleIDs_fetchAttributes___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(*(*(a1 + 32) + 8) + 40);
        objc_sync_enter(v8);
        [*(*(*(a1 + 32) + 8) + 40) addObject:{v7, v10}];
        objc_sync_exit(v8);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end