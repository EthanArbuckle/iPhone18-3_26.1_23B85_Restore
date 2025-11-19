@interface APOdmlAnalyticsFeatureCalculation
+ (id)_versionAndIdentifiersForNamespace:(id)a3;
+ (void)sendEvent:(id)a3 additionalDetails:(id)a4 isCounterfactual:(BOOL)a5;
@end

@implementation APOdmlAnalyticsFeatureCalculation

+ (void)sendEvent:(id)a3 additionalDetails:(id)a4 isCounterfactual:(BOOL)a5
{
  v5 = a5;
  v32 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v12 = objc_msgSend_eventName(a1, v10, v11);
  v14 = objc_msgSend_stringWithFormat_(v9, v13, @"%@.%@", @"com.apple.ap.SearchAdsODML", v12);

  v18 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16);
  v19 = kAPOdmlSearchResultsCounterfactualNamespace;
  if (!v5)
  {
    v19 = kAPOdmlSearchResultsRuntimeNamespace;
  }

  v20 = objc_msgSend__versionAndIdentifiersForNamespace_(a1, v17, *v19);

  if (v32)
  {
    objc_msgSend_setValue_forKey_(v20, v21, @"2", @"statusCode");
    v22 = MEMORY[0x277CCACA8];
    v25 = objc_msgSend_code(v32, v23, v24);
    v27 = objc_msgSend_stringWithFormat_(v22, v26, @"%ld", v25);
    objc_msgSend_setValue_forKey_(v20, v28, v27, @"statusDetails");

    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  objc_msgSend_setValue_forKey_(v20, v21, @"1", @"statusCode");
  if (v8)
  {
LABEL_5:
    objc_msgSend_addEntriesFromDictionary_(v20, v29, v8);
  }

LABEL_6:
  v30 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v29, v20);
  objc_msgSend__analyticsSendEvent_eventPayload_(a1, v31, v14, v30);
}

+ (id)_versionAndIdentifiersForNamespace:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v7 = objc_msgSend_dictionary(v3, v5, v6);
  v9 = objc_msgSend_clientWithIdentifier_(MEMORY[0x277D73660], v8, 238);
  v11 = objc_msgSend_experimentIdentifiersWithNamespaceName_(v9, v10, v4);

  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%d", 4);
  objc_msgSend_setValue_forKey_(v7, v14, v13, @"ODMLVersion");

  v17 = objc_msgSend_treatmentId(v11, v15, v16);
  objc_msgSend_setValue_forKey_(v7, v18, v17, @"trialTreatmentID");

  v21 = objc_msgSend_experimentId(v11, v19, v20);
  objc_msgSend_setValue_forKey_(v7, v22, v21, @"trialExperimentID");

  v23 = MEMORY[0x277CCACA8];
  v26 = objc_msgSend_deploymentId(v11, v24, v25);
  v28 = objc_msgSend_stringWithFormat_(v23, v27, @"%d", v26);
  objc_msgSend_setValue_forKey_(v7, v29, v28, @"trialDeploymentID");

  return v7;
}

@end