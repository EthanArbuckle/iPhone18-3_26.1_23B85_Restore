@interface APOdmlFeatureStorage
- (APOdmlFeatureStorage)initWithExperimentID:(id)a3 treatmentID:(id)a4 deploymentID:(int)a5 trialNamespace:(id)a6;
- (id)featureForName:(id)a3;
- (id)featureForName:(id)a3 backgroundContext:(id)a4;
- (id)featuresForName:(id)a3 fetchLimit:(unint64_t)a4 backgroundContext:(id)a5;
- (id)saveFeatureFromObject:(id)a3 withName:(id)a4;
- (id)vectorsForName:(id)a3 lookbackWindow:(id)a4;
- (void)deleteExpiredFeaturesForName:(id)a3 lookbackWindow:(id)a4;
@end

@implementation APOdmlFeatureStorage

- (APOdmlFeatureStorage)initWithExperimentID:(id)a3 treatmentID:(id)a4 deploymentID:(int)a5 trialNamespace:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = APOdmlFeatureStorage;
  v14 = [(APOdmlCoreDataStorage *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_experimentID, a3);
    objc_storeStrong(&v15->_treatmentID, a4);
    v15->_deploymentID = a5;
    objc_storeStrong(&v15->_trialNamespace, a6);
  }

  return v15;
}

- (id)featureForName:(id)a3 backgroundContext:(id)a4
{
  v4 = objc_msgSend_featuresForName_fetchLimit_backgroundContext_(self, a2, a3, 1, a4);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_firstObject(v4, v5, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)featureForName:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_storePrecheck(v5, v6, v7);
  if (v8)
  {
    v9 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = v8;
      v10 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "[%@] Get feature failed; CoreData failed to load with the following error: %@.", buf, 0x16u);
    }

    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v11, @"APOdmlFeatureStorageErrorDomain", 5004, 0);
    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v13, v12, 0);

    objc_sync_exit(v5);
    v14 = 0;
  }

  else
  {
    objc_sync_exit(v5);

    v17 = objc_msgSend_persistentContainer(v5, v15, v16);
    v20 = objc_msgSend_newBackgroundContext(v17, v18, v19);

    v22 = objc_msgSend_featureForName_backgroundContext_(v5, v21, v4, v20);
    v23 = v22;
    if (v22)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v31 = sub_260ED35D4;
      v32 = sub_260ED35E4;
      v33 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_260ED35EC;
      v27[3] = &unk_279AC61B0;
      v29 = buf;
      v28 = v22;
      objc_msgSend_performBlockAndWait_(v20, v24, v27);
      v14 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v14 = 0;
    }

    v5 = v20;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)vectorsForName:(id)a3 lookbackWindow:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v48 = a4;
  v6 = self;
  objc_sync_enter(v6);
  v9 = objc_msgSend_storePrecheck(v6, v7, v8);
  if (v9)
  {
    v10 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = v9;
      v11 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "[%@] Vector retrieval failed; CoreData failed to load with the following error: %@.", buf, 0x16u);
    }

    objc_sync_exit(v6);
    v12 = 0;
  }

  else
  {
    objc_sync_exit(v6);

    v15 = objc_msgSend_persistentContainer(v6, v13, v14);
    v18 = objc_msgSend_newBackgroundContext(v15, v16, v17);

    v20 = objc_msgSend_featuresForName_fetchLimit_backgroundContext_(v6, v19, v46, 0, v18);
    v47 = objc_msgSend_array(MEMORY[0x277CBEB18], v21, v22);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v23 = v20;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v50, v58, 16);
    if (v27)
    {
      v28 = *v51;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(v23);
          }

          v30 = *(*(&v50 + 1) + 8 * i);
          if (v30)
          {
            v31 = objc_msgSend_date(MEMORY[0x277CBEAA8], v25, v26);
            v34 = objc_msgSend_createdAt(v30, v32, v33);
            objc_msgSend_timeIntervalSinceDate_(v31, v35, v34);
            v37 = v36;

            objc_msgSend_doubleValue(v48, v38, v39);
            if (v37 <= v40)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v55 = sub_260ED35D4;
              v56 = sub_260ED35E4;
              v57 = 0;
              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = sub_260ED39E4;
              v49[3] = &unk_279AC61B0;
              v49[4] = v30;
              v49[5] = buf;
              objc_msgSend_performBlockAndWait_(v18, v25, v49);
              objc_msgSend_addObject_(v47, v41, *(*&buf[8] + 40));
              _Block_object_dispose(buf, 8);
            }
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v50, v58, 16);
      }

      while (v27);
    }

    v12 = objc_msgSend_copy(v47, v42, v43);
    v6 = v18;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)featuresForName:(id)a3 fetchLimit:(unint64_t)a4 backgroundContext:(id)a5
{
  v90[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v70 = a5;
  v9 = self;
  objc_sync_enter(v9);
  v12 = objc_msgSend_storePrecheck(v9, v10, v11);
  if (v12)
  {
    v13 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      v15 = v14;
      _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "[%@] Get feature failed; CoreData failed to load with the following error: %@.", buf, 0x16u);
    }

    v17 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v16, @"APOdmlFeatureStorageErrorDomain", 5004, 0);
    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v18, v17, 0);
  }

  else
  {
    v17 = 0;
  }

  objc_sync_exit(v9);
  if (v12)
  {
    v20 = 0;
    goto LABEL_24;
  }

  v21 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v19, @"Feature");
  v22 = MEMORY[0x277CCAC30];
  v25 = objc_msgSend_deploymentID(v9, v23, v24);
  v28 = objc_msgSend_experimentID(v9, v26, v27);
  v31 = objc_msgSend_treatmentID(v9, v29, v30);
  v33 = objc_msgSend_predicateWithFormat_(v22, v32, @"(deploymentID == %d) AND (experimentID == %@) AND (treatmentID == %@) AND (featureType == %@)", v25, v28, v31, v8);

  objc_msgSend_setPredicate_(v21, v34, v33);
  v36 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v35, @"createdAt", 0);
  v90[0] = v36;
  v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v90, 1);
  objc_msgSend_setSortDescriptors_(v21, v39, v38);

  if (a4)
  {
    objc_msgSend_setFetchLimit_(v21, v40, a4);
    v41 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = objc_opt_class();
      *buf = 138412546;
      *&buf[4] = v42;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      v43 = v42;
      _os_log_impl(&dword_260ECB000, v41, OS_LOG_TYPE_DEFAULT, "[%@] Fetching Features from CoreData with a fetch limit of %lu", buf, 0x16u);
    }
  }

  else
  {
    v41 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_opt_class();
      *buf = 138412290;
      *&buf[4] = v44;
      v45 = v44;
      _os_log_impl(&dword_260ECB000, v41, OS_LOG_TYPE_DEFAULT, "[%@] Fetching Features from CoreData with no fetch limit.", buf, 0xCu);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v87 = sub_260ED35D4;
  v88 = sub_260ED35E4;
  v89 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_260ED35D4;
  v80 = sub_260ED35E4;
  v81 = 0;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_260ED4170;
  v71[3] = &unk_279AC61D8;
  v74 = &v76;
  v72 = v70;
  v46 = v21;
  v73 = v46;
  v75 = buf;
  objc_msgSend_performBlockAndWait_(v72, v47, v71);
  v50 = v77[5];
  if (v50 && objc_msgSend_count(v50, v48, v49))
  {
    if (!*(*&buf[8] + 40))
    {
      v65 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v66 = objc_opt_class();
        v69 = objc_msgSend_count(v77[5], v67, v68);
        *v82 = 138412546;
        v83 = v66;
        v84 = 2048;
        v85 = v69;
        _os_log_impl(&dword_260ECB000, v65, OS_LOG_TYPE_DEFAULT, "[%@] Fetched %lu Features from CoreData", v82, 0x16u);
      }

      v20 = v77[5];
      v56 = v17;
      goto LABEL_23;
    }

    v51 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = objc_opt_class();
      v53 = *(*&buf[8] + 40);
      *v82 = 138412546;
      v83 = v52;
      v84 = 2112;
      v85 = v53;
      v54 = v52;
      _os_log_impl(&dword_260ECB000, v51, OS_LOG_TYPE_ERROR, "[%@] NSFetchRequest failed with error: %@", v82, 0x16u);
    }

    v56 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v55, @"APOdmlFeatureStorageErrorDomain", 5006, 0);

    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v57, v56, 0);
  }

  else
  {
    v58 = OdmlLogForCategory(4uLL);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = objc_opt_class();
      *v82 = 138412546;
      v83 = v59;
      v84 = 2112;
      v85 = v8;
      v60 = v59;
      _os_log_impl(&dword_260ECB000, v58, OS_LOG_TYPE_ERROR, "[%@] Failed to retrieve feature %@", v82, 0x16u);
    }

    v56 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v61, @"APOdmlFeatureStorageErrorDomain", 5005, 0);

    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v62, v56, 0);
  }

  v20 = 0;
LABEL_23:

  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(buf, 8);

  v17 = v56;
LABEL_24:

  v63 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)saveFeatureFromObject:(id)a3 withName:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v11 = objc_msgSend_storePrecheck(v8, v9, v10);
  if (v11)
  {
    v12 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = v11;
      v13 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v12, OS_LOG_TYPE_ERROR, "[%@] Save feature failed; CoreData failed to load with the following error: %@.", buf, 0x16u);
    }

    v15 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v14, @"APOdmlFeatureStorageErrorDomain", 5007, 0);
    objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v16, v15, 0);
    v17 = v11;
  }

  else
  {
    v15 = 0;
  }

  objc_sync_exit(v8);
  if (!v11)
  {
    v20 = objc_msgSend_persistentContainer(v8, v18, v19);
    v23 = objc_msgSend_newBackgroundContext(v20, v21, v22);

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v47 = sub_260ED35D4;
    v48 = sub_260ED35E4;
    v49 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_260ED45A0;
    v36[3] = &unk_279AC6200;
    v24 = v23;
    v37 = v24;
    v38 = v8;
    v39 = v7;
    v40 = v6;
    v41 = buf;
    objc_msgSend_performBlockAndWait_(v24, v25, v36);
    v26 = *(*&buf[8] + 40);
    if (v26)
    {
      v27 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = *(*&buf[8] + 40);
        *v42 = 138412546;
        v43 = v28;
        v44 = 2112;
        v45 = v29;
        v30 = v28;
        _os_log_impl(&dword_260ECB000, v27, OS_LOG_TYPE_ERROR, "[%@] Failed to save object with error: %@", v42, 0x16u);
      }

      v32 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v31, @"APOdmlFeatureStorageErrorDomain", 5008, 0);

      objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v33, v32, 0);
      v26 = *(*&buf[8] + 40);
      v15 = v32;
    }

    v11 = v26;

    _Block_object_dispose(buf, 8);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)deleteExpiredFeaturesForName:(id)a3 lookbackWindow:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v42 = a4;
  v6 = self;
  objc_sync_enter(v6);
  v9 = objc_msgSend_storePrecheck(v6, v7, v8);
  if (v9)
  {
    v10 = OdmlLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = v9;
      v11 = *&buf[4];
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "[%@] Delete feature failed; CoreData failed to load with the following error: %@.", buf, 0x16u);
    }

    v12 = v6;
    objc_sync_exit(v6);
  }

  else
  {
    objc_sync_exit(v6);

    v15 = objc_msgSend_persistentContainer(v6, v13, v14);
    v18 = objc_msgSend_newBackgroundContext(v15, v16, v17);

    objc_msgSend_featuresForName_fetchLimit_backgroundContext_(v6, v19, v40, 0, v18);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v41 = v51 = 0u;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v20, &v50, v62, 16);
    if (v22)
    {
      v23 = *v51;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(v41);
          }

          v25 = *(*(&v50 + 1) + 8 * i);
          if (v25)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v59 = 0;
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = sub_260ED4B94;
            v49[3] = &unk_279AC61B0;
            v49[4] = v25;
            v49[5] = buf;
            objc_msgSend_performBlockAndWait_(v18, v21, v49);
            v26 = *(*&buf[8] + 24);
            objc_msgSend_doubleValue(v42, v27, v28);
            if (v26 >= v29)
            {
              v46[0] = MEMORY[0x277D85DD0];
              v46[1] = 3221225472;
              v46[2] = sub_260ED4C10;
              v46[3] = &unk_279AC6228;
              v47 = v18;
              v48 = v25;
              objc_msgSend_performBlockAndWait_(v47, v30, v46);
            }

            _Block_object_dispose(buf, 8);
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v21, &v50, v62, 16);
      }

      while (v22);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v59 = sub_260ED35D4;
    v60 = sub_260ED35E4;
    v61 = 0;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_260ED4C1C;
    v43[3] = &unk_279AC6250;
    v12 = v18;
    v44 = v12;
    v45 = buf;
    objc_msgSend_performBlockAndWait_(v12, v31, v43);
    if (*(*&buf[8] + 40))
    {
      v32 = OdmlLogForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = *(*&buf[8] + 40);
        *v54 = 138412546;
        v55 = v33;
        v56 = 2112;
        v57 = v34;
        v35 = v33;
        _os_log_impl(&dword_260ECB000, v32, OS_LOG_TYPE_ERROR, "[%@] Failed to delete expired objects with error: %@", v54, 0x16u);
      }

      v37 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v36, @"APOdmlFeatureStorageErrorDomain", 5009, 0);
      objc_msgSend_sendEvent_additionalDetails_(APOdmlAnalyticsFeatureStorage, v38, v37, 0);
    }

    _Block_object_dispose(buf, 8);
  }

  v39 = *MEMORY[0x277D85DE8];
}

@end