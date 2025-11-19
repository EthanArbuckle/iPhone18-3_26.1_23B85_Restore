@interface _LTDSELFLoggingProduction
+ (void)_sendEventWithContext:(id)a3 mtId:(id)a4 sessionId:(id)a5;
+ (void)appBackgroundedWithPayload:(id)a3 localePair:(id)a4 mtId:(id)a5 sessionId:(id)a6;
+ (void)endWithError:(id)a3 localePair:(id)a4 qssSessionId:(id)a5 mtId:(id)a6 sessionId:(id)a7;
+ (void)frameworkRequestResponseReceivedWithFrameworkRequestId:(id)a3 requestRoute:(int64_t)a4 mtId:(id)a5 sessionId:(id)a6 numberOfSentences:(unint64_t)a7;
+ (void)frameworkRequestSentWithFrameworkRequestId:(id)a3 qssSessionId:(id)a4 requestType:(int64_t)a5 requestRoute:(int64_t)a6 requestSize:(unint64_t)a7 mtId:(id)a8 sessionId:(id)a9;
+ (void)languageIdentificationCompletedWithInputSource:(int64_t)a3 topLocale:(id)a4 lowConfidenceLocales:(id)a5 mtId:(id)a6 sessionId:(id)a7;
+ (void)startTier1WithLinkId:(id)a3 appBundleId:(id)a4 mtId:(id)a5 sessionId:(id)a6;
+ (void)userDismissedTextBoxWithPayload:(id)a3 localePair:(id)a4 mtId:(id)a5 sessionId:(id)a6;
+ (void)userPressedNextButtonWithPayload:(id)a3 localePair:(id)a4 mtId:(id)a5 sessionId:(id)a6;
+ (void)userTimeoutWithPayload:(id)a3 localePair:(id)a4 mtId:(id)a5 sessionId:(id)a6;
@end

@implementation _LTDSELFLoggingProduction

+ (void)_sendEventWithContext:(id)a3 mtId:(id)a4 sessionId:(id)a5
{
  v7 = MEMORY[0x277D58AC0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  v12 = [MEMORY[0x277D58AB8] lt_initWithMtId:v9 sessionId:v8];

  [v11 setEventMetadata:v12];
  [v11 setInvocationContext:v10];

  v13 = [MEMORY[0x277D552C0] sharedAnalytics];
  v14 = [v13 defaultMessageStream];
  v15 = [v9 ltd_safeUUID];

  [v14 emitMessage:v11 isolatedStreamUUID:v15];
  v16 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction _sendEventWithContext:v16 mtId:? sessionId:?];
  }
}

+ (void)startTier1WithLinkId:(id)a3 appBundleId:(id)a4 mtId:(id)a5 sessionId:(id)a6
{
  v9 = MEMORY[0x277D58AC0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x277D58AB8] lt_initWithMtId:v11 sessionId:v10];

  [v14 setEventMetadata:v15];
  v16 = [MEMORY[0x277D58B08] lt_initWithLinkId:v13 appBundleId:v12];

  [v14 setInvocationStartedTier1:v16];
  v17 = [MEMORY[0x277D552C0] sharedAnalytics];
  v18 = [v17 defaultMessageStream];
  v19 = [v11 ltd_safeUUID];

  [v18 emitMessage:v14 isolatedStreamUUID:v19];
  v20 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction startTier1WithLinkId:v20 appBundleId:? mtId:? sessionId:?];
  }
}

+ (void)endWithError:(id)a3 localePair:(id)a4 qssSessionId:(id)a5 mtId:(id)a6 sessionId:(id)a7
{
  v12 = MEMORY[0x277D58AE8];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v19 = objc_alloc_init(v12);
  v18 = [MEMORY[0x277D58AF8] lt_initWithWithError:v17 localePair:v16 qssSessionId:v15];

  [v19 setFailed:v18];
  [a1 _sendEventWithContext:v19 mtId:v14 sessionId:v13];
}

+ (void)userDismissedTextBoxWithPayload:(id)a3 localePair:(id)a4 mtId:(id)a5 sessionId:(id)a6
{
  v9 = MEMORY[0x277D58AC0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x277D58AB8] lt_initWithMtId:v11 sessionId:v10];

  [v14 setEventMetadata:v15];
  v16 = [MEMORY[0x277D58A80] lt_initWithPayload:v13 localePair:v12];

  [v14 setAppTextBoxDismissed:v16];
  v17 = [MEMORY[0x277D552C0] sharedAnalytics];
  v18 = [v17 defaultMessageStream];
  v19 = [v11 ltd_safeUUID];

  [v18 emitMessage:v14 isolatedStreamUUID:v19];
  v20 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction userDismissedTextBoxWithPayload:v20 localePair:? mtId:? sessionId:?];
  }
}

+ (void)userPressedNextButtonWithPayload:(id)a3 localePair:(id)a4 mtId:(id)a5 sessionId:(id)a6
{
  v9 = MEMORY[0x277D58AC0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x277D58AB8] lt_initWithMtId:v11 sessionId:v10];

  [v14 setEventMetadata:v15];
  v16 = [MEMORY[0x277D58A78] lt_initWithPayload:v13 localePair:v12];

  [v14 setAppNextButtonTapped:v16];
  v17 = [MEMORY[0x277D552C0] sharedAnalytics];
  v18 = [v17 defaultMessageStream];
  v19 = [v11 ltd_safeUUID];

  [v18 emitMessage:v14 isolatedStreamUUID:v19];
  v20 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction userPressedNextButtonWithPayload:v20 localePair:? mtId:? sessionId:?];
  }
}

+ (void)userTimeoutWithPayload:(id)a3 localePair:(id)a4 mtId:(id)a5 sessionId:(id)a6
{
  v9 = MEMORY[0x277D58AC0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x277D58AB8] lt_initWithMtId:v11 sessionId:v10];

  [v14 setEventMetadata:v15];
  v16 = [MEMORY[0x277D58A88] lt_initWithPayload:v13 localePair:v12];

  [v14 setAppTimedOut:v16];
  v17 = [MEMORY[0x277D552C0] sharedAnalytics];
  v18 = [v17 defaultMessageStream];
  v19 = [v11 ltd_safeUUID];

  [v18 emitMessage:v14 isolatedStreamUUID:v19];
  v20 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction userTimeoutWithPayload:v20 localePair:? mtId:? sessionId:?];
  }
}

+ (void)appBackgroundedWithPayload:(id)a3 localePair:(id)a4 mtId:(id)a5 sessionId:(id)a6
{
  v9 = MEMORY[0x277D58AC0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x277D58AB8] lt_initWithMtId:v11 sessionId:v10];

  [v14 setEventMetadata:v15];
  v16 = [MEMORY[0x277D58A68] lt_initWithPayload:v13 localePair:v12];

  [v14 setAppBackgrounded:v16];
  v17 = [MEMORY[0x277D552C0] sharedAnalytics];
  v18 = [v17 defaultMessageStream];
  v19 = [v11 ltd_safeUUID];

  [v18 emitMessage:v14 isolatedStreamUUID:v19];
  v20 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction appBackgroundedWithPayload:v20 localePair:? mtId:? sessionId:?];
  }
}

+ (void)languageIdentificationCompletedWithInputSource:(int64_t)a3 topLocale:(id)a4 lowConfidenceLocales:(id)a5 mtId:(id)a6 sessionId:(id)a7
{
  v11 = MEMORY[0x277D58AC0];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_alloc_init(v11);
  v17 = [MEMORY[0x277D58AB8] lt_initWithMtId:v13 sessionId:v12];

  [v16 setEventMetadata:v17];
  v18 = [MEMORY[0x277D58B20] lt_initWithInputSource:a3 topLocale:v15 lowConfidenceLocales:v14];

  [v16 setLanguageIdentificationCompleted:v18];
  v19 = [MEMORY[0x277D552C0] sharedAnalytics];
  v20 = [v19 defaultMessageStream];
  v21 = [v13 ltd_safeUUID];

  [v20 emitMessage:v16 isolatedStreamUUID:v21];
  v22 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction languageIdentificationCompletedWithInputSource:v22 topLocale:? lowConfidenceLocales:? mtId:? sessionId:?];
  }
}

+ (void)frameworkRequestSentWithFrameworkRequestId:(id)a3 qssSessionId:(id)a4 requestType:(int64_t)a5 requestRoute:(int64_t)a6 requestSize:(unint64_t)a7 mtId:(id)a8 sessionId:(id)a9
{
  v15 = MEMORY[0x277D58AC0];
  v16 = a9;
  v17 = a8;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(v15);
  v21 = [MEMORY[0x277D58AB8] lt_initWithMtId:v17 sessionId:v16];

  [v20 setEventMetadata:v21];
  v22 = [MEMORY[0x277D58AD8] lt_initWithFrameworkRequestId:v19 qssSessionId:v18 requestType:a5 requestRoute:a6 requestSize:a7];

  [v20 setFrameworkRequestSent:v22];
  v23 = [MEMORY[0x277D552C0] sharedAnalytics];
  v24 = [v23 defaultMessageStream];
  v25 = [v17 ltd_safeUUID];

  [v24 emitMessage:v20 isolatedStreamUUID:v25];
  v26 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction frameworkRequestSentWithFrameworkRequestId:v26 qssSessionId:? requestType:? requestRoute:? requestSize:? mtId:? sessionId:?];
  }
}

+ (void)frameworkRequestResponseReceivedWithFrameworkRequestId:(id)a3 requestRoute:(int64_t)a4 mtId:(id)a5 sessionId:(id)a6 numberOfSentences:(unint64_t)a7
{
  v11 = MEMORY[0x277D58AC0];
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = objc_alloc_init(v11);
  v16 = [MEMORY[0x277D58AB8] lt_initWithMtId:v13 sessionId:v12];

  [v15 setEventMetadata:v16];
  v17 = [MEMORY[0x277D58AD0] lt_initWithFrameworkRequestId:v14 requestRoute:a4 numberOfSentences:a7];

  [v15 setFrameworkRequestResponseReceived:v17];
  v18 = [MEMORY[0x277D552C0] sharedAnalytics];
  v19 = [v18 defaultMessageStream];
  v20 = [v13 ltd_safeUUID];

  [v19 emitMessage:v15 isolatedStreamUUID:v20];
  v21 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction frameworkRequestResponseReceivedWithFrameworkRequestId:v21 requestRoute:? mtId:? sessionId:? numberOfSentences:?];
  }
}

+ (void)_sendEventWithContext:(void *)a1 mtId:sessionId:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() dictionaryRepresentation];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "[Production] Invocation context event sent %{sensitive}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)startTier1WithLinkId:(void *)a1 appBundleId:mtId:sessionId:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() dictionaryRepresentation];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "[Production] Invocation startedTier1 event sent %{sensitive}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)userDismissedTextBoxWithPayload:(void *)a1 localePair:mtId:sessionId:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() dictionaryRepresentation];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "[Production] Invocation appTextBoxDismissed event sent %{sensitive}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)userPressedNextButtonWithPayload:(void *)a1 localePair:mtId:sessionId:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() dictionaryRepresentation];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "[Production] Invocation appNextButtonTapped event sent %{sensitive}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)userTimeoutWithPayload:(void *)a1 localePair:mtId:sessionId:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() dictionaryRepresentation];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "[Production] Invocation appTimedOut event sent %{sensitive}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)appBackgroundedWithPayload:(void *)a1 localePair:mtId:sessionId:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() dictionaryRepresentation];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "[Production] Invocation appBackgrounded event sent %{sensitive}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)translationTTSPlayed:(void *)a1 isAutoplayTranslation:ttsPlaybackSpeed:audioChannel:mtId:sessionId:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() dictionaryRepresentation];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "[Production] Invocation translationTTSPlayed request sent event sent %{sensitive}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)languageIdentificationCompletedWithInputSource:(void *)a1 topLocale:lowConfidenceLocales:mtId:sessionId:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() dictionaryRepresentation];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "[Production] Invocation languageIdentificationCompleted event sent %{sensitive}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)frameworkRequestSentWithFrameworkRequestId:(void *)a1 qssSessionId:requestType:requestRoute:requestSize:mtId:sessionId:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() dictionaryRepresentation];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "[Production] Invocation framework request sent event sent %{sensitive}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)frameworkRequestResponseReceivedWithFrameworkRequestId:(void *)a1 requestRoute:mtId:sessionId:numberOfSentences:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() dictionaryRepresentation];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v4, v5, "[Production] Invocation framework request response received event sent %{sensitive}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end