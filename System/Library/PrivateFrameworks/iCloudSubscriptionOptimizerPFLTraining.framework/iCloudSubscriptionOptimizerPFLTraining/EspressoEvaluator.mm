@interface EspressoEvaluator
+ (void)initialize;
- (float)averageLossEvaluation:(id)a3 dataWrapper:(id)a4 batchSize:(int)a5;
- (id)evaluateWithModelURL:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (id)evaluationMetrics:(id)a3 dataWrapper:(id)a4 outputName:(id)a5;
@end

@implementation EspressoEvaluator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLog = os_log_create("com.apple.iCloudSubscriptionOptimizerCore.PFLPlugin", "EspressoEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

- (id)evaluationMetrics:(id)a3 dataWrapper:(id)a4 outputName:(id)a5
{
  v25[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_275B9B000, v11, OS_LOG_TYPE_INFO, "Started model evaluation", buf, 2u);
  }

  v25[0] = @"cross_entropy";
  v25[1] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__EspressoEvaluator_evaluationMetrics_dataWrapper_outputName___block_invoke;
  v20[3] = &unk_27A66D648;
  v13 = v9;
  v21 = v13;
  v14 = v8;
  v22 = v14;
  v15 = v10;
  v23 = v15;
  [v7 runInference:v14 outputNames:v12 batchCallback:v20];

  v16 = v23;
  v17 = v15;

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __62__EspressoEvaluator_evaluationMetrics_dataWrapper_outputName___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sLog;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v20[0] = 67109376;
    v20[1] = a2;
    v21 = 1024;
    v22 = [v5 numberOfDataPoints];
    _os_log_impl(&dword_275B9B000, v6, OS_LOG_TYPE_INFO, "fit: iter=%d outputs.numberOfDataPoints=%d", v20, 0xEu);
  }

  for (i = 0; i < [v5 numberOfDataPoints]; i = (i + 1))
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [v5 dataPointAtIndex:i];
    v10 = [v9 bufferWithKey:*(a1 + 32)];

    v11 = expf(v10[1]);
    *&v12 = v11 / (v11 + expf(*v10));
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    [v8 setValue:v13 forKey:@"probability"];

    v14 = [*(a1 + 40) dataPointAtIndex:i];
    v15 = [v14 bufferWithKey:@"label"];

    LODWORD(v16) = *v15;
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{*v15 > 0.0, v16}];
    [v8 setValue:v17 forKey:@"label"];

    [*(a1 + 48) addObject:v8];
  }

  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

- (float)averageLossEvaluation:(id)a3 dataWrapper:(id)a4 batchSize:(int)a5
{
  v7 = a3;
  v8 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = [v8 numberOfDataPoints];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__EspressoEvaluator_averageLossEvaluation_dataWrapper_batchSize___block_invoke;
  v12[3] = &unk_27A66D670;
  v12[4] = &v13;
  v12[5] = v9 / a5;
  [v7 runInference:v8 outputNames:&unk_2884B2318 batchCallback:v12];
  v10 = v14[6];
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __65__EspressoEvaluator_averageLossEvaluation_dataWrapper_batchSize___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 dataPointAtIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = (*[v5 bufferWithKey:@"cross_entropy"] / *(a1 + 40)) + *(*(*(a1 + 32) + 8) + 24);

  return 0;
}

- (id)evaluateWithModelURL:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v122 = *MEMORY[0x277D85DE8];
  v80 = a3;
  v84 = a4;
  v7 = sLog;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    [v84 learningRate];
    v9 = v8;
    v10 = [v84 freezeComponents];
    v11 = [v84 gradNormType];
    [v84 gradNormFactor];
    v13 = v12;
    v14 = [v84 batchSize];
    v15 = [v84 objectiveFunction];
    v16 = [v84 modelOutputName];
    *buf = 134219522;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v116 = v11;
    LOWORD(v117) = 2048;
    *(&v117 + 2) = v13;
    WORD5(v117) = 1024;
    HIDWORD(v117) = v14;
    v118 = 2112;
    v119 = v15;
    v120 = 2112;
    v121 = v16;
    _os_log_impl(&dword_275B9B000, v7, OS_LOG_TYPE_INFO, "Evaluation using Espresso with learning rate %f, freezing components %@ , gradient normtype %@ , gradient norm factor %f , batch size %d , objective function %@, model output name %@", buf, 0x44u);
  }

  v105 = 0;
  v17 = [MEMORY[0x277CBFF20] compileModelAtURL:v80 error:&v105];
  v77 = v17;
  v78 = v105;
  if (v17)
  {
    v76 = [v17 URLByAppendingPathComponent:@"model.espresso.net"];
    v18 = sLog;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_275B9B000, v18, OS_LOG_TYPE_INFO, "Setup espresso network", buf, 2u);
    }

    v19 = objc_alloc(MEMORY[0x277D07768]);
    v20 = [v76 path];
    v89 = [v19 initWithNetwork:v20];

    v21 = [v84 layersToTrain];
    LOBYTE(v19) = [v21 count] == 0;

    if ((v19 & 1) == 0)
    {
      v22 = [v84 layersToTrain];
      [v89 configureLayersToTrain:v22 reinitializeVariables:0];
    }

    v23 = sLog;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_275B9B000, v23, OS_LOG_TYPE_INFO, "Create optimizer", buf, 2u);
    }

    v83 = objc_alloc_init(MEMORY[0x277D07778]);
    [v83 setBatch_size:{objc_msgSend(v84, "batchSize")}];
    [v84 learningRate];
    [v83 setLr:?];
    [v84 learningRateDecay];
    [v83 setLr_decay_epoch:?];
    v24 = sLog;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_275B9B000, v24, OS_LOG_TYPE_INFO, "Create classifier task", buf, 2u);
    }

    v82 = [objc_alloc(MEMORY[0x277D07788]) initWithModelDef:v89 optimizerDef:v83 extractor:0 needWeightsInitialization:0];
    v104[0] = 0;
    v104[1] = 0;
    v102[1] = 0;
    v103 = v104;
    v101 = v102;
    v102[0] = 0;
    v25 = sLog;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v84 layersToTrain];
      *buf = 138412290;
      *&buf[4] = v26;
      _os_log_impl(&dword_275B9B000, v25, OS_LOG_TYPE_INFO, "Layers to train: %@", buf, 0xCu);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v27 = [v84 layersToTrain];
    if ([v27 countByEnumeratingWithState:&v97 objects:v114 count:16])
    {
      *v98;
      *v98;
      [v89 weightsForLayer:{**(&v97 + 1), v76, v77}];
      v28 = *(*__p + 12);
      *buf = *(*__p + 8);
      LODWORD(v108) = v28;
      v107 = 1;
      v106 = 1;
      std::allocate_shared[abi:ne200100]<Espresso::blob<float,2>,std::allocator<Espresso::blob<float,2>>,int &,int &,int &,int &,0>();
    }

    v81 = [[EvaluationDataSourceEspressoWrapper alloc] initWithEvaluatorDataSource:v84];
    -[EspressoEvaluator averageLossEvaluation:dataWrapper:batchSize:](self, "averageLossEvaluation:dataWrapper:batchSize:", v82, v81, [v84 batchSize]);
    v30 = v29;
    v31 = sLog;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v30;
      _os_log_impl(&dword_275B9B000, v31, OS_LOG_TYPE_INFO, "loss before training: %f", buf, 0xCu);
    }

    v32 = sLog;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_275B9B000, v32, OS_LOG_TYPE_INFO, "Start training espresso network", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v116 = __Block_byref_object_copy_;
    *&v117 = __Block_byref_object_dispose_;
    *(&v117 + 1) = MEMORY[0x277CBEC10];
    v33 = [v84 numLocalIterations];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __59__EspressoEvaluator_evaluateWithModelURL_dataSource_error___block_invoke;
    v94[3] = &unk_27A66D698;
    v94[4] = buf;
    [v82 fit:v81 numberOfEpochs:v33 withProgress:v94];
    v35 = v34;
    v87 = [MEMORY[0x277CBEB18] array];
    v88 = [MEMORY[0x277CBEB18] array];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v36 = [v84 layersToTrain];
    obj = v36;
    v37 = [v36 countByEnumeratingWithState:&v90 objects:v113 count:16];
    if (v37)
    {
      v86 = *v91;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v91 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v90 + 1) + 8 * i);
          v40 = [MEMORY[0x277CBEB18] array];
          if (v89)
          {
            [v89 weightsForLayer:v39];
          }

          else
          {
            v95 = 0;
            v96 = 0;
          }

          v41 = v39;
          std::string::basic_string[abi:ne200100]<0>(__p, [v39 UTF8String]);
          v108 = __p;
          v42 = std::__tree<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v103, __p);
          v44 = *(v42 + 56);
          v45 = *(v42 + 64);
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v112 < 0)
          {
            operator delete(*__p);
          }

          v46 = v95;
          if (*(v95 + 12) * *(v95 + 8))
          {
            v47 = 0;
            do
            {
              *&v43 = *(*(v46 + 16) + 4 * v47) - *(*(v44 + 16) + 4 * v47);
              v48 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
              [v40 addObject:v48];

              ++v47;
              v46 = v95;
            }

            while (v47 < *(v95 + 12) * *(v95 + 8));
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          if (v89)
          {
            [v89 biasesForLayer:v39];
          }

          else
          {
            v95 = 0;
            v96 = 0;
          }

          v49 = v39;
          std::string::basic_string[abi:ne200100]<0>(__p, [v39 UTF8String]);
          v108 = __p;
          v50 = std::__tree<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v101, __p);
          v52 = *(v50 + 56);
          v53 = *(v50 + 64);
          if (v53)
          {
            atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v112 < 0)
          {
            operator delete(*__p);
          }

          v54 = v95;
          if (*(v95 + 8))
          {
            v55 = 0;
            do
            {
              *&v51 = *(*(v54 + 16) + 4 * v55) - *(*(v52 + 16) + 4 * v55);
              v56 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
              [v40 addObject:v56];

              ++v55;
              v54 = v95;
            }

            while (v55 < *(v95 + 8));
          }

          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }

          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          [v87 addObject:v40];
          [v88 addObject:v39];
        }

        v36 = obj;
        v37 = [obj countByEnumeratingWithState:&v90 objects:v113 count:16];
      }

      while (v37);
    }

    v57 = sLog;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *__p = 0;
      _os_log_impl(&dword_275B9B000, v57, OS_LOG_TYPE_INFO, "Finished training espresso network", __p, 2u);
    }

    v58 = [v84 modelOutputName];
    v59 = [(EspressoEvaluator *)self evaluationMetrics:v82 dataWrapper:v81 outputName:v58];
    v60 = sLog;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *__p = 138412290;
      *&__p[4] = v59;
      _os_log_impl(&dword_275B9B000, v60, OS_LOG_TYPE_INFO, "Print out probs: %@", __p, 0xCu);
    }

    -[EspressoEvaluator averageLossEvaluation:dataWrapper:batchSize:](self, "averageLossEvaluation:dataWrapper:batchSize:", v82, v81, [v84 batchSize]);
    v62 = v61;
    v63 = sLog;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      *__p = 134217984;
      *&__p[4] = v62;
      _os_log_impl(&dword_275B9B000, v63, OS_LOG_TYPE_INFO, "loss after training: %f", __p, 0xCu);
    }

    v109[0] = @"LossBeforeTraining";
    *&v64 = v30;
    v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
    v110[0] = v65;
    v109[1] = @"LossAfterTraining";
    *&v66 = v62;
    v67 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
    v110[1] = v67;
    v109[2] = @"TrainingLoss";
    LODWORD(v68) = v35;
    v69 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
    v109[3] = @"UpdatedModelIndices";
    v109[4] = @"ModelDeltas";
    v110[2] = v69;
    v110[3] = v88;
    v109[5] = @"TrainingLosses";
    v70 = *(*&buf[8] + 40);
    v110[4] = v87;
    v110[5] = v70;
    v109[6] = @"OtherEvaluationMetric";
    v110[6] = v59;
    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:7];

    _Block_object_dispose(buf, 8);
    std::__tree<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>>>::destroy(&v101, v102[0]);
    std::__tree<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<Espresso::blob<float,2>>>>>::destroy(&v103, v104[0]);
  }

  else
  {
    v72 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [EspressoEvaluator evaluateWithModelURL:v72 dataSource:? error:?];
    }

    if (a5)
    {
      v73 = v78;
      v71 = 0;
      *a5 = v78;
    }

    else
    {
      v71 = 0;
    }
  }

  v74 = *MEMORY[0x277D85DE8];

  return v71;
}

void __59__EspressoEvaluator_evaluateWithModelURL_dataSource_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_275B9B000, v7, OS_LOG_TYPE_INFO, "fit: iter=%d metrics=%@", v9, 0x12u);
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end