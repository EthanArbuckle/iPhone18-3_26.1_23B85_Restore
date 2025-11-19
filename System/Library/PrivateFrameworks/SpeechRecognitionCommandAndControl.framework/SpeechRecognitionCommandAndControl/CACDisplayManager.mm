@interface CACDisplayManager
+ (id)sharedManager;
- (BOOL)_hasModalAlert;
- (BOOL)_hasModalAlertWithTitle:(id)a3;
- (BOOL)anyPresentationPreventsDictation;
- (BOOL)isDisplayingAnyContentView;
- (BOOL)isDisplayingAnyInteractiveContentInProcess;
- (BOOL)isDisplayingAnyOutOfProcessPresentation;
- (BOOL)isDisplayingAnyOverlay;
- (BOOL)isDisplayingAnyPresentation;
- (BOOL)isDisplayingConfirmationModalAlert;
- (BOOL)isDisplayingCorrections;
- (BOOL)isGridAtTopLevel;
- (BOOL)labeledElement:(id)a3 isOccludedByPictureInPictureWindow:(id)a4;
- (BOOL)shouldExpandToCharacters;
- (BOOL)shouldExpandToLines;
- (BOOL)shouldExpandToWords;
- (BOOL)updateGridLayoutFromPreferences;
- (BOOL)updateGridWithPortraitUpRect:(CGRect)a3 gridContainingLabel:(id)a4;
- (BOOL)verifyElementExists:(id)a3;
- (CACDisplayManager)init;
- (CACVoiceOverAnnouncer)voiceOverAnnouncer;
- (CGPoint)defaultPortraitUpPointForGestures;
- (CGRect)reorientedRect:(CGRect)a3;
- (UIView)overlayView;
- (UIView)view;
- (_NSRange)targetOverlayRange;
- (id)_carScreenSceneManager;
- (id)_defaultScreenSceneManager;
- (id)_labeledTextSegmentElementsIncludingOnlyVisible:(BOOL)a3;
- (id)_mainScreenSceneManager;
- (id)_sceneForModalAlerts;
- (id)_test_activeEditingOverlayElements;
- (id)_uiPresentingSceneManagers;
- (id)contextCluesPresentationManager;
- (id)correctionPresentationManager;
- (id)currentlyDisplayedCorrections:(id)a3;
- (id)currentlyDisplayedOverlayLabels:(id)a3;
- (id)customCommandEditorPresentationManager;
- (id)dictationRecognizerModeOverlayManager;
- (id)elementActionsPresentationManager;
- (id)elementNamesOverlayManager;
- (id)gestureLivePreviewPresentationOverlayManager;
- (id)gridNumberForRect:(CGRect)a3 displayID:(unsigned int)a4;
- (id)labeledElementsForGrid;
- (id)labeledElementsForItemNumbers;
- (id)labeledElementsOverlayManager;
- (id)overlayViewForDisplayID:(unsigned int)a3;
- (unsigned)carPlayDisplayID;
- (void)_appendCarPlayLayouts:(id)a3;
- (void)_initializeWindowsWithScene:(id)a3;
- (void)_processCarPlayLayoutResponse:(id)a3 forVehicleID:(id)a4;
- (void)_showBannerViewWithText:(id)a3 type:(int64_t)a4;
- (void)_startVoiceControlServer;
- (void)_trackModalAlert:(id)a3;
- (void)_untrackModalAlert:(id)a3;
- (void)_updateForCurrentStatusIndicatorType;
- (void)addPointsToLiveRecordingGesturePreviewByFingerIdentifier:(id)a3 forces:(id)a4 atTime:(double)a5;
- (void)carPlayDidConnect:(BOOL)a3;
- (void)dealloc;
- (void)deinitializeWindowsWithScene:(id)a3;
- (void)didUpdateOrientation;
- (void)displayMessageString:(id)a3 type:(int64_t)a4 announcementCompletion:(id)a5;
- (void)displayReadyToUseWithLanguageMessage;
- (void)enableStatusBarOverride:(BOOL)a3;
- (void)hideAnyOverlayAnimated:(BOOL)a3 includeInteractiveOverlays:(BOOL)a4;
- (void)hideAnyPresentationAnimated:(BOOL)a3 includingOutOfProcessPresentations:(BOOL)a4;
- (void)hideCorrections;
- (void)hideDictationRecognizerModeOverlayNow;
- (void)hideLiveRecordingGesturePreview;
- (void)hideObsoletePresentationsIfNeededForElements:(id)a3;
- (void)presentModalAlertWithTitle:(id)a3 description:(id)a4 button1Text:(id)a5 button1Style:(int64_t)a6 button2Text:(id)a7 button2Style:(int64_t)a8 object:(id)a9 button1Handler:(id)a10 button2Handler:(id)a11;
- (void)presentModalAlertWithTitle:(id)a3 description:(id)a4 okButtonText:(id)a5 cancelButtonText:(id)a6 object:(id)a7 okButtonHandler:(id)a8;
- (void)refreshOverlays;
- (void)removeTrackingForFingerIdentifier:(id)a3;
- (void)resetGrid;
- (void)resetGridIdleTimer;
- (void)setStatusIndicatorType:(int64_t)a3;
- (void)showContextCluesViewWithCommands:(id)a3;
- (void)showCorrectionsForElement:(id)a3 nBestStrings:(id)a4;
- (void)showCustomCommandEditorWithGesture:(id)a3;
- (void)showCustomCommandEditorWithRecordedUserActionFlow:(id)a3;
- (void)showCustomCommandEditorWithShortcutsWorkflow:(id)a3;
- (void)showCustomCommandEditorWithTextToInsert:(id)a3;
- (void)showElementActionsForElement:(id)a3 usingPortraitUpRect:(CGRect)a4;
- (void)showLiveRecordingGesturePreview;
- (void)showOverlayForDictiationRecognizerMode;
- (void)speakVoiceOverDescriptionForActiveOverlayIfNeeded;
- (void)startShowingTransientOverlayForType:(id)a3;
- (void)systemApertureLayoutDidChange:(id)a3;
- (void)updateGridLayoutWithNumberOfRows:(unint64_t)a3 numberOfColumns:(unint64_t)a4 shouldPreferRows:(BOOL)a5;
- (void)updatePreferencesFromCurrentGridLayoutForRows:(BOOL)a3 forColumns:(BOOL)a4;
- (void)updatePresentationForActiveOverlay;
- (void)willProgrammaticallySelectRange:(_NSRange)a3 forElement:(id)a4;
@end

@implementation CACDisplayManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[CACDisplayManager sharedManager];
  }

  v3 = sDisplayManager;

  return v3;
}

uint64_t __34__CACDisplayManager_sharedManager__block_invoke()
{
  v0 = [objc_allocWithZone(CACDisplayManager) init];
  v1 = sDisplayManager;
  sDisplayManager = v0;

  v2 = sDisplayManager;

  return [v2 setShouldShowTextEditingOverlayInTutorial:1];
}

- (void)dealloc
{
  [(STVoiceControlStatusDomainPublisher *)self->_voiceControlStatusPublisher invalidate];
  v3.receiver = self;
  v3.super_class = CACDisplayManager;
  [(CACDisplayManager *)&v3 dealloc];
}

- (void)deinitializeWindowsWithScene:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 session];
  v6 = [v5 role];
  v7 = [v6 isEqualToString:*MEMORY[0x277D776C8]];

  if (v7)
  {
    [(CACDisplayManager *)self setCarPlayAvailable:0];
    [(CACDisplayManager *)self carPlayDidConnect:0];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_sceneManagers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v14 scene];

        if (v15 == v4)
        {
          v16 = v14;

          v11 = v16;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  [(NSMutableArray *)self->_sceneManagers removeObject:v11];
}

- (void)_initializeWindowsWithScene:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D776C8];
  v49 = v4;
  if (v4)
  {
    v6 = [v4 session];
    v7 = [v6 role];
    if ([v7 isEqualToString:*MEMORY[0x277D772C8]])
    {
    }

    else
    {
      v8 = [v49 session];
      v9 = [v8 role];
      v10 = [v9 isEqualToString:*v5];

      v4 = v49;
      if (v10)
      {
        goto LABEL_7;
      }

      v6 = [MEMORY[0x277CCACC8] callStackSymbols];
      _CACAssertionFailed("/Library/Caches/com.apple.xbs/Sources/SpeechRecognitionCommandAndControl/CommandAndControlFramework/DisplayManager/CACDisplayManager.m", 950, "[CACDisplayManager _initializeWindowsWithScene:]", v6, @"Attempted to initialize windows on unexpected scene: %@", v11, v12, v13, v49);
    }

    v4 = v49;
  }

LABEL_7:
  v14 = [v4 session];
  v15 = [v14 role];
  v16 = *v5;
  v17 = [v15 isEqualToString:*v5];

  if (v17)
  {
    [(CACDisplayManager *)self setCarPlayAvailable:1];
    [(CACDisplayManager *)self carPlayDidConnect:1];
  }

  v18 = objc_alloc_init(CACSceneManager);
  [(CACSceneManager *)v18 setScene:v49];
  v19 = [(CACSceneManager *)v18 scene];
  v20 = [v19 screen];
  v21 = [MEMORY[0x277D759A0] mainScreen];
  v22 = [v20 isEqual:v21];

  sceneManagers = self->_sceneManagers;
  if (v22)
  {
    [(NSMutableArray *)sceneManagers insertObject:v18 atIndex:0];
  }

  else
  {
    [(NSMutableArray *)sceneManagers addObject:v18];
  }

  v24 = [v49 session];
  v25 = [v24 role];
  v26 = [v25 isEqualToString:v16];

  if (v26)
  {
    v27 = [v49 _FBSScene];
    v28 = [v27 settings];

    [v28 safeAreaInsetsPortrait];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
  }

  else
  {
    v30 = *MEMORY[0x277D768C8];
    v32 = *(MEMORY[0x277D768C8] + 8);
    v34 = *(MEMORY[0x277D768C8] + 16);
    v36 = *(MEMORY[0x277D768C8] + 24);
  }

  v37 = objc_alloc_init(CACContainerViewController);
  [(CACContainerViewController *)v37 setAdditionalSafeAreaInsets:v30, v32, v34, v36];
  if (v49)
  {
    v38 = [objc_alloc(MEMORY[0x277CE7840]) initWithWindowScene:v49];
  }

  else
  {
    v38 = objc_opt_new();
  }

  v39 = v38;
  [v38 setRootViewController:v37];
  v40 = *MEMORY[0x277D772B0];
  [v39 setWindowLevel:*MEMORY[0x277D772B0]];
  [v39 makeKeyAndVisible];
  v41 = objc_alloc_init(CACContainerViewController);
  [(CACContainerViewController *)v41 setAdditionalSafeAreaInsets:v30, v32, v34, v36];
  if (v49)
  {
    v42 = [objc_alloc(MEMORY[0x277CE7838]) initWithWindowScene:v49];
  }

  else
  {
    v42 = objc_opt_new();
  }

  v43 = v42;
  [v42 setRootViewController:v41];
  [v43 setWindowLevel:v40 + 1.0];
  [v43 setHidden:0];
  [v43 setAccessibilityElementsHidden:1];
  [(CACSceneManager *)v18 setWindowContainerViewController:v37];
  [(CACSceneManager *)v18 setWindow:v39];
  [(CACSceneManager *)v18 setOverlayContainerViewController:v41];
  [(CACSceneManager *)v18 setOverlayWindow:v43];
  v44 = [v49 screen];
  v45 = [MEMORY[0x277D759A0] mainScreen];
  v46 = [v44 isEqual:v45];

  if (v46)
  {
    v47 = objc_alloc_init(MEMORY[0x277D66C60]);
    layoutMonitor = self->_layoutMonitor;
    self->_layoutMonitor = v47;

    [(SBSSystemApertureLayoutMonitor *)self->_layoutMonitor addObserver:self];
  }
}

- (CACDisplayManager)init
{
  v15.receiver = self;
  v15.super_class = CACDisplayManager;
  v2 = [(CACDisplayManager *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sceneManagers = v2->_sceneManagers;
    v2->_sceneManagers = v3;

    v5 = objc_opt_new();
    messageDisplayOperationQueue = v2->_messageDisplayOperationQueue;
    v2->_messageDisplayOperationQueue = v5;

    [(NSOperationQueue *)v2->_messageDisplayOperationQueue setMaxConcurrentOperationCount:1];
    v7 = [objc_alloc(MEMORY[0x277CF89F8]) initWithOptions:0];
    sessionStatus = v2->_sessionStatus;
    v2->_sessionStatus = v7;

    v9 = [(CARSessionStatus *)v2->_sessionStatus currentSession];
    v10 = [v9 configuration];
    v2->_carPlayConnectedWirelessly = [v10 transportType] == 3;

    v11 = objc_alloc_init(MEMORY[0x277D6BBA8]);
    voiceControlStatusPublisher = v2->_voiceControlStatusPublisher;
    v2->_voiceControlStatusPublisher = v11;

    [(CACDisplayManager *)v2 _updateForCurrentStatusIndicatorType];
    [(CACDisplayManager *)v2 _startVoiceControlServer];
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v2 selector:sel_refreshOverlays name:@"CACSpokenCommandManagerStartedListening" object:0];

    v2->_programmaticallySelectedRange = xmmword_26B405110;
    v2->_textEditingOverlaysEnabled = 0;
    v2->_secureInputNumberingSeed = arc4random();
  }

  return v2;
}

- (unsigned)carPlayDisplayID
{
  if (!self->_carPlayConnected)
  {
    return 0;
  }

  v2 = [(CACDisplayManager *)self _carScreenSceneManager];
  v3 = [v2 scene];
  v4 = [v3 screen];
  v5 = [v4 _integerDisplayID];

  return v5;
}

- (void)_appendCarPlayLayouts:(id)a3
{
  v4 = [(NSDictionary *)self->_carPlayApps bs_dictionaryByAddingEntriesFromDictionary:a3];
  carPlayApps = self->_carPlayApps;
  self->_carPlayApps = v4;

  v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v6 forceSynchronizeRecognizersForBuiltInLMIdentifier:*MEMORY[0x277D65608]];
}

- (void)_processCarPlayLayoutResponse:(id)a3 forVehicleID:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v27 = a4;
  v28 = [MEMORY[0x277CBEB38] dictionary];
  [v5 objectForKeyedSubscript:*MEMORY[0x277CF9068]];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v24 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v24)
  {
    v23 = *v38;
    v6 = *MEMORY[0x277CF8FC8];
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v37 + 1) + 8 * v7);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v34;
          do
          {
            v13 = 0;
            do
            {
              if (*v34 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v33 + 1) + 8 * v13);
              if ([v14 isEqualToString:v6])
              {
                v15 = objc_alloc_init(MEMORY[0x277CF9000]);
                v31[0] = MEMORY[0x277D85DD0];
                v31[1] = 3221225472;
                v31[2] = __64__CACDisplayManager__processCarPlayLayoutResponse_forVehicleID___block_invoke;
                v31[3] = &unk_279CEC400;
                v31[4] = self;
                v32 = v15;
                v16 = v15;
                [v16 fetchApplicationIconInformationForBundleIdentifier:v14 vehicleID:v27 showBorder:0 completion:v31];

                goto LABEL_17;
              }

              v16 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v14];
              v17 = [v16 localizedNameForContext:@"Car"];
              v18 = [v16 localizedNameForContext:0];
              v19 = v18;
              if (!v17)
              {
                if (!v18)
                {
                  goto LABEL_16;
                }

LABEL_15:
                [v28 setObject:v14 forKeyedSubscript:v19];
                goto LABEL_16;
              }

              [v28 setObject:v14 forKeyedSubscript:v17];
              if (([v17 isEqualToString:v19] & 1) == 0)
              {
                goto LABEL_15;
              }

LABEL_16:

LABEL_17:
              ++v13;
            }

            while (v11 != v13);
            v20 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
            v11 = v20;
          }

          while (v20);
        }

        v7 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v24);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CACDisplayManager__processCarPlayLayoutResponse_forVehicleID___block_invoke_3;
  block[3] = &unk_279CEB4C0;
  block[4] = self;
  v30 = v28;
  v21 = v28;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__CACDisplayManager__processCarPlayLayoutResponse_forVehicleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 localizedDisplayName];

  if (v4)
  {
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __64__CACDisplayManager__processCarPlayLayoutResponse_forVehicleID___block_invoke_2;
    v8 = &unk_279CEB4C0;
    v9 = *(a1 + 32);
    v10 = v3;
    dispatch_async(MEMORY[0x277D85CD0], &v5);
  }

  [*(a1 + 40) invalidate];
}

void __64__CACDisplayManager__processCarPlayLayoutResponse_forVehicleID___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) localizedDisplayName];
  v4 = v2;
  v5[0] = *MEMORY[0x277CF8FC8];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v1 _appendCarPlayLayouts:v3];
}

- (void)carPlayDidConnect:(BOOL)a3
{
  v3 = a3;
  v56 = *MEMORY[0x277D85DE8];
  v5 = [(CACDisplayManager *)self carPlayConnected]^ a3;
  [(CACDisplayManager *)self setCarPlayConnected:v3];
  if (v3)
  {
    if (v5)
    {
      v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      self->_dictationRecognizerModeUponCarPlayConnect = [v6 dictationRecognizerMode];

      v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      [v7 setDictationRecognizerMode:1];

      v8 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      [v8 forceElementFetchWithReason:@"CarPlay Connected"];

      v9 = +[CACDisplayManager sharedManager];
      [v9 hideAnyOverlayAnimated:1 includeInteractiveOverlays:1];

      v10 = +[CACDisplayManager sharedManager];
      [v10 refreshOverlays];

      if (_AXSCommandAndControlEnabled())
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.CarPlayInUse"];
        v13 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        v14 = [v13 primaryStringForCommandIdentifier:@"System.WakeListeningIPhoneFromCarPlay"];
        v15 = [v11 stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v14];

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v16 = self->_sceneManagers;
        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v51;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v51 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v50 + 1) + 8 * i);
              if ([v21 isMainDisplayScene])
              {
                [v21 showBannerViewWithText:v15 type:0];
              }
            }

            v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v50 objects:v55 count:16];
          }

          while (v18);
        }
      }
    }

    v22 = [MEMORY[0x277CBEAC0] dictionary];
    carPlayApps = self->_carPlayApps;
    self->_carPlayApps = v22;

    v24 = [MEMORY[0x277CF8A80] sharedInstance];
    v25 = [v24 connectedVehicleAccessories];
    v26 = [v25 anyObject];

    if (v26)
    {
      v27 = [(NSMutableArray *)v26 certificateSerialNumber];
      v45 = MEMORY[0x277D85DD0];
      v46 = 3221225472;
      v47 = __39__CACDisplayManager_carPlayDidConnect___block_invoke;
      v48 = &unk_279CEC450;
      v49 = self;
      CRVehicleIdentifierForCertificateSerial();
    }

LABEL_29:

    goto LABEL_30;
  }

  if (v5)
  {
    v28 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v28 setDictationRecognizerMode:self->_dictationRecognizerModeUponCarPlayConnect];

    v29 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v29 forceElementFetchWithReason:@"CarPlay Disconnected"];
  }

  v30 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v30 forceSynchronizeRecognizersForBuiltInLMIdentifier:*MEMORY[0x277D65608]];

  if (_AXSCommandAndControlEnabled() && [(CACDisplayManager *)self carPlayAvailable])
  {
    v31 = MEMORY[0x277CCACA8];
    v32 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ReturnedToPhone"];
    v33 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v34 = [v33 primaryStringForCommandIdentifier:@"System.WakeListeningCarPlay"];
    v24 = [v31 stringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:0, v34];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = self->_sceneManagers;
    v35 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v42;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v42 != v37)
          {
            objc_enumerationMutation(v26);
          }

          v39 = *(*(&v41 + 1) + 8 * j);
          if ([v39 isMainDisplayScene])
          {
            [v39 showBannerViewWithText:v24 type:0];
          }
        }

        v36 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v36);
    }

    goto LABEL_29;
  }

LABEL_30:
  if (v5)
  {
    v40 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v40 carPlayConnectedDidChange];
  }
}

void __39__CACDisplayManager_carPlayDidConnect___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CACLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __39__CACDisplayManager_carPlayDidConnect___block_invoke_cold_1(v6, v7);
    }

    goto LABEL_6;
  }

  if (v5)
  {
    v8 = objc_alloc_init(MEMORY[0x277CF9000]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__CACDisplayManager_carPlayDidConnect___block_invoke_667;
    v9[3] = &unk_279CEC428;
    v9[4] = *(a1 + 32);
    v10 = v5;
    v11 = v8;
    v7 = v8;
    [v7 fetchIconStateForVehicleID:v10 completion:v9];

LABEL_6:
  }
}

uint64_t __39__CACDisplayManager_carPlayDidConnect___block_invoke_667(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _processCarPlayLayoutResponse:a2 forVehicleID:*(a1 + 40)];
  v3 = *(a1 + 48);

  return [v3 invalidate];
}

- (void)willProgrammaticallySelectRange:(_NSRange)a3 forElement:(id)a4
{
  length = a3.length;
  v5 = a3.location;
  v7 = a4;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CACDisplayManager_willProgrammaticallySelectRange_forElement___block_invoke;
  block[3] = &unk_279CEC478;
  objc_copyWeak(v11, &location);
  v11[1] = v5;
  v11[2] = length;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __64__CACDisplayManager_willProgrammaticallySelectRange_forElement___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(WeakRetained + 6) = *(a1 + 48);
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 11, *(a1 + 32));
    WeakRetained = v3;
  }
}

- (void)systemApertureLayoutDidChange:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v34 + 1) + 8 * i) CGRectValue];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        if (CGRectIsEmpty(v42))
        {
          height = v20;
          width = v18;
          y = v16;
          x = v14;
        }

        else
        {
          v43.origin.x = x;
          v43.origin.y = y;
          v43.size.width = width;
          v43.size.height = height;
          v47.origin.x = v14;
          v47.origin.y = v16;
          v47.size.width = v18;
          v47.size.height = v20;
          v44 = CGRectUnion(v43, v47);
          x = v44.origin.x;
          y = v44.origin.y;
          width = v44.size.width;
          height = v44.size.height;
        }
      }

      v10 = [v4 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v10);
  }

  v21 = CACLogGeneral();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v33 = NSStringFromCGRect(v46);
    *buf = 138412290;
    v39 = v33;
    _os_log_debug_impl(&dword_26B354000, v21, OS_LOG_TYPE_DEBUG, "System aperature changed sizes. New size: %@", buf, 0xCu);
  }

  v22 = [(CACDisplayManager *)self _mainScreenSceneManager];
  [v22 setSystemAperatureRect:{x, y, width, height}];

  v23 = [(CACDisplayManager *)self _mainScreenSceneManager];
  [v23 minimumSystemAperatureRect];
  v25 = v24;

  v26 = [(CACDisplayManager *)self _mainScreenSceneManager];
  [v26 minimumSystemAperatureRect];
  v28 = v27;

  v29 = [(CACDisplayManager *)self _mainScreenSceneManager];
  [v29 minimumSystemAperatureRect];
  IsEmpty = CGRectIsEmpty(v45);

  if (IsEmpty || height < v25 || (vabdd_f64(v25, height) < 2.22044605e-16 ? (v31 = width < v28) : (v31 = 0), v31))
  {
    v32 = [(CACDisplayManager *)self _mainScreenSceneManager];
    [v32 setMinimumSystemAperatureRect:{x, y, width, height}];
  }

  [(CACDisplayManager *)self refreshOverlays];
}

- (UIView)view
{
  v2 = [(CACDisplayManager *)self _mainScreenSceneManager];
  v3 = [v2 windowContainerViewController];
  v4 = [v3 view];

  return v4;
}

- (UIView)overlayView
{
  v2 = [(CACDisplayManager *)self _mainScreenSceneManager];
  v3 = [v2 overlayContainerViewController];
  v4 = [v3 view];

  return v4;
}

- (void)_showBannerViewWithText:(id)a3 type:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(CACDisplayManager *)self carPlayConnected])
  {
    v7 = [(CACDisplayManager *)self _carScreenSceneManager];
    [(NSMutableArray *)v7 showBannerViewWithText:v6 type:a4];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_sceneManagers;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) showBannerViewWithText:v6 type:{a4, v12}];
        }

        while (v9 != v11);
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)displayMessageString:(id)a3 type:(int64_t)a4 announcementCompletion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = +[CACDisplayManager sharedManager];
  v11 = [v10 carPlayConnected];

  if (v11)
  {
    v12 = CACLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&dword_26B354000, v12, OS_LOG_TYPE_INFO, "CarPlay Connected with Voice Control display message: %@", &v21, 0xCu);
    }
  }

  else
  {
    if ([v8 length])
    {
      if ((a4 - 1) <= 2)
      {
        [(NSOperationQueue *)self->_messageDisplayOperationQueue cancelAllOperations];
      }

      v13 = [[CACMessageDisplayOperation alloc] initWithMessageString:v8 type:a4];
      v14 = [(NSOperationQueue *)self->_messageDisplayOperationQueue operations];
      v15 = [v14 count];

      if (v15)
      {
        v16 = [(NSOperationQueue *)self->_messageDisplayOperationQueue operations];
        v17 = [v16 lastObject];
        [(CACMessageDisplayOperation *)v13 addDependency:v17];
      }

      [(NSOperationQueue *)self->_messageDisplayOperationQueue addOperation:v13];
      IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
      if (a4 != 2 && IsVoiceOverRunning)
      {
        v19 = [(CACDisplayManager *)self voiceOverAnnouncer];
        [v19 prepareForImmediateAnnouncement];

        v20 = [(CACDisplayManager *)self voiceOverAnnouncer];
        [v20 announceMessage:v8 type:a4 completion:v9];
      }
    }

    if (v9)
    {
      v9[2](v9);
    }
  }
}

- (void)displayReadyToUseWithLanguageMessage
{
  v13 = [CACLocaleUtilities localizedUIStringForKey:@"AssetDownload.InstallFinished"];
  v2 = MEMORY[0x277CBEAF8];
  v3 = +[CACPreferences sharedPreferences];
  v4 = [v3 bestLocaleIdentifier];
  v5 = [v2 localeWithLocaleIdentifier:v4];

  v6 = +[CACPreferences sharedPreferences];
  v7 = [v6 bestLocaleIdentifier];
  v8 = [v5 localizedStringForLocaleIdentifier:v7];

  v9 = MEMORY[0x277CCACA8];
  v10 = [CACLocaleUtilities localizedUIStringForKey:@"AssetDownload.InstallFinishedMultipleLanguagesFormat"];
  v11 = [v9 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@%@" error:0, v13, v8];

  v12 = +[CACDisplayManager sharedManager];
  [v12 displayMessageString:v11 type:3];
}

- (id)_sceneForModalAlerts
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(CACDisplayManager *)self carPlayConnected])
  {
    v3 = [(CACDisplayManager *)self _carScreenSceneManager];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = self;
    v4 = self->_sceneManagers;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 scene];
          v11 = [v10 screen];
          v12 = [MEMORY[0x277D759A0] mainScreen];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            v14 = v9;

            goto LABEL_14;
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = [(NSMutableArray *)v16->_sceneManagers firstObject];
  }

  v14 = v3;
LABEL_14:

  return v14;
}

- (void)_trackModalAlert:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_modalAlertsLock);
  modalAlerts = self->_modalAlerts;
  if (!modalAlerts)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = self->_modalAlerts;
    self->_modalAlerts = v5;

    modalAlerts = self->_modalAlerts;
  }

  [(NSMutableSet *)modalAlerts addObject:v7];
  os_unfair_lock_unlock(&self->_modalAlertsLock);
}

- (void)_untrackModalAlert:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_modalAlertsLock);
  [(NSMutableSet *)self->_modalAlerts removeObject:v4];

  os_unfair_lock_unlock(&self->_modalAlertsLock);
}

- (BOOL)_hasModalAlert
{
  os_unfair_lock_lock(&self->_modalAlertsLock);
  v3 = [(NSMutableSet *)self->_modalAlerts count]!= 0;
  os_unfair_lock_unlock(&self->_modalAlertsLock);
  return v3;
}

- (BOOL)_hasModalAlertWithTitle:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_modalAlertsLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableSet *)self->_modalAlerts allObjects];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) title];
        v10 = [v9 isEqualToString:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_modalAlertsLock);
  return v6;
}

- (void)presentModalAlertWithTitle:(id)a3 description:(id)a4 okButtonText:(id)a5 cancelButtonText:(id)a6 object:(id)a7 okButtonHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__CACDisplayManager_presentModalAlertWithTitle_description_okButtonText_cancelButtonText_object_okButtonHandler___block_invoke;
  block[3] = &unk_279CEC4C8;
  v27 = v14;
  v28 = v15;
  v29 = self;
  v30 = v17;
  v32 = v18;
  v33 = v19;
  v31 = v16;
  v20 = v18;
  v21 = v19;
  v22 = v16;
  v23 = v17;
  v24 = v15;
  v25 = v14;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __113__CACDisplayManager_presentModalAlertWithTitle_description_okButtonText_cancelButtonText_object_okButtonHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  [*(a1 + 48) _trackModalAlert:v2];
  v3 = MEMORY[0x277D750F8];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __113__CACDisplayManager_presentModalAlertWithTitle_description_okButtonText_cancelButtonText_object_okButtonHandler___block_invoke_2;
  v23[3] = &unk_279CEB320;
  v4 = *(a1 + 56);
  v23[4] = *(a1 + 48);
  v5 = v2;
  v24 = v5;
  v6 = [v3 actionWithTitle:v4 style:1 handler:v23];
  [v5 addAction:v6];
  if ([*(a1 + 64) length])
  {
    v7 = MEMORY[0x277D750F8];
    v8 = *(a1 + 64);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __113__CACDisplayManager_presentModalAlertWithTitle_description_okButtonText_cancelButtonText_object_okButtonHandler___block_invoke_3;
    v18 = &unk_279CEC4A0;
    v22 = *(a1 + 80);
    v9 = *(a1 + 72);
    v10 = *(a1 + 48);
    v19 = v9;
    v20 = v10;
    v11 = v5;
    v21 = v11;
    v12 = [v7 actionWithTitle:v8 style:2 handler:&v15];
    [v11 addAction:{v12, v15, v16, v17, v18}];
  }

  v13 = [*(a1 + 48) _sceneForModalAlerts];
  v14 = [v13 windowContainerViewController];
  [v14 presentViewController:v5 animated:1 completion:0];
}

uint64_t __113__CACDisplayManager_presentModalAlertWithTitle_description_okButtonText_cancelButtonText_object_okButtonHandler___block_invoke_3(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = a1[5];
  v4 = a1[6];

  return [v3 _untrackModalAlert:v4];
}

- (void)presentModalAlertWithTitle:(id)a3 description:(id)a4 button1Text:(id)a5 button1Style:(int64_t)a6 button2Text:(id)a7 button2Style:(int64_t)a8 object:(id)a9 button1Handler:(id)a10 button2Handler:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __147__CACDisplayManager_presentModalAlertWithTitle_description_button1Text_button1Style_button2Text_button2Style_object_button1Handler_button2Handler___block_invoke;
  v31[3] = &unk_279CEC4F0;
  v32 = v17;
  v33 = v18;
  v34 = self;
  v35 = v19;
  v36 = v21;
  v37 = v20;
  v40 = a6;
  v41 = a8;
  v38 = v22;
  v39 = v23;
  v24 = v23;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = v19;
  v29 = v18;
  v30 = v17;
  dispatch_async(MEMORY[0x277D85CD0], v31);
}

void __147__CACDisplayManager_presentModalAlertWithTitle_description_button1Text_button1Style_button2Text_button2Style_object_button1Handler_button2Handler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  [*(a1 + 48) _trackModalAlert:v2];
  v3 = MEMORY[0x277D750F8];
  v4 = *(a1 + 56);
  v5 = *(a1 + 96);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __147__CACDisplayManager_presentModalAlertWithTitle_description_button1Text_button1Style_button2Text_button2Style_object_button1Handler_button2Handler___block_invoke_2;
  v27[3] = &unk_279CEC4A0;
  v31 = *(a1 + 80);
  v6 = *(a1 + 64);
  v7 = *(a1 + 48);
  v28 = v6;
  v29 = v7;
  v8 = v2;
  v30 = v8;
  v9 = [v3 actionWithTitle:v4 style:v5 handler:v27];
  [v8 addAction:v9];
  if ([*(a1 + 72) length])
  {
    v10 = MEMORY[0x277D750F8];
    v11 = *(a1 + 72);
    v12 = *(a1 + 104);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __147__CACDisplayManager_presentModalAlertWithTitle_description_button1Text_button1Style_button2Text_button2Style_object_button1Handler_button2Handler___block_invoke_3;
    v22 = &unk_279CEC4A0;
    v26 = *(a1 + 88);
    v13 = *(a1 + 64);
    v14 = *(a1 + 48);
    v23 = v13;
    v24 = v14;
    v15 = v8;
    v25 = v15;
    v16 = [v10 actionWithTitle:v11 style:v12 handler:&v19];
    [v15 addAction:{v16, v19, v20, v21, v22}];
  }

  v17 = [*(a1 + 48) _sceneForModalAlerts];
  v18 = [v17 windowContainerViewController];
  [v18 presentViewController:v8 animated:1 completion:0];
}

uint64_t __147__CACDisplayManager_presentModalAlertWithTitle_description_button1Text_button1Style_button2Text_button2Style_object_button1Handler_button2Handler___block_invoke_2(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = a1[5];
  v4 = a1[6];

  return [v3 _untrackModalAlert:v4];
}

uint64_t __147__CACDisplayManager_presentModalAlertWithTitle_description_button1Text_button1Style_button2Text_button2Style_object_button1Handler_button2Handler___block_invoke_3(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = a1[5];
  v4 = a1[6];

  return [v3 _untrackModalAlert:v4];
}

- (void)startShowingTransientOverlayForType:(id)a3
{
  v4 = a3;
  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v6 = [v5 transientOverlayType];

  if (!v4 && v6 || ([v6 isEqualToString:v4] & 1) == 0)
  {
    [(CACDisplayManager *)self hideAnyOverlay];
  }

  v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v7 setTransientOverlayType:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CACDisplayManager_startShowingTransientOverlayForType___block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)overlayViewForDisplayID:(unsigned int)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_sceneManagers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if ([(NSMutableArray *)v10 displayID]== a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v10 = [(CACDisplayManager *)self _mainScreenSceneManager];
    v5 = v10;
  }

  v11 = [(NSMutableArray *)v10 overlayContainerViewController];
  v12 = [v11 view];

  return v12;
}

- (BOOL)verifyElementExists:(id)a3
{
  v3 = a3;
  [v3 centerPoint];
  v5 = v4;
  v7 = v6;
  v8 = [v3 windowContextId];
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CE6BA0] systemWideElement];
    [v10 convertPoint:v9 fromContextId:{v5, v7}];
    v5 = v11;
    v7 = v12;
  }

  v13 = [MEMORY[0x277CE6BA0] elementAtCoordinate:0 withVisualPadding:{v5, v7}];
  v14 = [v13 isEqual:v3];

  return v14;
}

- (id)_uiPresentingSceneManagers
{
  v3 = [(NSMutableArray *)self->_sceneManagers indexesOfObjectsPassingTest:&__block_literal_global_696];
  v4 = [(NSMutableArray *)self->_sceneManagers objectsAtIndexes:v3];

  return v4;
}

uint64_t __47__CACDisplayManager__uiPresentingSceneManagers__block_invoke(uint64_t a1, void *a2)
{
  if (![a2 isCarPlayScene])
  {
    return 1;
  }

  v2 = [MEMORY[0x277D79890] shared];
  v3 = [v2 carPlayDebugOverlayUIEnabled];

  return v3;
}

- (void)updatePresentationForActiveOverlay
{
  v185 = *MEMORY[0x277D85DE8];
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_699_0);
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v131 = [v3 focusedElement];

  v136 = [v131 selectedTextRange];
  v5 = v4;
  v6 = v4 != 0;
  v174 = 0;
  v175 = &v174;
  v176 = 0x2020000000;
  v177 = 0;
  v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v8 = [v7 disambiguationHandler];
  v9 = [v8 labeledElements];
  v10 = [v9 count];

  v11 = [MEMORY[0x277CE6BA0] systemWideElement];
  v12 = [v11 systemApplication];
  v13 = [v12 elementForAttribute:1513];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_2;
  aBlock[3] = &unk_279CEC560;
  aBlock[4] = self;
  v173 = &v174;
  v138 = v13;
  v172 = v138;
  v129 = _Block_copy(aBlock);
  v168[0] = MEMORY[0x277D85DD0];
  v168[1] = 3221225472;
  v168[2] = __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_4;
  v168[3] = &unk_279CEC5B0;
  v169 = v6;
  v170 = v10 != 0;
  v168[4] = self;
  v168[5] = &v174;
  v130 = _Block_copy(v168);
  v14 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  LODWORD(v12) = [v14 isActiveOverlayType:@"NumberedElements"];

  if (!v12)
  {
    v17 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v18 = [v17 isActiveOverlayType:@"NamedElements"];

    if (v18)
    {
      v19 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v20 = [v19 labeledScreenElementsCollection];
      v134 = [v20 collectedElements];

      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v21 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
      v22 = [v21 countByEnumeratingWithState:&v156 objects:v182 count:16];
      obj = v21;
      v23 = v134;
      v135 = v22;
      if (v22)
      {
        v133 = *v157;
        do
        {
          v137 = 0;
          do
          {
            if (*v157 != v133)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v156 + 1) + 8 * v137);
            v25 = objc_opt_new();
            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v26 = v23;
            v27 = [v26 countByEnumeratingWithState:&v152 objects:v181 count:16];
            if (v27)
            {
              v28 = *v153;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v153 != v28)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v30 = *(*(&v152 + 1) + 8 * i);
                  v31 = [v24 displayID];
                  if (v31 == [v30 displayID] && !-[CACDisplayManager labeledElement:isOccludedByPictureInPictureWindow:](self, "labeledElement:isOccludedByPictureInPictureWindow:", v30, v138))
                  {
                    v32 = [v30 displayID];
                    v33 = [(CACDisplayManager *)self _mainScreenSceneManager];
                    v34 = v32 == [v33 displayID];

                    if (!v34 || (([v24 systemAperatureRect], Height = CGRectGetHeight(v186), objc_msgSend(v24, "minimumSystemAperatureRect"), v36 = CGRectGetHeight(v187), objc_msgSend(v24, "systemAperatureRect"), v38 = v37, v40 = v39, v42 = v41, v44 = v43, objc_msgSend(v30, "rectangle"), v190.origin.x = v45, v190.origin.y = v46, v190.size.width = v47, v190.size.height = v48, v188.origin.x = v38, v188.origin.y = v40, v188.size.width = v42, v188.size.height = v44, v49 = CGRectIntersectsRect(v188, v190), Height > v36 + 10.0) ? (v50 = v49) : (v50 = 0), !v50 || (objc_msgSend(v30, "element"), v51 = objc_claimAutoreleasedReturnValue(), v52 = -[CACDisplayManager verifyElementExists:](self, "verifyElementExists:", v51), v51, v52)))
                    {
                      [v25 addObject:v30];
                    }
                  }
                }

                v27 = [v26 countByEnumeratingWithState:&v152 objects:v181 count:16];
              }

              while (v27);
            }

            [v24 systemAperatureRect];
            if (CGRectIsEmpty(v189))
            {
              v53 = v25;
            }

            else
            {
              v54 = +[CACDisplayManager sharedManager];
              v55 = [v54 _mainScreenSceneManager];
              v56 = [v55 overlayWindow];

              [v24 systemAperatureRect];
              v61 = CACViewRectFromPortraitUpRect(v56, v57, v58, v59, v60);
              v63 = v62;
              v65 = v64;
              v67 = v66;
              [v24 minimumSystemAperatureRect];
              v72 = CACViewRectFromPortraitUpRect(v56, v68, v69, v70, v71);
              v76 = [CACSystemAperatureBorderItem borderItemsForRect:v61 minimumRect:v63, v65, v67, v72, v73, v74, v75];
              v53 = [v76 mutableCopy];

              [v53 addObjectsFromArray:v25];
            }

            v77 = [v24 elementNamesOverlayManager];
            [v77 showNamesForElements:v53];

            ++v137;
            v23 = v134;
          }

          while (v137 != v135);
          v135 = [obj countByEnumeratingWithState:&v156 objects:v182 count:16];
        }

        while (v135);
      }

      v130[2]();
      v78 = v134;
      goto LABEL_88;
    }

    v79 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v80 = [v79 isActiveOverlayType:@"NumberedGrid"];

    if (!v80)
    {
      v142 = 0uLL;
      v143 = 0uLL;
      v140 = 0uLL;
      v141 = 0uLL;
      v78 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
      v105 = [v78 countByEnumeratingWithState:&v140 objects:v178 count:16];
      if (v105)
      {
        v106 = *v141;
        do
        {
          for (j = 0; j != v105; ++j)
          {
            if (*v141 != v106)
            {
              objc_enumerationMutation(v78);
            }

            v108 = *(*(&v140 + 1) + 8 * j);
            v109 = [v108 labeledElementsOverlayManager];
            [v109 hideAnimated:0 completion:0];

            v110 = [v108 linesEditingModeOverlayManager];
            [v110 hideAnimated:0 completion:0];
          }

          v105 = [v78 countByEnumeratingWithState:&v140 objects:v178 count:16];
        }

        while (v105);
      }

      goto LABEL_88;
    }

    v150 = 0uLL;
    v151 = 0uLL;
    v148 = 0uLL;
    v149 = 0uLL;
    v81 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
    v82 = [v81 countByEnumeratingWithState:&v148 objects:v180 count:16];
    if (v82)
    {
      v83 = *v149;
      while (2)
      {
        for (k = 0; k != v82; ++k)
        {
          if (*v149 != v83)
          {
            objc_enumerationMutation(v81);
          }

          v85 = *(*(&v148 + 1) + 8 * k);
          v86 = [v85 labeledGridOverlayManager];
          v87 = [v86 currentLevel] > 1;

          if (v87)
          {
            v78 = [v85 labeledGridOverlayManager];
            goto LABEL_72;
          }
        }

        v82 = [v81 countByEnumeratingWithState:&v148 objects:v180 count:16];
        if (v82)
        {
          continue;
        }

        break;
      }
    }

    v78 = 0;
LABEL_72:

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v91 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
    v111 = [v91 countByEnumeratingWithState:&v144 objects:v179 count:16];
    if (v111)
    {
      v112 = 0;
      v113 = *v145;
      do
      {
        for (m = 0; m != v111; ++m)
        {
          if (*v145 != v113)
          {
            objc_enumerationMutation(v91);
          }

          v115 = *(*(&v144 + 1) + 8 * m);
          v116 = [v115 labeledGridOverlayManager];
          v117 = v116;
          if (!v78 || v116 == v78)
          {
            if ([v116 isShowing])
            {
              if ([v117 needsToBeRedrawn])
              {
                [v117 resetAndDrawAtTopLevelWithStartingNumber:v112 + 1];
              }
            }

            else
            {
              [v117 showOverlayWithStartingNumber:v112 + 1];
            }

            v112 += [v115 numberOfLabelsForGridManager];
          }

          else
          {
            [v116 hide];
          }
        }

        v111 = [v91 countByEnumeratingWithState:&v144 objects:v179 count:16];
      }

      while (v111);
    }

    goto LABEL_87;
  }

  if (!v5 || ((v15 = [(CACDisplayManager *)self isDisplayingCorrections], v10) ? (v16 = 1) : (v16 = v15), (v16 & 1) != 0))
  {
    v130[2]();
    v129[2]();
    goto LABEL_89;
  }

  v130[2]();
  v129[2]();
  if ([(CACDisplayManager *)self shouldShowTextEditingOverlayInTutorial]&& [(CACDisplayManager *)self textEditingOverlaysEnabled])
  {
    v78 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    if (([v78 doesFocusedElementRequireSecureInput] & 1) != 0 || self->_programmaticallySelectedRange.location != v136 || self->_programmaticallySelectedRange.length != v5)
    {
      goto LABEL_88;
    }

    v88 = [(AXElement *)self->_programmaticallySelectedElement isEqual:v131];

    if (!v88)
    {
      goto LABEL_89;
    }

    v89 = [v131 value];
    v78 = [v89 substringWithRange:{v136, v5}];

    v90 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v91 = [v78 stringByTrimmingCharactersInSet:v90];

    v92 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    [v91 rangeOfCharacterFromSet:v92];
    v94 = v93 == 0;

    if (v94)
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v95 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
      v120 = [v95 countByEnumeratingWithState:&v160 objects:v183 count:16];
      if (v120)
      {
        v121 = *v161;
        do
        {
          for (n = 0; n != v120; ++n)
          {
            if (*v161 != v121)
            {
              objc_enumerationMutation(v95);
            }

            v123 = *(*(&v160 + 1) + 8 * n);
            v124 = [v123 displayID];
            if (v124 == [v131 windowDisplayId])
            {
              v125 = [v123 editingModeOverlayManager];
              [v125 showCharactersForElement:v131 targetRange:v136 startIndex:{v5, v175[3] + 1}];

              v126 = [v123 editingModeOverlayManager];
              v127 = [v126 displayedOverlayElements];
              v128 = [v127 count];
              v175[3] += v128;
            }
          }

          v120 = [v95 countByEnumeratingWithState:&v160 objects:v183 count:16];
        }

        while (v120);
      }
    }

    else
    {
      v166 = 0uLL;
      v167 = 0uLL;
      v164 = 0uLL;
      v165 = 0uLL;
      v95 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
      v96 = [v95 countByEnumeratingWithState:&v164 objects:v184 count:16];
      if (v96)
      {
        v97 = *v165;
        do
        {
          for (ii = 0; ii != v96; ++ii)
          {
            if (*v165 != v97)
            {
              objc_enumerationMutation(v95);
            }

            v99 = *(*(&v164 + 1) + 8 * ii);
            v100 = [v99 displayID];
            if (v100 == [v131 windowDisplayId])
            {
              v101 = [v99 editingModeOverlayManager];
              [v101 showWordsForElement:v131 targetRange:v136 startIndex:{v5, v175[3] + 1}];

              v102 = [v99 editingModeOverlayManager];
              v103 = [v102 displayedOverlayElements];
              v104 = [v103 count];
              v175[3] += v104;
            }
          }

          v96 = [v95 countByEnumeratingWithState:&v164 objects:v184 count:16];
        }

        while (v96);
      }
    }

LABEL_87:
LABEL_88:
  }

LABEL_89:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_7;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  v118 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], block);

  v119 = [MEMORY[0x277CCAB98] defaultCenter];
  [v119 postNotificationName:@"SOLabeledElementsOverlayDidUpdateElementsNotification" object:0];

  [(CACDisplayManager *)self showOverlayForDictiationRecognizerMode];
  _Block_object_dispose(&v174, 8);
}

void __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke()
{
  v0 = +[_TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer shared];
  [v0 willBeginPresentingElements];
}

void __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = [v2 disambiguationHandler];
  if (v3)
  {
    v21 = [v3 labeledElements];
  }

  else
  {
    v4 = [v2 labeledScreenElementsCollection];
    v21 = [v4 collectedElements];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [*(a1 + 32) _uiPresentingSceneManagers];
  v22 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v22)
  {
    v20 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v23 = *(*(*(a1 + 48) + 8) + 24);
        v7 = objc_opt_new();
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = v21;
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v28 + 1) + 8 * j);
              if (([*(a1 + 32) labeledElement:v13 isOccludedByPictureInPictureWindow:*(a1 + 40)] & 1) == 0)
              {
                v14 = [v6 displayID];
                if (v14 == [v13 displayID])
                {
                  [v7 addObject:v13];
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v10);
        }

        v15 = [*(a1 + 32) isDisplayingCorrections];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_3;
        block[3] = &unk_279CEC538;
        block[4] = v6;
        v25 = v7;
        v27 = v15;
        v26 = v23;
        v16 = v7;
        dispatch_async(MEMORY[0x277D85CD0], block);
        *(*(*(a1 + 48) + 8) + 24) += [v16 count];
      }

      v22 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v22);
  }
}

void __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) labeledElementsOverlayManager];
  [v2 showLabeledElementsOverlayWithLabeledElements:*(a1 + 40) forceNoArrow:*(a1 + 56) startingNumberedLabelsAtIndex:*(a1 + 48) + 1];
}

void __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_4(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) textEditingOverlaysEnabled])
  {
    if (([*(a1 + 32) isDisplayingCorrections] & 1) == 0 && (*(a1 + 48) & 1) == 0 && (*(a1 + 49) & 1) == 0)
    {
      v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v3 = [v2 doesFocusedElementRequireSecureInput];

      if ((v3 & 1) == 0)
      {
        v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        v5 = [v4 focusedElement];

        v6 = [v5 application];
        v7 = [v6 bundleId];
        v8 = [v7 hasPrefix:@"com.microsoft.Office"];

        if ((v8 & 1) == 0)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v18 = a1;
          obj = [*(a1 + 32) _uiPresentingSceneManagers];
          v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v25;
            v12 = MEMORY[0x277D85CD0];
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v25 != v11)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(*(&v24 + 1) + 8 * i);
                v15 = [v14 displayID];
                if (v15 == [v5 windowDisplayId])
                {
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_5;
                  block[3] = &unk_279CEC588;
                  block[4] = v14;
                  v16 = v5;
                  v17 = *(v18 + 40);
                  v22 = v16;
                  v23 = v17;
                  dispatch_async(v12, block);
                }

                v20[0] = MEMORY[0x277D85DD0];
                v20[1] = 3221225472;
                v20[2] = __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_6;
                v20[3] = &unk_279CEB2D0;
                v20[4] = v14;
                dispatch_async(v12, v20);
              }

              v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
            }

            while (v10);
          }
        }
      }
    }
  }
}

void __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) linesEditingModeOverlayManager];
  [v2 showLinesForElement:*(a1 + 40) targetRange:0x7FFFFFFFFFFFFFFFLL startIndex:{0, *(*(*(a1 + 48) + 8) + 24) + 1}];

  v3 = [*(a1 + 32) editingModeOverlayManager];
  [v3 hideWithoutAnimation];
}

void __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_6(uint64_t a1)
{
  v2 = [_TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup alloc];
  v3 = [*(a1 + 32) linesEditingModeOverlayManager];
  v4 = [v3 displayedOverlayElements];
  v6 = [(CACElementNumberGroup *)v2 initWithElements:v4 volatile:1];

  v5 = +[_TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer shared];
  [v5 willPresentElementGroup:v6];
}

void __55__CACDisplayManager_updatePresentationForActiveOverlay__block_invoke_7(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[_TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer shared];
  [v2 stabilizeElements];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(a1 + 32) _uiPresentingSceneManagers];
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

        [*(*(&v8 + 1) + 8 * v7++) numberingDidUpdate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)shouldExpandToLines
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 linesEditingModeOverlayManager];
        v8 = [v7 displayedOverlayElements];
        if ([v8 count])
        {
          v9 = [v6 linesEditingModeOverlayManager];
          if ([v9 overlayType] == 2)
          {

LABEL_15:
            LOBYTE(v3) = 1;
            goto LABEL_16;
          }

          v10 = [v6 linesEditingModeOverlayManager];
          v11 = [v10 overlayType];

          if (v11 == 3)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v3;
}

- (BOOL)shouldExpandToWords
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 linesEditingModeOverlayManager];
        v8 = [v7 displayedOverlayElements];
        if ([v8 count])
        {
          v9 = [v6 linesEditingModeOverlayManager];
          v10 = [v9 overlayType];

          if (v10 == 1)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

LABEL_12:

  return v3;
}

- (BOOL)shouldExpandToCharacters
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 editingModeOverlayManager];
        v8 = [v7 displayedOverlayElements];
        if ([v8 count])
        {
          v9 = [v6 linesEditingModeOverlayManager];
          v10 = [v9 overlayType];

          if (!v10)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

LABEL_12:

  return v3;
}

- (BOOL)labeledElement:(id)a3 isOccludedByPictureInPictureWindow:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = a4;
    v8 = [v6 element];
    v9 = [v8 windowContextId];
    v10 = [v7 windowContextId];

    if (v9 == v10)
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      v12 = [v6 element];
      v11 = ![(CACDisplayManager *)self verifyElementExists:v12];
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)gridNumberForRect:(CGRect)a3 displayID:(unsigned int)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v71 = *MEMORY[0x277D85DE8];
  v10 = +[CACDisplayManager sharedManager];
  [v10 reorientedRect:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v19 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v19)
  {
    v20 = v19;
    v56 = v14;
    v57 = v12;
    v21 = v14 + v18 * 0.5;
    aRect = v16;
    v22 = v12 + v16 * 0.5;
    v23 = *v64;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v64 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v63 + 1) + 8 * i);
        if ([v25 displayID] == a4)
        {
          v26 = [v25 labeledGridOverlayManager];
          v27 = [v26 labeledElements];
          v28 = [v27 count];

          if (!v28)
          {
            v29 = 3.0;
            do
            {
              usleep(0x186A0u);
              v30 = [v26 labeledElements];
              v31 = [v30 count];

              if (v31)
              {
                break;
              }

              v29 = v29 + -0.1;
            }

            while (v29 > 0.0);
          }

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v32 = [v26 labeledElements];
          v33 = [v32 countByEnumeratingWithState:&v59 objects:v69 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v60;
LABEL_13:
            v36 = 0;
            while (1)
            {
              if (*v60 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v59 + 1) + 8 * v36);
              [v37 rectangle];
              v39 = v38;
              v41 = v40;
              v43 = v42;
              v45 = v44;
              v73.x = v22;
              v73.y = v21;
              v75.origin.x = v39;
              v75.origin.y = v41;
              v75.size.width = v43;
              v75.size.height = v45;
              if (NSPointInRect(v73, v75))
              {
                break;
              }

              if (v34 == ++v36)
              {
                v34 = [v32 countByEnumeratingWithState:&v59 objects:v69 count:16];
                if (v34)
                {
                  goto LABEL_13;
                }

                goto LABEL_21;
              }
            }

            v46 = [v37 label];
            v47 = [v46 integerValue];

            if (v47 < 1)
            {
              goto LABEL_21;
            }

            v49 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
            v74.x = v39 + v43 * 0.5;
            v74.y = v41 + v45 * 0.5;
            v76.origin.y = v56;
            v76.origin.x = v57;
            v76.size.width = aRect;
            v76.size.height = v18;
            v50 = NSPointInRect(v74, v76);
            v51 = @"NO";
            if (v50)
            {
              v51 = @"YES";
            }

            v67[0] = @"number";
            v67[1] = @"isFinal";
            v68[0] = v49;
            v68[1] = v51;
            v52 = MEMORY[0x277CBEAC0];
            v53 = v51;
            v48 = [v52 dictionaryWithObjects:v68 forKeys:v67 count:2];

            goto LABEL_28;
          }

LABEL_21:
        }
      }

      v20 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v48 = &unk_287BF00D8;
LABEL_28:

  return v48;
}

- (CGRect)reorientedRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;

  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 bounds];
  v12 = v11;

  v13 = width * 0.5;
  v14 = height * 0.5;
  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 orientation];

  if (v16 == 3)
  {
    v17 = v12 - y - v13;
    y = x - v14;
  }

  else
  {
    v18 = [MEMORY[0x277D75418] currentDevice];
    v19 = [v18 orientation];

    if (v19 == 4)
    {
      v17 = v12 - y - v13;
      v20 = v9 - x;
    }

    else
    {
      v21 = [MEMORY[0x277D75418] currentDevice];
      v22 = [v21 orientation];

      if (v22 != 2)
      {
        v23 = [MEMORY[0x277D75418] currentDevice];
        [v23 orientation];

        v17 = x;
        goto LABEL_9;
      }

      v17 = v9 - x - v13;
      v20 = v12 - y;
    }

    y = v20 - v14;
  }

LABEL_9:
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v17;
  return result;
}

- (void)speakVoiceOverDescriptionForActiveOverlayIfNeeded
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__CACDisplayManager_speakVoiceOverDescriptionForActiveOverlayIfNeeded__block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __70__CACDisplayManager_speakVoiceOverDescriptionForActiveOverlayIfNeeded__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = [v2 isActiveOverlayType:@"NumberedElements"];

  if (v3)
  {
    v4 = +[CACVoiceOverShortDescriptionGenerator sharedInstance];
    v5 = [*(a1 + 32) labeledElementsOverlayManager];
    v6 = [v5 labeledElementsCopy];
    v7 = [v4 shortDescriptionsForItems:v6 style:0];

LABEL_5:
    goto LABEL_7;
  }

  v8 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v9 = [v8 isActiveOverlayType:@"NamedElements"];

  if (v9)
  {
    v4 = [*(a1 + 32) elementNamesOverlayManager];
    v7 = [v4 voiceOverDescriptions];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = [*(a1 + 32) voiceOverAnnouncer];
        [v16 announceMessage:v15 type:0 completion:0];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)refreshOverlays
{
  if (!self->_overlaysSuppressed)
  {
    v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    if (([v3 userIsTouching] & 1) == 0)
    {
      v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      if (![v4 isSynchronizingRecognizers])
      {
        v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        v8 = [v7 isFetchingElements];

        if ((v8 & 1) == 0)
        {
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = __36__CACDisplayManager_refreshOverlays__block_invoke_2;
          v9[3] = &unk_279CEB2D0;
          v9[4] = self;
          v5 = MEMORY[0x277D85CD0];
          v6 = v9;
          goto LABEL_10;
        }

LABEL_9:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __36__CACDisplayManager_refreshOverlays__block_invoke;
        block[3] = &unk_279CEB2D0;
        block[4] = self;
        v5 = MEMORY[0x277D85CD0];
        v6 = block;
LABEL_10:
        dispatch_async(v5, v6);
        return;
      }
    }

    goto LABEL_9;
  }

  [(CACDisplayManager *)self hideAnyOverlay];
}

uint64_t __36__CACDisplayManager_refreshOverlays__block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_refreshOverlays object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel_refreshOverlays withObject:0 afterDelay:0.25];
}

- (void)hideAnyOverlayAnimated:(BOOL)a3 includeInteractiveOverlays:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v17 = *MEMORY[0x277D85DE8];
  [(CACDisplayManager *)self setGridDidDrill:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) hideAnyOverlayAnimated:v5 includeInteractiveOverlays:v4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)hideObsoletePresentationsIfNeededForElements:(id)a3
{
  v4 = a3;
  v5 = [(CACDisplayManager *)self correctionPresentationManager];
  [v5 hideIfNeededForElements:v4];
}

- (void)hideAnyPresentationAnimated:(BOOL)a3 includingOutOfProcessPresentations:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) hideAnyPresentationAnimated:v5 includingOutOfProcessPresentations:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)hideDictationRecognizerModeOverlayNow
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) hideDictationRecognizerModeOverlayNow];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)isDisplayingAnyContentView
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDisplayingAnyContentView])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isDisplayingAnyPresentation
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDisplayingAnyPresentation])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isDisplayingCorrections
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDisplayingCorrections])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isDisplayingAnyInteractiveContentInProcess
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * v7) isDisplayingAnyInteractiveContentInProcess])
        {

          return 1;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [(CACDisplayManager *)self _hasModalAlert];
}

- (BOOL)isDisplayingAnyOutOfProcessPresentation
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDisplayingAnyOutOfProcessPresentation])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)anyPresentationPreventsDictation
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) anyPresentationPreventsDictation])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isDisplayingAnyOverlay
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDisplayingAnyOverlay])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isDisplayingConfirmationModalAlert
{
  v3 = [CACLocaleUtilities localizedUIStringForKey:@"ConfirmationAlertTitle.ExecuteThisCommand"];
  LOBYTE(self) = [(CACDisplayManager *)self _hasModalAlertWithTitle:v3];

  return self;
}

- (void)didUpdateOrientation
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
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

        [*(*(&v8 + 1) + 8 * v7++) redrawGridIfExists];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CACDisplayManager *)self refreshOverlays];
}

- (void)enableStatusBarOverride:(BOOL)a3
{
  v5 = dispatch_semaphore_create(0);
  v6 = [(CACDisplayManager *)self voiceControlStatusPublisher];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __45__CACDisplayManager_enableStatusBarOverride___block_invoke;
  v11 = &unk_279CEC5D8;
  v13 = a3;
  v7 = v5;
  v12 = v7;
  [v6 updateDataWithBlock:&v8];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (!a3)
  {
    [MEMORY[0x277CCACC8] sleepForTimeInterval:{0.25, v8, v9, v10, v11}];
  }
}

intptr_t __45__CACDisplayManager_enableStatusBarOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setVoiceControlActive:v3];
  [v4 setListeningState:0];

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

- (void)_startVoiceControlServer
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Failed to start CACVoiceControlServer %@", &v2, 0xCu);
}

- (id)currentlyDisplayedCorrections:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(CACDisplayManager *)self correctionPresentationManager];
  v4 = [v3 currentlyDisplayedCorrections];
  v5 = v4;
  v6 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = objc_alloc(MEMORY[0x277CE7D90]);
  v9 = +[CACVoiceControlServer _currentDisplayedCorrectionsCommand];
  v13 = @"result";
  v14[0] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v11 = [v8 initWithKey:v9 payload:v10];

  return v11;
}

- (id)currentlyDisplayedOverlayLabels:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v5 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v51;
    v8 = 0x279CEA000uLL;
    do
    {
      v9 = 0;
      do
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        v11 = [*(v8 + 1776) sharedCACSpokenCommandManager];
        v12 = [v11 isActiveOverlayType:@"NumberedElements"];

        if (v12)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v13 = [v10 labeledElementsOverlayManager];
          v14 = [v13 labeledElementsCopy];

          v15 = [v14 countByEnumeratingWithState:&v46 objects:v57 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v47;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v47 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v46 + 1) + 8 * i);
                v20 = [v19 label];

                if (v20)
                {
                  v21 = [v19 numberedLabel];
                  [v4 addObject:v21];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v46 objects:v57 count:16];
            }

            while (v16);
            goto LABEL_16;
          }

          goto LABEL_19;
        }

        v22 = [*(v8 + 1776) sharedCACSpokenCommandManager];
        v23 = [v22 isActiveOverlayType:@"NamedElements"];

        if (v23)
        {
          v14 = [v10 elementNamesOverlayManager];
          v24 = [v14 voiceOverDescriptions];
          [v4 addObjectsFromArray:v24];

          goto LABEL_19;
        }

        v25 = [*(v8 + 1776) sharedCACSpokenCommandManager];
        v26 = [v25 isActiveOverlayType:@"NumberedGrid"];

        if (v26)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v27 = [v10 labeledGridOverlayManager];
          v14 = [v27 labeledElements];

          v28 = [v14 countByEnumeratingWithState:&v42 objects:v56 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v43;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v43 != v30)
                {
                  objc_enumerationMutation(v14);
                }

                v32 = *(*(&v42 + 1) + 8 * j);
                v33 = [v32 label];

                if (v33)
                {
                  v34 = [v32 label];
                  [v4 addObject:v34];
                }
              }

              v29 = [v14 countByEnumeratingWithState:&v42 objects:v56 count:16];
            }

            while (v29);
LABEL_16:
            v8 = 0x279CEA000;
          }

LABEL_19:
        }

        ++v9;
      }

      while (v9 != v6);
      v35 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      v6 = v35;
    }

    while (v35);
  }

  v36 = objc_alloc(MEMORY[0x277CE7D90]);
  v37 = +[CACVoiceControlServer _currentlyDisplayedOverlayLabelsCommand];
  v54 = @"result";
  v55 = v4;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v39 = [v36 initWithKey:v37 payload:v38];

  return v39;
}

- (void)_updateForCurrentStatusIndicatorType
{
  v3 = [(CACDisplayManager *)self statusIndicatorType];
  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 2;
  }

  v5 = [(CACDisplayManager *)self voiceControlStatusPublisher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__CACDisplayManager__updateForCurrentStatusIndicatorType__block_invoke;
  v6[3] = &__block_descriptor_40_e47_v16__0__STMutableVoiceControlStatusDomainData_8l;
  v6[4] = v4;
  [v5 updateDataWithBlock:v6];
}

- (void)setStatusIndicatorType:(int64_t)a3
{
  if (self->_statusIndicatorType != a3)
  {
    self->_statusIndicatorType = a3;
    [(CACDisplayManager *)self _updateForCurrentStatusIndicatorType];
  }
}

- (id)_defaultScreenSceneManager
{
  if ([(CACDisplayManager *)self carPlayConnected])
  {
    [(CACDisplayManager *)self _carScreenSceneManager];
  }

  else
  {
    [(NSMutableArray *)self->_sceneManagers firstObject];
  }
  v3 = ;

  return v3;
}

- (id)_carScreenSceneManager
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = self->_sceneManagers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = *MEMORY[0x277D776C8];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 scene];
        v10 = [v9 session];
        v11 = [v10 role];
        v12 = [v11 isEqual:v6];

        if (v12)
        {
          v13 = v8;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_mainScreenSceneManager
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_sceneManagers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 scene];
        v8 = [v7 screen];
        v9 = [MEMORY[0x277D759A0] mainScreen];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (CGPoint)defaultPortraitUpPointForGestures
{
  v2 = [(CACDisplayManager *)self _defaultScreenSceneManager];
  v3 = [v2 labeledGridOverlayManager];
  v4 = [v3 isShowing];

  if (v4)
  {
    v5 = [v2 labeledGridOverlayManager];
    [v5 portraitUpCenterPoint];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v5 = [v2 scene];
    v10 = [v5 screen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v2 scene];
    v20 = [v19 screen];
    CACPortraitUpRectFromScreenRect(v20, v12, v14, v16, v18);
    AX_CGRectGetCenter();
    v7 = v21;
    v9 = v22;
  }

  v23 = v7;
  v24 = v9;
  result.y = v24;
  result.x = v23;
  return result;
}

- (id)labeledElementsOverlayManager
{
  v2 = [(CACDisplayManager *)self _mainScreenSceneManager];
  v3 = [v2 labeledElementsOverlayManager];

  return v3;
}

- (id)elementNamesOverlayManager
{
  v2 = [(CACDisplayManager *)self _mainScreenSceneManager];
  v3 = [v2 elementNamesOverlayManager];

  return v3;
}

- (id)gestureLivePreviewPresentationOverlayManager
{
  v2 = [(CACDisplayManager *)self _mainScreenSceneManager];
  v3 = [v2 gestureLivePreviewPresentationOverlayManager];

  return v3;
}

- (id)elementActionsPresentationManager
{
  v2 = [(CACDisplayManager *)self _mainScreenSceneManager];
  v3 = [v2 elementActionsPresentationManager];

  return v3;
}

- (id)correctionPresentationManager
{
  v2 = [(CACDisplayManager *)self _mainScreenSceneManager];
  v3 = [v2 correctionPresentationManager];

  return v3;
}

- (id)customCommandEditorPresentationManager
{
  v2 = [(CACDisplayManager *)self _mainScreenSceneManager];
  v3 = [v2 customCommandEditorPresentationManager];

  return v3;
}

- (id)dictationRecognizerModeOverlayManager
{
  v2 = [(CACDisplayManager *)self _mainScreenSceneManager];
  v3 = [v2 dictationRecognizerModeOverlayManager];

  return v3;
}

- (id)contextCluesPresentationManager
{
  v2 = [(CACDisplayManager *)self _mainScreenSceneManager];
  v3 = [v2 contextCluesPresentationManager];

  return v3;
}

- (CACVoiceOverAnnouncer)voiceOverAnnouncer
{
  voiceOverAnnouncer = self->_voiceOverAnnouncer;
  if (!voiceOverAnnouncer)
  {
    v4 = objc_alloc_init(CACVoiceOverAnnouncer);
    v5 = self->_voiceOverAnnouncer;
    self->_voiceOverAnnouncer = v4;

    voiceOverAnnouncer = self->_voiceOverAnnouncer;
  }

  return voiceOverAnnouncer;
}

- (id)labeledElementsForItemNumbers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) labeledElementsOverlayManager];
        v10 = [v9 labeledElementsCopy];
        [v3 addObjectsFromArray:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_labeledTextSegmentElementsIncludingOnlyVisible:(BOOL)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v7 = [v6 focusedElement];

  if (v7 && (+[CACSpokenCommandManager sharedCACSpokenCommandManager](CACSpokenCommandManager, "sharedCACSpokenCommandManager"), v8 = objc_claimAutoreleasedReturnValue(), [v8 disambiguationHandler], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = [(CACDisplayManager *)self _uiPresentingSceneManagers];
    v45 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v45)
    {
      v43 = *v58;
      v11 = MEMORY[0x277CBEBF8];
      v44 = a3;
      do
      {
        v12 = 0;
        do
        {
          if (*v58 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v57 + 1) + 8 * v12);
          v14 = [v13 editingModeOverlayManager];
          v15 = v14;
          v46 = v13;
          v47 = v12;
          if (a3)
          {
            [v14 displayedOverlayElements];
          }

          else
          {
            [v14 overlayElementsForCommandHandling];
          }
          v16 = ;

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v48 = v16;
          v17 = [v48 countByEnumeratingWithState:&v53 objects:v62 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v54;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v54 != v19)
                {
                  objc_enumerationMutation(v48);
                }

                v21 = *(*(&v53 + 1) + 8 * i);
                v22 = [CACLabeledElement alloc];
                [v21 axFrame];
                v23 = [(CACLabeledElement *)v22 initWithElement:v7 recognitionStrings:v11 rectangle:?];
                v24 = [v21 range];
                v26 = [CACTextMarkerRange markerRangeWithNSRange:v24, v25];
                [(CACLabeledElement *)v23 setTextMarkerRange:v26];

                -[CACLabeledElement setNumber:](v23, "setNumber:", [v21 number]);
                [v5 addObject:v23];
              }

              v18 = [v48 countByEnumeratingWithState:&v53 objects:v62 count:16];
            }

            while (v18);
          }

          v27 = [v46 linesEditingModeOverlayManager];
          v28 = v27;
          if (a3)
          {
            [v27 displayedOverlayElements];
          }

          else
          {
            [v27 overlayElementsForCommandHandling];
          }
          v29 = ;

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v30 = v29;
          v31 = [v30 countByEnumeratingWithState:&v49 objects:v61 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v50;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v50 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v49 + 1) + 8 * j);
                v36 = [CACLabeledElement alloc];
                [v35 axFrame];
                v37 = [(CACLabeledElement *)v36 initWithElement:v7 recognitionStrings:v11 rectangle:?];
                v38 = [v35 range];
                v40 = [CACTextMarkerRange markerRangeWithNSRange:v38, v39];
                [(CACLabeledElement *)v37 setTextMarkerRange:v40];

                -[CACLabeledElement setNumber:](v37, "setNumber:", [v35 number]);
                [v5 addObject:v37];
              }

              v32 = [v30 countByEnumeratingWithState:&v49 objects:v61 count:16];
            }

            while (v32);
          }

          v12 = v47 + 1;
          a3 = v44;
        }

        while (v47 + 1 != v45);
        v45 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v45);
    }

    v10 = v5;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (id)labeledElementsForGrid
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) labeledGridOverlayManager];
        v10 = [v9 labeledElements];
        [v3 addObjectsFromArray:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)updateGridLayoutWithNumberOfRows:(unint64_t)a3 numberOfColumns:(unint64_t)a4 shouldPreferRows:(BOOL)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__CACDisplayManager_updateGridLayoutWithNumberOfRows_numberOfColumns_shouldPreferRows___block_invoke;
  v5[3] = &unk_279CEC3B0;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  v6 = a5;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __87__CACDisplayManager_updateGridLayoutWithNumberOfRows_numberOfColumns_shouldPreferRows___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v8 + 1) + 8 * v7++) updateGridLayoutWithNumberOfRows:*(a1 + 40) numberOfColumns:*(a1 + 48) shouldPreferRows:*(a1 + 56) startingNumber:v5 + 1];
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)updateGridLayoutFromPreferences
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) updateGridLayoutFromPreferences];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (void)updatePreferencesFromCurrentGridLayoutForRows:(BOOL)a3 forColumns:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11 = +[CACPreferences sharedPreferences];
  [v11 setGridOverlayCustomColumnsEnabled:v4];
  if (v4)
  {
    v7 = [(CACDisplayManager *)self _mainScreenSceneManager];
    v8 = [v7 labeledGridOverlayManager];
    [v11 setGridOverlayCustomColumnsCount:{objc_msgSend(v8, "currentNumberOfColumns")}];
  }

  [v11 setGridOverlayCustomRowsEnabled:v5];
  if (v5)
  {
    v9 = [(CACDisplayManager *)self _mainScreenSceneManager];
    v10 = [v9 labeledGridOverlayManager];
    [v11 setGridOverlayCustomRowsCount:{objc_msgSend(v10, "currentNumberOfRows")}];
  }
}

- (BOOL)updateGridWithPortraitUpRect:(CGRect)a3 gridContainingLabel:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v38 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = self;
  obj = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v27)
  {
    v25 = 0;
    v26 = *v33;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 labeledGridOverlayManager];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v13 = [v12 labeledElements];
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v28 + 1) + 8 * j) label];
              v19 = [v18 isEqualToString:v9];

              if (v19)
              {
                v20 = [v11 labeledGridOverlayManager];
                [v20 setStartingNumber:1];

                v21 = [v11 labeledGridOverlayManager];
                v25 = [v21 updateOverlayWithPortraitUpRect:v9 gridContainingLabel:{x, y, width, height}];

                [(CACDisplayManager *)v24 setGridDidDrill:[(CACDisplayManager *)v24 gridDidDrill]^ 1];
                goto LABEL_16;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v13 = [v11 labeledGridOverlayManager];
        [v13 hide];
LABEL_16:
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v27);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (void)resetGrid
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 labeledGridOverlayManager];
        [v9 resetAndDrawAtTopLevelWithStartingNumber:v5 + 1];

        v5 += [v8 numberOfLabelsForGridManager];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)resetGridIdleTimer
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) labeledGridOverlayManager];
        [v7 resetIdleTimer];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)isGridAtTopLevel
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CACDisplayManager *)self _uiPresentingSceneManagers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) labeledGridOverlayManager];
        v8 = [v7 currentLevel];

        if (v8 > 1)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (void)showElementActionsForElement:(id)a3 usingPortraitUpRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  if ([CACElementActionsPresentationManager canShowElementActionsForElement:?])
  {
    v9 = [(CACDisplayManager *)self elementActionsPresentationManager];
    [v9 showElementActionsForElement:v10 usingPortraitUpRect:{x, y, width, height}];
  }

  else
  {
    v9 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.NoElementActionsAvailable"];
    [(CACDisplayManager *)self displayMessageString:v9 type:0];
  }
}

- (void)showOverlayForDictiationRecognizerMode
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v4 = [v3 focusedElement];

  if (!v4)
  {
LABEL_8:
    v10 = MEMORY[0x277D82BB8];
    v11 = [(CACDisplayManager *)self dictationRecognizerModeOverlayManager];
    [v10 cancelPreviousPerformRequestsWithTarget:v11 selector:sel_showOverlayForDictiationRecognizerMode object:0];

    v12 = [(CACDisplayManager *)self dictationRecognizerModeOverlayManager];
    [v12 hideWithoutAnimation];
    goto LABEL_9;
  }

  if ([(CACDisplayManager *)self isDisplayingCorrections])
  {
LABEL_7:
    if (![(CACDisplayManager *)self isDisplayingCorrections])
    {
      return;
    }

    goto LABEL_8;
  }

  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  if (![v5 dictationRecognizerMode])
  {

    goto LABEL_7;
  }

  v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v7 = [v6 currentInteractionLevel];

  if (v7)
  {
    goto LABEL_7;
  }

  v8 = MEMORY[0x277D82BB8];
  v9 = [(CACDisplayManager *)self dictationRecognizerModeOverlayManager];
  [v8 cancelPreviousPerformRequestsWithTarget:v9 selector:sel_showOverlayForDictiationRecognizerMode object:0];

  v12 = [(CACDisplayManager *)self dictationRecognizerModeOverlayManager];
  [v12 performSelector:sel_showOverlayForDictiationRecognizerMode withObject:0 afterDelay:2.5];
LABEL_9:
}

- (void)showCorrectionsForElement:(id)a3 nBestStrings:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CACDisplayManager_showCorrectionsForElement_nBestStrings___block_invoke;
  block[3] = &unk_279CEB550;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__CACDisplayManager_showCorrectionsForElement_nBestStrings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) correctionPresentationManager];
  [v2 showCorrectionsForElement:*(a1 + 40) nBestStrings:*(a1 + 48)];
}

- (void)hideCorrections
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CACDisplayManager_hideCorrections__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __36__CACDisplayManager_hideCorrections__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) correctionPresentationManager];
  [v1 hideAnimated:1 completion:0];
}

- (void)showCustomCommandEditorWithGesture:(id)a3
{
  v4 = a3;
  v5 = [(CACDisplayManager *)self customCommandEditorPresentationManager];
  v6 = [v5 showCustomCommandEditorWithGesture:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Error.RecordedEmptyGesture"];
    [(CACDisplayManager *)self displayMessageString:v7 type:1];
  }
}

- (void)showCustomCommandEditorWithTextToInsert:(id)a3
{
  v4 = a3;
  v5 = [(CACDisplayManager *)self customCommandEditorPresentationManager];
  [v5 showCustomCommandEditorWithTextToInsert:v4];
}

- (void)showCustomCommandEditorWithRecordedUserActionFlow:(id)a3
{
  v4 = a3;
  v5 = [(CACDisplayManager *)self customCommandEditorPresentationManager];
  v6 = [v5 showCustomCommandEditorWithRecordedUserActionFlow:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Error.RecordedEmptyUserActionFlow"];
    [(CACDisplayManager *)self displayMessageString:v7 type:1];
  }
}

- (void)showCustomCommandEditorWithShortcutsWorkflow:(id)a3
{
  v4 = a3;
  v5 = [(CACDisplayManager *)self customCommandEditorPresentationManager];
  v6 = [v5 showCustomCommandEditorWithShortcutsWorkflow:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [CACLocaleUtilities localizedUIStringForKey:@"CustomCommand.Error.MissingShortcutsWorkflow"];
    [(CACDisplayManager *)self displayMessageString:v7 type:1];
  }
}

- (void)showContextCluesViewWithCommands:(id)a3
{
  v4 = a3;
  v5 = [(CACDisplayManager *)self contextCluesPresentationManager];
  [v5 showWithCommands:v4];
}

- (void)showLiveRecordingGesturePreview
{
  v3 = CACLogGestureRecording();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CACDisplayManager *)v3 showLiveRecordingGesturePreview];
  }

  v4 = [(CACDisplayManager *)self gestureLivePreviewPresentationOverlayManager];
  [v4 showGestureLivePreviewViewer];
}

- (void)addPointsToLiveRecordingGesturePreviewByFingerIdentifier:(id)a3 forces:(id)a4 atTime:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CACDisplayManager *)self gestureLivePreviewPresentationOverlayManager];
  [v10 addPointsToLiveRecordingGesturePreviewByFingerIdentifier:v9 forces:v8 atTime:a5];
}

- (void)removeTrackingForFingerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CACDisplayManager *)self gestureLivePreviewPresentationOverlayManager];
  [v5 removeTrackingForFingerIdentifier:v4];
}

- (void)hideLiveRecordingGesturePreview
{
  v2 = [(CACDisplayManager *)self gestureLivePreviewPresentationOverlayManager];
  [v2 hideAnimated:1 completion:&__block_literal_global_769];
}

void __52__CACDisplayManager_hideLiveRecordingGesturePreview__block_invoke()
{
  v0 = CACLogGestureRecording();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __52__CACDisplayManager_hideLiveRecordingGesturePreview__block_invoke_cold_1(v0);
  }
}

- (id)_test_activeEditingOverlayElements
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_sceneManagers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 linesEditingModeOverlayManager];
        v11 = [v9 editingModeOverlayManager];
        v12 = [v10 viewController];

        if (v12)
        {
          v13 = [v10 displayedOverlayElements];
          [v3 addObjectsFromArray:v13];
        }

        v14 = [v11 viewController];

        if (v14)
        {
          v15 = [v11 displayedOverlayElements];
          [v3 addObjectsFromArray:v15];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v3;
}

- (_NSRange)targetOverlayRange
{
  objc_copyStruct(v4, &self->_targetOverlayRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

void __39__CACDisplayManager_carPlayDidConnect___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Failed to get the vehicle certificate to process CarPlay layout: %@", &v2, 0xCu);
}

@end