@interface APOdmlEspressoEvaluator
- (APOdmlEspressoEvaluator)initWithTrainingRowBuilder:(id)builder recipe:(id)recipe netURL:(id)l;
- (BOOL)_setError:(id *)error errorCode:(int64_t)code;
- (id)_computeModelDeltas:(id)deltas weightsAfter:(id)after error:(id *)error;
- (id)_evaluate:(id)_evaluate error:(id *)error;
- (id)_generateMetrics:(id)metrics postTrainingMetrics:(id)trainingMetrics tapAndImpressionMetrics:(id)impressionMetrics deltaPttrMetrics:(id)pttrMetrics;
- (id)evaluate:(id *)evaluate;
@end

@implementation APOdmlEspressoEvaluator

- (APOdmlEspressoEvaluator)initWithTrainingRowBuilder:(id)builder recipe:(id)recipe netURL:(id)l
{
  builderCopy = builder;
  recipeCopy = recipe;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = APOdmlEspressoEvaluator;
  v12 = [(APOdmlEspressoEvaluator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_builder, builder);
    objc_storeStrong(&v13->_recipe, recipe);
    objc_storeStrong(&v13->_netURL, l);
    v13->_trainingSetSize = 0;
  }

  return v13;
}

- (id)evaluate:(id *)evaluate
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v59 = 138412290;
    v60 = objc_opt_class();
    v6 = v60;
    _os_log_impl(&dword_260ECB000, v5, OS_LOG_TYPE_DEFAULT, "[%@]: Evaluation begins.", &v59, 0xCu);
  }

  v9 = objc_msgSend_netURL(self, v7, v8);
  v11 = objc_msgSend__evaluate_error_(self, v10, v9, evaluate);

  if (v11)
  {
    v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13);
    v15 = MEMORY[0x277CCABB0];
    v18 = objc_msgSend_trainingSetSize(self, v16, v17);
    v20 = objc_msgSend_numberWithUnsignedInteger_(v15, v19, v18);
    objc_msgSend_setValue_forKey_(v14, v21, v20, @"NumRows");

    v24 = objc_msgSend_recipe(self, v22, v23);
    v27 = objc_msgSend_batchSize(v24, v25, v26);
    objc_msgSend_setValue_forKey_(v14, v28, v27, @"BatchSize");

    v31 = objc_msgSend_recipe(self, v29, v30);
    v34 = objc_msgSend_localIterationsCount(v31, v32, v33);
    objc_msgSend_setValue_forKey_(v14, v35, v34, @"LocalIterationsCount");

    v38 = objc_msgSend_recipe(self, v36, v37);
    v41 = objc_msgSend_learningRate(v38, v39, v40);
    objc_msgSend_setValue_forKey_(v14, v42, v41, @"LearningRate");

    v43 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v59) = 0;
      _os_log_impl(&dword_260ECB000, v43, OS_LOG_TYPE_DEFAULT, "Preparing to evaluate with the following inputs", &v59, 2u);
    }

    objc_msgSend_logWithLoggerKey_message_category_(APOdmlLogUtility, v44, @"TrainingParameters", v14, 11);
    v46 = objc_msgSend_objectForKey_(v11, v45, @"Metrics");
    v49 = objc_msgSend_recipe(self, v47, v48);
    v52 = objc_msgSend_weightNames(v49, v50, v51);
    objc_msgSend_setValue_forKey_(v46, v53, v52, @"UpdatedModelIndices");

    v56 = objc_msgSend_copy(v11, v54, v55);
  }

  else
  {
    v56 = 0;
  }

  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

- (id)_evaluate:(id)_evaluate error:(id *)error
{
  v162 = *MEMORY[0x277D85DE8];
  _evaluateCopy = _evaluate;
  v7 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v161 = _evaluateCopy;
    _os_log_impl(&dword_260ECB000, v7, OS_LOG_TYPE_DEFAULT, "Evaluation in C begins with netpath: %@", buf, 0xCu);
  }

  v8 = [APOdmlEspressoFacade alloc];
  v11 = objc_msgSend_recipe(self, v9, v10);
  v13 = objc_msgSend_initWithEspressoNetURL_recipe_error_(v8, v12, _evaluateCopy, v11, error);

  if (!v13)
  {
    v25 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v25, OS_LOG_TYPE_ERROR, "Failed to initialize the Espresso network.", buf, 2u);
    }

    goto LABEL_54;
  }

  v16 = objc_msgSend_builder(self, v14, v15);
  v19 = objc_msgSend_requiredFeatures(v13, v17, v18);
  objc_msgSend_addRequiredFeatures_(v16, v20, v19);

  v23 = objc_msgSend_builder(self, v21, v22);
  v25 = objc_msgSend_generateTrainingSet_(v23, v24, error);

  if (!v25 || !objc_msgSend_count(v25, v26, v27))
  {
    v120 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v120, OS_LOG_TYPE_ERROR, "Failed to find any training row.", buf, 2u);
    }

    if (error && !*error)
    {
      objc_msgSend__setError_errorCode_(self, v121, error, 8012);
    }

    goto LABEL_54;
  }

  v28 = OdmlLogForCategory(0xBuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v161 = v25;
    _os_log_impl(&dword_260ECB000, v28, OS_LOG_TYPE_DEFAULT, "Generated the following training rows: %@", buf, 0xCu);
  }

  v31 = objc_msgSend_count(v25, v29, v30);
  objc_msgSend_setTrainingSetSize_(self, v32, v31);
  v35 = objc_msgSend_recipe(self, v33, v34);
  v38 = objc_msgSend_batchSize(v35, v36, v37);
  v41 = objc_msgSend_unsignedIntegerValue(v38, v39, v40);

  if (!v41)
  {
    v122 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v122, OS_LOG_TYPE_ERROR, "Batch size should not be zero.", buf, 2u);
    }

    objc_msgSend__setError_errorCode_(self, v123, error, 8037);
LABEL_54:
    v115 = 0;
    goto LABEL_55;
  }

  if (objc_msgSend_trainingSetSize(self, v42, v43) < v41)
  {
    v41 = objc_msgSend_trainingSetSize(self, v44, v45);
  }

  if (objc_msgSend_changeEspressoBatchSize_error_(v13, v44, v41, error))
  {
    if (objc_msgSend_finalizeEspressoPipeline_(v13, v46, error))
    {
      v47 = OdmlLogForCategory(0xBuLL);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260ECB000, v47, OS_LOG_TYPE_DEFAULT, "Weights after initialization:\n", buf, 2u);
      }

      v153 = objc_msgSend_retrieveWeights_(v13, v48, error);
      if (!v153)
      {
        v128 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_260ECB000, v128, OS_LOG_TYPE_ERROR, "Failed to find any weights before training.", buf, 2u);
        }

        objc_msgSend__setError_errorCode_(self, v129, error, 8029);
        v115 = 0;
        goto LABEL_94;
      }

      v51 = objc_msgSend_retrieveWeights2D_(v13, v49, error);
      if (!v51)
      {
        v130 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_260ECB000, v130, OS_LOG_TYPE_ERROR, "Failed to retrieve weights by preserving the shape.", buf, 2u);
        }

        objc_msgSend__setError_errorCode_(self, v131, error, 8029);
        v115 = 0;
        goto LABEL_93;
      }

      objc_msgSend_logWithLoggerKey_message_category_(APOdmlLogUtility, v50, @"ModelWeightsBeforeTraining", v51, 11);
      v148 = v51;
      v149 = objc_msgSend_computeAccuracyAndLoss_error_(v13, v52, v25, error);
      if (v149)
      {
        if (objc_msgSend_trainWithTrainingSet_error_(v13, v53, v25, error))
        {
          v141 = objc_msgSend_computeAccuracyAndLoss_error_(v13, v54, v25, error);
          if (v141)
          {
            v55 = OdmlLogForCategory(0xBuLL);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_260ECB000, v55, OS_LOG_TYPE_DEFAULT, "Weights after training:\n", buf, 2u);
            }

            v58 = objc_msgSend_retrieveWeights_(v13, v56, error);
            v140 = v58;
            if (v58)
            {
              v60 = objc_msgSend_retrieveWeights2D_(v13, v57, error);
              v139 = v60;
              if (v60)
              {
                objc_msgSend_logWithLoggerKey_message_category_(APOdmlLogUtility, v59, @"ModelWeightsAfterTraining", v60, 11);
                v138 = objc_msgSend__computeModelDeltas_weightsAfter_error_(self, v61, v153, v58, 0);
                v62 = 0x277CBE000uLL;
                v145 = objc_msgSend_array(MEMORY[0x277CBEB18], v63, v64);
                v146 = objc_msgSend_array(MEMORY[0x277CBEB18], v65, v66);
                v147 = objc_msgSend_array(MEMORY[0x277CBEB18], v67, v68);
                v157 = 0u;
                v158 = 0u;
                v155 = 0u;
                v156 = 0u;
                obj = v25;
                v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v69, &v155, v159, 16);
                if (v72)
                {
                  v144 = *v156;
                  while (2)
                  {
                    v73 = 0;
                    v143 = v72;
                    do
                    {
                      if (*v156 != v144)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v150 = v73;
                      v74 = *(*(&v155 + 1) + 8 * v73);
                      v75 = objc_msgSend_array(*(v62 + 2840), v70, v71);
                      v151 = v75;
                      objc_msgSend_addObject_(v75, v76, v74);
                      v154 = objc_msgSend_computeClientPttr_error_(v13, v77, v75, error);
                      if (!v154)
                      {
                        v136 = OdmlLogForCategory(0xBuLL);
                        if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_260ECB000, v136, OS_LOG_TYPE_ERROR, "Failed to compute clientPttr after training.", buf, 2u);
                        }

                        v115 = 0;
                        v118 = obj;
                        goto LABEL_85;
                      }

                      v78 = OdmlLogForCategory(0xBuLL);
                      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v161 = v154;
                        _os_log_impl(&dword_260ECB000, v78, OS_LOG_TYPE_DEFAULT, "clientPttr: %@", buf, 0xCu);
                      }

                      objc_msgSend_addObject_(v145, v79, v154);
                      v82 = objc_msgSend_features(v74, v80, v81);
                      v152 = objc_msgSend_objectForKeyedSubscript_(v82, v83, @"pTTRLogit");

                      if (objc_msgSend_count(v152, v84, v85))
                      {
                        v87 = objc_msgSend_objectAtIndexedSubscript_(v152, v86, 0);
                        v88 = MEMORY[0x277CCABB0];
                        objc_msgSend_floatValue(v154, v89, v90);
                        v92 = v91;
                        objc_msgSend_floatValue(v87, v93, v94);
                        *&v96 = v92 - v95;
                        v99 = objc_msgSend_numberWithFloat_(v88, v97, v98, v96);
                        v100 = OdmlLogForCategory(0xBuLL);
                        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v161 = v99;
                          _os_log_impl(&dword_260ECB000, v100, OS_LOG_TYPE_DEFAULT, "deltaPttr: %@", buf, 0xCu);
                        }

                        objc_msgSend_addObject_(v146, v101, v99);
                      }

                      else
                      {
                        v102 = OdmlLogForCategory(0xBuLL);
                        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_260ECB000, v102, OS_LOG_TYPE_ERROR, "server side PTTR does not exist for a trainingRow", buf, 2u);
                        }

                        v87 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v103, v104, 0.0);
                        objc_msgSend_addObject_(v146, v105, v87);
                      }

                      v108 = objc_msgSend_builder(self, v106, v107);
                      v110 = objc_msgSend_metricsForTrainingRow_withClientPttr_(v108, v109, v74, v154);

                      objc_msgSend_addObject_(v147, v111, v110);
                      v73 = v150 + 1;
                      v62 = 0x277CBE000;
                    }

                    while (v143 != v150 + 1);
                    v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v70, &v155, v159, 16);
                    if (v72)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v112 = OdmlLogForCategory(0xBuLL);
                if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v161 = v147;
                  _os_log_impl(&dword_260ECB000, v112, OS_LOG_TYPE_DEFAULT, "tapAndImpressionMetrics: %@", buf, 0xCu);
                }

                v115 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v113, v114);
                objc_msgSend_setValue_forKey_(v115, v116, v138, @"Deltas");
                v118 = objc_msgSend__generateMetrics_postTrainingMetrics_tapAndImpressionMetrics_deltaPttrMetrics_(self, v117, v149, v141, v147, v146);
                objc_msgSend_setValue_forKey_(v115, v119, v118, @"Metrics");
LABEL_85:

                v137 = v138;
              }

              else
              {
                v137 = OdmlLogForCategory(0xBuLL);
                if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_260ECB000, v137, OS_LOG_TYPE_ERROR, "Failed to retrieve weights after training by preserving the shape.", buf, 2u);
                }

                v115 = 0;
              }

              v135 = v139;
            }

            else
            {
              v135 = OdmlLogForCategory(0xBuLL);
              if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_260ECB000, v135, OS_LOG_TYPE_ERROR, "Failed to find any weight after training.", buf, 2u);
              }

              v115 = 0;
            }

            v134 = v140;
          }

          else
          {
            v134 = OdmlLogForCategory(0xBuLL);
            if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_260ECB000, v134, OS_LOG_TYPE_ERROR, "Failed to compute accuracy and loss after training.", buf, 2u);
            }

            v115 = 0;
          }

          v132 = v141;
          goto LABEL_92;
        }

        v132 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v133 = "Failed to train the model";
          goto LABEL_74;
        }
      }

      else
      {
        v132 = OdmlLogForCategory(0xBuLL);
        if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v133 = "Failed to find preTrainingMetrics.";
LABEL_74:
          _os_log_impl(&dword_260ECB000, v132, OS_LOG_TYPE_ERROR, v133, buf, 2u);
        }
      }

      v115 = 0;
LABEL_92:

      v51 = v148;
LABEL_93:

LABEL_94:
      v126 = v153;
      goto LABEL_95;
    }

    v126 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v127 = "Failed to finalize the Espresso pipeline.";
      goto LABEL_62;
    }
  }

  else
  {
    v126 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v127 = "Failed to change input shape.";
LABEL_62:
      _os_log_impl(&dword_260ECB000, v126, OS_LOG_TYPE_ERROR, v127, buf, 2u);
    }
  }

  v115 = 0;
LABEL_95:

LABEL_55:
  v124 = *MEMORY[0x277D85DE8];

  return v115;
}

- (id)_computeModelDeltas:(id)deltas weightsAfter:(id)after error:(id *)error
{
  deltasCopy = deltas;
  afterCopy = after;
  v12 = objc_msgSend_count(deltasCopy, v10, v11);
  if (v12 != objc_msgSend_count(afterCopy, v13, v14))
  {
    objc_msgSend__setError_errorCode_(self, v15, error, 8029);
  }

  v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16);
  for (i = 0; i < objc_msgSend_count(deltasCopy, v17, v18); ++i)
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(deltasCopy, v21, i);
    objc_msgSend_floatValue(v23, v24, v25);
    v27 = v26;

    v29 = objc_msgSend_objectAtIndexedSubscript_(afterCopy, v28, i);
    objc_msgSend_floatValue(v29, v30, v31);
    v33 = v32;

    *&v34 = v33 - v27;
    v37 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v35, v36, v34);
    objc_msgSend_addObject_(v19, v38, v37);
  }

  v39 = objc_msgSend_copy(v19, v21, v22);

  return v39;
}

- (id)_generateMetrics:(id)metrics postTrainingMetrics:(id)trainingMetrics tapAndImpressionMetrics:(id)impressionMetrics deltaPttrMetrics:(id)pttrMetrics
{
  metricsCopy = metrics;
  trainingMetricsCopy = trainingMetrics;
  impressionMetricsCopy = impressionMetrics;
  pttrMetricsCopy = pttrMetrics;
  v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
  if (objc_msgSend_count(metricsCopy, v16, v17) == 2)
  {
    v20 = objc_msgSend_objectAtIndexedSubscript_(metricsCopy, v18, 0);
    objc_msgSend_setValue_forKey_(v15, v21, v20, @"PreTrainingAccuracy");

    v23 = objc_msgSend_objectAtIndexedSubscript_(metricsCopy, v22, 1);
    objc_msgSend_setValue_forKey_(v15, v24, v23, @"PreTrainingLoss");
  }

  if (objc_msgSend_count(trainingMetricsCopy, v18, v19) == 2)
  {
    v26 = objc_msgSend_objectAtIndexedSubscript_(trainingMetricsCopy, v25, 0);
    objc_msgSend_setValue_forKey_(v15, v27, v26, @"PostTrainingAccuracy");

    v29 = objc_msgSend_objectAtIndexedSubscript_(trainingMetricsCopy, v28, 1);
    objc_msgSend_setValue_forKey_(v15, v30, v29, @"PostTrainingLoss");
  }

  objc_msgSend_setValue_forKey_(v15, v25, impressionMetricsCopy, @"AdditionalMetrics");
  objc_msgSend_setValue_forKey_(v15, v31, pttrMetricsCopy, @"delta_pTTR");

  return v15;
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