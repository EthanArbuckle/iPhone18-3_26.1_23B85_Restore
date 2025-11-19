@interface SRDRequestDispatcherInternal
- (BOOL)implementsCommand:(id)a3 forDomain:(id)a4;
- (BOOL)sessionExistsForAssistantId:(id)a3;
- (SRDRequestDispatcherInternal)initWithRequestDispatcherServiceHelper:(id)a3 bridgeConnectionListeners:(id)a4;
- (id)commandsForDomain:(id)a3;
- (id)domains;
- (void)announceNotificationHandlingStateUpdatedWithAssistantId:(id)a3 toState:(int64_t)a4;
- (void)endDictationSessionWithAssistantId:(id)a3;
- (void)endSessionWithAssistantId:(id)a3 withDelay:(BOOL)a4;
- (void)handleCommand:(id)a3 executionContextInfo:(id)a4 reply:(id)a5;
- (void)prewarmWithAssistantId:(id)a3 languageCode:(id)a4 prewarmOptions:(unint64_t)a5 sharedUserId:(id)a6;
- (void)resumeDictationRecognitionWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7;
- (void)sendMultiUserInfoWithDeviceAssistantId:(id)a3 multiUserInfo:(id)a4 isRMVEnabled:(BOOL)a5;
- (void)startCorrectionSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 previousUtterance:(id)a7 requestContextData:(id)a8;
- (void)startDirectActionRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 directAction:(id)a6 requestExecutionParameters:(id)a7 requestContextData:(id)a8;
- (void)startSessionWithConfiguration:(id)a3;
- (void)startSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 location:(id)a6 asrOnServer:(BOOL)a7 requestContextData:(id)a8;
- (void)startTestSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 enableASR:(BOOL)a5 inputOrigin:(id)a6 location:(id)a7 jitContext:(id)a8 overrideModelPath:(id)a9 requestContextData:(id)a10;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)a3 requestId:(id)a4 fullSpeak:(id)a5 redactedFullSpeak:(id)a6 fullPrint:(id)a7 redactedFullPrint:(id)a8;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)a3 requestId:(id)a4 fullSpeak:(id)a5 redactedFullSpeak:(id)a6 fullPrint:(id)a7 redactedFullPrint:(id)a8 listenAfterSpeaking:(BOOL)a9;
- (void)updateVoiceCommandContextWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7 disambiguationActive:(id)a8 cursorInVisibleText:(id)a9 favorCommandSuppression:(id)a10 abortCommandSuppression:(id)a11 undoEvent:(id)a12;
@end

@implementation SRDRequestDispatcherInternal

- (void)startSessionWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2237613A8();
}

- (void)handleCommand:(id)a3 executionContextInfo:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_223775D98;
  }

  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_223771EF4();
  sub_223772558(v8);
}

- (SRDRequestDispatcherInternal)initWithRequestDispatcherServiceHelper:(id)a3 bridgeConnectionListeners:(id)a4
{
  sub_223766240(0, &qword_28131A7D0, 0x277CEF1B8);
  v4 = sub_2237B5F2C();
  v5 = swift_unknownObjectRetain();
  return RequestDispatcher.init(requestDispatcherServiceHelper:bridgeConnectionListeners:)(v5, v4);
}

- (id)domains
{
  v2 = self;
  sub_223791BE0();

  v3 = sub_2237B5F1C();

  return v3;
}

- (id)commandsForDomain:(id)a3
{
  sub_2237B5E2C();
  v4 = self;
  sub_2237920E8();

  v5 = sub_2237B5F1C();

  return v5;
}

- (BOOL)implementsCommand:(id)a3 forDomain:(id)a4
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  v5 = self;
  sub_223792554();
  v7 = v6;

  return v7 & 1;
}

- (void)startSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 location:(id)a6 asrOnServer:(BOOL)a7 requestContextData:(id)a8
{
  HIDWORD(v24) = a7;
  v23 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  v19 = a6;
  v20 = a8;
  v21 = self;
  sub_223793580(v23, v12, v13, v15, v16, v18, a6, HIDWORD(v24), v20, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
}

- (BOOL)sessionExistsForAssistantId:(id)a3
{
  sub_2237B5E2C();
  v4 = self;
  sub_223794E80();
  v6 = v5;

  return v6 & 1;
}

- (void)prewarmWithAssistantId:(id)a3 languageCode:(id)a4 prewarmOptions:(unint64_t)a5 sharedUserId:(id)a6
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  if (a6)
  {
    sub_2237B5E2C();
  }

  v8 = self;
  sub_223795364();
}

- (void)endSessionWithAssistantId:(id)a3 withDelay:(BOOL)a4
{
  sub_2237B5E2C();
  v5 = self;
  sub_223795A24();
}

- (void)startTestSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 enableASR:(BOOL)a5 inputOrigin:(id)a6 location:(id)a7 jitContext:(id)a8 overrideModelPath:(id)a9 requestContextData:(id)a10
{
  HIDWORD(v29) = a5;
  v12 = a9;
  v28 = sub_2237B5E2C();
  v14 = v13;
  v26 = sub_2237B5E2C();
  v16 = v15;
  v25 = sub_2237B5E2C();
  v18 = v17;
  if (a8)
  {
    a8 = sub_2237B5F2C();
  }

  if (a9)
  {
    v19 = sub_2237B5E2C();
    v12 = v20;
  }

  else
  {
    v19 = 0;
  }

  v21 = a7;
  v22 = a10;
  v23 = self;
  sub_2237962B8(v28, v14, v26, v16, HIDWORD(v29), v25, v18, a7, a8, v19, v12, v22, v24, v25, v26, self, v28, v29, v30, v31, v32, v33, v34);
}

- (void)startDirectActionRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 directAction:(id)a6 requestExecutionParameters:(id)a7 requestContextData:(id)a8
{
  v25 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  if (a6)
  {
    v19 = sub_2237B5E2C();
    a6 = v20;
    if (a7)
    {
LABEL_3:
      v21 = sub_2237B5DAC();
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  v22 = a8;
  v23 = self;
  sub_22379D7D0(v25, v12, v13, v15, v16, v18, v19, a6, v21, v22, self, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
}

- (void)startCorrectionSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 previousUtterance:(id)a7 requestContextData:(id)a8
{
  v26 = sub_2237B5E2C();
  v11 = v10;
  v24 = sub_2237B5E2C();
  v13 = v12;
  v14 = sub_2237B5E2C();
  v16 = v15;
  v17 = sub_2237B5E2C();
  v19 = v18;
  if (a7)
  {
    v20 = sub_2237B5E2C();
    a7 = v21;
  }

  else
  {
    v20 = 0;
  }

  v22 = a8;
  v23 = self;
  sub_22379E59C(v26, v11, v24, v13, v14, v16, v17, v19, v20, a7, v22, v24, self, v26, v27, v28, v29, v30, v31, v32, v33, v34);
}

- (void)endDictationSessionWithAssistantId:(id)a3
{
  sub_2237B5E2C();
  v4 = self;
  sub_2237A2018();
}

- (void)resumeDictationRecognitionWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7
{
  v24 = sub_2237B5E2C();
  v9 = v8;
  v10 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  v19 = sub_2237B5E2C();
  v21 = v20;
  v22 = self;
  sub_2237A2B38(v24, v9, v10, v12, v13, v15, v16, v18, v19, v21, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
}

- (void)updateVoiceCommandContextWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7 disambiguationActive:(id)a8 cursorInVisibleText:(id)a9 favorCommandSuppression:(id)a10 abortCommandSuppression:(id)a11 undoEvent:(id)a12
{
  *&v33 = self;
  v16 = sub_2237B5E2C();
  *&v35 = v17;
  v32 = sub_2237B5E2C();
  *(&v34 + 1) = v18;
  if (a5)
  {
    v31 = sub_2237B5E2C();
    *&v34 = v19;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v30 = 0;
    *(&v33 + 1) = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v31 = 0;
  *&v34 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v30 = sub_2237B5E2C();
  *(&v33 + 1) = v20;
  if (a7)
  {
LABEL_4:
    v21 = sub_2237B5E2C();
    v23 = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
  v23 = 0;
LABEL_8:
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = v33;
  sub_2237A3588(v16, v35, v32, *(&v34 + 1), v31, v34, v30, *(&v33 + 1), v21, v23, v24, v25, v26, v27, v28, v23, v30, v31, a12, v32, v33, v34, v35);
}

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)a3 requestId:(id)a4 fullSpeak:(id)a5 redactedFullSpeak:(id)a6 fullPrint:(id)a7 redactedFullPrint:(id)a8
{
  v30 = sub_2237B5E2C();
  v14 = v13;
  v29 = sub_2237B5E2C();
  v16 = v15;
  if (a5)
  {
    v28 = sub_2237B5E2C();
    a5 = v17;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = 0;
    v19 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v28 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v27 = sub_2237B5E2C();
  v19 = v18;
  if (a7)
  {
LABEL_4:
    v20 = sub_2237B5E2C();
    a7 = v21;
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  v22 = a8;
  v23 = self;
  if (v22)
  {
    v24 = sub_2237B5E2C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_2237A4184(v30, v14, v29, v16, v28, a5, v27, v19, v20, a7, v24, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
}

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)a3 requestId:(id)a4 fullSpeak:(id)a5 redactedFullSpeak:(id)a6 fullPrint:(id)a7 redactedFullPrint:(id)a8 listenAfterSpeaking:(BOOL)a9
{
  HIDWORD(v32) = a9;
  v33 = sub_2237B5E2C();
  v15 = v14;
  v31 = sub_2237B5E2C();
  v17 = v16;
  if (a5)
  {
    v30 = sub_2237B5E2C();
    a5 = v18;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v29 = 0;
    v20 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v30 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v29 = sub_2237B5E2C();
  v20 = v19;
  if (a7)
  {
LABEL_4:
    v21 = sub_2237B5E2C();
    a7 = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  v23 = a8;
  v24 = self;
  if (v23)
  {
    v25 = sub_2237B5E2C();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  LOBYTE(v28) = BYTE4(v32);
  sub_2237A46A8(v33, v15, v31, v17, v30, a5, v29, v20, v21, a7, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
}

- (void)announceNotificationHandlingStateUpdatedWithAssistantId:(id)a3 toState:(int64_t)a4
{
  sub_2237B5E2C();
  v5 = self;
  sub_2237A5538();
}

- (void)sendMultiUserInfoWithDeviceAssistantId:(id)a3 multiUserInfo:(id)a4 isRMVEnabled:(BOOL)a5
{
  sub_2237B5E2C();
  v8 = a4;
  v9 = self;
  sub_2237A5DAC(v9, v10, v8, a5);
}

@end