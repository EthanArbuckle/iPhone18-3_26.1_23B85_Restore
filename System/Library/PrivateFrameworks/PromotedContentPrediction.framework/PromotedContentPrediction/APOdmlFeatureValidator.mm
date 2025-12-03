@interface APOdmlFeatureValidator
- (id)imputeFeature:(id)feature;
- (id)imputeMissingFeatures:(id)features;
- (id)missingFeatures:(id)features inputDescriptions:(id)descriptions;
- (id)validateFeatureProvider:(id)provider inputDescriptions:(id)descriptions;
- (id)validateFeatures:(id)features predictionModel:(id)model;
- (void)reportMissingFeatureError:(id)error;
@end

@implementation APOdmlFeatureValidator

- (id)validateFeatures:(id)features predictionModel:(id)model
{
  featuresCopy = features;
  v9 = objc_msgSend_modelDescription(model, v7, v8);
  v12 = objc_msgSend_inputDescriptionsByName(v9, v10, v11);
  v15 = objc_msgSend_allValues(v12, v13, v14);

  if (objc_msgSend_count(featuresCopy, v16, v17))
  {
    v20 = 0;
    do
    {
      v21 = objc_msgSend_objectAtIndexedSubscript_(featuresCopy, v18, v20);
      v23 = objc_msgSend_validateFeatureProvider_inputDescriptions_(self, v22, v21, v15);
      objc_msgSend_setObject_atIndexedSubscript_(featuresCopy, v24, v23, v20);

      ++v20;
    }

    while (v20 < objc_msgSend_count(featuresCopy, v25, v26));
  }

  v27 = objc_msgSend_copy(featuresCopy, v18, v19);

  return v27;
}

- (id)validateFeatureProvider:(id)provider inputDescriptions:(id)descriptions
{
  providerCopy = provider;
  v8 = objc_msgSend_missingFeatures_inputDescriptions_(self, v7, providerCopy, descriptions);
  objc_msgSend_reportMissingFeatureError_(self, v9, v8);
  v11 = objc_msgSend_imputeMissingFeatures_(self, v10, v8);
  v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13);
  v17 = objc_msgSend_dictionary(providerCopy, v15, v16);

  objc_msgSend_addEntriesFromDictionary_(v14, v18, v17);
  objc_msgSend_addEntriesFromDictionary_(v14, v19, v11);
  v20 = objc_alloc(MEMORY[0x277CBFED0]);
  v23 = objc_msgSend_copy(v14, v21, v22);
  v25 = objc_msgSend_initWithDictionary_error_(v20, v24, v23, 0);

  return v25;
}

- (id)missingFeatures:(id)features inputDescriptions:(id)descriptions
{
  v36 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  descriptionsCopy = descriptions;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = descriptionsCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v31, v35, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = objc_msgSend_dictionary(featuresCopy, v13, v14, v31);
        v22 = objc_msgSend_name(v18, v20, v21);
        v24 = objc_msgSend_objectForKey_(v19, v23, v22);

        if (!v24)
        {
          objc_msgSend_addObject_(v9, v25, v18);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v31, v35, 16);
    }

    while (v15);
  }

  v28 = objc_msgSend_copy(v9, v26, v27);
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)imputeMissingFeatures:(id)features
{
  v28 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = featuresCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = objc_msgSend_imputeFeature_(self, v11, v15, v23);
        v19 = objc_msgSend_name(v15, v17, v18);
        objc_msgSend_setValue_forKey_(v7, v20, v16, v19);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v23, v27, 16);
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)imputeFeature:(id)feature
{
  v68 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  v6 = objc_msgSend_multiArrayConstraint(featureCopy, v4, v5);
  v9 = objc_msgSend_shape(v6, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12 < 3)
  {
    v27 = objc_msgSend_multiArrayConstraint(featureCopy, v13, v14);
    v30 = objc_msgSend_shape(v27, v28, v29);
    v33 = objc_msgSend_count(v30, v31, v32) - 1;

    v36 = objc_msgSend_multiArrayConstraint(featureCopy, v34, v35);
    v39 = objc_msgSend_shape(v36, v37, v38);
    v41 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, v33);

    v44 = objc_msgSend_array(MEMORY[0x277CBEB18], v42, v43);
    if (objc_msgSend_intValue(v41, v45, v46) >= 1)
    {
      v49 = 0;
      do
      {
        v50 = objc_msgSend_notANumber(MEMORY[0x277CCA980], v47, v48);
        objc_msgSend_addObject_(v44, v51, v50);

        ++v49;
      }

      while (v49 < objc_msgSend_intValue(v41, v52, v53));
    }

    v54 = objc_msgSend_multiArrayConstraint(featureCopy, v47, v48);
    v57 = objc_msgSend_shape(v54, v55, v56);
    v60 = objc_msgSend_count(v57, v58, v59);

    if (v60 == 1)
    {
      objc_msgSend_multiarrayFromArray_(MEMORY[0x277CBFF48], v61, v44);
    }

    else
    {
      objc_msgSend_twoDimensionalMultiarrayFromArray_(MEMORY[0x277CBFF48], v61, v44);
    }
    v26 = ;
  }

  else
  {
    v15 = OdmlLogForCategory(6uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v20 = objc_msgSend_multiArrayConstraint(featureCopy, v18, v19);
      v23 = objc_msgSend_shape(v20, v21, v22);
      v64 = 138412546;
      v65 = v16;
      v66 = 2048;
      v67 = objc_msgSend_count(v23, v24, v25);
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%@] Unexpected shape length: %lu", &v64, 0x16u);
    }

    v26 = 0;
  }

  v62 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)reportMissingFeatureError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = error;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v24, v28, 16);
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"APOdmlPredictionErrorDomain", 4004, 0);
        v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12);
        v16 = objc_msgSend_name(v9, v14, v15);
        objc_msgSend_setValue_forKey_(v13, v17, v16, @"featureName");

        v20 = objc_msgSend_copy(v13, v18, v19);
        objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v21, v10, v20);

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v24, v28, 16);
    }

    while (v6);
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end