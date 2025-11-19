@interface APOdmlAssetManager
- (APOdmlAssetManager)initWithNamespace:(id)a3 andClient:(id)a4;
- (NSCache)modelCache;
- (NSString)experimentID;
- (NSString)odmlNamespace;
- (NSString)treatmentID;
- (id)BOOLeanValueForFactor:(id)a3;
- (id)currentMLModel;
- (id)doubleValueForFactor:(id)a3;
- (id)featureForName:(id)a3;
- (id)featuresForName:(id)a3;
- (id)longValueForFactor:(id)a3;
- (id)pathForFactor:(id)a3 isDirectory:(BOOL)a4;
- (id)saveFeatureFromObject:(id)a3 withName:(id)a4;
- (id)stringValueForFactor:(id)a3;
- (int)deploymentID;
- (void)deleteExpiredFeaturesForName:(id)a3 lookbackWindow:(id)a4;
@end

@implementation APOdmlAssetManager

- (APOdmlAssetManager)initWithNamespace:(id)a3 andClient:(id)a4
{
  v7 = a3;
  v8 = a4;
  v32.receiver = self;
  v32.super_class = APOdmlAssetManager;
  v9 = [(APOdmlAssetManager *)&v32 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_trialNamespace, a3);
    if (v8)
    {
      objc_storeStrong(&v10->_trialClient, a4);
      v12 = objc_msgSend_experimentIdentifiersWithNamespaceName_(v8, v11, v7);
      trialIdentifiers = v10->_trialIdentifiers;
      v10->_trialIdentifiers = v12;

      v14 = [APOdmlFeatureStorage alloc];
      v17 = objc_msgSend_experimentId(v10->_trialIdentifiers, v15, v16);
      v20 = objc_msgSend_treatmentId(v10->_trialIdentifiers, v18, v19);
      v23 = objc_msgSend_deploymentId(v10->_trialIdentifiers, v21, v22);
      v25 = objc_msgSend_initWithExperimentID_treatmentID_deploymentID_trialNamespace_(v14, v24, v17, v20, v23, v7);
      featureStorage = v10->_featureStorage;
      v10->_featureStorage = v25;

      v27 = [APOdmlUnfairLock alloc];
      v29 = objc_msgSend_initWithOptions_(v27, v28, 1);
      modelCacheLock = v10->_modelCacheLock;
      v10->_modelCacheLock = v29;
    }
  }

  return v10;
}

- (NSCache)modelCache
{
  modelCache = self->_modelCache;
  if (!modelCache)
  {
    v5 = objc_msgSend_modelCacheLock(self, a2, v2);
    objc_msgSend_lock(v5, v6, v7);

    if (!self->_modelCache)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
      v11 = self->_modelCache;
      self->_modelCache = v10;

      objc_msgSend_setCountLimit_(self->_modelCache, v12, 3);
    }

    v13 = objc_msgSend_modelCacheLock(self, v8, v9);
    objc_msgSend_unlock(v13, v14, v15);

    modelCache = self->_modelCache;
  }

  return modelCache;
}

- (int)deploymentID
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_trialIdentifiers(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_trialIdentifiers(self, v5, v6);
    v10 = objc_msgSend_deploymentId(v7, v8, v9);

    v11 = *MEMORY[0x277D85DE8];
    return v10;
  }

  else
  {
    v13 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = objc_opt_class();
      v14 = v17;
      _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial identifiers, cannot find deploymentID.", &v16, 0xCu);
    }

    v15 = *MEMORY[0x277D85DE8];
    return -1;
  }
}

- (NSString)experimentID
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_trialIdentifiers(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_trialIdentifiers(self, v5, v6);
    v10 = objc_msgSend_experimentId(v7, v8, v9);
  }

  else
  {
    v11 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial identifiers, cannot find experimentID.", &v15, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSString)treatmentID
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_trialIdentifiers(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_trialIdentifiers(self, v5, v6);
    v10 = objc_msgSend_treatmentId(v7, v8, v9);
  }

  else
  {
    v11 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial identifiers, cannot find treatmentID.", &v15, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSString)odmlNamespace
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_trialNamespace(self, a2, v2);

  if (v4)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_trialNamespace(self, v5, v6);
    v10 = objc_msgSend_stringWithString_(v7, v9, v8);
  }

  else
  {
    v11 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      v12 = v16;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "[%@] No namespace initialized with AssetManager; namespace not found.", &v15, 0xCu);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)currentMLModel
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = 0x277CBE000uLL;
  v5 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2);
  v8 = objc_msgSend_trialClient(self, v6, v7);

  if (v8)
  {
    v10 = objc_msgSend_pathForFactor_isDirectory_(self, v9, @"PTTRMLModel", 1);
    v13 = objc_msgSend_modelCache(self, v11, v12);
    v15 = objc_msgSend_objectForKey_(v13, v14, v10);

    if (v15)
    {
      v17 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v22 = objc_msgSend_description(v10, v20, v21);
        *buf = 138412546;
        v79 = v18;
        v80 = 2112;
        v81 = v22;
        _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_DEFAULT, "[%@] Returning cached model for %@.", buf, 0x16u);

        v4 = 0x277CBE000;
      }
    }

    else
    {
      v27 = objc_msgSend_BOOLeanValueForFactor_(self, v16, @"PredictionUsesCPUOnly");
      v30 = objc_msgSend_BOOLValue(v27, v28, v29);

      v32 = objc_msgSend_modelFromCompiledURL_isCPUOnly_(MEMORY[0x277CBFF20], v31, v10, v30);
      if (!v32)
      {
        v72 = OdmlLogForCategory(0);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v79 = objc_opt_class();
          v73 = v79;
          _os_log_impl(&dword_260ECB000, v72, OS_LOG_TYPE_ERROR, "[%@] Could not open model.", buf, 0xCu);
        }

        v41 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v74, @"APOdmlRerankingErrorDomain", 2010, 0);
        objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsReranking, v75, v41, 0);
        v15 = 0;
        v48 = @"ERROR: Could not find valid model description.";
        goto LABEL_15;
      }

      v15 = v32;
      v17 = objc_msgSend_modelCache(self, v33, v34);
      objc_msgSend_setObject_forKey_(v17, v35, v15, v10);
    }

    v38 = objc_msgSend_modelDescription(v15, v36, v37);
    v41 = objc_msgSend_metadata(v38, v39, v40);

    v43 = objc_msgSend_objectForKey_(v41, v42, @"MLModelDescriptionKey");
    v45 = v43;
    if (v43 && (objc_msgSend_isEqualToString_(v43, v44, &stru_2873677E0) & 1) == 0)
    {
      v49 = MEMORY[0x277CCACA8];
      v50 = objc_msgSend_trialNamespace(self, v46, v47);
      v48 = objc_msgSend_stringWithFormat_(v49, v51, @"MLModel for namespace %@: %@", v50, v45);
    }

    else
    {
      v48 = @"ERROR: Could not find valid model description.";
    }

LABEL_15:
    v77[0] = @"MLModel";
    v76[0] = @"loggerKey";
    v76[1] = @"uniqueIdentifier";
    v54 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v52, v53);
    v57 = objc_msgSend_UUIDString(v54, v55, v56);
    v76[2] = @"message";
    v77[1] = v57;
    v77[2] = v48;
    v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, v77, v76, 3);

    v60 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v63 = objc_msgSend_description(v59, v61, v62);
      *buf = 138412290;
      v79 = v63;
      _os_log_impl(&dword_260ECB000, v60, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v65 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v64, @"APOdmlRerankingErrorDomain", 2101, 0);
    v68 = objc_msgSend_date(*(v4 + 2728), v66, v67);
    objc_msgSend_sendTimedEvent_statusSuccess_additionalDetails_startDate_endDate_(APOdmlAnalyticsReranking, v69, v65, 1, 0, v5, v68);

    goto LABEL_18;
  }

  v23 = OdmlLogForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v79 = objc_opt_class();
    v24 = v79;
    _os_log_impl(&dword_260ECB000, v23, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for MLModel.", buf, 0xCu);
  }

  v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v25, @"APOdmlRerankingErrorDomain", 2009, 0);
  objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsReranking, v26, v10, 0);
  v15 = 0;
LABEL_18:

  v70 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)pathForFactor:(id)a3 isDirectory:(BOOL)a4
{
  v4 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_trialClient(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_trialClient(self, v10, v11);
    v15 = objc_msgSend_trialNamespace(self, v13, v14);
    v17 = objc_msgSend_levelForFactor_withNamespaceName_(v12, v16, v6, v15);

    if (v17)
    {
      if (v4)
      {
        objc_msgSend_directoryValue(v17, v18, v19);
      }

      else
      {
        objc_msgSend_fileValue(v17, v18, v19);
      }
      v20 = ;
      v25 = v20;
      if (v20)
      {
        if (!objc_msgSend_hasPath(v20, v21, v22) || (v33 = MEMORY[0x277CBEBC0], objc_msgSend_path(v25, v31, v32), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend_fileURLWithPath_(v33, v35, v34), v24 = objc_claimAutoreleasedReturnValue(), v34, !v24))
        {
          v36 = OdmlLogForCategory(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v51 = 138412290;
            v52 = objc_opt_class();
            v37 = v52;
            _os_log_impl(&dword_260ECB000, v36, OS_LOG_TYPE_ERROR, "[%@] Asset URL not found.", &v51, 0xCu);
          }

          v24 = 0;
        }

        v38 = OdmlLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = objc_opt_class();
          v40 = v39;
          v43 = objc_msgSend_trialNamespace(self, v41, v42);
          v51 = 138413058;
          v52 = v39;
          v53 = 2112;
          v54 = v6;
          v55 = 2112;
          v56 = v43;
          v57 = 2112;
          v58 = v24;
          _os_log_impl(&dword_260ECB000, v38, OS_LOG_TYPE_DEFAULT, "[%@] Path for factor %@ in namespace %@: %@", &v51, 0x2Au);
        }
      }

      else
      {
        v38 = OdmlLogForCategory(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          v45 = v44;
          v48 = objc_msgSend_trialNamespace(self, v46, v47);
          v51 = 138412802;
          v52 = v44;
          v53 = 2112;
          v54 = v6;
          v55 = 2112;
          v56 = v48;
          _os_log_impl(&dword_260ECB000, v38, OS_LOG_TYPE_ERROR, "[%@] File not found for level %@ in namespace %@", &v51, 0x20u);
        }

        v24 = 0;
      }
    }

    else
    {
      v25 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = v26;
        v30 = objc_msgSend_trialNamespace(self, v28, v29);
        v51 = 138412802;
        v52 = v26;
        v53 = 2112;
        v54 = v6;
        v55 = 2112;
        v56 = v30;
        _os_log_impl(&dword_260ECB000, v25, OS_LOG_TYPE_ERROR, "[%@] Level not found for factor %@ in namespace %@", &v51, 0x20u);
      }

      v24 = 0;
    }
  }

  else
  {
    v17 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v51 = 138412546;
      v52 = objc_opt_class();
      v53 = 2112;
      v54 = v6;
      v23 = v52;
      _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for %@", &v51, 0x16u);
    }

    v24 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)doubleValueForFactor:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_trialClient(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_trialClient(self, v8, v9);
    v13 = objc_msgSend_trialNamespace(self, v11, v12);
    v15 = objc_msgSend_levelForFactor_withNamespaceName_(v10, v14, v4, v13);

    if (v15)
    {
      v18 = MEMORY[0x277CCABB0];
      objc_msgSend_doubleValue(v15, v16, v17);
      v21 = objc_msgSend_numberWithDouble_(v18, v19, v20);
      v22 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = v23;
        v27 = objc_msgSend_trialNamespace(self, v25, v26);
        v36 = 138413058;
        v37 = v23;
        v38 = 2112;
        v39 = v4;
        v40 = 2112;
        v41 = v27;
        v42 = 2112;
        v43 = v21;
        _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_DEFAULT, "[%@] Double value for factor %@ in namespace %@: %@", &v36, 0x2Au);
      }
    }

    else
    {
      v22 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = v29;
        v33 = objc_msgSend_trialNamespace(self, v31, v32);
        v36 = 138412802;
        v37 = v29;
        v38 = 2112;
        v39 = v4;
        v40 = 2112;
        v41 = v33;
        _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_ERROR, "[%@] Level not found for factor %@ in namespace %@", &v36, 0x20u);
      }

      v21 = 0;
    }
  }

  else
  {
    v15 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v36 = 138412546;
      v37 = objc_opt_class();
      v38 = 2112;
      v39 = v4;
      v28 = v37;
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for %@", &v36, 0x16u);
    }

    v21 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)longValueForFactor:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_trialClient(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_trialClient(self, v8, v9);
    v13 = objc_msgSend_trialNamespace(self, v11, v12);
    v15 = objc_msgSend_levelForFactor_withNamespaceName_(v10, v14, v4, v13);

    if (v15)
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = objc_msgSend_longValue(v15, v16, v17);
      v21 = objc_msgSend_numberWithLong_(v18, v20, v19);
      v22 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = v23;
        v27 = objc_msgSend_trialNamespace(self, v25, v26);
        v36 = 138413058;
        v37 = v23;
        v38 = 2112;
        v39 = v4;
        v40 = 2112;
        v41 = v27;
        v42 = 2112;
        v43 = v21;
        _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_DEFAULT, "[%@] Long value for factor %@ in namespace %@: %@", &v36, 0x2Au);
      }
    }

    else
    {
      v22 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = v29;
        v33 = objc_msgSend_trialNamespace(self, v31, v32);
        v36 = 138412802;
        v37 = v29;
        v38 = 2112;
        v39 = v4;
        v40 = 2112;
        v41 = v33;
        _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_ERROR, "[%@] Level not found for factor %@ in namespace %@", &v36, 0x20u);
      }

      v21 = 0;
    }
  }

  else
  {
    v15 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v36 = 138412546;
      v37 = objc_opt_class();
      v38 = 2112;
      v39 = v4;
      v28 = v37;
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for %@", &v36, 0x16u);
    }

    v21 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)BOOLeanValueForFactor:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_trialClient(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_trialClient(self, v8, v9);
    v13 = objc_msgSend_trialNamespace(self, v11, v12);
    v15 = objc_msgSend_levelForFactor_withNamespaceName_(v10, v14, v4, v13);

    if (v15)
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = objc_msgSend_BOOLeanValue(v15, v16, v17);
      v21 = objc_msgSend_numberWithBool_(v18, v20, v19);
      v22 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = v23;
        v27 = objc_msgSend_trialNamespace(self, v25, v26);
        v36 = 138413058;
        v37 = v23;
        v38 = 2112;
        v39 = v4;
        v40 = 2112;
        v41 = v27;
        v42 = 2112;
        v43 = v21;
        _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_DEFAULT, "[%@] Boolean value for factor %@ in namespace %@: %@", &v36, 0x2Au);
      }
    }

    else
    {
      v22 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = v29;
        v33 = objc_msgSend_trialNamespace(self, v31, v32);
        v36 = 138412802;
        v37 = v29;
        v38 = 2112;
        v39 = v4;
        v40 = 2112;
        v41 = v33;
        _os_log_impl(&dword_260ECB000, v22, OS_LOG_TYPE_ERROR, "[%@] Level not found for factor %@ in namespace %@", &v36, 0x20u);
      }

      v21 = 0;
    }
  }

  else
  {
    v15 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v36 = 138412546;
      v37 = objc_opt_class();
      v38 = 2112;
      v39 = v4;
      v28 = v37;
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for %@", &v36, 0x16u);
    }

    v21 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)stringValueForFactor:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_trialClient(self, v5, v6);

  if (!v7)
  {
    v15 = OdmlLogForCategory(0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v28 = 0;
      goto LABEL_12;
    }

    v36 = 138412546;
    v37 = objc_opt_class();
    v38 = 2112;
    v39 = v4;
    v17 = v37;
    _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%@] Nil value for Trial client, cannot complete request for %@", &v36, 0x16u);
LABEL_10:

    goto LABEL_11;
  }

  v10 = objc_msgSend_trialClient(self, v8, v9);
  v13 = objc_msgSend_trialNamespace(self, v11, v12);
  v15 = objc_msgSend_levelForFactor_withNamespaceName_(v10, v14, v4, v13);

  v16 = OdmlLogForCategory(0);
  v17 = v16;
  if (!v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = v29;
      v33 = objc_msgSend_trialNamespace(self, v31, v32);
      v36 = 138412802;
      v37 = v29;
      v38 = 2112;
      v39 = v4;
      v40 = 2112;
      v41 = v33;
      _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_ERROR, "[%@] Level not found for factor %@ in namespace %@", &v36, 0x20u);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = v18;
    v22 = objc_msgSend_trialNamespace(self, v20, v21);
    v25 = objc_msgSend_stringValue(v15, v23, v24);
    v36 = 138413058;
    v37 = v18;
    v38 = 2112;
    v39 = v4;
    v40 = 2112;
    v41 = v22;
    v42 = 2112;
    v43 = v25;
    _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_DEFAULT, "[%@] String value for factor %@ in namespace %@: %@", &v36, 0x2Au);
  }

  v28 = objc_msgSend_stringValue(v15, v26, v27);
LABEL_12:

  v34 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)saveFeatureFromObject:(id)a3 withName:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_featureStorage(self, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_featureStorage(self, v11, v12);
    v15 = objc_msgSend_saveFeatureFromObject_withName_(v13, v14, v6, v7);
  }

  else
  {
    v16 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412546;
      v22 = objc_opt_class();
      v23 = 2112;
      v24 = v7;
      v17 = v22;
      _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_ERROR, "[%@] Nil value for FeatureStorage, cannot save feature %@", &v21, 0x16u);
    }

    v15 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v18, @"APOdmlFeatureStorageErrorDomain", 5016, 0);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)featureForName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_featureStorage(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_featureStorage(self, v8, v9);
    v12 = objc_msgSend_featureForName_(v10, v11, v4);
  }

  else
  {
    v13 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = v4;
      v14 = v18;
      _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "[%@] Nil value for FeatureStorage, cannot retrieve feature %@", &v17, 0x16u);
    }

    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)featuresForName:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_featureStorage(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_featureStorage(self, v8, v9);
    v12 = objc_msgSend_doubleValueForFactor_(self, v11, @"LookbackWindow");
    v14 = objc_msgSend_vectorsForName_lookbackWindow_(v10, v13, v4, v12);
  }

  else
  {
    v15 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412546;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = v4;
      v16 = v20;
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%@] Nil value for FeatureStorage, cannot retrieve feature %@", &v19, 0x16u);
    }

    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)deleteExpiredFeaturesForName:(id)a3 lookbackWindow:(id)a4
{
  v14 = a3;
  v6 = a4;
  v9 = objc_msgSend_featureStorage(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_featureStorage(self, v10, v11);
    objc_msgSend_deleteExpiredFeaturesForName_lookbackWindow_(v12, v13, v14, v6);
  }
}

@end