@interface NFExceptionsCALogger
+ (void)postAnalyticsCRSAuthECommerceWithParameters:(id)parameters;
+ (void)postAnalyticsHciTransactionException:(id)exception eventType:(id)type commandResult:(id)result status:(id)status;
+ (void)postAnalyticsSERestrictedModeEntered:(id)entered;
@end

@implementation NFExceptionsCALogger

+ (void)postAnalyticsCRSAuthECommerceWithParameters:(id)parameters
{
  v29[2] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v4 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_objectForKey_(parametersCopy, v5, @"status");
  v9 = objc_msgSend_unsignedIntValue(v6, v7, v8);

  if (v9 != 36864)
  {
    v12 = objc_msgSend_objectForKey_(parametersCopy, v10, @"method");
    if (v12)
    {
      v13 = objc_msgSend_objectForKey_(parametersCopy, v11, @"method");
      v16 = objc_msgSend_unsignedIntValue(v13, v14, v15);
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

    v28[0] = @"statusCode";
    v18 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v17, v9);
    v28[1] = @"type";
    v29[0] = v18;
    v20 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, v16);
    v29[1] = v20;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v29, v28, 2);

    v25 = objc_msgSend_sharedCALogger(NFCALogger, v23, v24);
    objc_msgSend_postCAEventFor_eventInput_(v25, v26, @"com.apple.nfcd.exceptions.crsAuthExceptionEvent", v22);
  }

  objc_autoreleasePoolPop(v4);

  v27 = *MEMORY[0x277D85DE8];
}

+ (void)postAnalyticsSERestrictedModeEntered:(id)entered
{
  v44[3] = *MEMORY[0x277D85DE8];
  enteredCopy = entered;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_sharedCALogger(NFCALogger, v6, v7);
  if ((objc_msgSend_restrictedMode(v8, v9, v10) & 1) == 0)
  {
    objc_msgSend_setRestrictedMode_(v8, v11, 1);
    v43[0] = @"contactless";
    v14 = objc_msgSend_objectForKeyedSubscript_(enteredCopy, v12, @"contactless");
    if (v14)
    {
      v15 = MEMORY[0x277CCABB0];
      v3 = objc_msgSend_objectForKeyedSubscript_(enteredCopy, v13, @"contactless");
      v18 = objc_msgSend_BOOLValue(v3, v16, v17);
      v20 = objc_msgSend_numberWithBool_(v15, v19, v18);
    }

    else
    {
      v20 = &unk_2843B4BD8;
    }

    v44[0] = v20;
    v43[1] = @"platformIdentifier";
    v21 = objc_msgSend_objectForKeyedSubscript_(enteredCopy, v13, @"platformIdentifier");
    v23 = v21;
    v24 = &stru_2843AE380;
    if (v21)
    {
      v24 = v21;
    }

    v44[1] = v24;
    v43[2] = @"hardwareType";
    v25 = objc_msgSend_objectForKeyedSubscript_(enteredCopy, v22, @"hardwareType");
    v27 = v25;
    if (v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = &unk_2843B4BD8;
    }

    v44[2] = v28;
    v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v44, v43, 3);

    if (v14)
    {
    }

    objc_msgSend_postCAEventFor_eventInput_(v8, v30, @"com.apple.nfcd.exceptions.seRestrictedModeEnteredEvent", v29);
    objc_msgSend_updateAnalyticsGeneralTransactionStatistics_(NFGeneralStatisticsCALogger, v31, &unk_2843B4CB0);
    v34 = objc_msgSend_generateDailyUUIDForCA(v8, v32, v33);
    v36 = v34;
    v41[0] = @"restrictedModeCount";
    v41[1] = @"dailyDeviceUUID";
    if (v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = @"noUUID";
    }

    v42[0] = &unk_2843B4BF0;
    v42[1] = v37;
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v42, v41, 2);
    objc_msgSend_postCAEventFor_eventInput_(v8, v39, @"com.apple.nfcd.deviceExceptionStatistic", v38);
  }

  objc_autoreleasePoolPop(v5);
  v40 = *MEMORY[0x277D85DE8];
}

+ (void)postAnalyticsHciTransactionException:(id)exception eventType:(id)type commandResult:(id)result status:(id)status
{
  v22[4] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  typeCopy = type;
  resultCopy = result;
  statusCopy = status;
  v13 = objc_autoreleasePoolPush();
  v21[0] = @"transactionUUID";
  v21[1] = @"eventType";
  v22[0] = exceptionCopy;
  v22[1] = typeCopy;
  v21[2] = @"commandResult";
  v21[3] = @"status";
  v22[2] = resultCopy;
  v22[3] = statusCopy;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v22, v21, 4);
  v18 = objc_msgSend_sharedCALogger(NFCALogger, v16, v17);
  objc_msgSend_postCAEventFor_eventInput_(v18, v19, @"com.apple.nfcd.exceptions.hciTransactionExceptionEvent", v15);

  objc_autoreleasePoolPop(v13);
  v20 = *MEMORY[0x277D85DE8];
}

@end