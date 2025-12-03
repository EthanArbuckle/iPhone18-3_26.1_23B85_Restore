@interface ASDTFFeedbackSubmissionService
- (BOOL)_verifyDataSourceIsReadyForSubmission:(id)submission error:(id *)error;
- (BOOL)_verifyEmailIsValid:(id)valid;
- (id)_serializeFeedbackForBundleId:(id)id withContentsOfDataSource:(id)source error:(id *)error;
- (void)submitFeedbackForBundleId:(id)id withContentsOfDataSource:(id)source completionHandler:(id)handler;
@end

@implementation ASDTFFeedbackSubmissionService

- (void)submitFeedbackForBundleId:(id)id withContentsOfDataSource:(id)source completionHandler:(id)handler
{
  v56 = *MEMORY[0x277D85DE8];
  idCopy = id;
  handlerCopy = handler;
  v10 = [source copy];
  v11 = AMSGenerateLogCorrelationKey();
  v12 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v12 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = [v10 debugDescription];
    *buf = 138544130;
    v49 = v14;
    v50 = 2112;
    v51 = v11;
    v52 = 2112;
    v53 = idCopy;
    v54 = 2112;
    v55 = v16;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] submitFeedbackForBundleId bundleId=%@ dataSource=%@", buf, 0x2Au);
  }

  v43 = 0;
  v17 = [(ASDTFFeedbackSubmissionService *)self _verifyDataSourceIsReadyForSubmission:v10 error:&v43];
  v18 = v43;
  v19 = v18;
  if (v17)
  {
    v42 = 0;
    v20 = [(ASDTFFeedbackSubmissionService *)self _serializeFeedbackForBundleId:idCopy withContentsOfDataSource:v10 error:&v42];
    v21 = v42;
    v22 = v21;
    if (v20)
    {
      mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
      [mEMORY[0x277CEC4C0] submitFeedback:v20 withCompletionHandler:handlerCopy];
    }

    else
    {
      if (!v21)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Data serialization failed without generating error.", objc_opt_class()];
        v39 = MEMORY[0x277CCA9B8];
        v40 = v32;
        v44 = *MEMORY[0x277CCA068];
        v45 = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v22 = [v39 errorWithDomain:@"TFErrorDomain" code:201 userInfo:v33];
      }

      v34 = +[TFLogConfiguration defaultConfiguration];
      generatedLogger2 = [v34 generatedLogger];
      if (os_log_type_enabled(generatedLogger2, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v41 = v36;
        localizedDescription = [v22 localizedDescription];
        *buf = 138543874;
        v49 = v36;
        v50 = 2112;
        v51 = v11;
        v52 = 2112;
        v53 = localizedDescription;
        v38 = localizedDescription;
        _os_log_impl(&dword_26D2C7000, generatedLogger2, OS_LOG_TYPE_ERROR, "%{public}@: [%@] _serializeDataSource failed error=%@", buf, 0x20u);
      }

      handlerCopy[2](handlerCopy, v22);
    }
  }

  else
  {
    if (!v18)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Data verification failed without generating error.", objc_opt_class()];
      v25 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA068];
      v47 = v24;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v19 = [v25 errorWithDomain:@"TFErrorDomain" code:201 userInfo:v26];
    }

    v27 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger3 = [v27 generatedLogger];
    if (os_log_type_enabled(generatedLogger3, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = v29;
      localizedDescription2 = [v19 localizedDescription];
      *buf = 138543874;
      v49 = v29;
      v50 = 2112;
      v51 = v11;
      v52 = 2112;
      v53 = localizedDescription2;
      _os_log_impl(&dword_26D2C7000, generatedLogger3, OS_LOG_TYPE_ERROR, "%{public}@: [%@] _verifyDataSourceIsReadyForSubmission failed error=%@", buf, 0x20u);
    }

    handlerCopy[2](handlerCopy, v19);
  }
}

- (BOOL)_verifyDataSourceIsReadyForSubmission:(id)submission error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  submissionCopy = submission;
  v7 = [submissionCopy stringForIdentifier:@"a"];
  v8 = [(ASDTFFeedbackSubmissionService *)self _verifyEmailIsValid:v7];
  if (v7 && !v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Data validation failed - Provided email is malformed.", objc_opt_class()];
    v10 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA068];
    v29[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v12 = v10;
    v13 = 302;
LABEL_6:
    [v12 errorWithDomain:@"TFErrorDomain" code:v13 userInfo:v11];
    *error = v15 = 0;
    goto LABEL_17;
  }

  if ([submissionCopy isLoading])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Data validation failed - Submitting data source that is still loading.", objc_opt_class()];
    v14 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA068];
    v27 = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v12 = v14;
    v13 = 301;
    goto LABEL_6;
  }

  v9 = [submissionCopy imageCollectionForIdentifer:@"c"];
  v11 = [submissionCopy stringForIdentifier:@"b"];
  v16 = [submissionCopy stringForIdentifier:@"d"];
  if (v9)
  {
    v17 = [v9 count] != 0;
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_12:
    v18 = 0;
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v17 = 0;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_9:
  v18 = [v11 length] != 0;
  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = [v16 length] != 0;
LABEL_14:
  v15 = v17 || v18 || v19;
  if (!v15)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Data validation failed - Submitting data source without comments or screenshots.", objc_opt_class()];
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA068];
    v25 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    *error = [v23 errorWithDomain:@"TFErrorDomain" code:303 userInfo:v21];
  }

LABEL_17:
  return v15;
}

- (BOOL)_verifyEmailIsValid:(id)valid
{
  if (!valid)
  {
    return 1;
  }

  v3 = MEMORY[0x277CCA900];
  validCopy = valid;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [validCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v6 length])
  {
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @".+@.+"];
    v8 = [v7 evaluateWithObject:v6];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_serializeFeedbackForBundleId:(id)id withContentsOfDataSource:(id)source error:(id *)error
{
  v59[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  sourceCopy = source;
  v10 = objc_alloc_init(MEMORY[0x277CEC358]);
  v42 = idCopy;
  [v10 setBundleID:idCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [v10 setTimestamp:{objc_msgSend(date, "tf_posixTimestampInMilliseconds")}];
  v45 = [sourceCopy stringForIdentifier:@"a"];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v12 = [v45 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  [v10 setEmail:v12];

  v13 = [sourceCopy imageCollectionForIdentifer:@"c"];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_9;
  }

  v15 = [v13 count];
  if (v15 <= [(ASDTFFeedbackSubmissionService *)self maxNumberOfScreenshotsAllowed])
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__0;
    v54 = __Block_byref_object_dispose__0;
    v55 = 0;
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count")}];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __95__ASDTFFeedbackSubmissionService__serializeFeedbackForBundleId_withContentsOfDataSource_error___block_invoke;
    v47[3] = &unk_279D982E0;
    v47[4] = self;
    v49 = &v50;
    v19 = v18;
    v48 = v19;
    [v14 enumerateObjectsUsingBlock:v47];
    v20 = v51[5];
    if (v20)
    {
      v21 = v20;
      *error = v20;
    }

    else
    {
      [v10 setImagesData:v19];
    }

    _Block_object_dispose(&v50, 8);
    if (v20)
    {
      v17 = 0;
      goto LABEL_18;
    }

LABEL_9:
    v44 = [sourceCopy stringForIdentifier:@"b"];
    if (v44)
    {
      v22 = [v44 length];
      if (v22 > [(ASDTFFeedbackSubmissionService *)self maxNumberOfCommentSymbolsAllowed])
      {
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Data serialization failed for too many comment symbols.", objc_opt_class()];
        v23 = MEMORY[0x277CCA9B8];
        v56 = *MEMORY[0x277CCA068];
        v57 = v43;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        [v23 errorWithDomain:@"TFErrorDomain" code:402 userInfo:v40];
        *error = v17 = 0;

        goto LABEL_17;
      }

      [v10 setComments:v44];
    }

    v24 = [sourceCopy stringForIdentifier:@"d"];
    [v10 setIncidentID:v24];

    v43 = [sourceCopy numberForIdentifier:@"i"];
    if (v43)
    {
      [v10 setAppUptime:{1000 * objc_msgSend(v43, "unsignedLongLongValue")}];
    }

    v41 = [sourceCopy stringForIdentifier:@"m"];
    v39 = [sourceCopy stringForIdentifier:@"n"];
    v38 = [sourceCopy stringForIdentifier:@"l"];
    [v10 setDeviceType:v41];
    [v10 setOsVersion:v39];
    [v10 setArchitecture:v38];
    v37 = [sourceCopy numberForIdentifier:@"o"];
    v36 = [sourceCopy numberForIdentifier:@"p"];
    [v10 setScreenWidth:{objc_msgSend(v37, "unsignedIntValue")}];
    [v10 setScreenHeight:{objc_msgSend(v36, "unsignedIntValue")}];
    v35 = [sourceCopy stringForIdentifier:@"w"];
    v34 = [sourceCopy stringForIdentifier:@"x"];
    [v10 setLocale:v35];
    [v10 setTimeZone:v34];
    v33 = [sourceCopy stringForIdentifier:@"t"];
    v32 = [sourceCopy stringForIdentifier:@"u"];
    v25 = [sourceCopy stringForIdentifier:@"v"];
    [v10 setCarrier:v33];
    [v10 setCellularNetworkType:v32];
    [v10 setNetworkConnectionType:v25];
    v26 = [sourceCopy numberForIdentifier:@"r"];
    v27 = [sourceCopy numberForIdentifier:@"s"];
    [v10 setDiskTotal:{objc_msgSend(v26, "unsignedLongLongValue")}];
    [v10 setDiskAvailable:{objc_msgSend(v27, "unsignedLongLongValue")}];
    v28 = [sourceCopy numberForIdentifier:@"q"];
    [v10 setBatteryPercentage:{objc_msgSend(v28, "unsignedIntValue")}];
    v29 = [sourceCopy stringForIdentifier:@"j"];
    v30 = [sourceCopy stringForIdentifier:@"k"];
    [v10 setPairedWatchModel:v29];
    [v10 setPairedWatchOSVersion:v30];
    v17 = v10;

    goto LABEL_17;
  }

  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Data serialization failed for too many screenshot images.", objc_opt_class()];
  v16 = MEMORY[0x277CCA9B8];
  v58 = *MEMORY[0x277CCA068];
  v59[0] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
  [v16 errorWithDomain:@"TFErrorDomain" code:401 userInfo:v43];
  *error = v17 = 0;
LABEL_17:

LABEL_18:

  return v17;
}

void __95__ASDTFFeedbackSubmissionService__serializeFeedbackForBundleId_withContentsOfDataSource_error___block_invoke(uint64_t a1, UIImage *a2, uint64_t a3, _BYTE *a4)
{
  v11 = TFImageJPEGRepresentation(a2);
  if ([v11 length] <= 0xA00000)
  {
    [*(a1 + 40) addObject:v11];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Image %@ too large", objc_opt_class(), @"(no name provided)"];
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA068]];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TFErrorDomain" code:404 userInfo:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

@end