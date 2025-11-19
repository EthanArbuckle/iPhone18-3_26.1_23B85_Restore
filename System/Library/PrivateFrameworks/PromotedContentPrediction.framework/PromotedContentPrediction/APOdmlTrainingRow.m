@interface APOdmlTrainingRow
- (APOdmlTrainingRow)initWithFeatures:(id)a3;
- (BOOL)isValidFeature:(id)a3 featureName:(id)a4 min:(id)a5 max:(id)a6 sentinelValues:(id)a7;
- (BOOL)isValidRow:(id)a3;
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
- (void)reportError:(int64_t)a3 name:(id)a4 value:(id)a5;
@end

@implementation APOdmlTrainingRow

- (APOdmlTrainingRow)initWithFeatures:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APOdmlTrainingRow;
  v6 = [(APOdmlTrainingRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_features, a3);
  }

  return v7;
}

- (BOOL)isValidRow:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = objc_msgSend_features(self, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v29, v33, 16);
  if (v8)
  {
    v10 = v8;
    v28 = *v30;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = objc_msgSend_rangeBoundaryForFeature_upperBound_(v4, v9, v12, 0);
        v15 = objc_msgSend_rangeBoundaryForFeature_upperBound_(v4, v14, v12, 1);
        v17 = objc_msgSend_sentinelValuesForFeature_(v4, v16, v12);
        v20 = objc_msgSend_features(self, v18, v19);
        v22 = objc_msgSend_objectForKey_(v20, v21, v12);
        LODWORD(v12) = objc_msgSend_isValidFeature_featureName_min_max_sentinelValues_(self, v23, v22, v12, v13, v15, v17);

        if (!v12)
        {
          v24 = 0;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v29, v33, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v24 = 1;
LABEL_11:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)isValidFeature:(id)a3 featureName:(id)a4 min:(id)a5 max:(id)a6 sentinelValues:(id)a7
{
  v70 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v17 = v12;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v64, v69, 16);
  if (!v19)
  {
    LOBYTE(v25) = 1;
    goto LABEL_24;
  }

  v22 = v19;
  v57 = self;
  v58 = v13;
  v23 = *v65;
  v59 = v15;
  v55 = *v65;
  while (2)
  {
    v24 = 0;
    v56 = v22;
    do
    {
      if (*v65 != v23)
      {
        objc_enumerationMutation(v17);
      }

      v25 = *(*(&v64 + 1) + 8 * v24);
      if (!v25)
      {
        v13 = v58;
        objc_msgSend_reportError_name_value_(v57, v20, 8044, v58, 0);
        goto LABEL_24;
      }

      if (v14)
      {
        objc_msgSend_floatValue(*(*(&v64 + 1) + 8 * v24), v20, v21);
        v27 = v26;
        objc_msgSend_floatValue(v14, v28, v29);
        if (v27 < v30)
        {
          v54 = &kAPODMLDESPluginFeatureMinExceeded;
LABEL_28:
          v13 = v58;
          objc_msgSend_reportError_name_value_(v57, v20, *v54, v58, v25);
          LOBYTE(v25) = 0;
          goto LABEL_24;
        }
      }

      if (v15)
      {
        objc_msgSend_floatValue(v25, v20, v21);
        v32 = v31;
        objc_msgSend_floatValue(v15, v33, v34);
        if (v32 > v35)
        {
          v54 = &kAPODMLDESPluginFeatureMaxExceeded;
          goto LABEL_28;
        }
      }

      v36 = v14;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v37 = v16;
      v38 = v16;
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v60, v68, 16);
      if (v40)
      {
        v43 = v40;
        v44 = *v61;
        while (2)
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v61 != v44)
            {
              objc_enumerationMutation(v38);
            }

            v46 = *(*(&v60 + 1) + 8 * i);
            objc_msgSend_floatValue(v25, v41, v42);
            v48 = v47;
            objc_msgSend_floatValue(v46, v49, v50);
            if (v48 == v51)
            {
              v13 = v58;
              objc_msgSend_reportError_name_value_(v57, v41, 8044, v58, v25);

              LOBYTE(v25) = 0;
              v14 = v36;
              v15 = v59;
              v16 = v37;
              goto LABEL_24;
            }
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v60, v68, 16);
          if (v43)
          {
            continue;
          }

          break;
        }
      }

      ++v24;
      v23 = v55;
      v14 = v36;
      v15 = v59;
      v16 = v37;
    }

    while (v24 != v56);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v64, v69, 16);
    LOBYTE(v25) = 1;
    v13 = v58;
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_24:

  v52 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)reportError:(int64_t)a3 name:(id)a4 value:(id)a5
{
  v7 = MEMORY[0x277CCA9B8];
  v8 = a5;
  v9 = a4;
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v7, v10, @"APODMLDESPluginErrorDomain", a3, 0);
  v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12);
  objc_msgSend_setValue_forKey_(v13, v14, v9, @"featureName");

  objc_msgSend_setValue_forKey_(v13, v15, v8, @"featureValue");
  v18 = objc_msgSend_copy(v13, v16, v17);
  objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsModelTraining, v19, v20, v18);
}

- (NSSet)featureNames
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_msgSend_features(self, a2, v2);
  v7 = objc_msgSend_allKeys(v4, v5, v6);
  v9 = objc_msgSend_setWithArray_(v3, v8, v7);

  return v9;
}

- (id)featureValueForName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_features(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);

  v12 = objc_msgSend_twoDimensionalMultiarrayFromArray_(MEMORY[0x277CBFF48], v10, v9);
  if (v12)
  {
    v13 = objc_msgSend_featureValueWithMultiArray_(MEMORY[0x277CBFEF8], v11, v12);
  }

  else
  {
    v14 = OdmlLogForCategory(0xBuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "Failed to initialize feature value for %@", &v17, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

@end