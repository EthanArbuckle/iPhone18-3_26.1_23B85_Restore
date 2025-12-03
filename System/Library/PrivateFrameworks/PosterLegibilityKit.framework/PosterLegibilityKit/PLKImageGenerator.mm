@interface PLKImageGenerator
- (NSString)description;
- (NSString)label;
- (PFTScheduler)workScheduler;
- (PLKImageGenerator)init;
- (PLKImageGenerator)initWithImageGenerator:(id)generator;
- (double)averageTimeIntervalForGeneration;
- (id)imageForObject:(id)object;
- (id)imageForObject:(id)object context:(id)context;
- (id)imageFutureForObject:(id)object context:(id)context;
- (unint64_t)numberOfBytesGenerated;
- (void)_registerCreatedImage:(id)image startDate:(id)date numberOfBytes:(unint64_t *)bytes userInfo:(id)info;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)setLabel:(id)label;
- (void)setWorkScheduler:(id)scheduler;
@end

@implementation PLKImageGenerator

- (PFTScheduler)workScheduler
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  workScheduler = selfCopy->_workScheduler;
  if (!workScheduler)
  {
    defaultWorkScheduler = [objc_opt_class() defaultWorkScheduler];
    v5 = selfCopy->_workScheduler;
    selfCopy->_workScheduler = defaultWorkScheduler;

    workScheduler = selfCopy->_workScheduler;
  }

  v6 = workScheduler;
  objc_sync_exit(selfCopy);

  return v6;
}

- (PLKImageGenerator)init
{
  [(PLKImageGenerator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PLKImageGenerator)initWithImageGenerator:(id)generator
{
  generatorCopy = generator;
  v17.receiver = self;
  v17.super_class = PLKImageGenerator;
  v5 = [(PLKImageGenerator *)&v17 init];
  if (v5)
  {
    v6 = [generatorCopy copy];
    imageGenerator = v5->_imageGenerator;
    v5->_imageGenerator = v6;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    statisticsMapTable = v5->_statisticsMapTable;
    v5->_statisticsMapTable = weakToStrongObjectsMapTable;

    v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
    statisticsOperationQueue = v5->_statisticsOperationQueue;
    v5->_statisticsOperationQueue = v10;

    v12 = v5->_statisticsOperationQueue;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-StatisticsCollectionQueue", objc_opt_class()];
    [(NSOperationQueue *)v12 setName:v13];

    [(NSOperationQueue *)v5->_statisticsOperationQueue setMaxConcurrentOperationCount:1];
    v14 = [MEMORY[0x277D3EC60] operationQueueSchedulerWithOperationQueue:v5->_statisticsOperationQueue qualityOfService:3];
    statisticScheduler = v5->_statisticScheduler;
    v5->_statisticScheduler = v14;

    [(PLKImageGenerator *)v5 setLabel:0];
    [(PLKImageGenerator *)v5 setWorkScheduler:0];
    [(PLKImageGenerator *)v5 setCollectStatistics:0];
  }

  return v5;
}

- (NSString)label
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_label;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!labelCopy)
  {
    v5 = objc_opt_class();
    labelCopy = NSStringFromClass(v5);
  }

  v6 = [labelCopy copy];
  label = selfCopy->_label;
  selfCopy->_label = v6;

  statisticsOperationQueue = selfCopy->_statisticsOperationQueue;
  labelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-StatisticsCollectionQueue-%@", objc_opt_class(), labelCopy];
  [(NSOperationQueue *)statisticsOperationQueue setName:labelCopy];

  objc_sync_exit(selfCopy);
}

- (void)setWorkScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultWorkScheduler = schedulerCopy;
  if (!schedulerCopy)
  {
    defaultWorkScheduler = [objc_opt_class() defaultWorkScheduler];
  }

  v9 = defaultWorkScheduler;
  v6 = [MEMORY[0x277D3EC60] offMainThreadSchedulerWithBackgroundScheduler:defaultWorkScheduler];
  workScheduler = selfCopy->_workScheduler;
  selfCopy->_workScheduler = v6;

  objc_sync_exit(selfCopy);
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __32__PLKImageGenerator_description__block_invoke;
  v10 = &unk_27835B920;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)imageForObject:(id)object
{
  v3 = [(PLKImageGenerator *)self imageFutureForObject:object context:0];
  v4 = [v3 result:0];

  return v4;
}

- (id)imageForObject:(id)object context:(id)context
{
  v4 = [(PLKImageGenerator *)self imageFutureForObject:object context:context];
  v5 = [v4 result:0];

  return v5;
}

- (id)imageFutureForObject:(id)object context:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  contextCopy = context;
  v8 = PLKLogRendering();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = PLKLogCaching();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      label = [(PLKImageGenerator *)self label];
      v26 = label;
      v27 = &stru_282F9B218;
      *buf = 138413058;
      if (label)
      {
        v27 = label;
      }

      v36 = v27;
      v37 = 2048;
      selfCopy = self;
      v39 = 2112;
      v40 = objectCopy;
      v41 = 2112;
      v42 = contextCopy;
      _os_log_debug_impl(&dword_21E5D5000, v10, OS_LOG_TYPE_DEBUG, "[PLKImageGenerator(%@%p) imageFutureForObject:%@]", buf, 0x2Au);
    }
  }

  v11 = MEMORY[0x223D5FAC0](self->_imageGenerator);
  date = [MEMORY[0x277CBEAA8] date];
  v13 = _os_activity_create(&dword_21E5D5000, "-[PLKImageGenerator imageFutureForObject:context:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v14 = [MEMORY[0x277D3EC38] activityWrapping:v13];

  track = [v14 track];

  v16 = MEMORY[0x277D3EC50];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __50__PLKImageGenerator_imageFutureForObject_context___block_invoke;
  v30[3] = &unk_27835B948;
  v17 = v11;
  v34 = v17;
  v18 = objectCopy;
  v31 = v18;
  v19 = contextCopy;
  v32 = v19;
  v20 = track;
  v33 = v20;
  workScheduler = [(PLKImageGenerator *)self workScheduler];
  v22 = [v16 futureWithBlock:v30 scheduler:workScheduler];

  if ([(PLKImageGenerator *)self collectStatistics])
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __50__PLKImageGenerator_imageFutureForObject_context___block_invoke_2;
    v28[3] = &unk_27835B970;
    v28[4] = self;
    v29 = date;
    [v22 addSuccessBlock:v28];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

id __50__PLKImageGenerator_imageFutureForObject_context___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (*(*(a1 + 56) + 16))();
  [*(a1 + 48) invalidate];
  objc_autoreleasePoolPop(v2);

  return v5;
}

- (unint64_t)numberOfBytesGenerated
{
  v17[1] = *MEMORY[0x277D85DE8];
  if ([(PLKImageGenerator *)self collectStatistics])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277CCA8C8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__PLKImageGenerator_numberOfBytesGenerated__block_invoke;
    v10[3] = &unk_27835B998;
    objc_copyWeak(&v11, &location);
    v10[4] = &v13;
    v4 = [v3 blockOperationWithBlock:v10];
    statisticsOperationQueue = self->_statisticsOperationQueue;
    v17[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(NSOperationQueue *)statisticsOperationQueue addOperations:v6 waitUntilFinished:1];

    v7 = v14[3];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void __43__PLKImageGenerator_numberOfBytesGenerated__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [WeakRetained[3] objectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          *(*(*(a1 + 32) + 8) + 24) += [*(*(&v10 + 1) + 8 * v8++) numberOfBytes];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (double)averageTimeIntervalForGeneration
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = -1.0;
  if ([(PLKImageGenerator *)self collectStatistics])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277CCA8C8];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __53__PLKImageGenerator_averageTimeIntervalForGeneration__block_invoke;
    v15 = &unk_27835B9C0;
    objc_copyWeak(&v18, &location);
    v16 = &v24;
    v17 = &v20;
    v5 = [v4 blockOperationWithBlock:&v12];
    statisticsOperationQueue = self->_statisticsOperationQueue;
    v28[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:{1, v12, v13, v14, v15}];
    [(NSOperationQueue *)statisticsOperationQueue addOperations:v7 waitUntilFinished:1];

    v8 = v21[3];
    v9 = v25[3];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    v3 = v8 / v9;
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

void __53__PLKImageGenerator_averageTimeIntervalForGeneration__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = [WeakRetained[3] count];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3[3] objectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * v8) generationInterval];
          [v9 duration];
          *(*(*(a1 + 40) + 8) + 24) = v10 + *(*(*(a1 + 40) + 8) + 24);

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerCreatedImage:(id)image startDate:(id)date numberOfBytes:(unint64_t *)bytes userInfo:(id)info
{
  imageCopy = image;
  dateCopy = date;
  infoCopy = info;
  if ([(PLKImageGenerator *)self collectStatistics])
  {
    statisticScheduler = self->_statisticScheduler;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__PLKImageGenerator__registerCreatedImage_startDate_numberOfBytes_userInfo___block_invoke;
    v14[3] = &unk_27835BA10;
    bytesCopy = bytes;
    v15 = imageCopy;
    v16 = dateCopy;
    v17 = infoCopy;
    selfCopy = self;
    [(PFTScheduler *)statisticScheduler performBlock:v14];
  }
}

void __76__PLKImageGenerator__registerCreatedImage_startDate_numberOfBytes_userInfo___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__PLKImageGenerator__registerCreatedImage_startDate_numberOfBytes_userInfo___block_invoke_2;
    v8[3] = &unk_27835B9E8;
    v1 = &v9;
    v9 = *(a1 + 32);
    v4 = __76__PLKImageGenerator__registerCreatedImage_startDate_numberOfBytes_userInfo___block_invoke_2(v8);
  }

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [_PLKImageGenerationContext contextWithStartDate:v5 endDate:v6 numberOfBytes:v4 userInfo:*(a1 + 48)];

  [*(*(a1 + 56) + 24) setObject:v7 forKey:*(a1 + 32)];
  if (!v3)
  {
  }
}

size_t __76__PLKImageGenerator__registerCreatedImage_startDate_numberOfBytes_userInfo___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) CGImage];
  BytesPerRow = CGImageGetBytesPerRow(v1);
  return CGImageGetHeight(v1) * BytesPerRow;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  numberOfBytesGenerated = [(PLKImageGenerator *)self numberOfBytesGenerated];
  if (appendDescriptionToFormatter__onceToken != -1)
  {
    [PLKImageGenerator appendDescriptionToFormatter:];
  }

  v5 = [appendDescriptionToFormatter__byteCountFormatter stringFromByteCount:numberOfBytesGenerated];
  [formatterCopy appendString:v5 withName:@"liveBytesGenerated"];

  [(PLKImageGenerator *)self averageTimeIntervalForGeneration];
  v6 = [formatterCopy appendTimeInterval:@"averageTimeIntervalForGeneration" withName:1 decomposeUnits:?];
}

uint64_t __50__PLKImageGenerator_appendDescriptionToFormatter___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA8E8]);
  v1 = appendDescriptionToFormatter__byteCountFormatter;
  appendDescriptionToFormatter__byteCountFormatter = v0;

  v2 = appendDescriptionToFormatter__byteCountFormatter;

  return [v2 setCountStyle:1];
}

@end