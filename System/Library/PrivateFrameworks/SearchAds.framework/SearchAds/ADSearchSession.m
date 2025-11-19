@interface ADSearchSession
- (ADSearchSession)initWithAppID:(id)a3 appVersion:(id)a4 appsRank:(int)a5 storeFront:(id)a6;
- (BOOL)startUpdatingIDs;
- (id)_jsVersion;
- (id)adParameters;
- (id)campaignNamespaceParameter;
- (id)populateStoreFrontLanguageLocale:(id)a3;
- (id)rotatingIdentifiersProperties;
- (id)sponsoredSearchRequestForLanguageLocale:(id)a3;
- (id)userTargetingProperties;
- (void)_setODMLProperties:(id)a3 withSettings:(id)a4;
- (void)dealloc;
- (void)requestSponsoredSearchDataRoutingInfoAndRequestIDForLocality:(id)a3 withCompletionHandler:(id)a4;
- (void)requestSponsoredSearchURL:(id)a3;
- (void)requestUserTargetingIdentifier:(id)a3;
- (void)searchObjectForCriteria:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation ADSearchSession

- (ADSearchSession)initWithAppID:(id)a3 appVersion:(id)a4 appsRank:(int)a5 storeFront:(id)a6
{
  v114 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v109.receiver = self;
  v109.super_class = ADSearchSession;
  v18 = [(ADSearchSession *)&v109 init];
  if (v18)
  {
    v19 = objc_msgSend_date(MEMORY[0x277CBEAA8], v14, v15, v16, v17);
    v20 = objc_alloc_init(ADCapService);
    capService = v18->_capService;
    v18->_capService = v20;

    v22 = objc_alloc_init(ADParameterFactory);
    parameterFactory = v18->_parameterFactory;
    v18->_parameterFactory = v22;

    v28 = objc_msgSend_sharedInstance(MEMORY[0x277CE9630], v24, v25, v26, v27);
    v32 = objc_msgSend_stringForKey_(v28, v29, @"ToroCampaignNamespace", v30, v31);
    campaignNamespace = v18->_campaignNamespace;
    v18->_campaignNamespace = v32;

    objc_storeStrong(&v18->_appID, a3);
    objc_storeStrong(&v18->_appVersion, a4);
    v18->_appsRank = a5;
    clientRequestID = v18->_clientRequestID;
    v18->_clientRequestID = 0;

    v35 = objc_alloc_init(ADClientIdentifierProvider);
    idProvider = v18->_idProvider;
    v18->_idProvider = v35;

    v37 = objc_alloc_init(MEMORY[0x277CE9758]);
    featureFlagsProvider = v18->_featureFlagsProvider;
    v18->_featureFlagsProvider = v37;

    v43 = objc_msgSend_sharedNetworkController(MEMORY[0x277CE9678], v39, v40, v41, v42);
    v48 = objc_msgSend_sharedInstance(MEMORY[0x277CE9638], v44, v45, v46, v47);
    objc_msgSend_setBundleIdentifier_(v48, v49, v11, v50, v51);
    objc_msgSend_setITunesStorefront_(v48, v52, v13, v53, v54);
    v59 = objc_msgSend_sharedInstance(MEMORY[0x277CE9658], v55, v56, v57, v58);
    v64 = objc_msgSend_sharedInstance(MEMORY[0x277CE4AB8], v60, v61, v62, v63);
    if (MGGetBoolAnswer())
    {
      v69 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v65, v66, v67, v68);
      objc_msgSend_checkDefaultsAndSetInternalSettingsOverrides(v69, v70, v71, v72, v73);
    }

    v18->_notificationReceivedAndWaiting = 0;
    v74 = dispatch_queue_create("com.apple.ap.SearchAds.notificationQueue", 0);
    idNotificationQueue = v18->_idNotificationQueue;
    v18->_idNotificationQueue = v74;

    objc_initWeak(&location, v18);
    v80 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], v76, v77, v78, v79);
    v85 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v81, v82, v83, v84);
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = sub_264E4C5B4;
    v106[3] = &unk_279B88A30;
    objc_copyWeak(&v107, &location);
    v87 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v80, v86, @"kADIDManager_ChangedNotification", *MEMORY[0x277CE95A8], v85, v106);
    notificationObserver = v18->_notificationObserver;
    v18->_notificationObserver = v87;

    v89 = dispatch_queue_create("com.apple.ap.SearchAds.odmlQueue", 0);
    odmlQueue = v18->_odmlQueue;
    v18->_odmlQueue = v89;

    v91 = v18->_odmlQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_264E4C6F8;
    block[3] = &unk_279B889E0;
    v105 = v18;
    dispatch_async(v91, block);
    v92 = APLogForCategory();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      v97 = objc_msgSend_date(MEMORY[0x277CBEAA8], v93, v94, v95, v96);
      objc_msgSend_timeIntervalSinceDate_(v97, v98, v19, v99, v100);
      *buf = 138412546;
      v111 = v11;
      v112 = 2048;
      v113 = v101;
      _os_log_impl(&dword_264E42000, v92, OS_LOG_TYPE_DEFAULT, "TORO: ADSearchSession initWithAppID:%@ initTime: %0.3lf", buf, 0x16u);
    }

    objc_destroyWeak(&v107);
    objc_destroyWeak(&location);
  }

  v102 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCA9A0], a2, v2, v3, v4);
  objc_msgSend_removeObserver_name_object_(v6, v7, self->_notificationObserver, @"kADIDManager_ChangedNotification", *MEMORY[0x277CE95A8]);

  v8.receiver = self;
  v8.super_class = ADSearchSession;
  [(ADSearchSession *)&v8 dealloc];
}

- (BOOL)startUpdatingIDs
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264E42000, v2, OS_LOG_TYPE_DEFAULT, "Updating to the current user.", buf, 2u);
  }

  v7 = objc_msgSend_sharedInstance(MEMORY[0x277CE9658], v3, v4, v5, v6);
  IDs = objc_msgSend_loadIDs(v7, v8, v9, v10, v11);

  if (IDs)
  {
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_264E42000, v13, OS_LOG_TYPE_DEFAULT, "We have now updated the active IDs.", v15, 2u);
    }
  }

  return IDs;
}

- (id)campaignNamespaceParameter
{
  v6 = objc_msgSend_parameterFactory(self, a2, v2, v3, v4);
  v11 = objc_msgSend_campaignNamespace(self, v7, v8, v9, v10);
  v15 = objc_msgSend_campaignNamespaceParameterWithCampaignNamespace_(v6, v12, v11, v13, v14);

  return v15;
}

- (id)adParameters
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = objc_msgSend_capService(self, v7, v8, v9, v10);
  objc_msgSend_cleanDownloadData(v11, v12, v13, v14, v15);

  v20 = objc_msgSend_parameterFactory(self, v16, v17, v18, v19);
  v25 = objc_msgSend_frequencyCapDataParameter(v20, v21, v22, v23, v24);

  if (v25)
  {
    objc_msgSend_addObject_(v6, v26, v25, v28, v29);
  }

  v30 = objc_msgSend_parameterFactory(self, v26, v27, v28, v29);
  v35 = objc_msgSend_toroClickCountDataParameter(v30, v31, v32, v33, v34);

  if (v35)
  {
    objc_msgSend_addObject_(v6, v36, v35, v38, v39);
  }

  v40 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v36, v37, v38, v39);
  isTest = objc_msgSend_isTest(v40, v41, v42, v43, v44);

  if (isTest)
  {
    v50 = objc_msgSend_parameterFactory(self, v46, v47, v48, v49);
    v55 = objc_msgSend_campaignNamespace(self, v51, v52, v53, v54);
    v59 = objc_msgSend_campaignNamespaceParameterWithCampaignNamespace_(v50, v56, v55, v57, v58);

    if (v59)
    {
      objc_msgSend_addObject_(v6, v60, v59, v62, v63);
    }

    v64 = objc_msgSend_parameterFactory(self, v60, v61, v62, v63);
    v69 = objc_msgSend_privacyDataKeyParameter(v64, v65, v66, v67, v68);

    if (v69)
    {
      objc_msgSend_addObject_(v6, v70, v69, v72, v73);
    }

    v74 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v70, v71, v72, v73);
    isCustomTemplate = objc_msgSend_isCustomTemplate(v74, v75, v76, v77, v78);

    if (isCustomTemplate)
    {
      v84 = objc_msgSend_parameterFactory(self, v80, v81, v82, v83);
      v89 = objc_msgSend_requestedAdDataParameter(v84, v85, v86, v87, v88);

      if (v89)
      {
        objc_msgSend_addObject_(v6, v90, v89, v92, v93);
      }

      v94 = objc_msgSend_parameterFactory(self, v90, v91, v92, v93);
      v99 = objc_msgSend_requestedTemplateTypeParameter(v94, v95, v96, v97, v98);

      if (v99)
      {
        objc_msgSend_addObject_(v6, v100, v99, v101, v102);
      }
    }
  }

  return v6;
}

- (id)rotatingIdentifiersProperties
{
  v194 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CE9698]);
  v8 = objc_msgSend_idProvider(self, v4, v5, v6, v7);
  v12 = objc_msgSend_getIdentifiersWithType_(v8, v9, 0, v10, v11);

  v17 = objc_msgSend_idProvider(self, v13, v14, v15, v16);
  v21 = objc_msgSend_getIdentifiersWithType_(v17, v18, 1, v19, v20);

  v26 = objc_msgSend_firstObject(v12, v22, v23, v24, v25);
  v31 = objc_msgSend_value(v26, v27, v28, v29, v30);
  isEqualToString = objc_msgSend_isEqualToString_(v31, v32, @"-2", v33, v34);

  v40 = 0;
  if ((isEqualToString & 1) == 0)
  {
    if (objc_msgSend_count(v12, v36, v37, v38, v39))
    {
      v45 = objc_msgSend_firstObject(v12, v41, v42, v43, v44);
      v50 = objc_msgSend_value(v45, v46, v47, v48, v49);
      objc_msgSend_setAnonymousSessionId_(v3, v51, v50, v52, v53);
    }

    else
    {
      objc_msgSend_setAnonymousSessionId_(v3, v41, @"-1", v43, v44);
    }

    if (objc_msgSend_count(v21, v54, v55, v56, v57))
    {
      v62 = objc_msgSend_firstObject(v21, v58, v59, v60, v61);
      v67 = objc_msgSend_value(v62, v63, v64, v65, v66);
      objc_msgSend_setRotatedAnonymousId_(v3, v68, v67, v69, v70);
    }

    else
    {
      objc_msgSend_setRotatedAnonymousId_(v3, v58, @"-1", v60, v61);
    }

    v75 = objc_msgSend_idProvider(self, v71, v72, v73, v74);
    v79 = objc_msgSend_getIdentifiersWithType_(v75, v76, 2, v77, v78);

    if (objc_msgSend_count(v79, v80, v81, v82, v83))
    {
      v181 = v21;
      v182 = v12;
      v183 = v3;
      v88 = objc_msgSend_array(MEMORY[0x277CBEB18], v84, v85, v86, v87);
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v180 = v79;
      obj = v79;
      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v89, &v187, v193, 16);
      if (v90)
      {
        v91 = v90;
        v92 = *v188;
        v184 = *MEMORY[0x277CE95C8];
        do
        {
          v93 = 0;
          v185 = v91;
          do
          {
            if (*v188 != v92)
            {
              objc_enumerationMutation(obj);
            }

            v94 = *(*(&v187 + 1) + 8 * v93);
            v95 = objc_alloc_init(MEMORY[0x277CE9640]);
            v100 = objc_msgSend_value(v94, v96, v97, v98, v99);
            v104 = objc_msgSend_dataUsingEncoding_(v100, v101, 4, v102, v103);

            v106 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v105, v104, 0, 0);
            v110 = objc_msgSend_valueForKey_(v106, v107, @"bucketId", v108, v109);
            v115 = objc_msgSend_intValue(v110, v111, v112, v113, v114);
            objc_msgSend_setBucketId_(v95, v116, v115, v117, v118);
            if (MGGetBoolAnswer())
            {
              v122 = v92;
              v123 = v88;
              v124 = objc_alloc(MEMORY[0x277CBEBD0]);
              v128 = objc_msgSend_initWithSuiteName_(v124, v125, v184, v126, v127);
              v132 = objc_msgSend_integerForKey_(v128, v129, @"bucketIDOverride", v130, v131);
              if (v132 >= 1)
              {
                v133 = v132;
                v134 = APLogForCategory();
                if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  v192 = v133;
                  _os_log_impl(&dword_264E42000, v134, OS_LOG_TYPE_DEFAULT, "Overriding BucketID to %ld due to internal settings.", buf, 0xCu);
                }

                objc_msgSend_setBucketId_(v95, v135, v133, v136, v137);
              }

              v88 = v123;
              v92 = v122;
              v91 = v185;
            }

            v138 = objc_msgSend_valueForKey_(v106, v119, @"generation", v120, v121, v180);
            v143 = objc_msgSend_intValue(v138, v139, v140, v141, v142);
            objc_msgSend_setGeneration_(v95, v144, v143, v145, v146);
            v150 = objc_msgSend_objectForKey_(v106, v147, @"bucketNamespace", v148, v149);
            objc_msgSend_setBucketNamespace_(v95, v151, v150, v152, v153);

            objc_msgSend_addObject_(v88, v154, v95, v155, v156);
            ++v93;
          }

          while (v91 != v93);
          v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v157, &v187, v193, 16);
        }

        while (v91);
      }

      v3 = v183;
      objc_msgSend_setExperimentBuckets_(v183, v158, v88, v159, v160);

      v21 = v181;
      v12 = v182;
      v79 = v180;
    }

    else
    {
      v161 = objc_alloc_init(MEMORY[0x277CE9640]);
      objc_msgSend_setBucketNamespace_(v161, v162, @"-1", v163, v164);
      objc_msgSend_setBucketId_(v161, v165, 0xFFFFFFFFLL, v166, v167);
      objc_msgSend_setGeneration_(v161, v168, 0xFFFFFFFFLL, v169, v170);
      v174 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v171, v161, v172, v173);
      objc_msgSend_setExperimentBuckets_(v3, v175, v174, v176, v177);
    }

    v40 = v3;
  }

  v178 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)_jsVersion
{
  v2 = objc_alloc_init(MEMORY[0x277CE9750]);
  v7 = objc_msgSend_getJetPackVersion(v2, v3, v4, v5, v6);

  return v7;
}

- (id)userTargetingProperties
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277CE9658], a2, v2, v3, v4);
  v11 = objc_msgSend_sharedInstance(MEMORY[0x277CE9638], v7, v8, v9, v10);
  v16 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v12, v13, v14, v15);
  v21 = objc_msgSend_date(MEMORY[0x277CBEAA8], v17, v18, v19, v20);
  v26 = objc_msgSend_AD_toServerTime(v21, v22, v23, v24, v25);

  v27 = objc_alloc_init(MEMORY[0x277CE96D0]);
  objc_msgSend_setClientClockTime_(v27, v28, v29, v30, v31, v26);
  v36 = objc_msgSend_appID(self, v32, v33, v34, v35);
  objc_msgSend_setAppID_(v27, v37, v36, v38, v39);

  v44 = objc_msgSend_deviceModel(v11, v40, v41, v42, v43);
  objc_msgSend_setDeviceModel_(v27, v45, v44, v46, v47);

  objc_msgSend_timezone(v11, v48, v49, v50, v51);
  objc_msgSend_setTimezone_(v27, v52, v53, v54, v55);
  v60 = objc_msgSend_runState(v11, v56, v57, v58, v59);
  objc_msgSend_setRunState_(v27, v61, v60, v62, v63);
  v68 = objc_msgSend_appVersion(self, v64, v65, v66, v67);
  objc_msgSend_setAppVersion_(v27, v69, v68, v70, v71);

  v76 = objc_msgSend_osVersionAndBuild(v11, v72, v73, v74, v75);
  objc_msgSend_setOsVersionAndBuild_(v27, v77, v76, v78, v79);

  v84 = objc_msgSend_iTunesStorefront(v11, v80, v81, v82, v83);
  objc_msgSend_setITunesStore_(v27, v85, v84, v86, v87);

  v92 = objc_msgSend_localeIdentifier(v11, v88, v89, v90, v91);
  objc_msgSend_setLocaleIdentifier_(v27, v93, v92, v94, v95);

  v100 = objc_msgSend_userKeyboards(v16, v96, v97, v98, v99);
  v105 = objc_msgSend_mutableCopy(v100, v101, v102, v103, v104);
  objc_msgSend_setUserKeyboards_(v27, v106, v105, v107, v108);

  v113 = objc_msgSend_appsRank(self, v109, v110, v111, v112);
  objc_msgSend_setAppsRank_(v27, v114, v113, v115, v116);
  v121 = objc_msgSend_connectionType(v11, v117, v118, v119, v120);
  objc_msgSend_setConnectionType_(v27, v122, v121, v123, v124);
  v129 = objc_msgSend_educationModeEnabled(v11, v125, v126, v127, v128);
  objc_msgSend_addDeviceMode_(v27, v130, v129, v131, v132);
  v137 = objc_msgSend_activeDSIDRecord(v6, v133, v134, v135, v136);
  if (objc_msgSend_isPlaceholderAccount(v137, v138, v139, v140, v141))
  {
    objc_msgSend_addAccountType_(v27, v142, 0, v144, v145);
  }

  else if (objc_msgSend_accountAgeUnknown(v137, v142, v143, v144, v145))
  {
    objc_msgSend_addAccountType_(v27, v150, 6, v152, v153);
  }

  else
  {
    isManagedAppleID = objc_msgSend_isManagedAppleID(v11, v150, v151, v152, v153);
    if (isManagedAppleID)
    {
      objc_msgSend_addAccountType_(v27, v154, 2, v156, v157);
    }

    if (objc_msgSend_accountIsU13(v137, v154, v155, v156, v157))
    {
      objc_msgSend_addAccountType_(v27, v159, 3, v161, v162);
      v163 = 0;
    }

    else
    {
      v163 = isManagedAppleID ^ 1;
    }

    objc_msgSend_accountIsT13(v137, v159, v160, v161, v162);
    if (objc_msgSend_accountIsU18(v137, v164, v165, v166, v167))
    {
      objc_msgSend_addAccountType_(v27, v146, 5, v148, v149);
    }

    else if (v163)
    {
      objc_msgSend_addAccountType_(v27, v146, 1, v148, v149);
      if (objc_msgSend_sensitiveContentEligible(v137, v332, v333, v334, v335))
      {
        objc_msgSend_addAccountType_(v27, v146, 7, v148, v149);
      }
    }
  }

  v168 = objc_msgSend_iCloudDSID(v11, v146, v147, v148, v149);

  if (v168)
  {
    v173 = objc_msgSend_iCloudDSID(v11, v169, v170, v171, v172);
    v178 = objc_msgSend_iTunesAccountDSID(v11, v174, v175, v176, v177);
    isEqualToString = objc_msgSend_isEqualToString_(v173, v179, v178, v180, v181);

    if (isEqualToString)
    {
      objc_msgSend_addAccountState_(v27, v183, 1, v184, v185);
    }

    else
    {
      objc_msgSend_addAccountState_(v27, v183, 2, v184, v185);
    }
  }

  else
  {
    objc_msgSend_addAccountState_(v27, v169, 0, v171, v172);
  }

  v190 = objc_msgSend_adParameters(self, v186, v187, v188, v189);
  objc_msgSend_setTargetings_(v27, v191, v190, v192, v193);

  isPersonalizedAdsEnabled = objc_msgSend_isPersonalizedAdsEnabled(v11, v194, v195, v196, v197);
  objc_msgSend_setLimitAdTracking_(v27, v199, isPersonalizedAdsEnabled ^ 1u, v200, v201);
  v206 = objc_msgSend_algoID(v16, v202, v203, v204, v205);
  objc_msgSend_setAlgoId_(v27, v207, v206, v208, v209);

  v214 = objc_msgSend_PersonalizedAdsMonthResetCount(v6, v210, v211, v212, v213);
  objc_msgSend_setAdvertisingIdentifierMonthResetCount_(v27, v215, v214, v216, v217);
  v222 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v218, v219, v220, v221);
  v227 = objc_msgSend_UUIDString(v222, v223, v224, v225, v226);
  objc_msgSend_setDeviceRequestID_(v27, v228, v227, v229, v230);

  v235 = objc_msgSend_deviceRequestID(v27, v231, v232, v233, v234);
  clientRequestID = self->_clientRequestID;
  self->_clientRequestID = v235;

  v240 = objc_msgSend_idForClientType_(v6, v237, 0, v238, v239);
  objc_msgSend_setIAdIDString_(v27, v241, v240, v242, v243);

  v247 = objc_msgSend_idForClientType_(v6, v244, 5, v245, v246);
  objc_msgSend_setDPIDString_(v27, v248, v247, v249, v250);

  v255 = objc_msgSend_featureFlagsProvider(self, v251, v252, v253, v254);
  if (!objc_msgSend_toroIDPartialSuppression(v255, v256, v257, v258, v259))
  {

    goto LABEL_22;
  }

  v264 = objc_msgSend_limitAdTracking(v27, v260, v261, v262, v263);

  if (!v264)
  {
LABEL_22:
    v268 = objc_msgSend_idForClientType_(v6, v265, 4, v266, v267);
    objc_msgSend_setToroIDString_(v27, v269, v268, v270, v271);
    goto LABEL_23;
  }

  v268 = APLogForCategory();
  if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
  {
    *v336 = 0;
    _os_log_impl(&dword_264E42000, v268, OS_LOG_TYPE_DEFAULT, "ToroID suppression is enabled for ADSearchSession Ad Request", v336, 2u);
  }

LABEL_23:

  if ((objc_msgSend_isManagedAppleID(v11, v272, v273, v274, v275) & 1) == 0 && (objc_msgSend_educationModeEnabled(v11, v276, v277, v278, v279) & 1) == 0)
  {
    v284 = objc_msgSend_sharedInstance(MEMORY[0x277CE4AB8], v280, v281, v282, v283);
    v289 = objc_msgSend_locationInfo(v284, v285, v286, v287, v288);
    v294 = v289;
    if (v289)
    {
      v295 = objc_msgSend_isoCountryCode(v289, v290, v291, v292, v293);
      objc_msgSend_setIsoCountryCode_(v27, v296, v295, v297, v298);

      v303 = objc_msgSend_postalCode(v294, v299, v300, v301, v302);
      objc_msgSend_setPostalCode_(v27, v304, v303, v305, v306);

      v311 = objc_msgSend_administrativeArea(v294, v307, v308, v309, v310);
      objc_msgSend_setAdministrativeArea_(v27, v312, v311, v313, v314);

      v319 = objc_msgSend_locality(v294, v315, v316, v317, v318);
      objc_msgSend_setLocality_(v27, v320, v319, v321, v322);

      v327 = objc_msgSend_subAdministrativeArea(v294, v323, v324, v325, v326);
      objc_msgSend_setSubAdministrativeArea_(v27, v328, v327, v329, v330);
    }
  }

  return v27;
}

- (id)populateStoreFrontLanguageLocale:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v4, v5, v6, v7);
  v13 = objc_msgSend_sharedInstance(MEMORY[0x277CE9638], v9, v10, v11, v12);
  if (!objc_msgSend_isTest(v8, v14, v15, v16, v17))
  {
    goto LABEL_14;
  }

  v22 = objc_msgSend_sharedInstance(MEMORY[0x277CE9630], v18, v19, v20, v21);
  v26 = objc_msgSend_stringForKey_(v22, v23, @"StorefrontLanguageLocale", v24, v25);

  v31 = objc_msgSend_sharedInstance(MEMORY[0x277CE9630], v27, v28, v29, v30);
  v35 = objc_msgSend_stringForKey_(v31, v32, @"TransparencyBundleLocale", v33, v34);

  if (!v35)
  {
    v39 = 0;
    if (v26)
    {
      goto LABEL_4;
    }

LABEL_10:
    v43 = 0;
    if ((v39 ^ 1))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v39 = objc_msgSend_isEqualToString_(v35, v36, &stru_2876A6DB8, v37, v38) ^ 1;
  if (!v26)
  {
    goto LABEL_10;
  }

LABEL_4:
  isEqualToString = objc_msgSend_isEqualToString_(v26, v36, &stru_2876A6DB8, v37, v38);
  if (((v39 ^ 1) & 1) == 0)
  {
    v41 = v35;
    v42 = v26;
    if (!isEqualToString)
    {
      goto LABEL_12;
    }
  }

  v41 = v3;
  v42 = v26;
  if (((v39 | isEqualToString) & 1) == 0)
  {
    goto LABEL_12;
  }

  v43 = isEqualToString ^ 1;
  if ((v39 ^ 1))
  {
    goto LABEL_13;
  }

LABEL_11:
  v41 = v35;
  v42 = v3;
  if ((v43 & 1) == 0)
  {
LABEL_12:
    objc_msgSend_setStorefrontLocalizationLanguage_(v13, v36, v41, v37, v38);
    v44 = v42;

    goto LABEL_15;
  }

LABEL_13:

LABEL_14:
  objc_msgSend_setStorefrontLocalizationLanguage_(v13, v18, v3, v20, v21);
  v44 = v3;
LABEL_15:

  return v44;
}

- (void)searchObjectForCriteria:(id)a3 withCompletionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[ADSearchSession searchObjectForCriteria:withCompletionHandler:]";
    _os_log_impl(&dword_264E42000, v8, OS_LOG_TYPE_DEFAULT, "API Call to %s received.", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v14 = objc_msgSend_languageLocale(v7, v10, v11, v12, v13);

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_264E4D948;
  v19[3] = &unk_279B88A58;
  v21 = Current;
  v19[4] = self;
  v20 = v6;
  v15 = v6;
  objc_msgSend_requestSponsoredSearchDataRoutingInfoAndRequestIDForLocality_withCompletionHandler_(self, v16, v14, v19, v17);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)requestSponsoredSearchURL:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[ADSearchSession requestSponsoredSearchURL:]";
    _os_log_impl(&dword_264E42000, v4, OS_LOG_TYPE_DEFAULT, "API Call to %s received.", buf, 0xCu);
  }

  v9 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_264E4DF48;
  v15[3] = &unk_279B88A80;
  v16 = v3;
  v10 = v3;
  objc_msgSend_addOperationWithBlock_(v9, v11, v15, v12, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)requestUserTargetingIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[ADSearchSession requestUserTargetingIdentifier:]";
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "API Call to %s received.", buf, 0xCu);
  }

  v10 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v6, v7, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_264E4E150;
  v16[3] = &unk_279B88AA8;
  v16[4] = self;
  v17 = v4;
  v11 = v4;
  objc_msgSend_addOperationWithBlock_(v10, v12, v16, v13, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)requestSponsoredSearchDataRoutingInfoAndRequestIDForLocality:(id)a3 withCompletionHandler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[ADSearchSession requestSponsoredSearchDataRoutingInfoAndRequestIDForLocality:withCompletionHandler:]";
    _os_log_impl(&dword_264E42000, v8, OS_LOG_TYPE_DEFAULT, "API Call to %s received.", buf, 0xCu);
  }

  v13 = objc_msgSend_workQueue(MEMORY[0x277CE96B8], v9, v10, v11, v12);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_264E4E464;
  v20[3] = &unk_279B88990;
  v20[4] = self;
  v21 = v6;
  v22 = v7;
  v14 = v7;
  v15 = v6;
  objc_msgSend_addOperationWithBlock_(v13, v16, v20, v17, v18);

  v19 = *MEMORY[0x277D85DE8];
}

- (id)sponsoredSearchRequestForLanguageLocale:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CE96C0]);
  v10 = objc_msgSend_userTargetingProperties(self, v6, v7, v8, v9);
  objc_msgSend_setProperties_(v5, v11, v10, v12, v13);

  if (MGGetBoolAnswer())
  {
    v18 = objc_msgSend_sharedInstance(MEMORY[0x277CE9630], v14, v15, v16, v17);
    v22 = objc_msgSend_BOOLForKey_(v18, v19, @"ODMLDataRequest", v20, v21);

    if (v22)
    {
      v24 = objc_msgSend_properties(v5, v14, v23, v16, v17);
      objc_msgSend_setOverrideType_(v24, v25, 11001, v26, v27);
    }
  }

  v28 = objc_msgSend_populateStoreFrontLanguageLocale_(self, v14, v4, v16, v17);
  v33 = objc_msgSend_properties(v5, v29, v30, v31, v32);
  objc_msgSend_setStoreFrontLanguageLocaleIdentifier_(v33, v34, v28, v35, v36);

  v41 = objc_msgSend_sharedInstance(ADSearchAdsSettings, v37, v38, v39, v40);
  isTest = objc_msgSend_isTest(v41, v42, v43, v44, v45);
  objc_msgSend_setIsTest_(v5, v47, isTest, v48, v49);
  isBaseline = objc_msgSend_isBaseline(v41, v50, v51, v52, v53);
  objc_msgSend_setIsBaseline_(v5, v55, isBaseline, v56, v57);
  objc_msgSend_setEnableImagesForDupes_(v5, v58, 1, v59, v60);
  v69 = objc_msgSend_rotatingIdentifiersProperties(self, v61, v62, v63, v64);
  if (v69)
  {
    objc_msgSend_setRotatingIdentifiers_(v5, v65, v69, v67, v68);
  }

  v74 = objc_msgSend__jsVersion(self, v65, v66, v67, v68);
  if (v74)
  {
    objc_msgSend_setJsVersion_(v5, v70, v74, v72, v73);
  }

  v75 = objc_msgSend_featureFlagsProvider(self, v70, v71, v72, v73);
  v80 = objc_msgSend_capabilityEngine(v75, v76, v77, v78, v79);
  v85 = objc_msgSend_build(v80, v81, v82, v83, v84);
  objc_msgSend_setFeatureEnabledBitmap_(v5, v86, v85, v87, v88);

  v93 = objc_msgSend_odmlSettings(self, v89, v90, v91, v92);
  if (v93)
  {

LABEL_11:
    v108 = objc_msgSend_odmlSettings(self, v98, v99, v100, v101);
    objc_msgSend__setODMLProperties_withSettings_(self, v109, v5, v108, v110);

    goto LABEL_12;
  }

  v102 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v94, v95, v96, v97);
  isRunningTests = objc_msgSend_isRunningTests(v102, v103, v104, v105, v106);

  if (isRunningTests)
  {
    goto LABEL_11;
  }

  objc_msgSend__setODMLProperties_withSettings_(self, v98, v5, 0, v101);
LABEL_12:

  return v5;
}

- (void)_setODMLProperties:(id)a3 withSettings:(id)a4
{
  v56 = a4;
  if (v56)
  {
    v5 = a3;
    v10 = objc_msgSend_odmlVersion(v56, v6, v7, v8, v9);
    objc_msgSend_setSupportedODMLVersion_(v5, v11, v10, v12, v13);
    v18 = objc_msgSend_treatmentID(v56, v14, v15, v16, v17);
    objc_msgSend_setTreatmentID_(v5, v19, v18, v20, v21);

    v26 = objc_msgSend_experimentID(v56, v22, v23, v24, v25);
    objc_msgSend_setExperimentID_(v5, v27, v26, v28, v29);

    v30 = MEMORY[0x277CCACA8];
    v35 = objc_msgSend_deploymentID(v56, v31, v32, v33, v34);
    v39 = objc_msgSend_stringWithFormat_(v30, v36, @"%d", v37, v38, v35);
    objc_msgSend_setDeploymentID_(v5, v40, v39, v41, v42);
  }

  else
  {
    v43 = *MEMORY[0x277D42CE8];
    v39 = a3;
    objc_msgSend_setSupportedODMLVersion_(v39, v44, v43, v45, v46);
    objc_msgSend_setTreatmentID_(v39, v47, @"-1", v48, v49);
    objc_msgSend_setExperimentID_(v39, v50, @"-1", v51, v52);
    objc_msgSend_setDeploymentID_(v39, v53, @"-1", v54, v55);
  }
}

@end