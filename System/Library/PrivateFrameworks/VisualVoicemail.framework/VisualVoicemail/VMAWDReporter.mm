@interface VMAWDReporter
+ (id)sharedInstance;
- (VMAWDReporter)init;
- (id)prepareConfidenceValue:(id)value;
- (void)powerlog:(id)powerlog eventData:(id)data;
- (void)reportCustomGreetingFailedWithReason:(unint64_t)reason;
- (void)reportCustomGreetingSaved;
- (void)reportServiceAccountStateChanged:(int)changed;
- (void)reportServiceBeaconMaxedOut:(unsigned int)out mcc:(id)mcc mnc:(id)mnc;
- (void)reportVoicemailProcessed:(id)processed transcriptionSuccess:(BOOL)success transcriptionFailureReason:(id)reason assetLocale:(id)locale transcriptionConfidence:(id)confidence lidSuccess:(BOOL)lidSuccess lidFailureReason:(id)failureReason isEnglish:(BOOL)self0 dominantLocale:(id)self1 dominantLocaleConfidence:(id)self2 altLocaleDict:(id)self3;
- (void)reportVoicemailTranscriptionAttempted;
- (void)reportVoicemailTranscriptionCompleted;
- (void)reportVoicemailTranscriptionFailedWithReason:(unint64_t)reason;
- (void)reportVoicemailTranscriptionProcessed:(id)processed success:(BOOL)success reason:(id)reason assetLocale:(id)locale confidence:(id)confidence;
@end

@implementation VMAWDReporter

+ (id)sharedInstance
{
  if (qword_10010D6D8 != -1)
  {
    sub_10009B3A0();
  }

  v3 = qword_10010D6D0;

  return v3;
}

- (VMAWDReporter)init
{
  v6.receiver = self;
  v6.super_class = VMAWDReporter;
  v2 = [(VMAWDReporter *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.visualvoicemail.vvm.awdreporter", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)powerlog:(id)powerlog eventData:(id)data
{
  powerlogCopy = powerlog;
  dataCopy = data;
  PLLogRegisteredEvent();
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = powerlogCopy;
    v10 = 2112;
    v11 = dataCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reporting powerlog event %@ with data %@", &v8, 0x16u);
  }
}

- (void)reportServiceAccountStateChanged:(int)changed
{
  if (!arc4random_uniform(0xAu))
  {
    v5 = objc_alloc_init(AWDVisualVoicemailServiceAccountStateUpdated);
    [(AWDVisualVoicemailServiceAccountStateUpdated *)v5 setServiceState:changed];
    v6 = vm_vmd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      changedCopy = changed;
      v11 = 2048;
      timestamp = [(AWDVisualVoicemailServiceAccountStateUpdated *)v5 timestamp];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail service account state changed: %d timestamp: %llu", buf, 0x12u);
    }

    [(VMAWDReporter *)self _reportMetricWithID:4718594 metric:v5];
    v8 = v5;
    v7 = v5;
    AnalyticsSendEventLazy();
  }
}

- (void)reportServiceBeaconMaxedOut:(unsigned int)out mcc:(id)mcc mnc:(id)mnc
{
  mccCopy = mcc;
  mncCopy = mnc;
  v10 = objc_alloc_init(AWDVisualVoicemailBeaconMaxedOut);
  v11 = vm_vmd_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    outCopy = out;
    v17 = 2112;
    v18 = mccCopy;
    v19 = 2112;
    v20 = mncCopy;
    v21 = 2048;
    timestamp = [(AWDVisualVoicemailBeaconMaxedOut *)v10 timestamp];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail beacon maxed out for slot: %u mcc: '%@' mnc: '%@' timestamp: %llu", buf, 0x26u);
  }

  [(VMAWDReporter *)self _reportMetricWithID:4718595 metric:v10];
  v14 = mccCopy;
  v12 = mncCopy;
  v13 = mccCopy;
  AnalyticsSendEventLazy();
}

- (void)reportCustomGreetingSaved
{
  v3 = objc_alloc_init(AWDVisualVoicemailCustomGreetingUpdated);
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    timestamp = [(AWDVisualVoicemailCustomGreetingUpdated *)v3 timestamp];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail custom greeting saved timestamp: %llu", &v5, 0xCu);
  }

  [(VMAWDReporter *)self _reportMetricWithID:4718596 metric:v3];
}

- (void)reportCustomGreetingFailedWithReason:(unint64_t)reason
{
  v5 = objc_alloc_init(AWDVisualVoicemailCustomGreetingUpdated);
  [(AWDVisualVoicemailCustomGreetingUpdated *)v5 setFailureReason:reason];
  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    failureReason = [(AWDVisualVoicemailCustomGreetingUpdated *)v5 failureReason];
    v9 = 2048;
    timestamp = [(AWDVisualVoicemailCustomGreetingUpdated *)v5 timestamp];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail custom greeting failed with reason: %llu timestamp: %llu", &v7, 0x16u);
  }

  [(VMAWDReporter *)self _reportMetricWithID:4718596 metric:v5];
}

- (void)reportVoicemailTranscriptionAttempted
{
  v3 = objc_alloc_init(AWDVisualVoicemailTranscriptionStatusChanged);
  [(AWDVisualVoicemailTranscriptionStatusChanged *)v3 setStatus:1];
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reporting metric for transcription attempted", buf, 2u);
  }

  [(VMAWDReporter *)self _reportMetricWithID:4718597 metric:v3];
  v6 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();
}

- (void)reportVoicemailTranscriptionCompleted
{
  v3 = objc_alloc_init(AWDVisualVoicemailTranscriptionStatusChanged);
  [(AWDVisualVoicemailTranscriptionStatusChanged *)v3 setStatus:2];
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reporting metric for transcription completed", buf, 2u);
  }

  [(VMAWDReporter *)self _reportMetricWithID:4718597 metric:v3];
  v6 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();
}

- (void)reportVoicemailTranscriptionFailedWithReason:(unint64_t)reason
{
  v5 = objc_alloc_init(AWDVisualVoicemailTranscriptionStatusChanged);
  [(AWDVisualVoicemailTranscriptionStatusChanged *)v5 setStatus:3];
  [(AWDVisualVoicemailTranscriptionStatusChanged *)v5 setFailureReason:reason];
  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reporting metric for transcription failed with reason %lu", buf, 0xCu);
  }

  [(VMAWDReporter *)self _reportMetricWithID:4718597 metric:v5];
  v8 = v5;
  v7 = v5;
  AnalyticsSendEventLazy();
}

- (void)reportVoicemailTranscriptionProcessed:(id)processed success:(BOOL)success reason:(id)reason assetLocale:(id)locale confidence:(id)confidence
{
  processedCopy = processed;
  reasonCopy = reason;
  localeCopy = locale;
  confidenceCopy = confidence;
  v16 = vm_vmd_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail transcription processed", buf, 2u);
  }

  v17 = processedCopy;
  v22 = v17;
  LOBYTE(v26) = success;
  v18 = reasonCopy;
  v23 = v18;
  v19 = localeCopy;
  v24 = v19;
  v20 = confidenceCopy;
  v25 = v20;
  AnalyticsSendEventLazy();
  if (v18 && !success && [v18 intValue] == 5)
  {
    v21 = +[VMABCReporter sharedInstance];
    [v21 reportIssueType:@"VoicemailTranscription" description:@"VMTranscriptionFailureReasonOther"];
  }
}

- (void)reportVoicemailProcessed:(id)processed transcriptionSuccess:(BOOL)success transcriptionFailureReason:(id)reason assetLocale:(id)locale transcriptionConfidence:(id)confidence lidSuccess:(BOOL)lidSuccess lidFailureReason:(id)failureReason isEnglish:(BOOL)self0 dominantLocale:(id)self1 dominantLocaleConfidence:(id)self2 altLocaleDict:(id)self3
{
  processedCopy = processed;
  reasonCopy = reason;
  localeCopy = locale;
  confidenceCopy = confidence;
  failureReasonCopy = failureReason;
  dominantLocaleCopy = dominantLocale;
  localeConfidenceCopy = localeConfidence;
  dictCopy = dict;
  v22 = vm_vmd_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail processed", buf, 2u);
  }

  if (dictCopy && [dictCopy count] >= 4)
  {
    v23 = [dictCopy keysSortedByValueWithOptions:16 usingComparator:&stru_1000ED608];
    v37 = processedCopy;
    v38 = reasonCopy;
    v39 = localeCopy;
    v40 = confidenceCopy;
    v41 = failureReasonCopy;
    v42 = dominantLocaleCopy;
    v43 = localeConfidenceCopy;
    v44 = dictCopy;
    v24 = v23;
    AnalyticsSendEventLazy();
  }

  else
  {
    v30 = processedCopy;
    v31 = reasonCopy;
    v32 = localeCopy;
    v33 = confidenceCopy;
    v34 = failureReasonCopy;
    v35 = dominantLocaleCopy;
    v36 = localeConfidenceCopy;
    AnalyticsSendEventLazy();

    v24 = v30;
  }

  if (failureReasonCopy && !lidSuccess)
  {
    if ([failureReasonCopy intValue] == 5)
    {
      v25 = +[VMABCReporter sharedInstance];
      [v25 reportIssueType:@"VoicemailLanguageID" description:@"VMLanguageIDFailureReasonOther"];
    }

    if ([failureReasonCopy intValue] == 1)
    {
      v26 = +[VMABCReporter sharedInstance];
      [v26 reportIssueType:@"VoicemailLanguageID" description:@"VMLanguageIDFailureReasonMissingModelAsset"];
    }
  }
}

- (id)prepareConfidenceValue:(id)value
{
  if (value)
  {
    [value floatValue];
    v5 = [NSNumber numberWithInt:(v4 * 1000000.0)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end