@interface TIResponseKitTrainerImpl
+ (id)sharedTrainer;
- (BOOL)moveLanguageModelBundlesFromTemporaryDirectory:(id)a3 toDestination:(id)a4 error:(id *)a5;
- (id)_init;
- (void)performTrainingForClient:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation TIResponseKitTrainerImpl

- (void)performTrainingForClient:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v5;
  v7 = v8;
  TIDispatchAsync();
}

void __75__TIResponseKitTrainerImpl_performTrainingForClient_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSTemporaryDirectory();
  v4 = [v2 stringWithFormat:@"%@/%d", v3, arc4random()];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/ResponseKit"];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2734;
  v37 = __Block_byref_object_dispose__2735;
  v38 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = v34;
  obj = v34[5];
  v9 = [v7 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&obj];
  objc_storeStrong(v8 + 5, obj);

  v30 = v9;
  if (v28[3])
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __75__TIResponseKitTrainerImpl_performTrainingForClient_withCompletionHandler___block_invoke_45;
    v22 = &unk_2787337C0;
    v23 = *(a1 + 32);
    v24 = v5;
    v25 = v31;
    TIDispatchSync();
    v10 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__TIResponseKitTrainerImpl_performTrainingForClient_withCompletionHandler___block_invoke_2;
    v12[3] = &unk_27872F9F0;
    v16 = v31;
    v17 = &v27;
    v12[4] = *(a1 + 40);
    v13 = v24;
    v14 = v6;
    v18 = &v33;
    v15 = *(a1 + 48);
    [v10 performTaskInBackground:v12];
  }

  else
  {
    v11 = v34[5];
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);
}

void __75__TIResponseKitTrainerImpl_performTrainingForClient_withCompletionHandler___block_invoke_45(void *a1)
{
  v4 = [[TILanguageModelOfflineLearningStrategyResponseKit alloc] initWithClientIdentifier:a1[4] andDirectory:a1[5]];
  v2 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent];
  [v2 performLearningIfNecessaryWithStrategy:v4 lastAdaptationTime:0.0];

  v3 = [(TILanguageModelOfflineLearningStrategyResponseKit *)v4 learningTask];
  *(*(a1[6] + 8) + 24) = [v3 isCancelled];
}

uint64_t __75__TIResponseKitTrainerImpl_performTrainingForClient_withCompletionHandler___block_invoke_2(void *a1)
{
  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v5 = *(a1[10] + 8);
    obj = *(v5 + 40);
    v6 = [v2 moveLanguageModelBundlesFromTemporaryDirectory:v3 toDestination:v4 error:&obj];
    objc_storeStrong((v5 + 40), obj);
    *(*(a1[9] + 8) + 24) = v6;
  }

  v7 = *(*(a1[10] + 8) + 40);
  return (*(a1[7] + 16))();
}

- (BOOL)moveLanguageModelBundlesFromTemporaryDirectory:(id)a3 toDestination:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v39 = v7;
  v9 = [v7 path];
  v10 = [v8 fileExistsAtPath:v9];

  if ((v10 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v7, 1, 0, a5), v11, v12))
  {
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v40 path];
    v15 = [v13 contentsOfDirectoryAtPath:v14 error:a5];

    if (v15)
    {
      v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"pathExtension='lm'"];
      v37 = v15;
      v17 = [v15 filteredArrayUsingPredicate:v16];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v42;
        obj = v18;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v42 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v41 + 1) + 8 * i);
            v24 = [v40 URLByAppendingPathComponent:v23];
            v25 = [v39 URLByAppendingPathComponent:v23];
            v26 = [MEMORY[0x277CCAA00] defaultManager];
            v27 = [v25 path];
            v28 = [v26 fileExistsAtPath:v27];

            if (v28)
            {
              v29 = [MEMORY[0x277CCAA00] defaultManager];
              v30 = [v29 removeItemAtURL:v25 error:a5];

              if (!v30)
              {

LABEL_18:
                v34 = 0;
                v18 = obj;
                v33 = obj;
                goto LABEL_19;
              }
            }

            v31 = [MEMORY[0x277CCAA00] defaultManager];
            v32 = [v31 moveItemAtURL:v24 toURL:v25 error:a5];

            if (!v32)
            {
              goto LABEL_18;
            }
          }

          v18 = obj;
          v20 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v33 = [MEMORY[0x277CCAA00] defaultManager];
      v34 = [v33 removeItemAtURL:v40 error:a5];
LABEL_19:

      v15 = v37;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = TIResponseKitTrainerImpl;
  v2 = [(TIResponseKitTrainerImpl *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.companionmessagesd.ResponseKitTrainer", v3);
    v5 = _dispatchQueue;
    _dispatchQueue = v4;
  }

  return v2;
}

+ (id)sharedTrainer
{
  if (sharedTrainer_onceToken != -1)
  {
    dispatch_once(&sharedTrainer_onceToken, &__block_literal_global_2780);
  }

  v3 = sharedTrainer_instance;

  return v3;
}

uint64_t __41__TIResponseKitTrainerImpl_sharedTrainer__block_invoke()
{
  sharedTrainer_instance = [[TIResponseKitTrainerImpl alloc] _init];

  return MEMORY[0x2821F96F8]();
}

@end