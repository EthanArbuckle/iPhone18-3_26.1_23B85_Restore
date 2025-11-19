@interface SRDRequestDispatcher
- (BOOL)implementsCommand:(id)a3 forDomain:(id)a4;
- (BOOL)sessionExistsForAssistantId:(id)a3;
- (SRDRequestDispatcher)initWithRequestDispatcherServiceHelper:(id)a3 bridgeConnectionListeners:(id)a4;
- (SRDRequestDispatcher)initWithUnderlyingRequestDispatcher:(id)a3 requestDispatcherServiceHelper:(id)a4;
- (id)commandsForDomain:(id)a3;
- (id)domains;
- (void)cancelRequestWithAssistantId:(id)a3 requestId:(id)a4 reason:(int64_t)a5;
- (void)emitAIREventForSiriAvailabiltyWithLocale:(id)a3 countryCode:(id)a4 isAvailable:(BOOL)a5 orchestrationMode:(unint64_t)a6 unavailabilityReasons:(unint64_t)a7;
- (void)handleCommand:(id)a3 executionContextInfo:(id)a4 reply:(id)a5;
- (void)prewarmWithAssistantId:(id)a3 languageCode:(id)a4 prewarmOptions:(unint64_t)a5 sharedUserId:(id)a6;
- (void)resumeDictationRecognitionWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7;
- (void)startCorrectionSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 previousUtterance:(id)a7 requestContextData:(id)a8;
- (void)startDirectActionRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 directAction:(id)a7 requestExecutionParameters:(id)a8 requestContextData:(id)a9;
- (void)startMultiUserTestRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 expectedSelectedSharedUserId:(id)a7 voiceIdConfidenceScores:(id)a8 requestContextData:(id)a9;
- (void)startSpeechDictationRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 dictationOptions:(id)a6;
- (void)startSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 location:(id)a6 asrOnServer:(BOOL)a7 requestContextData:(id)a8;
- (void)startTestSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 enableASR:(BOOL)a5 inputOrigin:(id)a6 location:(id)a7 jitContext:(id)a8 overrideModelPath:(id)a9 requestContextData:(id)a10;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)a3 requestId:(id)a4 fullSpeak:(id)a5 redactedFullSpeak:(id)a6 fullPrint:(id)a7 redactedFullPrint:(id)a8 listenAfterSpeaking:(BOOL)listenAfterSpeaking;
- (void)updateVoiceCommandContextWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7 disambiguationActive:(id)a8 cursorInVisibleText:(id)a9 favorCommandSuppression:(id)a10 abortCommandSuppression:(id)a11 undoEvent:(id)a12;
@end

@implementation SRDRequestDispatcher

- (SRDRequestDispatcher)initWithUnderlyingRequestDispatcher:(id)a3 requestDispatcherServiceHelper:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2237B60EC();
  swift_unknownObjectRelease();
  return SRDRequestDispatcher.init(underlyingRequestDispatcher:requestDispatcherServiceHelper:)(v6, a4);
}

- (SRDRequestDispatcher)initWithRequestDispatcherServiceHelper:(id)a3 bridgeConnectionListeners:(id)a4
{
  sub_223766240(0, &qword_28131A7D0, 0x277CEF1B8);
  v4 = sub_2237B5F2C();
  v5 = swift_unknownObjectRetain();
  return SRDRequestDispatcher.init(requestDispatcherServiceHelper:bridgeConnectionListeners:)(v5, v4);
}

- (void)cancelRequestWithAssistantId:(id)a3 requestId:(id)a4 reason:(int64_t)a5
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  v6 = self;
  SRDRequestDispatcher.cancelRequest(withAssistantId:requestId:reason:)();
}

- (id)commandsForDomain:(id)a3
{
  sub_2237B5E2C();
  v4 = self;
  SRDRequestDispatcher.commands(forDomain:)();

  v5 = sub_2237B5F1C();

  return v5;
}

- (id)domains
{
  v2 = self;
  SRDRequestDispatcher.domains()();

  v3 = sub_2237B5F1C();

  return v3;
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
  SRDRequestDispatcher.handle(_:executionContextInfo:reply:)();
  sub_2237A9414(v8);
}

- (BOOL)implementsCommand:(id)a3 forDomain:(id)a4
{
  v5 = sub_2237B5E2C();
  v7 = v6;
  v8 = sub_2237B5E2C();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LOBYTE(v8) = SRDRequestDispatcher.implementsCommand(_:forDomain:)(v12, v13);

  return v8 & 1;
}

- (BOOL)sessionExistsForAssistantId:(id)a3
{
  v4 = sub_2237B5E2C();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = SRDRequestDispatcher.sessionExists(forAssistantId:)(v8);

  return v4 & 1;
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
  SRDRequestDispatcher.prewarm(withAssistantId:languageCode:prewarmOptions:sharedUserId:)();
}

- (void)startSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 location:(id)a6 asrOnServer:(BOOL)a7 requestContextData:(id)a8
{
  v22 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  v19 = a6;
  v20 = a8;
  v21 = self;
  SRDRequestDispatcher.startSpeechRequest(withAssistantId:requestId:inputOrigin:location:asrOnServer:requestContextData:)(v22, v12, v13, v15, v16, v18, a6, a7, v20);
}

- (void)startTestSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 enableASR:(BOOL)a5 inputOrigin:(id)a6 location:(id)a7 jitContext:(id)a8 overrideModelPath:(id)a9 requestContextData:(id)a10
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  if (a8)
  {
    sub_2237B5F2C();
  }

  if (a9)
  {
    sub_2237B5E2C();
  }

  v12 = a7;
  v13 = a10;
  v14 = self;
  SRDRequestDispatcher.startTestSpeechRequest(withAssistantId:requestId:enableASR:inputOrigin:location:jitContext:overrideModelPath:requestContextData:)();
}

- (void)startDirectActionRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 directAction:(id)a7 requestExecutionParameters:(id)a8 requestContextData:(id)a9
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  if (a7)
  {
    sub_2237B5E2C();
    if (!a8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a8)
  {
LABEL_3:
    sub_2237B5DAC();
  }

LABEL_4:
  v12 = a9;
  v13 = self;
  SRDRequestDispatcher.startDirectActionRequest(withAssistantId:requestId:inputOrigin:utterance:directAction:requestExecutionParameters:requestContextData:)();
}

- (void)startCorrectionSpeechRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 previousUtterance:(id)a7 requestContextData:(id)a8
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  if (a7)
  {
    sub_2237B5E2C();
  }

  v10 = a8;
  v11 = self;
  SRDRequestDispatcher.startCorrectionSpeechRequest(withAssistantId:requestId:inputOrigin:utterance:previousUtterance:requestContextData:)();
}

- (void)startSpeechDictationRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 dictationOptions:(id)a6
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  if (a5)
  {
    sub_2237B5E2C();
  }

  v9 = a6;
  v10 = self;
  SRDRequestDispatcher.startSpeechDictationRequest(withAssistantId:requestId:inputOrigin:dictationOptions:)();
}

- (void)resumeDictationRecognitionWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7
{
  withAssistantId = sub_2237B5E2C();
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
  selectedText._countAndFlagsBits = v19;
  selectedText._object = v21;
  v23._countAndFlagsBits = withAssistantId;
  v23._object = v9;
  v24._countAndFlagsBits = v10;
  v24._object = v12;
  v25._countAndFlagsBits = v13;
  v25._object = v15;
  v26._countAndFlagsBits = v16;
  v26._object = v18;
  SRDRequestDispatcher.resumeDictationRecognition(withAssistantId:requestId:prefixText:postfixText:selectedText:)(v23, v24, v25, v26, selectedText);
}

- (void)updateVoiceCommandContextWithAssistantId:(id)a3 requestId:(id)a4 prefixText:(id)a5 postfixText:(id)a6 selectedText:(id)a7 disambiguationActive:(id)a8 cursorInVisibleText:(id)a9 favorCommandSuppression:(id)a10 abortCommandSuppression:(id)a11 undoEvent:(id)a12
{
  *&undoEvent = a12;
  v16 = sub_2237B5E2C();
  v44 = v17;
  *(&undoEvent + 1) = sub_2237B5E2C();
  v43 = v18;
  if (a5)
  {
    *(&abortCommandSuppression + 1) = sub_2237B5E2C();
    v42 = v19;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    *&abortCommandSuppression = 0;
    v41 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  *(&abortCommandSuppression + 1) = 0;
  v42 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  *&abortCommandSuppression = sub_2237B5E2C();
  v41 = v20;
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
  v37.is_nil = v23;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = self;
  v36.is_nil = v27;
  v37.value.super.super.isa = v28;
  v35.is_nil = v25;
  v36.value.super.super.isa = v26;
  selectedText.value._object = v23;
  v35.value.super.super.isa = v24;
  selectedText.value._countAndFlagsBits = v21;
  v30._countAndFlagsBits = v16;
  v30._object = v44;
  v31._countAndFlagsBits = *(&undoEvent + 1);
  v31._object = v43;
  v32.value._countAndFlagsBits = *(&abortCommandSuppression + 1);
  v33.value._countAndFlagsBits = abortCommandSuppression;
  v32.value._object = v42;
  v33.value._object = v41;
  SRDRequestDispatcher.updateVoiceCommandContext(withAssistantId:requestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)(v30, v31, v32, v33, selectedText, v35, v36, v37, abortCommandSuppression, undoEvent);
}

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)a3 requestId:(id)a4 fullSpeak:(id)a5 redactedFullSpeak:(id)a6 fullPrint:(id)a7 redactedFullPrint:(id)a8 listenAfterSpeaking:(BOOL)listenAfterSpeaking
{
  withAssistantId = sub_2237B5E2C();
  v15 = v14;
  v36 = sub_2237B5E2C();
  v17 = v16;
  if (a5)
  {
    redactedFullSpeak_8 = sub_2237B5E2C();
    a5 = v18;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    redactedFullSpeak = 0;
    v20 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  redactedFullSpeak_8 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  redactedFullSpeak = sub_2237B5E2C();
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

  redactedFullPrint.value._countAndFlagsBits = v25;
  redactedFullPrint.value._object = v27;
  fullPrint.value._countAndFlagsBits = v21;
  fullPrint.value._object = a7;
  v28._countAndFlagsBits = withAssistantId;
  v28._object = v15;
  v30.value._countAndFlagsBits = redactedFullSpeak_8;
  v29._countAndFlagsBits = v36;
  v29._object = v17;
  v30.value._object = a5;
  v31.value._countAndFlagsBits = redactedFullSpeak;
  v31.value._object = v20;
  SRDRequestDispatcher.updateConversationContextForRemoteResponse(withAssistantId:requestId:fullSpeak:redactedFullSpeak:fullPrint:redactedFullPrint:listenAfterSpeaking:)(v28, v29, v30, v31, fullPrint, redactedFullPrint, listenAfterSpeaking);
}

- (void)startMultiUserTestRequestWithAssistantId:(id)a3 requestId:(id)a4 inputOrigin:(id)a5 utterance:(id)a6 expectedSelectedSharedUserId:(id)a7 voiceIdConfidenceScores:(id)a8 requestContextData:(id)a9
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
}

- (void)emitAIREventForSiriAvailabiltyWithLocale:(id)a3 countryCode:(id)a4 isAvailable:(BOOL)a5 orchestrationMode:(unint64_t)a6 unavailabilityReasons:(unint64_t)a7
{
  v11 = sub_2237B5E2C();
  v13 = v12;
  v14 = sub_2237B5E2C();
  v16 = v15;
  v17 = self;
  SRDRequestDispatcher.emitAIREventForSiriAvailabilty(withLocale:countryCode:isAvailable:orchestrationMode:unavailabilityReasons:)(v11, v13, v14, v16, a5, a6, a7);
}

@end