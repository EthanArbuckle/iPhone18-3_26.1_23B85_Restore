@interface TISerializingResultLogger
- (BOOL)bufferEmpty;
- (BOOL)bufferFull;
- (NSArray)partfileArchivePaths;
- (TISerializingResultLogger)initWithOutputURL:(id)l flushThreshold:(id)threshold;
- (id)allResults;
- (id)currentPartfileArchivePath;
- (void)addResult:(id)result;
- (void)enumerateResultsWithBlock:(id)block;
- (void)flushBufferWithCompletionHandler:(id)handler;
- (void)serializeResultsArray:(id)array;
@end

@implementation TISerializingResultLogger

- (void)enumerateResultsWithBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (![(TISerializingResultLogger *)self bufferEmpty])
  {
    v5 = dispatch_semaphore_create(0);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __55__TISerializingResultLogger_enumerateResultsWithBlock___block_invoke;
    v35[3] = &unk_279DA0988;
    v36 = v5;
    v6 = v5;
    [(TISerializingResultLogger *)self flushBufferWithCompletionHandler:v35];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(TISerializingResultLogger *)self partfileArchivePaths];
  v24 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v24)
  {
    v23 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        context = objc_autoreleasePoolPush();
        v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8];
        v10 = MEMORY[0x277CBEB98];
        v11 = objc_opt_class();
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
        v30 = 0;
        v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v14 fromData:v9 error:&v30];
        v16 = v30;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v26 objects:v37 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v27;
          do
          {
            v21 = 0;
            do
            {
              if (*v27 != v20)
              {
                objc_enumerationMutation(v17);
              }

              blockCopy[2](blockCopy, *(*(&v26 + 1) + 8 * v21++));
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v26 objects:v37 count:16];
          }

          while (v19);
        }

        objc_autoreleasePoolPop(context);
        ++v7;
      }

      while (v7 != v24);
      v24 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v24);
  }
}

- (id)allResults
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__TISerializingResultLogger_allResults__block_invoke;
  v6[3] = &unk_279DA0960;
  v4 = array;
  v7 = v4;
  [(TISerializingResultLogger *)self enumerateResultsWithBlock:v6];

  return v4;
}

- (void)serializeResultsArray:(id)array
{
  v6 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:array requiringSecureCoding:1 error:&v6];
  if (v4)
  {
    currentPartfileArchivePath = [(TISerializingResultLogger *)self currentPartfileArchivePath];
    [v4 writeToFile:currentPartfileArchivePath atomically:1];
  }
}

- (void)flushBufferWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  resultsBuffer = [(TISerializingResultLogger *)self resultsBuffer];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  resultsBuffer = self->_resultsBuffer;
  self->_resultsBuffer = v6;

  logSerializationQueue = [(TISerializingResultLogger *)self logSerializationQueue];
  v11 = handlerCopy;
  v9 = handlerCopy;
  v10 = resultsBuffer;
  TIDispatchAsync();
}

uint64_t __62__TISerializingResultLogger_flushBufferWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) serializeResultsArray:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)bufferEmpty
{
  resultsBuffer = [(TISerializingResultLogger *)self resultsBuffer];
  v3 = [resultsBuffer count] == 0;

  return v3;
}

- (BOOL)bufferFull
{
  selfCopy = self;
  resultsBuffer = [(TISerializingResultLogger *)self resultsBuffer];
  v4 = [resultsBuffer count];
  LOBYTE(selfCopy) = v4 >= [(TISerializingResultLogger *)selfCopy flushThreshold];

  return selfCopy;
}

- (void)addResult:(id)result
{
  resultCopy = result;
  resultsBuffer = [(TISerializingResultLogger *)self resultsBuffer];
  [resultsBuffer addObject:resultCopy];

  if ([(TISerializingResultLogger *)self bufferFull])
  {

    [(TISerializingResultLogger *)self flushBufferWithCompletionHandler:0];
  }
}

- (id)currentPartfileArchivePath
{
  partfileURL = [(TISerializingResultLogger *)self partfileURL];
  path = [partfileURL path];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", -[TISerializingResultLogger partfileCount](self, "partfileCount")];
  v6 = [path stringByAppendingString:v5];

  ++self->_partfileCount;
  partfileArchivePathsQueue = [(TISerializingResultLogger *)self partfileArchivePathsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TISerializingResultLogger_currentPartfileArchivePath__block_invoke;
  block[3] = &unk_279DA0910;
  block[4] = self;
  v8 = v6;
  v13 = v8;
  dispatch_barrier_sync(partfileArchivePathsQueue, block);

  v9 = v13;
  v10 = v8;

  return v8;
}

void __55__TISerializingResultLogger_currentPartfileArchivePath__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) partfileArchivePathsMutable];
  [v2 addObject:*(a1 + 40)];
}

- (NSArray)partfileArchivePaths
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1144;
  v9 = __Block_byref_object_dispose__1145;
  v10 = 0;
  partfileArchivePathsQueue = [(TISerializingResultLogger *)self partfileArchivePathsQueue];
  TIDispatchSync();

  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

uint64_t __49__TISerializingResultLogger_partfileArchivePaths__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 24) copy];

  return MEMORY[0x2821F96F8]();
}

- (TISerializingResultLogger)initWithOutputURL:(id)l flushThreshold:(id)threshold
{
  lCopy = l;
  thresholdCopy = threshold;
  v24.receiver = self;
  v24.super_class = TISerializingResultLogger;
  v8 = [(TISerializingResultLogger *)&v24 init];
  v9 = v8;
  if (v8)
  {
    v8->_partfileCount = 0;
    if (thresholdCopy)
    {
      unsignedIntegerValue = [thresholdCopy unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 500;
    }

    v9->_flushThreshold = unsignedIntegerValue;
    v11 = [lCopy URLByAppendingPathExtension:@"part"];
    partfileURL = v9->_partfileURL;
    v9->_partfileURL = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    resultsBuffer = v9->_resultsBuffer;
    v9->_resultsBuffer = v13;

    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v16 = dispatch_queue_create("com.apple.autocorrection_tester.LogSerializationQueue", v15);
    logSerializationQueue = v9->_logSerializationQueue;
    v9->_logSerializationQueue = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    partfileArchivePathsMutable = v9->_partfileArchivePathsMutable;
    v9->_partfileArchivePathsMutable = v18;

    v20 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_DEFAULT, 0);
    v21 = dispatch_queue_create("com.apple.autocorrection_tester.partfileArchivePathsQueue", v20);
    partfileArchivePathsQueue = v9->_partfileArchivePathsQueue;
    v9->_partfileArchivePathsQueue = v21;
  }

  return v9;
}

@end