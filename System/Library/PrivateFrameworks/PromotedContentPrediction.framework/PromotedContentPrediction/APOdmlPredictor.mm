@interface APOdmlPredictor
- (APOdmlPredictor)initWithResponses:(id)responses assetManager:(id)manager model:(id)model;
- (id)predictTapThroughRate;
- (void)localOutputLog:(id)log adamID:(id)d;
- (void)validateOutput:(id)output adamID:(id)d;
@end

@implementation APOdmlPredictor

- (APOdmlPredictor)initWithResponses:(id)responses assetManager:(id)manager model:(id)model
{
  responsesCopy = responses;
  managerCopy = manager;
  modelCopy = model;
  v31.receiver = self;
  v31.super_class = APOdmlPredictor;
  v12 = [(APOdmlPredictor *)&v31 init];
  if (!v12)
  {
    goto LABEL_3;
  }

  v13 = objc_msgSend_valueForKey_(responsesCopy, v11, @"adamID");
  adamIDs = v12->_adamIDs;
  v12->_adamIDs = v13;

  objc_storeStrong(&v12->_assetManager, manager);
  objc_storeStrong(&v12->_predictionModel, model);
  v17 = objc_msgSend_date(MEMORY[0x277CBEAA8], v15, v16);
  v18 = [APOdmlFeatureHandler alloc];
  v20 = objc_msgSend_initWithResponses_assetManager_model_(v18, v19, responsesCopy, managerCopy, modelCopy);
  featureHandler = v12->_featureHandler;
  v12->_featureHandler = v20;

  v23 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v22, @"APOdmlRerankingErrorDomain", 2102, 0);
  v26 = objc_msgSend_date(MEMORY[0x277CBEAA8], v24, v25);
  objc_msgSend_sendTimedEvent_statusSuccess_additionalDetails_startDate_endDate_(APOdmlAnalyticsReranking, v27, v23, 1, 0, v17, v26);

  v28 = v12->_featureHandler;
  if (!v28)
  {
    v29 = 0;
  }

  else
  {
LABEL_3:
    v29 = v12;
  }

  return v29;
}

- (id)predictTapThroughRate
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_featureHandler(self, a2, v2);
  v7 = objc_msgSend_batchInput(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_predictionModel(self, v8, v9);
    v11 = OdmlLogForCategory(5uLL);
    v12 = os_signpost_id_generate(v11);

    v13 = OdmlLogForCategory(5uLL);
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Batch PTTR Prediction", &unk_260EFF3C5, buf, 2u);
    }

    v17 = objc_msgSend_date(MEMORY[0x277CBEAA8], v15, v16);
    v20 = objc_msgSend_featureHandler(self, v18, v19);
    v23 = objc_msgSend_batchInput(v20, v21, v22);
    v90 = 0;
    v25 = objc_msgSend_predictionsFromBatch_error_(v10, v24, v23, &v90);
    v26 = v90;

    v27 = OdmlLogForCategory(5uLL);
    v28 = v27;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v28, OS_SIGNPOST_INTERVAL_END, v12, "Batch PTTR Prediction", &unk_260EFF3C5, buf, 2u);
    }

    if (v26 || !v25)
    {
      v80 = OdmlLogForCategory(5uLL);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v81 = objc_opt_class();
        *buf = 138412546;
        v92 = v81;
        v93 = 2112;
        v94 = v26;
        v82 = v81;
        _os_log_impl(&dword_260ECB000, v80, OS_LOG_TYPE_ERROR, "[%@] Error predicting tap through rate: %@", buf, 0x16u);
      }

      v75 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v83, @"APOdmlPredictionErrorDomain", 4002, 0);
      objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v84, v75, 0);
      v74 = 0;
    }

    else
    {
      v89 = v10;
      v30 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v29, @"APOdmlRerankingErrorDomain", 2103, 0);
      v33 = objc_msgSend_date(MEMORY[0x277CBEAA8], v31, v32);
      v87 = v30;
      v88 = v17;
      objc_msgSend_sendTimedEvent_statusSuccess_additionalDetails_startDate_endDate_(APOdmlAnalyticsReranking, v34, v30, 1, 0, v17, v33);

      objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v35, 0, 0);
      v38 = objc_msgSend_array(MEMORY[0x277CBEB18], v36, v37);
      if (objc_msgSend_count(v25, v39, v40) >= 1)
      {
        v43 = 0;
        do
        {
          v44 = objc_msgSend_featuresAtIndex_(v25, v41, v43);
          v47 = objc_msgSend_featureNames(v44, v45, v46);
          v50 = objc_msgSend_anyObject(v47, v48, v49);

          v52 = objc_msgSend_featureValueForName_(v44, v51, v50);
          v55 = v52;
          if (v52)
          {
            v56 = objc_msgSend_multiArrayValue(v52, v53, v54);
            v59 = objc_msgSend_count(v56, v57, v58);

            if (v59 >= 1)
            {
              v62 = objc_msgSend_multiArrayValue(v55, v60, v61);
              v64 = objc_msgSend_objectAtIndexedSubscript_(v62, v63, 0);

              v67 = objc_msgSend_adamIDs(self, v65, v66);
              v69 = objc_msgSend_objectAtIndexedSubscript_(v67, v68, v43);
              objc_msgSend_validateOutput_adamID_(self, v70, v64, v69);

              objc_msgSend_addObject_(v38, v71, v64);
            }
          }

          ++v43;
        }

        while (v43 < objc_msgSend_count(v25, v72, v73));
      }

      v74 = objc_msgSend_copy(v38, v41, v42);

      v75 = 0;
      v17 = v88;
      v10 = v89;
      v26 = 0;
    }
  }

  else
  {
    v76 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v92 = objc_opt_class();
      v77 = v92;
      _os_log_impl(&dword_260ECB000, v76, OS_LOG_TYPE_ERROR, "[%@] Cannot predict because input is nil.", buf, 0xCu);
    }

    v75 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v78, @"APOdmlPredictionErrorDomain", 4001, 0);
    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v79, v75, 0);
    v74 = 0;
  }

  v85 = *MEMORY[0x277D85DE8];

  return v74;
}

- (void)validateOutput:(id)output adamID:(id)d
{
  v102 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  dCopy = d;
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
  objc_msgSend_setValue_forKey_(v10, v11, @"modelOutput", @"featureName");
  if (outputCopy)
  {
    v14 = objc_msgSend_stringValue(outputCopy, v12, v13);
    objc_msgSend_setValue_forKey_(v10, v15, v14, @"featureValue");

    v18 = objc_msgSend_copy(v10, v16, v17);
    objc_msgSend_localOutputLog_adamID_(self, v19, v18, dCopy);

    v22 = objc_msgSend_assetManager(self, v20, v21);
    v24 = objc_msgSend_stringValueForFactor_(v22, v23, @"ModelOutputConfig");

    if (v24)
    {
      v26 = objc_msgSend_dataUsingEncoding_(v24, v25, 4);
      v100 = 0;
      v28 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v27, v26, 0, &v100);
      v30 = v100;
      if (!v30)
      {
        v93 = v26;
        v33 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"min");
        if (v33)
        {
          objc_msgSend_floatValue(outputCopy, v31, v32);
          v35 = v34;
          objc_msgSend_floatValue(v33, v36, v37);
          if (v35 < v38)
          {
            v39 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v31, @"APODMLDESPluginErrorDomain", 4006, 0);
            v42 = objc_msgSend_copy(v10, v40, v41);
            objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v43, v39, v42);
          }
        }

        v91 = v33;
        v94 = v24;
        v95 = dCopy;
        v46 = objc_msgSend_objectForKeyedSubscript_(v28, v31, @"max");
        if (v46)
        {
          objc_msgSend_floatValue(outputCopy, v44, v45);
          v48 = v47;
          objc_msgSend_floatValue(v46, v49, v50);
          if (v48 > v51)
          {
            v52 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v44, @"APODMLDESPluginErrorDomain", 4005, 0);
            v55 = objc_msgSend_copy(v10, v53, v54);
            objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v56, v52, v55);
          }
        }

        v90 = v46;
        v57 = outputCopy;
        v92 = v28;
        v58 = objc_msgSend_objectForKeyedSubscript_(v28, v44, @"sentinelValueSet");
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v96, v101, 16);
        if (v60)
        {
          v63 = v60;
          v64 = *v97;
          do
          {
            for (i = 0; i != v63; ++i)
            {
              if (*v97 != v64)
              {
                objc_enumerationMutation(v58);
              }

              v66 = *(*(&v96 + 1) + 8 * i);
              if (v66)
              {
                v67 = objc_msgSend_null(MEMORY[0x277CBEB68], v61, v62);
                isEqual = objc_msgSend_isEqual_(v66, v68, v67);

                if ((isEqual & 1) == 0)
                {
                  objc_msgSend_floatValue(v57, v61, v62);
                  v71 = v70;
                  objc_msgSend_floatValue(v66, v72, v73);
                  if (v71 == v74)
                  {
                    v75 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v61, @"APODMLDESPluginErrorDomain", 4007, 0);
                    v78 = objc_msgSend_copy(v10, v76, v77);
                    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v79, v75, v78);
                  }
                }
              }
            }

            v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v96, v101, 16);
          }

          while (v63);
        }

        outputCopy = v57;
        v24 = v94;
        dCopy = v95;
        v28 = v92;
        v26 = v93;
        v30 = 0;
      }
    }
  }

  else
  {
    v80 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v12, @"APODMLDESPluginErrorDomain", 4007, 0);
    v83 = objc_msgSend_copy(v10, v81, v82);
    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v84, v80, v83);

    v87 = objc_msgSend_copy(v10, v85, v86);
    objc_msgSend_localOutputLog_adamID_(self, v88, v87, dCopy);
  }

  v89 = *MEMORY[0x277D85DE8];
}

- (void)localOutputLog:(id)log adamID:(id)d
{
  v5 = MEMORY[0x277CBEB38];
  dCopy = d;
  v10 = objc_msgSend_dictionaryWithDictionary_(v5, v7, log);
  objc_msgSend_setValue_forKey_(v10, v8, dCopy, @"adamID");

  objc_msgSend_logWithLoggerKey_message_category_(APOdmlLogUtility, v9, @"InferenceModelOutput", v10, 5);
}

@end