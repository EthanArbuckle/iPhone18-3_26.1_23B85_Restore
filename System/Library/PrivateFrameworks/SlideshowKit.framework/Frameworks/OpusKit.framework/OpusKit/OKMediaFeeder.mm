@interface OKMediaFeeder
+ (id)operationWithBlock:(id)block cancellationBlock:(id)cancellationBlock completionHandler:(id)handler;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (OKMediaFeeder)init;
- (OKMediaFeeder)initWithSettings:(id)settings;
- (id)_mediaItemsForMediaURLs:(id)ls;
- (id)allMediaURLs;
- (id)allObjects;
- (id)dictionaryProxy:(id)proxy objectAtIndexPath:(id)path;
- (id)feederSettings;
- (id)indexesForMediaObjects:(id)objects;
- (id)mediaItemAtIndex:(unint64_t)index;
- (id)mediaItemsAtIndexes:(id)indexes;
- (id)mediaObjectURLsAtIndexes:(id)indexes;
- (id)mediaObjectsAtIndexes:(id)indexes;
- (id)mediaURLAtIndex:(unint64_t)index;
- (id)mediaURLsAtIndexes:(id)indexes;
- (id)reloadData;
- (id)reloadMediaObjectsWithCompletionHandler:(id)handler;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)_indexFromRotatedIndex:(unint64_t)index;
- (unint64_t)_numberOfMediaItems;
- (unint64_t)_rotatedIndexFromIndex:(unint64_t)index;
- (unint64_t)countOfDictionaryProxy:(id)proxy;
- (unint64_t)indexForMediaItem:(id)item;
- (unint64_t)numberOfMediaItems;
- (unint64_t)numberOfMediaObjects;
- (void)dealloc;
- (void)enumerateObjectsAtIndexes:(id)indexes usingBlock:(id)block;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)performAsynchronousBarrierUsingBlock:(id)block;
- (void)reloadDataWithProgressBlock:(id)block andCompletionHandler:(id)handler;
@end

@implementation OKMediaFeeder

- (OKMediaFeeder)init
{
  v7.receiver = self;
  v7.super_class = OKMediaFeeder;
  v2 = [(OKMediaFeeder *)&v7 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_presentation, 0);
    v3->_wantsLiveUpdates = 0;
    objc_storeWeak(&v3->_delegate, 0);
    [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
    uTF8String = [@"com.apple.Opus.OKMediaFeeder.processingQueue" UTF8String];
    v5 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INTERACTIVE, 0);
    v3->_processingQueue = dispatch_queue_create(uTF8String, v5);
    v3->_startIndex = 0;
    v3->_rotationEnabled = 1;
  }

  return v3;
}

- (OKMediaFeeder)initWithSettings:(id)settings
{
  v4 = [(OKMediaFeeder *)self init];
  if (v4)
  {
    v4->_startIndex = [objc_msgSend(settings objectForKey:{@"startIndex", "unsignedIntegerValue"}];
    v4->_rotationEnabled = [objc_msgSend(settings objectForKey:{@"rotationEnabled", "BOOLValue"}];
  }

  return v4;
}

- (void)dealloc
{
  objc_storeWeak(&self->_presentation, 0);
  objc_storeWeak(&self->_delegate, 0);
  processingQueue = self->_processingQueue;
  if (processingQueue)
  {
    dispatch_release(processingQueue);
    self->_processingQueue = 0;
  }

  [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  v4.receiver = self;
  v4.super_class = OKMediaFeeder;
  [(OKMediaFeeder *)&v4 dealloc];
}

+ (id)supportedSettings
{
  v9[2] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8[0] = @"startIndex";
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF0B18;
  v7[1] = &unk_287AF0B30;
  v9[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v8[1] = @"rotationEnabled";
  v4[0] = @"type";
  v4[1] = @"default";
  v5[0] = &unk_287AF0B48;
  v5[1] = MEMORY[0x277CBEC38];
  v9[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  [dictionary addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  return dictionary;
}

- (id)valueForUndefinedKey:(id)key
{
  if ([key isEqualToString:@"items"])
  {
    v5 = objc_opt_new();
    [v5 setTag:1];
    [v5 setDataSource:self];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OKMediaFeeder;
    return [(OKMediaFeeder *)&v7 valueForUndefinedKey:key];
  }
}

+ (void)setupJavascriptContext:(id)context
{
  v7[3] = *MEMORY[0x277D85DE8];
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKMediaFeeder"];
  [OKSettings exportClassSettings:objc_opt_class() toJavaScriptContext:context];
  v4 = [objc_msgSend(context objectForKeyedSubscript:{@"OKMediaFeeder", "objectForKeyedSubscript:", @"prototype"}];
  v5 = *MEMORY[0x277CD4618];
  v6[0] = *MEMORY[0x277CD4620];
  v6[1] = v5;
  v7[0] = &__block_literal_global_23;
  v7[1] = MEMORY[0x277CBEC28];
  v6[2] = *MEMORY[0x277CD4610];
  v7[2] = MEMORY[0x277CBEC38];
  [v4 defineProperty:@"items" descriptor:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, v6, 3)}];
}

id __40__OKMediaFeeder_setupJavascriptContext___block_invoke()
{
  v0 = objc_opt_new();
  [v0 setTag:1];
  [v0 setDataSource:{objc_msgSend(objc_msgSend(MEMORY[0x277CD4640], "currentThis"), "toObject")}];

  return v0;
}

- (unint64_t)countOfDictionaryProxy:(id)proxy
{
  if ([proxy tag] != 1)
  {
    return 0;
  }

  return [(OKMediaFeeder *)self numberOfMediaItems];
}

- (id)dictionaryProxy:(id)proxy objectAtIndexPath:(id)path
{
  if ([proxy tag] != 1)
  {
    return 0;
  }

  v6 = -[OKMediaFeeder _rotatedIndexFromIndex:](self, "_rotatedIndexFromIndex:", [path indexAtPosition:0]);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [MEMORY[0x277CCAA78] indexSetWithIndex:v6];

  return [(OKMediaFeeder *)self mediaItemsAtIndexes:v8];
}

- (void)performAsynchronousBarrierUsingBlock:(id)block
{
  if (block)
  {
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__OKMediaFeeder_performAsynchronousBarrierUsingBlock___block_invoke;
    block[3] = &unk_279C8E670;
    block[4] = self;
    block[5] = block;
    dispatch_barrier_async(processingQueue, block);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Must pass a non-nil block to %@", NSStringFromSelector(a2)}];
  }
}

+ (id)operationWithBlock:(id)block cancellationBlock:(id)cancellationBlock completionHandler:(id)handler
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__OKMediaFeeder_operationWithBlock_cancellationBlock_completionHandler___block_invoke;
  v9[3] = &unk_279C90B00;
  v9[4] = block;
  v9[5] = handler;
  v6 = [MEMORY[0x277D627C0] blockOperationWithExecutionBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__OKMediaFeeder_operationWithBlock_cancellationBlock_completionHandler___block_invoke_3;
  v8[3] = &unk_279C90B28;
  v8[4] = cancellationBlock;
  [v6 setCancelBlock:v8];
  return v6;
}

uint64_t __72__OKMediaFeeder_operationWithBlock_cancellationBlock_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__OKMediaFeeder_operationWithBlock_cancellationBlock_completionHandler___block_invoke_2;
  v5[3] = &unk_279C90AD8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v3;
  return (*(v2 + 16))(v2, a2, v5);
}

uint64_t __72__OKMediaFeeder_operationWithBlock_cancellationBlock_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) hasSucceeded];
    v5 = *(a1 + 40);
    if ((v4 & 1) == 0 && !a2)
    {
      a2 = [*(a1 + 32) error];
    }

    (*(v5 + 16))(v5, a2);
  }

  v6 = *(a1 + 32);

  return [v6 finish];
}

uint64_t __72__OKMediaFeeder_operationWithBlock_cancellationBlock_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)feederSettings
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"startIndex";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_startIndex];
  v5[1] = @"rotationEnabled";
  v6[0] = v3;
  v6[1] = [MEMORY[0x277CCABB0] numberWithBool:self->_rotationEnabled];
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
}

- (void)reloadDataWithProgressBlock:(id)block andCompletionHandler:(id)handler
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__OKMediaFeeder_reloadDataWithProgressBlock_andCompletionHandler___block_invoke;
  block[3] = &unk_279C90B78;
  block[4] = self;
  block[5] = handler;
  block[6] = block;
  dispatch_barrier_async(processingQueue, block);
}

void __66__OKMediaFeeder_reloadDataWithProgressBlock_andCompletionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__OKMediaFeeder_reloadDataWithProgressBlock_andCompletionHandler___block_invoke_2;
  v7[3] = &unk_279C90B50;
  v8 = *(a1 + 32);
  v2 = [v8 reloadMediaObjectsWithCompletionHandler:v7];
  if (v2)
  {
    v3 = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__OKMediaFeeder_reloadDataWithProgressBlock_andCompletionHandler___block_invoke_4;
    v6[3] = &unk_279C8E868;
    v6[4] = *(a1 + 48);
    [v2 performSynchronously:v6];
  }

  else
  {
    v4 = *(*(a1 + 32) + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __66__OKMediaFeeder_reloadDataWithProgressBlock_andCompletionHandler___block_invoke_5;
    v5[3] = &unk_279C90700;
    v5[4] = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

void __66__OKMediaFeeder_reloadDataWithProgressBlock_andCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__OKMediaFeeder_reloadDataWithProgressBlock_andCompletionHandler___block_invoke_3;
  v4[3] = &unk_279C8E670;
  v3 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

uint64_t __66__OKMediaFeeder_reloadDataWithProgressBlock_andCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t __66__OKMediaFeeder_reloadDataWithProgressBlock_andCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

uint64_t __66__OKMediaFeeder_reloadDataWithProgressBlock_andCompletionHandler___block_invoke_5(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277D62798] errorForCode:-1];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

- (id)reloadData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__OKMediaFeeder_reloadData__block_invoke;
  v6[3] = &unk_279C90BA0;
  v6[4] = v3;
  v6[5] = &v7;
  [(OKMediaFeeder *)self reloadDataWithProgressBlock:0 andCompletionHandler:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

intptr_t __27__OKMediaFeeder_reloadData__block_invoke(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (id)reloadMediaObjectsWithCompletionHandler:(id)handler
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v4 = MEMORY[0x277D627B8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Feeders/OKMediaFeeder.m" line:447 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v6, NSStringFromSelector(a2)];
  }

  return 0;
}

- (unint64_t)numberOfMediaObjects
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v3 = MEMORY[0x277D627B8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Feeders/OKMediaFeeder.m" line:454 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v5, NSStringFromSelector(a2)];
  }

  return 0;
}

- (id)mediaObjectsAtIndexes:(id)indexes
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v4 = MEMORY[0x277D627B8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Feeders/OKMediaFeeder.m" line:461 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v6, NSStringFromSelector(a2)];
  }

  return 0;
}

- (id)mediaObjectURLsAtIndexes:(id)indexes
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v4 = MEMORY[0x277D627B8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Feeders/OKMediaFeeder.m" line:468 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v6, NSStringFromSelector(a2)];
  }

  return 0;
}

- (id)indexesForMediaObjects:(id)objects
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v4 = MEMORY[0x277D627B8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Feeders/OKMediaFeeder.m" line:475 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v6, NSStringFromSelector(a2)];
  }

  return 0;
}

- (id)_mediaItemsForMediaURLs:(id)ls
{
  if ([(OKMediaFeeder *)self presentation])
  {
    presentation = [(OKMediaFeeder *)self presentation];
  }

  else
  {
    presentation = +[OKMediaManager defaultManager];
  }

  return [(OKPresentation *)presentation mediaItemsForURLs:ls];
}

- (unint64_t)_numberOfMediaItems
{
  if (!self->_rotationEnabled && self->_startIndex)
  {
    return [(OKMediaFeeder *)self numberOfMediaObjects]- self->_startIndex;
  }

  return [(OKMediaFeeder *)self numberOfMediaObjects];
}

- (unint64_t)numberOfMediaItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__OKMediaFeeder_numberOfMediaItems__block_invoke;
  v5[3] = &unk_279C90BC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __35__OKMediaFeeder_numberOfMediaItems__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _numberOfMediaItems];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_rotatedIndexFromIndex:(unint64_t)index
{
  numberOfMediaObjects = [(OKMediaFeeder *)self numberOfMediaObjects];
  if (!numberOfMediaObjects)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  startIndex = self->_startIndex;
  if (startIndex)
  {
    return (startIndex + index) % numberOfMediaObjects;
  }

  return index;
}

- (unint64_t)_indexFromRotatedIndex:(unint64_t)index
{
  startIndex = self->_startIndex;
  v4 = startIndex + index;
  if (index >= startIndex)
  {
    v4 = index - startIndex;
  }

  if (startIndex)
  {
    return v4;
  }

  else
  {
    return index;
  }
}

- (id)mediaItemAtIndex:(unint64_t)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__OKMediaFeeder_mediaItemAtIndex___block_invoke;
  block[3] = &unk_279C90BF0;
  block[5] = &v7;
  block[6] = index;
  block[4] = self;
  dispatch_sync(processingQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __34__OKMediaFeeder_mediaItemAtIndex___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _rotatedIndexFromIndex:*(a1 + 48)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*(a1 + 32) mediaObjectsAtIndexes:{objc_msgSend(MEMORY[0x277CCAA78], "indexSetWithIndex:", result)}];
    if (result)
    {
      v3 = result;
      result = [result count];
      if (result == 1)
      {
        result = [+[OKMediaManager defaultManager](OKMediaManager "defaultManager")];
        if (result)
        {
          v4 = *(a1 + 32);
          v6[0] = result;
          result = [objc_msgSend(v4 _mediaItemsForMediaURLs:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v6, 1)), "firstObject"}];
          *(*(*(a1 + 40) + 8) + 40) = result;
          v5 = *(*(*(a1 + 40) + 8) + 40);
          if (v5)
          {
            return [v5 setMediaObject:{objc_msgSend(v3, "firstObject")}];
          }
        }
      }
    }
  }

  return result;
}

- (id)mediaURLAtIndex:(unint64_t)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__OKMediaFeeder_mediaURLAtIndex___block_invoke;
  block[3] = &unk_279C90BF0;
  block[5] = &v7;
  block[6] = index;
  block[4] = self;
  dispatch_sync(processingQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __33__OKMediaFeeder_mediaURLAtIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _rotatedIndexFromIndex:*(a1 + 48)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*(a1 + 32) mediaObjectURLsAtIndexes:{objc_msgSend(MEMORY[0x277CCAA78], "indexSetWithIndex:", result)}];
    if (result && (v3 = result, result = [result count], result == 1))
    {
      result = [v3 firstObject];
      *(*(*(a1 + 40) + 8) + 40) = result;
    }

    else if (*MEMORY[0x277D62808] >= 7)
    {
      return [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Feeders/OKMediaFeeder.m" line:615 andFormat:@"Requested mediaURL at index %lu may not exist or mapped to more than one URLs", *(a1 + 48)];
    }
  }

  return result;
}

- (id)mediaItemsAtIndexes:(id)indexes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__OKMediaFeeder_mediaItemsAtIndexes___block_invoke;
  block[3] = &unk_279C90C18;
  block[4] = indexes;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(processingQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__37__OKMediaFeeder_mediaItemsAtIndexes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstIndex];
  for (i = [MEMORY[0x277CCAB58] indexSet]; v2 != 0x7FFFFFFFFFFFFFFFLL; v2 = objc_msgSend(*(a1 + 32), "indexGreaterThanIndex:", v2))
  {
    v4 = [*(a1 + 40) _rotatedIndexFromIndex:v2];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [i addIndex:v4];
    }
  }

  result = [*(a1 + 40) mediaObjectsAtIndexes:i];
  if (result)
  {
    v6 = result;
    v7 = [result count];
    result = [i count];
    if (v7 == result)
    {
      result = [+[OKMediaManager defaultManager](OKMediaManager "defaultManager")];
      if (result)
      {
        *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 40) _mediaItemsForMediaURLs:result];
        result = [v6 count];
        if (result)
        {
          for (j = 0; j < result; ++j)
          {
            [objc_msgSend(*(*(*(a1 + 48) + 8) + 40) objectAtIndex:{j), "setMediaObject:", objc_msgSend(v6, "objectAtIndex:", j)}];
            result = [v6 count];
          }
        }
      }
    }
  }

  return result;
}

- (id)mediaURLsAtIndexes:(id)indexes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__OKMediaFeeder_mediaURLsAtIndexes___block_invoke;
  block[3] = &unk_279C90C18;
  block[4] = indexes;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(processingQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __36__OKMediaFeeder_mediaURLsAtIndexes___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB58] indexSet];
  v3 = [*(a1 + 32) firstIndex];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v3; i != 0x7FFFFFFFFFFFFFFFLL; i = [*(a1 + 32) indexGreaterThanIndex:i])
    {
      v5 = [*(a1 + 40) _rotatedIndexFromIndex:i];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v2 addIndex:v5];
      }
    }
  }

  result = [*(a1 + 40) mediaObjectURLsAtIndexes:v2];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (unint64_t)indexForMediaItem:(id)item
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__OKMediaFeeder_indexForMediaItem___block_invoke;
  block[3] = &unk_279C90C18;
  block[4] = item;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(processingQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __35__OKMediaFeeder_indexForMediaItem___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) mediaObject];
  if (result)
  {
    v3 = *(a1 + 40);
    v4[0] = result;
    result = [*(a1 + 40) _indexFromRotatedIndex:{objc_msgSend(objc_msgSend(v3, "indexesForMediaObjects:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v4, 1)), "firstIndex")}];
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

- (id)allMediaURLs
{
  array = [MEMORY[0x277CBEB18] array];
  processingQueue = self->_processingQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__OKMediaFeeder_allMediaURLs__block_invoke;
  v6[3] = &unk_279C90078;
  v6[4] = self;
  v6[5] = array;
  dispatch_sync(processingQueue, v6);
  return [MEMORY[0x277CBEA60] arrayWithArray:array];
}

uint64_t __29__OKMediaFeeder_allMediaURLs__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(*(a1 + 32), "numberOfMediaItems")}];
  result = [v2 firstIndex];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    do
    {
      v5 = [*(a1 + 32) _rotatedIndexFromIndex:v4];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(a1 + 40) addObjectsFromArray:{objc_msgSend(*(a1 + 32), "mediaObjectURLsAtIndexes:", objc_msgSend(MEMORY[0x277CCAA78], "indexSetWithIndex:", v5))}];
      }

      result = [v2 indexGreaterThanIndex:v4];
      v4 = result;
    }

    while (result != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

- (id)allObjects
{
  array = [MEMORY[0x277CBEB18] array];
  processingQueue = self->_processingQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__OKMediaFeeder_allObjects__block_invoke;
  v6[3] = &unk_279C90078;
  v6[4] = self;
  v6[5] = array;
  dispatch_sync(processingQueue, v6);
  return array;
}

uint64_t __27__OKMediaFeeder_allObjects__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__OKMediaFeeder_allObjects__block_invoke_2;
  v3[3] = &unk_279C90C40;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  processingQueue = self->_processingQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__OKMediaFeeder_enumerateObjectsUsingBlock___block_invoke;
  v4[3] = &unk_279C8FE40;
  v4[4] = self;
  v4[5] = block;
  dispatch_sync(processingQueue, v4);
}

uint64_t __44__OKMediaFeeder_enumerateObjectsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v2, "numberOfMediaItems")}];
  v4 = *(a1 + 40);

  return [v2 enumerateObjectsAtIndexes:v3 usingBlock:v4];
}

- (void)enumerateObjectsAtIndexes:(id)indexes usingBlock:(id)block
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__OKMediaFeeder_enumerateObjectsAtIndexes_usingBlock___block_invoke;
  block[3] = &unk_279C90C68;
  block[5] = self;
  block[6] = block;
  block[4] = indexes;
  dispatch_sync(processingQueue, block);
}

uint64_t __54__OKMediaFeeder_enumerateObjectsAtIndexes_usingBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) firstIndex];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = result;
    do
    {
      if (*(a1 + 48))
      {
        v4 = [*(a1 + 40) _rotatedIndexFromIndex:v3];
        if (v4 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [*(a1 + 40) mediaItemAtIndex:v4];
        }

        (*(*(a1 + 48) + 16))();
      }

      result = [*(a1 + 32) indexGreaterThanIndex:v3];
      v3 = result;
    }

    while (result != 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

@end