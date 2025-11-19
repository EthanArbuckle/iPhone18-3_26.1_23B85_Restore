@interface _LTDSELFLoggingManager
+ (void)initialize;
- (_LTDSELFLoggingManager)init;
- (id)sendFrameworkRequestWithInvocationId:(id)a3 qssSessionId:(id)a4 requestType:(int64_t)a5 requestRoute:(int64_t)a6 requestSize:(unint64_t)a7;
- (void)_invocationStartTier1WithInvocationId:(id)a3 linkId:(id)a4 appBundleId:(id)a5;
- (void)invocationAppBackgroundedWithInvocationId:(id)a3 payload:(id)a4 localePair:(id)a5;
- (void)invocationCancelWithInvocationId:(id)a3 reason:(id)a4 qssSessionId:(id)a5;
- (void)invocationEndSuccessfullyWithInvocationId:(id)a3 qssSessionId:(id)a4 localePair:(id)a5;
- (void)invocationEndWithInvocationId:(id)a3 error:(id)a4 qssSessionId:(id)a5 localePair:(id)a6;
- (void)invocationLanguageIdentificationCompletedWithInputSource:(id)a3 inputSource:(int64_t)a4 topLocale:(id)a5 lowConfidenceLocales:(id)a6;
- (void)invocationStartWithInvocationId:(id)a3 task:(int64_t)a4 inputMode:(int64_t)a5 invocationType:(int64_t)a6 translateAppContext:(id)a7;
- (void)invocationTranslationTTSPlayedWithInvocationId:(id)a3 sourceOrTargetLanguage:(int64_t)a4 isAutoplayTranslation:(BOOL)a5 ttsPlaybackSpeed:(int64_t)a6 audioChannel:(int64_t)a7;
- (void)invocationUserEndedTypingEndedReasonTimeoutWithInvocationId:(id)a3 payload:(id)a4 localePair:(id)a5;
- (void)invocationUserEndedTypingReasonNextButtonPressedWithInvocationId:(id)a3 payload:(id)a4 localePair:(id)a5;
- (void)invocationUserEndedTypingReasonTextBoxDismissedWithInvocationId:(id)a3 payload:(id)a4 localePair:(id)a5;
- (void)selfLoggingEventWithData:(id)a3;
- (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)a3;
- (void)sendSpeechTranslationFrameworkRequestSentWithInvocationId:(id)a3 qssSessionId:(id)a4 requestRoute:(int64_t)a5 payloadSizeInBytes:(unint64_t)a6;
@end

@implementation _LTDSELFLoggingManager

+ (void)initialize
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();

  if (v3 == a1)
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

- (void)selfLoggingEventWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 invocationId];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D5AC78]);
    v7 = [v4 invocationId];
    v8 = [v6 initWithNSUUID:v7];

    v9 = [v4 qssSessionId];

    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x277D5AC78]);
      v11 = [v4 qssSessionId];
      v9 = [v10 initWithNSUUID:v11];
    }

    v12 = [v4 translationLocalePair];
    v13 = [v4 type];
    if (v13 > 5)
    {
      if (v13 <= 7)
      {
        if (v13 == 6)
        {
          v14 = [v4 translationPayload];
          v15 = [v4 translationLocalePair];
          [(_LTDSELFLoggingManager *)self invocationUserEndedTypingReasonNextButtonPressedWithInvocationId:v8 payload:v14 localePair:v15];
        }

        else
        {
          v14 = [v4 translationPayload];
          v15 = [v4 translationLocalePair];
          [(_LTDSELFLoggingManager *)self invocationUserEndedTypingEndedReasonTimeoutWithInvocationId:v8 payload:v14 localePair:v15];
        }

        goto LABEL_33;
      }

      if (v13 == 8)
      {
        v14 = [v4 translationPayload];
        v15 = [v4 translationLocalePair];
        [(_LTDSELFLoggingManager *)self invocationAppBackgroundedWithInvocationId:v8 payload:v14 localePair:v15];
        goto LABEL_33;
      }

      if (v13 != 9)
      {
        if (v13 == 10)
        {
          v17 = objc_alloc(MEMORY[0x277D5AC78]);
          v18 = [MEMORY[0x277CCAD78] UUID];
          v14 = [v17 initWithNSUUID:v18];

          v19 = [v4 trustedClientIdentifier];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = [v4 untrustedClientIdentifier];
          }

          v15 = v21;

          if (arc4random_uniform(0xAu))
          {

            v15 = @"redacted-3rd-party-bundle-id";
          }

          [(_LTDSELFLoggingManager *)self _invocationStartTier1WithInvocationId:v8 linkId:v14 appBundleId:v15];
          goto LABEL_33;
        }

LABEL_35:

        goto LABEL_36;
      }

      v32 = [v4 translationTTSData];
      v31 = [v32 sourceOrTargetLanguage];
      v22 = [v4 translationTTSData];
      v27 = [v22 isAutoplayTranslation];
      v23 = [v4 translationTTSData];
      v28 = [v23 playbackSpeed];
      v25 = [v4 translationTTSData];
      -[_LTDSELFLoggingManager invocationTranslationTTSPlayedWithInvocationId:sourceOrTargetLanguage:isAutoplayTranslation:ttsPlaybackSpeed:audioChannel:](self, "invocationTranslationTTSPlayedWithInvocationId:sourceOrTargetLanguage:isAutoplayTranslation:ttsPlaybackSpeed:audioChannel:", v8, v31, v27, v28, [v25 audioChannel]);
    }

    else
    {
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = [v4 invocationEndedError];
          [(_LTDSELFLoggingManager *)self invocationEndWithInvocationId:v8 error:v14 qssSessionId:v9 localePair:v12];
        }

        else
        {
          if (v13 != 4)
          {
            v14 = [v4 translationPayload];
            v15 = [v4 translationLocalePair];
            [(_LTDSELFLoggingManager *)self invocationUserEndedTypingReasonTextBoxDismissedWithInvocationId:v8 payload:v14 localePair:v15];
LABEL_33:

            goto LABEL_34;
          }

          v14 = [v4 invocationCancelledReason];
          [(_LTDSELFLoggingManager *)self invocationCancelWithInvocationId:v8 reason:v14 qssSessionId:v9];
        }

LABEL_34:

        goto LABEL_35;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          [(_LTDSELFLoggingManager *)self invocationEndSuccessfullyWithInvocationId:v8 qssSessionId:v9 localePair:v12];
        }

        goto LABEL_35;
      }

      v32 = [v4 startInvocationOptions];
      v30 = [v32 task];
      v22 = [v4 startInvocationOptions];
      v29 = [v22 inputMode];
      v23 = [v4 startInvocationOptions];
      v24 = [v23 invocationType];
      v25 = [v4 startInvocationOptions];
      v26 = [v25 translateAppContext];
      [(_LTDSELFLoggingManager *)self invocationStartWithInvocationId:v8 task:v30 inputMode:v29 invocationType:v24 translateAppContext:v26];
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

- (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)a3
{
  v4 = MEMORY[0x277D5AC78];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 invocationId];
  v12 = [v6 initWithNSUUID:v7];

  v8 = [v5 lowConfidenceLocales];
  v9 = [v8 _ltCompactMap:&__block_literal_global_16];

  v10 = [v5 inputSource];
  v11 = [v5 topLocale];

  [(_LTDSELFLoggingManager *)self invocationLanguageIdentificationCompletedWithInputSource:v12 inputSource:v10 topLocale:v11 lowConfidenceLocales:v9];
}

- (void)invocationStartWithInvocationId:(id)a3 task:(int64_t)a4 inputMode:(int64_t)a5 invocationType:(int64_t)a6 translateAppContext:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v10 = a7;
  v11 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationStartWithInvocationId:v11 task:v24 inputMode:? invocationType:? translateAppContext:?];
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
        v17 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
        v18 = [v17 lt_isOnDeviceOnly];
        v19 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v16 startWithTask:a4 inputMode:a5 invocationType:a6 interfaceMode:0 explicitLanguageFilterEnabled:0 onDevice:v18 mtId:v24 sessionId:v19 translateAppContext:v10];

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_invocationStartTier1WithInvocationId:(id)a3 linkId:(id)a4 appBundleId:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager _invocationStartTier1WithInvocationId:v11 linkId:v8 appBundleId:?];
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
        v18 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v17 startTier1WithLinkId:v9 appBundleId:v10 mtId:v8 sessionId:v18];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invocationEndSuccessfullyWithInvocationId:(id)a3 qssSessionId:(id)a4 localePair:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationEndSuccessfullyWithInvocationId:v11 qssSessionId:v8 localePair:?];
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
        v18 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v17 endSuccessfullyWithExists:1 localePair:v10 qssSessionId:v9 mtId:v8 sessionId:v18];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invocationEndWithInvocationId:(id)a3 error:(id)a4 qssSessionId:(id)a5 localePair:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationEndWithInvocationId:v11 error:v14 qssSessionId:v10 localePair:?];
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
        v20 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 endWithError:v11 localePair:v13 qssSessionId:v12 mtId:v10 sessionId:v20];

        ++v18;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invocationCancelWithInvocationId:(id)a3 reason:(id)a4 qssSessionId:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _LTOSLogSELFLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_LTDSELFLoggingManager invocationCancelWithInvocationId:v9 reason:v11 qssSessionId:v8];
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
        v18 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v17 cancelWithExists:1 reason:v9 qssSessionId:v10 mtId:v8 sessionId:v18];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invocationUserEndedTypingReasonTextBoxDismissedWithInvocationId:(id)a3 payload:(id)a4 localePair:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v22 = v9;
  if ([v11 lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
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
        v20 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 userDismissedTextBoxWithPayload:v13 localePair:v10 mtId:v8 sessionId:v20];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invocationUserEndedTypingReasonNextButtonPressedWithInvocationId:(id)a3 payload:(id)a4 localePair:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v22 = v9;
  if ([v11 lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
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
        v20 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 userPressedNextButtonWithPayload:v13 localePair:v10 mtId:v8 sessionId:v20];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invocationUserEndedTypingEndedReasonTimeoutWithInvocationId:(id)a3 payload:(id)a4 localePair:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v22 = v9;
  if ([v11 lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
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
        v20 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 userTimeoutWithPayload:v13 localePair:v10 mtId:v8 sessionId:v20];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invocationAppBackgroundedWithInvocationId:(id)a3 payload:(id)a4 localePair:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v22 = v9;
  if ([v11 lt_isOnDeviceOnly])
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
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
        v20 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v19 appBackgroundedWithPayload:v13 localePair:v10 mtId:v8 sessionId:v20];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invocationTranslationTTSPlayedWithInvocationId:(id)a3 sourceOrTargetLanguage:(int64_t)a4 isAutoplayTranslation:(BOOL)a5 ttsPlaybackSpeed:(int64_t)a6 audioChannel:(int64_t)a7
{
  v18 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
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
          v16 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
          [v15 translationTTSPlayed:a4 isAutoplayTranslation:v18 ttsPlaybackSpeed:a6 audioChannel:a7 mtId:v9 sessionId:v16];
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

- (void)invocationLanguageIdentificationCompletedWithInputSource:(id)a3 inputSource:(int64_t)a4 topLocale:(id)a5 lowConfidenceLocales:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
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
        v18 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
        [v17 languageIdentificationCompletedWithInputSource:a4 topLocale:v11 lowConfidenceLocales:v12 mtId:v10 sessionId:v18];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)sendFrameworkRequestWithInvocationId:(id)a3 qssSessionId:(id)a4 requestType:(int64_t)a5 requestRoute:(int64_t)a6 requestSize:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  if (v12)
  {
    v14 = [_LTDSELFLoggingFrameworkRequest alloc];
    v15 = [(_LTDSELFLoggingFrameworkRequest *)v14 initWithInvocationId:v12 endpoints:_endpoints sessionIdProvider:self->_sessionIdProvider qssSessionId:v13 requestType:a5 requestRoute:a6 requestSize:a7];
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

- (void)sendSpeechTranslationFrameworkRequestSentWithInvocationId:(id)a3 qssSessionId:(id)a4 requestRoute:(int64_t)a5 payloadSizeInBytes:(unint64_t)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v22 = v10;
  if (v10)
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
          v18 = [(_LTDSELFLoggingSessionIdProvider *)self->_sessionIdProvider sessionId];
          [v16 frameworkRequestSentWithFrameworkRequestId:0 qssSessionId:v11 requestType:2 requestRoute:a5 requestSize:a6 mtId:v17 sessionId:v18];
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