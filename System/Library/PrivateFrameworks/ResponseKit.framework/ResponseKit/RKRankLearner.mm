@interface RKRankLearner
- (BOOL)insertRankingInfo:(id)info forLanguageID:(id)d;
- (RKRankLearner)init;
- (id)getDBManager:(id)manager;
- (id)getDBManager:(id)manager withCustomPath:(id)path;
- (id)getRankedResponses:(id)responses forRecipientID:(id)d withLanguageID:(id)iD;
- (id)rankResponses:(id)responses;
- (id)updateFeaturesForResponse:(id)response selectCounts:(id)counts inputMethodCounts:(id)methodCounts sourceCounts:(id)sourceCounts currentTime:(id)time languageCode:(id)code;
- (void)flushRankingData:(id)data;
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

- (id)getDBManager:(id)manager
{
  managerCopy = manager;
  v4 = [_languageRankingModel objectForKeyedSubscript:managerCopy];

  if (v4)
  {
    v5 = [_languageRankingModel objectForKeyedSubscript:managerCopy];
  }

  else
  {
    v5 = [[RKRankingDataManager alloc] initWithLanguageID:managerCopy];
    [_languageRankingModel setObject:v5 forKeyedSubscript:managerCopy];
  }

  return v5;
}

- (id)getDBManager:(id)manager withCustomPath:(id)path
{
  managerCopy = manager;
  pathCopy = path;
  v7 = [_languageRankingModel objectForKeyedSubscript:managerCopy];

  if (v7)
  {
    v8 = [_languageRankingModel objectForKeyedSubscript:managerCopy];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:pathCopy];
    v8 = [[RKRankingDataManager alloc] initWithDatabaseFilename:v9];
    [_languageRankingModel setObject:v8 forKeyedSubscript:managerCopy];
  }

  return v8;
}

- (BOOL)insertRankingInfo:(id)info forLanguageID:(id)d
{
  infoCopy = info;
  dCopy = d;
  v8 = [infoCopy objectForKeyedSubscript:@"category"];
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
    v10 = [(RKRankLearner *)self getDBManager:dCopy];
    [v10 insertRankingInfoFromDictionary:infoCopy];
  }

  return v9 ^ 1;
}

- (id)updateFeaturesForResponse:(id)response selectCounts:(id)counts inputMethodCounts:(id)methodCounts sourceCounts:(id)sourceCounts currentTime:(id)time languageCode:(id)code
{
  responseCopy = response;
  countsCopy = counts;
  methodCountsCopy = methodCounts;
  sourceCountsCopy = sourceCounts;
  timeCopy = time;
  codeCopy = code;
  v19 = [responseCopy componentsSeparatedByString:@" "];
  v20 = [v19 count];

  if (([codeCopy isEqualToString:@"zh-Hans"] & 1) != 0 || (objc_msgSend(codeCopy, "isEqualToString:", @"ja") & 1) != 0 || (objc_msgSend(codeCopy, "isEqualToString:", @"th") & 1) != 0 || objc_msgSend(codeCopy, "isEqualToString:", @"ko"))
  {
    v21 = [responseCopy length];
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
    v24 = [countsCopy objectForKeyedSubscript:responseCopy];
    v25 = [v24 count];

    if (v25 >= 2)
    {
      v26 = [countsCopy objectForKeyedSubscript:responseCopy];
      timestamp = [v26 timestamp];

      [timeCopy timeIntervalSinceDate:timestamp];
      v28 = v27 / 86400.0;
      v29 = [sourceCountsCopy objectForKeyedSubscript:responseCopy];
      v62 = methodCountsCopy;
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      [v29 objectForKeyedSubscript:v30];
      v31 = v58 = v25;
      v60 = timeCopy;
      intValue = [v31 intValue];

      v33 = [sourceCountsCopy objectForKeyedSubscript:responseCopy];
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
      v35 = [v33 objectForKeyedSubscript:v34];
      v61 = sourceCountsCopy;
      intValue2 = [v35 intValue];

      v37 = intValue / (intValue2 + intValue);
      v38 = intValue2 / (intValue2 + intValue);
      v39 = [methodCountsCopy objectForKeyedSubscript:responseCopy];
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
      v41 = [v39 objectForKeyedSubscript:v40];
      LODWORD(v35) = [v41 intValue];

      v42 = [methodCountsCopy objectForKeyedSubscript:responseCopy];
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      v44 = [v42 objectForKeyedSubscript:v43];
      LODWORD(v34) = [v44 intValue];

      v45 = [methodCountsCopy objectForKeyedSubscript:responseCopy];
      v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
      v47 = [v45 objectForKeyedSubscript:v46];
      intValue3 = [v47 intValue];

      timeCopy = v60;
      v49 = v34 + v35 + intValue3;
      v50 = v35 / v49;
      v51 = v34 / v49;
      v52 = intValue3 / v49;
      v53 = [countsCopy objectForKeyedSubscript:responseCopy];
      hasSameRecipient = [v53 hasSameRecipient];

      methodCountsCopy = v62;
      v55 = [RKResponseFeatures alloc];
      v56 = hasSameRecipient;
      sourceCountsCopy = v61;
      v23 = [(RKResponseFeatures *)v55 initWithFeatures:responseCopy count:v58 numOfElapsedDays:v21 sourceAppCount:v56 sourceNotificationCount:v28 inputSourceCannedCount:v37 inputSourceScribbleCount:v38 inputSourceDictationCount:v50 responseLength:v51 sameRecipientCount:v52];
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (id)getRankedResponses:(id)responses forRecipientID:(id)d withLanguageID:(id)iD
{
  v134 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  dCopy = d;
  iDCopy = iD;
  v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:iDCopy];
  v106 = [v10 objectForKey:*MEMORY[0x277CBE6C8]];

  v103 = iDCopy;
  v11 = [(RKRankLearner *)self getDBManager:iDCopy];
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
  v104 = responsesCopy;
  v12 = [v11 fetchRankingInfoForCategory:responsesCopy];
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
        recipientId = [v17 recipientId];
        v19 = [recipientId isEqualToString:dCopy];

        timestamp = [v17 timestamp];
        response = [v17 response];
        v22 = [v13 objectForKeyedSubscript:response];

        v114 = timestamp;
        if (v22)
        {
          response2 = [v17 response];
          v24 = [v13 objectForKeyedSubscript:response2];
          v25 = [v24 count];

          v26 = timestamp;
          response3 = [v17 response];
          v28 = [v13 objectForKeyedSubscript:response3];
          timestamp2 = [v28 timestamp];
          v30 = [v26 compare:timestamp2];

          if (v30 == -1)
          {
            response4 = [v17 response];
            v32 = [v13 objectForKeyedSubscript:response4];
            timestamp3 = [v32 timestamp];

            v26 = timestamp3;
          }

          response5 = [v17 response];
          v35 = [v13 objectForKeyedSubscript:response5];
          [v35 setCount:(v25 + 1)];

          response6 = [v17 response];
          v37 = [v13 objectForKeyedSubscript:response6];
          [v37 setTimestamp:v26];

          response7 = [v17 response];
          response11 = [v13 objectForKeyedSubscript:response7];
          LODWORD(v35) = [response11 hasSameRecipient];
          response8 = [v17 response];
          v41 = [v13 objectForKeyedSubscript:response8];
          [v41 setHasSameRecipient:v19 | v35];

          v42 = v111;
          v14 = v117;
          v15 = 0x277CCA000;
        }

        else
        {
          v43 = [[RKResponseCountTimestampRecipient alloc] initWithCount:1 timestamp:timestamp hasSameRecipient:v19];
          response9 = [v17 response];
          [v13 setObject:v43 forKeyedSubscript:response9];

          v26 = objc_opt_new();
          v45 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
          [v26 setObject:v45 forKey:v46];

          v47 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
          [v26 setObject:v47 forKey:v48];

          response10 = [v17 response];
          v42 = v111;
          [v111 setObject:v26 forKeyedSubscript:response10];

          response7 = objc_opt_new();
          v50 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
          [response7 setObject:v50 forKey:v51];

          v52 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
          [response7 setObject:v52 forKey:v53];

          v54 = [MEMORY[0x277CCABB0] numberWithInt:0];
          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
          [response7 setObject:v54 forKey:v55];

          response11 = [v17 response];
          [v14 setObject:response7 forKeyedSubscript:response11];
        }

        response12 = [v17 response];
        v57 = [v42 objectForKeyedSubscript:response12];
        v58 = [*(v15 + 2992) numberWithUnsignedInteger:{objc_msgSend(v17, "source")}];
        v59 = [v57 objectForKeyedSubscript:v58];
        intValue = [v59 intValue];

        v61 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
        response13 = [v17 response];
        v63 = [v42 objectForKeyedSubscript:response13];
        v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "source")}];
        [v63 setObject:v61 forKeyedSubscript:v64];

        response14 = [v17 response];
        v66 = [v14 objectForKeyedSubscript:response14];
        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "inputMethod")}];
        v68 = [v66 objectForKeyedSubscript:v67];
        intValue2 = [v68 intValue];

        v70 = (intValue2 + 1);
        v15 = 0x277CCA000uLL;
        v71 = [MEMORY[0x277CCABB0] numberWithInt:v70];
        response15 = [v17 response];
        v73 = [v14 objectForKeyedSubscript:response15];
        v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "inputMethod")}];
        [v73 setObject:v71 forKeyedSubscript:v74];
      }

      v112 = [obj countByEnumeratingWithState:&v126 objects:v133 count:16];
    }

    while (v112);
  }

  date = [MEMORY[0x277CBEAA8] date];
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
        v82 = [(RKRankLearner *)self updateFeaturesForResponse:v81 selectCounts:v76 inputMethodCounts:v117 sourceCounts:v111 currentTime:date languageCode:v106];
        [v116 setObject:v82 forKeyedSubscript:v81];
      }

      v78 = [v76 countByEnumeratingWithState:&v122 objects:v132 count:16];
    }

    while (v78);
  }

  v109 = date;

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
        response16 = [v89 response];
        v91 = [v116 objectForKeyedSubscript:response16];

        if (v91)
        {
          response17 = [v89 response];
          v93 = [v76 objectForKeyedSubscript:response17];
          v94 = [v93 count];

          v95 = v94 < 2;
          v85 = v117;
          if (!v95)
          {
            response18 = [v89 response];
            v97 = [v115 containsObject:response18];

            if ((v97 & 1) == 0)
            {
              response19 = [v89 response];
              [v115 addObject:response19];

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

- (id)rankResponses:(id)responses
{
  v46 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  v4 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = responsesCopy;
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
        response = [v10 response];
        responseLength = [v10 responseLength];
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

        v32 = [[RKRankedResponse alloc] initWithResponse:response inputMethod:v31 score:1.0 / sqrt(responseLength) + (v25 + v14 + v16 * 0.5 + v18 * 0.5 + v20 * 0.2 + v22 * 0.4 + v24 * 0.4) * v40];
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

- (void)flushRankingData:(id)data
{
  v3 = [(RKRankLearner *)self getDBManager:data];
  [v3 flushRankingData];
}

@end