@interface SRDRequestDispatcher
- (BOOL)implementsCommand:(id)command forDomain:(id)domain;
- (BOOL)sessionExistsForAssistantId:(id)id;
- (SRDRequestDispatcher)initWithRequestDispatcherServiceHelper:(id)helper bridgeConnectionListeners:(id)listeners;
- (SRDRequestDispatcher)initWithUnderlyingRequestDispatcher:(id)dispatcher requestDispatcherServiceHelper:(id)helper;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)cancelRequestWithAssistantId:(id)id requestId:(id)requestId reason:(int64_t)reason;
- (void)emitAIREventForSiriAvailabiltyWithLocale:(id)locale countryCode:(id)code isAvailable:(BOOL)available orchestrationMode:(unint64_t)mode unavailabilityReasons:(unint64_t)reasons;
- (void)handleCommand:(id)command executionContextInfo:(id)info reply:(id)reply;
- (void)prewarmWithAssistantId:(id)id languageCode:(id)code prewarmOptions:(unint64_t)options sharedUserId:(id)userId;
- (void)resumeDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)startCorrectionSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance previousUtterance:(id)previousUtterance requestContextData:(id)data;
- (void)startDirectActionRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance directAction:(id)action requestExecutionParameters:(id)parameters requestContextData:(id)data;
- (void)startMultiUserTestRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance expectedSelectedSharedUserId:(id)userId voiceIdConfidenceScores:(id)scores requestContextData:(id)data;
- (void)startSpeechDictationRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin dictationOptions:(id)options;
- (void)startSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin location:(id)location asrOnServer:(BOOL)server requestContextData:(id)data;
- (void)startTestSpeechRequestWithAssistantId:(id)id requestId:(id)requestId enableASR:(BOOL)r inputOrigin:(id)origin location:(id)location jitContext:(id)context overrideModelPath:(id)path requestContextData:(id)self0;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint listenAfterSpeaking:(BOOL)listenAfterSpeaking;
- (void)updateVoiceCommandContextWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)self0 abortCommandSuppression:(id)self1 undoEvent:(id)self2;
@end

@implementation SRDRequestDispatcher

- (SRDRequestDispatcher)initWithUnderlyingRequestDispatcher:(id)dispatcher requestDispatcherServiceHelper:(id)helper
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2237B60EC();
  swift_unknownObjectRelease();
  return SRDRequestDispatcher.init(underlyingRequestDispatcher:requestDispatcherServiceHelper:)(v6, helper);
}

- (SRDRequestDispatcher)initWithRequestDispatcherServiceHelper:(id)helper bridgeConnectionListeners:(id)listeners
{
  sub_223766240(0, &qword_28131A7D0, 0x277CEF1B8);
  v4 = sub_2237B5F2C();
  v5 = swift_unknownObjectRetain();
  return SRDRequestDispatcher.init(requestDispatcherServiceHelper:bridgeConnectionListeners:)(v5, v4);
}

- (void)cancelRequestWithAssistantId:(id)id requestId:(id)requestId reason:(int64_t)reason
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  selfCopy = self;
  SRDRequestDispatcher.cancelRequest(withAssistantId:requestId:reason:)();
}

- (id)commandsForDomain:(id)domain
{
  sub_2237B5E2C();
  selfCopy = self;
  SRDRequestDispatcher.commands(forDomain:)();

  v5 = sub_2237B5F1C();

  return v5;
}

- (id)domains
{
  selfCopy = self;
  SRDRequestDispatcher.domains()();

  v3 = sub_2237B5F1C();

  return v3;
}

- (void)handleCommand:(id)command executionContextInfo:(id)info reply:(id)reply
{
  v8 = _Block_copy(reply);
  if (v8)
  {
    *(swift_allocObject() + 16) = v8;
    v8 = sub_223775D98;
  }

  commandCopy = command;
  infoCopy = info;
  selfCopy = self;
  SRDRequestDispatcher.handle(_:executionContextInfo:reply:)();
  sub_2237A9414(v8);
}

- (BOOL)implementsCommand:(id)command forDomain:(id)domain
{
  v5 = sub_2237B5E2C();
  v7 = v6;
  v8 = sub_2237B5E2C();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LOBYTE(v8) = SRDRequestDispatcher.implementsCommand(_:forDomain:)(v12, v13);

  return v8 & 1;
}

- (BOOL)sessionExistsForAssistantId:(id)id
{
  v4 = sub_2237B5E2C();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = SRDRequestDispatcher.sessionExists(forAssistantId:)(v8);

  return v4 & 1;
}

- (void)prewarmWithAssistantId:(id)id languageCode:(id)code prewarmOptions:(unint64_t)options sharedUserId:(id)userId
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  if (userId)
  {
    sub_2237B5E2C();
  }

  selfCopy = self;
  SRDRequestDispatcher.prewarm(withAssistantId:languageCode:prewarmOptions:sharedUserId:)();
}

- (void)startSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin location:(id)location asrOnServer:(BOOL)server requestContextData:(id)data
{
  v22 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  locationCopy = location;
  dataCopy = data;
  selfCopy = self;
  SRDRequestDispatcher.startSpeechRequest(withAssistantId:requestId:inputOrigin:location:asrOnServer:requestContextData:)(v22, v12, v13, v15, v16, v18, location, server, dataCopy);
}

- (void)startTestSpeechRequestWithAssistantId:(id)id requestId:(id)requestId enableASR:(BOOL)r inputOrigin:(id)origin location:(id)location jitContext:(id)context overrideModelPath:(id)path requestContextData:(id)self0
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  if (context)
  {
    sub_2237B5F2C();
  }

  if (path)
  {
    sub_2237B5E2C();
  }

  locationCopy = location;
  dataCopy = data;
  selfCopy = self;
  SRDRequestDispatcher.startTestSpeechRequest(withAssistantId:requestId:enableASR:inputOrigin:location:jitContext:overrideModelPath:requestContextData:)();
}

- (void)startDirectActionRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance directAction:(id)action requestExecutionParameters:(id)parameters requestContextData:(id)data
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  if (action)
  {
    sub_2237B5E2C();
    if (!parameters)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (parameters)
  {
LABEL_3:
    sub_2237B5DAC();
  }

LABEL_4:
  dataCopy = data;
  selfCopy = self;
  SRDRequestDispatcher.startDirectActionRequest(withAssistantId:requestId:inputOrigin:utterance:directAction:requestExecutionParameters:requestContextData:)();
}

- (void)startCorrectionSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance previousUtterance:(id)previousUtterance requestContextData:(id)data
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  if (previousUtterance)
  {
    sub_2237B5E2C();
  }

  dataCopy = data;
  selfCopy = self;
  SRDRequestDispatcher.startCorrectionSpeechRequest(withAssistantId:requestId:inputOrigin:utterance:previousUtterance:requestContextData:)();
}

- (void)startSpeechDictationRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin dictationOptions:(id)options
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  if (origin)
  {
    sub_2237B5E2C();
  }

  optionsCopy = options;
  selfCopy = self;
  SRDRequestDispatcher.startSpeechDictationRequest(withAssistantId:requestId:inputOrigin:dictationOptions:)();
}

- (void)resumeDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
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
  selfCopy = self;
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

- (void)updateVoiceCommandContextWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)self0 abortCommandSuppression:(id)self1 undoEvent:(id)self2
{
  *&undoEvent = event;
  v16 = sub_2237B5E2C();
  v44 = v17;
  *(&undoEvent + 1) = sub_2237B5E2C();
  v43 = v18;
  if (text)
  {
    *(&abortCommandSuppression + 1) = sub_2237B5E2C();
    v42 = v19;
    if (postfixText)
    {
      goto LABEL_3;
    }

LABEL_6:
    *&abortCommandSuppression = 0;
    v41 = 0;
    if (selectedText)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  *(&abortCommandSuppression + 1) = 0;
  v42 = 0;
  if (!postfixText)
  {
    goto LABEL_6;
  }

LABEL_3:
  *&abortCommandSuppression = sub_2237B5E2C();
  v41 = v20;
  if (selectedText)
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
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  selfCopy = self;
  v36.is_nil = commandSuppressionCopy;
  v37.value.super.super.isa = eventCopy;
  v35.is_nil = visibleTextCopy;
  v36.value.super.super.isa = suppressionCopy;
  selectedText.value._object = v23;
  v35.value.super.super.isa = activeCopy;
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

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint listenAfterSpeaking:(BOOL)listenAfterSpeaking
{
  withAssistantId = sub_2237B5E2C();
  v15 = v14;
  v36 = sub_2237B5E2C();
  v17 = v16;
  if (speak)
  {
    redactedFullSpeak_8 = sub_2237B5E2C();
    speak = v18;
    if (fullSpeak)
    {
      goto LABEL_3;
    }

LABEL_6:
    redactedFullSpeak = 0;
    v20 = 0;
    if (print)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  redactedFullSpeak_8 = 0;
  if (!fullSpeak)
  {
    goto LABEL_6;
  }

LABEL_3:
  redactedFullSpeak = sub_2237B5E2C();
  v20 = v19;
  if (print)
  {
LABEL_4:
    v21 = sub_2237B5E2C();
    print = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  fullPrintCopy = fullPrint;
  selfCopy = self;
  if (fullPrintCopy)
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
  fullPrint.value._object = print;
  v28._countAndFlagsBits = withAssistantId;
  v28._object = v15;
  v30.value._countAndFlagsBits = redactedFullSpeak_8;
  v29._countAndFlagsBits = v36;
  v29._object = v17;
  v30.value._object = speak;
  v31.value._countAndFlagsBits = redactedFullSpeak;
  v31.value._object = v20;
  SRDRequestDispatcher.updateConversationContextForRemoteResponse(withAssistantId:requestId:fullSpeak:redactedFullSpeak:fullPrint:redactedFullPrint:listenAfterSpeaking:)(v28, v29, v30, v31, fullPrint, redactedFullPrint, listenAfterSpeaking);
}

- (void)startMultiUserTestRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance expectedSelectedSharedUserId:(id)userId voiceIdConfidenceScores:(id)scores requestContextData:(id)data
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
  sub_2237B5E2C();
}

- (void)emitAIREventForSiriAvailabiltyWithLocale:(id)locale countryCode:(id)code isAvailable:(BOOL)available orchestrationMode:(unint64_t)mode unavailabilityReasons:(unint64_t)reasons
{
  v11 = sub_2237B5E2C();
  v13 = v12;
  v14 = sub_2237B5E2C();
  v16 = v15;
  selfCopy = self;
  SRDRequestDispatcher.emitAIREventForSiriAvailabilty(withLocale:countryCode:isAvailable:orchestrationMode:unavailabilityReasons:)(v11, v13, v14, v16, available, mode, reasons);
}

@end