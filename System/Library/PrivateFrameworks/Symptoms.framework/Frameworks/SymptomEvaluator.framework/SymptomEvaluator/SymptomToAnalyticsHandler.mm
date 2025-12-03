@interface SymptomToAnalyticsHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (BOOL)noteSymptom:(id)symptom;
@end

@implementation SymptomToAnalyticsHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SymptomToAnalyticsHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_37 != -1)
  {
    dispatch_once(&sharedInstance_pred_37, block);
  }

  v2 = sharedInstance_sharedInstance_39;

  return v2;
}

void __43__SymptomToAnalyticsHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_39;
  sharedInstance_sharedInstance_39 = v1;

  v3 = sharedInstance_sharedInstance_39;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[SymptomToAnalyticsHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (BOOL)noteSymptom:(id)symptom
{
  v84 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  eventKey = [symptomCopy eventKey];
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    *buf = 138412546;
    v81 = eventKey;
    v82 = 2048;
    seqNo = [symptomCopy seqNo];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: receiving symptom with key: %@ [#%llu]", buf, 0x16u);
  }

  v8 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DNS_NO_REPLIES"];
  if ([(__CFString *)eventKey isEqualToString:v8])
  {

LABEL_6:
    v78 = eventKey;
    v79 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationDNSsymptoms";
    goto LABEL_7;
  }

  v9 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DNS_RESUMED_RESPONDING"];
  v10 = [(__CFString *)eventKey isEqualToString:v9];

  if (v10)
  {
    goto LABEL_6;
  }

  v17 = [SymptomStore keyFromSymptomName:@"SYMPTOM_ADDRESS_ACQUISITION_SUCCEEDED"];
  if ([(__CFString *)eventKey isEqualToString:v17])
  {

LABEL_12:
    v20 = [SymptomStore keyFromSymptomName:@"SYMPTOM_ADDRESS_ACQUISITION_FAILED"];
    v21 = [(__CFString *)eventKey isEqualToString:v20];

    [(SymptomToAnalyticsHandler *)self noteIPAddressAcquisitionFailed:v21 forEvent:symptomCopy];
    goto LABEL_8;
  }

  v18 = [SymptomStore keyFromSymptomName:@"SYMPTOM_ADDRESS_ACQUISITION_FAILED"];
  v19 = [(__CFString *)eventKey isEqualToString:v18];

  if (v19)
  {
    goto LABEL_12;
  }

  v22 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.establishstats"];
  if (([(__CFString *)eventKey isEqualToString:v22]& 1) != 0)
  {
    goto LABEL_16;
  }

  v23 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.sendstats"];
  if ([(__CFString *)eventKey isEqualToString:v23])
  {

LABEL_16:
LABEL_17:
    v76 = eventKey;
    v77 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationFlowStats";
    goto LABEL_7;
  }

  v24 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.disconnectstats"];
  v25 = [(__CFString *)eventKey isEqualToString:v24];

  if (v25)
  {
    goto LABEL_17;
  }

  v26 = [SymptomStore keyFromSymptomName:@"com.apple.wifimanager.link-quality"];
  v27 = [(__CFString *)eventKey isEqualToString:v26];

  if (v27)
  {
    v28 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      seqNo2 = [symptomCopy seqNo];
      creationTimeStamp = [symptomCopy creationTimeStamp];
      [creationTimeStamp timeIntervalSince1970];
      v33 = dateStringMillisecondsFromTimeInterval(v32);
      *buf = 134218242;
      v81 = seqNo2;
      v82 = 2112;
      seqNo = v33;
      _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEFAULT, "trigger-disconnect: com.apple.wifimanager.link-quality symptom [#%llu], received: %@", buf, 0x16u);
    }

    v34 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v35 = v34;
      v36 = qos_class_self();
      v37 = qos_string(v36);
      *buf = 136315138;
      v81 = v37;
      _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "trigger-disconnect: com.apple.wifimanager.link-quality symptom: QoS %s", buf, 0xCu);
    }

    v74 = eventKey;
    v75 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationTriggerDisconnectThreshold";
    goto LABEL_7;
  }

  v38 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_DATA_STALL"];
  if ([(__CFString *)eventKey isEqualToString:v38])
  {

LABEL_28:
    v72 = eventKey;
    v73 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationDataStall";
    goto LABEL_7;
  }

  v39 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_TLS_HANDSHAKE_TIMEOUT"];
  v40 = [(__CFString *)eventKey isEqualToString:v39];

  if (v40)
  {
    goto LABEL_28;
  }

  v41 = [SymptomStore keyFromSymptomName:@"SYMPTOM_LIBNETCORE_EXPECTED_TRANSFER"];
  v42 = [(__CFString *)eventKey isEqualToString:v41];

  if (v42)
  {
    v70 = eventKey;
    v71 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationExpectedTransfer";
  }

  else
  {
    v43 = [SymptomStore keyFromSymptomName:@"com.apple.coremedia.assetdownload.event"];
    if ([(__CFString *)eventKey isEqualToString:v43])
    {
    }

    else
    {
      v44 = [SymptomStore keyFromSymptomName:@"SYMPTOM_TRANSPORT_DISCONNECT"];
      v45 = [(__CFString *)eventKey isEqualToString:v44];

      if (!v45)
      {
        v47 = [SymptomStore keyFromSymptomName:@"com.apple.symptoms.captivity.url.redirects"];
        v48 = [(__CFString *)eventKey isEqualToString:v47];

        if (v48)
        {
          v66 = eventKey;
          v67 = symptomCopy;
          v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          v13 = defaultCenter;
          v14 = @"kNotificationCaptivityRedirects";
        }

        else
        {
          v49 = [SymptomStore keyFromSymptomName:@"SYMPTOM_CERT_ERROR"];
          v50 = [(__CFString *)eventKey isEqualToString:v49];

          if (v50)
          {
            v64 = eventKey;
            v65 = symptomCopy;
            v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            v13 = defaultCenter;
            v14 = @"kNotificationCertError";
          }

          else
          {
            v51 = [SymptomStore keyFromSymptomName:@"SYMPTOM_CAPTIVTY_INDETERMINATE"];
            v52 = [(__CFString *)eventKey isEqualToString:v51];

            if (v52)
            {
              v62 = eventKey;
              v63 = symptomCopy;
              v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
              defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
              v13 = defaultCenter;
              v14 = @"kNotificationCaptivityIndeterminate";
            }

            else
            {
              v53 = [SymptomStore keyFromSymptomName:@"SYMPTOM_BARCODE_ACTIVATION"];
              v54 = [(__CFString *)eventKey isEqualToString:v53];

              if (v54)
              {
                v60 = eventKey;
                v61 = symptomCopy;
                v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                v13 = defaultCenter;
                v14 = @"kNotificationBarcodeActivation";
              }

              else
              {
                v55 = [SymptomStore keyFromSymptomName:@"com.apple.das.oversize.load"];
                v56 = [(__CFString *)eventKey isEqualToString:v55];

                if (!v56)
                {
                  goto LABEL_8;
                }

                v58 = eventKey;
                v59 = symptomCopy;
                v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
                v57 = analyticsLogHandle;
                if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v81 = @"kNotificationDASOversizeLoad";
                  v82 = 2112;
                  seqNo = v11;
                  _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: posting event %@ with info %@", buf, 0x16u);
                }

                defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                v13 = defaultCenter;
                v14 = @"kNotificationDASOversizeLoad";
              }
            }
          }
        }

        goto LABEL_7;
      }
    }

    v68 = eventKey;
    v69 = symptomCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v46 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v81 = @"kNotificationCoreMediaAssetDownload";
      v82 = 2112;
      seqNo = v11;
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: posting event %@ with info %@", buf, 0x16u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = defaultCenter;
    v14 = @"kNotificationCoreMediaAssetDownload";
  }

LABEL_7:
  [defaultCenter postNotificationName:v14 object:self userInfo:v11];

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

@end