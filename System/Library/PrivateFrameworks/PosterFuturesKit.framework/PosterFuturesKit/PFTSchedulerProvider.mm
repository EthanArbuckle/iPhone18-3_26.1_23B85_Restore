@interface PFTSchedulerProvider
+ (PFTSchedulerProvider)defaultProvider;
+ (id)makeDefaultProvider;
+ (id)providerWithBackgroundConcurrencyLimit:(int64_t)limit;
- (PFTSchedulerProvider)initWithBackgroundScheduler:(id)scheduler mainThreadScheduler:(id)threadScheduler immediateScheduler:(id)immediateScheduler serialSchedulerProvider:(id)provider synchronousSerialSchedulerProvider:(id)schedulerProvider readerWriterSchedulerProvider:(id)writerSchedulerProvider;
- (PFTSchedulerProvider)initWithBackgroundScheduler:(id)scheduler mainThreadScheduler:(id)threadScheduler inlineScheduler:(id)inlineScheduler immediateScheduler:(id)immediateScheduler serialSchedulerProvider:(id)provider synchronousSerialSchedulerProvider:(id)schedulerProvider readerWriterSchedulerProvider:(id)writerSchedulerProvider;
- (id)backgroundSchedulerWithQualityOfService:(unint64_t)service;
- (id)newReaderWriterSchedulerWithName:(id)name;
- (id)newSerialSchedulerWithName:(id)name;
- (id)newSynchronousSerialSchedulerWithName:(id)name;
@end

@implementation PFTSchedulerProvider

+ (PFTSchedulerProvider)defaultProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PFTSchedulerProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultProvider_pft_once_token_1 != -1)
  {
    dispatch_once(&defaultProvider_pft_once_token_1, block);
  }

  v2 = defaultProvider_pft_once_object_1;

  return v2;
}

uint64_t __39__PFTSchedulerProvider_defaultProvider__block_invoke(uint64_t a1)
{
  defaultProvider_pft_once_object_1 = [*(a1 + 32) makeDefaultProvider];

  return MEMORY[0x2821F96F8]();
}

+ (id)makeDefaultProvider
{
  v2 = [self alloc];
  v3 = +[PFTScheduler globalAsyncScheduler];
  v4 = +[PFTScheduler mainThreadScheduler];
  v5 = +[PFTScheduler inlineScheduler];
  v6 = +[PFTScheduler immediateScheduler];
  v7 = [v2 initWithBackgroundScheduler:v3 mainThreadScheduler:v4 inlineScheduler:v5 immediateScheduler:v6 serialSchedulerProvider:&__block_literal_global synchronousSerialSchedulerProvider:&__block_literal_global_3 readerWriterSchedulerProvider:&__block_literal_global_6];

  return v7;
}

+ (id)providerWithBackgroundConcurrencyLimit:(int64_t)limit
{
  v4 = [self alloc];
  v5 = [PFTScheduler operationQueueSchedulerWithMaxConcurrentOperationCount:limit qualityOfService:0];
  v6 = +[PFTScheduler mainThreadScheduler];
  v7 = +[PFTScheduler inlineScheduler];
  v8 = +[PFTScheduler immediateScheduler];
  v9 = [v4 initWithBackgroundScheduler:v5 mainThreadScheduler:v6 inlineScheduler:v7 immediateScheduler:v8 serialSchedulerProvider:&__block_literal_global synchronousSerialSchedulerProvider:&__block_literal_global_3 readerWriterSchedulerProvider:&__block_literal_global_6];

  return v9;
}

- (PFTSchedulerProvider)initWithBackgroundScheduler:(id)scheduler mainThreadScheduler:(id)threadScheduler immediateScheduler:(id)immediateScheduler serialSchedulerProvider:(id)provider synchronousSerialSchedulerProvider:(id)schedulerProvider readerWriterSchedulerProvider:(id)writerSchedulerProvider
{
  writerSchedulerProviderCopy = writerSchedulerProvider;
  schedulerProviderCopy = schedulerProvider;
  providerCopy = provider;
  immediateSchedulerCopy = immediateScheduler;
  threadSchedulerCopy = threadScheduler;
  schedulerCopy = scheduler;
  v20 = +[PFTScheduler inlineScheduler];
  v21 = [(PFTSchedulerProvider *)self initWithBackgroundScheduler:schedulerCopy mainThreadScheduler:threadSchedulerCopy inlineScheduler:v20 immediateScheduler:immediateSchedulerCopy serialSchedulerProvider:providerCopy synchronousSerialSchedulerProvider:schedulerProviderCopy readerWriterSchedulerProvider:writerSchedulerProviderCopy];

  return v21;
}

- (PFTSchedulerProvider)initWithBackgroundScheduler:(id)scheduler mainThreadScheduler:(id)threadScheduler inlineScheduler:(id)inlineScheduler immediateScheduler:(id)immediateScheduler serialSchedulerProvider:(id)provider synchronousSerialSchedulerProvider:(id)schedulerProvider readerWriterSchedulerProvider:(id)writerSchedulerProvider
{
  schedulerCopy = scheduler;
  threadSchedulerCopy = threadScheduler;
  inlineSchedulerCopy = inlineScheduler;
  immediateSchedulerCopy = immediateScheduler;
  providerCopy = provider;
  schedulerProviderCopy = schedulerProvider;
  writerSchedulerProviderCopy = writerSchedulerProvider;
  v33.receiver = self;
  v33.super_class = PFTSchedulerProvider;
  v20 = [(PFTSchedulerProvider *)&v33 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_backgroundScheduler, scheduler);
    objc_storeStrong(&v21->_mainThreadScheduler, threadScheduler);
    objc_storeStrong(&v21->_inlineScheduler, inlineScheduler);
    objc_storeStrong(&v21->_immediateScheduler, immediateScheduler);
    v22 = [providerCopy copy];
    serialSchedulerProvider = v21->_serialSchedulerProvider;
    v21->_serialSchedulerProvider = v22;

    v24 = [schedulerProviderCopy copy];
    synchronousSerialSchedulerProvider = v21->_synchronousSerialSchedulerProvider;
    v21->_synchronousSerialSchedulerProvider = v24;

    v26 = [writerSchedulerProviderCopy copy];
    readerWriterSchedulerProvider = v21->_readerWriterSchedulerProvider;
    v21->_readerWriterSchedulerProvider = v26;

    v28 = v21;
  }

  return v21;
}

- (id)newSerialSchedulerWithName:(id)name
{
  nameCopy = name;
  serialSchedulerProvider = [(PFTSchedulerProvider *)self serialSchedulerProvider];
  v6 = (serialSchedulerProvider)[2](serialSchedulerProvider, nameCopy);

  return v6;
}

- (id)newSynchronousSerialSchedulerWithName:(id)name
{
  nameCopy = name;
  synchronousSerialSchedulerProvider = [(PFTSchedulerProvider *)self synchronousSerialSchedulerProvider];
  v6 = (synchronousSerialSchedulerProvider)[2](synchronousSerialSchedulerProvider, nameCopy);

  return v6;
}

- (id)newReaderWriterSchedulerWithName:(id)name
{
  nameCopy = name;
  readerWriterSchedulerProvider = [(PFTSchedulerProvider *)self readerWriterSchedulerProvider];
  v6 = (readerWriterSchedulerProvider)[2](readerWriterSchedulerProvider, nameCopy);

  return v6;
}

- (id)backgroundSchedulerWithQualityOfService:(unint64_t)service
{
  v5 = [PFTQualityOfServiceSchedulerDecorator alloc];
  backgroundScheduler = [(PFTSchedulerProvider *)self backgroundScheduler];
  v7 = [(PFTQualityOfServiceSchedulerDecorator *)v5 initWithScheduler:backgroundScheduler qualityOfService:service];

  return v7;
}

@end