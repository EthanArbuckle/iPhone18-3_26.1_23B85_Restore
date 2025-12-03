@interface UAFBiomeInstrumenter
+ (id)_constructBiomeAssetSet:(id)set storeManager:(id)manager;
+ (id)_getBiomeEventDeviceMetadata;
+ (id)_getBiomeStreamForScheduledDailyAssetStatus;
+ (id)_getBiomeUAFAssetSet:(id)set assetSetId:(id)id entries:(id)entries errorCodes:(id)codes fromPSUS:(BOOL)s;
+ (id)_getSubscriptionsStatus;
+ (id)defaultDeviceId;
+ (int)_getAssetSource:(id)source;
+ (void)logScheduledDailyAssetStatus;
@end

@implementation UAFBiomeInstrumenter

+ (id)defaultDeviceId
{
  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_7);
  }

  v3 = qword_1ED7D1108;

  return v3;
}

void __39__UAFBiomeInstrumenter_defaultDeviceId__block_invoke()
{
  v0 = +[UAFAssetSetManager defaults];
  v1 = [v0 stringForKey:@"PersistedDeviceId"];
  v2 = qword_1ED7D1108;
  qword_1ED7D1108 = v1;

  if (!qword_1ED7D1108)
  {
    v3 = objc_opt_new();
    v4 = [v3 UUIDString];
    v5 = qword_1ED7D1108;
    qword_1ED7D1108 = v4;

    v6 = +[UAFAssetSetManager defaults];
    [v6 setValue:qword_1ED7D1108 forKey:@"PersistedDeviceId"];

    v7 = +[UAFAssetSetManager defaults];
    [v7 synchronize];
  }
}

+ (id)_getBiomeEventDeviceMetadata
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [UAFCommonUtilities mobileGestaltQuery:@"ProductType"];
  v4 = [UAFCommonUtilities mobileGestaltQuery:@"BuildVersion"];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v6 = objc_alloc(MEMORY[0x1E698EFB8]);
  languageCode = [currentLocale languageCode];
  regionCode = [currentLocale regionCode];
  v9 = [v6 initWithLanguageCode:languageCode countryCode:regionCode];

  v10 = UAFGetLogCategory(&UAFLogContextInstrumentation);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "+[UAFBiomeInstrumenter _getBiomeEventDeviceMetadata]";
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Captured device metadata for UAFAssetDailyStatusWithDeviceProperties event", &v22, 0xCu);
  }

  defaultDeviceId = [self defaultDeviceId];
  v12 = MEMORY[0x1E696AD98];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v15 = [v12 numberWithUnsignedLongLong:(v14 * 1000000000.0)];

  v16 = objc_alloc(MEMORY[0x1E698EFB0]);
  v17 = [defaultDeviceId dataUsingEncoding:4];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  v19 = [v16 initWithDeviceId:v17 deviceType:v3 programCode:v18 systemBuild:v4 inputLocale:v9 nanoSecondsSinceLastBoot:v15];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (void)logScheduledDailyAssetStatus
{
  v15 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() isBiomeAvailable])
  {
    v3 = BiomeLibrary();
    assetDelivery = [v3 AssetDelivery];
    v5 = [assetDelivery UAF];
    dailyStatus = [v5 DailyStatus];

    source = [dailyStatus source];
    _getBiomeEventDeviceMetadata = [self _getBiomeEventDeviceMetadata];
    _getBiomeStreamForScheduledDailyAssetStatus = [self _getBiomeStreamForScheduledDailyAssetStatus];
    v10 = [objc_alloc(MEMORY[0x1E698EB38]) initWithDeviceMetadata:_getBiomeEventDeviceMetadata availableAssetDailyStatus:_getBiomeStreamForScheduledDailyAssetStatus];
    v11 = UAFGetLogCategory(&UAFLogContextInstrumentation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "+[UAFBiomeInstrumenter logScheduledDailyAssetStatus]";
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Using Biome to send scheduled daily status event", &v13, 0xCu);
    }

    [source sendEvent:v10];
  }

  else
  {
    dailyStatus = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(dailyStatus, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "+[UAFBiomeInstrumenter logScheduledDailyAssetStatus]";
      _os_log_error_impl(&dword_1BCF2C000, dailyStatus, OS_LOG_TYPE_ERROR, "%s Can't log daily asset status as this system doesn't support Biome.", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)_getBiomeStreamForScheduledDailyAssetStatus
{
  v3 = objc_opt_new();
  _getSubscriptionsStatus = [self _getSubscriptionsStatus];
  if (_getSubscriptionsStatus)
  {
    [v3 addObject:_getSubscriptionsStatus];
  }

  v5 = [objc_alloc(MEMORY[0x1E698EFA8]) initWithAssetSetStatus:v3 statusReason:1];

  return v5;
}

+ (id)_getSubscriptionsStatus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v3 = +[UAFAssetSetManager getSerialQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__UAFBiomeInstrumenter__getSubscriptionsStatus__block_invoke;
  v6[3] = &unk_1E7FFDDB8;
  v6[4] = &v7;
  v6[5] = self;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__UAFBiomeInstrumenter__getSubscriptionsStatus__block_invoke(uint64_t a1)
{
  v167 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = +[UAFSubscriptionStoreManager defaultManager];
  v6 = +[UAFConfigurationManager defaultManager];
  v152 = 0;
  v88 = v5;
  v7 = [v5 getAllSubscriptions:&v152];
  v8 = v152;
  if (v8)
  {
    v9 = UAFGetLogCategory(&UAFLogContextInstrumentation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v155 = "+[UAFBiomeInstrumenter _getSubscriptionsStatus]_block_invoke";
      v156 = 2114;
      v157 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Could not retrieve all subscriptions: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v85 = v3;
    v92 = v7;
    v93 = v2;
    [UAFSubscriptionStoreManager flattenSubscriptions:v7];
    v83 = v113 = v6;
    [v6 applySubscriptions:?];
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v82 = v151 = 0u;
    v10 = [v82 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v148 objects:v166 count:16];
    v87 = a1;
    if (v11)
    {
      v12 = v11;
      v13 = a1;
      v14 = *v149;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v149 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v148 + 1) + 8 * i);
          v17 = [*(v13 + 40) _constructBiomeAssetSet:v16 storeManager:v88];
          if (v17)
          {
            [v85 addObject:v17];
            v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v85, "count") - 1}];
            [v4 setObject:v18 forKeyedSubscript:v16];
          }

          v13 = a1;
        }

        v12 = [v10 countByEnumeratingWithState:&v148 objects:v166 count:16];
      }

      while (v12);
    }

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v7 = v92;
    obj = [v92 allKeys];
    v89 = [obj countByEnumeratingWithState:&v144 objects:v165 count:16];
    if (v89)
    {
      v86 = *v145;
      do
      {
        v19 = 0;
        do
        {
          if (*v145 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v90 = v19;
          v20 = *(*(&v144 + 1) + 8 * v19);
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v95 = v20;
          v21 = [v7 objectForKeyedSubscript:?];
          v22 = [v21 allKeys];

          v91 = v22;
          v96 = [v22 countByEnumeratingWithState:&v140 objects:v164 count:16];
          if (v96)
          {
            v94 = *v141;
            do
            {
              v23 = 0;
              do
              {
                if (*v141 != v94)
                {
                  objc_enumerationMutation(v91);
                }

                v98 = v23;
                v24 = *(*(&v140 + 1) + 8 * v23);
                v25 = [v7 objectForKeyedSubscript:v95];
                v97 = v24;
                v26 = [v25 objectForKeyedSubscript:v24];

                v27 = 0x1E695D000uLL;
                v101 = objc_opt_new();
                v136 = 0u;
                v137 = 0u;
                v138 = 0u;
                v139 = 0u;
                v99 = v26;
                v102 = [v99 countByEnumeratingWithState:&v136 objects:v163 count:16];
                if (v102)
                {
                  v100 = *v137;
                  do
                  {
                    v28 = 0;
                    do
                    {
                      if (*v137 != v100)
                      {
                        objc_enumerationMutation(v99);
                      }

                      v103 = v28;
                      v29 = *(*(&v136 + 1) + 8 * v28);
                      v119 = objc_alloc_init(*(v27 + 3952));
                      v30 = *(v27 + 3952);
                      v31 = objc_opt_new();
                      v132 = 0u;
                      v133 = 0u;
                      v134 = 0u;
                      v135 = 0u;
                      v118 = v29;
                      v107 = [v29 assetSets];
                      v111 = [v107 countByEnumeratingWithState:&v132 objects:v162 count:16];
                      if (v111)
                      {
                        v109 = *v133;
                        do
                        {
                          v32 = 0;
                          do
                          {
                            if (*v133 != v109)
                            {
                              objc_enumerationMutation(v107);
                            }

                            v116 = v32;
                            v33 = *(*(&v132 + 1) + 8 * v32);
                            v34 = [v118 assetSets];
                            v114 = v33;
                            v35 = [v34 objectForKeyedSubscript:v33];

                            v130 = 0u;
                            v131 = 0u;
                            v128 = 0u;
                            v129 = 0u;
                            v36 = v35;
                            v37 = [v36 countByEnumeratingWithState:&v128 objects:v161 count:16];
                            if (v37)
                            {
                              v38 = v37;
                              v39 = *v129;
                              do
                              {
                                for (j = 0; j != v38; ++j)
                                {
                                  if (*v129 != v39)
                                  {
                                    objc_enumerationMutation(v36);
                                  }

                                  v41 = *(*(&v128 + 1) + 8 * j);
                                  v42 = objc_alloc(MEMORY[0x1E698EF90]);
                                  v43 = [v36 objectForKeyedSubscript:v41];
                                  v44 = [v42 initWithUsageName:v41 usageValue:v43];

                                  [v31 addObject:v44];
                                }

                                v38 = [v36 countByEnumeratingWithState:&v128 objects:v161 count:16];
                              }

                              while (v38);
                            }

                            v45 = [v4 objectForKeyedSubscript:v114];

                            if (v45)
                            {
                              v46 = [v4 objectForKeyedSubscript:v114];
                              [v119 addObject:v46];
                            }

                            v32 = v116 + 1;
                          }

                          while (v116 + 1 != v111);
                          v111 = [v107 countByEnumeratingWithState:&v132 objects:v162 count:16];
                        }

                        while (v111);
                      }

                      v47 = objc_opt_new();
                      v124 = 0u;
                      v125 = 0u;
                      v126 = 0u;
                      v127 = 0u;
                      v108 = [v118 usageAliases];
                      v112 = [v108 countByEnumeratingWithState:&v124 objects:v160 count:16];
                      if (v112)
                      {
                        v110 = *v125;
                        v104 = v47;
                        do
                        {
                          for (k = 0; k != v112; ++k)
                          {
                            if (*v125 != v110)
                            {
                              objc_enumerationMutation(v108);
                            }

                            v49 = *(*(&v124 + 1) + 8 * k);
                            v50 = objc_alloc(MEMORY[0x1E698EFA0]);
                            v51 = [v118 usageAliases];
                            v52 = [v51 objectForKeyedSubscript:v49];
                            v53 = [v50 initWithAliasName:v49 aliasValue:v52];

                            v117 = v53;
                            [v47 addObject:v53];
                            v54 = [v118 usageAliases];
                            v55 = [v54 objectForKeyedSubscript:v49];

                            v56 = [v113 getUsageAlias:v49 includeDeprecatedValues:0];
                            if (v56)
                            {
                              v57 = v56;
                              v58 = [v56 values];
                              v59 = [v58 objectForKeyedSubscript:v55];

                              if (!v59)
                              {
                                v60 = UAFGetLogCategory(&UAFLogContextInstrumentation);
                                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 136315650;
                                  v155 = "+[UAFBiomeInstrumenter _getSubscriptionsStatus]_block_invoke";
                                  v156 = 2114;
                                  v157 = v49;
                                  v158 = 2114;
                                  v159 = v55;
                                  _os_log_impl(&dword_1BCF2C000, v60, OS_LOG_TYPE_DEFAULT, "%s Loading deprecated values to process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
                                }

                                v61 = [v113 getUsageAlias:v49 includeDeprecatedValues:1];

                                v57 = v61;
                              }

                              v115 = v57;
                              v62 = [v57 values];
                              v63 = [v62 objectForKeyedSubscript:v55];

                              if ([v63 count])
                              {
                                v122 = 0u;
                                v123 = 0u;
                                v120 = 0u;
                                v121 = 0u;
                                v64 = v63;
                                v65 = [v64 countByEnumeratingWithState:&v120 objects:v153 count:16];
                                if (v65)
                                {
                                  v66 = v65;
                                  v105 = v63;
                                  v106 = v55;
                                  v67 = *v121;
                                  do
                                  {
                                    for (m = 0; m != v66; ++m)
                                    {
                                      if (*v121 != v67)
                                      {
                                        objc_enumerationMutation(v64);
                                      }

                                      v69 = *(*(&v120 + 1) + 8 * m);
                                      v70 = [v4 objectForKeyedSubscript:v69];

                                      if (v70)
                                      {
                                        v71 = [v4 objectForKeyedSubscript:v69];
                                        [v119 addObject:v71];
                                      }
                                    }

                                    v66 = [v64 countByEnumeratingWithState:&v120 objects:v153 count:16];
                                  }

                                  while (v66);
                                  v47 = v104;
                                  v63 = v105;
                                  v55 = v106;
                                }
                              }

                              else
                              {
                                v64 = UAFGetLogCategory(&UAFLogContextInstrumentation);
                                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136315650;
                                  v155 = "+[UAFBiomeInstrumenter _getSubscriptionsStatus]_block_invoke";
                                  v156 = 2114;
                                  v157 = v49;
                                  v158 = 2114;
                                  v159 = v55;
                                  _os_log_error_impl(&dword_1BCF2C000, v64, OS_LOG_TYPE_ERROR, "%s Could not process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
                                }
                              }

                              v72 = v115;
                            }

                            else
                            {
                              v72 = UAFGetLogCategory(&UAFLogContextInstrumentation);
                              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 136315394;
                                v155 = "+[UAFBiomeInstrumenter _getSubscriptionsStatus]_block_invoke";
                                v156 = 2114;
                                v157 = v49;
                                _os_log_error_impl(&dword_1BCF2C000, v72, OS_LOG_TYPE_ERROR, "%s Could not process subscription for usage alias %{public}@", buf, 0x16u);
                              }
                            }
                          }

                          v112 = [v108 countByEnumeratingWithState:&v124 objects:v160 count:16];
                        }

                        while (v112);
                      }

                      v73 = objc_alloc(MEMORY[0x1E698EF88]);
                      v74 = [v118 name];
                      v75 = [v73 initWithSubscriptionName:v74 assetSetIndices:v119 assetSetUsages:v31 usageAliases:v47];

                      [v101 addObject:v75];
                      v28 = v103 + 1;
                      v27 = 0x1E695D000;
                    }

                    while (v103 + 1 != v102);
                    v102 = [v99 countByEnumeratingWithState:&v136 objects:v163 count:16];
                  }

                  while (v102);
                }

                v76 = [objc_alloc(MEMORY[0x1E698EF98]) initWithSubscriberName:v97 subscriptions:v101];
                [v93 addObject:v76];

                v23 = v98 + 1;
                v7 = v92;
              }

              while (v98 + 1 != v96);
              v96 = [v91 countByEnumeratingWithState:&v140 objects:v164 count:16];
            }

            while (v96);
          }

          v19 = v90 + 1;
        }

        while (v90 + 1 != v89);
        v89 = [obj countByEnumeratingWithState:&v144 objects:v165 count:16];
      }

      while (v89);
    }

    v77 = objc_opt_new();
    v3 = v85;
    v2 = v93;
    v78 = [objc_alloc(MEMORY[0x1E698EF80]) initWithUafAssetSets:v85 uafAssetSubscriptions:v93 allAssets:v77];
    v79 = *(*(v87 + 32) + 8);
    v80 = *(v79 + 40);
    *(v79 + 40) = v78;

    v6 = v113;
    v9 = v83;
    v8 = 0;
  }

  v81 = *MEMORY[0x1E69E9840];
}

+ (id)_getBiomeUAFAssetSet:(id)set assetSetId:(id)id entries:(id)entries errorCodes:(id)codes fromPSUS:(BOOL)s
{
  sCopy = s;
  v56 = *MEMORY[0x1E69E9840];
  setCopy = set;
  idCopy = id;
  entriesCopy = entries;
  codesCopy = codes;
  v44 = objc_opt_new();
  v12 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v13 = codesCopy;
  v14 = [v13 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v51;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [objc_alloc(MEMORY[0x1E698EFC0]) initWithMobileAssetDownloadErrorCode:*(*(&v50 + 1) + 8 * i) timesOccurred:&unk_1F3B731B8];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v15);
  }

  v37 = v13;
  v38 = v12;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = entriesCopy;
  v45 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v45)
  {
    v43 = *v47;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v46 + 1) + 8 * j);
        v21 = objc_alloc(MEMORY[0x1E698EF70]);
        fullAssetSelector = [v20 fullAssetSelector];
        assetSpecifier = [fullAssetSelector assetSpecifier];
        fullAssetSelector2 = [v20 fullAssetSelector];
        assetSpecifier2 = [fullAssetSelector2 assetSpecifier];
        fullAssetSelector3 = [v20 fullAssetSelector];
        assetVersion = [fullAssetSelector3 assetVersion];
        localContentURL = [v20 localContentURL];
        absoluteString = [localContentURL absoluteString];
        v30 = [v21 initWithAssetName:assetSpecifier assetSpecifier:assetSpecifier2 assetVersion:assetVersion assetLocale:0 assetSource:4 isAssetPathValid:0 assetPath:absoluteString assetDownloadSizeInBytes:0 assetUnarchivedSizeInBytes:{0, v37}];

        [v44 addObject:v30];
      }

      v45 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v45);
  }

  v31 = objc_alloc(MEMORY[0x1E698EF78]);
  assetSetIdentifier = [setCopy assetSetIdentifier];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:sCopy];
  v34 = [v31 initWithAssetSetName:assetSetIdentifier assets:v44 assetType:0 assetSetId:idCopy audienceId:0 mobileAssetDownloadErrorCodeFrequency:v38 fromPreSoftwareUpdateStaging:v33 expensiveCellularDownloadRequested:0];

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

+ (id)_constructBiomeAssetSet:(id)set storeManager:(id)manager
{
  v90[1] = *MEMORY[0x1E69E9840];
  setCopy = set;
  managerCopy = manager;
  v7 = objc_opt_new();
  v8 = [managerCopy getSystemAssetSetUsages:setCopy];
  v9 = v8;
  if (v8)
  {
    v89 = setCopy;
    v90[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = +[UAFAssetSetManager sharedManager];
  v12 = [v11 retrieveAssetSet:setCopy usages:0];

  if (v12)
  {
    v53 = v9;
    v54 = managerCopy;
    v80 = 0;
    v51 = [v12 assetSetIdForSELF:1 stagedDuringSU:&v80];
    v13 = UAFGetLogCategory(&UAFLogContextInstrumentation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v84 = "+[UAFBiomeInstrumenter _constructBiomeAssetSet:storeManager:]";
      v85 = 2114;
      v86 = setCopy;
      v87 = 1024;
      v88 = v80;
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Emitting daily status scheduled event for asset set %{public}@, pre-staged: %d", buf, 0x1Cu);
    }

    v55 = setCopy;

    v52 = v12;
    autoAssetSet = [v12 autoAssetSet];
    getMAAutoAssetDownloadErrorsSync = [autoAssetSet getMAAutoAssetDownloadErrorsSync];

    v58 = objc_opt_new();
    v56 = getMAAutoAssetDownloadErrorsSync;
    if ([getMAAutoAssetDownloadErrorsSync count])
    {
      v16 = v10;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v17 = getMAAutoAssetDownloadErrorsSync;
      v18 = [v17 countByEnumeratingWithState:&v76 objects:v82 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v77;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v77 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v76 + 1) + 8 * i);
            v23 = objc_alloc(MEMORY[0x1E698EFC0]);
            v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "countForObject:", v22)}];
            v25 = [v23 initWithMobileAssetDownloadErrorCode:v22 timesOccurred:v24];

            [v58 addObject:v25];
          }

          v19 = [v17 countByEnumeratingWithState:&v76 objects:v82 count:16];
        }

        while (v19);
      }

      v10 = v16;
    }

    [UAFAssetSetManager getSystemUsageAssets:v10];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v75 = 0u;
    v62 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v62)
    {
      v59 = *v73;
      v60 = v7;
      do
      {
        v26 = 0;
        do
        {
          if (*v73 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v72 + 1) + 8 * v26);
          [v27 metadata];
          v28 = v66 = v26;
          v29 = [v28 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.Source"];
          v30 = [self _getAssetSource:v29];

          metadata = [v27 metadata];
          v32 = metadata;
          v33 = v30;
          if (v30 == 4)
          {
            v34 = @"AssetVersion";
          }

          else
          {
            v34 = @"version";
          }

          v69 = [metadata objectForKeyedSubscript:v34];

          v67 = objc_alloc(MEMORY[0x1E698EF70]);
          name = [v27 name];
          metadata2 = [v27 metadata];
          v65 = [metadata2 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.AssetId"];
          v35 = MEMORY[0x1E696AD98];
          location = [v27 location];
          v36 = [v35 numberWithBool:location != 0];
          location2 = [v27 location];
          absoluteString = [location2 absoluteString];
          v38 = MEMORY[0x1E696AD98];
          metadata3 = [v27 metadata];
          v39 = [metadata3 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.ReportedDownloadSize"];
          v40 = [v38 numberWithLongLong:{objc_msgSend(v39, "longLongValue")}];
          v41 = MEMORY[0x1E696AD98];
          metadata4 = [v27 metadata];
          v43 = [metadata4 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.UnarchivedSize"];
          v44 = [v41 numberWithLongLong:{objc_msgSend(v43, "longLongValue")}];
          v45 = [v67 initWithAssetName:name assetSpecifier:v65 assetVersion:v69 assetLocale:0 assetSource:v33 isAssetPathValid:v36 assetPath:absoluteString assetDownloadSizeInBytes:v40 assetUnarchivedSizeInBytes:v44];

          v7 = v60;
          [v60 addObject:v45];

          v26 = v66 + 1;
        }

        while (v62 != v66 + 1);
        v62 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
      }

      while (v62);
    }

    v46 = objc_alloc(MEMORY[0x1E698EF78]);
    v47 = [MEMORY[0x1E696AD98] numberWithBool:v80];
    setCopy = v55;
    v48 = [v46 initWithAssetSetName:v55 assets:v7 assetType:0 assetSetId:v51 audienceId:0 mobileAssetDownloadErrorCodeFrequency:v58 fromPreSoftwareUpdateStaging:v47 expensiveCellularDownloadRequested:0];

    v9 = v53;
    managerCopy = v54;
    v12 = v52;
  }

  else
  {
    v48 = 0;
  }

  v49 = *MEMORY[0x1E69E9840];

  return v48;
}

+ (int)_getAssetSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"Factory"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"Root"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"MA"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end