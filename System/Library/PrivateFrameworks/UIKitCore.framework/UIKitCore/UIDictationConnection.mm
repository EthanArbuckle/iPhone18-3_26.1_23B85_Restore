@interface UIDictationConnection
+ (BOOL)dictationIsSupportedForLanguageCode:(id)code error:(id *)error;
+ (BOOL)dictationRestricted;
+ (BOOL)hasSpeechRecognitionPauseAckPhrases:(id)phrases;
+ (id)analytics;
+ (id)interpretationFromSpeechTokens:(id)tokens startIndex:(unint64_t)index filterBlock:(id)block;
+ (void)_updateFromGlobalOptions:(id)options;
+ (void)cacheSupportedDictationLanguages;
- (AFDictationConnection)connection;
- (BOOL)dictationIsAvailableForLanguage:(id)language;
- (BOOL)supportNewVoiceEditingCommandSPI;
- (UIDictationConnectionDelegate)delegate;
- (UIDictationConnectionTokenFilterProtocol)tokenFilter;
- (float)averagePower;
- (id)_createConnectionOptions;
- (id)_dictationOptions:(id)options;
- (id)_initializeWithOptions:(id)options;
- (id)_speechOptions:(id)options;
- (id)dictationSerializedResultWithPhrases:(id)phrases languageModel:(id)model;
- (id)languageDetectionUserContext;
- (id)speechMessageContexts;
- (int64_t)speechEventTypeForDictationActivationType:(unint64_t)type;
- (void)_startWithOptions:(id)options;
- (void)beginAvailabilityMonitoring;
- (void)cancelAvailabilityMonitoring;
- (void)cancelSpeech;
- (void)dictationConnection:(id)connection didBeginLocalRecognitionWithModelInfo:(id)info;
- (void)dictationConnection:(id)connection didDetectLanguage:(id)language confidenceScores:(id)scores isConfident:(BOOL)confident;
- (void)dictationConnection:(id)connection didReceiveSearchResults:(id)results recognizedText:(id)text stable:(BOOL)stable final:(BOOL)final;
- (void)dictationConnection:(id)connection didRecognizeFinalResultCandidatePackage:(id)package;
- (void)dictationConnection:(id)connection didRecognizeMultilingualSpeech:(id)speech;
- (void)dictationConnection:(id)connection didRecognizePartialPackage:(id)package nluResult:(id)result languageModel:(id)model;
- (void)dictationConnection:(id)connection didRecognizePartialResult:(id)result;
- (void)dictationConnection:(id)connection didRecognizePhrases:(id)phrases languageModel:(id)model correctionIdentifier:(id)identifier;
- (void)dictationConnection:(id)connection didRecognizeTokens:(id)tokens languageModel:(id)model;
- (void)dictationConnection:(id)connection didRecognizeVoiceCommandCandidatePackage:(id)package nluResult:(id)result;
- (void)dictationConnection:(id)connection languageDetectorFailedWithError:(id)error;
- (void)dictationConnection:(id)connection speechRecognitionDidFail:(id)fail;
- (void)dictationConnection:(id)connection speechRecordingDidBeginWithOptions:(id)options;
- (void)dictationConnection:(id)connection speechRecordingDidFail:(id)fail;
- (void)dictationConnectionDidPauseRecognition:(id)recognition;
- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)succeed;
- (void)dictationConnectionSpeechRecordingDidBegin:(id)begin;
- (void)dictationConnectionSpeechRecordingDidCancel:(id)cancel;
- (void)dictationConnectionSpeechRecordingDidEnd:(id)end;
- (void)dictationConnectionSpeechRecordingWillBegin:(id)begin;
- (void)dictationConnnectionDidChangeAvailability:(id)availability;
- (void)endSession;
- (void)euclidPhoneticString:(id)string maxResultsCount:(unint64_t)count completion:(id)completion;
- (void)logDidAcceptDictationResult:(id)result reason:(id)reason result:(id)a5 correctionIdentifier:(id)identifier;
- (void)logDidAcceptReplacement:(id)replacement replacementLanguageCode:(id)code originalText:(id)text correctionIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier;
- (void)logDidSelectAlternative:(id)alternative correctionIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier;
- (void)logDidShowAlternatives:(id)alternatives correctionIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier;
- (void)pauseSpeechRecognition;
- (void)preheat;
- (void)preheatEuclidModelWithLanguageCode:(id)code clientID:(id)d;
- (void)requestOfflineDictationSupportForLanguage:(id)language completion:(id)completion;
- (void)resumeSpeechRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)sendSpeechCorrection:(id)correction forIdentifier:(id)identifier;
- (void)sendSpeechCorrection:(id)correction interactionIdentifier:(id)identifier;
- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier;
- (void)start;
- (void)startForFileAtURL:(id)l forLanguage:(id)language;
- (void)stopSpeech:(id)speech activationType:(unint64_t)type result:(id)result suppressAlert:(BOOL)alert;
- (void)suppressLowStorageNotificationForLanguage:(id)language suppress:(BOOL)suppress;
- (void)synthesizeDidRecognizePhrases:(id)phrases languageModel:(id)model correctionIdentifier:(id)identifier;
- (void)synthesizeDidRecognizeTokens:(id)tokens languageModel:(id)model;
- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression;
- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0;
@end

@implementation UIDictationConnection

- (void)beginAvailabilityMonitoring
{
  connection = [(UIDictationConnection *)self connection];
  [connection beginAvailabilityMonitoring];
}

- (AFDictationConnection)connection
{
  p_connection = &self->_connection;
  connection = self->_connection;
  if (!connection)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_connection)
    {
      v6 = objc_alloc_init(getAFDictationConnectionClass());
      if (v6)
      {
        objc_storeStrong(p_connection, v6);
        [(AFDictationConnection *)*p_connection setDelegate:selfCopy];
        analytics = [objc_opt_class() analytics];
        v8 = dispatch_get_global_queue(9, 0);
        analyticsQueue = selfCopy->_analyticsQueue;
        selfCopy->_analyticsQueue = v8;
      }
    }

    objc_sync_exit(selfCopy);

    connection = *p_connection;
  }

  return connection;
}

+ (id)analytics
{
  if (qword_1ED49F208 != -1)
  {
    dispatch_once(&qword_1ED49F208, &__block_literal_global_364);
  }

  v3 = _MergedGlobals_1182;

  return v3;
}

void __34__UIDictationConnection_analytics__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = qword_1ED49F230;
  v8 = qword_1ED49F230;
  if (!qword_1ED49F230)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getAFAnalyticsClass_block_invoke;
    v4[3] = &unk_1E70F2F20;
    v4[4] = &v5;
    __getAFAnalyticsClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 sharedAnalytics];
  v3 = _MergedGlobals_1182;
  _MergedGlobals_1182 = v2;
}

- (void)cancelAvailabilityMonitoring
{
  connection = [(UIDictationConnection *)self connection];
  [connection cancelAvailabilityMonitoring];
}

+ (BOOL)dictationRestricted
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getAFDictationRestrictedSymbolLoc_ptr_0;
  v10 = getAFDictationRestrictedSymbolLoc_ptr_0;
  if (!getAFDictationRestrictedSymbolLoc_ptr_0)
  {
    v3 = AssistantServicesLibrary_0();
    v8[3] = dlsym(v3, "AFDictationRestricted");
    getAFDictationRestrictedSymbolLoc_ptr_0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (v2)
  {
    return v2();
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _AFDictationRestricted(void)"];
  [currentHandler handleFailureInFunction:v6 file:@"UIDictationConnection.m" lineNumber:67 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)dictationIsAvailableForLanguage:(id)language
{
  v4 = [language componentsSeparatedByString:@"_"];
  v5 = [v4 componentsJoinedByString:@"-"];

  connection = [(UIDictationConnection *)self connection];
  LOBYTE(v4) = [connection dictationIsAvailableForLanguage:v5];

  return v4;
}

- (void)sendSpeechCorrection:(id)correction forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  correctionCopy = correction;
  v10 = objc_alloc_init(getAFSpeechCorrectionInfoClass());
  [v10 setAlternativeSelectionCount:{objc_msgSend(correctionCopy, "alternativeSelectionCount")}];
  [v10 setCharacterModificationCount:{objc_msgSend(correctionCopy, "characterModificationCount")}];
  correctedText = [correctionCopy correctedText];

  [v10 setCorrectedText:correctedText];
  connection = [(UIDictationConnection *)self connection];
  [connection sendSpeechCorrection:v10 forIdentifier:identifierCopy];
}

- (void)sendSpeechCorrection:(id)correction interactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  correctionCopy = correction;
  v12 = objc_alloc_init(getAFSpeechCorrectionInfoClass());
  [v12 setAlternativeSelectionCount:{objc_msgSend(correctionCopy, "alternativeSelectionCount")}];
  [v12 setCharacterModificationCount:{objc_msgSend(correctionCopy, "characterModificationCount")}];
  [v12 setCharacterInsertionCount:{objc_msgSend(correctionCopy, "characterInsertionCount")}];
  [v12 setCharacterDeletionCount:{objc_msgSend(correctionCopy, "characterDeletionCount")}];
  [v12 setCharacterSubstitutionCount:{objc_msgSend(correctionCopy, "characterSubstitutionCount")}];
  correctedText = [correctionCopy correctedText];
  [v12 setCorrectedText:correctedText];

  recognizedTextInfo = [correctionCopy recognizedTextInfo];
  [v12 setRecognizedTextInfo:recognizedTextInfo];

  selectedAlternativesInfo = [correctionCopy selectedAlternativesInfo];

  [v12 setSelectedAlternativesInfo:selectedAlternativesInfo];
  connection = [(UIDictationConnection *)self connection];
  [connection sendSpeechCorrection:v12 interactionIdentifier:identifierCopy];
}

- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v8 = getAFSpeechVisualContextAndCorrectionsInfoClass_softClass;
  v23 = getAFSpeechVisualContextAndCorrectionsInfoClass_softClass;
  if (!getAFSpeechVisualContextAndCorrectionsInfoClass_softClass)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __getAFSpeechVisualContextAndCorrectionsInfoClass_block_invoke;
    v19[3] = &unk_1E70F2F20;
    v19[4] = &v20;
    __getAFSpeechVisualContextAndCorrectionsInfoClass_block_invoke(v19);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  v10 = objc_alloc_init(v8);
  speechMessageContexts = [(UIDictationConnection *)self speechMessageContexts];
  v12 = [speechMessageContexts count];

  if (v12)
  {
    speechMessageContexts2 = [(UIDictationConnection *)self speechMessageContexts];
    [v10 setMessagesContext:speechMessageContexts2];

    recognizedTextInfo = [infoCopy recognizedTextInfo];
    v15 = [recognizedTextInfo objectForKeyedSubscript:@"userEditedText"];
    [v10 setCorrectedText:v15];

    recognizedTextInfo2 = [infoCopy recognizedTextInfo];
    v17 = [recognizedTextInfo2 objectForKeyedSubscript:@"recognizedText"];
    [v10 setRecognizedText:v17];

    connection = [(UIDictationConnection *)self connection];
    [connection sendVisualContextAndCorrectionsInfo:v10 interactionIdentifier:identifierCopy];
  }
}

- (float)averagePower
{
  connection = [(UIDictationConnection *)self connection];
  [connection averagePower];
  v4 = v3;

  return v4;
}

+ (BOOL)dictationIsSupportedForLanguageCode:(id)code error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = [code componentsSeparatedByString:@"_"];
  v6 = [v5 componentsJoinedByString:@"-"];

  if (cachedDictationLanguageCodes)
  {
    v7 = [cachedDictationLanguageCodes containsObject:v6];
LABEL_6:

    LOBYTE(v9) = v7;
    return v9;
  }

  v17 = 0;
  v7 = [getAFDictationConnectionClass() dictationIsSupportedForLanguageCode:v6 error:&v17];
  v8 = v17;
  if (error || (v7 & 1) != 0)
  {

    goto LABEL_6;
  }

  v10 = v8;
  code = [v8 code];
  v12 = MEMORY[0x1E696ABC0];
  if (code == 402)
  {
    v20 = @"UIDictationConnectionUnderlyingError";
    v21[0] = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = v12;
    v15 = 1;
  }

  else
  {
    v18 = @"UIDictationConnectionUnderlyingError";
    v19 = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = v12;
    v15 = -1;
  }

  v9 = [v14 errorWithDomain:@"UIDictationConnection" code:v15 userInfo:v13];
  __break(1u);
  return v9;
}

+ (void)cacheSupportedDictationLanguages
{
  AFDictationConnectionClass = getAFDictationConnectionClass();

  [AFDictationConnectionClass fetchSupportedLanguageCodes:&__block_literal_global_113_2];
}

void __57__UIDictationConnection_cacheSupportedDictationLanguages__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 copy];
    v3 = cachedDictationLanguageCodes;
    cachedDictationLanguageCodes = v2;
  }
}

- (void)endSession
{
  connection = [(UIDictationConnection *)self connection];
  [connection endSession];
}

- (void)pauseSpeechRecognition
{
  v7 = *MEMORY[0x1E69E9840];
  self->_ignoreSpeechRecognitionResults = 1;
  v3 = _UIDictationConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[UIDictationConnection pauseSpeechRecognition]";
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "%s Setting _ignoreSpeechRecognitionResults to YES and calling pauseRecognition", &v5, 0xCu);
  }

  connection = [(UIDictationConnection *)self connection];
  [connection pauseRecognition];
}

- (void)resumeSpeechRecognitionWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  selectedTextCopy = selectedText;
  postfixTextCopy = postfixText;
  textCopy = text;
  connection = [(UIDictationConnection *)self connection];
  [connection resumeRecognitionWithPrefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy];
}

- (void)suppressLowStorageNotificationForLanguage:(id)language suppress:(BOOL)suppress
{
  suppressCopy = suppress;
  languageCopy = language;
  connection = [(UIDictationConnection *)self connection];
  [connection suppressLowStorageNotificationForLanguage:languageCopy suppress:suppressCopy];
}

- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  connection = [(UIDictationConnection *)self connection];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    connection2 = [(UIDictationConnection *)self connection];
    [connection2 updateVoiceCommandContextWithPrefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy disambiguationActive:activeCopy cursorInVisibleText:visibleTextCopy favorCommandSuppression:suppressionCopy abortCommandSuppression:commandSuppressionCopy];
  }
}

- (void)updateVoiceCommandContextWithPrefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)commandSuppression undoEvent:(id)self0
{
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  if ([(UIDictationConnection *)self supportNewVoiceEditingCommandSPI])
  {
    connection = [(UIDictationConnection *)self connection];
    [connection updateVoiceCommandContextWithPrefixText:textCopy postfixText:postfixTextCopy selectedText:selectedTextCopy disambiguationActive:activeCopy cursorInVisibleText:visibleTextCopy favorCommandSuppression:suppressionCopy abortCommandSuppression:commandSuppressionCopy undoEvent:eventCopy];
  }
}

- (BOOL)supportNewVoiceEditingCommandSPI
{
  connection = [(UIDictationConnection *)self connection];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)requestOfflineDictationSupportForLanguage:(id)language completion:(id)completion
{
  completionCopy = completion;
  languageCopy = language;
  connection = [(UIDictationConnection *)self connection];
  v10 = connection;
  if (completionCopy)
  {
    v9 = completionCopy;
  }

  else
  {
    v9 = &__block_literal_global_118_0;
  }

  [connection requestOfflineDictationSupportForLanguage:languageCopy completion:v9];
}

+ (void)_updateFromGlobalOptions:(id)options
{
  v3 = qword_1ED49F218;
  optionsCopy = options;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED49F218, &__block_literal_global_120_0);
  }

  v4 = +[UIKeyboard keyboardBundleIdentifier];
  [optionsCopy setApplicationName:v4];

  [optionsCopy setApplicationVersion:qword_1ED49F210];
  [optionsCopy setReleaseAudioSessionOnRecordingCompletion:0];
}

void __50__UIDictationConnection__updateFromGlobalOptions___block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v3 infoDictionary];
  v1 = [v0 objectForKey:*MEMORY[0x1E695E500]];
  v2 = qword_1ED49F210;
  qword_1ED49F210 = v1;
}

- (id)speechMessageContexts
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[UIDictationUtilities utilizeInputContextHistory];
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = v4;
  if (v3)
  {
    textInputTraits = [v4 textInputTraits];
    inputContextHistory = [textInputTraits inputContextHistory];

    tiInputContextHistory = [inputContextHistory tiInputContextHistory];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __46__UIDictationConnection_speechMessageContexts__block_invoke;
    v34[3] = &unk_1E7114B88;
    v35 = v2;
    [tiInputContextHistory enumerateAllContextEntryObjects:v34];
  }

  else
  {
    inputDelegate = [v4 inputDelegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = +[UIKeyboardImpl activeInstance];
      inputDelegate2 = [v10 inputDelegate];
      conversationContext = [inputDelegate2 conversationContext];

      if (conversationContext)
      {
        v13 = +[UIKeyboardImpl activeInstance];
        inputDelegate3 = [v13 inputDelegate];
        conversationContext2 = [inputDelegate3 conversationContext];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        entries = [conversationContext2 entries];
        v17 = [entries countByEnumeratingWithState:&v30 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(entries);
              }

              v21 = *(*(&v30 + 1) + 8 * i);
              v22 = objc_alloc_init(getAFSpeechMessagesContextClass());
              senderIdentifier = [v21 senderIdentifier];
              v24 = senderIdentifier;
              if (senderIdentifier)
              {
                v25 = senderIdentifier;
              }

              else
              {
                v25 = &stru_1EFB14550;
              }

              [v22 setSender:v25];

              text = [v21 text];
              if (text)
              {
                text2 = [v21 text];
                v36 = text2;
                v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
                [v22 setMessages:v28];
              }

              else
              {
                [v22 setMessages:MEMORY[0x1E695E0F0]];
              }

              [v2 addObject:v22];
            }

            v18 = [entries countByEnumeratingWithState:&v30 objects:v37 count:16];
          }

          while (v18);
        }
      }
    }

    else
    {
    }
  }

  return v2;
}

void __46__UIDictationConnection_speechMessageContexts__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![v3 entryType])
  {
    v4 = objc_alloc_init(getAFSpeechMessagesContextClass());
    v5 = [v3 senderName];
    v6 = [v5 givenName];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1EFB14550;
    }

    [v4 setSender:v8];

    v9 = [v3 text];
    if (v9)
    {
      v10 = [v3 text];
      v12[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v4 setMessages:v11];
    }

    else
    {
      [v4 setMessages:MEMORY[0x1E695E0F0]];
    }

    [*(a1 + 32) addObject:v4];
  }
}

- (id)languageDetectionUserContext
{
  v2 = +[UIDictationConnectionPreferences sharedInstance];
  isSmartLanguageSelectionEnabled = [v2 isSmartLanguageSelectionEnabled];

  if (isSmartLanguageSelectionEnabled)
  {
    v4 = +[UIDictationController activeSLSDictationLanguages];
    if (v4)
    {
      v5 = +[UIKeyboardInputModeController sharedInputModeController];
      v30 = 0;
      v31 = &v30;
      v32 = 0x2050000000;
      v6 = getAFLanguageDetectionUserContextClass_softClass;
      v33 = getAFLanguageDetectionUserContextClass_softClass;
      if (!getAFLanguageDetectionUserContextClass_softClass)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __getAFLanguageDetectionUserContextClass_block_invoke;
        v29[3] = &unk_1E70F2F20;
        v29[4] = &v30;
        __getAFLanguageDetectionUserContextClass_block_invoke(v29);
        v6 = v31[3];
      }

      v7 = v6;
      _Block_object_dispose(&v30, 8);
      v8 = objc_alloc_init(v6);
      [v8 setDictationLanguages:v4];
      v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v9 preferencesActions];
      inputModeSelectionSequence = [preferencesActions inputModeSelectionSequence];

      [v8 setWasLanguageToggled:{objc_msgSend(inputModeSelectionSequence, "count") < 3}];
      currentInputMode = [v5 currentInputMode];
      dictationLanguage = [currentInputMode dictationLanguage];
      [v8 setPrimaryLanguageCode:dictationLanguage];

      currentInputMode2 = [v5 currentInputMode];
      multilingualLanguages = [currentInputMode2 multilingualLanguages];
      [v8 setMultiLingualKeyboardLanguages:multilingualLanguages];

      currentInputModeInPreference = [v5 currentInputModeInPreference];
      identifier = [currentInputModeInPreference identifier];
      v18 = TIInputModeGetLanguageWithRegion();
      [v8 setGlobalLastUsedKeyboard:v18];

      v19 = +[UIKeyboardImpl activeInstance];
      textInputTraits = [v19 textInputTraits];
      keyboardType = [textInputTraits keyboardType];

      if (keyboardType == 126)
      {
        v22 = +[UIDictationController sharedInstance];
        lastMessageKeyboardLanguage = [v22 lastMessageKeyboardLanguage];

        v24 = +[UIKeyboardImpl activeInstance];
        textInputTraits2 = [v24 textInputTraits];
        inputContextHistory = [textInputTraits2 inputContextHistory];

        v27 = [inputContextHistory mostRecentTextEntries:10];
        [v8 setKeyboardConvoRecentMessages:v27];

        [v8 setPrevMessageLanguage:lastMessageKeyboardLanguage];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_dictationOptions:(id)options
{
  optionsCopy = options;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v5 = getAFDictationOptionsClass_softClass;
  v39 = getAFDictationOptionsClass_softClass;
  if (!getAFDictationOptionsClass_softClass)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __getAFDictationOptionsClass_block_invoke;
    v35[3] = &unk_1E70F2F20;
    v35[4] = &v36;
    __getAFDictationOptionsClass_block_invoke(v35);
    v5 = v37[3];
  }

  v6 = v5;
  _Block_object_dispose(&v36, 8);
  v7 = objc_alloc_init(v5);
  [objc_opt_class() _updateFromGlobalOptions:v7];
  [v7 setFieldLabel:&stru_1EFB14550];
  fieldIdentifier = [optionsCopy fieldIdentifier];
  [v7 setFieldIdentifier:fieldIdentifier];

  if (objc_opt_respondsToSelector())
  {
    layoutIdentifier = [optionsCopy layoutIdentifier];
    [v7 setKeyboardIdentifier:layoutIdentifier];
  }

  keyboardType = [optionsCopy keyboardType];
  v11 = 1;
  if (keyboardType > 6)
  {
    if (keyboardType > 9)
    {
      if (keyboardType == 10)
      {
        v11 = 12;
        goto LABEL_33;
      }

      if (keyboardType == 11)
      {
        v11 = 14;
        goto LABEL_33;
      }

      if (keyboardType != 123)
      {
        goto LABEL_33;
      }

LABEL_29:
      v11 = 4;
      goto LABEL_33;
    }

    v12 = 8;
    v13 = 6;
    v14 = 11;
    if (keyboardType != 9)
    {
      v14 = 1;
    }

    if (keyboardType != 8)
    {
      v13 = v14;
    }

    v15 = keyboardType == 7;
LABEL_23:
    if (v15)
    {
      v11 = v12;
    }

    else
    {
      v11 = v13;
    }

    goto LABEL_33;
  }

  if (keyboardType > 3)
  {
    v12 = 5;
    v13 = 9;
    v16 = 10;
    if (keyboardType != 6)
    {
      v16 = 1;
    }

    if (keyboardType != 5)
    {
      v13 = v16;
    }

    v15 = keyboardType == 4;
    goto LABEL_23;
  }

  switch(keyboardType)
  {
    case 1:
      v11 = 2;
      break;
    case 2:
      goto LABEL_29;
    case 3:
      v11 = 7;
      break;
  }

LABEL_33:
  [v7 setKeyboardType:v11];
  returnKeyType = [optionsCopy returnKeyType];
  if (returnKeyType > 0xB)
  {
    v18 = 0;
  }

  else
  {
    v18 = qword_18A67F520[returnKeyType];
  }

  [v7 setReturnKeyType:v18];
  if ([v7 returnKeyType] != 7 && +[UIDictationController isInputDelegateSafariAddressBar](UIDictationController, "isInputDelegateSafariAddressBar"))
  {
    [v7 setReturnKeyType:7];
  }

  [v7 setSecureOfflineOnly:{objc_msgSend(optionsCopy, "secureInput")}];
  if ([optionsCopy acceptsDictationSearchResults])
  {
    [v7 setVoiceSearchTypeOptions:1];
  }

  prefixText = [optionsCopy prefixText];
  [v7 setPrefixText:prefixText];

  postfixText = [optionsCopy postfixText];
  [v7 setPostfixText:postfixText];

  selectedText = [optionsCopy selectedText];
  [v7 setSelectedText:selectedText];

  v22 = +[UIDictationController sharedInstance];
  dictationRequestOrigin = [v22 dictationRequestOrigin];
  [v7 setDictationInputOrigin:{objc_msgSend(dictationRequestOrigin, "integerValue")}];

  v24 = +[UIDictationController sharedInstance];
  LOBYTE(dictationRequestOrigin) = [v24 smartLanguageSelectionOverridden];

  if ((dictationRequestOrigin & 1) == 0)
  {
    languageDetectionUserContext = [(UIDictationConnection *)self languageDetectionUserContext];
    [v7 setLanguageDetectionUserContext:languageDetectionUserContext];
  }

  [v7 setPreferOnlineRecognition:{+[UIDictationController shouldPreferOnlineRecognition](UIDictationController, "shouldPreferOnlineRecognition")}];
  [v7 setPreferOnDeviceRecognition:{+[UIDictationController shouldPreferOnDeviceRecognition](UIDictationController, "shouldPreferOnDeviceRecognition")}];
  if (([v7 preferOnlineRecognition] & 1) == 0)
  {
    languageDetectionUserContext2 = [v7 languageDetectionUserContext];
    if (languageDetectionUserContext2)
    {
    }

    else if ([v7 returnKeyType] != 7)
    {
      v27 = +[UIDictationConnectionPreferences sharedInstance];
      languageCode = [optionsCopy languageCode];
      v29 = [v27 isOnDeviceDictationSupportAvailableForLanguage:languageCode];

      [v7 setEmojiRecognition:v29];
      if (_os_feature_enabled_impl())
      {
        [v7 setDetectUtterances:1];
        [v7 setContinuousListening:1];
        [v7 setShouldHandleCapitalization:1];
        if (v29)
        {
          shouldRecognizeCommands = [optionsCopy shouldRecognizeCommands];
        }

        else
        {
          shouldRecognizeCommands = 0;
        }

        [v7 setShouldRecognizeCommands:shouldRecognizeCommands];
        [v7 setMaximumRecognitionDuration:-1.0];
      }
    }
  }

  if ([v7 returnKeyType] != 7)
  {
    [v7 setAutoPunctuation:{objc_msgSend(optionsCopy, "autoPunctuation")}];
  }

  v31 = +[UIDictationController sharedInstance];
  interactionIdentifier = [v31 interactionIdentifier];
  [v7 setInteractionIdentifier:interactionIdentifier];

  if (_os_feature_enabled_impl() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    speechMessageContexts = [(UIDictationConnection *)self speechMessageContexts];
    [v7 setMessagesContext:speechMessageContexts];
  }

  return v7;
}

- (int64_t)speechEventTypeForDictationActivationType:(unint64_t)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return qword_18A67F580[type];
  }
}

- (id)_speechOptions:(id)options
{
  optionsCopy = options;
  v5 = [objc_alloc(getAFSpeechRequestOptionsClass()) initWithActivationEvent:{-[UIDictationConnection speechEventTypeForDictationActivationType:](self, "speechEventTypeForDictationActivationType:", objc_msgSend(optionsCopy, "activationType"))}];
  [v5 setUseStreamingDictation:1];
  if ([optionsCopy useAutomaticEndpointing])
  {
    if ([optionsCopy secureInput])
    {
      v6 = 0;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 0;
  }

  [v5 setEndpointerOperationMode:v6];
  activationIdentifier = [optionsCopy activationIdentifier];
  [v5 setActivationDeviceIdentifier:activationIdentifier];

  turnIdentifier = [optionsCopy turnIdentifier];
  [v5 setTurnIdentifier:turnIdentifier];

  return v5;
}

- (id)_createConnectionOptions
{
  v3 = objc_alloc_init(UIDictationConnectionOptions);
  [(UIDictationConnectionOptions *)v3 setVersion:1];
  [(UIDictationConnectionOptions *)v3 setActivationType:0];
  [(UIDictationConnectionOptions *)v3 setLanguageCode:0];
  [(UIDictationConnectionOptions *)v3 setRegionCode:0];
  [(UIDictationConnectionOptions *)v3 setFieldIdentifier:&stru_1EFB14550];
  [(UIDictationConnectionOptions *)v3 setActivationIdentifier:0];
  [(UIDictationConnectionOptions *)v3 setLayoutIdentifier:0];
  [(UIDictationConnectionOptions *)v3 setKeyboardType:0];
  [(UIDictationConnectionOptions *)v3 setReturnKeyType:0];
  [(UIDictationConnectionOptions *)v3 setSecureInput:0];
  [(UIDictationConnectionOptions *)v3 setUseAutomaticEndpointing:1];
  [(UIDictationConnectionOptions *)v3 setAcceptsDictationSearchResults:0];
  [(UIDictationConnectionOptions *)v3 setPrefixText:0];
  [(UIDictationConnectionOptions *)v3 setSelectedText:0];
  [(UIDictationConnectionOptions *)v3 setPostfixText:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dictationConnection:self updateOptions:v3];

  self->_offlineOnly = [(UIDictationConnectionOptions *)v3 secureInput];

  return v3;
}

- (void)start
{
  _createConnectionOptions = [(UIDictationConnection *)self _createConnectionOptions];
  v3 = [(UIDictationConnection *)self _initializeWithOptions:?];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didFailRecordingWithError:v3];
  }

  else
  {
    WeakRetained = +[UIKeyboardImpl sharedInstance];
    inputDelegate = [WeakRetained inputDelegate];
    self->_charBeforeInsertionPointOnDictationStart = [inputDelegate _characterBeforeCaretSelection];

    inputDelegate2 = [WeakRetained inputDelegate];
    self->_charAfterInsertionPointOnDictationStart = [inputDelegate2 _characterAfterCaretSelection];

    [(UIDictationConnection *)self _startWithOptions:_createConnectionOptions];
  }
}

- (void)startForFileAtURL:(id)l forLanguage:(id)language
{
  lCopy = l;
  languageCopy = language;
  _createConnectionOptions = [(UIDictationConnection *)self _createConnectionOptions];
  v8 = [(UIDictationConnection *)self _initializeWithOptions:_createConnectionOptions];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didFailRecordingWithError:v8];
  }

  else
  {
    WeakRetained = [(UIDictationConnection *)self _dictationOptions:_createConnectionOptions];
    connection = [(UIDictationConnection *)self connection];
    [connection startDictationWithSpeechFileAtURL:lCopy options:WeakRetained forLanguage:languageCopy];
  }
}

- (id)_initializeWithOptions:(id)options
{
  connection = [(UIDictationConnection *)self connection];
  if (connection)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UIDictationConnection" code:0 userInfo:0];
  }

  return v4;
}

- (void)_startWithOptions:(id)options
{
  v74[4] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = +[UIDictationController sharedInstance];
  smartLanguageSelectionOverridden = [v5 smartLanguageSelectionOverridden];

  if (smartLanguageSelectionOverridden)
  {
    regionCode = +[UIDictationController sharedInstance];
    smartLanguageSelectionOverrideLanguage = [(__CFString *)regionCode smartLanguageSelectionOverrideLanguage];
  }

  else
  {
    languageCode = [optionsCopy languageCode];
    v10 = languageCode;
    if (languageCode)
    {
      languageCode2 = languageCode;
    }

    else
    {
      preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
      languageCode2 = [preferredLocale languageCode];
    }

    regionCode = [optionsCopy regionCode];
    if ([(__CFString *)languageCode2 isEqualToString:@"ko"]&& [(__CFString *)regionCode isEqualToString:@"KO"])
    {

      regionCode = @"KR";
    }

    else if (!regionCode)
    {
      goto LABEL_12;
    }

    smartLanguageSelectionOverrideLanguage = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", languageCode2, regionCode];
  }

  languageCode2 = smartLanguageSelectionOverrideLanguage;
LABEL_12:
  [optionsCopy setLanguageCode:languageCode2];
  v13 = [(UIDictationConnection *)self _dictationOptions:optionsCopy];
  [(UIDictationConnection *)self setDictationOptions:v13];

  v14 = [(UIDictationConnection *)self _speechOptions:optionsCopy];
  v15 = +[UIDictationController sharedInstance];
  reasonType = [v15 reasonType];

  v17 = [UIDictationController UIDictationStartStopReasonTypeDescription:reasonType];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1EFB14550;
  }

  v74[0] = v19;
  v73[0] = @"startDictation";
  v73[1] = @"leftContext";
  prefixText = [optionsCopy prefixText];
  v21 = prefixText;
  if (prefixText)
  {
    v22 = prefixText;
  }

  else
  {
    v22 = &stru_1EFB14550;
  }

  v74[1] = v22;
  v73[2] = @"rightContext";
  postfixText = [optionsCopy postfixText];
  v24 = postfixText;
  if (postfixText)
  {
    v25 = postfixText;
  }

  else
  {
    v25 = &stru_1EFB14550;
  }

  v74[2] = v25;
  v73[3] = @"selectedText";
  selectedText = [optionsCopy selectedText];
  v27 = selectedText;
  if (selectedText)
  {
    v28 = selectedText;
  }

  else
  {
    v28 = &stru_1EFB14550;
  }

  v74[3] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:4];
  v64 = v14;
  [v14 setStartContext:v29];

  v30 = _UIDictationConnectionLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    dictationOptions = [(UIDictationConnection *)self dictationOptions];
    if ([dictationOptions preferOnlineRecognition])
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    *buf = 136315394;
    v66 = "[UIDictationConnection _startWithOptions:]";
    v67 = 2112;
    v68 = v32;
    _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_DEFAULT, "%s shouldPreferOnlineRecognition=%@", buf, 0x16u);
  }

  dictationOptions2 = [(UIDictationConnection *)self dictationOptions];
  languageDetectionUserContext = [dictationOptions2 languageDetectionUserContext];

  v35 = [languageDetectionUserContext userContextLanguageCodeForKeyboardLangauge:languageCode2 overrideLanguageCode:0];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = languageCode2;
  }

  v38 = v37;

  v39 = [v38 componentsSeparatedByString:@"-"];

  v40 = [v39 componentsJoinedByString:@"_"];

  [(UIDictationConnection *)self setLastUsedPrimaryLanguage:v40];
  [(UIDictationConnection *)self setLastUsedDetectedLanguage:0];
  [(UIDictationConnection *)self setLastUsedTopLanguages:0];
  [(UIDictationConnection *)self setLowConfidenceAboutLanguageDetection:0];
  [(UIDictationConnection *)self setReceivedMultilingualResultsCommand:0];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(UIDictationConnection *)self setLastReceivedPartials:dictionary];

  v42 = _UIDictationConnectionLog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    dictationOptions3 = [(UIDictationConnection *)self dictationOptions];
    languageDetectionUserContext2 = [dictationOptions3 languageDetectionUserContext];
    *buf = 136315906;
    v45 = @"YES";
    if (languageDetectionUserContext2)
    {
      v45 = @"NO";
    }

    v66 = "[UIDictationConnection _startWithOptions:]";
    v67 = 2112;
    v68 = languageCode2;
    v69 = 2112;
    v70 = v40;
    v71 = 2112;
    v72 = v45;
    _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_DEFAULT, "%s languageCode %@ siriDictationWithLanguageCode %@ monolingual %@", buf, 0x2Au);
  }

  v46 = +[UIDictationConnectionPreferences sharedInstance];
  v47 = [v46 isOnDeviceDictationSupportAvailableForLanguage:languageCode2];
  v48 = +[UIKeyboardInputMode dictationInputMode];
  [v48 setIsCurrentDictationLanguageOnDevice:v47];

  dictationOptions4 = [(UIDictationConnection *)self dictationOptions];
  if ([dictationOptions4 detectUtterances])
  {
    v50 = +[UIKeyboardInputMode dictationInputMode];
    isCurrentDictationLanguageOnDevice = [v50 isCurrentDictationLanguageOnDevice];

    if (isCurrentDictationLanguageOnDevice)
    {
      v52 = +[UIKeyboard isMajelEnabled];
      v53 = +[UIKeyboardInputMode dictationInputMode];
      [v53 setUsingTypeAndTalk:v52];

      v54 = _UIDictationConnectionLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = +[UIKeyboardInputMode dictationInputMode];
        usingTypeAndTalk = [v55 usingTypeAndTalk];
        *buf = 136315394;
        v66 = "[UIDictationConnection _startWithOptions:]";
        v67 = 1024;
        LODWORD(v68) = usingTypeAndTalk;
        _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_DEFAULT, "%s usingTypeAndTalk = %d", buf, 0x12u);
      }

      goto LABEL_43;
    }
  }

  else
  {
  }

  v57 = +[UIKeyboardInputMode dictationInputMode];
  usingTypeAndTalk2 = [v57 usingTypeAndTalk];

  if (!usingTypeAndTalk2)
  {
    goto LABEL_44;
  }

  v54 = +[UIKeyboardInputMode dictationInputMode];
  [v54 setUsingTypeAndTalk:0];
LABEL_43:

LABEL_44:
  v59 = _UIDictationConnectionLog();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    ignoreSpeechRecognitionResults = self->_ignoreSpeechRecognitionResults;
    *buf = 136315394;
    v66 = "[UIDictationConnection _startWithOptions:]";
    v67 = 1024;
    LODWORD(v68) = ignoreSpeechRecognitionResults;
    _os_log_impl(&dword_188A29000, v59, OS_LOG_TYPE_DEFAULT, "%s Setting _ignoreSpeechRecognitionResults=%d", buf, 0x12u);
  }

  self->_ignoreSpeechRecognitionResults = 0;
  v61 = _UIDictationConnectionLog();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v66 = "[UIDictationConnection _startWithOptions:]";
    _os_log_impl(&dword_188A29000, v61, OS_LOG_TYPE_DEFAULT, "%s Calling startDictationWithLanguageCode on delegate", buf, 0xCu);
  }

  connection = [(UIDictationConnection *)self connection];
  dictationOptions5 = [(UIDictationConnection *)self dictationOptions];
  [connection startDictationWithLanguageCode:languageCode2 options:dictationOptions5 speechOptions:v64];
}

- (void)stopSpeech:(id)speech activationType:(unint64_t)type result:(id)result suppressAlert:(BOOL)alert
{
  alertCopy = alert;
  v24[1] = *MEMORY[0x1E69E9840];
  speechCopy = speech;
  resultCopy = result;
  v12 = [objc_alloc(getAFSpeechRequestOptionsClass()) initWithActivationEvent:{-[UIDictationConnection speechEventTypeForDictationActivationType:](self, "speechEventTypeForDictationActivationType:", type)}];
  if (alertCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 setSuppressStopAlert:1];
  }

  v23 = @"stopDictation";
  v24[0] = speechCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [v12 setStopContext:v13];

  if (resultCopy)
  {
    v14 = MEMORY[0x1E695DF90];
    stopContext = [v12 stopContext];
    v16 = [v14 dictionaryWithDictionary:stopContext];

    if (speechCopy)
    {
      v17 = speechCopy;
    }

    else
    {
      v17 = &stru_1EFB14550;
    }

    [v16 setObject:v17 forKey:@"submitDictation"];
    v18 = [UIDictationController removeTextIfNeeded:resultCopy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1EFB14550;
    }

    [v16 setObject:v20 forKey:@"recognitionResult"];

    v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v16];
    [v12 setStopContext:v21];
  }

  connection = [(UIDictationConnection *)self connection];
  [connection stopSpeechWithOptions:v12];
}

- (void)cancelSpeech
{
  v3 = +[UIDictationController sharedInstance];
  reasonType = [v3 reasonType];

  if (reasonType == 20)
  {
    v5 = +[UIDictationController sharedInstance];
    lastHypothesis = [v5 lastHypothesis];

    v7 = +[UIDictationController sharedInstance];
    keyboardInputModeToReturn = [v7 keyboardInputModeToReturn];
    primaryLanguage = [keyboardInputModeToReturn primaryLanguage];

    v10 = +[UIDictationController sharedInstance];
    interactionIdentifier = [v10 interactionIdentifier];

    analyticsQueue = self->_analyticsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__UIDictationConnection_cancelSpeech__block_invoke;
    block[3] = &unk_1E70F6228;
    v18 = lastHypothesis;
    v19 = primaryLanguage;
    v20 = interactionIdentifier;
    v13 = interactionIdentifier;
    v14 = primaryLanguage;
    v15 = lastHypothesis;
    dispatch_async(analyticsQueue, block);
  }

  connection = [(UIDictationConnection *)self connection];
  [connection cancelSpeech];
}

void __37__UIDictationConnection_cancelSpeech__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [UIDictationController UIDictationStartStopReasonTypeDescription:20];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1EFB14550;
  }

  v10[0] = @"stopDictation";
  v10[1] = @"submitDictation";
  v11[0] = v4;
  v11[1] = v4;
  v10[2] = @"recognitionResult";
  v5 = [UIDictationController removeTextIfNeeded:*(a1 + 32)];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1EFB14550;
  }

  v11[2] = v7;
  v10[3] = 0x1EFB73D90;
  v10[4] = @"dictationUIInteractionIdentifier";
  v12 = vbslq_s8(vceqzq_s64(*(a1 + 40)), vdupq_n_s64(&stru_1EFB14550), *(a1 + 40));
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v9 = +[UIDictationConnection analytics];
  [v9 logEventWithType:2202 context:v8];
}

- (void)logDidShowAlternatives:(id)alternatives correctionIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier
{
  alternativesCopy = alternatives;
  identifierCopy = identifier;
  interactionIdentifierCopy = interactionIdentifier;
  analyticsQueue = self->_analyticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__UIDictationConnection_logDidShowAlternatives_correctionIdentifier_interactionIdentifier___block_invoke;
  block[3] = &unk_1E70F6228;
  v16 = alternativesCopy;
  v17 = identifierCopy;
  v18 = interactionIdentifierCopy;
  v12 = interactionIdentifierCopy;
  v13 = identifierCopy;
  v14 = alternativesCopy;
  dispatch_async(analyticsQueue, block);
}

void __91__UIDictationConnection_logDidShowAlternatives_correctionIdentifier_interactionIdentifier___block_invoke(void *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  if (v1)
  {
    v12[0] = @"alternatesShown";
    v12[1] = @"correctionIdentifier";
    v2 = MEMORY[0x1E695E0F8];
    v3 = a1[6];
    if (a1[5])
    {
      v2 = a1[5];
    }

    v13[0] = v1;
    v13[1] = v2;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = &stru_1EFB14550;
    }

    v13[2] = v4;
    v12[2] = @"dictationUIInteractionIdentifier";
    v12[3] = 0x1EFB73D90;
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 currentInputMode];
    v7 = [v6 primaryLanguage];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1EFB14550;
    }

    v13[3] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

    v11 = +[UIDictationConnection analytics];
    [v11 logEventWithType:2202 context:v10];
  }
}

- (void)logDidSelectAlternative:(id)alternative correctionIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier
{
  alternativeCopy = alternative;
  identifierCopy = identifier;
  interactionIdentifierCopy = interactionIdentifier;
  analyticsQueue = self->_analyticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__UIDictationConnection_logDidSelectAlternative_correctionIdentifier_interactionIdentifier___block_invoke;
  block[3] = &unk_1E70F6228;
  v16 = alternativeCopy;
  v17 = identifierCopy;
  v18 = interactionIdentifierCopy;
  v12 = interactionIdentifierCopy;
  v13 = identifierCopy;
  v14 = alternativeCopy;
  dispatch_async(analyticsQueue, block);
}

void __92__UIDictationConnection_logDidSelectAlternative_correctionIdentifier_interactionIdentifier___block_invoke(void *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  if (v1)
  {
    v12[0] = @"alternateSelected";
    v12[1] = @"correctionIdentifier";
    v2 = MEMORY[0x1E695E0F8];
    v3 = a1[6];
    if (a1[5])
    {
      v2 = a1[5];
    }

    v13[0] = v1;
    v13[1] = v2;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = &stru_1EFB14550;
    }

    v13[2] = v4;
    v12[2] = @"dictationUIInteractionIdentifier";
    v12[3] = 0x1EFB73D90;
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 currentInputMode];
    v7 = [v6 primaryLanguage];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_1EFB14550;
    }

    v13[3] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

    v11 = +[UIDictationConnection analytics];
    [v11 logEventWithType:2202 context:v10];
  }
}

- (void)logDidAcceptDictationResult:(id)result reason:(id)reason result:(id)a5 correctionIdentifier:(id)identifier
{
  resultCopy = result;
  reasonCopy = reason;
  v12 = a5;
  identifierCopy = identifier;
  if (![resultCopy count])
  {
    v14 = 0;
    goto LABEL_6;
  }

  v14 = [UIDictationController whitelistedDictationDictionariesFromMetadataDictionaries:resultCopy];
  if (!v14)
  {
LABEL_6:
    v20 = 0;
    v15 = 0;
    goto LABEL_7;
  }

  v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
  if (v15)
  {
    v26 = MEMORY[0x1E695DFD8];
    v27 = MEMORY[0x1E696ACD0];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v26 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v20 = [v27 unarchivedObjectOfClasses:v19 fromData:v15 error:0];

    v14 = v19;
  }

  else
  {
    v20 = 0;
  }

LABEL_7:

  analyticsQueue = self->_analyticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__UIDictationConnection_logDidAcceptDictationResult_reason_result_correctionIdentifier___block_invoke;
  block[3] = &unk_1E70F6B40;
  v29 = v20;
  v30 = reasonCopy;
  v31 = v12;
  v32 = identifierCopy;
  v22 = identifierCopy;
  v23 = v12;
  v24 = reasonCopy;
  v25 = v20;
  dispatch_async(analyticsQueue, block);
}

void __88__UIDictationConnection_logDidAcceptDictationResult_reason_result_correctionIdentifier___block_invoke(uint64_t a1)
{
  v32[5] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (!v3)
    {
      v3 = &stru_1EFB14550;
    }

    v32[0] = v3;
    v31[0] = @"submitDictation";
    v31[1] = @"recognitionResult";
    v4 = *(a1 + 48);
    v5 = [v2 lastObject];
    v6 = [UIDictationController removeTextIfNeeded:v4 metadata:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1EFB14550;
    }

    v9 = *(a1 + 32);
    v32[1] = v8;
    v32[2] = v9;
    v31[2] = @"edits";
    v31[3] = 0x1EFB73D90;
    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    v11 = [v10 currentInputMode];
    v12 = [v11 primaryLanguage];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_1EFB14550;
    }

    v32[3] = v14;
    v31[4] = @"dictationUIInteractionIdentifier";
    v15 = +[UIDictationController sharedInstance];
    v16 = [v15 interactionIdentifier];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &stru_1EFB14550;
    }

    v32[4] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:5];
  }

  else
  {
    v26[0] = @"submitDictation";
    v26[1] = @"recognitionResult";
    v27 = vbslq_s8(vceqzq_s64(*(a1 + 40)), vdupq_n_s64(&stru_1EFB14550), *(a1 + 40));
    v20 = *(a1 + 56);
    if (!v20)
    {
      v20 = MEMORY[0x1E695E0F8];
    }

    v28 = v20;
    v26[2] = @"correctionIdentifier";
    v26[3] = 0x1EFB73D90;
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v7 = [v5 currentInputMode];
    v21 = [v7 primaryLanguage];
    v10 = v21;
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = &stru_1EFB14550;
    }

    v29 = v22;
    v26[4] = @"dictationUIInteractionIdentifier";
    v11 = +[UIDictationController sharedInstance];
    v23 = [v11 interactionIdentifier];
    v13 = v23;
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = &stru_1EFB14550;
    }

    v30 = v24;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:v26 count:5];
  }

  v25 = +[UIDictationConnection analytics];
  [v25 logEventWithType:2202 context:v19];
}

- (void)logDidAcceptReplacement:(id)replacement replacementLanguageCode:(id)code originalText:(id)text correctionIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier
{
  replacementCopy = replacement;
  codeCopy = code;
  textCopy = text;
  identifierCopy = identifier;
  interactionIdentifierCopy = interactionIdentifier;
  analyticsQueue = self->_analyticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__UIDictationConnection_logDidAcceptReplacement_replacementLanguageCode_originalText_correctionIdentifier_interactionIdentifier___block_invoke;
  block[3] = &unk_1E70F8868;
  v25 = replacementCopy;
  v26 = codeCopy;
  v27 = textCopy;
  v28 = identifierCopy;
  v29 = interactionIdentifierCopy;
  v18 = interactionIdentifierCopy;
  v19 = identifierCopy;
  v20 = textCopy;
  v21 = codeCopy;
  v22 = replacementCopy;
  dispatch_async(analyticsQueue, block);
  connection = [(UIDictationConnection *)self connection];
  [connection sendUserSelectedAlternativeDictationLanguageCode:v21];
}

void __129__UIDictationConnection_logDidAcceptReplacement_replacementLanguageCode_originalText_correctionIdentifier_interactionIdentifier___block_invoke(int64x2_t *a1)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"text";
  v14[1] = @"languageCode";
  v15 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(&stru_1EFB14550), a1[2]);
  v14[2] = @"originalText";
  v2 = a1[3].i64[0];
  if (!v2)
  {
    v2 = &stru_1EFB14550;
  }

  v16 = v2;
  v17[0] = @"replacementInfo";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:v14 count:3];
  v4 = v3;
  v5 = a1[3].i64[1];
  if (!v5)
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v18[0] = v3;
  v18[1] = v5;
  v17[1] = @"correctionIdentifier";
  v17[2] = 0x1EFB73D90;
  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  v7 = [v6 currentInputMode];
  v8 = [v7 primaryLanguage];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1EFB14550;
  }

  v17[3] = @"dictationUIInteractionIdentifier";
  v11 = a1[4].i64[0];
  if (!v11)
  {
    v11 = &stru_1EFB14550;
  }

  v18[2] = v10;
  v18[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v13 = +[UIDictationConnection analytics];
  [v13 logEventWithType:2202 context:v12];
}

- (void)synthesizeDidRecognizeTokens:(id)tokens languageModel:(id)model
{
  modelCopy = model;
  tokensCopy = tokens;
  connection = [(UIDictationConnection *)self connection];
  [(UIDictationConnection *)self dictationConnection:connection didRecognizeTokens:tokensCopy languageModel:modelCopy];
}

- (void)synthesizeDidRecognizePhrases:(id)phrases languageModel:(id)model correctionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  modelCopy = model;
  phrasesCopy = phrases;
  connection = [(UIDictationConnection *)self connection];
  [(UIDictationConnection *)self dictationConnection:connection didRecognizePhrases:phrasesCopy languageModel:modelCopy correctionIdentifier:identifierCopy];
}

- (void)preheat
{
  connection = [(UIDictationConnection *)self connection];
  [connection preheat];
}

+ (id)interpretationFromSpeechTokens:(id)tokens startIndex:(unint64_t)index filterBlock:(id)block
{
  tokensCopy = tokens;
  blockCopy = block;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [tokensCopy count];
  v11 = 0.0;
  v12 = 0.0;
  if (v10 > index)
  {
    v13 = v10 - 1;
    while (1)
    {
      v14 = [tokensCopy objectAtIndex:index];
      v22 = 0;
      v15 = v14;
      v16 = v15;
      if (!blockCopy)
      {
        break;
      }

      blockCopy[2](blockCopy, v15, index, &v22);
      v17 = v22;
      if (v22)
      {
        goto LABEL_9;
      }

      if (v16)
      {
        goto LABEL_8;
      }

LABEL_10:

      if (v13 != index)
      {
        ++index;
        if ((v17 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v17 = 0;
    if (!v15)
    {
      goto LABEL_10;
    }

LABEL_8:
    [v9 addObject:v16];
    [v16 confidenceScore];
    v12 = v12 + v18;
LABEL_9:

    v17 = v22;
    goto LABEL_10;
  }

LABEL_12:
  v19 = [UIDictationInterpretation alloc];
  if ([v9 count])
  {
    v11 = v12 / [v9 count];
  }

  v20 = [(UIDictationInterpretation *)v19 initWithTokens:v9 score:v11];

  return v20;
}

+ (BOOL)hasSpeechRecognitionPauseAckPhrases:(id)phrases
{
  phrasesCopy = phrases;
  if ([phrasesCopy count] == 1)
  {
    firstObject = [phrasesCopy firstObject];
    interpretations = [firstObject interpretations];
    if ([interpretations count] == 1)
    {
      firstObject2 = [phrasesCopy firstObject];
      interpretations2 = [firstObject2 interpretations];
      firstObject3 = [interpretations2 firstObject];
      tokens = [firstObject3 tokens];
      if ([tokens count] == 1)
      {
        firstObject4 = [phrasesCopy firstObject];
        interpretations3 = [firstObject4 interpretations];
        firstObject5 = [interpretations3 firstObject];
        tokens2 = [firstObject5 tokens];
        [tokens2 firstObject];
        v11 = v18 = firstObject2;
        text = [v11 text];
        v13 = [text isEqualToString:@"DUMMYTOKEN"];

        firstObject2 = v18;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)dictationConnection:(id)connection didDetectLanguage:(id)language confidenceScores:(id)scores isConfident:(BOOL)confident
{
  v50 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  languageCopy = language;
  scoresCopy = scores;
  v13 = [languageCopy componentsSeparatedByString:@"-"];
  v14 = [v13 componentsJoinedByString:@"_"];
  [(UIDictationConnection *)self setLastUsedDetectedLanguage:v14];

  v15 = +[UIKeyboardImpl sharedInstance];
  textInputTraits = [v15 textInputTraits];
  keyboardType = [textInputTraits keyboardType];

  if (keyboardType > 0xB || ((1 << keyboardType) & 0x930) == 0)
  {
    v35 = +[UIDictationController sharedInstance];
    currentKeyboardPrimaryLanguage = [v35 currentKeyboardPrimaryLanguage];

    LODWORD(v35) = UIKeyboardInputModeIsDefaultRightToLeft(currentKeyboardPrimaryLanguage);
    lastUsedDetectedLanguage = [(UIDictationConnection *)self lastUsedDetectedLanguage];
    IsDefaultRightToLeft = UIKeyboardInputModeIsDefaultRightToLeft(lastUsedDetectedLanguage);

    if (v35 != IsDefaultRightToLeft)
    {
      charBeforeInsertionPointOnDictationStart = self->_charBeforeInsertionPointOnDictationStart;
      if (charBeforeInsertionPointOnDictationStart == 10 || !charBeforeInsertionPointOnDictationStart)
      {
        charAfterInsertionPointOnDictationStart = self->_charAfterInsertionPointOnDictationStart;
        if (charAfterInsertionPointOnDictationStart == 10 || !charAfterInsertionPointOnDictationStart)
        {
          v41 = +[UIKeyboardImpl sharedInstance];
          inputDelegate = [v41 inputDelegate];

          lastUsedDetectedLanguage2 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
          v44 = UIKeyboardInputModeIsDefaultRightToLeft(lastUsedDetectedLanguage2);
          selectedTextRange = [inputDelegate selectedTextRange];
          [inputDelegate setBaseWritingDirection:v44 forRange:selectedTextRange];
        }
      }
    }
  }

  v19 = [scoresCopy keysSortedByValueUsingComparator:&__block_literal_global_181];
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(UIDictationConnection *)self setLastUsedTopLanguages:v20];

  v21 = [v19 count];
  if (v21 >= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v21;
  }

  if (v21 >= 2)
  {
    v23 = 1;
    do
    {
      lastUsedTopLanguages = [(UIDictationConnection *)self lastUsedTopLanguages];
      v25 = [v19 objectAtIndexedSubscript:v23];
      [lastUsedTopLanguages addObject:v25];

      ++v23;
    }

    while (v22 != v23);
  }

  self->_lowConfidenceAboutLanguageDetection = !confident;
  if (self->_connection == connectionCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didDetectLanguage:languageCopy];

    v27 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 136315394;
      v47 = "[UIDictationConnection dictationConnection:didDetectLanguage:confidenceScores:isConfident:]";
      v48 = 2112;
      v49 = languageCopy;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "%s languageCode %@", &v46, 0x16u);
    }

    if (!self->_receivedMultilingualResultsCommand)
    {
      lastUsedPrimaryLanguage = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
      lastUsedDetectedLanguage3 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
      v30 = [lastUsedPrimaryLanguage isEqualToString:lastUsedDetectedLanguage3];

      if ((v30 & 1) == 0)
      {
        lastReceivedPartials = [(UIDictationConnection *)self lastReceivedPartials];
        lastUsedDetectedLanguage4 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
        v33 = [lastReceivedPartials objectForKeyedSubscript:lastUsedDetectedLanguage4];

        if (v33)
        {
          v34 = _UIDictationConnectionLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v46 = 136315394;
            v47 = "[UIDictationConnection dictationConnection:didDetectLanguage:confidenceScores:isConfident:]";
            v48 = 2112;
            v49 = languageCopy;
            _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEFAULT, "%s Replaying last partial result for %@ by calling didRecognizePartialResult", &v46, 0x16u);
          }

          [(UIDictationConnection *)self dictationConnection:connectionCopy didRecognizePartialResult:v33];
        }
      }
    }
  }
}

- (void)dictationConnection:(id)connection languageDetectorFailedWithError:(id)error
{
  if (self->_connection == connection)
  {
    dictationOptions = [(UIDictationConnection *)self dictationOptions];
    [dictationOptions setLanguageDetectionUserContext:0];
  }
}

- (void)dictationConnectionSpeechRecordingWillBegin:(id)begin
{
  if (self->_connection == begin)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnectionWillStartRecording:self];
  }
}

- (void)dictationConnectionSpeechRecordingDidBegin:(id)begin
{
  if (self->_connection == begin)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnectionDidStartRecording:self];
  }
}

- (void)dictationConnection:(id)connection speechRecordingDidBeginWithOptions:(id)options
{
  if (self->_connection == connection)
  {
    optionsCopy = options;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didStartRecordingWithOptions:optionsCopy];
  }
}

- (void)dictationConnection:(id)connection didBeginLocalRecognitionWithModelInfo:(id)info
{
  if (self->_connection == connection)
  {
    infoCopy = info;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didBeginLocalRecognitionWithModelInfo:infoCopy];
  }
}

- (void)dictationConnection:(id)connection speechRecordingDidFail:(id)fail
{
  v12[1] = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (connection == connection)
  {
    self->_connection = 0;
    failCopy = fail;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = MEMORY[0x1E696ABC0];
    v11 = @"UIDictationConnectionUnderlyingError";
    v12[0] = failCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10 = [v8 errorWithDomain:@"UIDictationConnection" code:-1 userInfo:v9];

    [WeakRetained dictationConnection:self didFailRecordingWithError:v10];
  }
}

- (void)dictationConnection:(id)connection speechRecognitionDidFail:(id)fail
{
  v24[1] = *MEMORY[0x1E69E9840];
  failCopy = fail;
  connection = self->_connection;
  if (connection == connection)
  {
    self->_connection = 0;

    if ([failCopy code] == 6)
    {
      v8 = MEMORY[0x1E696ABC0];
      v23 = @"UIDictationConnectionUnderlyingError";
      v24[0] = failCopy;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v10 = v8;
      v11 = 2;
    }

    else if ([failCopy code] == 602)
    {
      v12 = MEMORY[0x1E696ABC0];
      v21 = @"UIDictationConnectionUnderlyingError";
      v22 = failCopy;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v10 = v12;
      v11 = 3;
    }

    else
    {
      code = [failCopy code];
      v14 = MEMORY[0x1E696ABC0];
      if (code == 603)
      {
        v19 = @"UIDictationConnectionUnderlyingError";
        v20 = failCopy;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v10 = v14;
        v11 = 4;
      }

      else
      {
        v17 = @"UIDictationConnectionUnderlyingError";
        v18 = failCopy;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v10 = v14;
        v11 = -1;
      }
    }

    v15 = [v10 errorWithDomain:@"UIDictationConnection" code:v11 userInfo:v9];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didFailRecognitionWithError:v15];
  }
}

- (void)dictationConnectionSpeechRecordingDidEnd:(id)end
{
  if (self->_connection == end)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnectionDidEndRecording:self];
  }
}

- (void)dictationConnectionSpeechRecordingDidCancel:(id)cancel
{
  connection = self->_connection;
  if (connection == cancel)
  {
    self->_connection = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnectionDidCancel:self];
  }
}

- (void)dictationConnection:(id)connection didRecognizeTokens:(id)tokens languageModel:(id)model
{
  v54 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  tokensCopy = tokens;
  modelCopy = model;
  if (self->_connection == connectionCopy)
  {
    v10 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[UIDictationConnection dictationConnection:didRecognizeTokens:languageModel:]";
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    if (self->_ignoreSpeechRecognitionResults)
    {
      v11 = _UIDictationConnectionLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        ignoreSpeechRecognitionResults = self->_ignoreSpeechRecognitionResults;
        *buf = 136315394;
        *&buf[4] = "[UIDictationConnection dictationConnection:didRecognizeTokens:languageModel:]";
        *&buf[12] = 1024;
        *&buf[14] = ignoreSpeechRecognitionResults;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "%s _ignoreSpeechRecognitionResults=%d. Early return", buf, 0x12u);
      }
    }

    else
    {
      v13 = +[UIDictationController sharedInstance];
      [v13 updateRecordingLimitTimerIfNeeded];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained dictationConnection:self didReceiveCandidateDictationSerializableResults:0];

      v15 = objc_loadWeakRetained(&self->_tokenFilter);
      v36 = [v15 resultTransformForLanguageModel:modelCopy];

      v16 = [modelCopy componentsSeparatedByString:@"-"];
      v40 = [v16 componentsJoinedByString:@"_"];

      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __78__UIDictationConnection_dictationConnection_didRecognizeTokens_languageModel___block_invoke;
      v50[3] = &unk_1E7114BD0;
      v11 = v17;
      v51 = v11;
      [tokensCopy enumerateObjectsUsingBlock:v50];
      if ([v11 count])
      {
        firstObject = [v11 firstObject];
        [firstObject setRemoveSpaceBefore:1];

        v19 = objc_loadWeakRetained(&self->_tokenFilter);
        v39 = [v19 dictationConnection:self willFilterTokensWithLanguageModel:v40 forFinalize:0];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v53 = 0;
        v46 = 0;
        v47 = &v46;
        v48 = 0x2020000000;
        v49 = 0;
        v20 = objc_loadWeakRetained(&self->_tokenFilter);

        if (v20)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __78__UIDictationConnection_dictationConnection_didRecognizeTokens_languageModel___block_invoke_2;
          aBlock[3] = &unk_1E7114BF8;
          aBlock[4] = self;
          v43 = v39;
          v44 = &v46;
          v45 = buf;
          v38 = _Block_copy(aBlock);
        }

        else
        {
          v38 = 0;
        }

        v21 = [v11 count]- 1;
        while (v21 >= *(*&buf[8] + 24))
        {
          *(v47 + 24) = 0;
          v22 = [UIDictationConnection interpretationFromSpeechTokens:"interpretationFromSpeechTokens:startIndex:filterBlock:" startIndex:v11 filterBlock:?];
          v23 = v22;
          v24 = 1;
          if (!self->_offlineOnly)
          {
            v24 = 2;
          }

          if (*(*&buf[8] + 24))
          {
            v25 = v24;
          }

          else
          {
            v25 = v24 | 4;
          }

          tokens = [v22 tokens];
          v27 = +[UIKeyboardImpl activeInstance];
          textInputTraits = [v27 textInputTraits];
          v29 = +[UIDictationController serializedInterpretationFromTokens:transform:autocapitalization:capitalization:smartPunctuation:](UIDictationController, "serializedInterpretationFromTokens:transform:autocapitalization:capitalization:smartPunctuation:", tokens, v37, [textInputTraits autocapitalizationType], v25, 0);

          LOBYTE(v27) = *(v47 + 24);
          v30 = objc_loadWeakRetained(&self->_delegate);
          v31 = v30;
          offlineOnly = self->_offlineOnly;
          if ((v27 & 1) == 0)
          {
            [v30 dictationConnection:self receivedInterpretation:v29 languageModel:v40 secureInput:offlineOnly];

            break;
          }

          [v30 dictationConnection:self receivedInterpretation:v29 languageModel:v40 secureInput:offlineOnly];

          ++*(*&buf[8] + 24);
          v33 = [v11 objectAtIndex:?];
          v34 = objc_loadWeakRetained(&self->_tokenFilter);
          [v34 dictationConnection:self filterState:v39 processFilteredToken:v33 forFinalize:0];
        }

        v35 = objc_loadWeakRetained(&self->_tokenFilter);
        [v35 dictationConnection:self didFilterTokensWithFilterState:v39 forFinalize:0];

        _Block_object_dispose(&v46, 8);
        _Block_object_dispose(buf, 8);
      }

      modelCopy = v40;
    }
  }
}

void __78__UIDictationConnection_dictationConnection_didRecognizeTokens_languageModel___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [UIDictationUtilities tokenFromAFToken:a2];
  v7 = *(a1 + 32);
  v8 = v6;
  if (v6)
  {
    [v7 addObject:v6];
  }

  else
  {
    [v7 removeAllObjects];
    *a4 = 1;
  }
}

void __78__UIDictationConnection_dictationConnection_didRecognizeTokens_languageModel___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((v7 + 32));
  v10 = [WeakRetained dictationConnection:a1[4] filterState:a1[5] shouldCheckpointAtToken:v8];

  if (v10)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
    *(*(a1[7] + 8) + 24) = a3;
  }
}

- (void)dictationConnection:(id)connection didRecognizePartialResult:(id)result
{
  v67 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  resultCopy = result;
  v51 = connectionCopy;
  if (self->_connection == connectionCopy)
  {
    v48 = resultCopy;
    lastUsedDetectedLanguage = [(UIDictationConnection *)self lastUsedDetectedLanguage];
    v9 = lastUsedDetectedLanguage;
    if (lastUsedDetectedLanguage)
    {
      lastUsedPrimaryLanguage = lastUsedDetectedLanguage;
    }

    else
    {
      lastUsedPrimaryLanguage = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
    }

    language = [v48 language];
    v10 = [language componentsSeparatedByString:@"-"];
    v52 = [v10 componentsJoinedByString:@"_"];

    dictationOptions = [(UIDictationConnection *)self dictationOptions];
    languageDetectionUserContext = [dictationOptions languageDetectionUserContext];

    if (languageDetectionUserContext)
    {
      lastReceivedPartials = [(UIDictationConnection *)self lastReceivedPartials];
      [lastReceivedPartials setObject:v48 forKeyedSubscript:language];
    }

    lastUsedPrimaryLanguage2 = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
    v14 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      lastUsedPrimaryLanguage3 = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
      lastUsedDetectedLanguage2 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
      *buf = 136315906;
      *&buf[4] = "[UIDictationConnection dictationConnection:didRecognizePartialResult:]";
      *&buf[12] = 2112;
      *&buf[14] = lastUsedPrimaryLanguage3;
      *&buf[22] = 2112;
      v64 = lastUsedDetectedLanguage2;
      v65 = 2112;
      v66 = v52;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "%s Keyboard language code %@, detected language code %@, partial language code %@", buf, 0x2Au);
    }

    lastUsedDetectedLanguage3 = [(UIDictationConnection *)self lastUsedDetectedLanguage];

    v18 = [v52 isEqualToString:lastUsedPrimaryLanguage];
    if (v18 & 1 | (lastUsedDetectedLanguage3 == 0) & [language isEqualToString:lastUsedPrimaryLanguage2] || (-[UIDictationConnection dictationOptions](self, "dictationOptions"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "languageDetectionUserContext"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v19, v21))
    {
      WeakRetained = objc_loadWeakRetained(&self->_tokenFilter);
      v47 = [WeakRetained resultTransformForLanguageModel:v52];

      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      af_tokens = [v48 af_tokens];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __71__UIDictationConnection_dictationConnection_didRecognizePartialResult___block_invoke;
      v61[3] = &unk_1E7114BD0;
      v25 = v23;
      v62 = v25;
      [af_tokens enumerateObjectsUsingBlock:v61];

      if ([v25 count])
      {
        firstObject = [v25 firstObject];
        [firstObject setRemoveSpaceBefore:1];

        v27 = objc_loadWeakRetained(&self->_tokenFilter);
        v50 = [v27 dictationConnection:self willFilterTokensWithLanguageModel:v52 forFinalize:0];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v64 = 0;
        v57 = 0;
        v58 = &v57;
        v59 = 0x2020000000;
        v60 = 0;
        v28 = objc_loadWeakRetained(&self->_tokenFilter);

        if (v28)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __71__UIDictationConnection_dictationConnection_didRecognizePartialResult___block_invoke_2;
          aBlock[3] = &unk_1E7114BF8;
          aBlock[4] = self;
          v54 = v50;
          v55 = &v57;
          v56 = buf;
          v29 = _Block_copy(aBlock);
        }

        else
        {
          v29 = 0;
        }

        v30 = [v25 count] - 1;
        while (v30 >= *(*&buf[8] + 24))
        {
          *(v58 + 24) = 0;
          v31 = [UIDictationConnection interpretationFromSpeechTokens:"interpretationFromSpeechTokens:startIndex:filterBlock:" startIndex:v25 filterBlock:?];
          v32 = v31;
          v33 = 1;
          if (!self->_offlineOnly)
          {
            v33 = 2;
          }

          if (*(*&buf[8] + 24))
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 | 4;
          }

          tokens = [v31 tokens];
          v36 = +[UIKeyboardImpl activeInstance];
          textInputTraits = [v36 textInputTraits];
          v38 = +[UIDictationController serializedInterpretationFromTokens:transform:autocapitalization:capitalization:smartPunctuation:](UIDictationController, "serializedInterpretationFromTokens:transform:autocapitalization:capitalization:smartPunctuation:", tokens, v47, [textInputTraits autocapitalizationType], v34, 0);

          LOBYTE(tokens) = *(v58 + 24);
          v39 = objc_loadWeakRetained(&self->_delegate);
          v40 = v39;
          offlineOnly = self->_offlineOnly;
          if ((tokens & 1) == 0)
          {
            [v39 dictationConnection:self receivedInterpretation:v38 languageModel:v52 secureInput:offlineOnly];

            break;
          }

          [v39 dictationConnection:self receivedInterpretation:v38 languageModel:v52 secureInput:offlineOnly];

          ++*(*&buf[8] + 24);
          v42 = [v25 objectAtIndex:?];
          v43 = objc_loadWeakRetained(&self->_tokenFilter);
          [v43 dictationConnection:self filterState:v50 processFilteredToken:v42 forFinalize:0];
        }

        v44 = objc_loadWeakRetained(&self->_tokenFilter);
        [v44 dictationConnection:self didFilterTokensWithFilterState:v50 forFinalize:0];

        _Block_object_dispose(&v57, 8);
        _Block_object_dispose(buf, 8);
      }
    }

    resultCopy = v48;
  }
}

void __71__UIDictationConnection_dictationConnection_didRecognizePartialResult___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [UIDictationUtilities tokenFromAFToken:a2];
  v7 = *(a1 + 32);
  v8 = v6;
  if (v6)
  {
    [v7 addObject:v6];
  }

  else
  {
    [v7 removeAllObjects];
    *a4 = 1;
  }
}

void __71__UIDictationConnection_dictationConnection_didRecognizePartialResult___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((v7 + 32));
  v10 = [WeakRetained dictationConnection:a1[4] filterState:a1[5] shouldCheckpointAtToken:v8];

  if (v10)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
    *(*(a1[7] + 8) + 24) = a3;
  }
}

- (id)dictationSerializedResultWithPhrases:(id)phrases languageModel:(id)model
{
  v39 = *MEMORY[0x1E69E9840];
  phrasesCopy = phrases;
  modelCopy = model;
  WeakRetained = objc_loadWeakRetained(&self->_tokenFilter);
  v9 = [WeakRetained resultTransformForLanguageModel:modelCopy];

  v10 = [modelCopy componentsSeparatedByString:@"-"];

  v11 = [v10 componentsJoinedByString:@"_"];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = phrasesCopy;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [UIDictationUtilities phraseFromAFPhrase:*(*(&v33 + 1) + 8 * i)];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v15);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  firstObject = [v12 firstObject];
  interpretations = [firstObject interpretations];

  v21 = [interpretations countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(interpretations);
        }

        tokens = [*(*(&v29 + 1) + 8 * j) tokens];
        firstObject2 = [tokens firstObject];
        [firstObject2 setRemoveSpaceBefore:1];
      }

      v22 = [interpretations countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }

  v27 = [[UIDictationSerializableResults alloc] initWithPhrases:v12];
  [(UIDictationSerializableResults *)v27 setTransform:v9];

  return v27;
}

- (void)dictationConnection:(id)connection didRecognizePhrases:(id)phrases languageModel:(id)model correctionIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  phrasesCopy = phrases;
  modelCopy = model;
  identifierCopy = identifier;
  if (self->_connection == connection)
  {
    v13 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315138;
      v27 = "[UIDictationConnection dictationConnection:didRecognizePhrases:languageModel:correctionIdentifier:]";
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "%s", &v26, 0xCu);
    }

    if ([objc_opt_class() hasSpeechRecognitionPauseAckPhrases:phrasesCopy])
    {
      delegate = _UIDictationConnectionLog();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315138;
        v27 = "[UIDictationConnection dictationConnection:didRecognizePhrases:languageModel:correctionIdentifier:]";
        v15 = "%s This is a speech recognition pause acknowledgement callback. Early return";
LABEL_10:
        _os_log_impl(&dword_188A29000, delegate, OS_LOG_TYPE_DEFAULT, v15, &v26, 0xCu);
      }
    }

    else
    {
      if (!self->_ignoreSpeechRecognitionResults)
      {
        lastUsedPrimaryLanguage = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
        lastUsedDetectedLanguage = [(UIDictationConnection *)self lastUsedDetectedLanguage];
        v18 = [lastUsedPrimaryLanguage isEqualToString:lastUsedDetectedLanguage];

        if (self->_receivedMultilingualResultsCommand || ([(UIDictationConnection *)self lastUsedDetectedLanguage], v19 = objc_claimAutoreleasedReturnValue(), v20 = (v19 == 0) | v18, v19, (v20 & 1) != 0))
        {
          v21 = _UIDictationConnectionLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 136315394;
            v27 = "[UIDictationConnection dictationConnection:didRecognizePhrases:languageModel:correctionIdentifier:]";
            v28 = 2112;
            v29 = modelCopy;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "%s languageModel %@", &v26, 0x16u);
          }

          delegate = [(UIDictationConnection *)self dictationSerializedResultWithPhrases:phrasesCopy languageModel:modelCopy];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained dictationConnection:self finalizePhrases:delegate languageModel:modelCopy correctionIdentifier:identifierCopy secureInput:self->_offlineOnly finalResult:1];
        }

        else
        {
          v23 = _UIDictationConnectionLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            lastUsedDetectedLanguage2 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
            lastUsedPrimaryLanguage2 = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
            v26 = 136315650;
            v27 = "[UIDictationConnection dictationConnection:didRecognizePhrases:languageModel:correctionIdentifier:]";
            v28 = 2112;
            v29 = lastUsedDetectedLanguage2;
            v30 = 2112;
            v31 = lastUsedPrimaryLanguage2;
            _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "%s Calling didCancelIncompatibleLocalRecognizer on delegate because of language mismatch (%@ vs %@)", &v26, 0x20u);
          }

          delegate = [(UIDictationConnection *)self delegate];
          [delegate dictationConnectionDidCancelIncompatibleLocalRecognizer:self];
        }

        goto LABEL_19;
      }

      delegate = _UIDictationConnectionLog();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315138;
        v27 = "[UIDictationConnection dictationConnection:didRecognizePhrases:languageModel:correctionIdentifier:]";
        v15 = "%s _ignoreSpeechRecognitionResults == YES. Early return";
        goto LABEL_10;
      }
    }

LABEL_19:
  }
}

- (void)dictationConnection:(id)connection didRecognizePartialPackage:(id)package nluResult:(id)result languageModel:(id)model
{
  v20 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  resultCopy = result;
  modelCopy = model;
  if (self->_connection == connection)
  {
    v13 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[UIDictationConnection dictationConnection:didRecognizePartialPackage:nluResult:languageModel:]";
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "%s", &v16, 0xCu);
    }

    if (self->_ignoreSpeechRecognitionResults)
    {
      WeakRetained = _UIDictationConnectionLog();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        ignoreSpeechRecognitionResults = self->_ignoreSpeechRecognitionResults;
        v16 = 136315394;
        v17 = "[UIDictationConnection dictationConnection:didRecognizePartialPackage:nluResult:languageModel:]";
        v18 = 1024;
        v19 = ignoreSpeechRecognitionResults;
        _os_log_impl(&dword_188A29000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s _ignoreSpeechRecognitionResults=%d. Early return", &v16, 0x12u);
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained dictationConnection:self didReceivePartialPackage:packageCopy nluResult:resultCopy languageModel:modelCopy];
    }
  }
}

- (void)dictationConnection:(id)connection didRecognizeMultilingualSpeech:(id)speech
{
  v133 = *MEMORY[0x1E69E9840];
  speechCopy = speech;
  if (self->_connection == connection)
  {
    [(UIDictationConnection *)self setReceivedMultilingualResultsCommand:1];
    v7 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v132 = "[UIDictationConnection dictationConnection:didRecognizeMultilingualSpeech:]";
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    lastUsedDetectedLanguage = [(UIDictationConnection *)self lastUsedDetectedLanguage];
    v9 = lastUsedDetectedLanguage;
    if (lastUsedDetectedLanguage)
    {
      lastUsedPrimaryLanguage = lastUsedDetectedLanguage;
    }

    else
    {
      lastUsedPrimaryLanguage = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
    }

    v11 = lastUsedPrimaryLanguage;

    v85 = speechCopy;
    speechRecognizedByLanguage = [speechCopy speechRecognizedByLanguage];
    v90 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lastUsedDetectedLanguage2 = [(UIDictationConnection *)self lastUsedDetectedLanguage];

    v86 = v11;
    selfCopy = self;
    if (lastUsedDetectedLanguage2)
    {
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      obj = [(UIDictationConnection *)self lastUsedTopLanguages];
      v92 = [obj countByEnumeratingWithState:&v120 objects:v130 count:16];
      if (v92)
      {
        v89 = *v121;
        do
        {
          for (i = 0; i != v92; ++i)
          {
            if (*v121 != v89)
            {
              objc_enumerationMutation(obj);
            }

            v93 = *(*(&v120 + 1) + 8 * i);
            v94 = [speechRecognizedByLanguage objectForKey:?];
            recognition = [v94 recognition];
            af_speechPhrases = [recognition af_speechPhrases];

            v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            v119 = 0u;
            v17 = af_speechPhrases;
            v18 = [v17 countByEnumeratingWithState:&v116 objects:v129 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v117;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v117 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = [UIDictationUtilities phraseFromAFPhrase:*(*(&v116 + 1) + 8 * j)];
                  [v16 addObject:v22];
                }

                v19 = [v17 countByEnumeratingWithState:&v116 objects:v129 count:16];
              }

              while (v19);
            }

            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            firstObject = [v16 firstObject];
            interpretations = [firstObject interpretations];

            v25 = [interpretations countByEnumeratingWithState:&v112 objects:v128 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v113;
              do
              {
                for (k = 0; k != v26; ++k)
                {
                  if (*v113 != v27)
                  {
                    objc_enumerationMutation(interpretations);
                  }

                  tokens = [*(*(&v112 + 1) + 8 * k) tokens];
                  firstObject2 = [tokens firstObject];
                  [firstObject2 setRemoveSpaceBefore:1];
                }

                v26 = [interpretations countByEnumeratingWithState:&v112 objects:v128 count:16];
              }

              while (v26);
            }

            v31 = [[UIDictationMultilingualResults alloc] initWithPhrases:v16 dominantLanguage:v93];
            [v90 addObject:v31];
          }

          v92 = [obj countByEnumeratingWithState:&v120 objects:v130 count:16];
        }

        while (v92);
      }

      v11 = v86;
      self = selfCopy;
    }

    lastUsedDetectedLanguage3 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
    if (lastUsedDetectedLanguage3 && (v33 = lastUsedDetectedLanguage3, v34 = [(UIDictationConnection *)self lowConfidenceAboutLanguageDetection], v33, v34))
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      lastUsedDetectedLanguage4 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
      v37 = [lastUsedDetectedLanguage4 componentsSeparatedByString:@"_"];
      v38 = [v37 componentsJoinedByString:@"-"];
      v39 = [speechRecognizedByLanguage objectForKey:v38];

      recognition2 = [v39 recognition];
      af_speechPhrases2 = [recognition2 af_speechPhrases];

      af_correctionContext = [v39 af_correctionContext];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      af_correctionContext2 = af_speechPhrases2;
      v44 = [af_correctionContext2 countByEnumeratingWithState:&v100 objects:v125 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v101;
        do
        {
          for (m = 0; m != v45; ++m)
          {
            if (*v101 != v46)
            {
              objc_enumerationMutation(af_correctionContext2);
            }

            v48 = [UIDictationUtilities phraseFromAFPhrase:*(*(&v100 + 1) + 8 * m)];
            [v35 addObject:v48];
          }

          v45 = [af_correctionContext2 countByEnumeratingWithState:&v100 objects:v125 count:16];
        }

        while (v45);
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      firstObject3 = [v35 firstObject];
      interpretations2 = [firstObject3 interpretations];

      v51 = [interpretations2 countByEnumeratingWithState:&v96 objects:v124 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v97;
        do
        {
          for (n = 0; n != v52; ++n)
          {
            if (*v97 != v53)
            {
              objc_enumerationMutation(interpretations2);
            }

            tokens2 = [*(*(&v96 + 1) + 8 * n) tokens];
            firstObject4 = [tokens2 firstObject];
            [firstObject4 setRemoveSpaceBefore:1];
          }

          v52 = [interpretations2 countByEnumeratingWithState:&v96 objects:v124 count:16];
        }

        while (v52);
      }

      v57 = v90;
      v58 = [[UIDictationSerializableResults alloc] initWithDetectedPhrases:v35 multilingualAlternatives:v90];
      [(UIDictationSerializableResults *)v58 setLowConfidenceAboutLanguageDetection:[(UIDictationConnection *)selfCopy lowConfidenceAboutLanguageDetection]];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      v60 = WeakRetained;
      offlineOnly = selfCopy->_offlineOnly;
      v62 = selfCopy;
      v63 = v58;
      v64 = v86;
      v65 = v86;
      v66 = af_correctionContext;
    }

    else
    {
      v67 = [v11 componentsSeparatedByString:@"_"];
      v68 = [v67 componentsJoinedByString:@"-"];
      v35 = [speechRecognizedByLanguage objectForKey:v68];

      recognition3 = [v35 recognition];
      af_speechPhrases3 = [recognition3 af_speechPhrases];

      af_correctionContext2 = [v35 af_correctionContext];
      v71 = objc_loadWeakRetained(&self->_tokenFilter);
      v95 = [v71 resultTransformForLanguageModel:v11];

      af_correctionContext = objc_alloc_init(MEMORY[0x1E695DF70]);
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v39 = af_speechPhrases3;
      v72 = [v39 countByEnumeratingWithState:&v108 objects:v127 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v109;
        do
        {
          for (ii = 0; ii != v73; ++ii)
          {
            if (*v109 != v74)
            {
              objc_enumerationMutation(v39);
            }

            v76 = [UIDictationUtilities phraseFromAFPhrase:*(*(&v108 + 1) + 8 * ii)];
            [af_correctionContext addObject:v76];
          }

          v73 = [v39 countByEnumeratingWithState:&v108 objects:v127 count:16];
        }

        while (v73);
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      firstObject5 = [af_correctionContext firstObject];
      interpretations3 = [firstObject5 interpretations];

      v79 = [interpretations3 countByEnumeratingWithState:&v104 objects:v126 count:16];
      if (v79)
      {
        v80 = v79;
        v81 = *v105;
        do
        {
          for (jj = 0; jj != v80; ++jj)
          {
            if (*v105 != v81)
            {
              objc_enumerationMutation(interpretations3);
            }

            tokens3 = [*(*(&v104 + 1) + 8 * jj) tokens];
            firstObject6 = [tokens3 firstObject];
            [firstObject6 setRemoveSpaceBefore:1];
          }

          v80 = [interpretations3 countByEnumeratingWithState:&v104 objects:v126 count:16];
        }

        while (v80);
      }

      v57 = v90;
      v58 = [[UIDictationSerializableResults alloc] initWithDetectedPhrases:af_correctionContext multilingualAlternatives:v90];
      [(UIDictationSerializableResults *)v58 setLowConfidenceAboutLanguageDetection:[(UIDictationConnection *)selfCopy lowConfidenceAboutLanguageDetection]];
      [(UIDictationSerializableResults *)v58 setTransform:v95];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      v60 = WeakRetained;
      offlineOnly = selfCopy->_offlineOnly;
      v62 = selfCopy;
      v63 = v58;
      v64 = v86;
      v65 = v86;
      v66 = af_correctionContext2;
    }

    [WeakRetained dictationConnection:v62 finalizePhrases:v63 languageModel:v65 correctionIdentifier:v66 secureInput:offlineOnly finalResult:0];

    speechCopy = v85;
  }
}

- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)succeed
{
  connection = self->_connection;
  if (connection == succeed)
  {
    self->_connection = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnectionDidFinish:self];
  }
}

- (void)dictationConnnectionDidChangeAvailability:(id)availability
{
  if (self->_connection == availability)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnnectionDidChangeAvailability:self];
  }
}

- (void)dictationConnection:(id)connection didReceiveSearchResults:(id)results recognizedText:(id)text stable:(BOOL)stable final:(BOOL)final
{
  if (self->_connection == connection)
  {
    finalCopy = final;
    stableCopy = stable;
    textCopy = text;
    resultsCopy = results;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didReceiveSearchResults:resultsCopy recognizedText:textCopy stable:stableCopy final:finalCopy];
  }
}

- (void)dictationConnectionDidPauseRecognition:(id)recognition
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_connection == recognition)
  {
    self->_ignoreSpeechRecognitionResults = 0;
    v4 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      ignoreSpeechRecognitionResults = self->_ignoreSpeechRecognitionResults;
      v6 = 136315394;
      v7 = "[UIDictationConnection dictationConnectionDidPauseRecognition:]";
      v8 = 1024;
      v9 = ignoreSpeechRecognitionResults;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting _ignoreSpeechRecognitionResults=%d", &v6, 0x12u);
    }
  }
}

- (void)dictationConnection:(id)connection didRecognizeFinalResultCandidatePackage:(id)package
{
  v19 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  packageCopy = package;
  v8 = packageCopy;
  if (self->_connection == connectionCopy)
  {
    if (self->_ignoreSpeechRecognitionResults)
    {
      v9 = _UIDictationConnectionLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        ignoreSpeechRecognitionResults = self->_ignoreSpeechRecognitionResults;
        v15 = 136315394;
        v16 = "[UIDictationConnection dictationConnection:didRecognizeFinalResultCandidatePackage:]";
        v17 = 1024;
        v18 = ignoreSpeechRecognitionResults;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "%s _ignoreSpeechRecognitionResults=%d. Early return", &v15, 0x12u);
      }
    }

    else
    {
      recognition = [packageCopy recognition];
      phrases = [recognition phrases];

      v13 = [(UIDictationConnection *)self dictationSerializedResultWithPhrases:phrases languageModel:0];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained dictationConnection:self didReceiveCandidateDictationSerializableResults:v13];
    }
  }
}

- (void)dictationConnection:(id)connection didRecognizeVoiceCommandCandidatePackage:(id)package nluResult:(id)result
{
  v22 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  resultCopy = result;
  if (self->_connection == connection)
  {
    v10 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[UIDictationConnection dictationConnection:didRecognizeVoiceCommandCandidatePackage:nluResult:]";
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%s", &v18, 0xCu);
    }

    recognition = [packageCopy recognition];
    phrases = [recognition phrases];

    if ([objc_opt_class() hasSpeechRecognitionPauseAckPhrases:phrases])
    {
      WeakRetained = _UIDictationConnectionLog();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[UIDictationConnection dictationConnection:didRecognizeVoiceCommandCandidatePackage:nluResult:]";
        v14 = "%s This is a speech recognition pause acknowledgement callback. Early return";
        v15 = WeakRetained;
        v16 = 12;
LABEL_10:
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, v14, &v18, v16);
      }
    }

    else
    {
      if (!self->_ignoreSpeechRecognitionResults)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained dictationConnection:self didReceiveVoiceCommandCandidatePackage:packageCopy nluResult:resultCopy];
        goto LABEL_12;
      }

      WeakRetained = _UIDictationConnectionLog();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        ignoreSpeechRecognitionResults = self->_ignoreSpeechRecognitionResults;
        v18 = 136315394;
        v19 = "[UIDictationConnection dictationConnection:didRecognizeVoiceCommandCandidatePackage:nluResult:]";
        v20 = 1024;
        v21 = ignoreSpeechRecognitionResults;
        v14 = "%s _ignoreSpeechRecognitionResults=%d. Early return";
        v15 = WeakRetained;
        v16 = 18;
        goto LABEL_10;
      }
    }

LABEL_12:
  }
}

- (void)preheatEuclidModelWithLanguageCode:(id)code clientID:(id)d
{
  dCopy = d;
  codeCopy = code;
  connection = [(UIDictationConnection *)self connection];
  [connection preheatEuclidModelWithLanguage:codeCopy clientID:dCopy];
}

- (void)euclidPhoneticString:(id)string maxResultsCount:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  stringCopy = string;
  connection = [(UIDictationConnection *)self connection];
  [connection getEuclidPhonetic:stringCopy maxResultsCount:count completion:completionCopy];
}

- (UIDictationConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIDictationConnectionTokenFilterProtocol)tokenFilter
{
  WeakRetained = objc_loadWeakRetained(&self->_tokenFilter);

  return WeakRetained;
}

@end