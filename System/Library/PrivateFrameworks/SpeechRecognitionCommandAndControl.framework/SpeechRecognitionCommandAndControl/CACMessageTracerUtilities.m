@interface CACMessageTracerUtilities
+ (id)sharedCACMessageTracerUtilities;
- (CACMessageTracerUtilities)init;
- (id)_mutablePlistCompatibleObjectFromObject:(id)a3;
- (id)dictionaryOfNormallyStaticPreferenceValuesForCoreAnalytics;
- (void)_prepareToSendAudioDataToAppleServers;
- (void)logCommandWithIdentifier:(id)a3;
- (void)removeCachedAudioFile;
- (void)sendCoreAnalyticsForRecognizedCommandIdentifier:(id)a3 appIdentifier:(id)a4;
- (void)speechRecognitionTask:(id)a3 didFinishRecognition:(id)a4;
- (void)speechRecognitionTask:(id)a3 didFinishSuccessfully:(BOOL)a4;
- (void)speechRecognitionTaskWasCancelled:(id)a3;
@end

@implementation CACMessageTracerUtilities

+ (id)sharedCACMessageTracerUtilities
{
  if (sharedCACMessageTracerUtilities_instaniateReporter != -1)
  {
    +[CACMessageTracerUtilities sharedCACMessageTracerUtilities];
  }

  v3 = sCACMessageTracerUtilities;

  return v3;
}

uint64_t __60__CACMessageTracerUtilities_sharedCACMessageTracerUtilities__block_invoke()
{
  sCACMessageTracerUtilities = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (CACMessageTracerUtilities)init
{
  v6.receiver = self;
  v6.super_class = CACMessageTracerUtilities;
  v2 = [(CACMessageTracerUtilities *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    remoteSpeechOperationQueue = v2->_remoteSpeechOperationQueue;
    v2->_remoteSpeechOperationQueue = v3;

    [(CACMessageTracerUtilities *)v2 _prepareToSendAudioDataToAppleServers];
  }

  return v2;
}

- (void)logCommandWithIdentifier:(id)a3
{
  v58[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CACPreferences sharedPreferences];
  v6 = MEMORY[0x277CCABB0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = [v6 numberWithDouble:?];
  if (!self->_localeIdentifier)
  {
    v8 = [v5 bestLocaleIdentifier];
    [(CACMessageTracerUtilities *)self setLocaleIdentifier:v8];
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = v9;
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = &stru_287BD8610;
  }

  [v9 setObject:v11 forKey:@"CommandIdentifier"];
  if (self->_targetApplicationIdentifier)
  {
    targetApplicationIdentifier = self->_targetApplicationIdentifier;
  }

  else
  {
    targetApplicationIdentifier = &stru_287BD8610;
  }

  [v10 setObject:targetApplicationIdentifier forKey:@"TargetApplicationIdentifier"];
  [v10 setObject:v7 forKey:@"RecordedTime"];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACAddDebuggingInfoToRecentCommands", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  customUserCommandProperties = self->_customUserCommandProperties;
  if (AppBooleanValue && keyExistsAndHasValidFormat)
  {
    if (customUserCommandProperties)
    {
      v15 = [(CACMessageTracerUtilities *)self _mutablePlistCompatibleObjectFromObject:self->_customUserCommandProperties];
      if (v15)
      {
        [v10 setObject:v15 forKey:@"CustomUserCommandProperties"];
      }
    }

    v16 = [(CACMessageTracerUtilities *)self recognitionProperties];
    if (v16)
    {
    }

    else
    {
      v19 = [(CACMessageTracerUtilities *)self dictationProperties];
      v20 = v19 == 0;

      if (v20)
      {
LABEL_31:
        v28 = MEMORY[0x277CCABB0];
        v29 = [v5 alwaysShowOverlayType];
        v30 = [v28 numberWithBool:v29 != 0];
        [v10 setObject:v30 forKey:@"AlwaysShowOverlayType"];

        textAreaIdentifierOrLabel = self->_textAreaIdentifierOrLabel;
        if (textAreaIdentifierOrLabel)
        {
          [v10 setObject:textAreaIdentifierOrLabel forKey:@"TextAreaIdentifierOrLabel"];
        }

        textAreaSelectionRange = self->_textAreaSelectionRange;
        if (textAreaSelectionRange)
        {
          [v10 setObject:textAreaSelectionRange forKey:@"TextAreaSelectionRange"];
        }

        goto LABEL_35;
      }
    }

    v21 = objc_opt_new();
    v22 = [(CACMessageTracerUtilities *)self recognitionProperties];

    if (v22)
    {
      v23 = [(CACMessageTracerUtilities *)self recognitionProperties];
      v24 = [(CACMessageTracerUtilities *)self _mutablePlistCompatibleObjectFromObject:v23];

      if (v24)
      {
        [v21 addEntriesFromDictionary:v24];
      }
    }

    v25 = [(CACMessageTracerUtilities *)self dictationProperties];

    if (v25)
    {
      v26 = [(CACMessageTracerUtilities *)self dictationProperties];
      v27 = [(CACMessageTracerUtilities *)self _mutablePlistCompatibleObjectFromObject:v26];

      if (v27)
      {
        [v21 addEntriesFromDictionary:v27];
      }
    }

    if ([v21 count])
    {
      [v10 setObject:v21 forKey:@"RecognitionParameters"];
    }

    goto LABEL_31;
  }

  if (customUserCommandProperties)
  {
    v57 = @"CustomType";
    v17 = [(NSDictionary *)customUserCommandProperties objectForKey:?];
    v58[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    [v10 setObject:v18 forKey:@"CustomUserCommandProperties"];
  }

LABEL_35:
  if ([(__CFString *)v4 length])
  {
    v33 = self;
    objc_sync_enter(v33);
    v34 = [v5 recentCommandEntries];
    [v34 insertObject:v10 atIndex:0];
    if ([v34 count] >= 0x65)
    {
      [v34 removeObjectsInRange:{100, objc_msgSend(v34, "count") - 100}];
    }

    [v5 setRecentCommandEntries:v34];

    objc_sync_exit(v33);
  }

  if ([(__CFString *)v4 length])
  {
    v35 = self;
    objc_sync_enter(v35);
    v36 = [v5 commandCounts];
    v37 = MEMORY[0x277CCABB0];
    v38 = [v36 objectForKey:v4];
    v39 = [v37 numberWithUnsignedLongLong:{objc_msgSend(v38, "unsignedLongLongValue") + 1}];
    [v36 setObject:v39 forKey:v4];

    [v5 setCommandCounts:v36];
    objc_sync_exit(v35);
  }

  if ([(NSString *)self->_targetApplicationIdentifier length])
  {
    v40 = self;
    objc_sync_enter(v40);
    v41 = [v5 targetApplicationCounts];
    v42 = MEMORY[0x277CCABB0];
    v43 = [v41 objectForKey:self->_targetApplicationIdentifier];
    v44 = [v42 numberWithUnsignedLongLong:{objc_msgSend(v43, "unsignedLongLongValue") + 1}];
    [v41 setObject:v44 forKey:self->_targetApplicationIdentifier];

    [v5 setTargetApplicationCounts:v41];
    objc_sync_exit(v40);
  }

  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CACMessageTraceRandomizedCountDown", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log", 0);
  [v7 doubleValue];
  v47 = v46;
  [v5 lastCommandDate];
  if (v47 <= v48 + 3481.0)
  {
    if (AppIntegerValue < 1)
    {
      goto LABEL_48;
    }

    v49 = [MEMORY[0x277CCABB0] numberWithInteger:--AppIntegerValue];
  }

  else
  {
    AppIntegerValue = rand() % 11;
    v49 = [MEMORY[0x277CCABB0] numberWithInteger:AppIntegerValue];
  }

  CFPreferencesSetAppValue(@"CACMessageTraceRandomizedCountDown", v49, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
LABEL_48:
  if (!AppIntegerValue)
  {
    v50 = CFPreferencesCopyAppValue(@"CACLastCommandRecognizedMessageTrace", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
    if (!v50 || (objc_opt_respondsToSelector() & 1) != 0 && ([v7 doubleValue], v52 = v51, objc_msgSend(v50, "doubleValue"), v52 > v53 + 3481.0))
    {
      [(CACMessageTracerUtilities *)self sendCoreAnalyticsForRecognizedCommandIdentifier:v4 appIdentifier:self->_targetApplicationIdentifier];
      v54 = [MEMORY[0x277CEF368] sharedPreferences];
      v55 = [v54 siriDataSharingOptInStatus] == 1;

      if (v55)
      {
        [(CACMessageTracerUtilities *)self sendRecentAudioDataToAppleServers];
      }

      CFPreferencesSetAppValue(@"CACLastCommandRecognizedMessageTrace", v7, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
    }
  }

  [v7 doubleValue];
  [v5 setLastCommandDate:?];
  [(CACMessageTracerUtilities *)self setCustomUserCommandProperties:0];
  [(CACMessageTracerUtilities *)self setRecognitionProperties:0];
  [(CACMessageTracerUtilities *)self setDictationProperties:0];
}

- (void)sendCoreAnalyticsForRecognizedCommandIdentifier:(id)a3 appIdentifier:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = +[CACPreferences sharedPreferences];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [v8 recentCommandEntries];
  v9 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v41 = self;
    v42 = v8;
    v43 = v6;
    v11 = @"Custom";
    v12 = *v47;
    v13 = 0.0;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v46 + 1) + 8 * i);
        v16 = [v15 objectForKey:@"CommandIdentifier"];
        if ([v16 hasPrefix:v11])
        {
          v17 = MEMORY[0x277CCACA8];
          v18 = [v15 objectForKey:@"CustomUserCommandProperties"];
          [v18 objectForKey:@"CustomType"];
          v19 = v10;
          v20 = v12;
          v21 = v7;
          v23 = v22 = v11;
          v24 = [v17 stringWithFormat:@"Custom_%@", v23];

          v11 = v22;
          v7 = v21;
          v12 = v20;
          v10 = v19;

          v16 = v24;
        }

        if (v13 == 0.0)
        {
          v25 = [v15 objectForKey:@"RecordedTime"];
          [v25 doubleValue];
          v13 = v26;
        }

        [v7 insertObject:v16 atIndex:0];
        if ([v7 count] >= 3)
        {
          v28 = [v15 objectForKey:@"RecordedTime"];
          [v28 doubleValue];
          v30 = v13 - v29;

          if (v30 > 60.0)
          {

            v7 = 0;
          }

          v8 = v42;
          v6 = v43;
          self = v41;
          v27 = v44;

          goto LABEL_18;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v8 = v42;
    v6 = v43;
    self = v41;
  }

  v27 = v44;
LABEL_18:

  v31 = [MEMORY[0x277CBEB38] dictionary];
  v32 = v27;
  v33 = v32;
  if ([v32 hasPrefix:@"Custom"])
  {
    customUserCommandProperties = self->_customUserCommandProperties;
    v33 = v32;
    if (customUserCommandProperties)
    {
      v35 = MEMORY[0x277CCACA8];
      v36 = [(NSDictionary *)customUserCommandProperties objectForKey:@"CustomType"];
      v33 = [v35 stringWithFormat:@"Custom_%@", v36];
    }
  }

  [v31 setObject:v33 forKey:@"CommandIdentifier"];
  if (v6)
  {
    v37 = v6;
  }

  else
  {
    v37 = &stru_287BD8610;
  }

  [v31 setObject:v37 forKey:@"AppIdentifier"];
  if ([v7 count] == 3)
  {
    v38 = [v7 componentsJoinedByString:{@", "}];
    [v31 setObject:v38 forKey:@"RecentCommandTriplet"];
  }

  v39 = [(CACMessageTracerUtilities *)self dictionaryOfNormallyStaticPreferenceValuesForCoreAnalytics];
  [v31 addEntriesFromDictionary:v39];

  AnalyticsSendEvent();
  v40 = CACLogGeneral();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = @"com.apple.commandandcontrol.commandrecognized";
    _os_log_impl(&dword_26B354000, v40, OS_LOG_TYPE_DEFAULT, "Sent %@ event to CoreAnalytics.", buf, 0xCu);
  }
}

- (id)dictionaryOfNormallyStaticPreferenceValuesForCoreAnalytics
{
  v50 = *MEMORY[0x277D85DE8];
  v37 = +[CACPreferences sharedPreferences];
  [v37 rawCustomCommandsPreferencesDictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v2 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v38 = 0;
    v40 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v44;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        v11 = [obj objectForKey:v10];
        v12 = [v11 objectForKey:@"Enabled"];
        [v12 BOOLValue];

        v13 = [v11 objectForKey:@"ConfirmationRequired"];
        [v13 BOOLValue];

        if ([v10 hasPrefix:@"Custom"])
        {
          ++v7;
          v14 = [v11 objectForKey:@"CustomType"];
          v6 += [v14 isEqualToString:@"RunGesture"];
          v4 += [v14 isEqualToString:@"RunShortcutsWorkflow"];
          v5 += [v14 isEqualToString:@"RunUserActionFlow"];
          v38 += [v14 isEqualToString:@"PasteText"];
          v40 += [v14 isEqualToString:@"PasteBoard"];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v38 = 0;
    v40 = 0;
    v6 = 0;
    v7 = 0;
  }

  v47[0] = @"LocaleIdentifier";
  v36 = [v37 bestLocaleIdentifier];
  v48[0] = v36;
  v47[1] = @"VocabularyEntriesCountLog2Bucket";
  v35 = +[VCVocabularyObjC visibleVocabularyEntriesForActiveLocale];
  v34 = NumberWithLog2BucketForIntegerValue([v35 count]);
  v48[1] = v34;
  v47[2] = @"CustomCommandsCountLog2Bucket";
  v33 = NumberWithLog2BucketForIntegerValue(v7);
  v48[2] = v33;
  v47[3] = @"CustomGesturesCountLog2Bucket";
  v32 = NumberWithLog2BucketForIntegerValue(v6);
  v48[3] = v32;
  v47[4] = @"CustomShortcutsCountLog2Bucket";
  v31 = NumberWithLog2BucketForIntegerValue(v4);
  v48[4] = v31;
  v47[5] = @"CustomRecordedActionsCountLog2Bucket";
  v30 = NumberWithLog2BucketForIntegerValue(v5);
  v48[5] = v30;
  v47[6] = @"CustomTextInsertLog2Bucket";
  v39 = NumberWithLog2BucketForIntegerValue(v38);
  v48[6] = v39;
  v47[7] = @"CustomPasteboardLog2Bucket";
  v41 = NumberWithLog2BucketForIntegerValue(v40);
  v48[7] = v41;
  v47[8] = @"ContinousOverlayType";
  v29 = [v37 alwaysShowOverlayType];
  v48[8] = v29;
  v47[9] = @"GridOverlayIsCustomized";
  v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v37, "gridOverlayCustomColumnsEnabled") | objc_msgSend(v37, "gridOverlayCustomRowsEnabled")}];
  v48[9] = v28;
  v47[10] = @"VisualConfirmationIsEnabled";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v37, "showTextResponseUponRecognition")}];
  v48[10] = v27;
  v47[11] = @"AudioConfirmationIsEnabled";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v37, "playSoundUponRecognition")}];
  v48[11] = v26;
  v47[12] = @"ShowHintsIsEnabled";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v37, "userHintsFeatures") != 0}];
  v48[12] = v15;
  v47[13] = @"ShareAudioDataIsEnabled";
  v16 = MEMORY[0x277CCABB0];
  v17 = [MEMORY[0x277CEF368] sharedPreferences];
  v18 = [v16 numberWithInt:{objc_msgSend(v17, "siriDataSharingOptInStatus") == 1}];
  v48[13] = v18;
  v47[14] = @"AttentionAwareMode";
  v19 = [v37 attentionAwareAction];
  v48[14] = v19;
  v47[15] = @"VoiceOverIsEnabled";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSVoiceOverTouchEnabled()];
  v48[15] = v20;
  v47[16] = @"AssistiveTouchIsEnabled";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSAssistiveTouchEnabled()];
  v48[16] = v21;
  v47[17] = @"ZoomIsEnabled";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSZoomTouchEnabled()];
  v48[17] = v22;
  v47[18] = @"SwitchControlIsEnabled";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSAssistiveTouchScannerEnabled()];
  v48[18] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:19];

  return v24;
}

- (void)_prepareToSendAudioDataToAppleServers
{
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 siriDataSharingOptInStatus];

  v5 = MEMORY[0x277CBED28];
  if (v4 != 1)
  {
    v5 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"SaveUtteranceToFile", *v5, @"com.apple.SpeechRecognitionCore");
  CFPreferencesAppSynchronize(@"com.apple.SpeechRecognitionCore");
  if (v4 != 1)
  {

    [(CACMessageTracerUtilities *)self removeCachedAudioFile];
  }
}

- (void)removeCachedAudioFile
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = CFCopySearchPathForDirectoriesInDomains();
  ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
  v4 = CFURLCreateCopyAppendingPathComponent(0, ValueAtIndex, @"com.apple.SpeechRecognitionCore", 1u);
  CFRelease(v2);
  v5 = CFURLCopyPath(v4);
  if (v5)
  {
    v6 = v5;
    CFStringGetCString(v5, buffer, 2000, 0x8000100u);
    v7 = opendir(buffer);
    if (v7)
    {
      closedir(v7);
    }

    else if (mkdir(buffer, 0x1EDu))
    {
      NSLog(&cfstr_Copysrcacheurl.isa, v4);
    }

    CFRelease(v6);
  }

  v8 = [(__CFURL *)v4 path];
  v9 = [v8 stringByAppendingPathComponent:@"srcLogAudioFile.wav"];

  if ([v9 length])
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    [v10 removeItemAtPath:v9 error:0];
  }
}

- (void)speechRecognitionTask:(id)a3 didFinishRecognition:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = CACLogAudio();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 requestIdentifier];
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_26B354000, v7, OS_LOG_TYPE_DEFAULT, "speechRecognitionTask:didFinishRecognition:, task ID: %@, result: %@", &v9, 0x16u);
  }
}

- (void)speechRecognitionTaskWasCancelled:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = CACLogAudio();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 requestIdentifier];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_DEFAULT, "speechRecognitionTaskWasCancelled:, task ID: %@", &v6, 0xCu);
  }
}

- (void)speechRecognitionTask:(id)a3 didFinishSuccessfully:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CACLogAudio();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 requestIdentifier];
    v8 = 138412546;
    v9 = v7;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_26B354000, v6, OS_LOG_TYPE_DEFAULT, "speechRecognitionTask:didFinishSuccessfully:, task ID: %@, successfully: %d", &v8, 0x12u);
  }
}

- (id)_mutablePlistCompatibleObjectFromObject:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [v4 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [v4 objectForKey:v11];
          v13 = [(CACMessageTracerUtilities *)self _mutablePlistCompatibleObjectFromObject:v12];

          if (v13)
          {
            [v5 setObject:v13 forKey:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

LABEL_22:

    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v14 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v6);
          }

          v18 = [(CACMessageTracerUtilities *)self _mutablePlistCompatibleObjectFromObject:*(*(&v21 + 1) + 8 * j), v21];
          if (v18)
          {
            [v5 addObject:v18];
          }
        }

        v15 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v19 = v4;
  }

  else
  {
    v19 = [v4 description];
  }

  v5 = v19;
LABEL_29:

  return v5;
}

@end