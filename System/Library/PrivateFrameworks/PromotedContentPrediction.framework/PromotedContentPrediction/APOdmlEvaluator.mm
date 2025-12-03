@interface APOdmlEvaluator
- (APOdmlEvaluator)initWithTrainingRowBuilder:(id)builder recipe:(id)recipe modelURL:(id)l;
- (BOOL)_setError:(id *)error errorCode:(int64_t)code;
- (id)_generateMetricsForBatch:(id)batch preTraining:(id)training postTraining:(id)postTraining tapAndImpressions:(id)impressions pttrDeltas:(id)deltas;
- (id)evaluate:(id *)evaluate;
@end

@implementation APOdmlEvaluator

- (APOdmlEvaluator)initWithTrainingRowBuilder:(id)builder recipe:(id)recipe modelURL:(id)l
{
  builderCopy = builder;
  recipeCopy = recipe;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = APOdmlEvaluator;
  v12 = [(APOdmlEvaluator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_builder, builder);
    objc_storeStrong(&v13->_recipe, recipe);
    objc_storeStrong(&v13->_modelURL, l);
    v13->_trainingSetSize = 0;
  }

  return v13;
}

- (id)evaluate:(id *)evaluate
{
  v267[1] = *MEMORY[0x277D85DE8];
  v5 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v263 = objc_opt_class();
    v6 = *v263;
    _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_DEBUG, "[%@] Evaluation begins.", buf, 0xCu);
  }

  v7 = MEMORY[0x277CBFF20];
  v10 = objc_msgSend_modelURL(self, v8, v9);
  v12 = objc_msgSend_modelFromCompiledURL_isCPUOnly_(v7, v11, v10, 0);

  v15 = objc_msgSend_recipe(self, v13, v14);
  v18 = objc_msgSend_coreMLRecipe(v15, v16, v17);

  v19 = MEMORY[0x277CBEB98];
  v22 = objc_msgSend_outputNames(v18, v20, v21);
  v24 = objc_msgSend_setWithArray_(v19, v23, v22);

  v27 = objc_msgSend_recipe(self, v25, v26);
  v30 = objc_msgSend_shouldShuffle(v27, v28, v29);
  v33 = objc_msgSend_BOOLValue(v30, v31, v32);

  if (v33)
  {
    v36 = objc_msgSend_configuration(v12, v34, v35);
    v39 = objc_msgSend_shuffle(MEMORY[0x277CBFF58], v37, v38);
    v266 = v39;
    v267[0] = MEMORY[0x277CBEC38];
    v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v267, &v266, 1);
    objc_msgSend_setParameters_(v36, v42, v41);

    objc_msgSend_setConfiguration_(v12, v43, v36);
  }

  v44 = objc_msgSend_inputNames(v18, v34, v35);
  v47 = objc_msgSend_builder(self, v45, v46);
  objc_msgSend_addRequiredFeatures_(v47, v48, v44);

  v51 = objc_msgSend_builder(self, v49, v50);
  v53 = objc_msgSend_generateTrainingSet_(v51, v52, evaluate);

  if (!v53 || !objc_msgSend_count(v53, v54, v55))
  {
    v98 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v98, OS_LOG_TYPE_ERROR, "Failed to find any training rows.", buf, 2u);
    }

    if (!evaluate || *evaluate)
    {
      goto LABEL_27;
    }

    v100 = &kAPODMLDESPluginNoDataToEvaluate;
LABEL_26:
    objc_msgSend__setError_errorCode_(self, v99, evaluate, *v100);
LABEL_27:
    v96 = 0;
    goto LABEL_85;
  }

  v56 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v263 = v53;
    _os_log_impl(&dword_260ECB000, v56, OS_LOG_TYPE_DEBUG, "Generated the following training rows: %@", buf, 0xCu);
  }

  v59 = objc_msgSend_count(v53, v57, v58);
  objc_msgSend_setTrainingSetSize_(self, v60, v59);
  v63 = objc_msgSend_recipe(self, v61, v62);
  v66 = objc_msgSend_batchSize(v63, v64, v65);
  v69 = objc_msgSend_unsignedIntegerValue(v66, v67, v68);

  if (!v69)
  {
    v101 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v101, OS_LOG_TYPE_ERROR, "Batch size should not be zero.", buf, 2u);
    }

    v100 = &kAPODMLDESPluginBatchSizeZero;
    goto LABEL_26;
  }

  v248 = v44;
  v72 = objc_msgSend_trainingSetSize(self, v70, v71);
  if (v72 < v69)
  {
    v69 = v72;
  }

  v73 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v263 = v69;
    _os_log_impl(&dword_260ECB000, v73, OS_LOG_TYPE_DEBUG, "Batch size required: %ld", buf, 0xCu);
  }

  v74 = objc_alloc(MEMORY[0x277CBFEB0]);
  v250 = v53;
  v76 = objc_msgSend_subarrayWithRange_(v53, v75, 0, v69);
  v78 = objc_msgSend_initWithFeatureProviderArray_(v74, v77, v76);

  v79 = objc_alloc(MEMORY[0x277CBFF70]);
  v82 = objc_msgSend_program(v12, v80, v81);
  v85 = objc_msgSend_recipe(self, v83, v84);
  v88 = objc_msgSend_learningRate(v85, v86, v87);
  objc_msgSend_doubleValue(v88, v89, v90);
  v259 = 0;
  v92 = objc_msgSend_initWithProgram_learningRate_error_(v79, v91, v82, &v259);
  v93 = v259;

  if (v93)
  {
    v95 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v263 = v93;
      _os_log_impl(&dword_260ECB000, v95, OS_LOG_TYPE_ERROR, "Failed to init trainer. Reason: %@", buf, 0xCu);
    }

    v96 = 0;
    i = v92;
    goto LABEL_84;
  }

  v258 = 0;
  v239 = objc_msgSend_evaluateUsingTestData_evaluationMetricNames_error_(v92, v94, v78, v24, &v258);
  v102 = v258;
  i = v92;
  if (v102)
  {
    v93 = v102;
    v105 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v263 = v93;
      _os_log_impl(&dword_260ECB000, v105, OS_LOG_TYPE_ERROR, "Failed to compute pre training results. Reason: %@", buf, 0xCu);
    }

    v96 = 0;
    goto LABEL_32;
  }

  v249 = v92;
  v246 = v78;
  v237 = v18;
  v238 = v12;
  v106 = objc_msgSend_recipe(self, v103, v104);
  v109 = objc_msgSend_localIterationsCount(v106, v107, v108);
  v112 = objc_msgSend_intValue(v109, v110, v111);

  if (v112 < 1)
  {
    v115 = 0;
    v114 = 0;
    v139 = v250;
LABEL_46:
    v256 = 0;
    v140 = objc_msgSend_evaluateUsingTestData_evaluationMetricNames_error_(v249, v113, v246, v24, &v256);
    v143 = v256;
    if (v143)
    {
      v144 = OdmlLogForCategory(0xBuLL);
      if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v263 = v143;
        _os_log_impl(&dword_260ECB000, v144, OS_LOG_TYPE_ERROR, "Failed to compute post training results. Reason: %@", buf, 0xCu);
      }
    }

    v244 = objc_msgSend_array(MEMORY[0x277CBEB18], v141, v142);
    v243 = objc_msgSend_array(MEMORY[0x277CBEB18], v145, v146);
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    v255 = 0u;
    v147 = v139;
    v242 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v148, &v252, v261, 16);
    v236 = v140;
    if (v242)
    {
      v241 = *v253;
      v245 = v24;
      obj = v147;
      while (2)
      {
        v149 = 0;
        v150 = 0x277CBF000uLL;
        do
        {
          if (*v253 != v241)
          {
            objc_enumerationMutation(obj);
          }

          v151 = *(*(&v252 + 1) + 8 * v149);
          v152 = objc_alloc(*(v150 + 3760));
          v260 = v151;
          v154 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v153, &v260, 1);
          v156 = objc_msgSend_initWithFeatureProviderArray_(v152, v155, v154);
          v251 = v143;
          v158 = objc_msgSend_evaluateUsingTestData_evaluationMetricNames_error_(v249, v157, v156, v245, &v251);
          v93 = v251;

          if (v93)
          {
            v224 = OdmlLogForCategory(0xBuLL);
            if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v263 = v93;
              _os_log_impl(&dword_260ECB000, v224, OS_LOG_TYPE_ERROR, "Failed to evaluate row. Reason: %@", buf, 0xCu);
            }

            v96 = 0;
            v18 = v237;
            v12 = v238;
            v24 = v245;
            i = v249;
            v95 = v239;
            v233 = v243;
            goto LABEL_82;
          }

          v161 = v158;
          v162 = objc_msgSend_evaluationMetrics(v158, v159, v160);
          v164 = objc_msgSend_featuresAtIndex_(v162, v163, 0);

          v247 = v164;
          v166 = objc_msgSend_featureValueForName_(v164, v165, @"Identity");
          v167 = OdmlLogForCategory(0xBuLL);
          v168 = v167;
          if (!v166)
          {
            if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_260ECB000, v168, OS_LOG_TYPE_ERROR, "Failed to compute clientPttr after training.", buf, 2u);
            }

            v96 = 0;
            v18 = v237;
            v12 = v238;
            v24 = v245;
            i = v249;
            v95 = v239;
            v233 = v243;
            v224 = v247;
            goto LABEL_82;
          }

          if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
          {
            v171 = objc_msgSend_multiArrayValue(v166, v169, v170);
            v173 = objc_msgSend_objectAtIndexedSubscript_(v171, v172, 0);
            *buf = 138412290;
            *v263 = v173;
            _os_log_impl(&dword_260ECB000, v168, OS_LOG_TYPE_DEBUG, "Client pTTR: %@", buf, 0xCu);
          }

          v176 = objc_msgSend_multiArrayValue(v166, v174, v175);
          v178 = objc_msgSend_objectAtIndexedSubscript_(v176, v177, 0);
          objc_msgSend_addObject_(v244, v179, v178);

          v182 = objc_msgSend_features(v151, v180, v181);
          v184 = objc_msgSend_objectForKeyedSubscript_(v182, v183, @"pTTRLogit");

          if (objc_msgSend_count(v184, v185, v186))
          {
            v189 = objc_msgSend_multiArrayValue(v166, v187, v188);
            v191 = objc_msgSend_objectAtIndexedSubscript_(v189, v190, 0);
            objc_msgSend_doubleValue(v191, v192, v193);
            v195 = v194;
            v197 = objc_msgSend_objectAtIndexedSubscript_(v184, v196, 0);
            objc_msgSend_doubleValue(v197, v198, v199);
            v201 = v195 - v200;

            v204 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v202, v203, v201);
            objc_msgSend_addObject_(v243, v205, v204);
          }

          else
          {
            v206 = OdmlLogForCategory(0xBuLL);
            if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_260ECB000, v206, OS_LOG_TYPE_ERROR, "server side PTTR does not exist for a trainingRow", buf, 2u);
            }

            objc_msgSend_addObject_(v243, v207, &unk_28736F230);
          }

          v150 = 0x277CBF000;

          v143 = 0;
          ++v149;
        }

        while (v242 != v149);
        v147 = obj;
        v143 = 0;
        v93 = 0;
        v24 = v245;
        v242 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v208, &v252, v261, 16);
        if (v242)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v93 = v143;
    }

    obj = objc_msgSend_array(MEMORY[0x277CBEA60], v209, v210);
    v211 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v211, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v263 = obj;
      _os_log_impl(&dword_260ECB000, v211, OS_LOG_TYPE_DEBUG, "tapAndImpressionMetrics: %@", buf, 0xCu);
    }

    v96 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v212, v213);
    v158 = objc_msgSend_array(MEMORY[0x277CBEB18], v214, v215);
    for (i = v249; v115; --v115)
    {
      v219 = *v114++;
      LODWORD(v218) = v219;
      v220 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v216, v217, v218);
      objc_msgSend_addObject_(v158, v221, v220);
    }

    objc_msgSend_setValue_forKey_(v96, v216, v158, @"Deltas");
    selfCopy = self;
    v95 = v239;
    v224 = objc_msgSend__generateMetricsForBatch_preTraining_postTraining_tapAndImpressions_pttrDeltas_(selfCopy, v223, v246, v239, v236, obj, v243);
    v18 = v237;
    v227 = objc_msgSend_weightNames(v237, v225, v226);
    objc_msgSend_setValue_forKey_(v224, v228, v227, @"UpdatedModelIndices");

    v231 = objc_msgSend_copy(v224, v229, v230);
    objc_msgSend_setValue_forKey_(v96, v232, v231, @"Metrics");

    v233 = v243;
    v12 = v238;
LABEL_82:

    v105 = v236;
    v78 = v246;
    goto LABEL_83;
  }

  v114 = 0;
  v115 = 0;
  v116 = 0;
  while (1)
  {
    v257 = 0;
    i = v249;
    v117 = objc_msgSend_trainUsingTrainingData_error_(v249, v113, v246, &v257);
    v118 = v257;
    if (v118)
    {
      break;
    }

    v121 = v24;
    v122 = objc_msgSend_copyCurrentTrainingDelta(v249, v119, v120);
    v125 = objc_msgSend_flattenedModelUpdate(v122, v123, v124);

    v128 = objc_msgSend_copyCurrentTrainingDelta(v249, v126, v127);
    v131 = objc_msgSend_flattenedModelUpdate(v128, v129, v130);
    v132 = v131;
    v135 = objc_msgSend_bytes(v132, v133, v134);

    if (v114)
    {
      v24 = v121;
      if (v115)
      {
        v138 = 0;
        v139 = v250;
        do
        {
          *&v114[v138] = *(v135 + 4 * v138) + *&v114[v138];
          ++v138;
        }

        while (v115 != v138);
        goto LABEL_43;
      }
    }

    else
    {
      v115 = objc_msgSend_length(v125, v136, v137) >> 2;
      v114 = v135;
      v24 = v121;
    }

    v139 = v250;
LABEL_43:

    if (++v116 == v112)
    {
      goto LABEL_46;
    }
  }

  v93 = v118;
  v105 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109634;
    *v263 = v116;
    *&v263[4] = 1024;
    *&v263[6] = v112;
    v264 = 2112;
    v265 = v93;
    _os_log_impl(&dword_260ECB000, v105, OS_LOG_TYPE_ERROR, "Failed to train model at epoch %d/%d. Reason: %@", buf, 0x18u);
  }

  v96 = 0;
  v18 = v237;
  v12 = v238;
  v78 = v246;
LABEL_32:
  v95 = v239;
LABEL_83:

LABEL_84:
  v44 = v248;
  v53 = v250;
LABEL_85:

  v234 = *MEMORY[0x277D85DE8];

  return v96;
}

- (id)_generateMetricsForBatch:(id)batch preTraining:(id)training postTraining:(id)postTraining tapAndImpressions:(id)impressions pttrDeltas:(id)deltas
{
  v11 = MEMORY[0x277CBEB38];
  deltasCopy = deltas;
  impressionsCopy = impressions;
  postTrainingCopy = postTraining;
  trainingCopy = training;
  batchCopy = batch;
  v19 = objc_msgSend_dictionary(v11, v17, v18);
  v22 = objc_msgSend_averageLoss(trainingCopy, v20, v21);
  objc_msgSend_setValue_forKey_(v19, v23, v22, @"PreTrainingLoss");

  v25 = objc_msgSend_averageAccuracy_(trainingCopy, v24, batchCopy);

  objc_msgSend_setValue_forKey_(v19, v26, v25, @"PreTrainingAccuracy");
  v29 = objc_msgSend_averageLoss(postTrainingCopy, v27, v28);
  objc_msgSend_setValue_forKey_(v19, v30, v29, @"PostTrainingLoss");

  v32 = objc_msgSend_averageAccuracy_(postTrainingCopy, v31, batchCopy);

  objc_msgSend_setValue_forKey_(v19, v33, v32, @"PostTrainingAccuracy");
  objc_msgSend_setValue_forKey_(v19, v34, impressionsCopy, @"AdditionalMetrics");

  objc_msgSend_setValue_forKey_(v19, v35, deltasCopy, @"delta_pTTR");

  return v19;
}

- (BOOL)_setError:(id *)error errorCode:(int64_t)code
{
  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, @"APODMLDESPluginErrorDomain", code, 0);
  }

  return error != 0;
}

@end