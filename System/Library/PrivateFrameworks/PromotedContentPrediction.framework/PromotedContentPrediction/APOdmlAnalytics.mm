@interface APOdmlAnalytics
+ (id)_versionAndIdentifiers;
+ (void)sendEvent:(id)event additionalDetails:(id)details;
+ (void)sendTimedEvent:(id)event statusSuccess:(BOOL)success additionalDetails:(id)details startDate:(id)date endDate:(id)endDate;
@end

@implementation APOdmlAnalytics

+ (void)sendEvent:(id)event additionalDetails:(id)details
{
  eventCopy = event;
  detailsCopy = details;
  v7 = MEMORY[0x277CCACA8];
  v10 = objc_msgSend_eventName(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v7, v11, @"%@.%@", @"com.apple.ap.SearchAdsODML", v10);

  v16 = objc_msgSend__versionAndIdentifiers(self, v13, v14);
  if (eventCopy)
  {
    objc_msgSend_setValue_forKey_(v16, v15, @"2", @"statusCode");
    v17 = MEMORY[0x277CCACA8];
    v20 = objc_msgSend_code(eventCopy, v18, v19);
    v22 = objc_msgSend_stringWithFormat_(v17, v21, @"%ld", v20);
    objc_msgSend_setValue_forKey_(v16, v23, v22, @"statusDetails");

    if (!detailsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  objc_msgSend_setValue_forKey_(v16, v15, @"1", @"statusCode");
  if (detailsCopy)
  {
LABEL_3:
    objc_msgSend_addEntriesFromDictionary_(v16, v24, detailsCopy);
  }

LABEL_4:
  v25 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v24, v16);
  objc_msgSend__analyticsSendEvent_eventPayload_(self, v26, v12, v25);
}

+ (void)sendTimedEvent:(id)event statusSuccess:(BOOL)success additionalDetails:(id)details startDate:(id)date endDate:(id)endDate
{
  v45 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  detailsCopy = details;
  dateCopy = date;
  endDateCopy = endDate;
  v16 = MEMORY[0x277CCACA8];
  v19 = objc_msgSend_eventName(self, v17, v18);
  v21 = objc_msgSend_stringWithFormat_(v16, v20, @"%@.%@", @"com.apple.ap.SearchAdsODML", v19);

  v24 = 0.0;
  if (dateCopy)
  {
    if (endDateCopy)
    {
      objc_msgSend_timeIntervalSinceDate_(endDateCopy, v22, dateCopy);
      v24 = v25;
      if (v25 < 0.0)
      {
        v26 = OdmlLogForCategory(8uLL);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v44 = "+[APOdmlAnalytics sendTimedEvent:statusSuccess:additionalDetails:startDate:endDate:]";
          _os_log_impl(&dword_260ECB000, v26, OS_LOG_TYPE_ERROR, "%s Start date is prior to end date", buf, 0xCu);
        }
      }
    }
  }

  v27 = objc_msgSend__versionAndIdentifiers(self, v22, v23);
  objc_msgSend_setValue_forKey_(v27, v28, @"1", @"statusCode");
  v31 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v29, v30, v24);
  objc_msgSend_setValue_forKey_(v27, v32, v31, @"processingTime");

  if (eventCopy)
  {
    if (!success)
    {
      objc_msgSend_setValue_forKey_(v27, v33, @"2", @"statusCode");
    }

    v35 = MEMORY[0x277CCACA8];
    v36 = objc_msgSend_code(eventCopy, v33, v34);
    v38 = objc_msgSend_stringWithFormat_(v35, v37, @"%ld", v36);
    objc_msgSend_setValue_forKey_(v27, v39, v38, @"statusDetails");
  }

  if (detailsCopy)
  {
    objc_msgSend_addEntriesFromDictionary_(v27, v33, detailsCopy);
  }

  v40 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v33, v27);
  objc_msgSend__analyticsSendEvent_eventPayload_(self, v41, v21, v40);

  v42 = *MEMORY[0x277D85DE8];
}

+ (id)_versionAndIdentifiers
{
  v3 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v5 = objc_msgSend_clientWithIdentifier_(MEMORY[0x277D73660], v4, 238);
  v7 = objc_msgSend_experimentIdentifiersWithNamespaceName_(v5, v6, @"AD_PLATFORMS_ODML");
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%d", 4);
  objc_msgSend_setValue_forKey_(v3, v10, v9, @"ODMLVersion");

  v13 = objc_msgSend_treatmentId(v7, v11, v12);
  objc_msgSend_setValue_forKey_(v3, v14, v13, @"trialTreatmentID");

  v17 = objc_msgSend_experimentId(v7, v15, v16);
  objc_msgSend_setValue_forKey_(v3, v18, v17, @"trialExperimentID");

  v19 = MEMORY[0x277CCACA8];
  v22 = objc_msgSend_deploymentId(v7, v20, v21);
  v24 = objc_msgSend_stringWithFormat_(v19, v23, @"%d", v22);
  objc_msgSend_setValue_forKey_(v3, v25, v24, @"trialDeploymentID");

  return v3;
}

@end