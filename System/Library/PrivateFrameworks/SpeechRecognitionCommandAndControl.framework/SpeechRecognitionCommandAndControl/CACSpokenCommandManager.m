@interface CACSpokenCommandManager
+ (BOOL)commandIdentifierIsDictation:(id)a3;
+ (BOOL)doesEvaluatorKey:(id)a3 matchValue:(id)a4;
+ (id)_allCommandIdentifiers;
+ (id)capitalizedStringFromString:(id)a3;
+ (id)commandPropertiesForIdentifier:(id)a3;
+ (id)hardwareEvaluatorKeys;
+ (id)sharedCACSpokenCommandManager;
- (BOOL)_isNumberOnlyString:(id)a3 lessThanOrEqualToValue:(int64_t)a4;
- (BOOL)_isSystemSleeping;
- (BOOL)_popInteractionLevel:(unsigned int)a3 referencingObject:(id)a4;
- (BOOL)_pushInteractionLevel:(unsigned int)a3 referencingObject:(id)a4;
- (BOOL)_replaceTextInRange:(_NSRange)a3 withString:(id)a4;
- (BOOL)doesCurrentLanguageSupportInterWordSpaces;
- (BOOL)doesFocusedElementRequireSecureInput;
- (BOOL)elementIsOccluded:(id)a3 occludedAppScenes:(id)a4;
- (BOOL)isActiveOverlayType:(id)a3;
- (BOOL)isFetchingElements;
- (BOOL)isNextPreviousResolverSpokenCommandEmojiBased;
- (BOOL)isSynchronizingRecognizers;
- (BOOL)shouldIgnoreCommand:(id)a3;
- (BOOL)utteranceIDHasBeenHandled:(unint64_t)a3;
- (CGRect)_interfaceOrientedFrameForElement:(id)a3 axFrame:(CGRect)a4;
- (CGRect)bestDictationRecognizerModeImageRectForView:(id)a3;
- (__RXLanguageObject)rxLanguageObjectForBuiltInLMIdentifier:(id)a3;
- (double)delayForNotification:(int)a3;
- (id)_allElementsIncludingNonScanner;
- (id)_arrayFromExternalContextOverrideForBuiltInIdentifier:(id)a3;
- (id)_descriptionForAXTextUnit:(unint64_t)a3;
- (id)_fetchPresentationElements;
- (id)_inCallServiceApplication;
- (id)_nextResolverRelationships;
- (id)_previousResolverRelationships;
- (id)_stringInRecognitionLocaleFormatFromIntegerValue:(int64_t)a3;
- (id)_telephonyQueue;
- (id)_templateSpokenCommandWithIdentifier:(id)a3;
- (id)activeApplications;
- (id)activeCommandIdentifiers;
- (id)activeCommandsForLocaleIdentifier:(id)a3;
- (id)activeOverlayType;
- (id)allCommandsForLocaleIdentifier:(id)a3;
- (id)allCustomCommandsDetail;
- (id)contextSummary;
- (id)copySupportedCommandWithIdentifier:(id)a3;
- (id)focusedElement;
- (id)groupedCommandsForLocaleIdentifier:(id)a3;
- (id)languageModelForBuiltInLMIdentifier:(id)a3;
- (id)leadingTextForCurrentSelection;
- (id)nameOfAXNotification:(int)a3;
- (id)primaryStringForCommandIdentifier:(id)a3;
- (id)resolvedNextSpokenCommand;
- (id)resolvedPreviousSpokenCommand;
- (id)screenElements;
- (id)screenElementsForEscape;
- (id)stopRecordingGesture;
- (id)synchronousRecognitionOfString:(id)a3 timeoutInterval:(double)a4;
- (id)synchronousRecognitionUsingCommandIdentifier:(id)a3 parameters:(id)a4 timeoutInterval:(double)a5;
- (int)dictationRecognizerMode;
- (unsigned)currentInteractionLevelPassingBackTopReferencingObject:(id *)a3;
- (void)_appendSpokenCommand:(id)a3 toLogAtPath:(id)a4;
- (void)_attentionAwareSettingChanged;
- (void)_beginObservingSiriListeningState;
- (void)_cancelSynchronousRemoteRecognition;
- (void)_clearPreviousTextInsertionSpecifierBasedOnExecutedCommand:(id)a3;
- (void)_closeAllRecognizers;
- (void)_createCommandRecognizersIfNecessary;
- (void)_executeNextRepeatWithCompletionBlock:(id)a3;
- (void)_fetchElements;
- (void)_flushBuiltInLMIdentifierTable;
- (void)_handleLanguageChange;
- (void)_handlePendingCommands;
- (void)_intializeBuiltInLMIdentifierTableIfNecessary;
- (void)_markAsDirtyForBuiltInLMIdentifier:(id)a3;
- (void)_microphoneTurnedOffAfterInteruption;
- (void)_microphoneTurnedOn;
- (void)_microphoneTurnedOnAfterInteruption;
- (void)_notesUndoWithPreHypothesisText:(id)a3 hypothesisHistory:(id)a4 forElement:(id)a5;
- (void)_notifyStatusChanged:(int64_t)a3;
- (void)_notifyUserOfSensitiveLogging;
- (void)_pushLeadingContextToSpeechRecognitionSystem;
- (void)_pushSecureFieldStatusToSpeechRecognitionSystem;
- (void)_rebuildCommandRecognizers;
- (void)_rebuildCustomCommandRecognizers;
- (void)_resetInteractionLevel;
- (void)_resetRecognitionSystems;
- (void)_scheduleFetchElementsWithDelay:(double)a3 andReason:(id)a4;
- (void)_startListening;
- (void)_startSynchronousRemoteRecognitionWithCompletionBlock:(id)a3;
- (void)_stopListening;
- (void)_updateAssetPurgeability;
- (void)_updateDictationInsertionCursorMode;
- (void)_updateLanguageModelForBuiltInLMIdentifier:(id)a3;
- (void)_updateMostRecentLaunchTime;
- (void)_waitUntilElementsAreNumbered;
- (void)attemptGrabbingMic:(id)a3;
- (void)attentionAwareGained;
- (void)attentionAwareInterrupted;
- (void)attentionAwareInterruptionEnded;
- (void)attentionAwareLost;
- (void)beginExecutingRepeatingSpokenCommandNumberOfTimes:(int64_t)a3 completionBlock:(id)a4;
- (void)beginObservingApplications;
- (void)cancelAnyTransientOverlay;
- (void)clearProvisionalDictation;
- (void)dealloc;
- (void)didBeginTouches;
- (void)didFindCloseSpokenCommandIdentifiers:(id)a3;
- (void)didFinishExecutingSpokenCommand:(id)a3;
- (void)didObserveFirstTouchDownForObserver:(id)a3;
- (void)didObserveLastTouchUpForObserver:(id)a3;
- (void)dispatchPendingCommand;
- (void)enterDictatedString:(id)a3;
- (void)enterSleepInteractionLevel;
- (void)forceElementFetchWithReason:(id)a3;
- (void)forceSynchronizeRecognizersForBuiltInLMIdentifier:(id)a3;
- (void)handleCommandWithIdentifier:(id)a3;
- (void)handleRecognizedCommand:(id)a3;
- (void)handleSRSystemServerError;
- (void)insertDictatedAttributedString:(id)a3;
- (void)insertDictatedAttributedString:(id)a3 provisionally:(BOOL)a4;
- (void)insertDictatedString:(id)a3 provisionally:(BOOL)a4;
- (void)notifyUserOfCommandFailureWithTitle:(id)a3 description:(id)a4;
- (void)observer:(id)a3 didObserveNotification:(int)a4 notificationData:(void *)a5;
- (void)performOnRecognizerSynchronizationDispatchQueueIfRunning:(id)a3;
- (void)performUndoIncludingProvisionalTextForElement:(id)a3;
- (void)registerSignPostBeginProcessingForSpeechRecognizer:(id)a3 message:(id)a4;
- (void)registerSignPostEndProcessingForSpeechRecognizer:(id)a3 message:(id)a4;
- (void)run;
- (void)setDictationRecognizerMode:(int)a3;
- (void)setNextPreviousResolverSpokenCommand:(id)a3;
- (void)setRepeatingSpokenCommand:(id)a3;
- (void)setScreenElements:(id)a3 presentationElements:(id)a4 activeApplications:(id)a5 focusedTextAreaElement:(id)a6;
- (void)startListening;
- (void)startRecordingGesture;
- (void)stopAnyRepeatingSpokenCommand;
- (void)stopListening;
- (void)stopObservingApplications;
- (void)suspendCommandDispatching:(BOOL)a3;
- (void)synchronizeRecognizersWithReason:(id)a3;
- (void)updateStatusIndicatorView;
- (void)willHandleCommandForUtteranceID:(unint64_t)a3;
- (void)willTerminate;
- (void)willUpdateElementsSignificantly;
@end

@implementation CACSpokenCommandManager

+ (id)sharedCACSpokenCommandManager
{
  if (sharedCACSpokenCommandManager_singletonInit != -1)
  {
    +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  }

  v3 = sCACSpokenCommandManager;

  return v3;
}

uint64_t __56__CACSpokenCommandManager_sharedCACSpokenCommandManager__block_invoke()
{
  sCACSpokenCommandManager = objc_alloc_init(CACSpokenCommandManager);

  return MEMORY[0x2821F96F8]();
}

+ (id)capitalizedStringFromString:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 mainBundle];
  v6 = [v5 preferredLocalizations];
  v7 = [v6 objectAtIndex:0];

  v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v7];
  v9 = [MEMORY[0x277CCAB68] stringWithString:v4];
  v10 = [v4 length];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__CACSpokenCommandManager_capitalizedStringFromString___block_invoke;
  v16[3] = &unk_279CEBBB0;
  v17 = v8;
  v11 = v9;
  v18 = v11;
  v12 = v8;
  [v4 enumerateSubstringsInRange:0 options:v10 usingBlock:{3, v16}];

  v13 = v18;
  v14 = v11;

  return v11;
}

void __55__CACSpokenCommandManager_capitalizedStringFromString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 capitalizedStringWithLocale:*(a1 + 32)];
  [*(a1 + 40) replaceCharactersInRange:a3 withString:{a4, v7}];
}

+ (id)hardwareEvaluatorKeys
{
  v4[7] = *MEMORY[0x277D85DE8];
  v4[0] = kCACCommandContextRequiresRingerSwitch;
  v4[1] = kCACCommandContextRequiresIPad;
  v4[2] = kCACCommandContextRequiresAppleVision;
  v4[3] = kCACCommandContextPreventWithAppleVision;
  v4[4] = kCACCommandContextRequiresCameraButton;
  v4[5] = kCACCommandContextRequiresEyeTrackingSupport;
  v4[6] = kCACCommandContextRequiresHeadTrackingSupport;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:7];

  return v2;
}

+ (BOOL)doesEvaluatorKey:(id)a3 matchValue:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = &CACLogCorrections_sLogCorrections;
  v8 = [sEvaluatorValueCache objectForKey:v5];
  v9 = [v8 isEqual:v6];

  if (v9)
  {
    v10 = [sEvaluatorResultCache objectForKey:v5];
    LOBYTE(v11) = [v10 BOOLValue];

    goto LABEL_21;
  }

  if (([v5 isEqualToString:kCACCommandContextRequiresFocusedStaticText] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", kCACCommandContextRequiresFocusedEditableText) & 1) != 0 || objc_msgSend(v5, "isEqualToString:", kCACCommandContextRequiresFocusedEditableTextOrDateTime))
  {
    v12 = [sCACSpokenCommandManager focusedElement];

    v13 = sCACSpokenCommandManager;
    if (sCACSpokenCommandManager)
    {
      v13 = *(sCACSpokenCommandManager + 368);
    }

    if (v12 && (v13 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresInteractionLevel])
  {
    v14 = [sCACSpokenCommandManager currentInteractionLevel];
LABEL_15:
    v11 = v14 == [(__CFString *)v6 integerValue];
    goto LABEL_19;
  }

  if ([v5 isEqualToString:kCACCommandContextSupportsInteractionLevel])
  {
    v14 = [sCACSpokenCommandManager currentInteractionLevel];
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_10:
    v11 = 1;
    goto LABEL_19;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresActiveDictationRecognizerMode])
  {
    if ([sCACSpokenCommandManager dictationRecognizerMode] != 1)
    {
      goto LABEL_10;
    }

LABEL_18:
    v11 = [(__CFString *)v6 BOOLValue]^ 1;
    goto LABEL_19;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresSpellingModeSupportForLocale])
  {
    v19 = +[CACPreferences sharedPreferences];
    v20 = [v19 bestLocaleIdentifier];
    v21 = RXLocalesSupportingSpellingMode();
    if ([CACLocaleUtilities isLocaleIdentifier:v20 containedInLocaleIdentifiers:v21]|| CFPreferencesGetAppBooleanValue(@"EnableSpellingModeDuringDevelopment", @"com.apple.speech.SpeechRecognitionCommandAndControl", 0))
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresSpellingModeSupportInAsset])
  {
    v19 = +[CACSpeechSystem speechSystem];
    if (([v19 supportsSpellingMode] & 1) != 0 || CFPreferencesGetAppBooleanValue(@"EnableSpellingModeDuringDevelopment", @"com.apple.speech.SpeechRecognitionCommandAndControl", 0))
    {
      goto LABEL_30;
    }

    goto LABEL_45;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresOriginalEmojiCommands])
  {
    if (!CFPreferencesGetAppBooleanValue(@"UseAssetSupportForEmojiNameRecogition", @"com.apple.SpeechRecognitionCore", 0))
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresSpecifiedBooleanPreferenceKeyIsTrue])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = 1;
    if (v6 && (isKindOfClass & 1) != 0)
    {
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v6, @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v24 = AppBooleanValue == 0;
      }

      else
      {
        v24 = 1;
      }

      v11 = !v24;
    }

    goto LABEL_19;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresAnyOverlay])
  {
    v19 = +[CACDisplayManager sharedManager];
    if (([v19 isDisplayingAnyOverlay] & 1) == 0)
    {
LABEL_45:
      v25 = [(__CFString *)v6 BOOLValue];
LABEL_46:
      v11 = v25 ^ 1u;
      goto LABEL_47;
    }

LABEL_30:
    v11 = 1;
    goto LABEL_47;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresNumberedElementsOverlay])
  {
    v26 = sCACSpokenCommandManager;
    v27 = @"NumberedElements";
    goto LABEL_50;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresAnyNumberedOverlay])
  {
    v19 = [sCACSpokenCommandManager activeOverlayType];
    if ([v19 isEqualToString:@"NumberedElements"] & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", @"NumberedGrid"))
    {
      goto LABEL_30;
    }

    if ([v19 isEqualToString:@"NamedElements"])
    {
      v20 = +[CACDisplayManager sharedManager];
      v21 = [v20 visibleLabeledTextSegmentElements];
      if ([v21 count])
      {
LABEL_25:
        v11 = 1;
LABEL_26:

LABEL_47:
        goto LABEL_19;
      }

LABEL_57:
      v11 = [(__CFString *)v6 BOOLValue]^ 1;
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresTextDisambiguationNumberedOverlay])
  {
    v28 = [sCACSpokenCommandManager activeOverlayType];
    if (![(__CFString *)v28 isEqualToString:@"NumberedElements"])
    {
      v11 = [(__CFString *)v6 BOOLValue]^ 1;
LABEL_73:

LABEL_74:
      v7 = &CACLogCorrections_sLogCorrections;
      goto LABEL_19;
    }

    v29 = [sCACSpokenCommandManager disambiguationHandler];
    v30 = [v29 labeledElements];
    v31 = [v30 firstObject];
    v32 = [v31 textMarkerRange];
    if (v32)
    {
      v11 = 1;
    }

    else
    {
      v11 = [(__CFString *)v6 BOOLValue]^ 1;
    }

LABEL_72:
    goto LABEL_73;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresGridOverlay])
  {
    v26 = sCACSpokenCommandManager;
    v27 = @"NumberedGrid";
    goto LABEL_50;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresElementNamesOverlay])
  {
    v26 = sCACSpokenCommandManager;
    v27 = @"NamedElements";
LABEL_50:
    if ([v26 isActiveOverlayType:v27])
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if ([v5 isEqualToString:kCACCommandContextPreventDuringAnyPresentation])
  {
    v19 = +[CACDisplayManager sharedManager];
    if ([v19 isDisplayingAnyPresentation])
    {
      goto LABEL_45;
    }

    goto LABEL_30;
  }

  if ([v5 isEqualToString:kCACCommandContextPreventDuringAnyOverlay])
  {
    v19 = [sCACSpokenCommandManager activeOverlayType];
    if (v19)
    {
      goto LABEL_45;
    }

    goto LABEL_30;
  }

  if ([v5 isEqualToString:kCACCommandContextRequiresOneOfAppIdentifiers])
  {
    v28 = v6;
    if (![(__CFString *)v28 count])
    {
      v11 = 1;
      goto LABEL_73;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v29 = [sCACSpokenCommandManager activeApplications];
    v11 = [v29 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v11)
    {
      v33 = *v59;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v59 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v35 = [*(*(&v58 + 1) + 8 * i) bundleId];
          if ([v35 length] && -[__CFString containsObject:](v28, "containsObject:", v35))
          {

            v11 = 1;
            goto LABEL_72;
          }
        }

        v11 = [v29 countByEnumeratingWithState:&v58 objects:v65 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_72;
  }

  if ([v5 isEqualToString:kCACCommandContextPreventDuringLockScreen] || objc_msgSend(v5, "isEqualToString:", kCACCommandContextPreventOniPhoneLockScreen) && (+[CACDisplayManager sharedManager](CACDisplayManager, "sharedManager"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "carPlayConnected"), v36, (v37 & 1) == 0))
  {
    v19 = [MEMORY[0x277CE6BA0] systemApplication];
    v25 = [v19 isScreenLocked];
    goto LABEL_46;
  }

  if (![v5 isEqualToString:kCACCommandContextRequiresAnyGesture])
  {
    if (![v5 isEqualToString:kCACCommandContextRequiresDragGesture])
    {
      if (![v5 isEqualToString:kCACCommandContextRequiresSOS])
      {
        if ([v5 isEqualToString:kCACCommandContextRequiresSiriEnabled])
        {
          if (AXDeviceIsSiriAvailable())
          {
            goto LABEL_10;
          }

          goto LABEL_18;
        }

        if ([v5 isEqualToString:kCACCommandContextRequiresRingerSwitch])
        {
          if (AXDeviceIsRingerSwitchAvailable())
          {
            goto LABEL_10;
          }

          goto LABEL_18;
        }

        if ([v5 isEqualToString:kCACCommandContextRequiresSpeakScreen])
        {
          if (UIAccessibilityIsSpeakScreenEnabled())
          {
            goto LABEL_10;
          }

          goto LABEL_18;
        }

        if ([v5 isEqualToString:kCACCommandContextRequiresZoom])
        {
          if (_AXSZoomTouchEnabled())
          {
            goto LABEL_10;
          }

          goto LABEL_18;
        }

        if ([v5 isEqualToString:kCACCommandContextRequiresSideAppSupport])
        {
          if (!AXDeviceSupportsSideApp())
          {
            goto LABEL_18;
          }
        }

        else
        {
          if ([v5 isEqualToString:kCACCommandContextRequiresApplePay])
          {
            if (AXDeviceCanArmApplePay())
            {
              goto LABEL_10;
            }

            goto LABEL_18;
          }

          if ([v5 isEqualToString:kCACCommandContextRequiresVoiceOver])
          {
            if (UIAccessibilityIsVoiceOverRunning())
            {
              goto LABEL_10;
            }

            goto LABEL_18;
          }

          if ([v5 isEqualToString:kCACCommandContextPreventWithVoiceOver])
          {
            if (!UIAccessibilityIsVoiceOverRunning())
            {
              goto LABEL_10;
            }

            goto LABEL_18;
          }

          if ([v5 isEqualToString:kCACCommandContextRequiresIPad])
          {
            if (AXDeviceIsPad())
            {
              goto LABEL_10;
            }

            goto LABEL_18;
          }

          if ([v5 isEqualToString:kCACCommandContextRequiresAppleVision])
          {
            if (AXDeviceIsRealityDevice())
            {
              goto LABEL_10;
            }

            goto LABEL_18;
          }

          if (![v5 isEqualToString:kCACCommandContextPreventWithAppleVision])
          {
            if ([v5 isEqualToString:kCACCommandContextRequiresCameraButton])
            {
              if (AXDeviceSupportsCameraButton())
              {
                goto LABEL_10;
              }

              goto LABEL_18;
            }

            if (![v5 isEqualToString:kCACCommandContextRequiresCarPlay])
            {
              if ([v5 isEqualToString:kCACCommandContextRequiresVoiceControlEnabled])
              {
                if (_AXSCommandAndControlEnabled())
                {
                  goto LABEL_10;
                }
              }

              else if ([v5 isEqualToString:kCACCommandContextRequiresEyeTrackingSupport])
              {
                if (AXDeviceSupportsOnDeviceEyeTracking())
                {
                  goto LABEL_10;
                }
              }

              else if ([v5 isEqualToString:kCACCommandContextRequiresHeadTrackingSupport])
              {
                if (AXDeviceSupportsHeadTracking())
                {
                  goto LABEL_10;
                }
              }

              else if ([v5 isEqualToString:kCACCommandContextRequiresSiriVisible])
              {
                if ([objc_opt_class() _siriWindowIsOpen])
                {
                  goto LABEL_10;
                }
              }

              else if (![v5 isEqualToString:kCACCommandContextPreventShowingCommand])
              {
                goto LABEL_10;
              }

              goto LABEL_18;
            }

            v19 = +[CACDisplayManager sharedManager];
            if ([v19 carPlayAvailable])
            {
              goto LABEL_30;
            }

            goto LABEL_45;
          }
        }
      }

      if (!AXDeviceIsRealityDevice())
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = +[CACSpokenCommandGestureManager allManagers];
    v43 = [v38 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v51;
LABEL_109:
      v46 = 0;
      while (1)
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(v38);
        }

        if ([*(*(&v50 + 1) + 8 * v46) isInDragGesture])
        {
          goto LABEL_116;
        }

        if (v44 == ++v46)
        {
          v44 = [v38 countByEnumeratingWithState:&v50 objects:v63 count:16];
          if (v44)
          {
            goto LABEL_109;
          }

          break;
        }
      }
    }

LABEL_115:
    v47 = 0;
    goto LABEL_117;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v38 = +[CACSpokenCommandGestureManager allManagers];
  v39 = [v38 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (!v39)
  {
    goto LABEL_115;
  }

  v40 = v39;
  v41 = *v55;
LABEL_97:
  v42 = 0;
  while (1)
  {
    if (*v55 != v41)
    {
      objc_enumerationMutation(v38);
    }

    if ([*(*(&v54 + 1) + 8 * v42) isInGesture])
    {
      break;
    }

    if (v40 == ++v42)
    {
      v40 = [v38 countByEnumeratingWithState:&v54 objects:v64 count:16];
      if (v40)
      {
        goto LABEL_97;
      }

      goto LABEL_115;
    }
  }

LABEL_116:
  v47 = 1;
LABEL_117:

  v48 = +[CACAXDragManager sharedManager];
  v49 = [v48 isDragActive];

  v11 = 1;
  if (v47)
  {
    goto LABEL_74;
  }

  v7 = &CACLogCorrections_sLogCorrections;
  if ((v49 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  v15 = v7[226];
  if (v15)
  {
    [v15 setObject:v6 forKey:v5];
    v16 = sEvaluatorResultCache;
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    [v16 setObject:v17 forKey:v5];
  }

LABEL_21:

  return v11;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CACNotificationLanguageChanged", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"NotificationAlwaysShowOverlayTypeSettingsChanged", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, @"CACNotificationOverlayFadingSettingsChanged", 0);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self, @"CACNotificationGridOverlaySettingsChanged", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v7, self, @"CACNotificationCommandsSettingsChanged", 0);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v8, self, @"CACNotificationUserHintsSettingsChanged", 0);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v9, self, @"com.apple.SpeechRecognitionCore.liveRecordingOn", 0);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v10, self, @"com.apple.SpeechRecognitionCore.liveRecordingOff", 0);
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v11, self, @"com.apple.SpeechRecognitionCore.liveRecordingOnFromInterrupt", 0);
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v12, self, @"com.apple.SpeechRecognitionCore.liveRecordingOffFromInterrupt", 0);
  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v13, self, @"com.apple.VoiceControl.LoggingPrivacyChanged", 0);
  if (self->_isAttentionAwareClientRunning)
  {
    v14 = +[CACUserAttentionInterface sharedManager];
    [v14 stopUserAttentionControllerIfNeeded];
  }

  v15.receiver = self;
  v15.super_class = CACSpokenCommandManager;
  [(CACSpokenCommandManager *)&v15 dealloc];
}

- (void)run
{
  v3 = CACLogDictationCommands();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v66 = 0;
    _os_log_impl(&dword_26B354000, v3, OS_LOG_TYPE_DEFAULT, "[CACSpokenCommandManager run] called", v66, 2u);
  }

  self->_displayIsOff = [(CACSpokenCommandManager *)self _isSystemSleeping];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _NotificationLanguageSettingsChanged, @"CACNotificationLanguageChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, self, _NotificationAlwaysShowOverlayTypeSettingsChanged, @"NotificationAlwaysShowOverlayTypeSettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, self, _NotificationOverlayOptionsSettingsChanged, @"CACNotificationOverlayFadingSettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v7, self, _NotificationOverlayOptionsSettingsChanged, @"CACNotificationGridOverlaySettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v8, self, _NotificationCommandsSettingsChanged, @"CACNotificationCommandsSettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v9, self, _NotificationUserHintsSettingsChanged, @"CACNotificationUserHintsSettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v10, self, _NotificationAttentionBasedSettingsChanged, @"CACNotificationAttentionBasedSettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v11, self, _NotificationLiveMicrophoneDidTurnOnAfterInterruption, @"com.apple.SpeechRecognitionCore.liveRecordingOnFromInterrupt", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v12, self, _NotificationLiveMicrophoneDidTurnOffAfterInterruption, @"com.apple.SpeechRecognitionCore.liveRecordingOffFromInterrupt", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v13, self, _NotificationLiveMicrophoneDidTurnOn, @"com.apple.SpeechRecognitionCore.liveRecordingOn", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v14, self, _NotificationLiveMicrophoneDidTurnOff, @"com.apple.SpeechRecognitionCore.liveRecordingOff", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v15 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v15, self, _NotificationLoggingPrivacyChanged, @"com.apple.VoiceControl.LoggingPrivacyChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v16 = +[CACPreferences sharedPreferences];
  v17 = [v16 divertedCommandsLogPath];
  commandRecognitionLogPath = self->_commandRecognitionLogPath;
  self->_commandRecognitionLogPath = v17;

  self->_forceAllCommandsToBeActive = [v16 forceAllCommandsToBeActive];
  self->_usingAutomationMode = [v16 usingAutomationMode];
  v19 = [v16 externalContextOverrideFilePath];
  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x277CBEAC0]);
    v21 = [v19 stringByExpandingTildeInPath];
    v22 = [v20 initWithContentsOfFile:v21];
    externalContextOverrideTable = self->_externalContextOverrideTable;
    self->_externalContextOverrideTable = v22;
  }

  else
  {
    v21 = self->_externalContextOverrideTable;
    self->_externalContextOverrideTable = 0;
  }

  v24 = objc_opt_new();
  recognizers = self->_recognizers;
  self->_recognizers = v24;

  v26 = objc_opt_new();
  oldRXLangaugeObjects = self->_oldRXLangaugeObjects;
  self->_oldRXLangaugeObjects = v26;

  v28 = objc_opt_new();
  recognizedCommandsReadyForDispatch = self->_recognizedCommandsReadyForDispatch;
  self->_recognizedCommandsReadyForDispatch = v28;

  v30 = objc_opt_new();
  recognizerInteractionLevels = self->_recognizerInteractionLevels;
  self->_recognizerInteractionLevels = v30;

  v32 = objc_opt_new();
  identifierBasedLanguageModelCache = self->_identifierBasedLanguageModelCache;
  self->_identifierBasedLanguageModelCache = v32;

  v34 = objc_opt_new();
  pendingCommandToExecute = self->_pendingCommandToExecute;
  self->_pendingCommandToExecute = v34;

  v36 = objc_opt_new();
  labeledScreenElementsCollection = self->_labeledScreenElementsCollection;
  self->_labeledScreenElementsCollection = v36;

  v38 = objc_opt_new();
  [(CACSpokenCommandManager *)self setStagedTextInsertionSpecifier:v38];

  v39 = [MEMORY[0x277CBEB18] array];
  recentlyHandledUtterances = self->_recentlyHandledUtterances;
  self->_recentlyHandledUtterances = v39;

  v41 = [MEMORY[0x277CBEB18] array];
  currentUtteranceHypotheses = self->_currentUtteranceHypotheses;
  self->_currentUtteranceHypotheses = v41;

  v43 = [MEMORY[0x277CBEB18] array];
  previousUtteranceHypotheses = self->_previousUtteranceHypotheses;
  self->_previousUtteranceHypotheses = v43;

  v45 = dispatch_queue_create("com.apple.speech.RecognizerSynchronizationQueue", 0);
  [(CACSpokenCommandManager *)self setRecognizerSynchronizationDispatchQueue:v45];

  v46 = dispatch_queue_create("com.apple.speech.CommandsExecutionQueue", 0);
  commandExecutionDispatchQueue = self->_commandExecutionDispatchQueue;
  self->_commandExecutionDispatchQueue = v46;

  v48 = dispatch_queue_create("com.apple.speech.ElementFetchingQueue", 0);
  elementFetchingQueue = self->_elementFetchingQueue;
  self->_elementFetchingQueue = v48;

  v50 = dispatch_queue_create("com.apple.speech.NonScannerElementFetchingQueue", 0);
  nonScannerElementFetchingQueue = self->_nonScannerElementFetchingQueue;
  self->_nonScannerElementFetchingQueue = v50;

  v52 = dispatch_queue_create("com.apple.speech.PerAppElementFetchingQueue", MEMORY[0x277D85CD8]);
  perAppElementFetchingQueue = self->_perAppElementFetchingQueue;
  self->_perAppElementFetchingQueue = v52;

  v54 = [MEMORY[0x277CE7178] sharedInstance];
  [v54 warm];

  [MEMORY[0x277CE6BB0] applyElementAttributeCacheScheme:6];
  [(CACSpokenCommandManager *)self _supressKeyboardDictation:1 withReason:@"Voice Control initialization"];
  [(CACSpokenCommandManager *)self _attentionAwareSettingChanged];
  [(CACSpokenCommandManager *)self startListening];
  [CACSignPostLog FetchElementsEventBeganWithReason:@"First fetch" expectedDelay:0.0];
  [(CACSpokenCommandManager *)self _fetchElements];
  _UIAccessibilityBlockPostingOfNotification();
  v55 = [[CACAXNotificationObserver alloc] initWithNotifications:&unk_287BEFF48];
  [(CACAXNotificationObserver *)v55 setDelegate:self];
  [(CACSpokenCommandManager *)self setAxNotificationObserver:v55];
  v56 = objc_alloc_init(CACTouchEventObserver);
  [(CACTouchEventObserver *)v56 setDelegate:self];
  [(CACTouchEventObserver *)v56 beginObserving];
  [(CACSpokenCommandManager *)self setTouchEventObserver:v56];
  [(CACSpokenCommandManager *)self beginObservingApplications];
  v57 = +[CACPreferences sharedPreferences];
  [v57 setDidShowOnboarding:1];

  v58 = [MEMORY[0x277CE7E38] sharedManager];
  v59 = [v58 shortcuts];

  v60 = +[CACSystemStatusManager sharedManager];
  v61 = dispatch_time(0, 500000000);
  v62 = dispatch_get_global_queue(21, 0);
  dispatch_after(v61, v62, &__block_literal_global_440);

  [(CACSpokenCommandManager *)self _beginObservingSiriListeningState];
  v63 = [MEMORY[0x277CE2028] currentNotificationCenter];
  [v63 setDelegate:self];
  [v63 setWantsNotificationResponsesDelivered];
  [(CACSpokenCommandManager *)self _updateMostRecentLaunchTime];
  [(CACSpokenCommandManager *)self _updateAssetPurgeability];
  v64 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__updateAssetPurgeability selector:0 userInfo:1 repeats:86400.0];
  assetPurgabilityTimer = self->_assetPurgabilityTimer;
  self->_assetPurgabilityTimer = v64;

  [(CACSpokenCommandManager *)self _notifyUserOfSensitiveLogging];
  self->_isRunning = 1;
}

void __30__CACSpokenCommandManager_run__block_invoke()
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"CACDefaultRecognizerMode", @"com.apple.speech.SpeechRecognitionCommandAndControl", 0);
  if (AppIntegerValue)
  {
    v1 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v1 setDictationRecognizerMode:AppIntegerValue];
  }
}

- (void)willTerminate
{
  [(CACSpokenCommandManager *)self _supressKeyboardDictation:0 withReason:@"Voice Control termination"];
  v2 = +[CACDisplayManager sharedManager];
  [v2 enableStatusBarOverride:0];
}

- (void)performOnRecognizerSynchronizationDispatchQueueIfRunning:(id)a3
{
  v4 = a3;
  v5 = [(CACSpokenCommandManager *)self recognizerSynchronizationDispatchQueue];
  v6 = v5;
  if (v5)
  {
    dispatch_async(v5, v4);
  }

  else if (self->_isRunning)
  {
    v7 = CACLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CACSpokenCommandManager performOnRecognizerSynchronizationDispatchQueueIfRunning:];
    }
  }
}

- (id)screenElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if (self->_presentationElements || self->_topLevelElements)
  {
    [v3 addObjectsFromArray:?];
  }

  return v4;
}

- (id)_allElementsIncludingNonScanner
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if (self->_presentationElements || self->_topLevelAndNonScannerElements)
  {
    [v3 addObjectsFromArray:?];
  }

  return v4;
}

- (id)screenElementsForEscape
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(CACSpokenCommandManager *)self labeledElementsFromScreen];
  v5 = [v4 firstObject];
  v6 = [v5 element];

  v7 = [(CACSpokenCommandManager *)self _allElementsIncludingNonScanner];
  v8 = [v7 mutableCopy];

  if (v6)
  {
    [v3 addObject:v6];
    [v8 removeObject:v6];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v16 != v12)
      {
        objc_enumerationMutation(v9);
      }

      [v3 addObject:{*(*(&v15 + 1) + 8 * v13), v15}];
      if ([v9 count] > 0x14)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  return v3;
}

- (void)setScreenElements:(id)a3 presentationElements:(id)a4 activeApplications:(id)a5 focusedTextAreaElement:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  obj = a5;
  v49 = a5;
  v51 = a6;
  v12 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v53;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v12 addObjectsFromArray:*(*(&v52 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v15);
  }

  v50 = v11;

  v18 = [(NSArray *)self->_topLevelElements isVisuallyEqualToArray:v12];
  if (v18)
  {
    v19 = CACLogElementCollection();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [CACSpokenCommandManager setScreenElements:presentationElements:activeApplications:focusedTextAreaElement:];
    }
  }

  else
  {
    [(CACSpokenCommandManager *)self _markAsDirtyForBuiltInLMIdentifier:*MEMORY[0x277D65628]];
    if ([(CACSpokenCommandManager *)self isActiveOverlayType:@"NumberedElements"])
    {
      [(CACSpokenCommandManager *)self _markAsDirtyForBuiltInLMIdentifier:*MEMORY[0x277D655F8]];
    }
  }

  v20 = !v18;
  objc_storeStrong(&self->_topLevelElements, v12);
  objc_storeStrong(&self->_topLevelAndNonScannerElements, v12);
  presentationElements = self->_presentationElements;
  if (presentationElements != v11)
  {
    if (![(NSArray *)presentationElements isVisuallyEqualToArray:v11])
    {
      [(CACSpokenCommandManager *)self _markAsDirtyForBuiltInLMIdentifier:*MEMORY[0x277D65628]];
      [(CACSpokenCommandManager *)self _markAsDirtyForBuiltInLMIdentifier:*MEMORY[0x277D655F8]];
      v20 = 1;
    }

    objc_storeStrong(&self->_presentationElements, a4);
  }

  p_focusedElement = &self->_focusedElement;
  focusedElement = self->_focusedElement;
  if (focusedElement != v51)
  {
    v24 = self;
    objc_sync_enter(v24);
    objc_storeStrong(&self->_focusedElement, a6);
    objc_sync_exit(v24);

    if (!self->_focusedElement)
    {
      v20 = 1;
      goto LABEL_31;
    }

    v20 = 1;
    [(CACSpokenCommandManager *)v24 _supressKeyboardDictation:1 withReason:@"new text area focused"];
    focusedElement = *p_focusedElement;
  }

  if (focusedElement)
  {
    v25 = [(AXElement *)focusedElement uiElement];
    v26 = [v25 stringWithAXAttribute:5019];

    if (![(__CFString *)v26 length])
    {
      v27 = [*p_focusedElement recognitionStrings];
      v28 = [v27 firstObject];

      v26 = v28;
    }

    v29 = +[CACMessageTracerUtilities sharedCACMessageTracerUtilities];
    if ([(__CFString *)v26 length])
    {
      v30 = v26;
    }

    else
    {
      v30 = &stru_287BD8610;
    }

    [v29 setTextAreaIdentifierOrLabel:v30];

    v31 = [*p_focusedElement cacTextSelectionCACTextMarkerRange];
    if (v31)
    {
      v32 = +[CACMessageTracerUtilities sharedCACMessageTracerUtilities];
      v33 = MEMORY[0x277CCACA8];
      v34 = [v31 nsRange];
      [v31 nsRange];
      v47 = v34;
      v11 = v50;
      v36 = [v33 stringWithFormat:@"%ld, %ld", v47, v35, obj];
      [v32 setTextAreaSelectionRange:v36];
    }
  }

LABEL_31:
  activeApplications = self->_activeApplications;
  if (activeApplications != v49)
  {
    v38 = self;
    objc_sync_enter(v38);
    objc_storeStrong(&self->_activeApplications, obj);
    objc_sync_exit(v38);

    activeApplications = self->_activeApplications;
  }

  v39 = [(NSArray *)activeApplications firstObject];
  v40 = [v39 bundleId];

  v41 = +[CACMessageTracerUtilities sharedCACMessageTracerUtilities];
  [v41 setTargetApplicationIdentifier:v40];

  v42 = [(CACSpokenCommandManager *)self currentInteractionLevel];
  if (self->_lastSyncdInteractionLevel == v42)
  {
    if (!v20)
    {
      v43 = CACLogElementCollection();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [CACSpokenCommandManager setScreenElements:presentationElements:activeApplications:focusedTextAreaElement:];
      }

      goto LABEL_44;
    }
  }

  else
  {
    self->_lastSyncdInteractionLevel = v42;
  }

  v44 = [v13 mutableCopy];
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = objc_opt_new();
  }

  v43 = v46;

  if (v11)
  {
    [v43 addObject:v11];
  }

  [(CACLabeledElementsCollection *)self->_labeledScreenElementsCollection updateWithAXElements:v43];
  [(CACSpokenCommandManager *)self synchronizeRecognizersWithReason:kSRUISyncReasonContentChanged];
  [(CACSpokenCommandManager *)self _updateDictationInsertionCursorMode];
LABEL_44:
}

- (id)focusedElement
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_focusedElement;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)doesFocusedElementRequireSecureInput
{
  v2 = [(CACSpokenCommandManager *)self focusedElement];
  v3 = [v2 hasAnyTraits:*MEMORY[0x277CE6DC8]];

  return v3;
}

- (id)activeApplications
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeApplications;
  objc_sync_exit(v2);

  return v3;
}

- (id)leadingTextForCurrentSelection
{
  v3 = [(CACSpokenCommandManager *)self focusedElement];
  v4 = v3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v5 = [v3 cacString];
  v6 = [(__CFString *)v5 length];
  if (v6 >= 1)
  {
    v7 = v6;
    if (self->_hypothesesInsertedCount < 1)
    {
      v10 = [v4 cacTextSelectionCACTextMarkerRange];
      location = [v10 nsRange];
    }

    else
    {
      location = self->_lastHypothesisRange.location;
    }

    v9 = 0;
    if (!location || location == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

    if (location <= v7)
    {
      v11.location = location >= 0x190 ? location - 400 : 0;
      v11.length = location - v11.location;
      v12 = CFStringTokenizerCreate(0, v5, v11, 0, 0);
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = location;
        while (1)
        {
          v16 = v15 - 1;
          if (CFStringTokenizerGoToTokenAtIndex(v13, v15 - 1))
          {
            v17 = CFStringTokenizerGetCurrentTokenRange(v13).location;
            if (v17 >= v15 || (++v14, (v15 = v17) == 0))
            {
LABEL_21:
              CFRelease(v13);
              v9 = [(__CFString *)v5 substringWithRange:v15, location - v15];
              goto LABEL_23;
            }
          }

          else
          {
            --v15;
            if (!v16)
            {
              goto LABEL_21;
            }
          }

          if (v14 >= 0xA)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  v9 = 0;
LABEL_23:

LABEL_24:

  return v9;
}

- (CGRect)bestDictationRecognizerModeImageRectForView:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(CACSpokenCommandManager *)self focusedElement];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 cacTextSelectionCACTextMarkerRange];
    v12 = [v11 nsRange];
    v14 = v13;

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 textCursorFrame];
      x = CACViewRectFromPortraitUpRect(v4, v15, v16, v17, v18);
      y = v20;
      width = v22;
      height = v24;
      if (!CGFloatIsValid() || !CGFloatIsValid() || !CGFloatIsValid() || (CGFloatIsValid() & 1) == 0)
      {
        v26 = v12 + v14;
        v27 = [v10 cacLastPosition];
        v28 = [v27 index];

        v29 = v28 > 0;
        v30 = v26 >= v28;
        v31 = v29 & v30;
        if (v29 && v30)
        {
          v32 = v28 - 1;
        }

        else
        {
          v32 = v26;
        }

        [v10 visibleFrame];
        v47 = v34;
        v48 = v33;
        v45 = v36;
        v46 = v35;
        [v10 rectForRange:{v12, 0}];
        v51 = v37;
        v52 = v38;
        v49 = v40;
        v50 = v39;
        [v10 rectForRange:{v32, v31}];
        x = v53.origin.x;
        y = v53.origin.y;
        width = v53.size.width;
        height = v53.size.height;
        v56.origin.x = v5;
        v56.origin.y = v6;
        v56.size.width = v8;
        v56.size.height = v7;
        if (CGRectEqualToRect(v53, v56) || (v54.origin.x = x, v54.origin.y = y, v54.size.width = width, v54.size.height = height, v57.origin.y = v47, v57.origin.x = v48, v57.size.height = v45, v57.size.width = v46, !CGRectIntersectsRect(v54, v57)))
        {
          x = v51;
          y = v52;
          height = v49;
          width = v50;
        }
      }

      v5 = width + x;
      v6 = height + y + 6.0;
      v7 = 16.0;
      v8 = 16.0;
    }
  }

  v41 = v5;
  v42 = v6;
  v43 = v8;
  v44 = v7;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (void)didBeginTouches
{
  v13 = *MEMORY[0x277D85DE8];
  self->_userIsTouching = 1;
  [(CACSpokenCommandManager *)self cancelAnyTransientOverlay];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = +[CACSpokenCommandGestureManager allManagers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) resetState];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CACSpokenCommandManager *)self setPreviousTextInsertionSpecifier:0];
}

- (void)willUpdateElementsSignificantly
{
  v2 = [(CACSpokenCommandManager *)self activeOverlayType];
  v3 = [v2 isEqualToString:@"NumberedGrid"];

  if ((v3 & 1) == 0)
  {
    v4 = +[CACDisplayManager sharedManager];
    [v4 hideAnyNonInteractiveOverlay];

    v5 = +[CACDisplayManager sharedManager];
    [v5 hideAnyInProcessPresentation];
  }
}

- (void)_pushLeadingContextToSpeechRecognitionSystem
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CACSpokenCommandManager__pushLeadingContextToSpeechRecognitionSystem__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __71__CACSpokenCommandManager__pushLeadingContextToSpeechRecognitionSystem__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  if (*&kCACNotificationLoggingPrivacyChanged_block_invoke_sDelayLeadingTextCalcUntilReferenceDate < v2)
  {
    v4 = [*(a1 + 32) leadingTextForCurrentSelection];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v5 - v3 > 0.5)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      *&kCACNotificationLoggingPrivacyChanged_block_invoke_sDelayLeadingTextCalcUntilReferenceDate = v6 + 60.0;
    }

    v7 = *(*(a1 + 32) + 64);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 string];

      v7 = v8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v4 string];

      v4 = v9;
    }

    if (v4)
    {
      if (([v7 isEqualToString:v4] & 1) == 0)
      {
        v10 = +[CACSpeechSystem speechSystem];
        [v10 setLeadingContextString:v4];

        v11 = +[CACSpeechSystem speechSystem];
        v13[0] = v4;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
        [v11 setAdditionalContextStrings:v12];

        objc_storeStrong((*(a1 + 32) + 64), v4);
      }
    }
  }
}

- (void)_pushSecureFieldStatusToSpeechRecognitionSystem
{
  v3 = [(CACSpokenCommandManager *)self doesFocusedElementRequireSecureInput];
  if (self->_previousStatusFocusOnSecureField != v3)
  {
    v4 = +[CACSpeechSystem speechSystem];
    [v4 setSecureFieldFocused:v3];
  }

  self->_previousStatusFocusOnSecureField = v3;
}

- (void)_beginObservingSiriListeningState
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:"com.apple.siri.client-state-changed"];
  v3 = objc_alloc(MEMORY[0x277CEF338]);
  v4 = [v3 initWithName:v6 options:1 queue:MEMORY[0x277D85CD0] delegate:self];
  siriObserver = self->_siriObserver;
  self->_siriObserver = v4;
}

- (void)cancelAnyTransientOverlay
{
  if (![(CACSpokenCommandManager *)self shouldPreserveDisambiguationHandler])
  {
    v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v3 setDisambiguationHandler:0];
  }

  if (self->_transientOverlayType)
  {
    goto LABEL_9;
  }

  v4 = [(CACSpokenCommandManager *)self activeOverlayType];
  if (([v4 isEqualToString:@"NumberedGrid"] & 1) == 0)
  {

    goto LABEL_9;
  }

  v5 = +[CACDisplayManager sharedManager];
  v6 = [v5 isGridAtTopLevel];

  if (!v6)
  {
LABEL_9:
    v10 = +[CACDisplayManager sharedManager];
    [v10 hideAnyNonInteractiveOverlay];

    transientOverlayType = self->_transientOverlayType;
    self->_transientOverlayType = 0;
    goto LABEL_10;
  }

  v7 = +[CACDisplayManager sharedManager];
  v8 = [v7 updateGridLayoutFromPreferences];

  if (!v8)
  {
    return;
  }

  v11 = +[CACDisplayManager sharedManager];
  [v11 resetGrid];
  transientOverlayType = v11;
LABEL_10:
}

- (BOOL)isActiveOverlayType:(id)a3
{
  v4 = a3;
  v5 = [(CACSpokenCommandManager *)self activeOverlayType];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (id)activeOverlayType
{
  if ([(CACSpokenCommandManager *)self currentInteractionLevel])
  {
    goto LABEL_2;
  }

  v4 = +[CACDisplayManager sharedManager];
  if ([v4 carPlayConnected])
  {
    v5 = [MEMORY[0x277D79890] shared];
    v6 = [v5 carPlayDebugOverlayUIEnabled];

    if (!v6)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v7 = [(CACSpokenCommandManager *)self disambiguationHandler];
  if (v7)
  {
    v3 = v7;
    v8 = @"NumberedElements";
LABEL_9:

    v3 = v8;
    goto LABEL_13;
  }

  v9 = +[CACDisplayManager sharedManager];
  v10 = [v9 isDisplayingAnyPresentation];

  if (v10)
  {
    v3 = @"NumberedElements";
  }

  else
  {
    v3 = self->_transientOverlayType;
    if (!v3)
    {
      v12 = +[CACPreferences sharedPreferences];
      v3 = [v12 alwaysShowOverlayType];

      if (v3)
      {
        if ([(__CFString *)v3 isEqualToString:@"None"])
        {
          v8 = 0;
          goto LABEL_9;
        }
      }
    }
  }

LABEL_13:

  return v3;
}

- (void)startRecordingGesture
{
  v2 = [(CACSpokenCommandManager *)self touchEventObserver];
  [v2 startRecordingGesture];
}

- (id)stopRecordingGesture
{
  v2 = [(CACSpokenCommandManager *)self touchEventObserver];
  v3 = [v2 stopRecordingGesture];

  return v3;
}

- (void)updateStatusIndicatorView
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CACSpokenCommandManager_updateStatusIndicatorView__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __52__CACSpokenCommandManager_updateStatusIndicatorView__block_invoke(uint64_t a1)
{
  v2 = +[CACRecordedUserActionManager sharedManager];
  if ([v2 isRecording])
  {
  }

  else
  {
    v3 = [*(a1 + 32) touchEventObserver];
    v4 = [v3 isRecording];

    if ((v4 & 1) == 0)
    {
      v6 = *(a1 + 32);
      if (v6[272] == 1 && ![v6 currentInteractionLevel])
      {
        if ([MEMORY[0x277D79888] isSensitiveLoggingEnabled])
        {
          v5 = 3;
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = 1;
      }

      goto LABEL_8;
    }
  }

  v5 = 3;
LABEL_8:
  v7 = +[CACDisplayManager sharedManager];
  [v7 setStatusIndicatorType:v5];

  v8 = *(a1 + 32);

  return [v8 _notifyStatusChanged:v5];
}

- (void)_notifyStatusChanged:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v6 = CACLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CACSpokenCommandManager _notifyStatusChanged:];
    }
  }

  else
  {
    v3 = off_279CEBD98[a3 - 1];
    v4 = CACLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CACSpokenCommandManager _notifyStatusChanged:];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
  }
}

+ (id)_allCommandIdentifiers
{
  v2 = [MEMORY[0x277D655B8] allCommandIdentifiersForCurrentDevice];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  return v3;
}

+ (BOOL)commandIdentifierIsDictation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Dictation.Streaming"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Dictation.Literal"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Dictation.SpellAs"];
  }

  return v4;
}

+ (id)commandPropertiesForIdentifier:(id)a3
{
  v3 = [MEMORY[0x277D655B8] commandWithIdentifier:a3];
  v4 = [v3 commandProperties];

  return v4;
}

- (void)_createCommandRecognizersIfNecessary
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = self->_recognizers;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_recognizers count];
  objc_sync_exit(v3);

  if (!v4)
  {
    v47 = +[CACPreferences sharedPreferences];
    v41 = objc_opt_new();
    v44 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = [objc_opt_class() _allCommandIdentifiers];
    v5 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v5)
    {
      v45 = *v57;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v57 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v56 + 1) + 8 * i);
          if (([v47 isEnabledForCommandIdentifier:v7] & 1) != 0 || self->_forceAllCommandsToBeActive)
          {
            v8 = [v47 bestLocaleIdentifier];
            v9 = [v47 isCommandIdentifier:v7 availableForLocaleIdentifier:v8];

            if (v9)
            {
              v10 = [objc_opt_class() commandPropertiesForIdentifier:v7];
              v11 = [v10 mutableCopy];

              [v11 setObject:v7 forKey:kCACCommandPropertyIdentifier];
              v12 = [[CACSpokenCommand alloc] initWithProperties:v11];
              v13 = v12;
              if (v12)
              {
                v14 = [(CACSpokenCommand *)v12 languageModel];
                v15 = [(CACSpokenCommand *)v13 strings];

                if (v15)
                {
                  v16 = objc_opt_new();
                  v17 = [(CACSpokenCommand *)v13 contextEvaluation];
                  [v16 addEntriesFromDictionary:v17];

                  v18 = [v11 objectForKey:@"RecognizerClassName"];
                  if (v18)
                  {
                    [v16 setObject:&unk_287BEFE20 forKey:v18];
                    v19 = [(CACSpokenCommand *)v13 identifier];
                    [v44 setObject:v18 forKey:v19];
                  }

                  v20 = [CACSpokenCommand stringFromContextEvaluationDictionary:v16 isCustom:0];
                  v21 = [v41 objectForKey:v20];
                  if (!v21)
                  {
                    v21 = objc_opt_new();
                    [v41 setObject:v21 forKey:v20];
                  }

                  [v21 addObject:v13];
                }
              }
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v5);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v46 = v41;
    v22 = [v46 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v22)
    {
      obja = *v53;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v53 != obja)
          {
            objc_enumerationMutation(v46);
          }

          v24 = *(*(&v52 + 1) + 8 * j);
          v25 = [v46 objectForKey:v24];
          v26 = [v25 firstObject];
          v27 = [v26 identifier];
          v28 = [v44 objectForKey:v27];

          if ([(NSString *)v28 length])
          {
            v29 = objc_alloc(NSClassFromString(v28));
          }

          else
          {
            v29 = [CACCommandRecognizer alloc];
          }

          v30 = v29;
          v31 = [v25 firstObject];
          v32 = [v31 contextEvaluation];
          v33 = [(CACCommandRecognizer *)v30 initWithCommands:v25 contextEvaluators:v32 builtInLMIdentifiers:0];

          if (v33)
          {
            [(CACCommandRecognizer *)v33 setType:v24];
            [(CACCommandRecognizer *)v33 setDelegate:self];
            v34 = self->_recognizers;
            objc_sync_enter(v34);
            [(NSMutableArray *)self->_recognizers addObject:v33];
            objc_sync_exit(v34);
          }
        }

        v22 = [v46 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v22);
    }

    v35 = +[CACCommandRecognizerCustom customCommandRecognizers];
    if ([v35 count])
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v37)
      {
        v38 = *v49;
        do
        {
          for (k = 0; k != v37; ++k)
          {
            if (*v49 != v38)
            {
              objc_enumerationMutation(v36);
            }

            [*(*(&v48 + 1) + 8 * k) setDelegate:self];
          }

          v37 = [v36 countByEnumeratingWithState:&v48 objects:v60 count:16];
        }

        while (v37);
      }

      v40 = self->_recognizers;
      objc_sync_enter(v40);
      [(NSMutableArray *)self->_recognizers addObjectsFromArray:v36];
      objc_sync_exit(v40);
    }
  }
}

- (void)_rebuildCommandRecognizers
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__CACSpokenCommandManager__rebuildCommandRecognizers__block_invoke;
  v3[3] = &unk_279CEB2D0;
  v3[4] = self;
  [(CACSpokenCommandManager *)self performOnRecognizerSynchronizationDispatchQueueIfRunning:v3];
  [(CACSpokenCommandManager *)self synchronizeRecognizersWithReason:kSRUISyncReasonRecognizersChanged];
}

- (void)_rebuildCustomCommandRecognizers
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__CACSpokenCommandManager__rebuildCustomCommandRecognizers__block_invoke;
  v3[3] = &unk_279CEB2D0;
  v3[4] = self;
  [(CACSpokenCommandManager *)self performOnRecognizerSynchronizationDispatchQueueIfRunning:v3];
  [(CACSpokenCommandManager *)self synchronizeRecognizersWithReason:kSRUISyncReasonRecognizersChanged];
}

void __59__CACSpokenCommandManager__rebuildCustomCommandRecognizers__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 88);
  objc_sync_enter(v2);
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(*(a1 + 32) + 88);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 speechRecognizer];
          [v9 closeSpeechRecognizer];

          [v3 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(a1 + 32) + 88) removeObject:{*(*(&v16 + 1) + 8 * v13++), v16}];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v2);
  v14 = +[CACCommandRecognizerCustom customCommandRecognizers];
  if ([v14 count])
  {
    v15 = *(*(a1 + 32) + 88);
    objc_sync_enter(v15);
    [*(*(a1 + 32) + 88) addObjectsFromArray:v14];
    objc_sync_exit(v15);
  }
}

- (void)_markAsDirtyForBuiltInLMIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CACSpokenCommandManager__markAsDirtyForBuiltInLMIdentifier___block_invoke;
  v6[3] = &unk_279CEB4C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CACSpokenCommandManager *)self performOnRecognizerSynchronizationDispatchQueueIfRunning:v6];
}

void __62__CACSpokenCommandManager__markAsDirtyForBuiltInLMIdentifier___block_invoke(uint64_t a1)
{
  obj = *(*(a1 + 32) + 112);
  objc_sync_enter(obj);
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  [v2 setIsCurrent:0];

  objc_sync_exit(obj);
}

- (id)languageModelForBuiltInLMIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_identifierBasedLanguageModelCache;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_identifierBasedLanguageModelCache objectForKey:v4];
  v7 = [v6 languageModel];

  objc_sync_exit(v5);

  return v7;
}

- (__RXLanguageObject)rxLanguageObjectForBuiltInLMIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_identifierBasedLanguageModelCache;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_identifierBasedLanguageModelCache objectForKey:v4];
  v7 = [v6 rxLanguageObject];

  objc_sync_exit(v5);
  return v7;
}

- (void)_intializeBuiltInLMIdentifierTableIfNecessary
{
  v38 = *MEMORY[0x277D85DE8];
  v27 = self->_identifierBasedLanguageModelCache;
  objc_sync_enter(v27);
  v30 = self;
  if (![(NSMutableDictionary *)self->_identifierBasedLanguageModelCache count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = *MEMORY[0x277D65628];
    v36[0] = *MEMORY[0x277D65608];
    v36[1] = v4;
    v5 = *MEMORY[0x277D65600];
    v36[2] = *MEMORY[0x277D655F8];
    v36[3] = v5;
    v6 = *MEMORY[0x277D655D0];
    v36[4] = *MEMORY[0x277D655C8];
    v36[5] = v6;
    v7 = *MEMORY[0x277D65618];
    v36[6] = *MEMORY[0x277D655C0];
    v36[7] = v7;
    v8 = *MEMORY[0x277D655F0];
    v36[8] = *MEMORY[0x277D655E8];
    v36[9] = v8;
    v9 = *MEMORY[0x277D655D8];
    v36[10] = *MEMORY[0x277D655E0];
    v36[11] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:12];
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v11)
    {
      obj = v10;
      v29 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = objc_opt_new();
          v15 = [CACLanguageModel alloc];
          v16 = [v13 isEqualToString:*MEMORY[0x277D65600]];
          if (v16)
          {
            v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v13, kCACLanguageModelAttributeProxyIdentifier, 0}];
            v17 = v2;
          }

          else
          {
            v17 = 0;
          }

          v18 = [(CACLanguageModel *)v15 initWithText:&stru_287BD8610 identifier:0 attributes:v17];
          if (v16)
          {
          }

          v19 = [CACLanguageModel alloc];
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v13, kCACLanguageModelAttributeParameterIdentifier, 0}];
          v21 = [(CACLanguageModel *)v19 initWithText:&stru_287BD8610 identifier:v13 attributes:v20];

          [(CACLanguageModel *)v18 addChildLanguageModel:v21];
          [v14 setLanguageModel:v18];
          v22 = +[CACSpeechSystem speechSystem];
          v23 = [v22 createRXLanguageObjectRefFromCACLanguageModel:v18 ignoreBuiltInLMTable:1];

          v24 = *MEMORY[0x277D655D0];
          v35[0] = *MEMORY[0x277D655C8];
          v35[1] = v24;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
          v26 = [v25 containsObject:v13];

          if ((v26 & 1) == 0)
          {
            RXObjectSetProperty();
          }

          [v14 setRxLanguageObject:v23];
          RXRelease(v23);
          [(NSMutableDictionary *)v30->_identifierBasedLanguageModelCache setObject:v14 forKey:v13];
        }

        v10 = obj;
        v11 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v11);
    }

    [(CACSpokenCommandManager *)v30 _updateLanguageModelForBuiltInLMIdentifier:*MEMORY[0x277D655C0]];
    [(CACSpokenCommandManager *)v30 _updateLanguageModelForBuiltInLMIdentifier:*MEMORY[0x277D65618]];
    [(CACSpokenCommandManager *)v30 _updateLanguageModelForBuiltInLMIdentifier:*MEMORY[0x277D655E8]];
    [(CACSpokenCommandManager *)v30 _updateLanguageModelForBuiltInLMIdentifier:*MEMORY[0x277D655F0]];
    [(CACSpokenCommandManager *)v30 _updateLanguageModelForBuiltInLMIdentifier:*MEMORY[0x277D655E0]];
    [(CACSpokenCommandManager *)v30 _updateLanguageModelForBuiltInLMIdentifier:*MEMORY[0x277D655D8]];
  }

  objc_sync_exit(v27);
}

- (void)_flushBuiltInLMIdentifierTable
{
  obj = self->_identifierBasedLanguageModelCache;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)self->_identifierBasedLanguageModelCache removeAllObjects];
  [(NSMutableDictionary *)self->_oldRXLangaugeObjects removeAllObjects];
  objc_sync_exit(obj);
}

- (void)_waitUntilElementsAreNumbered
{
  v3 = +[CACDisplayManager sharedManager];
  v4 = [v3 labeledElementsForItemNumbers];
  v5 = [v4 count];

  if (v5)
  {
    for (i = 11; i > 1; --i)
    {
      if ([(CACLabeledElementsCollection *)self->_labeledScreenElementsCollection areElementsNumbered])
      {
        break;
      }

      usleep(0x186A0u);
    }
  }
}

- (BOOL)_isNumberOnlyString:(id)a3 lessThanOrEqualToValue:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 integerValue];
  v7 = v6 >= 1 && v6 <= a4;
  if (v7 && (v8 = v6, [v5 length]))
  {
    v9 = objc_opt_new();
    [v9 setNumberStyle:1];
    [v9 setUsesGroupingSeparator:0];
    v10 = MEMORY[0x277CBEAF8];
    v11 = +[CACPreferences sharedPreferences];
    v12 = [v11 bestLocaleIdentifier];
    v13 = [v10 localeWithLocaleIdentifier:v12];

    if (v13)
    {
      [v9 setLocale:v13];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      v15 = [v9 stringFromNumber:v14];

      v16 = [v15 isEqualToString:v5];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_updateLanguageModelForBuiltInLMIdentifier:(id)a3
{
  v429 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_identifierBasedLanguageModelCache;
  objc_sync_enter(v5);
  v282 = v4;
  v6 = [(NSMutableDictionary *)self->_identifierBasedLanguageModelCache objectForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isCurrent];

    objc_sync_exit(v5);
    if (v8)
    {
      goto LABEL_191;
    }
  }

  else
  {
    objc_sync_exit(v5);
  }

  v308 = self;
  v9 = [CACLanguageModel alloc];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v282, kCACLanguageModelAttributeParameterIdentifier, 0}];
  v307 = [(CACLanguageModel *)v9 initWithText:&stru_287BD8610 identifier:v282 attributes:v10];

  if ([v282 isEqualToString:*MEMORY[0x277D65628]])
  {
    if (self->_externalContextOverrideTable)
    {
      v400 = 0u;
      v399 = 0u;
      v398 = 0u;
      v397 = 0u;
      v11 = [(CACSpokenCommandManager *)self _arrayFromExternalContextOverrideForBuiltInIdentifier:v282];
      v12 = [v11 countByEnumeratingWithState:&v397 objects:v428 count:16];
      if (v12)
      {
        v13 = *v398;
        v14 = *MEMORY[0x277CBED28];
        v15 = MEMORY[0x277D65638];
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v398 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v397 + 1) + 8 * i);
            if ([v17 length])
            {
              v18 = [CACLanguageModel alloc];
              v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v14, *v15, 0}];
              v20 = [(CACLanguageModel *)v18 initWithText:v17 identifier:0 attributes:v19];

              [(CACLanguageModel *)v307 addChildLanguageModel:v20];
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v397 objects:v428 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v286 = [(CACLabeledElementsCollection *)self->_labeledScreenElementsCollection copyTableOfCollectedElementsByTitle];
      v289 = [MEMORY[0x277CBEB58] set];
      v31 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      if ([v31 isActiveOverlayType:@"NumberedElements"])
      {
        v32 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        v33 = [v32 doesFocusedElementRequireSecureInput];

        if (v33)
        {
          v396 = 0u;
          v395 = 0u;
          v394 = 0u;
          v393 = 0u;
          v34 = [(CACLabeledElementsCollection *)self->_labeledScreenElementsCollection collectedElements];
          v35 = [v34 countByEnumeratingWithState:&v393 objects:v427 count:16];
          if (v35)
          {
            v36 = *v394;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v394 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v38 = [*(*(&v393 + 1) + 8 * j) numberedLabelForRecognition];
                if ([v38 length])
                {
                  [v289 addObject:v38];
                }
              }

              v35 = [v34 countByEnumeratingWithState:&v393 objects:v427 count:16];
            }

            while (v35);
          }
        }
      }

      else
      {
      }

      v392 = 0u;
      v391 = 0u;
      v390 = 0u;
      v389 = 0u;
      v64 = [v286 allKeys];
      v287 = [v64 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

      obja = [v287 countByEnumeratingWithState:&v389 objects:v426 count:16];
      if (obja)
      {
        v295 = *v390;
        v283 = *MEMORY[0x277CBED28];
        do
        {
          for (k = 0; k != obja; k = k + 1)
          {
            if (*v390 != v295)
            {
              objc_enumerationMutation(v287);
            }

            v66 = *(*(&v389 + 1) + 8 * k);
            if ([v66 length])
            {
              v67 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
              v68 = [v67 isActiveOverlayType:@"NumberedGrid"];

              if (!v68 || (+[CACDisplayManager sharedManager](CACDisplayManager, "sharedManager"), v69 = objc_claimAutoreleasedReturnValue(), [v69 labeledElementsForGrid], v70 = objc_claimAutoreleasedReturnValue(), v71 = objc_msgSend(v70, "count"), v70, v69, v71 < 1) || !-[CACSpokenCommandManager _isNumberOnlyString:lessThanOrEqualToValue:](v308, "_isNumberOnlyString:lessThanOrEqualToValue:", v66, v71))
              {
                if (([v289 containsObject:v66] & 1) == 0)
                {
                  v72 = [v286 objectForKey:v66];
                  if ([v72 count])
                  {
                    v292 = [v72 objectAtIndex:0];
                  }

                  else
                  {
                    v292 = 0;
                  }

                  v388 = 0u;
                  v387 = 0u;
                  v386 = 0u;
                  v385 = 0u;
                  v73 = v72;
                  v74 = 0;
                  v75 = [v73 countByEnumeratingWithState:&v385 objects:v425 count:16];
                  if (v75)
                  {
                    v76 = *v386;
                    do
                    {
                      for (m = 0; m != v75; ++m)
                      {
                        if (*v386 != v76)
                        {
                          objc_enumerationMutation(v73);
                        }

                        v78 = [*(*(&v385 + 1) + 8 * m) axIdentifier];
                        v79 = [v78 hasPrefix:@"_CAC_NUMBERED_ONLY_ELEMENT_"];

                        v74 += v79;
                      }

                      v75 = [v73 countByEnumeratingWithState:&v385 objects:v425 count:16];
                    }

                    while (v75);
                  }

                  v384 = 0u;
                  v383 = 0u;
                  v382 = 0u;
                  v381 = 0u;
                  v80 = [v292 recognitionStrings];
                  v81 = [v80 countByEnumeratingWithState:&v381 objects:v424 count:16];
                  if (v81)
                  {
                    v82 = *v382;
                    while (2)
                    {
                      for (n = 0; n != v81; ++n)
                      {
                        if (*v382 != v82)
                        {
                          objc_enumerationMutation(v80);
                        }

                        v84 = *(*(&v381 + 1) + 8 * n);
                        if (![v84 caseInsensitiveCompare:v66])
                        {
                          v85 = v84;
                          goto LABEL_94;
                        }
                      }

                      v81 = [v80 countByEnumeratingWithState:&v381 objects:v424 count:16];
                      if (v81)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v85 = 0;
LABEL_94:

                  if ([v85 length])
                  {
                    v86 = &kCACCommandParameterLabeledElement;
                    if ([v73 count] - v74 == 1 || (v86 = &kCACCommandParameterLabeledElementForDisambiguation, (objc_msgSend(v73, "count") - v74) >= 2))
                    {
                      v87 = [CACLanguageModel alloc];
                      v88 = MEMORY[0x277CBEAC0];
                      v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v292, *v86, 0}];
                      v90 = [v88 dictionaryWithObjectsAndKeys:{v89, kCACLanguageModelAttributeCommandParameters, v283, *MEMORY[0x277D65638], 0}];
                      v91 = [(CACLanguageModel *)v87 initWithText:v85 identifier:0 attributes:v90];

                      [(CACLanguageModel *)v307 addChildLanguageModel:v91];
                    }
                  }
                }
              }
            }
          }

          obja = [v287 countByEnumeratingWithState:&v389 objects:v426 count:16];
        }

        while (obja);
      }
    }

    goto LABEL_162;
  }

  if (([v282 isEqualToString:*MEMORY[0x277D655F8]] & 1) == 0 && !objc_msgSend(v282, "isEqualToString:", *MEMORY[0x277D65600]))
  {
    if ([v282 isEqualToString:*MEMORY[0x277D65608]])
    {
      if (self->_externalContextOverrideTable)
      {
        v364 = 0u;
        v363 = 0u;
        v362 = 0u;
        v361 = 0u;
        v54 = [(CACSpokenCommandManager *)self _arrayFromExternalContextOverrideForBuiltInIdentifier:v282];
        v55 = [v54 countByEnumeratingWithState:&v361 objects:v419 count:16];
        if (v55)
        {
          v56 = *v362;
          v57 = *MEMORY[0x277CBED28];
          v58 = MEMORY[0x277D65638];
          do
          {
            for (ii = 0; ii != v55; ++ii)
            {
              if (*v362 != v56)
              {
                objc_enumerationMutation(v54);
              }

              v60 = *(*(&v361 + 1) + 8 * ii);
              if ([v60 length])
              {
                v61 = [CACLanguageModel alloc];
                v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v57, *v58, 0}];
                v63 = [(CACLanguageModel *)v61 initWithText:v60 identifier:0 attributes:v62];

                [(CACLanguageModel *)v307 addChildLanguageModel:v63];
              }
            }

            v55 = [v54 countByEnumeratingWithState:&v361 objects:v419 count:16];
          }

          while (v55);
        }
      }

      else
      {
        +[CACApplicationUtilities targetApplications];
        v360 = 0u;
        v358 = 0u;
        v359 = 0u;
        objb = v357 = 0u;
        v108 = [objb countByEnumeratingWithState:&v357 objects:v418 count:16];
        if (v108)
        {
          v109 = *v358;
          v110 = *MEMORY[0x277CBED28];
          do
          {
            for (jj = 0; jj != v108; ++jj)
            {
              if (*v358 != v109)
              {
                objc_enumerationMutation(objb);
              }

              v112 = *(*(&v357 + 1) + 8 * jj);
              v113 = [v112 objectForKey:kCACCommandParameterAppName];
              v114 = [CACLanguageModel alloc];
              v115 = MEMORY[0x277CBEAC0];
              v116 = [MEMORY[0x277CBEA60] arrayWithObject:v112];
              v117 = [v115 dictionaryWithObjectsAndKeys:{v116, kCACCommandParameterMatchingApps, 0}];
              v118 = [v115 dictionaryWithObjectsAndKeys:{v117, kCACLanguageModelAttributeCommandParameters, v110, *MEMORY[0x277D65638], 0}];
              v119 = [(CACLanguageModel *)v114 initWithText:v113 identifier:0 attributes:v118];

              [(CACLanguageModel *)v307 addChildLanguageModel:v119];
            }

            v108 = [objb countByEnumeratingWithState:&v357 objects:v418 count:16];
          }

          while (v108);
        }

        if (![objb count])
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v417 = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __70__CACSpokenCommandManager__updateLanguageModelForBuiltInLMIdentifier___block_invoke;
          aBlock[3] = &unk_279CEBBD8;
          aBlock[5] = buf;
          aBlock[4] = v308;
          v120 = _Block_copy(aBlock);
          v121 = 10;
          v122 = 1000000000;
          do
          {
            v123 = dispatch_time(0, v122);
            v124 = [(CACSpokenCommandManager *)v308 recognizerSynchronizationDispatchQueue];
            dispatch_after(v123, v124, v120);

            v122 += 1000000000;
            --v121;
          }

          while (v121);

          _Block_object_dispose(buf, 8);
        }
      }

      goto LABEL_162;
    }

    v95 = MEMORY[0x277D655C0];
    if ([v282 isEqualToString:*MEMORY[0x277D655C0]])
    {
      v96 = [MEMORY[0x277D65598] deviceName];
      v97 = [[CACLanguageModel alloc] initWithText:v96 identifier:*v95 attributes:0];
      [(CACLanguageModel *)v307 addChildLanguageModel:v97];

      goto LABEL_162;
    }

    if ([v282 isEqualToString:*MEMORY[0x277D655E0]])
    {
      if (self->_externalContextOverrideTable)
      {
        v354 = 0u;
        v355 = 0u;
        v352 = 0u;
        v353 = 0u;
        v98 = [(CACSpokenCommandManager *)self _arrayFromExternalContextOverrideForBuiltInIdentifier:v282];
        v99 = [v98 countByEnumeratingWithState:&v352 objects:v415 count:16];
        if (v99)
        {
          v100 = *v353;
          v101 = *MEMORY[0x277CBED28];
          v102 = MEMORY[0x277D65638];
          do
          {
            for (kk = 0; kk != v99; ++kk)
            {
              if (*v353 != v100)
              {
                objc_enumerationMutation(v98);
              }

              v104 = *(*(&v352 + 1) + 8 * kk);
              if ([v104 length])
              {
                v105 = [CACLanguageModel alloc];
                v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v101, *v102, 0}];
                v107 = [(CACLanguageModel *)v105 initWithText:v104 identifier:0 attributes:v106];

                [(CACLanguageModel *)v307 addChildLanguageModel:v107];
              }
            }

            v99 = [v98 countByEnumeratingWithState:&v352 objects:v415 count:16];
          }

          while (v99);
        }

        goto LABEL_162;
      }

      v205 = [CACLanguageModel alloc];
      v206 = *MEMORY[0x277CBED28];
      v207 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CBED28], *MEMORY[0x277D65638], 0}];
      v278 = [(CACLanguageModel *)v205 initWithText:&stru_287BD8610 identifier:0 attributes:v207];

      v276 = +[CACPreferences sharedPreferences];
      v274 = [v276 bestLocaleIdentifier];
      v413[0] = @"ModifierKeyName.Command";
      v208 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      v414[0] = v208;
      v413[1] = @"ModifierKeyName.Option";
      v209 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
      v414[1] = v209;
      v413[2] = @"ModifierKeyName.Shift";
      v210 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:8];
      v414[2] = v210;
      v413[3] = @"ModifierKeyName.Control";
      v211 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
      v414[3] = v211;
      v413[4] = @"ModifierKeyName.Caps Lock";
      v212 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:16];
      v414[4] = v212;
      v280 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v414 forKeys:v413 count:5];

      v213 = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
      v298 = [v213 dictionaryForLocaleIdentifier:v274 resourceFileName:@"ModifierKeyNames" resourceFileExtension:@"strings"];

      v214 = [CACLanguageModel alloc];
      v215 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v206, *MEMORY[0x277D65630], 0}];
      v284 = [(CACLanguageModel *)v214 initWithText:&stru_287BD8610 identifier:0 attributes:v215];

      v350 = 0u;
      v351 = 0u;
      v348 = 0u;
      v349 = 0u;
      v290 = [v280 allKeys];
      obje = [v290 countByEnumeratingWithState:&v348 objects:v412 count:16];
      if (!obje)
      {
        goto LABEL_231;
      }

      v293 = *v349;
LABEL_206:
      v216 = 0;
      while (1)
      {
        if (*v349 != v293)
        {
          objc_enumerationMutation(v290);
        }

        v217 = *(*(&v348 + 1) + 8 * v216);
        v218 = [v298 objectForKey:v217];
        if (![v218 length])
        {
          v220 = CACLogDictationCommands();
          if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v217;
            _os_log_impl(&dword_26B354000, v220, OS_LOG_TYPE_DEFAULT, "Error loading modifier key name string: %@", buf, 0xCu);
          }

          goto LABEL_218;
        }

        v347 = 0;
        v219 = [MEMORY[0x277D65598] languageModelDictionaryFromCommandText:v218 parsingErrorString:&v347];
        v220 = v347;
        if ([v220 length])
        {
          v221 = 0;
        }

        else
        {
          v221 = [CACSpokenCommand languageModelFromCommandDictionary:v219 tokenResolution:0 containsBuiltInIdentifier:0 error:0];
          if (v221 && ![v220 length])
          {
            [v221 setIdentifier:v217];
            v223 = MEMORY[0x277CBEAC0];
            v224 = [v280 objectForKey:v217];
            v225 = [v223 dictionaryWithObjectsAndKeys:{v224, kCACCommandParameterAXModifierFlag, 0}];
            [v221 setObject:v225 forAttribute:kCACLanguageModelAttributeCommandParameters];

            v345 = 0u;
            v346 = 0u;
            v343 = 0u;
            v344 = 0u;
            v226 = [v221 children];
            v227 = [v226 countByEnumeratingWithState:&v343 objects:v411 count:16];
            if (v227)
            {
              v228 = *v344;
              do
              {
                for (mm = 0; mm != v227; ++mm)
                {
                  if (*v344 != v228)
                  {
                    objc_enumerationMutation(v226);
                  }

                  [*(*(&v343 + 1) + 8 * mm) setIdentifier:v217];
                }

                v227 = [v226 countByEnumeratingWithState:&v343 objects:v411 count:16];
              }

              while (v227);
            }

            [(CACLanguageModel *)v284 addChildLanguageModel:v221];
            goto LABEL_215;
          }
        }

        v222 = CACLogDictationCommands();
        if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = v217;
          *&buf[12] = 2112;
          *&buf[14] = v218;
          *&buf[22] = 2112;
          v417 = v220;
          _os_log_impl(&dword_26B354000, v222, OS_LOG_TYPE_DEFAULT, "Error parsing modifier key name: %@, '%@', %@", buf, 0x20u);
        }

LABEL_215:
LABEL_218:

        if (++v216 == obje)
        {
          v230 = [v290 countByEnumeratingWithState:&v348 objects:v412 count:16];
          obje = v230;
          if (!v230)
          {
LABEL_231:

            v231 = 4;
            do
            {
              [(CACLanguageModel *)v278 addChildLanguageModel:v284];
              --v231;
            }

            while (v231);
            [(CACLanguageModel *)v307 addChildLanguageModel:v278];

            goto LABEL_162;
          }

          goto LABEL_206;
        }
      }
    }

    if (![v282 isEqualToString:*MEMORY[0x277D655D8]])
    {
      if ([v282 isEqualToString:*MEMORY[0x277D65618]])
      {
        if (self->_externalContextOverrideTable)
        {
          v323 = 0u;
          v324 = 0u;
          v321 = 0u;
          v322 = 0u;
          v195 = [(CACSpokenCommandManager *)self _arrayFromExternalContextOverrideForBuiltInIdentifier:v282];
          v196 = [v195 countByEnumeratingWithState:&v321 objects:v406 count:16];
          if (v196)
          {
            v197 = *v322;
            v198 = *MEMORY[0x277CBED28];
            v199 = MEMORY[0x277D65638];
            do
            {
              for (nn = 0; nn != v196; ++nn)
              {
                if (*v322 != v197)
                {
                  objc_enumerationMutation(v195);
                }

                v201 = *(*(&v321 + 1) + 8 * nn);
                if ([v201 length])
                {
                  v202 = [CACLanguageModel alloc];
                  v203 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v198, *v199, 0}];
                  v204 = [(CACLanguageModel *)v202 initWithText:v201 identifier:0 attributes:v203];

                  [(CACLanguageModel *)v307 addChildLanguageModel:v204];
                }
              }

              v196 = [v195 countByEnumeratingWithState:&v321 objects:v406 count:16];
            }

            while (v196);
          }
        }

        else
        {
          for (i1 = 2; i1 != 101; ++i1)
          {
            v265 = [(CACSpokenCommandManager *)v308 _stringInRecognitionLocaleFormatFromIntegerValue:i1];
            v266 = [[CACLanguageModel alloc] initWithText:v265 identifier:0 attributes:0];
            [(CACLanguageModel *)v307 addChildLanguageModel:v266];
          }
        }
      }

      else if (([v282 isEqualToString:*MEMORY[0x277D655E8]] & 1) != 0 || objc_msgSend(v282, "isEqualToString:", *MEMORY[0x277D655F0]))
      {
        if (self->_externalContextOverrideTable)
        {
          v319 = 0u;
          v320 = 0u;
          v317 = 0u;
          v318 = 0u;
          v232 = [(CACSpokenCommandManager *)self _arrayFromExternalContextOverrideForBuiltInIdentifier:v282];
          v233 = [v232 countByEnumeratingWithState:&v317 objects:v405 count:16];
          if (v233)
          {
            v234 = *v318;
            v235 = *MEMORY[0x277CBED28];
            v236 = MEMORY[0x277D65638];
            do
            {
              for (i2 = 0; i2 != v233; ++i2)
              {
                if (*v318 != v234)
                {
                  objc_enumerationMutation(v232);
                }

                v238 = *(*(&v317 + 1) + 8 * i2);
                if ([v238 length])
                {
                  v239 = [CACLanguageModel alloc];
                  v240 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v235, *v236, 0}];
                  v241 = [(CACLanguageModel *)v239 initWithText:v238 identifier:0 attributes:v240];

                  [(CACLanguageModel *)v307 addChildLanguageModel:v241];
                }
              }

              v233 = [v232 countByEnumeratingWithState:&v317 objects:v405 count:16];
            }

            while (v233);
          }
        }

        else
        {
          for (i3 = 2; i3 != 100; ++i3)
          {
            v268 = [(CACSpokenCommandManager *)v308 _stringInRecognitionLocaleFormatFromIntegerValue:i3];
            v269 = [[CACLanguageModel alloc] initWithText:v268 identifier:0 attributes:0];
            [(CACLanguageModel *)v307 addChildLanguageModel:v269];
          }
        }
      }

      goto LABEL_162;
    }

    if (self->_externalContextOverrideTable)
    {
      v341 = 0u;
      v342 = 0u;
      v339 = 0u;
      v340 = 0u;
      v125 = [(CACSpokenCommandManager *)self _arrayFromExternalContextOverrideForBuiltInIdentifier:v282];
      v126 = [v125 countByEnumeratingWithState:&v339 objects:v410 count:16];
      if (v126)
      {
        v127 = *v340;
        v128 = *MEMORY[0x277CBED28];
        v129 = MEMORY[0x277D65638];
        do
        {
          for (i4 = 0; i4 != v126; ++i4)
          {
            if (*v340 != v127)
            {
              objc_enumerationMutation(v125);
            }

            v131 = *(*(&v339 + 1) + 8 * i4);
            if ([v131 length])
            {
              v132 = [CACLanguageModel alloc];
              v133 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v128, *v129, 0}];
              v134 = [(CACLanguageModel *)v132 initWithText:v131 identifier:0 attributes:v133];

              [(CACLanguageModel *)v307 addChildLanguageModel:v134];
            }
          }

          v126 = [v125 countByEnumeratingWithState:&v339 objects:v410 count:16];
        }

        while (v126);
      }

      goto LABEL_162;
    }

    v272 = +[CACPreferences sharedPreferences];
    v270 = [v272 builtInCommandsTable];
    v271 = [v272 bestLocaleIdentifier];
    v281 = [v270 objectForKey:@"KeyboardKeyProperties"];
    v242 = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
    v294 = [v242 dictionaryForLocaleIdentifier:v271 resourceFileName:@"KeyboardKeyNames" resourceFileExtension:@"strings"];

    v243 = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
    v244 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v277 = [v243 dictionaryForLocaleIdentifier:v271 bundle:v244 subDirectory:@"LocalizedPhoneticAlphabet" rootFileName:@"PhoneticAlphabet" rootFileExtension:@"plist"];

    v337 = 0u;
    v338 = 0u;
    v335 = 0u;
    v336 = 0u;
    v288 = [v281 allKeys];
    v299 = [v288 countByEnumeratingWithState:&v335 objects:v409 count:16];
    if (!v299)
    {
LABEL_289:

      goto LABEL_162;
    }

    v291 = *v336;
LABEL_249:
    v245 = 0;
    while (1)
    {
      if (*v336 != v291)
      {
        objc_enumerationMutation(v288);
      }

      v246 = *(*(&v335 + 1) + 8 * v245);
      v247 = [v294 objectForKey:v246];
      if (!v247)
      {
        goto LABEL_258;
      }

      v334 = 0;
      v248 = [MEMORY[0x277D65598] languageModelDictionaryFromCommandText:v247 parsingErrorString:&v334];
      v249 = v334;
      if ([v249 length]|| ([CACSpokenCommand languageModelFromCommandDictionary:v248 tokenResolution:0 containsBuiltInIdentifier:0 error:0], (objf = objc_claimAutoreleasedReturnValue()) == 0))
      {
        objf = 0;
LABEL_255:
        v250 = CACLogDictationCommands();
        if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = v246;
          *&buf[12] = 2112;
          *&buf[14] = v247;
          *&buf[22] = 2112;
          v417 = v249;
          _os_log_impl(&dword_26B354000, v250, OS_LOG_TYPE_DEFAULT, "Error parsing keyboard key name: %@, '%@', %@", buf, 0x20u);
        }

        goto LABEL_257;
      }

      if ([v249 length])
      {
        goto LABEL_255;
      }

      [objf setIdentifier:v246];
      v251 = [v281 objectForKey:v246];
      [objf setObject:v251 forAttribute:kCACLanguageModelAttributeCommandParameters];

      v332 = 0u;
      v333 = 0u;
      v330 = 0u;
      v331 = 0u;
      v252 = [objf children];
      v253 = [v252 countByEnumeratingWithState:&v330 objects:v408 count:16];
      if (v253)
      {
        v254 = *v331;
        do
        {
          for (i5 = 0; i5 != v253; ++i5)
          {
            if (*v331 != v254)
            {
              objc_enumerationMutation(v252);
            }

            [*(*(&v330 + 1) + 8 * i5) setIdentifier:v246];
          }

          v253 = [v252 countByEnumeratingWithState:&v330 objects:v408 count:16];
        }

        while (v253);
      }

      [(CACLanguageModel *)v307 addChildLanguageModel:objf];
      v256 = [v277 objectForKey:@"PhoneticPronunciationMapping"];
      v250 = v256;
      if (v256)
      {
        break;
      }

LABEL_257:

LABEL_258:
      if (++v245 == v299)
      {
        v263 = [v288 countByEnumeratingWithState:&v335 objects:v409 count:16];
        v299 = v263;
        if (!v263)
        {
          goto LABEL_289;
        }

        goto LABEL_249;
      }
    }

    v285 = [v256 objectForKey:v246];
    if (![v285 length])
    {
LABEL_277:

      goto LABEL_257;
    }

    v329 = 0;
    v273 = [MEMORY[0x277D65598] languageModelDictionaryFromCommandText:v285 parsingErrorString:&v329];
    v275 = v329;
    if ([v275 length]|| ([CACSpokenCommand languageModelFromCommandDictionary:v273 tokenResolution:0 containsBuiltInIdentifier:0 error:0], (v279 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v279 = 0;
    }

    else if (![v275 length])
    {
      [v279 setIdentifier:v246];
      v258 = [v281 objectForKey:v246];
      [v279 setObject:v258 forAttribute:kCACLanguageModelAttributeCommandParameters];

      v327 = 0u;
      v328 = 0u;
      v325 = 0u;
      v326 = 0u;
      v259 = [v279 children];
      v260 = [v259 countByEnumeratingWithState:&v325 objects:v407 count:16];
      if (v260)
      {
        v261 = *v326;
        do
        {
          for (i6 = 0; i6 != v260; ++i6)
          {
            if (*v326 != v261)
            {
              objc_enumerationMutation(v259);
            }

            [*(*(&v325 + 1) + 8 * i6) setIdentifier:v246];
          }

          v260 = [v259 countByEnumeratingWithState:&v325 objects:v407 count:16];
        }

        while (v260);
      }

      [(CACLanguageModel *)v307 addChildLanguageModel:v279];
LABEL_276:

      goto LABEL_277;
    }

    v257 = CACLogDictationCommands();
    if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = v246;
      *&buf[12] = 2112;
      *&buf[14] = v285;
      *&buf[22] = 2112;
      v417 = v275;
      _os_log_impl(&dword_26B354000, v257, OS_LOG_TYPE_DEFAULT, "Error parsing phonetic key name: %@, '%@', %@", buf, 0x20u);
    }

    goto LABEL_276;
  }

  if (!self->_externalContextOverrideTable)
  {
    v39 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v40 = [v39 isActiveOverlayType:@"NumberedGrid"];

    if (v40)
    {
      v376 = 0u;
      v375 = 0u;
      v374 = 0u;
      v373 = 0u;
      v41 = +[CACDisplayManager sharedManager];
      obj = [v41 labeledElementsForGrid];

      v42 = [obj countByEnumeratingWithState:&v373 objects:v422 count:16];
      if (v42)
      {
        v43 = *v374;
        v44 = *MEMORY[0x277CBED28];
        v45 = MEMORY[0x277D65638];
        do
        {
          for (i7 = 0; i7 != v42; ++i7)
          {
            if (*v374 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v47 = *(*(&v373 + 1) + 8 * i7);
            v48 = [v47 numberedLabelForRecognition];
            v49 = [CACLanguageModel alloc];
            v50 = MEMORY[0x277CBEAC0];
            v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v47, kCACCommandParameterLabeledElement, 0}];
            v52 = [v50 dictionaryWithObjectsAndKeys:{v51, kCACLanguageModelAttributeCommandParameters, v44, *v45, 0}];
            v53 = [(CACLanguageModel *)v49 initWithText:v48 identifier:0 attributes:v52];

            [(CACLanguageModel *)v307 addChildLanguageModel:v53];
          }

          v42 = [obj countByEnumeratingWithState:&v373 objects:v422 count:16];
        }

        while (v42);
      }
    }

    else
    {
      v92 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v93 = [v92 isActiveOverlayType:@"NumberedElements"];

      if (!v93)
      {
        goto LABEL_153;
      }

      v94 = [(CACSpokenCommandManager *)self disambiguationHandler];
      obj = v94;
      if (v94)
      {
        [v94 labeledElements];
      }

      else
      {
        [(CACLabeledElementsCollection *)self->_labeledScreenElementsCollection collectedElements];
      }
      v135 = ;
      [(CACSpokenCommandManager *)self _waitUntilElementsAreNumbered];
      v372 = 0u;
      v371 = 0u;
      v370 = 0u;
      v369 = 0u;
      v296 = v135;
      v136 = [v296 countByEnumeratingWithState:&v369 objects:v421 count:16];
      if (v136)
      {
        v137 = *v370;
        v138 = *MEMORY[0x277CBED28];
        v139 = MEMORY[0x277D65638];
        do
        {
          for (i8 = 0; i8 != v136; ++i8)
          {
            if (*v370 != v137)
            {
              objc_enumerationMutation(v296);
            }

            v141 = *(*(&v369 + 1) + 8 * i8);
            v142 = [v141 numberedLabelForRecognition];
            v143 = [CACLanguageModel alloc];
            v144 = MEMORY[0x277CBEAC0];
            v145 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v141, kCACCommandParameterLabeledElement, 0}];
            v146 = [v144 dictionaryWithObjectsAndKeys:{v145, kCACLanguageModelAttributeCommandParameters, v138, *v139, 0}];
            v147 = [(CACLanguageModel *)v143 initWithText:v142 identifier:0 attributes:v146];

            [(CACLanguageModel *)v307 addChildLanguageModel:v147];
          }

          v136 = [v296 countByEnumeratingWithState:&v369 objects:v421 count:16];
        }

        while (v136);
      }
    }

LABEL_153:
    v148 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v149 = [v148 isActiveOverlayType:@"NumberedElements"];
    v150 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v151 = [v150 isActiveOverlayType:@"NamedElements"];

    if (v149 | v151)
    {
      v152 = +[CACDisplayManager sharedManager];
      v153 = [v152 visibleLabeledTextSegmentElements];

      v368 = 0u;
      v367 = 0u;
      v366 = 0u;
      v365 = 0u;
      objc = v153;
      v154 = [objc countByEnumeratingWithState:&v365 objects:v420 count:16];
      if (v154)
      {
        v155 = *v366;
        v156 = *MEMORY[0x277CBED28];
        v157 = MEMORY[0x277D65638];
        do
        {
          for (i9 = 0; i9 != v154; ++i9)
          {
            if (*v366 != v155)
            {
              objc_enumerationMutation(objc);
            }

            v159 = *(*(&v365 + 1) + 8 * i9);
            v160 = [v159 numberedLabelForRecognition];
            v161 = [CACLanguageModel alloc];
            v162 = MEMORY[0x277CBEAC0];
            v163 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v159, kCACCommandParameterLabeledElement, 0}];
            v164 = [v162 dictionaryWithObjectsAndKeys:{v163, kCACLanguageModelAttributeCommandParameters, v156, *v157, 0}];
            v165 = [(CACLanguageModel *)v161 initWithText:v160 identifier:0 attributes:v164];

            [(CACLanguageModel *)v307 addChildLanguageModel:v165];
          }

          v154 = [objc countByEnumeratingWithState:&v365 objects:v420 count:16];
        }

        while (v154);
      }
    }

    goto LABEL_162;
  }

  v380 = 0u;
  v379 = 0u;
  v378 = 0u;
  v377 = 0u;
  v21 = [(CACSpokenCommandManager *)self _arrayFromExternalContextOverrideForBuiltInIdentifier:v282];
  v22 = [v21 countByEnumeratingWithState:&v377 objects:v423 count:16];
  if (v22)
  {
    v23 = *v378;
    v24 = *MEMORY[0x277CBED28];
    v25 = MEMORY[0x277D65638];
    do
    {
      for (i10 = 0; i10 != v22; ++i10)
      {
        if (*v378 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v377 + 1) + 8 * i10);
        if ([v27 length])
        {
          v28 = [CACLanguageModel alloc];
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v24, *v25, 0}];
          v30 = [(CACLanguageModel *)v28 initWithText:v27 identifier:0 attributes:v29];

          [(CACLanguageModel *)v307 addChildLanguageModel:v30];
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v377 objects:v423 count:16];
    }

    while (v22);
  }

LABEL_162:
  v297 = v308->_identifierBasedLanguageModelCache;
  objc_sync_enter(v297);
  v166 = +[CACSpeechSystem speechSystem];
  objd = [v166 createRXLanguageObjectRefFromCACLanguageModel:v307 ignoreBuiltInLMTable:1];

  if (objd)
  {
    v404 = v282;
    v167 = [MEMORY[0x277CBEA60] arrayWithObjects:&v404 count:1];
    v168 = [v282 isEqualToString:*MEMORY[0x277D655F8]];
    v169 = MEMORY[0x277D655F8];
    if ((v168 & 1) != 0 || [v282 isEqualToString:*MEMORY[0x277D65600]])
    {
      v170 = *MEMORY[0x277D65600];
      v403[0] = *v169;
      v403[1] = v170;
      v171 = [MEMORY[0x277CBEA60] arrayWithObjects:v403 count:2];

      v167 = v171;
    }

    v315 = 0u;
    v316 = 0u;
    v313 = 0u;
    v314 = 0u;
    v172 = v167;
    v173 = [v172 countByEnumeratingWithState:&v313 objects:v402 count:16];
    if (v173)
    {
      v174 = *v314;
      do
      {
        for (i11 = 0; i11 != v173; ++i11)
        {
          if (*v314 != v174)
          {
            objc_enumerationMutation(v172);
          }

          v176 = [(NSMutableDictionary *)v308->_identifierBasedLanguageModelCache objectForKey:*(*(&v313 + 1) + 8 * i11)];
          v177 = v176;
          if (v176)
          {
            [v176 setIsCurrent:1];
            v178 = [v177 languageModel];
            [v177 rxLanguageObject];
            [v178 removeAllChildren];
            [v178 addChildLanguageModel:v307];
            if (RXLanguageObjectGetCount() < 1)
            {
              RXLanguageObjectAddObject();
            }

            else
            {
              v179 = [[CACRXLanguageObjectWrapper alloc] initWithRXLanguageObject:RXLanguageObjectGetObjectAtIndex()];
              if (v179)
              {
                oldRXLangaugeObjects = v308->_oldRXLangaugeObjects;
                v181 = MEMORY[0x277CCACA8];
                [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
                v183 = [v181 stringWithFormat:@"%f", v182];
                [(NSMutableDictionary *)oldRXLangaugeObjects setObject:v179 forKey:v183];

                RXLanguageObjectSetObjectAtIndex();
              }
            }
          }
        }

        v173 = [v172 countByEnumeratingWithState:&v313 objects:v402 count:16];
      }

      while (v173);
    }

    RXRelease(objd);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v185 = v184;
  v186 = [(NSMutableDictionary *)v308->_oldRXLangaugeObjects allKeys];
  v187 = [v186 copy];

  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v188 = v187;
  v189 = [v188 countByEnumeratingWithState:&v309 objects:v401 count:16];
  if (v189)
  {
    v190 = *v310;
    v191 = v185 + -60.0;
    do
    {
      for (i12 = 0; i12 != v189; ++i12)
      {
        if (*v310 != v190)
        {
          objc_enumerationMutation(v188);
        }

        v193 = *(*(&v309 + 1) + 8 * i12);
        [v193 doubleValue];
        if (v194 < v191)
        {
          [(NSMutableDictionary *)v308->_oldRXLangaugeObjects removeObjectForKey:v193];
        }
      }

      v189 = [v188 countByEnumeratingWithState:&v309 objects:v401 count:16];
    }

    while (v189);
  }

  objc_sync_exit(v297);
LABEL_191:
}

void __70__CACSpokenCommandManager__updateLanguageModelForBuiltInLMIdentifier___block_invoke(uint64_t a1)
{
  v2 = +[CACApplicationUtilities targetApplications];
  v3 = [v2 count];

  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) != v3)
  {
    *(v4 + 24) = v3;
    v5 = *(a1 + 32);
    v6 = *MEMORY[0x277D65608];

    [v5 forceSynchronizeRecognizersForBuiltInLMIdentifier:v6];
  }
}

- (id)_arrayFromExternalContextOverrideForBuiltInIdentifier:(id)a3
{
  externalContextOverrideTable = self->_externalContextOverrideTable;
  v5 = a3;
  v6 = [(NSDictionary *)externalContextOverrideTable objectForKey:@"CommandParameters"];
  v7 = [v6 objectForKey:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(NSDictionary *)self->_externalContextOverrideTable objectForKey:@"CommandParameters"];
    v9 = [v8 objectForKey:v7];
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (id)_stringInRecognitionLocaleFormatFromIntegerValue:(int64_t)a3
{
  v4 = objc_opt_new();
  [v4 setNumberStyle:1];
  v5 = MEMORY[0x277CBEAF8];
  v6 = +[CACPreferences sharedPreferences];
  v7 = [v6 bestLocaleIdentifier];
  v8 = [v5 localeWithLocaleIdentifier:v7];

  if (v8)
  {
    [v4 setLocale:v8];
  }

  [v4 setUsesGroupingSeparator:0];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10 = [v4 stringFromNumber:v9];

  return v10;
}

- (void)willHandleCommandForUtteranceID:(unint64_t)a3
{
  recentlyHandledUtterances = self->_recentlyHandledUtterances;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableArray *)recentlyHandledUtterances addObject:v5];

  if ([(NSMutableArray *)self->_recentlyHandledUtterances count]>= 6)
  {
    v6 = self->_recentlyHandledUtterances;

    [(NSMutableArray *)v6 removeObjectAtIndex:0];
  }
}

- (BOOL)utteranceIDHasBeenHandled:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  recentlyHandledUtterances = self->_recentlyHandledUtterances;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  LOBYTE(recentlyHandledUtterances) = [(NSMutableArray *)recentlyHandledUtterances containsObject:v4];

  return recentlyHandledUtterances;
}

- (unsigned)currentInteractionLevelPassingBackTopReferencingObject:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = self->_recognizerInteractionLevels;
  objc_sync_enter(v4);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(NSMutableDictionary *)self->_recognizerInteractionLevels allKeys];
  v6 = 0;
  v7 = 0;
  v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 intValue];
        if (v12 > v6)
        {
          v13 = [(NSMutableDictionary *)self->_recognizerInteractionLevels objectForKey:v11];
          v14 = [v13 lastObject];

          v6 = v12;
          v7 = v14;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if (a3)
  {
    v15 = v7;
    *a3 = v7;
  }

  objc_sync_exit(v4);

  return v6;
}

- (BOOL)_pushInteractionLevel:(unsigned int)a3 referencingObject:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v4];
    v8 = self->_recognizerInteractionLevels;
    objc_sync_enter(v8);
    v9 = [(NSMutableDictionary *)self->_recognizerInteractionLevels objectForKey:v7];
    v10 = v9 == 0;
    v11 = v9;
    if (!v9)
    {
      v11 = [MEMORY[0x277CBEB18] array];
      [(NSMutableDictionary *)self->_recognizerInteractionLevels setObject:v11 forKey:v7];
    }

    [v11 addObject:v6];

    objc_sync_exit(v8);
    if (!v9)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__CACSpokenCommandManager__pushInteractionLevel_referencingObject___block_invoke;
      block[3] = &unk_279CEB2D0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
      [(CACSpokenCommandManager *)self forceElementFetchWithReason:@"Interaction pushInteractionLevel"];
      [(CACSpokenCommandManager *)self updateStatusIndicatorView];
      [(CACSpokenCommandManager *)self _updateDictationInsertionCursorMode];
      v12 = CACLogRecognition();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CACSpokenCommandManager _pushInteractionLevel:referencingObject:];
      }

      v10 = 1;
    }
  }

  else
  {
    v7 = CACLogRecognition();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CACSpokenCommandManager _pushInteractionLevel:referencingObject:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)_popInteractionLevel:(unsigned int)a3 referencingObject:(id)a4
{
  v4 = *&a3;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", v4];
  v8 = self->_recognizerInteractionLevels;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_recognizerInteractionLevels objectForKey:v7];
  if ([v9 count] < 2)
  {
    if ([v9 count] == 1)
    {
      [v9 removeLastObject];
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        if ([v14 isEqual:v6])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v15 = v14;

      if (!v15)
      {
        goto LABEL_15;
      }

      [v10 removeObject:v15];
    }

    else
    {
LABEL_10:

LABEL_15:
      [v10 removeLastObject];
      v15 = 0;
    }
  }

  v16 = [v9 count];
  if (v16)
  {

    objc_sync_exit(v8);
  }

  else
  {
    [(NSMutableDictionary *)self->_recognizerInteractionLevels removeObjectForKey:v7];

    objc_sync_exit(v8);
    [(CACSpokenCommandManager *)self forceElementFetchWithReason:@"Interaction popInteractionLevel"];
    [(CACSpokenCommandManager *)self updateStatusIndicatorView];
    [(CACSpokenCommandManager *)self _updateDictationInsertionCursorMode];
    v8 = CACLogRecognition();
    if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_ERROR))
    {
      [CACSpokenCommandManager _popInteractionLevel:referencingObject:];
    }
  }

  return v16 == 0;
}

- (void)_resetInteractionLevel
{
  obj = self->_recognizerInteractionLevels;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)self->_recognizerInteractionLevels removeAllObjects];
  objc_sync_exit(obj);
}

- (void)setDictationRecognizerMode:(int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  dictationRecognizerMode = v4->_dictationRecognizerMode;
  if (dictationRecognizerMode != 1)
  {
    v4->_attentionAwarePreviousDictationRecognizerMode = dictationRecognizerMode;
  }

  v4->_dictationRecognizerMode = a3;
  objc_sync_exit(v4);

  [(CACSpokenCommandManager *)v4 synchronizeRecognizersWithReason:kSRUISyncReasonRecognizerModeChanged];

  [(CACSpokenCommandManager *)v4 _updateDictationInsertionCursorMode];
}

- (int)dictationRecognizerMode
{
  v2 = self;
  objc_sync_enter(v2);
  dictationRecognizerMode = v2->_dictationRecognizerMode;
  objc_sync_exit(v2);

  return dictationRecognizerMode;
}

- (void)_updateDictationInsertionCursorMode
{
  v3 = ![(CACSpokenCommandManager *)self currentInteractionLevel]&& [(CACSpokenCommandManager *)self dictationRecognizerMode]!= 1 && _AXSPrefersNonBlinkingCursorIndicator() == 0;
  v6 = [(CACSpokenCommandManager *)self focusedElement];
  v4 = [v6 application];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v4 performAction:2071 withValue:v5];
}

- (void)enterSleepInteractionLevel
{
  if ([(CACSpokenCommandManager *)self _pushInteractionLevel:1 referencingObject:self])
  {
    v2 = +[CACUserHintsManager sharedManager];
    v3 = [v2 shouldDisplayUserHintAfterRegisteringIdentifier:@"EnteringCommandSleep"];

    if (v3)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.EnteringCommandSleep"];
      v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v7 = [v6 primaryStringForCommandIdentifier:@"System.WakeListening"];
      v9 = [v4 stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, v7];

      v8 = +[CACDisplayManager sharedManager];
      [v8 displayMessageString:v9 type:0];
    }
  }
}

- (id)_telephonyQueue
{
  if (_telephonyQueue_onceToken != -1)
  {
    [CACSpokenCommandManager _telephonyQueue];
  }

  v3 = _telephonyQueue_sQueue;

  return v3;
}

uint64_t __42__CACSpokenCommandManager__telephonyQueue__block_invoke()
{
  _telephonyQueue_sQueue = dispatch_queue_create("com.apple.speech.CallCenterQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)_notifyUserOfSensitiveLogging
{
  if ([MEMORY[0x277D79888] isSensitiveLoggingEnabled])
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_590);
  }

  [(CACSpokenCommandManager *)self updateStatusIndicatorView];
}

void __56__CACSpokenCommandManager__notifyUserOfSensitiveLogging__block_invoke()
{
  v7 = objc_opt_new();
  v0 = [CACLocaleUtilities localizedUIStringForKey:@"UserNotification.SensitiveLogging.Title"];
  [v7 setTitle:v0];

  v1 = [CACLocaleUtilities localizedUIStringForKey:@"UserNotification.SensitiveLogging.Body"];
  [v7 setBody:v1];

  v2 = MEMORY[0x277CE1FC0];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 requestWithIdentifier:v4 content:v7 trigger:0];

  v6 = [MEMORY[0x277CE2028] currentNotificationCenter];
  [v6 addNotificationRequest:v5 withCompletionHandler:&__block_literal_global_602];
}

void __56__CACSpokenCommandManager__notifyUserOfSensitiveLogging__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CACLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __56__CACSpokenCommandManager__notifyUserOfSensitiveLogging__block_invoke_2_cold_1();
    }
  }
}

- (void)_microphoneTurnedOffAfterInteruption
{
  if (self->_initialListenRequestWasSuccessful)
  {
    if ([(CACSpokenCommandManager *)self currentInteractionLevel]== 2)
    {
      v3 = CACLogAudio();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_26B354000, v3, OS_LOG_TYPE_INFO, "Received excessive notification of audio loss!", v8, 2u);
      }
    }

    else
    {
      v4 = MEMORY[0x277D6EDF8];
      v5 = [(CACSpokenCommandManager *)self _telephonyQueue];
      v6 = [v4 callCenterWithQueue:v5];

      v7 = [(CACSpokenCommandManager *)self _telephonyQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__CACSpokenCommandManager__microphoneTurnedOffAfterInteruption__block_invoke_3;
      block[3] = &unk_279CEB4C0;
      block[4] = self;
      v10 = v6;
      v3 = v6;
      dispatch_async(v7, block);

      dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_605);
    }

    [(CACSpokenCommandManager *)self _pushInteractionLevel:2 referencingObject:self];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__CACSpokenCommandManager__microphoneTurnedOffAfterInteruption__block_invoke;
    v11[3] = &unk_279CEB2D0;
    v11[4] = self;
    if (_microphoneTurnedOffAfterInteruption_sRetryMicToken != -1)
    {
      dispatch_once(&_microphoneTurnedOffAfterInteruption_sRetryMicToken, v11);
    }
  }
}

void __63__CACSpokenCommandManager__microphoneTurnedOffAfterInteruption__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CACSpokenCommandManager__microphoneTurnedOffAfterInteruption__block_invoke_2;
  block[3] = &unk_279CEB2D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__CACSpokenCommandManager__microphoneTurnedOffAfterInteruption__block_invoke_3(uint64_t a1)
{
  v4 = [*(a1 + 40) incomingCall];
  if (v4)
  {
    [*(a1 + 32) setTelephonyInterruptedListening:1];
  }

  else
  {
    v2 = [*(a1 + 40) incomingVideoCall];
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = [*(a1 + 40) hasCurrentCalls];
    }

    [*(a1 + 32) setTelephonyInterruptedListening:v3];
  }
}

void __63__CACSpokenCommandManager__microphoneTurnedOffAfterInteruption__block_invoke_4()
{
  v1 = +[CACDisplayManager sharedManager];
  v0 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ListeningInterruptionBegan"];
  [v1 displayMessageString:v0 type:1];
}

- (void)_microphoneTurnedOnAfterInteruption
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v4 = [v3 _attentionIsLostWithListeningOffAction];

  if ((v4 & 1) == 0)
  {

    [(CACSpokenCommandManager *)self _popInteractionLevel:2 referencingObject:self];
  }
}

- (void)_microphoneTurnedOn
{
  if (!self->_initialListenRequestWasSuccessful)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  }

  self->_initialListenRequestWasSuccessful = 1;

  [(CACSpokenCommandManager *)self updateStatusIndicatorView];
}

- (void)attemptGrabbingMic:(id)a3
{
  v4 = [a3 integerValue];
  if (self->_initialListenRequestWasSuccessful)
  {
    v5 = MEMORY[0x277D82BB8];

    [v5 cancelPreviousPerformRequestsWithTarget:self];
  }

  else
  {
    v6 = v4;
    v7 = v4 * 10.0;
    if (v7 <= 80.0)
    {
      if (!v4)
      {
        [(CACSpokenCommandManager *)self displayRetryMessage];
      }

      if ([(CACSpokenCommandManager *)self _isSystemSleeping])
      {

        [(CACSpokenCommandManager *)self performSelector:sel_attemptGrabbingMic_ withObject:&unk_287BEFE20 afterDelay:10.0];
      }

      else if (v7 <= 80.0 && !self->_initialListenRequestWasSuccessful)
      {
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __46__CACSpokenCommandManager_attemptGrabbingMic___block_invoke;
        v9[3] = &unk_279CEB2D0;
        v9[4] = self;
        [(CACSpokenCommandManager *)self performOnRecognizerSynchronizationDispatchQueueIfRunning:v9];
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6 + 1];
        [(CACSpokenCommandManager *)self performSelector:sel_attemptGrabbingMic_ withObject:v8 afterDelay:10.0];
      }
    }

    else
    {

      [(CACSpokenCommandManager *)self displayMessageAndQuitVoiceControl];
    }
  }
}

void __46__CACSpokenCommandManager_displayRetryMessage__block_invoke()
{
  v1 = [CACLocaleUtilities localizedUIStringForKey:@"ErrorMessage.MicrophoneBusy"];
  v0 = +[CACDisplayManager sharedManager];
  [v0 displayMessageString:v1 type:0];
}

void __60__CACSpokenCommandManager_displayMessageAndQuitVoiceControl__block_invoke()
{
  v3 = [CACLocaleUtilities localizedUIStringForKey:@"ErrorMessage.MicrophoneCannotBeObtained"];
  v0 = +[CACDisplayManager sharedManager];
  [v0 displayMessageString:v3 type:1];

  [CACDisplayManager durationToDisplayMessageString:v3];
  v2 = dispatch_time(0, (v1 * 1000000000.0));
  dispatch_after(v2, MEMORY[0x277D85CD0], &__block_literal_global_628);
}

uint64_t __60__CACSpokenCommandManager_displayMessageAndQuitVoiceControl__block_invoke_2()
{
  v0 = +[CACPreferences sharedPreferences];
  [v0 setCommandAndControlEnabled:0];

  return MEMORY[0x2821EFF18](0);
}

- (void)attentionAwareLost
{
  self->_attentionAwareStatus = 2;
  if ([(NSString *)self->_currentAttentionAwarenessAction isEqualToString:@"SleepAndWake"])
  {

    [(CACSpokenCommandManager *)self enterSleepInteractionLevel];
  }

  else if ([(NSString *)self->_currentAttentionAwarenessAction isEqualToString:@"ListeningOffAndOn"])
  {

    [(CACSpokenCommandManager *)self _pushInteractionLevel:2 referencingObject:self];
  }

  else if ([(NSString *)self->_currentAttentionAwarenessAction isEqualToString:@"DictationOffAndNormal"])
  {
    v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v3 setDictationRecognizerMode:1];
  }
}

- (void)attentionAwareGained
{
  self->_attentionAwareStatus = 1;
  if ([(NSString *)self->_currentAttentionAwarenessAction isEqualToString:@"SleepAndWake"])
  {
    if ([(CACSpokenCommandManager *)self isListening])
    {
      v3 = +[CACSpeechSystem speechSystem];
      [v3 rxRecognitionSystemReset];
    }

    [(CACSpokenCommandManager *)self exitSleepInteractionLevel];
  }

  else if ([(NSString *)self->_currentAttentionAwarenessAction isEqualToString:@"ListeningOffAndOn"])
  {

    [(CACSpokenCommandManager *)self _popInteractionLevel:2 referencingObject:self];
  }

  else if ([(NSString *)self->_currentAttentionAwarenessAction isEqualToString:@"DictationOffAndNormal"])
  {
    v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v4 setDictationRecognizerMode:self->_attentionAwarePreviousDictationRecognizerMode];
  }
}

- (void)attentionAwareInterrupted
{
  v4 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.CameraInterruption"];
  v3 = +[CACDisplayManager sharedManager];
  [v3 displayMessageString:v4 type:0];

  [(CACSpokenCommandManager *)self attentionAwareGained];
}

- (void)attentionAwareInterruptionEnded
{
  v3 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.CameraInterruptionEnded"];
  v2 = +[CACDisplayManager sharedManager];
  [v2 displayMessageString:v3 type:0];
}

- (void)_attentionAwareSettingChanged
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = CACLogAttentionAware();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_26B354000, v3, OS_LOG_TYPE_INFO, "Attention Aware setting changed", &v12, 2u);
  }

  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 attentionAwareAction];

  v6 = +[CACDisplayManager sharedManager];
  v7 = [v6 carPlayConnected];

  if (v7)
  {

    v8 = CACLogAttentionAware();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_26B354000, v8, OS_LOG_TYPE_INFO, "Disabling attention aware due to carplay active", &v12, 2u);
    }

    v5 = @"None";
  }

  v9 = CACLogAttentionAware();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_26B354000, v9, OS_LOG_TYPE_INFO, "Resolved attention aware setting - %@", &v12, 0xCu);
  }

  if (![(NSString *)self->_currentAttentionAwarenessAction isEqualToString:v5])
  {
    if (([(__CFString *)v5 isEqualToString:@"None"]& 1) != 0)
    {
      if (self->_isAttentionAwareClientRunning)
      {
        self->_isAttentionAwareClientRunning = 0;
        self->_attentionAwareStatus = 0;
        v10 = +[CACUserAttentionInterface sharedManager];
        [v10 stopUserAttentionControllerIfNeeded];
LABEL_15:
      }
    }

    else if (!self->_isAttentionAwareClientRunning)
    {
      self->_isAttentionAwareClientRunning = 1;
      v10 = +[CACUserAttentionInterface sharedManager];
      [v10 startUserAttentionControllerIfNeededForTypes:1];
      goto LABEL_15;
    }

    if ([(NSString *)self->_currentAttentionAwarenessAction isEqualToString:@"SleepAndWake"])
    {
      [(CACSpokenCommandManager *)self exitSleepInteractionLevel];
    }

    else if ([(NSString *)self->_currentAttentionAwarenessAction isEqualToString:@"ListeningOffAndOn"])
    {
      [(CACSpokenCommandManager *)self _popInteractionLevel:2 referencingObject:self];
    }

    else if ([(NSString *)self->_currentAttentionAwarenessAction isEqualToString:@"DictationOffAndNormal"])
    {
      v11 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      [v11 setDictationRecognizerMode:self->_attentionAwarePreviousDictationRecognizerMode];
    }

    objc_storeStrong(&self->_currentAttentionAwarenessAction, v5);
  }
}

- (void)beginObservingApplications
{
  if (!self->_appLibrary)
  {
    v3 = objc_alloc_init(MEMORY[0x277D0ACB0]);
    appLibrary = self->_appLibrary;
    self->_appLibrary = v3;
  }

  v5 = [(CACSpokenCommandManager *)self appLibrary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__CACSpokenCommandManager_beginObservingApplications__block_invoke;
  v10[3] = &unk_279CEBC20;
  v10[4] = self;
  v6 = [v5 observeDidAddApplicationsWithBlock:v10];

  v7 = [(CACSpokenCommandManager *)self appLibrary];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__CACSpokenCommandManager_beginObservingApplications__block_invoke_643;
  v9[3] = &unk_279CEBC20;
  v9[4] = self;
  v8 = [v7 observeDidRemoveApplicationsWithBlock:v9];

  [(CACSpokenCommandManager *)self setApplicationAddedObservationToken:v6];
  [(CACSpokenCommandManager *)self setApplicationRemovedObservationToken:v8];
}

void __53__CACSpokenCommandManager_beginObservingApplications__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CACLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_INFO, "Resyncing: Application newly added %@", &v5, 0xCu);
  }

  [*(a1 + 32) synchronizeRecognizersWithReason:kSRUISyncReasonApplicationsChanged];
}

void __53__CACSpokenCommandManager_beginObservingApplications__block_invoke_643(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CACLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_INFO, "Resyncing: Application removed %@", &v5, 0xCu);
  }

  [*(a1 + 32) synchronizeRecognizersWithReason:kSRUISyncReasonApplicationsChanged];
}

- (void)stopObservingApplications
{
  v3 = [(CACSpokenCommandManager *)self appLibrary];
  v4 = [(CACSpokenCommandManager *)self applicationAddedObservationToken];
  [v3 removeObserverForToken:v4];

  v5 = [(CACSpokenCommandManager *)self appLibrary];
  v6 = [(CACSpokenCommandManager *)self applicationRemovedObservationToken];
  [v5 removeObserverForToken:v6];

  [(CACSpokenCommandManager *)self setApplicationAddedObservationToken:0];

  [(CACSpokenCommandManager *)self setApplicationRemovedObservationToken:0];
}

- (void)synchronizeRecognizersWithReason:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isListening)
  {
    if ([v4 isEqualToString:kSRUISyncReasonOverlayStateChanged])
    {
      [(CACSpokenCommandManager *)self _markAsDirtyForBuiltInLMIdentifier:*MEMORY[0x277D655F8]];
      if ([(CACSpokenCommandManager *)self isActiveOverlayType:@"NumberedGrid"]|| [(CACSpokenCommandManager *)self isActiveOverlayType:@"NumberedElements"])
      {
        [(CACSpokenCommandManager *)self _markAsDirtyForBuiltInLMIdentifier:*MEMORY[0x277D65628]];
      }
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__CACSpokenCommandManager_synchronizeRecognizersWithReason___block_invoke;
    v6[3] = &unk_279CEB4C0;
    v7 = v5;
    v8 = self;
    [(CACSpokenCommandManager *)self performOnRecognizerSynchronizationDispatchQueueIfRunning:v6];
  }
}

void __60__CACSpokenCommandManager_synchronizeRecognizersWithReason___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = RXSignpostLog();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) UTF8String];
    *buf = 136315138;
    v53 = v3;
    _os_signpost_emit_with_name_impl(&dword_26B354000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CAC, CmdPrep: Syncing recognizers", "%s", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  objc_sync_enter(v4);
  v5 = *(a1 + 40);
  if (*(v5 + 128) == 0.0)
  {
    *(v5 + 128) = 0;
  }

  objc_sync_exit(v4);

  v6 = 2.0;
  do
  {
    v7 = [*(a1 + 40) labeledScreenElementsCollection];
    v8 = [v7 isCollecting];

    if (!v8)
    {
      break;
    }

    usleep(0x186A0u);
    v6 = v6 + -0.1;
  }

  while (v6 > 0.0);
  v9 = *(*(a1 + 40) + 112);
  objc_sync_enter(v9);
  v10 = [*(*(a1 + 40) + 112) allKeys];
  v11 = [v10 copy];

  objc_sync_exit(v9);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = [v11 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v13)
  {
    v14 = *v47;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(a1 + 40) _updateLanguageModelForBuiltInLMIdentifier:*(*(&v46 + 1) + 8 * i)];
      }

      v13 = [v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v13);
  }

  [*(a1 + 40) _pushLeadingContextToSpeechRecognitionSystem];
  [*(a1 + 40) _pushSecureFieldStatusToSpeechRecognitionSystem];
  v16 = *(*(a1 + 40) + 88);
  objc_sync_enter(v16);
  v17 = [*(*(a1 + 40) + 88) copy];
  objc_sync_exit(v16);

  v18 = objc_opt_new();
  v19 = sEvaluatorValueCache;
  sEvaluatorValueCache = v18;

  v20 = objc_opt_new();
  v21 = sEvaluatorResultCache;
  sEvaluatorResultCache = v20;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v17;
  v23 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v23)
  {
    v24 = *v43;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v42 + 1) + 8 * j) synchronizeWithReason:{*(a1 + 32), v42}];
      }

      v23 = [v22 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v23);
  }

  v26 = sEvaluatorValueCache;
  sEvaluatorValueCache = 0;

  v27 = sEvaluatorResultCache;
  sEvaluatorResultCache = 0;

  v28 = *(a1 + 40);
  objc_sync_enter(v28);
  v29 = *(a1 + 40);
  if (*(v29 + 128) == 0.0)
  {
    *(v29 + 128) = 0;
  }

  objc_sync_exit(v28);

  v30 = +[CACSpeechSystem speechSystem];
  v31 = [v30 recognitionSystemRef];

  if (v31)
  {
    v32 = [*(a1 + 40) currentInteractionLevel] - 1;
    v33 = *(a1 + 40);
    if (v32 >= 2)
    {
      v35 = [v33 dictationRecognizerMode];
      v33 = *(a1 + 40);
      if (v35 == 1 || !*(v33 + 32))
      {
        v34 = 2;
      }

      else
      {
        v36 = +[CACDisplayManager sharedManager];
        v37 = [v36 carPlayConnected];

        v34 = (v37 & 1) != 0 ? 2 : 1;
        v33 = *(a1 + 40);
      }
    }

    else
    {
      v34 = 3;
    }

    if (*(v33 + 360) != v34)
    {
      v38 = +[CACSpeechSystem speechSystem];
      [v38 setRxRecognitionSystemResetMode:v34];

      *(*(a1 + 40) + 360) = v34;
    }
  }

  if ([*(a1 + 32) isEqualToString:{kSRUISyncReasonRecognizerModeChanged, v42}] && objc_msgSend(*(a1 + 40), "isListening"))
  {
    v39 = +[CACSpeechSystem speechSystem];
    [v39 rxRecognitionSystemReset];
  }

  v40 = RXSignpostLog();
  if (os_signpost_enabled(v40))
  {
    v41 = [*(a1 + 32) UTF8String];
    *buf = 136315138;
    v53 = v41;
    _os_signpost_emit_with_name_impl(&dword_26B354000, v40, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CAC, CmdPrep: Syncing recognizers", "%s", buf, 0xCu);
  }
}

- (BOOL)isSynchronizingRecognizers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_recognizerSyncTransactionID != 0.0;
  objc_sync_exit(v2);

  return v3;
}

- (id)activeCommandIdentifiers
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  obj = self->_recognizers;
  objc_sync_enter(obj);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_recognizers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ([v8 isListening])
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v9 = [v8 spokenCommands];
          v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v10)
          {
            v11 = *v17;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v17 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = [*(*(&v16 + 1) + 8 * j) identifier];
                [v3 addObject:v13];
              }

              v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v10);
          }
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  objc_sync_exit(obj);

  return v3;
}

- (void)forceSynchronizeRecognizersForBuiltInLMIdentifier:(id)a3
{
  [(CACSpokenCommandManager *)self _markAsDirtyForBuiltInLMIdentifier:a3];
  v4 = kSRUISyncReasonRecognizersChanged;

  [(CACSpokenCommandManager *)self synchronizeRecognizersWithReason:v4];
}

- (void)suspendCommandDispatching:(BOOL)a3
{
  obj = self->_recognizedCommandsReadyForDispatch;
  objc_sync_enter(obj);
  self->_suspendCommandDispatching = a3;
  if (!a3)
  {
    [(CACSpokenCommandManager *)self dispatchPendingCommand];
  }

  objc_sync_exit(obj);
}

- (void)handleRecognizedCommand:(id)a3
{
  v4 = a3;
  v5 = CACLogRecognition();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CACSpokenCommandManager *)v4 handleRecognizedCommand:v5];
  }

  if (self->_commandRecognitionLogPath)
  {
    [(CACSpokenCommandManager *)self _appendSpokenCommand:v4 toLogAtPath:?];
  }

  else
  {
    v6 = [v4 identifier];
    [(CACSpokenCommandManager *)self setRecognizedCommandIdentifier:v6];

    v7 = [v4 identifier];
    v8 = [(CACSpokenCommandManager *)self shouldIgnoreCommand:v7];

    if (!v8)
    {
      v9 = self->_recognizedCommandsReadyForDispatch;
      objc_sync_enter(v9);
      [(NSMutableArray *)self->_recognizedCommandsReadyForDispatch addObject:v4];
      if (!self->_suspendCommandDispatching)
      {
        [(CACSpokenCommandManager *)self dispatchPendingCommand];
      }

      objc_sync_exit(v9);
    }
  }
}

- (void)dispatchPendingCommand
{
  if ([(NSMutableArray *)self->_recognizedCommandsReadyForDispatch count])
  {
    v3 = [(NSMutableArray *)self->_recognizedCommandsReadyForDispatch objectAtIndex:0];
    [(NSMutableArray *)self->_recognizedCommandsReadyForDispatch removeObjectAtIndex:0];
    if (v3)
    {
      commandExecutionDispatchQueue = self->_commandExecutionDispatchQueue;
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __49__CACSpokenCommandManager_dispatchPendingCommand__block_invoke;
      v17 = &unk_279CEB4C0;
      v5 = v3;
      v18 = v5;
      v19 = self;
      dispatch_async(commandExecutionDispatchQueue, &v14);
      v6 = [CACMessageTracerUtilities sharedCACMessageTracerUtilities:v14];
      v7 = [v5 recognizedParameters];
      [v6 setRecognitionProperties:v7];

      v8 = +[CACMessageTracerUtilities sharedCACMessageTracerUtilities];
      if (objc_opt_respondsToSelector())
      {
        v9 = [v5 performSelector:sel_customProperties withObject:0];
      }

      else
      {
        v9 = 0;
      }

      [v8 setCustomUserCommandProperties:v9];

      if (([v5 executedIndirectly] & 1) == 0)
      {
        v10 = [MEMORY[0x277CE6BA0] systemApplication];
        v11 = [v10 isScreenLocked];

        if ((v11 & 1) == 0)
        {
          v12 = +[CACMessageTracerUtilities sharedCACMessageTracerUtilities];
          v13 = [v5 identifier];
          [v12 logCommandWithIdentifier:v13];
        }
      }
    }
  }
}

void __49__CACSpokenCommandManager_dispatchPendingCommand__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [CACSpokenCommandManager commandIdentifierIsDictation:v2];

  if (!v3)
  {
    v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v4 clearProvisionalDictation];
  }

  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v6 = [*(a1 + 32) commandRecognizer];
  v7 = [v6 speechRecognizer];
  v8 = [*(a1 + 32) identifier];
  [v5 registerSignPostEndProcessingForSpeechRecognizer:v7 message:v8];

  v9 = [*(a1 + 32) languageObject];
  v10 = [v9 transcriptionResult];
  if (([v10 isPartialResult] & 1) == 0)
  {

    goto LABEL_7;
  }

  v11 = [*(a1 + 32) identifier];
  v12 = [CACSpokenCommandManager commandIdentifierIsDictation:v11];

  if (!v12)
  {
LABEL_7:
    v13 = [*(a1 + 40) stagedTextInsertionSpecifier];
    v14 = [*(a1 + 32) identifier];
    [v13 setCommandIdentifier:v14];

    v15 = [*(a1 + 40) stagedTextInsertionSpecifier];
    v16 = [*(a1 + 32) recognizedParameters];
    [v15 setRecognizedParams:v16];
  }

  [*(a1 + 32) performAction];
  v17 = dispatch_get_global_queue(21, 0);
  dispatch_async(v17, &__block_literal_global_645);

  [*(a1 + 40) setNextPreviousResolverSpokenCommand:*(a1 + 32)];
  [*(a1 + 40) setRepeatingSpokenCommand:*(a1 + 32)];
  v18 = +[CACRecordedUserActionManager sharedManager];
  [v18 addRecognizedSpokenCommand:*(a1 + 32)];

  v19 = MEMORY[0x277CCACA8];
  v20 = [*(a1 + 32) identifier];
  v26 = [v19 stringWithFormat:@"Command executed: %@", v20];

  [*(a1 + 40) forceElementFetchWithReason:v26];
  v21 = +[CACDisplayManager sharedManager];
  [v21 hideCorrections];

  v22 = [*(a1 + 32) languageObject];
  v23 = [v22 transcriptionResult];
  if ([v23 isPartialResult])
  {
  }

  else
  {
    v24 = [*(a1 + 32) identifier];
    v25 = [CACSpokenCommandManager commandIdentifierIsDictation:v24];

    if (v25)
    {
      goto LABEL_13;
    }

    v22 = +[CACDisplayManager sharedManager];
    [v22 userInitiatedVoiceCommandExecuted];
  }

LABEL_13:
}

void __49__CACSpokenCommandManager_dispatchPendingCommand__block_invoke_2()
{
  v0 = [MEMORY[0x277D1B260] sharedInstance];
  v4 = 0;
  v1 = [v0 newAssertionToDisableIdleTimerForReason:@"CommandAndControl.CommandExecution" error:&v4];
  v2 = v4;

  [v1 invalidate];
  if (v2)
  {
    v3 = CACLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __49__CACSpokenCommandManager_dispatchPendingCommand__block_invoke_2_cold_1();
    }
  }
}

- (void)_appendSpokenCommand:(id)a3 toLogAtPath:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v33 = a4;
  v6 = [MEMORY[0x277CCAB68] string];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v6 appendFormat:@"%f\t", v7];
  v8 = [v5 recognizedParameters];
  v9 = [v8 objectForKey:kCACCommandParameterText];
  [v6 appendFormat:@"%@\t", v9];

  v10 = [v5 identifier];
  v35 = v6;
  [v6 appendFormat:@"%@\t", v10];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = *MEMORY[0x277D65628];
  v41[0] = *MEMORY[0x277D65608];
  v41[1] = v11;
  v12 = *MEMORY[0x277D655D0];
  v41[2] = *MEMORY[0x277D655C8];
  v41[3] = v12;
  v13 = *MEMORY[0x277D65600];
  v41[4] = *MEMORY[0x277D655F8];
  v41[5] = v13;
  v14 = *MEMORY[0x277D65618];
  v41[6] = *MEMORY[0x277D655C0];
  v41[7] = v14;
  v15 = *MEMORY[0x277D655F0];
  v41[8] = *MEMORY[0x277D655E8];
  v41[9] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:10];
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v36 + 1) + 8 * i);
        v22 = [v5 recognizedParameters];
        v23 = [v22 objectForKey:v21];
        v24 = [v23 objectForKey:kCACCommandParameterText];

        if (v24)
        {
          [v35 appendFormat:@"%@:%@\t", v21, v24];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v18);
  }

  v25 = [v33 stringByExpandingTildeInPath];
  v26 = fopen([v25 UTF8String], "a");

  fprintf(v26, "%s\n", [v35 UTF8String]);
  fclose(v26);
  if (self->_synchronousRemoteRequestCompletionBlock)
  {
    v27 = [v5 languageObject];
    v28 = [v27 transcriptionResult];
    v29 = [v28 isPartialResult];

    if ((v29 & 1) == 0)
    {
      synchronousRemoteRequestCompletionBlock = self->_synchronousRemoteRequestCompletionBlock;
      v40 = v5;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      synchronousRemoteRequestCompletionBlock[2](synchronousRemoteRequestCompletionBlock, v31, 0);

      v32 = self->_synchronousRemoteRequestCompletionBlock;
      self->_synchronousRemoteRequestCompletionBlock = 0;
    }
  }
}

- (BOOL)shouldIgnoreCommand:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CACSpokenCommandManager *)self commandsToIgnore];

  if (v5)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [(CACSpokenCommandManager *)self commandsToIgnore];
    v5 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v10 + 1) + 8 * i) isEqualToString:v4])
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v5;
}

- (void)_startSynchronousRemoteRecognitionWithCompletionBlock:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  v5 = _Block_copy(v4);

  synchronousRemoteRequestCompletionBlock = obj->_synchronousRemoteRequestCompletionBlock;
  obj->_synchronousRemoteRequestCompletionBlock = v5;

  objc_sync_exit(obj);
}

- (void)_cancelSynchronousRemoteRecognition
{
  obj = self;
  objc_sync_enter(obj);
  synchronousRemoteRequestCompletionBlock = obj->_synchronousRemoteRequestCompletionBlock;
  obj->_synchronousRemoteRequestCompletionBlock = 0;

  objc_sync_exit(obj);
}

- (void)didFinishExecutingSpokenCommand:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 languageObject];
  v7 = [v6 transcriptionResult];
  if ([v7 isPartialResult])
  {
  }

  else
  {
    synchronousRemoteRequestCompletionBlock = v5->_synchronousRemoteRequestCompletionBlock;

    if (synchronousRemoteRequestCompletionBlock)
    {
      v9 = v5->_synchronousRemoteRequestCompletionBlock;
      v17[0] = v4;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
      v9[2](v9, v10, 0);

      v11 = v5->_synchronousRemoteRequestCompletionBlock;
      v5->_synchronousRemoteRequestCompletionBlock = 0;
    }
  }

  v12 = [v4 languageObject];
  v13 = [v12 transcriptionResult];
  if ([v13 isPartialResult])
  {
    v14 = [v4 identifier];
    v15 = [CACSpokenCommandManager commandIdentifierIsDictation:v14];

    if (v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v16 = objc_opt_new();
  [(CACSpokenCommandManager *)v5 setStagedTextInsertionSpecifier:v16];

  [(CACSpokenCommandManager *)v5 _clearPreviousTextInsertionSpecifierBasedOnExecutedCommand:v4];
LABEL_10:
  objc_sync_exit(v5);
}

- (void)didFindCloseSpokenCommandIdentifiers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_synchronousRemoteRequestCompletionBlock)
  {
    v6 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [(CACSpokenCommandManager *)v5 _templateSpokenCommandWithIdentifier:*(*(&v13 + 1) + 8 * v10), v13];
          if (v11)
          {
            [v6 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    (*(v5->_synchronousRemoteRequestCompletionBlock + 2))();
    synchronousRemoteRequestCompletionBlock = v5->_synchronousRemoteRequestCompletionBlock;
    v5->_synchronousRemoteRequestCompletionBlock = 0;
  }

  objc_sync_exit(v5);
}

- (void)notifyUserOfCommandFailureWithTitle:(id)a3 description:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[CACDisplayManager sharedManager];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v6, v5];

  [v8 displayMessageString:v7 type:1];
}

- (void)setNextPreviousResolverSpokenCommand:(id)a3
{
  v11 = a3;
  v5 = [v11 identifier];
  if (([(CACSpokenCommandManager *)v5 isEqualToString:@"Text.SelectNext"]& 1) != 0)
  {
    goto LABEL_8;
  }

  v6 = [v11 identifier];
  if ([v6 isEqualToString:@"Text.SelectPrevious"])
  {
    goto LABEL_7;
  }

  v7 = [v11 identifier];
  if ([v7 isEqualToString:@"System.OverlayChooseLabel"])
  {
LABEL_6:

LABEL_7:
LABEL_8:

    goto LABEL_9;
  }

  v8 = [v11 identifier];
  if ([v8 isEqualToString:@"System.OverlayChooseLabelWithoutPrefix"])
  {

    goto LABEL_6;
  }

  v9 = [v11 identifier];
  v10 = [v9 isEqualToString:@"System.OverlayChooseAllLabels"];

  if ((v10 & 1) == 0)
  {
    v5 = self;
    objc_sync_enter(v5);
    objc_storeStrong(&v5->_currentNextPreviousResolverSpokenCommand, a3);
    objc_sync_exit(v5);
    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)isNextPreviousResolverSpokenCommandEmojiBased
{
  v2 = [(CACSpokenCommand *)self->_currentNextPreviousResolverSpokenCommand identifier];
  v3 = [v2 isEqualToString:@"Text.SelectEmojiWithPhrase"];

  return v3;
}

- (id)resolvedNextSpokenCommand
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_currentNextPreviousResolverSpokenCommand)
  {
    v3 = [(CACSpokenCommandManager *)v2 _nextResolverRelationships];
    v4 = [(CACSpokenCommand *)v2->_currentNextPreviousResolverSpokenCommand identifier];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v6 = [(CACSpokenCommand *)v2->_currentNextPreviousResolverSpokenCommand copy];
      [v6 setIdentifier:v5];
      if (([v5 isEqualToString:@"Text.SelectNext"] & 1) == 0)
      {
        v7 = [(CACSpokenCommandManager *)v2 _templateSpokenCommandWithIdentifier:v5];
        v8 = v7;
        if (v7)
        {
          [v6 setAction:{objc_msgSend(v7, "action")}];
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [(CACSpokenCommandManager *)v2 _templateSpokenCommandWithIdentifier:@"Text.SelectNextWord"];
  }

  objc_sync_exit(v2);

  return v6;
}

- (id)resolvedPreviousSpokenCommand
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_currentNextPreviousResolverSpokenCommand)
  {
    v3 = [(CACSpokenCommandManager *)v2 _previousResolverRelationships];
    v4 = [(CACSpokenCommand *)v2->_currentNextPreviousResolverSpokenCommand identifier];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v6 = [(CACSpokenCommand *)v2->_currentNextPreviousResolverSpokenCommand copy];
      [v6 setIdentifier:v5];
      if (([v5 isEqualToString:@"Text.SelectPrevious"] & 1) == 0)
      {
        v7 = [(CACSpokenCommandManager *)v2 _templateSpokenCommandWithIdentifier:v5];
        v8 = v7;
        if (v7)
        {
          [v6 setAction:{objc_msgSend(v7, "action")}];
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [(CACSpokenCommandManager *)v2 _templateSpokenCommandWithIdentifier:@"Text.SelectPreviousWord"];
  }

  objc_sync_exit(v2);

  return v6;
}

- (id)_nextResolverRelationships
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CACSpokenCommandManager__nextResolverRelationships__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  if (_nextResolverRelationships_nextResolverRelationshipsLoad != -1)
  {
    dispatch_once(&_nextResolverRelationships_nextResolverRelationshipsLoad, block);
  }

  return self->_nextResolverRelationships;
}

uint64_t __53__CACSpokenCommandManager__nextResolverRelationships__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 176) = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"Text.SelectCurrentCharacter", @"Text.SelectNextCharacter", @"Text.SelectNextCharacter", @"Text.SelectNextCharacter", @"Text.SelectPreviousCharacter", @"Text.SelectNextCharactersUsingCardinalNumber", @"Text.SelectNextCharactersUsingCardinalNumber", @"Text.SelectNextCharactersUsingCardinalNumber", @"Text.SelectPreviousCharactersUsingCardinalNumber", @"Text.SelectNextWord", @"Text.SelectCurrentWord", @"Text.SelectNextWord", @"Text.SelectNextWord", @"Text.SelectNextWord", @"Text.SelectPreviousWord", @"Text.SelectNextWordsUsingCardinalNumber", @"Text.SelectNextWordsUsingCardinalNumber", @"Text.SelectNextWordsUsingCardinalNumber", @"Text.SelectPreviousWordsUsingCardinalNumber", @"Text.SelectNextSentence", @"Text.SelectCurrentSentence", @"Text.SelectNextSentence", @"Text.SelectNextSentence", @"Text.SelectNextSentence", @"Text.SelectPreviousSentence", @"Text.SelectNextSentencesUsingCardinalNumber", @"Text.SelectNextSentencesUsingCardinalNumber", @"Text.SelectNextSentencesUsingCardinalNumber", @"Text.SelectPreviousSentencesUsingCardinalNumber", @"Text.SelectNextParagraph", @"Text.SelectCurrentParagraph", @"Text.SelectNextParagraph", @"Text.SelectNextParagraph", @"Text.SelectNextParagraph", @"Text.SelectPreviousParagraph", @"Text.SelectNextParagraphsUsingCardinalNumber", @"Text.SelectNextParagraphsUsingCardinalNumber", @"Text.SelectNextParagraphsUsingCardinalNumber", @"Text.SelectPreviousParagraphsUsingCardinalNumber", @"Text.SelectNextLine", @"Text.SelectCurrentLine", @"Text.SelectNextLine", @"Text.SelectNextLine", @"Text.SelectNextLine", @"Text.SelectPreviousLine", @"Text.SelectNextLinesUsingCardinalNumber", @"Text.SelectNextLinesUsingCardinalNumber", @"Text.SelectNextLinesUsingCardinalNumber", @"Text.SelectPreviousLinesUsingCardinalNumber", @"Text.SelectNext", @"Text.SelectPhrase", @"Text.SelectNext", @"Text.SelectEmojiWithPhrase", @"Text.SelectNext", @"Text.SelectPhraseThroughPhrase", @"Text.SelectNext", @"Text.SelectNext", @"Text.SelectNext", @"Text.SelectPrevious", 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)_previousResolverRelationships
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CACSpokenCommandManager__previousResolverRelationships__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  if (_previousResolverRelationships_previousResolverRelationshipsLoad != -1)
  {
    dispatch_once(&_previousResolverRelationships_previousResolverRelationshipsLoad, block);
  }

  return self->_previousResolverRelationships;
}

uint64_t __57__CACSpokenCommandManager__previousResolverRelationships__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 184) = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"Text.SelectCurrentCharacter", @"Text.SelectPreviousCharacter", @"Text.SelectNextCharacter", @"Text.SelectPreviousCharacter", @"Text.SelectPreviousCharacter", @"Text.SelectPreviousCharactersUsingCardinalNumber", @"Text.SelectNextCharactersUsingCardinalNumber", @"Text.SelectPreviousCharactersUsingCardinalNumber", @"Text.SelectPreviousCharactersUsingCardinalNumber", @"Text.SelectPreviousWord", @"Text.SelectCurrentWord", @"Text.SelectPreviousWord", @"Text.SelectNextWord", @"Text.SelectPreviousWord", @"Text.SelectPreviousWord", @"Text.SelectPreviousWordsUsingCardinalNumber", @"Text.SelectNextWordsUsingCardinalNumber", @"Text.SelectPreviousWordsUsingCardinalNumber", @"Text.SelectPreviousWordsUsingCardinalNumber", @"Text.SelectPreviousSentence", @"Text.SelectCurrentSentence", @"Text.SelectPreviousSentence", @"Text.SelectNextSentence", @"Text.SelectPreviousSentence", @"Text.SelectPreviousSentence", @"Text.SelectPreviousSentencesUsingCardinalNumber", @"Text.SelectNextSentencesUsingCardinalNumber", @"Text.SelectPreviousSentencesUsingCardinalNumber", @"Text.SelectPreviousSentencesUsingCardinalNumber", @"Text.SelectPreviousParagraph", @"Text.SelectCurrentParagraph", @"Text.SelectPreviousParagraph", @"Text.SelectNextParagraph", @"Text.SelectPreviousParagraph", @"Text.SelectPreviousParagraph", @"Text.SelectPreviousParagraphsUsingCardinalNumber", @"Text.SelectNextParagraphsUsingCardinalNumber", @"Text.SelectPreviousParagraphsUsingCardinalNumber", @"Text.SelectPreviousParagraphsUsingCardinalNumber", @"Text.SelectPreviousLine", @"Text.SelectCurrentLine", @"Text.SelectPreviousLine", @"Text.SelectNextLine", @"Text.SelectPreviousLine", @"Text.SelectPreviousLine", @"Text.SelectPreviousLinesUsingCardinalNumber", @"Text.SelectNextLinesUsingCardinalNumber", @"Text.SelectPreviousLinesUsingCardinalNumber", @"Text.SelectPreviousLinesUsingCardinalNumber", @"Text.SelectPrevious", @"Text.SelectPhrase", @"Text.SelectPrevious", @"Text.SelectEmojiWithPhrase", @"Text.SelectPrevious", @"Text.SelectPhraseThroughPhrase", @"Text.SelectPrevious", @"Text.SelectNext", @"Text.SelectPrevious", @"Text.SelectPrevious", 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)_templateSpokenCommandWithIdentifier:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = self->_recognizers;
  objc_sync_enter(v17);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_recognizers;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v19 = *v26;
    v20 = 0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v7 spokenCommands];
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = *v22;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v21 + 1) + 8 * j);
              v13 = [v12 identifier];
              v14 = [v13 isEqualToString:v4];

              if (v14)
              {
                v15 = v12;

                v20 = v15;
                goto LABEL_16;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v20 = 0;
  }

  objc_sync_exit(v17);

  return v20;
}

- (void)setRepeatingSpokenCommand:(id)a3
{
  v9 = a3;
  v4 = [v9 identifier];
  v5 = [v4 isEqualToString:@"System.RepeatPreviousCommand"];

  if ((v5 & 1) == 0)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [v9 copy];
    currentRepeatingSpokenCommand = v6->_currentRepeatingSpokenCommand;
    v6->_currentRepeatingSpokenCommand = v7;

    objc_sync_exit(v6);
  }
}

- (void)stopAnyRepeatingSpokenCommand
{
  obj = self;
  objc_sync_enter(obj);
  obj->_repeatingSpokenCommandRemainingCount = 0;
  objc_sync_exit(obj);
}

- (void)beginExecutingRepeatingSpokenCommandNumberOfTimes:(int64_t)a3 completionBlock:(id)a4
{
  v7 = a4;
  v6 = self;
  objc_sync_enter(v6);
  v6->_repeatingSpokenCommandRemainingCount = a3;
  [(CACSpokenCommand *)v6->_currentRepeatingSpokenCommand setExecutedIndirectly:1];
  objc_sync_exit(v6);

  [(CACSpokenCommandManager *)v6 _executeNextRepeatWithCompletionBlock:v7];
}

- (void)_executeNextRepeatWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v5->_currentRepeatingSpokenCommand;
  repeatingSpokenCommandRemainingCount = v5->_repeatingSpokenCommandRemainingCount;
  objc_sync_exit(v5);

  if (repeatingSpokenCommandRemainingCount < 1)
  {
    v10 = CACMakeSuccessError();
    v4[2](v4, v10);
  }

  else
  {
    if ([(CACSpokenCommand *)v6 isCustomCommand]|| [(CACSpokenCommand *)v6 isListening])
    {
      goto LABEL_9;
    }

    v8 = [(CACSpokenCommand *)v6 contextEvaluation];
    v9 = [v8 objectForKey:kCACCommandContextRequiresNumberedElementsOverlay];
    if ([v9 BOOLValue])
    {

LABEL_9:
      v14 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__CACSpokenCommandManager__executeNextRepeatWithCompletionBlock___block_invoke;
      block[3] = &unk_279CEB430;
      block[4] = v5;
      v17 = v6;
      v18 = v4;
      dispatch_async(v14, block);

      goto LABEL_10;
    }

    v11 = [(CACSpokenCommand *)v6 contextEvaluation];
    v12 = [v11 objectForKey:kCACCommandContextRequiresAnyNumberedOverlay];
    v13 = [v12 BOOLValue];

    if (v13)
    {
      goto LABEL_9;
    }

    v10 = [CACLocaleUtilities localizedUIStringForKey:@"ErrorMessage.PreviousCommandNotAppropriate"];
    v15 = CACMakeError(3002, v10);
    v4[2](v4, v15);
  }

LABEL_10:
}

void __65__CACSpokenCommandManager__executeNextRepeatWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  --*(*(a1 + 32) + 168);
  objc_sync_exit(v2);

  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __65__CACSpokenCommandManager__executeNextRepeatWithCompletionBlock___block_invoke_2;
  v7 = &unk_279CEBC48;
  v3 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  [v3 setCompletionBlock:&v4];
  [*(a1 + 32) handleRecognizedCommand:{*(a1 + 40), v4, v5, v6, v7, v8}];
}

uint64_t __65__CACSpokenCommandManager__executeNextRepeatWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  +[CACSpokenCommand defaultDelayBetweenCommands];
  usleep((v2 * 1000000.0));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _executeNextRepeatWithCompletionBlock:v4];
}

- (BOOL)isFetchingElements
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_fetchingTransactionID != 0.0;
  objc_sync_exit(v2);

  return v3;
}

- (void)forceElementFetchWithReason:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CACSpokenCommandManager_forceElementFetchWithReason___block_invoke;
  v6[3] = &unk_279CEB4C0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__CACSpokenCommandManager_forceElementFetchWithReason___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Forced fetch: %@", *(a1 + 32)];
  [*(a1 + 40) _scheduleFetchElementsWithDelay:v2 andReason:0.05];
}

- (id)_fetchPresentationElements
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277D73FF8] options];
  [v3 setLeafNodePredicate:&__block_literal_global_786];
  v4 = +[CACDisplayManager sharedManager];
  v5 = [v4 view];
  v6 = [v5 window];
  v7 = [v6 _accessibilityLeafDescendantsWithOptions:v3];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = _AXCreateAXUIElementWithElement();
        if (v14)
        {
          v15 = v14;
          v16 = [CACLocalAXElement alloc];
          v17 = [(CACLocalAXElement *)v16 initWithAXUIElement:v15, v19];
          [(CACLocalAXElement *)v17 setLocalElement:v13];
          [v2 addObject:v17];
          CFRelease(v15);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  +[CACSignPostLog FetchElementsEventCompletedWithNumberOfElements:numberOfElementsAlreadyCached:](CACSignPostLog, "FetchElementsEventCompletedWithNumberOfElements:numberOfElementsAlreadyCached:", [v2 count], 0);

  return v2;
}

uint64_t __53__CACSpokenCommandManager__fetchPresentationElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessibilityElement])
  {
    v3 = [v2 accessibilityRespondsToUserInteraction];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)elementIsOccluded:(id)a3 occludedAppScenes:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) fbSceneIdentifier];
        v11 = [v5 fbSceneIdentifier];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_inCallServiceApplication
{
  v2 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:AXUIElementSharedSystemApp()];
  v3 = [v2 elementForAttribute:91510 parameter:*MEMORY[0x277CE6818]];
  if ([v3 isVisible])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)_interfaceOrientedFrameForElement:(id)a3 axFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [a3 windowDisplayId];
  v9 = +[CACDisplayManager sharedManager];
  v10 = [v9 overlayViewForDisplayID:v8];

  if (v10)
  {
    v11 = +[CACDisplayManager sharedManager];
    v12 = [v11 carPlayConnected];

    v13 = [MEMORY[0x277CE6BA0] systemWideElement];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 elementsForAttribute:1009];
      v16 = [v15 firstObject];

      v14 = v16;
    }

    v17 = [v10 window];
    [v14 convertRect:objc_msgSend(v17 toContextId:"_contextId") displayId:{v8, x, y, width, height}];
    x = v18;
    y = v19;
    width = v20;
    height = v21;
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)_fetchElements
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__CACSpokenCommandManager__fetchElements__block_invoke(uint64_t a1)
{
  v170 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(*(a1 + 32) + 328);
  objc_sync_exit(v2);

  v4 = +[CACDisplayManager sharedManager];
  v5 = [v4 carPlayConnected];

  if (v5)
  {
    v6 = [MEMORY[0x277CE6BA0] systemWideElement];
    v7 = [v6 elementsForAttribute:1009];
    v8 = [v7 firstObject];
    v9 = [v8 currentApplications];
  }

  else
  {
    v6 = [MEMORY[0x277CE6BA0] systemApplication];
    v9 = [v6 currentApplications];
  }

  v10 = [MEMORY[0x277CE6BA0] systemWideElement];
  v11 = [v10 elementForAttribute:1007 shouldFetchAttributes:0];

  LODWORD(v10) = [v11 pid];
  if (v10 == getpid())
  {

    v11 = 0;
  }

  [*(a1 + 32) _inCallServiceApplication];
  v102 = v101 = v11;
  if (v102)
  {
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v154 objects:v169 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v155;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v155 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v154 + 1) + 8 * i) bundleId];
          v18 = [v102 bundleId];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            v9 = v12;
            goto LABEL_17;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v154 objects:v169 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v9 = [v12 arrayByAddingObject:v102];
LABEL_17:

    v11 = v101;
  }

  v20 = [MEMORY[0x277CE6BA0] systemWideElement];
  v21 = [v20 systemApplication];
  v22 = [v21 elementForAttribute:1513];

  if (v22)
  {
    v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_791];
    v24 = [v9 filteredArrayUsingPredicate:v23];

    v9 = [v24 arrayByAddingObject:v22];
  }

  v109 = v22;
  if (v11 && [v11 isValid])
  {
    v112 = [v11 elementForVoiceControlTextEditing];
    v25 = [v11 bundleId];
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v9 = v9;
    v26 = [v9 countByEnumeratingWithState:&v150 objects:v168 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v151;
      while (2)
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v151 != v28)
          {
            objc_enumerationMutation(v9);
          }

          v30 = [*(*(&v150 + 1) + 8 * j) bundleId];
          v31 = [v30 isEqualToString:v25];

          if (v31)
          {
            v32 = v9;
            goto LABEL_34;
          }
        }

        v27 = [v9 countByEnumeratingWithState:&v150 objects:v168 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v32 = [v101 elementForAttribute:2076];
    if (v32)
    {
      v33 = [v9 arrayByAddingObject:v32];

      v9 = v33;
    }

LABEL_34:
  }

  else
  {
    v112 = 0;
  }

  v104 = [MEMORY[0x277CBEB18] array];
  v106 = [MEMORY[0x277CBEB18] array];
  v34 = [MEMORY[0x277CBEB18] array];
  if ([*(a1 + 32) _chamoisSupportEnabledForVoiceControl])
  {
    v35 = [v9 mutableCopy];
    v36 = [MEMORY[0x277CE6BA0] systemApplication];
    v37 = [v35 containsObject:v36];

    if ((v37 & 1) == 0)
    {
      v38 = [MEMORY[0x277CE6BA0] systemApplication];
      [v35 addObject:v38];
    }

    v39 = v35;

    v40 = [MEMORY[0x277CE7E40] server];

    v110 = [v40 focusedOccludedAppScenes];

    v9 = v39;
  }

  else
  {
    v110 = MEMORY[0x277CBEBF8];
  }

  if (_AXSTwiceRemoteScreenEnabled())
  {
    v41 = [v9 mutableCopy];
    v42 = [MEMORY[0x277CE6BA0] systemWideElement];
    v43 = [v42 accessibilityUIServerApplication];

    if (v43 && ([v41 containsObject:v43] & 1) == 0)
    {
      [v41 addObject:v43];
    }
  }

  else
  {
    v41 = v9;
  }

  v100 = v34;
  group = dispatch_group_create();
  v108 = objc_opt_new();
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  obj = v41;
  v44 = [obj countByEnumeratingWithState:&v146 objects:v167 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v147;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v147 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v146 + 1) + 8 * k);
        if (!v112)
        {
          v112 = [v48 elementForVoiceControlTextEditing];
        }

        v49 = *(*(a1 + 32) + 352);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__CACSpokenCommandManager__fetchElements__block_invoke_3;
        block[3] = &unk_279CEBCB0;
        v139 = v110;
        v140 = v48;
        v50 = v109;
        v51 = *(a1 + 32);
        v141 = v50;
        v142 = v51;
        v143 = v108;
        v144 = v104;
        v145 = v106;
        dispatch_group_async(group, v49, block);
      }

      v45 = [obj countByEnumeratingWithState:&v146 objects:v167 count:16];
    }

    while (v45);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v52 = [MEMORY[0x277CE6BA0] systemApplication];
  v53 = [v52 bundleId];

  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __41__CACSpokenCommandManager__fetchElements__block_invoke_4;
  v133[3] = &unk_279CEBCD8;
  v134 = v106;
  v54 = v104;
  v135 = v54;
  v55 = v53;
  v56 = *(a1 + 32);
  v105 = v55;
  v136 = v55;
  v137 = v56;
  v57 = [v106 sortedArrayUsingComparator:v133];
  v58 = [v57 mutableCopy];

  if (!v112)
  {
    v107 = v54;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v99 = v58;
    v59 = v58;
    v60 = [v59 countByEnumeratingWithState:&v129 objects:v166 count:16];
    if (v60)
    {
      v61 = v60;
      v112 = 0;
      v62 = *v130;
      do
      {
        for (m = 0; m != v61; ++m)
        {
          if (*v130 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v129 + 1) + 8 * m);
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          v128 = 0u;
          v65 = v64;
          v66 = [v65 countByEnumeratingWithState:&v125 objects:v165 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v126;
            while (2)
            {
              for (n = 0; n != v67; ++n)
              {
                if (*v126 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                v70 = [*(*(&v125 + 1) + 8 * n) elementForTextInsertionAndDeletion];
                v71 = v70;
                if (v70 && [v70 isVisible])
                {

                  v112 = v71;
                  goto LABEL_72;
                }
              }

              v67 = [v65 countByEnumeratingWithState:&v125 objects:v165 count:16];
              if (v67)
              {
                continue;
              }

              break;
            }
          }

LABEL_72:
        }

        v61 = [v59 countByEnumeratingWithState:&v129 objects:v166 count:16];
      }

      while (v61);
    }

    else
    {
      v112 = 0;
    }

    v54 = v107;
    v58 = v99;
  }

  v72 = [MEMORY[0x277CBEB18] array];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v73 = v58;
  v74 = [v73 countByEnumeratingWithState:&v121 objects:v164 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v122;
    do
    {
      for (ii = 0; ii != v75; ++ii)
      {
        if (*v122 != v76)
        {
          objc_enumerationMutation(v73);
        }

        [v72 addObjectsFromArray:*(*(&v121 + 1) + 8 * ii)];
      }

      v75 = [v73 countByEnumeratingWithState:&v121 objects:v164 count:16];
    }

    while (v75);
  }

  v78 = +[CACDisplayManager sharedManager];
  [v78 hideObsoletePresentationsIfNeededForElements:v72];

  v79 = +[CACDisplayManager sharedManager];
  v80 = [v79 isDisplayingAnyInteractiveContentInProcess];

  if (v80)
  {
    v81 = +[CACDisplayManager sharedManager];
    v82 = v100;
    if (([v81 isDisplayingAnyOutOfProcessPresentation] & 1) == 0)
    {
      v83 = +[CACDisplayManager sharedManager];
      v84 = [v83 anyPresentationPreventsDictation];

      if (!v84)
      {
LABEL_89:
        v118[0] = MEMORY[0x277D85DD0];
        v118[1] = 3221225472;
        v118[2] = __41__CACSpokenCommandManager__fetchElements__block_invoke_5;
        v118[3] = &unk_279CEB550;
        v118[4] = *(a1 + 32);
        v119 = obj;
        v112 = v112;
        v120 = v112;
        dispatch_async(MEMORY[0x277D85CD0], v118);

        goto LABEL_91;
      }

      v81 = v112;
      v112 = 0;
    }

    goto LABEL_89;
  }

  [*(a1 + 32) setScreenElements:v73 presentationElements:0 activeApplications:obj focusedTextAreaElement:v112];
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_799);
  v82 = v100;
LABEL_91:
  v85 = *(a1 + 32);
  objc_sync_enter(v85);
  v86 = *(a1 + 32);
  if (v3 == *(v86 + 328))
  {
    *(v86 + 328) = 0;
    v87 = *(*(a1 + 32) + 344);
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __41__CACSpokenCommandManager__fetchElements__block_invoke_7;
    v113[3] = &unk_279CEBD28;
    v88 = obj;
    v89 = *(a1 + 32);
    v114 = v88;
    v115 = v89;
    v116 = v110;
    v117 = v82;
    dispatch_async(v87, v113);
  }

  objc_sync_exit(v85);

  v90 = RXSignpostLog();
  if (os_signpost_enabled(v90))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B354000, v90, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CAC, CmdPrep: Fetching Elements", &unk_26B407192, buf, 2u);
  }

  v91 = CACLogElementCollection();
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
  {
    __41__CACSpokenCommandManager__fetchElements__block_invoke_cold_1();
  }

  v92 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v93 = [v92 focusedElement];

  v94 = CACLogElementCollection();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    v95 = [v93 pid];
    v96 = [v93 isVisible];
    [v93 frame];
    v97 = NSStringFromCGRect(v171);
    *buf = 67109634;
    v159 = v95;
    v160 = 1024;
    v161 = v96;
    v162 = 2112;
    v163 = v97;
    _os_log_impl(&dword_26B354000, v94, OS_LOG_TYPE_DEFAULT, "CAC, CmdPrep: after fetching focusedElement pid:%d, isVisible:%d, frame:%@", buf, 0x18u);
  }

  v98 = *(a1 + 32);
  objc_sync_enter(v98);
  --_fetchElements___fetchQueueDepth;
  objc_sync_exit(v98);
}

void __41__CACSpokenCommandManager__fetchElements__block_invoke_3(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v39;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v8 = [v7 bundleIdentifier];
        v9 = [*(a1 + 40) bundleId];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          [v33 addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v4);
  }

  v11 = [*(a1 + 40) uiElement];
  v12 = [v11 uiElementsWithAttribute:94500 parameter:&unk_287BEFF60];

  v30 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    v16 = 0x277CE6000uLL;
    v17 = 0x279CEA000uLL;
    v31 = *v35;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [*(v16 + 2976) elementWithUIElement:{*(*(&v34 + 1) + 8 * j), v30}];
        v20 = [v19 isVisible];
        v21 = [*(v17 + 1312) sharedManager];
        if ([v21 carPlayConnected])
        {
          v22 = v16;
          v23 = [v19 windowDisplayId];
          [*(v17 + 1312) sharedManager];
          v24 = a1;
          v25 = v14;
          v27 = v26 = v17;
          v28 = v23 == [v27 carPlayDisplayID];

          v17 = v26;
          v14 = v25;
          a1 = v24;

          v20 &= v28;
          v16 = v22;
          v15 = v31;
        }

        else
        {
        }

        if (*(a1 + 40) == *(a1 + 48))
        {
          [v19 visibleFrame];
          v20 = !CGRectIsEmpty(v45);
        }

        if (v19)
        {
          v29 = v20 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29 && ([*(a1 + 56) elementIsOccluded:v19 occludedAppScenes:v33] & 1) == 0)
        {
          [v30 addObject:v19];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v14);
  }

  [*(a1 + 64) lock];
  [*(a1 + 72) addObject:*(a1 + 40)];
  [*(a1 + 80) addObject:v30];
  [*(a1 + 64) unlock];
}

uint64_t __41__CACSpokenCommandManager__fetchElements__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(a1 + 32) indexOfObject:v6];

  v9 = [*(a1 + 40) objectAtIndex:v7];
  v10 = [*(a1 + 40) objectAtIndex:v8];
  v11 = [v9 bundleId];
  if ([v11 isEqualToString:*(a1 + 48)])
  {
    v12 = [v10 bundleId];
    v13 = [v12 isEqualToString:*(a1 + 48)];

    if (v13)
    {
      v14 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v15 = [v9 bundleId];
  v16 = [v15 isEqualToString:*(a1 + 48)];

  if (v16)
  {
    v14 = 1;
  }

  else
  {
    v17 = [v10 bundleId];
    v18 = [v17 isEqualToString:*(a1 + 48)];

    v14 = -1;
    if ((v18 & 1) == 0)
    {
      v19 = *(a1 + 56);
      [v9 frame];
      [v19 _interfaceOrientedFrameForElement:v9 axFrame:?];
      v21 = v20;
      v23 = v22;
      v24 = *(a1 + 56);
      [v10 frame];
      [v24 _interfaceOrientedFrameForElement:v10 axFrame:?];
      if (v21 >= v26)
      {
        v27 = 1;
      }

      else
      {
        v27 = -1;
      }

      if (v23 >= v25)
      {
        v28 = 1;
      }

      else
      {
        v28 = -1;
      }

      if (v23 == v25)
      {
        v14 = v27;
      }

      else
      {
        v14 = v28;
      }
    }
  }

LABEL_17:

  return v14;
}

void __41__CACSpokenCommandManager__fetchElements__block_invoke_5(void *a1)
{
  v2 = a1[4];
  v3 = [v2 _fetchPresentationElements];
  [v2 setScreenElements:0 presentationElements:v3 activeApplications:a1[5] focusedTextAreaElement:a1[6]];

  v4 = +[CACDisplayManager sharedManager];
  [v4 refreshOverlays];
}

void __41__CACSpokenCommandManager__fetchElements__block_invoke_6()
{
  v0 = +[CACDisplayManager sharedManager];
  [v0 refreshOverlays];
}

void __41__CACSpokenCommandManager__fetchElements__block_invoke_7(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = *(*(a1 + 40) + 352);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__CACSpokenCommandManager__fetchElements__block_invoke_8;
        block[3] = &unk_279CEBD00;
        v16 = *(a1 + 48);
        v17 = v8;
        v18 = *(a1 + 40);
        v19 = v3;
        v20 = *(a1 + 56);
        dispatch_group_async(v2, v9, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(a1 + 40);
  v11 = *(v10 + 336);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__CACSpokenCommandManager__fetchElements__block_invoke_9;
  v13[3] = &unk_279CEB4C0;
  v13[4] = v10;
  v14 = *(a1 + 56);
  dispatch_async(v11, v13);
}

void __41__CACSpokenCommandManager__fetchElements__block_invoke_8(id *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = [v8 bundleIdentifier];
        v10 = [a1[5] bundleId];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v5);
  }

  v12 = [a1[5] pid];
  if (v12 != getpid())
  {
    v13 = [a1[5] uiElement];
    v14 = [v13 uiElementsWithAttribute:94500 parameter:&unk_287BEFF78];

    v33 = [MEMORY[0x277CBEB18] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (!v16)
    {
      goto LABEL_25;
    }

    v17 = v16;
    v18 = *v35;
    v19 = 0x277CE6000uLL;
    v20 = 0x279CEA000uLL;
    v31 = v2;
    v32 = *v35;
    v30 = v15;
    while (1)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v22 = [*(v19 + 2976) elementWithUIElement:{*(*(&v34 + 1) + 8 * j), v30, v31, v32}];
        if (v22 && ([a1[6] elementIsOccluded:v22 occludedAppScenes:v2] & 1) == 0)
        {
          v23 = [*(v20 + 1312) sharedManager];
          if (([v23 carPlayConnected] & 1) == 0)
          {

LABEL_22:
            [v33 addObject:v22];
            goto LABEL_23;
          }

          v24 = [v22 windowDisplayId];
          [*(v20 + 1312) sharedManager];
          v26 = v25 = v19;
          v27 = v20;
          v28 = [v26 carPlayDisplayID];

          v19 = v25;
          v29 = v24 == v28;
          v20 = v27;
          v15 = v30;
          v2 = v31;
          v18 = v32;
          if (v29)
          {
            goto LABEL_22;
          }
        }

LABEL_23:
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (!v17)
      {
LABEL_25:

        [a1[7] lock];
        [a1[8] addObjectsFromArray:v33];
        [a1[7] unlock];

        break;
      }
    }
  }
}

- (void)_scheduleFetchElementsWithDelay:(double)a3 andReason:(id)a4
{
  v6 = a4;
  if (!self->_elementFetchingQueue)
  {
    v7 = [MEMORY[0x277CCACC8] callStackSymbols];
    v8 = CACLogElementCollection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CACSpokenCommandManager _scheduleFetchElementsWithDelay:andReason:];
    }
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__fetchElements object:0];
  [CACSignPostLog FetchElementsEventBeganWithReason:v6 expectedDelay:a3];
  v9 = self;
  objc_sync_enter(v9);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9->_fetchingTransactionID = v10;
  objc_sync_exit(v9);

  nextFetchDelayFactor = v9->_nextFetchDelayFactor;
  if (nextFetchDelayFactor <= 1.0)
  {
    v12 = a3;
  }

  else
  {
    v12 = nextFetchDelayFactor * a3;
  }

  [(CACSpokenCommandManager *)v9 performSelector:sel__fetchElements withObject:0 afterDelay:v12];
  v9->_nextFetchDelayFactor = 0.0;
}

- (void)observer:(id)a3 didObserveNotification:(int)a4 notificationData:(void *)a5
{
  v6 = *&a4;
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = CACLogDictationCommands();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v25 = v6;
    v26 = 2112;
    v27 = a5;
    _os_log_impl(&dword_26B354000, v9, OS_LOG_TYPE_INFO, "did observe notification: %d, notification data: %@", buf, 0x12u);
  }

  if (v6 <= 1068)
  {
    if ((v6 - 1000) > 0x12)
    {
      goto LABEL_36;
    }

    v10 = 1 << (v6 + 24);
    if ((v10 & 0x13) != 0)
    {
      v12 = self;
      objc_sync_enter(v12);
      displayIsOff = v12->_displayIsOff;
      if (displayIsOff != [(CACSpokenCommandManager *)v12 _isSystemSleeping])
      {
        v14 = [(CACSpokenCommandManager *)v12 _isSystemSleeping];
        v12->_displayIsOff = v14;
        if (v14)
        {
          [(CACSpokenCommandManager *)v12 _microphoneTurnedOffAfterInteruption];
        }

        else
        {
          [(CACSpokenCommandManager *)v12 _microphoneTurnedOnAfterInteruption];
        }
      }

      objc_sync_exit(v12);

      if (v6 == 1000)
      {
        [(CACSpokenCommandManager *)v12 willUpdateElementsSignificantly];
      }

      else if (v6 != 1001 && v6 != 1004)
      {
        goto LABEL_36;
      }
    }

    else if ((v10 & 0x40280) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  if (v6 <= 5000)
  {
    if (v6 != 1069)
    {
      if (v6 == 1087)
      {
        v22 = +[CACDisplayManager sharedManager];
        [v22 setOverlaysSuppressed:1];
      }

      else if (v6 == 1088)
      {
        v23 = +[CACDisplayManager sharedManager];
        [v23 setOverlaysSuppressed:0];
      }

      goto LABEL_36;
    }

LABEL_29:
    v17 = MEMORY[0x277CCACA8];
    v18 = [(CACSpokenCommandManager *)self nameOfAXNotification:v6];
    v19 = [v17 stringWithFormat:@"AXNotification: %@", v18];

    [(CACSpokenCommandManager *)self delayForNotification:v6];
    v21 = v20;
    if (a5 && CFEqual(a5, *MEMORY[0x277CE6D40]))
    {
      [(CACSpokenCommandManager *)self forceElementFetchWithReason:v19];
    }

    else
    {
      [(CACSpokenCommandManager *)self _scheduleFetchElementsWithDelay:v19 andReason:v21];
    }

    goto LABEL_36;
  }

  if (v6 == 5001)
  {
    goto LABEL_29;
  }

  if (v6 == 5800)
  {
    if (!self->_recognitionModeOverriddenForDictation)
    {
      self->_recognitionModeOverriddenForDictation = 1;
      v15 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      self->_recognitionModePriorToDictation = [v15 dictationRecognizerMode];

      v16 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      [v16 setDictationRecognizerMode:1];
    }
  }

  else if (v6 == 5801 && self->_recognitionModeOverriddenForDictation)
  {
    v11 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v11 setDictationRecognizerMode:self->_recognitionModePriorToDictation];

    self->_recognitionModeOverriddenForDictation = 0;
  }

LABEL_36:
}

- (double)delayForNotification:(int)a3
{
  result = 0.3;
  if (a3 == 1069)
  {
    return 0.75;
  }

  return result;
}

- (id)nameOfAXNotification:(int)a3
{
  if (a3 > 1008)
  {
    if (a3 > 1068)
    {
      if (a3 == 1069)
      {
        v4 = @"kAXScrollViewDidEndDeceleratingNotification";

        return v4;
      }

      if (a3 == 5001)
      {
        v4 = @"kAXFocusedApplicationsDidChangeNotification";

        return v4;
      }
    }

    else
    {
      if (a3 == 1009)
      {
        v4 = @"kAXElementScrolledByPageNotification";

        return v4;
      }

      if (a3 == 1018)
      {
        v4 = @"kAXFirstResponderChangedNotification";

        return v4;
      }
    }

LABEL_36:
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown, %i", *&a3];

    return v4;
  }

  if (a3 > 1003)
  {
    if (a3 == 1004)
    {
      v4 = @"kAXScreenLockedNotification";

      return v4;
    }

    if (a3 == 1007)
    {
      v4 = @"kAXWebPageLoadedNotification";

      return v4;
    }

    goto LABEL_36;
  }

  if (a3 != 1000)
  {
    if (a3 == 1001)
    {
      v4 = @"kAXLayoutChangedNotification";

      return v4;
    }

    goto LABEL_36;
  }

  v4 = @"kAXScreenChangedNotification";

  return v4;
}

- (void)didObserveFirstTouchDownForObserver:(id)a3
{
  v4 = CACLogDictationCommands();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_DEFAULT, "Did observe first touch down", v5, 2u);
  }

  [(CACSpokenCommandManager *)self didBeginTouches];
}

- (void)didObserveLastTouchUpForObserver:(id)a3
{
  v4 = CACLogDictationCommands();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_DEFAULT, "Did observe last touch up", v5, 2u);
  }

  [(CACSpokenCommandManager *)self didEndTouches];
}

- (void)insertDictatedAttributedString:(id)a3
{
  v4 = [a3 string];
  [(CACSpokenCommandManager *)self insertDictatedString:v4];
}

- (void)insertDictatedAttributedString:(id)a3 provisionally:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 string];
  [(CACSpokenCommandManager *)self insertDictatedString:v6 provisionally:v4];
}

- (void)insertDictatedString:(id)a3 provisionally:(BOOL)a4
{
  v4 = a4;
  v44 = a3;
  if (!v4)
  {
    v17 = [MEMORY[0x277D79898] shared];
    [v17 axFinalTextInsertion];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_lastDictationInsertionTimeStamp = v18;
    hypothesesInsertedCount = self->_hypothesesInsertedCount;
    if (hypothesesInsertedCount < 1)
    {
      v21 = 0;
    }

    else
    {
      if (hypothesesInsertedCount == 1 || [v44 rangeOfString:@"="] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = 0;
      }

      else
      {
        v28 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        v29 = [v28 focusedElement];
        v30 = [v29 bundleId];
        v20 = [v30 isEqualToString:@"com.apple.mobilenotes"];
      }

      v31 = ![(NSString *)self->_lastHypothesis isEqualToString:v44]| v20;
      if (v31)
      {
        [(CACSpokenCommandManager *)self _replaceTextInRange:self->_lastHypothesisRange.location withString:self->_lastHypothesisRange.length, &stru_287BD8610];
      }

      v21 = v31 ^ 1;
      self->_hypothesesInsertedCount = 0;
      self->_hypothesisWasRolledBack = 0;
      v32 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v33 = [v32 focusedElement];

      v34 = [v33 textOperationsOperator];
      [v34 performAction:2061];
    }

    v35 = [(AXElement *)self->_focusedElement cacTextSelectionCACTextMarkerRange];
    location = [v35 nsRange];

    if (v21)
    {
      if (hypothesesInsertedCount >= 1)
      {
        location = self->_lastHypothesisRange.location;
      }

      v37 = [(CACSpokenCommandManager *)self stagedTextInsertionSpecifier];
      [v37 setInsertedString:v44];

      v38 = [(CACSpokenCommandManager *)self stagedTextInsertionSpecifier];
      [v38 setInsertedRange:{location, objc_msgSend(v44, "length")}];
    }

    else
    {
      [(AXElement *)self->_focusedElement insertText:v44 asUndoableAction:1];
      v39 = [(CACSpokenCommandManager *)self stagedTextInsertionSpecifier];
      [v39 setInsertedString:v44];

      v40 = [(CACSpokenCommandManager *)self stagedTextInsertionSpecifier];
      [v40 setInsertedRange:{self->_lastHypothesisRange.location, objc_msgSend(v44, "length")}];
    }

    v41 = [(CACSpokenCommandManager *)self stagedTextInsertionSpecifier];
    [v41 setAxElement:self->_focusedElement];

    v42 = [(CACSpokenCommandManager *)self stagedTextInsertionSpecifier];
    [v42 setProvisional:0];

    v12 = [(CACSpokenCommandManager *)self stagedTextInsertionSpecifier];
    [(CACSpokenCommandManager *)self setPreviousTextInsertionSpecifier:v12];
    goto LABEL_29;
  }

  v7 = [(AXElement *)self->_focusedElement bundleId];
  v8 = [v7 isEqualToString:@"com.apple.Pages"];

  if (v8)
  {
    goto LABEL_30;
  }

  v9 = [MEMORY[0x277D79898] shared];
  [v9 axPartialTextInsertion];

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_lastDictationInsertionTimeStamp = v10;
  v11 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v12 = [v11 focusedElement];

  v13 = [v12 textOperationsOperator];
  v14 = self->_hypothesesInsertedCount;
  if (v14 >= 1)
  {
    v15 = self->_lastHypothesisRange.location;
    length = self->_lastHypothesisRange.length;
    goto LABEL_5;
  }

  objc_storeStrong(&self->_previousUtterancePreHypothesisText, self->_currentUtterancePreHypothesisText);
  v22 = [(NSMutableArray *)self->_currentUtteranceHypotheses mutableCopy];
  previousUtteranceHypotheses = self->_previousUtteranceHypotheses;
  self->_previousUtteranceHypotheses = v22;

  v24 = [v12 cacTrailingValue];
  currentUtterancePreHypothesisText = self->_currentUtterancePreHypothesisText;
  self->_currentUtterancePreHypothesisText = v24;

  [(NSMutableArray *)self->_currentUtteranceHypotheses removeAllObjects];
  v26 = [v12 selectedTextRange];
  if (!v27)
  {
    v15 = v26;
    [v13 performAction:2060];
    length = 0;
    v14 = self->_hypothesesInsertedCount;
LABEL_5:
    self->_hypothesesInsertedCount = v14 + 1;
    if (_AXSPrefersNonBlinkingCursorIndicator())
    {
      if (v14)
      {
LABEL_7:
        [(CACSpokenCommandManager *)self _replaceTextInRange:v15 withString:length, v44];
LABEL_27:
        [(NSMutableArray *)self->_currentUtteranceHypotheses addObject:v44];
        v43 = [v44 length];
        self->_lastHypothesisRange.location = v15;
        self->_lastHypothesisRange.length = v43;
        objc_storeStrong(&self->_lastHypothesis, a3);
        goto LABEL_28;
      }
    }

    else
    {
      [v13 performAction:2070];
      if (v14)
      {
        goto LABEL_7;
      }
    }

    [(AXElement *)self->_focusedElement insertText:v44 asUndoableAction:0];
    goto LABEL_27;
  }

LABEL_28:

LABEL_29:
LABEL_30:
}

- (BOOL)_replaceTextInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"range";
  v6 = a4;
  v14.location = location;
  v14.length = length;
  v7 = NSStringFromRange(v14);
  v12[1] = @"replacement";
  v13[0] = v7;
  v13[1] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v9 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];

  v10 = [v9 focusedElement];
  LOBYTE(v7) = [v10 performAction:2505 withValue:v8];

  return v7;
}

- (void)enterDictatedString:(id)a3
{
  [(CACSpokenCommandManager *)self insertDictatedString:a3];
  v4 = [(AXElement *)self->_focusedElement uiElement];
  [v4 performAXAction:2054];
}

- (void)clearProvisionalDictation
{
  if (self->_hypothesesInsertedCount >= 1)
  {
    [(CACSpokenCommandManager *)self _replaceTextInRange:self->_lastHypothesisRange.location withString:self->_lastHypothesisRange.length, &stru_287BD8610];
    v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v6 = [v4 focusedElement];

    v5 = [v6 textOperationsOperator];
    [v5 performAction:2061];
    self->_hypothesesInsertedCount = 0;
    self->_hypothesisWasRolledBack = 1;
  }
}

- (void)_notesUndoWithPreHypothesisText:(id)a3 hypothesisHistory:(id)a4 forElement:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CE6E60];
  [v8 cacPerformTextOperation:*MEMORY[0x277CE6E60]];
  v10 = [v7 mutableCopy];
  while ([v10 count])
  {
    v11 = [v8 cacTrailingValue];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__CACSpokenCommandManager__notesUndoWithPreHypothesisText_hypothesisHistory_forElement___block_invoke;
    v16[3] = &unk_279CEBD50;
    v12 = v11;
    v17 = v12;
    v18 = &v19;
    [v10 enumerateObjectsWithOptions:2 usingBlock:v16];
    v13 = v20[3];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v10 removeAllObjects];
    }

    else
    {
      v14 = [v10 count];
      [v10 removeObjectsInRange:{v13, v14 - v20[3]}];
      [v8 cacPerformTextOperation:*v9];
    }

    _Block_object_dispose(&v19, 8);
  }
}

uint64_t __88__CACSpokenCommandManager__notesUndoWithPreHypothesisText_hypothesisHistory_forElement___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasSuffix:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)performUndoIncludingProvisionalTextForElement:(id)a3
{
  v10 = a3;
  v4 = [v10 bundleId];
  v5 = [v4 isEqualToString:@"com.apple.mobilenotes"];

  if (v5)
  {
    hypothesisWasRolledBack = self->_hypothesisWasRolledBack;
    [(CACSpokenCommandManager *)self _notesUndoWithPreHypothesisText:self->_currentUtterancePreHypothesisText hypothesisHistory:self->_currentUtteranceHypotheses forElement:v10];
    if (hypothesisWasRolledBack)
    {
      [(CACSpokenCommandManager *)self _notesUndoWithPreHypothesisText:self->_previousUtterancePreHypothesisText hypothesisHistory:self->_previousUtteranceHypotheses forElement:v10];
    }
  }

  else
  {
    v7 = MEMORY[0x277CE6E60];
    [v10 cacPerformTextOperation:*MEMORY[0x277CE6E60]];
    if (self->_hypothesisWasRolledBack)
    {
      v8 = [v10 cacTrailingValue];
      v9 = [v8 isEqualToString:self->_currentUtterancePreHypothesisText];

      if (v9)
      {
        [v10 cacPerformTextOperation:*v7];
      }
    }
  }
}

- (id)primaryStringForCommandIdentifier:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_recognizers count])
  {
    v5 = [(CACSpokenCommandManager *)self _templateSpokenCommandWithIdentifier:v4];
    v6 = [v5 strings];
    v7 = [v6 firstObject];
  }

  else
  {
    v5 = +[CACPreferences sharedPreferences];
    v8 = [v5 bestLocaleIdentifier];
    v6 = [v5 propertiesForCommandIdentifier:v4 localeIdentifier:v8];

    v9 = [v6 objectForKey:@"BuiltInStrings"];
    v7 = [v9 firstObject];
  }

  return v7;
}

- (void)_clearPreviousTextInsertionSpecifierBasedOnExecutedCommand:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (_clearPreviousTextInsertionSpecifierBasedOnExecutedCommand__sPotentiallyDestructiveCommandsSetInit != -1)
  {
    [CACSpokenCommandManager _clearPreviousTextInsertionSpecifierBasedOnExecutedCommand:];
    v4 = v7;
  }

  v5 = _clearPreviousTextInsertionSpecifierBasedOnExecutedCommand__sPotentiallyDestructiveCommandsSet;
  v6 = [v4 identifier];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    [(CACSpokenCommandManager *)self setPreviousTextInsertionSpecifier:0];
  }
}

uint64_t __86__CACSpokenCommandManager__clearPreviousTextInsertionSpecifierBasedOnExecutedCommand___block_invoke()
{
  _clearPreviousTextInsertionSpecifierBasedOnExecutedCommand__sPotentiallyDestructiveCommandsSet = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"System.Cut", @"Text.EditingCompletion", @"System.KeyTab", @"System.Paste", @"System.Shake", @"System.Undo", @"Text.DeleteSelection", @"Text.DeleteAll", @"Text.DeletePhrase", @"Text.DeleteCurrentCharacter", @"Text.DeleteCurrentLine", @"Text.DeleteCurrentParagraph", @"Text.DeleteCurrentSentence", @"Text.DeleteCurrentWord", @"Text.DeleteNextCharacter", @"Text.DeleteNextCharactersUsingCardinalNumber", @"Text.DeleteNextLine", @"Text.DeleteNextLinesUsingCardinalNumber", @"Text.DeleteNextParagraph", @"Text.DeleteNextParagraphsUsingCardinalNumber", @"Text.DeleteNextSentence", @"Text.DeleteNextSentencesUsingCardinalNumber", @"Text.DeleteNextWord", @"Text.DeleteNextWordsUsingCardinalNumber", @"Text.DeletePreviousCharacter", @"Text.DeletePreviousCharactersUsingCardinalNumber", @"Text.DeletePreviousLine", @"Text.DeletePreviousLinesUsingCardinalNumber", @"Text.DeletePreviousParagraph", @"Text.DeletePreviousParagraphsUsingCardinalNumber", @"Text.DeletePreviousSentence", @"Text.DeletePreviousSentencesUsingCardinalNumber", @"Text.DeletePreviousWord", @"Text.DeletePreviousWordsUsingCardinalNumber", 0}];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_isSystemSleeping
{
  v2 = [MEMORY[0x277CE7E50] server];
  if ([v2 isSystemSleeping])
  {
    v3 = +[CACDisplayManager sharedManager];
    v4 = [v3 carPlayConnected] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_closeAllRecognizers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_recognizers;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_recognizers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) speechRecognizer];
        [v8 closeSpeechRecognizer];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_recognizers removeAllObjects];
  objc_sync_exit(v3);
}

- (void)handleSRSystemServerError
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__CACSpokenCommandManager_handleSRSystemServerError__block_invoke;
  v2[3] = &unk_279CEB2D0;
  v2[4] = self;
  [(CACSpokenCommandManager *)self performOnRecognizerSynchronizationDispatchQueueIfRunning:v2];
}

uint64_t __52__CACSpokenCommandManager_handleSRSystemServerError__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopListening];
  [*(a1 + 32) _flushBuiltInLMIdentifierTable];
  [*(a1 + 32) _closeAllRecognizers];
  +[CACSpeechSystem closeSpeechSystem];
  v2 = *(a1 + 32);

  return [v2 _startListening];
}

- (BOOL)doesCurrentLanguageSupportInterWordSpaces
{
  v2 = +[CACPreferences sharedPreferences];
  [v2 bestLocaleIdentifier];
  v3 = RXIsLocaleWithNoSpaceInPostITN();

  return v3 ^ 1;
}

- (void)_handleLanguageChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__CACSpokenCommandManager__handleLanguageChange__block_invoke;
  v2[3] = &unk_279CEB2D0;
  v2[4] = self;
  [(CACSpokenCommandManager *)self performOnRecognizerSynchronizationDispatchQueueIfRunning:v2];
}

void __48__CACSpokenCommandManager__handleLanguageChange__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 289) = 0;
  [*(a1 + 32) _resetRecognitionSystems];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CACSpokenCommandManager__handleLanguageChange__block_invoke_2;
  block[3] = &unk_279CEB2D0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __48__CACSpokenCommandManager__handleLanguageChange__block_invoke_2(uint64_t a1)
{
  v2 = +[CACDisplayManager sharedManager];
  [v2 displayReadyToUseWithLanguageMessage];

  v3 = *(a1 + 32);

  return [v3 _updateAssetPurgeability];
}

- (void)_resetRecognitionSystems
{
  [(CACSpokenCommandManager *)self _stopListening];
  [(CACSpokenCommandManager *)self _flushBuiltInLMIdentifierTable];
  [(CACSpokenCommandManager *)self _closeAllRecognizers];
  +[CACSpeechSystem closeSpeechSystem];
  +[CACEmojiManager resetSharedManager];
  if (self->_dictationRecognizerMode == 3)
  {
    self->_dictationRecognizerMode = 0;
  }

  [(CACSpokenCommandManager *)self _startListening];
}

- (void)startListening
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__CACSpokenCommandManager_startListening__block_invoke;
  v2[3] = &unk_279CEB2D0;
  v2[4] = self;
  [(CACSpokenCommandManager *)self performOnRecognizerSynchronizationDispatchQueueIfRunning:v2];
}

- (void)_startListening
{
  if (!self->_isListening)
  {
    block[7] = v2;
    block[8] = v3;
    self->_isListening = 1;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_startedListeningTimeStamp = v5;
    [(CACSpokenCommandManager *)self _intializeBuiltInLMIdentifierTableIfNecessary];
    [(CACSpokenCommandManager *)self _createCommandRecognizersIfNecessary];
    [(CACSpokenCommandManager *)self synchronizeRecognizersWithReason:kSRUISyncReasonStartedListening];
    [(CACSpokenCommandManager *)self _handlePendingCommands];
    if (CFPreferencesGetAppIntegerValue(@"RXDebugAutomationMode", @"com.apple.SpeechRecognitionCore.speechrecognitiond", 0) >= 1)
    {
      v6 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__CACSpokenCommandManager__startListening__block_invoke;
      block[3] = &unk_279CEB2D0;
      block[4] = self;
      dispatch_after(v6, MEMORY[0x277D85CD0], block);
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"CACSpokenCommandManagerStartedListening" object:0];
  }
}

- (void)stopListening
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__CACSpokenCommandManager_stopListening__block_invoke;
  v2[3] = &unk_279CEB2D0;
  v2[4] = self;
  [(CACSpokenCommandManager *)self performOnRecognizerSynchronizationDispatchQueueIfRunning:v2];
}

- (void)_stopListening
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_isListening)
  {
    self->_isListening = 0;
    v3 = self->_recognizers;
    objc_sync_enter(v3);
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_recognizers;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7++) stopListening];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    objc_sync_exit(v3);
    if ([(CACSpokenCommandManager *)self currentInteractionLevel]!= 1)
    {
      [(CACSpokenCommandManager *)self _resetInteractionLevel];
    }

    [(CACSpokenCommandManager *)self updateStatusIndicatorView];
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_974);
  }
}

void __41__CACSpokenCommandManager__stopListening__block_invoke()
{
  v0 = +[CACDisplayManager sharedManager];
  [v0 hideAnyOverlay];
}

- (id)copySupportedCommandWithIdentifier:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = self->_recognizers;
  objc_sync_enter(v17);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_recognizers;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v19 = *v26;
    v20 = 0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v7 spokenCommands];
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = *v22;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v21 + 1) + 8 * j);
              v13 = [v12 identifier];
              v14 = [v4 isEqualToString:v13];

              if (v14)
              {
                v15 = [v12 copy];

                v20 = v15;
                goto LABEL_16;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v20 = 0;
  }

  objc_sync_exit(v17);
  return v20;
}

- (void)_handlePendingCommands
{
  while ([(NSMutableArray *)self->_pendingCommandToExecute count])
  {
    v3 = [(NSMutableArray *)self->_pendingCommandToExecute objectAtIndexedSubscript:0];
    v4 = [(CACSpokenCommandManager *)self _templateSpokenCommandWithIdentifier:v3];
    if (v4)
    {
      v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      [v5 handleRecognizedCommand:v4];
    }

    [(NSMutableArray *)self->_pendingCommandToExecute removeObjectAtIndex:0];
  }
}

- (void)handleCommandWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CACSpokenCommandManager_handleCommandWithIdentifier___block_invoke;
  v6[3] = &unk_279CEB4C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

_BYTE *__55__CACSpokenCommandManager_handleCommandWithIdentifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 240) addObject:*(a1 + 40)];
  result = *(a1 + 32);
  if (result[272] == 1)
  {

    return [result _handlePendingCommands];
  }

  return result;
}

- (id)synchronousRecognitionOfString:(id)a3 timeoutInterval:(double)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__CACSpokenCommandManager_synchronousRecognitionOfString_timeoutInterval___block_invoke;
  v12[3] = &unk_279CEBD78;
  v12[4] = &v13;
  [(CACSpokenCommandManager *)self _startSynchronousRemoteRecognitionWithCompletionBlock:v12];
  [CACSpeechSystem recognizeString:v6];
  if (!v14[5])
  {
    while (1)
    {
      usleep(0xF4240u);
      a4 = a4 + -1.0;
      v7 = v14[5];
      if (a4 <= 0.0)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_7;
      }
    }

    if (!v7)
    {
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Timed out!", @"ERROR:", 0}];
      v9 = v14[5];
      v14[5] = v8;
    }
  }

LABEL_7:
  [(CACSpokenCommandManager *)self _cancelSynchronousRemoteRecognition];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __74__CACSpokenCommandManager_synchronousRecognitionOfString_timeoutInterval___block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = objc_opt_new();
        v11 = [v9 identifier];
        [v10 setObject:v11 forKey:@"CommandIdentifier"];

        v12 = [v9 recognizedParameters];
        v13 = [v12 objectForKey:kCACCommandParameterText];

        if (v13)
        {
          v14 = [v9 recognizedParameters];
          v15 = [v14 objectForKey:kCACCommandParameterText];
          [v10 setObject:v15 forKey:@"RecognizedText"];
        }

        [v4 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v16 = [v4 count];
  v17 = MEMORY[0x277CBEAC0];
  if (v16)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v19 = [v17 dictionaryWithObjectsAndKeys:{v4, @"CommandInfoDictionaries", v18, @"WasCloseResult", 0}];
    v20 = *(*(a1 + 32) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  else
  {
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Timed out!", @"ERROR:", 0}];
    v23 = *(*(a1 + 32) + 8);
    v18 = *(v23 + 40);
    *(v23 + 40) = v22;
  }
}

- (id)synchronousRecognitionUsingCommandIdentifier:(id)a3 parameters:(id)a4 timeoutInterval:(double)a5
{
  v39[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = CACLogRecognition();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CACSpokenCommandManager synchronousRecognitionUsingCommandIdentifier:v8 parameters:v9 timeoutInterval:v10];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v11 = [(CACSpokenCommandManager *)self copySupportedCommandWithIdentifier:v8];
  if ([CACSpokenCommandManager commandIdentifierIsDictation:v8])
  {
    v12 = +[CACDisplayManager sharedManager];
    [v12 hideAnyNonInteractiveOverlay];

    v13 = [v9 firstObject];

    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = [v9 firstObject];
    [(CACSpokenCommandManager *)self insertDictatedString:v14];

    sleep(1u);
    v15 = objc_opt_new();
    [v15 setObject:v8 forKey:@"CommandIdentifier"];
    v16 = [v9 firstObject];
    [v15 setObject:v16 forKey:@"RecognizedText"];

    v17 = MEMORY[0x277CBEAC0];
    v39[0] = v15;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v20 = [v17 dictionaryWithObjectsAndKeys:{v18, @"CommandInfoDictionaries", v19, @"WasCloseResult", 0}];
    v21 = v34[5];
    v34[5] = v20;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __99__CACSpokenCommandManager_synchronousRecognitionUsingCommandIdentifier_parameters_timeoutInterval___block_invoke;
    v32[3] = &unk_279CEBD78;
    v32[4] = &v33;
    [(CACSpokenCommandManager *)self _startSynchronousRemoteRecognitionWithCompletionBlock:v32];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __99__CACSpokenCommandManager_synchronousRecognitionUsingCommandIdentifier_parameters_timeoutInterval___block_invoke_2;
    v27[3] = &unk_279CEBD28;
    v28 = v8;
    v29 = v9;
    v30 = v11;
    v31 = self;
    [(CACSpokenCommandManager *)self performOnRecognizerSynchronizationDispatchQueueIfRunning:v27];
    if (!v34[5])
    {
      while (1)
      {
        usleep(0xF4240u);
        a5 = a5 + -1.0;
        v22 = v34[5];
        if (a5 <= 0.0)
        {
          break;
        }

        if (v22)
        {
          goto LABEL_13;
        }
      }

      if (!v22)
      {
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Timed out!", @"ERROR:", 0}];
        v24 = v34[5];
        v34[5] = v23;
      }
    }

LABEL_13:
    [(CACSpokenCommandManager *)self _cancelSynchronousRemoteRecognition];

    v15 = v28;
  }

LABEL_15:
  v25 = v34[5];

  _Block_object_dispose(&v33, 8);

  return v25;
}

void __99__CACSpokenCommandManager_synchronousRecognitionUsingCommandIdentifier_parameters_timeoutInterval___block_invoke(uint64_t a1, void *a2, unsigned int a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = objc_opt_new();
        v11 = [v9 identifier];
        [v10 setObject:v11 forKey:@"CommandIdentifier"];

        v12 = [v9 recognizedParameters];
        v13 = [v12 objectForKey:kCACCommandParameterText];

        if (v13)
        {
          v14 = [v9 recognizedParameters];
          v15 = [v14 objectForKey:kCACCommandParameterText];
          [v10 setObject:v15 forKey:@"RecognizedText"];
        }

        [v4 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v16 = [v4 count];
  v17 = MEMORY[0x277CBEAC0];
  if (v16)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v19 = [v17 dictionaryWithObjectsAndKeys:{v4, @"CommandInfoDictionaries", v18, @"WasCloseResult", 0}];
    v20 = *(*(a1 + 32) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  else
  {
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Timed out!", @"ERROR:", 0}];
    v23 = *(*(a1 + 32) + 8);
    v18 = *(v23 + 40);
    *(v23 + 40) = v22;
  }
}

void __99__CACSpokenCommandManager_synchronousRecognitionUsingCommandIdentifier_parameters_timeoutInterval___block_invoke_2(id *a1)
{
  v129 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
  v3 = [v2 commandStringsTableForLocaleIdentifier:@"en_US"];

  v4 = a1[4];
  v5 = [MEMORY[0x277D65598] activeTargetTypes];
  v6 = [v3 unparsedCommandTextForCommandIdentifier:v4 targetTypes:v5];

  if ([a1[4] isEqualToString:@"System.SwitchToApplication"])
  {
    v7 = [a1[5] firstObject];
    if (v7)
    {
      v86 = a1;
      v89 = v6;
      v91 = v3;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      obj = +[CACApplicationUtilities runningApplications];
      v8 = [obj countByEnumeratingWithState:&v102 objects:v128 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v103;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v103 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v102 + 1) + 8 * i);
            v13 = [v12 objectForKey:kCACCommandParameterAppName];
            v14 = [v13 lowercaseString];
            v15 = [v7 lowercaseString];
            v16 = [v14 isEqualToString:v15];

            if (v16)
            {
              v30 = [MEMORY[0x277CBEB38] dictionary];
              v126 = @"MatchingApps";
              v124[0] = v7;
              v123[0] = @"TargetAppName";
              v123[1] = @"TargetAppIdentifier";
              v31 = [v12 objectForKey:kCACCommandParameterAppIdentifier];
              v124[1] = v31;
              v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
              v125 = v32;
              v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
              v127 = v33;
              v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
              [v30 setObject:v34 forKey:@"BuiltInLM.SwitchableApplication"];

              v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v86[4], v7];
              [v30 setObject:v35 forKey:@"Text"];

              [v86[6] setRecognizedParameters:v30];
              [v86[7] handleRecognizedCommand:v86[6]];

              goto LABEL_37;
            }
          }

          v9 = [obj countByEnumeratingWithState:&v102 objects:v128 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_37:

LABEL_38:
      v6 = v89;
      v3 = v91;
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if ([v6 rangeOfString:*MEMORY[0x277D65628]] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v6 rangeOfString:*MEMORY[0x277D655F8]] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v6 rangeOfString:@"BuiltInLM.Dictation"] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "rangeOfString:", @"BuiltInLM.Dictation.2") == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v6 rangeOfString:@"BuiltInLM.Dictation"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v106 = @"Text";
          v17 = [a1[6] strings];
          v18 = [v17 firstObject];
          v107 = v18;
          v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        }

        else
        {
          v7 = [MEMORY[0x277CBEB38] dictionary];
          v46 = [a1[5] firstObject];

          if (v46)
          {
            v109[0] = @"Text";
            v47 = [a1[5] firstObject];
            v109[1] = @"TextVariants";
            v110[0] = v47;
            v48 = [a1[5] firstObject];
            v108 = v48;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
            v50 = v49 = v6;
            v110[1] = v50;
            v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];
            [v7 setObject:v51 forKey:@"BuiltInLM.Dictation"];

            v6 = v49;
          }

          v52 = MEMORY[0x277CCACA8];
          v53 = a1[4];
          v54 = [a1[5] firstObject];
          v55 = [v52 stringWithFormat:@"%@:%@", v53, v54];
          [v7 setObject:v55 forKey:@"Text"];
        }
      }

      else
      {
        v7 = [MEMORY[0x277CBEB38] dictionary];
        if ([a1[5] count] == 2)
        {
          v115[0] = @"Text";
          [a1[5] firstObject];
          v90 = v6;
          v60 = v59 = v7;
          v115[1] = @"TextVariants";
          v116[0] = v60;
          v61 = [a1[5] firstObject];
          v114 = v61;
          v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
          v116[1] = v62;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
          v64 = v63 = a1;
          [v59 setObject:v64 forKey:@"BuiltInLM.Dictation"];

          v112[0] = @"Text";
          v65 = [v63[5] objectAtIndex:1];
          v112[1] = @"TextVariants";
          v113[0] = v65;
          v66 = [v63[5] objectAtIndex:1];
          v111 = v66;
          v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
          v113[1] = v67;
          v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
          [v59 setObject:v68 forKey:@"BuiltInLM.Dictation.2"];

          a1 = v63;
          v69 = MEMORY[0x277CCACA8];
          v70 = v63[4];
          v71 = [v63[5] firstObject];
          v72 = [v63[5] objectAtIndex:1];
          v73 = [v69 stringWithFormat:@"%@:%@, %@", v70, v71, v72];
          [v59 setObject:v73 forKey:@"Text"];

          v6 = v90;
          v7 = v59;
        }
      }

      [a1[6] setRecognizedParameters:v7];
      [a1[7] handleRecognizedCommand:a1[6]];
      goto LABEL_39;
    }

    v7 = [a1[5] firstObject];
    if (!v7)
    {
      goto LABEL_39;
    }

    v36 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v37 = [v36 isActiveOverlayType:@"NumberedGrid"];

    v89 = v6;
    v91 = v3;
    v88 = a1;
    if (v37)
    {
      v38 = +[CACDisplayManager sharedManager];
      v39 = [v38 labeledElementsForGrid];
    }

    else
    {
      v56 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v57 = [v56 isActiveOverlayType:@"NumberedElements"];

      if (!v57)
      {
        v58 = 0;
        goto LABEL_50;
      }

      v38 = +[CACDisplayManager sharedManager];
      v39 = [v38 labeledElementsForItemNumbers];
    }

    v58 = v39;

LABEL_50:
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    obja = v58;
    v74 = [obja countByEnumeratingWithState:&v94 objects:v119 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v95;
      while (2)
      {
        for (j = 0; j != v75; ++j)
        {
          if (*v95 != v76)
          {
            objc_enumerationMutation(obja);
          }

          v78 = *(*(&v94 + 1) + 8 * j);
          v79 = [v78 numberedLabelForRecognition];
          v80 = [v79 lowercaseString];
          v81 = [v7 lowercaseString];
          v82 = [v80 isEqualToString:v81];

          if (v82)
          {
            v83 = [MEMORY[0x277CBEB38] dictionary];
            v117[0] = @"Text";
            v117[1] = kCACCommandParameterLabeledElement;
            v118[0] = v7;
            v118[1] = v78;
            v84 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];
            [v83 setObject:v84 forKey:*MEMORY[0x277D655F8]];

            v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v88[4], v7];
            [v83 setObject:v85 forKey:@"Text"];

            [v88[6] setRecognizedParameters:v83];
            [v88[7] handleRecognizedCommand:v88[6]];

            goto LABEL_60;
          }
        }

        v75 = [obja countByEnumeratingWithState:&v94 objects:v119 count:16];
        if (v75)
        {
          continue;
        }

        break;
      }
    }

LABEL_60:

    goto LABEL_38;
  }

  v7 = [a1[5] firstObject];
  if (v7)
  {
    v89 = v6;
    v91 = v3;
    v87 = a1;
    v19 = [*(a1[7] + 31) copyTableOfCollectedElementsByTitle];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v19;
    v20 = [v19 allKeys];
    v21 = [v20 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v22 = [v21 countByEnumeratingWithState:&v98 objects:v122 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v99;
      while (2)
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v99 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v98 + 1) + 8 * k);
          v27 = [v26 lowercaseString];
          v28 = [v7 lowercaseString];
          v29 = [v27 isEqualToString:v28];

          if (v29)
          {
            v40 = [obj objectForKey:v26];
            if ([v40 count])
            {
              v41 = [v40 objectAtIndex:0];
              if (v41)
              {
                v42 = v41;
                v43 = [MEMORY[0x277CBEB38] dictionary];
                v120[0] = @"Text";
                v120[1] = kCACCommandParameterLabeledElement;
                v121[0] = v7;
                v121[1] = v42;
                v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];
                [v43 setObject:v44 forKey:*MEMORY[0x277D65628]];

                v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v87[4], v7];
                [v43 setObject:v45 forKey:@"Text"];

                [v87[6] setRecognizedParameters:v43];
                [v87[7] handleRecognizedCommand:v87[6]];
              }
            }

            goto LABEL_36;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v98 objects:v122 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

LABEL_39:
}

- (id)allCustomCommandsDetail
{
  v96 = *MEMORY[0x277D85DE8];
  v76 = [MEMORY[0x277CBEB18] array];
  v2 = +[CACPreferences sharedPreferences];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v3 = [v2 bestLocaleIdentifier];
  v4 = [v2 commandIdentifiersForCommandSetIdentifier:@"Custom" localeIdentifier:v3];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v88 objects:v95 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @"Identifier";
    v8 = *v89;
    v9 = @"CustomCommands";
    v72 = v2;
    v64 = *v89;
    do
    {
      v10 = 0;
      v65 = v6;
      do
      {
        if (*v89 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v78 = v10;
        v11 = *(*(&v88 + 1) + 8 * v10);
        v12 = objc_alloc(MEMORY[0x277CBEB38]);
        v13 = [v2 propertiesForCommandIdentifier:v11];
        v14 = [v12 initWithDictionary:v13];

        [v14 setObject:v11 forKey:v7];
        v15 = [v14 objectForKey:v9];
        v16 = [v2 bestLocaleIdentifier];
        v17 = [v15 objectForKey:v16];
        v18 = [v17 firstObject];

        v19 = v14;
        if (v18)
        {
          [v14 setObject:v18 forKey:@"UnparsedString"];
        }

        v20 = [v14 objectForKey:{@"CustomType", v64}];
        if ([v20 isEqualToString:@"PasteText"])
        {
          v21 = [v19 objectForKey:@"CustomTextToInsert"];
          if (v21)
          {
            v22 = [v19 objectForKey:@"CustomTextToInsert"];
            [v19 setObject:v22 forKey:@"InsertionText"];
          }

          else
          {
            [v19 setObject:&stru_287BD8610 forKey:@"InsertionText"];
          }
        }

        else
        {
          if ([v20 isEqualToString:@"PasteBoard"])
          {
            goto LABEL_39;
          }

          if ([v20 isEqualToString:@"RunShortcutsWorkflow"])
          {
            v23 = v6;
            v24 = v9;
            v25 = v8;
            v26 = v7;
            v27 = [v19 objectForKey:@"CustomShortcutsWorkflow"];
            if (v27)
            {
              v28 = [v19 objectForKey:@"CustomShortcutsWorkflow"];
              [v19 setObject:v28 forKey:@"ShortcutIdentifier"];
            }

            else
            {
              [v19 setObject:&stru_287BD8610 forKey:@"ShortcutIdentifier"];
            }

            v21 = v27;
            v7 = v26;
            v8 = v25;
            v9 = v24;
            v6 = v23;
            v2 = v72;
          }

          else if ([v20 isEqualToString:@"RunGesture"])
          {
            v67 = v18;
            v29 = MEMORY[0x277CCAAC8];
            v30 = objc_opt_class();
            [v19 objectForKeyedSubscript:@"CustomGesture"];
            v32 = v31 = v19;
            v87 = 0;
            v33 = [v29 unarchivedObjectOfClass:v30 fromData:v32 error:&v87];
            v21 = v87;

            if (v33)
            {
              v68 = v21;
              v70 = v31;
              v66 = v20;
              v34 = objc_opt_new();
              if ([v33 numberOfEvents])
              {
                v35 = 0;
                v74 = v34;
                do
                {
                  v36 = objc_opt_new();
                  v37 = MEMORY[0x277CBEAA8];
                  [v33 timeAtEventIndex:v35];
                  v38 = [v37 dateWithTimeIntervalSinceReferenceDate:?];
                  v77 = v36;
                  [v36 setObject:v38 forKey:@"GestureEventDate"];

                  v81 = objc_opt_new();
                  v83 = 0u;
                  v84 = 0u;
                  v85 = 0u;
                  v86 = 0u;
                  v79 = [v33 fingerIdentifiersAtEventIndex:v35];
                  v39 = [v79 countByEnumeratingWithState:&v83 objects:v94 count:16];
                  if (v39)
                  {
                    v40 = v39;
                    v80 = *v84;
                    do
                    {
                      for (i = 0; i != v40; ++i)
                      {
                        if (*v84 != v80)
                        {
                          objc_enumerationMutation(v79);
                        }

                        v42 = *(*(&v83 + 1) + 8 * i);
                        v43 = objc_opt_new();
                        [v43 setObject:v42 forKey:@"FingerIdentifier"];
                        [v33 pointForFingerIdentifier:v42 atEventIndex:v35];
                        v45 = v44;
                        v92[0] = @"x";
                        *&v46 = v46;
                        v47 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
                        v92[1] = @"y";
                        v93[0] = v47;
                        *&v48 = v45;
                        v49 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
                        v93[1] = v49;
                        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
                        [v43 setObject:v50 forKey:@"FingerPoint"];

                        v51 = MEMORY[0x277CCABB0];
                        [v33 forceForFingerIdentifier:v42 atEventIndex:v35];
                        *&v52 = v52;
                        v53 = [v51 numberWithFloat:v52];
                        [v43 setObject:v53 forKey:@"FingerForce"];

                        [v81 addObject:v43];
                      }

                      v40 = [v79 countByEnumeratingWithState:&v83 objects:v94 count:16];
                    }

                    while (v40);
                  }

                  [v77 setObject:v81 forKey:@"GestureEventFingers"];
                  v34 = v74;
                  [v74 addObject:v77];

                  ++v35;
                }

                while (v35 < [v33 numberOfEvents]);
              }

              v19 = v70;
              [v70 setObject:v34 forKey:@"GestureEvents"];
              v2 = v72;
              v7 = @"Identifier";
              v8 = v64;
              v6 = v65;
              v9 = @"CustomCommands";
              v20 = v66;
              v21 = v68;
            }

            else
            {
              v75 = [v21 localizedDescription];
              [v31 setObject:v75 forKey:@"GesturesError"];
              v19 = v31;
              v34 = v75;
            }

            v18 = v67;
          }

          else
          {
            if (![v20 isEqualToString:@"RunUserActionFlow"])
            {
              goto LABEL_39;
            }

            v54 = MEMORY[0x277CCAAC8];
            v55 = objc_opt_class();
            [v19 objectForKeyedSubscript:@"CustomUserActionFlow"];
            v56 = v71 = v19;
            v82 = 0;
            v57 = [v54 unarchivedObjectOfClass:v55 fromData:v56 error:&v82];
            v58 = v82;

            v69 = v58;
            if (v57)
            {
              v59 = [v57 plistDescription];
              v19 = v71;
              v60 = v71;
              v61 = v59;
              v62 = @"UserActionFlow";
            }

            else
            {
              v59 = [v58 localizedDescription];
              v19 = v71;
              v60 = v71;
              v61 = v59;
              v62 = @"UserActionFlowError";
            }

            [v60 setObject:v61 forKey:v62];

            v21 = v69;
          }
        }

LABEL_39:
        [v76 addObject:v19];

        v10 = v78 + 1;
      }

      while (v78 + 1 != v6);
      v6 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
    }

    while (v6);
  }

  return v76;
}

- (id)allCommandsForLocaleIdentifier:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v47 = [MEMORY[0x277CBEB18] array];
  v48 = [MEMORY[0x277CBEB38] dictionary];
  v49 = +[CACPreferences sharedPreferences];
  v4 = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
  v43 = v3;
  v42 = [v4 commandStringsTableForLocaleIdentifier:v3];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v5 = [objc_opt_class() _allCommandIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v63;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v63 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v62 + 1) + 8 * i);
        v11 = [objc_opt_class() commandPropertiesForIdentifier:v10];
        v12 = [v11 mutableCopy];

        [v12 setObject:v10 forKey:@"Identifier"];
        [v48 setObject:v12 forKey:v10];
        v13 = [MEMORY[0x277D65598] activeTargetTypes];
        v14 = [v42 unparsedCommandTextForCommandIdentifier:v10 targetTypes:v13];

        if (v14)
        {
          [v12 setObject:v14 forKey:@"UnparsedString"];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v7);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v15 = [v49 bestLocaleIdentifier];
  v16 = [v49 commandIdentifiersForCommandSetIdentifier:@"Custom" localeIdentifier:v15];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v59;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v58 + 1) + 8 * j);
        v22 = objc_alloc(MEMORY[0x277CBEB38]);
        v23 = [v49 propertiesForCommandIdentifier:v21];
        v24 = [v22 initWithDictionary:v23];

        [v24 setObject:v21 forKey:@"Identifier"];
        v25 = [v24 objectForKey:@"CustomCommands"];
        v26 = [v49 bestLocaleIdentifier];
        v27 = [v25 objectForKey:v26];
        v28 = [v27 firstObject];

        if (v28)
        {
          [v24 setObject:v28 forKey:@"UnparsedString"];
        }

        [v48 setObject:v24 forKey:v21];
      }

      v18 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v18);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v40 = [v49 availableCommandSetIdentifiers];
  v44 = [v40 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v44)
  {
    v41 = *v55;
    do
    {
      v29 = 0;
      do
      {
        if (*v55 != v41)
        {
          objc_enumerationMutation(v40);
        }

        obja = v29;
        v30 = *(*(&v54 + 1) + 8 * v29);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v31 = [v49 commandIdentifiersForCommandSetIdentifier:v30 localeIdentifier:v43];
        v32 = [v31 countByEnumeratingWithState:&v50 objects:v66 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v51;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v51 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v50 + 1) + 8 * k);
              v37 = [v48 objectForKey:v36];
              [v47 addObject:v37];
              [v37 setObject:v30 forKey:@"CommandSet"];
              v38 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v49, "isEnabledForCommandIdentifier:", v36)}];
              [v37 setObject:v38 forKey:@"Enabled"];
            }

            v33 = [v31 countByEnumeratingWithState:&v50 objects:v66 count:16];
          }

          while (v33);
        }

        v29 = obja + 1;
      }

      while (obja + 1 != v44);
      v44 = [v40 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v44);
  }

  return v47;
}

- (id)groupedCommandsForLocaleIdentifier:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v46 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = +[CACPreferences sharedPreferences];
  v6 = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
  v45 = v3;
  v44 = [v6 commandStringsTableForLocaleIdentifier:v3];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [objc_opt_class() _allCommandIdentifiers];
  v7 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v63;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v63 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v62 + 1) + 8 * i);
        v12 = [objc_opt_class() commandPropertiesForIdentifier:v11];
        v13 = [v12 mutableCopy];

        [v13 setObject:v11 forKey:@"Identifier"];
        [v4 setObject:v13 forKey:v11];
        v14 = [MEMORY[0x277D65598] activeTargetTypes];
        v15 = [v44 unparsedCommandTextForCommandIdentifier:v11 targetTypes:v14];

        if (v15)
        {
          [v13 setObject:v15 forKey:@"UnparsedString"];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v8);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v16 = [v5 bestLocaleIdentifier];
  v17 = [v5 commandIdentifiersForCommandSetIdentifier:@"Custom" localeIdentifier:v16];

  v42 = v17;
  v18 = [v17 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v18)
  {
    v19 = v18;
    obja = *v59;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v59 != obja)
        {
          objc_enumerationMutation(v42);
        }

        v21 = *(*(&v58 + 1) + 8 * j);
        v22 = objc_alloc(MEMORY[0x277CBEB38]);
        v23 = [v5 propertiesForCommandIdentifier:v21];
        v24 = [v22 initWithDictionary:v23];

        [v24 setObject:v21 forKey:@"Identifier"];
        v25 = [v24 objectForKey:@"CustomCommands"];
        v26 = [v5 bestLocaleIdentifier];
        v27 = [v25 objectForKey:v26];
        v28 = [v27 firstObject];

        if (v28)
        {
          [v24 setObject:v28 forKey:@"UnparsedString"];
        }

        [v4 setObject:v24 forKey:v21];
      }

      v19 = [v42 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v19);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v41 = [v5 availableCommandSetIdentifiers];
  objb = [v41 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (objb)
  {
    v43 = *v55;
    do
    {
      for (k = 0; k != objb; k = k + 1)
      {
        if (*v55 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v30 = *(*(&v54 + 1) + 8 * k);
        v31 = [MEMORY[0x277CBEB38] dictionary];
        [v31 setObject:v30 forKey:@"Identifier"];
        v32 = [v5 displayNameForCommandSetIdentifier:v30];
        [v31 setObject:v32 forKey:@"Text"];

        v33 = [MEMORY[0x277CBEB18] array];
        [v31 setObject:v33 forKey:@"Commands"];
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v34 = [v5 commandIdentifiersForCommandSetIdentifier:v30 localeIdentifier:v45];
        v35 = [v34 countByEnumeratingWithState:&v50 objects:v66 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v51;
          do
          {
            for (m = 0; m != v36; ++m)
            {
              if (*v51 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = [v4 objectForKey:*(*(&v50 + 1) + 8 * m)];
              if (v39)
              {
                [v33 addObject:v39];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v50 objects:v66 count:16];
          }

          while (v36);
        }

        [v46 addObject:v31];
      }

      objb = [v41 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (objb);
  }

  return v46;
}

- (id)activeCommandsForLocaleIdentifier:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [(CACSpokenCommandManager *)self allCommandsForLocaleIdentifier:v22];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = [v10 objectForKey:@"Identifier"];
        [v5 setObject:v10 forKey:v11];
      }

      v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }

  v21 = self->_recognizers;
  objc_sync_enter(v21);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_recognizers;
  v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v25)
  {
    v24 = *v32;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * j);
        if ([v12 isListening])
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v13 = [v12 spokenCommands];
          v14 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v14)
          {
            v15 = *v28;
            do
            {
              for (k = 0; k != v14; ++k)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = [*(*(&v27 + 1) + 8 * k) identifier];
                v18 = [v5 objectForKey:v17];

                if (v18)
                {
                  v19 = [v12 type];
                  [v18 setObject:v19 forKey:@"RecognizerType"];

                  [v4 addObject:v18];
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
            }

            while (v14);
          }
        }
      }

      v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v25);
  }

  objc_sync_exit(v21);

  return v4;
}

- (id)_descriptionForAXTextUnit:(unint64_t)a3
{
  if (a3 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279CEBDB0[a3];
  }
}

- (id)contextSummary
{
  v131 = *MEMORY[0x277D85DE8];
  v98 = [MEMORY[0x277CBEB38] dictionary];
  v105 = [MEMORY[0x277CBEB18] array];
  v101 = self;
  v3 = [(CACLabeledElementsCollection *)self->_labeledScreenElementsCollection copyTableOfCollectedElementsByTitle];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v102 = v3;
  v4 = [v3 allKeys];
  v5 = [v4 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  obj = v5;
  v103 = [v5 countByEnumeratingWithState:&v123 objects:v130 count:16];
  if (v103)
  {
    v100 = *v124;
    v6 = 0x277CCA000uLL;
    do
    {
      v7 = 0;
      do
      {
        if (*v124 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v104 = v7;
        v8 = [v102 objectForKey:*(*(&v123 + 1) + 8 * v7)];
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v109 = [v8 countByEnumeratingWithState:&v119 objects:v129 count:16];
        if (v109)
        {
          v106 = *v120;
          do
          {
            for (i = 0; i != v109; ++i)
            {
              if (*v120 != v106)
              {
                objc_enumerationMutation(v8);
              }

              v10 = *(*(&v119 + 1) + 8 * i);
              v11 = [MEMORY[0x277CBEB38] dictionary];
              [v10 rectangle];
              v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%4.0f, %4.0f, %4.0f, %4.0f)", v12, v13, v14, v15];
              [v11 setObject:v16 forKey:@"Rectangle"];

              v17 = v6;
              v18 = [*(v6 + 2992) numberWithInteger:{objc_msgSend(v8, "count")}];
              [v11 setObject:v18 forKey:@"Count"];

              v19 = [v10 element];
              v20 = [v19 recognitionStrings];
              v21 = [v20 firstObject];

              v22 = [v19 application];
              v23 = [v22 recognitionStrings];
              v24 = [v23 firstObject];

              if (v21)
              {
                v25 = v21;
              }

              else
              {
                v25 = &stru_287BD8610;
              }

              [v11 setObject:v25 forKey:@"Text"];
              if (v24)
              {
                v26 = v24;
              }

              else
              {
                v26 = &stru_287BD8610;
              }

              [v11 setObject:v26 forKey:@"AppLabel"];
              v27 = [v19 value];
              if (v27)
              {
                v28 = [v19 value];
                [v11 setObject:v28 forKey:@"Value"];
              }

              else
              {
                [v11 setObject:&stru_287BD8610 forKey:@"Value"];
              }

              v29 = [v10 numberedLabelForRecognition];
              if (v29)
              {
                v30 = [v10 numberedLabelForRecognition];
                [v11 setObject:v30 forKey:@"Number"];
              }

              else
              {
                [v11 setObject:&stru_287BD8610 forKey:@"Number"];
              }

              v6 = v17;
              v31 = [*(v17 + 2992) numberWithLongLong:{objc_msgSend(v19, "traits")}];
              [v11 setObject:v31 forKey:@"Traits"];

              [v105 addObject:v11];
            }

            v109 = [v8 countByEnumeratingWithState:&v119 objects:v129 count:16];
          }

          while (v109);
        }

        v7 = v104 + 1;
      }

      while (v104 + 1 != v103);
      v103 = [obj countByEnumeratingWithState:&v123 objects:v130 count:16];
    }

    while (v103);
  }

  [v98 setObject:v105 forKey:@"Elements"];
  v110 = [MEMORY[0x277CBEB18] array];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v32 = +[CACDisplayManager sharedManager];
  v33 = [v32 _test_activeEditingOverlayElements];

  v107 = v33;
  v34 = [v33 countByEnumeratingWithState:&v115 objects:v128 count:16];
  v35 = v101;
  if (v34)
  {
    v36 = v34;
    v37 = *v116;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v116 != v37)
        {
          objc_enumerationMutation(v107);
        }

        v39 = *(*(&v115 + 1) + 8 * j);
        v40 = [MEMORY[0x277CBEB38] dictionary];
        v41 = [v39 label];
        v42 = v41;
        if (v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = &stru_287BD8610;
        }

        [v40 setObject:v43 forKey:@"label"];

        v133.location = [v39 range];
        v44 = NSStringFromRange(v133);
        v45 = v44;
        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = &stru_287BD8610;
        }

        [v40 setObject:v46 forKey:@"range"];

        v47 = [v39 representedText];
        v48 = v47;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = &stru_287BD8610;
        }

        [v40 setObject:v49 forKey:@"representedText"];

        v50 = [v39 textUnit];
        v35 = v101;
        v51 = [(CACSpokenCommandManager *)v101 _descriptionForAXTextUnit:v50];
        [v40 setObject:v51 forKey:@"type"];

        [v110 addObject:v40];
      }

      v36 = [v107 countByEnumeratingWithState:&v115 objects:v128 count:16];
    }

    while (v36);
  }

  v52 = v98;
  [v98 setObject:v110 forKey:@"OverlayElements"];
  v53 = +[CACApplicationUtilities targetApplications];
  [v98 setObject:v53 forKey:@"Applications"];

  if (v35->_focusedElement)
  {
    v54 = [MEMORY[0x277CBEB38] dictionary];
    v55 = [(AXElement *)v35->_focusedElement recognitionStrings];
    v56 = [v55 firstObject];

    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = &stru_287BD8610;
    }

    [v54 setObject:v57 forKey:@"Text"];
    v58 = [(AXElement *)v35->_focusedElement uiElement];
    v59 = [v58 stringWithAXAttribute:5019];

    if (v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = &stru_287BD8610;
    }

    [v54 setObject:v60 forKey:@"Identifier"];
    v61 = [(AXElement *)v35->_focusedElement value];
    v62 = v61;
    if (v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = &stru_287BD8610;
    }

    [v54 setObject:v63 forKey:@"Value"];
    v64 = [(AXElement *)v35->_focusedElement cacTextOperations];
    if (v64)
    {
      [v54 setObject:v64 forKey:@"AvaiableTextOperations"];
    }

    v65 = [(AXElement *)v35->_focusedElement cacTextSelectionCACTextMarkerRange];
    v66 = MEMORY[0x277CCACA8];
    v67 = [v65 nsRange];
    [v65 nsRange];
    v69 = [v66 stringWithFormat:@"%ld, %ld", v67, v68];
    [v54 setObject:v69 forKey:@"SelectionRange"];

    v70 = [(AXElement *)v35->_focusedElement cacStringForCACTextMarkerRange:v65];
    v71 = v70;
    if (v70)
    {
      v72 = v70;
    }

    else
    {
      v72 = &stru_287BD8610;
    }

    [v54 setObject:v72 forKey:@"SelectedText"];
    [v98 setObject:v54 forKey:@"FocusedTextElement"];
  }

  v73 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v74 = [v73 isActiveOverlayType:@"NumberedElements"];

  if (v74)
  {
    v75 = [MEMORY[0x277CBEB18] array];
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v76 = +[CACDisplayManager sharedManager];
    v77 = [v76 labeledElementsForItemNumbers];

    v108 = v77;
    v78 = [v77 countByEnumeratingWithState:&v111 objects:v127 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v112;
      do
      {
        for (k = 0; k != v79; ++k)
        {
          if (*v112 != v80)
          {
            objc_enumerationMutation(v108);
          }

          v82 = *(*(&v111 + 1) + 8 * k);
          v83 = [MEMORY[0x277CBEB38] dictionary];
          v84 = [v82 numberedLabelForRecognition];
          v85 = v84;
          if (v84)
          {
            v86 = v84;
          }

          else
          {
            v86 = &stru_287BD8610;
          }

          [v83 setObject:v86 forKey:@"Text"];
          [v82 rectangle];
          v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%4.0f, %4.0f, %4.0f, %4.0f)", v87, v88, v89, v90];
          [v83 setObject:v91 forKey:@"Rectangle"];

          [v82 labelRectangle];
          v96 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%4.0f, %4.0f, %4.0f, %4.0f)", v92, v93, v94, v95];
          [v83 setObject:v96 forKey:@"LabelRectangle"];

          [v75 addObject:v83];
        }

        v79 = [v108 countByEnumeratingWithState:&v111 objects:v127 count:16];
      }

      while (v79);
    }

    v52 = v98;
    [v98 setObject:v75 forKey:@"LabeledElements"];
  }

  return v52;
}

- (void)registerSignPostBeginProcessingForSpeechRecognizer:(id)a3 message:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_recognizers;
  objc_sync_enter(v8);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v9 = self->_recognizers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v80;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      v11 += v10;
      do
      {
        if (*v80 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(*(&v79 + 1) + 8 * v13) speechRecognizer];
        v16 = v15 == v6;

        if (v16)
        {
          switch(v14)
          {
            case 0:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v18 = v7;
                v19 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v19;
                v20 = "CAC, CmdRec: Processing recognzer 0.";
                goto LABEL_71;
              }

              break;
            case 1:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v49 = v7;
                v50 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v50;
                v20 = "CAC, CmdRec: Processing recognzer 1.";
                goto LABEL_71;
              }

              break;
            case 2:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v41 = v7;
                v42 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v42;
                v20 = "CAC, CmdRec: Processing recognzer 2.";
                goto LABEL_71;
              }

              break;
            case 3:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v59 = v7;
                v60 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v60;
                v20 = "CAC, CmdRec: Processing recognzer 3.";
                goto LABEL_71;
              }

              break;
            case 4:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v61 = v7;
                v62 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v62;
                v20 = "CAC, CmdRec: Processing recognzer 4.";
                goto LABEL_71;
              }

              break;
            case 5:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v43 = v7;
                v44 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v44;
                v20 = "CAC, CmdRec: Processing recognzer 5.";
                goto LABEL_71;
              }

              break;
            case 6:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v51 = v7;
                v52 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v52;
                v20 = "CAC, CmdRec: Processing recognzer 6.";
                goto LABEL_71;
              }

              break;
            case 7:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v53 = v7;
                v54 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v54;
                v20 = "CAC, CmdRec: Processing recognzer 7.";
                goto LABEL_71;
              }

              break;
            case 8:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v67 = v7;
                v68 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v68;
                v20 = "CAC, CmdRec: Processing recognzer 8.";
                goto LABEL_71;
              }

              break;
            case 9:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v63 = v7;
                v64 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v64;
                v20 = "CAC, CmdRec: Processing recognzer 9.";
                goto LABEL_71;
              }

              break;
            case 10:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v31 = v7;
                v32 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v32;
                v20 = "CAC, CmdRec: Processing recognzer 10.";
                goto LABEL_71;
              }

              break;
            case 11:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v45 = v7;
                v46 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v46;
                v20 = "CAC, CmdRec: Processing recognzer 11.";
                goto LABEL_71;
              }

              break;
            case 12:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v37 = v7;
                v38 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v38;
                v20 = "CAC, CmdRec: Processing recognzer 12.";
                goto LABEL_71;
              }

              break;
            case 13:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v25 = v7;
                v26 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v26;
                v20 = "CAC, CmdRec: Processing recognzer 13.";
                goto LABEL_71;
              }

              break;
            case 14:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v55 = v7;
                v56 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v56;
                v20 = "CAC, CmdRec: Processing recognzer 14.";
                goto LABEL_71;
              }

              break;
            case 15:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v57 = v7;
                v58 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v58;
                v20 = "CAC, CmdRec: Processing recognzer 15.";
                goto LABEL_71;
              }

              break;
            case 16:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v71 = v7;
                v72 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v72;
                v20 = "CAC, CmdRec: Processing recognzer 16.";
                goto LABEL_71;
              }

              break;
            case 17:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v69 = v7;
                v70 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v70;
                v20 = "CAC, CmdRec: Processing recognzer 17.";
                goto LABEL_71;
              }

              break;
            case 18:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v21 = v7;
                v22 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v22;
                v20 = "CAC, CmdRec: Processing recognzer 18.";
                goto LABEL_71;
              }

              break;
            case 19:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v39 = v7;
                v40 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v40;
                v20 = "CAC, CmdRec: Processing recognzer 19.";
                goto LABEL_71;
              }

              break;
            case 20:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v73 = v7;
                v74 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v74;
                v20 = "CAC, CmdRec: Processing recognzer 20.";
                goto LABEL_71;
              }

              break;
            case 21:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v23 = v7;
                v24 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v24;
                v20 = "CAC, CmdRec: Processing recognzer 21.";
                goto LABEL_71;
              }

              break;
            case 22:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v35 = v7;
                v36 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v36;
                v20 = "CAC, CmdRec: Processing recognzer 22.";
                goto LABEL_71;
              }

              break;
            case 23:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v29 = v7;
                v30 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v30;
                v20 = "CAC, CmdRec: Processing recognzer 24.";
                goto LABEL_71;
              }

              break;
            case 25:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v47 = v7;
                v48 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v48;
                v20 = "CAC, CmdRec: Processing recognzer 25.";
                goto LABEL_71;
              }

              break;
            case 26:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v27 = v7;
                v28 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v28;
                v20 = "CAC, CmdRec: Processing recognzer 26.";
                goto LABEL_71;
              }

              break;
            case 27:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v77 = v7;
                v78 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v78;
                v20 = "CAC, CmdRec: Processing recognzer 27.";
                goto LABEL_71;
              }

              break;
            case 28:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v75 = v7;
                v76 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v76;
                v20 = "CAC, CmdRec: Processing recognzer 28.";
                goto LABEL_71;
              }

              break;
            case 29:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v33 = v7;
                v34 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v34;
                v20 = "CAC, CmdRec: Processing recognzer 29.";
                goto LABEL_71;
              }

              break;
            default:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v65 = v7;
                v66 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v66;
                v20 = "CAC, CmdRec: Processing recognzer >= 30.";
LABEL_71:
                _os_signpost_emit_with_name_impl(&dword_26B354000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, v20, "%s", buf, 0xCu);
              }

              break;
          }

          goto LABEL_73;
        }

        ++v14;
        ++v13;
      }

      while (v10 != v13);
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v79 objects:v85 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_73:

  objc_sync_exit(v8);
}

- (void)registerSignPostEndProcessingForSpeechRecognizer:(id)a3 message:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_recognizers;
  objc_sync_enter(v8);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v9 = self->_recognizers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v80;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      v11 += v10;
      do
      {
        if (*v80 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(*(&v79 + 1) + 8 * v13) speechRecognizer];
        v16 = v15 == v6;

        if (v16)
        {
          switch(v14)
          {
            case 0:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v18 = v7;
                v19 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v19;
                v20 = "CAC, CmdRec: Processing recognzer 0.";
                goto LABEL_71;
              }

              break;
            case 1:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v49 = v7;
                v50 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v50;
                v20 = "CAC, CmdRec: Processing recognzer 1.";
                goto LABEL_71;
              }

              break;
            case 2:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v41 = v7;
                v42 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v42;
                v20 = "CAC, CmdRec: Processing recognzer 2.";
                goto LABEL_71;
              }

              break;
            case 3:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v59 = v7;
                v60 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v60;
                v20 = "CAC, CmdRec: Processing recognzer 3.";
                goto LABEL_71;
              }

              break;
            case 4:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v61 = v7;
                v62 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v62;
                v20 = "CAC, CmdRec: Processing recognzer 4.";
                goto LABEL_71;
              }

              break;
            case 5:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v43 = v7;
                v44 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v44;
                v20 = "CAC, CmdRec: Processing recognzer 5.";
                goto LABEL_71;
              }

              break;
            case 6:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v51 = v7;
                v52 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v52;
                v20 = "CAC, CmdRec: Processing recognzer 6.";
                goto LABEL_71;
              }

              break;
            case 7:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v53 = v7;
                v54 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v54;
                v20 = "CAC, CmdRec: Processing recognzer 7.";
                goto LABEL_71;
              }

              break;
            case 8:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v67 = v7;
                v68 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v68;
                v20 = "CAC, CmdRec: Processing recognzer 8.";
                goto LABEL_71;
              }

              break;
            case 9:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v63 = v7;
                v64 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v64;
                v20 = "CAC, CmdRec: Processing recognzer 9.";
                goto LABEL_71;
              }

              break;
            case 10:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v31 = v7;
                v32 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v32;
                v20 = "CAC, CmdRec: Processing recognzer 10.";
                goto LABEL_71;
              }

              break;
            case 11:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v45 = v7;
                v46 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v46;
                v20 = "CAC, CmdRec: Processing recognzer 11.";
                goto LABEL_71;
              }

              break;
            case 12:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v37 = v7;
                v38 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v38;
                v20 = "CAC, CmdRec: Processing recognzer 12.";
                goto LABEL_71;
              }

              break;
            case 13:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v25 = v7;
                v26 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v26;
                v20 = "CAC, CmdRec: Processing recognzer 13.";
                goto LABEL_71;
              }

              break;
            case 14:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v55 = v7;
                v56 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v56;
                v20 = "CAC, CmdRec: Processing recognzer 14.";
                goto LABEL_71;
              }

              break;
            case 15:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v57 = v7;
                v58 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v58;
                v20 = "CAC, CmdRec: Processing recognzer 15.";
                goto LABEL_71;
              }

              break;
            case 16:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v71 = v7;
                v72 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v72;
                v20 = "CAC, CmdRec: Processing recognzer 16.";
                goto LABEL_71;
              }

              break;
            case 17:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v69 = v7;
                v70 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v70;
                v20 = "CAC, CmdRec: Processing recognzer 17.";
                goto LABEL_71;
              }

              break;
            case 18:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v21 = v7;
                v22 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v22;
                v20 = "CAC, CmdRec: Processing recognzer 18.";
                goto LABEL_71;
              }

              break;
            case 19:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v39 = v7;
                v40 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v40;
                v20 = "CAC, CmdRec: Processing recognzer 19.";
                goto LABEL_71;
              }

              break;
            case 20:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v73 = v7;
                v74 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v74;
                v20 = "CAC, CmdRec: Processing recognzer 20.";
                goto LABEL_71;
              }

              break;
            case 21:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v23 = v7;
                v24 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v24;
                v20 = "CAC, CmdRec: Processing recognzer 21.";
                goto LABEL_71;
              }

              break;
            case 22:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v35 = v7;
                v36 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v36;
                v20 = "CAC, CmdRec: Processing recognzer 22.";
                goto LABEL_71;
              }

              break;
            case 23:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v29 = v7;
                v30 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v30;
                v20 = "CAC, CmdRec: Processing recognzer 24.";
                goto LABEL_71;
              }

              break;
            case 25:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v47 = v7;
                v48 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v48;
                v20 = "CAC, CmdRec: Processing recognzer 25.";
                goto LABEL_71;
              }

              break;
            case 26:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v27 = v7;
                v28 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v28;
                v20 = "CAC, CmdRec: Processing recognzer 26.";
                goto LABEL_71;
              }

              break;
            case 27:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v77 = v7;
                v78 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v78;
                v20 = "CAC, CmdRec: Processing recognzer 27.";
                goto LABEL_71;
              }

              break;
            case 28:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v75 = v7;
                v76 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v76;
                v20 = "CAC, CmdRec: Processing recognzer 28.";
                goto LABEL_71;
              }

              break;
            case 29:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v33 = v7;
                v34 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v34;
                v20 = "CAC, CmdRec: Processing recognzer 29.";
                goto LABEL_71;
              }

              break;
            default:
              v17 = RXSignpostLog();
              if (os_signpost_enabled(v17))
              {
                v65 = v7;
                v66 = [v7 UTF8String];
                *buf = 136315138;
                v84 = v66;
                v20 = "CAC, CmdRec: Processing recognzer >= 30.";
LABEL_71:
                _os_signpost_emit_with_name_impl(&dword_26B354000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v20, "%s", buf, 0xCu);
              }

              break;
          }

          goto LABEL_73;
        }

        ++v14;
        ++v13;
      }

      while (v10 != v13);
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v79 objects:v85 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_73:

  objc_sync_exit(v8);
}

- (void)_updateAssetPurgeability
{
  v2 = dispatch_get_global_queue(21, 0);
  dispatch_async(v2, &__block_literal_global_1205);
}

void __51__CACSpokenCommandManager__updateAssetPurgeability__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = +[CACPreferences sharedPreferences];
  v1 = [v0 bestLocaleIdentifier];

  if (v1)
  {
    v5[0] = v1;
    [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    RXObjectSetProperty();
  }

  else
  {
    v2 = CACLogRecognition();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __51__CACSpokenCommandManager__updateAssetPurgeability__block_invoke_cold_1();
    }
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = _AXSAccessibilityPreferenceDomain();
  CFPreferencesSetValue(@"LastPurgabilityUpdate", v3, v4, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
}

- (void)_updateMostRecentLaunchTime
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF010];

  CFPreferencesSetValue(@"LastVoiceControlLaunch", v2, @"com.apple.speech.SpeechRecognitionCommandAndControl", v3, v4);
}

- (void)performOnRecognizerSynchronizationDispatchQueueIfRunning:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_notifyStatusChanged:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_26B354000, v0, OS_LOG_TYPE_DEBUG, "NOT sending notification for status %ld", v1, 0xCu);
}

- (void)_notifyStatusChanged:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_26B354000, v1, OS_LOG_TYPE_DEBUG, "Sending notification %@ for status %ld", v2, 0x16u);
}

- (void)_pushInteractionLevel:referencingObject:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__CACSpokenCommandManager__notifyUserOfSensitiveLogging__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleRecognizedCommand:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 recognizedParameters];
  v4 = [v3 description];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_26B354000, a2, OS_LOG_TYPE_DEBUG, "handleRecognizedCommand recognizedParameters: %@", v5, 0xCu);
}

void __49__CACSpokenCommandManager_dispatchPendingCommand__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_scheduleFetchElementsWithDelay:andReason:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)synchronousRecognitionUsingCommandIdentifier:(uint64_t)a1 parameters:(void *)a2 timeoutInterval:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 description];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_26B354000, a3, OS_LOG_TYPE_DEBUG, "synchronousRecognitionUsingCommandIdentifier: identifier (%@), parameters (%@)", &v6, 0x16u);
}

void __51__CACSpokenCommandManager__updateAssetPurgeability__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end