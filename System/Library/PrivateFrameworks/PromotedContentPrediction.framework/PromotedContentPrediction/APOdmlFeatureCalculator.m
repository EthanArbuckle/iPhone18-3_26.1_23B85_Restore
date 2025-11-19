@interface APOdmlFeatureCalculator
- (APOdmlFeatureCalculator)initWithActivity:(id)a3 placementType:(unint64_t)a4 assetManagerType:(unint64_t)a5;
- (APOdmlFeatureCalculator)initWithPlacementType:(unint64_t)a3 assetManagerType:(unint64_t)a4;
- (id)_vectorKeyForType:(unint64_t)a3;
- (id)createAndSaveVector:(unint64_t)a3;
- (id)createAndSaveVectorWithBuilder:(id)a3 vectorType:(unint64_t)a4;
@end

@implementation APOdmlFeatureCalculator

- (APOdmlFeatureCalculator)initWithPlacementType:(unint64_t)a3 assetManagerType:(unint64_t)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = APOdmlFeatureCalculator;
  v8 = [(APOdmlFeatureCalculator *)&v38 init];
  if (v8)
  {
    v9 = objc_msgSend_now(MEMORY[0x277CBEAA8], v6, v7);
    creationTime = v8->_creationTime;
    v8->_creationTime = v9;

    v8->_assetManagerType = a4;
    v8->_placementType = a3;
    v13 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, v11, v12);
    v15 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v13, v14, a3, a4);
    assetManager = v8->_assetManager;
    v8->_assetManager = v15;

    v18 = objc_msgSend_pathForFactor_isDirectory_(v8->_assetManager, v17, @"AppVectors", 0);
    assetPath = v8->_assetPath;
    v8->_assetPath = v18;

    v20 = MEMORY[0x277CCACA8];
    v21 = [APOdmlSettings alloc];
    v23 = objc_msgSend_initWithPlacementType_assetManagerType_(v21, v22, a3, a4);
    v26 = objc_msgSend_odmlVersion(v23, v24, v25);
    v28 = objc_msgSend_stringWithFormat_(v20, v27, @"%d", v26);
    version = v8->_version;
    v8->_version = v28;
  }

  v30 = OdmlLogForCategory(3uLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_opt_class();
    v32 = v31;
    v35 = objc_msgSend_assetPath(v8, v33, v34);
    *buf = 138412546;
    v40 = v31;
    v41 = 2112;
    v42 = v35;
    _os_log_impl(&dword_260ECB000, v30, OS_LOG_TYPE_DEFAULT, "[%@]: Asset Path: %@", buf, 0x16u);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v8;
}

- (APOdmlFeatureCalculator)initWithActivity:(id)a3 placementType:(unint64_t)a4 assetManagerType:(unint64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v10 = objc_msgSend_initWithPlacementType_assetManagerType_(self, v9, a4, a5);
  if (v10)
  {
    v11 = [APOdmlXpcLifecycleHandler alloc];
    v13 = objc_msgSend_initWithActivity_(v11, v12, v8);
    task = v10->_task;
    v10->_task = v13;
  }

  v15 = OdmlLogForCategory(3uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v20 = objc_msgSend_assetPath(v10, v18, v19);
    v23 = 138412546;
    v24 = v16;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_DEFAULT, "[%@]: Asset Path: %@", &v23, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)createAndSaveVector:(unint64_t)a3
{
  v5 = objc_msgSend_assetManager(self, a2, a3);
  v7 = objc_msgSend_doubleValueForFactor_(v5, v6, @"LookbackWindow");

  v10 = objc_msgSend_assetManager(self, v8, v9);
  v12 = objc_msgSend_longValueForFactor_(v10, v11, @"MaxQueryElements");

  v15 = objc_msgSend_assetManager(self, v13, v14);
  v17 = objc_msgSend_doubleValueForFactor_(v15, v16, @"ExponentialDecayConstant");

  v20 = objc_msgSend_assetManager(self, v18, v19);
  v22 = objc_msgSend_BOOLeanValueForFactor_(v20, v21, @"WeightByDuration");

  v23 = off_279AC5BA0;
  v24 = off_279AC5B08;
  if (a3 != 1)
  {
    v24 = off_279AC5B18;
  }

  if (a3 != 2)
  {
    v23 = v24;
  }

  v25 = *v23;
  v26 = objc_alloc(objc_opt_class());
  v29 = objc_msgSend_version(self, v27, v28);
  v32 = objc_msgSend_task(self, v30, v31);
  v40 = objc_msgSend_assetManagerType(self, v33, v34) == 1;
  isCounterfactual = objc_msgSend_initWithVersion_lookbackPeriod_maxQueryElements_task_exponentialDecayConstant_weightByDuration_isCounterfactual_(v26, v35, v29, v7, v12, v32, v17, v22, v40);

  v38 = objc_msgSend_createAndSaveVectorWithBuilder_vectorType_(self, v37, isCounterfactual, a3);

  return v38;
}

- (id)createAndSaveVectorWithBuilder:(id)a3 vectorType:(unint64_t)a4
{
  v158 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = objc_msgSend__vectorKeyForType_(self, v7, a4);
  v9 = [APOdmlAppVectorsFile alloc];
  v12 = objc_msgSend_assetPath(self, v10, v11);
  v15 = objc_msgSend_version(self, v13, v14);
  v17 = objc_msgSend_initForReadingContentsOfURL_version_(v9, v16, v12, v15);

  if (v17)
  {
    if (objc_msgSend_numberOfVectors(v17, v18, v19))
    {
      v20 = v17;
    }

    else
    {
      v35 = OdmlLogForCategory(3uLL);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v151 = objc_opt_class();
        v36 = *v151;
        _os_log_impl(&dword_260ECB000, v35, OS_LOG_TYPE_DEFAULT, "[%@]: Default AppVectors empty; attempting to fall back to SRP default file.", buf, 0xCu);
      }

      v39 = objc_msgSend_sharedAssetManagerCoordinator(APOdmlAssetManagerCoordinator, v37, v38);
      v42 = objc_msgSend_assetManagerType(self, v40, v41);
      v44 = objc_msgSend_assetManagerForPlacementType_assetManagerType_(v39, v43, 0, v42);
      v20 = objc_msgSend_pathForFactor_isDirectory_(v44, v45, @"AppVectors", 0);

      v46 = [APOdmlAppVectorsFile alloc];
      v49 = objc_msgSend_version(self, v47, v48);
      v51 = objc_msgSend_initForReadingContentsOfURL_version_(v46, v50, v20, v49);

      if (!v51)
      {
        v114 = OdmlLogForCategory(3uLL);
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          v115 = objc_opt_class();
          v116 = v115;
          v119 = objc_msgSend_creationTime(self, v117, v118);
          *buf = 138412546;
          *v151 = v115;
          *&v151[8] = 2112;
          *&v151[10] = v119;
          _os_log_impl(&dword_260ECB000, v114, OS_LOG_TYPE_ERROR, "[%@ %@] ERROR: Could not open default app vectors file.", buf, 0x16u);
        }

        v121 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v120, @"APOdmlFeatureCalculatorErrorDomain", 1001, 0);
        v123 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v122, v8, @"featureName");
        v126 = objc_msgSend_assetManagerType(self, v124, v125) == 1;
        objc_msgSend_sendEvent_additionalDetails_isCounterfactual_(APOdmlAnalyticsFeatureCalculation, v127, v121, v123, v126);
        v34 = v121;

        goto LABEL_38;
      }

      v20 = v51;
    }

    v148 = v6;
    if (v148)
    {
      v144 = a4;
      v145 = v8;
      v52 = v20;
      v146 = v6;
      v53 = 0;
      v54 = -1;
      for (i = 1; ; ++i)
      {
        v56 = objc_autoreleasePoolPush();
        v59 = objc_msgSend_task(self, v57, v58);
        if (v59)
        {
          v62 = v59;
          shouldDefer = objc_msgSend_shouldDefer(self->_task, v60, v61);

          if (shouldDefer)
          {
            if (objc_msgSend_deferTask(self->_task, v60, v61))
            {
              break;
            }
          }
        }

        v64 = objc_msgSend_nextVector(v20, v60, v61);

        if (!v64)
        {
          objc_autoreleasePoolPop(v56);
          v149 = 0;
          v53 = objc_msgSend_retrieveVector_(v148, v70, &v149);
          v71 = v149;
          v72 = OdmlLogForCategory(3uLL);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            v73 = objc_opt_class();
            v74 = MEMORY[0x277CCACA8];
            v147 = v73;
            v77 = objc_msgSend_assetManagerType(self, v75, v76);
            v79 = objc_msgSend_descriptionForAssetManagerType_(v74, v78, v77);
            v80 = MEMORY[0x277CCACA8];
            v83 = objc_msgSend_placementType(self, v81, v82);
            v85 = objc_msgSend_descriptionForPlacementType_(v80, v84, v83);
            v87 = objc_msgSend_descriptionForVectorBuilderType_(MEMORY[0x277CCACA8], v86, v144);
            v90 = objc_msgSend_arrayOfNumbers(v53, v88, v89);
            *buf = 138413314;
            *v151 = v73;
            *&v151[8] = 2112;
            *&v151[10] = v79;
            v152 = 2112;
            v153 = v85;
            v154 = 2112;
            v155 = v87;
            v156 = 2112;
            v157 = v90;
            _os_log_impl(&dword_260ECB000, v72, OS_LOG_TYPE_DEFAULT, "[%@] Final %@ %@ %@: %@", buf, 0x34u);
          }

          v8 = v145;
          v92 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v91, v145, @"featureName");
          v96 = objc_msgSend_assetManagerType(self, v93, v94) == 1;
          if (v71)
          {
            objc_msgSend_sendEvent_additionalDetails_isCounterfactual_(APOdmlAnalyticsFeatureCalculation, v95, v71, v92, v96);
          }

          else
          {
            objc_msgSend_sendEvent_additionalDetails_isCounterfactual_(APOdmlAnalyticsFeatureCalculation, v95, 0, v92, v96);
            v112 = objc_msgSend_assetManager(self, v110, v111);
            v71 = objc_msgSend_saveFeatureFromObject_withName_(v112, v113, v53, v145);
          }

          v6 = v146;
          v20 = v52;
          v34 = v71;

          goto LABEL_37;
        }

        if (!(v54 + 100 * (i / 0x64)))
        {
          v66 = OdmlLogForCategory(3uLL);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v69 = objc_msgSend_adamID(v64, v67, v68);
            *buf = 67109376;
            *v151 = i;
            *&v151[4] = 2048;
            *&v151[6] = v69;
            _os_log_impl(&dword_260ECB000, v66, OS_LOG_TYPE_DEFAULT, "Processing element %d: %llu", buf, 0x12u);
          }
        }

        objc_msgSend_addAppVector_(v148, v65, v64);
        objc_autoreleasePoolPop(v56);
        --v54;
        v53 = v64;
      }

      v128 = OdmlLogForCategory(3uLL);
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        v129 = objc_opt_class();
        v130 = v129;
        v133 = objc_msgSend_creationTime(self, v131, v132);
        *buf = 138412546;
        *v151 = v129;
        *&v151[8] = 2112;
        *&v151[10] = v133;
        _os_log_impl(&dword_260ECB000, v128, OS_LOG_TYPE_DEFAULT, "[%@ %@] We are no longer in an acceptable state to continue processing. Deferring task...", buf, 0x16u);
      }

      v135 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v134, @"APOdmlFeatureCalculatorErrorDomain", 1003, 0);
      v137 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v136, v8, @"featureName");
      v140 = objc_msgSend_assetManagerType(self, v138, v139) == 1;
      objc_msgSend_sendEvent_additionalDetails_isCounterfactual_(APOdmlAnalyticsFeatureCalculation, v141, v135, v137, v140);
      v34 = v135;

      objc_autoreleasePoolPop(v56);
      v6 = v146;
    }

    else
    {
      v97 = OdmlLogForCategory(3uLL);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        v98 = objc_opt_class();
        v99 = v98;
        v102 = objc_msgSend_creationTime(self, v100, v101);
        *buf = 138412546;
        *v151 = v98;
        *&v151[8] = 2112;
        *&v151[10] = v102;
        _os_log_impl(&dword_260ECB000, v97, OS_LOG_TYPE_ERROR, "[%@ %@] ERROR: Unable to create a vector builder.", buf, 0x16u);
      }

      v104 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v103, @"APOdmlFeatureCalculatorErrorDomain", 1002, 0);
      v53 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v105, v8, @"featureName");
      v108 = objc_msgSend_assetManagerType(self, v106, v107) == 1;
      objc_msgSend_sendEvent_additionalDetails_isCounterfactual_(APOdmlAnalyticsFeatureCalculation, v109, v104, v53, v108);
      v34 = v104;
    }

LABEL_37:
  }

  else
  {
    v21 = OdmlLogForCategory(3uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = v22;
      v26 = objc_msgSend_creationTime(self, v24, v25);
      *buf = 138412546;
      *v151 = v22;
      *&v151[8] = 2112;
      *&v151[10] = v26;
      _os_log_impl(&dword_260ECB000, v21, OS_LOG_TYPE_ERROR, "[%@ %@] ERROR: Could not open app vectors file.", buf, 0x16u);
    }

    v28 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v27, @"APOdmlFeatureCalculatorErrorDomain", 1001, 0);
    v20 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v29, v8, @"featureName");
    v32 = objc_msgSend_assetManagerType(self, v30, v31) == 1;
    objc_msgSend_sendEvent_additionalDetails_isCounterfactual_(APOdmlAnalyticsFeatureCalculation, v33, v28, v20, v32);
    v34 = v28;
  }

LABEL_38:

  v142 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)_vectorKeyForType:(unint64_t)a3
{
  v3 = kAPOdmlFeatureTypeInstalledAppVectorKey;
  v4 = kAPOdmlFeatureTypeAppDownloadVectorKey;
  if (a3 != 1)
  {
    v4 = kAPOdmlFeatureTypeAppUsageVectorKey;
  }

  if (a3 != 2)
  {
    v3 = v4;
  }

  return *v3;
}

@end