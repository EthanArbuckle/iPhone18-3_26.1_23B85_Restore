@interface PPContextPredictor
- (PPContextPredictor)initWithLanguage:(id)a3;
- (PPContextPredictor)initWithLanguage:(id)a3 mlModelURL:(id)a4;
- (PPContextPredictor)initWithMLModel:(id)a3 language:(id)a4;
- (PPContextPredictor)initWithMLModel:(id)a3 language:(id)a4 sentenceEmbeddingVersion:(unint64_t)a5;
- (id)contextForSentence:(id)a3;
@end

@implementation PPContextPredictor

- (id)contextForSentence:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  if (!self->_mlModel)
  {
    v9 = 0;
    goto LABEL_36;
  }

  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CD89B0] wordEmbeddingForLanguage:self->_language revision:self->_sentenceEmbeddingVersion];
  objc_autoreleasePoolPop(v6);
  if (v7 && [v7 dimension] < 0x12D)
  {
    bzero(buf, 0x5DC0uLL);
    if ([v4 count] <= 0x14)
    {
      v10 = [v4 count];
      if (!v10)
      {
LABEL_13:
        v42 = 0;
        v33 = [objc_alloc(MEMORY[0x277CBFF48]) initWithDataPointer:buf shape:&unk_284785340 dataType:65568 strides:&unk_284785358 deallocator:&__block_literal_global_11574 error:&v42];
        v8 = v42;
        if (v33)
        {
          v14 = objc_alloc(MEMORY[0x277CBFED0]);
          v15 = objc_autoreleasePoolPush();
          v49 = @"embedded_content";
          v50 = v33;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          objc_autoreleasePoolPop(v15);
          v41 = v8;
          v17 = [v14 initWithDictionary:v16 error:&v41];
          v31 = v41;

          if (v17)
          {
            v35 = 0;
            v36 = &v35;
            v37 = 0x3032000000;
            v38 = __Block_byref_object_copy__11580;
            v39 = __Block_byref_object_dispose__11581;
            v40 = 0;
            coremlQueue = self->_coremlQueue;
            *&block = MEMORY[0x277D85DD0];
            *(&block + 1) = 3221225472;
            v44 = __52__PPContextPredictor_contextUsingCoreMLForSentence___block_invoke_56;
            v45 = &unk_278976388;
            v48 = &v35;
            v46 = self;
            oslog = v17;
            v47 = oslog;
            dispatch_sync(coremlQueue, &block);
            v19 = v36[5];
            if (v19)
            {
              v20 = [v19 featureValueForName:@"probabilities"];
              v21 = [v20 multiArrayValue];

              if (v21)
              {
                v22 = objc_opt_new();
                for (i = 0; i < [v21 count]; ++i)
                {
                  v24 = objc_autoreleasePoolPush();
                  v25 = [v21 objectAtIndexedSubscript:i];
                  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
                  [v22 setObject:v25 forKeyedSubscript:v26];

                  objc_autoreleasePoolPop(v24);
                }

                v9 = [[PPExtractionContext alloc] initWithProbabilities:v22];
              }

              else
              {
                v22 = pp_default_log_handle();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *v34 = 0;
                  _os_log_error_impl(&dword_23224A000, v22, OS_LOG_TYPE_ERROR, "PPContextPredictor: unable to fetch array.", v34, 2u);
                }

                v9 = 0;
              }
            }

            else
            {
              v9 = 0;
            }

            _Block_object_dispose(&v35, 8);
          }

          else
          {
            v27 = pp_default_log_handle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              LODWORD(block) = 138412290;
              *(&block + 4) = v31;
              _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "PPContextPredictor: unable to construct feature provider: %@", &block, 0xCu);
            }

            oslog = 0;
            v9 = 0;
          }

          v8 = v31;
        }

        else
        {
          oslog = pp_default_log_handle();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            LODWORD(block) = 138412290;
            *(&block + 4) = v8;
            _os_log_error_impl(&dword_23224A000, oslog, OS_LOG_TYPE_ERROR, "PPContextPredictor: unable to allocate multiarray: %@", &block, 0xCu);
          }

          v9 = 0;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v10 = 20;
    }

    v11 = 0;
    v12 = buf;
    do
    {
      v13 = [v4 objectAtIndexedSubscript:v11];
      [v7 getVector:v12 forString:v13];

      ++v11;
      v12 += 1200;
    }

    while (v10 != v11);
    goto LABEL_13;
  }

  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    language = self->_language;
    *buf = 138412290;
    v52 = language;
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPContextPredictor: unsupported language %@", buf, 0xCu);
  }

  v9 = 0;
LABEL_35:

  objc_autoreleasePoolPop(v5);
LABEL_36:
  v29 = *MEMORY[0x277D85DE8];

  return v9;
}

void __52__PPContextPredictor_contextUsingCoreMLForSentence___block_invoke_56(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v10 = 0;
  v4 = [v3 predictionFromFeatures:v2 error:&v10];
  v5 = v10;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPContextPredictor: unable to invoke model: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (PPContextPredictor)initWithMLModel:(id)a3 language:(id)a4 sentenceEmbeddingVersion:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = PPContextPredictor;
  v11 = [(PPContextPredictor *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mlModel, a3);
    objc_storeStrong(&v12->_language, a4);
    v13 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPContextPredictor-modelQueue"];
    coremlQueue = v12->_coremlQueue;
    v12->_coremlQueue = v13;

    v12->_sentenceEmbeddingVersion = a5;
  }

  return v12;
}

- (PPContextPredictor)initWithMLModel:(id)a3 language:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PPConfiguration sharedInstance];
  v9 = -[PPContextPredictor initWithMLModel:language:sentenceEmbeddingVersion:](self, "initWithMLModel:language:sentenceEmbeddingVersion:", v7, v6, [v8 sentenceEmbeddingVersion]);

  return v9;
}

- (PPContextPredictor)initWithLanguage:(id)a3 mlModelURL:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setComputeUnits:0];
  v15 = 0;
  v9 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v7 configuration:v8 error:&v15];

  v10 = v15;
  if (v9)
  {
    self = [(PPContextPredictor *)self initWithMLModel:v9 language:v6 sentenceEmbeddingVersion:1];
    v11 = self;
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPContextPredictor: failed to load ML model: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (PPContextPredictor)initWithLanguage:(id)a3
{
  v4 = a3;
  v5 = +[PPTrialWrapper sharedInstance];
  v6 = [v5 mlModelForModelName:@"context_predictor.mlmodelc" namespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL" error:0];
  v7 = [(PPContextPredictor *)self initWithMLModel:v6 language:v4];

  return v7;
}

@end