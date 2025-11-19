@interface ISPlayerItemChef
+ (ISPlayerItemChef)defaultChef;
- (ISPlayerItemChef)init;
- (int64_t)prepareIrisVideoWithAsset:(id)a3 photoTime:(id *)a4 trimmedTimeRange:(id *)a5 completion:(id)a6;
- (void)cancelPreparationOfIrisAssetWithRequestID:(int64_t)a3;
@end

@implementation ISPlayerItemChef

- (void)cancelPreparationOfIrisAssetWithRequestID:(int64_t)a3
{
  v5 = [(ISPlayerItemChef *)self _operationsByRequestID];
  v6 = [(ISPlayerItemChef *)self _isolationQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__ISPlayerItemChef_cancelPreparationOfIrisAssetWithRequestID___block_invoke;
  v8[3] = &unk_279A2A410;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __62__ISPlayerItemChef_cancelPreparationOfIrisAssetWithRequestID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v6 = [v2 objectForKey:v3];

  [v6 cancel];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v4 removeObjectForKey:v5];
}

void __115__ISPlayerItemChef_prepareIrisPlayerItemWithAsset_trimmedTimeRange_photoTime_includeVideo_includeAudio_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__ISPlayerItemChef_prepareIrisPlayerItemWithAsset_trimmedTimeRange_photoTime_includeVideo_includeAudio_completion___block_invoke_2;
  block[3] = &unk_279A2A410;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v19 = v12;
  v20 = v13;
  dispatch_async(v11, block);
  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = *(v14 + 16);
    v16 = *a4;
    v17 = *(a4 + 2);
    v15(v14, a2, v9, &v16, v10);
  }
}

void __115__ISPlayerItemChef_prepareIrisPlayerItemWithAsset_trimmedTimeRange_photoTime_includeVideo_includeAudio_completion___block_invoke_3(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  [v1 setObject:v2 forKey:v3];
}

void __115__ISPlayerItemChef_prepareIrisPlayerItemWithAsset_trimmedTimeRange_photoTime_includeVideo_includeAudio_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v1 removeObjectForKey:v2];
}

- (int64_t)prepareIrisVideoWithAsset:(id)a3 photoTime:(id *)a4 trimmedTimeRange:(id *)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = +[ISPlayerSettings sharedInstance];
  v13 = [v12 audioEnabled];
  v14 = *&a5->var0.var3;
  v18[0] = *&a5->var0.var0;
  v18[1] = v14;
  v18[2] = *&a5->var1.var1;
  v17 = *a4;
  v15 = [(ISPlayerItemChef *)self prepareIrisPlayerItemWithAsset:v11 trimmedTimeRange:v18 photoTime:&v17 includeVideo:1 includeAudio:v13 completion:v10];

  return v15;
}

- (ISPlayerItemChef)init
{
  v10.receiver = self;
  v10.super_class = ISPlayerItemChef;
  v2 = [(ISPlayerItemChef *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v2->__operationQueue;
    v2->__operationQueue = v3;

    [(NSOperationQueue *)v2->__operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->__operationQueue setQualityOfService:25];
    v5 = dispatch_queue_create("com.apple.irisassetisolation", 0);
    isolationQueue = v2->__isolationQueue;
    v2->__isolationQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    operationsByRequestID = v2->__operationsByRequestID;
    v2->__operationsByRequestID = v7;
  }

  return v2;
}

+ (ISPlayerItemChef)defaultChef
{
  if (defaultChef_onceToken != -1)
  {
    dispatch_once(&defaultChef_onceToken, &__block_literal_global_2123);
  }

  v3 = defaultChef_defaultChef;

  return v3;
}

uint64_t __31__ISPlayerItemChef_defaultChef__block_invoke()
{
  v0 = objc_alloc_init(ISPlayerItemChef);
  v1 = defaultChef_defaultChef;
  defaultChef_defaultChef = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end