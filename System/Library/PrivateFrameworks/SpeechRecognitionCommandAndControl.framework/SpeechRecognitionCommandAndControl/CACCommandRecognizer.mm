@interface CACCommandRecognizer
+ (void)_accumulateCloseMatchUsingCommandIdentifier:(id)identifier substitutionTable:(id)table;
+ (void)_showHintWithAccumulateCloseMatches;
+ (void)resetCloseMatchAccumulator;
+ (void)suspendCloseMatchAccumulatorForCommand;
- (BOOL)isAppropriateForContext;
- (CACCommandRecognizer)initWithCommands:(id)commands contextEvaluators:(id)evaluators builtInLMIdentifiers:(id)identifiers;
- (CACCommandRecognizerDelegate)delegate;
- (id)_commandParametersFromCACLanguageModel:(id)model;
- (id)commandParametersFromCACLanguageModel:(id)model;
- (id)commandStrings;
- (id)commandTextSequenceFromCACLanguageModel:(id)model;
- (void)_buildLanguageModelUsingCommands;
- (void)_synchronizeSpeechRecognizerSettings;
- (void)handleSpokenCommand:(id)command;
- (void)speechRecognizer:(id)recognizer didRecognize:(id)recognize;
- (void)startListening;
- (void)stopListening;
- (void)synchronizeWithReason:(id)reason;
@end

@implementation CACCommandRecognizer

- (CACCommandRecognizer)initWithCommands:(id)commands contextEvaluators:(id)evaluators builtInLMIdentifiers:(id)identifiers
{
  commandsCopy = commands;
  evaluatorsCopy = evaluators;
  identifiersCopy = identifiers;
  v12 = [(CACCommandRecognizer *)self init];
  if (v12)
  {
    v13 = objc_opt_new();
    speechRecognizer = v12->_speechRecognizer;
    v12->_speechRecognizer = v13;

    [(CACSpeechRecognizer *)v12->_speechRecognizer setDelegate:v12];
    objc_storeStrong(&v12->_spokenCommandsCache, commands);
    objc_storeStrong(&v12->_contextEvaluators, evaluators);
    objc_storeStrong(&v12->_builtInLMIdentifiers, identifiers);
    [(CACCommandRecognizer *)v12 _synchronizeSpeechRecognizerSettings];
    [(CACCommandRecognizer *)v12 _buildLanguageModelUsingCommands];
  }

  return v12;
}

- (void)synchronizeWithReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  if ([v5 isListening])
  {
    isAppropriateForContext = [(CACCommandRecognizer *)selfCopy isAppropriateForContext];

    if (isAppropriateForContext)
    {
      [(CACCommandRecognizer *)selfCopy _synchronizeSpeechRecognizerSettings];
      [(CACCommandRecognizer *)selfCopy startListening];
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(CACCommandRecognizer *)selfCopy stopListening];
LABEL_6:
  objc_sync_exit(selfCopy);
}

- (void)_synchronizeSpeechRecognizerSettings
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  dictationRecognizerMode = [v3 dictationRecognizerMode];

  speechRecognizer = self->_speechRecognizer;
  v6 = +[CACPreferences sharedPreferences];
  if ([v6 userHintsFeatures])
  {
    v7 = [(NSDictionary *)self->_contextEvaluators objectForKey:kCACCommandContextPreventCloseMatchResults];
    -[CACSpeechRecognizer setRequestCloseMatchResults:](speechRecognizer, "setRequestCloseMatchResults:", [v7 BOOLValue] ^ 1);
  }

  else
  {
    [(CACSpeechRecognizer *)speechRecognizer setRequestCloseMatchResults:0];
  }

  v8 = self->_speechRecognizer;

  [(CACSpeechRecognizer *)v8 setSpellingMode:dictationRecognizerMode == 3];
}

- (void)_buildLanguageModelUsingCommands
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_spokenCommandsCache;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setCommandRecognizer:{self, v11}];
        languageModel = [v9 languageModel];
        if (languageModel)
        {
          [v3 addChildLanguageModel:languageModel];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(CACSpeechRecognizer *)self->_speechRecognizer setLanguageModel:v3];
}

- (BOOL)isAppropriateForContext
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  forceAllCommandsToBeActive = [v3 forceAllCommandsToBeActive];

  if (forceAllCommandsToBeActive)
  {
    return 1;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [(NSDictionary *)self->_contextEvaluators allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(NSDictionary *)self->_contextEvaluators objectForKey:v11];
        LODWORD(v11) = [CACSpokenCommandManager doesEvaluatorKey:v11 matchValue:v12];

        if (!v11)
        {
          v5 = 0;
          goto LABEL_19;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  if (![v13 currentInteractionLevel])
  {
    goto LABEL_14;
  }

  v14 = [(NSDictionary *)self->_contextEvaluators objectForKey:kCACCommandContextRequiresInteractionLevel];
  if (v14)
  {

LABEL_14:
    goto LABEL_15;
  }

  v19 = [(NSDictionary *)self->_contextEvaluators objectForKey:kCACCommandContextSupportsInteractionLevel];

  if (!v19)
  {
    return 0;
  }

LABEL_15:
  v15 = +[CACDisplayManager sharedManager];
  if ([v15 carPlayConnected])
  {
    v16 = [(NSDictionary *)self->_contextEvaluators objectForKey:kCACCommandContextSupportsCarPlay];

    if (!v16)
    {
      return 0;
    }
  }

  else
  {
  }

  allKeys = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  if ([allKeys isSiriListening])
  {
    v18 = [(NSDictionary *)self->_contextEvaluators objectForKey:kCACCommandContextSupportDuringSiriListening];
    v5 = v18 != 0;
  }

  else
  {
    v5 = 1;
  }

LABEL_19:

  return v5;
}

- (void)startListening
{
  speechRecognizer = [(CACCommandRecognizer *)self speechRecognizer];
  [speechRecognizer startListening];
}

- (void)stopListening
{
  speechRecognizer = [(CACCommandRecognizer *)self speechRecognizer];
  [speechRecognizer stopListening];
}

- (void)handleSpokenCommand:(id)command
{
  commandCopy = command;
  v4 = CACLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CACCommandRecognizer *)commandCopy handleSpokenCommand:v4];
  }
}

- (void)speechRecognizer:(id)recognizer didRecognize:(id)recognize
{
  v115 = *MEMORY[0x277D85DE8];
  recognizeCopy = recognize;
  transcriptionResult = [recognizeCopy transcriptionResult];
  isPartialResult = [transcriptionResult isPartialResult];

  mEMORY[0x277D79898] = [MEMORY[0x277D79898] shared];
  v9 = mEMORY[0x277D79898];
  if (isPartialResult)
  {
    [mEMORY[0x277D79898] partialCommandReceivedInUI];
  }

  else
  {
    [mEMORY[0x277D79898] finalCommandReceivedInUI];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    transcriptionResult2 = [recognizeCopy transcriptionResult];
    v13 = [v11 utteranceIDHasBeenHandled:{objc_msgSend(transcriptionResult2, "utteranceID")}];
  }

  else
  {
    v13 = 0;
  }

  if ([recognizeCopy languageObject] && RXLanguageObjectGetCount() == 1)
  {
    ObjectAtIndex = RXLanguageObjectGetObjectAtIndex();
    v15 = 0x279CEA000uLL;
    v16 = +[CACSpeechSystem speechSystem];
    v17 = [v16 resultLanguageModelFromRXLanguageObject:ObjectAtIndex];

    if (v13 & 1) != 0 || ([recognizeCopy transcriptionResult], ObjectAtIndex = objc_claimAutoreleasedReturnValue(), (objc_msgSend(ObjectAtIndex, "isPartialResult")))
    {
      identifier = [v17 identifier];
      v19 = [CACSpokenCommandManager commandIdentifierIsDictation:identifier];

      if (v13)
      {
        if (!v19)
        {
          goto LABEL_75;
        }
      }

      else
      {

        if (!v19)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
    }

    Type = RXLanguageObjectGetType();
    if (Type != 6)
    {
      if (Type == 5)
      {
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        obj = self->_spokenCommandsCache;
        v21 = [(NSArray *)obj countByEnumeratingWithState:&v109 objects:v114 count:16];
        if (!v21)
        {
          goto LABEL_74;
        }

        v22 = v21;
        v23 = *v110;
        v99 = v17;
LABEL_21:
        v24 = 0;
        while (1)
        {
          if (*v110 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v109 + 1) + 8 * v24);
          identifier2 = [v25 identifier];
          identifier3 = [v17 identifier];
          v28 = [identifier2 isEqualToString:identifier3];

          if (v28)
          {
            v29 = [v25 copy];
            v30 = [(CACCommandRecognizer *)self commandParametersFromCACLanguageModel:v17];
            [v29 setRecognizedParameters:v30];

            [v29 setLanguageObject:recognizeCopy];
            v31 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
            [v31 stopAnyRepeatingSpokenCommand];

            v32 = +[CACRecordedUserActionManager sharedManager];
            [v32 cancelExecution];

            v33 = recognizeCopy;
            transcriptionResult3 = [recognizeCopy transcriptionResult];
            if (([transcriptionResult3 isPartialResult] & 1) == 0)
            {

LABEL_60:
              v68 = objc_loadWeakRetained(&self->_delegate);
              recognizeCopy = v33;
              if (v68)
              {
                v69 = v68;
                identifier4 = [v99 identifier];
                v71 = [CACSpokenCommandManager commandIdentifierIsDictation:identifier4];

                if (!v71)
                {
                  v72 = objc_loadWeakRetained(&self->_delegate);
                  transcriptionResult4 = [v33 transcriptionResult];
                  [v72 willHandleCommandForUtteranceID:{objc_msgSend(transcriptionResult4, "utteranceID")}];
                }
              }

              v74 = +[CACPreferences sharedPreferences];
              identifier5 = [v29 identifier];
              if (![v74 isConfirmationRequiredForCommandIdentifier:identifier5])
              {
                goto LABEL_70;
              }

              v76 = +[CACDisplayManager sharedManager];
              if ([v76 isDisplayingConfirmationModalAlert])
              {
                goto LABEL_69;
              }

              v77 = +[CACRecordedUserActionManager sharedManager];
              if ([v77 isRecording])
              {
                goto LABEL_68;
              }

              v78 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
              commandRecognitionLogPath = [v78 commandRecognitionLogPath];
              if (commandRecognitionLogPath)
              {

LABEL_68:
                recognizeCopy = v33;
LABEL_69:

LABEL_70:
LABEL_71:
                string = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                [string handleRecognizedCommand:v29];
              }

              else
              {
                v80 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                usingAutomationMode = [v80 usingAutomationMode];

                recognizeCopy = v33;
                if (usingAutomationMode)
                {
                  goto LABEL_71;
                }

                recognizedParameters = [v29 recognizedParameters];
                v82 = [CACSpokenCommand attributedStringFromRecognizedCommandParameters:recognizedParameters variantOverrides:0];
                string = [v82 string];

                v83 = MEMORY[0x277CCACA8];
                v84 = [CACLocaleUtilities localizedUIStringForKey:@"ConfirmationAlertDescription.CommandStringFormat"];
                v85 = [v83 stringWithValidatedFormat:v84 validFormatSpecifiers:@"%@" error:0, string];

                v86 = +[CACDisplayManager sharedManager];
                v87 = [CACLocaleUtilities localizedUIStringForKey:@"ConfirmationAlertTitle.ExecuteThisCommand"];
                v88 = [CACLocaleUtilities localizedUIStringForKey:@"ConfirmationAlertButton.Execute"];
                v89 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.Cancel"];
                v90 = [v29 copy];
                [v86 presentModalAlertWithTitle:v87 description:v85 okButtonText:v88 cancelButtonText:v89 object:v90 okButtonHandler:&__block_literal_global_19];

                recognizeCopy = v33;
              }

              v17 = v99;
              goto LABEL_73;
            }

            v35 = +[CACPreferences sharedPreferences];
            identifier6 = [v29 identifier];
            v37 = [v35 isConfirmationRequiredForCommandIdentifier:identifier6];

            if ((v37 & 1) == 0)
            {
              goto LABEL_60;
            }

            recognizeCopy = v33;
            v17 = v99;
          }

          if (v22 == ++v24)
          {
            v22 = [(NSArray *)obj countByEnumeratingWithState:&v109 objects:v114 count:16];
            if (v22)
            {
              goto LABEL_21;
            }

            goto LABEL_74;
          }
        }
      }

      goto LABEL_75;
    }

    transcriptionResult5 = [recognizeCopy transcriptionResult];
    v39 = [transcriptionResult5 isPartialResult] | v13;

    if (v39)
    {
LABEL_75:

      goto LABEL_76;
    }

    obj = +[CACPreferences sharedPreferences];
    if ([(CACCommandRecognizer *)self isListening]&& ([(NSArray *)obj userHintsFeatures]& 1) != 0)
    {
      v100 = v17;
      v92 = recognizeCopy;
      bestLocaleIdentifier = [(NSArray *)obj bestLocaleIdentifier];
      v40 = [(NSArray *)obj builtInCommandsStringsTableForLocaleIdentifier:?];
      v96 = objc_opt_new();
      v41 = RXObjectCopyProperty();
      v42 = [v41 count];
      if (v42 >= 1)
      {
        v43 = v42;
        v44 = 0;
        v45 = MEMORY[0x277D65608];
        v94 = v41;
        selfCopy = self;
        v93 = v42;
        while (1)
        {
          v97 = v44;
          [v41 objectAtIndex:?];
          v46 = RXLanguageObjectGetObjectAtIndex();
          speechSystem = [*(v15 + 1728) speechSystem];
          v48 = [speechSystem resultLanguageModelFromRXLanguageObject:v46];

          v103 = objc_opt_new();
          v49 = [(CACCommandRecognizer *)self commandParametersFromCACLanguageModel:v48];
          v50 = objc_alloc(MEMORY[0x277CCAB68]);
          v98 = v48;
          identifier7 = [v48 identifier];
          v52 = [v50 initWithString:identifier7];

          if (![v52 length] || (objc_msgSend(&unk_287BEFFA8, "containsObject:", v52) & 1) != 0)
          {
            goto LABEL_56;
          }

          v102 = v52;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          allKeys = [v49 allKeys];
          v54 = [allKeys countByEnumeratingWithState:&v105 objects:v113 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v106;
            do
            {
              for (i = 0; i != v55; ++i)
              {
                if (*v106 != v56)
                {
                  objc_enumerationMutation(allKeys);
                }

                v58 = *(*(&v105 + 1) + 8 * i);
                if (([v58 isEqualToString:*v45] & 1) != 0 || objc_msgSend(v58, "isEqualToString:", *MEMORY[0x277D65628]))
                {
                  v59 = [v49 objectForKey:v58];
                  v60 = [v59 objectForKey:kCACCommandParameterText];

                  v61 = [v40 objectForKey:v58];
                  if ([v60 length] && objc_msgSend(v61, "length"))
                  {
                    v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@>", v61];
                    [v103 setObject:v60 forKey:v62];

                    [v102 appendFormat:@"_%@", v60];
                  }
                }
              }

              v55 = [allKeys countByEnumeratingWithState:&v105 objects:v113 count:16];
            }

            while (v55);
          }

          identifier8 = [v98 identifier];
          if ([v96 containsObject:identifier8])
          {
            break;
          }

          v64 = +[CACUserHintsManager sharedManager];
          v65 = [v64 shouldDisplayUserHintAfterRegisteringIdentifier:v102];

          v52 = v102;
          v41 = v94;
          self = selfCopy;
          v15 = 0x279CEA000;
          v43 = v93;
          if (v65)
          {
            identifier9 = [v98 identifier];
            [CACCommandRecognizer _accumulateCloseMatchUsingCommandIdentifier:identifier9 substitutionTable:v103];

            identifier8 = [v98 identifier];
            [v96 addObject:identifier8];
            goto LABEL_55;
          }

LABEL_56:

          v44 = v97 + 1;
          if (v97 + 1 == v43)
          {
            goto LABEL_57;
          }
        }

        v41 = v94;
        self = selfCopy;
        v15 = 0x279CEA000;
        v43 = v93;
LABEL_55:

        v52 = v102;
        goto LABEL_56;
      }

LABEL_57:

      recognizeCopy = v92;
      v17 = v100;
    }

    v29 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    string = [(CACCommandRecognizer *)self speechRecognizer];
    [v29 registerSignPostEndProcessingForSpeechRecognizer:string message:@"Close Result."];
LABEL_73:

LABEL_74:
    goto LABEL_75;
  }

LABEL_76:
}

void __54__CACCommandRecognizer_speechRecognizer_didRecognize___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CACCommandRecognizer_speechRecognizer_didRecognize___block_invoke_2;
  block[3] = &unk_279CEB2D0;
  v6 = v2;
  v4 = v2;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __54__CACCommandRecognizer_speechRecognizer_didRecognize___block_invoke_2(uint64_t a1)
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 handleRecognizedCommand:*(a1 + 32)];
}

- (id)commandParametersFromCACLanguageModel:(id)model
{
  modelCopy = model;
  v5 = [(CACCommandRecognizer *)self _commandParametersFromCACLanguageModel:modelCopy];
  v6 = [(CACCommandRecognizer *)self commandTextSequenceFromCACLanguageModel:modelCopy];

  [v5 setObject:v6 forKey:kCACCommandParameterTextSequence];
  v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  dictationRecognizerMode = [v7 dictationRecognizerMode];

  if (dictationRecognizerMode == 3)
  {
    [v5 setObject:&unk_287BEFE50 forKey:@"SRCSClientDictationRecognizerModeIsSpelling"];
  }

  return v5;
}

- (id)_commandParametersFromCACLanguageModel:(id)model
{
  v35 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = objc_opt_new();
  text = [modelCopy text];
  if ([text length])
  {
    [v5 setObject:text forKey:kCACCommandParameterText];
  }

  v28 = text;
  attributes = [modelCopy attributes];
  v8 = [attributes objectForKey:kCACLanguageModelAttributeTextVariants];

  if (v8)
  {
    attributes2 = [modelCopy attributes];
    v10 = [attributes2 objectForKey:kCACLanguageModelAttributeTextVariants];
    [v5 setObject:v10 forKey:kCACCommandParameterTextVariants];
  }

  attributes3 = [modelCopy attributes];
  v12 = [attributes3 objectForKey:kCACLanguageModelAttributeCommandParameters];

  if ([v12 count])
  {
    [v5 addEntriesFromDictionary:v12];
  }

  v27 = v12;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = modelCopy;
  children = [modelCopy children];
  v14 = [children countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(children);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = [(CACCommandRecognizer *)self _commandParametersFromCACLanguageModel:v18];
        identifier = [v18 identifier];
        if ([v19 count])
        {
          if ([identifier length])
          {
            [v5 setObject:v19 forKey:identifier];
          }

          else
          {
            v21 = [v5 objectForKey:kCACCommandParameterText];

            if (v21)
            {
              [v19 removeObjectForKey:kCACCommandParameterText];
            }

            [v5 addEntriesFromDictionary:v19];
          }
        }
      }

      v15 = [children countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  attributes4 = [v29 attributes];
  v23 = [attributes4 objectForKey:kCACLanguageModelAttributeProxyIdentifier];

  if (v23)
  {
    v24 = MEMORY[0x277D655F8];
    v25 = [v5 objectForKey:*MEMORY[0x277D655F8]];
    if (v25)
    {
      [v5 setObject:v25 forKey:*MEMORY[0x277D65600]];
      [v5 removeObjectForKey:*v24];
    }
  }

  return v5;
}

- (id)commandTextSequenceFromCACLanguageModel:(id)model
{
  v43 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = objc_opt_new();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  text = [modelCopy text];
  if ([text length])
  {
    [dictionary setObject:text forKey:kCACCommandParameterText];
  }

  attributes = [modelCopy attributes];
  v9 = [attributes objectForKey:kCACLanguageModelAttributeTextVariants];

  if (v9)
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([text length])
    {
      v32 = dictionary;
      [array addObject:text];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      attributes2 = [modelCopy attributes];
      v12 = [attributes2 objectForKey:kCACLanguageModelAttributeTextVariants];

      v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v38;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v38 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v37 + 1) + 8 * i);
            if (([v17 isEqualToString:text] & 1) == 0)
            {
              [array addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v14);
      }

      dictionary = v32;
      [v32 setObject:array forKey:kCACCommandParameterTextVariants];
    }

    else
    {
      attributes3 = [modelCopy attributes];
      v19 = [attributes3 objectForKey:kCACLanguageModelAttributeTextVariants];
      [dictionary setObject:v19 forKey:kCACCommandParameterTextVariants];
    }
  }

  identifier = [modelCopy identifier];
  v21 = [identifier length];

  if (v21)
  {
    identifier2 = [modelCopy identifier];
    [dictionary setObject:identifier2 forKey:kCACCommandParameterBuiltInIdentifier];
  }

  children = [modelCopy children];
  v24 = [children count];

  if (v24)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    children2 = [modelCopy children];
    v26 = [children2 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(children2);
          }

          v30 = [(CACCommandRecognizer *)self commandTextSequenceFromCACLanguageModel:*(*(&v33 + 1) + 8 * j)];
          [v5 addObjectsFromArray:v30];
        }

        v27 = [children2 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v27);
    }
  }

  else
  {
    [v5 addObject:dictionary];
  }

  return v5;
}

- (id)commandStrings
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_spokenCommandsCache;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        strings = [*(*(&v11 + 1) + 8 * i) strings];
        [v3 addObjectsFromArray:strings];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (void)_accumulateCloseMatchUsingCommandIdentifier:(id)identifier substitutionTable:(id)table
{
  identifierCopy = identifier;
  tableCopy = table;
  v8 = objc_opt_class();
  objc_sync_enter(v8);
  if (gAccumulatedCloseMatchesForDisplay)
  {
    [gAccumulatedCloseMatchesForDisplay setObject:tableCopy forKey:identifierCopy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__CACCommandRecognizer__accumulateCloseMatchUsingCommandIdentifier_substitutionTable___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_sync_exit(v8);
}

uint64_t __86__CACCommandRecognizer__accumulateCloseMatchUsingCommandIdentifier_substitutionTable___block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__showHintWithAccumulateCloseMatches object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__showHintWithAccumulateCloseMatches withObject:0 afterDelay:0.25];
}

+ (void)resetCloseMatchAccumulator
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v2 = objc_opt_new();
  v3 = gAccumulatedCloseMatchesForDisplay;
  gAccumulatedCloseMatchesForDisplay = v2;

  objc_sync_exit(obj);
}

+ (void)suspendCloseMatchAccumulatorForCommand
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__showHintWithAccumulateCloseMatches object:0];
  v3 = gAccumulatedCloseMatchesForDisplay;
  gAccumulatedCloseMatchesForDisplay = 0;

  objc_sync_exit(obj);
}

+ (void)_showHintWithAccumulateCloseMatches
{
  v50 = *MEMORY[0x277D85DE8];
  obj = objc_opt_class();
  objc_sync_enter(obj);
  if ([gAccumulatedCloseMatchesForDisplay count])
  {
    v34 = objc_opt_new();
    v2 = +[CACPreferences sharedPreferences];
    builtInCommandsTable = [v2 builtInCommandsTable];
    v4 = [builtInCommandsTable objectForKey:@"HistoricalCommandFrequencies"];

    allKeys = [gAccumulatedCloseMatchesForDisplay allKeys];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __59__CACCommandRecognizer__showHintWithAccumulateCloseMatches__block_invoke;
    v46[3] = &unk_279CEB718;
    v31 = v4;
    v47 = v31;
    v6 = [allKeys sortedArrayUsingComparator:v46];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v33 = v6;
    v7 = [v33 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v7)
    {
      v35 = *v43;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v9 = *(*(&v42 + 1) + 8 * i);
          v10 = [gAccumulatedCloseMatchesForDisplay objectForKey:v9];
          v11 = objc_alloc(MEMORY[0x277CCAB68]);
          v12 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
          v13 = [v12 primaryStringForCommandIdentifier:v9];
          v14 = [v11 initWithString:v13];

          if ([v14 length])
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            allKeys2 = [v10 allKeys];
            v16 = [allKeys2 countByEnumeratingWithState:&v38 objects:v48 count:16];
            if (v16)
            {
              v17 = *v39;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v39 != v17)
                  {
                    objc_enumerationMutation(allKeys2);
                  }

                  v19 = *(*(&v38 + 1) + 8 * j);
                  v20 = [v10 objectForKey:v19];
                  [v14 replaceOccurrencesOfString:v19 withString:v20 options:0 range:{0, objc_msgSend(v14, "length")}];
                }

                v16 = [allKeys2 countByEnumeratingWithState:&v38 objects:v48 count:16];
              }

              while (v16);
            }

            [v34 addObject:v14];
          }
        }

        v7 = [v33 countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v7);
    }

    v21 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v21 lastDictationInsertionTimeStamp];
    v23 = v22;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v25 = v23 + 1.0 > v24;

    if (v25)
    {
      v26 = 1000000000;
    }

    else
    {
      v26 = 10000;
    }

    v27 = dispatch_time(0, v26);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__CACCommandRecognizer__showHintWithAccumulateCloseMatches__block_invoke_2;
    block[3] = &unk_279CEB2D0;
    v28 = v34;
    v37 = v28;
    dispatch_after(v27, MEMORY[0x277D85CD0], block);
    v29 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    allKeys3 = [gAccumulatedCloseMatchesForDisplay allKeys];
    [v29 didFindCloseSpokenCommandIdentifiers:allKeys3];
  }

  objc_sync_exit(obj);
}

uint64_t __59__CACCommandRecognizer__showHintWithAccumulateCloseMatches__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  [v7 floatValue];
  v9 = v8;

  v10 = [*(a1 + 32) objectForKey:v6];

  [v10 floatValue];
  v12 = v11;

  if (v9 >= v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (v9 > v12)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

void __59__CACCommandRecognizer__showHintWithAccumulateCloseMatches__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count] < 2)
  {
    obja = +[CACDisplayManager sharedManager];
    v15 = MEMORY[0x277CCACA8];
    v16 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ClosestMatchingCommand"];
    v17 = [*(a1 + 32) firstObject];
    v18 = [v15 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v17];
    [obja displayMessageString:v18 type:4 announcementCompletion:&__block_literal_global_356];
  }

  else
  {
    v2 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v22;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v21 + 1) + 8 * i);
          v8 = MEMORY[0x277CCACA8];
          v9 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ClosestMatchingMultipleCommandEntry"];
          v10 = [v8 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v7];
          [v2 appendString:v10];
        }

        v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v4);
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ClosestMatchingMultipleCommands"];
    v13 = [v11 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v2];

    v14 = +[CACDisplayManager sharedManager];
    [v14 displayMessageString:v13 type:4 announcementCompletion:&__block_literal_global_351];
  }
}

void __59__CACCommandRecognizer__showHintWithAccumulateCloseMatches__block_invoke_3()
{
  v0 = +[CACDisplayManager sharedManager];
  [v0 speakVoiceOverDescriptionForActiveOverlayIfNeeded];
}

void __59__CACCommandRecognizer__showHintWithAccumulateCloseMatches__block_invoke_4()
{
  v0 = +[CACDisplayManager sharedManager];
  [v0 speakVoiceOverDescriptionForActiveOverlayIfNeeded];
}

- (CACCommandRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleSpokenCommand:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Unsupported command action handler: %@", &v4, 0xCu);
}

@end