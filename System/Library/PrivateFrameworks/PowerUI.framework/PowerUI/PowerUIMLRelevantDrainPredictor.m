@interface PowerUIMLRelevantDrainPredictor
- (BOOL)isStartSecondsValue:(double)a3 withinDynamicBinWindowOfLength:(int)a4 aroundCurrentStartSecondValue:(double)a5;
- (BOOL)isStartSoCValue:(double)a3 withinDynamicBinWindowOfLength:(int)a4 aroundCurrentStartSoCValue:(double)a5;
- (MLModel)relevantDrainPredictorModel;
- (PowerUIMLRelevantDrainPredictor)initWithDefaultsDomain:(id)a3 withContextStore:(id)a4 withTrialManager:(id)a5;
- (id)analyticsEventFromFeatures:(id)a3;
- (id)featuresForChargeSessionAtDate:(id)a3 withChargeStartSoC:(id)a4 withChargeAndDrainSessionHistory:(id)a5;
- (id)loadModelFromBundle:(id)a3;
- (id)predictedRelevantDrainAfterChargeSessionAtDate:(id)a3 withChargeStartSoC:(id)a4;
- (id)predictedRelevantDrainWithFeatures:(id)a3 forSchemes:(id)a4;
- (id)predictedRelevantDrainwithFeatures:(id)a3;
- (id)predictedRelevantDrainwithFeatures:(id)a3 forModel:(id)a4 withThreshold:(id)a5;
- (id)relevantDrainPredictorModelForPhoneFirstStage80Limit;
- (id)relevantDrainPredictorModelForPhoneFirstStage95Limit;
- (id)relevantDrainPredictorModelForPhoneSecondStage80Limit;
- (id)relevantDrainPredictorModelForPhoneSecondStage95Limit;
- (void)addStatisticalSummaryFeaturesintoFeatureDictionary:(id)a3 forDataFrame:(id)a4 withFeatureNameSuffix:(id)a5 whereDimension:(id)a6 isFilteredWithHandler:(id)a7;
- (void)relevantDrainPredictorModel;
@end

@implementation PowerUIMLRelevantDrainPredictor

- (PowerUIMLRelevantDrainPredictor)initWithDefaultsDomain:(id)a3 withContextStore:(id)a4 withTrialManager:(id)a5
{
  v8 = a3;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = PowerUIMLRelevantDrainPredictor;
  v10 = [(PowerUIMLRelevantDrainPredictor *)&v20 init];
  if (v10)
  {
    v11 = os_log_create("com.apple.powerui.smartcharging", "mlrelevantdrainpredictor");
    log = v10->_log;
    v10->_log = v11;

    objc_storeStrong(&v10->_defaultsDomain, a3);
    objc_storeStrong(&v10->_trialManager, a5);
    v13 = [&unk_282D4EDE0 allKeys];
    v14 = kDimensions;
    kDimensions = v13;

    v15 = [&unk_282D4EE08 allKeys];
    v16 = kMeasures;
    kMeasures = v15;

    v10->_loadModelLock._os_unfair_lock_opaque = 0;
    v10->_threshold = 0.192;
    v17 = objc_opt_new();
    modelCache = v10->_modelCache;
    v10->_modelCache = v17;
  }

  return v10;
}

- (id)loadModelFromBundle:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_modelCache objectForKey:v4];
  if (!v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 pathForResource:v4 ofType:@"mlmodelc"];
    v9 = [v6 fileURLWithPath:v8];

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Loading model from %@", buf, 0xCu);
    }

    v21 = 0;
    v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v9 error:&v21];
    v11 = v21;
    v12 = self->_log;
    if (v11)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [(PowerUIMLRelevantDrainPredictor *)v11 loadModelFromBundle:v12, v13, v14, v15, v16, v17, v18];
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "model successfully loaded", buf, 2u);
    }

    [(NSMutableDictionary *)self->_modelCache setObject:v5 forKeyedSubscript:v4];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)relevantDrainPredictorModelForPhoneFirstStage80Limit
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [(PowerUIMLRelevantDrainPredictor *)self loadModelFromBundle:@"deoc_iphone_80"];
  v6[0] = @"model";
  v6[1] = @"threshold";
  v7[0] = v2;
  v7[1] = &unk_282D4F0E0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)relevantDrainPredictorModelForPhoneFirstStage95Limit
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [(PowerUIMLRelevantDrainPredictor *)self loadModelFromBundle:@"deoc_iphone_95"];
  v6[0] = @"model";
  v6[1] = @"threshold";
  v7[0] = v2;
  v7[1] = &unk_282D4F0F0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)relevantDrainPredictorModelForPhoneSecondStage80Limit
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [(PowerUIMLRelevantDrainPredictor *)self loadModelFromBundle:@"deoc_two_stage_sequential_low_second"];
  v6[0] = @"model";
  v6[1] = @"threshold";
  v7[0] = v2;
  v7[1] = &unk_282D4F100;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)relevantDrainPredictorModelForPhoneSecondStage95Limit
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [(PowerUIMLRelevantDrainPredictor *)self loadModelFromBundle:@"deoc_two_stage_sequential_high_second"];
  v6[0] = @"model";
  v6[1] = @"threshold";
  v7[0] = v2;
  v7[1] = &unk_282D4F110;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (MLModel)relevantDrainPredictorModel
{
  v53 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_loadModelLock);
  if (!self->_relevantDrainPredictorModel)
  {
    v3 = [(PowerUITrialManager *)self->_trialManager factorForName:@"phoneDEoCModel"];
    v4 = [(PowerUITrialManager *)self->_trialManager factorForName:@"thresholdForPhoneDEoCModel"];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v3;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Attempting to load model from Trial at path %@", buf, 0xCu);
    }

    trialManager = self->_trialManager;
    v7 = [v3 fileValue];
    v8 = [v7 path];
    v9 = [(PowerUITrialManager *)trialManager loadModelFromPath:v8 deleteExistingFiles:1];

    v10 = self->_log;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Trial DEoC model loading successful", buf, 2u);
      }

      v11 = v9;
      relevantDrainPredictorModel = self->_relevantDrainPredictorModel;
      self->_relevantDrainPredictorModel = v11;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(PowerUIMLRelevantDrainPredictor *)v10 relevantDrainPredictorModel:v13];
      }

      v20 = MEMORY[0x277CBEBC0];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 pathForResource:@"deoc_model_iphone" ofType:@"mlmodelc"];
      v23 = [v20 fileURLWithPath:v22];

      v48 = 0;
      v24 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v23 error:&v48];
      relevantDrainPredictorModel = v48;
      v25 = self->_relevantDrainPredictorModel;
      self->_relevantDrainPredictorModel = v24;

      v26 = self->_log;
      if (relevantDrainPredictorModel)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(PowerUIMLRelevantDrainPredictor *)relevantDrainPredictorModel relevantDrainPredictorModel:v26];
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v26, OS_LOG_TYPE_DEFAULT, "DEoC model loaded from local file path", buf, 2u);
      }
    }

    [v4 doubleValue];
    if (v33 != 0.0)
    {
      v34 = v33;
      v35 = self->_log;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = MEMORY[0x277CCABB0];
        v37 = v35;
        v38 = [v36 numberWithDouble:v34];
        *buf = 138412290;
        v50 = v38;
        _os_log_impl(&dword_21B766000, v37, OS_LOG_TYPE_DEFAULT, "Loaded threshold from Trial: %@", buf, 0xCu);
      }

      self->_threshold = v34;
    }
  }

  os_unfair_lock_unlock(&self->_loadModelLock);
  v39 = self->_log;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = self->_relevantDrainPredictorModel;
    v41 = v39;
    v42 = [(MLModel *)v40 modelDescription];
    v43 = [v42 metadata];
    threshold = self->_threshold;
    *buf = 138412546;
    v50 = v43;
    v51 = 2048;
    v52 = threshold;
    _os_log_impl(&dword_21B766000, v41, OS_LOG_TYPE_DEFAULT, "Model loaded with metadata %@ \n and threshold %f", buf, 0x16u);
  }

  v45 = self->_relevantDrainPredictorModel;
  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)featuresForChargeSessionAtDate:(id)a3 withChargeStartSoC:(id)a4 withChargeAndDrainSessionHistory:(id)a5
{
  v163 = *MEMORY[0x277D85DE8];
  v88 = a3;
  v84 = a4;
  v8 = a5;
  v91 = objc_opt_new();
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v151 objects:v162 count:16];
  if (v9)
  {
    v10 = *v152;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v152 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v151 + 1) + 8 * i) mutableCopy];
        [v91 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v151 objects:v162 count:16];
    }

    while (v9);
  }

  if ([v91 count] >= 3)
  {
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v93 = v91;
    v13 = [v93 countByEnumeratingWithState:&v147 objects:v161 count:16];
    if (v13)
    {
      v14 = *v148;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v148 != v14)
          {
            objc_enumerationMutation(v93);
          }

          v16 = *(*(&v147 + 1) + 8 * j);
          v17 = [v16 objectForKeyedSubscript:@"start"];
          v18 = [PowerUIPredictorHelper convertDateToSeconds:v17];
          [v16 setObject:v18 forKeyedSubscript:@"charge_start_secs"];
        }

        v13 = [v93 countByEnumeratingWithState:&v147 objects:v161 count:16];
      }

      while (v13);
    }

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v19 = kMeasures;
    v20 = [v19 countByEnumeratingWithState:&v143 objects:v160 count:16];
    if (v20)
    {
      v21 = *v144;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v144 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v143 + 1) + 8 * k);
          v24 = [&unk_282D4EE30 objectForKeyedSubscript:v23];
          [PowerUIPredictorHelper quantizeValuesInDataFrame:v93 forColumn:v23 withBinWidth:v24];
        }

        v20 = [v19 countByEnumeratingWithState:&v143 objects:v160 count:16];
      }

      while (v20);
    }

    v95 = objc_opt_new();
    v25 = [PowerUIPredictorHelper convertDateToSeconds:v88];
    [v25 doubleValue];
    v27 = v26;

    v28 = [&unk_282D4EE58 objectForKeyedSubscript:@"charge_start_secs"];
    v29 = [v28 integerValue];

    v94 = v27;
    v30 = v27 / v29;
    v31 = [MEMORY[0x277CCABB0] numberWithInt:v30];
    [v95 setObject:v31 forKeyedSubscript:@"curr_charge_start_secs_bin"];

    [v84 doubleValue];
    v33 = v32;
    v34 = [&unk_282D4EE80 objectForKeyedSubscript:@"charge_start_soc"];
    v35 = [v34 integerValue];

    v86 = v33 / v35;
    v36 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v95 setObject:v36 forKeyedSubscript:@"curr_charge_start_soc_bin"];

    v139 = 0;
    v140 = &v139;
    v141 = 0x2020000000;
    v142 = 0;
    v135 = 0;
    v136 = &v135;
    v137 = 0x2020000000;
    v138 = 0;
    v37 = [&unk_282D4EEA8 objectForKeyedSubscript:@"charge_start_secs"];
    v38 = [v37 integerValue];
    v39 = v30;
    v140[3] = v38 * v30;

    v40 = [&unk_282D4EED0 objectForKeyedSubscript:@"charge_start_secs"];
    v41 = [v40 integerValue];
    v136[3] = v39 + v39 * v41;

    v134[0] = MEMORY[0x277D85DD0];
    v134[1] = 3221225472;
    v134[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke;
    v134[3] = &unk_2782D4900;
    v134[4] = &v139;
    v134[5] = &v135;
    [(PowerUIMLRelevantDrainPredictor *)self addStatisticalSummaryFeaturesintoFeatureDictionary:v95 forDataFrame:v93 withFeatureNameSuffix:@"static_bin" whereDimension:@"charge_start_secs" isFilteredWithHandler:v134];
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v42 = 0;
    v43 = [&unk_282D4EA58 countByEnumeratingWithState:&v130 objects:v159 count:16];
    if (v43)
    {
      v44 = *v131;
      do
      {
        v45 = 0;
        v46 = v42;
        do
        {
          if (*v131 != v44)
          {
            objc_enumerationMutation(&unk_282D4EA58);
          }

          v47 = *(*(&v130 + 1) + 8 * v45);
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_2;
          v128[3] = &unk_2782D4928;
          v128[4] = self;
          v128[5] = v47;
          v129 = v94;
          v42 = MEMORY[0x21CEF8A60](v128);

          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"dynamic_bin_%@", v47];
          [(PowerUIMLRelevantDrainPredictor *)self addStatisticalSummaryFeaturesintoFeatureDictionary:v95 forDataFrame:v93 withFeatureNameSuffix:v48 whereDimension:@"charge_start_secs" isFilteredWithHandler:v42];

          ++v45;
          v46 = v42;
        }

        while (v43 != v45);
        v43 = [&unk_282D4EA58 countByEnumeratingWithState:&v130 objects:v159 count:16];
      }

      while (v43);
    }

    v92 = v42;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v127 = 0;
    v120 = 0;
    v121 = &v120;
    v122 = 0x2020000000;
    v123 = 0;
    v49 = [&unk_282D4EEF8 objectForKeyedSubscript:@"charge_start_soc"];
    v50 = [v49 integerValue];
    v125[3] = v50 * v86;

    v51 = [&unk_282D4EF20 objectForKeyedSubscript:@"charge_start_soc"];
    v52 = [v51 integerValue];
    v121[3] = v86 + v86 * v52;

    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_3;
    v119[3] = &unk_2782D4900;
    v119[4] = &v124;
    v119[5] = &v120;
    [(PowerUIMLRelevantDrainPredictor *)self addStatisticalSummaryFeaturesintoFeatureDictionary:v95 forDataFrame:v93 withFeatureNameSuffix:@"static_bin" whereDimension:@"charge_start_soc" isFilteredWithHandler:v119];
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v53 = [&unk_282D4EA58 countByEnumeratingWithState:&v115 objects:v158 count:16];
    if (v53)
    {
      v54 = *v116;
      do
      {
        v55 = 0;
        v56 = v92;
        do
        {
          if (*v116 != v54)
          {
            objc_enumerationMutation(&unk_282D4EA58);
          }

          v57 = *(*(&v115 + 1) + 8 * v55);
          v113[0] = MEMORY[0x277D85DD0];
          v113[1] = 3221225472;
          v113[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_4;
          v113[3] = &unk_2782D4928;
          v113[4] = self;
          v113[5] = v57;
          v114 = v33;
          v92 = MEMORY[0x21CEF8A60](v113);

          v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"dynamic_bin_%@", v57];
          [(PowerUIMLRelevantDrainPredictor *)self addStatisticalSummaryFeaturesintoFeatureDictionary:v95 forDataFrame:v93 withFeatureNameSuffix:v58 whereDimension:@"charge_start_soc" isFilteredWithHandler:v92];

          ++v55;
          v56 = v92;
        }

        while (v53 != v55);
        v53 = [&unk_282D4EA58 countByEnumeratingWithState:&v115 objects:v158 count:16];
      }

      while (v53);
    }

    for (m = 1; m != 4; ++m)
    {
      v60 = [v93 objectAtIndex:{objc_msgSend(v93, "count") - m}];
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v61 = kMeasures;
      v62 = [v61 countByEnumeratingWithState:&v109 objects:v157 count:16];
      if (v62)
      {
        v63 = *v110;
        do
        {
          for (n = 0; n != v62; ++n)
          {
            if (*v110 != v63)
            {
              objc_enumerationMutation(v61);
            }

            v65 = *(*(&v109 + 1) + 8 * n);
            v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"prev_%d_%@", m, v65];
            v67 = [v60 objectForKeyedSubscript:v65];
            [v95 setObject:v67 forKeyedSubscript:v66];
          }

          v62 = [v61 countByEnumeratingWithState:&v109 objects:v157 count:16];
        }

        while (v62);
      }
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v68 = [&unk_282D4EA70 countByEnumeratingWithState:&v105 objects:v156 count:16];
    v69 = v93;
    if (v68)
    {
      v70 = 0;
      v85 = *v106;
      v87 = v68;
      do
      {
        for (ii = 0; ii != v87; ++ii)
        {
          if (*v106 != v85)
          {
            objc_enumerationMutation(&unk_282D4EA70);
          }

          v71 = [*(*(&v105 + 1) + 8 * ii) integerValue];
          v102[0] = MEMORY[0x277D85DD0];
          v102[1] = 3221225472;
          v102[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_5;
          v102[3] = &unk_2782D4950;
          v103 = v88;
          v104 = v71;
          v72 = [PowerUIPredictorHelper filterDataFrame:v69 forColumn:@"start" withFilterHandler:v102];
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v73 = [&unk_282D4EA88 countByEnumeratingWithState:&v98 objects:v155 count:16];
          if (v73)
          {
            v74 = *v99;
            do
            {
              for (jj = 0; jj != v73; ++jj)
              {
                if (*v99 != v74)
                {
                  objc_enumerationMutation(&unk_282D4EA88);
                }

                v76 = [*(*(&v98 + 1) + 8 * jj) integerValue];
                v97[0] = MEMORY[0x277D85DD0];
                v97[1] = 3221225472;
                v97[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_6;
                v97[3] = &__block_descriptor_40_e8_B16__0_8l;
                v97[4] = v76;
                v77 = [PowerUIPredictorHelper filterDataFrame:v72 forColumn:@"drain_depth" withFilterHandler:v97];
                v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"n_drain_below_%lu_%lddays", v76, v71];

                v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v77, "count")}];
                [v95 setObject:v79 forKeyedSubscript:v78];

                v96[0] = MEMORY[0x277D85DD0];
                v96[1] = 3221225472;
                v96[2] = __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_7;
                v96[3] = &__block_descriptor_40_e8_B16__0_8l;
                v96[4] = v76;
                v80 = [PowerUIPredictorHelper filterDataFrame:v72 forColumn:@"drain_depth" withFilterHandler:v96];
                v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"n_drain_above_%lu_%lddays", v76, v71];

                v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v80, "count")}];
                [v95 setObject:v81 forKeyedSubscript:v70];
              }

              v73 = [&unk_282D4EA88 countByEnumeratingWithState:&v98 objects:v155 count:16];
            }

            while (v73);
          }

          v69 = v93;
        }

        v87 = [&unk_282D4EA70 countByEnumeratingWithState:&v105 objects:v156 count:16];
      }

      while (v87);
    }

    else
    {
      v70 = 0;
    }

    _Block_object_dispose(&v120, 8);
    _Block_object_dispose(&v124, 8);

    _Block_object_dispose(&v135, 8);
    _Block_object_dispose(&v139, 8);
  }

  else
  {
    v95 = MEMORY[0x277CBEC10];
  }

  v82 = *MEMORY[0x277D85DE8];

  return v95;
}

uint64_t __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 doubleValue];
  v5 = v4;
  v6 = [*(a1 + 40) integerValue];
  v7 = *(a1 + 48);

  return [v3 isStartSecondsValue:v6 withinDynamicBinWindowOfLength:v5 aroundCurrentStartSecondValue:v7];
}

uint64_t __118__PowerUIMLRelevantDrainPredictor_featuresForChargeSessionAtDate_withChargeStartSoC_withChargeAndDrainSessionHistory___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 doubleValue];
  v5 = v4;
  v6 = [*(a1 + 40) integerValue];
  v7 = *(a1 + 48);

  return [v3 isStartSoCValue:v6 withinDynamicBinWindowOfLength:v5 aroundCurrentStartSoCValue:v7];
}

- (BOOL)isStartSecondsValue:(double)a3 withinDynamicBinWindowOfLength:(int)a4 aroundCurrentStartSecondValue:(double)a5
{
  v7 = a4;
  v8 = [&unk_282D4EF48 objectForKeyedSubscript:@"charge_start_secs"];
  v9 = (a5 - ([v8 integerValue] * v7));

  v10 = [&unk_282D4EF70 objectForKeyedSubscript:@"charge_start_secs"];
  v11 = (([v10 integerValue] * v7) + a5);

  if ((v9 & 0x80000000) != 0)
  {
    v15 = a3 >= 0.0;
    if (v11 <= a3)
    {
      v15 = 0;
    }

    return (v9 + 86400 * (-v9 / 0x15180)) <= a3 || v15;
  }

  else
  {
    v12 = v9;
    if (v11 < 86401)
    {
      return v11 > a3 && v12 <= a3;
    }

    else
    {
      v13 = a3 < 86400.0;
      if (v12 > a3)
      {
        v13 = 0;
      }

      return (v11 % 0x15180u) > a3 || v13;
    }
  }
}

- (BOOL)isStartSoCValue:(double)a3 withinDynamicBinWindowOfLength:(int)a4 aroundCurrentStartSoCValue:(double)a5
{
  v7 = a4;
  v8 = [&unk_282D4EF98 objectForKeyedSubscript:@"charge_start_soc"];
  v9 = (a5 - ([v8 integerValue] * v7));

  v10 = [&unk_282D4EFC0 objectForKeyedSubscript:@"charge_start_soc"];
  v11 = (([v10 integerValue] * v7) + a5);

  if (v11 >= 100)
  {
    v12 = 100;
  }

  else
  {
    v12 = v11;
  }

  return v12 > a3 && (v9 & ~(v9 >> 31)) <= a3;
}

- (void)addStatisticalSummaryFeaturesintoFeatureDictionary:(id)a3 forDataFrame:(id)a4 withFeatureNameSuffix:(id)a5 whereDimension:(id)a6 isFilteredWithHandler:(id)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v34 = a5;
  v11 = a6;
  v12 = [PowerUIPredictorHelper filterDataFrame:a4 forColumn:v11 withFilterHandler:a7];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = kMeasures;
  v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v32)
  {
    v13 = 0;
    v31 = *v41;
    do
    {
      v14 = 0;
      do
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v14;
        v15 = *(*(&v40 + 1) + 8 * v14);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v16 = [&unk_282D4EA40 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v37;
          do
          {
            v19 = 0;
            v20 = v13;
            do
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(&unk_282D4EA40);
              }

              [*(*(&v36 + 1) + 8 * v19) doubleValue];
              v22 = v21;
              v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_p_%d_%d%d_at_%@_curr_%@", v15, v21, ((v21 * 10.0) % 10), ((v21 * 100.0) % 10), v11, v34];

              v23 = [PowerUIPredictorHelper percentile:v15 forColumn:v12 inDataFrame:v22];
              [v35 setObject:v23 forKeyedSubscript:v13];

              ++v19;
              v20 = v13;
            }

            while (v17 != v19);
            v17 = [&unk_282D4EA40 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v17);
        }

        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_count_at_%@_curr_%@", v15, v11, v34];

        v25 = [PowerUIPredictorHelper countForColumn:v15 inDataFrame:v12];
        [v35 setObject:v25 forKeyedSubscript:v24];

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_mean_at_%@_curr_%@", v15, v11, v34];

        v27 = [PowerUIPredictorHelper meanForColumn:v15 inDataFrame:v12];
        [v35 setObject:v27 forKeyedSubscript:v26];

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_var_at_%@_curr_%@", v15, v11, v34];

        v28 = [PowerUIPredictorHelper varianceForColumn:v15 inDataFrame:v12];
        [v35 setObject:v28 forKeyedSubscript:v13];

        v14 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v32);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)predictedRelevantDrainAfterChargeSessionAtDate:(id)a3 withChargeStartSoC:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PowerUISmartChargeUtilities drainSessionsInfoBetweenRelevantChargesBefore:v7 withMinimumDuration:0.0];
  v9 = [(PowerUIMLRelevantDrainPredictor *)self featuresForChargeSessionAtDate:v7 withChargeStartSoC:v6 withChargeAndDrainSessionHistory:v8];

  v10 = [(PowerUIMLRelevantDrainPredictor *)self predictedRelevantDrainwithFeatures:v9];

  return v10;
}

- (id)predictedRelevantDrainWithFeatures:(id)a3 forSchemes:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v53 = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v8)
  {
    v52 = *v56;
    v48 = v6;
    v50 = self;
    while (2)
    {
      v9 = 0;
      v10 = v8;
      v49 = v8;
      do
      {
        if (*v56 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v55 + 1) + 8 * v9);
        v54 = objc_opt_new();
        v12 = [v11 integerValue];
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v13 = [(PowerUIMLRelevantDrainPredictor *)self relevantDrainPredictorModelForPhoneFirstStage80Limit];
            v28 = [v13 objectForKeyedSubscript:@"model"];
            v29 = [v13 objectForKeyedSubscript:@"threshold"];
            [(PowerUIMLRelevantDrainPredictor *)self predictedRelevantDrainwithFeatures:v6 forModel:v28 withThreshold:v29];
            v23 = v30 = self;

            [v23 setSuggestedLimitForSignificantDrain:80];
            if ([v23 significantDrainAhead])
            {
              v31 = [(PowerUIMLRelevantDrainPredictor *)v30 relevantDrainPredictorModelForPhoneSecondStage95Limit];
              v32 = [v31 objectForKeyedSubscript:@"model"];
              v33 = [v31 objectForKeyedSubscript:@"threshold"];
              v17 = [(PowerUIMLRelevantDrainPredictor *)v30 predictedRelevantDrainwithFeatures:v48 forModel:v32 withThreshold:v33];

              v6 = v48;
              v24 = v49;
              [v17 setSuggestedLimitForSignificantDrain:95];
              [v17 setPrevStageResult:v23];
            }

            else
            {
              v17 = v23;
              v24 = v10;
              v31 = v54;
            }
          }

          else
          {
            if (v12 != 4)
            {
LABEL_30:
              log = self->_log;
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                [PowerUIMLRelevantDrainPredictor predictedRelevantDrainWithFeatures:? forSchemes:?];
              }

              goto LABEL_33;
            }

            v13 = [(PowerUIMLRelevantDrainPredictor *)self relevantDrainPredictorModelForPhoneFirstStage95Limit];
            v20 = [v13 objectForKeyedSubscript:@"model"];
            v21 = [v13 objectForKeyedSubscript:@"threshold"];
            [(PowerUIMLRelevantDrainPredictor *)self predictedRelevantDrainwithFeatures:v6 forModel:v20 withThreshold:v21];
            v23 = v22 = self;

            [v23 setSuggestedLimitForSignificantDrain:95];
            if ([v23 significantDrainAhead])
            {
              v17 = v23;
              v24 = v49;
              v25 = v54;
            }

            else
            {
              [(PowerUIMLRelevantDrainPredictor *)v22 relevantDrainPredictorModelForPhoneSecondStage80Limit];
              v35 = v34 = v6;
              v36 = [v35 objectForKeyedSubscript:@"model"];
              v37 = [v35 objectForKeyedSubscript:@"threshold"];
              v38 = [(PowerUIMLRelevantDrainPredictor *)v22 predictedRelevantDrainwithFeatures:v34 forModel:v36 withThreshold:v37];

              [v38 setSuggestedLimitForSignificantDrain:80];
              v39 = [v38 significantDrainAhead];
              v40 = v23;
              if ((v39 & 1) == 0)
              {
                [v38 setPrevStageResult:v23];
                v40 = v38;
              }

              v17 = v40;

              v25 = v35;
              v6 = v48;
              v24 = v49;
            }
          }

          v15 = v50;
        }

        else
        {
          if (v12 == 1)
          {
            v13 = [(PowerUIMLRelevantDrainPredictor *)self relevantDrainPredictorModelForPhoneFirstStage80Limit];
            v26 = [v13 objectForKeyedSubscript:@"model"];
            [v13 objectForKeyedSubscript:@"threshold"];
            v27 = v15 = self;
            v17 = [(PowerUIMLRelevantDrainPredictor *)v15 predictedRelevantDrainwithFeatures:v6 forModel:v26 withThreshold:v27];

            v18 = v17;
            v19 = 80;
          }

          else
          {
            if (v12 != 2)
            {
              goto LABEL_30;
            }

            v13 = [(PowerUIMLRelevantDrainPredictor *)self relevantDrainPredictorModelForPhoneFirstStage95Limit];
            v14 = [v13 objectForKeyedSubscript:@"model"];
            [v13 objectForKeyedSubscript:@"threshold"];
            v16 = v15 = self;
            v17 = [(PowerUIMLRelevantDrainPredictor *)v15 predictedRelevantDrainwithFeatures:v6 forModel:v14 withThreshold:v16];

            v18 = v17;
            v19 = 95;
          }

          [v18 setSuggestedLimitForSignificantDrain:{v19, v48}];
          v24 = v10;
        }

        [v17 setScheme:{objc_msgSend(v11, "integerValue")}];
        v41 = v15->_log;
        self = v15;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v41;
          v43 = [v17 predictionSchemeString];
          *buf = 138412290;
          v60 = v43;
          _os_log_impl(&dword_21B766000, v42, OS_LOG_TYPE_DEFAULT, "Predicted for scheme: %@", buf, 0xCu);
        }

        v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "integerValue", v48)}];
        [v53 setObject:v17 forKeyedSubscript:v44];

        ++v9;
        v10 = v24;
      }

      while (v24 != v9);
      v8 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  v46 = *MEMORY[0x277D85DE8];

  return v53;
}

- (id)predictedRelevantDrainwithFeatures:(id)a3
{
  v3 = [(PowerUIMLRelevantDrainPredictor *)self predictedRelevantDrainWithFeatures:a3 forSchemes:&unk_282D4EAA0];
  v4 = [v3 allValues];
  v5 = [v4 firstObject];

  return v5;
}

- (id)predictedRelevantDrainwithFeatures:(id)a3 forModel:(id)a4 withThreshold:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  [v10 doubleValue];
  [v11 setThreshold:?];
  if (v8)
  {
    v12 = [v8 allKeys];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v8 error:0];
      v29 = 0;
      v15 = [v9 predictionFromFeatures:v14 error:&v29];
      v16 = v29;
      if (v16)
      {
        v17 = v16;
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v17;
          _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Error in prediction %@", buf, 0xCu);
        }

        v19 = v15;
      }

      else
      {
        v20 = [v15 featureValueForName:@"classProbability"];
        v19 = [v20 dictionaryValue];

        v21 = [v19 objectForKeyedSubscript:&unk_282D4E398];
        [v21 doubleValue];
        v23 = v22;

        [v11 setConfidence:v23];
        [v10 doubleValue];
        [v11 setThreshold:?];
        [v11 confidence];
        v25 = v24;
        [v11 threshold];
        [v11 setSignificantDrainAhead:v25 >= v26];
        v17 = v15;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)analyticsEventFromFeatures:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v20 = [MEMORY[0x277CBEB38] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = [&unk_282D4EA70 countByEnumeratingWithState:&v29 objects:v34 count:16];
  v3 = 0;
  v4 = 0;
  if (v18)
  {
    v17 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(&unk_282D4EA70);
        }

        v19 = v5;
        v23 = *(*(&v29 + 1) + 8 * v5);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v24 = [&unk_282D4EA88 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v24)
        {
          v22 = *v26;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v26 != v22)
              {
                objc_enumerationMutation(&unk_282D4EA88);
              }

              v7 = *(*(&v25 + 1) + 8 * i);
              v8 = [v23 integerValue];
              v9 = [v7 integerValue];
              v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"n_drain_below_%lu_%lddays", v9, v8];

              v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ndays_below_%lu_%lddays", v9, v8];

              v12 = [v21 objectForKeyedSubscript:v10];
              [v20 setObject:v12 forKeyedSubscript:v11];

              v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"n_drain_above_%lu_%lddays", v9, v8];

              v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"ndays_above_%lu_%lddays", v9, v8];

              v13 = [v21 objectForKeyedSubscript:v4];
              [v20 setObject:v13 forKeyedSubscript:v3];
            }

            v24 = [&unk_282D4EA88 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v24);
        }

        ++v5;
      }

      while (v19 + 1 != v18);
      v18 = [&unk_282D4EA70 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v18);
  }

  v14 = v20;

  v15 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)loadModelFromBundle:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_21B766000, a2, a3, "Error loading model %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)relevantDrainPredictorModel
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_21B766000, a2, a3, "Error loading model from path: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end