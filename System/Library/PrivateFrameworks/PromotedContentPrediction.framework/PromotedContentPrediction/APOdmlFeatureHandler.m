@interface APOdmlFeatureHandler
- (APOdmlFeatureHandler)initWithResponses:(id)a3 assetManager:(id)a4 model:(id)a5;
- (BOOL)isTwoDimensional:(id)a3;
- (id)_translateFeaturesToTwoDimensional:(id)a3;
- (id)adSpecificFeatures:(id)a3;
- (id)computeUserQueryVectorWithResponses:(id)a3;
- (id)featuresForResponse:(id)a3 adSpecificFeatures:(id)a4;
- (void)addOnDeviceFeaturesToDictionary:(id)a3;
- (void)fetchOnDeviceFeatures;
- (void)saveFeaturesFromResponse:(id)a3;
- (void)saveUserQueryVector;
@end

@implementation APOdmlFeatureHandler

- (APOdmlFeatureHandler)initWithResponses:(id)a3 assetManager:(id)a4 model:(id)a5
{
  v85 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v83.receiver = self;
  v83.super_class = APOdmlFeatureHandler;
  v11 = [(APOdmlFeatureHandler *)&v83 init];
  v12 = v11;
  if (v11)
  {
    v68 = v9;
    objc_storeStrong(&v11->_assetManager, a4);
    v66 = v10;
    v12->_isTwoDimensional = objc_msgSend_isTwoDimensional_(v12, v13, v10);
    objc_msgSend_fetchOnDeviceFeatures(v12, v14, v15);
    v17 = objc_msgSend_valueForKey_(v8, v16, @"odmlResponse");
    v19 = objc_msgSend_computeUserQueryVectorWithResponses_(v12, v18, v17);
    objc_msgSend_setUserQueryVector_(v12, v20, v19);

    v21 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_260EE4CDC;
    block[3] = &unk_279AC6188;
    v67 = v12;
    v22 = v12;
    v82 = v22;
    dispatch_async(v21, block);

    v24 = objc_msgSend_valueForKey_(v8, v23, @"adamID");
    v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v69 = v8;
    v28 = v8;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v77, v84, 16);
    if (v30)
    {
      v32 = v30;
      v33 = *v78;
      do
      {
        v34 = 0;
        do
        {
          if (*v78 != v33)
          {
            objc_enumerationMutation(v28);
          }

          v35 = objc_msgSend_adSpecificFeatures_(v22, v31, *(*(&v77 + 1) + 8 * v34));
          objc_msgSend_addObject_(v27, v36, v35);

          ++v34;
        }

        while (v32 != v34);
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v77, v84, 16);
      }

      while (v32);
    }

    v37 = MEMORY[0x277CBEB18];
    v40 = objc_msgSend_count(v17, v38, v39);
    v42 = objc_msgSend_arrayWithCapacity_(v37, v41, v40);
    v70 = v24;
    if (objc_msgSend_count(v17, v43, v44))
    {
      v46 = 0;
      do
      {
        v47 = objc_msgSend_objectAtIndexedSubscript_(v17, v45, v46);
        v49 = objc_msgSend_objectAtIndexedSubscript_(v27, v48, v46);
        v51 = objc_msgSend_featuresForResponse_adSpecificFeatures_(v22, v50, v47, v49);

        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = sub_260EE4CE4;
        v71[3] = &unk_279AC6338;
        v72 = v51;
        v73 = v70;
        v76 = v46;
        v74 = v22;
        v52 = v17;
        v75 = v52;
        v53 = v51;
        dispatch_async(v21, v71);

        objc_msgSend_addObject_(v42, v54, v53);
        ++v46;
      }

      while (v46 < objc_msgSend_count(v52, v55, v56));
    }

    v57 = objc_alloc_init(APOdmlFeatureValidator);
    v10 = v66;
    v59 = objc_msgSend_validateFeatures_predictionModel_(v57, v58, v42, v66);
    v60 = objc_alloc(MEMORY[0x277CBFEB0]);
    v62 = objc_msgSend_initWithFeatureProviderArray_(v60, v61, v59);
    batchInput = v22->_batchInput;
    v22->_batchInput = v62;

    v9 = v68;
    v8 = v69;
    v12 = v67;
  }

  v64 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)adSpecificFeatures:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_UTF8String(@"DupeFirstOrganic", v4, v5);
  v7 = objc_getAssociatedObject(v3, v6);
  v10 = objc_msgSend_UTF8String(@"Installed", v8, v9);
  v11 = objc_getAssociatedObject(v3, v10);
  v16 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v12, v13);
  if (v7)
  {
    v17 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_msgSend_adamID(v3, v18, v19);
      v23 = objc_msgSend_BOOLValue(v7, v21, v22);
      v24 = @" not ";
      if (v23)
      {
        v24 = @" ";
      }

      v42 = 138412546;
      v43 = v20;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_ERROR, "Ad %@ is%@dupe.", &v42, 0x16u);
    }

    v26 = objc_msgSend_featureValueOfTypeDouble_(MEMORY[0x277CBFEF8], v25, v7);
    objc_msgSend_setValue_forKey_(v16, v27, v26, @"DupeFirstOrganic");
  }

  if (v11)
  {
    v28 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_msgSend_adamID(v3, v29, v30);
      v34 = objc_msgSend_BOOLValue(v11, v32, v33);
      v35 = @" not ";
      if (v34)
      {
        v35 = @" ";
      }

      v42 = 138412546;
      v43 = v31;
      v44 = 2112;
      v45 = v35;
      _os_log_impl(&dword_260ECB000, v28, OS_LOG_TYPE_ERROR, "Ad %@ is%@installed.", &v42, 0x16u);
    }

    v37 = objc_msgSend_featureValueOfTypeDouble_(MEMORY[0x277CBFEF8], v36, v11);
    objc_msgSend_setValue_forKey_(v16, v38, v37, @"Installed");
  }

  v39 = objc_msgSend_copy(v16, v14, v15);

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (id)featuresForResponse:(id)a3 adSpecificFeatures:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  isTwoDimensional = objc_msgSend_isTwoDimensional(self, v8, v9);
  v13 = objc_msgSend_featureValues(v7, v11, v12);

  if (isTwoDimensional)
  {
    v16 = objc_msgSend__translateFeaturesToTwoDimensional_(self, v14, v13);
    v19 = objc_msgSend_mutableCopy(v16, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_mutableCopy(v13, v14, v15);
  }

  objc_msgSend_addOnDeviceFeaturesToDictionary_(self, v20, v19);
  if (objc_msgSend_isTwoDimensional(self, v21, v22))
  {
    v24 = objc_msgSend__translateFeaturesToTwoDimensional_(self, v23, v6);
    v27 = objc_msgSend_mutableCopy(v24, v25, v26);

    objc_msgSend_addEntriesFromDictionary_(v19, v28, v27);
  }

  else
  {
    objc_msgSend_addEntriesFromDictionary_(v19, v23, v6);
  }

  v29 = objc_alloc(MEMORY[0x277CBFED0]);
  v32 = objc_msgSend_copy(v19, v30, v31);
  v41 = 0;
  v34 = objc_msgSend_initWithDictionary_error_(v29, v33, v32, &v41);
  v35 = v41;

  if (!v34 || v35)
  {
    v36 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      *buf = 138412546;
      v43 = v37;
      v44 = 2112;
      v45 = v35;
      v38 = v37;
      _os_log_impl(&dword_260ECB000, v36, OS_LOG_TYPE_ERROR, "[%@] Error constructing FeatureProvider from ODMLResponseV2: %@", buf, 0x16u);
    }
  }

  v39 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)computeUserQueryVectorWithResponses:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v87 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v88, v92, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v89;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v89 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = objc_msgSend_featureValues(*(*(&v88 + 1) + 8 * i), v8, v9);
        v15 = objc_msgSend_objectForKey_(v13, v14, @"queryVector");

        v16 = [APOdmlVector alloc];
        v17 = MEMORY[0x277CCACA8];
        v20 = objc_msgSend_assetManager(self, v18, v19);
        v23 = objc_msgSend_odmlVersion(v20, v21, v22);
        v25 = objc_msgSend_stringWithFormat_(v17, v24, @"%d", v23);
        v28 = objc_msgSend_multiArrayValue(v15, v26, v27);
        v31 = objc_msgSend_arrayFromMultiarray(v28, v29, v30);
        v33 = objc_msgSend_initWithVersion_andArray_(v16, v32, v25, v31);

        objc_msgSend_addObject_(v87, v34, v33);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v88, v92, 16);
    }

    while (v10);
  }

  v35 = MEMORY[0x277CBEB18];
  v38 = objc_msgSend_assetManager(self, v36, v37);
  v40 = objc_msgSend_featuresForName_(v38, v39, @"queryVector");
  v42 = objc_msgSend_arrayWithArray_(v35, v41, v40);

  if (!v42 || !objc_msgSend_count(v42, v43, v44))
  {
    v45 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v43, @"APOdmlPredictionErrorDomain", 4008, 0);
    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v46, v45, 0);
  }

  v47 = objc_msgSend_arrayByAddingObjectsFromArray_(v42, v43, v87);
  if (objc_msgSend_count(v47, v48, v49))
  {
    v51 = objc_msgSend_objectAtIndexedSubscript_(v47, v50, 0);
    if (objc_msgSend_count(v47, v52, v53) < 2 || objc_msgSend_count(v47, v54, v55) < 2)
    {
      v59 = v51;
    }

    else
    {
      v56 = 1;
      do
      {
        v57 = objc_msgSend_objectAtIndexedSubscript_(v47, v54, v56);
        v59 = objc_msgSend_vectorAdd_(v51, v58, v57);

        ++v56;
        v51 = v59;
      }

      while (v56 < objc_msgSend_count(v47, v60, v61));
    }

    objc_msgSend_magnitude(v59, v54, v55);
    *&v63 = 1.0 / v62;
    v66 = objc_msgSend_scalarMultiply_(v59, v64, v65, v63);
    isTwoDimensional = objc_msgSend_isTwoDimensional(self, v67, v68);
    v70 = MEMORY[0x277CBFF48];
    v74 = objc_msgSend_arrayOfNumbers(v66, v71, v72);
    if (isTwoDimensional)
    {
      objc_msgSend_twoDimensionalMultiarrayFromArray_(v70, v73, v74);
    }

    else
    {
      objc_msgSend_multiarrayFromArray_(v70, v73, v74);
    }
    v77 = ;

    if (objc_msgSend_count(v77, v78, v79) < 1)
    {
      v81 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v80, @"APOdmlPredictionErrorDomain", 4009, 0);
      objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v82, v81, 0);

      v76 = 0;
    }

    else
    {
      v76 = objc_msgSend_featureValueWithMultiArray_(MEMORY[0x277CBFEF8], v80, v77);
    }
  }

  else
  {
    v59 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v50, @"APOdmlPredictionErrorDomain", 4009, 0);
    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsPrediction, v75, v59, 0);
    v76 = 0;
  }

  v83 = *MEMORY[0x277D85DE8];

  return v76;
}

- (void)fetchOnDeviceFeatures
{
  v4 = objc_msgSend_assetManager(self, a2, v2);
  v56 = objc_msgSend_featureForName_(v4, v5, @"appUsageVector");

  v8 = objc_msgSend_assetManager(self, v6, v7);
  v10 = objc_msgSend_featureForName_(v8, v9, @"appDownloadVector");

  v13 = objc_msgSend_assetManager(self, v11, v12);
  v15 = objc_msgSend_featureForName_(v13, v14, @"installedAppVector");

  isTwoDimensional = objc_msgSend_isTwoDimensional(self, v16, v17);
  v19 = MEMORY[0x277CBFF48];
  v23 = objc_msgSend_arrayOfNumbers(v56, v20, v21);
  if (isTwoDimensional)
  {
    objc_msgSend_twoDimensionalMultiarrayFromArray_(v19, v22, v23);
  }

  else
  {
    objc_msgSend_multiarrayFromArray_(v19, v22, v23);
  }
  v24 = ;

  v27 = objc_msgSend_isTwoDimensional(self, v25, v26);
  v28 = MEMORY[0x277CBFF48];
  v32 = objc_msgSend_arrayOfNumbers(v10, v29, v30);
  if (v27)
  {
    objc_msgSend_twoDimensionalMultiarrayFromArray_(v28, v31, v32);
  }

  else
  {
    objc_msgSend_multiarrayFromArray_(v28, v31, v32);
  }
  v33 = ;

  v36 = objc_msgSend_isTwoDimensional(self, v34, v35);
  v37 = MEMORY[0x277CBFF48];
  v41 = objc_msgSend_arrayOfNumbers(v15, v38, v39);
  if (v36)
  {
    objc_msgSend_twoDimensionalMultiarrayFromArray_(v37, v40, v41);
  }

  else
  {
    objc_msgSend_multiarrayFromArray_(v37, v40, v41);
  }
  v42 = ;

  if (objc_msgSend_count(v24, v43, v44))
  {
    v47 = objc_msgSend_featureValueWithMultiArray_(MEMORY[0x277CBFEF8], v45, v24);
    objc_msgSend_setAppUsageVector_(self, v48, v47);
  }

  if (objc_msgSend_count(v33, v45, v46))
  {
    v51 = objc_msgSend_featureValueWithMultiArray_(MEMORY[0x277CBFEF8], v49, v33);
    objc_msgSend_setAppDownloadVector_(self, v52, v51);
  }

  if (objc_msgSend_count(v42, v49, v50))
  {
    v54 = objc_msgSend_featureValueWithMultiArray_(MEMORY[0x277CBFEF8], v53, v42);
    objc_msgSend_setInstalledAppVector_(self, v55, v54);
  }
}

- (void)addOnDeviceFeaturesToDictionary:(id)a3
{
  v48 = a3;
  if (objc_msgSend_isTwoDimensional(self, v4, v5))
  {
    v8 = objc_msgSend_copy(v48, v6, v7);
    v10 = objc_msgSend__translateFeaturesToTwoDimensional_(self, v9, v8);
    v13 = objc_msgSend_mutableCopy(v10, v11, v12);
    objc_msgSend_addEntriesFromDictionary_(v48, v14, v13);
  }

  v15 = objc_msgSend_appUsageVector(self, v6, v7);

  if (v15)
  {
    v18 = objc_msgSend_appUsageVector(self, v16, v17);
    objc_msgSend_setValue_forKey_(v48, v19, v18, @"appUsageVector");

    v22 = objc_msgSend_appUsageVector(self, v20, v21);
    objc_msgSend_setValue_forKey_(v48, v23, v22, @"AppUsageVector");
  }

  v24 = objc_msgSend_appDownloadVector(self, v16, v17);

  if (v24)
  {
    v27 = objc_msgSend_appDownloadVector(self, v25, v26);
    objc_msgSend_setValue_forKey_(v48, v28, v27, @"appDownloadVector");

    v31 = objc_msgSend_appDownloadVector(self, v29, v30);
    objc_msgSend_setValue_forKey_(v48, v32, v31, @"AppDownloadVector");
  }

  v33 = objc_msgSend_installedAppVector(self, v25, v26);

  if (v33)
  {
    v36 = objc_msgSend_installedAppVector(self, v34, v35);
    objc_msgSend_setValue_forKey_(v48, v37, v36, @"installedAppVector");

    v40 = objc_msgSend_installedAppVector(self, v38, v39);
    objc_msgSend_setValue_forKey_(v48, v41, v40, @"AppInstalledVector");
  }

  v42 = objc_msgSend_userQueryVector(self, v34, v35);

  v45 = v48;
  if (v42)
  {
    v46 = objc_msgSend_userQueryVector(self, v43, v44);
    objc_msgSend_setValue_forKey_(v48, v47, v46, @"userQueryVector");

    v45 = v48;
  }
}

- (BOOL)isTwoDimensional:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_modelDescription(a3, a2, a3);
  v6 = objc_msgSend_inputDescriptionsByName(v3, v4, v5);
  v9 = objc_msgSend_allValues(v6, v7, v8);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v9;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v26, v30, 16);
  if (v14)
  {
    v15 = *v27;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = objc_msgSend_multiArrayConstraint(*(*(&v26 + 1) + 8 * i), v12, v13, v26);
        v20 = objc_msgSend_shape(v17, v18, v19);
        v23 = objc_msgSend_count(v20, v21, v22);

        if (v23 > 1)
        {
          LOBYTE(v14) = 1;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v26, v30, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_translateFeaturesToTwoDimensional:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v36, v40, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKeyedSubscript_(v6, v9, v13);
        if (objc_msgSend_type(v14, v15, v16) == 5)
        {
          v19 = MEMORY[0x277CBFEF8];
          v20 = MEMORY[0x277CBFF48];
          v21 = objc_msgSend_multiArrayValue(v14, v17, v18);
          v24 = objc_msgSend_arrayFromMultiarray(v21, v22, v23);
          v26 = objc_msgSend_twoDimensionalMultiarrayFromArray_(v20, v25, v24);
          v28 = objc_msgSend_featureValueWithMultiArray_(v19, v27, v26);

          objc_msgSend_setObject_forKeyedSubscript_(v6, v29, v28, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v36, v40, 16);
    }

    while (v10);
  }

  v32 = objc_msgSend_copy(v6, v30, v31);
  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)saveFeaturesFromResponse:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v42 = a3;
  obj = objc_msgSend_featureValues(v42, v4, v5);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v43, v47, 16);
  if (v7)
  {
    v10 = v7;
    v41 = *v44;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        v13 = objc_msgSend_featureValues(v42, v8, v9);
        v15 = objc_msgSend_valueForKey_(v13, v14, v12);

        v16 = [APOdmlVector alloc];
        v17 = MEMORY[0x277CCACA8];
        v20 = objc_msgSend_assetManager(self, v18, v19);
        v23 = objc_msgSend_odmlVersion(v20, v21, v22);
        v25 = objc_msgSend_stringWithFormat_(v17, v24, @"%d", v23);
        v28 = objc_msgSend_multiArrayValue(v15, v26, v27);
        v31 = objc_msgSend_arrayFromMultiarray(v28, v29, v30);
        v33 = objc_msgSend_initWithVersion_andArray_(v16, v32, v25, v31);

        v36 = objc_msgSend_assetManager(self, v34, v35);
        v38 = objc_msgSend_saveFeatureFromObject_withName_(v36, v37, v33, v12);

        ++v11;
      }

      while (v10 != v11);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v43, v47, 16);
    }

    while (v10);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)saveUserQueryVector
{
  v4 = objc_msgSend_userQueryVector(self, a2, v2);

  if (v4)
  {
    v5 = [APOdmlVector alloc];
    v6 = MEMORY[0x277CCACA8];
    v9 = objc_msgSend_assetManager(self, v7, v8);
    v12 = objc_msgSend_odmlVersion(v9, v10, v11);
    v14 = objc_msgSend_stringWithFormat_(v6, v13, @"%d", v12);
    v17 = objc_msgSend_userQueryVector(self, v15, v16);
    v20 = objc_msgSend_multiArrayValue(v17, v18, v19);
    v23 = objc_msgSend_arrayFromMultiarray(v20, v21, v22);
    v30 = objc_msgSend_initWithVersion_andArray_(v5, v24, v14, v23);

    v27 = objc_msgSend_assetManager(self, v25, v26);
    v29 = objc_msgSend_saveFeatureFromObject_withName_(v27, v28, v30, @"userQueryVector");
  }
}

@end