@interface REMLModelManager
- (BOOL)_loadModelAtPath:(id)path mlFeatures:(id)features checkModelVersion:(BOOL)version;
- (BOOL)_saveModelToDisk:(id *)disk;
- (REMLModelManager)initWithRelevanceEngine:(id)engine;
- (id)_createOrderFeatureListFromModelFileURL:(id)l mlFeatures:(id)features;
- (id)comparatorWithRules:(id)rules;
- (id)createOutputFeatureFromDouble:(double)double error:(id *)error;
- (id)predictionForLogicalElement:(id)element;
- (id)sentimentAnalyzer;
- (void)_logMetrics;
- (void)_notifyObserversThatModelUpdated;
- (void)_saveDataStoresToURL:(id)l;
- (void)addDataStore:(id)store;
- (void)dealloc;
- (void)flushTraining;
- (void)manuallySaveModel;
- (void)performModelClearWithCompletion:(id)completion;
- (void)performTrainingWithFeatureMaps:(id)maps content:(id)content events:(id)events interactions:(id)interactions purgeCaches:(BOOL)caches completion:(id)completion;
@end

@implementation REMLModelManager

- (REMLModelManager)initWithRelevanceEngine:(id)engine
{
  v90 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v85.receiver = self;
  v85.super_class = REMLModelManager;
  v5 = [(RERelevanceEngineSubsystem *)&v85 initWithRelevanceEngine:engineCopy];
  if (v5)
  {
    configuration = [engineCopy configuration];
    modelFileURL = [configuration modelFileURL];
    path = [modelFileURL path];
    modelFileLocation = v5->_modelFileLocation;
    v5->_modelFileLocation = path;

    configuration2 = [engineCopy configuration];
    v5->_modelStorageBehavior = [configuration2 modelStorageBehavior];

    configuration3 = [engineCopy configuration];
    metricsRecorder = [configuration3 metricsRecorder];
    metricsRecoder = v5->_metricsRecoder;
    v5->_metricsRecoder = metricsRecorder;

    configuration4 = [engineCopy configuration];
    v5->_elementsHiddenByDefault = [configuration4 elementsHiddenByDefault];

    v15 = objc_alloc_init(REObserverStore);
    observers = v5->_observers;
    v5->_observers = v15;

    configuration5 = [engineCopy configuration];
    v5->_modelVersionNumber = ([configuration5 modelVersion] << 8) + 195936478;

    v18 = objc_alloc_init(REObserverStore);
    dataStores = v5->_dataStores;
    v5->_dataStores = v18;

    mlFeatures = [engineCopy mlFeatures];
    date = [MEMORY[0x277CBEAA8] date];
    lastCacheResetDate = v5->_lastCacheResetDate;
    v5->_lastCacheResetDate = date;

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    configuration6 = [engineCopy configuration];
    interactionDescriptors = [configuration6 interactionDescriptors];

    v25 = [interactionDescriptors countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v82;
      v28 = 0.0;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v82 != v27)
          {
            objc_enumerationMutation(interactionDescriptors);
          }

          [*(*(&v81 + 1) + 8 * i) weight];
          v28 = v28 + v30;
        }

        v26 = [interactionDescriptors countByEnumeratingWithState:&v81 objects:v89 count:16];
      }

      while (v26);
    }

    else
    {
      v28 = 0.0;
    }

    if (fabsf(v28) < 0.00000011921)
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Interaction descriptors must have weights which sum to a non-zero value or you're going to have a bad time.", v31, v32, v33, v34, v35, v36, v74);
    }

    v37 = 0x27D84B000;
    v38 = 0x27D84B000;
    v76 = mlFeatures;
    if ([(REMLModelManager *)v5 _loadModelAtPath:v5->_modelFileLocation mlFeatures:mlFeatures checkModelVersion:1])
    {
      v5->_validModel = 1;
    }

    else
    {
      v39 = RELogForDomain(4);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22859F000, v39, OS_LOG_TYPE_DEFAULT, "Falling back to base model", buf, 2u);
      }

      configuration7 = [engineCopy configuration];
      baseModelFileURL = [configuration7 baseModelFileURL];
      path2 = [baseModelFileURL path];
      v43 = [(REMLModelManager *)v5 _loadModelAtPath:path2 mlFeatures:mlFeatures checkModelVersion:0];

      v37 = 0x27D84B000;
      if (!v43)
      {
        v75 = engineCopy;
        v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v76, "count")}];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v45 = v76;
        v46 = [v45 countByEnumeratingWithState:&v77 objects:v88 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v78;
          do
          {
            for (j = 0; j != v47; ++j)
            {
              if (*v78 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v77 + 1) + 8 * j);
              if ([v50 featureType] == 2)
              {
                v51 = RELogForDomain(0);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v87 = v50;
                  _os_log_impl(&dword_22859F000, v51, OS_LOG_TYPE_DEFAULT, "Skipping loading ml feature %@ from provided configuration since it isn't a categorcial feature", buf, 0xCu);
                }
              }

              else
              {
                [v44 addObject:v50];
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v77 objects:v88 count:16];
          }

          while (v47);
        }

        v52 = [v44 copy];
        v38 = 0x27D84B000uLL;
        orderedFeatures = v5->_orderedFeatures;
        v5->_orderedFeatures = v52;

        v54 = [REMLLinearModel alloc];
        v55 = [REFeatureSet featureSetWithFeatures:v5->_orderedFeatures];
        relevanceEngine = [(RERelevanceEngineSubsystem *)v5 relevanceEngine];
        configuration8 = [relevanceEngine configuration];
        interactionDescriptors2 = [configuration8 interactionDescriptors];
        v59 = [(REMLLinearModel *)v54 initWithFeatureSet:v55 interactionDescriptors:interactionDescriptors2];
        v37 = 0x27D84B000uLL;
        model = v5->_model;
        v5->_model = v59;

        engineCopy = v75;
      }
    }

    [*(&v5->super.super.isa + *(v37 + 1800)) setMetricsRecorder:v5->_metricsRecoder];
    v61 = objc_alloc_init(REMLMetricsSet);
    metrics = v5->_metrics;
    v5->_metrics = v61;

    v63 = v5->_metrics;
    v64 = [[REMLEntropyMetric alloc] initWithName:@"entropy" featureName:@"ModelPrediction"];
    [(REMLMetricsSet *)v63 addMetrics:v64];

    v65 = *(v38 + 1796);
    if (!*(&v5->super.super.isa + v65))
    {
      *(&v5->super.super.isa + v65) = MEMORY[0x277CBEBF8];
    }

    v66 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v67 = dispatch_queue_attr_make_with_qos_class(v66, QOS_CLASS_UTILITY, 0);

    v68 = dispatch_queue_create("com.apple.RelevanceEngine.REMLModelManager", v67);
    trainingQueue = v5->_trainingQueue;
    v5->_trainingQueue = v68;

    logger = [engineCopy logger];
    [logger addLoggable:v5];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__logMetrics name:@"REDidCollectMetrics" object:0];
  }

  v72 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  logger = [relevanceEngine logger];
  [logger removeLoggable:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = REMLModelManager;
  [(RERelevanceEngineSubsystem *)&v6 dealloc];
}

- (void)_logMetrics
{
  trainingQueue = self->_trainingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__REMLModelManager__logMetrics__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(trainingQueue, block);
}

- (void)addDataStore:(id)store
{
  storeCopy = store;
  [(REObserverStore *)self->_dataStores addObserver:storeCopy];
  if (self->_validModel)
  {
    dataStoreKey = [storeCopy dataStoreKey];
    v6 = [(NSString *)self->_modelFileLocation stringByAppendingPathComponent:@"DataStores"];
    v7 = [v6 stringByAppendingPathComponent:dataStoreKey];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [defaultManager fileExistsAtPath:v7];

    if (v9)
    {
      v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
      v11 = 0;
      [storeCopy modelManager:self loadDataStoreFromURL:v10 error:&v11];
    }
  }
}

- (void)_saveDataStoresToURL:(id)l
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_modelFileLocation];
  v5 = [v4 URLByAppendingPathComponent:@"DataStores"];

  dataStores = self->_dataStores;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__REMLModelManager__saveDataStoresToURL___block_invoke;
  v8[3] = &unk_2785FB470;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  [(REObserverStore *)dataStores enumerateObserversWithBlock:v8];
}

void __41__REMLModelManager__saveDataStoresToURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dataStoreKey];
  v5 = [*(a1 + 32) URLByAppendingPathComponent:v4];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:0];

  v8 = *(a1 + 40);
  v9 = 0;
  [v3 modelManager:v8 saveDataStoreToURL:v5 error:&v9];
}

- (BOOL)_loadModelAtPath:(id)path mlFeatures:(id)features checkModelVersion:(BOOL)version
{
  versionCopy = version;
  v93 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v9 = featuresCopy;
  if (path)
  {
    v84 = featuresCopy;
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
    v11 = [v10 URLByAppendingPathComponent:@"model"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v11 path];
    v14 = [defaultManager fileExistsAtPath:path];

    [v11 URLByAppendingPathComponent:@"version"];
    v83 = v90[1] = 0;
    v15 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:? encoding:? error:?];
    v81 = 0;
    if (v14)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16 || !versionCopy)
    {
      if (!v15 && versionCopy)
      {
        absoluteString = [v83 absoluteString];
        v91 = 0;
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v20 = [defaultManager2 fileExistsAtPath:absoluteString isDirectory:&v91];

        v21 = v91;
        v22 = 0;
        v15 = 0;
        if (!v20 || v21)
        {
          goto LABEL_26;
        }

        v23 = RELogForDomain(4);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [REMLModelManager _loadModelAtPath:mlFeatures:checkModelVersion:];
        }

        v15 = 0;
LABEL_22:
        v22 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v25 = v11;
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      v27 = [v15 componentsSeparatedByCharactersInSet:newlineCharacterSet];
      firstObject = [v27 firstObject];

      v15 = [firstObject stringByReplacingOccurrencesOfString:@"Version: " withString:&stru_283B97458];

      longLongValue = [v15 longLongValue];
      if (longLongValue != self->_modelVersionNumber)
      {
        v32 = longLongValue;
        v33 = RELogForDomain(4);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [REMLModelManager _loadModelAtPath:v32 mlFeatures:v33 checkModelVersion:?];
        }

        v22 = 0;
        v11 = v25;
LABEL_26:
        v80 = v11;
        v34 = [v11 URLByAppendingPathComponent:@"model"];
        v35 = [REMLLinearModel alloc];
        if (self->_orderedFeatures)
        {
          orderedFeatures = self->_orderedFeatures;
        }

        else
        {
          orderedFeatures = MEMORY[0x277CBEBF8];
        }

        v37 = [REFeatureSet featureSetWithFeatures:orderedFeatures];
        relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
        configuration = [relevanceEngine configuration];
        interactionDescriptors = [configuration interactionDescriptors];
        v41 = [(REMLLinearModel *)v35 initWithFeatureSet:v37 interactionDescriptors:interactionDescriptors];
        model = self->_model;
        self->_model = v41;

        v79 = v15;
        v82 = v34;
        if (v22)
        {
          path2 = [v34 path];
          requiresDirectory = [(REMLLinearModel *)self->_model requiresDirectory];
          v91 = 0;
          v45 = MEMORY[0x277CCAA00];
          v46 = path2;
          defaultManager3 = [v45 defaultManager];
          v48 = [defaultManager3 fileExistsAtPath:v46 isDirectory:&v91];

          v49 = v91;
          v24 = 1;
          if (v48 && v49 == requiresDirectory)
          {
            v50 = self->_model;
            v90[0] = v81;
            v51 = [(REMLModel *)v50 loadModelFromURL:v34 error:v90];
            v52 = v90[0];

            v77 = v52;
            if (!v51)
            {
              v53 = RELogForDomain(4);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                [REMLModelManager _loadModelAtPath:mlFeatures:checkModelVersion:];
              }

              v24 = 0;
            }

LABEL_38:
            self->_supportsContentRanking = 0;
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            v89 = 0u;
            v54 = +[REContentRelevanceProviderManager _features];
            v55 = [v54 countByEnumeratingWithState:&v86 objects:v92 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v87;
              while (2)
              {
                for (i = 0; i != v56; ++i)
                {
                  if (*v87 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v59 = *(*(&v86 + 1) + 8 * i);
                  relevanceEngine2 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
                  rootFeatures = [relevanceEngine2 rootFeatures];
                  LODWORD(v59) = [rootFeatures containsFeature:v59];

                  if (v59)
                  {
                    self->_supportsContentRanking = 1;
                    goto LABEL_48;
                  }
                }

                v56 = [v54 countByEnumeratingWithState:&v86 objects:v92 count:16];
                if (v56)
                {
                  continue;
                }

                break;
              }
            }

LABEL_48:

            if (self->_supportsContentRanking)
            {
              v62 = objc_alloc_init(REContentRanker);
              contentRanker = self->_contentRanker;
              self->_contentRanker = v62;

              v64 = v80;
              v65 = v78;
              if (v24)
              {
                path3 = [v80 path];
                v67 = [path3 stringByAppendingPathComponent:@"content.ctx"];

                defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
                v69 = [defaultManager4 fileExistsAtPath:v67];

                if (v69)
                {
                  v70 = self->_contentRanker;
                  v85 = v78;
                  v71 = [(REContentRanker *)v70 load:v67 error:&v85];
                  v72 = v85;

                  if (!v71)
                  {
                    v73 = RELogForDomain(4);
                    v74 = v82;
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                    {
                      [REMLModelManager _loadModelAtPath:mlFeatures:checkModelVersion:];
                    }

                    v9 = v84;
                    goto LABEL_59;
                  }
                }

                else
                {
                  v72 = v78;
                }

                v9 = v84;
                v74 = v82;
LABEL_59:

                v65 = v72;
                goto LABEL_60;
              }

              v9 = v84;
              v74 = v82;
            }

            else
            {
              v9 = v84;
              v64 = v80;
              v74 = v82;
              v65 = v78;
            }

LABEL_60:

            goto LABEL_61;
          }
        }

        else
        {
          v24 = 0;
        }

        v77 = v81;
        goto LABEL_38;
      }

      v11 = v25;
    }

    if (v14)
    {
      v30 = [(REMLModelManager *)self _createOrderFeatureListFromModelFileURL:v11 mlFeatures:v84];
      v31 = self->_orderedFeatures;
      self->_orderedFeatures = v30;

      v22 = self->_orderedFeatures != 0;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  LOBYTE(v24) = 0;
LABEL_61:

  v75 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)_createOrderFeatureListFromModelFileURL:(id)l mlFeatures:(id)features
{
  v80 = *MEMORY[0x277D85DE8];
  lCopy = l;
  featuresCopy = features;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v8 = featuresCopy;
  v9 = [v8 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v72;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v72 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v71 + 1) + 8 * i);
        name = [v13 name];
        [dictionary setObject:v13 forKeyedSubscript:name];
      }

      v10 = [v8 countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v10);
  }

  v15 = [v8 mutableCopy];
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v17 = [lCopy URLByAppendingPathComponent:@"features.dat"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v17 path];
  v20 = [defaultManager fileExistsAtPath:path];

  v55 = v15;
  if (v20)
  {
    v70 = 0;
    v21 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v17 encoding:4 error:&v70];
    v53 = v70;
    if (v21)
    {
      v50 = v17;
      v51 = v8;
      v52 = lCopy;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v22 = 0x277CCA000uLL;
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      v49 = v21;
      v24 = [v21 componentsSeparatedByCharactersInSet:newlineCharacterSet];

      obj = v24;
      v58 = [v24 countByEnumeratingWithState:&v66 objects:v78 count:16];
      if (!v58)
      {
        goto LABEL_34;
      }

      v57 = *v67;
      v54 = v16;
      while (1)
      {
        v25 = 0;
        do
        {
          if (*v67 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v66 + 1) + 8 * v25);
          whitespaceCharacterSet = [*(v22 + 2304) whitespaceCharacterSet];
          v28 = [v26 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

          if ([v28 length])
          {
            v29 = [dictionary objectForKeyedSubscript:v28];
            if (v29)
            {
              v30 = v29;
              if ([v29 featureType] == 2)
              {
                v31 = RELogForDomain(0);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v77 = v30;
                  _os_log_impl(&dword_22859F000, v31, OS_LOG_TYPE_DEFAULT, "Skipping loading exisiting feature %@ since it isn't a categorcial feature", buf, 0xCu);
                }

                goto LABEL_31;
              }
            }

            else if ([v26 hasPrefix:@"<Removed Feature>"])
            {
              v30 = [REFeature featureWithName:v26 featureType:1];
            }

            else
            {
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __71__REMLModelManager__createOrderFeatureListFromModelFileURL_mlFeatures___block_invoke;
              block[3] = &unk_2785F9AB8;
              block[4] = v26;
              if (_createOrderFeatureListFromModelFileURL_mlFeatures__onceToken != -1)
              {
                dispatch_once(&_createOrderFeatureListFromModelFileURL_mlFeatures__onceToken, block);
              }

              v63[0] = MEMORY[0x277D85DD0];
              v63[1] = 3221225472;
              v63[2] = __71__REMLModelManager__createOrderFeatureListFromModelFileURL_mlFeatures___block_invoke_53;
              v63[3] = &unk_2785FB498;
              v64 = v16;
              v32 = MEMORY[0x22AABC5E0](v63);
              v33 = 1;
              v34 = &stru_283B97458;
              do
              {
                v35 = v34;
                v34 = [@"<Removed Feature>" stringByAppendingString:v26];

                if (v33 >= 2)
                {
                  v36 = [(__CFString *)v34 stringByAppendingFormat:@"%d", v33];

                  v34 = v36;
                }

                v33 = (v33 + 1);
              }

              while (((v32)[2](v32, v34) & 1) != 0);
              v30 = [REFeature featureWithName:v34 featureType:1];

              v16 = v54;
              v15 = v55;
              v22 = 0x277CCA000;
            }

            [v16 addObject:v30];
            [v15 removeFeature:v30];
LABEL_31:
          }

          ++v25;
        }

        while (v25 != v58);
        v58 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
        if (!v58)
        {
LABEL_34:
          v37 = v16;

          goto LABEL_36;
        }
      }
    }

    v48 = RELogForDomain(4);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [REMLModelManager _createOrderFeatureListFromModelFileURL:mlFeatures:];
    }

    v45 = 0;
  }

  else
  {
    v50 = v17;
    v51 = v8;
    v37 = v16;
    v52 = lCopy;
    v53 = 0;
LABEL_36:
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v38 = v15;
    v39 = [v38 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v60;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v60 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v59 + 1) + 8 * j);
          if ([v43 featureType] == 2)
          {
            v44 = RELogForDomain(0);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v77 = v43;
              _os_log_impl(&dword_22859F000, v44, OS_LOG_TYPE_DEFAULT, "Skipping creating remaining feature %@ since it isn't a categorcial feature", buf, 0xCu);
            }
          }

          else
          {
            [v37 addObject:v43];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v59 objects:v75 count:16];
      }

      while (v40);
    }

    v16 = v37;
    v45 = [v37 copy];
    v8 = v51;
    lCopy = v52;
    v17 = v50;
    v15 = v55;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

void __71__REMLModelManager__createOrderFeatureListFromModelFileURL_mlFeatures___block_invoke(uint64_t a1)
{
  v2 = RELogForDomain(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__REMLModelManager__createOrderFeatureListFromModelFileURL_mlFeatures___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

uint64_t __71__REMLModelManager__createOrderFeatureListFromModelFileURL_mlFeatures___block_invoke_53(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) name];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)createOutputFeatureFromDouble:(double)double error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc(MEMORY[0x277CBFED0]);
  v12 = @"ModelPrediction";
  v7 = [MEMORY[0x277CBFEF8] featureValueWithDouble:double];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 initWithDictionary:v8 error:error];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_saveModelToDisk:(id *)disk
{
  v115 = *MEMORY[0x277D85DE8];
  modelFileLocation = self->_modelFileLocation;
  if (modelFileLocation)
  {
    v5 = [(NSString *)modelFileLocation stringByAppendingPathComponent:@"model"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = [@"." stringByAppendingString:lastPathComponent];

    v8 = v5;
    stringByDeletingLastPathComponent = [v5 stringByDeletingLastPathComponent];
    v10 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v7];

    v11 = v10;
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
    v13 = self->_modelFileLocation;
    v113 = 0;
    v14 = MEMORY[0x277CCAA00];
    v15 = v13;
    defaultManager = [v14 defaultManager];
    v17 = [defaultManager fileExistsAtPath:v15 isDirectory:&v113];

    if (v17)
    {
      v18 = v113 == 0;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v22 = self->_modelFileLocation;
      v112 = 0;
      v23 = [defaultManager2 removeItemAtPath:v22 error:&v112];
      v24 = v112;

      if ((v23 & 1) == 0)
      {
        v66 = RELogForDomain(4);
        v25 = v12;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [REMLModelManager _saveModelToDisk:];
        }

        v29 = v8;
        v30 = v11;
        if (disk)
        {
          v67 = v24;
          v20 = 0;
          *disk = v24;
          goto LABEL_82;
        }

LABEL_37:
        v20 = 0;
        goto LABEL_82;
      }

      selfCopy2 = self;
      v19 = v24;
    }

    else
    {
      selfCopy2 = self;
      v19 = 0;
    }

    v25 = v12;
    v26 = 0x277CCA000uLL;
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    path = [v12 path];
    v29 = v8;
    v30 = v11;
    if ([defaultManager3 fileExistsAtPath:path])
    {
      v96 = v7;
      v93 = v8;
      defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
      v111 = v19;
      v32 = [defaultManager4 removeItemAtURL:v25 error:&v111];
      v24 = v111;

      if ((v32 & 1) == 0)
      {
        v68 = RELogForDomain(4);
        v30 = v11;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          [REMLModelManager _saveModelToDisk:];
        }

        v7 = v96;
        if (disk)
        {
          v69 = v24;
          v20 = 0;
          *disk = v24;
        }

        else
        {
          v20 = 0;
        }

        v29 = v8;
        goto LABEL_82;
      }

      v19 = v24;
      v30 = v11;
      diskCopy2 = disk;
      v29 = v93;
      v7 = v96;
      v26 = 0x277CCA000;
    }

    else
    {

      diskCopy2 = disk;
    }

    defaultManager5 = [*(v26 + 2560) defaultManager];
    v110 = v19;
    v35 = [defaultManager5 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&v110];
    v24 = v110;

    if (v35)
    {
      v36 = v29;
      v97 = v7;
      v37 = MEMORY[0x277CCACA8];
      modelVersionNumber = selfCopy2->_modelVersionNumber;
      v39 = REBuildVersion();
      v40 = [v37 stringWithFormat:@"Version: %llu\nSystem: %@\n", modelVersionNumber, v39];

      v41 = [v25 URLByAppendingPathComponent:@"version"];
      v109 = v24;
      v92 = v40;
      LOBYTE(v39) = [v40 writeToURL:v41 atomically:1 encoding:4 error:&v109];
      v42 = v109;

      if ((v39 & 1) == 0)
      {
        v70 = RELogForDomain(4);
        v56 = v97;
        v29 = v36;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [REMLModelManager _saveModelToDisk:];
        }

        v71 = v92;
        if (diskCopy2)
        {
          v72 = v42;
          v20 = 0;
          *diskCopy2 = v42;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_81;
      }

      v91 = v30;
      v94 = v36;
      v43 = [MEMORY[0x277CCAB68] stringWithCapacity:{15 * -[NSArray count](selfCopy2->_orderedFeatures, "count")}];
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v44 = selfCopy2->_orderedFeatures;
      v45 = [(NSArray *)v44 countByEnumeratingWithState:&v105 objects:v114 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v106;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v106 != v47)
            {
              objc_enumerationMutation(v44);
            }

            name = [*(*(&v105 + 1) + 8 * i) name];
            [v43 appendString:name];

            [v43 appendString:@"\n"];
          }

          v46 = [(NSArray *)v44 countByEnumeratingWithState:&v105 objects:v114 count:16];
        }

        while (v46);
      }

      v50 = [v25 URLByAppendingPathComponent:@"features.dat"];
      v104 = v42;
      v51 = [v43 writeToURL:v50 atomically:1 encoding:4 error:&v104];
      v52 = v104;

      if ((v51 & 1) == 0)
      {
        v73 = RELogForDomain(4);
        v56 = v97;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          [REMLModelManager _saveModelToDisk:];
        }

        if (disk)
        {
          v74 = v52;
          v20 = 0;
          *disk = v52;
        }

        else
        {
          v20 = 0;
        }

        v29 = v94;
        goto LABEL_59;
      }

      model = selfCopy2->_model;
      v54 = [v25 URLByAppendingPathComponent:@"model"];
      v103 = v52;
      LOBYTE(model) = [(REMLModel *)model saveModelToURL:v54 error:&v103];
      v55 = v103;

      v29 = v94;
      v56 = v97;
      if ((model & 1) == 0)
      {
        v75 = RELogForDomain(4);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          [REMLModelManager _saveModelToDisk:];
        }

        goto LABEL_55;
      }

      [(REMLModelManager *)selfCopy2 _saveDataStoresToURL:v25];
      if (selfCopy2->_supportsContentRanking)
      {
        path2 = [v25 path];
        v58 = [path2 stringByAppendingPathComponent:@"content.ctx"];

        defaultManager6 = [MEMORY[0x277CCAA00] defaultManager];
        v102 = v55;
        v60 = [defaultManager6 createDirectoryAtPath:v58 withIntermediateDirectories:1 attributes:0 error:&v102];
        v61 = v102;

        if (v60)
        {
          contentRanker = selfCopy2->_contentRanker;
          v101 = v61;
          v63 = [(REContentRanker *)contentRanker save:v58 error:&v101];
          v52 = v101;

          if (v63)
          {

LABEL_61:
            v77 = v52;
            defaultManager7 = [MEMORY[0x277CCAA00] defaultManager];
            v79 = [MEMORY[0x277CBEBC0] fileURLWithPath:v94];
            v100 = v52;
            v80 = [defaultManager7 replaceItemAtURL:v79 withItemAtURL:v25 backupItemName:0 options:0 resultingItemURL:0 error:&v100];
            v52 = v100;

            if (v80)
            {
              defaultManager8 = [MEMORY[0x277CCAA00] defaultManager];
              path3 = [v25 path];
              v56 = v97;
              if (([defaultManager8 fileExistsAtPath:path3] & 1) == 0)
              {

                v20 = 1;
                v71 = v92;
                v29 = v94;
                goto LABEL_80;
              }

              defaultManager9 = [MEMORY[0x277CCAA00] defaultManager];
              v99 = v52;
              v84 = [defaultManager9 removeItemAtURL:v25 error:&v99];
              v55 = v99;

              v29 = v94;
              if (v84)
              {
                v20 = 1;
                v52 = v55;
LABEL_59:
                v71 = v92;
LABEL_80:

                v42 = v52;
                v30 = v91;
LABEL_81:

                v24 = v42;
                v7 = v56;
                goto LABEL_82;
              }

              v75 = RELogForDomain(4);
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                [REMLModelManager _saveModelToDisk:];
              }

LABEL_55:

              v71 = v92;
              if (disk)
              {
                v76 = v55;
                v20 = 0;
                *disk = v55;
              }

              else
              {
                v20 = 0;
              }

              v52 = v55;
              goto LABEL_80;
            }

            v85 = RELogForDomain(4);
            v56 = v97;
            v71 = v92;
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              [REMLModelManager _saveModelToDisk:];
            }

            v29 = v94;
            if (disk)
            {
              v86 = v52;
              v20 = 0;
              *disk = v52;
              goto LABEL_80;
            }

LABEL_79:
            v20 = 0;
            goto LABEL_80;
          }

          v87 = RELogForDomain(4);
          v71 = v92;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            [REMLModelManager _saveModelToDisk:];
          }
        }

        else
        {
          v52 = v61;
          v71 = v92;
        }

        if (disk)
        {
          v88 = v52;
          *disk = v52;
        }

        goto LABEL_79;
      }

      v52 = v55;
      goto LABEL_61;
    }

    v64 = RELogForDomain(4);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      [REMLModelManager _saveModelToDisk:];
    }

    if (diskCopy2)
    {
      v65 = v24;
      v20 = 0;
      *diskCopy2 = v24;
LABEL_82:

      goto LABEL_83;
    }

    goto LABEL_37;
  }

  v20 = 1;
LABEL_83:
  v89 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)flushTraining
{
  dispatch_assert_queue_not_V2(self->_trainingQueue);
  trainingQueue = self->_trainingQueue;

  dispatch_sync(trainingQueue, &__block_literal_global_73_0);
}

- (void)performTrainingWithFeatureMaps:(id)maps content:(id)content events:(id)events interactions:(id)interactions purgeCaches:(BOOL)caches completion:(id)completion
{
  mapsCopy = maps;
  contentCopy = content;
  eventsCopy = events;
  interactionsCopy = interactions;
  completionCopy = completion;
  if ([mapsCopy count])
  {
    trainingQueue = self->_trainingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__REMLModelManager_performTrainingWithFeatureMaps_content_events_interactions_purgeCaches_completion___block_invoke;
    block[3] = &unk_2785FB4C0;
    cachesCopy = caches;
    v21 = mapsCopy;
    v22 = eventsCopy;
    selfCopy = self;
    v24 = interactionsCopy;
    v25 = contentCopy;
    v26 = completionCopy;
    dispatch_async(trainingQueue, block);
  }
}

void __102__REMLModelManager_performTrainingWithFeatureMaps_content_events_interactions_purgeCaches_completion___block_invoke(uint64_t a1)
{
  *&v36[5] = *MEMORY[0x277D85DE8];
  v29 = *(a1 + 80);
  v2 = 0;
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    do
    {
      v4 = [*(a1 + 32) objectAtIndex:v3];
      v5 = [*(a1 + 40) objectAtIndex:v3];
      v6 = [*(*(a1 + 48) + 40) predictWithFeatures:v4];
      [v6 probability];
      v8 = v7;

      v9 = *(a1 + 48);
      v32 = v2;
      v10 = [v9 createOutputFeatureFromDouble:&v32 error:v8];
      v11 = v32;

      v12 = *(a1 + 48);
      [v5 doubleValue];
      v31 = v11;
      v13 = [v12 createOutputFeatureFromDouble:&v31 error:?];
      v2 = v31;

      [*(*(a1 + 48) + 56) updateMetricsFromFeatures:v4 prediction:v10 truth:v13];
      v14 = [*(a1 + 56) objectAtIndexedSubscript:v3];
      [*(*(a1 + 48) + 40) trainWithFeatures:v4 positiveEvent:v5 interaction:v14];
      v15 = [*(a1 + 64) objectAtIndexedSubscript:v3];
      v16 = v15;
      if (*(*(a1 + 48) + 88) == 1 && [v15 count])
      {
        [*(*(a1 + 48) + 48) train:v16 isPositive:{objc_msgSend(v5, "BOOLValue")}];
      }

      v17 = RELogForDomain(4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __102__REMLModelManager_performTrainingWithFeatureMaps_content_events_interactions_purgeCaches_completion___block_invoke_cold_1(v35, v5, v36, v17);
      }

      ++v3;
    }

    while (v3 < [*(a1 + 32) count]);
  }

  v18 = [MEMORY[0x277CBEAA8] date];
  [v18 timeIntervalSinceDate:*(*(a1 + 48) + 136)];
  v20 = (v19 > 1200.0) | v29;
  if ((v19 > 1200.0) | v29 & 1)
  {
    [*(*(a1 + 48) + 40) _clearCache];
    objc_storeStrong((*(a1 + 48) + 136), v18);
  }

  v21 = *(a1 + 48);
  if (v21[13])
  {
    v22 = v2;
  }

  else
  {
    v30 = v2;
    v23 = [v21 _saveModelToDisk:&v30];
    v22 = v30;

    if (v23)
    {
      v24 = RELogForDomain(4);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        __102__REMLModelManager_performTrainingWithFeatureMaps_content_events_interactions_purgeCaches_completion___block_invoke_cold_2(v24);
      }
    }
  }

  v25 = RELogForDomain(4);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [*(a1 + 32) count];
    *buf = 134217984;
    v34 = v26;
    _os_log_impl(&dword_22859F000, v25, OS_LOG_TYPE_DEFAULT, "Finished training model with events count %lu", buf, 0xCu);
  }

  if (v20)
  {
    [*(a1 + 48) _notifyObserversThatModelUpdated];
  }

  v27 = *(a1 + 72);
  if (v27)
  {
    (*(v27 + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversThatModelUpdated
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__REMLModelManager__notifyObserversThatModelUpdated__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __52__REMLModelManager__notifyObserversThatModelUpdated__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__REMLModelManager__notifyObserversThatModelUpdated__block_invoke_2;
  v4[3] = &unk_2785FB4E8;
  v4[4] = v1;
  return [v2 enumerateObserversWithBlock:v4];
}

- (void)manuallySaveModel
{
  dispatch_assert_queue_not_V2(self->_trainingQueue);
  trainingQueue = self->_trainingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__REMLModelManager_manuallySaveModel__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_sync(trainingQueue, block);
}

void __37__REMLModelManager_manuallySaveModel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0;
  v2 = [v1 _saveModelToDisk:&v6];
  v3 = v6;
  v4 = RELogForDomain(4);
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __102__REMLModelManager_performTrainingWithFeatureMaps_content_events_interactions_purgeCaches_completion___block_invoke_cold_2(v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [REMLModelManager _saveModelToDisk:];
  }
}

- (void)performModelClearWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(RERelevanceEngineSubsystem *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__REMLModelManager_performModelClearWithCompletion___block_invoke;
  v7[3] = &unk_2785F9A40;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __52__REMLModelManager_performModelClearWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__REMLModelManager_performModelClearWithCompletion___block_invoke_2;
  v4[3] = &unk_2785F9A40;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __52__REMLModelManager_performModelClearWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 40) clearModel];
  v2 = objc_alloc_init(REContentRanker);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = *(a1 + 32);
  v8 = 0;
  [v5 _saveModelToDisk:&v8];
  v6 = v8;
  [*(a1 + 32) _notifyObserversThatModelUpdated];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

- (id)comparatorWithRules:(id)rules
{
  v4 = MEMORY[0x277CBEB18];
  rulesCopy = rules;
  array = [v4 array];
  array2 = [MEMORY[0x277CBEB18] array];
  REExtractRules(rulesCopy, array, array2);

  v8 = [REMLElementComparator comparatorWithFilteringRules:array rankingRules:array2 model:self->_model elementsHiddenByDefault:self->_elementsHiddenByDefault];

  return v8;
}

- (id)sentimentAnalyzer
{
  if (self->_supportsContentRanking)
  {
    v3 = [[REMLSentimentAnalyzer alloc] initWithContentRanker:self->_contentRanker];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)predictionForLogicalElement:(id)element
{
  model = self->_model;
  featureMap = [element featureMap];
  v5 = [(REMLModel *)model predictWithFeatures:featureMap];

  return v5;
}

- (void)_loadModelAtPath:mlFeatures:checkModelVersion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to read version: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadModelAtPath:(uint64_t *)a1 mlFeatures:(uint64_t)a2 checkModelVersion:(os_log_t)log .cold.2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218240;
  v6 = a2;
  v7 = 2048;
  v8 = v3;
  _os_log_error_impl(&dword_22859F000, log, OS_LOG_TYPE_ERROR, "Incompatible model version: %llu. Expecting %llu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_loadModelAtPath:mlFeatures:checkModelVersion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to read model: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadModelAtPath:mlFeatures:checkModelVersion:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to read content model: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createOrderFeatureListFromModelFileURL:mlFeatures:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to read features file: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__REMLModelManager__createOrderFeatureListFromModelFileURL_mlFeatures___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_4(&dword_22859F000, a2, a3, "The previous model contained a reference to feature %@ which is missing from the current definition. Features cannot be removed from the model. A temporary feature will be inserted. Future errors won't be logged", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_saveModelToDisk:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to old file model: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveModelToDisk:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to remove temp file: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveModelToDisk:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to create temp directory: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveModelToDisk:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to store version: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveModelToDisk:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to save features: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveModelToDisk:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to save model: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveModelToDisk:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to save content model: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveModelToDisk:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to replace file: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveModelToDisk:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_4(&dword_22859F000, v0, v1, "Unable to remove temp file after completion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __102__REMLModelManager_performTrainingWithFeatureMaps_content_events_interactions_purgeCaches_completion___block_invoke_cold_1(uint8_t *a1, void *a2, __CFString **a3, NSObject *a4)
{
  v7 = [a2 BOOLValue];
  v8 = @"negative";
  if (v7)
  {
    v8 = @"positive";
  }

  *a1 = 138412290;
  *a3 = v8;
  _os_log_debug_impl(&dword_22859F000, a4, OS_LOG_TYPE_DEBUG, "Training with event: %@", a1, 0xCu);
}

@end