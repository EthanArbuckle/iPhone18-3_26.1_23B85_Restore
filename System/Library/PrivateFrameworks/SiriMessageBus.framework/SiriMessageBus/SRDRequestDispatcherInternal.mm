@interface SRDRequestDispatcherInternal
- (BOOL)implementsCommand:(id)command forDomain:(id)domain;
- (BOOL)sessionExistsForAssistantId:(id)id;
- (SRDRequestDispatcherInternal)initWithRequestDispatcherServiceHelper:(id)helper bridgeConnectionListeners:(id)listeners;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)announceNotificationHandlingStateUpdatedWithAssistantId:(id)id toState:(int64_t)state;
- (void)endDictationSessionWithAssistantId:(id)id;
- (void)endSessionWithAssistantId:(id)id withDelay:(BOOL)delay;
- (void)handleCommand:(id)command executionContextInfo:(id)info reply:(id)reply;
- (void)prewarmWithAssistantId:(id)id languageCode:(id)code prewarmOptions:(unint64_t)options sharedUserId:(id)userId;
- (void)resumeDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)sendMultiUserInfoWithDeviceAssistantId:(id)id multiUserInfo:(id)info isRMVEnabled:(BOOL)enabled;
- (void)startCorrectionSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance previousUtterance:(id)previousUtterance requestContextData:(id)data;
- (void)startDirectActionRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin directAction:(id)action requestExecutionParameters:(id)parameters requestContextData:(id)data;
- (void)startSessionWithConfiguration:(id)configuration;
- (void)startSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin location:(id)location asrOnServer:(BOOL)server requestContextData:(id)data;
- (void)startTestSpeechRequestWithAssistantId:(id)id requestId:(id)requestId enableASR:(BOOL)r inputOrigin:(id)origin location:(id)location jitContext:(id)context overrideModelPath:(id)path requestContextData:(id)self0;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint listenAfterSpeaking:(BOOL)speaking;
- (void)updateVoiceCommandContextWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)self0 abortCommandSuppression:(id)self1 undoEvent:(id)self2;
@end

@implementation SRDRequestDispatcherInternal

- (void)startSessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_2237613A8();
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
  sub_223771EF4();
  sub_223772558(v8);
}

- (SRDRequestDispatcherInternal)initWithRequestDispatcherServiceHelper:(id)helper bridgeConnectionListeners:(id)listeners
{
  sub_223766240(0, &qword_28131A7D0, 0x277CEF1B8);
  v4 = sub_2237B5F2C();
  v5 = swift_unknownObjectRetain();
  return RequestDispatcher.init(requestDispatcherServiceHelper:bridgeConnectionListeners:)(v5, v4);
}

- (id)domains
{
  selfCopy = self;
  sub_223791BE0();

  v3 = sub_2237B5F1C();

  return v3;
}

- (id)commandsForDomain:(id)domain
{
  sub_2237B5E2C();
  selfCopy = self;
  sub_2237920E8();

  v5 = sub_2237B5F1C();

  return v5;
}

- (BOOL)implementsCommand:(id)command forDomain:(id)domain
{
  sub_2237B5E2C();
  sub_2237B5E2C();
  selfCopy = self;
  sub_223792554();
  v7 = v6;

  return v7 & 1;
}

- (void)startSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin location:(id)location asrOnServer:(BOOL)server requestContextData:(id)data
{
  HIDWORD(v24) = server;
  v23 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  locationCopy = location;
  dataCopy = data;
  selfCopy = self;
  sub_223793580(v23, v12, v13, v15, v16, v18, location, HIDWORD(v24), dataCopy, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
}

- (BOOL)sessionExistsForAssistantId:(id)id
{
  sub_2237B5E2C();
  selfCopy = self;
  sub_223794E80();
  v6 = v5;

  return v6 & 1;
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
  sub_223795364();
}

- (void)endSessionWithAssistantId:(id)id withDelay:(BOOL)delay
{
  sub_2237B5E2C();
  selfCopy = self;
  sub_223795A24();
}

- (void)startTestSpeechRequestWithAssistantId:(id)id requestId:(id)requestId enableASR:(BOOL)r inputOrigin:(id)origin location:(id)location jitContext:(id)context overrideModelPath:(id)path requestContextData:(id)self0
{
  HIDWORD(v29) = r;
  pathCopy = path;
  v28 = sub_2237B5E2C();
  v14 = v13;
  v26 = sub_2237B5E2C();
  v16 = v15;
  v25 = sub_2237B5E2C();
  v18 = v17;
  if (context)
  {
    context = sub_2237B5F2C();
  }

  if (path)
  {
    v19 = sub_2237B5E2C();
    pathCopy = v20;
  }

  else
  {
    v19 = 0;
  }

  locationCopy = location;
  dataCopy = data;
  selfCopy = self;
  sub_2237962B8(v28, v14, v26, v16, HIDWORD(v29), v25, v18, location, context, v19, pathCopy, dataCopy, v24, v25, v26, self, v28, v29, v30, v31, v32, v33, v34);
}

- (void)startDirectActionRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin directAction:(id)action requestExecutionParameters:(id)parameters requestContextData:(id)data
{
  v25 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  if (action)
  {
    v19 = sub_2237B5E2C();
    action = v20;
    if (parameters)
    {
LABEL_3:
      v21 = sub_2237B5DAC();
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (parameters)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  dataCopy = data;
  selfCopy = self;
  sub_22379D7D0(v25, v12, v13, v15, v16, v18, v19, action, v21, dataCopy, self, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
}

- (void)startCorrectionSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance previousUtterance:(id)previousUtterance requestContextData:(id)data
{
  v26 = sub_2237B5E2C();
  v11 = v10;
  v24 = sub_2237B5E2C();
  v13 = v12;
  v14 = sub_2237B5E2C();
  v16 = v15;
  v17 = sub_2237B5E2C();
  v19 = v18;
  if (previousUtterance)
  {
    v20 = sub_2237B5E2C();
    previousUtterance = v21;
  }

  else
  {
    v20 = 0;
  }

  dataCopy = data;
  selfCopy = self;
  sub_22379E59C(v26, v11, v24, v13, v14, v16, v17, v19, v20, previousUtterance, dataCopy, v24, self, v26, v27, v28, v29, v30, v31, v32, v33, v34);
}

- (void)endDictationSessionWithAssistantId:(id)id
{
  sub_2237B5E2C();
  selfCopy = self;
  sub_2237A2018();
}

- (void)resumeDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
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
  selfCopy = self;
  sub_2237A2B38(v24, v9, v10, v12, v13, v15, v16, v18, v19, v21, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
}

- (void)updateVoiceCommandContextWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)self0 abortCommandSuppression:(id)self1 undoEvent:(id)self2
{
  *&v33 = self;
  v16 = sub_2237B5E2C();
  *&v35 = v17;
  v32 = sub_2237B5E2C();
  *(&v34 + 1) = v18;
  if (text)
  {
    v31 = sub_2237B5E2C();
    *&v34 = v19;
    if (postfixText)
    {
      goto LABEL_3;
    }

LABEL_6:
    v30 = 0;
    *(&v33 + 1) = 0;
    if (selectedText)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v31 = 0;
  *&v34 = 0;
  if (!postfixText)
  {
    goto LABEL_6;
  }

LABEL_3:
  v30 = sub_2237B5E2C();
  *(&v33 + 1) = v20;
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
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  v29 = v33;
  sub_2237A3588(v16, v35, v32, *(&v34 + 1), v31, v34, v30, *(&v33 + 1), v21, v23, activeCopy, visibleTextCopy, suppressionCopy, commandSuppressionCopy, eventCopy, v23, v30, v31, event, v32, v33, v34, v35);
}

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint
{
  v30 = sub_2237B5E2C();
  v14 = v13;
  v29 = sub_2237B5E2C();
  v16 = v15;
  if (speak)
  {
    v28 = sub_2237B5E2C();
    speak = v17;
    if (fullSpeak)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = 0;
    v19 = 0;
    if (print)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v28 = 0;
  if (!fullSpeak)
  {
    goto LABEL_6;
  }

LABEL_3:
  v27 = sub_2237B5E2C();
  v19 = v18;
  if (print)
  {
LABEL_4:
    v20 = sub_2237B5E2C();
    print = v21;
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  fullPrintCopy = fullPrint;
  selfCopy = self;
  if (fullPrintCopy)
  {
    v24 = sub_2237B5E2C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_2237A4184(v30, v14, v29, v16, v28, speak, v27, v19, v20, print, v24, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
}

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint listenAfterSpeaking:(BOOL)speaking
{
  HIDWORD(v32) = speaking;
  v33 = sub_2237B5E2C();
  v15 = v14;
  v31 = sub_2237B5E2C();
  v17 = v16;
  if (speak)
  {
    v30 = sub_2237B5E2C();
    speak = v18;
    if (fullSpeak)
    {
      goto LABEL_3;
    }

LABEL_6:
    v29 = 0;
    v20 = 0;
    if (print)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v30 = 0;
  if (!fullSpeak)
  {
    goto LABEL_6;
  }

LABEL_3:
  v29 = sub_2237B5E2C();
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

  LOBYTE(v28) = BYTE4(v32);
  sub_2237A46A8(v33, v15, v31, v17, v30, speak, v29, v20, v21, print, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
}

- (void)announceNotificationHandlingStateUpdatedWithAssistantId:(id)id toState:(int64_t)state
{
  sub_2237B5E2C();
  selfCopy = self;
  sub_2237A5538();
}

- (void)sendMultiUserInfoWithDeviceAssistantId:(id)id multiUserInfo:(id)info isRMVEnabled:(BOOL)enabled
{
  sub_2237B5E2C();
  infoCopy = info;
  selfCopy = self;
  sub_2237A5DAC(selfCopy, v10, infoCopy, enabled);
}

@end