@interface PFTSchedulerProvider
+ (PFTSchedulerProvider)defaultProvider;
+ (id)makeDefaultProvider;
+ (id)providerWithBackgroundConcurrencyLimit:(int64_t)a3;
- (PFTSchedulerProvider)initWithBackgroundScheduler:(id)a3 mainThreadScheduler:(id)a4 immediateScheduler:(id)a5 serialSchedulerProvider:(id)a6 synchronousSerialSchedulerProvider:(id)a7 readerWriterSchedulerProvider:(id)a8;
- (PFTSchedulerProvider)initWithBackgroundScheduler:(id)a3 mainThreadScheduler:(id)a4 inlineScheduler:(id)a5 immediateScheduler:(id)a6 serialSchedulerProvider:(id)a7 synchronousSerialSchedulerProvider:(id)a8 readerWriterSchedulerProvider:(id)a9;
- (id)backgroundSchedulerWithQualityOfService:(unint64_t)a3;
- (id)newReaderWriterSchedulerWithName:(id)a3;
- (id)newSerialSchedulerWithName:(id)a3;
- (id)newSynchronousSerialSchedulerWithName:(id)a3;
@end

@implementation PFTSchedulerProvider

+ (PFTSchedulerProvider)defaultProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PFTSchedulerProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  v2 = [a1 alloc];
  v3 = +[PFTScheduler globalAsyncScheduler];
  v4 = +[PFTScheduler mainThreadScheduler];
  v5 = +[PFTScheduler inlineScheduler];
  v6 = +[PFTScheduler immediateScheduler];
  v7 = [v2 initWithBackgroundScheduler:v3 mainThreadScheduler:v4 inlineScheduler:v5 immediateScheduler:v6 serialSchedulerProvider:&__block_literal_global synchronousSerialSchedulerProvider:&__block_literal_global_3 readerWriterSchedulerProvider:&__block_literal_global_6];

  return v7;
}

+ (id)providerWithBackgroundConcurrencyLimit:(int64_t)a3
{
  v4 = [a1 alloc];
  v5 = [PFTScheduler operationQueueSchedulerWithMaxConcurrentOperationCount:a3 qualityOfService:0];
  v6 = +[PFTScheduler mainThreadScheduler];
  v7 = +[PFTScheduler inlineScheduler];
  v8 = +[PFTScheduler immediateScheduler];
  v9 = [v4 initWithBackgroundScheduler:v5 mainThreadScheduler:v6 inlineScheduler:v7 immediateScheduler:v8 serialSchedulerProvider:&__block_literal_global synchronousSerialSchedulerProvider:&__block_literal_global_3 readerWriterSchedulerProvider:&__block_literal_global_6];

  return v9;
}

- (PFTSchedulerProvider)initWithBackgroundScheduler:(id)a3 mainThreadScheduler:(id)a4 immediateScheduler:(id)a5 serialSchedulerProvider:(id)a6 synchronousSerialSchedulerProvider:(id)a7 readerWriterSchedulerProvider:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[PFTScheduler inlineScheduler];
  v21 = [(PFTSchedulerProvider *)self initWithBackgroundScheduler:v19 mainThreadScheduler:v18 inlineScheduler:v20 immediateScheduler:v17 serialSchedulerProvider:v16 synchronousSerialSchedulerProvider:v15 readerWriterSchedulerProvider:v14];

  return v21;
}

- (PFTSchedulerProvider)initWithBackgroundScheduler:(id)a3 mainThreadScheduler:(id)a4 inlineScheduler:(id)a5 immediateScheduler:(id)a6 serialSchedulerProvider:(id)a7 synchronousSerialSchedulerProvider:(id)a8 readerWriterSchedulerProvider:(id)a9
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v33.receiver = self;
  v33.super_class = PFTSchedulerProvider;
  v20 = [(PFTSchedulerProvider *)&v33 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_backgroundScheduler, a3);
    objc_storeStrong(&v21->_mainThreadScheduler, a4);
    objc_storeStrong(&v21->_inlineScheduler, a5);
    objc_storeStrong(&v21->_immediateScheduler, a6);
    v22 = [v17 copy];
    serialSchedulerProvider = v21->_serialSchedulerProvider;
    v21->_serialSchedulerProvider = v22;

    v24 = [v18 copy];
    synchronousSerialSchedulerProvider = v21->_synchronousSerialSchedulerProvider;
    v21->_synchronousSerialSchedulerProvider = v24;

    v26 = [v19 copy];
    readerWriterSchedulerProvider = v21->_readerWriterSchedulerProvider;
    v21->_readerWriterSchedulerProvider = v26;

    v28 = v21;
  }

  return v21;
}

- (id)newSerialSchedulerWithName:(id)a3
{
  v4 = a3;
  v5 = [(PFTSchedulerProvider *)self serialSchedulerProvider];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (id)newSynchronousSerialSchedulerWithName:(id)a3
{
  v4 = a3;
  v5 = [(PFTSchedulerProvider *)self synchronousSerialSchedulerProvider];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (id)newReaderWriterSchedulerWithName:(id)a3
{
  v4 = a3;
  v5 = [(PFTSchedulerProvider *)self readerWriterSchedulerProvider];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (id)backgroundSchedulerWithQualityOfService:(unint64_t)a3
{
  v5 = [PFTQualityOfServiceSchedulerDecorator alloc];
  v6 = [(PFTSchedulerProvider *)self backgroundScheduler];
  v7 = [(PFTQualityOfServiceSchedulerDecorator *)v5 initWithScheduler:v6 qualityOfService:a3];

  return v7;
}

@end