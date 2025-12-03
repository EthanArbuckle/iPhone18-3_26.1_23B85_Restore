@interface _LTDSELFLoggingProduction
+ (void)_sendEventWithContext:(id)context mtId:(id)id sessionId:(id)sessionId;
+ (void)appBackgroundedWithPayload:(id)payload localePair:(id)pair mtId:(id)id sessionId:(id)sessionId;
+ (void)endWithError:(id)error localePair:(id)pair qssSessionId:(id)id mtId:(id)mtId sessionId:(id)sessionId;
+ (void)frameworkRequestResponseReceivedWithFrameworkRequestId:(id)id requestRoute:(int64_t)route mtId:(id)mtId sessionId:(id)sessionId numberOfSentences:(unint64_t)sentences;
+ (void)frameworkRequestSentWithFrameworkRequestId:(id)id qssSessionId:(id)sessionId requestType:(int64_t)type requestRoute:(int64_t)route requestSize:(unint64_t)size mtId:(id)mtId sessionId:(id)a9;
+ (void)languageIdentificationCompletedWithInputSource:(int64_t)source topLocale:(id)locale lowConfidenceLocales:(id)locales mtId:(id)id sessionId:(id)sessionId;
+ (void)startTier1WithLinkId:(id)id appBundleId:(id)bundleId mtId:(id)mtId sessionId:(id)sessionId;
+ (void)userDismissedTextBoxWithPayload:(id)payload localePair:(id)pair mtId:(id)id sessionId:(id)sessionId;
+ (void)userPressedNextButtonWithPayload:(id)payload localePair:(id)pair mtId:(id)id sessionId:(id)sessionId;
+ (void)userTimeoutWithPayload:(id)payload localePair:(id)pair mtId:(id)id sessionId:(id)sessionId;
@end

@implementation _LTDSELFLoggingProduction

+ (void)_sendEventWithContext:(id)context mtId:(id)id sessionId:(id)sessionId
{
  v7 = MEMORY[0x277D58AC0];
  sessionIdCopy = sessionId;
  idCopy = id;
  contextCopy = context;
  v11 = objc_alloc_init(v7);
  v12 = [MEMORY[0x277D58AB8] lt_initWithMtId:idCopy sessionId:sessionIdCopy];

  [v11 setEventMetadata:v12];
  [v11 setInvocationContext:contextCopy];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  ltd_safeUUID = [idCopy ltd_safeUUID];

  [defaultMessageStream emitMessage:v11 isolatedStreamUUID:ltd_safeUUID];
  v16 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction _sendEventWithContext:v16 mtId:? sessionId:?];
  }
}

+ (void)startTier1WithLinkId:(id)id appBundleId:(id)bundleId mtId:(id)mtId sessionId:(id)sessionId
{
  v9 = MEMORY[0x277D58AC0];
  sessionIdCopy = sessionId;
  mtIdCopy = mtId;
  bundleIdCopy = bundleId;
  idCopy = id;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x277D58AB8] lt_initWithMtId:mtIdCopy sessionId:sessionIdCopy];

  [v14 setEventMetadata:v15];
  v16 = [MEMORY[0x277D58B08] lt_initWithLinkId:idCopy appBundleId:bundleIdCopy];

  [v14 setInvocationStartedTier1:v16];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  ltd_safeUUID = [mtIdCopy ltd_safeUUID];

  [defaultMessageStream emitMessage:v14 isolatedStreamUUID:ltd_safeUUID];
  v20 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction startTier1WithLinkId:v20 appBundleId:? mtId:? sessionId:?];
  }
}

+ (void)endWithError:(id)error localePair:(id)pair qssSessionId:(id)id mtId:(id)mtId sessionId:(id)sessionId
{
  v12 = MEMORY[0x277D58AE8];
  sessionIdCopy = sessionId;
  mtIdCopy = mtId;
  idCopy = id;
  pairCopy = pair;
  errorCopy = error;
  v19 = objc_alloc_init(v12);
  v18 = [MEMORY[0x277D58AF8] lt_initWithWithError:errorCopy localePair:pairCopy qssSessionId:idCopy];

  [v19 setFailed:v18];
  [self _sendEventWithContext:v19 mtId:mtIdCopy sessionId:sessionIdCopy];
}

+ (void)userDismissedTextBoxWithPayload:(id)payload localePair:(id)pair mtId:(id)id sessionId:(id)sessionId
{
  v9 = MEMORY[0x277D58AC0];
  sessionIdCopy = sessionId;
  idCopy = id;
  pairCopy = pair;
  payloadCopy = payload;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x277D58AB8] lt_initWithMtId:idCopy sessionId:sessionIdCopy];

  [v14 setEventMetadata:v15];
  v16 = [MEMORY[0x277D58A80] lt_initWithPayload:payloadCopy localePair:pairCopy];

  [v14 setAppTextBoxDismissed:v16];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  ltd_safeUUID = [idCopy ltd_safeUUID];

  [defaultMessageStream emitMessage:v14 isolatedStreamUUID:ltd_safeUUID];
  v20 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction userDismissedTextBoxWithPayload:v20 localePair:? mtId:? sessionId:?];
  }
}

+ (void)userPressedNextButtonWithPayload:(id)payload localePair:(id)pair mtId:(id)id sessionId:(id)sessionId
{
  v9 = MEMORY[0x277D58AC0];
  sessionIdCopy = sessionId;
  idCopy = id;
  pairCopy = pair;
  payloadCopy = payload;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x277D58AB8] lt_initWithMtId:idCopy sessionId:sessionIdCopy];

  [v14 setEventMetadata:v15];
  v16 = [MEMORY[0x277D58A78] lt_initWithPayload:payloadCopy localePair:pairCopy];

  [v14 setAppNextButtonTapped:v16];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  ltd_safeUUID = [idCopy ltd_safeUUID];

  [defaultMessageStream emitMessage:v14 isolatedStreamUUID:ltd_safeUUID];
  v20 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction userPressedNextButtonWithPayload:v20 localePair:? mtId:? sessionId:?];
  }
}

+ (void)userTimeoutWithPayload:(id)payload localePair:(id)pair mtId:(id)id sessionId:(id)sessionId
{
  v9 = MEMORY[0x277D58AC0];
  sessionIdCopy = sessionId;
  idCopy = id;
  pairCopy = pair;
  payloadCopy = payload;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x277D58AB8] lt_initWithMtId:idCopy sessionId:sessionIdCopy];

  [v14 setEventMetadata:v15];
  v16 = [MEMORY[0x277D58A88] lt_initWithPayload:payloadCopy localePair:pairCopy];

  [v14 setAppTimedOut:v16];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  ltd_safeUUID = [idCopy ltd_safeUUID];

  [defaultMessageStream emitMessage:v14 isolatedStreamUUID:ltd_safeUUID];
  v20 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction userTimeoutWithPayload:v20 localePair:? mtId:? sessionId:?];
  }
}

+ (void)appBackgroundedWithPayload:(id)payload localePair:(id)pair mtId:(id)id sessionId:(id)sessionId
{
  v9 = MEMORY[0x277D58AC0];
  sessionIdCopy = sessionId;
  idCopy = id;
  pairCopy = pair;
  payloadCopy = payload;
  v14 = objc_alloc_init(v9);
  v15 = [MEMORY[0x277D58AB8] lt_initWithMtId:idCopy sessionId:sessionIdCopy];

  [v14 setEventMetadata:v15];
  v16 = [MEMORY[0x277D58A68] lt_initWithPayload:payloadCopy localePair:pairCopy];

  [v14 setAppBackgrounded:v16];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  ltd_safeUUID = [idCopy ltd_safeUUID];

  [defaultMessageStream emitMessage:v14 isolatedStreamUUID:ltd_safeUUID];
  v20 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction appBackgroundedWithPayload:v20 localePair:? mtId:? sessionId:?];
  }
}

+ (void)languageIdentificationCompletedWithInputSource:(int64_t)source topLocale:(id)locale lowConfidenceLocales:(id)locales mtId:(id)id sessionId:(id)sessionId
{
  v11 = MEMORY[0x277D58AC0];
  sessionIdCopy = sessionId;
  idCopy = id;
  localesCopy = locales;
  localeCopy = locale;
  v16 = objc_alloc_init(v11);
  v17 = [MEMORY[0x277D58AB8] lt_initWithMtId:idCopy sessionId:sessionIdCopy];

  [v16 setEventMetadata:v17];
  v18 = [MEMORY[0x277D58B20] lt_initWithInputSource:source topLocale:localeCopy lowConfidenceLocales:localesCopy];

  [v16 setLanguageIdentificationCompleted:v18];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  ltd_safeUUID = [idCopy ltd_safeUUID];

  [defaultMessageStream emitMessage:v16 isolatedStreamUUID:ltd_safeUUID];
  v22 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction languageIdentificationCompletedWithInputSource:v22 topLocale:? lowConfidenceLocales:? mtId:? sessionId:?];
  }
}

+ (void)frameworkRequestSentWithFrameworkRequestId:(id)id qssSessionId:(id)sessionId requestType:(int64_t)type requestRoute:(int64_t)route requestSize:(unint64_t)size mtId:(id)mtId sessionId:(id)a9
{
  v15 = MEMORY[0x277D58AC0];
  v16 = a9;
  mtIdCopy = mtId;
  sessionIdCopy = sessionId;
  idCopy = id;
  v20 = objc_alloc_init(v15);
  v21 = [MEMORY[0x277D58AB8] lt_initWithMtId:mtIdCopy sessionId:v16];

  [v20 setEventMetadata:v21];
  v22 = [MEMORY[0x277D58AD8] lt_initWithFrameworkRequestId:idCopy qssSessionId:sessionIdCopy requestType:type requestRoute:route requestSize:size];

  [v20 setFrameworkRequestSent:v22];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  ltd_safeUUID = [mtIdCopy ltd_safeUUID];

  [defaultMessageStream emitMessage:v20 isolatedStreamUUID:ltd_safeUUID];
  v26 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingProduction frameworkRequestSentWithFrameworkRequestId:v26 qssSessionId:? requestType:? requestRoute:? requestSize:? mtId:? sessionId:?];
  }
}

+ (void)frameworkRequestResponseReceivedWithFrameworkRequestId:(id)id requestRoute:(int64_t)route mtId:(id)mtId sessionId:(id)sessionId numberOfSentences:(unint64_t)sentences
{
  v11 = MEMORY[0x277D58AC0];
  sessionIdCopy = sessionId;
  mtIdCopy = mtId;
  idCopy = id;
  v15 = objc_alloc_init(v11);
  v16 = [MEMORY[0x277D58AB8] lt_initWithMtId:mtIdCopy sessionId:sessionIdCopy];

  [v15 setEventMetadata:v16];
  v17 = [MEMORY[0x277D58AD0] lt_initWithFrameworkRequestId:idCopy requestRoute:route numberOfSentences:sentences];

  [v15 setFrameworkRequestResponseReceived:v17];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  ltd_safeUUID = [mtIdCopy ltd_safeUUID];

  [defaultMessageStream emitMessage:v15 isolatedStreamUUID:ltd_safeUUID];
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