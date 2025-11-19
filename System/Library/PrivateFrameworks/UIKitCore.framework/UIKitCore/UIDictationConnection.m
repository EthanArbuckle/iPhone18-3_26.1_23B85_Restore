@interface UIDictationConnection
+ (BOOL)dictationIsSupportedForLanguageCode:(id)a3 error:(id *)a4;
+ (BOOL)dictationRestricted;
+ (BOOL)hasSpeechRecognitionPauseAckPhrases:(id)a3;
+ (id)analytics;
+ (id)interpretationFromSpeechTokens:(id)a3 startIndex:(unint64_t)a4 filterBlock:(id)a5;
+ (void)_updateFromGlobalOptions:(id)a3;
+ (void)cacheSupportedDictationLanguages;
- (AFDictationConnection)connection;
- (BOOL)dictationIsAvailableForLanguage:(id)a3;
- (BOOL)supportNewVoiceEditingCommandSPI;
- (UIDictationConnectionDelegate)delegate;
- (UIDictationConnectionTokenFilterProtocol)tokenFilter;
- (float)averagePower;
- (id)_createConnectionOptions;
- (id)_dictationOptions:(id)a3;
- (id)_initializeWithOptions:(id)a3;
- (id)_speechOptions:(id)a3;
- (id)dictationSerializedResultWithPhrases:(id)a3 languageModel:(id)a4;
- (id)languageDetectionUserContext;
- (id)speechMessageContexts;
- (int64_t)speechEventTypeForDictationActivationType:(unint64_t)a3;
- (void)_startWithOptions:(id)a3;
- (void)beginAvailabilityMonitoring;
- (void)cancelAvailabilityMonitoring;
- (void)cancelSpeech;
- (void)dictationConnection:(id)a3 didBeginLocalRecognitionWithModelInfo:(id)a4;
- (void)dictationConnection:(id)a3 didDetectLanguage:(id)a4 confidenceScores:(id)a5 isConfident:(BOOL)a6;
- (void)dictationConnection:(id)a3 didReceiveSearchResults:(id)a4 recognizedText:(id)a5 stable:(BOOL)a6 final:(BOOL)a7;
- (void)dictationConnection:(id)a3 didRecognizeFinalResultCandidatePackage:(id)a4;
- (void)dictationConnection:(id)a3 didRecognizeMultilingualSpeech:(id)a4;
- (void)dictationConnection:(id)a3 didRecognizePartialPackage:(id)a4 nluResult:(id)a5 languageModel:(id)a6;
- (void)dictationConnection:(id)a3 didRecognizePartialResult:(id)a4;
- (void)dictationConnection:(id)a3 didRecognizePhrases:(id)a4 languageModel:(id)a5 correctionIdentifier:(id)a6;
- (void)dictationConnection:(id)a3 didRecognizeTokens:(id)a4 languageModel:(id)a5;
- (void)dictationConnection:(id)a3 didRecognizeVoiceCommandCandidatePackage:(id)a4 nluResult:(id)a5;
- (void)dictationConnection:(id)a3 languageDetectorFailedWithError:(id)a4;
- (void)dictationConnection:(id)a3 speechRecognitionDidFail:(id)a4;
- (void)dictationConnection:(id)a3 speechRecordingDidBeginWithOptions:(id)a4;
- (void)dictationConnection:(id)a3 speechRecordingDidFail:(id)a4;
- (void)dictationConnectionDidPauseRecognition:(id)a3;
- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)a3;
- (void)dictationConnectionSpeechRecordingDidBegin:(id)a3;
- (void)dictationConnectionSpeechRecordingDidCancel:(id)a3;
- (void)dictationConnectionSpeechRecordingDidEnd:(id)a3;
- (void)dictationConnectionSpeechRecordingWillBegin:(id)a3;
- (void)dictationConnnectionDidChangeAvailability:(id)a3;
- (void)endSession;
- (void)euclidPhoneticString:(id)a3 maxResultsCount:(unint64_t)a4 completion:(id)a5;
- (void)logDidAcceptDictationResult:(id)a3 reason:(id)a4 result:(id)a5 correctionIdentifier:(id)a6;
- (void)logDidAcceptReplacement:(id)a3 replacementLanguageCode:(id)a4 originalText:(id)a5 correctionIdentifier:(id)a6 interactionIdentifier:(id)a7;
- (void)logDidSelectAlternative:(id)a3 correctionIdentifier:(id)a4 interactionIdentifier:(id)a5;
- (void)logDidShowAlternatives:(id)a3 correctionIdentifier:(id)a4 interactionIdentifier:(id)a5;
- (void)pauseSpeechRecognition;
- (void)preheat;
- (void)preheatEuclidModelWithLanguageCode:(id)a3 clientID:(id)a4;
- (void)requestOfflineDictationSupportForLanguage:(id)a3 completion:(id)a4;
- (void)resumeSpeechRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5;
- (void)sendSpeechCorrection:(id)a3 forIdentifier:(id)a4;
- (void)sendSpeechCorrection:(id)a3 interactionIdentifier:(id)a4;
- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)start;
- (void)startForFileAtURL:(id)a3 forLanguage:(id)a4;
- (void)stopSpeech:(id)a3 activationType:(unint64_t)a4 result:(id)a5 suppressAlert:(BOOL)a6;
- (void)suppressLowStorageNotificationForLanguage:(id)a3 suppress:(BOOL)a4;
- (void)synthesizeDidRecognizePhrases:(id)a3 languageModel:(id)a4 correctionIdentifier:(id)a5;
- (void)synthesizeDidRecognizeTokens:(id)a3 languageModel:(id)a4;
- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9;
- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10;
@end

@implementation UIDictationConnection

- (void)beginAvailabilityMonitoring
{
  v2 = [(UIDictationConnection *)self connection];
  [v2 beginAvailabilityMonitoring];
}

- (AFDictationConnection)connection
{
  p_connection = &self->_connection;
  connection = self->_connection;
  if (!connection)
  {
    v5 = self;
    objc_sync_enter(v5);
    if (!self->_connection)
    {
      v6 = objc_alloc_init(getAFDictationConnectionClass());
      if (v6)
      {
        objc_storeStrong(p_connection, v6);
        [(AFDictationConnection *)*p_connection setDelegate:v5];
        v7 = [objc_opt_class() analytics];
        v8 = dispatch_get_global_queue(9, 0);
        analyticsQueue = v5->_analyticsQueue;
        v5->_analyticsQueue = v8;
      }
    }

    objc_sync_exit(v5);

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
  v2 = [(UIDictationConnection *)self connection];
  [v2 cancelAvailabilityMonitoring];
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

  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _AFDictationRestricted(void)"];
  [v5 handleFailureInFunction:v6 file:@"UIDictationConnection.m" lineNumber:67 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)dictationIsAvailableForLanguage:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"_"];
  v5 = [v4 componentsJoinedByString:@"-"];

  v6 = [(UIDictationConnection *)self connection];
  LOBYTE(v4) = [v6 dictationIsAvailableForLanguage:v5];

  return v4;
}

- (void)sendSpeechCorrection:(id)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_alloc_init(getAFSpeechCorrectionInfoClass());
  [v10 setAlternativeSelectionCount:{objc_msgSend(v7, "alternativeSelectionCount")}];
  [v10 setCharacterModificationCount:{objc_msgSend(v7, "characterModificationCount")}];
  v8 = [v7 correctedText];

  [v10 setCorrectedText:v8];
  v9 = [(UIDictationConnection *)self connection];
  [v9 sendSpeechCorrection:v10 forIdentifier:v6];
}

- (void)sendSpeechCorrection:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = objc_alloc_init(getAFSpeechCorrectionInfoClass());
  [v12 setAlternativeSelectionCount:{objc_msgSend(v7, "alternativeSelectionCount")}];
  [v12 setCharacterModificationCount:{objc_msgSend(v7, "characterModificationCount")}];
  [v12 setCharacterInsertionCount:{objc_msgSend(v7, "characterInsertionCount")}];
  [v12 setCharacterDeletionCount:{objc_msgSend(v7, "characterDeletionCount")}];
  [v12 setCharacterSubstitutionCount:{objc_msgSend(v7, "characterSubstitutionCount")}];
  v8 = [v7 correctedText];
  [v12 setCorrectedText:v8];

  v9 = [v7 recognizedTextInfo];
  [v12 setRecognizedTextInfo:v9];

  v10 = [v7 selectedAlternativesInfo];

  [v12 setSelectedAlternativesInfo:v10];
  v11 = [(UIDictationConnection *)self connection];
  [v11 sendSpeechCorrection:v12 interactionIdentifier:v6];
}

- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v11 = [(UIDictationConnection *)self speechMessageContexts];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(UIDictationConnection *)self speechMessageContexts];
    [v10 setMessagesContext:v13];

    v14 = [v6 recognizedTextInfo];
    v15 = [v14 objectForKeyedSubscript:@"userEditedText"];
    [v10 setCorrectedText:v15];

    v16 = [v6 recognizedTextInfo];
    v17 = [v16 objectForKeyedSubscript:@"recognizedText"];
    [v10 setRecognizedText:v17];

    v18 = [(UIDictationConnection *)self connection];
    [v18 sendVisualContextAndCorrectionsInfo:v10 interactionIdentifier:v7];
  }
}

- (float)averagePower
{
  v2 = [(UIDictationConnection *)self connection];
  [v2 averagePower];
  v4 = v3;

  return v4;
}

+ (BOOL)dictationIsSupportedForLanguageCode:(id)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 componentsSeparatedByString:@"_"];
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
  if (a4 || (v7 & 1) != 0)
  {

    goto LABEL_6;
  }

  v10 = v8;
  v11 = [v8 code];
  v12 = MEMORY[0x1E696ABC0];
  if (v11 == 402)
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
  v2 = [(UIDictationConnection *)self connection];
  [v2 endSession];
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

  v4 = [(UIDictationConnection *)self connection];
  [v4 pauseRecognition];
}

- (void)resumeSpeechRecognitionWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UIDictationConnection *)self connection];
  [v11 resumeRecognitionWithPrefixText:v10 postfixText:v9 selectedText:v8];
}

- (void)suppressLowStorageNotificationForLanguage:(id)a3 suppress:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIDictationConnection *)self connection];
  [v7 suppressLowStorageNotificationForLanguage:v6 suppress:v4];
}

- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9
{
  v24 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [(UIDictationConnection *)self connection];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [(UIDictationConnection *)self connection];
    [v23 updateVoiceCommandContextWithPrefixText:v24 postfixText:v15 selectedText:v16 disambiguationActive:v17 cursorInVisibleText:v18 favorCommandSuppression:v19 abortCommandSuppression:v20];
  }
}

- (void)updateVoiceCommandContextWithPrefixText:(id)a3 postfixText:(id)a4 selectedText:(id)a5 disambiguationActive:(id)a6 cursorInVisibleText:(id)a7 favorCommandSuppression:(id)a8 abortCommandSuppression:(id)a9 undoEvent:(id)a10
{
  v24 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if ([(UIDictationConnection *)self supportNewVoiceEditingCommandSPI])
  {
    v23 = [(UIDictationConnection *)self connection];
    [v23 updateVoiceCommandContextWithPrefixText:v24 postfixText:v16 selectedText:v17 disambiguationActive:v18 cursorInVisibleText:v19 favorCommandSuppression:v20 abortCommandSuppression:v21 undoEvent:v22];
  }
}

- (BOOL)supportNewVoiceEditingCommandSPI
{
  v2 = [(UIDictationConnection *)self connection];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)requestOfflineDictationSupportForLanguage:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIDictationConnection *)self connection];
  v10 = v8;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &__block_literal_global_118_0;
  }

  [v8 requestOfflineDictationSupportForLanguage:v7 completion:v9];
}

+ (void)_updateFromGlobalOptions:(id)a3
{
  v3 = qword_1ED49F218;
  v5 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED49F218, &__block_literal_global_120_0);
  }

  v4 = +[UIKeyboard keyboardBundleIdentifier];
  [v5 setApplicationName:v4];

  [v5 setApplicationVersion:qword_1ED49F210];
  [v5 setReleaseAudioSessionOnRecordingCompletion:0];
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
    v6 = [v4 textInputTraits];
    v7 = [v6 inputContextHistory];

    v8 = [v7 tiInputContextHistory];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __46__UIDictationConnection_speechMessageContexts__block_invoke;
    v34[3] = &unk_1E7114B88;
    v35 = v2;
    [v8 enumerateAllContextEntryObjects:v34];
  }

  else
  {
    v9 = [v4 inputDelegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = +[UIKeyboardImpl activeInstance];
      v11 = [v10 inputDelegate];
      v12 = [v11 conversationContext];

      if (v12)
      {
        v13 = +[UIKeyboardImpl activeInstance];
        v14 = [v13 inputDelegate];
        v15 = [v14 conversationContext];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = [v15 entries];
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v37 count:16];
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
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v30 + 1) + 8 * i);
              v22 = objc_alloc_init(getAFSpeechMessagesContextClass());
              v23 = [v21 senderIdentifier];
              v24 = v23;
              if (v23)
              {
                v25 = v23;
              }

              else
              {
                v25 = &stru_1EFB14550;
              }

              [v22 setSender:v25];

              v26 = [v21 text];
              if (v26)
              {
                v27 = [v21 text];
                v36 = v27;
                v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
                [v22 setMessages:v28];
              }

              else
              {
                [v22 setMessages:MEMORY[0x1E695E0F0]];
              }

              [v2 addObject:v22];
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v37 count:16];
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
  v3 = [v2 isSmartLanguageSelectionEnabled];

  if (v3)
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
      v10 = [v9 preferencesActions];
      v11 = [v10 inputModeSelectionSequence];

      [v8 setWasLanguageToggled:{objc_msgSend(v11, "count") < 3}];
      v12 = [v5 currentInputMode];
      v13 = [v12 dictationLanguage];
      [v8 setPrimaryLanguageCode:v13];

      v14 = [v5 currentInputMode];
      v15 = [v14 multilingualLanguages];
      [v8 setMultiLingualKeyboardLanguages:v15];

      v16 = [v5 currentInputModeInPreference];
      v17 = [v16 identifier];
      v18 = TIInputModeGetLanguageWithRegion();
      [v8 setGlobalLastUsedKeyboard:v18];

      v19 = +[UIKeyboardImpl activeInstance];
      v20 = [v19 textInputTraits];
      v21 = [v20 keyboardType];

      if (v21 == 126)
      {
        v22 = +[UIDictationController sharedInstance];
        v23 = [v22 lastMessageKeyboardLanguage];

        v24 = +[UIKeyboardImpl activeInstance];
        v25 = [v24 textInputTraits];
        v26 = [v25 inputContextHistory];

        v27 = [v26 mostRecentTextEntries:10];
        [v8 setKeyboardConvoRecentMessages:v27];

        [v8 setPrevMessageLanguage:v23];
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

- (id)_dictationOptions:(id)a3
{
  v4 = a3;
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
  v8 = [v4 fieldIdentifier];
  [v7 setFieldIdentifier:v8];

  if (objc_opt_respondsToSelector())
  {
    v9 = [v4 layoutIdentifier];
    [v7 setKeyboardIdentifier:v9];
  }

  v10 = [v4 keyboardType];
  v11 = 1;
  if (v10 > 6)
  {
    if (v10 > 9)
    {
      if (v10 == 10)
      {
        v11 = 12;
        goto LABEL_33;
      }

      if (v10 == 11)
      {
        v11 = 14;
        goto LABEL_33;
      }

      if (v10 != 123)
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
    if (v10 != 9)
    {
      v14 = 1;
    }

    if (v10 != 8)
    {
      v13 = v14;
    }

    v15 = v10 == 7;
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

  if (v10 > 3)
  {
    v12 = 5;
    v13 = 9;
    v16 = 10;
    if (v10 != 6)
    {
      v16 = 1;
    }

    if (v10 != 5)
    {
      v13 = v16;
    }

    v15 = v10 == 4;
    goto LABEL_23;
  }

  switch(v10)
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
  v17 = [v4 returnKeyType];
  if (v17 > 0xB)
  {
    v18 = 0;
  }

  else
  {
    v18 = qword_18A67F520[v17];
  }

  [v7 setReturnKeyType:v18];
  if ([v7 returnKeyType] != 7 && +[UIDictationController isInputDelegateSafariAddressBar](UIDictationController, "isInputDelegateSafariAddressBar"))
  {
    [v7 setReturnKeyType:7];
  }

  [v7 setSecureOfflineOnly:{objc_msgSend(v4, "secureInput")}];
  if ([v4 acceptsDictationSearchResults])
  {
    [v7 setVoiceSearchTypeOptions:1];
  }

  v19 = [v4 prefixText];
  [v7 setPrefixText:v19];

  v20 = [v4 postfixText];
  [v7 setPostfixText:v20];

  v21 = [v4 selectedText];
  [v7 setSelectedText:v21];

  v22 = +[UIDictationController sharedInstance];
  v23 = [v22 dictationRequestOrigin];
  [v7 setDictationInputOrigin:{objc_msgSend(v23, "integerValue")}];

  v24 = +[UIDictationController sharedInstance];
  LOBYTE(v23) = [v24 smartLanguageSelectionOverridden];

  if ((v23 & 1) == 0)
  {
    v25 = [(UIDictationConnection *)self languageDetectionUserContext];
    [v7 setLanguageDetectionUserContext:v25];
  }

  [v7 setPreferOnlineRecognition:{+[UIDictationController shouldPreferOnlineRecognition](UIDictationController, "shouldPreferOnlineRecognition")}];
  [v7 setPreferOnDeviceRecognition:{+[UIDictationController shouldPreferOnDeviceRecognition](UIDictationController, "shouldPreferOnDeviceRecognition")}];
  if (([v7 preferOnlineRecognition] & 1) == 0)
  {
    v26 = [v7 languageDetectionUserContext];
    if (v26)
    {
    }

    else if ([v7 returnKeyType] != 7)
    {
      v27 = +[UIDictationConnectionPreferences sharedInstance];
      v28 = [v4 languageCode];
      v29 = [v27 isOnDeviceDictationSupportAvailableForLanguage:v28];

      [v7 setEmojiRecognition:v29];
      if (_os_feature_enabled_impl())
      {
        [v7 setDetectUtterances:1];
        [v7 setContinuousListening:1];
        [v7 setShouldHandleCapitalization:1];
        if (v29)
        {
          v30 = [v4 shouldRecognizeCommands];
        }

        else
        {
          v30 = 0;
        }

        [v7 setShouldRecognizeCommands:v30];
        [v7 setMaximumRecognitionDuration:-1.0];
      }
    }
  }

  if ([v7 returnKeyType] != 7)
  {
    [v7 setAutoPunctuation:{objc_msgSend(v4, "autoPunctuation")}];
  }

  v31 = +[UIDictationController sharedInstance];
  v32 = [v31 interactionIdentifier];
  [v7 setInteractionIdentifier:v32];

  if (_os_feature_enabled_impl() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v33 = [(UIDictationConnection *)self speechMessageContexts];
    [v7 setMessagesContext:v33];
  }

  return v7;
}

- (int64_t)speechEventTypeForDictationActivationType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_18A67F580[a3];
  }
}

- (id)_speechOptions:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(getAFSpeechRequestOptionsClass()) initWithActivationEvent:{-[UIDictationConnection speechEventTypeForDictationActivationType:](self, "speechEventTypeForDictationActivationType:", objc_msgSend(v4, "activationType"))}];
  [v5 setUseStreamingDictation:1];
  if ([v4 useAutomaticEndpointing])
  {
    if ([v4 secureInput])
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
  v7 = [v4 activationIdentifier];
  [v5 setActivationDeviceIdentifier:v7];

  v8 = [v4 turnIdentifier];
  [v5 setTurnIdentifier:v8];

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
  v7 = [(UIDictationConnection *)self _createConnectionOptions];
  v3 = [(UIDictationConnection *)self _initializeWithOptions:?];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didFailRecordingWithError:v3];
  }

  else
  {
    WeakRetained = +[UIKeyboardImpl sharedInstance];
    v5 = [WeakRetained inputDelegate];
    self->_charBeforeInsertionPointOnDictationStart = [v5 _characterBeforeCaretSelection];

    v6 = [WeakRetained inputDelegate];
    self->_charAfterInsertionPointOnDictationStart = [v6 _characterAfterCaretSelection];

    [(UIDictationConnection *)self _startWithOptions:v7];
  }
}

- (void)startForFileAtURL:(id)a3 forLanguage:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(UIDictationConnection *)self _createConnectionOptions];
  v8 = [(UIDictationConnection *)self _initializeWithOptions:v7];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didFailRecordingWithError:v8];
  }

  else
  {
    WeakRetained = [(UIDictationConnection *)self _dictationOptions:v7];
    v10 = [(UIDictationConnection *)self connection];
    [v10 startDictationWithSpeechFileAtURL:v11 options:WeakRetained forLanguage:v6];
  }
}

- (id)_initializeWithOptions:(id)a3
{
  v3 = [(UIDictationConnection *)self connection];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UIDictationConnection" code:0 userInfo:0];
  }

  return v4;
}

- (void)_startWithOptions:(id)a3
{
  v74[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[UIDictationController sharedInstance];
  v6 = [v5 smartLanguageSelectionOverridden];

  if (v6)
  {
    v7 = +[UIDictationController sharedInstance];
    v8 = [(__CFString *)v7 smartLanguageSelectionOverrideLanguage];
  }

  else
  {
    v9 = [v4 languageCode];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [MEMORY[0x1E695DF58] preferredLocale];
      v11 = [v12 languageCode];
    }

    v7 = [v4 regionCode];
    if ([(__CFString *)v11 isEqualToString:@"ko"]&& [(__CFString *)v7 isEqualToString:@"KO"])
    {

      v7 = @"KR";
    }

    else if (!v7)
    {
      goto LABEL_12;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v11, v7];
  }

  v11 = v8;
LABEL_12:
  [v4 setLanguageCode:v11];
  v13 = [(UIDictationConnection *)self _dictationOptions:v4];
  [(UIDictationConnection *)self setDictationOptions:v13];

  v14 = [(UIDictationConnection *)self _speechOptions:v4];
  v15 = +[UIDictationController sharedInstance];
  v16 = [v15 reasonType];

  v17 = [UIDictationController UIDictationStartStopReasonTypeDescription:v16];
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
  v20 = [v4 prefixText];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_1EFB14550;
  }

  v74[1] = v22;
  v73[2] = @"rightContext";
  v23 = [v4 postfixText];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_1EFB14550;
  }

  v74[2] = v25;
  v73[3] = @"selectedText";
  v26 = [v4 selectedText];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
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
    v31 = [(UIDictationConnection *)self dictationOptions];
    if ([v31 preferOnlineRecognition])
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

  v33 = [(UIDictationConnection *)self dictationOptions];
  v34 = [v33 languageDetectionUserContext];

  v35 = [v34 userContextLanguageCodeForKeyboardLangauge:v11 overrideLanguageCode:0];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v11;
  }

  v38 = v37;

  v39 = [v38 componentsSeparatedByString:@"-"];

  v40 = [v39 componentsJoinedByString:@"_"];

  [(UIDictationConnection *)self setLastUsedPrimaryLanguage:v40];
  [(UIDictationConnection *)self setLastUsedDetectedLanguage:0];
  [(UIDictationConnection *)self setLastUsedTopLanguages:0];
  [(UIDictationConnection *)self setLowConfidenceAboutLanguageDetection:0];
  [(UIDictationConnection *)self setReceivedMultilingualResultsCommand:0];
  v41 = [MEMORY[0x1E695DF90] dictionary];
  [(UIDictationConnection *)self setLastReceivedPartials:v41];

  v42 = _UIDictationConnectionLog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [(UIDictationConnection *)self dictationOptions];
    v44 = [v43 languageDetectionUserContext];
    *buf = 136315906;
    v45 = @"YES";
    if (v44)
    {
      v45 = @"NO";
    }

    v66 = "[UIDictationConnection _startWithOptions:]";
    v67 = 2112;
    v68 = v11;
    v69 = 2112;
    v70 = v40;
    v71 = 2112;
    v72 = v45;
    _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_DEFAULT, "%s languageCode %@ siriDictationWithLanguageCode %@ monolingual %@", buf, 0x2Au);
  }

  v46 = +[UIDictationConnectionPreferences sharedInstance];
  v47 = [v46 isOnDeviceDictationSupportAvailableForLanguage:v11];
  v48 = +[UIKeyboardInputMode dictationInputMode];
  [v48 setIsCurrentDictationLanguageOnDevice:v47];

  v49 = [(UIDictationConnection *)self dictationOptions];
  if ([v49 detectUtterances])
  {
    v50 = +[UIKeyboardInputMode dictationInputMode];
    v51 = [v50 isCurrentDictationLanguageOnDevice];

    if (v51)
    {
      v52 = +[UIKeyboard isMajelEnabled];
      v53 = +[UIKeyboardInputMode dictationInputMode];
      [v53 setUsingTypeAndTalk:v52];

      v54 = _UIDictationConnectionLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = +[UIKeyboardInputMode dictationInputMode];
        v56 = [v55 usingTypeAndTalk];
        *buf = 136315394;
        v66 = "[UIDictationConnection _startWithOptions:]";
        v67 = 1024;
        LODWORD(v68) = v56;
        _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_DEFAULT, "%s usingTypeAndTalk = %d", buf, 0x12u);
      }

      goto LABEL_43;
    }
  }

  else
  {
  }

  v57 = +[UIKeyboardInputMode dictationInputMode];
  v58 = [v57 usingTypeAndTalk];

  if (!v58)
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

  v62 = [(UIDictationConnection *)self connection];
  v63 = [(UIDictationConnection *)self dictationOptions];
  [v62 startDictationWithLanguageCode:v11 options:v63 speechOptions:v64];
}

- (void)stopSpeech:(id)a3 activationType:(unint64_t)a4 result:(id)a5 suppressAlert:(BOOL)a6
{
  v6 = a6;
  v24[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [objc_alloc(getAFSpeechRequestOptionsClass()) initWithActivationEvent:{-[UIDictationConnection speechEventTypeForDictationActivationType:](self, "speechEventTypeForDictationActivationType:", a4)}];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 setSuppressStopAlert:1];
  }

  v23 = @"stopDictation";
  v24[0] = v10;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [v12 setStopContext:v13];

  if (v11)
  {
    v14 = MEMORY[0x1E695DF90];
    v15 = [v12 stopContext];
    v16 = [v14 dictionaryWithDictionary:v15];

    if (v10)
    {
      v17 = v10;
    }

    else
    {
      v17 = &stru_1EFB14550;
    }

    [v16 setObject:v17 forKey:@"submitDictation"];
    v18 = [UIDictationController removeTextIfNeeded:v11];
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

  v22 = [(UIDictationConnection *)self connection];
  [v22 stopSpeechWithOptions:v12];
}

- (void)cancelSpeech
{
  v3 = +[UIDictationController sharedInstance];
  v4 = [v3 reasonType];

  if (v4 == 20)
  {
    v5 = +[UIDictationController sharedInstance];
    v6 = [v5 lastHypothesis];

    v7 = +[UIDictationController sharedInstance];
    v8 = [v7 keyboardInputModeToReturn];
    v9 = [v8 primaryLanguage];

    v10 = +[UIDictationController sharedInstance];
    v11 = [v10 interactionIdentifier];

    analyticsQueue = self->_analyticsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__UIDictationConnection_cancelSpeech__block_invoke;
    block[3] = &unk_1E70F6228;
    v18 = v6;
    v19 = v9;
    v20 = v11;
    v13 = v11;
    v14 = v9;
    v15 = v6;
    dispatch_async(analyticsQueue, block);
  }

  v16 = [(UIDictationConnection *)self connection];
  [v16 cancelSpeech];
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

- (void)logDidShowAlternatives:(id)a3 correctionIdentifier:(id)a4 interactionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  analyticsQueue = self->_analyticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__UIDictationConnection_logDidShowAlternatives_correctionIdentifier_interactionIdentifier___block_invoke;
  block[3] = &unk_1E70F6228;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)logDidSelectAlternative:(id)a3 correctionIdentifier:(id)a4 interactionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  analyticsQueue = self->_analyticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__UIDictationConnection_logDidSelectAlternative_correctionIdentifier_interactionIdentifier___block_invoke;
  block[3] = &unk_1E70F6228;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)logDidAcceptDictationResult:(id)a3 reason:(id)a4 result:(id)a5 correctionIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v10 count])
  {
    v14 = 0;
    goto LABEL_6;
  }

  v14 = [UIDictationController whitelistedDictationDictionariesFromMetadataDictionaries:v10];
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
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v22 = v13;
  v23 = v12;
  v24 = v11;
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

- (void)logDidAcceptReplacement:(id)a3 replacementLanguageCode:(id)a4 originalText:(id)a5 correctionIdentifier:(id)a6 interactionIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  analyticsQueue = self->_analyticsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__UIDictationConnection_logDidAcceptReplacement_replacementLanguageCode_originalText_correctionIdentifier_interactionIdentifier___block_invoke;
  block[3] = &unk_1E70F8868;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(analyticsQueue, block);
  v23 = [(UIDictationConnection *)self connection];
  [v23 sendUserSelectedAlternativeDictationLanguageCode:v21];
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

- (void)synthesizeDidRecognizeTokens:(id)a3 languageModel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIDictationConnection *)self connection];
  [(UIDictationConnection *)self dictationConnection:v8 didRecognizeTokens:v7 languageModel:v6];
}

- (void)synthesizeDidRecognizePhrases:(id)a3 languageModel:(id)a4 correctionIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(UIDictationConnection *)self connection];
  [(UIDictationConnection *)self dictationConnection:v11 didRecognizePhrases:v10 languageModel:v9 correctionIdentifier:v8];
}

- (void)preheat
{
  v2 = [(UIDictationConnection *)self connection];
  [v2 preheat];
}

+ (id)interpretationFromSpeechTokens:(id)a3 startIndex:(unint64_t)a4 filterBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [v7 count];
  v11 = 0.0;
  v12 = 0.0;
  if (v10 > a4)
  {
    v13 = v10 - 1;
    while (1)
    {
      v14 = [v7 objectAtIndex:a4];
      v22 = 0;
      v15 = v14;
      v16 = v15;
      if (!v8)
      {
        break;
      }

      v8[2](v8, v15, a4, &v22);
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

      if (v13 != a4)
      {
        ++a4;
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

+ (BOOL)hasSpeechRecognitionPauseAckPhrases:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [v4 interpretations];
    if ([v5 count] == 1)
    {
      v6 = [v3 firstObject];
      v7 = [v6 interpretations];
      v8 = [v7 firstObject];
      v9 = [v8 tokens];
      if ([v9 count] == 1)
      {
        v17 = [v3 firstObject];
        v16 = [v17 interpretations];
        v15 = [v16 firstObject];
        v10 = [v15 tokens];
        [v10 firstObject];
        v11 = v18 = v6;
        v12 = [v11 text];
        v13 = [v12 isEqualToString:@"DUMMYTOKEN"];

        v6 = v18;
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

- (void)dictationConnection:(id)a3 didDetectLanguage:(id)a4 confidenceScores:(id)a5 isConfident:(BOOL)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 componentsSeparatedByString:@"-"];
  v14 = [v13 componentsJoinedByString:@"_"];
  [(UIDictationConnection *)self setLastUsedDetectedLanguage:v14];

  v15 = +[UIKeyboardImpl sharedInstance];
  v16 = [v15 textInputTraits];
  v17 = [v16 keyboardType];

  if (v17 > 0xB || ((1 << v17) & 0x930) == 0)
  {
    v35 = +[UIDictationController sharedInstance];
    v36 = [v35 currentKeyboardPrimaryLanguage];

    LODWORD(v35) = UIKeyboardInputModeIsDefaultRightToLeft(v36);
    v37 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
    IsDefaultRightToLeft = UIKeyboardInputModeIsDefaultRightToLeft(v37);

    if (v35 != IsDefaultRightToLeft)
    {
      charBeforeInsertionPointOnDictationStart = self->_charBeforeInsertionPointOnDictationStart;
      if (charBeforeInsertionPointOnDictationStart == 10 || !charBeforeInsertionPointOnDictationStart)
      {
        charAfterInsertionPointOnDictationStart = self->_charAfterInsertionPointOnDictationStart;
        if (charAfterInsertionPointOnDictationStart == 10 || !charAfterInsertionPointOnDictationStart)
        {
          v41 = +[UIKeyboardImpl sharedInstance];
          v42 = [v41 inputDelegate];

          v43 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
          v44 = UIKeyboardInputModeIsDefaultRightToLeft(v43);
          v45 = [v42 selectedTextRange];
          [v42 setBaseWritingDirection:v44 forRange:v45];
        }
      }
    }
  }

  v19 = [v12 keysSortedByValueUsingComparator:&__block_literal_global_181];
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
      v24 = [(UIDictationConnection *)self lastUsedTopLanguages];
      v25 = [v19 objectAtIndexedSubscript:v23];
      [v24 addObject:v25];

      ++v23;
    }

    while (v22 != v23);
  }

  self->_lowConfidenceAboutLanguageDetection = !a6;
  if (self->_connection == v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didDetectLanguage:v11];

    v27 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 136315394;
      v47 = "[UIDictationConnection dictationConnection:didDetectLanguage:confidenceScores:isConfident:]";
      v48 = 2112;
      v49 = v11;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "%s languageCode %@", &v46, 0x16u);
    }

    if (!self->_receivedMultilingualResultsCommand)
    {
      v28 = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
      v29 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
      v30 = [v28 isEqualToString:v29];

      if ((v30 & 1) == 0)
      {
        v31 = [(UIDictationConnection *)self lastReceivedPartials];
        v32 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
        v33 = [v31 objectForKeyedSubscript:v32];

        if (v33)
        {
          v34 = _UIDictationConnectionLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v46 = 136315394;
            v47 = "[UIDictationConnection dictationConnection:didDetectLanguage:confidenceScores:isConfident:]";
            v48 = 2112;
            v49 = v11;
            _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEFAULT, "%s Replaying last partial result for %@ by calling didRecognizePartialResult", &v46, 0x16u);
          }

          [(UIDictationConnection *)self dictationConnection:v10 didRecognizePartialResult:v33];
        }
      }
    }
  }
}

- (void)dictationConnection:(id)a3 languageDetectorFailedWithError:(id)a4
{
  if (self->_connection == a3)
  {
    v5 = [(UIDictationConnection *)self dictationOptions];
    [v5 setLanguageDetectionUserContext:0];
  }
}

- (void)dictationConnectionSpeechRecordingWillBegin:(id)a3
{
  if (self->_connection == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnectionWillStartRecording:self];
  }
}

- (void)dictationConnectionSpeechRecordingDidBegin:(id)a3
{
  if (self->_connection == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnectionDidStartRecording:self];
  }
}

- (void)dictationConnection:(id)a3 speechRecordingDidBeginWithOptions:(id)a4
{
  if (self->_connection == a3)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didStartRecordingWithOptions:v6];
  }
}

- (void)dictationConnection:(id)a3 didBeginLocalRecognitionWithModelInfo:(id)a4
{
  if (self->_connection == a3)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didBeginLocalRecognitionWithModelInfo:v6];
  }
}

- (void)dictationConnection:(id)a3 speechRecordingDidFail:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (connection == a3)
  {
    self->_connection = 0;
    v6 = a4;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = MEMORY[0x1E696ABC0];
    v11 = @"UIDictationConnectionUnderlyingError";
    v12[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10 = [v8 errorWithDomain:@"UIDictationConnection" code:-1 userInfo:v9];

    [WeakRetained dictationConnection:self didFailRecordingWithError:v10];
  }
}

- (void)dictationConnection:(id)a3 speechRecognitionDidFail:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  connection = self->_connection;
  if (connection == a3)
  {
    self->_connection = 0;

    if ([v6 code] == 6)
    {
      v8 = MEMORY[0x1E696ABC0];
      v23 = @"UIDictationConnectionUnderlyingError";
      v24[0] = v6;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v10 = v8;
      v11 = 2;
    }

    else if ([v6 code] == 602)
    {
      v12 = MEMORY[0x1E696ABC0];
      v21 = @"UIDictationConnectionUnderlyingError";
      v22 = v6;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v10 = v12;
      v11 = 3;
    }

    else
    {
      v13 = [v6 code];
      v14 = MEMORY[0x1E696ABC0];
      if (v13 == 603)
      {
        v19 = @"UIDictationConnectionUnderlyingError";
        v20 = v6;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v10 = v14;
        v11 = 4;
      }

      else
      {
        v17 = @"UIDictationConnectionUnderlyingError";
        v18 = v6;
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

- (void)dictationConnectionSpeechRecordingDidEnd:(id)a3
{
  if (self->_connection == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnectionDidEndRecording:self];
  }
}

- (void)dictationConnectionSpeechRecordingDidCancel:(id)a3
{
  connection = self->_connection;
  if (connection == a3)
  {
    self->_connection = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnectionDidCancel:self];
  }
}

- (void)dictationConnection:(id)a3 didRecognizeTokens:(id)a4 languageModel:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v41 = a4;
  v9 = a5;
  if (self->_connection == v8)
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
      v36 = [v15 resultTransformForLanguageModel:v9];

      v16 = [v9 componentsSeparatedByString:@"-"];
      v40 = [v16 componentsJoinedByString:@"_"];

      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __78__UIDictationConnection_dictationConnection_didRecognizeTokens_languageModel___block_invoke;
      v50[3] = &unk_1E7114BD0;
      v11 = v17;
      v51 = v11;
      [v41 enumerateObjectsUsingBlock:v50];
      if ([v11 count])
      {
        v18 = [v11 firstObject];
        [v18 setRemoveSpaceBefore:1];

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

          v26 = [v22 tokens];
          v27 = +[UIKeyboardImpl activeInstance];
          v28 = [v27 textInputTraits];
          v29 = +[UIDictationController serializedInterpretationFromTokens:transform:autocapitalization:capitalization:smartPunctuation:](UIDictationController, "serializedInterpretationFromTokens:transform:autocapitalization:capitalization:smartPunctuation:", v26, v37, [v28 autocapitalizationType], v25, 0);

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

      v9 = v40;
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

- (void)dictationConnection:(id)a3 didRecognizePartialResult:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v51 = v6;
  if (self->_connection == v6)
  {
    v48 = v7;
    v8 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
    v9 = v8;
    if (v8)
    {
      v46 = v8;
    }

    else
    {
      v46 = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
    }

    v49 = [v48 language];
    v10 = [v49 componentsSeparatedByString:@"-"];
    v52 = [v10 componentsJoinedByString:@"_"];

    v11 = [(UIDictationConnection *)self dictationOptions];
    v12 = [v11 languageDetectionUserContext];

    if (v12)
    {
      v13 = [(UIDictationConnection *)self lastReceivedPartials];
      [v13 setObject:v48 forKeyedSubscript:v49];
    }

    v45 = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
    v14 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
      v16 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
      *buf = 136315906;
      *&buf[4] = "[UIDictationConnection dictationConnection:didRecognizePartialResult:]";
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v64 = v16;
      v65 = 2112;
      v66 = v52;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "%s Keyboard language code %@, detected language code %@, partial language code %@", buf, 0x2Au);
    }

    v17 = [(UIDictationConnection *)self lastUsedDetectedLanguage];

    v18 = [v52 isEqualToString:v46];
    if (v18 & 1 | (v17 == 0) & [v49 isEqualToString:v45] || (-[UIDictationConnection dictationOptions](self, "dictationOptions"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "languageDetectionUserContext"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v19, v21))
    {
      WeakRetained = objc_loadWeakRetained(&self->_tokenFilter);
      v47 = [WeakRetained resultTransformForLanguageModel:v52];

      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = [v48 af_tokens];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __71__UIDictationConnection_dictationConnection_didRecognizePartialResult___block_invoke;
      v61[3] = &unk_1E7114BD0;
      v25 = v23;
      v62 = v25;
      [v24 enumerateObjectsUsingBlock:v61];

      if ([v25 count])
      {
        v26 = [v25 firstObject];
        [v26 setRemoveSpaceBefore:1];

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

          v35 = [v31 tokens];
          v36 = +[UIKeyboardImpl activeInstance];
          v37 = [v36 textInputTraits];
          v38 = +[UIDictationController serializedInterpretationFromTokens:transform:autocapitalization:capitalization:smartPunctuation:](UIDictationController, "serializedInterpretationFromTokens:transform:autocapitalization:capitalization:smartPunctuation:", v35, v47, [v37 autocapitalizationType], v34, 0);

          LOBYTE(v35) = *(v58 + 24);
          v39 = objc_loadWeakRetained(&self->_delegate);
          v40 = v39;
          offlineOnly = self->_offlineOnly;
          if ((v35 & 1) == 0)
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

    v7 = v48;
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

- (id)dictationSerializedResultWithPhrases:(id)a3 languageModel:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_tokenFilter);
  v9 = [WeakRetained resultTransformForLanguageModel:v7];

  v10 = [v7 componentsSeparatedByString:@"-"];

  v11 = [v10 componentsJoinedByString:@"_"];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v6;
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
  v19 = [v12 firstObject];
  v20 = [v19 interpretations];

  v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v29 + 1) + 8 * j) tokens];
        v26 = [v25 firstObject];
        [v26 setRemoveSpaceBefore:1];
      }

      v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }

  v27 = [[UIDictationSerializableResults alloc] initWithPhrases:v12];
  [(UIDictationSerializableResults *)v27 setTransform:v9];

  return v27;
}

- (void)dictationConnection:(id)a3 didRecognizePhrases:(id)a4 languageModel:(id)a5 correctionIdentifier:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (self->_connection == a3)
  {
    v13 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315138;
      v27 = "[UIDictationConnection dictationConnection:didRecognizePhrases:languageModel:correctionIdentifier:]";
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "%s", &v26, 0xCu);
    }

    if ([objc_opt_class() hasSpeechRecognitionPauseAckPhrases:v10])
    {
      v14 = _UIDictationConnectionLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315138;
        v27 = "[UIDictationConnection dictationConnection:didRecognizePhrases:languageModel:correctionIdentifier:]";
        v15 = "%s This is a speech recognition pause acknowledgement callback. Early return";
LABEL_10:
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, v15, &v26, 0xCu);
      }
    }

    else
    {
      if (!self->_ignoreSpeechRecognitionResults)
      {
        v16 = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
        v17 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
        v18 = [v16 isEqualToString:v17];

        if (self->_receivedMultilingualResultsCommand || ([(UIDictationConnection *)self lastUsedDetectedLanguage], v19 = objc_claimAutoreleasedReturnValue(), v20 = (v19 == 0) | v18, v19, (v20 & 1) != 0))
        {
          v21 = _UIDictationConnectionLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 136315394;
            v27 = "[UIDictationConnection dictationConnection:didRecognizePhrases:languageModel:correctionIdentifier:]";
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "%s languageModel %@", &v26, 0x16u);
          }

          v14 = [(UIDictationConnection *)self dictationSerializedResultWithPhrases:v10 languageModel:v11];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained dictationConnection:self finalizePhrases:v14 languageModel:v11 correctionIdentifier:v12 secureInput:self->_offlineOnly finalResult:1];
        }

        else
        {
          v23 = _UIDictationConnectionLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
            v25 = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
            v26 = 136315650;
            v27 = "[UIDictationConnection dictationConnection:didRecognizePhrases:languageModel:correctionIdentifier:]";
            v28 = 2112;
            v29 = v24;
            v30 = 2112;
            v31 = v25;
            _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "%s Calling didCancelIncompatibleLocalRecognizer on delegate because of language mismatch (%@ vs %@)", &v26, 0x20u);
          }

          v14 = [(UIDictationConnection *)self delegate];
          [v14 dictationConnectionDidCancelIncompatibleLocalRecognizer:self];
        }

        goto LABEL_19;
      }

      v14 = _UIDictationConnectionLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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

- (void)dictationConnection:(id)a3 didRecognizePartialPackage:(id)a4 nluResult:(id)a5 languageModel:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (self->_connection == a3)
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
      [WeakRetained dictationConnection:self didReceivePartialPackage:v10 nluResult:v11 languageModel:v12];
    }
  }
}

- (void)dictationConnection:(id)a3 didRecognizeMultilingualSpeech:(id)a4
{
  v133 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_connection == a3)
  {
    [(UIDictationConnection *)self setReceivedMultilingualResultsCommand:1];
    v7 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v132 = "[UIDictationConnection dictationConnection:didRecognizeMultilingualSpeech:]";
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v8 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(UIDictationConnection *)self lastUsedPrimaryLanguage];
    }

    v11 = v10;

    v85 = v6;
    v91 = [v6 speechRecognizedByLanguage];
    v90 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = [(UIDictationConnection *)self lastUsedDetectedLanguage];

    v86 = v11;
    v87 = self;
    if (v12)
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
            v94 = [v91 objectForKey:?];
            v14 = [v94 recognition];
            v15 = [v14 af_speechPhrases];

            v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            v119 = 0u;
            v17 = v15;
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
            v23 = [v16 firstObject];
            v24 = [v23 interpretations];

            v25 = [v24 countByEnumeratingWithState:&v112 objects:v128 count:16];
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
                    objc_enumerationMutation(v24);
                  }

                  v29 = [*(*(&v112 + 1) + 8 * k) tokens];
                  v30 = [v29 firstObject];
                  [v30 setRemoveSpaceBefore:1];
                }

                v26 = [v24 countByEnumeratingWithState:&v112 objects:v128 count:16];
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
      self = v87;
    }

    v32 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
    if (v32 && (v33 = v32, v34 = [(UIDictationConnection *)self lowConfidenceAboutLanguageDetection], v33, v34))
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v36 = [(UIDictationConnection *)self lastUsedDetectedLanguage];
      v37 = [v36 componentsSeparatedByString:@"_"];
      v38 = [v37 componentsJoinedByString:@"-"];
      v39 = [v91 objectForKey:v38];

      v40 = [v39 recognition];
      v41 = [v40 af_speechPhrases];

      v42 = [v39 af_correctionContext];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v43 = v41;
      v44 = [v43 countByEnumeratingWithState:&v100 objects:v125 count:16];
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
              objc_enumerationMutation(v43);
            }

            v48 = [UIDictationUtilities phraseFromAFPhrase:*(*(&v100 + 1) + 8 * m)];
            [v35 addObject:v48];
          }

          v45 = [v43 countByEnumeratingWithState:&v100 objects:v125 count:16];
        }

        while (v45);
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v49 = [v35 firstObject];
      v50 = [v49 interpretations];

      v51 = [v50 countByEnumeratingWithState:&v96 objects:v124 count:16];
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
              objc_enumerationMutation(v50);
            }

            v55 = [*(*(&v96 + 1) + 8 * n) tokens];
            v56 = [v55 firstObject];
            [v56 setRemoveSpaceBefore:1];
          }

          v52 = [v50 countByEnumeratingWithState:&v96 objects:v124 count:16];
        }

        while (v52);
      }

      v57 = v90;
      v58 = [[UIDictationSerializableResults alloc] initWithDetectedPhrases:v35 multilingualAlternatives:v90];
      [(UIDictationSerializableResults *)v58 setLowConfidenceAboutLanguageDetection:[(UIDictationConnection *)v87 lowConfidenceAboutLanguageDetection]];
      WeakRetained = objc_loadWeakRetained(&v87->_delegate);
      v60 = WeakRetained;
      offlineOnly = v87->_offlineOnly;
      v62 = v87;
      v63 = v58;
      v64 = v86;
      v65 = v86;
      v66 = v42;
    }

    else
    {
      v67 = [v11 componentsSeparatedByString:@"_"];
      v68 = [v67 componentsJoinedByString:@"-"];
      v35 = [v91 objectForKey:v68];

      v69 = [v35 recognition];
      v70 = [v69 af_speechPhrases];

      v43 = [v35 af_correctionContext];
      v71 = objc_loadWeakRetained(&self->_tokenFilter);
      v95 = [v71 resultTransformForLanguageModel:v11];

      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v39 = v70;
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
            [v42 addObject:v76];
          }

          v73 = [v39 countByEnumeratingWithState:&v108 objects:v127 count:16];
        }

        while (v73);
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v77 = [v42 firstObject];
      v78 = [v77 interpretations];

      v79 = [v78 countByEnumeratingWithState:&v104 objects:v126 count:16];
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
              objc_enumerationMutation(v78);
            }

            v83 = [*(*(&v104 + 1) + 8 * jj) tokens];
            v84 = [v83 firstObject];
            [v84 setRemoveSpaceBefore:1];
          }

          v80 = [v78 countByEnumeratingWithState:&v104 objects:v126 count:16];
        }

        while (v80);
      }

      v57 = v90;
      v58 = [[UIDictationSerializableResults alloc] initWithDetectedPhrases:v42 multilingualAlternatives:v90];
      [(UIDictationSerializableResults *)v58 setLowConfidenceAboutLanguageDetection:[(UIDictationConnection *)v87 lowConfidenceAboutLanguageDetection]];
      [(UIDictationSerializableResults *)v58 setTransform:v95];
      WeakRetained = objc_loadWeakRetained(&v87->_delegate);
      v60 = WeakRetained;
      offlineOnly = v87->_offlineOnly;
      v62 = v87;
      v63 = v58;
      v64 = v86;
      v65 = v86;
      v66 = v43;
    }

    [WeakRetained dictationConnection:v62 finalizePhrases:v63 languageModel:v65 correctionIdentifier:v66 secureInput:offlineOnly finalResult:0];

    v6 = v85;
  }
}

- (void)dictationConnectionSpeechRecognitionDidSucceed:(id)a3
{
  connection = self->_connection;
  if (connection == a3)
  {
    self->_connection = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnectionDidFinish:self];
  }
}

- (void)dictationConnnectionDidChangeAvailability:(id)a3
{
  if (self->_connection == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnnectionDidChangeAvailability:self];
  }
}

- (void)dictationConnection:(id)a3 didReceiveSearchResults:(id)a4 recognizedText:(id)a5 stable:(BOOL)a6 final:(BOOL)a7
{
  if (self->_connection == a3)
  {
    v8 = a7;
    v9 = a6;
    v12 = a5;
    v13 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dictationConnection:self didReceiveSearchResults:v13 recognizedText:v12 stable:v9 final:v8];
  }
}

- (void)dictationConnectionDidPauseRecognition:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_connection == a3)
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

- (void)dictationConnection:(id)a3 didRecognizeFinalResultCandidatePackage:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_connection == v6)
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
      v11 = [v7 recognition];
      v12 = [v11 phrases];

      v13 = [(UIDictationConnection *)self dictationSerializedResultWithPhrases:v12 languageModel:0];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained dictationConnection:self didReceiveCandidateDictationSerializableResults:v13];
    }
  }
}

- (void)dictationConnection:(id)a3 didRecognizeVoiceCommandCandidatePackage:(id)a4 nluResult:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (self->_connection == a3)
  {
    v10 = _UIDictationConnectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[UIDictationConnection dictationConnection:didRecognizeVoiceCommandCandidatePackage:nluResult:]";
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%s", &v18, 0xCu);
    }

    v11 = [v8 recognition];
    v12 = [v11 phrases];

    if ([objc_opt_class() hasSpeechRecognitionPauseAckPhrases:v12])
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
        [WeakRetained dictationConnection:self didReceiveVoiceCommandCandidatePackage:v8 nluResult:v9];
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

- (void)preheatEuclidModelWithLanguageCode:(id)a3 clientID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIDictationConnection *)self connection];
  [v8 preheatEuclidModelWithLanguage:v7 clientID:v6];
}

- (void)euclidPhoneticString:(id)a3 maxResultsCount:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(UIDictationConnection *)self connection];
  [v10 getEuclidPhonetic:v9 maxResultsCount:a4 completion:v8];
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