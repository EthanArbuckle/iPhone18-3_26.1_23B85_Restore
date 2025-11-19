@interface VMAWDReporter
+ (id)sharedInstance;
- (VMAWDReporter)init;
- (id)prepareConfidenceValue:(id)a3;
- (void)powerlog:(id)a3 eventData:(id)a4;
- (void)reportCustomGreetingFailedWithReason:(unint64_t)a3;
- (void)reportCustomGreetingSaved;
- (void)reportServiceAccountStateChanged:(int)a3;
- (void)reportServiceBeaconMaxedOut:(unsigned int)a3 mcc:(id)a4 mnc:(id)a5;
- (void)reportVoicemailProcessed:(id)a3 transcriptionSuccess:(BOOL)a4 transcriptionFailureReason:(id)a5 assetLocale:(id)a6 transcriptionConfidence:(id)a7 lidSuccess:(BOOL)a8 lidFailureReason:(id)a9 isEnglish:(BOOL)a10 dominantLocale:(id)a11 dominantLocaleConfidence:(id)a12 altLocaleDict:(id)a13;
- (void)reportVoicemailTranscriptionAttempted;
- (void)reportVoicemailTranscriptionCompleted;
- (void)reportVoicemailTranscriptionFailedWithReason:(unint64_t)a3;
- (void)reportVoicemailTranscriptionProcessed:(id)a3 success:(BOOL)a4 reason:(id)a5 assetLocale:(id)a6 confidence:(id)a7;
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

- (void)powerlog:(id)a3 eventData:(id)a4
{
  v5 = a3;
  v6 = a4;
  PLLogRegisteredEvent();
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reporting powerlog event %@ with data %@", &v8, 0x16u);
  }
}

- (void)reportServiceAccountStateChanged:(int)a3
{
  if (!arc4random_uniform(0xAu))
  {
    v5 = objc_alloc_init(AWDVisualVoicemailServiceAccountStateUpdated);
    [(AWDVisualVoicemailServiceAccountStateUpdated *)v5 setServiceState:a3];
    v6 = vm_vmd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = a3;
      v11 = 2048;
      v12 = [(AWDVisualVoicemailServiceAccountStateUpdated *)v5 timestamp];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail service account state changed: %d timestamp: %llu", buf, 0x12u);
    }

    [(VMAWDReporter *)self _reportMetricWithID:4718594 metric:v5];
    v8 = v5;
    v7 = v5;
    AnalyticsSendEventLazy();
  }
}

- (void)reportServiceBeaconMaxedOut:(unsigned int)a3 mcc:(id)a4 mnc:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(AWDVisualVoicemailBeaconMaxedOut);
  v11 = vm_vmd_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v16 = a3;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2048;
    v22 = [(AWDVisualVoicemailBeaconMaxedOut *)v10 timestamp];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail beacon maxed out for slot: %u mcc: '%@' mnc: '%@' timestamp: %llu", buf, 0x26u);
  }

  [(VMAWDReporter *)self _reportMetricWithID:4718595 metric:v10];
  v14 = v8;
  v12 = v9;
  v13 = v8;
  AnalyticsSendEventLazy();
}

- (void)reportCustomGreetingSaved
{
  v3 = objc_alloc_init(AWDVisualVoicemailCustomGreetingUpdated);
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [(AWDVisualVoicemailCustomGreetingUpdated *)v3 timestamp];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail custom greeting saved timestamp: %llu", &v5, 0xCu);
  }

  [(VMAWDReporter *)self _reportMetricWithID:4718596 metric:v3];
}

- (void)reportCustomGreetingFailedWithReason:(unint64_t)a3
{
  v5 = objc_alloc_init(AWDVisualVoicemailCustomGreetingUpdated);
  [(AWDVisualVoicemailCustomGreetingUpdated *)v5 setFailureReason:a3];
  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = [(AWDVisualVoicemailCustomGreetingUpdated *)v5 failureReason];
    v9 = 2048;
    v10 = [(AWDVisualVoicemailCustomGreetingUpdated *)v5 timestamp];
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

- (void)reportVoicemailTranscriptionFailedWithReason:(unint64_t)a3
{
  v5 = objc_alloc_init(AWDVisualVoicemailTranscriptionStatusChanged);
  [(AWDVisualVoicemailTranscriptionStatusChanged *)v5 setStatus:3];
  [(AWDVisualVoicemailTranscriptionStatusChanged *)v5 setFailureReason:a3];
  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reporting metric for transcription failed with reason %lu", buf, 0xCu);
  }

  [(VMAWDReporter *)self _reportMetricWithID:4718597 metric:v5];
  v8 = v5;
  v7 = v5;
  AnalyticsSendEventLazy();
}

- (void)reportVoicemailTranscriptionProcessed:(id)a3 success:(BOOL)a4 reason:(id)a5 assetLocale:(id)a6 confidence:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = vm_vmd_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail transcription processed", buf, 2u);
  }

  v17 = v12;
  v22 = v17;
  LOBYTE(v26) = a4;
  v18 = v13;
  v23 = v18;
  v19 = v14;
  v24 = v19;
  v20 = v15;
  v25 = v20;
  AnalyticsSendEventLazy();
  if (v18 && !a4 && [v18 intValue] == 5)
  {
    v21 = +[VMABCReporter sharedInstance];
    [v21 reportIssueType:@"VoicemailTranscription" description:@"VMTranscriptionFailureReasonOther"];
  }
}

- (void)reportVoicemailProcessed:(id)a3 transcriptionSuccess:(BOOL)a4 transcriptionFailureReason:(id)a5 assetLocale:(id)a6 transcriptionConfidence:(id)a7 lidSuccess:(BOOL)a8 lidFailureReason:(id)a9 isEnglish:(BOOL)a10 dominantLocale:(id)a11 dominantLocaleConfidence:(id)a12 altLocaleDict:(id)a13
{
  v29 = a3;
  v28 = a5;
  v27 = a6;
  v17 = a7;
  v18 = a9;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = vm_vmd_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Reporting metric for voicemail processed", buf, 2u);
  }

  if (v21 && [v21 count] >= 4)
  {
    v23 = [v21 keysSortedByValueWithOptions:16 usingComparator:&stru_1000ED608];
    v37 = v29;
    v38 = v28;
    v39 = v27;
    v40 = v17;
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v44 = v21;
    v24 = v23;
    AnalyticsSendEventLazy();
  }

  else
  {
    v30 = v29;
    v31 = v28;
    v32 = v27;
    v33 = v17;
    v34 = v18;
    v35 = v19;
    v36 = v20;
    AnalyticsSendEventLazy();

    v24 = v30;
  }

  if (v18 && !a8)
  {
    if ([v18 intValue] == 5)
    {
      v25 = +[VMABCReporter sharedInstance];
      [v25 reportIssueType:@"VoicemailLanguageID" description:@"VMLanguageIDFailureReasonOther"];
    }

    if ([v18 intValue] == 1)
    {
      v26 = +[VMABCReporter sharedInstance];
      [v26 reportIssueType:@"VoicemailLanguageID" description:@"VMLanguageIDFailureReasonMissingModelAsset"];
    }
  }
}

- (id)prepareConfidenceValue:(id)a3
{
  if (a3)
  {
    [a3 floatValue];
    v5 = [NSNumber numberWithInt:(v4 * 1000000.0)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end