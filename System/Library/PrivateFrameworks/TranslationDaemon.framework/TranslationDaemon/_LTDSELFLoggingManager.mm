@interface _LTDSELFLoggingManager
+ (void)initialize;
- (_LTDSELFLoggingManager)init;
- (id)sendFrameworkRequestWithInvocationId:(id)id qssSessionId:(id)sessionId requestType:(int64_t)type requestRoute:(int64_t)route requestSize:(unint64_t)size;
- (void)_invocationStartTier1WithInvocationId:(id)id linkId:(id)linkId appBundleId:(id)bundleId;
- (void)invocationAppBackgroundedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair;
- (void)invocationCancelWithInvocationId:(id)id reason:(id)reason qssSessionId:(id)sessionId;
- (void)invocationEndSuccessfullyWithInvocationId:(id)id qssSessionId:(id)sessionId localePair:(id)pair;
- (void)invocationEndWithInvocationId:(id)id error:(id)error qssSessionId:(id)sessionId localePair:(id)pair;
- (void)invocationLanguageIdentificationCompletedWithInputSource:(id)source inputSource:(int64_t)inputSource topLocale:(id)locale lowConfidenceLocales:(id)locales;
- (void)invocationStartWithInvocationId:(id)id task:(int64_t)task inputMode:(int64_t)mode invocationType:(int64_t)type translateAppContext:(id)context;
- (void)invocationTranslationTTSPlayedWithInvocationId:(id)id sourceOrTargetLanguage:(int64_t)language isAutoplayTranslation:(BOOL)translation ttsPlaybackSpeed:(int64_t)speed audioChannel:(int64_t)channel;
- (void)invocationUserEndedTypingEndedReasonTimeoutWithInvocationId:(id)id payload:(id)payload localePair:(id)pair;
- (void)invocationUserEndedTypingReasonNextButtonPressedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair;
- (void)invocationUserEndedTypingReasonTextBoxDismissedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair;
- (void)selfLoggingEventWithData:(id)data;
- (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)data;
- (void)sendSpeechTranslationFrameworkRequestSentWithInvocationId:(id)id qssSessionId:(id)sessionId requestRoute:(int64_t)route payloadSizeInBytes:(unint64_t)bytes;
@end

@implementation _LTDSELFLoggingManager

+ (void)initialize
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v7[0] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    v5 = _endpoints;
    _endpoints = v4;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (_LTDSELFLoggingManager)init
{
  v8.receiver = self;
  v8.super_class = _LTDSELFLoggingManager;
  v2 = [(_LTDSELFLoggingManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(_LTDSELFLoggingSessionIdProvider);
    sessionIdProvider = v2->_sessionIdProvider;
    v2->_sessionIdProvider = v3;

    v5 = _LTOSLogSELFLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [_LTDSELFLoggingManager init];
    }

    v6 = v2;
  }

  return v2;
}

- (void)selfLoggingEventWithData:(id)data
{
  dataCopy = data;
  invocationId = [dataCopy invocationId];

  if (invocationId)
  {
    v6 = objc_alloc(MEMORY[0x277D5AC78]);
    invocationId2 = [dataCopy invocationId];
    v8 = [v6 initWithNSUUID:invocationId2];

    qssSessionId = [dataCopy qssSessionId];

    if (qssSessionId)
    {
      v10 = objc_alloc(MEMORY[0x277D5AC78]);
      qssSessionId2 = [dataCopy qssSessionId];
      qssSessionId = [v10 initWithNSUUID:qssSessionId2];
    }

    translationLocalePair = [dataCopy translationLocalePair];
    type = [dataCopy type];
    if (type > 5)
    {
      if (type <= 7)
      {
        if (type == 6)
        {
          translationPayload = [dataCopy translationPayload];
          translationLocalePair2 = [dataCopy translationLocalePair];
          [(_LTDSELFLoggingManager *)self invocationUserEndedTypingReasonNextButtonPressedWithInvocationId:v8 payload:translationPayload localePair:translationLocalePair2];
        }

        else
        {
          translationPayload = [dataCopy translationPayload];
          translationLocalePair2 = [dataCopy translationLocalePair];
          [(_LTDSELFLoggingManager *)self invocationUserEndedTypingEndedReasonTimeoutWithInvocationId:v8 payload:translationPayload localePair:translationLocalePair2];
        }

        goto LABEL_33;
      }

      if (type == 8)
      {
        translationPayload = [dataCopy translationPayload];
        translationLocalePair2 = [dataCopy translationLocalePair];
        [(_LTDSELFLoggingManager *)self invocationAppBackgroundedWithInvocationId:v8 payload:translationPayload localePair:translationLocalePair2];
        goto LABEL_33;
      }

      if (type != 9)
      {
        if (type == 10)
        {
          v17 = objc_alloc(MEMORY[0x277D5AC78]);
          uUID = [MEMORY[0x277CCAD78] UUID];
          translationPayload = [v17 initWithNSUUID:uUID];

          trustedClientIdentifier = [dataCopy trustedClientIdentifier];
          v20 = trustedClientIdentifier;
          if (trustedClientIdentifier)
          {
            untrustedClientIdentifier = trustedClientIdentifier;
          }

          else
          {
            untrustedClientIdentifier = [dataCopy untrustedClientIdentifier];
          }

          translationLocalePair2 = untrustedClientIdentifier;

          if (arc4random_uniform(0xAu))
          {

            translationLocalePair2 = @"redacted-3rd-party-bundle-id";
          }

          [(_LTDSELFLoggingManager *)self _invocationStartTier1WithInvocationId:v8 linkId:translationPayload appBundleId:translationLocalePair2];
          goto LABEL_33;
        }

LABEL_35:

        goto LABEL_36;
      }

      translationTTSData = [dataCopy translationTTSData];
      sourceOrTargetLanguage = [translationTTSData sourceOrTargetLanguage];
      translationTTSData2 = [dataCopy translationTTSData];
      isAutoplayTranslation = [translationTTSData2 isAutoplayTranslation];
      translationTTSData3 = [dataCopy translationTTSData];
      playbackSpeed = [translationTTSData3 playbackSpeed];
      translationTTSData4 = [dataCopy translationTTSData];
      -[_LTDSELFLoggingManager invocationTranslationTTSPlayedWithInvocationId:sourceOrTargetLanguage:isAutoplayTranslation:ttsPlaybackSpeed:audioChannel:](self, "invocationTranslationTTSPlayedWithInvocationId:sourceOrTargetLanguage:isAutoplayTranslation:ttsPlaybackSpeed:audioChannel:", v8, sourceOrTargetLanguage, isAutoplayTranslation, playbackSpeed, [translationTTSData4 audioChannel]);
    }

    else
    {
      if (type > 2)
      {
        if (type == 3)
        {
          translationPayload = [dataCopy invocationEndedError];
          [(_LTDSELFLoggingManager *)self invocationEndWithInvocationId:v8 error:translationPayload qssSessionId:qssSessionId localePair:translationLocalePair];
        }

        else
        {
          if (type != 4)
          {
            translationPayload = [dataCopy translationPayload];
            translationLocalePair2 = [dataCopy translationLocalePair];
            [(_LTDSELFLoggingManager *)self invocationUserEndedTypingReasonTextBoxDismissedWithInvocationId:v8 payload:translationPayload localePair:translationLocalePair2];
LABEL_33:

            goto LABEL_34;
          }

          translationPayload = [dataCopy invocationCancelledReason];
          [(_LTDSELFLoggingManager *)self invocationCancelWithInvocationId:v8 reason:translationPayload qssSessionId:qssSessionId];
        }

LABEL_34:

        goto LABEL_35;
      }

      if (type != 1)
      {
        if (type == 2)
        {
          [(_LTDSELFLoggingManager *)self invocationEndSuccessfullyWithInvocationId:v8 qssSessionId:qssSessionId localePair:translationLocalePair];
        }

        goto LABEL_35;
      }

      translationTTSData = [dataCopy startInvocationOptions];
      task = [translationTTSData task];
      translationTTSData2 = [dataCopy startInvocationOptions];
      inputMode = [translationTTSData2 inputMode];
      translationTTSData3 = [dataCopy startInvocationOptions];
      invocationType = [translationTTSData3 invocationType];
      translationTTSData4 = [dataCopy startInvocationOptions];
      translateAppContext = [translationTTSData4 translateAppContext];
      [(_LTDSELFLoggingManager *)self invocationStartWithInvocationId:v8 task:task inputMode:inputMode invocationType:invocationType translateAppContext:translateAppContext];
    }

    goto LABEL_35;
  }

  v16 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager selfLoggingEventWithData:];
  }

LABEL_36:
}

- (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)data
{
  v4 = MEMORY[0x277D5AC78];
  dataCopy = data;
  v6 = [v4 alloc];
  invocationId = [dataCopy invocationId];
  v12 = [v6 initWithNSUUID:invocationId];

  lowConfidenceLocales = [dataCopy lowConfidenceLocales];
  v9 = [lowConfidenceLocales _ltCompactMap:&__block_literal_global_16];

  inputSource = [dataCopy inputSource];
  topLocale = [dataCopy topLocale];

  [(_LTDSELFLoggingManager *)self invocationLanguageIdentificationCompletedWithInputSource:v12 inputSource:inputSource topLocale:topLocale lowConfidenceLocales:v9];
}

- (void)invocationStartWithInvocationId:(id)id task:(int64_t)task inputMode:(int64_t)mode invocationType:(int64_t)type translateAppContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  idCopy = id;
  contextCopy = context;
  v11 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationStartWithInvocationId:v11 task:idCopy inputMode:? invocationType:? translateAppContext:?];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = _endpoints;
  v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
        lt_isOnDeviceOnly = [lt_appGroupDefaults lt_isOnDeviceOnly];
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v16 startWithTask:task inputMode:mode invocationType:type interfaceMode:0 explicitLanguageFilterEnabled:0 onDevice:lt_isOnDeviceOnly mtId:idCopy sessionId:sessionId translateAppContext:contextCopy];

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_invocationStartTier1WithInvocationId:(id)id linkId:(id)linkId appBundleId:(id)bundleId
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  linkIdCopy = linkId;
  bundleIdCopy = bundleId;
  v11 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager _invocationStartTier1WithInvocationId:v11 linkId:idCopy appBundleId:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = _endpoints;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v17 startTier1WithLinkId:linkIdCopy appBundleId:bundleIdCopy mtId:idCopy sessionId:sessionId];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invocationEndSuccessfullyWithInvocationId:(id)id qssSessionId:(id)sessionId localePair:(id)pair
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  sessionIdCopy = sessionId;
  pairCopy = pair;
  v11 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationEndSuccessfullyWithInvocationId:v11 qssSessionId:idCopy localePair:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = _endpoints;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v17 endSuccessfullyWithExists:1 localePair:pairCopy qssSessionId:sessionIdCopy mtId:idCopy sessionId:sessionId];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invocationEndWithInvocationId:(id)id error:(id)error qssSessionId:(id)sessionId localePair:(id)pair
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  errorCopy = error;
  sessionIdCopy = sessionId;
  pairCopy = pair;
  v14 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationEndWithInvocationId:errorCopy error:v14 qssSessionId:idCopy localePair:?];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = _endpoints;
  v15 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 endWithError:errorCopy localePair:pairCopy qssSessionId:sessionIdCopy mtId:idCopy sessionId:sessionId];

        ++v18;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invocationCancelWithInvocationId:(id)id reason:(id)reason qssSessionId:(id)sessionId
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  reasonCopy = reason;
  sessionIdCopy = sessionId;
  v11 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationCancelWithInvocationId:reasonCopy reason:v11 qssSessionId:idCopy];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = _endpoints;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v17 cancelWithExists:1 reason:reasonCopy qssSessionId:sessionIdCopy mtId:idCopy sessionId:sessionId];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invocationUserEndedTypingReasonTextBoxDismissedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  pairCopy = pair;
  lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v22 = payloadCopy;
  if ([lt_appGroupDefaults lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = payloadCopy;
  }

  v13 = v12;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = _endpoints;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 userDismissedTextBoxWithPayload:v13 localePair:pairCopy mtId:idCopy sessionId:sessionId];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invocationUserEndedTypingReasonNextButtonPressedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  pairCopy = pair;
  lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v22 = payloadCopy;
  if ([lt_appGroupDefaults lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = payloadCopy;
  }

  v13 = v12;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = _endpoints;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 userPressedNextButtonWithPayload:v13 localePair:pairCopy mtId:idCopy sessionId:sessionId];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invocationUserEndedTypingEndedReasonTimeoutWithInvocationId:(id)id payload:(id)payload localePair:(id)pair
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  pairCopy = pair;
  lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v22 = payloadCopy;
  if ([lt_appGroupDefaults lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = payloadCopy;
  }

  v13 = v12;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = _endpoints;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 userTimeoutWithPayload:v13 localePair:pairCopy mtId:idCopy sessionId:sessionId];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invocationAppBackgroundedWithInvocationId:(id)id payload:(id)payload localePair:(id)pair
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  pairCopy = pair;
  lt_appGroupDefaults = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v22 = payloadCopy;
  if ([lt_appGroupDefaults lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = payloadCopy;
  }

  v13 = v12;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = _endpoints;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 appBackgroundedWithPayload:v13 localePair:pairCopy mtId:idCopy sessionId:sessionId];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invocationTranslationTTSPlayedWithInvocationId:(id)id sourceOrTargetLanguage:(int64_t)language isAutoplayTranslation:(BOOL)translation ttsPlaybackSpeed:(int64_t)speed audioChannel:(int64_t)channel
{
  translationCopy = translation;
  v26 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = _endpoints;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
          [v15 translationTTSPlayed:language isAutoplayTranslation:translationCopy ttsPlaybackSpeed:speed audioChannel:channel mtId:idCopy sessionId:sessionId];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)invocationLanguageIdentificationCompletedWithInputSource:(id)source inputSource:(int64_t)inputSource topLocale:(id)locale lowConfidenceLocales:(id)locales
{
  v26 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  localeCopy = locale;
  localesCopy = locales;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = _endpoints;
  v13 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v17 languageIdentificationCompletedWithInputSource:inputSource topLocale:localeCopy lowConfidenceLocales:localesCopy mtId:sourceCopy sessionId:sessionId];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)sendFrameworkRequestWithInvocationId:(id)id qssSessionId:(id)sessionId requestType:(int64_t)type requestRoute:(int64_t)route requestSize:(unint64_t)size
{
  idCopy = id;
  sessionIdCopy = sessionId;
  if (idCopy)
  {
    v14 = [_LTDSELFLoggingFrameworkRequest alloc];
    v15 = [(_LTDSELFLoggingFrameworkRequest *)v14 initWithInvocationId:idCopy endpoints:_endpoints sessionIdProvider:self->_sessionIdProvider qssSessionId:sessionIdCopy requestType:type requestRoute:route requestSize:size];
  }

  else
  {
    v16 = _LTOSLogSELFLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_LTDSELFLoggingManager sendFrameworkRequestWithInvocationId:qssSessionId:requestType:requestRoute:requestSize:];
    }

    v15 = 0;
  }

  return v15;
}

- (void)sendSpeechTranslationFrameworkRequestSentWithInvocationId:(id)id qssSessionId:(id)sessionId requestRoute:(int64_t)route payloadSizeInBytes:(unint64_t)bytes
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  sessionIdCopy = sessionId;
  v22 = idCopy;
  if (idCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = _endpoints;
    v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:v22];
          sessionId = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
          [v16 frameworkRequestSentWithFrameworkRequestId:0 qssSessionId:sessionIdCopy requestType:2 requestRoute:route requestSize:bytes mtId:v17 sessionId:sessionId];
        }

        v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v19 = _LTOSLogSELFLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [_LTDSELFLoggingManager sendSpeechTranslationFrameworkRequestSentWithInvocationId:qssSessionId:requestRoute:payloadSizeInBytes:];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)invocationStartWithInvocationId:(void *)a1 task:(void *)a2 inputMode:invocationType:translateAppContext:.cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 formattedText];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_9(&dword_232E53000, v5, v6, "Invocation start with type: %ld and invocationId %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_invocationStartTier1WithInvocationId:(void *)a1 linkId:(void *)a2 appBundleId:.cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 formattedText];
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v5, v6, "Invocation start tier 1 with invocationId: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invocationEndSuccessfullyWithInvocationId:(void *)a1 qssSessionId:(void *)a2 localePair:.cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 formattedText];
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v5, v6, "Invocation end successfully for invocationId %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invocationEndWithInvocationId:(void *)a3 error:qssSessionId:localePair:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 formattedText];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_9(&dword_232E53000, v6, v7, "Invocation end with error (%@) for invocationId %{public}@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invocationCancelWithInvocationId:(uint64_t)a1 reason:(void *)a2 qssSessionId:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 formattedText];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_9(&dword_232E53000, v6, v7, "Invocation cancelled with reason (%@) for invocationId %{public}@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

@end