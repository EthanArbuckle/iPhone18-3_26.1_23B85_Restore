@interface APOdmlFeatureCalculatorManager
- (APOdmlFeatureCalculatorManager)initWithActivity:(id)a3;
- (id)parseErrorInfo:(id)a3 calculator:(id)a4;
- (id)taskDeferred;
- (void)calculateAllFeatures:(id)a3;
- (void)iterateThroughCalculators:(id)a3;
- (void)runFeatureCalculator:(id)a3;
@end

@implementation APOdmlFeatureCalculatorManager

- (APOdmlFeatureCalculatorManager)initWithActivity:(id)a3
{
  v5 = a3;
  v38.receiver = self;
  v38.super_class = APOdmlFeatureCalculatorManager;
  v6 = [(APOdmlFeatureCalculatorManager *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpc_activity, a3);
    v8 = [APOdmlXpcLifecycleHandler alloc];
    v10 = objc_msgSend_initWithActivity_(v8, v9, v5);
    lifeCycleHandler = v7->_lifeCycleHandler;
    v7->_lifeCycleHandler = v10;

    v12 = MEMORY[0x277CBEA60];
    v14 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v13, 0);
    v16 = objc_msgSend_arrayWithObjects_(v12, v15, v14, 0);
    placementTypes = v7->_placementTypes;
    v7->_placementTypes = v16;

    v18 = MEMORY[0x277CBEA60];
    v20 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v19, 0);
    v22 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v21, 1);
    v24 = objc_msgSend_arrayWithObjects_(v18, v23, v20, v22, 0);
    assetManagerTypes = v7->_assetManagerTypes;
    v7->_assetManagerTypes = v24;

    v28 = objc_msgSend_array(MEMORY[0x277CBEB18], v26, v27);
    calculatorErrors = v7->_calculatorErrors;
    v7->_calculatorErrors = v28;

    v32 = objc_msgSend_array(MEMORY[0x277CBEB18], v30, v31);
    validFeatureCalculators = v7->_validFeatureCalculators;
    v7->_validFeatureCalculators = v32;

    v34 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v34;

    objc_msgSend_setMaxConcurrentOperationCount_(v7->_operationQueue, v36, 1);
  }

  return v7;
}

- (void)calculateAllFeatures:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = objc_msgSend_placementTypes(self, v4, v5);
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v55, v60, 16);
  if (v47)
  {
    v46 = *v56;
    do
    {
      v9 = 0;
      do
      {
        if (*v56 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v48 = v9;
        v10 = *(*(&v55 + 1) + 8 * v9);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v11 = objc_msgSend_assetManagerTypes(self, v7, v8);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v51, v59, 16);
        if (v13)
        {
          v16 = v13;
          v17 = *v52;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v52 != v17)
              {
                objc_enumerationMutation(v11);
              }

              v19 = *(*(&v51 + 1) + 8 * i);
              v20 = objc_msgSend_unsignedIntegerValue(v10, v14, v15);
              v23 = objc_msgSend_unsignedIntegerValue(v19, v21, v22);
              v24 = [APOdmlFeatureCalculator alloc];
              v27 = objc_msgSend_xpc_activity(self, v25, v26);
              v29 = objc_msgSend_initWithActivity_placementType_assetManagerType_(v24, v28, v27, v20, v23);

              v32 = objc_msgSend_validFeatureCalculators(self, v30, v31);
              objc_msgSend_addObject_(v32, v33, v29);
            }

            v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v51, v59, 16);
          }

          while (v16);
        }

        v9 = v48 + 1;
      }

      while (v48 + 1 != v47);
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v55, v60, 16);
    }

    while (v47);
  }

  v38 = objc_msgSend_taskDeferred(self, v34, v35);
  if (v38)
  {
    v39 = objc_msgSend_operationQueue(self, v36, v37);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_260EEBA60;
    v49[3] = &unk_279AC6380;
    v40 = v44;
    v50 = v44;
    objc_msgSend_addOperationWithBlock_(v39, v41, v49);
  }

  else
  {
    v42 = self;
    v40 = v44;
    objc_msgSend_iterateThroughCalculators_(v42, v36, v44);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (id)taskDeferred
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_lifeCycleHandler(self, a2, v2);
  IsDeferred = objc_msgSend_taskIsDeferred(v4, v5, v6);

  if (IsDeferred)
  {
    v10 = OdmlLogForCategory(3uLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, @"APOdmlFeatureCalculatorErrorDomain", 1003, 0);
      goto LABEL_12;
    }

    v30 = 138477827;
    v31 = objc_opt_class();
    v11 = v31;
    v12 = "[%{private}@] Device Knowledge task previously deferred. Bailing out...";
    goto LABEL_4;
  }

  v17 = objc_msgSend_lifeCycleHandler(self, v8, v9);
  shouldDefer = objc_msgSend_shouldDefer(v17, v18, v19);

  if (shouldDefer)
  {
    v23 = objc_msgSend_lifeCycleHandler(self, v21, v22);
    v26 = objc_msgSend_deferTask(v23, v24, v25);

    v27 = OdmlLogForCategory(3uLL);
    v10 = v27;
    if (!v26)
    {
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v30 = 138477827;
      v31 = objc_opt_class();
      v11 = v31;
      v12 = "[%{private}@] ERROR: failed to defer task while iterating through calculators.";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_5;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v30 = 138477827;
    v31 = objc_opt_class();
    v11 = v31;
    v12 = "[%{private}@] Device Knowledge task has been deferred. Bailing out...";
LABEL_4:
    v13 = v10;
    v14 = OS_LOG_TYPE_DEFAULT;
LABEL_5:
    _os_log_impl(&dword_260ECB000, v13, v14, v12, &v30, 0xCu);

    goto LABEL_6;
  }

  v16 = 0;
LABEL_12:
  v28 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)iterateThroughCalculators:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_validFeatureCalculators(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (!v10)
  {
    v13 = OdmlLogForCategory(3uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v28 = objc_opt_class();
      v14 = v28;
      _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "[%{private}@] No valid feature calculators found.", buf, 0xCu);
    }

    v17 = objc_msgSend_operationQueue(self, v15, v16);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_260EEBE58;
    v25[3] = &unk_279AC6380;
    v26 = v4;
    objc_msgSend_addOperationWithBlock_(v17, v18, v25);
  }

  v19 = objc_msgSend_validFeatureCalculators(self, v11, v12);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_260EEBE70;
  v23[3] = &unk_279AC63F8;
  v23[4] = self;
  v24 = v4;
  v20 = v4;
  objc_msgSend_enumerateObjectsUsingBlock_(v19, v21, v23);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)runFeatureCalculator:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = 0;
  *&v8 = 138478595;
  v78 = v8;
  v9 = 0x277CCA000uLL;
  do
  {
    v10 = objc_msgSend_taskDeferred(self, v4, v5, v78);
    v13 = v10;
    if (v10)
    {
      v14 = objc_msgSend_userInfo(v10, v11, v12);
      v17 = objc_msgSend_mutableCopy(v14, v15, v16);
      v19 = objc_msgSend_parseErrorInfo_calculator_(self, v18, v17, v6);

      v22 = objc_msgSend_calculatorErrors(self, v20, v21);
      v23 = *(v9 + 2488);
      v26 = objc_msgSend_domain(v13, v24, v25);
      v29 = objc_msgSend_code(v13, v27, v28);
      v31 = objc_msgSend_errorWithDomain_code_userInfo_(v23, v30, v26, v29, v19);
      objc_msgSend_addObject_(v22, v32, v31);
    }

    else
    {
      v19 = objc_msgSend_createAndSaveVector_(v6, v11, v7);
      v33 = OdmlLogForCategory(3uLL);
      v34 = v33;
      if (v19)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v79 = v35;
          v38 = objc_msgSend_placementType(v6, v36, v37);
          v41 = objc_msgSend_assetManagerType(v6, v39, v40);
          v44 = objc_msgSend_debugDescription(v19, v42, v43);
          *buf = 138478851;
          v83 = v35;
          v84 = 2048;
          v85 = v38;
          v9 = 0x277CCA000uLL;
          v86 = 2048;
          v87 = v41;
          v88 = 2048;
          v89 = v7;
          v90 = 2112;
          v91 = v44;
          _os_log_impl(&dword_260ECB000, v34, OS_LOG_TYPE_ERROR, "[%{private}@] ERROR: failed to calculate features for placement type: %lu, asset manager type: %lu and vector type: %lu due to %@", buf, 0x34u);
        }

        v47 = objc_msgSend_userInfo(v19, v45, v46);
        v50 = objc_msgSend_mutableCopy(v47, v48, v49);
        v22 = objc_msgSend_parseErrorInfo_calculator_(self, v51, v50, v6);

        v54 = objc_msgSend_calculatorErrors(self, v52, v53);
        v55 = *(v9 + 2488);
        v58 = objc_msgSend_domain(v19, v56, v57);
        v61 = objc_msgSend_code(v19, v59, v60);
        v63 = objc_msgSend_errorWithDomain_code_userInfo_(v55, v62, v58, v61, v22);
        objc_msgSend_addObject_(v54, v64, v63);

        v9 = 0x277CCA000;
      }

      else
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v65 = objc_opt_class();
          v66 = v65;
          v69 = objc_msgSend_placementType(v6, v67, v68);
          v72 = objc_msgSend_assetManagerType(v6, v70, v71);
          *buf = v78;
          v83 = v65;
          v84 = 2048;
          v85 = v69;
          v9 = 0x277CCA000;
          v86 = 2048;
          v87 = v72;
          v88 = 2048;
          v89 = v7;
          _os_log_impl(&dword_260ECB000, v34, OS_LOG_TYPE_DEFAULT, "[%{private}@] Successfully calculated features for placement type: %lu, asset manager type: %lu and vector type: %lu", buf, 0x2Au);
        }

        v75 = objc_msgSend_operationQueue(self, v73, v74);
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = sub_260EEC5DC;
        v80[3] = &unk_279AC6188;
        v81 = v6;
        objc_msgSend_addOperationWithBlock_(v75, v76, v80);

        v22 = v81;
      }
    }

    ++v7;
  }

  while (v7 != 3);

  v77 = *MEMORY[0x277D85DE8];
}

- (id)parseErrorInfo:(id)a3 calculator:(id)a4
{
  v42[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277CCABB0];
    v8 = a4;
    v11 = objc_msgSend_placementType(v8, v9, v10);
    v13 = objc_msgSend_numberWithUnsignedLong_(v7, v12, v11);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"placementType");

    v15 = MEMORY[0x277CCABB0];
    v18 = objc_msgSend_assetManagerType(v8, v16, v17);

    v20 = objc_msgSend_numberWithUnsignedLong_(v15, v19, v18);
    objc_msgSend_setObject_forKey_(v6, v21, v20, @"assetManagerType");
  }

  else
  {
    v22 = MEMORY[0x277CBEB38];
    v23 = a4;
    v24 = [v22 alloc];
    v41[0] = @"placementType";
    v25 = MEMORY[0x277CCABB0];
    v28 = objc_msgSend_placementType(v23, v26, v27);
    v20 = objc_msgSend_numberWithUnsignedLong_(v25, v29, v28);
    v42[0] = v20;
    v41[1] = @"assetManagerType";
    v30 = MEMORY[0x277CCABB0];
    v33 = objc_msgSend_assetManagerType(v23, v31, v32);

    v35 = objc_msgSend_numberWithUnsignedLong_(v30, v34, v33);
    v42[1] = v35;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v36, v42, v41, 2);
    v6 = objc_msgSend_initWithDictionary_(v24, v38, v37);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v6;
}

@end