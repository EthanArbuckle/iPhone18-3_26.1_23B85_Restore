@interface RKRankLearner
- (BOOL)insertRankingInfo:(id)a3 forLanguageID:(id)a4;
- (RKRankLearner)init;
- (id)getDBManager:(id)a3;
- (id)getDBManager:(id)a3 withCustomPath:(id)a4;
- (id)getRankedResponses:(id)a3 forRecipientID:(id)a4 withLanguageID:(id)a5;
- (id)rankResponses:(id)a3;
- (id)updateFeaturesForResponse:(id)a3 selectCounts:(id)a4 inputMethodCounts:(id)a5 sourceCounts:(id)a6 currentTime:(id)a7 languageCode:(id)a8;
- (void)flushRankingData:(id)a3;
@end

@implementation RKRankLearner

- (RKRankLearner)init
{
  v6.receiver = self;
  v6.super_class = RKRankLearner;
  v2 = [(RKRankLearner *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = _languageRankingModel;
    _languageRankingModel = v3;
  }

  return v2;
}

- (id)getDBManager:(id)a3
{
  v3 = a3;
  v4 = [_languageRankingModel objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [_languageRankingModel objectForKeyedSubscript:v3];
  }

  else
  {
    v5 = [[RKRankingDataManager alloc] initWithLanguageID:v3];
    [_languageRankingModel setObject:v5 forKeyedSubscript:v3];
  }

  return v5;
}

- (id)getDBManager:(id)a3 withCustomPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [_languageRankingModel objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = [_languageRankingModel objectForKeyedSubscript:v5];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v6];
    v8 = [[RKRankingDataManager alloc] initWithDatabaseFilename:v9];
    [_languageRankingModel setObject:v8 forKeyedSubscript:v5];
  }

  return v8;
}

- (BOOL)insertRankingInfo:(id)a3 forLanguageID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"category"];
  v9 = [v8 isEqualToString:@"Unknown"];
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [RKRankLearner insertRankingInfo:forLanguageID:];
    }
  }

  else
  {
    v10 = [(RKRankLearner *)self getDBManager:v7];
    [v10 insertRankingInfoFromDictionary:v6];
  }

  return v9 ^ 1;
}

- (id)updateFeaturesForResponse:(id)a3 selectCounts:(id)a4 inputMethodCounts:(id)a5 sourceCounts:(id)a6 currentTime:(id)a7 languageCode:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v13 componentsSeparatedByString:@" "];
  v20 = [v19 count];

  if (([v18 isEqualToString:@"zh-Hans"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"ja") & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"th") & 1) != 0 || objc_msgSend(v18, "isEqualToString:", @"ko"))
  {
    v21 = [v13 length];
    v22 = v21 > 0x14;
  }

  else
  {
    v22 = 0;
    v21 = v20;
  }

  v23 = 0;
  if (v20 <= 5 && !v22)
  {
    v24 = [v14 objectForKeyedSubscript:v13];
    v25 = [v24 count];

    if (v25 >= 2)
    {
      v26 = [v14 objectForKeyedSubscript:v13];
      v59 = [v26 timestamp];

      [v17 timeIntervalSinceDate:v59];
      v28 = v27 / 86400.0;
      v29 = [v16 objectForKeyedSubscript:v13];
      v62 = v15;
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      [v29 objectForKeyedSubscript:v30];
      v31 = v58 = v25;
      v60 = v17;
      v32 = [v31 intValue];

      v33 = [v16 objectForKeyedSubscript:v13];
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
      v35 = [v33 objectForKeyedSubscript:v34];
      v61 = v16;
      v36 = [v35 intValue];

      v37 = v32 / (v36 + v32);
      v38 = v36 / (v36 + v32);
      v39 = [v15 objectForKeyedSubscript:v13];
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
      v41 = [v39 objectForKeyedSubscript:v40];
      LODWORD(v35) = [v41 intValue];

      v42 = [v15 objectForKeyedSubscript:v13];
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      v44 = [v42 objectForKeyedSubscript:v43];
      LODWORD(v34) = [v44 intValue];

      v45 = [v15 objectForKeyedSubscript:v13];
      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
      v47 = [v45 objectForKeyedSubscript:v46];
      v48 = [v47 intValue];

      v17 = v60;
      v49 = v34 + v35 + v48;
      v50 = v35 / v49;
      v51 = v34 / v49;
      v52 = v48 / v49;
      v53 = [v14 objectForKeyedSubscript:v13];
      v54 = [v53 hasSameRecipient];

      v15 = v62;
      v55 = [RKResponseFeatures alloc];
      v56 = v54;
      v16 = v61;
      v23 = [(RKResponseFeatures *)v55 initWithFeatures:v13 count:v58 numOfElapsedDays:v21 sourceAppCount:v56 sourceNotificationCount:v28 inputSourceCannedCount:v37 inputSourceScribbleCount:v38 inputSourceDictationCount:v50 responseLength:v51 sameRecipientCount:v52];
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (id)getRankedResponses:(id)a3 forRecipientID:(id)a4 withLanguageID:(id)a5
{
  v134 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v110 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v9];
  v106 = [v10 objectForKey:*MEMORY[0x277CBE6C8]];

  v103 = v9;
  v11 = [(RKRankLearner *)self getDBManager:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RKRankLearner_getRankedResponses_forRecipientID_withLanguageID___block_invoke;
  block[3] = &unk_279B10270;
  block[4] = self;
  if (getRankedResponses_forRecipientID_withLanguageID__onceToken != -1)
  {
    dispatch_once(&getRankedResponses_forRecipientID_withLanguageID__onceToken, block);
  }

  v102 = v11;
  v104 = v8;
  v12 = [v11 fetchRankingInfoForCategory:v8];
  v116 = objc_opt_new();
  v13 = objc_opt_new();
  v111 = objc_opt_new();
  v14 = objc_opt_new();
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = v12;
  v117 = v14;
  v112 = [obj countByEnumeratingWithState:&v126 objects:v133 count:16];
  if (v112)
  {
    v108 = *v127;
    v15 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v112; ++i)
      {
        if (*v127 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v126 + 1) + 8 * i);
        v18 = [v17 recipientId];
        v19 = [v18 isEqualToString:v110];

        v20 = [v17 timestamp];
        v21 = [v17 response];
        v22 = [v13 objectForKeyedSubscript:v21];

        v114 = v20;
        if (v22)
        {
          v23 = [v17 response];
          v24 = [v13 objectForKeyedSubscript:v23];
          v25 = [v24 count];

          v26 = v20;
          v27 = [v17 response];
          v28 = [v13 objectForKeyedSubscript:v27];
          v29 = [v28 timestamp];
          v30 = [v26 compare:v29];

          if (v30 == -1)
          {
            v31 = [v17 response];
            v32 = [v13 objectForKeyedSubscript:v31];
            v33 = [v32 timestamp];

            v26 = v33;
          }

          v34 = [v17 response];
          v35 = [v13 objectForKeyedSubscript:v34];
          [v35 setCount:(v25 + 1)];

          v36 = [v17 response];
          v37 = [v13 objectForKeyedSubscript:v36];
          [v37 setTimestamp:v26];

          v38 = [v17 response];
          v39 = [v13 objectForKeyedSubscript:v38];
          LODWORD(v35) = [v39 hasSameRecipient];
          v40 = [v17 response];
          v41 = [v13 objectForKeyedSubscript:v40];
          [v41 setHasSameRecipient:v19 | v35];

          v42 = v111;
          v14 = v117;
          v15 = 0x277CCA000;
        }

        else
        {
          v43 = [[RKResponseCountTimestampRecipient alloc] initWithCount:1 timestamp:v20 hasSameRecipient:v19];
          v44 = [v17 response];
          [v13 setObject:v43 forKeyedSubscript:v44];

          v26 = objc_opt_new();
          v45 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
          [v26 setObject:v45 forKey:v46];

          v47 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
          [v26 setObject:v47 forKey:v48];

          v49 = [v17 response];
          v42 = v111;
          [v111 setObject:v26 forKeyedSubscript:v49];

          v38 = objc_opt_new();
          v50 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
          [v38 setObject:v50 forKey:v51];

          v52 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
          [v38 setObject:v52 forKey:v53];

          v54 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
          [v38 setObject:v54 forKey:v55];

          v39 = [v17 response];
          [v14 setObject:v38 forKeyedSubscript:v39];
        }

        v56 = [v17 response];
        v57 = [v42 objectForKeyedSubscript:v56];
        v58 = [*(v15 + 2992) numberWithUnsignedInteger:{objc_msgSend(v17, "source")}];
        v59 = [v57 objectForKeyedSubscript:v58];
        v60 = [v59 intValue];

        v61 = [MEMORY[0x277CCABB0] numberWithInt:(v60 + 1)];
        v62 = [v17 response];
        v63 = [v42 objectForKeyedSubscript:v62];
        v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "source")}];
        [v63 setObject:v61 forKeyedSubscript:v64];

        v65 = [v17 response];
        v66 = [v14 objectForKeyedSubscript:v65];
        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "inputMethod")}];
        v68 = [v66 objectForKeyedSubscript:v67];
        v69 = [v68 intValue];

        v70 = (v69 + 1);
        v15 = 0x277CCA000uLL;
        v71 = [MEMORY[0x277CCABB0] numberWithInt:v70];
        v72 = [v17 response];
        v73 = [v14 objectForKeyedSubscript:v72];
        v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "inputMethod")}];
        [v73 setObject:v71 forKeyedSubscript:v74];
      }

      v112 = [obj countByEnumeratingWithState:&v126 objects:v133 count:16];
    }

    while (v112);
  }

  v75 = [MEMORY[0x277CBEAA8] date];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v76 = v13;
  v77 = [v76 countByEnumeratingWithState:&v122 objects:v132 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v123;
    do
    {
      for (j = 0; j != v78; ++j)
      {
        if (*v123 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = *(*(&v122 + 1) + 8 * j);
        v82 = [(RKRankLearner *)self updateFeaturesForResponse:v81 selectCounts:v76 inputMethodCounts:v117 sourceCounts:v111 currentTime:v75 languageCode:v106];
        [v116 setObject:v82 forKeyedSubscript:v81];
      }

      v78 = [v76 countByEnumeratingWithState:&v122 objects:v132 count:16];
    }

    while (v78);
  }

  v109 = v75;

  v113 = objc_opt_new();
  v115 = objc_opt_new();
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v83 = obj;
  v84 = [v83 countByEnumeratingWithState:&v118 objects:v131 count:16];
  v85 = v117;
  if (v84)
  {
    v86 = v84;
    v87 = *v119;
    do
    {
      for (k = 0; k != v86; ++k)
      {
        if (*v119 != v87)
        {
          objc_enumerationMutation(v83);
        }

        v89 = *(*(&v118 + 1) + 8 * k);
        v90 = [v89 response];
        v91 = [v116 objectForKeyedSubscript:v90];

        if (v91)
        {
          v92 = [v89 response];
          v93 = [v76 objectForKeyedSubscript:v92];
          v94 = [v93 count];

          v95 = v94 < 2;
          v85 = v117;
          if (!v95)
          {
            v96 = [v89 response];
            v97 = [v115 containsObject:v96];

            if ((v97 & 1) == 0)
            {
              v98 = [v89 response];
              [v115 addObject:v98];

              [v113 addObject:v91];
            }
          }
        }
      }

      v86 = [v83 countByEnumeratingWithState:&v118 objects:v131 count:16];
    }

    while (v86);
  }

  v99 = [(RKRankLearner *)self rankResponses:v113];

  v100 = *MEMORY[0x277D85DE8];

  return v99;
}

void __66__RKRankLearner_getRankedResponses_forRecipientID_withLanguageID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = MEMORY[0x277CBEBC0];
  v3 = [v9 pathForResource:@"RKAssetsConstantClasses" ofType:@"plist"];
  v4 = [v2 URLWithString:v3];

  v5 = [RKResponseCollection alloc];
  v6 = [[RKBundleDataProvider alloc] initWithAssetPlist:v4];
  v7 = [(RKResponseCollection *)v5 initWithDynamicDataURL:0 displayStringsProvider:v6];
  v8 = getRankedResponses_forRecipientID_withLanguageID__responseCollection;
  getRankedResponses_forRecipientID_withLanguageID__responseCollection = v7;
}

- (id)rankResponses:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v11 = [v10 response];
        v12 = [v10 responseLength];
        [v10 numOfElapsedDays];
        v40 = exp(v13 / -30.0);
        v14 = log(([v10 count] + 1));
        [v10 normalizedSourceAppCount];
        v16 = log(v15 + 1.0);
        [v10 normalizedSourceNotificationCount];
        v18 = log(v17 + 1.0);
        [v10 normalizedInputMethodCannedCount];
        v20 = log(v19 + 1.0);
        [v10 normalizedInputMethodScribbleCount];
        v22 = log(v21 + 1.0);
        [v10 normalizedInputMethodDictationCount];
        v24 = log(v23 + 1.0);
        v25 = log(([v10 sameRecipientCount] + 1));
        [v10 normalizedInputMethodDictationCount];
        if (v26 <= 0.0 && ([v10 normalizedInputMethodScribbleCount], v27 <= 0.0))
        {
          v31 = 0;
        }

        else
        {
          [v10 normalizedInputMethodDictationCount];
          v29 = v28;
          [v10 normalizedInputMethodScribbleCount];
          if (v29 <= v30)
          {
            v31 = 1;
          }

          else
          {
            v31 = 2;
          }
        }

        v32 = [[RKRankedResponse alloc] initWithResponse:v11 inputMethod:v31 score:1.0 / sqrt(v12) + (v25 + v14 + v16 * 0.5 + v18 * 0.5 + v20 * 0.2 + v22 * 0.4 + v24 * 0.4) * v40];
        [v4 addObject:v32];
      }

      v7 = [v5 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v7);
  }

  v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v34 = [MEMORY[0x277CBEA60] arrayWithObject:v33];
  v35 = [v4 sortedArrayUsingDescriptors:v34];
  if ([v35 count] < 4)
  {
    v36 = v35;
  }

  else
  {
    v36 = [v35 subarrayWithRange:{0, 3}];
  }

  v37 = v36;

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (void)flushRankingData:(id)a3
{
  v3 = [(RKRankLearner *)self getDBManager:a3];
  [v3 flushRankingData];
}

@end