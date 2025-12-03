@interface UIApplication
+ (BOOL)_shouldBigify;
+ (BOOL)isRunningEventPump;
+ (BOOL)isRunningInStoreDemoMode;
+ (id)_accessibilitySettingsBundle;
+ (id)_applicationNameForMenus;
+ (id)_sanitizeBundleString:(id)string;
+ (id)_stringForBackgroundStyle:(int64_t)style;
+ (id)_stringsForStatusBarStyleOverrides:(unint64_t)overrides;
+ (id)stringForInterfaceOrientation:(int64_t)orientation;
+ (id)stringForStatusBarStyle:(int64_t)style;
+ (id)stringForStatusBarStyleOverrides:(unint64_t)overrides;
+ (int64_t)_backgroundStyleForString:(id)string;
+ (int64_t)interfaceOrientationForString:(id)string;
+ (int64_t)runningInStoreDemoModeFProgramNumber;
+ (int64_t)statusBarStyleForString:(id)string;
+ (unint64_t)_statusBarStyleOverridesForArray:(id)array;
+ (void)_accessibilityLoadSettingsLoaderIfNeeded;
+ (void)_attemptRequestingSystemUIServiceSceneWithRetry;
+ (void)_requestSystemUIServiceSceneWithCompletion:(id)completion;
+ (void)_setDebugUserInterfaceStyleOverride:(int64_t)override;
+ (void)_setExpectsCADisplays:(BOOL)displays;
+ (void)_setupDefaultEnvironmentWithScreen:(id)screen;
+ (void)_startStatusBarServerIfNecessary;
+ (void)_updateAccessibilitySettingsLoader;
+ (void)registerObjectForStateRestoration:(id)object restorationIdentifier:(NSString *)restorationIdentifier;
- (BOOL)_accessibilityApplicationIsSystemWideServer;
- (BOOL)_appAdoptsUISceneLifecycle;
- (BOOL)_areKeyboardHUDsEnabled;
- (BOOL)_canAnimateDragCancelInApp;
- (BOOL)_canOpenURL:(id)l publicURLsOnly:(BOOL)only;
- (BOOL)_canReceiveDeviceOrientationEvents;
- (BOOL)_didEatCurrentTouchForWindow:(id)window;
- (BOOL)_doRestorationIfNecessary;
- (BOOL)_eatCurrentTouchForWindow:(id)window ifPredicate:(id)predicate;
- (BOOL)_handleDelegateCallbacksWithOptions:(id)options isSuspended:(BOOL)suspended restoreState:(BOOL)state;
- (BOOL)_handleKeyboardShortcutForKeyboardEvent:(id)event allowsRepeat:(BOOL)repeat;
- (BOOL)_hasKeyboardShortcutForKeyboardEvent:(id)event;
- (BOOL)_hasStoryboard;
- (BOOL)_isAutorotationDisabledForAppWindows;
- (BOOL)_isGlobeKeyShortcutHUDEnabled;
- (BOOL)_isInteractionEvent:(__GSEvent *)event;
- (BOOL)_isOrientationVerticallyCompact:(int64_t)compact;
- (BOOL)_isSensitiveUIEnabled;
- (BOOL)_isSpringBoardShowingAnAlert;
- (BOOL)_isStatusBarEffectivelyHiddenForContentOverlayInsetsForWindow:(id)window;
- (BOOL)_isStatusBarForcedHiddenForOrientation:(int64_t)orientation;
- (BOOL)_isStatusBarHiddenForOrientation:(int64_t)orientation;
- (BOOL)_isSupportedOrientation:(int64_t)orientation;
- (BOOL)_needsShakesWhenInactive;
- (BOOL)_openURL:(id)l;
- (BOOL)_performKeyboardShortcutInvocation:(id)invocation allowsRepeat:(BOOL)repeat;
- (BOOL)_prepareButtonEvent:(id)event type:(int64_t)type phase:(int64_t)phase timestamp:(double)timestamp contextID:(unsigned int)d;
- (BOOL)_prepareButtonEvent:(id)event type:(int64_t)type phase:(int64_t)phase timestamp:(double)timestamp force:(double)force clickCount:(unint64_t)count longClick:(BOOL)click contextID:(unsigned int)self0;
- (BOOL)_prepareButtonEvent:(id)event withPressInfo:(id)info;
- (BOOL)_saveSnapshotWithName:(id)name;
- (BOOL)_shakeToUndoEnabledForWindow:(id)window;
- (BOOL)_shouldAllowKeyboardArbiter;
- (BOOL)_shouldAttemptOpenURL:(id)l;
- (BOOL)_shouldHandleTestURL:(id)l;
- (BOOL)_shouldShowAlertForUndoManager:(id)manager;
- (BOOL)_shouldUpdateSerializableKeyCommandsForResponder:(id)responder;
- (BOOL)_statusBarOrientationFollowsWindow:(id)window;
- (BOOL)_supportsIndirectInputEvents;
- (BOOL)_supportsOpenMainMenuCommands;
- (BOOL)_supportsPrintCommand;
- (BOOL)_systemShellAllowsInteractionTrackingKeyboardFocusUpdateForWindow:(id)window;
- (BOOL)_updateDefaultImage;
- (BOOL)_viewServiceIgnoresSceneForLegacyInterfaceOrientation:(id)orientation;
- (BOOL)_wantsCompactStatusBarHiding;
- (BOOL)activityContinuationManager:(id)manager continueUserActivity:(id)activity;
- (BOOL)activityContinuationManager:(id)manager willContinueUserActivityWithType:(id)type;
- (BOOL)activityContinuationManagerHandleErrorsByConfiguringProgressUI:(id)i;
- (BOOL)becomeFirstResponder;
- (BOOL)canOpenURL:(NSURL *)url;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)handleEvent:(__GSEvent *)event withNewEvent:(id)newEvent;
- (BOOL)handleTestURL:(id)l;
- (BOOL)isLaunchTest:(id)test;
- (BOOL)isPasscodeRequiredToUnlock;
- (BOOL)isProximitySensingEnabled;
- (BOOL)isRegisteredForRemoteNotifications;
- (BOOL)isRunningInTaskSwitcher;
- (BOOL)isRunningQuitTest;
- (BOOL)isRunningSuspendTest;
- (BOOL)isRunningTest:(id)test;
- (BOOL)isStatusBarHidden;
- (BOOL)isSuspended;
- (BOOL)isSuspendedEventsOnly;
- (BOOL)isSuspendedUnderLock;
- (BOOL)launchApplicationWithIdentifier:(id)identifier suspended:(BOOL)suspended;
- (BOOL)removeDefaultImage:(id)image forScreen:(id)screen;
- (BOOL)reportApplicationSuspended;
- (BOOL)rotateIfNeeded:(int64_t)needed;
- (BOOL)runTest:(id)test options:(id)options;
- (BOOL)sendAction:(SEL)action to:(id)target from:(id)sender forEvent:(UIEvent *)event;
- (BOOL)setKeepAliveTimeout:(NSTimeInterval)timeout handler:(void *)keepAliveHandler;
- (BOOL)shouldBeginCurrentRepetitionOfRepeatedAction:(id)action forPhase:(unint64_t)phase;
- (BOOL)shouldInvokeRepeatedAction:(id)action forTarget:(id)target object:(id)object;
- (BOOL)supportsAlternateIcons;
- (BOOL)supportsMultipleScenes;
- (CGRect)statusBarFrame;
- (CGRect)statusBarFrameForOrientation:(int64_t)orientation;
- (Class)_accessibilityBundlePrincipalClass;
- (NSArray)scheduledLocalNotifications;
- (NSArray)shortcutItems;
- (NSInteger)applicationIconBadgeNumber;
- (NSSet)connectedScenes;
- (UIApplication)init;
- (UIApplicationState)applicationState;
- (UIBackgroundRefreshStatus)backgroundRefreshStatus;
- (UIContentSizeCategory)preferredContentSizeCategory;
- (UIInterfaceOrientation)statusBarOrientation;
- (UIRemoteNotificationType)enabledRemoteNotificationTypes;
- (UIUserInterfaceLayoutDirection)userInterfaceLayoutDirection;
- (UIUserNotificationSettings)currentUserNotificationSettings;
- (_UIResponderChainFixerUpper)_responderBasedEventDeliverer;
- (__CFMessagePort)_purplePPTServerPort;
- (__CFRunLoop)_eventFetchRunLoop;
- (__GSKeyboard)GSKeyboardForHWLayout:(id)layout senderID:(unint64_t)d forceRebuild:(BOOL)rebuild createIfNeeded:(BOOL)needed;
- (__GSKeyboard)_hardwareKeyboardForPhysicalKeyboardEvent:(id)event createIfNeeded:(BOOL)needed;
- (double)_initialTouchTimestampForWindow:(id)window;
- (double)defaultImageSnapshotExpiration;
- (double)statusBarHeight;
- (double)statusBarHeightForOrientation:(int64_t)orientation ignoreHidden:(BOOL)hidden;
- (double)windowRotationDuration;
- (float)backlightLevel;
- (id)_backgroundModes;
- (id)_cachedSystemAnimationFenceCreatingIfNecessary:(BOOL)necessary;
- (id)_connectUISceneFromFBSScene:(id)scene transitionContext:(id)context;
- (id)_createSnapshotContextForScene:(id)scene withName:(id)name performLayoutWithSettings:(id)settings;
- (id)_createSnapshotContextForSceneRemoval:(id)removal withName:(id)name;
- (id)_currentFrameCountForTestDisplay;
- (id)_currentHardwareKeyboardLayoutName;
- (id)_currentKeyboardShortcutInvocationForKeyboardEvent:(id)event;
- (id)_currentOpenApplicationEndpointForEnvironment:(id)environment;
- (id)_defaultSceneIfExists;
- (id)_defaultUISceneOrMainScreenPlaceholderIfExists;
- (id)_defaultUIWindowHostingUISceneOrMainScreenPlaceholderIfExists;
- (id)_discardedSceneSessionIdentifiersSinceLastRunWithContext:(id)context knownSessions:(id)sessions;
- (id)_exclusiveTouchWindows;
- (id)_findPrintTarget:(id)target;
- (id)_findUISceneForLegacyInterfaceOrientation;
- (id)_firstCommitBlock;
- (id)_forceStageObservable;
- (id)_hoverEventForWindowSpringBoardOnly:(id)only;
- (id)_idleModeController;
- (id)_implicitStatusBarAnimationParametersWithClass:(Class)class;
- (id)_implicitStatusBarHiddenAnimationParametersWithViewController:(id)controller animation:(int64_t)animation;
- (id)_implicitStatusBarStyleAnimationParametersWithViewController:(id)controller;
- (id)_keyDownDictionary;
- (id)_keyWindowForScreen:(id)screen;
- (id)_keyboardShortcutMenuLeaves;
- (id)_launchTestName;
- (id)_localCachesDirectory;
- (id)_localizedApplicationName;
- (id)_mainEventEnvironment;
- (id)_mainSceneForDisplay:(id)display;
- (id)_mainStoryboardName;
- (id)_motionKeyWindow;
- (id)_newDefaultStoryboardWindow;
- (id)_openSessionForPersistentIdentifier:(id)identifier;
- (id)_openSessionsIncludingInternal:(BOOL)internal;
- (id)_preferredContentSizeCategory:(unint64_t)category;
- (id)_pressInfoForPhysicalKeyboardEvent:(id)event;
- (id)_removePrivateOptionsFromOptions:(id)options;
- (id)_responderForKeyEvents;
- (id)_rootViewControllers;
- (id)_statusBarWindow;
- (id)_statusBarWindowIfExistsForScene:(id)scene;
- (id)_storyboardInitialMenu;
- (id)_systemAnimationFenceCreatingIfNecessary:(BOOL)necessary;
- (id)_topMostViewController:(uint64_t)controller;
- (id)_touchesEvent;
- (id)_unswizzledTargetInChainForAction:(SEL)action sender:(id)sender;
- (id)_urlWithSettingsPrivateURLSchemeIfNeeded:(id)needed;
- (id)activityContinuationManagerUserCancelledError:(id)error;
- (id)getKeyboardDevicePropertiesForSenderID:(unint64_t)d shouldUpdate:(BOOL)update usingSyntheticEvent:(BOOL)event;
- (id)keyCommands;
- (id)nextResponder;
- (id)repeatedAction:(id)action prepareInvocationObject:(id)object forPhase:(unint64_t)phase;
- (id)resultsForTest:(id)test;
- (id)statusBarWindow;
- (id)statusBarWithWindow:(id)window;
- (id)subTest:(id)test ForTest:(id)forTest withMetrics:(id)metrics;
- (id)textInputMode;
- (id)userCachesDirectory;
- (id)userHomeDirectory;
- (id)userInfoDictionaryForRunLoopMode:(id)mode requester:(id)requester;
- (id)userLibraryDirectory;
- (int)_loadMainInterfaceFile;
- (int)_loadMainNibFileNamed:(id)named bundle:(id)bundle;
- (int)_loadMainStoryboardFileNamed:(id)named bundle:(id)bundle;
- (int64_t)_carefulChoiceOrientation;
- (int64_t)_carefulChoiceOrientationForWindow:(id)window;
- (int64_t)_classicMode;
- (int64_t)_currentExpectedInterfaceOrientation;
- (int64_t)_defaultSceneInterfaceOrientationReturningUnknownForNilScene:(BOOL)scene;
- (int64_t)_fallbackInterfaceOrientationForSupportedOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation currentOrientation:(int64_t)currentOrientation;
- (int64_t)_pressTypeForKeyboardEvent:(id)event isTextual:(BOOL *)textual;
- (int64_t)_pureEffectiveUserInterfaceStyle;
- (int64_t)_safeInterfaceOrientationForWindowIfExists:(id)exists expectNonNilWindow:(BOOL)window;
- (int64_t)_sceneInterfaceOrientationFromWindow:(id)window;
- (int64_t)_statusBarOrientationForWindow:(id)window;
- (int64_t)_testOrientation:(id)orientation options:(id)options;
- (int64_t)activeInterfaceOrientation;
- (int64_t)defaultStatusForCategory:(int64_t)category error:(id *)error;
- (int64_t)pureUserInterfaceLayoutDirection;
- (uint64_t)_defaultSupportedInterfaceOrientations;
- (uint64_t)_internalHandleHIDEventBypassingUIEvent:(uint64_t)result;
- (uint64_t)_shouldRegisterTopLevelKeyboardShortcutsForWindowScene:(uint64_t)scene;
- (unint64_t)_restorationArchiveProtectionClass;
- (unint64_t)_supportedInterfaceOrientationsForWindow:(id)window;
- (unint64_t)statusBar:(id)bar effectiveStyleOverridesForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides;
- (unsigned)_currentHardwareKeyboardType;
- (void)__completeAndRunAsPlugin;
- (void)__forceEndIgnoringInteractionEvents;
- (void)_accessibilityInit;
- (void)_accessibilitySetUpQuickSpeak;
- (void)_addAfterCACommitBlockForViewController:(id)controller;
- (void)_addHitTestObserver:(id)observer forScene:(id)scene eventType:(int64_t)type;
- (void)_alertItemStateChanged;
- (void)_appendSessionToSessionSet:(id)set save:(BOOL)save;
- (void)_applicationDidEnterBackground;
- (void)_applicationHandleIntentForwardingAction:(id)action;
- (void)_applicationHandleLinkConnectionAction:(id)action;
- (void)_applicationHandleSiriTask:(uint64_t)task;
- (void)_applicationHandleWatchKitRequest:(id)request;
- (void)_applicationOpenURL:(id)l payload:(id)payload;
- (void)_applicationOpenURLAction:(id)action payload:(id)payload origin:(id)origin;
- (void)_applicationShouldRequestHealthAuthorization;
- (void)_beginFenceTaskIfNecessary;
- (void)_beginShowingNetworkActivityIndicator;
- (void)_beginSnapshotSessionForScene:(id)scene withSnapshotBlock:(id)block;
- (void)_callInitializationDelegatesWithActions:(id)actions forScene:(id)scene payload:(id)payload fromOriginatingProcess:(id)process;
- (void)_cancelAllEventsOfType:(int64_t)type onEventRoutingScene:(id)scene;
- (void)_cancelAllInputs;
- (void)_cancelAllInputsOnEventRoutingScene:(id)scene;
- (void)_cancelAllTouches;
- (void)_cancelGestureRecognizersForView:(id)view;
- (void)_cancelPressesIfNeededForViewRemovedFromResponderChain:(id)chain;
- (void)_cancelPressesWithType:(int64_t)type forPressesEvent:(id)event;
- (void)_cancelTouchesIfNeededForViewRemovedFromResponderChain:(id)chain;
- (void)_cancelTouchesOrPresses:(id)presses withEvent:(id)event;
- (void)_cancelTouchesOrPresses:(id)presses withEvent:(id)event includingGestures:(BOOL)gestures notificationBlock:(id)block;
- (void)_cancelUnfinishedPhysicalKeyboardPresses;
- (void)_cancelUnfinishedPhysicalKeyboardPressesForUIWindowEventRoutingScene:(id)scene;
- (void)_cancelUnfinishedPressesForEvent:(id)event;
- (void)_cancelUnfinishedTouchesForEvent:(id)event;
- (void)_cancelViewProcessingOfTouchesOrPresses:(id)presses withEvent:(id)event sendingCancelToViewsOfTouchesOrPresses:(id)orPresses;
- (void)_checkActivityContinuationAndBecomeCurrentIfNeeded;
- (void)_checkBackgroundRefreshAPIAdoption;
- (void)_compellApplicationLaunchToCompleteUnconditionally;
- (void)_configureLaunchOptions:(id)options;
- (void)_configureSnapshotContext:(id)context forScreen:(id)screen scene:(id)scene;
- (void)_createStatusBarIfNeededWithOrientation:(int64_t)orientation forWindowScene:(id)scene;
- (void)_createStatusBarWithRequestedStyle:(int64_t)style orientation:(int64_t)orientation hidden:(BOOL)hidden forWindowScene:(id)scene;
- (void)_deactivateForReason:(int)reason notify:(BOOL)notify;
- (void)_deactivateReachability;
- (void)_deliverRemainingKeyUpEvents;
- (void)_deviceOrientationDidChange:(_BYTE *)change;
- (void)_discardSceneSessions:(id)sessions;
- (void)_discardSceneSessionsWithPersistentIdentifiers:(id)identifiers skippingPersistenceDeletion:(BOOL)deletion;
- (void)_eatCurrentTouchForWindow:(id)window;
- (void)_endBackgroundTask:(unint64_t)task;
- (void)_endShowingNetworkActivityIndicator;
- (void)_executeNextResizeSubTest;
- (void)_executeResizeTest;
- (void)_fetchInfoPlistFlags;
- (void)_findBestActivityToMakeCurrent:(id)current;
- (void)_finishButtonEvent:(id)event;
- (void)_forceEndIgnoringInteractionEvents;
- (void)_handleApplicationShortcutAction:(id)action onWindowScene:(id)scene;
- (void)_handleDaemonApplicationActivationWithScene:(id)scene completion:(id)completion;
- (void)_handleDeviceOrientationChangedEvent:(__GSEvent *)event;
- (void)_handleHIDEvent:(__IOHIDEvent *)event;
- (void)_handleHeadsetButtonClick;
- (void)_handleHeadsetButtonDoubleClick;
- (void)_handleHeadsetButtonTripleClick;
- (void)_handleKeyHIDEvent:(__IOHIDEvent *)event usingSyntheticEvent:(BOOL)syntheticEvent;
- (void)_handleKeyUIEvent:(id)event;
- (void)_handleKeyboardPressEvent:(id)event;
- (void)_handleLocalizationDelegateCallbacks;
- (void)_handleNonLaunchSpecificActions:(id)actions forScene:(id)scene withTransitionContext:(id)context completion:(id)completion;
- (void)_handleScreenshot;
- (void)_handleSuspensionActions;
- (void)_handleTaskCompletionAndTerminate:(id)terminate;
- (void)_handleUnicodeEvent:(__IOHIDEvent *)event;
- (void)_handleUserDefaultsDidChange:(id)change;
- (void)_hardwareKeyboardAvailabilityChanged:(id)changed;
- (void)_headsetButtonUp:(__IOHIDEvent *)up;
- (void)_immediatelyUpdateSerializableKeyCommands;
- (void)_initiateLaunchActionsBackgrounded:(BOOL)backgrounded firstActivation:(BOOL)activation;
- (void)_leak;
- (void)_maybeEffectiveUserInterfaceStyleChanged;
- (void)_noteAnimationFinished:(id)finished;
- (void)_noteAnimationStarted:(id)started;
- (void)_notifyDidChangeStatusBarFrame:(CGRect)frame;
- (void)_notifyWillChangeStatusBarFrame:(CGRect)frame;
- (void)_observeDebugOrTestUserInterfaceStyleChanged;
- (void)_openURL:(id)l options:(id)options completionHandler:(id)handler;
- (void)_openURL:(id)l options:(id)options openApplicationEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)_openURL:(id)l originatingView:(id)view options:(id)options completionHandler:(id)handler;
- (void)_performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming:(BOOL)timing block:(id)block;
- (void)_performBlockAfterCATransactionCommitSynchronizes:(id)synchronizes;
- (void)_performMemoryWarning;
- (void)_performRefreshForUIScene:(id)scene disposeAfter:(BOOL)after completion:(id)completion;
- (void)_performSnapshotsWithAction:(id)action forScene:(id)scene completion:(id)completion;
- (void)_performWithUICACommitStateSnapshotting:(id)snapshotting;
- (void)_pipStateDidChange;
- (void)_popRunLoopMode:(id)mode requester:(id)requester reason:(id)reason;
- (void)_postSimpleRemoteNotificationForAction:(int64_t)action andContext:(int64_t)context trackID:(id)d;
- (void)_presentEditAlertController:(id)controller;
- (void)_purgeSharedInstances;
- (void)_pushRunLoopMode:(id)mode requester:(id)requester reason:(id)reason;
- (void)_receivedMemoryNotification;
- (void)_registerBSActionHandler:(id)handler;
- (void)_registerDefaultApplicationLevelBSActionHandlers;
- (void)_registerForAlertItemStateChangeNotification;
- (void)_registerForBackgroundRefreshStatusChangedNotification;
- (void)_registerForHangTracerEnabledStateChangedNotification;
- (void)_registerForKeyBagLockStatusNotification;
- (void)_registerForKeyboardLayoutChangedNotification;
- (void)_registerForKeyboardPrefChangedNotification;
- (void)_registerForLanguageChangedNotification;
- (void)_registerForLocaleChangedNotification;
- (void)_registerForLocaleWillChangeNotification;
- (void)_registerForNameLayerTreeNotification;
- (void)_registerForRemoteNotificationTypes:(unint64_t)types;
- (void)_registerForSignificantTimeChangeNotification;
- (void)_registerForUserDefaultsChanges;
- (void)_registerInternalBSActionHandler:(id)handler;
- (void)_reloadKeyboardArbiterState;
- (void)_removeHIDGameControllerEventObserver;
- (void)_removeHitTestObserver:(id)observer forScene:(id)scene eventType:(int64_t)type;
- (void)_removeSessionFromSessionSet:(id)set;
- (void)_reportMainSceneUpdateFinished:(id)finished;
- (void)_reportMainSceneUpdateFinishedPossiblyDeferredPortions;
- (void)_reportResults:(id)results;
- (void)_requestDeviceUnlockWithCompletion:(id)completion;
- (void)_requestSceneActivationWithConfiguration:(id)configuration animated:(BOOL)animated sender:(id)sender errorHandler:(id)handler;
- (void)_requestSceneSessionActivationWithConfiguration:(id)configuration errorHandler:(id)handler;
- (void)_resendHoverEventForWindow:(id)window;
- (void)_resetGSKeyboardModifierStateIfNecessary:(__IOHIDEvent *)necessary;
- (void)_restoreApplicationPreservationStateWithSessionIdentifier:(id)identifier beginHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_run;
- (void)_runSubTestForKeyboardBringupWithName:(id)name withShowKeyboardBlock:(id)block withHideKeyboardBlock:(id)keyboardBlock withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock;
- (void)_runSubTestForKeyboardDismissalWithName:(id)name withHideKeyboardBlock:(id)block withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock;
- (void)_runSubTestForKeyboardMergeWithName:(id)name withExtraResultsBlock:(id)block withCleanupBlock:(id)cleanupBlock;
- (void)_runSubTestForKeyboardSplitWithName:(id)name withShowKeyboardBlock:(id)block withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock;
- (void)_runWithDaemonScene:(id)scene completion:(id)completion;
- (void)_runWithMainScene:(id)scene transitionContext:(id)context completion:(id)completion;
- (void)_saveApplicationPreservationState:(id)state viewController:(id)controller sessionIdentifier:(id)identifier beginHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_saveApplicationPreservationStateIfSupported;
- (void)_saveRestorationUserActivityStateForScene:(id)scene;
- (void)_scheduleLocalNotification:(id)notification;
- (void)_scheduleSceneEventResponseForScene:(id)scene withResponseBlock:(id)block;
- (void)_scrollsToTopInitiatorView:(id)view touchesEnded:(id)ended withEvent:(id)event;
- (void)_sendButtonEventWithPressInfo:(id)info;
- (void)_sendButtonEventWithType:(int64_t)type phase:(int64_t)phase timestamp:(double)timestamp;
- (void)_sendButtonEventWithType:(int64_t)type phase:(int64_t)phase timestamp:(double)timestamp contextID:(unsigned int)d;
- (void)_sendDictionaryToPPT:(id)t;
- (void)_sendEventToGameControllerObserver:(__IOHIDEvent *)observer;
- (void)_sendHeadsetOriginatedMediaRemoteCommand:(unsigned int)command;
- (void)_sendMoveEventWithDirection:(int64_t)direction heading:(unint64_t)heading fromEvent:(id)event;
- (void)_sendMoveEventWithPressesEvent:(id)event;
- (void)_sendWillEnterForegroundCallbacks;
- (void)_setAlternateIconName:(id)name completionHandler:(id)handler;
- (void)_setAmbiguousControlCenterActivationMargin:(double)margin;
- (void)_setApplicationBackdropStyle:(int64_t)style;
- (void)_setBackgroundStyle:(int64_t)style;
- (void)_setCachedSystemAnimationFence:(uint64_t)fence;
- (void)_setDisableBecomeFirstResponder:(BOOL)responder;
- (void)_setForcedUserInterfaceLayoutDirection:(int64_t)direction;
- (void)_setHIDGameControllerEventObserver:(id)observer onQueue:(id)queue;
- (void)_setHandlingURL:(BOOL)l url:(id)url;
- (void)_setIdleModeVisualEffectsEnabled:(BOOL)enabled;
- (void)_setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason;
- (void)_setIgnoreHeadsetClicks:(BOOL)clicks;
- (void)_setPreferredUserInterfaceStyle:(int64_t)style forWindowScene:(id)scene;
- (void)_setReachabilitySupported:(BOOL)supported;
- (void)_setRestorationExtended:(BOOL)extended;
- (void)_setRotationDisabledDuringTouch:(BOOL)touch;
- (void)_setStatusBarOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)_setStatusBarWindow:(id)window forScene:(id)scene;
- (void)_setSystemNavigationAction:(id)action;
- (void)_setSystemUserInterfaceStyle:(int64_t)style;
- (void)_setSystemWindowsSecure:(BOOL)secure;
- (void)_setUserDefaultsSyncEnabled:(BOOL)enabled;
- (void)_setupMotionFeedbackGenerator;
- (void)_setupStatusBarWithRequestedStyle:(int64_t)style orientation:(int64_t)orientation hidden:(BOOL)hidden;
- (void)_showEditAlertViewWithUndoManager:(id)manager window:(id)window;
- (void)_statusBarWindow:(id)window didMoveFromScene:(id)scene toScene:(id)toScene;
- (void)_stopDeactivatingForReason:(int)reason;
- (void)_synchronizeSystemAnimationFencesWithSpinCleanUpBlock:(id)block;
- (void)_teardownMotionEventBehavior;
- (void)_terminateWithStatus:(int)status;
- (void)_toggleSoftwareKeyboard:(id)keyboard;
- (void)_trackSystemAnimationFence:(id)fence;
- (void)_unregisterForLanguageChangedNotification;
- (void)_unregisterForLocaleChangedNotification;
- (void)_unregisterForSignificantTimeChangeNotification;
- (void)_unregisterForTimeChangedNotification;
- (void)_unregisterForUserDefaultsChanges;
- (void)_updateAccessibilityItunesSettings;
- (void)_updateAppPriorityForSuspendedState;
- (void)_updateApplicationAccessibility;
- (void)_updateEffectiveUserInterfaceStyleAfterChange:(id)change;
- (void)_updateHangTracer;
- (void)_updateIdleModeStatus;
- (void)_updateLargeTextNotification;
- (void)_updateOrientation;
- (void)_updateSerializableKeyCommandsForResponder:(id)responder;
- (void)_updateSnapshotAndStateRestorationWithAction:(id)action windowScene:(id)scene;
- (void)_updateSnapshotForBackgroundApplication:(BOOL)application;
- (void)_updateStateRestorationArchiveForBackgroundEvent:(id)event saveState:(BOOL)state exitIfCouldNotRestoreState:(BOOL)restoreState updateSnapshot:(BOOL)snapshot windowScene:(id)scene;
- (void)_wakeTimerFired;
- (void)_wheelChangedWithEvent:(id)event;
- (void)_windowDidBecomeApplicationKey:(id)key;
- (void)_windowDidResignApplicationKey:(id)key;
- (void)activateSceneSessionForRequest:(UISceneSessionActivationRequest *)request errorHandler:(void *)errorHandler;
- (void)activityContinuationManager:(id)manager configureProgressUIWithError:(id)error;
- (void)activityContinuationManager:(id)manager didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)activityContinuationManager:(id)manager didUpdateUserActivity:(id)activity;
- (void)activityContinuationManager:(id)manager displayProgressUI:(id)i dismissalHandler:(id)handler;
- (void)activityContinuationManager:(id)manager hideProgressUIWithCompletion:(id)completion;
- (void)addStatusBarItem:(int)item removeOnExit:(BOOL)exit;
- (void)addWebClipToHomeScreen:(id)screen;
- (void)beginIgnoringInteractionEvents;
- (void)beginReceivingRemoteControlEvents;
- (void)buildMenuWithBuilder:(id)builder;
- (void)cancelAllLocalNotifications;
- (void)cancelLocalNotification:(UILocalNotification *)notification;
- (void)clearKeepAliveTimeout;
- (void)dealloc;
- (void)didDismissMiniAlert;
- (void)didReceiveMemoryWarning;
- (void)emitPPTEndTracePointForSubTestName:(id)name identifier:(unint64_t)identifier;
- (void)emitPPTEndTracePointForTestName:(id)name identifier:(unint64_t)identifier;
- (void)emitPPTStartTracePointForSubTestName:(id)name identifier:(unint64_t)identifier testIdentifier:(unint64_t)testIdentifier;
- (void)emitPPTStartTracePointForTestName:(id)name identifier:(unint64_t)identifier;
- (void)endIgnoringInteractionEvents;
- (void)endReceivingRemoteControlEvents;
- (void)failedTest:(id)test withFailure:(id)failure withResults:(id)results;
- (void)finishedIPTest:(id)test extraResults:(id)results withTeardownBlock:(id)block;
- (void)finishedIPTest:(id)test waitForCommit:(BOOL)commit extraResults:(id)results withTeardownBlock:(id)block;
- (void)finishedSubTest:(id)test forTest:(id)forTest;
- (void)finishedSubTest:(id)test forTest:(id)forTest waitForCommit:(BOOL)commit;
- (void)finishedTest:(id)test extraResults:(id)results waitForNotification:(id)notification withTeardownBlock:(id)block;
- (void)finishedTest:(id)test waitForCommit:(BOOL)commit extraResults:(id)results withTeardownBlock:(id)block;
- (void)handleKeyEvent:(__GSEvent *)event;
- (void)handleKeyUIEvent:(id)event;
- (void)ignoreSnapshotOnNextApplicationLaunch;
- (void)installCACommitCompletionBlock:(id)block;
- (void)installNotificationObserverForNotificationName:(id)name forOneNotification:(BOOL)notification usingBlock:(id)block;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)motionBegan:(int64_t)began withEvent:(id)event;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithSettings:(id)settings fromOrientation:(int64_t)fromOrientation;
- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithSettings:(id)settings fromOrientation:(int64_t)fromOrientation screen:(id)screen;
- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)orientation;
- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)orientation screen:(id)screen;
- (void)orderFrontCharacterPalette:(id)palette;
- (void)prepareForDefaultImageSnapshotForScreen:(id)screen;
- (void)prepareSnapshotsWithAction:(id)action forScene:(id)scene completion:(id)completion;
- (void)presentLocalNotificationNow:(UILocalNotification *)notification;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)pushRegistry:(id)registry didInvalidatePushTokenForType:(id)type error:(id)error;
- (void)pushRegistry:(id)registry didReceiveIncomingPushWithPayload:(id)payload forType:(id)type withCompletionHandler:(id)handler;
- (void)pushRegistry:(id)registry didUpdatePushCredentials:(id)credentials forType:(id)type;
- (void)registerForRemoteNotificationTypes:(UIRemoteNotificationType)types;
- (void)registerForRemoteNotifications;
- (void)registerUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings;
- (void)removeApplicationPreservationStateWithSessionIdentifier:(id)identifier;
- (void)repeatedAction:(id)action willInvokeWithTarget:(id)target object:(id)object;
- (void)requestNewScene:(id)scene;
- (void)requestSceneSessionActivation:(UISceneSession *)sceneSession userActivity:(NSUserActivity *)userActivity options:(UISceneActivationRequestOptions *)options errorHandler:(void *)errorHandler;
- (void)requestSceneSessionDestruction:(UISceneSession *)sceneSession options:(UISceneDestructionRequestOptions *)options errorHandler:(void *)errorHandler;
- (void)requestSceneSessionRefresh:(UISceneSession *)sceneSession;
- (void)restoreApplicationPreservationStateWithSessionIdentifier:(id)identifier viewController:(id)controller beginHandler:(id)handler completionHandler:(id)completionHandler;
- (void)rotateIfNeeded:(int64_t)needed before:(id)before after:(id)after;
- (void)runTest:(id)test startingBeforeAnimation:(id)animation stoppingAfterAnimation:(id)afterAnimation;
- (void)runTestForKeyboardBringupAndDismissalWithName:(id)name withShowKeyboardBlock:(id)block withHideKeyboardBlock:(id)keyboardBlock withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock;
- (void)runTestForKeyboardRotationWithName:(id)name fromOrientation:(int64_t)orientation withShowKeyboardBlock:(id)block withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock;
- (void)runTestForKeyboardSplitAndMergeWithName:(id)name withShowKeyboardBlock:(id)block withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock;
- (void)scheduleLocalNotification:(UILocalNotification *)notification;
- (void)sendEvent:(UIEvent *)event;
- (void)setAlternateIconName:(NSString *)alternateIconName completionHandler:(void *)completionHandler;
- (void)setApplicationBadgeString:(id)string;
- (void)setApplicationIconBadgeNumber:(NSInteger)applicationIconBadgeNumber;
- (void)setApplicationSupportsShakeToEdit:(BOOL)applicationSupportsShakeToEdit;
- (void)setBacklightLevel:(float)level;
- (void)setCapsLockDelayOverride:(double)override;
- (void)setDelegate:(id)delegate;
- (void)setDoubleHeightStatusText:(id)text;
- (void)setExpectsFaceContact:(BOOL)contact inLandscape:(BOOL)landscape;
- (void)setHardwareKeyboardLayoutName:(id)name forceRebuild:(BOOL)rebuild;
- (void)setIdleTimerDisabled:(BOOL)idleTimerDisabled;
- (void)setIgnoresInteractionEvents:(BOOL)events;
- (void)setProximityEventsEnabled:(BOOL)enabled;
- (void)setProximitySensingEnabled:(BOOL)proximitySensingEnabled;
- (void)setReceivesMemoryWarnings:(BOOL)warnings;
- (void)setScheduledLocalNotifications:(NSArray *)scheduledLocalNotifications;
- (void)setShortcutItems:(NSArray *)shortcutItems;
- (void)setStatusBarHidden:(BOOL)hidden animationParameters:(id)parameters changeApplicationFlag:(BOOL)flag;
- (void)setStatusBarHidden:(BOOL)hidden duration:(double)duration changeApplicationFlag:(BOOL)flag;
- (void)setStatusBarHidden:(BOOL)hidden withAnimation:(UIStatusBarAnimation)animation;
- (void)setStatusBarOrientation:(UIInterfaceOrientation)interfaceOrientation animated:(BOOL)animated;
- (void)setStatusBarOrientation:(int64_t)orientation animation:(int)animation duration:(double)duration;
- (void)setStatusBarOrientation:(int64_t)orientation animationParameters:(id)parameters;
- (void)setStatusBarOrientation:(int64_t)orientation fromOrientation:(int64_t)fromOrientation windowScene:(id)scene animationParameters:(id)parameters updateBlock:(id)block;
- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle animated:(BOOL)animated;
- (void)setStatusBarStyle:(int64_t)style animation:(int)animation;
- (void)setStatusBarStyle:(int64_t)style animation:(int)animation startTime:(double)time duration:(double)duration curve:(int64_t)curve;
- (void)setStatusBarStyle:(int64_t)style animationParameters:(id)parameters;
- (void)setStatusBarStyle:(int64_t)style duration:(double)duration;
- (void)setSystemVolumeHUDEnabled:(BOOL)enabled forAudioCategory:(id)category;
- (void)setWantsLockEvents:(BOOL)events;
- (void)setWantsVolumeButtonEvents:(BOOL)events;
- (void)setupRepeatActionWithinvocationDelay:(double)delay reset:(BOOL)reset andRepeat:(BOOL)repeat;
- (void)showHelp:(id)help;
- (void)showKeyboardUsingBlock:(id)block withCompletionBlock:(id)completionBlock;
- (void)showNetworkPromptsIfNecessary:(BOOL)necessary;
- (void)significantTimeChange;
- (void)startCHUDRecording:(id)recording;
- (void)startDictation:(id)dictation;
- (void)startLeaking;
- (void)startedAnimationTest:(id)test;
- (void)startedIPTest:(id)test;
- (void)startedSubTest:(id)test forTest:(id)forTest;
- (void)startedSubTest:(id)test forTest:(id)forTest withMetrics:(id)metrics;
- (void)startedTest:(id)test;
- (void)statusBar:(id)bar didAnimateFromHeight:(double)height toHeight:(double)toHeight animation:(int)animation;
- (void)statusBar:(id)bar willAnimateFromHeight:(double)height toHeight:(double)toHeight duration:(double)duration animation:(int)animation;
- (void)stopAndReportResultsForTest:(id)test extraResults:(id)results waitForNotification:(id)notification withTeardownBlock:(id)block;
- (void)stopCHUDRecording;
- (void)stopLeaking;
- (void)suspendReturningToLastApp:(BOOL)app;
- (void)unregisterForRemoteNotifications;
- (void)updateSuspendedSettings:(id)settings;
- (void)validateCommand:(id)command;
- (void)willDisplayMiniAlert;
- (void)workspace:(id)workspace didCreateScene:(id)scene withTransitionContext:(id)context completion:(id)completion;
- (void)workspace:(id)workspace didReceiveActions:(id)actions;
- (void)workspace:(id)workspace willDestroyScene:(id)scene withTransitionContext:(id)context completion:(id)completion;
- (void)workspaceShouldExit:(id)exit withTransitionContext:(id)context;
@end

@implementation UIApplication

- (UIUserInterfaceLayoutDirection)userInterfaceLayoutDirection
{
  if (+[UIView _enableLegacyRTL])
  {
    return 0;
  }

  return [(UIApplication *)self pureUserInterfaceLayoutDirection];
}

- (int64_t)pureUserInterfaceLayoutDirection
{
  p_applicationFlags = &self->_applicationFlags;
  v3 = *(&self->_applicationFlags + 1);
  if ((v3 & 0x40000) == 0)
  {
    v4 = [off_1E70ECB88 defaultWritingDirectionForLanguage:0];
    v5 = 0x40000;
    if (v4 == 1)
    {
      v5 = 786432;
    }

    v3 = v5 | *(p_applicationFlags + 1) & 0xFFFFFFFFFFC3FFFFLL;
    *(p_applicationFlags + 1) = v3;
  }

  return (v3 >> 19) & 7;
}

- (id)_defaultSceneIfExists
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__166;
  v15 = __Block_byref_object_dispose__166;
  v16 = 0;
  v2 = +[_UIApplicationConfigurationLoader sharedLoader];
  applicationInitializationContext = [v2 applicationInitializationContext];
  defaultSceneToken = [applicationInitializationContext defaultSceneToken];

  if (defaultSceneToken)
  {
    v5 = qword_1EA992E50;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__UIApplication__defaultSceneIfExists__block_invoke;
    v8[3] = &unk_1E711D9A8;
    v9 = defaultSceneToken;
    v10 = &v11;
    [v5 enumerateObjectsUsingBlock:v8];
  }

  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (UIApplicationState)applicationState
{
  v2 = +[_UISceneLifecycleMultiplexer sharedInstance];
  applicationState = [v2 applicationState];

  return applicationState;
}

- (id)_findUISceneForLegacyInterfaceOrientation
{
  if (qword_1EA993238 != -1)
  {
    dispatch_once(&qword_1EA993238, &__block_literal_global_3817);
  }

  if (byte_1EA992DE1 == 1)
  {
    mainScreen = [objc_opt_self() mainScreen];
    v4 = [UIWindowScene _unassociatedWindowSceneForScreen:mainScreen create:0];
LABEL_8:
    v5 = v4;
    goto LABEL_18;
  }

  mainScreen = [(UIApplication *)self _defaultUISceneOrMainScreenPlaceholderIfExists];
  if (mainScreen && [objc_opt_class() _hostsWindows])
  {
    v4 = mainScreen;
    mainScreen = v4;
    goto LABEL_8;
  }

  mainScreen2 = [objc_opt_self() mainScreen];
  v5 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:mainScreen2];

  if (!v5)
  {
    if (qword_1EA992E78 != -1)
    {
      dispatch_once(&qword_1EA992E78, &__block_literal_global_1223_0);
    }

    if (byte_1EA992DAB)
    {
      goto LABEL_16;
    }

    if (qword_1EA992E88 != -1)
    {
      dispatch_once(&qword_1EA992E88, &__block_literal_global_1233);
    }

    if (byte_1EA992DAC == 1)
    {
LABEL_16:
      mainScreen3 = [objc_opt_self() mainScreen];
      v5 = [UIWindowScene _unassociatedWindowSceneForScreen:mainScreen3 create:0];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_18:

  return v5;
}

- (id)_defaultUISceneOrMainScreenPlaceholderIfExists
{
  _defaultSceneIfExists = [(UIApplication *)self _defaultSceneIfExists];
  v3 = [UIScene _sceneForFBSScene:_defaultSceneIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
    v5 = [UIWindowScene _placeholderWindowSceneForScreen:mainScreen create:0];
  }

  return v5;
}

- (UIInterfaceOrientation)statusBarOrientation
{
  if (dyld_program_sdk_at_least())
  {

    return [(UIApplication *)self _safeInterfaceOrientationForNoWindow];
  }

  else
  {
    _findUISceneForLegacyInterfaceOrientation = [(UIApplication *)self _findUISceneForLegacyInterfaceOrientation];
    v5 = _findUISceneForLegacyInterfaceOrientation;
    if (_findUISceneForLegacyInterfaceOrientation)
    {
      if (![_findUISceneForLegacyInterfaceOrientation _canDynamicallySpecifySupportedInterfaceOrientations] || (objc_msgSend(v5, "_effectiveUIClientSettings"), v6 = objc_claimAutoreleasedReturnValue(), _interfaceOrientation = objc_msgSend(v6, "interfaceOrientation"), v6, _interfaceOrientation == UIInterfaceOrientationUnknown))
      {
        _interfaceOrientation = [v5 _interfaceOrientation];
      }
    }

    else
    {
      _interfaceOrientation = UIInterfaceOrientationUnknown;
    }

    if (_interfaceOrientation <= UIInterfaceOrientationPortrait)
    {
      _interfaceOrientation = UIInterfaceOrientationPortrait;
    }

    return _interfaceOrientation;
  }
}

- (BOOL)_supportsIndirectInputEvents
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__UIApplication__supportsIndirectInputEvents__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (qword_1EA993088 != -1)
  {
    dispatch_once(&qword_1EA993088, block);
  }

  return byte_1EA992DC9;
}

- (BOOL)_appAdoptsUISceneLifecycle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIApplication__appAdoptsUISceneLifecycle__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (qword_1EA992E48 != -1)
  {
    dispatch_once(&qword_1EA992E48, block);
  }

  return ((*(&self->_applicationFlags + 7) & 0x30) != 0) | byte_1EA992DA5 & 1;
}

- (uint64_t)_defaultSupportedInterfaceOrientations
{
  if (result)
  {
    v1 = result;
    v2 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v2 userInterfaceIdiom];

    if ([*(v1 + 224) supportedInterfaceOrientations])
    {
      v4 = *(v1 + 224);

      return [v4 supportedInterfaceOrientations];
    }

    else
    {
      if (userInterfaceIdiom == 1)
      {
        return 30;
      }

      if (!userInterfaceIdiom)
      {
        mainScreen = [objc_opt_self() mainScreen];
        _wantsWideContentMargins = [mainScreen _wantsWideContentMargins];

        if (!_wantsWideContentMargins)
        {
          return 26;
        }
      }

      mainScreen2 = [objc_opt_self() mainScreen];
      _wantsWideContentMargins2 = [mainScreen2 _wantsWideContentMargins];

      if (_wantsWideContentMargins2)
      {
        return 30;
      }

      if (userInterfaceIdiom == 6)
      {
        return 30;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

- (BOOL)_wantsCompactStatusBarHiding
{
  _supportsCompactStatusBarHiding = [(UIApplication *)self _supportsCompactStatusBarHiding];
  if (_supportsCompactStatusBarHiding)
  {
    return (*(&self->_applicationFlags + 3) >> 1) & 1;
  }

  return _supportsCompactStatusBarHiding;
}

- (id)_mainEventEnvironment
{
  eventDispatcher = self->_eventDispatcher;
  if (eventDispatcher)
  {
    return eventDispatcher->_mainEnvironment;
  }

  else
  {
    return 0;
  }
}

- (UIContentSizeCategory)preferredContentSizeCategory
{
  v2 = +[UIContentSizeCategoryPreference system];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];

  return preferredContentSizeCategory;
}

- (_UIResponderChainFixerUpper)_responderBasedEventDeliverer
{
  if (qword_1EA9930D0 != -1)
  {
    dispatch_once(&qword_1EA9930D0, &__block_literal_global_2070);
  }

  responderBasedEventDeliverer = self->_responderBasedEventDeliverer;
  if (!responderBasedEventDeliverer)
  {
    if (byte_1EA992DCB == 1)
    {
      v4 = objc_opt_new();
      v5 = self->_responderBasedEventDeliverer;
      self->_responderBasedEventDeliverer = v4;

      responderBasedEventDeliverer = self->_responderBasedEventDeliverer;
    }

    else
    {
      responderBasedEventDeliverer = 0;
    }
  }

  return responderBasedEventDeliverer;
}

+ (void)_startStatusBarServerIfNecessary
{
  if ([self runStatusBarServer])
  {

    +[UIStatusBarServer runServer];
  }
}

- (UIApplication)init
{
  v44.receiver = self;
  v44.super_class = UIApplication;
  v3 = [(UIApplication *)&v44 init];
  v4 = v3;
  if (v3)
  {
    if (UIApp != v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v4 file:@"UIApplication.m" lineNumber:1563 description:@"There can only be one UIApplication instance."];
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    keyCommandRegistrationAssertions = v4->_keyCommandRegistrationAssertions;
    v4->_keyCommandRegistrationAssertions = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyUpKeyCommandMap = v4->_keyUpKeyCommandMap;
    v4->_keyUpKeyCommandMap = v7;

    v9 = objc_alloc_init(_UIKeyboardHIDEventOrderedDescriptorSet);
    physicalKeycodeSet = v4->_physicalKeycodeSet;
    v4->_physicalKeycodeSet = v9;

    *(&v4->_applicationFlags + 1) = *(&v4->_applicationFlags + 1) & 0xFFFFFFFFFFFFEFFFLL | ((NSVersionOfLinkTimeLibrary("UIKit") == -1) << 12);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    postCommitActions = v4->_postCommitActions;
    v4->_postCommitActions = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    idleTimerDisabledReasons = v4->_idleTimerDisabledReasons;
    v4->_idleTimerDisabledReasons = v13;

    *&v4->_applicationFlags |= 0x2000000uLL;
    v15 = _UIKitPreferencesOnce();
    __jetsamDisabled = [v15 _BOOLForKey:@"JetsamDisabled"];

    v16 = objc_alloc_init(UIGestureEnvironment);
    gestureEnvironment = v4->__gestureEnvironment;
    v4->__gestureEnvironment = v16;

    v18 = objc_alloc_init(UIGestureDelayedEventComponentDispatcher);
    gestureDelayedEventComponentDispatcher = v4->__gestureDelayedEventComponentDispatcher;
    v4->__gestureDelayedEventComponentDispatcher = v18;

    v20 = [[UIEventDispatcher alloc] initWithApplication:v4];
    eventDispatcher = v4->_eventDispatcher;
    v4->_eventDispatcher = v20;

    [(UIApplication *)v4 setApplicationSupportsShakeToEdit:1];
    v22 = [[UIActivityContinuationManager alloc] initWithApplicationContext:v4];
    activityContinuationManager = v4->_activityContinuationManager;
    v4->_activityContinuationManager = v22;

    v24 = +[_UIApplicationInfoParser mainBundleInfoParser];
    appInfo = v4->_appInfo;
    v4->_appInfo = v24;

    [(UIApplication *)v4 _supportsIndirectInputEvents];
    [(UIApplication *)v4 _deactivateForReason:10 notify:0];
    [(UIApplication *)v4 _fetchInfoPlistFlags];
    [(UIApplication *)v4 _setIdleModeVisualEffectsEnabled:(byte_1ED48B49C != 0) & ~_UIInternalPreferenceUsesDefault(&_UIInternalPreference_AssumeApplicationSupportsIdleMode, @"AssumeApplicationSupportsIdleMode", _UIInternalPreferenceUpdateBool)];
    v26 = MEMORY[0x1E698F4B0];
    serviceName = [MEMORY[0x1E699FB78] serviceName];
    v28 = [v26 monitorForService:serviceName];
    endpointMonitor = v4->_endpointMonitor;
    v4->_endpointMonitor = v28;

    [(BSServiceConnectionEndpointMonitor *)v4->_endpointMonitor activate];
    v30 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v30, sel_interfaceOrientation);
    v32 = objc_opt_class();
    *(&v4->_applicationFlags + 1) = *(&v4->_applicationFlags + 1) & 0xFFFFFF7FFFFFFFFFLL | ((MethodImplementation != class_getMethodImplementation(v32, sel_interfaceOrientation)) << 39);
    v33 = objc_opt_class();
    v34 = class_getMethodImplementation(v33, sel__frontMostAppOrientation);
    v35 = objc_opt_class();
    *(&v4->_applicationFlags + 1) = *(&v4->_applicationFlags + 1) & 0xFFFFFEFFFFFFFFFFLL | ((v34 != class_getMethodImplementation(v35, sel__frontMostAppOrientation)) << 40);
    v36 = objc_opt_class();
    v37 = class_getMethodImplementation(v36, sel__createStatusBarWithRequestedStyle_orientation_hidden_);
    v38 = objc_opt_class();
    *(&v4->_applicationFlags + 1) = *(&v4->_applicationFlags + 1) & 0xFFFEFFFFFFFFFFFFLL | ((v37 != class_getMethodImplementation(v38, sel__createStatusBarWithRequestedStyle_orientation_hidden_)) << 48);
    initForCurrentApplication = [objc_alloc(MEMORY[0x1E69DEBB0]) initForCurrentApplication];
    appState = v4->_appState;
    v4->_appState = initForCurrentApplication;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__windowDidBecomeApplicationKey_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__windowDidResignApplicationKey_ name:@"_UIWindowDidResignApplicationKeyNotification" object:0];
    v4->__shouldAllowContentTextContextExtraction = 1;
    [(UIApplication *)v4 _registerDefaultApplicationLevelBSActionHandlers];
  }

  _UIUpdateCycleDebugOverlaySetup();
  if (os_variant_has_internal_diagnostics() && (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_VisualizeUIViews, @"VisualizeUIViews", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48A8C4)
  {
    +[UIView _setupViewVisualization];
  }

  if (os_variant_has_internal_diagnostics() && (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_VisualizeMaterials, @"VisualizeMaterials", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1ED48A8CC)
  {
    +[UIVisualEffectView _setupMaterialVisualization];
  }

  return v4;
}

uint64_t __45__UIApplication__supportsIndirectInputEvents__block_invoke(uint64_t a1)
{
  result = _UIApplicationSupportsIndirectInputEventsGivenInfo(*(*(a1 + 32) + 224));
  byte_1EA992DC9 = result;
  return result;
}

- (void)_fetchInfoPlistFlags
{
  if (qword_1EA992E88 != -1)
  {
    dispatch_once(&qword_1EA992E88, &__block_literal_global_1233);
  }

  if (byte_1EA992DAC == 1)
  {
    v3 = xpc_copy_bootstrap();
    v4 = v3;
    if (v3)
    {
      xpc_dictionary_apply(v3, &__block_literal_global_1844_0);
    }
  }

  +[UIApplication _isClassic];
  self->_statusBarRequestedStyle = [(_UIApplicationInfoParser *)self->_appInfo requestedStatusBarStyle];
  statusBarHidden = [(_UIApplicationInfoParser *)self->_appInfo statusBarHidden];
  p_applicationFlags = &self->_applicationFlags;
  v7 = 0x1000000;
  if (!statusBarHidden)
  {
    v7 = 0;
  }

  *p_applicationFlags = *&self->_applicationFlags & 0xFFFFFFFFFEFFFFFFLL | v7;
  statusBarHiddenWhenVerticallyCompact = [(_UIApplicationInfoParser *)self->_appInfo statusBarHiddenWhenVerticallyCompact];
  v9 = 0x2000000;
  if (!statusBarHiddenWhenVerticallyCompact)
  {
    v9 = 0;
  }

  *p_applicationFlags = *p_applicationFlags & 0xFFFFFFFFFDFFFFFFLL | v9;
  isExitsOnSuspend = [(_UIApplicationInfoParser *)self->_appInfo isExitsOnSuspend];
  v11 = 1024;
  if (!isExitsOnSuspend)
  {
    v11 = 0;
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFFFFFFFFFF3FFLL | (((v11 >> 10) & 1) << 11) | v11;
  systemWindowsSecure = [(_UIApplicationInfoParser *)self->_appInfo systemWindowsSecure];
  v13 = 0x200000000;
  if (!systemWindowsSecure)
  {
    v13 = 0;
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFFFFDFFFFFFFFLL | v13;
  viewControllerBasedStatusBarAppearance = [(_UIApplicationInfoParser *)self->_appInfo viewControllerBasedStatusBarAppearance];
  if (viewControllerBasedStatusBarAppearance == 1)
  {
    v15 = 0x80000000;
  }

  else
  {
    v15 = 0;
    if (!viewControllerBasedStatusBarAppearance)
    {
      v16 = objc_opt_class();
      if (_UIApplicationWantsExtensionBehavior(v16))
      {
        if (_UIRemoteViewControllerSceneShimEnabledForCurrentProcessIfViewService())
        {
          v17 = 0x80000000;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0x80000000;
      }

      if ([(UIApplication *)self _isSpringBoard])
      {
        v15 = 0;
      }

      else
      {
        v15 = v17;
      }
    }
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFFFFF7FFFFFFFLL | v15;
  optOutOfRTL = [(_UIApplicationInfoParser *)self->_appInfo optOutOfRTL];

  [(UIApplication *)self _setOptOutOfRTL:optOutOfRTL];
}

- (void)_registerDefaultApplicationLevelBSActionHandlers
{
  v3 = objc_alloc_init(_UIOpenURLApplicationBSActionHandler);
  [(UIApplication *)self _registerInternalBSActionHandler:v3];
}

- (void)_observeDebugOrTestUserInterfaceStyleChanged
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__UIApplication__observeDebugOrTestUserInterfaceStyleChanged__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (_observeDebugOrTestUserInterfaceStyleChanged_onceToken != -1)
  {
    dispatch_once(&_observeDebugOrTestUserInterfaceStyleChanged_onceToken, block);
  }
}

- (int64_t)_pureEffectiveUserInterfaceStyle
{
  if (qword_1EA9931E0 != -1)
  {
    dispatch_once(&qword_1EA9931E0, &__block_literal_global_3712);
  }

  result = qword_1EA9931D8;
  if (!qword_1EA9931D8)
  {
    result = +[UIApplication _debugUserInterfaceStyleOverride];
    if (!result)
    {
      [(UIApplication *)self _observeDebugOrTestUserInterfaceStyleChanged];
      if (qword_1EA9931F8 != -1)
      {
        dispatch_once(&qword_1EA9931F8, &__block_literal_global_3733);
      }

      if (byte_1EA992DDC == 1 && (([MEMORY[0x1E695E000] standardUserDefaults], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "integerForKey:", @"OverrideUserInterfaceStyle"), v4, v5) || (_UIKitUserDefaults(), v6 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v6, "integerForKey:", @"OverrideUserInterfaceStyle"), v6, v5)))
      {
        return v5;
      }

      else
      {
        return self->_systemUserInterfaceStyle;
      }
    }
  }

  return result;
}

- (void)_immediatelyUpdateSerializableKeyCommands
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(UIApplication *)self _shouldUpdateSerializableKeyCommandsForResponder:0])
  {
    v3 = +[UIWindowScene _keyWindowScene];
    v4 = [(UIApplication *)self _shouldRegisterTopLevelKeyboardShortcutsForWindowScene:v3]^ 1;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    _responderForKeyEvents = [(UIApplication *)self _responderForKeyEvents];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __58__UIApplication__immediatelyUpdateSerializableKeyCommands__block_invoke;
    v28[3] = &unk_1E711DA70;
    v31 = v4;
    v29 = _responderForKeyEvents;
    v7 = v5;
    v30 = v7;
    v23 = v29;
    [v29 _enumerateKeyboardShortcutsInChainWithOptions:36 usingBlock:v28];
    mEMORY[0x1E698E3B0] = [MEMORY[0x1E698E3B0] sharedInstance];
    v22 = [mEMORY[0x1E698E3B0] transactionAssertionWithReason:@"Updating UIKeyCommands"];

    [(NSMutableArray *)self->_keyCommandRegistrationAssertions makeObjectsPerformSelector:sel_invalidate];
    [(NSMutableArray *)self->_keyCommandRegistrationAssertions removeAllObjects];
    v9 = MEMORY[0x1E698E3A0];
    v10 = +[UIWindow _applicationKeyWindow];
    v11 = [v9 tokenForIdentifierOfCAContext:{objc_msgSend(v10, "_contextId")}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          v18 = objc_alloc_init(MEMORY[0x1E698E400]);
          [v18 setDeferringEnvironment:v17];
          [v18 setDeferringToken:v11];
          v19 = [v12 objectForKeyedSubscript:v17];
          [v18 setKeyCommands:v19];

          mEMORY[0x1E698E3B0]2 = [MEMORY[0x1E698E3B0] sharedInstance];
          v21 = [mEMORY[0x1E698E3B0]2 registerKeyCommands:v18];

          [(NSMutableArray *)self->_keyCommandRegistrationAssertions addObject:v21];
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }

    [v22 invalidate];
  }
}

- (BOOL)isSuspendedEventsOnly
{
  v2 = +[_UISceneLifecycleMultiplexer sharedInstance];
  suspendedEventsOnly = [v2 suspendedEventsOnly];

  return suspendedEventsOnly;
}

void __61__UIApplication__observeDebugOrTestUserInterfaceStyleChanged__block_invoke(uint64_t a1)
{
  if (os_variant_has_internal_diagnostics())
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 addObserver:*(a1 + 32) selector:sel__maybeEffectiveUserInterfaceStyleChanged name:@"_UIDebugOrTestUserInterfaceStyleChangedNotification" object:0];
  }
}

- (BOOL)isSuspended
{
  v2 = +[_UISceneLifecycleMultiplexer sharedInstance];
  v3 = [v2 applicationState] == 2;

  return v3;
}

- (void)_run
{
  v3 = objc_autoreleasePoolPush();
  kdebug_trace();
  _kUIAccessibilityStartedWithInitialization = 1;
  [UIApp _accessibilityInit];
  _kUIAccessibilityStartedWithInitialization = 0;
  kdebug_trace();
  XCTTargetBootstrap();
  [(UIApplication *)self _registerForUserDefaultsChanges];
  [(UIApplication *)self _registerForSignificantTimeChangeNotification];
  [(UIApplication *)self _registerForLanguageChangedNotification];
  [(UIApplication *)self _registerForLocaleWillChangeNotification];
  [(UIApplication *)self _registerForLocaleChangedNotification];
  [(UIApplication *)self _registerForAlertItemStateChangeNotification];
  [(UIApplication *)self _registerForKeyBagLockStatusNotification];
  [(UIApplication *)self _registerForNameLayerTreeNotification];
  [(UIApplication *)self _registerForBackgroundRefreshStatusChangedNotification];
  [(UIApplication *)self _registerForHangTracerEnabledStateChangedNotification];
  [(UIApplication *)self _registerForKeyboardLayoutChangedNotification];
  Current = CFRunLoopGetCurrent();
  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  if (!qword_1EA993210)
  {
    v5 = Current;
    qword_1EA993210 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 1999000, _beforeCACommitHandler, &context);
    v6 = *MEMORY[0x1E695E8D0];
    CFRunLoopAddObserver(v5, qword_1EA993210, *MEMORY[0x1E695E8D0]);
    qword_1EA993218 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 2001000, _afterCACommitHandler, &context);
    CFRunLoopAddObserver(v5, qword_1EA993218, v6);
  }

  _UIApplicationInstallAutoreleasePoolsIfNecessaryForMode(*MEMORY[0x1E695E8E0]);
  byte_1EA992DAA = 1;
  eventDispatcher = self->_eventDispatcher;
  Main = CFRunLoopGetMain();
  [(UIEventDispatcher *)eventDispatcher _installEventRunLoopSources:?];
  supportsMultiwindow = [(_UIApplicationInfoParser *)self->_appInfo supportsMultiwindow];
  v10 = 0x100000000000;
  if (!supportsMultiwindow)
  {
    v10 = 0;
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFEFFFFFFFFFFFLL | v10;
  supportedOnLockScreen = [(_UIApplicationInfoParser *)self->_appInfo supportedOnLockScreen];
  v12 = 0x200000000000;
  if (!supportedOnLockScreen)
  {
    v12 = 0;
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFDFFFFFFFFFFFLL | v12;
  if (([objc_opt_class() registerAsSystemApp] & 1) != 0 || -[UIApplication isFrontBoard](self, "isFrontBoard"))
  {
    self->_eventDispatcher->_mainEnvironment->_isSystemApplication = 1;
    if (![(UIApplication *)self disablesFrontBoardImplicitWindowScenes])
    {
      byte_1EA992DA9 = 1;
      _requestHardwareEventsIfNeeded();
      [(UIApplication *)self _runWithMainScene:0 transitionContext:0 completion:0];
    }
  }

  if ((byte_1EA992DA9 & 1) == 0)
  {
    _isSystemUIService = [objc_opt_class() _isSystemUIService];
    v14 = objc_opt_class();
    if (_isSystemUIService)
    {
      [v14 _attemptRequestingSystemUIServiceSceneWithRetry];
    }

    else
    {
      v15 = _UIApplicationWantsExtensionBehavior(v14);
      byte_1EA992DA9 = 1;
      if (v15)
      {
        [(UIApplication *)self __completeAndRunAsPlugin];
      }

      else
      {
        v16 = +[_UISceneLifecycleMultiplexer sharedInstance];
        lifecycleWantsUnnecessaryDelayForSceneDelivery = [v16 lifecycleWantsUnnecessaryDelayForSceneDelivery];

        if ((lifecycleWantsUnnecessaryDelayForSceneDelivery & 1) == 0)
        {
          [(UIApplication *)self _compellApplicationLaunchToCompleteUnconditionally];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v3);
  kdebug_trace();
  GSEventRun();
}

- (void)_accessibilityInit
{
  v31[28] = *MEMORY[0x1E69E9840];
  if (!AXDisallowsUIBasedAccessibilityFeatures())
  {
    [(UIApplication *)self performSelector:sel__accessibilitySetUpQuickSpeak withObject:0 afterDelay:1.5];
    if (_AXSAccessibilityEnabled())
    {
      [objc_opt_class() _updateAccessibilitySettingsLoader];
    }

    [(UIApplication *)self _updateApplicationAccessibility];
    [(UIApplication *)self _updateLargeTextNotification];
    if ((_accessibilityInit_AccessibilityWasInitialized & 1) == 0)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, self, _accessibilityStatusChanged, *MEMORY[0x1E69E4BA0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _axPrefEnabledChange, *MEMORY[0x1E69E4DA0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v5 = *MEMORY[0x1E69E4E20];
      v31[0] = *MEMORY[0x1E69E4F80];
      v31[1] = v5;
      v6 = *MEMORY[0x1E69E4DD8];
      v31[2] = *MEMORY[0x1E69E4CD0];
      v31[3] = v6;
      v7 = *MEMORY[0x1E69E4D50];
      v31[4] = *MEMORY[0x1E69E4D10];
      v31[5] = v7;
      v8 = *MEMORY[0x1E69E4EB8];
      v31[6] = *MEMORY[0x1E69E4D00];
      v31[7] = v8;
      v9 = *MEMORY[0x1E69E4C78];
      v31[8] = *MEMORY[0x1E69E4CE0];
      v31[9] = v9;
      v10 = *MEMORY[0x1E69E4EF8];
      v31[10] = *MEMORY[0x1E69E4E80];
      v31[11] = v10;
      v11 = *MEMORY[0x1E69E4C60];
      v31[12] = *MEMORY[0x1E69E4ED8];
      v31[13] = v11;
      v12 = *MEMORY[0x1E69E4EB0];
      v31[14] = *MEMORY[0x1E69E4CF0];
      v31[15] = v12;
      v13 = *MEMORY[0x1E69E4DD0];
      v31[16] = *MEMORY[0x1E69E4EC8];
      v31[17] = v13;
      v14 = *MEMORY[0x1E69E4ED0];
      v31[18] = *MEMORY[0x1E69E4CB0];
      v31[19] = v14;
      v15 = *MEMORY[0x1E69E4F58];
      v31[20] = *MEMORY[0x1E69E4F50];
      v31[21] = v15;
      v16 = *MEMORY[0x1E69E4D20];
      v31[22] = *MEMORY[0x1E69E4D18];
      v31[23] = v16;
      v17 = *MEMORY[0x1E69E4D28];
      v31[24] = *MEMORY[0x1E69E4DA8];
      v31[25] = v17;
      v18 = *MEMORY[0x1E69E4CB8];
      v31[26] = *MEMORY[0x1E69E4C50];
      v31[27] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:28];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        do
        {
          v23 = 0;
          do
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v26 + 1) + 8 * v23);
            v25 = CFNotificationCenterGetLocalCenter();
            CFNotificationCenterAddObserver(v25, self, _axPrefEnabledChange, v24, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v21);
      }

      if ([(UIApplication *)self _accessibilityApplicationIsSystemWideServer])
      {
        [(UIApplication *)self _updateAccessibilityItunesSettings];
      }
    }

    _accessibilityInit_AccessibilityWasInitialized = 1;
  }
}

- (void)_updateApplicationAccessibility
{
  v3 = _MergedGlobals_969;
  v4 = _AXSApplicationAccessibilityEnabled() != 0;
  _MergedGlobals_969 = v4;
  if (v3 != v4)
  {
    _accessibilityBundlePrincipalClass = [(UIApplication *)self _accessibilityBundlePrincipalClass];
    if (_MergedGlobals_969 == 1)
    {
      if (byte_1ED49C4F1)
      {

        [(objc_class *)_accessibilityBundlePrincipalClass _accessibilityReenabled];
      }

      else
      {
        [(objc_class *)_accessibilityBundlePrincipalClass _accessibilityStartServer];
        byte_1ED49C4F1 = 1;
      }
    }

    else
    {

      [(objc_class *)_accessibilityBundlePrincipalClass _accessibilityStopServer];
    }
  }
}

- (void)_updateLargeTextNotification
{
  if (_updateLargeTextNotification_onceToken != -1)
  {
    dispatch_once(&_updateLargeTextNotification_onceToken, &__block_literal_global_0);
  }
}

void __76__UIApplication_UIKitApplicationAccessibility___updateLargeTextNotification__block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v1 = *MEMORY[0x1E69E4E60];

  CFNotificationCenterAddObserver(LocalCenter, 0, _preferredFontSizeChange, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (BOOL)_accessibilityApplicationIsSystemWideServer
{
  v2 = _UIMainBundleIdentifier();

  return [v2 isEqualToString:@"com.apple.springboard"];
}

- (void)_registerForUserDefaultsChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleUserDefaultsDidChange_ name:*MEMORY[0x1E696AA70] object:0];
}

- (void)_registerForSignificantTimeChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = UIApp;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _significantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_registerForLanguageChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = UIApp;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _languageChanged, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_registerForLocaleWillChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = UIApp;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _localeWillChange, @"AppleTimePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_registerForAlertItemStateChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = UIApp;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _alertItemStateChanged, @"com.apple.springboard.showingAlertItem", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_registerForKeyBagLockStatusNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = UIApp;
  v4 = *MEMORY[0x1E69B1A68];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _keybagLockStatusChanged, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_registerForNameLayerTreeNotification
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NameLayerTree-%i", getpid()];
  v3 = v2;
  if (v2)
  {
    out_token = 0;
    uTF8String = [v2 UTF8String];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __54__UIApplication__registerForNameLayerTreeNotification__block_invoke_2;
    handler[3] = &unk_1E71177A0;
    v8 = &__block_literal_global_1467;
    notify_register_dispatch(uTF8String, &out_token, MEMORY[0x1E69E96A0], handler);
  }

  out_token = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__UIApplication__registerForNameLayerTreeNotification__block_invoke_3;
  v5[3] = &unk_1E71177A0;
  v6 = &__block_literal_global_1467;
  notify_register_dispatch("NameLayerTree", &out_token, MEMORY[0x1E69E96A0], v5);
}

- (void)_registerForBackgroundRefreshStatusChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _backgroundRefreshStatusDidChange, @"kKeepAppsUpToDateEnabledChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)_registerForHangTracerEnabledStateChangedNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69A2AC8];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__UIApplication__registerForHangTracerEnabledStateChangedNotification__block_invoke;
  v7[3] = &unk_1E711D8F8;
  v7[4] = self;
  v6 = [defaultCenter addObserverForName:v4 object:0 queue:mainQueue usingBlock:v7];
}

- (void)_registerForKeyboardLayoutChangedNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v3 = [defaultCenter addObserverForName:@"UITextInputCurrentKeyboardLayoutDidChangeNotification" object:0 queue:mainQueue usingBlock:&__block_literal_global_1898_0];
}

- (void)_registerForLocaleChangedNotification
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v3 = UIApp;
  v4 = *MEMORY[0x1E695E6E0];

  CFNotificationCenterAddObserver(LocalCenter, v3, _localeChanged, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void __43__UIApplication__appAdoptsUISceneLifecycle__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 224) sceneConfigurations];
  [v1 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_486];
}

- (void)_reloadKeyboardArbiterState
{
  v2 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v2 checkState];
}

- (BOOL)_shouldAllowKeyboardArbiter
{
  if ([objc_opt_class() _isSystemUIService])
  {
    return 0;
  }

  else
  {
    return *(&self->_applicationFlags + 4) & 1;
  }
}

- (void)_compellApplicationLaunchToCompleteUnconditionally
{
  v2 = +[_UISceneLifecycleMultiplexer sharedInstance];
  [v2 completeApplicationLaunchWithFBSScene:0 transitionContext:0];
}

- (id)nextResponder
{
  if (*(&self->_applicationFlags + 10))
  {
    nextResponder = self->_delegate;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UIApplication;
    nextResponder = [(UIResponder *)&v4 nextResponder];
  }

  return nextResponder;
}

- (void)_deliverRemainingKeyUpEvents
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(_UIKeyboardHIDEventOrderedDescriptorSet *)self->_physicalKeycodeSet copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  events = [(_UIKeyboardHIDEventOrderedDescriptorSet *)v3 events];
  reverseObjectEnumerator = [events reverseObjectEnumerator];

  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        CFRetain(v10);
        mach_absolute_time();
        IOHIDEventSetTimeStamp();
        IOHIDEventSetIntegerValue();
        [(UIApplication *)self _handleKeyHIDEvent:v10 usingSyntheticEvent:1];
        CFRelease(v10);
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(_UIKeyboardHIDEventOrderedDescriptorSet *)&self->_physicalKeycodeSet->super.isa removeAllEvents];
}

- (BOOL)_isSpringBoardShowingAnAlert
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__UIApplication__isSpringBoardShowingAnAlert__block_invoke;
  v7[3] = &unk_1E711D4A0;
  v7[4] = &v8;
  [qword_1EA992E50 enumerateObjectsUsingBlock:v7];
  if (v9[3])
  {
    v2 = 1;
  }

  else
  {
    if ((byte_1EA992DA7 & 1) != 0 || (v3 = notify_register_check("com.apple.springboard.showingAlertItem", &dword_1EA992DE4), byte_1EA992DA7 = v3 == 0, !v3))
    {
      check = 0;
      notify_check(dword_1EA992DE4, &check);
      if (check)
      {
        state64 = 0;
        notify_get_state(dword_1EA992DE4, &state64);
        byte_1EA992DA6 = state64 != 0;
      }
    }

    v2 = byte_1EA992DA6 != 0;
    *(v9 + 24) = byte_1EA992DA6 != 0;
  }

  _Block_object_dispose(&v8, 8);
  return v2;
}

- (BOOL)_doRestorationIfNecessary
{
  p_applicationFlags = &self->_applicationFlags;
  if ((*(&self->_applicationFlags + 7) & 1) == 0)
  {
    goto LABEL_5;
  }

  RestorationRetryCountAndUpdateIfNecessary = _getRestorationRetryCountAndUpdateIfNecessary(0);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UIStateRestorationDeveloperMode", *MEMORY[0x1E695E8A8], 0);
  if (RestorationRetryCountAndUpdateIfNecessary <= 0 && !AppBooleanValue)
  {
    _deleteRestorationArchive(0);
LABEL_5:
    v6 = 0;
    goto LABEL_10;
  }

  if (RestorationRetryCountAndUpdateIfNecessary <= 0 && _UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SDeveloperMode.isa, "[UIApplication(StateRestoration) _doRestorationIfNecessary]");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(p_applicationFlags + 1) |= 0x800000uLL;
  _incrementRestorationMarkerCount(selfCopy, 0, 1);
  objc_sync_exit(selfCopy);

  [(UIApplication *)selfCopy _restoreApplicationPreservationStateWithSessionIdentifier:0 beginHandler:0 completionHandler:0];
  v8 = selfCopy;
  objc_sync_enter(v8);
  *(p_applicationFlags + 1) &= ~0x800000uLL;
  objc_sync_exit(v8);

  v6 = 1;
LABEL_10:
  *(p_applicationFlags + 1) |= 0x1000000uLL;
  +[UIWindow _executeDeferredOrientationUpdates];
  v9 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
  [v9 enumerateObjectsUsingBlock:&__block_literal_global_3518];

  return v6;
}

- (BOOL)_needsShakesWhenInactive
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1, 0];
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

        if ([*(*(&v7 + 1) + 8 * i) _needsShakesWhenInactive])
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

- (void)_handleLocalizationDelegateCallbacks
{
  v3 = dyld_program_sdk_at_least();
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIApplicationDelegate *)self->_delegate applicationShouldAutomaticallyLocalizeKeyCommands:self];
  }

  _UIMenuLeafShouldAutomaticallyLocalizeKeyboardShortcuts = v3;
}

- (BOOL)_canReceiveDeviceOrientationEvents
{
  _mainScene = [(UIApplication *)self _mainScene];
  v3 = _mainScene;
  if (_mainScene)
  {
    uiCanReceiveDeviceOrientationEvents = [_mainScene uiCanReceiveDeviceOrientationEvents];
  }

  else
  {
    uiCanReceiveDeviceOrientationEvents = 1;
  }

  return uiCanReceiveDeviceOrientationEvents;
}

+ (void)_setupDefaultEnvironmentWithScreen:(id)screen
{
  screenCopy = screen;
  sub_188ACCA0C(screenCopy);
}

- (BOOL)_hasStoryboard
{
  _mainStoryboardName = [(UIApplication *)self _mainStoryboardName];
  v3 = [_mainStoryboardName length] != 0;

  return v3;
}

- (id)_mainStoryboardName
{
  mainStoryboardName = self->_mainStoryboardName;
  if (!mainStoryboardName)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v6 = [infoDictionary objectForKey:@"UIMainStoryboardFile"];
    v7 = [v6 copy];
    v8 = self->_mainStoryboardName;
    self->_mainStoryboardName = v7;

    mainStoryboardName = self->_mainStoryboardName;
  }

  return mainStoryboardName;
}

- (void)_deactivateReachability
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getSBSUIAppDeactivateReachabilitySymbolLoc_ptr;
  v9 = getSBSUIAppDeactivateReachabilitySymbolLoc_ptr;
  if (!getSBSUIAppDeactivateReachabilitySymbolLoc_ptr)
  {
    v3 = SpringBoardServicesLibrary_1();
    v7[3] = dlsym(v3, "SBSUIAppDeactivateReachability");
    getSBSUIAppDeactivateReachabilitySymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2();
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void softlink_SBSUIAppDeactivateReachability(void)"];
    [currentHandler handleFailureInFunction:v5 file:@"UIApplication.m" lineNumber:494 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void __45__UIApplication__isSpringBoardShowingAnAlert__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 settings];
  v7 = [v6 displayIdentity];
  if (([v7 isMainDisplay] & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = [v11 settings];
  if (([v8 isUISubclass] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v9 = [v11 uiSettings];
  v10 = [v9 deactivationReasons];

  if ((v10 & 0x2000) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

LABEL_7:
}

- (id)_firstCommitBlock
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__UIApplication__firstCommitBlock__block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __34__UIApplication__firstCommitBlock__block_invoke(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  v3 = *MEMORY[0x1E695E8D0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__UIApplication__firstCommitBlock__block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 32);
  CFRunLoopPerformBlock(Current, v3, block);
}

- (void)_sendWillEnterForegroundCallbacks
{
  kdebug_trace();
  [(UIApplicationDelegate *)self->_delegate methodForSelector:sel_applicationWillEnterForeground_];
  entr_act_modify();
  if ((*(&self->_applicationFlags + 6) & 0x40) != 0 && ([UIApp _appAdoptsUISceneLifecycle] & 1) == 0)
  {
    [(UIApplicationDelegate *)self->_delegate applicationWillEnterForeground:self];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIApplicationWillEnterForegroundNotification" object:self userInfo:0];

  *(&self->_applicationFlags + 1) &= ~0x400000000000uLL;
  entr_act_end();

  kdebug_trace();
}

- (BOOL)supportsMultipleScenes
{
  if (qword_1EA993148 != -1)
  {
    dispatch_once(&qword_1EA993148, &__block_literal_global_2338);
  }

  if (byte_1EA992DCF != 1)
  {
    return 0;
  }

  appInfo = self->_appInfo;

  return [(_UIApplicationInfoParser *)appInfo supportsMultiwindow];
}

uint64_t __43__UIApplication__appAdoptsUISceneLifecycle__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result)
  {
    byte_1EA992DA5 = 1;
    *a4 = 1;
  }

  return result;
}

- (NSSet)connectedScenes
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [UIScene _scenesIncludingInternal:0];
  v4 = [v2 setWithArray:v3];

  return v4;
}

void __38__UIApplication__defaultSceneIfExists__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identityToken];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_launchTestName
{
  if (__IsRunningTests == 1)
  {
    v3 = qword_1EA992DE8;
  }

  else
  {
    v3 = @"launch";
  }

  return v3;
}

uint64_t __34__UIApplication__firstCommitBlock__block_invoke_2(uint64_t a1)
{
  _UIApplicationDrainManagedAutoreleasePool();
  [MEMORY[0x1E6979518] flush];
  v2 = *(a1 + 32);

  return _cleanUpAfterCAFlushAndRunDeferredBlocks(v2, 1);
}

- (id)_currentFrameCountForTestDisplay
{
  if (byte_1ED4A20A1 == 1 && (+[UIScreen _screens](), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 count], v2, v3 >= 2))
  {
    v4 = MEMORY[0x1E696AD98];
    DirtyFrameCountByIndex = CARenderServerGetDirtyFrameCountByIndex();
  }

  else
  {
    v4 = MEMORY[0x1E696AD98];
    DirtyFrameCountByIndex = CARenderServerGetDirtyFrameCount();
  }

  v6 = [v4 numberWithUnsignedLong:DirtyFrameCountByIndex];

  return v6;
}

- (void)_reportMainSceneUpdateFinishedPossiblyDeferredPortions
{
  kdebug_trace();
  _currentTests = [UIApp _currentTests];
  v4 = [_currentTests objectForKey:qword_1EA992DE8];

  if (v4 && (__wasResumed & 1) == 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = [v5 numberWithDouble:?];
    [v4 setObject:v6 forKey:@"launchTimeIntervalSinceReferenceDate"];
  }

  _extendLaunchTest = [(UIApplication *)self _extendLaunchTest];
  v8 = (_extendLaunchTest != 0) & (__wasResumed ^ 1);

  if ((__wasResumed & 1) == 0)
  {
    _launchTestName = [(UIApplication *)self _launchTestName];
    [(UIApplication *)self startedSubTest:@"launch-responsive" forTest:_launchTestName];

    alm_app_did_present_with_metrics_payload();
  }

  v10 = getenv("ActivePrewarm");
  if (v10)
  {
    v11 = *v10 == 49;
  }

  else
  {
    v11 = 0;
  }

  getpid();
  memorystatus_control();
  if (v11)
  {
    setenv("ActivePrewarm", "0", 1);
  }

  alm_app_did_activate();
  if (!v8 || ([(UIApplication *)self _extendLaunchTest], v12 = objc_claimAutoreleasedReturnValue(), [(UIApplication *)self _launchTestName], v13 = objc_claimAutoreleasedReturnValue(), [(UIApplication *)self startedSubTest:v12 forTest:v13], v13, v12, __basicLaunchTestIsMarkedAsFinished = 1, __extendedLaunchTestIsMarkedAsFinished == 1))
  {
    [UIApp finishedTest:qword_1EA992DE8 extraResults:0];
  }

  *(UIApp + 176) &= ~0x400000000uLL;
  _UIApplicationEndLaunchBackgroundTask();
}

- (void)_updateHangTracer
{
  if (__hangTracerIsTaskedOn == 1 && byte_1EA992DA4 == 1 && (byte_1EA992DC4 & 1) == 0)
  {
    v2 = ![(UIApplication *)self isSuspended];
  }

  else
  {
    v2 = 0;
  }

  if (byte_1EA992DC5 != v2)
  {
    if (v2)
    {
      if (qword_1EA992FA8)
      {
        HTResumeForegroundHangTracing();
      }

      else
      {
        qword_1EA992FA8 = HTHangEventCreate();
        if (!qword_1EA992FA8)
        {
          return;
        }

        HTHangEventAddUserActionCaptureCallback();
        qword_1EA992FB0 = CFRunLoopObserverCreate(0, 0x20uLL, 1u, 0x7FFFFFFFLL, __trackRunLoopTimes, 0);
        Main = CFRunLoopGetMain();
        v4 = *MEMORY[0x1E695E8D0];
        CFRunLoopAddObserver(Main, qword_1EA992FB0, *MEMORY[0x1E695E8D0]);
        qword_1EA992FB8 = CFRunLoopObserverCreate(0, 0x46uLL, 1u, 0xFFFFFFFF80000000, __trackRunLoopTimes, 0);
        v5 = CFRunLoopGetMain();
        CFRunLoopAddObserver(v5, qword_1EA992FB8, v4);
      }
    }

    else if (qword_1EA992FA8)
    {
      HTSuspendForegroundHangTracing();
    }

    byte_1EA992DC5 = v2;
  }
}

- (void)beginIgnoringInteractionEvents
{
  v11 = *MEMORY[0x1E69E9840];
  applicationFlags = self->_applicationFlags;
  v3 = (applicationFlags >> 26) & 0xF;
  if (v3 == 15)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992DF8) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[UIApplication beginIgnoringInteractionEvents]";
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%s overflow. Ignoring.", &v9, 0xCu);
    }
  }

  else
  {
    *&self->_applicationFlags = applicationFlags & 0xFFFFFFFFC3FFFFFFLL | ((((applicationFlags + 0x4000000) >> 26) & 0xF) << 26);
    v6 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992DF0) + 8);
    if (os_signpost_enabled(v6))
    {
      v9 = 67109120;
      LODWORD(v10) = v3;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3 + 49354, "IgnoringInteractionEvents", "level=%u", &v9, 8u);
    }

    if (!v3)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_UIApplicationDidBeginIgnoringInteractionEventsNotification" object:self];

      v8 = +[UIKeyboardImpl activeInstance];
      [v8 cancelAllKeyEvents];
    }
  }
}

- (void)endIgnoringInteractionEvents
{
  v10 = *MEMORY[0x1E69E9840];
  applicationFlags = self->_applicationFlags;
  if ((applicationFlags & 0x3C000000) != 0)
  {
    v4 = ((applicationFlags >> 26) - 1) & 0xF;
    *&self->_applicationFlags = applicationFlags & 0xFFFFFFFFC3FFFFFFLL | (v4 << 26);
    if ((((applicationFlags >> 26) - 1) & 0xF) == 0)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_UIApplicationDidEndIgnoringInteractionEventsNotification" object:self];
    }

    v6 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992E00) + 8);
    if (os_signpost_enabled(v6))
    {
      v8 = 67109120;
      LODWORD(v9) = v4;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v6, OS_SIGNPOST_INTERVAL_END, v4 + 49354, "IgnoringInteractionEvents", "level=%u", &v8, 8u);
    }
  }

  else
  {
    v7 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992E08) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[UIApplication endIgnoringInteractionEvents]";
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s called without matching -beginIgnoringInteractionEvents. Ignoring.", &v8, 0xCu);
    }
  }
}

+ (BOOL)isRunningInStoreDemoMode
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (id)_defaultUIWindowHostingUISceneOrMainScreenPlaceholderIfExists
{
  if ([(UIApplication *)self _appAdoptsUISceneLifecycle])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:10594 description:@"Apps which adopt the UIScene based lifecycle cannot safely infer an interface orientation without a visual context!"];
  }

  _defaultUISceneOrMainScreenPlaceholderIfExists = [(UIApplication *)self _defaultUISceneOrMainScreenPlaceholderIfExists];
  v5 = _defaultUISceneOrMainScreenPlaceholderIfExists;
  if (_defaultUISceneOrMainScreenPlaceholderIfExists && [_defaultUISceneOrMainScreenPlaceholderIfExists _hostsWindows])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSuspendedUnderLock
{
  v2 = +[_UISceneLifecycleMultiplexer sharedInstance];
  suspendedUnderLock = [v2 suspendedUnderLock];

  return suspendedUnderLock;
}

- (int)_loadMainInterfaceFile
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v5 = [infoDictionary objectForKey:@"NSMainNibFile"];

  _mainStoryboardName = [(UIApplication *)self _mainStoryboardName];
  v7 = [v5 length];
  _hasStoryboard = [(UIApplication *)self _hasStoryboard];
  v9 = _hasStoryboard;
  if (v7)
  {
    v10 = !_hasStoryboard;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    NSLog(&cfstr_NsmainnibfileA.isa);
  }

  if (v9)
  {
    v11 = [(UIApplication *)self _loadMainStoryboardFileNamed:_mainStoryboardName bundle:mainBundle];
  }

  else
  {
    if (!v7)
    {
      v12 = 2;
      goto LABEL_11;
    }

    v11 = [(UIApplication *)self _loadMainNibFileNamed:v5 bundle:mainBundle];
  }

  v12 = v11;
LABEL_11:

  return v12;
}

void __60__UIApplication_StateRestoration___doRestorationIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 statusBarManager];
  [v2 updateStatusBarAppearance];
}

- (void)_checkActivityContinuationAndBecomeCurrentIfNeeded
{
  if ([(UIActivityContinuationManager *)self->_activityContinuationManager activityContinuationsAreBeingTracked])
  {
    v2 = MEMORY[0x1E69E96A0];

    dispatch_async(v2, &__block_literal_global_1411_0);
  }
}

- (void)registerForRemoteNotifications
{
  applicationPushRegistry = self->_applicationPushRegistry;
  if (!applicationPushRegistry)
  {
    v4 = objc_alloc(MEMORY[0x1E6979258]);
    v5 = [v4 initWithQueue:MEMORY[0x1E69E96A0]];
    [(PKPushRegistry *)v5 setDelegate:self];
    v6 = self->_applicationPushRegistry;
    self->_applicationPushRegistry = v5;

    applicationPushRegistry = self->_applicationPushRegistry;
  }

  v7 = *MEMORY[0x1E6979270];
  v8 = [(PKPushRegistry *)applicationPushRegistry pushTokenForType:*MEMORY[0x1E6979270]];
  v9 = v8;
  if (v8)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__UIApplication_registerForRemoteNotifications__block_invoke;
    v12[3] = &unk_1E70F35B8;
    v12[4] = self;
    v13 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  else
  {
    v10 = self->_applicationPushRegistry;
    v11 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    [(PKPushRegistry *)v10 setDesiredPushTypes:v11];
  }
}

- (id)textInputMode
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentPublicInputMode = [v2 currentPublicInputMode];

  return currentPublicInputMode;
}

- (id)_newDefaultStoryboardWindow
{
  if (dyld_program_sdk_at_least())
  {

    return objc_alloc_init(UIWindow);
  }

  else
  {
    v3 = [UIWindow alloc];
    v4 = -[UIWindow _initWithOrientation:](v3, "_initWithOrientation:", [UIApp _safeInterfaceOrientationForNoWindow]);
    [v4 setResizesToFullScreen:1];
    [v4 _resizeWindowToFullScreenIfNecessary];
    return v4;
  }
}

- (NSArray)shortcutItems
{
  v20 = *MEMORY[0x1E69E9840];
  shortcutService = [(UIApplication *)self shortcutService];

  if (!shortcutService)
  {
    v4 = objc_alloc_init(getSBSApplicationShortcutServiceClass());
    [(UIApplication *)self setShortcutService:v4];
  }

  shortcutService2 = [(UIApplication *)self shortcutService];
  v6 = [shortcutService2 applicationShortcutItemsOfTypes:2 forBundleIdentifier:0];

  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dynamicApplicationShortcutItems = [v6 dynamicApplicationShortcutItems];
  v9 = [dynamicApplicationShortcutItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(dynamicApplicationShortcutItems);
        }

        v13 = [[UIApplicationShortcutItem alloc] initWithSBSApplicationShortcutItem:*(*(&v15 + 1) + 8 * i)];
        if (v13)
        {
          [array addObject:v13];
        }
      }

      v10 = [dynamicApplicationShortcutItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return array;
}

- (UIBackgroundRefreshStatus)backgroundRefreshStatus
{
  result = _cachedBackgroundRefreshStatus;
  if (_cachedBackgroundRefreshStatus == -1)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    isAutomaticAppUpdatesAllowed = [mEMORY[0x1E69ADFB8] isAutomaticAppUpdatesAllowed];

    if (isAutomaticAppUpdatesAllowed)
    {
      v5 = objc_alloc(MEMORY[0x1E695E000]);
      v6 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.mt"];
      v7 = [v5 initWithSuiteName:v6];

      [v7 synchronize];
      v8 = [v7 objectForKey:@"KeepAppsUpToDateAppList"];
      v9 = _UIMainBundleIdentifier();
      v10 = [v8 objectForKeyedSubscript:v9];

      if (v10)
      {
        bOOLValue = [v10 BOOLValue];
        v12 = 1;
        if (bOOLValue)
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 2;
      }

      _cachedBackgroundRefreshStatus = v12;

      return _cachedBackgroundRefreshStatus;
    }

    else
    {
      result = UIBackgroundRefreshStatusDenied;
      _cachedBackgroundRefreshStatus = 1;
    }
  }

  return result;
}

- (int64_t)_carefulChoiceOrientation
{
  if ((*(&self->_applicationFlags + 12) & 0x80) != 0)
  {
    return [(UIApplication *)self _safeInterfaceOrientationForNoWindow];
  }

  else
  {
    return [(UIApplication *)self _frontMostAppOrientation];
  }
}

- (BOOL)isStatusBarHidden
{
  _mainScene = [(UIApplication *)self _mainScene];
  v3 = [(UIScene *)UIWindowScene _sceneForFBSScene:_mainScene];

  statusBarManager = [v3 statusBarManager];
  isStatusBarHidden = [statusBarManager isStatusBarHidden];

  return isStatusBarHidden;
}

void __67__UIApplication__checkActivityContinuationAndBecomeCurrentIfNeeded__block_invoke()
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v0 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
  v1 = [v0 reverseObjectEnumerator];

  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = [v7 windowScene];
        v9 = [v8 activationState];

        if (!v9 && (!v4 || [v7 isKeyWindow]))
        {
          v10 = [v7 rootViewController];
          v11 = [v10 _activityContinuationSuitableToBecomeCurrent];

          if (v11)
          {
            if ([v7 isKeyWindow])
            {

              v4 = v11;
              goto LABEL_19;
            }

            v4 = v11;
          }

          else
          {
            v4 = 0;
          }
        }

        ++v6;
      }

      while (v3 != v6);
      v12 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v3 = v12;
    }

    while (v12);

    if (!v4)
    {
      return;
    }

LABEL_19:
    if (_UIStateRestorationDebugLogEnabled())
    {
      v13 = [v4 title];
      v14 = [v4 _uniqueIdentifier];
      NSLog(&cfstr_SFoundActivity.isa, "[UIApplication _checkActivityContinuationAndBecomeCurrentIfNeeded]_block_invoke", v4, v13, v14);
    }

    [v4 becomeCurrent];
  }

  else
  {
    v4 = v1;
  }
}

- (double)windowRotationDuration
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  return dbl_18A6812D0[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
}

- (id)userCachesDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager _web_createDirectoryAtPathWithIntermediateDirectories:v3 attributes:0];

  return v3;
}

uint64_t __46__UIApplication__responderBasedEventDeliverer__block_invoke()
{
  result = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForceResponderChainIntegrity, @"ForceResponderChainIntegrity", _UIInternalPreferenceUpdateInteger);
  byte_1EA992DCB = (qword_1ED48B490 > 0) & ~result;
  return result;
}

- (void)_accessibilitySetUpQuickSpeak
{
  if ((_accessibilitySetUpQuickSpeak_QuickSpeakDidRegister & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _accessibilityQuickSpeakStatusChanged, *MEMORY[0x1E69E4E80], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    _accessibilitySetUpQuickSpeak_QuickSpeakDidRegister = 1;
  }

  if (_AXSQuickSpeakEnabled())
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithPath:{objc_msgSend(AXAccessibilityBundlesDirectory(), "stringByAppendingPathComponent:", @"QuickSpeak.bundle"}];
    if (v4)
    {
      v5 = v4;
      if (([v4 isLoaded] & 1) == 0)
      {
        [v5 load];
        principalClass = [v5 principalClass];

        [principalClass initialize];
      }
    }
  }
}

- (void)_beginFenceTaskIfNecessary
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:2414 description:@"Call must be made on main thread"];
  }

  if (!self->_fenceTask)
  {
    v4 = objc_opt_new();
    fenceTask = self->_fenceTask;
    self->_fenceTask = v4;

    v6 = v4;
    [MEMORY[0x1E6979518] activate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __43__UIApplication__beginFenceTaskIfNecessary__block_invoke;
    v14[3] = &unk_1E70F32F0;
    v14[4] = self;
    v14[5] = a2;
    if (([MEMORY[0x1E6979518] addCommitHandler:v14 forPhase:2] & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:2422 description:@"failed to schedule clearing the fence task"];
    }

    v7 = MEMORY[0x1E6979518];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__UIApplication__beginFenceTaskIfNecessary__block_invoke_2;
    v12[3] = &unk_1E70F3590;
    v8 = v6;
    v13 = v8;
    if (([v7 addCommitHandler:v12 forPhase:5] & 1) == 0)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:2427 description:@"failed to schedule invalidating the fence task"];
    }
  }
}

uint64_t __38__UIApplication__performMemoryWarning__block_invoke(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    return [a2 didReceiveMemoryWarning];
  }

  return result;
}

- (void)_performMemoryWarning
{
  kdebug_trace();
  *(&self->_applicationFlags + 1) |= 0x8000000uLL;
  [(UIApplication *)self didReceiveMemoryWarning];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIApplicationDidReceiveMemoryWarningNotification" object:self];

  [UIViewController _traverseViewControllerHierarchyWithDelayedRelease:&__block_literal_global_1924_0];
  *(&self->_applicationFlags + 1) &= ~0x8000000uLL;

  kdebug_trace();
}

void __43__UIApplication__beginFenceTaskIfNecessary__block_invoke(uint64_t a1)
{
  if (pthread_main_np() != 1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UIApplication.m" lineNumber:2419 description:@"Call must be made on main thread"];
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  *(v2 + 304) = 0;
}

void __71__UIApplication__reportMainSceneUpdateFinishedPossiblyDeferredPortions__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _launchTestName];
  [v1 finishedSubTest:@"launch-responsive" forTest:v2];
}

- (double)statusBarHeight
{
  v2 = _UIStatusBarManagerForNoWindow();
  [v2 statusBarHeight];
  v4 = v3;

  return v4;
}

- (int64_t)_currentExpectedInterfaceOrientation
{
  p_applicationFlags = &self->_applicationFlags;
  v4 = *(&self->_applicationFlags + 1);
  result = v4 >> 13;
  if (!(v4 >> 13))
  {
    result = [(UIApplication *)self _safeInterfaceOrientationForNoWindow];
    v4 = *(p_applicationFlags + 1);
  }

  *(p_applicationFlags + 1) = v4 & 0xFFFFFFFFFFFF1FFFLL;
  return result;
}

- (void)significantTimeChange
{
  if ((*(&self->_applicationFlags + 5) & 0x40) != 0)
  {
    [(UIApplicationDelegate *)self->_delegate applicationSignificantTimeChange:self];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIApplicationSignificantTimeChangeNotification" object:self];
}

- (__CFMessagePort)_purplePPTServerPort
{
  if (_purplePPTServerPort_purplePPTServerPort)
  {
    IsValid = CFMessagePortIsValid(_purplePPTServerPort_purplePPTServerPort);
    result = _purplePPTServerPort_purplePPTServerPort;
    if (IsValid)
    {
      return result;
    }

    if (_purplePPTServerPort_purplePPTServerPort)
    {
      CFRelease(_purplePPTServerPort_purplePPTServerPort);
    }
  }

  result = CFMessagePortCreateRemote(*MEMORY[0x1E695E480], @"PurplePPTServer");
  _purplePPTServerPort_purplePPTServerPort = result;
  if (!result)
  {
    v4 = _pptLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Error creating the CFMessagePort needed to communicate with PPT.", v5, 2u);
    }

    return _purplePPTServerPort_purplePPTServerPort;
  }

  return result;
}

- (int64_t)activeInterfaceOrientation
{
  if ([(UIApplication *)self isFrontBoard])
  {
    return 1;
  }

  orientationObserver = self->_orientationObserver;
  if (!orientationObserver)
  {
    v5 = objc_alloc_init(MEMORY[0x1E699FB90]);
    v6 = self->_orientationObserver;
    self->_orientationObserver = v5;

    orientationObserver = self->_orientationObserver;
  }

  activeInterfaceOrientation = [(FBSOrientationObserver *)orientationObserver activeInterfaceOrientation];
  if (BSInterfaceOrientationIsValid())
  {
    return activeInterfaceOrientation;
  }

  else
  {
    return 1;
  }
}

- (void)_updateAppPriorityForSuspendedState
{
  if ([getPGPictureInPictureProxyClass() isPictureInPictureSupported])
  {
    if ([getPGPictureInPictureProxyClass() isPictureInPictureActive])
    {
      v3 = *(&self->_applicationFlags + 1);
      if ((v3 & 0x2000000000) == 0)
      {
        *(&self->_applicationFlags + 1) = v3 | 0x2000000000;
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v4 = getPGPictureInPictureProxyPictureInPictureActiveChangedNotification();
        [defaultCenter addObserver:self selector:sel__pipStateDidChange name:v4 object:0];
      }
    }

    else if (!+[_UIViewServiceSessionManager hasActiveSessions])
    {

      BSSetMainThreadPriorityFixedForUI();
    }
  }
}

- (void)_applicationDidEnterBackground
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__UIApplication__applicationDidEnterBackground__block_invoke;
  v7[3] = &unk_1E70F3590;
  v7[4] = self;
  [UIViewController _performWithoutDeferringTransitions:v7];
  [(UIApplication *)self _saveApplicationPreservationStateIfSupported];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__UIApplication__applicationDidEnterBackground__block_invoke_2;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [UIView performWithoutAnimation:v6];
  v3 = _UIApplicationWaitForBackgroundAssertionsToFlush();
  v4 = _applicationLifecycleMemoryMetricLogHandle();
  if (os_signpost_enabled(v4))
  {
    v5 = _MXSignpostMetricsSnapshot();
    *buf = 138543362;
    v9 = v5;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ApplicationDidEnterBackground", "\n%{public, signpost:metrics}@", buf, 0xCu);
  }

  if (v3)
  {
    *(&self->_applicationFlags + 1) |= 0x400000000000uLL;
  }

  else
  {
    _logApplicationLifecycleMemoryMetricApplicationWillBeSuspended();
  }
}

- (void)_saveApplicationPreservationStateIfSupported
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(&self->_applicationFlags + 7))
  {
    date = [MEMORY[0x1E695DF00] date];
    if ([(UIApplication *)self _appAdoptsUISceneLifecycle])
    {
      v4 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v4 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0];
    }

    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          rootViewController = [v11 rootViewController];
          if (rootViewController)
          {
            v13 = rootViewController;
            _isTextEffectsWindow = [v11 _isTextEffectsWindow];

            if ((_isTextEffectsWindow & 1) == 0)
            {
              [array addObject:v11];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    if (-[UIApplication _appAdoptsUISceneLifecycle](self, "_appAdoptsUISceneLifecycle") || [array count])
    {
      [(UIApplication *)self _saveApplicationPreservationState:array viewController:0 sessionIdentifier:0 beginHandler:0 completionHandler:0];
    }

    else
    {
      NSLog(&cfstr_NoWindowsHaveA.isa);
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      date2 = [MEMORY[0x1E695DF00] date];
      [date2 timeIntervalSinceDate:date];
      NSLog(&cfstr_SavedRestorati.isa, v16);
    }
  }
}

- (BOOL)isRunningSuspendTest
{
  if (__IsRunningTests != 1 || qword_1ED4A20B8 == 0)
  {
    return 0;
  }

  else
  {
    return [qword_1ED4A20B8 hasPrefix:@"suspend"];
  }
}

void __47__UIApplication__applicationDidEnterBackground__block_invoke(uint64_t a1)
{
  entr_act_begin();
  [*(*(a1 + 32) + 16) methodForSelector:sel_applicationDidEnterBackground_];
  entr_act_modify();
  if ((*(*(a1 + 32) + 182) & 0x20) != 0 && ([UIApp _appAdoptsUISceneLifecycle] & 1) == 0)
  {
    kdebug_trace();
    [*(*(a1 + 32) + 16) applicationDidEnterBackground:?];
    kdebug_trace();
  }

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIApplicationDidEnterBackgroundNotification" object:*(a1 + 32) userInfo:0];
}

- (BOOL)isRunningQuitTest
{
  if (__IsRunningTests != 1 || qword_1ED4A20B8 == 0)
  {
    return 0;
  }

  else
  {
    return [qword_1ED4A20B8 hasPrefix:@"quit"];
  }
}

- (void)_cancelAllInputs
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [UIScene _scenesIncludingInternal:1, 0];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 _allowsEventUIWindowRouting])
        {
          [(UIApplication *)self _cancelAllInputsOnEventRoutingScene:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (double)defaultImageSnapshotExpiration
{
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (BOOL)reportApplicationSuspended
{
  if (__IsRunningTests != 1 || qword_1ED4A20B8 == 0)
  {
    return 0;
  }

  selfCopy = self;
  [UIApplication finishedTest:"finishedTest:extraResults:" extraResults:?];
  LOBYTE(selfCopy) = [(UIApplication *)selfCopy isRunningQuitTest];
  v4 = qword_1ED4A20B8;
  qword_1ED4A20B8 = 0;

  return selfCopy;
}

- (void)_handleSuspensionActions
{
  if ([(UIApplication *)self isRunningQuitTest])
  {
    *(&self->_applicationFlags + 1) |= 0xC00uLL;
  }

  if ([(UIApplication *)self isRunningSuspendTest])
  {
    *(&self->_applicationFlags + 1) &= ~0x400uLL;

    [(UIApplication *)self reportApplicationSuspended];
  }
}

- (void)_purgeSharedInstances
{
  +[UIKeyboardImpl releaseSharedInstance];

  +[UIImage _flushSharedImageCache];
}

+ (id)_accessibilitySettingsBundle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithPath:{objc_msgSend(AXAccessibilityBundlesDirectory(), "stringByAppendingPathComponent:", @"AccessibilitySettingsLoader.bundle"}];
  v3 = v2;
  if (v2)
  {
    if (([v2 isLoaded] & 1) == 0 && (objc_msgSend(v3, "loadAndReturnError:", 0) & 1) == 0)
    {
      v4 = *(__UILogGetCategoryCachedImpl("Accessibility", &_accessibilitySettingsBundle___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Could not load AccessibilitySettingsLoader bundle", v6, 2u);
      }
    }
  }

  return v3;
}

- (void)_updateAccessibilityItunesSettings
{
  if ([(UIApplication *)self _accessibilityApplicationIsSystemWideServer])
  {
    v2 = [objc_msgSend(objc_opt_class() "_accessibilitySettingsBundle")];
    if (objc_opt_respondsToSelector())
    {

      [v2 performSelector:sel_updateITunesSettings withObject:0];
    }
  }
}

+ (void)_updateAccessibilitySettingsLoader
{
  v2 = [objc_msgSend(self "_accessibilitySettingsBundle")];
  if (objc_opt_respondsToSelector())
  {
    [v2 performSelector:sel_update withObject:0];
  }

  _HasLoadedAccessibilitySettingsLoader = 1;
}

- (Class)_accessibilityBundlePrincipalClass
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleWithPath:{objc_msgSend(objc_msgSend(AXAccessibilityBundlesDirectory(), "stringByAppendingPathComponent:", @"UIKit", "stringByAppendingPathExtension:", @"axbundle"}];
  v9 = 0;
  if (![(objc_class *)v2 loadAndReturnError:&v9])
  {
    v7 = *(__UILogGetCategoryCachedImpl("Accessibility", &qword_1ED49C500) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v11 = v2;
      v12 = 2112;
      v13 = v9;
      v5 = "Could not load accessibility bundle: %@ %@";
      v6 = v7;
      goto LABEL_7;
    }

    return 0;
  }

  principalClass = [(objc_class *)v2 principalClass];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = *(__UILogGetCategoryCachedImpl("Accessibility", &qword_1ED49C4F8) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v11 = principalClass;
      v12 = 2112;
      v13 = v2;
      v5 = "Principal class %@ did not respond to _accessibilityStartServer %@";
      v6 = v4;
LABEL_7:
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, v5, buf, 0x16u);
      return 0;
    }

    return 0;
  }

  return principalClass;
}

+ (void)_accessibilityLoadSettingsLoaderIfNeeded
{
  if (pthread_main_np() == 1 && (_HasLoadedAccessibilitySettingsLoader & 1) == 0)
  {

    [self _updateAccessibilitySettingsLoader];
  }
}

- (BOOL)_canAnimateDragCancelInApp
{
  if (![UIApp applicationState])
  {
    return 1;
  }

  return _UIApplicationIsExtension();
}

- (void)dealloc
{
  v11[4] = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_keyCommandRegistrationAssertions makeObjectsPerformSelector:sel_invalidate];
  keyCommandRegistrationAssertions = self->_keyCommandRegistrationAssertions;
  self->_keyCommandRegistrationAssertions = 0;

  [(UIRepeatedAction *)self->_keyRepeatAction invalidate];
  keyRepeatAction = self->_keyRepeatAction;
  self->_keyRepeatAction = 0;

  [(FBSOrientationObserver *)self->_orientationObserver invalidate];
  orientationObserver = self->_orientationObserver;
  self->_orientationObserver = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11[0] = *MEMORY[0x1E69E4D10];
  v11[1] = @"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification";
  v11[2] = @"_UIWindowDidBecomeApplicationKeyNotification";
  v11[3] = @"_UIWindowDidResignApplicationKeyNotification";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v7 names:?];

  if ((*(&self->_applicationFlags + 12) & 0x20) != 0)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = getPGPictureInPictureProxyPictureInPictureActiveChangedNotification();
    [defaultCenter2 removeObserver:self name:v9 object:0];
  }

  [(SBSApplicationShortcutService *)self->_shortcutService invalidate];
  v10.receiver = self;
  v10.super_class = UIApplication;
  [(UIResponder *)&v10 dealloc];
}

- (void)_setAmbiguousControlCenterActivationMargin:(double)margin
{
  _mainScene = [(UIApplication *)self _mainScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__UIApplication__setAmbiguousControlCenterActivationMargin___block_invoke;
  v5[3] = &__block_descriptor_40_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  *&v5[4] = margin;
  [_mainScene updateUIClientSettingsWithBlock:v5];
}

+ (int64_t)runningInStoreDemoModeFProgramNumber
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0))
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"FProgramNumber", @"com.apple.demo-settings", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      return AppIntegerValue;
    }
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  if (!v4 || self->_delegate != v4)
  {
    v52 = v4;
    objc_setAssociatedObject(self, &unk_1EA992DA3, 0, 1);
    self->_delegate = v52;
    v5 = objc_opt_respondsToSelector();
    p_applicationFlags = &self->_applicationFlags;
    v7 = 0x20000000000;
    if ((v5 & 1) == 0)
    {
      v7 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFFFFDFFFFFFFFFFLL | v7;
    v8 = objc_opt_respondsToSelector();
    v9 = 0x40000000000;
    if ((v8 & 1) == 0)
    {
      v9 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFFFFBFFFFFFFFFFLL | v9;
    v10 = objc_opt_respondsToSelector();
    v11 = 0x80000000000;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFFFF7FFFFFFFFFFLL | v11;
    v12 = objc_opt_respondsToSelector();
    v13 = 0x100000000000;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFFFEFFFFFFFFFFFLL | v13;
    v14 = objc_opt_respondsToSelector();
    v15 = 0x200000000000;
    if ((v14 & 1) == 0)
    {
      v15 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFFFDFFFFFFFFFFFLL | v15;
    v16 = objc_opt_respondsToSelector();
    v17 = 0x400000000000;
    if ((v16 & 1) == 0)
    {
      v17 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFFFBFFFFFFFFFFFLL | v17;
    v18 = objc_opt_respondsToSelector();
    v19 = 0x800000000000;
    if ((v18 & 1) == 0)
    {
      v19 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFFF7FFFFFFFFFFFLL | v19;
    v20 = objc_opt_respondsToSelector();
    v21 = 0x1000000000000;
    if ((v20 & 1) == 0)
    {
      v21 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFFEFFFFFFFFFFFFLL | v21;
    v22 = objc_opt_respondsToSelector();
    v23 = 0x2000000000000;
    if ((v22 & 1) == 0)
    {
      v23 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFFDFFFFFFFFFFFFLL | v23;
    v24 = objc_opt_respondsToSelector();
    v25 = 0x4000000000000;
    if ((v24 & 1) == 0)
    {
      v25 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFFBFFFFFFFFFFFFLL | v25;
    v26 = objc_opt_respondsToSelector();
    v27 = 0x8000000000000;
    if ((v26 & 1) == 0)
    {
      v27 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFF7FFFFFFFFFFFFLL | v27;
    v28 = objc_opt_respondsToSelector();
    v29 = 0x10000000000000;
    if ((v28 & 1) == 0)
    {
      v29 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFEFFFFFFFFFFFFFLL | v29;
    v30 = objc_opt_respondsToSelector();
    v31 = 0x20000000000000;
    if ((v30 & 1) == 0)
    {
      v31 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFDFFFFFFFFFFFFFLL | v31;
    v32 = objc_opt_respondsToSelector();
    v33 = 0x40000000000000;
    if ((v32 & 1) == 0)
    {
      v33 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFFBFFFFFFFFFFFFFLL | v33;
    v34 = objc_opt_respondsToSelector();
    v35 = 0x80000000000000;
    if ((v34 & 1) == 0)
    {
      v35 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFF7FFFFFFFFFFFFFLL | v35;
    v36 = objc_opt_respondsToSelector();
    v37 = 0x400000000000000;
    if ((v36 & 1) == 0)
    {
      v37 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFBFFFFFFFFFFFFFFLL | v37;
    v38 = objc_opt_respondsToSelector();
    v39 = 0x800000000000000;
    if ((v38 & 1) == 0)
    {
      v39 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xF7FFFFFFFFFFFFFFLL | v39;
    if (![(UIApplicationDelegate *)v52 __isKindOfUIResponder]|| (_IsKindOfUIView(v52) & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v40 = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v40 = 0x10000;
      if (isKindOfClass)
      {
        v40 = 0;
      }
    }

    *(p_applicationFlags + 1) = *(p_applicationFlags + 1) & 0xFFFFFFFFFFFEFFFFLL | v40;
    v41 = objc_opt_respondsToSelector();
    v42 = 0x20000;
    if ((v41 & 1) == 0)
    {
      v42 = 0;
    }

    *(p_applicationFlags + 1) = *(p_applicationFlags + 1) & 0xFFFFFFFFFFFDFFFFLL | v42;
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v43 = 0x100000000000000;
    }

    else if (objc_opt_respondsToSelector())
    {
      v44 = objc_opt_respondsToSelector();
      v43 = 0x100000000000000;
      if ((v44 & 1) == 0)
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFEFFFFFFFFFFFFFFLL | v43;
    v45 = objc_opt_respondsToSelector();
    v46 = 0x200000000000000;
    if ((v45 & 1) == 0)
    {
      v46 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xFDFFFFFFFFFFFFFFLL | v46;
    v47 = objc_opt_respondsToSelector();
    v48 = 0x1000000000000000;
    if ((v47 & 1) == 0)
    {
      v48 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xEFFFFFFFFFFFFFFFLL | v48;
    v49 = objc_opt_respondsToSelector();
    v50 = 0x2000000000000000;
    if ((v49 & 1) == 0)
    {
      v50 = 0;
    }

    *p_applicationFlags = *p_applicationFlags & 0xDFFFFFFFFFFFFFFFLL | v50;
    v4 = v52;
  }
}

- (void)_forceEndIgnoringInteractionEvents
{
  if (qword_1EA992E78 != -1)
  {
    dispatch_once(&qword_1EA992E78, &__block_literal_global_1223_0);
  }

  if (byte_1EA992DAB)
  {
    goto LABEL_7;
  }

  if (qword_1EA992E88 != -1)
  {
    dispatch_once(&qword_1EA992E88, &__block_literal_global_1233);
  }

  if (byte_1EA992DAC == 1)
  {
LABEL_7:

    [(UIApplication *)self __forceEndIgnoringInteractionEvents];
  }
}

- (void)__forceEndIgnoringInteractionEvents
{
  if (self)
  {
    *(self + 176) &= 0xFFFFFFFFC3FFFFFFLL;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIApplicationDidEndIgnoringInteractionEventsNotification" object:self];
  }
}

- (void)_setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  v21 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  [(NSMutableSet *)self->_idleTimerDisabledReasons removeObject:reasonCopy];
  if (disabledCopy)
  {
    [(NSMutableSet *)self->_idleTimerDisabledReasons addObject:reasonCopy];
  }

  v7 = [(NSMutableSet *)self->_idleTimerDisabledReasons count]!= 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [UIScene _scenesIncludingInternal:1];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __49__UIApplication__setIdleTimerDisabled_forReason___block_invoke;
        v14[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
        v15 = v7;
        [v13 _updateUIClientSettingsWithBlock:v14];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (void)setIdleTimerDisabled:(BOOL)idleTimerDisabled
{
  v3 = 0x2000000000;
  if (!idleTimerDisabled)
  {
    v3 = 0;
  }

  *&self->_applicationFlags = *&self->_applicationFlags & 0xFFFFFFDFFFFFFFFFLL | v3;
  [UIApplication _setIdleTimerDisabled:"_setIdleTimerDisabled:forReason:" forReason:?];
}

- (void)_deactivateForReason:(int)reason notify:(BOOL)notify
{
  v47 = *MEMORY[0x1E69E9840];
  if (reason == -1)
  {
    return;
  }

  v4 = *&reason;
  if (reason == 8)
  {
    v10 = [UIKeyboardSceneDelegate activeKeyboardSceneDelegate:*&reason];
    scene = [v10 scene];

    v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v11 setSuppressingKeyboard:1 forScene:scene];

    v12 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992E18) + 8);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      return;
    }

    v8 = v12;
    v13 = _UIApplicationDeactivationReasonLoggableDescription(8);
    v14 = _UIApplicationDeactivationReasonMaskLoggableDescription(*&self->_applicationFlags & 0x7FFFF);
    v39 = 138543618;
    v40 = v13;
    v41 = 2114;
    v42 = v14;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Acting on addition of deactivation reason: %{public}@; deactivation reasons: %{public}@", &v39, 0x16u);

LABEL_8:
    goto LABEL_9;
  }

  if (reason == 30)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992E10) + 8);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    scene = v6;
    v8 = _UIApplicationDeactivationReasonLoggableDescription(30);
    v9 = _UIApplicationDeactivationReasonMaskLoggableDescription(*&self->_applicationFlags & 0x7FFFF);
    v39 = 138543618;
    v40 = v8;
    v41 = 2114;
    v42 = v9;
    _os_log_impl(&dword_188A29000, scene, OS_LOG_TYPE_DEFAULT, "Ignoring deactivation reason: %{public}@; deactivation reasons: %{public}@", &v39, 0x16u);

    goto LABEL_8;
  }

  p_applicationFlags = &self->_applicationFlags;
  applicationFlags = self->_applicationFlags;
  v17 = 1 << reason;
  if (((1 << reason) & applicationFlags & 0x7FFFF) != 0)
  {
    v18 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992E20) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = _UIApplicationDeactivationReasonLoggableDescription(v4);
      v21 = _UIApplicationDeactivationReasonMaskLoggableDescription(*p_applicationFlags & 0x7FFFF);
      v39 = 138543618;
      v40 = v20;
      v41 = 2114;
      v42 = v21;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring already applied deactivation reason: %{public}@; deactivation reasons: %{public}@", &v39, 0x16u);
    }

    return;
  }

  notifyCopy = notify;
  v23 = 0;
  if (reason > 3)
  {
    if (reason == 4)
    {
      systemNavigationAction = self->_systemNavigationAction;
      if (systemNavigationAction && ([(UISystemNavigationAction *)systemNavigationAction isValid]& 1) == 0)
      {
        [(UIApplication *)self _setSystemNavigationAction:0];
      }

      goto LABEL_26;
    }

    if (reason != 5)
    {
      if (reason == 11)
      {
        [(UIApplication *)self _deliverRemainingKeyUpEvents];
        v23 = 1;
      }

      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (!reason)
  {
LABEL_22:
    *p_applicationFlags = applicationFlags | 0x200000000;
    goto LABEL_26;
  }

  if (reason == 3)
  {
    *(&self->_applicationFlags + 1) &= ~0x4000000000uLL;
    [(UIApplication *)self _deliverRemainingKeyUpEvents];
LABEL_26:
    v23 = 0;
  }

LABEL_27:
  v25 = *p_applicationFlags & 0x7FFFF | v17;
  v26 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992E28) + 8);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v26;
    v28 = _UIApplicationDeactivationReasonLoggableDescription(v4);
    v29 = _UIApplicationDeactivationReasonMaskLoggableDescription(*p_applicationFlags & 0x7FFFF);
    v30 = _UIApplicationDeactivationReasonMaskLoggableDescription(v25);
    v31 = (*p_applicationFlags >> 33) & 1;
    v39 = 138544130;
    v40 = v28;
    v41 = 2114;
    v42 = v29;
    v43 = 2114;
    v44 = v30;
    v45 = 1024;
    v46 = v31;
    _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "Deactivation reason added: %{public}@; deactivation reasons: %{public}@ -> %{public}@; animating application lifecycle event: %d", &v39, 0x26u);
  }

  v32 = *p_applicationFlags;
  if ((*p_applicationFlags & 0x7FFFF) != v25 && notifyCopy)
  {
    v34 = MEMORY[0x1E695DF20];
    v35 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v36 = [v34 dictionaryWithObject:v35 forKey:@"_UIApplicationDeactivationReasonUserInfoKey"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIApplicationWillAddDeactivationReasonNotification" object:self userInfo:v36];

    v32 = *p_applicationFlags;
  }

  if ((v32 & 0x7FFFF) == 0 && notifyCopy)
  {
    kdebug_trace();
    byte_1EA992DA4 = 0;
    [(UIApplication *)self _updateHangTracer];
    +[_UIViewPowerLogStatistics submitStatistics];
    [(UIApplicationDelegate *)self->_delegate methodForSelector:sel_applicationWillResignActive_];
    entr_act_modify();
    if (self->_delegate && (*(&self->_applicationFlags + 6) & 0x10) != 0 && ([UIApp _appAdoptsUISceneLifecycle] & 1) == 0)
    {
      *(&self->_applicationFlags + 1) |= 0x20000000000uLL;
      [(UIApplicationDelegate *)self->_delegate applicationWillResignActive:self];
      *(&self->_applicationFlags + 1) &= ~0x20000000000uLL;
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"UIApplicationWillResignActiveNotification" object:self userInfo:0];

    [(UIApplication *)self _deliverRemainingKeyUpEvents];
    [(UIApplication *)self _cancelAllPressesForTVOnly];
    entr_act_modify();
    entr_act_end();
    kdebug_trace();
    v32 = *p_applicationFlags;
  }

  if ((v32 & 0x200000000) != 0)
  {
    BSSetMainThreadPriorityFixedForUI();
  }

  if (v23 && !+[_UIViewServiceSessionManager hasActiveSessions])
  {
    [UIView _beginSuspendingMotionEffectsForReason:@"_UIMotionEffectEngineSuspensionReasonBackgrounded"];
  }

  *p_applicationFlags = *p_applicationFlags & 0xFFFFFFFFFFF80000 | v25 & 0x7FFFF;
}

- (void)_stopDeactivatingForReason:(int)reason
{
  v3 = *&reason;
  v45 = *MEMORY[0x1E69E9840];
  if (reason > 12)
  {
    if (reason == 13)
    {
      applicationFlags = self->_applicationFlags;
      if ((applicationFlags & 0x2000) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    if (reason == 30)
    {
      v11 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992E30) + 8);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v7 = v11;
      v8 = _UIApplicationDeactivationReasonLoggableDescription(30);
      v9 = _UIApplicationDeactivationReasonMaskLoggableDescription(*&self->_applicationFlags & 0x7FFFF);
      *buf = 138543618;
      v38 = v8;
      v39 = 2114;
      v40 = v9;
      v10 = "Ignoring removal of deactivation reason: %{public}@; deactivation reasons: %{public}@";
      goto LABEL_10;
    }
  }

  else
  {
    if (reason == -1)
    {
      return;
    }

    if (reason == 8)
    {
      v5 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v5 setSuppressingKeyboard:0 forScene:0];

      v6 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992E38) + 8);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v7 = v6;
      v8 = _UIApplicationDeactivationReasonLoggableDescription(8);
      v9 = _UIApplicationDeactivationReasonMaskLoggableDescription(*&self->_applicationFlags & 0x7FFFF);
      *buf = 138543618;
      v38 = v8;
      v39 = 2114;
      v40 = v9;
      v10 = "Acting on removal of deactivation reason: %{public}@; deactivation reasons: %{public}@";
LABEL_10:
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);

      return;
    }
  }

  applicationFlags = self->_applicationFlags;
LABEL_13:
  p_applicationFlags = &self->_applicationFlags;
  v14 = applicationFlags & 0x7FFFF;
  v15 = applicationFlags & ~(1 << reason);
  if ((v15 & 0x21) != 0)
  {
    v16 = applicationFlags & 0xFFFFFFFFFFF80000 | v15 & 0x7FFFF;
  }

  else
  {
    v16 = applicationFlags & 0xFFFFFFFDFFF80000 | v15 & 0x7FFDELL;
  }

  *p_applicationFlags = v16;
  v17 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992E40) + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = _UIApplicationDeactivationReasonLoggableDescription(v3);
    v20 = _UIApplicationDeactivationReasonMaskLoggableDescription(applicationFlags & 0x7FFFF);
    v21 = _UIApplicationDeactivationReasonMaskLoggableDescription(*p_applicationFlags & 0x7FFFF);
    v22 = (*p_applicationFlags >> 33) & 1;
    *buf = 138544130;
    v38 = v19;
    v39 = 2114;
    v40 = v20;
    v41 = 2114;
    v42 = v21;
    v43 = 1024;
    v44 = v22;
    _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "Deactivation reason removed: %{public}@; deactivation reasons: %{public}@ -> %{public}@; animating application lifecycle event: %d", buf, 0x26u);
  }

  if (![(UIApplication *)self isFrontBoard])
  {
    __queuedOrientationChange = [(UIApplication *)self __queuedOrientationChange];

    if (__queuedOrientationChange)
    {
      __queuedOrientationChange2 = [(UIApplication *)self __queuedOrientationChange];
      __queuedOrientationChange2[2]();

      [(UIApplication *)self __setQueuedOrientationChange:0];
    }

    else if ([(UIApplication *)self _canReceiveDeviceOrientationEvents])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v26 = +[UIDevice currentDevice];
      v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[UIApplication isSuspended](self, "isSuspended", @"UIDeviceOrientationRotateAnimatedUserInfoKey"}];
      v36 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      [defaultCenter postNotificationName:@"UIDeviceOrientationDidChangeNotification" object:v26 userInfo:v28];
    }
  }

  v29 = *p_applicationFlags;
  if ((*p_applicationFlags & 0x7FFFF) != v14)
  {
    v30 = MEMORY[0x1E695DF20];
    v31 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    v32 = [v30 dictionaryWithObject:v31 forKey:@"_UIApplicationDeactivationReasonUserInfoKey"];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"_UIApplicationDidRemoveDeactivationReasonNotification" object:self userInfo:v32];

    v29 = *p_applicationFlags;
  }

  if (v14 && (v29 & 0x7FFFF) == 0)
  {
    kdebug_trace();
    byte_1EA992DA4 = 1;
    [(UIApplication *)self _updateHangTracer];
    entr_act_begin();
    [(UIApplicationDelegate *)self->_delegate methodForSelector:sel_applicationDidBecomeActive_];
    entr_act_modify();
    if (self->_delegate && (*(p_applicationFlags + 6) & 8) != 0 && ([UIApp _appAdoptsUISceneLifecycle] & 1) == 0)
    {
      [(UIApplicationDelegate *)self->_delegate applicationDidBecomeActive:self];
    }

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 postNotificationName:@"UIApplicationDidBecomeActiveNotification" object:self userInfo:0];

    *(p_applicationFlags + 1) &= ~0x4000000000uLL;
    kdebug_trace();
    v29 = *p_applicationFlags;
  }

  if (((v29 ^ applicationFlags) & 0x200000000) != 0 && ![(UIApplication *)self isSuspended])
  {
    BSSetMainThreadPriorityFixedForUI();
  }

  if (v3 == 11)
  {
    [UIView _endSuspendingMotionEffectsForReason:@"_UIMotionEffectEngineSuspensionReasonBackgrounded"];
  }
}

- (void)_setRestorationExtended:(BOOL)extended
{
  v3 = 0x400000;
  if (!extended)
  {
    v3 = 0;
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (BOOL)_systemShellAllowsInteractionTrackingKeyboardFocusUpdateForWindow:(id)window
{
  if (+[_UIRemoteKeyboards enabled](_UIRemoteKeyboards, "enabled", window) && [UIApp isFrontBoard])
  {
    if (qword_1EA992F00 != -1)
    {
      dispatch_once(&qword_1EA992F00, &__block_literal_global_1292);
    }

    v3 = byte_1EA992DB9 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

- (id)_mainSceneForDisplay:(id)display
{
  identity = [display identity];
  v4 = _UIApplicationMainSceneForDisplayIdentity(identity);

  return v4;
}

- (void)_scheduleSceneEventResponseForScene:(id)scene withResponseBlock:(id)block
{
  if (block)
  {
    [qword_1EA992E68 enqueuePostSynchronizeResponse:block];
  }
}

- (void)_setCachedSystemAnimationFence:(uint64_t)fence
{
  v4 = a2;
  if (fence)
  {
    v5 = *(fence + 312);
    if (!v4 || v5)
    {
      [v5 invalidate];
      objc_storeStrong((fence + 312), a2);
    }

    else
    {
      objc_storeStrong((fence + 312), a2);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48__UIApplication__setCachedSystemAnimationFence___block_invoke;
      v6[3] = &unk_1E70F32F0;
      v6[4] = fence;
      v6[5] = sel__setCachedSystemAnimationFence_;
      [MEMORY[0x1E6979518] addCommitHandler:v6 forPhase:2];
    }
  }
}

void __48__UIApplication__setCachedSystemAnimationFence___block_invoke(uint64_t a1)
{
  if (pthread_main_np() != 1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UIApplication.m" lineNumber:2462 description:@"Call must be made on main thread"];
  }

  [*(*(a1 + 32) + 312) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 312);
  *(v2 + 312) = 0;
}

- (void)_trackSystemAnimationFence:(id)fence
{
  fenceCopy = fence;
  _fenceProvider = [(UIApplication *)self _fenceProvider];
  v6 = [_fenceProvider trackSystemAnimationFence:fenceCopy];

  v7 = fenceCopy;
  if (v6)
  {
    if (pthread_main_np() != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:2471 description:@"Call must be made on main thread"];
    }

    v7 = fenceCopy;
    if (!self->_cachedSystemAnimationFence)
    {
      v8 = [fenceCopy copy];
      [(UIApplication *)self _setCachedSystemAnimationFence:v8];

      [(UIApplication *)self _beginFenceTaskIfNecessary];
      v7 = fenceCopy;
    }
  }
}

- (id)_cachedSystemAnimationFenceCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:2480 description:@"Call must be made on main thread"];
  }

  cachedSystemAnimationFence = self->_cachedSystemAnimationFence;
  if (cachedSystemAnimationFence)
  {
    v7 = 1;
  }

  else
  {
    v7 = !necessaryCopy;
  }

  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    _fenceProvider = [(UIApplication *)self _fenceProvider];
    requestSystemAnimationFence = [_fenceProvider requestSystemAnimationFence];
    [(UIApplication *)self _setCachedSystemAnimationFence:requestSystemAnimationFence];

    objc_autoreleasePoolPop(v8);
    [(UIApplication *)self _beginFenceTaskIfNecessary];
    cachedSystemAnimationFence = self->_cachedSystemAnimationFence;
  }

  return cachedSystemAnimationFence;
}

- (id)_systemAnimationFenceCreatingIfNecessary:(BOOL)necessary
{
  v3 = [(UIApplication *)self _cachedSystemAnimationFenceCreatingIfNecessary:necessary];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)_handleDelegateCallbacksWithOptions:(id)options isSuspended:(BOOL)suspended restoreState:(BOOL)state
{
  stateCopy = state;
  suspendedCopy = suspended;
  optionsCopy = options;
  [_UIAppearance _setInvalidatesViewsOnAppearanceChange:1];
  v9 = +[_UISystemReferenceAngleMultiplexer sharedMultiplexer];
  v10 = +[_UIApplicationDisplayConfigurationResolver sharedResolver];
  if (!stateCopy)
  {
    *(&self->_applicationFlags + 1) |= 0x1000000uLL;
  }

  v11 = objc_opt_respondsToSelector();
  if ((v11 & 1) == 0)
  {
    v12 = 1;
    if (!stateCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  kdebug_trace();
  v12 = [(UIApplicationDelegate *)self->_delegate application:self willFinishLaunchingWithOptions:optionsCopy];
  kdebug_trace();
  if (stateCopy)
  {
LABEL_7:
    stateCopy = [(UIApplication *)self _doRestorationIfNecessary];
  }

LABEL_8:
  if (objc_opt_respondsToSelector())
  {
    kdebug_trace();
    v12 &= [(UIApplicationDelegate *)self->_delegate application:self didFinishLaunchingWithOptions:optionsCopy];
    kdebug_trace();
LABEL_10:
    *&self->_applicationFlags |= 0x100000uLL;
    v13 = 1;
    goto LABEL_15;
  }

  if (objc_opt_respondsToSelector())
  {
    kdebug_trace();
    [(UIApplicationDelegate *)self->_delegate applicationDidFinishLaunching:self];
    kdebug_trace();
    if (suspendedCopy)
    {
      [(UIApplication *)self applicationWillSuspend];
    }

    goto LABEL_10;
  }

  v13 = 0;
LABEL_15:
  [(UIApplication *)self _handleLocalizationDelegateCallbacks];
  if (v11)
  {
    *&self->_applicationFlags |= 0x100000uLL;
  }

  if (stateCopy)
  {
    _decrementRestorationMarkerCount(self, 0);
  }

  v14 = +[UIWindow _applicationKeyWindow];

  if (v14 && [(UIApplication *)self isFrontBoard])
  {
    v15 = +[UIKeyboardInputModeController sharedInputModeController];
    [v15 setShouldRunContinuousDiscovery:1];

    v16 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v16 currentInputMode];

    v18 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v18 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v20 = [MEMORY[0x1E699FAE0] sharedMonitorForDisplayType:0];
      displayLayoutMonitor = self->_displayLayoutMonitor;
      self->_displayLayoutMonitor = v20;

      [(FBSDisplayLayoutMonitor *)self->_displayLayoutMonitor addObserver:self];
    }

    v22 = sem_open("keyboard-flush.boot", 0);
    if (v22 != -1 || (+[UIKeyboardImpl purgeImageCache], v22 = sem_open("keyboard-flush.boot", 512, 256, 0), v22 != -1))
    {
      sem_close(v22);
    }
  }

  [(UIApplication *)self _updateSerializableKeyCommandsForResponder:self];
  [_UIAppearance _setInvalidatesViewsOnAppearanceChange:0];
  if (v13)
  {
    _UIApplicationWaitForBackgroundAssertionsToFlush();
  }

  return v12;
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  v80 = *MEMORY[0x1E69E9840];
  monitorCopy = monitor;
  layoutCopy = layout;
  contextCopy = context;
  v55 = monitorCopy;
  if (self->_displayLayoutMonitor != monitorCopy)
  {
    goto LABEL_48;
  }

  v51 = contextCopy;
  p_applicationFlags = &self->_applicationFlags;
  selfCopy = self;
  v54 = *(&self->_applicationFlags + 1);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = [layoutCopy elements];
  v62 = [obj countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (!v62)
  {
    v57 = 0;
    v63 = 0;
    goto LABEL_41;
  }

  v63 = 0;
  v57 = 0;
  v10 = (v54 >> 35) & 3;
  v61 = *v67;
  v60 = *MEMORY[0x1E699F8A8];
  v59 = *MEMORY[0x1E699F898];
  while (2)
  {
    for (i = 0; i != v62; ++i)
    {
      if (*v67 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v66 + 1) + 8 * i);
      identifier = [v12 identifier];
      v14 = _UIMainBundleIdentifier();
      v15 = [identifier hasPrefix:v14];

      identifier2 = [v12 identifier];
      v75 = 0;
      v76 = &v75;
      v77 = 0x2020000000;
      v17 = qword_1EA993200;
      v78 = qword_1EA993200;
      if (!qword_1EA993200)
      {
        v70 = MEMORY[0x1E69E9820];
        v71 = 3221225472;
        v72 = __getSBSDisplayLayoutElementAppSwitcherIdentifierSymbolLoc_block_invoke;
        v73 = &unk_1E70F2F20;
        v74 = &v75;
        v18 = SpringBoardServicesLibrary_1();
        v19 = dlsym(v18, "SBSDisplayLayoutElementAppSwitcherIdentifier");
        *(v74[1] + 24) = v19;
        qword_1EA993200 = *(v74[1] + 24);
        v17 = v76[3];
      }

      _Block_object_dispose(&v75, 8);
      if (!v17)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBSDisplayLayoutElementAppSwitcherIdentifier(void)"];
        [currentHandler handleFailureInFunction:v48 file:@"UIApplication.m" lineNumber:503 description:{@"%s", dlerror()}];

        goto LABEL_51;
      }

      v20 = [identifier2 isEqualToString:*v17];

      identifier3 = [v12 identifier];
      v75 = 0;
      v76 = &v75;
      v77 = 0x2020000000;
      v22 = qword_1EA993208;
      v78 = qword_1EA993208;
      if (!qword_1EA993208)
      {
        v70 = MEMORY[0x1E69E9820];
        v71 = 3221225472;
        v72 = __getSBSDisplayLayoutElementFloatingDockIdentifierSymbolLoc_block_invoke;
        v73 = &unk_1E70F2F20;
        v74 = &v75;
        v23 = SpringBoardServicesLibrary_1();
        v24 = dlsym(v23, "SBSDisplayLayoutElementFloatingDockIdentifier");
        *(v74[1] + 24) = v24;
        qword_1EA993208 = *(v74[1] + 24);
        v22 = v76[3];
      }

      _Block_object_dispose(&v75, 8);
      if (!v22)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBSDisplayLayoutElementFloatingDockIdentifier(void)"];
        [currentHandler2 handleFailureInFunction:v50 file:@"UIApplication.m" lineNumber:504 description:{@"%s", dlerror()}];

LABEL_51:
        __break(1u);
      }

      v25 = [identifier3 isEqualToString:*v22];

      identifier4 = [v12 identifier];
      v27 = [identifier4 isEqualToString:v60];

      identifier5 = [v12 identifier];
      v29 = [identifier5 isEqualToString:v59];

      identifier6 = [v12 identifier];
      v31 = [identifier6 isEqualToString:@"SBSpotlightAlert"];

      if (((v54 >> 35) & 3) > 1)
      {
        if (v10 == 2)
        {
          v32 = v63;
          if (((v20 | v25) & 1) == 0)
          {
            v32 = 3;
          }

          goto LABEL_21;
        }
      }

      else
      {
        if (!v10)
        {
          v32 = v63;
          if (v20)
          {
            v32 = 1;
          }

LABEL_21:
          v63 = v32;
          goto LABEL_27;
        }

        v33 = 2;
        if (!v25)
        {
          v33 = 0;
        }

        v34 = v63;
        if (!v20)
        {
          v34 = v33;
        }

        v63 = v34;
      }

LABEL_27:
      if (!(v25 & 1 | ((v31 & 1) == 0)) && [v12 conformsToProtocol:&unk_1F016D890])
      {
        v57 |= [v12 layoutRole] == 3;
      }

      if (((v15 & (v25 ^ 1) | v20 | v27 | v29 | v31) & 1) != 0 && [v12 conformsToProtocol:&unk_1F016D890])
      {
        v35 = v12;
        if ([v35 layoutRole] == 1 || objc_msgSend(v35, "layoutRole") == 4 || objc_msgSend(v35, "layoutRole") == 3)
        {

          v36 = p_applicationFlags;
          v37 = *(p_applicationFlags + 1);
          goto LABEL_42;
        }
      }
    }

    v62 = [obj countByEnumeratingWithState:&v66 objects:v79 count:16];
    if (v62)
    {
      continue;
    }

    break;
  }

LABEL_41:

  elements = [layoutCopy elements];
  firstObject = [elements firstObject];

  identifier7 = [firstObject identifier];
  v41 = _UIMainBundleIdentifier();
  v42 = [identifier7 hasPrefix:v41];

  v36 = p_applicationFlags;
  v37 = *(p_applicationFlags + 1);
  if (v42)
  {
LABEL_42:
    v43 = selfCopy;
    v44 = v57;
    v45 = 0x400000000;
  }

  else
  {
    v45 = 0;
    v43 = selfCopy;
    v44 = v57;
  }

  *(v36 + 1) = v45 & 0xFFFFFFE7FFFFFFFFLL | v37 & 0xFFFFFFE3FFFFFFFFLL | ((v63 & 3) << 35);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__UIApplication_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke;
  aBlock[3] = &unk_1E70F35E0;
  v65 = ((v54 & 0x400000000 | v63) != 0) | v44 & 1;
  aBlock[4] = v43;
  v46 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v46[2](v46);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v46);
  }

  contextCopy = v51;
LABEL_48:
}

uint64_t __66__UIApplication_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _deliverRemainingKeyUpEvents];
  }

  return result;
}

- (void)_callInitializationDelegatesWithActions:(id)actions forScene:(id)scene payload:(id)payload fromOriginatingProcess:(id)process
{
  v124 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  payloadCopy = payload;
  processCopy = process;
  if (!actionsCopy)
  {
    actionsCopy = [MEMORY[0x1E695DFD8] set];
  }

  v90 = actionsCopy;

  v11 = [MEMORY[0x1E695DFA8] set];
  v12 = [MEMORY[0x1E695DFA8] setWithSet:v90];
  [v12 unionSet:self->_actionsPendingInitialization];
  actionsPendingInitialization = self->_actionsPendingInitialization;
  self->_actionsPendingInitialization = 0;

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v117 objects:v123 count:16];
  if (v14)
  {
    v101 = 0;
    v102 = 0;
    v96 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    shareMetadata = 0;
    v100 = 0;
    v98 = 0;
    v103 = 0;
    v104 = 0;
    v15 = 0;
    v16 = *v118;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v118 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v117 + 1) + 8 * i);
        uIActionType = [v18 UIActionType];
        switch(uIActionType)
        {
          case 1:
            if (v15)
            {
              goto LABEL_31;
            }

            v15 = v18;
            continue;
          case 2:
          case 4:
          case 7:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 15:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 24:
          case 25:
            goto LABEL_31;
          case 3:
            if (v98)
            {
              goto LABEL_31;
            }

            v98 = v18;
            break;
          case 5:
            sessionIdentifier = [v18 sessionIdentifier];

            [v11 addObject:v18];
            v101 = sessionIdentifier;
            continue;
          case 6:
            if (v96)
            {
              goto LABEL_31;
            }

            bundleIdentifier = [payloadCopy objectForKey:@"UIApplicationLaunchOptionsSourceApplicationKey"];
            if (!bundleIdentifier)
            {
              bundleIdentifier = [processCopy bundleIdentifier];
            }

            v96 = [(UIActivityContinuationManager *)self->_activityContinuationManager activityContinuationDictionaryWithAction:v18 sourceApplication:bundleIdentifier originatingProcess:processCopy];

            break;
          case 8:
            v21 = v18;

            v104 = v21;
            continue;
          case 14:
            v23 = v18;

            v103 = v23;
            continue;
          case 16:
            v20 = v18;

            v102 = v20;
            continue;
          case 17:
            if (v97)
            {
              goto LABEL_31;
            }

            v97 = v18;
            break;
          case 23:
            if (shareMetadata)
            {
              goto LABEL_31;
            }

            shareMetadata = [v18 shareMetadata];
            break;
          case 26:
            [v11 addObject:v18];
            if (!v100)
            {
              if ([v18 isDefaultAction])
              {
                v100 = v18;
              }

              else
              {
                v100 = 0;
              }
            }

            continue;
          case 27:
            if (v95)
            {
              goto LABEL_31;
            }

            v95 = v18;
            break;
          default:
            if (uIActionType == 43 && !v94)
            {
              v94 = v18;
            }

            else
            {
LABEL_31:
              [v11 addObject:v18];
            }

            break;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v117 objects:v123 count:16];
    }

    while (v14);

    v25 = v15;
    if (v15)
    {
      goto LABEL_50;
    }
  }

  else
  {

    v103 = 0;
    v104 = 0;
    v98 = 0;
    shareMetadata = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
  }

  v26 = [payloadCopy objectForKey:@"UIApplicationLaunchOptionsURLKey"];
  if (!v26 || (v27 = [UIOpenURLAction alloc], [MEMORY[0x1E695DFF8] URLWithString:v26 encodingInvalidCharacters:0], v28 = objc_claimAutoreleasedReturnValue(), v29 = -[UISOpenURLAction initWithURL:](v27, "initWithURL:", v28), v28, v26, !v29))
  {
    v87 = 0;
    v31 = 1;
    goto LABEL_52;
  }

  v25 = v29;
LABEL_50:
  v87 = v25;
  v30 = [v25 url];
  -[UIApplication _setHandlingURL:url:](self, "_setHandlingURL:url:", [v30 isInternalUIKitURL] ^ 1, v30);

  v31 = 0;
LABEL_52:
  v111 = 0;
  v112 = &v111;
  v113 = 0x3032000000;
  v114 = __Block_byref_object_copy__166;
  v115 = __Block_byref_object_dispose__166;
  v116 = 0;
  v85 = v31;
  if ((v31 & 1) == 0 && (*(&self->_applicationFlags + 4) & 0x10) == 0)
  {
    v32 = MEMORY[0x1E695DF90];
    v33 = v87;
    v34 = [v32 dictionaryWithDictionary:payloadCopy];
    [v34 removeObjectForKey:@"UIApplicationLaunchOptionsURLKey"];
    v35 = [v33 url];

    searchResultIdentifier = [v35 searchResultIdentifier];
    if (searchResultIdentifier)
    {
      [v34 setValue:searchResultIdentifier forKey:@"UIApplicationLaunchOptionsSearchResultIdentifierKey"];
      searchResultDomain = [v35 searchResultDomain];
      if (searchResultDomain)
      {
        [v34 setValue:searchResultDomain forKey:@"UIApplicationLaunchOptionsSearchResultDomainKey"];
      }
    }

    else
    {
      [v34 setValue:v35 forKey:@"UIApplicationLaunchOptionsURLKey"];
    }

    v38 = v112[5];
    v112[5] = v34;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__UIApplication__callInitializationDelegatesWithActions_forScene_payload_fromOriginatingProcess___block_invoke;
  aBlock[3] = &unk_1E70F7F68;
  aBlock[4] = &v111;
  v39 = _Block_copy(aBlock);
  if (v100)
  {
    if ([v100 isLocal])
    {
      response = [v100 response];
      v41 = UNNotificationToUILocalNotification;
      notification = [response notification];
      userInfo = v41[2](v41, notification);

      v39[2](v39, userInfo, @"UIApplicationLaunchOptionsLocalNotificationKey");
    }

    else
    {
      if (![v100 isRemote])
      {
        goto LABEL_66;
      }

      response = [v100 response];
      notification2 = [response notification];
      request = [notification2 request];
      content = [request content];
      userInfo = [content userInfo];

      v39[2](v39, userInfo, @"UIApplicationLaunchOptionsRemoteNotificationKey");
    }
  }

LABEL_66:
  v39[2](v39, v96, @"UIApplicationLaunchOptionsUserActivityDictionaryKey");
  payload = [v98 payload];
  v39[2](v39, payload, @"UIApplicationLaunchOptionsRemoteNotificationKey");

  payload2 = [v104 payload];
  v39[2](v39, payload2, @"UIApplicationLaunchOptionsSiriTaskKey");

  v39[2](v39, v101, @"UIApplicationLaunchOptionsURLSessionKey");
  v39[2](v39, shareMetadata, @"UIApplicationLaunchOptionsCloudKitShareMetadataKey");
  uiShortcutItem = [v97 uiShortcutItem];
  v39[2](v39, uiShortcutItem, @"UIApplicationLaunchOptionsShortcutItemKey");

  v89 = [payloadCopy objectForKey:@"UIApplicationLaunchOptionsEventAttributionKey"];
  v50 = [[UIEventAttribution alloc] initWithUISClickAttribution:v89];
  v39[2](v39, v50, @"UIApplicationLaunchOptionsEventAttributionKey");

  v122[0] = @"UIApplicationLaunchOptionsSourceApplicationKey";
  v122[1] = @"UIApplicationLaunchOptionsNewsstandDownloadsKey";
  v122[2] = @"UIApplicationLaunchOptionsBluetoothCentralsKey";
  v122[3] = @"UIApplicationLaunchOptionsBluetoothPeripheralsKey";
  v122[4] = @"UIApplicationLaunchOptionsDeletedFamilyContentKey";
  v122[5] = @"UIApplicationLaunchOptionsBrowserReuseTabKey";
  v122[6] = @"UIApplicationLaunchOptionsAppLinkOpenStrategyChangedKey";
  v122[7] = @"_UIApplicationLaunchOptionsOpenAsDownload";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:8];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v51 = v107 = 0u;
  v52 = [v51 countByEnumeratingWithState:&v106 objects:v121 count:16];
  if (v52)
  {
    v53 = *v107;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v107 != v53)
        {
          objc_enumerationMutation(v51);
        }

        v55 = *(*(&v106 + 1) + 8 * j);
        v56 = [payloadCopy objectForKey:v55];
        v39[2](v39, v56, v55);
      }

      v52 = [v51 countByEnumeratingWithState:&v106 objects:v121 count:16];
    }

    while (v52);
  }

  v57 = [payloadCopy objectForKey:@"CLLaunchOptionsLocation"];

  if (v57)
  {
    v58 = v112[5];
    if (v58)
    {
      [v58 removeObjectForKey:@"CLLaunchOptionsLocation"];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v60 = v112[5];
      v112[5] = dictionary;
    }

    v61 = v112[5];
    v62 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v61 setValue:v62 forKey:@"UIApplicationLaunchOptionsLocationKey"];
  }

  v63 = objc_opt_class();
  v64 = objc_opt_class();
  [v63 instanceMethodForSelector:sel_registerPlatformSpecificLaunchOptions_registerLaunchOption_];
  v65 = dyld_image_header_containing_address();
  [v64 instanceMethodForSelector:sel_registerPlatformSpecificLaunchOptions_registerLaunchOption_];
  if (v65 != dyld_image_header_containing_address())
  {
    v66 = +[(FBSSceneTransitionContext *)UIApplicationSceneTransitionContext];
    [v66 setActions:v90];
    [v66 setPayload:payloadCopy];
    [v66 setOriginatingProcess:processCopy];
    [(UIApplication *)self registerPlatformSpecificLaunchOptions:v39 transitionContext:v66];
  }

  p_applicationFlags = &self->_applicationFlags;
  applicationFlags = self->_applicationFlags;
  _isSystemUIService = [objc_opt_class() _isSystemUIService];
  isSuspended = [(UIApplication *)self isSuspended];
  v71 = isSuspended;
  v86 = _isSystemUIService ^ 1;
  if ((applicationFlags & 0x300000) != 0)
  {
    v84 = 0;
    v91 = 1;
    if ((applicationFlags & 0x100000) != 0)
    {
      goto LABEL_101;
    }

    goto LABEL_93;
  }

  if (isSuspended)
  {
    if (objc_opt_respondsToSelector())
    {
      kdebug_trace();
      [(UIApplicationDelegate *)self->_delegate application:self didFinishLaunchingSuspendedWithOptions:v112[5]];
      kdebug_trace();
      v91 = 1;
      v72 = 2621440;
      v84 = 1;
LABEL_88:
      *p_applicationFlags |= v72;
      goto LABEL_93;
    }

    if (objc_opt_respondsToSelector())
    {
      [(UIApplication *)self performSelector:sel_applicationDidFinishLaunchingSuspended_ withObject:self];
      v84 = 0;
      v91 = 1;
      v72 = 2621440;
      goto LABEL_88;
    }
  }

  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v91 = [(UIApplication *)self _handleDelegateCallbacksWithOptions:v112[5] isSuspended:v71 restoreState:v86];
    v86 = 0;
    v84 = 1;
    goto LABEL_93;
  }

  if (objc_opt_respondsToSelector())
  {
    v91 = [(UIApplication *)self _handleDelegateCallbacksWithOptions:v112[5] isSuspended:v71 restoreState:v86];
    v86 = 0;
    v84 = 0;
    goto LABEL_93;
  }

  if (objc_opt_respondsToSelector())
  {
    if (![(UIApplication *)self _hasStoryboard])
    {
      *(&self->_applicationFlags + 1) |= 0x1000000uLL;
    }

    v91 = [(UIApplication *)self application:self didFinishLaunchingWithOptions:v112[5]];
    if (v71)
    {
      [(UIApplication *)self applicationWillSuspend];
    }

    v84 = 0;
LABEL_167:
    v72 = 0x100000;
    goto LABEL_88;
  }

  if (objc_opt_respondsToSelector())
  {
    if (![(UIApplication *)self _hasStoryboard])
    {
      *(&self->_applicationFlags + 1) |= 0x1000000uLL;
    }

    [(UIApplication *)self performSelector:sel_applicationDidFinishLaunching_ withObject:self];
    if (v71)
    {
      [(UIApplication *)self applicationWillSuspend];
    }

    v84 = 0;
    v91 = 1;
    goto LABEL_167;
  }

  v84 = 0;
  v91 = 1;
LABEL_93:
  if ([(UIApplication *)self _hasStoryboard])
  {
    if (objc_opt_respondsToSelector())
    {
      window = [(UIApplicationDelegate *)self->_delegate window];
      isHidden = [window isHidden];

      if (isHidden)
      {
        *p_applicationFlags &= ~0x100000uLL;
        window2 = [(UIApplicationDelegate *)self->_delegate window];
        [window2 makeKeyAndVisible];

        *p_applicationFlags |= 0x100000uLL;
      }
    }
  }

  if (v86 && [(UIApplication *)self _doRestorationIfNecessary])
  {
    _decrementRestorationMarkerCount(self, 0);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIApplicationDidFinishLaunchingNotification" object:self userInfo:v112[5]];

  [(UIEventFetcher *)self->_eventFetcher setEventFetcherSink:?];
LABEL_101:
  +[UIWindow _executeDeferredOrientationUpdates];
  if (v71)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"UIApplicationSuspendedNotification" object:self userInfo:0];
  }

  if ((v85 & 1) == 0)
  {
    if (v91)
    {
      workspaceOriginatingProcess = processCopy;
      if (!workspaceOriginatingProcess)
      {
        workspaceOriginatingProcess = [v87 workspaceOriginatingProcess];
      }

      v79 = workspaceOriginatingProcess;
      [(UIApplication *)self _applicationOpenURLAction:v87 payload:payloadCopy origin:workspaceOriginatingProcess];
    }

    [(UIApplication *)self _setHandlingURL:0 url:0];
  }

  if (v104)
  {
    payload3 = [v104 payload];
    [(UIApplication *)self _applicationHandleSiriTask:payload3];
  }

  if (v103)
  {
    [(UIApplication *)self _applicationHandleWatchKitRequest:v103];
  }

  if (v95)
  {
    [(UIApplication *)self _applicationHandleIntentForwardingAction:v95];
  }

  if (v94)
  {
    [(UIApplication *)self _applicationHandleLinkConnectionAction:v94];
  }

  if (v102)
  {
    [(UIApplication *)self _setSystemNavigationAction:v102];
  }

  if (v96)
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SCheckingToSee.isa, "[UIApplication _callInitializationDelegatesWithActions:forScene:payload:fromOriginatingProcess:]");
    }

    if (v91)
    {
      [(UIActivityContinuationManager *)self->_activityContinuationManager handleActivityContinuation:v96 isSuspended:v71];
    }

    else if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SApplicationDe.isa, "[UIApplication _callInitializationDelegatesWithActions:forScene:payload:fromOriginatingProcess:]");
    }
  }

  if (v100)
  {
    currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
    delegate = [currentNotificationCenter delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (![v100 isLocal])
      {
        if (![v100 isRemote])
        {
          goto LABEL_136;
        }

        if (!v84 || (objc_opt_respondsToSelector() & 1) != 0)
        {
          if ([v100 canSendResponse])
          {
            [v100 sendResponse:0];
          }

          goto LABEL_136;
        }

        goto LABEL_130;
      }

      if (v84)
      {
LABEL_130:
        [v11 removeObject:v100];
      }
    }

LABEL_136:
  }

  if (v98)
  {
    if (v84 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      if ([v98 canSendResponse])
      {
        v83 = [MEMORY[0x1E69DEBF0] responseWithResult:1];
        [v98 sendResponse:v83];
      }
    }

    else
    {
      [v11 addObject:v98];
    }
  }

  if (((v97 != 0) & v91) == 1)
  {
    [(UIApplication *)self _handleApplicationShortcutAction:v97 onWindowScene:sceneCopy];
  }

  if (((shareMetadata != 0) & v91) == 1)
  {
    NSLog(&cfstr_SHandlingCloud.isa, "[UIApplication _callInitializationDelegatesWithActions:forScene:payload:fromOriginatingProcess:]", shareMetadata);
    if (objc_opt_respondsToSelector())
    {
      [(UIApplicationDelegate *)self->_delegate application:self userDidAcceptCloudKitShareWithMetadata:shareMetadata];
    }

    else if (objc_opt_respondsToSelector())
    {
      [(UIApplicationDelegate *)self->_delegate application:self userAcceptedCloudKitShareWithMetadata:shareMetadata];
    }
  }

  [(UIApplication *)self _handleNonLaunchSpecificActions:v11 forScene:0 withTransitionContext:0 completion:0];
  if (([UIApp _appAdoptsUISceneLifecycle] & 1) == 0)
  {
    [(UIApplication *)self _checkActivityContinuationAndBecomeCurrentIfNeeded];
  }

  _Block_object_dispose(&v111, 8);
}

void __97__UIApplication__callInitializationDelegatesWithActions_forScene_payload_fromOriginatingProcess___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (!v6)
    {
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v6 setValue:v10 forKey:v5];
  }
}

- (void)_applicationHandleSiriTask:(uint64_t)task
{
  v3 = a2;
  if (task && (*(task + 183) & 4) != 0)
  {
    v4 = v3;
    [*(task + 16) _application:task handleSiriTask:v3];
    v3 = v4;
  }
}

- (void)_synchronizeSystemAnimationFencesWithSpinCleanUpBlock:(id)block
{
  blockCopy = block;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:3226 description:@"Call must be made on main thread"];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__UIApplication__synchronizeSystemAnimationFencesWithSpinCleanUpBlock___block_invoke;
  aBlock[3] = &unk_1E7107E48;
  v6 = blockCopy;
  aBlock[4] = self;
  v16 = v6;
  v7 = _Block_copy(aBlock);
  v8 = __caCommitState;
  _fenceProvider = [(UIApplication *)self _fenceProvider];
  v10 = _fenceProvider;
  if (v8 == 1)
  {
    isTrackingAnySystemAnimationFence = [_fenceProvider isTrackingAnySystemAnimationFence];

    if (isTrackingAnySystemAnimationFence)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v13 = *(__UILogGetCategoryCachedImpl("Fence", &_synchronizeSystemAnimationFencesWithSpinCleanUpBlock____s_category) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, " *|synchronize-skip|* a fence was started inside of a snapshot block - skipping the workspace synchronize because it may dequeue messages from the fenceExemptQueue and snapshots expect that not to happen", v14, 2u);
        }
      }
    }

    v7[2](v7, 0);
  }

  else
  {
    [_fenceProvider synchronizeSystemAnimationFencesWithCleanUpBlock:v7];
  }
}

void __71__UIApplication__synchronizeSystemAnimationFencesWithSpinCleanUpBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(*(a1 + 32) + 312) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 312);
  *(v3 + 312) = 0;
}

- (void)_addAfterCACommitBlockForViewController:(id)controller
{
  controllerCopy = controller;
  v4 = controllerCopy;
  if (controllerCopy)
  {
    v5 = qword_1EA992E70;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__UIApplication__addAfterCACommitBlockForViewController___block_invoke;
    v6[3] = &unk_1E70F3590;
    v7 = controllerCopy;
    [v5 enqueuePostCommitBlock:v6];
  }
}

- (void)_performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming:(BOOL)timing block:(id)block
{
  blockCopy = block;
  if (dyld_program_sdk_at_least() && pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:3398 description:@"Call must be made on main thread"];

    if (timing)
    {
      goto LABEL_4;
    }
  }

  else if (timing)
  {
LABEL_4:
    [MEMORY[0x1E6979518] activate];
    postCommitActions = self->_postCommitActions;
    v9 = [_UIAfterCACommitBlock blockWithBlock:blockCopy];
    [(NSMutableArray *)postCommitActions addObject:v9];

    goto LABEL_9;
  }

  if (pthread_main_np() == 1)
  {
    [qword_1EA992E70 enqueuePostCommitBlock:blockCopy];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__UIApplication__performAfterCATransactionCommitsWithLegacyRunloopObserverBasedTiming_block___block_invoke;
    block[3] = &unk_1E70F0F78;
    v12 = blockCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

LABEL_9:
}

- (void)_performBlockAfterCATransactionCommitSynchronizes:(id)synchronizes
{
  synchronizesCopy = synchronizes;
  if (dyld_program_sdk_at_least() && pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:3424 description:@"Call must be made on main thread"];
  }

  if (pthread_main_np() == 1)
  {
    [qword_1EA992E70 enqueuePostSynchronizeBlock:synchronizesCopy];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__UIApplication__performBlockAfterCATransactionCommitSynchronizes___block_invoke;
    block[3] = &unk_1E70F0F78;
    v8 = synchronizesCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

+ (void)_attemptRequestingSystemUIServiceSceneWithRetry
{
  v12 = *MEMORY[0x1E69E9840];
  if (byte_1EA992DC3++)
  {
    v4 = *(__UILogGetCategoryCachedImpl("SystemUIService", &qword_1EA992F58) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = byte_1EA992DC3;
      v5 = "Requesting a scene for systemUIService from the default system shell (attempt %u).";
      v6 = v4;
      v7 = 8;
LABEL_6:
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    }
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("SystemUIService", &qword_1EA992F50) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Requesting a scene for systemUIService from the default system shell.";
      v6 = v8;
      v7 = 2;
      goto LABEL_6;
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__UIApplication__attemptRequestingSystemUIServiceSceneWithRetry__block_invoke;
  v9[3] = &__block_descriptor_40_e30_v24__0__FBSScene_8__NSError_16l;
  v9[4] = self;
  [self _requestSystemUIServiceSceneWithCompletion:v9];
}

void __64__UIApplication__attemptRequestingSystemUIServiceSceneWithRetry__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6)
  {
    v9 = [v7 descriptionWithMultilinePrefix:0];
    v10 = v9;
    v11 = @"<no error provided>";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    if ([v8 isBSServiceConnectionError])
    {
      v13 = *(__UILogGetCategoryCachedImpl("SystemUIService", &qword_1EA992F68) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = 138543362;
        v21 = v12;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "request for systemUIService scene failed due to an XPC error (the default shell probably crashed): %{public}@", &v20, 0xCu);
      }

      if (byte_1EA992DC3 <= 2u)
      {
        [*(a1 + 32) _attemptRequestingSystemUIServiceSceneWithRetry];

        goto LABEL_10;
      }

      v18 = *(__UILogGetCategoryCachedImpl("SystemUIService", &qword_1EA992F70) + 8);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_16:
        v19 = *(__UILogGetCategoryCachedImpl("SystemUIService", &qword_1EA992F80) + 8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = 138543362;
          v21 = v12;
          _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Calling exit(0) because we cannot continue without a scene: %{public}@", &v20, 0xCu);
        }

        exit(0);
      }

      LOWORD(v20) = 0;
      v15 = "Scene request retry attempts exhausted.";
      v16 = v18;
      v17 = 2;
    }

    else
    {
      v14 = *(__UILogGetCategoryCachedImpl("SystemUIService", &qword_1EA992F78) + 8);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v20 = 138543362;
      v21 = v12;
      v15 = "request for systemUIService scene from defaultShell failed: %{public}@";
      v16 = v14;
      v17 = 12;
    }

    _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, v15, &v20, v17);
    goto LABEL_16;
  }

  objc_storeStrong(&qword_1EA992F60, a2);
LABEL_10:
}

+ (void)_requestSystemUIServiceSceneWithCompletion:(id)completion
{
  completionCopy = completion;
  if (([objc_opt_class() _isSystemUIService] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:3948 description:@"SystemUIService scene can not be requested from an app that isn't a SystemUIService"];
  }

  defaultService = [qword_1EA992E60 defaultService];
  v7 = objc_opt_new();
  _systemUIServiceIdentifier = [objc_opt_class() _systemUIServiceIdentifier];
  [v7 setIdentifier:_systemUIServiceIdentifier];

  _systemUIServiceClientSettings = [objc_opt_class() _systemUIServiceClientSettings];
  [v7 setInitialClientSettings:_systemUIServiceClientSettings];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__UIApplication__requestSystemUIServiceSceneWithCompletion___block_invoke;
  v12[3] = &unk_1E711D4E8;
  v13 = completionCopy;
  v10 = completionCopy;
  [defaultService requestSceneWithOptions:v7 completion:v12];
}

- (id)_topMostViewController:(uint64_t)controller
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (controller && v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topViewController = [v4 topViewController];
      if (topViewController)
      {
        goto LABEL_7;
      }
    }

    presentedViewController = [v4 presentedViewController];

    if (presentedViewController)
    {
      topViewController = [v4 presentedViewController];
LABEL_7:
      v8 = topViewController;
      v5 = [(UIApplication *)controller _topMostViewController:topViewController];

      goto LABEL_9;
    }

    v5 = v4;
  }

LABEL_9:

  return v5;
}

- (void)__completeAndRunAsPlugin
{
  *&self->_applicationFlags = *&self->_applicationFlags & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
  self->_eventDispatcher->_mainEnvironment->_isSystemApplication = 0;
  byte_1EA992DA1 = 0;
  __IsRunningTests = 0;
  __LaunchTime = CACurrentMediaTime();
  __ExecOrResumeTime = CACurrentMediaTime();
  if (__IsRunningTests == 1)
  {
    v3 = qword_1EA992DE8;
    qword_1EA992DE8 = @"launch suspended";

    [(UIApplication *)self startedTest:qword_1EA992DE8];
  }

  _requestHardwareEventsIfNeeded();
  [(UIApplication *)self _runWithMainScene:0 transitionContext:0 completion:0];

  entr_act_end();
}

- (void)activityContinuationManager:(id)manager displayProgressUI:(id)i dismissalHandler:(id)handler
{
  handlerCopy = handler;
  v7 = _UINSLocalizedStringWithDefaultValue(@"Handoff", @"Handoff");
  v8 = _UINSLocalizedStringWithDefaultValue(@"Waiting for Handoff to “%@”.", @"Waiting for Handoff to “%@”.");
  _localizedApplicationName = [(UIApplication *)self _localizedApplicationName];
  v10 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v8, _localizedApplicationName];
  v11 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
  v12 = +[_UIApplicationModalProgressController sharedInstance];
  if ([(UIApplication *)self _isDisplayingActivityContinuationUI])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__UIApplication_activityContinuationManager_displayProgressUI_dismissalHandler___block_invoke;
    v18[3] = &unk_1E70F3608;
    v13 = &v19;
    v19 = handlerCopy;
    v14 = handlerCopy;
    [v12 reconfigureWithTitle:v7 message:v10 progress:0 buttonTitle:v11 dismissalHandler:v18];
  }

  else
  {
    [(UIApplication *)self _setIsDisplayingActivityContinuationUI:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80__UIApplication_activityContinuationManager_displayProgressUI_dismissalHandler___block_invoke_2;
    v16[3] = &unk_1E70F3608;
    v13 = &v17;
    v17 = handlerCopy;
    v15 = handlerCopy;
    [v12 displayWithTitle:v7 message:v10 progress:0 buttonTitle:v11 sourceViewController:0 preDisplayTestBlock:0 dismissalHandler:v16];
  }
}

uint64_t __80__UIApplication_activityContinuationManager_displayProgressUI_dismissalHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __80__UIApplication_activityContinuationManager_displayProgressUI_dismissalHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)activityContinuationManager:(id)manager configureProgressUIWithError:(id)error
{
  if ([(UIApplication *)self _isDisplayingActivityContinuationUI:manager])
  {
    v8 = +[_UIApplicationModalProgressController sharedInstance];
    [(UIApplication *)self _setIsDisplayingActivityContinuationUI:0];
    v5 = _UINSLocalizedStringWithDefaultValue(@"Handoff", @"Handoff");
    v6 = _UINSLocalizedStringWithDefaultValue(@"Handoff Failed", @"Handoff Failed");
    v7 = _UINSLocalizedStringWithDefaultValue(@"OK", @"OK");
    [v8 reconfigureWithTitle:v5 message:v6 progress:0 buttonTitle:v7 dismissalHandler:0];
  }
}

- (void)activityContinuationManager:(id)manager hideProgressUIWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(UIApplication *)self _isDisplayingActivityContinuationUI])
  {
    v6 = +[_UIApplicationModalProgressController sharedInstance];
    [(UIApplication *)self _setIsDisplayingActivityContinuationUI:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__UIApplication_activityContinuationManager_hideProgressUIWithCompletion___block_invoke;
    v7[3] = &unk_1E70F3608;
    v8 = completionCopy;
    [v6 hideAfterMinimumUptimeWithDismissalHandler:v7];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

uint64_t __74__UIApplication_activityContinuationManager_hideProgressUIWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)activityContinuationManagerUserCancelledError:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A250];
  v9 = *MEMORY[0x1E696A578];
  v5 = _UINSLocalizedStringWithDefaultValue(@"User cancelled waiting for the activity", @"User cancelled waiting for the activity");
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 errorWithDomain:v4 code:3072 userInfo:v6];

  return v7;
}

- (BOOL)activityContinuationManagerHandleErrorsByConfiguringProgressUI:(id)i
{
  if ([(UIApplication *)self _isDisplayingActivityContinuationUI])
  {
    v3 = objc_opt_respondsToSelector() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)activityContinuationManager:(id)manager willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(UIApplicationDelegate *)self->_delegate application:self willContinueUserActivityWithType:typeCopy];
    if (_UIStateRestorationDebugLogEnabled())
    {
      v7 = @"No";
      if (v6)
      {
        v7 = @"Yes";
      }

      NSLog(&cfstr_SDelegateRetur.isa, "[UIApplication activityContinuationManager:willContinueUserActivityWithType:]", v7);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)activityContinuationManager:(id)manager continueUserActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__UIApplication_activityContinuationManager_continueUserActivity___block_invoke;
    v15[3] = &unk_1E70F2FC8;
    v7 = activityCopy;
    v16 = v7;
    v8 = [(UIApplicationDelegate *)delegate application:self continueUserActivity:v7 restorationHandler:v15];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      if ([v7 _hasInteraction])
      {
        if (([v7 _accessedInteraction] & 1) == 0)
        {
          v9 = *(__UILogGetCategoryCachedImpl("Application", &activityContinuationManager_continueUserActivity____s_category) + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = v9;
            v11 = objc_opt_class();
            v12 = NSStringFromClass(v11);
            v13 = NSStringFromSelector(sel_application_continueUserActivity_restorationHandler_);
            *buf = 138412802;
            v18 = v12;
            v19 = 2112;
            v20 = v13;
            v21 = 2112;
            v22 = v7;
            _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "[%@ %@] %@ has an interaction attached but it is not handled", buf, 0x20u);
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __66__UIApplication_activityContinuationManager_continueUserActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__UIApplication_activityContinuationManager_continueUserActivity___block_invoke_2;
  v5[3] = &unk_1E70F35B8;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __66__UIApplication_activityContinuationManager_continueUserActivity___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SCallingRestor.isa, "[UIApplication activityContinuationManager:continueUserActivity:]_block_invoke_2", *(a1 + 40), v7);
          }

          [v7 restoreUserActivityState:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)activityContinuationManager:(id)manager didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  if (objc_opt_respondsToSelector())
  {
    [(UIApplicationDelegate *)self->_delegate application:self didFailToContinueUserActivityWithType:typeCopy error:errorCopy];
  }
}

- (void)activityContinuationManager:(id)manager didUpdateUserActivity:(id)activity
{
  activityCopy = activity;
  if (objc_opt_respondsToSelector())
  {
    [(UIApplicationDelegate *)self->_delegate application:self didUpdateUserActivity:activityCopy];
  }
}

- (void)workspaceShouldExit:(id)exit withTransitionContext:(id)context
{
  contextCopy = context;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (contextCopy && ([contextCopy isUISubclass] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:4240 description:{@"transitionContext is of an unexpected class : %@", contextCopy}];
  }

  v10 = contextCopy;
  kdebug_trace();
  v7 = +[_UISceneLifecycleMultiplexer sharedInstance];
  _mainScene = [(UIApplication *)self _mainScene];
  [v7 forceExitWithTransitionContext:v10 scene:_mainScene];

  kdebug_trace();
}

- (id)_connectUISceneFromFBSScene:(id)scene transitionContext:(id)context
{
  v62 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  contextCopy = context;
  specification = [sceneCopy specification];
  uiSceneSessionRole = [specification uiSceneSessionRole];

  v10 = [uiSceneSessionRole isEqualToString:@"UIWindowSceneSessionRoleApplication"];
  v11 = [uiSceneSessionRole isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];
  specification2 = [sceneCopy specification];
  isUIKitManaged = [specification2 isUIKitManaged];

  specification3 = [sceneCopy specification];
  isInternal = [specification3 isInternal];

  specification4 = [sceneCopy specification];
  LODWORD(v49) = [specification4 allowsConfigurationByAppDelegate];

  selfCopy = self;
  if (isUIKitManaged && isInternal && ((v10 | v11) & 1) != 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v47 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        specification5 = [sceneCopy specification];
        *buf = 138412546;
        v59 = specification5;
        v60 = 2112;
        v61 = uiSceneSessionRole;
        _os_log_fault_impl(&dword_188A29000, v47, OS_LOG_TYPE_FAULT, "Invalid scene specification. Internal scenes must also have a distinct UISceneSessionRole: specification: %@; role: %@", buf, 0x16u);
      }
    }

    else
    {
      v44 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA992F88) + 8);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = v44;
        specification6 = [sceneCopy specification];
        *buf = 138412546;
        v59 = specification6;
        v60 = 2112;
        v61 = uiSceneSessionRole;
        _os_log_impl(&dword_188A29000, v45, OS_LOG_TYPE_ERROR, "Invalid scene specification. Internal scenes must also have a distinct UISceneSessionRole: specification: %@; role: %@", buf, 0x16u);
      }
    }
  }

  v17 = [UIScene _persistenceIdentifierForScene:sceneCopy, v49];
  v18 = [(UIApplication *)self _openSessionForPersistentIdentifier:v17];
  v19 = v18;
  v51 = isInternal;
  if (v18)
  {
    if ([v18 _configurationNeedsReevalulation])
    {
      v20 = [[UISceneConfiguration alloc] initWithName:0 sessionRole:uiSceneSessionRole];
      [v19 _updateConfiguration:v20];

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = v19;
  }

  else
  {
    v22 = [[UISceneSession alloc] _initWithPersistentIdentifier:v17 sessionRole:uiSceneSessionRole configurationName:0];
    v21 = 0;
  }

  v54 = contextCopy;
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    specification7 = [sceneCopy specification];
    actions = [contextCopy actions];
    v25 = [UIScene _connectionOptionsForScene:sceneCopy withSpecification:specification7 transitionContext:contextCopy actions:actions sceneSession:v22];

    unprocessedActions = [v25 unprocessedActions];
    [contextCopy setActions:unprocessedActions];
  }

  else
  {
    v25 = 0;
  }

  v27 = [UISceneConnectionOptions alloc];
  specification8 = [sceneCopy specification];
  v29 = [(UISceneConnectionOptions *)&v27->super.isa _initWithConnectionOptionsContext:v25 fbsScene:sceneCopy specification:specification8];

  v30 = v21 ^ 1;
  if (!v19)
  {
    v30 = 0;
  }

  if ((v30 & 1) == 0)
  {
    requestedSceneConfigurations = [v25 requestedSceneConfigurations];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __63__UIApplication__connectUISceneFromFBSScene_transitionContext___block_invoke;
    v56[3] = &unk_1E711D510;
    v56[4] = uiSceneSessionRole;
    v57 = v51;
    v32 = [requestedSceneConfigurations bs_firstObjectPassingTest:v56];

    if (v32)
    {
      [v22 _updateConfiguration:v32];
LABEL_35:
      -[UIApplication _appendSessionToSessionSet:save:](selfCopy, "_appendSessionToSessionSet:save:", v22, [sceneCopy isPersistable]);

      goto LABEL_36;
    }

    if (v51)
    {
      goto LABEL_35;
    }

    configuration = [v22 configuration];
    if (v50 && (*(&selfCopy->_applicationFlags + 7) & 0x10) != 0)
    {
      v35 = [(UIApplicationDelegate *)selfCopy->_delegate application:selfCopy configurationForConnectingSceneSession:v22 options:v29];
      v34 = v35 != 0;
      if (v35)
      {
        v36 = v35;
        v37 = v35;
        v38 = configuration;
        configuration = v37;

        v35 = v36;
      }
    }

    else
    {
      v34 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__UIApplication__connectUISceneFromFBSScene_transitionContext___block_invoke_2;
    block[3] = &unk_1E70F3590;
    block[4] = selfCopy;
    if (qword_1EA992F90 != -1)
    {
      dispatch_once(&qword_1EA992F90, block);
    }

    if ((*(&selfCopy->_applicationFlags + 14) & 2) != 0)
    {
      v52 = v34;
      v39 = configuration;
      v40 = [configuration copy];
      v41 = [(UIApplication *)selfCopy _swiftui_effectiveSceneConfigurationForConnectingConfiguration:v40];

      if (v41)
      {

        configuration = v41;
      }

      else
      {
        configuration = v39;
        if (!v52)
        {
LABEL_34:

          goto LABEL_35;
        }
      }
    }

    else if (!v34)
    {
      goto LABEL_34;
    }

    [v22 _updateConfiguration:configuration];
    goto LABEL_34;
  }

LABEL_36:
  v42 = [UIScene _sceneForFBSScene:sceneCopy create:1 withSession:v22 connectionOptions:v29];

  return v42;
}

uint64_t __63__UIApplication__connectUISceneFromFBSScene_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 role];
  if (![v4 isEqualToString:*(a1 + 32)])
  {
    goto LABEL_5;
  }

  if (*(a1 + 40) != 1)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if (v3)
  {
    v5 = v3[56];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_7:

  return v5 & 1;
}

uint64_t __63__UIApplication__connectUISceneFromFBSScene_transitionContext___block_invoke_2(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  v3 = 0x2000000000000;
  if ((result & 1) == 0)
  {
    v3 = 0;
  }

  *(*(a1 + 32) + 184) = *(*(a1 + 32) + 184) & 0xFFFDFFFFFFFFFFFFLL | v3;
  return result;
}

- (void)workspace:(id)workspace didCreateScene:(id)scene withTransitionContext:(id)context completion:(id)completion
{
  sceneCopy = scene;
  contextCopy = context;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  kdebug_trace();
  [qword_1EA992E50 addObject:sceneCopy];
  settings = [sceneCopy settings];
  displayConfiguration = [settings displayConfiguration];

  if (displayConfiguration)
  {
    +[UIScreen _FBSDisplayConfigurationConnected:andNotify:](UIScreen, "_FBSDisplayConfigurationConnected:andNotify:", displayConfiguration, [UIApp _hasCalledRunWithMainScene]);
  }

  settings2 = [sceneCopy settings];
  isUISubclass = [settings2 isUISubclass];

  settings3 = [sceneCopy settings];
  displayIdentity = [settings3 displayIdentity];
  v18 = [UIScreen _screenWithFBSDisplayIdentity:displayIdentity];

  v19 = [(UIApplication *)self _connectUISceneFromFBSScene:sceneCopy transitionContext:contextCopy];
  _UIApplicationLogRuntimeIssueIfNeededForNoSceneLifecycleAdoption();
  _UIApplicationLogRuntimeIssueIfNeededForPadSpecificIssuesGivenInfo(self->_appInfo);
  if (isUISubclass)
  {
    if (contextCopy && ([contextCopy isUISubclass] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:4378 description:{@"transitionContext is of an unexpected class : %@", contextCopy}];
    }

    delegate = [sceneCopy delegate];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__UIApplication_workspace_didCreateScene_withTransitionContext_completion___block_invoke;
    v26[3] = &unk_1E710A5F8;
    v21 = &v27;
    v27 = completionCopy;
    [delegate scene:sceneCopy didUpdateWithDiff:0 transitionContext:contextCopy completion:v26];

    goto LABEL_10;
  }

  if ([qword_1EA992E50 count] == 1)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__UIApplication_workspace_didCreateScene_withTransitionContext_completion___block_invoke_2;
    v24[3] = &unk_1E70F0F78;
    v21 = &v25;
    v25 = completionCopy;
    [(UIApplication *)self _handleDaemonApplicationActivationWithScene:sceneCopy completion:v24];
LABEL_10:
  }

  kdebug_trace();
}

void __75__UIApplication_workspace_didCreateScene_withTransitionContext_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc_init(MEMORY[0x1E699FCC8]);
    (*(*(a1 + 32) + 16))();
  }
}

void __75__UIApplication_workspace_didCreateScene_withTransitionContext_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = objc_opt_new();
    (*(v1 + 16))(v1, v2);
  }
}

- (void)workspace:(id)workspace willDestroyScene:(id)scene withTransitionContext:(id)context completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  workspaceCopy = workspace;
  sceneCopy = scene;
  contextCopy = context;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  kdebug_trace();
  v32 = [UIScene _sceneForFBSScene:sceneCopy];
  [v32 _invalidate];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  actions = [contextCopy actions];
  v13 = [actions countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v37;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(actions);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        if ([v18 UIActionType] == 35)
        {
          v19 = v18;
          persistedIdentifiers = [v19 persistedIdentifiers];
          if (persistedIdentifiers)
          {
            [UIApp _discardSceneSessionsWithPersistentIdentifiers:persistedIdentifiers skippingPersistenceDeletion:0];
          }

          v15 = 1;
        }
      }

      v14 = [actions countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v21 = [UIScene _persistenceIdentifierForScene:sceneCopy];
  if ((v15 & 1) == 0 && ([sceneCopy isPersistable] & 1) == 0)
  {
    v22 = [MEMORY[0x1E695DFD8] setWithObject:v21];
    [(UIApplication *)self _discardSceneSessionsWithPersistentIdentifiers:v22 skippingPersistenceDeletion:1];
  }

  if (qword_1EA992F60 && qword_1EA992F60 == sceneCopy)
  {
    v30 = *(__UILogGetCategoryCachedImpl("UILog", &qword_1EA992F98) + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "systemUIService scene is going away - exiting", buf, 2u);
    }

    exit(0);
  }

  [sceneCopy setDelegate:0];
  [qword_1EA992E50 removeObject:sceneCopy];
  __cachedMostActiveWindowScene = 0;
  settings = [sceneCopy settings];
  displayConfiguration = [settings displayConfiguration];
  identity = [displayConfiguration identity];

  if (identity)
  {
    [UIScreen _FBSDisplayIdentityDisconnected:identity];
  }

  applicationFlags = self->_applicationFlags;
  if (![qword_1EA992E50 count] && ((applicationFlags >> 26) & 0xF) != 0 && ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForceEndIngnoringInteractionEventsForCarPlayApp, @"ForceEndIngnoringInteractionEventsForCarPlayApp", _UIInternalPreferenceUpdateBool) & 1) != 0 || byte_1EA95E614))
  {
    if (qword_1EA992F48 != -1)
    {
      dispatch_once(&qword_1EA992F48, &__block_literal_global_1337);
    }

    if (byte_1EA992DC2 == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v29 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          v41 = (applicationFlags >> 26) & 0xF;
          _os_log_fault_impl(&dword_188A29000, v29, OS_LOG_TYPE_FAULT, "The last scene was removed with %i missing calls to endIgnoringInteractionEvents", buf, 8u);
        }
      }

      else
      {
        v27 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA992FA0) + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v41 = (applicationFlags >> 26) & 0xF;
          _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "The last scene was removed with %i missing calls to endIgnoringInteractionEvents", buf, 8u);
        }
      }

      [(UIApplication *)self __forceEndIgnoringInteractionEvents];
    }
  }

  if (completionCopy)
  {
    v28 = UIApp;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __77__UIApplication_workspace_willDestroyScene_withTransitionContext_completion___block_invoke;
    v34[3] = &unk_1E70F0F78;
    v35 = completionCopy;
    [v28 _scheduleSceneEventResponseForScene:sceneCopy withResponseBlock:v34];
  }

  kdebug_trace();
}

void __77__UIApplication_workspace_willDestroyScene_withTransitionContext_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E699FCD0]);
  (*(*(a1 + 32) + 16))();
}

- (void)workspace:(id)workspace didReceiveActions:(id)actions
{
  actionsCopy = actions;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  kdebug_trace();
  v5 = +[_UISceneLifecycleMultiplexer sharedInstance];
  if ([v5 lifecycleWantsUnnecessaryDelayForSceneDelivery] && (objc_msgSend(v5, "activatedOnce") & 1) == 0)
  {
    actionsPendingInitialization = self->_actionsPendingInitialization;
    if (!actionsPendingInitialization)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v8 = self->_actionsPendingInitialization;
      self->_actionsPendingInitialization = v7;

      actionsPendingInitialization = self->_actionsPendingInitialization;
    }

    [(NSMutableSet *)actionsPendingInitialization unionSet:actionsCopy];
  }

  else
  {
    [(UIApplication *)self _handleNonLaunchSpecificActions:actionsCopy forScene:0 withTransitionContext:0 completion:0];
  }

  kdebug_trace();
}

- (void)_reportMainSceneUpdateFinished:(id)finished
{
  finishedCopy = finished;
  [(UIStatusBar *)self->_statusBar forceUpdateDoubleHeightStatus];
  [(UIApplication *)self _reportMainSceneUpdateFinishedPossiblyDeferredPortions];
  v4 = finishedCopy;
  if (finishedCopy)
  {
    [qword_1EA992E68 enqueuePostSynchronizeResponse:finishedCopy];
    v4 = finishedCopy;
  }
}

- (void)_runWithDaemonScene:(id)scene completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  completionCopy = completion;
  kdebug_trace();
  interfaceOrientation = [(_UIApplicationInfoParser *)self->_appInfo interfaceOrientation];
  v28 = interfaceOrientation;
  if (interfaceOrientation <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = interfaceOrientation;
  }

  p_applicationFlags = &self->_applicationFlags;
  *(&self->_applicationFlags + 1) &= ~0x80000000uLL;
  BSSetMainThreadPriorityFixedForUI();
  mainScreen = [objc_opt_self() mainScreen];
  v29 = v8;
  [mainScreen _setInterfaceOrientation:v8];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  mainScreen2 = [objc_opt_self() mainScreen];
  v12 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 forScreen:mainScreen2];

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

        [*(*(&v37 + 1) + 8 * i) _updateTransformLayer];
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v14);
  }

  [(UIApplication *)self setReceivesMemoryWarnings:1];
  v31 = sceneCopy;
  v17 = [(UIScene *)UIWindowScene _sceneForFBSScene:sceneCopy];
  [(UIApplication *)self _callInitializationDelegatesWithActions:0 forScene:v17 payload:0 fromOriginatingProcess:0];

  [(UIApplication *)self _stopDeactivatingForReason:10];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v33 + 1) + 8 * j);
        _delegateViewController = [v23 _delegateViewController];
        if (_delegateViewController)
        {
        }

        else if (([v23 _isTextEffectsWindow] & 1) == 0)
        {
          v25 = *(__UILogGetCategoryCachedImpl("Application", &_runWithDaemonScene_completion____s_category) + 8);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Application windows are expected to have a root view controller at the end of application launch", buf, 2u);
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v20);
  }

  if ((*p_applicationFlags & 0x100000) == 0)
  {
    *p_applicationFlags |= 0x100000uLL;
  }

  v26 = v29;
  if (v28 >= 5)
  {
    v26 = [UIDevice currentDeviceOrientationAllowingAmbiguous:1];
  }

  if ((v26 - 1) <= 3)
  {
    v27 = +[UIDevice currentDevice];
    if (([v27 isGeneratingDeviceOrientationNotifications] & 1) == 0)
    {
      *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFFFFFFFFF1FFFLL | (v26 << 13);
    }

    [v27 setOrientation:v26 animated:0];
  }

  if ((*p_applicationFlags & 0x100000) != 0)
  {
    *p_applicationFlags &= ~0x100000uLL;
    [(UIApplication *)self _reportMainSceneUpdateFinished:completionCopy];
    *p_applicationFlags |= 0x100000uLL;
  }

  else
  {
    [(UIApplication *)self _reportMainSceneUpdateFinished:completionCopy];
  }

  kdebug_trace();
}

- (void)_runWithMainScene:(id)scene transitionContext:(id)context completion:(id)completion
{
  v62[1] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  contextCopy = context;
  kdebug_trace();
  uiSettings = [sceneCopy uiSettings];
  uiClientSettings = [sceneCopy uiClientSettings];
  statusBarHidden = [uiClientSettings statusBarHidden];
  statusBarStyle = [uiClientSettings statusBarStyle];
  v46 = uiClientSettings;
  interfaceOrientation = [uiClientSettings interfaceOrientation];
  deviceOrientation = [uiSettings deviceOrientation];
  if (uiSettings)
  {
    v44 = [uiSettings isForeground] ^ 1;
  }

  else
  {
    LOBYTE(v44) = 0;
  }

  kdebug_trace();
  [(UIApplication *)self _reloadKeyboardArbiterState];
  kdebug_trace();
  if (_UIApplicationStartsAppViewServiceListener())
  {
    v14 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1EA992FC0) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Launching as view service: YES", buf, 2u);
    }

    [_UIViewServiceSessionManager startViewServiceSessionManagerAsPlugin:0];
  }

  BSSetMainThreadPriorityFixedForUI();
  if (uiSettings)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen _setUserInterfaceStyleIfNecessary:objc_msgSend(uiSettings firstTimeOnly:{"userInterfaceStyle"), 1}];
  }

  interfaceOrientation2 = [(_UIApplicationInfoParser *)self->_appInfo interfaceOrientation];
  v45 = interfaceOrientation;
  if (sceneCopy)
  {
    settings = [sceneCopy settings];
    interfaceOrientation3 = [settings interfaceOrientation];
  }

  else if (interfaceOrientation2 <= 1)
  {
    interfaceOrientation3 = 1;
  }

  else
  {
    interfaceOrientation3 = interfaceOrientation2;
  }

  if ((interfaceOrientation3 - 1) >= 4)
  {
    v19 = 1;
  }

  else
  {
    v19 = interfaceOrientation3;
  }

  if (!uiSettings || ([uiSettings statusBarDisabled] & 1) == 0)
  {
    [(UIApplication *)self _setupStatusBarWithRequestedStyle:statusBarStyle orientation:v19 hidden:statusBarHidden];
  }

  v47 = uiSettings;
  mainScreen2 = [objc_opt_self() mainScreen];
  [mainScreen2 _setInterfaceOrientation:v19];
  [(UIApplication *)self setReceivesMemoryWarnings:1];
  +[UIResponder _startDeferredTrackingObjectsWithIdentifiers];
  if (![(UIApplication *)self _appAdoptsUISceneLifecycle])
  {
    [(UIApplication *)self _loadMainInterfaceFile];
  }

  if ((_UIIsPrivateMainBundle() & 1) == 0)
  {
    [(UIApplication *)self _checkBackgroundRefreshAPIAdoption];
  }

  if ([(UIApplication *)self _isSpringBoardShowingAnAlert])
  {
    [(UIApplication *)self _deactivateForReason:13 notify:0];
  }

  actions = [contextCopy actions];
  v49 = sceneCopy;
  v22 = [(UIScene *)UIWindowScene _sceneForFBSScene:sceneCopy];
  payload = [contextCopy payload];
  v48 = contextCopy;
  originatingProcess = [contextCopy originatingProcess];
  [(UIApplication *)self _callInitializationDelegatesWithActions:actions forScene:v22 payload:payload fromOriginatingProcess:originatingProcess];

  +[UIResponder _cleanupAllStateRestorationTables];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainScreen3 = [objc_opt_self() mainScreen];
  v61 = 0x1EFB92210;
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
  v62[0] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  [defaultCenter postNotificationName:0x1EFB921F0 object:mainScreen3 userInfo:v28];

  [(UIApplication *)self _stopDeactivatingForReason:10];
  if (![(UIApplication *)self isSuspended])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v29 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
    v30 = [v29 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v56;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v56 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v55 + 1) + 8 * i);
          _delegateViewController = [v34 _delegateViewController];
          if (_delegateViewController)
          {
          }

          else if (([v34 _isTextEffectsWindow] & 1) == 0)
          {
            if (!dyld_program_sdk_at_least() || -[UIApplication _isSpringBoard](self, "_isSpringBoard") || ([objc_opt_class() registerAsSystemApp] & 1) != 0)
            {
              v36 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992FC8) + 8);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "Application windows are expected to have a root view controller at the end of application launch", buf, 2u);
              }
            }

            else
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:4979 description:@"Application windows are expected to have a root view controller at the end of application launch"];
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v31);
    }
  }

  applicationFlags = self->_applicationFlags;
  if (!((applicationFlags >> 20) & 1 | v44 & 1))
  {
    *&self->_applicationFlags = applicationFlags | 0x100000;
  }

  v39 = +[UIDevice currentDevice];
  v40 = v45;
  if ([(UIApplication *)self isFrontBoard])
  {
    [v39 setOrientation:-[UIApplication activeInterfaceOrientation](self animated:{"activeInterfaceOrientation"), 0}];
  }

  else
  {
    if ((v45 - 1) < 4 || (v40 = [UIDevice currentDeviceOrientationAllowingAmbiguous:1], (v40 - 1) <= 3))
    {
      if (([v39 isGeneratingDeviceOrientationNotifications] & 1) == 0)
      {
        *(&self->_applicationFlags + 1) = (*(&self->_applicationFlags + 1) & 0xFFFFFFFFFFFF1FFFLL) + (v40 << 13);
      }

      [v39 setOrientation:v40 animated:0];
    }

    if (deviceOrientation && deviceOrientation != v40)
    {
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __64__UIApplication__runWithMainScene_transitionContext_completion___block_invoke;
      v52[3] = &unk_1E70F32F0;
      v53 = v39;
      v54 = deviceOrientation;
      [(UIApplication *)self _performBlockAfterCATransactionCommits:v52];
    }
  }

  if (_MergedGlobals_157 == 1)
  {
    v41 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__UIApplication__runWithMainScene_transitionContext_completion___block_invoke_2;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_after(v41, MEMORY[0x1E69E96A0], block);
  }

  if (UIDebuggingOverlayIsEnabled())
  {
    +[UIDebuggingInformationOverlay prepareDebuggingOverlay];
  }

  if (mainScreen2)
  {
    [UIApplication _setupDefaultEnvironmentWithScreen:mainScreen2];
  }

  v42 = +[_UISceneLifecycleMultiplexer sharedInstance];
  [v42 noteApplicationLaunchCompleted];

  kdebug_trace();
}

- (void)_unregisterForSignificantTimeChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = UIApp;

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v3, @"SignificantTimeChangeNotification", 0);
}

- (void)_unregisterForLanguageChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = UIApp;

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v3, @"com.apple.language.changed", 0);
}

- (void)_unregisterForLocaleChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = UIApp;

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v3, @"AppleNumberPreferencesChangedNotification", 0);
}

- (void)_unregisterForTimeChangedNotification
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v3 = UIApp;
  v4 = *MEMORY[0x1E695E6E0];

  CFNotificationCenterRemoveObserver(LocalCenter, v3, v4, 0);
}

void __54__UIApplication__registerForNameLayerTreeNotification__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v0 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0, 0];
  v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v6;
    do
    {
      v4 = 0;
      do
      {
        if (*v6 != v3)
        {
          objc_enumerationMutation(v0);
        }

        [*(*(&v5 + 1) + 8 * v4++) _recursivelyNameLayerTree];
      }

      while (v2 != v4);
      v2 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
    }

    while (v2);
  }

  NSLog(&cfstr_NamedWindows.isa);
}

uint64_t __54__UIApplication__registerForNameLayerTreeNotification__block_invoke_3(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = state64;
  result = getpid();
  if (v3 == result)
  {
    return (*(*(a1 + 32) + 16))();
  }

  return result;
}

- (int)_loadMainNibFileNamed:(id)named bundle:(id)bundle
{
  v14 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  v7 = [bundle loadNibNamed:namedCopy owner:self options:0];
  topLevelNibObjects = self->_topLevelNibObjects;
  self->_topLevelNibObjects = v7;

  if (self->_topLevelNibObjects)
  {
    v9 = 0;
  }

  else
  {
    v10 = *(__UILogGetCategoryCachedImpl("Application", &_loadMainNibFileNamed_bundle____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = namedCopy;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Failed to load NSMainNibFile %@.", &v12, 0xCu);
    }

    v9 = 2;
  }

  return v9;
}

- (int)_loadMainStoryboardFileNamed:(id)named bundle:(id)bundle
{
  v21 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  v7 = [UIStoryboard storyboardWithName:namedCopy bundle:bundle];
  v8 = v7;
  if (v7)
  {
    if (!self->_storyboardInitialMenu)
    {
      _instantiateInitialMenu = [v7 _instantiateInitialMenu];
      storyboardInitialMenu = self->_storyboardInitialMenu;
      self->_storyboardInitialMenu = _instantiateInitialMenu;
    }

    instantiateInitialViewController = [v8 instantiateInitialViewController];
    if (instantiateInitialViewController)
    {
      v12 = instantiateInitialViewController;
      if (self->_delegate)
      {
        if (objc_opt_respondsToSelector())
        {
          window = [(UIApplicationDelegate *)self->_delegate window];
          if (window)
          {
            goto LABEL_22;
          }
        }

        if (objc_opt_respondsToSelector())
        {
          window = [(UIApplication *)self _newDefaultStoryboardWindow];
          [(UIApplicationDelegate *)self->_delegate setWindow:window];
LABEL_22:
          [window setRootViewController:{v12, *v20}];

          v16 = 1;
          goto LABEL_23;
        }

        v17 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992FD0) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          v18 = "The app delegate must implement the window property if it wants to use a main storyboard file.";
          goto LABEL_20;
        }
      }

      else
      {
        v17 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992FD8) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          v18 = "There is no app delegate set. An app delegate class must be specified to use a main storyboard file.";
LABEL_20:
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, v18, v20, 2u);
        }
      }

      window = 0;
      goto LABEL_22;
    }

    v14 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992FE0) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v20 = 138412290;
      *&v20[4] = namedCopy;
      v15 = "Failed to instantiate the default view controller for UIMainStoryboardFile '%@' - perhaps the designated entry point is not set?";
      goto LABEL_14;
    }
  }

  else
  {
    v14 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA992FE8) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v20 = 138412290;
      *&v20[4] = namedCopy;
      v15 = "Failed to load UIMainStoryboardFile %@.";
LABEL_14:
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, v15, v20, 0xCu);
    }
  }

  v16 = 2;
LABEL_23:

  return v16;
}

- (id)_storyboardInitialMenu
{
  storyboardInitialMenu = self->_storyboardInitialMenu;
  if (!storyboardInitialMenu)
  {
    _mainStoryboardName = [(UIApplication *)self _mainStoryboardName];
    if ([(UIApplication *)self _hasStoryboard])
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      v6 = [UIStoryboard storyboardWithName:_mainStoryboardName bundle:mainBundle];

      _instantiateInitialMenu = [v6 _instantiateInitialMenu];
      v8 = self->_storyboardInitialMenu;
      self->_storyboardInitialMenu = _instantiateInitialMenu;
    }

    storyboardInitialMenu = self->_storyboardInitialMenu;
  }

  return storyboardInitialMenu;
}

- (id)userInfoDictionaryForRunLoopMode:(id)mode requester:(id)requester
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (requester)
  {
    v14[0] = @"_UIApplicationRunLoopMode";
    v14[1] = @"_UIApplicationRunLoopModeRequesterUserInfoKey";
    v15[0] = mode;
    v15[1] = requester;
    v5 = MEMORY[0x1E695DF20];
    requesterCopy = requester;
    modeCopy = mode;
    v8 = [v5 dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    v12 = @"_UIApplicationRunLoopMode";
    modeCopy2 = mode;
    v9 = MEMORY[0x1E695DF20];
    modeCopy3 = mode;
    v8 = [v9 dictionaryWithObjects:&modeCopy2 forKeys:&v12 count:1];
    requesterCopy = 0;
  }

  return v8;
}

- (void)_pushRunLoopMode:(id)mode requester:(id)requester reason:(id)reason
{
  v25 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  requesterCopy = requester;
  reasonCopy = reason;
  if ([UIApp _isSpringBoard])
  {
    v11 = *(__UILogGetCategoryCachedImpl("SpringBoardRunLoopMode", &_pushRunLoopMode_requester_reason____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v17 = 138544130;
      v18 = modeCopy;
      v19 = 2114;
      v20 = reasonCopy;
      v21 = 2114;
      v22 = v14;
      v23 = 2050;
      v24 = requesterCopy;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Push:%{public}@ %{public}@ requester:<%{public}@ %{public}p>", &v17, 0x2Au);
    }
  }

  _UIApplicationInstallAutoreleasePoolsIfNecessaryForMode(modeCopy);
  GSEventPushRunLoopMode();
  v15 = [(UIApplication *)self userInfoDictionaryForRunLoopMode:modeCopy requester:requesterCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIApplicationRunLoopModePushNotification" object:self userInfo:v15];
}

- (void)_popRunLoopMode:(id)mode requester:(id)requester reason:(id)reason
{
  v25 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  requesterCopy = requester;
  reasonCopy = reason;
  if ([UIApp _isSpringBoard])
  {
    v11 = *(__UILogGetCategoryCachedImpl("SpringBoardRunLoopMode", &_popRunLoopMode_requester_reason____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v17 = 138544130;
      v18 = modeCopy;
      v19 = 2114;
      v20 = reasonCopy;
      v21 = 2114;
      v22 = v14;
      v23 = 2050;
      v24 = requesterCopy;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Pop:%{public}@ %{public}@ requester:<%{public}@ %{public}p>", &v17, 0x2Au);
    }
  }

  GSEventPopRunLoopMode();
  v15 = [(UIApplication *)self userInfoDictionaryForRunLoopMode:modeCopy requester:requesterCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIApplicationRunLoopModePopNotification" object:self userInfo:v15];
}

- (id)_unswizzledTargetInChainForAction:(SEL)action sender:(id)sender
{
  senderCopy = sender;
  if (objc_opt_respondsToSelector())
  {
    [senderCopy window];
  }

  else
  {
    +[UIWindow _applicationKeyWindow];
  }
  v6 = ;
  _focusBehavior = [v6 _focusBehavior];
  syncsFocusAndResponder = [_focusBehavior syncsFocusAndResponder];

  if (syncsFocusAndResponder)
  {
    _focusSystem = [v6 _focusSystem];
    _preferredFirstResponder = [_focusSystem _preferredFirstResponder];

    _responderWindow = [_preferredFirstResponder _responderWindow];

    if (_responderWindow == v6)
    {
      if (_preferredFirstResponder)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  if (_AXSFullKeyboardAccessEnabled())
  {
    if (!_AXSFullKeyboardAccessPassthroughModeEnabled())
    {
      _focusResponder = [v6 _focusResponder];
      if (_focusResponder)
      {
        _preferredFirstResponder = _focusResponder;
LABEL_15:
        v13 = _UIResponderTargetForAction(_preferredFirstResponder, action, senderCopy);
        goto LABEL_16;
      }
    }
  }

  firstResponder = [v6 firstResponder];
  _preferredFirstResponder = [firstResponder _responderForEditing];

  if (_preferredFirstResponder)
  {
    goto LABEL_15;
  }

  _preferredFirstResponder = senderCopy;
  if (_preferredFirstResponder)
  {
    goto LABEL_15;
  }

  v13 = 0;
LABEL_16:
  v15 = v13;

  return v13;
}

- (BOOL)sendAction:(SEL)action to:(id)target from:(id)sender forEvent:(UIEvent *)event
{
  v8 = target;
  if (!target)
  {
    v8 = [(UIApplication *)self _unswizzledTargetInChainForAction:action sender:sender];
  }

  if (dyld_program_sdk_at_least())
  {
    [v8 action];
  }

  else
  {
    [v8 performSelector:action withObject:sender withObject:event];
  }

  return v8 != 0;
}

- (void)_createStatusBarIfNeededWithOrientation:(int64_t)orientation forWindowScene:(id)scene
{
  sceneCopy = scene;
  if (!self->_statusBar)
  {
    v8 = sceneCopy;
    _hostsSystemStatusBar = [(UIApplication *)self _hostsSystemStatusBar];
    sceneCopy = v8;
    if (_hostsSystemStatusBar)
    {
      if (!orientation)
      {
        orientation = [(UIApplication *)self _safeInterfaceOrientationForNoWindow];
      }

      if (*(&self->_applicationFlags + 14))
      {
        [(UIApplication *)self _createStatusBarWithRequestedStyle:0 orientation:orientation hidden:0];
      }

      else
      {
        [(UIApplication *)self _createStatusBarWithRequestedStyle:0 orientation:orientation hidden:0 forWindowScene:v8];
      }

      sceneCopy = v8;
    }
  }
}

- (void)_createStatusBarWithRequestedStyle:(int64_t)style orientation:(int64_t)orientation hidden:(BOOL)hidden forWindowScene:(id)scene
{
  sceneCopy = scene;
  if (![(UIApplication *)self _isSpringBoard])
  {
    if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_RaiseForStatusBarCreation, @"RaiseForStatusBarCreation", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E60C)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = currentHandler;
      v12 = a2;
      selfCopy2 = self;
      v14 = 5982;
LABEL_5:
      [currentHandler handleFailureInMethod:v12 object:selfCopy2 file:@"UIApplication.m" lineNumber:v14 description:@"App called -statusBar or -statusBarWindow on UIApplication: this code must be changed as there's no longer a status bar or status bar window. Use the statusBarManager object on the window scene instead."];

      goto LABEL_6;
    }

    if (_UIIsPrivateMainBundle())
    {
      if (os_variant_has_internal_diagnostics())
      {
        v22 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "App called -statusBar or -statusBarWindow on UIApplication: this code must be changed as there's no longer a status bar or status bar window. Use the statusBarManager object on the window scene instead.", buf, 2u);
        }
      }

      else
      {
        v21 = *(__UILogGetCategoryCachedImpl("Assert", &_createStatusBarWithRequestedStyle_orientation_hidden_forWindowScene____s_category) + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v23 = 0;
          _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "App called -statusBar or -statusBarWindow on UIApplication: this code must be changed as there's no longer a status bar or status bar window. Use the statusBarManager object on the window scene instead.", v23, 2u);
        }
      }
    }

    else if (dyld_program_sdk_at_least())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = currentHandler;
      v12 = a2;
      selfCopy2 = self;
      v14 = 5988;
      goto LABEL_5;
    }
  }

LABEL_6:
  kdebug_trace();
  v15 = objc_alloc([objc_opt_class() _statusBarClass]);
  [(UIStatusBar_Base *)UIStatusBar _heightForStyle:0 orientation:1 forStatusBarFrame:1 inWindow:0];
  v17 = [v15 initWithFrame:{0.0, 0.0, 0.0, v16}];
  statusBar = self->_statusBar;
  self->_statusBar = v17;

  [(UIStatusBar_Base *)self->_statusBar setStyleDelegate:self];
  kdebug_trace();
  kdebug_trace();
  v19 = [objc_alloc(objc_msgSend(objc_opt_class() "_statusBarWindowClass"))];
  kdebug_trace();
  [(UIApplication *)self _setStatusBarWindow:v19 forScene:sceneCopy];
  statusBarManager = [sceneCopy statusBarManager];

  if (statusBarManager)
  {
    kdebug_trace();
    [statusBarManager updateStatusBarAppearance];
    kdebug_trace();
  }

  kdebug_trace();
  [v19 setStatusBar:self->_statusBar];
  [v19 setOrientation:orientation animationParameters:0];
  [v19 setWindowLevel:1000.0];
  [v19 _orderFrontWithoutMakingKey];
  kdebug_trace();
}

- (void)_setupStatusBarWithRequestedStyle:(int64_t)style orientation:(int64_t)orientation hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v8 = [(UIApplication *)self _isStatusBarHiddenForOrientation:orientation];
  v9 = 0x1000000;
  if (!v8 && !hiddenCopy)
  {
    v9 = 0;
  }

  *&self->_applicationFlags = *&self->_applicationFlags & 0xFFFFFFFFFEFFFFFFLL | v9;
  if ([(UIApplication *)self _shouldCreateStatusBarAtLaunch])
  {

    [(UIApplication *)self _createStatusBarIfNeededWithOrientation:orientation forWindowScene:0];
  }
}

- (id)statusBarWithWindow:(id)window
{
  windowCopy = window;
  v5 = windowCopy;
  if (windowCopy)
  {
    interfaceOrientation = [windowCopy interfaceOrientation];
  }

  else
  {
    interfaceOrientation = 0;
  }

  windowScene = [v5 windowScene];
  [(UIApplication *)self _createStatusBarIfNeededWithOrientation:interfaceOrientation forWindowScene:windowScene];

  statusBar = self->_statusBar;
  v9 = statusBar;

  return statusBar;
}

- (id)statusBarWindow
{
  [(UIApplication *)self _createStatusBarIfNeededWithOrientation:0 forWindowScene:0];
  embeddedScreenStatusBarWindow = self->_embeddedScreenStatusBarWindow;

  return embeddedScreenStatusBarWindow;
}

- (id)_statusBarWindow
{
  if (dyld_program_sdk_at_least())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:6084 description:@"The status bar window cannot be accessed from within an application."];
  }

  return 0;
}

- (id)_statusBarWindowIfExistsForScene:(id)scene
{
  sceneCopy = scene;
  v5 = sceneCopy;
  if (sceneCopy && ([sceneCopy _screen], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_isEmbeddedScreen"), v6, (v7 & 1) == 0))
  {
    v9 = objc_getAssociatedObject(self, &_UIApplicationAdditionalStatusBarWindowsKey);
    _FBSScene = [v5 _FBSScene];
    identityToken = [_FBSScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    v13 = [v9 objectForKey:stringRepresentation];
    embeddedScreenStatusBarWindow = v13;
    if (!v13)
    {
      embeddedScreenStatusBarWindow = self->_embeddedScreenStatusBarWindow;
    }

    v8 = embeddedScreenStatusBarWindow;
  }

  else
  {
    v8 = self->_embeddedScreenStatusBarWindow;
  }

  return v8;
}

- (void)_setStatusBarWindow:(id)window forScene:(id)scene
{
  windowCopy = window;
  sceneCopy = scene;
  v7 = sceneCopy;
  if (sceneCopy && ([sceneCopy _screen], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "_isEmbeddedScreen"), v8, (v9 & 1) == 0))
  {
    embeddedScreenStatusBarWindow = objc_getAssociatedObject(self, &_UIApplicationAdditionalStatusBarWindowsKey);
    if (!embeddedScreenStatusBarWindow)
    {
      embeddedScreenStatusBarWindow = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0x10000 valueOptions:5 capacity:2];
      objc_setAssociatedObject(self, &_UIApplicationAdditionalStatusBarWindowsKey, embeddedScreenStatusBarWindow, 1);
    }

    _FBSScene = [v7 _FBSScene];
    identityToken = [_FBSScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    [embeddedScreenStatusBarWindow setObject:windowCopy forKey:stringRepresentation];
  }

  else
  {
    v10 = windowCopy;
    embeddedScreenStatusBarWindow = self->_embeddedScreenStatusBarWindow;
    self->_embeddedScreenStatusBarWindow = v10;
  }
}

- (void)_statusBarWindow:(id)window didMoveFromScene:(id)scene toScene:(id)toScene
{
  windowCopy = window;
  sceneCopy = scene;
  toSceneCopy = toScene;
  if (sceneCopy)
  {
    [(UIApplication *)self _setStatusBarWindow:0 forScene:sceneCopy];
  }

  if (toSceneCopy)
  {
    [(UIApplication *)self _setStatusBarWindow:windowCopy forScene:toSceneCopy];
  }
}

- (void)_setBackgroundStyle:(int64_t)style
{
  _mainScene = [(UIApplication *)self _mainScene];
  v4 = [(UIScene *)UIWindowScene _sceneForFBSScene:_mainScene];
  [v4 _setBackgroundStyle:style];
}

- (id)_implicitStatusBarAnimationParametersWithClass:(Class)class
{
  v4 = +[UIView _currentAnimationAttributes];
  if (v4)
  {
    initWithDefaultParameters = [[class alloc] initWithDefaultParameters];
    [v4 _duration];
    [initWithDefaultParameters setDuration:?];
    [v4 _delay];
    [initWithDefaultParameters setDelay:?];
    [initWithDefaultParameters setCurve:{objc_msgSend(v4, "_curve")}];
  }

  else
  {
    initWithDefaultParameters = 0;
  }

  return initWithDefaultParameters;
}

- (id)_implicitStatusBarStyleAnimationParametersWithViewController:(id)controller
{
  _preferredStatusBarStyleAnimationParameters = [controller _preferredStatusBarStyleAnimationParameters];
  if (!_preferredStatusBarStyleAnimationParameters)
  {
    _preferredStatusBarStyleAnimationParameters = [(UIApplication *)self _implicitStatusBarAnimationParametersWithClass:objc_opt_class()];
    [_preferredStatusBarStyleAnimationParameters setStyleAnimation:1];
  }

  return _preferredStatusBarStyleAnimationParameters;
}

- (id)_implicitStatusBarHiddenAnimationParametersWithViewController:(id)controller animation:(int64_t)animation
{
  _preferredStatusBarHideAnimationParameters = [controller _preferredStatusBarHideAnimationParameters];
  if (!_preferredStatusBarHideAnimationParameters)
  {
    _preferredStatusBarHideAnimationParameters = [(UIApplication *)self _implicitStatusBarAnimationParametersWithClass:objc_opt_class()];
    [_preferredStatusBarHideAnimationParameters setHideAnimation:animation];
  }

  return _preferredStatusBarHideAnimationParameters;
}

- (void)setStatusBarStyle:(int64_t)style animationParameters:(id)parameters
{
  parametersCopy = parameters;
  if (![(UIApplication *)self _viewControllerBasedStatusBarAppearance])
  {
    self->_statusBarRequestedStyle = style;
    v7 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__UIApplication_setStatusBarStyle_animationParameters___block_invoke;
    v8[3] = &unk_1E711D558;
    v9 = parametersCopy;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

void __55__UIApplication_setStatusBarStyle_animationParameters___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 statusBarManager];
  [v3 updateStatusBarAppearanceWithAnimationParameters:*(a1 + 32)];
}

- (void)setStatusBarStyle:(int64_t)style animation:(int)animation startTime:(double)time duration:(double)duration curve:(int64_t)curve
{
  if (animation)
  {
    v12 = *&animation;
    initWithDefaultParameters = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
    [(UIStatusBarStyleAnimationParameters *)initWithDefaultParameters setStyleAnimation:v12];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setStartTime:time];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setDuration:duration];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setCurve:curve];
  }

  else
  {
    initWithDefaultParameters = 0;
  }

  [(UIApplication *)self setStatusBarStyle:style animationParameters:initWithDefaultParameters];
}

- (void)setStatusBarStyle:(int64_t)style animation:(int)animation
{
  if (animation)
  {
    v6 = *&animation;
    initWithDefaultParameters = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
    [(UIStatusBarStyleAnimationParameters *)initWithDefaultParameters setStyleAnimation:v6];
  }

  else
  {
    initWithDefaultParameters = 0;
  }

  [(UIApplication *)self setStatusBarStyle:style animationParameters:initWithDefaultParameters];
}

- (void)setStatusBarStyle:(int64_t)style duration:(double)duration
{
  if (duration <= 0.0)
  {
    initWithDefaultParameters = 0;
  }

  else
  {
    initWithDefaultParameters = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setDuration:duration];
  }

  [(UIApplication *)self setStatusBarStyle:style animationParameters:initWithDefaultParameters];
}

- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle animated:(BOOL)animated
{
  if (animated)
  {
    initWithDefaultParameters = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
  }

  else
  {
    initWithDefaultParameters = 0;
  }

  v7 = initWithDefaultParameters;
  [(UIApplication *)self setStatusBarStyle:statusBarStyle animationParameters:initWithDefaultParameters];
}

- (void)setStatusBarHidden:(BOOL)hidden animationParameters:(id)parameters changeApplicationFlag:(BOOL)flag
{
  flagCopy = flag;
  hiddenCopy = hidden;
  parametersCopy = parameters;
  if (![(UIApplication *)self _viewControllerBasedStatusBarAppearance])
  {
    if (flagCopy && ((((*&self->_applicationFlags & 0x1000000) == 0) ^ hiddenCopy) & 1) == 0)
    {
      v9 = 50331648;
      if (!hiddenCopy)
      {
        v9 = 0;
      }

      *&self->_applicationFlags = *&self->_applicationFlags & 0xFFFFFFFFFCFFFFFFLL | v9;
    }

    v10 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__UIApplication_setStatusBarHidden_animationParameters_changeApplicationFlag___block_invoke;
    v11[3] = &unk_1E711D558;
    v12 = parametersCopy;
    [v10 enumerateObjectsUsingBlock:v11];
  }
}

void __78__UIApplication_setStatusBarHidden_animationParameters_changeApplicationFlag___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 statusBarManager];
  [v3 updateStatusBarAppearanceWithAnimationParameters:*(a1 + 32)];
}

- (BOOL)_isOrientationVerticallyCompact:(int64_t)compact
{
  mainScreen = [objc_opt_self() mainScreen];
  v5 = [mainScreen _defaultTraitCollectionForInterfaceOrientation:compact];

  LOBYTE(mainScreen) = [v5 verticalSizeClass] == 1;
  return mainScreen;
}

- (BOOL)_isStatusBarForcedHiddenForOrientation:(int64_t)orientation
{
  _wantsCompactStatusBarHiding = [(UIApplication *)self _wantsCompactStatusBarHiding];
  if (_wantsCompactStatusBarHiding)
  {

    LOBYTE(_wantsCompactStatusBarHiding) = [(UIApplication *)self _isOrientationVerticallyCompact:orientation];
  }

  return _wantsCompactStatusBarHiding;
}

- (BOOL)_isStatusBarHiddenForOrientation:(int64_t)orientation
{
  if ([(UIApplication *)self _isStatusBarForcedHiddenForOrientation:orientation])
  {
    return 1;
  }

  else
  {
    return *(&self->_applicationFlags + 3) & 1;
  }
}

- (void)setStatusBarHidden:(BOOL)hidden duration:(double)duration changeApplicationFlag:(BOOL)flag
{
  flagCopy = flag;
  hiddenCopy = hidden;
  if (duration <= 0.0)
  {
    initWithDefaultParameters = 0;
  }

  else
  {
    initWithDefaultParameters = [[UIStatusBarHideAnimationParameters alloc] initWithDefaultParameters];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setDuration:duration];
  }

  [(UIApplication *)self setStatusBarHidden:hiddenCopy animationParameters:initWithDefaultParameters changeApplicationFlag:flagCopy];
}

- (void)setStatusBarHidden:(BOOL)hidden withAnimation:(UIStatusBarAnimation)animation
{
  v4 = hidden;
  if (animation)
  {
    initWithDefaultParameters = [[UIStatusBarHideAnimationParameters alloc] initWithDefaultParameters];
    if (animation == UIStatusBarAnimationSlide)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = initWithDefaultParameters;
    [(UIStatusBarHideAnimationParameters *)initWithDefaultParameters setHideAnimation:v8];
  }

  else
  {
    v9 = 0;
  }

  [(UIApplication *)self setStatusBarHidden:v4 animationParameters:v9];
}

- (BOOL)_isStatusBarEffectivelyHiddenForContentOverlayInsetsForWindow:(id)window
{
  windowCopy = window;
  if (-[UIApplication _isSpringBoard](self, "_isSpringBoard") && (-[UIApplication statusBar](self, "statusBar"), v5 = objc_claimAutoreleasedReturnValue(), [v5 alpha], v7 = v6, v5, v7 == 0.0))
  {
    isStatusBarHidden = 1;
  }

  else
  {
    rootViewController = [windowCopy rootViewController];
    if (rootViewController)
    {
      isStatusBarHidden = [UIWindow _prefersStatusBarHiddenInWindow:windowCopy animationProvider:0];
    }

    else
    {
      v10 = __UIStatusBarManagerForWindow(windowCopy);
      isStatusBarHidden = [v10 isStatusBarHidden];
    }
  }

  return isStatusBarHidden;
}

- (void)_notifyWillChangeStatusBarFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ((*(&self->_applicationFlags + 6) & 2) != 0)
  {
    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      if (os_variant_has_internal_diagnostics())
      {
        v13 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "deprecated app delegate method, -application:willChangeStatusBarFrame:, is incompatible with UIScene lifecycle", buf, 2u);
        }
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &_notifyWillChangeStatusBarFrame____s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "deprecated app delegate method, -application:willChangeStatusBarFrame:, is incompatible with UIScene lifecycle", v14, 2u);
        }
      }
    }

    [(UIApplicationDelegate *)self->_delegate application:self willChangeStatusBarFrame:x, y, width, height];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  v11 = [v9 dictionaryWithObject:v10 forKey:@"UIApplicationStatusBarFrameUserInfoKey"];
  [defaultCenter postNotificationName:@"UIApplicationWillChangeStatusBarFrameNotification" object:self userInfo:v11];
}

- (void)_notifyDidChangeStatusBarFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ((*(&self->_applicationFlags + 6) & 4) != 0)
  {
    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      if (os_variant_has_internal_diagnostics())
      {
        v13 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "deprecated app delegate method, -application:didChangeStatusBarFrame:, is incompatible with UIScene lifecycle", buf, 2u);
        }
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &_notifyDidChangeStatusBarFrame____s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "deprecated app delegate method, -application:didChangeStatusBarFrame:, is incompatible with UIScene lifecycle", v14, 2u);
        }
      }
    }

    [(UIApplicationDelegate *)self->_delegate application:self didChangeStatusBarFrame:x, y, width, height];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  v11 = [v9 dictionaryWithObject:v10 forKey:@"UIApplicationStatusBarFrameUserInfoKey"];
  [defaultCenter postNotificationName:@"UIApplicationDidChangeStatusBarFrameNotification" object:self userInfo:v11];
}

- (void)setStatusBarOrientation:(int64_t)orientation fromOrientation:(int64_t)fromOrientation windowScene:(id)scene animationParameters:(id)parameters updateBlock:(id)block
{
  sceneCopy = scene;
  parametersCopy = parameters;
  blockCopy = block;
  if (!fromOrientation)
  {
    fromOrientation = [sceneCopy _interfaceOrientation];
  }

  _defaultSceneIfExists = [(UIApplication *)self _defaultSceneIfExists];
  v15 = [(UIScene *)UIWindowScene _sceneForFBSScene:_defaultSceneIfExists];

  v74 = v15;
  if (v15)
  {
    v16 = v15 == sceneCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v73 = v17;
  v18 = sceneCopy;
  statusBarManager = [v18 statusBarManager];
  if (sceneCopy)
  {
    v76 = v18;
  }

  else if ([UIApp _appAdoptsUISceneLifecycle])
  {
    v76 = 0;
  }

  else
  {
    _defaultUIWindowHostingUISceneOrMainScreenPlaceholderIfExists = [(UIApplication *)self _defaultUIWindowHostingUISceneOrMainScreenPlaceholderIfExists];
    _statusBarManager = [_defaultUIWindowHostingUISceneOrMainScreenPlaceholderIfExists _statusBarManager];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _findUISceneForLegacyInterfaceOrientation = _defaultUIWindowHostingUISceneOrMainScreenPlaceholderIfExists;
    }

    else
    {
      if (qword_1EA992E78 != -1)
      {
        dispatch_once(&qword_1EA992E78, &__block_literal_global_1223_0);
      }

      if ((byte_1EA992DAB & 1) == 0)
      {
        if (qword_1EA992E88 != -1)
        {
          dispatch_once(&qword_1EA992E88, &__block_literal_global_1233);
        }

        if ((byte_1EA992DAC & 1) == 0)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v71 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
            {
              *v82 = 0;
              _os_log_fault_impl(&dword_188A29000, v71, OS_LOG_TYPE_FAULT, "Forced fallback to deprecated retrieval of a windowScene with [UIApplication _findUISceneForLegacyInterfaceOrientation]", v82, 2u);
            }
          }

          else
          {
            v68 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA993018) + 8);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *v81 = 0;
              _os_log_impl(&dword_188A29000, v68, OS_LOG_TYPE_ERROR, "Forced fallback to deprecated retrieval of a windowScene with [UIApplication _findUISceneForLegacyInterfaceOrientation]", v81, 2u);
            }
          }
        }
      }

      _findUISceneForLegacyInterfaceOrientation = [(UIApplication *)self _findUISceneForLegacyInterfaceOrientation];
    }

    v76 = _findUISceneForLegacyInterfaceOrientation;

    statusBarManager = _statusBarManager;
  }

  v22 = 0.0;
  if (([statusBarManager isStatusBarHidden] & 1) == 0)
  {
    [statusBarManager defaultStatusBarHeightInOrientation:orientation];
    v22 = v23;
  }

  if (fromOrientation != orientation)
  {
    if ((*(&self->_applicationFlags + 5) & 0x80) != 0 && [UIApp _appAdoptsUISceneLifecycle])
    {
      if (os_variant_has_internal_diagnostics())
      {
        v69 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
        {
          *v80 = 0;
          _os_log_fault_impl(&dword_188A29000, v69, OS_LOG_TYPE_FAULT, "deprecated app delegate method, -application:willChangeStatusBarOrientation:duration:, is incompatible with UIScene lifecycle", v80, 2u);
        }
      }

      else
      {
        v66 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA993020) + 8);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v66, OS_LOG_TYPE_ERROR, "deprecated app delegate method, -application:willChangeStatusBarOrientation:duration:, is incompatible with UIScene lifecycle", buf, 2u);
        }
      }
    }

    if ((*(&self->_applicationFlags + 5) & 0x80) != 0)
    {
      delegate = self->_delegate;
      [parametersCopy duration];
      [(UIApplicationDelegate *)delegate application:self willChangeStatusBarOrientation:orientation duration:?];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v26 = MEMORY[0x1E695DF20];
    v27 = [MEMORY[0x1E696AD98] numberWithInt:orientation];
    v28 = [v26 dictionaryWithObject:v27 forKey:@"UIApplicationStatusBarOrientationUserInfoKey"];
    [defaultCenter postNotificationName:@"UIApplicationWillChangeStatusBarOrientationNotification" object:self userInfo:v28];

    [UIView _updateOrientationForMotionEngine:orientation];
    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      [statusBarManager statusBarFrameForStatusBarHeight:v22];
    }

    else
    {
      [(UIApplication *)self statusBarFrameForOrientation:orientation];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      [v76 _referenceBounds];
      v29 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace(orientation, v31, v33, v35, v37, v38, v39);
    }

    [(UIApplication *)self _notifyWillChangeStatusBarFrame:v29];
    [(UIApplication *)self _setIdleTimerDisabled:1 forReason:@"UIAppOrientationChange"];
    [(UIApplication *)self _setIdleTimerDisabled:0 forReason:@"UIAppOrientationChange"];
  }

  if (![(UIApplication *)self _isSpringBoard])
  {
    mainScreen = [objc_opt_self() mainScreen];
    if (!((sceneCopy == 0) | v73 & 1))
    {
      screen = [v76 screen];

      mainScreen = screen;
    }

    [mainScreen _setInterfaceOrientation:orientation];
  }

  v42 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
  }

  v43 = [(UIApplication *)self _statusBarWindowIfExistsForScene:v18];
  [v43 setOrientation:orientation animationParameters:parametersCopy];

  [parametersCopy duration];
  [v18 _updateClientSettingsToInterfaceOrientation:orientation withAnimationDuration:?];
  if (fromOrientation != orientation)
  {
    v44 = 0.0;
    if (([statusBarManager isStatusBarHidden] & 1) == 0)
    {
      [statusBarManager defaultStatusBarHeightInOrientation:fromOrientation];
      v44 = v45;
    }

    if (v22 != v44)
    {
      [UIWindow _noteStatusBarHeightChanged:v22 oldHeight:v44];
      if (!parametersCopy || ([parametersCopy duration], v46 == 0.0))
      {
        v49 = 0;
      }

      else
      {
        v47 = MEMORY[0x1E695DF20];
        v48 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        v49 = [v47 dictionaryWithObject:v48 forKey:@"UIApplicationStatusBarHeightChangedDurationKey"];
      }

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"UIApplicationStatusBarHeightChangedNotification" object:self userInfo:v49];
    }

    if (*(&self->_applicationFlags + 6))
    {
      if ([UIApp _appAdoptsUISceneLifecycle])
      {
        if (os_variant_has_internal_diagnostics())
        {
          v70 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
          {
            *v78 = 0;
            _os_log_fault_impl(&dword_188A29000, v70, OS_LOG_TYPE_FAULT, "deprecated app delegate method, -application:didChangeStatusBarOrientation:, is incompatible with UIScene lifecycle", v78, 2u);
          }

          v42 = blockCopy;
        }

        else
        {
          v67 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA993028) + 8);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            *v77 = 0;
            _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_ERROR, "deprecated app delegate method, -application:didChangeStatusBarOrientation:, is incompatible with UIScene lifecycle", v77, 2u);
          }
        }
      }

      [(UIApplicationDelegate *)self->_delegate application:self didChangeStatusBarOrientation:fromOrientation];
    }

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v52 = MEMORY[0x1E695DF20];
    v53 = [MEMORY[0x1E696AD98] numberWithInt:fromOrientation];
    v54 = [v52 dictionaryWithObject:v53 forKey:@"UIApplicationStatusBarOrientationUserInfoKey"];
    [defaultCenter3 postNotificationName:@"UIApplicationDidChangeStatusBarOrientationNotification" object:self userInfo:v54];

    if ([UIApp _appAdoptsUISceneLifecycle])
    {
      [statusBarManager statusBarFrameForStatusBarHeight:fromOrientation inOrientation:v44];
    }

    else
    {
      [(UIApplication *)self statusBarFrameForOrientation:fromOrientation];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      [v76 _referenceBounds];
      v55 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace(fromOrientation, v57, v59, v61, v63, v64, v65);
    }

    [(UIApplication *)self _notifyDidChangeStatusBarFrame:v55];
  }
}

- (void)setStatusBarOrientation:(int64_t)orientation animationParameters:(id)parameters
{
  parametersCopy = parameters;
  _defaultSceneIfExists = [(UIApplication *)self _defaultSceneIfExists];
  v7 = [(UIScene *)UIWindowScene _sceneForFBSScene:_defaultSceneIfExists];
  [(UIApplication *)self setStatusBarOrientation:orientation fromOrientation:0 windowScene:v7 animationParameters:parametersCopy updateBlock:0];
}

- (void)setStatusBarOrientation:(int64_t)orientation animation:(int)animation duration:(double)duration
{
  v7 = 0;
  if (animation && duration > 0.0)
  {
    v9 = *&animation;
    initWithDefaultParameters = [[UIStatusBarOrientationAnimationParameters alloc] initWithDefaultParameters];
    [(UIStatusBarOrientationAnimationParameters *)initWithDefaultParameters setOrientationAnimation:v9];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setDuration:duration];
    v7 = initWithDefaultParameters;
  }

  v11 = v7;
  [(UIApplication *)self setStatusBarOrientation:orientation animationParameters:v7, duration];
}

- (void)_setStatusBarOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (animated)
  {
    initWithDefaultParameters = [[UIStatusBarOrientationAnimationParameters alloc] initWithDefaultParameters];
  }

  else
  {
    initWithDefaultParameters = 0;
  }

  v7 = initWithDefaultParameters;
  [(UIApplication *)self setStatusBarOrientation:orientation animationParameters:initWithDefaultParameters];
}

- (void)setStatusBarOrientation:(UIInterfaceOrientation)interfaceOrientation animated:(BOOL)animated
{
  v4 = animated;
  if (dyld_program_sdk_at_least())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "[UIApplication setStatusBarOrientation:] and [UIApplication setStatusBarOrientation:animated:] API have been deprecated on iOS 8.0 and are no-ops on iOS 13.0", v12, 2u);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA993030) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "[UIApplication setStatusBarOrientation:] and [UIApplication setStatusBarOrientation:animated:] API have been deprecated on iOS 8.0 and are no-ops on iOS 13.0", buf, 2u);
      }
    }

    if (os_variant_has_internal_diagnostics())
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA993038) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Dead deprecated API use ([UIApplication setStatusBarOrientation:]). For apps to fix, not UIKit. Please update as soon as possible. As a stopgap, similar SPI still operates", v10, 2u);
      }
    }
  }

  else
  {
    if (qword_1EA993040 != -1)
    {
      dispatch_once(&qword_1EA993040, &__block_literal_global_1556_0);
    }

    if ((byte_1EA992DC6 & 1) == 0 && [(UIApplication *)self _isAutorotationDisabledForAppWindows])
    {

      [(UIApplication *)self _setStatusBarOrientation:interfaceOrientation animated:v4];
    }
  }
}

void __50__UIApplication_setStatusBarOrientation_animated___block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.google.ios.youtube"];

  if (v1)
  {
    byte_1EA992DC6 = 1;
  }
}

- (int64_t)_statusBarOrientationForWindow:(id)window
{
  windowCopy = window;
  v5 = windowCopy;
  if (windowCopy)
  {
    [windowCopy windowScene];
  }

  else
  {
    [(UIApplication *)self _findUISceneForLegacyInterfaceOrientation];
  }
  v6 = ;
  v7 = v6;
  if (v6 && ([v6 _screen], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "_isEmbeddedScreen"), v8, v9))
  {
    _interfaceOrientation = [v7 _interfaceOrientation];
  }

  else
  {
    _interfaceOrientation = 1;
  }

  return _interfaceOrientation;
}

- (int64_t)_carefulChoiceOrientationForWindow:(id)window
{
  windowCopy = window;
  v5 = windowCopy;
  if (windowCopy && ([windowCopy screen], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_isEmbeddedScreen"), v6, !v7))
  {
    _carefulChoiceOrientation = [(UIApplication *)self _safeInterfaceOrientationForWindowIfExists:v5];
  }

  else
  {
    _carefulChoiceOrientation = [(UIApplication *)self _carefulChoiceOrientation];
  }

  v9 = _carefulChoiceOrientation;

  return v9;
}

- (BOOL)_statusBarOrientationFollowsWindow:(id)window
{
  windowCopy = window;
  if ([windowCopy _windowControlsStatusBarOrientation])
  {
    _windowHostingScene = [windowCopy _windowHostingScene];
    v5 = _windowHostingScene;
    if (_windowHostingScene && ![_windowHostingScene _affectsScreenOrientation])
    {
      v8 = 0;
    }

    else
    {
      _screen = [windowCopy _screen];
      mainScreen = [objc_opt_self() mainScreen];
      v8 = _screen == mainScreen;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)_supportedInterfaceOrientationsForWindow:(id)window
{
  windowCopy = window;
  if (self->_delegate && (*(&self->_applicationFlags + 7) & 2) != 0)
  {
    v5 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v6 = __58__UIApplication__supportedInterfaceOrientationsForWindow___block_invoke;
  }

  else
  {
    v5 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v6 = __58__UIApplication__supportedInterfaceOrientationsForWindow___block_invoke_2;
  }

  v5[2] = v6;
  v5[3] = &unk_1E711D580;
  v5[4] = self;
  v7 = windowCopy;
  v5[5] = v7;
  OrientationMask = _UISafelyGetOrientationMask(v5);

  if (!_UIDeviceNativeUserInterfaceIdiom() && !+[UIDevice _hasHomeButton])
  {
    OrientationMask &= 0x1Au;
  }

  return OrientationMask;
}

- (BOOL)_viewServiceIgnoresSceneForLegacyInterfaceOrientation:(id)orientation
{
  if (orientation && (*(orientation + 209) & 0x40) != 0)
  {
    if (qword_1EA993238 != -1)
    {
      dispatch_once(&qword_1EA993238, &__block_literal_global_3817);
    }

    v3 = byte_1EA992DE1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (int64_t)_safeInterfaceOrientationForWindowIfExists:(id)exists expectNonNilWindow:(BOOL)window
{
  windowCopy = window;
  windowScene = [exists windowScene];
  if (windowScene)
  {
    goto LABEL_7;
  }

  if (!windowCopy || (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_RaiseWithNilSceneForInterfaceOrientation, @"RaiseWithNilSceneForInterfaceOrientation", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1EA95E61C)
  {
    windowScene = [(UIApplication *)self _findUISceneForLegacyInterfaceOrientation];
    if (!windowScene)
    {
      return 1;
    }

LABEL_7:
    v7 = windowScene;
    _interfaceOrientation = [windowScene _interfaceOrientation];

    return _interfaceOrientation;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Asking for the interface orientation without a window scene or window."];
  return 1;
}

- (int64_t)_defaultSceneInterfaceOrientationReturningUnknownForNilScene:(BOOL)scene
{
  sceneCopy = scene;
  if ([(UIApplication *)self _appAdoptsUISceneLifecycle])
  {
    return !sceneCopy;
  }

  _defaultUISceneOrMainScreenPlaceholderIfExists = [UIApp _defaultUISceneOrMainScreenPlaceholderIfExists];
  v5 = [_defaultUISceneOrMainScreenPlaceholderIfExists _hostsWindows] ? _defaultUISceneOrMainScreenPlaceholderIfExists : 0;
  v6 = v5;

  if (!v6)
  {
    return !sceneCopy;
  }

  _interfaceOrientation = [v6 _interfaceOrientation];

  return _interfaceOrientation;
}

- (int64_t)_sceneInterfaceOrientationFromWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:6857 description:{@"Invalid parameter not satisfying: %@", @"window"}];
  }

  _windowHostingScene = [windowCopy _windowHostingScene];
  v7 = _windowHostingScene;
  if (_windowHostingScene)
  {
    _interfaceOrientation = [_windowHostingScene _interfaceOrientation];
  }

  else
  {
    _interfaceOrientation = [(UIApplication *)self _defaultSceneInterfaceOrientationReturningUnknownForNilScene:1];
  }

  v9 = _interfaceOrientation;

  return v9;
}

- (int64_t)_fallbackInterfaceOrientationForSupportedOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation currentOrientation:(int64_t)currentOrientation
{
  v9 = +[UIDevice currentDevice];
  orientation = [v9 orientation];

  if ((orientation - 1) >= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = orientation;
  }

  if (!currentOrientation)
  {
    currentOrientation = [(UIApplication *)self _defaultSceneInterfaceOrientationReturningUnknownForNilScene:0];
  }

  if (_viewServiceFallbackOrientationMapResolver)
  {
    v12 = _viewServiceFallbackOrientationMapResolver;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E698E648]) initWithTargetOrientation:v11 currentOrientation:currentOrientation];
  }

  v13 = v12;
  v14 = [v12 interfaceOrientationForSupportedOrientations:orientations preferredOrientation:orientation];

  return v14;
}

- (void)_setSystemNavigationAction:(id)action
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &_setSystemNavigationAction____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [(UISystemNavigationAction *)actionCopy titleForDestination:0];
      v13 = [(UISystemNavigationAction *)actionCopy URLForDestination:1];
      v14 = 138412802;
      v15 = actionCopy;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Setting system navigation action: %@. Primary title: “%@”, secondary URL: “%@”", &v14, 0x20u);
    }
  }

  systemNavigationAction = self->_systemNavigationAction;
  if (systemNavigationAction != actionCopy)
  {
    if (systemNavigationAction)
    {
      [(UISystemNavigationAction *)systemNavigationAction invalidate];
      v8 = self->_systemNavigationAction;
      self->_systemNavigationAction = 0;
    }

    objc_storeStrong(&self->_systemNavigationAction, action);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIApplicationSystemNavigationActionChangedNotification" object:self];
  }
}

- (void)setDoubleHeightStatusText:(id)text
{
  textCopy = text;
  NSLog(&cfstr_UiapplicationS_0.isa);
  v3 = _UIMainBundleIdentifier();
  if ([v3 isEqualToString:@"com.apple.VoiceMemos"])
  {
    v4 = 206;
LABEL_5:
    [UIStatusBarServer postDoubleHeightStatusString:textCopy forStyle:v4];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"com.apple.nike"])
  {
    v4 = 201;
    goto LABEL_5;
  }

  NSLog(&cfstr_BundleIdNotRec.isa);
LABEL_7:
}

- (BOOL)isRunningInTaskSwitcher
{
  v2 = +[_UISceneLifecycleMultiplexer sharedInstance];
  runningInTaskSwitcher = [v2 runningInTaskSwitcher];

  return runningInTaskSwitcher;
}

- (void)suspendReturningToLastApp:(BOOL)app
{
  _mainScene = [(UIApplication *)self _mainScene];
  if (_mainScene)
  {
    v6 = _mainScene;
    v4 = objc_alloc_init(UIDismissSceneAction);
    v5 = [MEMORY[0x1E695DFD8] setWithObject:v4];
    [v6 sendActions:v5];

    _mainScene = v6;
  }
}

+ (BOOL)isRunningEventPump
{
  v2 = isRunningEventPump__isRunningEventPump;
  if (isRunningEventPump__isRunningEventPump == 255)
  {
    isRunningEventPump__isRunningEventPump = 0;
    sp = 0;
    if (bootstrap_look_up(*MEMORY[0x1E69E99F8], "com.apple.eventpump", &sp))
    {
      v3 = 1;
    }

    else
    {
      v3 = sp - 1 >= 0xFFFFFFFE;
    }

    if (v3)
    {
      v2 = isRunningEventPump__isRunningEventPump;
    }

    else
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], sp);
      v2 = 1;
      isRunningEventPump__isRunningEventPump = 1;
    }
  }

  return v2 != 0;
}

- (void)_scrollsToTopInitiatorView:(id)view touchesEnded:(id)ended withEvent:(id)event
{
  viewCopy = view;
  endedCopy = ended;
  eventCopy = event;
  if (self->_statusBar == viewCopy && (*(&self->_applicationFlags + 10) & 2) != 0)
  {
    [(UIApplicationDelegate *)self->_delegate _application:self statusBarTouchesEnded:eventCopy];
  }
}

- (void)setWantsVolumeButtonEvents:(BOOL)events
{
  eventsCopy = events;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getSBSUIAppSetWantsVolumeButtonEventsSymbolLoc_ptr;
  v11 = getSBSUIAppSetWantsVolumeButtonEventsSymbolLoc_ptr;
  if (!getSBSUIAppSetWantsVolumeButtonEventsSymbolLoc_ptr)
  {
    v5 = SpringBoardServicesLibrary_1();
    v9[3] = dlsym(v5, "SBSUIAppSetWantsVolumeButtonEvents");
    getSBSUIAppSetWantsVolumeButtonEventsSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(eventsCopy);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void softlink_SBSUIAppSetWantsVolumeButtonEvents(BOOL)"];
    [currentHandler handleFailureInFunction:v7 file:@"UIApplication.m" lineNumber:496 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)setWantsLockEvents:(BOOL)events
{
  eventsCopy = events;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getSBSUIAppSetWantsLockButtonEventsSymbolLoc_ptr;
  v11 = getSBSUIAppSetWantsLockButtonEventsSymbolLoc_ptr;
  if (!getSBSUIAppSetWantsLockButtonEventsSymbolLoc_ptr)
  {
    v5 = SpringBoardServicesLibrary_1();
    v9[3] = dlsym(v5, "SBSUIAppSetWantsLockButtonEvents");
    getSBSUIAppSetWantsLockButtonEventsSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(eventsCopy);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void softlink_SBSUIAppSetWantsLockButtonEvents(BOOL)"];
    [currentHandler handleFailureInFunction:v7 file:@"UIApplication.m" lineNumber:495 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_postSimpleRemoteNotificationForAction:(int64_t)action andContext:(int64_t)context trackID:(id)d
{
  v8 = MEMORY[0x1E695DF20];
  v9 = MEMORY[0x1E696AD98];
  dCopy = d;
  v11 = [v9 numberWithInteger:action];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:context];
  v14 = [v8 dictionaryWithObjectsAndKeys:{v11, @"UIApplicationSimpleRemoteActionType", v12, @"UIApplicationSimpleRemoteActionContext", dCopy, @"UIApplicationSimpleRemoteActionTrackID", 0}];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIApplicationSimpleRemoteActionNotification" object:self userInfo:v14];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (_UIPressesContainsPressType(beganCopy, 102))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = defaultCenter;
    v10 = @"_UIApplicationVolumeUpButtonDownNotification";
LABEL_7:
    [defaultCenter postNotificationName:v10 object:0];

    goto LABEL_8;
  }

  if (_UIPressesContainsPressType(beganCopy, 103))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = defaultCenter;
    v10 = @"_UIApplicationVolumeDownButtonDownNotification";
    goto LABEL_7;
  }

  if (_UIPressesContainsPressType(beganCopy, 601))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = defaultCenter;
    v10 = @"_UIApplicationCameraShutterButtonDownNotification";
    goto LABEL_7;
  }

  if ((_UIPressesContainsPressType(beganCopy, 7) & 1) == 0 && (_UIPressesContainsPressType(beganCopy, 6) & 1) == 0 && (_UIPressesContainsPressType(beganCopy, 5) & 1) == 0)
  {
    if (_UIPressesContainsDirectionalPress(beganCopy))
    {
      [(UIApplication *)self _sendMoveEventWithPressesEvent:eventCopy];
    }

    else if (_UIPressesContainsExternalKeyboardSource(beganCopy))
    {
      [(UIApplication *)self _handleKeyboardPressEvent:eventCopy];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = UIApplication;
      [(UIResponder *)&v11 pressesBegan:beganCopy withEvent:eventCopy];
    }
  }

LABEL_8:
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (_UIPressesContainsPressType(endedCopy, 102))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = defaultCenter;
    v10 = @"_UIApplicationVolumeUpButtonUpNotification";
LABEL_7:
    [defaultCenter postNotificationName:v10 object:0];
LABEL_8:

    goto LABEL_9;
  }

  if (_UIPressesContainsPressType(endedCopy, 103))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = defaultCenter;
    v10 = @"_UIApplicationVolumeDownButtonUpNotification";
    goto LABEL_7;
  }

  if (_UIPressesContainsPressType(endedCopy, 601))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = defaultCenter;
    v10 = @"_UIApplicationCameraShutterButtonUpNotification";
    goto LABEL_7;
  }

  if (_UIPressesContainsPressType(endedCopy, 7))
  {
    v11 = UIUnhandledBackButtonAction;
LABEL_12:
    v9 = [[v11 alloc] initWithInfo:0 responder:0];
    v12 = _FBSSceneForPressesEvent(endedCopy, eventCopy);
    v13 = [MEMORY[0x1E695DFD8] setWithObject:v9];
    [v12 sendActions:v13];

    goto LABEL_8;
  }

  if (_UIPressesContainsPressType(endedCopy, 6))
  {
    goto LABEL_9;
  }

  if (_UIPressesContainsPressType(endedCopy, 5))
  {
    *(&self->_applicationFlags + 1) |= 0x40000000000uLL;
    v11 = UIUnhandledMenuButtonAction;
    goto LABEL_12;
  }

  if (_UIPressesContainsDirectionalPress(endedCopy))
  {
    v14.receiver = self;
    v14.super_class = UIApplication;
    [(UIResponder *)&v14 pressesEnded:endedCopy withEvent:eventCopy];
  }

  else if (_UIPressesContainsExternalKeyboardSource(endedCopy))
  {
    [(UIApplication *)self _handleKeyboardPressEvent:eventCopy];
  }

LABEL_9:
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if ((_UIPressesContainsPressType(cancelledCopy, 201) & 1) == 0 && (_UIPressesContainsPressType(cancelledCopy, 102) & 1) == 0 && (_UIPressesContainsPressType(cancelledCopy, 103) & 1) == 0 && (_UIPressesContainsPressType(cancelledCopy, 601) & 1) == 0 && (_UIPressesContainsPressType(cancelledCopy, 7) & 1) == 0 && (_UIPressesContainsPressType(cancelledCopy, 6) & 1) == 0 && (_UIPressesContainsPressType(cancelledCopy, 5) & 1) == 0 && (_UIPressesContainsDirectionalPress(cancelledCopy) & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = UIApplication;
    [(UIResponder *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)_headsetButtonUp:(__IOHIDEvent *)up
{
  v4 = *(&self->_applicationFlags + 1);
  *(&self->_applicationFlags + 1) = v4 & 0xFFFFFFFFFFFFFFEFLL;
  if ((v4 & 0x60) == 0)
  {
    v5 = (v4 + 1) & 0xFLL;
    *(&self->_applicationFlags + 1) = v4 & 0xFFFFFFFFFFFFFF80 | v5;
    if (v5 == 2)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleHeadsetButtonClick object:0];
      v6 = sel__handleHeadsetButtonDoubleClick;
    }

    else
    {
      if (v5 != 1)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleHeadsetButtonClick object:0];
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__handleHeadsetButtonDoubleClick object:0];

        [(UIApplication *)self _handleHeadsetButtonTripleClick];
        return;
      }

      v6 = sel__handleHeadsetButtonClick;
    }

    [(UIApplication *)self performSelector:v6 withObject:0 afterDelay:0.3];
    return;
  }

  if ((v4 & 0x20) != 0)
  {
    *(&self->_applicationFlags + 1) = v4 & 0xFFFFFFFFFFFFFFCFLL;
    v7 = 9;
  }

  else
  {
    if ((v4 & 0x40) == 0)
    {
      return;
    }

    *(&self->_applicationFlags + 1) = v4 & 0xFFFFFFFFFFFFFF8FLL;
    v7 = 11;
  }

  [(UIApplication *)self _sendHeadsetOriginatedMediaRemoteCommand:v7];
}

- (void)_handleHeadsetButtonClick
{
  p_applicationFlags = &self->_applicationFlags;
  if ((*(&self->_applicationFlags + 1) & 0xFLL) == 1)
  {
    *(&self->_applicationFlags + 1) &= 0xFFFFFFFFFFFFFFF0;
    if (![(UIApplication *)self _shouldIgnoreHeadsetClicks])
    {
      if ((*(p_applicationFlags + 8) & 0x10) != 0)
      {
        [(UIApplication *)self _sendHeadsetOriginatedMediaRemoteCommand:8];
        *(p_applicationFlags + 1) |= 0x20uLL;
      }

      else
      {

        [(UIApplication *)self _sendHeadsetOriginatedMediaRemoteCommand:2];
      }
    }
  }
}

- (void)_handleHeadsetButtonDoubleClick
{
  p_applicationFlags = &self->_applicationFlags;
  if ((*(&self->_applicationFlags + 1) & 0xFLL) == 2)
  {
    *(&self->_applicationFlags + 1) &= 0xFFFFFFFFFFFFFFF0;
    if (![(UIApplication *)self _shouldIgnoreHeadsetClicks])
    {
      v4 = *(p_applicationFlags + 1);
      if ((v4 & 0x10) != 0)
      {
        if ((v4 & 0x40) == 0)
        {
          [(UIApplication *)self _sendHeadsetOriginatedMediaRemoteCommand:10];
          *(p_applicationFlags + 1) |= 0x40uLL;
        }
      }

      else
      {

        [(UIApplication *)self _sendHeadsetOriginatedMediaRemoteCommand:4];
      }
    }
  }
}

- (void)_handleHeadsetButtonTripleClick
{
  if ((*(&self->_applicationFlags + 1) & 0xFuLL) >= 3)
  {
    *(&self->_applicationFlags + 1) &= 0xFFFFFFFFFFFFFFF0;
    if (![(UIApplication *)self _shouldIgnoreHeadsetClicks])
    {

      [(UIApplication *)self _sendHeadsetOriginatedMediaRemoteCommand:5];
    }
  }
}

- (void)_terminateWithStatus:(int)status
{
  _applicationTerminating = 1;
  [(UIApplication *)self reportApplicationSuspended];
  kdebug_trace();
  [(UIApplication *)self applicationWillTerminate];
  [UIApp applicationState];
  [(UIApplicationDelegate *)self->_delegate methodForSelector:sel_applicationWillTerminate_];
  entr_act_modify();
  if ((*(&self->_applicationFlags + 5) & 0x20) != 0)
  {
    [(UIApplicationDelegate *)self->_delegate applicationWillTerminate:self];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIApplicationWillTerminateNotification" object:self];

  _logApplicationLifecycleMemoryMetricApplicationWillBeSuspended();
  [UIApp applicationState];
  entr_act_end();
  kdebug_trace();
  if ((*&self->_applicationFlags & 0x8000000000000000) == 0)
  {
    CFPreferencesSynchronize(*MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults synchronize];
  }

  _exit(status);
}

- (void)_handleTaskCompletionAndTerminate:(id)terminate
{
  if ([terminate waitForBackgroundTaskCompletion])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__UIApplication__handleTaskCompletionAndTerminate___block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    _UIApplicationCallWhenBackgroundTaskCountReachesZero(v4);
  }

  else
  {

    [(UIApplication *)self _terminateWithStatus:0];
  }
}

- (void)_pipStateDidChange
{
  if ([(UIApplication *)self isSuspended])
  {

    [(UIApplication *)self _updateAppPriorityForSuspendedState];
  }
}

- (void)updateSuspendedSettings:(id)settings
{
  settingsCopy = settings;
  [(UIApplication *)self defaultImageSnapshotExpiration];
  v6 = v5;
  _mainScene = [(UIApplication *)self _mainScene];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__UIApplication_updateSuspendedSettings___block_invoke;
  v9[3] = &unk_1E711D608;
  v10 = settingsCopy;
  v11 = v6;
  v8 = settingsCopy;
  [_mainScene updateUIClientSettingsWithBlock:v9];
}

void __41__UIApplication_updateSuspendedSettings___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) objectForKey:@"UISuspendedStatusBarStyleKey"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 integerValue];
      [v8 setStatusBarStyle:v4];
      [v8 setDefaultStatusBarStyle:v4];
    }
  }

  v5 = [*(a1 + 32) objectForKey:@"UISuspendedStatusBarHiddenKey"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 BOOLValue];
      [v8 setStatusBarHidden:v6];
      [v8 setDefaultStatusBarHidden:v6];
    }
  }

  v7 = [*(a1 + 32) objectForKey:@"UISuspendedDefaultPNGKey"];
  [v8 setDefaultPNGName:v7];
  [v8 setDefaultPNGExpirationTime:*(a1 + 40)];
}

- (BOOL)_canOpenURL:(id)l publicURLsOnly:(BOOL)only
{
  onlyCopy = only;
  lCopy = l;
  if (!lCopy)
  {
    return 0;
  }

  v6 = lCopy;
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v8 = [defaultWorkspace URLOverrideForURL:v6];

  scheme = [v8 scheme];
  v10 = scheme;
  if (onlyCopy && ([scheme isEqualToString:@"app-prefs"] & 1) != 0)
  {
    v11 = 0;
  }

  else if ([v10 isEqualToString:@"app-settings"])
  {
    v11 = 1;
  }

  else
  {
    v16 = 0;
    v11 = [defaultWorkspace isApplicationAvailableToOpenURL:v8 includePrivateURLSchemes:!onlyCopy error:&v16];
    v12 = v16;
    v13 = v12;
    if ((v11 & 1) == 0)
    {
      localizedDescription = [v12 localizedDescription];
      NSLog(&cfstr_CanopenurlFail.isa, v8, localizedDescription);
    }
  }

  return v11;
}

- (BOOL)_shouldAttemptOpenURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:7845 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v7 = [defaultWorkspace URLOverrideForURL:lCopy];

  scheme = [v7 scheme];
  LOBYTE(defaultWorkspace) = [scheme isEqualToString:@"app-prefs"];

  return defaultWorkspace ^ 1;
}

- (id)_urlWithSettingsPrivateURLSchemeIfNeeded:(id)needed
{
  neededCopy = needed;
  scheme = [neededCopy scheme];
  v5 = [scheme isEqualToString:@"app-settings"];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = _UIMainBundleIdentifier();
    v8 = [v6 stringWithFormat:@"%@:%@", @"app-prefs", v7];

    resourceSpecifier = [neededCopy resourceSpecifier];
    v10 = [resourceSpecifier isEqualToString:@"notifications"];

    if (v10)
    {
      v11 = @"&target=com.apple.settings.notifications";
    }

    else
    {
      resourceSpecifier2 = [neededCopy resourceSpecifier];
      v13 = [resourceSpecifier2 isEqualToString:@"default-applications"];

      if (!v13)
      {
LABEL_7:
        v15 = [MEMORY[0x1E695DFF8] URLWithString:v8];

        neededCopy = v15;
        goto LABEL_8;
      }

      v11 = @"&target=com.apple.settings.default-applications";
    }

    v14 = [v8 stringByAppendingString:v11];

    v8 = v14;
    goto LABEL_7;
  }

LABEL_8:

  return neededCopy;
}

- (BOOL)_openURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (_UIIsPrivateMainBundle())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v16 = 136315394;
        v17 = "BUG IN CLIENT OF UIKIT";
        v18 = 2080;
        v19 = "The caller of UIApplication.openURL(_:) needs to migrate to the non-deprecated UIApplication.open(_:options:completionHandler:)";
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "%s: %s. Next release this will be a no-op. You have been warned.", &v16, 0x16u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA993050) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "BUG IN CLIENT OF UIKIT";
        v18 = 2080;
        v19 = "The caller of UIApplication.openURL(_:) needs to migrate to the non-deprecated UIApplication.open(_:options:completionHandler:)";
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "%s: %s. Next release this will be a no-op. You have been warned.", &v16, 0x16u);
      }
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    v6 = *(__UILogGetCategoryCachedImpl("Application", &qword_1EA993048) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "BUG IN CLIENT OF UIKIT";
      v18 = 2080;
      v19 = "The caller of UIApplication.openURL(_:) needs to migrate to the non-deprecated UIApplication.open(_:options:completionHandler:)";
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s: %s. Force returning false (NO).", &v16, 0x16u);
    }

    goto LABEL_14;
  }

  if (!lCopy || ![(UIApplication *)self _shouldAttemptOpenURL:lCopy])
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v8 = objc_opt_new();
  v9 = [UIPasteboard _existingCachedPasteboardWithName:@"com.apple.UIKit.pboard.general"];
  pasteSharingToken = [v9 pasteSharingToken];
  [v8 setPasteSharingToken:pasteSharingToken];

  v11 = [(UIApplication *)self _urlWithSettingsPrivateURLSchemeIfNeeded:lCopy];

  [v8 setUseOneTapOpenBehavior:1];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v13 = [defaultWorkspace openURL:v11 configuration:v8 error:0];
  v14 = v13 != 0;

  lCopy = v11;
LABEL_15:

  return v14;
}

- (void)_openURL:(id)l options:(id)options completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = [(UIApplication *)self _removePrivateOptionsFromOptions:options];
  v10 = +[_UIApplicationConfigurationLoader sharedLoader];
  applicationInitializationContext = [v10 applicationInitializationContext];
  defaultSceneToken = [applicationInitializationContext defaultSceneToken];

  if (defaultSceneToken)
  {
    stringRepresentation = [defaultSceneToken stringRepresentation];
    v14 = _UISVisibilityEnvironmentForSceneIdentityTokenString();

    v15 = [(UIApplication *)self _currentOpenApplicationEndpointForEnvironment:v14];
  }

  else
  {
    v15 = 0;
  }

  [(UIApplication *)self _openURL:lCopy options:v9 openApplicationEndpoint:v15 completionHandler:handlerCopy];
}

- (id)_removePrivateOptionsFromOptions:(id)options
{
  v7[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if ([optionsCopy count])
  {
    v7[0] = @"UIApplicationOpenURLOptionIgnoreUniversalLinks";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v5 = [optionsCopy mutableCopy];
    [v5 removeObjectsForKeys:v4];
  }

  else
  {
    v5 = optionsCopy;
  }

  return v5;
}

- (void)_openURL:(id)l options:(id)options openApplicationEndpoint:(id)endpoint completionHandler:(id)handler
{
  lCopy = l;
  optionsCopy = options;
  endpointCopy = endpoint;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__UIApplication__openURL_options_openApplicationEndpoint_completionHandler___block_invoke;
  aBlock[3] = &unk_1E70F3608;
  v14 = handlerCopy;
  v39 = v14;
  v15 = _Block_copy(aBlock);
  if (lCopy && [(UIApplication *)self _shouldAttemptOpenURL:lCopy])
  {
    v16 = [(UIApplication *)self _urlWithSettingsPrivateURLSchemeIfNeeded:lCopy];
    v17 = [optionsCopy valueForKey:@"UIApplicationOpenURLOptionUniversalLinksOnly"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v17 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v18 = [optionsCopy valueForKey:@"UIApplicationOpenURLOptionIgnoreUniversalLinks"];
    objc_opt_class();
    v32 = v17;
    v33 = v16;
    v31 = v18;
    if (objc_opt_isKindOfClass())
    {
      bOOLValue2 = [v18 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    v20 = objc_opt_new();
    [v20 setUseOneTapOpenBehavior:1];
    [v20 setTargetConnectionEndpoint:endpointCopy];
    v21 = [UIPasteboard _existingCachedPasteboardWithName:@"com.apple.UIKit.pboard.general"];
    pasteSharingToken = [v21 pasteSharingToken];
    [v20 setPasteSharingToken:pasteSharingToken];

    v23 = [optionsCopy valueForKey:@"UIApplicationOpenExternalURLOptionsEventAttributionKey"];
    if (v23)
    {
      v24 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        toUISClickAttribution = [v23 toUISClickAttribution];
        [v20 setClickAttribution:toUISClickAttribution];
      }
    }

    if (bOOLValue2)
    {
      [v20 setAllowURLOverrides:0];
    }

    if (bOOLValue)
    {
      v27 = MEMORY[0x1E69635C0];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __76__UIApplication__openURL_options_openApplicationEndpoint_completionHandler___block_invoke_3;
      v36[3] = &unk_1E711D630;
      v28 = &v37;
      v37 = v15;
      [v27 openWithURL:v33 configuration:v20 completionHandler:v36];
    }

    else
    {
      defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __76__UIApplication__openURL_options_openApplicationEndpoint_completionHandler___block_invoke_4;
      v34[3] = &unk_1E711D658;
      v28 = &v35;
      v35 = v15;
      [defaultWorkspace openURL:v33 configuration:v20 completionHandler:v34];
    }
  }

  else
  {
    (*(v15 + 2))(v15, 0);
  }
}

void __76__UIApplication__openURL_options_openApplicationEndpoint_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __76__UIApplication__openURL_options_openApplicationEndpoint_completionHandler___block_invoke_2;
    v4[3] = &unk_1E7101B70;
    v5 = v2;
    v6 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

- (BOOL)canOpenURL:(NSURL *)url
{
  v4 = url;
  if (qword_1EA993058 != -1)
  {
    dispatch_once(&qword_1EA993058, &__block_literal_global_1680);
  }

  if (byte_1EA992DC7 == 1)
  {
    NSLog(&cfstr_SCalledForUrl.isa, "[UIApplication canOpenURL:]", v4);
  }

  v5 = [(UIApplication *)self _canOpenURL:v4 publicURLsOnly:1];

  return v5;
}

void __28__UIApplication_canOpenURL___block_invoke()
{
  v1 = _UIKitPreferencesOnce();
  v0 = [v1 objectForKey:@"UIShouldLogCanOpenURL"];
  byte_1EA992DC7 = [v0 BOOLValue];
}

- (void)_applicationOpenURL:(id)l payload:(id)payload
{
  payloadCopy = payload;
  lCopy = l;
  v8 = [(UISOpenURLAction *)[UIOpenURLAction alloc] initWithURL:lCopy];

  [(UIApplication *)self _applicationOpenURLAction:v8 payload:payloadCopy origin:0];
}

- (id)_currentOpenApplicationEndpointForEnvironment:(id)environment
{
  v3 = [(BSServiceConnectionEndpointMonitor *)self->_endpointMonitor endpointsForEnvironment:environment];
  anyObject = [v3 anyObject];

  return anyObject;
}

- (void)_applicationOpenURLAction:(id)action payload:(id)payload origin:(id)origin
{
  actionCopy = action;
  payloadCopy = payload;
  originCopy = origin;
  v11 = [actionCopy url];
  scheme = [v11 scheme];
  v13 = scheme;
  if (scheme && ![scheme compare:@"doubletap" options:1])
  {
    query = [v11 query];
    queryKeysAndValues = [query queryKeysAndValues];
    [(UIApplication *)self applicationOpenToShortCut:queryKeysAndValues];

    goto LABEL_14;
  }

  v14 = *MEMORY[0x1E6963568];
  v15 = [payloadCopy objectForKey:*MEMORY[0x1E6963568]];

  v16 = [payloadCopy objectForKey:*MEMORY[0x1E69635A0]];
  bOOLValue = [v16 BOOLValue];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__UIApplication__applicationOpenURLAction_payload_origin___block_invoke;
  aBlock[3] = &unk_1E711D6A8;
  aBlock[4] = self;
  v45 = actionCopy;
  v46 = originCopy;
  v18 = payloadCopy;
  v47 = v18;
  v48 = a2;
  v19 = _Block_copy(aBlock);
  v20 = v19;
  if (!v15)
  {
    (*(v19 + 2))(v19, v11);
LABEL_12:

LABEL_14:
    return;
  }

  v21 = [v18 objectForKey:v14];
  if (!bOOLValue)
  {
    [UIApp _defaultSceneIfExists];
    v31 = v30 = v21;
    v32 = [UIScene _sceneForFBSScene:v31];

    v29 = v30;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __58__UIApplication__applicationOpenURLAction_payload_origin___block_invoke_4;
    v40[3] = &unk_1E711D6D0;
    v40[4] = self;
    v41 = v20;
    _UIApplicationResolveURLUsingModalProgressControllerForNonOpenInPlaceBookmarkableString(v30, v32, v40);

    goto LABEL_11;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __58__UIApplication__applicationOpenURLAction_payload_origin___block_invoke_2;
  v42[3] = &unk_1E711D6D0;
  v42[4] = self;
  v43 = v20;
  v38 = v21;
  v22 = v21;
  v23 = v11;
  v24 = v42;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = ___UIApplicationResolveURLForOpenInPlaceBookmarkableString_block_invoke;
  v49[3] = &unk_1E711D680;
  v25 = v22;
  v50 = v25;
  v37 = v23;
  v51 = v37;
  v26 = v24;
  v52 = v26;
  v27 = v49;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v28 = off_1EA993250;
  v57 = off_1EA993250;
  if (!off_1EA993250)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __getFPDocumentURLFromBookmarkableStringSymbolLoc_block_invoke_0;
    v53[3] = &unk_1E70F2F20;
    v53[4] = &v54;
    __getFPDocumentURLFromBookmarkableStringSymbolLoc_block_invoke_0(v53);
    v28 = v55[3];
  }

  _Block_object_dispose(&v54, 8);
  if (v28)
  {
    v28(v25, v27);

    v29 = v38;
LABEL_11:

    goto LABEL_12;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _FPDocumentURLFromBookmarkableString(CFStringRef, void (^__strong)(CFURLRef, CFErrorRef))"}];
  [currentHandler handleFailureInFunction:v36 file:@"UIApplication.m" lineNumber:8042 description:{@"%s", dlerror(), v37}];

  __break(1u);
}

void __58__UIApplication__applicationOpenURLAction_payload_origin___block_invoke(uint64_t a1, void *a2)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v45 = a2;
  if ((*(*(a1 + 32) + 181) & 8) != 0)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 40) localOpenURLOptions], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [*(a1 + 40) localOpenURLOptions];
      v10 = *(a1 + 48);
      v11 = v9;
      v12 = v10;
      v13 = [MEMORY[0x1E695DF90] dictionary];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "openInPlace")}];
      [v13 setValue:v14 forKey:@"UIApplicationOpenURLOptionsOpenInPlaceKey"];

      v15 = [v11 annotation];

      if (v15)
      {
        v46 = @"UIApplicationLaunchOptionsAnnotationKey";
        v16 = [v11 annotation];
        v47[0] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
        v18 = _annotationValueToReportToDelegateForPayload(v17);

        if (v18)
        {
          [v13 setValue:v18 forKey:@"UIApplicationOpenURLOptionsAnnotationKey"];
        }
      }

      v19 = [v11 sourceApplication];

      if (v19)
      {
        v20 = [v11 sourceApplication];
        [v13 setValue:v20 forKey:@"UIApplicationOpenURLOptionsSourceApplicationKey"];
      }

      v21 = [v11 eventAttribution];

      if (v21)
      {
        v22 = [v11 eventAttribution];
        [v13 setValue:v22 forKey:@"UIApplicationOpenURLOptionsEventAttributionKey"];
      }

      if (v12)
      {
        [v13 setValue:v12 forKey:@"_UIApplicationOpenURLOptionsSourceProcessHandleKey"];
      }
    }

    else
    {
      v23 = *(a1 + 56);
      v11 = *(a1 + 48);
      v24 = MEMORY[0x1E695DF90];
      v25 = v23;
      v26 = [v24 dictionary];
      v27 = [v25 objectForKey:*MEMORY[0x1E69635A0]];
      v28 = [v27 BOOLValue];

      v29 = [v25 objectForKey:@"UIApplicationLaunchOptionsSourceApplicationKey"];
      [v26 setValue:v29 forKey:@"UIApplicationOpenURLOptionsSourceApplicationKey"];

      v30 = _annotationValueToReportToDelegateForPayload(v25);
      [v26 setValue:v30 forKey:@"UIApplicationOpenURLOptionsAnnotationKey"];

      v31 = [MEMORY[0x1E696AD98] numberWithBool:v28];
      [v26 setValue:v31 forKey:@"UIApplicationOpenURLOptionsOpenInPlaceKey"];

      v32 = [UIEventAttribution alloc];
      v33 = [v25 objectForKey:@"UIApplicationLaunchOptionsEventAttributionKey"];

      v34 = [(UIEventAttribution *)v32 initWithUISClickAttribution:v33];
      [v26 setValue:v34 forKey:@"UIApplicationOpenURLOptionsEventAttributionKey"];

      if (v11)
      {
        [v26 setValue:v11 forKey:@"_UIApplicationOpenURLOptionsSourceProcessHandleKey"];
      }

      v13 = [v26 copy];
    }

    v35 = [*(*(a1 + 32) + 16) application:*(a1 + 32) openURL:v45 options:v13];
    if (v35)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 infoDictionary];
    v5 = [v4 objectForKey:@"LSSupportsOpeningDocumentsInPlace"];

    if ([v5 BOOLValue])
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = *(a1 + 64);
      v43 = *(a1 + 32);
      v44 = NSStringFromSelector(sel_application_openURL_options_);
      [v41 handleFailureInMethod:v42 object:v43 file:@"UIApplication.m" lineNumber:8209 description:{@"Application has %@ key, but doesn't implement %@ on delegate %@", @"LSSupportsOpeningDocumentsInPlace", v44, *(*(a1 + 32) + 16)}];
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 176);
    if ((v7 & 0x40000000000) != 0)
    {
      v36 = *(v6 + 16);
      v37 = [*(a1 + 56) objectForKey:@"UIApplicationLaunchOptionsSourceApplicationKey"];
      v38 = _annotationValueToReportToDelegateForPayload(*(a1 + 56));
      v39 = [v36 application:v6 openURL:v45 sourceApplication:v37 annotation:v38];

      if (v39)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if ((v7 & 0x20000000000) == 0)
      {

LABEL_24:
        [*(a1 + 32) applicationOpenURL:v45];
        goto LABEL_25;
      }

      v40 = [*(v6 + 16) application:*(a1 + 32) handleOpenURL:v45];

      if (v40)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
}

void __58__UIApplication__applicationOpenURLAction_payload_origin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UIApplication__applicationOpenURLAction_payload_origin___block_invoke_3;
  block[3] = &unk_1E70FCE28;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __58__UIApplication__applicationOpenURLAction_payload_origin___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setHandlingURL:1 url:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _setHandlingURL:0 url:v3];
}

void __58__UIApplication__applicationOpenURLAction_payload_origin___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _setHandlingURL:1 url:v4];
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _setHandlingURL:0 url:v4];
}

- (void)_applicationHandleWatchKitRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if ((*(&self->_applicationFlags + 7) & 8) != 0)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    delegate = self->_delegate;
    request = [requestCopy request];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__UIApplication__applicationHandleWatchKitRequest___block_invoke;
    v8[3] = &unk_1E711D6F8;
    v10 = v11;
    v9 = v5;
    [(UIApplicationDelegate *)delegate application:self handleWatchKitExtensionRequest:request reply:v8];

    _Block_object_dispose(v11, 8);
  }
}

void __51__UIApplication__applicationHandleWatchKitRequest___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(*(a1 + 40) + 8);
  if (*(v3 + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIApplication _applicationHandleWatchKitRequest:]_block_invoke"];
    v8 = NSStringFromSelector(sel_application_handleWatchKitExtensionRequest_reply_);
    v9 = [*(a1 + 32) request];
    [v6 handleFailureInFunction:v7 file:@"UIApplication.m" lineNumber:8271 description:{@"Reply handler passed to -%@ called more than once for request %@.", v8, v9}];

    v3 = *(*(a1 + 40) + 8);
  }

  *(v3 + 24) = 1;
  if ([*(a1 + 32) canSendResponse])
  {
    v4 = *(a1 + 32);
    v5 = [UIWatchKitExtensionRequestActionResponse responseWithWatchKitExtensionResult:v10];
    [v4 sendResponse:v5];
  }
}

- (void)_applicationHandleIntentForwardingAction:(id)action
{
  actionCopy = action;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = qword_1EA993260;
  v15 = qword_1EA993260;
  if (!qword_1EA993260)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getINUIAppIntentForwardingActionExecutorClass_block_invoke;
    v11[3] = &unk_1E70F2F20;
    v11[4] = &v12;
    __getINUIAppIntentForwardingActionExecutorClass_block_invoke(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = [[v5 alloc] initWithApplication:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__UIApplication__applicationHandleIntentForwardingAction___block_invoke;
  v9[3] = &unk_1E711D720;
  v10 = actionCopy;
  v8 = actionCopy;
  [v7 executeAction:v8 completionHandler:v9];
}

void __58__UIApplication__applicationHandleIntentForwardingAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) canSendResponse])
  {
    [*(a1 + 32) sendResponse:v3];
  }
}

- (void)_applicationHandleLinkConnectionAction:(id)action
{
  actionCopy = action;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = qword_1EA993270;
  v14 = qword_1EA993270;
  if (!qword_1EA993270)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getLNAppConnectionListenerClass_block_invoke;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getLNAppConnectionListenerClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  sharedListener = [v4 sharedListener];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__UIApplication__applicationHandleLinkConnectionAction___block_invoke;
  v8[3] = &unk_1E711D748;
  v9 = actionCopy;
  v7 = actionCopy;
  [sharedListener handleAction:v7 completionHandler:v8];
}

void __56__UIApplication__applicationHandleLinkConnectionAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) canSendResponse])
  {
    [*(a1 + 32) sendResponse:v3];
  }
}

- (void)_setHandlingURL:(BOOL)l url:(id)url
{
  v6 = 0x400000;
  if (!l)
  {
    v6 = 0;
  }

  *&self->_applicationFlags = *&self->_applicationFlags & 0xFFFFFFFFFFBFFFFFLL | v6;
  scheme = [url scheme];
  v8 = 0;
  if (url && scheme)
  {
    v11 = scheme;
    v9 = [scheme compare:@"doubletap" options:1] == 0;
    scheme = v11;
    v10 = v9;
    v8 = v10 << 36;
  }

  *&self->_applicationFlags = *&self->_applicationFlags & 0xFFFFFFEFFFFFFFFFLL | v8;
}

- (void)showNetworkPromptsIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  softlink_SBSSpringBoardServerPort();
  v5 = v4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getSBShowNetworkPromptsIfNecessarySymbolLoc_ptr;
  v13 = getSBShowNetworkPromptsIfNecessarySymbolLoc_ptr;
  if (!getSBShowNetworkPromptsIfNecessarySymbolLoc_ptr)
  {
    v7 = SpringBoardServicesLibrary_1();
    v11[3] = dlsym(v7, "SBShowNetworkPromptsIfNecessary");
    getSBShowNetworkPromptsIfNecessarySymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    v6(v5, necessaryCopy);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"kern_return_t softlink_SBShowNetworkPromptsIfNecessary(mach_port_t, uint8_t)"}];
    [currentHandler handleFailureInFunction:v9 file:@"UIApplication.m" lineNumber:511 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (id)userHomeDirectory
{
  v2 = NSHomeDirectory();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager _web_createDirectoryAtPathWithIntermediateDirectories:v2 attributes:0];

  return v2;
}

- (id)userLibraryDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager _web_createDirectoryAtPathWithIntermediateDirectories:v3 attributes:0];

  return v3;
}

- (id)_localCachesDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 2uLL, 1);
  v3 = [v2 objectAtIndex:0];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager _web_createDirectoryAtPathWithIntermediateDirectories:v3 attributes:0];

  return v3;
}

- (void)_performWithUICACommitStateSnapshotting:(id)snapshotting
{
  snapshottingCopy = snapshotting;
  if (snapshottingCopy)
  {
    v10 = snapshottingCopy;
    if (pthread_main_np() != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:8374 description:@"Call must be made on main thread"];
    }

    v6 = __caCommitState;
    if (__caCommitState >= 2)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIApplication _performWithUICACommitStateSnapshotting:]"];
      [currentHandler2 handleFailureInFunction:v9 file:@"UIApplication.m" lineNumber:8378 description:{@"can't begin snapshotting unless the commit state is idle or snapshotting (actual=%i)", __caCommitState}];
    }

    __caCommitState = 1;
    v10[2]();
    snapshottingCopy = v10;
    __caCommitState = v6;
  }
}

- (void)_configureSnapshotContext:(id)context forScreen:(id)screen scene:(id)scene
{
  sceneCopy = scene;
  screenCopy = screen;
  contextCopy = context;
  [screenCopy _scale];
  v10 = v9;
  [screenCopy _unjailedReferenceBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (([sceneCopy _sceneSessionRoleIsCarPlayOrNonInteractiveExternal] & 1) == 0)
  {
    _effectiveSettings = [sceneCopy _effectiveSettings];
    [_effectiveSettings frame];
    v16 = v20;
    v18 = v21;
    v12 = (v20 - v20) * 0.5;
    v14 = (v21 - v21) * 0.5;
  }

  [contextCopy setFrame:{v12, v14, v16, v18}];
  [contextCopy setScale:v10];
}

- (BOOL)_updateDefaultImage
{
  nameOfDefaultImageToUpdateAtSuspension = [(UIApplication *)self nameOfDefaultImageToUpdateAtSuspension];
  if (nameOfDefaultImageToUpdateAtSuspension)
  {
    [(UIApplication *)self _saveSnapshotWithName:nameOfDefaultImageToUpdateAtSuspension];
  }

  return nameOfDefaultImageToUpdateAtSuspension != 0;
}

- (void)prepareForDefaultImageSnapshotForScreen:(id)screen
{
  if ([screen _isMainLikeScreen])
  {

    [(UIApplication *)self prepareForDefaultImageSnapshot];
  }
}

- (BOOL)removeDefaultImage:(id)image forScreen:(id)screen
{
  imageCopy = image;
  displayIdentity = [screen displayIdentity];
  v8 = _UIApplicationMainSceneForDisplayIdentity(displayIdentity);

  v9 = [(UIApplication *)self _createSnapshotContextForSceneRemoval:v8 withName:imageCopy];

  if (v9)
  {
    v10 = [v8 invalidateSnapshotWithContext:v9];
  }

  else
  {
    v10 = 0;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v12 = *(__UILogGetCategoryCachedImpl("UIApplicationSnapshots", &removeDefaultImage_forScreen____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Warning: The UIApplication method removeDefaultImage:forScreen: is deprecated and likely does not do what you think it does. This is a user privacy issue if used for preventing sensitive content from displaying in system snapshots. Hide content optimistically when your scene enters background and/or call -requestSceneSessionRefresh instead. This will become a hard assert in future releases.", v13, 2u);
    }
  }

  return v10;
}

- (id)_createSnapshotContextForScene:(id)scene withName:(id)name performLayoutWithSettings:(id)settings
{
  sceneCopy = scene;
  nameCopy = name;
  settingsCopy = settings;
  v11 = [UIScreen _screenForScene:sceneCopy];
  v12 = v11;
  v13 = 0;
  if (sceneCopy && v11)
  {
    v14 = objc_alloc(MEMORY[0x1E699FC48]);
    identifier = [sceneCopy identifier];
    v16 = [v14 initWithSceneID:identifier settings:settingsCopy];

    if (!nameCopy)
    {
      nameCopy = @"UIApplicationAutomaticSnapshotDefault";
    }

    [v16 setName:nameCopy];
    v17 = [(UIScene *)UIWindowScene _sceneForFBSScene:sceneCopy];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__UIApplication__createSnapshotContextForScene_withName_performLayoutWithSettings___block_invoke;
    v19[3] = &unk_1E711D770;
    v19[4] = self;
    v20 = v12;
    v13 = v16;
    v21 = v13;
    [v17 _applySnapshotSettings:settingsCopy forActions:v19];
  }

  return v13;
}

void __83__UIApplication__createSnapshotContextForScene_withName_performLayoutWithSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = v3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__UIApplication__createSnapshotContextForScene_withName_performLayoutWithSettings___block_invoke_2;
    v8[3] = &unk_1E70F6B40;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    v10 = v6;
    v11 = *(a1 + 48);
    [UIView performWithoutAnimation:v8];
  }
}

void __83__UIApplication__createSnapshotContextForScene_withName_performLayoutWithSettings___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__UIApplication__createSnapshotContextForScene_withName_performLayoutWithSettings___block_invoke_3;
  v19[3] = &unk_1E70F35B8;
  v3 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v20 = v3;
  [UIViewController _performWithoutDeferringTransitions:v19];

  objc_autoreleasePoolPop(v2);
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [*(a1 + 48) _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (([v10 _includeInDefaultImageSnapshot] & 1) == 0)
        {
          v11 = [v10 _associatingSceneLayer];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  [*(a1 + 56) setLayersToExclude:v4];
  v12 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__UIApplication__createSnapshotContextForScene_withName_performLayoutWithSettings___block_invoke_4;
  v14[3] = &unk_1E70F3590;
  v14[4] = v12;
  [v12 _performWithUICACommitStateSnapshotting:v14];
  [*(a1 + 32) _configureSnapshotContext:*(a1 + 56) forScreen:*(a1 + 40) scene:*(a1 + 48)];
  v13 = *(a1 + 56);
  [*(a1 + 32) defaultImageSnapshotExpiration];
  [v13 setExpirationInterval:?];
}

uint64_t __83__UIApplication__createSnapshotContextForScene_withName_performLayoutWithSettings___block_invoke_4(uint64_t a1)
{
  [MEMORY[0x1E6979518] flush];
  if (_runAfterCACommitDeferredBlocks(*(a1 + 32)))
  {
    [MEMORY[0x1E6979518] flush];
  }

  v2 = MEMORY[0x1E6979518];

  return [v2 synchronize];
}

- (id)_createSnapshotContextForSceneRemoval:(id)removal withName:(id)name
{
  removalCopy = removal;
  nameCopy = name;
  v8 = [UIScreen _screenForScene:removalCopy];
  v9 = v8;
  v10 = 0;
  if (removalCopy && v8)
  {
    v11 = objc_alloc(MEMORY[0x1E699FC48]);
    identifier = [removalCopy identifier];
    v13 = [v11 initWithSceneID:identifier settings:0];

    if (!nameCopy)
    {
      nameCopy = @"UIApplicationAutomaticSnapshotDefault";
    }

    [v13 setName:nameCopy];
    v14 = [(UIScene *)UIWindowScene _sceneForFBSScene:removalCopy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__UIApplication__createSnapshotContextForSceneRemoval_withName___block_invoke;
    v16[3] = &unk_1E711D770;
    v16[4] = self;
    v10 = v13;
    v17 = v10;
    v18 = v9;
    [v14 _applySnapshotSettings:0 forActions:v16];
  }

  return v10;
}

void __64__UIApplication__createSnapshotContextForSceneRemoval_withName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__UIApplication__createSnapshotContextForSceneRemoval_withName___block_invoke_2;
  v6[3] = &unk_1E70F6B40;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  [UIView performWithoutAnimation:v6];
}

uint64_t __64__UIApplication__createSnapshotContextForSceneRemoval_withName___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _configureSnapshotContext:*(a1 + 40) forScreen:*(a1 + 48) scene:*(a1 + 56)];
  v2 = *(a1 + 40);
  [*(a1 + 32) defaultImageSnapshotExpiration];

  return [v2 setExpirationInterval:?];
}

- (void)_beginSnapshotSessionForScene:(id)scene withSnapshotBlock:(id)block
{
  v59 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  blockCopy = block;
  if (sceneCopy)
  {
    if (!blockCopy)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v27 = blockCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:8582 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    blockCopy = v27;
    if (!v27)
    {
      goto LABEL_24;
    }
  }

  v30 = a2;
  v32 = blockCopy;
  if (qword_1EA992FA8)
  {
    HTSuspendHangTracing();
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __65__UIApplication__beginSnapshotSessionForScene_withSnapshotBlock___block_invoke;
  v52[3] = &unk_1E70FCDA0;
  v52[4] = self;
  v52[5] = &v53;
  v9 = [(UIApplication *)self _beginBackgroundTaskWithName:@"com.apple.uikit.applicationSnapshot" expirationHandler:v52];
  v54[3] = v9;
  *(&self->_applicationFlags + 1) |= 0x20000000uLL;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:0x1EFB9C730 object:0];
  v11 = [UIScreen _screenForScene:sceneCopy];
  [v11 _setPerformingSystemSnapshot:1];
  array = [MEMORY[0x1E695DF70] array];
  [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 forScreen:v11];
  v31 = defaultCenter;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v13 = v49 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v14)
  {
    v15 = *v49;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        _scene = [v17 _scene];
        v19 = _scene == sceneCopy;

        if (v19)
        {
          [array addObject:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v14);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = array;
  v21 = [v20 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v21)
  {
    v22 = *v45;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v44 + 1) + 8 * j) _willSnapshot];
      }

      v21 = [v20 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v21);
  }

  [v31 postNotificationName:@"_UIApplicationWillBeginSnapshotSessionNotification" object:self];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __65__UIApplication__beginSnapshotSessionForScene_withSnapshotBlock___block_invoke_2;
  v33[3] = &unk_1E711D798;
  v38 = &v40;
  v24 = v20;
  v34 = v24;
  v25 = v11;
  v35 = v25;
  selfCopy = self;
  v26 = v31;
  v37 = v26;
  v39 = &v53;
  v32[2](v32, v33);
  if ((v41[3] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:v30 object:self file:@"UIApplication.m" lineNumber:8662 description:@"snapshot completion was not called"];
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v53, 8);
  blockCopy = v32;
LABEL_24:
}

uint64_t __65__UIApplication__beginSnapshotSessionForScene_withSnapshotBlock___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24))
  {
    v1 = result;
    result = [*(result + 32) _endBackgroundTask:?];
    *(*(*(v1 + 40) + 8) + 24) = 0;
  }

  return result;
}

uint64_t __65__UIApplication__beginSnapshotSessionForScene_withSnapshotBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
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

        [*(*(&v8 + 1) + 8 * v6++) _didSnapshot];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _setPerformingSystemSnapshot:0];
  *(*(a1 + 48) + 184) &= ~0x20000000uLL;
  [*(a1 + 56) postNotificationName:0x1EFB9C730 object:0];
  [*(a1 + 48) _performWithUICACommitStateSnapshotting:&__block_literal_global_1725];
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    [*(a1 + 48) _endBackgroundTask:?];
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  [*(a1 + 56) postNotificationName:@"_UIApplicationDidEndSnapshotSessionNotification" object:{*(a1 + 48), v8}];
  result = qword_1EA992FA8;
  if (qword_1EA992FA8)
  {
    return HTResumeHangTracing();
  }

  return result;
}

uint64_t __65__UIApplication__beginSnapshotSessionForScene_withSnapshotBlock___block_invoke_3()
{
  [MEMORY[0x1E6979518] flush];
  v0 = MEMORY[0x1E6979518];

  return [v0 synchronize];
}

- (void)_performSnapshotsWithAction:(id)action forScene:(id)scene completion:(id)completion
{
  actionCopy = action;
  sceneCopy = scene;
  completionCopy = completion;
  if (sceneCopy)
  {
    if (actionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:8666 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    if (actionCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:8667 description:{@"Invalid parameter not satisfying: %@", @"requestAction"}];

LABEL_3:
  v12 = [UIScene _sceneForFBSScene:sceneCopy];
  _isReadyForSuspension = [v12 _isReadyForSuspension];
  _UIApplicationFlushCATransaction(0);
  [v12 _setIsRespondingToLifecycleEvent:1];
  if (_isReadyForSuspension)
  {
    [v12 _prepareForResume];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke;
  v19[3] = &unk_1E711D838;
  v19[4] = self;
  v20 = sceneCopy;
  v21 = actionCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = actionCopy;
  v16 = sceneCopy;
  [v12 _performSystemSnapshotWithActions:v19];
  [v12 _setIsRespondingToLifecycleEvent:0];
  if (_isReadyForSuspension)
  {
    [v12 _prepareForSuspend];
  }
}

void __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke_2;
  v9[3] = &unk_1E711D810;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  [v2 _beginSnapshotSessionForScene:v3 withSnapshotBlock:v9];
}

void __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [UIScreen _screenForScene:*(a1 + 32)];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke_3;
  v13[3] = &unk_1E711D7C0;
  v5 = *(a1 + 40);
  v13[4] = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke_4;
  v8[3] = &unk_1E711D7E8;
  v9 = *(a1 + 32);
  v10 = v4;
  v11 = v3;
  v12 = *(a1 + 56);
  v6 = v3;
  v7 = v4;
  [v5 executeRequestsWithHandler:v13 completionHandler:v8 expirationHandler:&__block_literal_global_1734];
}

void __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3 nameOfDefaultImageToUpdateAtSuspension];
  v6 = [v8 settings];
  v7 = [v3 _createSnapshotContextForScene:v4 withName:v5 performLayoutWithSettings:v6];

  if (v7)
  {
    [*(a1 + 32) extendSnapshotContext:v7 forSnapshotAction:*(a1 + 48)];
    [v8 performSnapshotWithContext:v7];
  }
}

void __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke_4(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke_5;
  v8[3] = &unk_1E70F35B8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  [UIView performWithoutAnimation:v8];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v2, v3, v4, v5);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, v2, v3, v4, v5);
  }
}

void __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke_6;
  v3[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [UIViewController _performWithoutDeferringTransitions:v3];

  objc_autoreleasePoolPop(v2);
}

void __65__UIApplication__performSnapshotsWithAction_forScene_completion___block_invoke_6(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [UIScene _sceneForFBSScene:*(a1 + 32)];
  if ([v2 _hostsWindows])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 forScreen:*(a1 + 40), 0];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v9 + 1) + 8 * v7) _traitCollectionChangeTransitionCoordinator];
          [v8 _runAlongsideCompletionsAndClearAlongsideAnimations];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)_saveSnapshotWithName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  _mainScene = [(UIApplication *)self _mainScene];
  v6 = _mainScene;
  if (_mainScene)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__UIApplication__saveSnapshotWithName___block_invoke;
    v10[3] = &unk_1E711D860;
    v10[4] = self;
    v11 = _mainScene;
    v12 = nameCopy;
    v13 = &v14;
    [(UIApplication *)self _beginSnapshotSessionForScene:v11 withSnapshotBlock:v10];
    v7 = *(v15 + 24);
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Application", &_saveSnapshotWithName____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[UIApplication _saveSnapshotWithName:]";
      v20 = 2112;
      v21 = nameCopy;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s called for name %@ but main scene is nil, so skipping snapshot", buf, 0x16u);
    }

    v7 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  return v7 & 1;
}

void __39__UIApplication__saveSnapshotWithName___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _createSnapshotContextForScene:*(a1 + 40) withName:*(a1 + 48) performLayoutWithSettings:0];
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) performSnapshotWithContext:v3];
  }

  if (v4)
  {
    v4[2]();
  }
}

- (void)prepareSnapshotsWithAction:(id)action forScene:(id)scene completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (BOOL)_isInteractionEvent:(__GSEvent *)event
{
  Type = GSEventGetType();
  IsHardwareKeyboardEvent = GSEventIsHardwareKeyboardEvent();
  v5 = 0x400C00u >> Type;
  if (Type > 0x16)
  {
    LOBYTE(v5) = 0;
  }

  if (IsHardwareKeyboardEvent)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (BOOL)launchApplicationWithIdentifier:(id)identifier suspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v22[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v6 = dispatch_semaphore_create(0);
  v21 = *MEMORY[0x1E699F8E8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:suspendedCopy];
  v22[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  mEMORY[0x1E699FCA0] = [MEMORY[0x1E699FCA0] sharedService];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__UIApplication_launchApplicationWithIdentifier_suspended___block_invoke;
  v14[3] = &unk_1E711D888;
  v16 = &v17;
  v10 = v6;
  v15 = v10;
  [mEMORY[0x1E699FCA0] openApplication:identifierCopy options:v8 withResult:v14];

  v11 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v10, v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  return v12 & 1;
}

- (void)addStatusBarItem:(int)item removeOnExit:(BOOL)exit
{
  v4 = *&item;
  NSLog(&cfstr_Addstatusbarit.isa, a2, *&item, exit);

  [UIStatusBarServer addStatusBarItem:v4];
}

- (void)setApplicationBadgeString:(id)string
{
  v3 = MEMORY[0x1E6983308];
  stringCopy = string;
  currentNotificationCenter = [v3 currentNotificationCenter];
  [currentNotificationCenter setBadgeString:stringCopy withCompletionHandler:0];
}

- (NSInteger)applicationIconBadgeNumber
{
  currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
  badgeNumber = [currentNotificationCenter badgeNumber];
  integerValue = [badgeNumber integerValue];

  return integerValue;
}

- (void)setApplicationIconBadgeNumber:(NSInteger)applicationIconBadgeNumber
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    currentUserNotificationSettings = [(UIApplication *)self currentUserNotificationSettings];
    types = [currentUserNotificationSettings types];

    if ((types & 1) == 0)
    {
      v7 = [UIUserNotificationSettings settingsForTypes:7 categories:0];
      [(UIApplication *)self registerUserNotificationSettings:v7];
    }
  }

  currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:applicationIconBadgeNumber];
  [currentNotificationCenter setBadgeNumber:v8 withCompletionHandler:0];
}

- (void)setApplicationSupportsShakeToEdit:(BOOL)applicationSupportsShakeToEdit
{
  v3 = 128;
  if (!applicationSupportsShakeToEdit)
  {
    v3 = 0;
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)_setForcedUserInterfaceLayoutDirection:(int64_t)direction
{
  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFFFFFFFC3FFFFLL | ((direction & 7) << 19) | 0x40000;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIApplicationForcedUserInterfaceLayoutDirectionChangedNotification" object:0];
}

- (void)addWebClipToHomeScreen:(id)screen
{
  v47 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  v4 = screenCopy;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *buffer = 0u;
  v16 = 0u;
  if (screenCopy && CFStringGetCString(screenCopy, buffer, 1024, 0x8000100u))
  {
    softlink_SBSSpringBoardServerPort();
    v6 = v5;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v7 = getSBAddWebClipToHomeScreenSymbolLoc_ptr;
    v14 = getSBAddWebClipToHomeScreenSymbolLoc_ptr;
    if (!getSBAddWebClipToHomeScreenSymbolLoc_ptr)
    {
      v8 = SpringBoardServicesLibrary_1();
      v12[3] = dlsym(v8, "SBAddWebClipToHomeScreen");
      getSBAddWebClipToHomeScreenSymbolLoc_ptr = v12[3];
      v7 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"kern_return_t softlink_SBAddWebClipToHomeScreen(mach_port_t, char *)"}];
      [currentHandler handleFailureInFunction:v10 file:@"UIApplication.m" lineNumber:510 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v7(v6, buffer);
  }
}

+ (id)stringForStatusBarStyle:(int64_t)style
{
  v3 = @"UIStatusBarStyleOpaqueBlack";
  v4 = @"UIStatusBarStyleDarkContent";
  v5 = @"UIStatusBarStyleNewUILockScreen";
  if (style != 306)
  {
    v5 = 0;
  }

  if (style != 3)
  {
    v4 = v5;
  }

  if (style != 2)
  {
    v3 = v4;
  }

  v6 = @"UIStatusBarStyleDefault";
  v7 = @"UIStatusBarStyleLightContent";
  if (style != 1)
  {
    v7 = 0;
  }

  if (style)
  {
    v6 = v7;
  }

  if (style <= 1)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)statusBarStyleForString:(id)string
{
  stringCopy = string;
  if (stringCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([stringCopy compare:@"UIStatusBarStyleGray" options:1] && objc_msgSend(stringCopy, "compare:options:", @"UIStatusBarStyleDefault", 1))
    {
      v4 = 1;
      if ([stringCopy compare:@"UIStatusBarStyleLightContent" options:1])
      {
        if ([stringCopy compare:@"UIStatusBarStyleDarkContent" options:1])
        {
          v4 = 1;
          if ([stringCopy compare:@"UIStatusBarStyleTransparentBlack" options:1])
          {
            v4 = 1;
            if ([stringCopy compare:@"UIStatusBarStyleBlackTranslucent" options:1])
            {
              if ([stringCopy compare:@"UIStatusBarStyleOpaqueBlack" options:1] && objc_msgSend(stringCopy, "compare:options:", @"UIStatusBarStyleBlackOpaque", 1))
              {
                if ([stringCopy compare:@"UIStatusBarStyleBlackOpaqueWithOutCorners" options:1])
                {
                  if ([stringCopy compare:@"UIStatusBarStyleExternal" options:1])
                  {
                    if ([stringCopy compare:@"UIStatusBarStyleExternalCompass" options:1])
                    {
                      v4 = -1;
                    }

                    else
                    {
                      v4 = 405;
                    }
                  }

                  else
                  {
                    v4 = 400;
                  }
                }

                else
                {
                  v4 = 51;
                }
              }

              else
              {
                v4 = 2;
              }
            }
          }
        }

        else
        {
          v4 = 3;
        }
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (unint64_t)_statusBarStyleOverridesForArray:(id)array
{
  v21[41] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v20[0] = @"UIStatusBarStyleOverrideInCall";
  v20[1] = @"UIStatusBarStyleOverrideInWorkout";
  v21[0] = &unk_1EFE32650;
  v21[1] = &unk_1EFE32668;
  v20[2] = @"UIStatusBarStyleOverrideRecording";
  v20[3] = @"UIStatusBarStyleOverrideTethering";
  v21[2] = &unk_1EFE32680;
  v21[3] = &unk_1EFE32698;
  v20[4] = @"UIStatusBarStyleOverrideInVideoConference";
  v20[5] = @"UIStatusBarStyleOverrideScreenSharing";
  v21[4] = &unk_1EFE326B0;
  v21[5] = &unk_1EFE326C8;
  v20[6] = @"UIStatusBarStyleOverrideNavigationTeal";
  v20[7] = @"UIStatusBarStyleOverrideNavigationBlue";
  v21[6] = &unk_1EFE326E0;
  v21[7] = &unk_1EFE326F8;
  v20[8] = @"UIStatusBarStyleOverrideAssistantEyesFree";
  v20[9] = @"UIStatusBarStyleOverrideVideoOut";
  v21[8] = &unk_1EFE32710;
  v21[9] = &unk_1EFE32728;
  v20[10] = @"UIStatusBarStyleOverrideHearingAidRecording";
  v20[11] = @"UIStatusBarStyleOverrideBackgroundLocation";
  v21[10] = &unk_1EFE32740;
  v21[11] = &unk_1EFE32758;
  v20[12] = @"UIStatusBarStyleOverrideNearbyInteractions";
  v20[13] = @"UIStatusBarStyleOverrideCarPlay";
  v21[12] = &unk_1EFE32770;
  v21[13] = &unk_1EFE32788;
  v20[14] = @"UIStatusBarStyleOverrideAutoAirPlayReady";
  v20[15] = @"UIStatusBarStyleOverrideAutoAirPlayPlaying";
  v21[14] = &unk_1EFE327A0;
  v21[15] = &unk_1EFE327B8;
  v20[16] = @"UIStatusBarStyleOverrideSysdiagnose";
  v20[17] = @"UIStatusBarStyleOverrideScreenSharingServer";
  v21[16] = &unk_1EFE327D0;
  v21[17] = &unk_1EFE327E8;
  v20[18] = @"UIStatusBarStyleOverrideScreenReplayRecording";
  v20[19] = @"UIStatusBarStyleOverrideDiagnostics";
  v21[18] = &unk_1EFE32800;
  v21[19] = &unk_1EFE32818;
  v20[20] = @"UIStatusBarStyleOverrideLoggingCapture";
  v20[21] = @"UIStatusBarStyleOverrideSOS";
  v21[20] = &unk_1EFE32830;
  v21[21] = &unk_1EFE32848;
  v20[22] = @"UIStatusBarStyleOverrideDeveloperTools";
  v20[23] = @"UIStatusBarStyleOverrideAirPrint";
  v21[22] = &unk_1EFE32860;
  v21[23] = &unk_1EFE32878;
  v20[24] = @"UIStatusBarStyleOverrideWebRTCCapture";
  v20[25] = @"UIStatusBarStyleOverrideWebRTCAudioCapture";
  v21[24] = &unk_1EFE32890;
  v21[25] = &unk_1EFE328A8;
  v20[26] = @"UIStatusBarStyleOverrideFullScreenWebRTCCapture";
  v20[27] = @"UIStatusBarStyleOverrideFullScreenWebRTCAudioCapture";
  v21[26] = &unk_1EFE328C0;
  v21[27] = &unk_1EFE328D8;
  v20[28] = @"UIStatusBarStyleOverrideCallRinging";
  v20[29] = @"UIStatusBarStyleOverrideVideoConferenceRinging";
  v21[28] = &unk_1EFE328F0;
  v21[29] = &unk_1EFE32908;
  v20[30] = @"UIStatusBarStyleOverrideStewie";
  v20[31] = @"UIStatusBarStyleOverrideStewieDisconnected";
  v21[30] = &unk_1EFE32920;
  v21[31] = &unk_1EFE32938;
  v20[32] = @"UIStatusBarStyleOverrideSharePlay";
  v20[33] = @"UIStatusBarStyleOverrideSharePlayScreenSharing";
  v21[32] = &unk_1EFE32950;
  v21[33] = &unk_1EFE32968;
  v20[34] = @"UIStatusBarStyleOverrideSharePlayInactive";
  v20[35] = @"UIStatusBarStyleOverridePlaygrounds";
  v21[34] = &unk_1EFE32980;
  v21[35] = &unk_1EFE32998;
  v20[36] = @"UIStatusBarStyleOverrideActivePushToTalkCall";
  v20[37] = @"UIStatusBarStyleOverrideIdlePushToTalkCall";
  v21[36] = &unk_1EFE329B0;
  v21[37] = &unk_1EFE329C8;
  v20[38] = @"UIStatusBarStyleOverrideCallHandoff";
  v20[39] = @"UIStatusBarStyleOverrideVideoConferenceHandoff";
  v21[38] = &unk_1EFE329E0;
  v21[39] = &unk_1EFE329F8;
  v20[40] = @"UIStatusBarStyleOverridesAll";
  v21[40] = &unk_1EFE32A10;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:41];
  if (arrayCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = arrayCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v4 objectForKey:{v11, v15}];
            if (v12)
            {
              v13 = v12;
              v8 |= [v12 unsignedIntegerValue];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
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

+ (id)stringForStatusBarStyleOverrides:(unint64_t)overrides
{
  if (overrides >= 0x20000)
  {
    if (overrides <= 0x3FFFFFF)
    {
      if (overrides < 0x200000)
      {
        if (overrides >= 0x80000)
        {
          if (overrides == 0x80000)
          {
            v3 = @"developerTools";
            goto LABEL_93;
          }

          if (overrides == 0x100000)
          {
            v3 = @"screenReplayRecording";
            goto LABEL_93;
          }
        }

        else
        {
          if (overrides == 0x20000)
          {
            v3 = @"webRTCCapture";
            goto LABEL_93;
          }

          if (overrides == 0x40000)
          {
            v3 = @"airPrint";
            goto LABEL_93;
          }
        }
      }

      else if (overrides < 0x800000)
      {
        if (overrides == 0x200000)
        {
          v3 = @"loggingCapture";
          goto LABEL_93;
        }

        if (overrides == 0x400000)
        {
          v3 = @"autoAirPlayReady";
          goto LABEL_93;
        }
      }

      else
      {
        switch(overrides)
        {
          case 0x800000uLL:
            v3 = @"autoAirPlayPlaying";
            goto LABEL_93;
          case 0x1000000uLL:
            v3 = @"webRTCAudioCapture";
            goto LABEL_93;
          case 0x2000000uLL:
            v3 = @"fullScreenWebRTCCapture";
            goto LABEL_93;
        }
      }
    }

    else if (overrides > 0xFFFFFFFFFLL)
    {
      if (overrides <= 0x3FFFFFFFFFLL)
      {
        if (overrides == 0x1000000000)
        {
          v3 = @"activePushToTalkCall";
          goto LABEL_93;
        }

        if (overrides == 0x2000000000)
        {
          v3 = @"idlePushToTalkCall";
          goto LABEL_93;
        }
      }

      else
      {
        switch(overrides)
        {
          case 0x4000000000uLL:
            v3 = @"callHandoff";
            goto LABEL_93;
          case 0x8000000000uLL:
            v3 = @"videoConferenceHandoff";
            goto LABEL_93;
          case 0x20000000000uLL:
            v3 = @"nearbyInteractions";
            goto LABEL_93;
        }
      }
    }

    else if (overrides <= 0xFFFFFFF)
    {
      if (overrides == 0x4000000)
      {
        v3 = @"fullScreenWebRTCAudioCapture";
        goto LABEL_93;
      }

      if (overrides == 0x8000000)
      {
        v3 = @"callRinging";
        goto LABEL_93;
      }
    }

    else
    {
      switch(overrides)
      {
        case 0x10000000uLL:
          v3 = @"videoConferenceRinging";
          goto LABEL_93;
        case 0x20000000uLL:
          v3 = @"stewie";
          goto LABEL_93;
        case 0x800000000uLL:
          v3 = @"stewieDisconnected";
          goto LABEL_93;
      }
    }
  }

  else if (overrides <= 127)
  {
    if (overrides <= 3)
    {
      if (overrides > 0)
      {
        if (overrides == 1)
        {
          v3 = @"inCall";
          goto LABEL_93;
        }

        if (overrides == 2)
        {
          v3 = @"inWorkout";
          goto LABEL_93;
        }
      }

      else
      {
        if (overrides == -1)
        {
          v3 = @"(all)";
          goto LABEL_93;
        }

        if (!overrides)
        {
          v3 = @"(none)";
          goto LABEL_93;
        }
      }
    }

    else if (overrides <= 15)
    {
      if (overrides == 4)
      {
        v3 = @"recording";
        goto LABEL_93;
      }

      if (overrides == 8)
      {
        v3 = @"tethering";
        goto LABEL_93;
      }
    }

    else
    {
      switch(overrides)
      {
        case 0x10uLL:
          v3 = @"inVideoConference";
          goto LABEL_93;
        case 0x20uLL:
          v3 = @"screenSharing";
          goto LABEL_93;
        case 0x40uLL:
          v3 = @"navigationTeal";
          goto LABEL_93;
      }
    }
  }

  else if (overrides > 4095)
  {
    if (overrides < 0x4000)
    {
      if (overrides == 4096)
      {
        v3 = @"carPlay";
        goto LABEL_93;
      }

      if (overrides == 0x2000)
      {
        v3 = @"sysdiagnose";
        goto LABEL_93;
      }
    }

    else
    {
      switch(overrides)
      {
        case 0x4000uLL:
          v3 = @"screenSharingServer";
          goto LABEL_93;
        case 0x8000uLL:
          v3 = @"diagnostics";
          goto LABEL_93;
        case 0x10000uLL:
          v3 = @"sos";
          goto LABEL_93;
      }
    }
  }

  else if (overrides <= 511)
  {
    if (overrides == 128)
    {
      v3 = @"navigationBlue";
      goto LABEL_93;
    }

    if (overrides == 256)
    {
      v3 = @"assistantEyesFree";
      goto LABEL_93;
    }
  }

  else
  {
    switch(overrides)
    {
      case 0x200uLL:
        v3 = @"videoOut";
        goto LABEL_93;
      case 0x400uLL:
        v3 = @"hearingAidRecording";
        goto LABEL_93;
      case 0x800uLL:
        v3 = @"backgroundLocation";
        goto LABEL_93;
    }
  }

  v4 = [self _stringsForStatusBarStyleOverrides:?];
  v3 = [v4 componentsJoinedByString:{@", "}];

LABEL_93:

  return v3;
}

+ (id)_stringsForStatusBarStyleOverrides:(unint64_t)overrides
{
  array = [MEMORY[0x1E695DF70] array];
  v5 = array;
  if (overrides)
  {
    v6 = @"inCall";
    goto LABEL_67;
  }

  if ((overrides & 2) != 0)
  {
    v6 = @"inWorkout";
    goto LABEL_67;
  }

  if ((overrides & 4) != 0)
  {
    v6 = @"recording";
    goto LABEL_67;
  }

  if ((overrides & 8) != 0)
  {
    v6 = @"tethering";
    goto LABEL_67;
  }

  if ((overrides & 0x10) != 0)
  {
    v6 = @"inVideoConference";
    goto LABEL_67;
  }

  if ((overrides & 0x20) != 0)
  {
    v6 = @"screenSharing";
    goto LABEL_67;
  }

  if ((overrides & 0x40) != 0)
  {
    v6 = @"navigationTeal";
    goto LABEL_67;
  }

  if ((overrides & 0x80) != 0)
  {
    v6 = @"navigationBlue";
    goto LABEL_67;
  }

  if ((overrides & 0x100) != 0)
  {
    v6 = @"assistantEyesFree";
    goto LABEL_67;
  }

  if ((overrides & 0x200) != 0)
  {
    v6 = @"videoOut";
    goto LABEL_67;
  }

  if ((overrides & 0x400) != 0)
  {
    v6 = @"hearingAidRecording";
    goto LABEL_67;
  }

  if ((overrides & 0x800) != 0)
  {
    v6 = @"backgroundLocation";
    goto LABEL_67;
  }

  if ((overrides & 0x20000000000) != 0)
  {
    v6 = @"nearbyInteractions";
    goto LABEL_67;
  }

  if ((overrides & 0x1000) != 0)
  {
    v6 = @"carPlay";
    goto LABEL_67;
  }

  if ((overrides & 0x2000) != 0)
  {
    v6 = @"sysdiagnose";
    goto LABEL_67;
  }

  if ((overrides & 0x4000) != 0)
  {
    v6 = @"screenSharingServer";
    goto LABEL_67;
  }

  if ((overrides & 0x8000) != 0)
  {
    v6 = @"diagnostics";
    goto LABEL_67;
  }

  if ((overrides & 0x10000) != 0)
  {
    v6 = @"sos";
    goto LABEL_67;
  }

  if ((overrides & 0x20000) != 0)
  {
    v6 = @"webRTCCapture";
    goto LABEL_67;
  }

  if ((overrides & 0x1000000) != 0)
  {
    v6 = @"webRTCAudioCapture";
    goto LABEL_67;
  }

  if ((overrides & 0x2000000) != 0)
  {
    v6 = @"fullScreenWebRTCCapture";
    goto LABEL_67;
  }

  if ((overrides & 0x4000000) != 0)
  {
    v6 = @"fullScreenWebRTCAudioCapture";
    goto LABEL_67;
  }

  if ((overrides & 0x40000) != 0)
  {
    v6 = @"airPrint";
    goto LABEL_67;
  }

  if ((overrides & 0x80000) != 0)
  {
    v6 = @"developerTools";
    goto LABEL_67;
  }

  if ((overrides & 0x100000) != 0)
  {
    v6 = @"screenReplayRecording";
    goto LABEL_67;
  }

  if ((overrides & 0x200000) != 0)
  {
    v6 = @"loggingCapture";
    goto LABEL_67;
  }

  if ((overrides & 0x400000) != 0)
  {
    v6 = @"autoAirPlayReady";
    goto LABEL_67;
  }

  if ((overrides & 0x800000) != 0)
  {
    v6 = @"autoAirPlayPlaying";
    goto LABEL_67;
  }

  if ((overrides & 0x8000000) != 0)
  {
    v6 = @"callRinging";
    goto LABEL_67;
  }

  if ((overrides & 0x10000000) != 0)
  {
    v6 = @"videoConferenceRinging";
    goto LABEL_67;
  }

  if ((overrides & 0x20000000) != 0)
  {
    v6 = @"stewie";
    goto LABEL_67;
  }

  if ((overrides & 0x800000000) != 0)
  {
    v6 = @"stewieDisconnected";
    goto LABEL_67;
  }

  if ((overrides & 0x140000000) != 0)
  {
    v6 = @"sharePlay";
LABEL_67:
    [array addObject:v6];
    goto LABEL_68;
  }

  if ((overrides & 0x280000000) != 0)
  {
    v6 = @"sharePlayScreenSharing";
    goto LABEL_67;
  }

  if ((overrides & 0x10000000000) != 0)
  {
    v6 = @"sharePlayInactive";
    goto LABEL_67;
  }

  if ((overrides & 0x400000000) != 0)
  {
    v6 = @"playgrounds";
    goto LABEL_67;
  }

  if ((overrides & 0x1000000000) != 0)
  {
    v6 = @"activePushToTalkCall";
    goto LABEL_67;
  }

  if ((overrides & 0x2000000000) != 0)
  {
    v6 = @"idlePushToTalkCall";
    goto LABEL_67;
  }

  if ((overrides & 0x4000000000) != 0)
  {
    v6 = @"callHandoff";
    goto LABEL_67;
  }

  if ((overrides & 0x8000000000) != 0)
  {
    v6 = @"videoConferenceHandoff";
    goto LABEL_67;
  }

LABEL_68:

  return v5;
}

+ (id)_stringForBackgroundStyle:(int64_t)style
{
  if (style > 6)
  {
    return 0;
  }

  else
  {
    return off_1E711E010[style];
  }
}

+ (int64_t)_backgroundStyleForString:(id)string
{
  stringCopy = string;
  if (stringCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = 1;
    if ([stringCopy compare:@"UIBackgroundStyleTransparent" options:1])
    {
      if ([stringCopy compare:@"UIBackgroundStyleUltraLightBlur" options:1])
      {
        if ([stringCopy compare:@"UIBackgroundStyleLightBlur" options:1])
        {
          if ([stringCopy compare:@"UIBackgroundStyleMediumBlur" options:1])
          {
            if ([stringCopy compare:@"UIBackgroundStyleDarkBlur" options:1])
            {
              if ([stringCopy compare:@"UIBackgroundStyleDarkTranslucent" options:1])
              {
                v4 = 0;
              }

              else
              {
                v4 = 5;
              }
            }

            else
            {
              v4 = 4;
            }
          }

          else
          {
            v4 = 6;
          }
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)interfaceOrientationForString:(id)string
{
  stringCopy = string;
  if (stringCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([stringCopy compare:@"UIInterfaceOrientationPortraitUpsideDown" options:1])
    {
      if ([stringCopy compare:@"UIInterfaceOrientationLandscapeLeft" options:1])
      {
        if ([stringCopy compare:@"UIInterfaceOrientationLandscapeRight" options:1])
        {
          v4 = 1;
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 4;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)stringForInterfaceOrientation:(int64_t)orientation
{
  if ((orientation - 1) > 3)
  {
    return @"Interface Unknown";
  }

  else
  {
    return off_1E711E048[orientation - 1];
  }
}

- (void)_addHitTestObserver:(id)observer forScene:(id)scene eventType:(int64_t)type
{
  mainEnvironment = self->_eventDispatcher->_mainEnvironment;
  observerCopy = observer;
  v9 = [(UIEventEnvironment *)mainEnvironment _eventOfType:type forScene:scene];
  [(UIEvent *)v9 _addHitTestObserver:observerCopy];
}

- (void)_removeHitTestObserver:(id)observer forScene:(id)scene eventType:(int64_t)type
{
  mainEnvironment = self->_eventDispatcher->_mainEnvironment;
  observerCopy = observer;
  v9 = [(UIEventEnvironment *)mainEnvironment _eventOfType:type forScene:scene];
  if (v9)
  {
    [v9[9] removeObject:observerCopy];
  }
}

+ (BOOL)_shouldBigify
{
  if (!os_variant_has_internal_diagnostics())
  {
    return 0;
  }

  v4 = _UIKitUserDefaults();
  v5 = [v4 objectForKey:@"UIApplicationLayoutUsesFullCanvasSizeKey"];
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)_setExpectsCADisplays:(BOOL)displays
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _UIMainBundleIdentifier();
  v7 = [v6 hasPrefix:@"com.apple.InterfaceBuilder.IBAgent"];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BUG IN CLIENT OF UIKIT: Attempt to call +[UIApplication _setExpectsCADisplays:] from an unapproved process"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"UIApplication.m";
      v20 = 1024;
      v21 = 9378;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189E4CBA0);
  }

  __UIApplicationsetExpectsCADisplays = displays;
}

- (int64_t)_classicMode
{
  v2 = objc_opt_class();

  return [v2 _classicMode];
}

uint64_t __37__UIApplication__fetchInfoPlistFlags__block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    setenv(a2, string_ptr, 1);
  }

  return 1;
}

- (id)_touchesEvent
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v7 = *(__UILogGetCategoryCachedImpl("Application", &_touchesEvent___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[UIApplication _touchesEvent]";
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s will no longer work as expected. Please stop using it.", &v8, 0xCu);
    }
  }

  mainEnvironment = self->_eventDispatcher->_mainEnvironment;
  keyWindow = [(UIApplication *)self keyWindow];
  v5 = [(UIEventEnvironment *)mainEnvironment _touchesEventForWindow:keyWindow];

  return v5;
}

- (double)_initialTouchTimestampForWindow:(id)window
{
  windowCopy = window;
  v5 = [(UIApplication *)self _touchesEventForWindow:windowCopy];
  [v5 _initialTouchTimestampForWindow:windowCopy];
  v7 = v6;

  return v7;
}

- (id)_hoverEventForWindowSpringBoardOnly:(id)only
{
  onlyCopy = only;
  if ([(UIApplication *)self _isSpringBoard])
  {
    v5 = [(UIApplication *)self _hoverEventForWindow:onlyCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_presentEditAlertController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    _motionKeyWindow = [(UIApplication *)self _motionKeyWindow];

    if (_motionKeyWindow)
    {
      _motionKeyWindow2 = [(UIApplication *)self _motionKeyWindow];
      rootViewController = [_motionKeyWindow2 rootViewController];

      presentedViewController = [rootViewController presentedViewController];

      if (presentedViewController)
      {
        do
        {
          presentedViewController2 = [rootViewController presentedViewController];

          v8PresentedViewController = [presentedViewController2 presentedViewController];

          rootViewController = presentedViewController2;
        }

        while (v8PresentedViewController);
      }

      else
      {
        presentedViewController2 = rootViewController;
      }

      [presentedViewController2 presentViewController:controllerCopy animated:1 completion:0];
    }
  }
}

- (void)_showEditAlertViewWithUndoManager:(id)manager window:(id)window
{
  managerCopy = manager;
  v6 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  canUndo = [managerCopy canUndo];
  canRedo = [managerCopy canRedo];
  v9 = canUndo & canRedo;
  if ((canUndo & canRedo & 1) == 0)
  {
    v10 = _UIKitBundle();
    v11 = [v10 localizedStringForKey:@"CANCEL_TITLE_IN_UNDO_ALERT" value:@"Cancel" table:@"Localizable"];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke;
    v31[3] = &unk_1E70F59B0;
    v31[4] = self;
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:v31];
    [v6 addAction:v12];
  }

  if (((canUndo | canRedo) & 1) == 0)
  {
    v18 = _UINSLocalizedStringWithDefaultValue(@"Nothing to Undo", @"Nothing to Undo");
    goto LABEL_15;
  }

  if (canUndo)
  {
    v13 = _UIKitBundle();
    v14 = [v13 localizedStringForKey:@"UNDO_BUTTON_TITLE_IN_UNDO_ALERT" value:@"Undo" table:@"Localizable"];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke_3;
    v29[3] = &unk_1E711D8D0;
    v29[4] = self;
    v15 = managerCopy;
    v30 = v15;
    v16 = [UIAlertAction actionWithTitle:v14 style:0 handler:v29];
    [v6 addAction:v16];

    if ((canRedo & 1) == 0)
    {
LABEL_11:
      undoMenuItemTitle = [managerCopy undoMenuItemTitle];
      goto LABEL_13;
    }

    redoMenuItemTitle = [v15 redoMenuItemTitle];
  }

  else
  {
    if ((canRedo & 1) == 0)
    {
      goto LABEL_12;
    }

    v19 = _UIKitBundle();
    redoMenuItemTitle = [v19 localizedStringForKey:@"REDO_BUTTON_TITLE_IN_UNDO_ALERT" value:@"Redo" table:@"Localizable"];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke_5;
  v27[3] = &unk_1E711D8D0;
  v27[4] = self;
  v28 = managerCopy;
  v20 = [UIAlertAction actionWithTitle:redoMenuItemTitle style:0 handler:v27];
  [v6 addAction:v20];

  if (canUndo)
  {
    goto LABEL_11;
  }

LABEL_12:
  undoMenuItemTitle = [managerCopy redoMenuItemTitle];
LABEL_13:
  v18 = undoMenuItemTitle;
  if (!undoMenuItemTitle)
  {
    v22 = _UIKitBundle();
    v18 = [v22 localizedStringForKey:@"UNDO_TITLE_LABEL_IN_UNDO_ALERT" value:@"Undo" table:@"Localizable"];
  }

LABEL_15:
  [v6 setTitle:v18];

  if (v9)
  {
    v23 = _UIKitBundle();
    v24 = [v23 localizedStringForKey:@"CANCEL_BUTTON_TITLE_IN_UNDO_ALERT" value:@"Cancel" table:@"Localizable"];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke_7;
    v26[3] = &unk_1E70F59B0;
    v26[4] = self;
    v25 = [UIAlertAction actionWithTitle:v24 style:1 handler:v26];
    [v6 addAction:v25];
  }

  objc_storeWeak(&self->_editAlertController, v6);
  [(UIApplication *)self _presentEditAlertController:v6];
}

uint64_t __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 56), 0);

  return [UIUndoGestureInteraction presentProductivityGestureTutorialIfNeededWithCompletion:&__block_literal_global_1855_0];
}

void __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke_3(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 56), 0);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke_4;
  v2[3] = &unk_1E70F3590;
  v3 = *(a1 + 40);
  [UIUndoGestureInteraction presentProductivityGestureTutorialIfNeededWithCompletion:v2];
}

uint64_t __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) canUndo];
  if (result)
  {
    [*(a1 + 32) undo];

    return [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Undo" trigger:@"Shake"];
  }

  return result;
}

void __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke_5(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 56), 0);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke_6;
  v2[3] = &unk_1E70F3590;
  v3 = *(a1 + 40);
  [UIUndoGestureInteraction presentProductivityGestureTutorialIfNeededWithCompletion:v2];
}

uint64_t __58__UIApplication__showEditAlertViewWithUndoManager_window___block_invoke_6(uint64_t a1)
{
  result = [*(a1 + 32) canRedo];
  if (result)
  {
    [*(a1 + 32) redo];

    return [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Redo" trigger:@"Shake"];
  }

  return result;
}

- (BOOL)_shakeToUndoEnabledForWindow:(id)window
{
  windowCopy = window;
  v5 = +[UIDictationController isRunning];
  windowScene = [windowCopy windowScene];
  if ((([windowScene _isTargetOfKeyboardEventDeferringEnvironment] & 1) != 0 || objc_msgSend(windowCopy, "_needsShakesWhenInactive")) && -[UIApplication applicationSupportsShakeToEdit](self, "applicationSupportsShakeToEdit") && !_AXSShakeToUndoDisabled())
  {
    v7 = !+[UIKeyboard isInputSystemUI]&& !v5;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_shouldShowAlertForUndoManager:(id)manager
{
  managerCopy = manager;
  if (([managerCopy canUndo] & 1) != 0 || objc_msgSend(managerCopy, "canRedo"))
  {
    WeakRetained = objc_loadWeakRetained(&self->_editAlertController);
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setupMotionFeedbackGenerator
{
  if (!self->_motionNotificationGenerator)
  {
    v3 = [UINotificationFeedbackGenerator alloc];
    v4 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1EFE32A28];
    v5 = [_UINotificationFeedbackGeneratorConfiguration privateConfigurationForTypes:v4];
    v6 = [(UIFeedbackGenerator *)v3 initWithConfiguration:v5];
    motionNotificationGenerator = self->_motionNotificationGenerator;
    self->_motionNotificationGenerator = v6;

    v8 = self->_motionNotificationGenerator;

    [(UIFeedbackGenerator *)v8 activateWithCompletionBlock:0];
  }
}

- (void)_teardownMotionEventBehavior
{
  [(UIFeedbackGenerator *)self->_motionNotificationGenerator deactivate];
  motionNotificationGenerator = self->_motionNotificationGenerator;
  self->_motionNotificationGenerator = 0;
}

- (void)motionBegan:(int64_t)began withEvent:(id)event
{
  v9 = [(UIApplication *)self _motionKeyWindow:began];
  v5 = [(UIApplication *)self _shakeToUndoEnabledForWindow:v9];
  v6 = v9;
  if (v5)
  {
    firstResponder = [v9 firstResponder];
    undoManager = [firstResponder undoManager];

    if ([(UIApplication *)self _shouldShowAlertForUndoManager:undoManager])
    {
      [(UIApplication *)self _setupMotionFeedbackGenerator];
    }

    v6 = v9;
  }
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  v5 = [(UIApplication *)self _motionKeyWindow:ended];
  if ([(UIApplication *)self _shakeToUndoEnabledForWindow:v5])
  {
    firstResponder = [v5 firstResponder];
    undoManager = [firstResponder undoManager];

    if ([(UIApplication *)self _shouldShowAlertForUndoManager:undoManager])
    {
      [(UIApplication *)self _setupMotionFeedbackGenerator];
      motionNotificationGenerator = self->_motionNotificationGenerator;
      if (motionNotificationGenerator)
      {
        v9 = motionNotificationGenerator;
        v11 = MEMORY[0x1E69E9820];
        v12 = 3221225472;
        v13 = __39__UIApplication_motionEnded_withEvent___block_invoke;
        v14 = &unk_1E70F4660;
        selfCopy = self;
        v16 = undoManager;
        v17 = v5;
        v18 = v9;
        v10 = v9;
        [(UIFeedbackGenerator *)v10 activateWithCompletionBlock:&v11];
      }

      else
      {
        [(UIApplication *)self _showEditAlertViewWithUndoManager:undoManager window:v5];
      }
    }
  }

  [(UIApplication *)self _teardownMotionEventBehavior:v11];
}

uint64_t __39__UIApplication_motionEnded_withEvent___block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) _showEditAlertViewWithUndoManager:*(a1 + 40) window:*(a1 + 48)];
  if (a2)
  {
    [*(a1 + 56) _privateNotificationOccurred:1006];
  }

  v4 = *(a1 + 56);

  return [v4 deactivate];
}

- (id)_exclusiveTouchWindows
{
  if (_exclusiveTouchWindows_once != -1)
  {
    dispatch_once(&_exclusiveTouchWindows_once, &__block_literal_global_1887);
  }

  return 0;
}

void __39__UIApplication__exclusiveTouchWindows__block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *(__UILogGetCategoryCachedImpl("Warning", &kUISuspendedReturnToLastAppKey_block_invoke_4___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "[UIApplication _exclusiveTouchWindows]_block_invoke";
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "%s now returns nil and will be removed soon, please stop calling it immediately!", &v1, 0xCu);
  }
}

- (void)_setRotationDisabledDuringTouch:(BOOL)touch
{
  v3 = 512;
  if (!touch)
  {
    v3 = 0;
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)_setUserDefaultsSyncEnabled:(BOOL)enabled
{
  v3 = 0x8000000000000000;
  if (enabled)
  {
    v3 = 0;
  }

  *&self->_applicationFlags = v3 & 0x8000000000000000 | *&self->_applicationFlags & 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)statusBar:(id)bar effectiveStyleOverridesForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides
{
  v7 = *(&self->_applicationFlags + 1);
  v8 = [(_UIApplicationInfoParser *)self->_appInfo ignoredOverrides:bar];
  _mainScene = [(UIApplication *)self _mainScene];
  v10 = _mainScene;
  if (_mainScene)
  {
    settings = [_mainScene settings];
    isUISubclass = [settings isUISubclass];

    if (isUISubclass)
    {
      uiSettings = [v10 uiSettings];
      v8 |= [uiSettings statusBarStyleOverridesToSuppress];
    }
  }

  if ((v7 & 0x20000000) != 0)
  {
    overrides = 0;
  }

  return overrides & ~v8;
}

- (void)statusBar:(id)bar willAnimateFromHeight:(double)height toHeight:(double)toHeight duration:(double)duration animation:(int)animation
{
  if (self->_statusBar == bar)
  {
    v23[5] = v12;
    v23[6] = v11;
    v23[7] = v10;
    v23[8] = v9;
    v23[13] = v7;
    v23[14] = v8;
    [(UIApplication *)self statusBarFrame];
    [(UIApplication *)self _notifyWillChangeStatusBarFrame:?];
    if (animation != 3)
    {
      if (animation == 2)
      {
        [UIWindow _noteStatusBarHeightChanged:toHeight oldHeight:height];
      }

      else
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __77__UIApplication_statusBar_willAnimateFromHeight_toHeight_duration_animation___block_invoke;
        v23[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
        *&v23[4] = duration;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __77__UIApplication_statusBar_willAnimateFromHeight_toHeight_duration_animation___block_invoke_2;
        v22[3] = &__block_descriptor_48_e5_v8__0l;
        *&v22[4] = toHeight;
        *&v22[5] = height;
        [UIView conditionallyAnimate:duration > 0.0 withAnimation:v23 layout:v22 completion:0];
      }
    }

    v18 = objc_alloc(MEMORY[0x1E695DF20]);
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    v20 = [v18 initWithObjectsAndKeys:{v19, @"UIApplicationStatusBarHeightChangedDurationKey", 0}];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIApplicationStatusBarHeightChangedNotification" object:self userInfo:v20];
  }
}

- (void)statusBar:(id)bar didAnimateFromHeight:(double)height toHeight:(double)toHeight animation:(int)animation
{
  if (animation == 3)
  {
    [UIWindow _noteStatusBarHeightChanged:bar oldHeight:toHeight, height];
  }

  [(UIApplication *)self statusBarFrame];

  [(UIApplication *)self _notifyDidChangeStatusBarFrame:?];
}

- (CGRect)statusBarFrameForOrientation:(int64_t)orientation
{
  v4 = _UIStatusBarManagerForNoWindow();
  if ([v4 isStatusBarHidden])
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [v4 defaultStatusBarHeightInOrientation:orientation];
    [v4 statusBarFrameForStatusBarHeight:?];
    v5 = v9;
    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)statusBarFrame
{
  v2 = _UIStatusBarManagerForNoWindow();
  [v2 statusBarFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)statusBarHeightForOrientation:(int64_t)orientation ignoreHidden:(BOOL)hidden
{
  v6 = _UIStatusBarManagerForNoWindow();
  v7 = v6;
  if (hidden || (v8 = 0.0, ([v6 isStatusBarHidden] & 1) == 0))
  {
    [v7 defaultStatusBarHeightInOrientation:orientation];
    v8 = v9;
  }

  return v8;
}

- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)orientation
{
  mainScreen = [objc_opt_self() mainScreen];
  [(UIApplication *)self noteActiveInterfaceOrientationWillChangeToOrientation:orientation screen:mainScreen];
}

- (void)noteActiveInterfaceOrientationWillChangeToOrientation:(int64_t)orientation screen:(id)screen
{
  screenCopy = screen;
  if ([(UIApplication *)self _isSpringBoard])
  {
    [screenCopy _setInterfaceOrientation:orientation];
  }
}

- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithSettings:(id)settings fromOrientation:(int64_t)fromOrientation
{
  settingsCopy = settings;
  mainScreen = [objc_opt_self() mainScreen];
  [(UIApplication *)self noteActiveInterfaceOrientationDidChangeToOrientation:orientation willAnimateWithSettings:settingsCopy fromOrientation:fromOrientation screen:mainScreen];
}

- (void)noteActiveInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithSettings:(id)settings fromOrientation:(int64_t)fromOrientation screen:(id)screen
{
  v16[2] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  screenCopy = screen;
  if ([UIApp _isSpringBoard])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v15[0] = 0x1EFB92210;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
    v15[1] = 0x1EFB92230;
    v16[0] = v11;
    v12 = MEMORY[0x1E696AD98];
    [settingsCopy duration];
    v13 = [v12 numberWithDouble:?];
    v16[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [defaultCenter postNotificationName:0x1EFB921F0 object:screenCopy userInfo:v14];
  }
}

- (void)setIgnoresInteractionEvents:(BOOL)events
{
  if (events)
  {
    [(UIApplication *)self beginIgnoringInteractionEvents];
  }

  else
  {
    [(UIApplication *)self endIgnoringInteractionEvents];
  }
}

- (void)_alertItemStateChanged
{
  if ([(UIApplication *)self _isSpringBoard]|| ![(UIApplication *)self _isSpringBoardShowingAnAlert])
  {

    [(UIApplication *)self _stopDeactivatingForReason:13];
  }

  else
  {

    [(UIApplication *)self _deactivateForReason:13];
  }
}

- (void)_handleUserDefaultsDidChange:(id)change
{
  changeCopy = change;
  if (pthread_main_np())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = changeCopy;
    }

    else
    {

      v4 = 0;
    }

    changeCopy = v4;
    [(UIApplication *)self userDefaultsDidChange:v4];
  }

  else
  {
    [(UIApplication *)self performSelectorOnMainThread:sel__handleUserDefaultsDidChange_ withObject:changeCopy waitUntilDone:0];
  }
}

- (void)_unregisterForUserDefaultsChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA70] object:0];
}

uint64_t __70__UIApplication__registerForHangTracerEnabledStateChangedNotification__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E69A2AD0]];
  __hangTracerIsTaskedOn = [v4 BOOLValue];

  v5 = *(a1 + 32);

  return [v5 _updateHangTracer];
}

void __62__UIApplication__registerForKeyboardLayoutChangedNotification__block_invoke()
{
  [UIApp _updateSerializableKeyCommandsForResponder:0];

  _UIMenuLeafKeyboardShortcutHardwareKeyboardLayoutChanged();
}

- (void)setBacklightLevel:(float)level
{
  v5 = +[UIDevice currentDevice];
  *&v4 = level;
  [v5 _setBacklightLevel:v4];
}

- (BOOL)_isSensitiveUIEnabled
{
  if (qword_1EA993070 != -1)
  {
    dispatch_once(&qword_1EA993070, &__block_literal_global_1900_0);
  }

  return byte_1EA992DC8;
}

uint64_t __38__UIApplication__isSensitiveUIEnabled__block_invoke()
{
  result = MGGetBoolAnswer();
  byte_1EA992DC8 = result;
  return result;
}

- (float)backlightLevel
{
  v2 = +[UIDevice currentDevice];
  [v2 _backlightLevel];
  v4 = v3;

  return v4;
}

- (void)setProximityEventsEnabled:(BOOL)enabled
{
  _mainScene = [(UIApplication *)self _mainScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__UIApplication_setProximityEventsEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  enabledCopy = enabled;
  [_mainScene updateUIClientSettingsWithBlock:v5];
}

void __43__UIApplication_setProximityEventsEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 proximityDetectionModes];
  v5 = *(a1 + 32);
  if (((v4 >> 1) & 1) != v5)
  {
    v6 = v5 == 0;
    v7 = 2;
    if (v6)
    {
      v7 = 0;
    }

    [v3 setProximityDetectionModes:v7 | v4 & 0xFFFFFFFFFFFFFFFDLL];
    if (*(a1 + 32) == 1)
    {
      v8 = [MEMORY[0x1E695DF00] date];
      v9 = *(UIApp + 168);
      *(UIApp + 168) = v8;
    }

    else
    {
      [*(UIApp + 168) timeIntervalSinceNow];
      v10 = *(UIApp + 168);
      *(UIApp + 168) = 0;
    }

    AnalyticsSendEventLazy();
  }
}

id __43__UIApplication_setProximityEventsEnabled___block_invoke_2(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"bundleId";
  v2 = _UIMainBundleIdentifier();
  v6[1] = @"enabled";
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id __43__UIApplication_setProximityEventsEnabled___block_invoke_3(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"bundleId";
  v2 = _UIMainBundleIdentifier();
  v8[0] = v2;
  v7[1] = @"enabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 36)];
  v8[1] = v3;
  v7[2] = @"enabledTime";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 32)];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (void)setProximitySensingEnabled:(BOOL)proximitySensingEnabled
{
  v3 = proximitySensingEnabled;
  v4 = +[UIDevice currentDevice];
  [v4 setProximityMonitoringEnabled:v3];
}

- (BOOL)isProximitySensingEnabled
{
  v2 = +[UIDevice currentDevice];
  isProximityMonitoringEnabled = [v2 isProximityMonitoringEnabled];

  return isProximityMonitoringEnabled;
}

- (void)setSystemVolumeHUDEnabled:(BOOL)enabled forAudioCategory:(id)category
{
  v18 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  if (os_variant_has_internal_diagnostics() && [UIApp _appAdoptsUISceneLifecycle])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v17 = "[UIApplication setSystemVolumeHUDEnabled:forAudioCategory:]";
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Error in UIKit client: %s should not be called if the client adopts UIScene lifecycle as it will return unexpected results.", buf, 0xCu);
      }
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("Assert", &setSystemVolumeHUDEnabled_forAudioCategory____s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v17 = "[UIApplication setSystemVolumeHUDEnabled:forAudioCategory:]";
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Error in UIKit client: %s should not be called if the client adopts UIScene lifecycle as it will return unexpected results.", buf, 0xCu);
      }
    }
  }

  if (categoryCopy && [(__CFString *)categoryCopy length])
  {
    v7 = 0;
  }

  else
  {

    v7 = 1;
    categoryCopy = &stru_1EFB14550;
  }

  _mainScene = [(UIApplication *)self _mainScene];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__UIApplication_setSystemVolumeHUDEnabled_forAudioCategory___block_invoke;
  v12[3] = &unk_1E711D960;
  v14 = v7;
  enabledCopy = enabled;
  v13 = categoryCopy;
  v9 = categoryCopy;
  [_mainScene updateUIClientSettingsWithBlock:v12];
}

void __60__UIApplication_setSystemVolumeHUDEnabled_forAudioCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40) != 1)
  {
    v5 = [v3 audioCategoriesDisablingVolumeHUD];
    if ([v5 count])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v5];
      v4 = v6;
      if ((*(a1 + 41) & 1) == 0)
      {
        if (v6)
        {
LABEL_14:
          [v4 addObject:*(a1 + 32)];
LABEL_15:

          goto LABEL_16;
        }

LABEL_13:
        v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        goto LABEL_14;
      }
    }

    else
    {
      if (*(a1 + 41) != 1)
      {
        goto LABEL_13;
      }

      v4 = 0;
    }

    [v4 removeObject:*(a1 + 32)];
    if (![v4 count])
    {

      v4 = 0;
    }

    goto LABEL_15;
  }

  if (*(a1 + 41))
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] set];
  }

LABEL_16:
  v7 = [v4 allObjects];
  [v8 setAudioCategoriesDisablingVolumeHUD:v7];
}

- (void)didReceiveMemoryWarning
{
  [UIApp applicationState];
  [(UIApplicationDelegate *)self->_delegate methodForSelector:sel_applicationDidReceiveMemoryWarning_];
  entr_act_modify();
  if ((*(&self->_applicationFlags + 5) & 0x10) != 0)
  {
    delegate = self->_delegate;

    [(UIApplicationDelegate *)delegate applicationDidReceiveMemoryWarning:self];
  }
}

- (void)_receivedMemoryNotification
{
  if ((*(&self->_applicationFlags + 3) & 0x40) != 0 && (__jetsamDisabled & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Received memory warning.", v3, 2u);
    }

    [(UIApplication *)self _performMemoryWarning];
  }
}

- (void)setReceivesMemoryWarnings:(BOOL)warnings
{
  warningsCopy = warnings;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIApplication_setReceivesMemoryWarnings___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (qword_1EA993080 != -1)
  {
    dispatch_once(&qword_1EA993080, block);
  }

  if (((((*&self->_applicationFlags & 0x40000000) == 0) ^ warningsCopy) & 1) == 0)
  {
    v5 = 0x40000000;
    if (!warningsCopy)
    {
      v5 = 0;
    }

    *&self->_applicationFlags = *&self->_applicationFlags & 0xFFFFFFFFBFFFFFFFLL | v5;
    if (warningsCopy)
    {
      dispatch_resume(qword_1EA993078);
    }

    else
    {
      dispatch_suspend(qword_1EA993078);
    }
  }
}

void __43__UIApplication_setReceivesMemoryWarnings___block_invoke(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, MEMORY[0x1E69E96A0]);
  v3 = qword_1EA993078;
  qword_1EA993078 = v2;

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __43__UIApplication_setReceivesMemoryWarnings___block_invoke_2;
  handler[3] = &unk_1E70F3590;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(qword_1EA993078, handler);
  if ((*(*(a1 + 32) + 179) & 0x40) != 0)
  {
    dispatch_resume(qword_1EA993078);
  }
}

- (id)_forceStageObservable
{
  forceStageObservable = self->_forceStageObservable;
  if (!forceStageObservable)
  {
    v4 = objc_opt_new();
    v5 = self->_forceStageObservable;
    self->_forceStageObservable = v4;

    forceStageObservable = self->_forceStageObservable;
  }

  return forceStageObservable;
}

- (void)_eatCurrentTouchForWindow:(id)window
{
  v3 = [(UIEventEnvironment *)self->_eventDispatcher->_mainEnvironment _currentTouchForWindow:window];
  if (v3)
  {
    v3[264] = 1;
  }
}

- (BOOL)_didEatCurrentTouchForWindow:(id)window
{
  v3 = [(UIEventEnvironment *)self->_eventDispatcher->_mainEnvironment _currentTouchForWindow:window];
  if (v3)
  {
    v4 = v3[264];
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)_eatCurrentTouchForWindow:(id)window ifPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = [(UIEventEnvironment *)self->_eventDispatcher->_mainEnvironment _currentTouchForWindow:window];
  v8 = v7;
  if (v7 && (*(v7 + 264) & 1) == 0 && predicateCopy[2](predicateCopy, v7))
  {
    v9 = 1;
    v8[264] = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_keyWindowForScreen:(id)screen
{
  screenCopy = screen;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__UIApplication__keyWindowForScreen___block_invoke;
  aBlock[3] = &unk_1E70FA210;
  v5 = screenCopy;
  v19 = v5;
  v6 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__UIApplication__keyWindowForScreen___block_invoke_2;
  v16[3] = &unk_1E70FA210;
  v7 = v5;
  v17 = v7;
  v8 = _Block_copy(v16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__UIApplication__keyWindowForScreen___block_invoke_3;
  v14[3] = &unk_1E70FA210;
  v9 = v7;
  v15 = v9;
  v10 = _Block_copy(v14);
  v11 = +[UIWindow _externalKeyWindow];
  if ((v6[2](v6, v11) & 1) == 0)
  {
    keyWindow = [(UIApplication *)self keyWindow];

    if (v6[2](v6, keyWindow))
    {
      v11 = keyWindow;
    }

    else
    {
      v11 = [UIWindow _topVisibleWindowPassingTest:v8];

      if (!v11)
      {
        v11 = [UIWindow _topVisibleWindowPassingTest:v10];
      }
    }
  }

  return v11;
}

uint64_t __37__UIApplication__keyWindowForScreen___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 screen];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v3 == v5;
  }

  else
  {
    v6 = [v3 _isMainScreen];
  }

  return v6;
}

BOOL __37__UIApplication__keyWindowForScreen___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 screen];
  v5 = v4;
  v6 = *(a1 + 32);
  if (!v6)
  {
    if (![v4 _isMainScreen])
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = [v3 firstResponder];
    v7 = v8 != 0;

    goto LABEL_6;
  }

  if (v4 == v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 0;
LABEL_6:

  return v7;
}

uint64_t __37__UIApplication__keyWindowForScreen___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 screen];
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v4 == v6)
    {
      goto LABEL_6;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (![v4 _isMainScreen])
  {
    goto LABEL_7;
  }

  v6 = *(a1 + 32);
LABEL_6:
  v7 = [v3 _canActAsKeyWindowForScreen:v6];
LABEL_8:

  return v7;
}

- (void)_sendButtonEventWithType:(int64_t)type phase:(int64_t)phase timestamp:(double)timestamp
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v12 = *(__UILogGetCategoryCachedImpl("Application", &_sendButtonEventWithType_phase_timestamp____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[UIApplication _sendButtonEventWithType:phase:timestamp:]";
      v15 = 2112;
      v16 = @"_sendButtonEventWithType:phase:timestamp:contextID:";
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%s: This method is deprecated. In order to look up the appropriate press event, please migrate to %@. The presses event associated with the key window's window scene will be used for now.", &v13, 0x16u);
    }
  }

  keyWindow = [UIApp keyWindow];
  if (!keyWindow)
  {
    mainScreen = [objc_opt_self() mainScreen];
    v11 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:mainScreen];

    keyWindow = [v11 _topVisibleWindowPassingTest:&__block_literal_global_1935];
  }

  -[UIApplication _sendButtonEventWithType:phase:timestamp:contextID:](self, "_sendButtonEventWithType:phase:timestamp:contextID:", type, phase, [keyWindow _contextId], timestamp);
}

uint64_t __58__UIApplication__sendButtonEventWithType_phase_timestamp___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 canBecomeKeyWindow] && (objc_msgSend(v2, "_isTextEffectsWindow") & 1) == 0)
  {
    v3 = [v2 isInternalWindow] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_sendButtonEventWithType:(int64_t)type phase:(int64_t)phase timestamp:(double)timestamp contextID:(unsigned int)d
{
  v6 = *&d;
  if ((phase - 3) >= 2)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = objc_alloc_init(UIPressInfo);
  [(UIPressInfo *)v12 setType:type];
  [(UIPressInfo *)v12 setPhase:phase];
  [(UIPressInfo *)v12 setTimestamp:timestamp];
  [(UIPressInfo *)v12 setForce:v11];
  [(UIPressInfo *)v12 setContextID:v6];
  [(UIApplication *)self _sendButtonEventWithPressInfo:v12];
}

- (BOOL)_prepareButtonEvent:(id)event type:(int64_t)type phase:(int64_t)phase timestamp:(double)timestamp contextID:(unsigned int)d
{
  v7 = *&d;
  if ((phase - 3) >= 2)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  eventCopy = event;
  v14 = objc_alloc_init(UIPressInfo);
  [(UIPressInfo *)v14 setType:type];
  [(UIPressInfo *)v14 setPhase:phase];
  [(UIPressInfo *)v14 setTimestamp:timestamp];
  [(UIPressInfo *)v14 setForce:v12];
  [(UIPressInfo *)v14 setContextID:v7];
  v15 = [(UIApplication *)self _prepareButtonEvent:eventCopy withPressInfo:v14];

  return v15;
}

- (BOOL)_prepareButtonEvent:(id)event type:(int64_t)type phase:(int64_t)phase timestamp:(double)timestamp force:(double)force clickCount:(unint64_t)count longClick:(BOOL)click contextID:(unsigned int)self0
{
  v10 = *&d;
  clickCopy = click;
  eventCopy = event;
  v19 = objc_alloc_init(UIPressInfo);
  [(UIPressInfo *)v19 setType:type];
  if (clickCopy)
  {
    phaseCopy = 1;
  }

  else
  {
    phaseCopy = phase;
  }

  [(UIPressInfo *)v19 setPhase:phaseCopy];
  [(UIPressInfo *)v19 setTimestamp:timestamp];
  [(UIPressInfo *)v19 setForce:force];
  [(UIPressInfo *)v19 setClickCount:count];
  [(UIPressInfo *)v19 setLongClick:clickCopy];
  [(UIPressInfo *)v19 setContextID:v10];
  v21 = [(UIApplication *)self _prepareButtonEvent:eventCopy withPressInfo:v19];

  return v21;
}

- (void)_sendButtonEventWithPressInfo:(id)info
{
  mainEnvironment = self->_eventDispatcher->_mainEnvironment;
  infoCopy = info;
  v6 = +[UIWindow _windowWithContextId:](UIWindow, "_windowWithContextId:", [infoCopy contextID]);
  v7 = [(UIEventEnvironment *)mainEnvironment _pressesEventForWindow:v6];

  LODWORD(v6) = [UIApp _prepareButtonEvent:v7 withPressInfo:infoCopy];
  if (v6)
  {
    [(UIApplication *)self sendEvent:v7];

    [(UIApplication *)self _finishButtonEvent:v7];
  }
}

- (BOOL)_prepareButtonEvent:(id)event withPressInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  source = [infoCopy source];
  if ([infoCopy type] != -1)
  {
    if (source == 3)
    {
      +[UIWindow _windowWithContextId:](UIWindow, "_windowWithContextId:", [infoCopy contextID]);
    }

    else
    {
      [eventCopy _hidEvent];
      _UIEventHIDUIWindowForHIDEvent();
    }
    v10 = ;
    v11 = -[UIEventEnvironment _pressForType:window:](self->_eventDispatcher->_mainEnvironment, [infoCopy type], v10);
    if (v11)
    {
      v12 = v11;
      phase = [(UIPress *)v11 phase];
      if ((phase == [infoCopy phase] || !objc_msgSend(infoCopy, "phase") && phase == 2) && (objc_msgSend(infoCopy, "isLongClick") & 1) == 0)
      {
        v9 = 0;
        if ([infoCopy phase] != 1 || phase != 1)
        {
          goto LABEL_31;
        }

        [(UIPress *)v12 force];
        v17 = v16;
        [infoCopy force];
        if (v17 == v18)
        {
          goto LABEL_30;
        }
      }

      if ([infoCopy phase])
      {
        [(UIPress *)v12 _loadStateFromPressInfo:infoCopy];
        allPresses = [eventCopy allPresses];
        v15 = [allPresses containsObject:v12];

        if (!v15)
        {
          goto LABEL_30;
        }

LABEL_28:
        [eventCopy set_lastPreparedPress:v12];
        v9 = 1;
LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      if ([infoCopy phase])
      {
        [0 _loadStateFromPressInfo:infoCopy];
        v12 = 0;
        goto LABEL_30;
      }

      v12 = objc_alloc_init(UIPress);
      -[UIEventEnvironment _setPress:forType:window:](self->_eventDispatcher->_mainEnvironment, v12, [infoCopy type], v10);
    }

    if (source == 3)
    {
      v19 = +[UIWindow _windowWithContextId:](UIWindow, "_windowWithContextId:", [infoCopy contextID]);
      screen = [v19 screen];
    }

    else
    {
      [eventCopy _hidEvent];
      v21 = BKSHIDEventGetBaseAttributes();
      environment = [v21 environment];
      systemEnvironment = [MEMORY[0x1E698E398] systemEnvironment];
      v24 = [environment isEqual:systemEnvironment];

      screen = [eventCopy _screen];
      if (v24)
      {
        v25 = [(UIApplication *)self _windowForSystemAppButtonEventsForScreen:screen];
        if (v25)
        {
          goto LABEL_26;
        }
      }
    }

    v25 = [(UIApplication *)self _keyWindowForScreen:screen];
LABEL_26:
    [(UIPress *)v12 setWindow:v25];
    _focusResponder = [v25 _focusResponder];
    v27 = [(UIApplication *)self _firstEligibleResponderForPress:_focusResponder];

    if (v27)
    {
      [(UIPress *)v12 setResponder:v27];
      [(UIPress *)v12 _loadStateFromPressInfo:infoCopy];
      [eventCopy _addPress:v12 forDelayedDelivery:0];

      goto LABEL_28;
    }

LABEL_30:
    v9 = 0;
    goto LABEL_31;
  }

  v9 = 0;
LABEL_32:

  return v9;
}

- (void)_cancelPressesWithType:(int64_t)type forPressesEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  allPresses = [eventCopy allPresses];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = allPresses;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if ([v14 type] == type)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    [(UIApplication *)self _cancelTouchesOrPresses:v8 withEvent:eventCopy];
  }
}

- (void)_finishButtonEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  allPresses = [eventCopy allPresses];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [allPresses countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allPresses);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 phase])
        {
          if ([v9 phase] == 3)
          {
            [eventCopy _removePress:v9];
          }
        }

        else
        {
          [v9 setPhase:2];
        }
      }

      v6 = [allPresses countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_cancelGestureRecognizersForView:(id)view
{
  gestureEnvironment = self->__gestureEnvironment;
  gestureRecognizers = [view gestureRecognizers];
  [(UIGestureEnvironment *)gestureEnvironment _cancelGestureRecognizers:gestureRecognizers];
}

- (void)_cancelTouchesOrPresses:(id)presses withEvent:(id)event includingGestures:(BOOL)gestures notificationBlock:(id)block
{
  gesturesCopy = gestures;
  v75 = *MEMORY[0x1E69E9840];
  pressesCopy = presses;
  eventCopy = event;
  blockCopy = block;
  if ([pressesCopy count])
  {
    v44 = blockCopy;
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v43 = pressesCopy;
    obj = pressesCopy;
    v12 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v68;
      v48 = gesturesCopy;
      v46 = *v68;
      do
      {
        v15 = 0;
        v50 = v13;
        do
        {
          if (*v68 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v67 + 1) + 8 * v15);
          v17 = [v16 _eventComponentPhaseForValue:{4, v43}];
          [v16 _setEventComponentPhase:v17];

          _responder = [v16 _responder];

          if (_responder)
          {
            _responder2 = [v16 _responder];
            v20 = [(NSMapTable *)strongToStrongObjectsMapTable objectForKey:_responder2];

            if (!v20)
            {
              v20 = objc_opt_new();
              _responder3 = [v16 _responder];
              [(NSMapTable *)strongToStrongObjectsMapTable setObject:v20 forKey:_responder3];
            }

            [v20 addObject:v16];
          }

          if (gesturesCopy)
          {
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            gestureRecognizers = [v16 gestureRecognizers];
            v23 = [gestureRecognizers countByEnumeratingWithState:&v63 objects:v73 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v64;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v64 != v25)
                  {
                    objc_enumerationMutation(gestureRecognizers);
                  }

                  v27 = *(*(&v63 + 1) + 8 * i);
                  v28 = [(NSMapTable *)strongToStrongObjectsMapTable objectForKey:v27];
                  if (!v28)
                  {
                    v28 = objc_opt_new();
                    [(NSMapTable *)strongToStrongObjectsMapTable setObject:v28 forKey:v27];
                  }

                  [v28 addObject:v16];
                }

                v24 = [gestureRecognizers countByEnumeratingWithState:&v63 objects:v73 count:16];
              }

              while (v24);
            }

            gesturesCopy = v48;
            v14 = v46;
            v13 = v50;
          }

          ++v15;
        }

        while (v15 != v13);
        v13 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v13);
    }

    v44[2](v44, strongToStrongObjectsMapTable);
    anyObject = [obj anyObject];
    _eventComponentType = [anyObject _eventComponentType];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v45 = NSAllMapTableKeys(strongToStrongObjectsMapTable);
    v49 = [v45 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v49)
    {
      v47 = *v60;
      do
      {
        v31 = 0;
        do
        {
          if (*v60 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v51 = v31;
          v32 = *(*(&v59 + 1) + 8 * v31);
          v33 = [(NSMapTable *)strongToStrongObjectsMapTable objectForKey:v32, v43];
          objc_opt_class();
          obja = v32;
          isKindOfClass = objc_opt_isKindOfClass();
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v35 = v33;
          v36 = [v35 countByEnumeratingWithState:&v55 objects:v71 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v56;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v56 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v55 + 1) + 8 * j);
                if (isKindOfClass)
                {
                  if (_eventComponentType == 1)
                  {
                    [obja ignorePress:*(*(&v55 + 1) + 8 * j) forEvent:eventCopy];
                  }

                  else if (!_eventComponentType)
                  {
                    [obja ignoreTouch:*(*(&v55 + 1) + 8 * j) forEvent:eventCopy];
                  }
                }

                gestureRecognizers2 = [v40 gestureRecognizers];
                v42 = [gestureRecognizers2 count];

                if (v42)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [eventCopy _clearViewForTouch:v40];
                  }

                  else
                  {
                    [v40 _setResponder:0];
                  }
                }

                else if (_eventComponentType == 1)
                {
                  [eventCopy _removePress:v40];
                }

                else if (!_eventComponentType)
                {
                  [eventCopy _removeTouch:v40];
                }
              }

              v37 = [v35 countByEnumeratingWithState:&v55 objects:v71 count:16];
            }

            while (v37);
          }

          v31 = v51 + 1;
        }

        while (v51 + 1 != v49);
        v49 = [v45 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v49);
    }

    pressesCopy = v43;
    blockCopy = v44;
  }
}

- (void)_cancelViewProcessingOfTouchesOrPresses:(id)presses withEvent:(id)event sendingCancelToViewsOfTouchesOrPresses:(id)orPresses
{
  eventCopy = event;
  orPressesCopy = orPresses;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__UIApplication__cancelViewProcessingOfTouchesOrPresses_withEvent_sendingCancelToViewsOfTouchesOrPresses___block_invoke;
  v12[3] = &unk_1E711D9F8;
  v13 = orPressesCopy;
  v14 = eventCopy;
  v10 = eventCopy;
  v11 = orPressesCopy;
  [(UIApplication *)self _cancelTouchesOrPresses:presses withEvent:v10 includingGestures:0 notificationBlock:v12];
}

void __106__UIApplication__cancelViewProcessingOfTouchesOrPresses_withEvent_sendingCancelToViewsOfTouchesOrPresses___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = NSAllMapTableKeys(v3);
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(NSMapTable *)v3 objectForKey:v8];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = [MEMORY[0x1E695DFD8] set];
        }

        v12 = v11;

        v13 = [MEMORY[0x1E695DFA8] setWithSet:v12];
        [v13 intersectSet:*(a1 + 32)];
        if ([v13 count] && objc_msgSend(v8, "__isKindOfUIResponder"))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = +[_UIResponderIntegrityProtection rip];
            [v14 startDeliveringPresses:v12 inPhase:4 withEvent:*(a1 + 40)];
            [v8 pressesCancelled:v12 withEvent:*(a1 + 40)];
            [v14 finishedDeliveringPresses];
          }

          else
          {
            [v8 touchesCancelled:v12 withEvent:*(a1 + 40)];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

- (void)_cancelTouchesIfNeededForViewRemovedFromResponderChain:(id)chain
{
  chainCopy = chain;
  _window = [chainCopy _window];
  v5 = [UIApp _touchesEventForWindow:_window];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 touchesForView:chainCopy];
    [(UIApplication *)self _cancelTouchesOrPresses:v7 withEvent:v6];
  }
}

- (void)_cancelPressesIfNeededForViewRemovedFromResponderChain:(id)chain
{
  v22 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  window = [chainCopy window];
  v6 = [UIApp _pressesEventForWindow:window];
  if (v6)
  {
    v16 = v6;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allPresses = [v6 allPresses];
    v8 = [allPresses countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(allPresses);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          responder = [v13 responder];
          while (responder != chainCopy)
          {
            nextResponder = [responder nextResponder];

            responder = nextResponder;
            if (!nextResponder)
            {
              goto LABEL_14;
            }
          }

          if (!v10)
          {
            v10 = objc_opt_new();
          }

          [v10 addObject:v13];

LABEL_14:
          ;
        }

        v9 = [allPresses countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    [(UIApplication *)self _cancelTouchesOrPresses:v10 withEvent:v16];
  }
}

- (void)_cancelTouchesOrPresses:(id)presses withEvent:(id)event
{
  eventCopy = event;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__UIApplication__cancelTouchesOrPresses_withEvent___block_invoke;
  v8[3] = &unk_1E711D9F8;
  v8[4] = self;
  v9 = eventCopy;
  v7 = eventCopy;
  [(UIApplication *)self _cancelTouchesOrPresses:presses withEvent:v7 includingGestures:1 notificationBlock:v8];
}

void __51__UIApplication__cancelTouchesOrPresses_withEvent___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) sendEvent:*(a1 + 40)];
  if (![*(a1 + 40) type])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1 + 40) allTouches];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(*(&v8 + 1) + 8 * i) phase] != 2)
          {
            v7 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
            [v7 peekApplicationEvent:*(a1 + 40)];

            goto LABEL_12;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_cancelAllEventsOfType:(int64_t)type onEventRoutingScene:(id)scene
{
  sceneCopy = scene;
  v18 = sceneCopy;
  if (!sceneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:11348 description:{@"Invalid parameter not satisfying: %@", @"eventRoutingScene"}];

    sceneCopy = 0;
  }

  _allWindows = [sceneCopy _allWindows];
  firstObject = [_allWindows firstObject];

  if (!firstObject)
  {
    goto LABEL_28;
  }

  if (type > 9)
  {
    if (type > 12)
    {
      if (type == 13)
      {
        -[_UIPencilEvent _cancelAndRemoveAllDescriptorsAndInteractions]([UIApp _pencilEventForWindow:firstObject]);
        goto LABEL_28;
      }

      if (type == 16)
      {
        v11 = [UIApp _dynamicButtonEventForWindow:firstObject];
        _allGestureRecognizers = [(UIEvent *)v11 _allGestureRecognizers];
        [v11 _removeGestureRecognizersSendingCancelledEvent:_allGestureRecognizers];

        goto LABEL_28;
      }
    }

    else
    {
      if (type == 10)
      {
        [objc_msgSend(UIApp _scrollEventForWindow:{firstObject), "_removeGestureRecognizersFromWindows"}];
        goto LABEL_28;
      }

      if (type == 11)
      {
        [objc_msgSend(UIApp _hoverEventForWindow:{firstObject), "_cancelAllGestureRecognizersAndRemoveAllHoverTouches"}];
        goto LABEL_28;
      }
    }

LABEL_27:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:11413 description:{@"Unsupported eventType: %li", type}];

    goto LABEL_28;
  }

  if (type > 3)
  {
    if (type == 4)
    {
      v10 = [UIApp _physicalKeyboardEventForWindow:firstObject];
      goto LABEL_22;
    }

    if (type != 8)
    {
      goto LABEL_27;
    }

    [objc_msgSend(UIApp _gameControllerEventForWindow:{firstObject), "_reset"}];
LABEL_28:
    v15 = 0;
    goto LABEL_29;
  }

  if (type)
  {
    if (type == 3)
    {
      v10 = [UIApp _pressesEventForWindow:firstObject];
LABEL_22:
      v13 = v10;
      allPresses = [v10 allPresses];
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  v13 = [UIApp _touchesEventForWindow:firstObject];
  allPresses = [v13 allTouches];
LABEL_23:
  v15 = allPresses;
  if (v13 && allPresses)
  {
    [(UIApplication *)self _cancelTouchesOrPresses:allPresses withEvent:v13];
  }

LABEL_29:
}

- (void)_cancelAllTouches
{
  v17 = *MEMORY[0x1E69E9840];
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = *(__UILogGetCategoryCachedImpl("Application", &_cancelAllTouches___s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "[UIApplication _cancelAllTouches]";
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Calling %s as a multi-scene app may lead to unexpected results", buf, 0xCu);
      }
    }
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [UIScene _scenesIncludingInternal:1, 0];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 _allowsEventUIWindowRouting])
        {
          [(UIApplication *)self _cancelAllEventsOfType:0 onEventRoutingScene:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_cancelAllInputsOnEventRoutingScene:(id)scene
{
  v18 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if ([sceneCopy _allowsEventUIWindowRouting])
  {
    [(UIApplication *)self _cancelAllEventsOfType:0 onEventRoutingScene:sceneCopy];
    _allWindows = [sceneCopy _allWindows];
    v6 = _allWindows;
    if (_allWindows && [_allWindows count])
    {
      _mainEventEnvironment = [(UIApplication *)self _mainEventEnvironment];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [(UIEventEnvironment *)_mainEventEnvironment _resetTouchMapForWindow:?];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }

    [(UIApplication *)self _cancelAllEventsOfType:3 onEventRoutingScene:sceneCopy, v13];
    [(UIApplication *)self _cancelAllEventsOfType:4 onEventRoutingScene:sceneCopy];
    [(UIApplication *)self _cancelAllEventsOfType:8 onEventRoutingScene:sceneCopy];
    [(UIApplication *)self _cancelAllEventsOfType:11 onEventRoutingScene:sceneCopy];
    [(UIApplication *)self _cancelAllEventsOfType:10 onEventRoutingScene:sceneCopy];
    [(UIApplication *)self _cancelAllEventsOfType:16 onEventRoutingScene:sceneCopy];
  }
}

- (void)_cancelUnfinishedTouchesForEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allTouches = [eventCopy allTouches];
  v7 = [allTouches countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allTouches);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 phase] <= 3)
        {
          phase = [v11 phase];
          if (v11)
          {
            v13 = phase == 3;
          }

          else
          {
            v13 = 0;
          }

          if (!v13 || (v11[118] & 8) == 0)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [allTouches countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(UIApplication *)self _cancelTouchesOrPresses:v5 withEvent:eventCopy];
}

- (void)_cancelUnfinishedPressesForEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = [MEMORY[0x1E695DFA8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allPresses = [eventCopy allPresses];
  v7 = [allPresses countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allPresses);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 phase] <= 3 && (objc_msgSend(v11, "phase") != 3 || (objc_msgSend(v11, "sentPressesEnded") & 1) == 0))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [allPresses countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(UIApplication *)self _cancelTouchesOrPresses:v5 withEvent:eventCopy];
  if ([eventCopy _isPhysicalKeyEvent])
  {
    [(UIRepeatedAction *)self->_keyRepeatAction invalidate];
  }
}

- (void)_cancelUnfinishedPhysicalKeyboardPressesForUIWindowEventRoutingScene:(id)scene
{
  _windows = [scene _windows];
  firstObject = [_windows firstObject];

  v5 = [(UIApplication *)self _physicalKeyboardEventForWindow:firstObject];
  if (v5)
  {
    [(UIApplication *)self _cancelUnfinishedPressesForEvent:v5];
  }
}

- (void)_cancelUnfinishedPhysicalKeyboardPresses
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [UIScene _scenesIncludingInternal:1, 0];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 _allowsEventUIWindowRouting])
        {
          [(UIApplication *)self _cancelUnfinishedPhysicalKeyboardPressesForUIWindowEventRoutingScene:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_registerInternalBSActionHandler:(id)handler
{
  handlerCopy = handler;
  internalApplicationBSActionHandlers = self->_internalApplicationBSActionHandlers;
  v8 = handlerCopy;
  if (!internalApplicationBSActionHandlers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_internalApplicationBSActionHandlers;
    self->_internalApplicationBSActionHandlers = v6;

    handlerCopy = v8;
    internalApplicationBSActionHandlers = self->_internalApplicationBSActionHandlers;
  }

  [(NSMutableArray *)internalApplicationBSActionHandlers addObject:handlerCopy];
}

- (void)_registerBSActionHandler:(id)handler
{
  handlerCopy = handler;
  applicationBSActionHandlers = self->_applicationBSActionHandlers;
  v8 = handlerCopy;
  if (!applicationBSActionHandlers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_applicationBSActionHandlers;
    self->_applicationBSActionHandlers = v6;

    handlerCopy = v8;
    applicationBSActionHandlers = self->_applicationBSActionHandlers;
  }

  [(NSMutableArray *)applicationBSActionHandlers addObject:handlerCopy];
}

- (void)_handleNonLaunchSpecificActions:(id)actions forScene:(id)scene withTransitionContext:(id)context completion:(id)completion
{
  v238 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  contextCopy = context;
  v170 = sceneCopy;
  v12 = [(UIScene *)UIWindowScene _sceneForFBSScene:sceneCopy];
  [contextCopy originatingProcess];
  v172 = v171 = contextCopy;
  v173 = v12;
  if (self->_internalApplicationBSActionHandlers && [actionsCopy count])
  {
    v229 = 0u;
    v228 = 0u;
    v227 = 0u;
    v226 = 0u;
    v13 = self->_internalApplicationBSActionHandlers;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v226 objects:v237 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v227;
LABEL_5:
      v17 = 0;
      v18 = actionsCopy;
      while (1)
      {
        if (*v227 != v16)
        {
          objc_enumerationMutation(v13);
        }

        actionsCopy = [*(*(&v226 + 1) + 8 * v17) _respondToApplicationActions:v18 fromTransitionContext:contextCopy];

        if (![actionsCopy count])
        {
          break;
        }

        ++v17;
        v18 = actionsCopy;
        if (v15 == v17)
        {
          v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v226 objects:v237 count:16];
          if (v15)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v12 = v173;
  }

  v169 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v19 = actionsCopy;
  v20 = [v19 countByEnumeratingWithState:&v222 objects:v236 count:16];
  if (!v20)
  {
    goto LABEL_169;
  }

  v21 = v20;
  v22 = *v223;
  v180 = v19;
  v181 = *v223;
LABEL_14:
  v23 = 0;
  v182 = v21;
  while (2)
  {
    if (*v223 != v22)
    {
      objc_enumerationMutation(v19);
    }

    v24 = *(*(&v222 + 1) + 8 * v23);
    switch([v24 UIActionType])
    {
      case 2:
        if (objc_opt_respondsToSelector())
        {
          delegate = self->_delegate;
          v220[0] = MEMORY[0x1E69E9820];
          v220[1] = 3221225472;
          v220[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke;
          v220[3] = &unk_1E711DA20;
          v220[4] = v24;
          v220[5] = self;
          v221 = v12;
          v26 = _UIAutologgingBackgroundFetchBlock(@"Warning: Application delegate received call to -application:performFetchWithCompletionHandler: but the completion handler was never called.", v220);
          [(UIApplicationDelegate *)delegate application:self performFetchWithCompletionHandler:v26];
        }

        else if ([v24 canSendResponse])
        {
          sessionIdentifier = [MEMORY[0x1E69DEBF0] responseWithResult:1];
          [v24 sendResponse:sessionIdentifier];
          goto LABEL_116;
        }

        goto LABEL_154;
      case 3:
        v60 = v24;
        if (!self->_applicationPushRegistry)
        {
          [(UIApplication *)self registerForRemoteNotifications];
        }

        mEMORY[0x1E6979260] = [MEMORY[0x1E6979260] sharedInstance];
        payload = [v60 payload];
        v217[0] = MEMORY[0x1E69E9820];
        v217[1] = 3221225472;
        v217[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_4;
        v217[3] = &unk_1E70F6228;
        v217[4] = self;
        v218 = v60;
        v219 = v12;
        payload5 = v60;
        [mEMORY[0x1E6979260] remoteUserNotificationPayloadReceived:payload completionHandler:v217];

        v47 = v218;
        goto LABEL_152;
      case 4:
        payload5 = v24;
        if (objc_opt_respondsToSelector())
        {
          [UIApp applicationState];
          [(UIApplicationDelegate *)self->_delegate methodForSelector:sel_application_handleActionWithIdentifier_forRemoteNotification_completionHandler_];
          entr_act_modify();
          v41 = self->_delegate;
          action = [payload5 action];
          payload2 = [payload5 payload];
          userResponse = [payload5 userResponse];
          v214[0] = MEMORY[0x1E69E9820];
          v214[1] = 3221225472;
          v214[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_7;
          v214[3] = &unk_1E70F6228;
          v214[4] = self;
          v215 = payload5;
          v216 = v12;
          v45 = _UIAutologgingVoidBlock(@"Warning: Application delegate received call to -application:handleActionWithIdentifier:forRemoteNotification:withResponseInfo:completionHandler: but the completion handler was never called.", v214);
          v46 = v41;
          v21 = v182;
          [(UIApplicationDelegate *)v46 application:self handleActionWithIdentifier:action forRemoteNotification:payload2 withResponseInfo:userResponse completionHandler:v45];

          v19 = v180;
          v22 = v181;

          v47 = v215;
          goto LABEL_152;
        }

        if (objc_opt_respondsToSelector())
        {
          v79 = self->_delegate;
          action2 = [payload5 action];
          payload3 = [payload5 payload];
          v211[0] = MEMORY[0x1E69E9820];
          v211[1] = 3221225472;
          v211[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_8;
          v211[3] = &unk_1E70F6228;
          v211[4] = self;
          v212 = payload5;
          v213 = v12;
          v82 = _UIAutologgingVoidBlock(@"Warning: Application delegate received call to -application:handleActionWithIdentifier:forRemoteNotification:completionHandler: but the completion handler was never called.", v211);
          [(UIApplicationDelegate *)v79 application:self handleActionWithIdentifier:action2 forRemoteNotification:payload3 completionHandler:v82];

          v21 = v182;
          v22 = v181;

          v47 = v212;
          goto LABEL_152;
        }

        if ([payload5 canSendResponse])
        {
          [payload5 sendResponse:0];
        }

        goto LABEL_153;
      case 5:
        sessionIdentifier = [v24 sessionIdentifier];
        if (objc_opt_respondsToSelector())
        {
          v57 = self->_delegate;
          v208[0] = MEMORY[0x1E69E9820];
          v208[1] = 3221225472;
          v208[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_9;
          v208[3] = &unk_1E70F6B40;
          v208[4] = self;
          v208[5] = v24;
          v58 = sessionIdentifier;
          v209 = v58;
          v210 = v12;
          v59 = _UIAutologgingVoidBlock(@"Warning: Application delegate received call to -application:handleEventsForBackgroundURLSession:completionHandler: but the completion handler was never called.", v208);
          [(UIApplicationDelegate *)v57 application:self handleEventsForBackgroundURLSession:v58 completionHandler:v59];

          v22 = v181;
          [MEMORY[0x1E695AC78] _sendPendingCallbacksForSessionIdentifier:v58];
        }

        else
        {
          if ([v24 canSendResponse])
          {
            response = [MEMORY[0x1E698E600] response];
            [v24 sendResponse:response];
          }

          [MEMORY[0x1E695AC78] _releaseProcessAssertionForSessionIdentifier:sessionIdentifier];
          [MEMORY[0x1E695AC78] _sendPendingCallbacksForSessionIdentifier:sessionIdentifier];
        }

        goto LABEL_116;
      case 6:
        payload4 = [v171 payload];
        sessionIdentifier = [payload4 objectForKey:@"UIApplicationLaunchOptionsSourceApplicationKey"];

        if (!sessionIdentifier)
        {
          sessionIdentifier = [v172 bundleIdentifier];
        }

        v49 = [(UIActivityContinuationManager *)self->_activityContinuationManager activityContinuationDictionaryWithAction:v24 sourceApplication:sessionIdentifier originatingProcess:v172];
        if (v49)
        {
          [(UIActivityContinuationManager *)self->_activityContinuationManager handleActivityContinuation:v49 isSuspended:[(UIApplication *)self isSuspended]];
        }

        else if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SActionUiactio.isa, "[UIApplication _handleNonLaunchSpecificActions:forScene:withTransitionContext:completion:]", v24);
        }

        goto LABEL_116;
      case 8:
        payload5 = [v24 payload];
        [(UIApplication *)self _applicationHandleSiriTask:payload5];
        goto LABEL_153;
      case 11:
        [(UIApplication *)self _applicationDidEnterBackground];
        goto LABEL_154;
      case 14:
        [(UIApplication *)self _applicationHandleWatchKitRequest:v24];
        goto LABEL_154;
      case 16:
        [(UIApplication *)self _setSystemNavigationAction:v24];
        goto LABEL_154;
      case 17:
        [(UIApplication *)self _handleApplicationShortcutAction:v24 onWindowScene:v12];
        goto LABEL_154;
      case 18:
        [(UIApplication *)self _handleScreenshot];
        goto LABEL_154;
      case 19:
        [(UIApplication *)self _applicationShouldRequestHealthAuthorization];
        goto LABEL_154;
      case 23:
        shareMetadata = [v24 shareMetadata];
        payload5 = shareMetadata;
        if (shareMetadata)
        {
          NSLog(&cfstr_SHandlingCloud.isa, "[UIApplication _handleNonLaunchSpecificActions:forScene:withTransitionContext:completion:]", shareMetadata);
          if (objc_opt_respondsToSelector())
          {
            [(UIApplicationDelegate *)self->_delegate application:self userDidAcceptCloudKitShareWithMetadata:payload5];
          }

          else if (objc_opt_respondsToSelector())
          {
            [(UIApplicationDelegate *)self->_delegate application:self userAcceptedCloudKitShareWithMetadata:payload5];
          }
        }

        goto LABEL_153;
      case 25:
        v33 = v24;
        notification = [v33 notification];
        currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
        delegate = [currentNotificationCenter delegate];
        if (objc_opt_respondsToSelector())
        {
          v207[0] = MEMORY[0x1E69E9820];
          v207[1] = 3221225472;
          v207[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_12;
          v207[3] = &unk_1E7105EF8;
          v207[4] = v33;
          [delegate userNotificationCenter:currentNotificationCenter willPresentNotification:notification withCompletionHandler:v207];
          goto LABEL_126;
        }

        if ([v33 isLocal] && objc_msgSend(v33, "isDeliverable") && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v77 = (*(UNNotificationToUILocalNotification + 2))(UNNotificationToUILocalNotification, notification);
          [(UIApplicationDelegate *)self->_delegate application:self didReceiveLocalNotification:v77];
          if ([v33 canSendResponse])
          {
            v78 = [UIWillPresentNotificationActionResponse responseWithOptions:0];
            [v33 sendResponse:v78];

            v19 = v180;
          }

          v22 = v181;
          goto LABEL_126;
        }

        if ([v33 isRemote] && objc_msgSend(v33, "isDeliverable") && (objc_opt_respondsToSelector() & 1) != 0)
        {
          request = [notification request];
          content = [request content];
          userInfo = [content userInfo];

          [(UIApplicationDelegate *)self->_delegate application:self didReceiveRemoteNotification:userInfo fetchCompletionHandler:&__block_literal_global_1983];
LABEL_106:
          if ([v33 canSendResponse])
          {
            v93 = [UIWillPresentNotificationActionResponse responseWithOptions:0];
            [v33 sendResponse:v93];
          }

          v12 = v173;
          v19 = v180;
          v22 = v181;
          goto LABEL_126;
        }

        if ([v33 isRemote] && objc_msgSend(v33, "isDeliverable") && (objc_opt_respondsToSelector() & 1) != 0)
        {
          request2 = [notification request];
          content2 = [request2 content];
          userInfo = [content2 userInfo];

          [(UIApplicationDelegate *)self->_delegate application:self didReceiveRemoteNotification:userInfo];
          goto LABEL_106;
        }

        v12 = v173;
        if ([v33 canSendResponse])
        {
          v115 = [UIWillPresentNotificationActionResponse responseWithOptions:0];
          [v33 sendResponse:v115];
        }

LABEL_126:

        v21 = v182;
        goto LABEL_154;
      case 26:
        v63 = dyld_program_sdk_at_least();
        v64 = MEMORY[0x1E695E0F8];
        if (!v63)
        {
          v64 = 0;
        }

        v65 = v64;
        v66 = v24;
        response2 = [v66 response];
        currentNotificationCenter2 = [MEMORY[0x1E6983308] currentNotificationCenter];
        delegate2 = [currentNotificationCenter2 delegate];
        if (objc_opt_respondsToSelector())
        {
          v205[0] = MEMORY[0x1E69E9820];
          v205[1] = 3221225472;
          v205[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_14;
          v205[3] = &unk_1E70F6228;
          v205[4] = self;
          v205[5] = v66;
          v206 = v12;
          _UIAutologgingVoidBlock(@"Warning: UNUserNotificationCenter delegate received call to -userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler: but the completion handler was never called.", v205);
          v71 = v70 = v65;
          [delegate2 userNotificationCenter:currentNotificationCenter2 didReceiveNotificationResponse:response2 withCompletionHandler:v71];

          v65 = v70;
LABEL_62:
          v21 = v182;
          goto LABEL_63;
        }

        if ([v66 isLocal] && objc_msgSend(v66, "isDefaultAction") && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v175 = v65;
          v84 = UNNotificationToUILocalNotification;
          notification2 = [response2 notification];
          v86 = v84[2](v84, notification2);

          v22 = v181;
          [(UIApplicationDelegate *)self->_delegate application:self didReceiveLocalNotification:v86];

          v65 = v175;
          v12 = v173;
          goto LABEL_62;
        }

        if ([v66 isLocal] && (objc_msgSend(v66, "isDefaultAction") & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          objc_opt_class();
          v176 = v65;
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([response2 userText], (v90 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v234 = @"UIUserNotificationActionResponseTypedTextKey";
            v161 = v90;
            v235 = v90;
            v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v235 forKeys:&v234 count:1];
          }

          else
          {
            v161 = 0;
            v164 = v65;
          }

          v21 = v182;
          v133 = UNNotificationToUILocalNotification;
          notification3 = [response2 notification];
          v160 = v133[2](v133, notification3);

          v158 = self->_delegate;
          actionIdentifier = [response2 actionIdentifier];
          v203[0] = MEMORY[0x1E69E9820];
          v203[1] = 3221225472;
          v203[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_15;
          v203[3] = &unk_1E70F6228;
          v203[4] = self;
          v203[5] = v66;
          v12 = v173;
          v204 = v173;
          v135 = _UIAutologgingVoidBlock(@"Warning: Application delegate received call to -application:handleActionWithIdentifier:forLocalNotification:withResponseInfo:completionHandler: but the completion handler was never called.", v203);
          [(UIApplicationDelegate *)v158 application:self handleActionWithIdentifier:actionIdentifier forLocalNotification:v160 withResponseInfo:v164 completionHandler:v135];

LABEL_167:
          v22 = v181;
          v65 = v176;
          goto LABEL_63;
        }

        v21 = v182;
        if ([v66 isLocal] && (objc_msgSend(v66, "isDefaultAction") & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v177 = v65;
          v94 = UNNotificationToUILocalNotification;
          notification4 = [response2 notification];
          userInfo3 = v94[2](v94, notification4);

          v162 = self->_delegate;
          actionIdentifier2 = [response2 actionIdentifier];
          v201[0] = MEMORY[0x1E69E9820];
          v201[1] = 3221225472;
          v201[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_16;
          v201[3] = &unk_1E70F6228;
          v201[4] = self;
          v201[5] = v66;
          v12 = v173;
          v202 = v173;
          v97 = _UIAutologgingVoidBlock(@"Warning: Application delegate received call to -application:handleActionWithIdentifier:forLocalNotification:completionHandler: but the completion handler was never called.", v201);
          [(UIApplicationDelegate *)v162 application:self handleActionWithIdentifier:actionIdentifier2 forLocalNotification:userInfo3 completionHandler:v97];

          v65 = v177;
          v22 = v181;
          v98 = v202;
LABEL_160:

          goto LABEL_63;
        }

        if ([v66 isRemote] && objc_msgSend(v66, "isDefaultAction") && (objc_opt_respondsToSelector() & 1) != 0)
        {
          notification5 = [response2 notification];
          request3 = [notification5 request];
          content3 = [request3 content];
          [content3 userInfo];
          v118 = v178 = v65;

          v21 = v182;
          v22 = v181;

          [(UIApplicationDelegate *)self->_delegate application:self didReceiveRemoteNotification:v118 fetchCompletionHandler:&__block_literal_global_2001_0];
LABEL_137:

          v65 = v178;
          v12 = v173;
          goto LABEL_63;
        }

        if ([v66 isRemote] && objc_msgSend(v66, "isDefaultAction") && (objc_opt_respondsToSelector() & 1) != 0)
        {
          notification6 = [response2 notification];
          request4 = [notification6 request];
          content4 = [request4 content];
          [content4 userInfo];
          v118 = v178 = v65;

          v21 = v182;
          v22 = v181;

          [(UIApplicationDelegate *)self->_delegate application:self didReceiveRemoteNotification:v118];
          goto LABEL_137;
        }

        if ([v66 isRemote] && (objc_msgSend(v66, "isDefaultAction") & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          objc_opt_class();
          v176 = v65;
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([response2 userText], (v121 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v232 = @"UIUserNotificationActionResponseTypedTextKey";
            v159 = v121;
            v233 = v121;
            v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
          }

          else
          {
            v157 = v65;
            v159 = 0;
          }

          notification7 = [response2 notification];
          request5 = [notification7 request];
          content5 = [request5 content];
          userInfo2 = [content5 userInfo];

          v139 = self->_delegate;
          actionIdentifier3 = [response2 actionIdentifier];
          v199[0] = MEMORY[0x1E69E9820];
          v199[1] = 3221225472;
          v199[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_18;
          v199[3] = &unk_1E70F6228;
          v199[4] = self;
          v199[5] = v66;
          v12 = v173;
          v200 = v173;
          v140 = _UIAutologgingVoidBlock(@"Warning: Application delegate received call to -application:handleActionWithIdentifier:forRemoteNotification:withResponseInfo:completionHandler: but the completion handler was never called.", v199);
          [(UIApplicationDelegate *)v139 application:self handleActionWithIdentifier:actionIdentifier3 forRemoteNotification:userInfo2 withResponseInfo:v157 completionHandler:v140];

          v21 = v182;
          goto LABEL_167;
        }

        if ([v66 isRemote] && (objc_msgSend(v66, "isDefaultAction") & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [response2 notification];
          v126 = v179 = v65;
          request6 = [v126 request];
          content6 = [request6 content];
          userInfo3 = [content6 userInfo];

          v129 = self->_delegate;
          actionIdentifier4 = [response2 actionIdentifier];
          v197[0] = MEMORY[0x1E69E9820];
          v197[1] = 3221225472;
          v197[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_19;
          v197[3] = &unk_1E70F6228;
          v197[4] = self;
          v197[5] = v66;
          v12 = v173;
          v198 = v173;
          v131 = _UIAutologgingVoidBlock(@"Warning: Application delegate received call to -application:handleActionWithIdentifier:forRemoteNotification:completionHandler: but the completion handler was never called.", v197);
          v132 = v129;
          v65 = v179;
          [(UIApplicationDelegate *)v132 application:self handleActionWithIdentifier:actionIdentifier4 forRemoteNotification:userInfo3 completionHandler:v131];

          v21 = v182;
          v22 = v181;
          v98 = v198;
          goto LABEL_160;
        }

        v12 = v173;
        if ([v66 canSendResponse])
        {
          [v66 sendResponse:0];
        }

LABEL_63:

        v19 = v180;
LABEL_154:
        if (++v23 != v21)
        {
          continue;
        }

        v141 = [v19 countByEnumeratingWithState:&v222 objects:v236 count:16];
        v21 = v141;
        if (v141)
        {
          goto LABEL_14;
        }

LABEL_169:

        v142 = v169;
        v143 = v142;
        if (self->_applicationBSActionHandlers)
        {
          v143 = v142;
          if ([v142 count])
          {
            v185 = 0u;
            v186 = 0u;
            v183 = 0u;
            v184 = 0u;
            v144 = self->_applicationBSActionHandlers;
            v145 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v183 objects:v230 count:16];
            v143 = v142;
            if (v145)
            {
              v146 = v145;
              v147 = *v184;
              v143 = v142;
LABEL_173:
              v148 = 0;
              v149 = v143;
              while (1)
              {
                if (*v184 != v147)
                {
                  objc_enumerationMutation(v144);
                }

                v143 = [*(*(&v183 + 1) + 8 * v148) _respondToApplicationActions:v149 fromTransitionContext:v171];

                if (![v143 count])
                {
                  break;
                }

                ++v148;
                v149 = v143;
                if (v146 == v148)
                {
                  v146 = [(NSMutableArray *)v144 countByEnumeratingWithState:&v183 objects:v230 count:16];
                  if (v146)
                  {
                    goto LABEL_173;
                  }

                  break;
                }
              }
            }

            v12 = v173;
          }
        }

        if ([v143 count])
        {
          [(UIApplication *)self _handlePlatformSpecificActions:v143 forScene:v170 withTransitionContext:v171];
        }

        v150 = *(&self->_applicationFlags + 1);
        shouldTakeKeyboardFocus = [v171 shouldTakeKeyboardFocus];
        v152 = *(&self->_applicationFlags + 1);
        v153 = shouldTakeKeyboardFocus | (v152 >> 38) & 1;
        v154 = 0x4000000000;
        if (!v153)
        {
          v154 = 0;
        }

        *(&self->_applicationFlags + 1) = v154 | v152 & 0xFFFFFFBFFFFFFFFFLL;
        if ((v150 & 0x4000000000) == 0 && v153)
        {
          v155 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
          [v155 restorePreservedInputViewsIfNecessary];
        }

        return;
      case 27:
        [(UIApplication *)self _applicationHandleIntentForwardingAction:v24];
        goto LABEL_154;
      case 31:
        [v24 fulfillRequest];
        goto LABEL_154;
      case 32:
        v72 = v24;
        notification8 = [v72 notification];
        currentNotificationCenter3 = [MEMORY[0x1E6983308] currentNotificationCenter];
        delegate3 = [currentNotificationCenter3 delegate];
        v76 = objc_opt_respondsToSelector();

        if (v76)
        {
          [delegate3 userNotificationCenter:currentNotificationCenter3 openSettingsForNotification:notification8];
        }

        v22 = v181;
        goto LABEL_154;
      case 33:
        payload5 = v24;
        _bannerManager = [v12 _bannerManager];
        bannerContent = [payload5 bannerContent];
        v30 = [_bannerManager bannerWithContent:bannerContent];

        if ([payload5 tappable])
        {
          v195[0] = MEMORY[0x1E69E9820];
          v195[1] = 3221225472;
          v195[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_20;
          v195[3] = &unk_1E70F3590;
          v196 = payload5;
          [v30 addTapHandler:v195];
        }

        v193[0] = MEMORY[0x1E69E9820];
        v193[1] = 3221225472;
        v193[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_21;
        v193[3] = &unk_1E70F3590;
        v194 = v30;
        persistedIdentifiers = v30;
        [payload5 setInvalidationHandler:v193];
        objc_setAssociatedObject(persistedIdentifiers, "action", payload5, 1);
        [persistedIdentifiers present];

        goto LABEL_74;
      case 34:
        v51 = v24;
        v52 = [(UIApplication *)self _openSessionsIncludingInternal:1];
        v191[0] = MEMORY[0x1E69E9820];
        v191[1] = 3221225472;
        v191[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_23;
        v191[3] = &unk_1E711DA48;
        payload5 = v51;
        v192 = payload5;
        v53 = [v52 objectsPassingTest:v191];

        v174 = v53;
        anyObject = [v53 anyObject];
        v55 = anyObject;
        if (anyObject)
        {
          v56 = anyObject;
        }

        else
        {
          v99 = [UISceneSession alloc];
          persistentIdentifier = [payload5 persistentIdentifier];
          v56 = [(UISceneSession *)v99 _initWithPersistentIdentifier:persistentIdentifier sessionRole:@"UIWindowSceneSessionRoleApplication" configurationName:0];

          v21 = v182;
        }

        if ([v56 _configurationNeedsReevalulation])
        {
          [(UIApplication *)self _removeSessionFromSessionSet:v56];
          v101 = [UISceneSession alloc];
          persistentIdentifier2 = [payload5 persistentIdentifier];
          v103 = [(UISceneSession *)v101 _initWithPersistentIdentifier:persistentIdentifier2 sessionRole:@"UIWindowSceneSessionRoleApplication" configurationName:0];

          v56 = v103;
        }

        if ((*(&self->_applicationFlags + 7) & 0x10) == 0)
        {
          goto LABEL_149;
        }

        v104 = objc_opt_new();
        v105 = MEMORY[0x1E695DFD8];
        action3 = [payload5 action];
        v107 = [v105 setWithObject:action3];
        _init = [[UISceneSession alloc] _init];
        v109 = [(UIScene *)UIWindowScene _connectionOptionsForScene:0 withSpecification:v104 transitionContext:0 actions:v107 sceneSession:_init];

        v110 = [UISceneConnectionOptions alloc];
        v111 = objc_opt_new();
        v112 = [(UISceneConnectionOptions *)&v110->super.isa _initWithConnectionOptionsContext:v109 fbsScene:0 specification:v111];

        v113 = [(UIApplication *)self _openSessionsIncludingInternal:1];
        if ([v113 containsObject:0])
        {
          _configurationNeedsReevalulation = [v56 _configurationNeedsReevalulation];

          if ((_configurationNeedsReevalulation & 1) == 0)
          {
            goto LABEL_148;
          }
        }

        else
        {
        }

        v122 = [(UIApplicationDelegate *)self->_delegate application:self configurationForConnectingSceneSession:v56 options:v112];
        [v56 _updateConfiguration:v122];

LABEL_148:
        v12 = v173;
        v19 = v180;
        v21 = v182;
LABEL_149:
        v123 = v56;
        -[UIApplication _appendSessionToSessionSet:save:](self, "_appendSessionToSessionSet:save:", v123, [v170 isPersistable]);
        v22 = v181;
        if ([payload5 canSendResponse])
        {
          persistentIdentifier3 = [v123 persistentIdentifier];
          v125 = [UISceneProposalActionResponse responseWithPersistentIdentifier:persistentIdentifier3];
          [payload5 sendResponse:v125];
        }

        v47 = v192;
LABEL_152:

LABEL_153:
        goto LABEL_154;
      case 35:
        payload5 = v24;
        persistedIdentifiers = [payload5 persistedIdentifiers];
        if (persistedIdentifiers)
        {
          [UIApp _discardSceneSessionsWithPersistentIdentifiers:persistedIdentifiers skippingPersistenceDeletion:0];
        }

LABEL_74:

        goto LABEL_153;
      case 36:
        sessionIdentifier = [v12 statusBarManager];
        [sessionIdentifier handleTapAction:v24];
LABEL_116:

        goto LABEL_154;
      case 37:
        [(UIApplication *)self _wakeTimerFired];
        goto LABEL_154;
      case 39:
        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        payload5 = [(UIApplication *)self windows];
        v37 = [payload5 countByEnumeratingWithState:&v187 objects:v231 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v188;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v188 != v39)
              {
                objc_enumerationMutation(payload5);
              }

              [*(*(&v187 + 1) + 8 * i) _resetFocusEventRecognizer];
            }

            v38 = [payload5 countByEnumeratingWithState:&v187 objects:v231 count:16];
          }

          while (v38);
        }

        goto LABEL_153;
      case 43:
        [(UIApplication *)self _applicationHandleLinkConnectionAction:v24];
        goto LABEL_154;
      case 46:
        [v24 _handleActionForWindowScene:v12];
        goto LABEL_154;
      default:
        [v169 addObject:v24];
        goto LABEL_154;
    }
  }
}

void __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_2;
  v2[3] = &unk_1E7107CE8;
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) canSendResponse];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_3;
    v6[3] = &unk_1E70F32F0;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v6[5] = v4;
    return [v5 _updateStateRestorationArchiveForBackgroundEvent:v6 saveState:1 exitIfCouldNotRestoreState:1 updateSnapshot:v4 != 10 windowScene:v3];
  }

  return result;
}

void __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E69DEBF0] responseWithResult:*(a1 + 40)];
  [v1 sendResponse:v2];
}

void __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_4(uint64_t a1)
{
  [UIApp applicationState];
  [*(*(a1 + 32) + 16) methodForSelector:sel_application_didReceiveRemoteNotification_fetchCompletionHandler_];
  entr_act_modify();
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_5;
    block[3] = &unk_1E70F6228;
    v2 = *(a1 + 40);
    v3 = *(a1 + 32);
    v7 = v2;
    v8 = v3;
    v9 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if ([*(a1 + 40) canSendResponse])
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E69DEBF0] responseWithResult:1];
    [v4 sendResponse:v5];
  }
}

void __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) canSendResponse])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_6;
    v3[3] = &unk_1E70F3590;
    v2 = *(a1 + 40);
    v4 = *(a1 + 32);
    [v2 _updateStateRestorationArchiveForBackgroundEvent:v3 saveState:1 exitIfCouldNotRestoreState:1 updateSnapshot:1 windowScene:*(a1 + 48)];
  }
}

void __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E69DEBF0] responseWithResult:0];
  [v1 sendResponse:v2];
}

void __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_9(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_10;
  v2[3] = &unk_1E70F6B40;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_10(void *a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_11;
  v4[3] = &unk_1E70F35B8;
  v2 = a1[4];
  v3 = a1[6];
  v4[4] = a1[5];
  v5 = v3;
  [v2 _updateStateRestorationArchiveForBackgroundEvent:v4 saveState:1 exitIfCouldNotRestoreState:1 updateSnapshot:1 windowScene:a1[7]];
}

uint64_t __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_11(uint64_t a1)
{
  if ([*(a1 + 32) canSendResponse])
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x1E698E600] response];
    [v2 sendResponse:v3];
  }

  v4 = MEMORY[0x1E695AC78];
  v5 = *(a1 + 40);

  return [v4 _releaseProcessAssertionForSessionIdentifier:v5];
}

void __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_12(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) canSendResponse])
  {
    v4 = *(a1 + 32);
    v5 = [UIWillPresentNotificationActionResponse responseWithOptions:a2];
    [v4 sendResponse:v5];
  }
}

void __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_21(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_22;
  block[3] = &unk_1E70F3590;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __91__UIApplication__handleNonLaunchSpecificActions_forScene_withTransitionContext_completion___block_invoke_23(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 persistentIdentifier];
  v6 = [*(a1 + 32) persistentIdentifier];
  v7 = [v5 isEqualToString:v6];

  *a3 = v7;
  return v7;
}

- (void)_updateStateRestorationArchiveForBackgroundEvent:(id)event saveState:(BOOL)state exitIfCouldNotRestoreState:(BOOL)restoreState updateSnapshot:(BOOL)snapshot windowScene:(id)scene
{
  restoreStateCopy = restoreState;
  stateCopy = state;
  v34 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  sceneCopy = scene;
  if (([sceneCopy _isActive] & 1) != 0 || -[UIApplication _isActivating](self, "_isActivating"))
  {
    if (eventCopy)
    {
      eventCopy[2](eventCopy);
    }
  }

  else
  {
    if (stateCopy && restoreStateCopy && (*(&self->_applicationFlags + 11) & 0x10) != 0)
    {
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_MONOTONIC_RAW_APPROX, &__tp);
      v14 = __tp.tv_sec - self->_couldNotRestoreStateWhenLockedTime;
      v15 = *(__UILogGetCategoryCachedImpl("ApplicationStateRestoration", &qword_1EA993090) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v33 = v14;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Application could not restore state when launched in background while locked (%{public}ld seconds ago). Skipping snapshot/state save when asked to update snapshot in background, and terminating app.", buf, 0xCu);
      }

      if (v14 >= 30)
      {
        v16 = *(__UILogGetCategoryCachedImpl("ApplicationStateRestoration", &qword_1EA993098) + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v33 = v14;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Exiting after being unable to access state restoration files - but it's been %{public}ld seconds since we tried to access them!", buf, 0xCu);
        }

        if (os_variant_has_internal_diagnostics())
        {
          v17 = objc_alloc_init(getSDRDiagnosticReporterClass());
          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          v20 = [v17 signatureWithDomain:@"UIKit" type:@"Crash" subType:@"LongTimeBeforeLockedStateRestorationExit" detectedProcess:bundleIdentifier triggerThresholdValues:0];

          v21 = dispatch_semaphore_create(0);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __130__UIApplication__updateStateRestorationArchiveForBackgroundEvent_saveState_exitIfCouldNotRestoreState_updateSnapshot_windowScene___block_invoke;
          v29[3] = &unk_1E70F97A8;
          v30 = v21;
          v22 = v21;
          [v17 snapshotWithSignature:v20 duration:0 events:0 payload:0 actions:v29 reply:0.0];
          dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      [(UIApplication *)self terminateWithSuccess];
    }

    if (([sceneCopy _sceneSessionRoleIsCarPlayOrNonInteractiveExternal] & 1) == 0)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __130__UIApplication__updateStateRestorationArchiveForBackgroundEvent_saveState_exitIfCouldNotRestoreState_updateSnapshot_windowScene___block_invoke_2;
      v23[3] = &unk_1E710C978;
      v24 = sceneCopy;
      selfCopy = self;
      snapshotCopy = snapshot;
      v28 = stateCopy;
      v26 = eventCopy;
      [(UIApplication *)self _performBlockAfterCATransactionCommitSynchronizes:v23];
    }
  }
}

uint64_t __130__UIApplication__updateStateRestorationArchiveForBackgroundEvent_saveState_exitIfCouldNotRestoreState_updateSnapshot_windowScene___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) activationState] == 2)
  {
    [*(a1 + 32) _setIsRespondingToLifecycleEvent:1];
    v2 = [*(a1 + 32) _isSuspendedEventsOnly];
    if ((v2 & 1) == 0)
    {
      [*(a1 + 32) _prepareForResume];
    }

    +[UIScreen _prepareScreensForAppResume];
    v3 = [*(a1 + 40) _updateDefaultImage];
    if (*(a1 + 56) == 1 && (v3 & 1) == 0)
    {
      [*(a1 + 40) _saveSnapshotWithName:@"UIApplicationAutomaticSnapshotDefault"];
    }

    if (*(a1 + 57) == 1)
    {
      [*(a1 + 40) _saveApplicationPreservationStateIfSupported];
    }

    if ((v2 & 1) == 0)
    {
      [*(a1 + 32) _prepareForSuspend];
    }

    [*(a1 + 32) _setIsRespondingToLifecycleEvent:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_updateSnapshotAndStateRestorationWithAction:(id)action windowScene:(id)scene
{
  actionCopy = action;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__UIApplication__updateSnapshotAndStateRestorationWithAction_windowScene___block_invoke;
  v8[3] = &unk_1E70F3590;
  v9 = actionCopy;
  v7 = actionCopy;
  [(UIApplication *)self _updateStateRestorationArchiveForBackgroundEvent:v8 saveState:1 exitIfCouldNotRestoreState:1 updateSnapshot:1 windowScene:scene];
}

uint64_t __74__UIApplication__updateSnapshotAndStateRestorationWithAction_windowScene___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canSendResponse];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 sendResponse:0];
  }

  return result;
}

- (void)_updateSnapshotForBackgroundApplication:(BOOL)application
{
  applicationCopy = application;
  v10 = *MEMORY[0x1E69E9840];
  _mainScene = [(UIApplication *)self _mainScene];
  if (_mainScene)
  {
    v6 = [(UIScene *)UIWindowScene _sceneForFBSScene:_mainScene];
    [(UIApplication *)self _updateStateRestorationArchiveForBackgroundEvent:0 saveState:applicationCopy exitIfCouldNotRestoreState:0 updateSnapshot:1 windowScene:v6];
  }

  else
  {
    v7 = *(__UILogGetCategoryCachedImpl("Application", &_updateSnapshotForBackgroundApplication____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[UIApplication _updateSnapshotForBackgroundApplication:]";
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s called but main scene is nil, so skipping snapshot", &v8, 0xCu);
    }
  }
}

- (void)_saveRestorationUserActivityStateForScene:(id)scene
{
  sceneCopy = scene;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [_UISceneUserActivityManager _saveRestorationStateForScene:sceneCopy];
  }
}

- (void)_setReachabilitySupported:(BOOL)supported
{
  supportedCopy = supported;
  _mainScene = [(UIApplication *)self _mainScene];
  v4 = [(UIScene *)UIWindowScene _sceneForFBSScene:_mainScene];
  [v4 _setReachabilitySupported:supportedCopy forReason:@"UIApplication _setReachabilitySupported (deprecated)"];
}

- (void)_findBestActivityToMakeCurrent:(id)current
{
  currentCopy = current;
  if ((*(&self->_applicationFlags + 2) & 0x10) != 0 && [(UIActivityContinuationManager *)self->_activityContinuationManager activityContinuationsAreBeingTracked])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__UIApplication__findBestActivityToMakeCurrent___block_invoke;
    block[3] = &unk_1E70F3590;
    v6 = currentCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __48__UIApplication__findBestActivityToMakeCurrent___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _activityContinuationSuitableToBecomeCurrent];
  if (v1)
  {
    v2 = v1;
    [v1 becomeCurrent];
    v1 = v2;
  }
}

- (id)_localizedApplicationName
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleProxyForCurrentProcess = [MEMORY[0x1E69635E0] bundleProxyForCurrentProcess];
  localizedName = [bundleProxyForCurrentProcess localizedName];

  if (!localizedName)
  {
    localizedInfoDictionary = [mainBundle localizedInfoDictionary];
    v6 = *MEMORY[0x1E695E120];
    localizedName = [localizedInfoDictionary objectForKey:*MEMORY[0x1E695E120]];

    if (!localizedName)
    {
      infoDictionary = [mainBundle infoDictionary];
      localizedName = [infoDictionary objectForKey:v6];

      if (!localizedName)
      {
        localizedInfoDictionary2 = [mainBundle localizedInfoDictionary];
        v9 = *MEMORY[0x1E695E4F8];
        localizedName = [localizedInfoDictionary2 objectForKey:*MEMORY[0x1E695E4F8]];

        if (!localizedName)
        {
          infoDictionary2 = [mainBundle infoDictionary];
          localizedName = [infoDictionary2 objectForKey:v9];
        }
      }
    }
  }

  return localizedName;
}

+ (id)_applicationNameForMenus
{
  v3 = +[UIMenuSystem mainSystem];
  _overrideApplicationName = [v3 _overrideApplicationName];

  if ([_overrideApplicationName length])
  {
    if (_overrideApplicationName)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__UIApplication__applicationNameForMenus__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1EA9930A8[0] != -1)
  {
    dispatch_once(qword_1EA9930A8, block);
  }

  _overrideApplicationName = qword_1EA9930A0;
LABEL_8:

  return _overrideApplicationName;
}

void __41__UIApplication__applicationNameForMenus__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = qword_1EA9930A0;
  v34 = v2;
  if (v2)
  {
    v4 = qword_1EA9930A0 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF58] currentLocale];
    v6 = [v5 countryCode];
    v7 = [v6 isEqualToString:@"cn"];

    if (v7)
    {
      v8 = [v34 objectForInfoDictionaryKey:@"CFBundleName#CH"];
      v9 = [v8 copyWithZone:0];
      v10 = qword_1EA9930A0;
      qword_1EA9930A0 = v9;

      v11 = [*(a1 + 32) _sanitizeBundleString:qword_1EA9930A0];
      v12 = qword_1EA9930A0;
      qword_1EA9930A0 = v11;
    }

    v3 = qword_1EA9930A0;
    if (!qword_1EA9930A0)
    {
      v13 = [v34 objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
      v14 = [v13 copyWithZone:0];
      v15 = qword_1EA9930A0;
      qword_1EA9930A0 = v14;

      v16 = [*(a1 + 32) _sanitizeBundleString:qword_1EA9930A0];
      v17 = qword_1EA9930A0;
      qword_1EA9930A0 = v16;

      v3 = qword_1EA9930A0;
      if (!qword_1EA9930A0)
      {
        v18 = [v34 objectForInfoDictionaryKey:*MEMORY[0x1E695E4F8]];
        v19 = [v18 copyWithZone:0];
        v20 = qword_1EA9930A0;
        qword_1EA9930A0 = v19;

        v21 = [*(a1 + 32) _sanitizeBundleString:qword_1EA9930A0];
        v22 = qword_1EA9930A0;
        qword_1EA9930A0 = v21;

        v3 = qword_1EA9930A0;
        if (!qword_1EA9930A0)
        {
          v23 = [v34 objectForInfoDictionaryKey:*MEMORY[0x1E695E4E8]];
          v24 = [v23 copyWithZone:0];
          v25 = qword_1EA9930A0;
          qword_1EA9930A0 = v24;

          v26 = [*(a1 + 32) _sanitizeBundleString:qword_1EA9930A0];
          v27 = qword_1EA9930A0;
          qword_1EA9930A0 = v26;

          v3 = qword_1EA9930A0;
          if (!qword_1EA9930A0)
          {
            v28 = [v34 objectForInfoDictionaryKey:@"NSExecutable"];
            v29 = [v28 copyWithZone:0];
            v30 = qword_1EA9930A0;
            qword_1EA9930A0 = v29;

            v31 = [*(a1 + 32) _sanitizeBundleString:qword_1EA9930A0];
            v32 = qword_1EA9930A0;
            qword_1EA9930A0 = v31;

            v3 = qword_1EA9930A0;
          }
        }
      }
    }
  }

  if (![v3 length])
  {
    v33 = qword_1EA9930A0;
    qword_1EA9930A0 = @"<unknown>";
  }
}

+ (id)_sanitizeBundleString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v5 = [stringCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([v5 length])
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (void)_applicationShouldRequestHealthAuthorization
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(UIApplicationDelegate *)delegate applicationShouldRequestHealthAuthorization:self];
  }
}

- (void)_handleApplicationShortcutAction:(id)action onWindowScene:(id)scene
{
  actionCopy = action;
  sceneCopy = scene;
  uiShortcutItem = [actionCopy uiShortcutItem];
  if (uiShortcutItem && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__UIApplication__handleApplicationShortcutAction_onWindowScene___block_invoke;
    v10[3] = &unk_1E70F4638;
    v11 = sceneCopy;
    selfCopy = self;
    v13 = actionCopy;
    [(UIApplicationDelegate *)delegate application:self performActionForShortcutItem:uiShortcutItem completionHandler:v10];
  }
}

void __64__UIApplication__handleApplicationShortcutAction_onWindowScene___block_invoke(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = a1[5];
    v3 = a1[6];

    [v2 _updateSnapshotAndStateRestorationWithAction:v3 windowScene:?];
  }

  else
  {
    v4 = *(__UILogGetCategoryCachedImpl("Application", &__kitLocation_block_invoke_5___s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[UIApplication _handleApplicationShortcutAction:onWindowScene:]_block_invoke";
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%s called but scene is nil, so skipping snapshot", &v5, 0xCu);
    }
  }
}

- (void)setShortcutItems:(NSArray *)shortcutItems
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = shortcutItems;
  shortcutService = [(UIApplication *)self shortcutService];

  if (!shortcutService)
  {
    v6 = objc_alloc_init(getSBSApplicationShortcutServiceClass());
    [(UIApplication *)self setShortcutService:v6];
  }

  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        sbsShortcutItem = [*(*(&v15 + 1) + 8 * v12) sbsShortcutItem];
        if (sbsShortcutItem)
        {
          [array addObject:sbsShortcutItem];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  shortcutService2 = [(UIApplication *)self shortcutService];
  [shortcutService2 updateDynamicApplicationShortcutItems:array forBundleIdentifier:0];
}

- (void)_handleDaemonApplicationActivationWithScene:(id)scene completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  completionCopy = completion;
  v8 = +[_UISceneLifecycleMultiplexer sharedInstance];
  activatedOnce = [v8 activatedOnce];

  *&self->_applicationFlags |= 0x400000000uLL;
  __IsRunningTests = 0;
  if (activatedOnce)
  {
    v10 = qword_1EA992DE8;
    qword_1EA992DE8 = @"resume";

    __wasResumed = 1;
    getpid();
    v11 = memorystatus_control();
    v12 = *(__UILogGetCategoryCachedImpl("AppLifecycle", &qword_1EA9930B0) + 8);
    if (os_signpost_enabled(v12))
    {
      v16[0] = 67240192;
      v16[1] = v11;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AppResume", " enableTelemetry=YES WasFrozen=%{signpost.telemetry:number1,public,name=WasFrozen}i", v16, 8u);
    }
  }

  else
  {
    settings = [sceneCopy settings];
    if ([settings isForeground])
    {
      v14 = @"launch";
    }

    else
    {
      v14 = @"launch suspended";
    }

    objc_storeStrong(&qword_1EA992DE8, v14);

    __wasResumed = 0;
  }

  _requestHardwareEventsIfNeeded();
  _firstCommitBlock = [(UIApplication *)self _firstCommitBlock];
  _firstCommitBlock[2]();
  [(UIApplication *)self _runWithDaemonScene:sceneCopy completion:completionCopy];

  byte_1EA992DA9 = 1;
  entr_act_end();
}

- (void)_configureLaunchOptions:(id)options
{
  optionsCopy = options;
  if (optionsCopy)
  {
    v14 = optionsCopy;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    environment = [processInfo environment];

    v6 = [environment objectForKey:@"__PPT_ForTesting"];

    if (!v6)
    {
      __IsRunningTests = [v14 forTesting];
    }

    v7 = [environment objectForKey:@"__PPT_SignpostID"];

    if (!v7)
    {
      __ActivationSignpostID = [v14 signpostID];
    }

    v8 = [environment objectForKey:@"__PPT_LaunchMetricsPayload"];

    if (!v8)
    {
      launchMetricsPayload = [v14 launchMetricsPayload];
      v10 = __ActivationMetricsPayload;
      __ActivationMetricsPayload = launchMetricsPayload;
    }

    v11 = [environment objectForKey:@"__PPT_LaunchTime"];

    if (!v11)
    {
      [v14 userLaunchEventTime];
      __LaunchTime = v12;
      [v14 execTime];
      __ExecOrResumeTime = v13;
    }

    byte_1EA992DA1 = [v14 safeMode];

    optionsCopy = v14;
  }
}

- (void)_initiateLaunchActionsBackgrounded:(BOOL)backgrounded firstActivation:(BOOL)activation
{
  backgroundedCopy = backgrounded;
  v14 = *MEMORY[0x1E69E9840];
  if (activation)
  {
    v6 = @"launch";
    if (backgrounded)
    {
      v6 = @"launch suspended";
    }

    v7 = v6;
  }

  else
  {
    v7 = @"resume";
  }

  v8 = qword_1EA992DE8;
  qword_1EA992DE8 = v7;

  if (__IsRunningTests == 1)
  {
    [UIApp startedTest:qword_1EA992DE8];
  }

  __wasResumed = !activation;
  if (!activation)
  {
    getpid();
    v9 = memorystatus_control();
    v10 = *(__UILogGetCategoryCachedImpl("AppLifecycle", &qword_1EA9930B8) + 8);
    if (os_signpost_enabled(v10))
    {
      v11[0] = 67240448;
      v11[1] = v9;
      v12 = 1026;
      v13 = !backgroundedCopy;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AppResume", " enableTelemetry=YES WasFrozen=%{signpost.telemetry:number1,public,name=WasFrozen}i IsForeground=%{signpost.telemetry:number2,public,name=IsForeground}i", v11, 0xEu);
    }
  }
}

- (void)_updateOrientation
{
  v3 = [UIDevice currentDeviceOrientationAllowingAmbiguous:1];
  v4 = +[UIDevice currentDevice];
  orientation = [v4 orientation];

  if (v3 != orientation)
  {
    v6 = +[UIDevice currentDevice];
    [v6 setOrientation:v3 animated:{-[UIApplication isSuspended](self, "isSuspended") ^ 1}];
  }
}

- (void)_handleScreenshot
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIApplicationUserDidTakeScreenshotNotification" object:UIApp userInfo:0];
}

- (void)_resendHoverEventForWindow:(id)window
{
  _contextId = [window _contextId];
  if (_contextId)
  {
    v5 = _contextId;
    eventFetcher = self->_eventFetcher;

    [(UIEventFetcher *)eventFetcher _resendHoverEventForContextID:v5];
  }
}

- (void)_setHIDGameControllerEventObserver:(id)observer onQueue:(id)queue
{
  queueCopy = queue;
  observerCopy = observer;
  v7 = _Block_copy(observerCopy);
  HIDGameControllerEventObserver = self->_HIDGameControllerEventObserver;
  self->_HIDGameControllerEventObserver = v7;

  HIDGameControllerEventQueue = self->_HIDGameControllerEventQueue;
  self->_HIDGameControllerEventQueue = queueCopy;
  v10 = queueCopy;

  [(UIEventFetcher *)self->_eventFetcher _setHIDGameControllerEventObserver:observerCopy onQueue:v10];
}

- (void)_removeHIDGameControllerEventObserver
{
  HIDGameControllerEventObserver = self->_HIDGameControllerEventObserver;
  self->_HIDGameControllerEventObserver = 0;

  HIDGameControllerEventQueue = self->_HIDGameControllerEventQueue;
  self->_HIDGameControllerEventQueue = 0;

  eventFetcher = self->_eventFetcher;

  [(UIEventFetcher *)eventFetcher _removeHIDGameControllerEventObserver];
}

- (__CFRunLoop)_eventFetchRunLoop
{
  eventFetcher = self->_eventFetcher;
  if (eventFetcher)
  {
    return eventFetcher->_cfRunLoop;
  }

  else
  {
    return 0;
  }
}

- (void)_sendEventToGameControllerObserver:(__IOHIDEvent *)observer
{
  if (self->_HIDGameControllerEventObserver)
  {
    if (self->_HIDGameControllerEventQueue)
    {
      CFRetain(observer);
      HIDGameControllerEventQueue = self->_HIDGameControllerEventQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __52__UIApplication__sendEventToGameControllerObserver___block_invoke;
      v6[3] = &unk_1E70F32F0;
      v6[4] = self;
      v6[5] = observer;
      dispatch_async(HIDGameControllerEventQueue, v6);
    }
  }
}

void __52__UIApplication__sendEventToGameControllerObserver___block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 360) + 16))();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

- (void)_handleHIDEvent:(__IOHIDEvent *)event
{
  Type = IOHIDEventGetType();
  if (Type == 32)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    _forceStageObservable = [(UIApplication *)self _forceStageObservable];
    v11 = _forceStageObservable;
    if (IntegerValue > 9)
    {
      eventCopy = 0;
    }

    else
    {
      eventCopy = event;
    }

    [_forceStageObservable receiveObservedValue:eventCopy];
  }

  else if (Type == 10 && self && IOHIDEventGetIntegerValue() == 1)
  {
    v6 = IOHIDEventGetIntegerValue();
    if ((v6 - 101) >= 6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 - 100;
    }

    [(UIApplication *)self _deviceOrientationDidChange:v7];
  }
}

void __45__UIApplication__internalHandlePressesEvent___block_invoke()
{
  v0 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v0, sel__handlePhysicalButtonEvent_);
  v2 = objc_opt_class();
  if (MethodImplementation != class_getMethodImplementation(v2, sel__handlePhysicalButtonEvent_) && ([UIApp isFrontBoard] & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF UIKIT: Invalid use of FrontBoard specific SPI. Please remove.", buf, 2u);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &__kitLocation_block_invoke_6___s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: Invalid use of FrontBoard specific SPI. Please remove.", v5, 2u);
      }
    }
  }
}

- (uint64_t)_internalHandleHIDEventBypassingUIEvent:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__UIApplication__internalHandleHIDEventBypassingUIEvent___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = result;
    if (qword_1EA9930C8 != -1)
    {
      dispatch_once(&qword_1EA9930C8, block);
    }

    if (byte_1EA992DCA == 1)
    {
      return [v3 _handleHIDEventBypassingUIEvent:a2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __57__UIApplication__internalHandleHIDEventBypassingUIEvent___block_invoke()
{
  v0 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v0, sel__handleHIDEventBypassingUIEvent_);
  v2 = objc_opt_class();
  if (MethodImplementation == class_getMethodImplementation(v2, sel__handleHIDEventBypassingUIEvent_))
  {
    result = 0;
  }

  else
  {
    result = [UIApp isFrontBoard];
  }

  byte_1EA992DCA = result;
  return result;
}

- (BOOL)handleEvent:(__GSEvent *)event withNewEvent:(id)newEvent
{
  newEventCopy = newEvent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (![newEventCopy _gsEvent])
    {
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }

    Type = GSEventGetType();
    GSEventRecord = _GSEventGetGSEventRecord();
    applicationFlags = self->_applicationFlags;
    if ((applicationFlags & 0x100000000) == 0 && Type != 2000)
    {
      NSLog(&cfstr_Kgseventapplic.isa, Type);
      goto LABEL_13;
    }

    if (Type > 1099)
    {
      if (Type <= 2004)
      {
        switch(Type)
        {
          case 0x44C:
            [UIApp vibrateForDuration:*(GSEventRecord + 88)];
            break;
          case 0x44F:
            LODWORD(v10) = *(GSEventRecord + 88);
            [UIApp setBacklightLevel:v10];
            break;
          case 0x7D4:
            BSSetMainThreadPriorityFixedForUI();
            *&self->_applicationFlags &= ~0x200000000uLL;
            [(UIApplication *)self applicationDidEndResumeAnimation];
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter postNotificationName:@"UIApplicationDidEndResumeAnimationNotification" object:self userInfo:0];

            [(UIApplication *)self _updateOrientation];
            goto LABEL_13;
        }
      }

      else if (Type > 2013)
      {
        if (Type == 2015)
        {
          SubType = GSEventGetSubType();
          if (SubType >= 4)
          {
            [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Received a resume active event with reason %d, which is not supported", GSEventGetSubType()}];
            v21 = 0xFFFFFFFFLL;
          }

          else
          {
            v21 = dword_18A6812E0[SubType];
          }

          [(UIApplication *)self _stopDeactivatingForReason:v21];
          goto LABEL_13;
        }

        if (Type == 2014)
        {
          v14 = GSEventGetSubType();
          if (v14 >= 4)
          {
            [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Received a resign active event with reason %d, which is not supported", GSEventGetSubType()}];
            v15 = 0xFFFFFFFFLL;
          }

          else
          {
            v15 = dword_18A6812E0[v14];
          }

          [(UIApplication *)self _deactivateForReason:v15];
          goto LABEL_13;
        }
      }

      else
      {
        if (Type == 2005)
        {
          byte_1EA992DA4 = 0;
          [(UIApplication *)self _updateHangTracer];
          BSSetMainThreadPriorityFixedForUI();
          *&self->_applicationFlags |= 0x200000000uLL;
          [(UIApplication *)self applicationDidBeginSuspendAnimation];
          v16 = MEMORY[0x1E695DF20];
          v17 = [MEMORY[0x1E696AD98] numberWithInt:GSEventGetSubType()];
          v18 = [v16 dictionaryWithObject:v17 forKey:@"Reason"];

          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 postNotificationName:@"UIApplicationWillBeginSuspendAnimationNotification" object:self userInfo:v18];

          goto LABEL_13;
        }

        if (Type == 2010)
        {
LABEL_13:
          LOBYTE(self) = 0;
          goto LABEL_14;
        }
      }
    }

    else
    {
      if (Type <= 22)
      {
        if ((Type - 10) < 2 || Type == 12 || Type == 14)
        {
          [(UIApplication *)self handleKeyEvent:event];
        }

        goto LABEL_9;
      }

      if (Type > 59)
      {
        if (Type == 60)
        {
          if ((applicationFlags & 0x8000000000000000) == 0)
          {
            CFPreferencesSynchronize(*MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
            standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
            [standardUserDefaults synchronize];
          }

          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) _initWithUTF8String:GSEventRecord + 88 maxLength:*(GSEventRecord + 72)];
          [(UIApplication *)self _handleUserDefaultsDidChange:v34];

          goto LABEL_13;
        }

        if (Type == 1014)
        {
          [UIApp lockDevice:event];
          goto LABEL_13;
        }
      }

      else if (Type == 23)
      {
        GSEventAccelerometerAxisX();
        v23 = v22;
        GSEventAccelerometerAxisY();
        v25 = v24;
        GSEventAccelerometerAxisZ();
        v27 = v26;
        v28 = +[UIAccelerometer sharedAccelerometer];
        GSEventGetTimestamp();
        [v28 _acceleratedInX:v23 y:v25 z:v27 timestamp:v29];

        *&v30 = v23;
        *&v31 = v25;
        *&v32 = v27;
        [UIApp acceleratedInX:v30 Y:v31 Z:v32];
      }

      else if (Type == 50)
      {
        [(UIApplication *)self _handleDeviceOrientationChangedEvent:event];
        goto LABEL_13;
      }
    }

LABEL_9:
    LOBYTE(self) = 1;
    goto LABEL_14;
  }

  v7 = newEventCopy;
  if (self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__UIApplication__internalHandlePressesEvent___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    if (qword_1EA9930C0 != -1)
    {
      dispatch_once(&qword_1EA9930C0, block);
    }

    LOBYTE(self) = [(UIApplication *)self _handlePressesEvent:v7];
  }

LABEL_14:
  return self;
}

- (void)_deviceOrientationDidChange:(_BYTE *)change
{
  if (change)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__UIApplication__deviceOrientationDidChange___block_invoke;
    v5[3] = &unk_1E70F32F0;
    v5[4] = change;
    v5[5] = a2;
    v3 = _Block_copy(v5);
    v4 = v3;
    if ((change[180] & 2) != 0)
    {
      [change __setQueuedOrientationChange:v3];
    }

    else
    {
      (*(v3 + 2))(v3);
    }
  }
}

void __45__UIApplication__deviceOrientationDidChange___block_invoke(uint64_t a1)
{
  v2 = +[UIDevice currentDevice];
  [v2 setOrientation:*(a1 + 40) animated:{objc_msgSend(*(a1 + 32), "isSuspended") ^ 1}];
}

- (void)_handleDeviceOrientationChangedEvent:(__GSEvent *)event
{
  v4 = GSEventDeviceOrientation();

  [(UIApplication *)self _deviceOrientationDidChange:v4];
}

- (id)_motionKeyWindow
{
  v14 = *MEMORY[0x1E69E9840];
  keyWindow = [(UIApplication *)self keyWindow];
  if (!keyWindow)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1, 0];
    keyWindow = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (keyWindow)
    {
      v4 = *v10;
      while (2)
      {
        for (i = 0; i != keyWindow; i = i + 1)
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v3);
          }

          v6 = *(*(&v9 + 1) + 8 * i);
          if ([v6 _needsShakesWhenInactive])
          {
            firstResponder = [v6 firstResponder];

            if (firstResponder)
            {
              keyWindow = v6;
              goto LABEL_13;
            }
          }
        }

        keyWindow = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (keyWindow)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return keyWindow;
}

- (void)sendEvent:(UIEvent *)event
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = event;
  [UIEventAttributionView _attemptAuthenticationWithEvent:v4];
  if ([(UIApplication *)self handleEvent:[(UIEvent *)v4 _gsEvent] withNewEvent:v4])
  {
    _dispatchWindows = [(UIEvent *)v4 _dispatchWindows];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDispatch", &sendEvent____s_category);
    if (*CategoryCachedImpl)
    {
      v19 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        *buf = 134218496;
        type = [(UIEvent *)v4 type];
        v29 = 2048;
        subtype = [(UIEvent *)v4 subtype];
        v31 = 2048;
        v32 = [_dispatchWindows count];
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "Sending UIEvent type: %li; subtype: %li; to windows: %lu", buf, 0x20u);
      }
    }

    [(UIEvent *)v4 _isTouchRoutingPolicyBased];
    [(UIEvent *)v4 _isPhysicalKeyEvent];
    [_dispatchWindows count];
    [(UIEvent *)v4 subtype];
    [(UIEvent *)v4 type];
    [(UIEvent *)v4 timestamp];
    _UIMachTimeForMediaTime(v7);
    kdebug_trace();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = _dispatchWindows;
    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          [v12 sendEvent:v4];
          v13 = +[UIEventSessionActionAnalytics sharedInstance];
          isFrontBoard = [(UIApplication *)self isFrontBoard];
          v15 = *(&self->_applicationFlags + 1);
          v17 = (v15 & 0x400000000) == 0;
          v16 = v15 & 0x1800000000;
          v17 = !v17 || v16 == 0x800000000;
          v18 = !v17;
          [v13 checkForUIEventSessionActionAnalytics:v4 forWindow:v12 isFrontBoard:isFrontBoard isFrontBoardTransitioningToForeground:v18];
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }
  }
}

- (void)_handleUnicodeEvent:(__IOHIDEvent *)event
{
  IOHIDEventGetFloatValue();
  v5 = v4;
  Children = IOHIDEventGetChildren();
  if (Children && (v7 = Children, CFArrayGetCount(Children) >= 1) && (ValueAtIndex = CFArrayGetValueAtIndex(v7, 0), IOHIDEventGetFloatValue(), v9 > v5))
  {

    [(UIApplication *)self _handleUnicodeEvent:ValueAtIndex];
  }

  else
  {
    v10 = IOHIDEventGetIntegerValue() - 1;
    if (v10 > 3)
    {
      v11 = 4;
    }

    else
    {
      v11 = qword_18A681308[v10];
    }

    IntegerValue = IOHIDEventGetIntegerValue();
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:IOHIDEventGetDataValue() length:IntegerValue encoding:v11];
    v13 = [UIPhysicalKeyboardEvent _eventWithInput:v15 inputFlags:128];
    v14 = +[UIKeyboardImpl sharedInstance];
    [v14 handleKeyEvent:v13];
  }
}

- (id)getKeyboardDevicePropertiesForSenderID:(unint64_t)d shouldUpdate:(BOOL)update usingSyntheticEvent:(BOOL)event
{
  updateCopy = update;
  v23 = *MEMORY[0x1E69E9840];
  if (!qword_1EA9930D8)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = qword_1EA9930D8;
    qword_1EA9930D8 = dictionary;
  }

  if (!qword_1EA9930E0)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    v11 = qword_1EA9930E0;
    qword_1EA9930E0 = v10;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  if ([qword_1EA9930E0 containsObject:v12])
  {
    goto LABEL_6;
  }

  if (updateCopy)
  {
    v14 = BKSHIDKeyboardGetDeviceProperties();
    if (v14)
    {
LABEL_9:
      v15 = v14;
      [qword_1EA9930D8 setObject:v14 forKeyedSubscript:v12];

      goto LABEL_10;
    }

    v17 = _UIHardwareKeyboardLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[UIApplication getKeyboardDevicePropertiesForSenderID:shouldUpdate:usingSyntheticEvent:]";
      v21 = 2048;
      dCopy = d;
      _os_log_error_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "%s, failed to fetch device property for senderID (%llu) use primary keyboard info instead.", &v19, 0x16u);
    }

    if (!event)
    {
      v14 = BKSHIDKeyboardGetDeviceProperties();
      if (v14)
      {
        goto LABEL_9;
      }

      v18 = _UIHardwareKeyboardLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315138;
        v20 = "[UIApplication getKeyboardDevicePropertiesForSenderID:shouldUpdate:usingSyntheticEvent:]";
        _os_log_error_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "%s, failed to fetch primary keyboard info.", &v19, 0xCu);
      }
    }

    [qword_1EA9930E0 addObject:v12];
LABEL_6:
    v13 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v13 = [qword_1EA9930D8 objectForKeyedSubscript:v12];
LABEL_11:

  return v13;
}

- (__GSKeyboard)GSKeyboardForHWLayout:(id)layout senderID:(unint64_t)d forceRebuild:(BOOL)rebuild createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v38 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  automaticHardwareLayout2 = layoutCopy;
  if (GSKeyboardForHWLayout_senderID_forceRebuild_createIfNeeded___keyboard)
  {
    v12 = 0;
  }

  else
  {
    v12 = !neededCopy;
  }

  if (!v12)
  {
    if (GSKeyboardForHWLayout_senderID_forceRebuild_createIfNeeded___keyboard)
    {
      if (!layoutCopy && rebuild)
      {
        goto LABEL_8;
      }
    }

    else if (!layoutCopy)
    {
LABEL_8:
      v13 = +[UIKeyboardInputModeController sharedInputModeController];
      hardwareInputMode = [v13 hardwareInputMode];
      automaticHardwareLayout = [hardwareInputMode automaticHardwareLayout];

      automaticHardwareLayout2 = automaticHardwareLayout;
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
    v17 = [(UIApplication *)self getKeyboardDevicePropertiesForSenderID:d shouldUpdate:0];
    v18 = v17;
    if (v17)
    {
      if (automaticHardwareLayout2)
      {
        layout = [v17 layout];
        v20 = [automaticHardwareLayout2 isEqualToString:layout] ^ 1;
      }

      else
      {
        LOBYTE(v20) = 0;
      }

      rebuild |= v20;
      v22 = _lastUsedKeyboardSenderID;
      if (!rebuild && _lastUsedKeyboardSenderID == d)
      {
        rebuild = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v22 = _lastUsedKeyboardSenderID;
    }

    if (v22 != d)
    {
      _lastUsedKeyboardSenderID = d;
    }

    if (v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = [(UIApplication *)self getKeyboardDevicePropertiesForSenderID:d shouldUpdate:1];
      if (!v23)
      {
LABEL_32:
        v21 = GSKeyboardForHWLayout_senderID_forceRebuild_createIfNeeded___keyboard;
        if (!rebuild && GSKeyboardForHWLayout_senderID_forceRebuild_createIfNeeded___keyboard)
        {
LABEL_52:

          goto LABEL_53;
        }

        if (!GSKeyboardForHWLayout_senderID_forceRebuild_createIfNeeded___keyboard)
        {
          standardType = -1;
          if (!automaticHardwareLayout2)
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        v23 = v18;
        goto LABEL_36;
      }
    }

    if (![v23 standardType] || objc_msgSend(v23, "standardType") == 1 || objc_msgSend(v23, "standardType") == 2)
    {
      standardType = [v23 standardType];
    }

    else
    {
      standardType = 2 * ([v23 countryCode] == 15);
    }

    if (!GSKeyboardForHWLayout_senderID_forceRebuild_createIfNeeded___keyboard)
    {
LABEL_47:
      v18 = v23;
      if (!automaticHardwareLayout2)
      {
LABEL_48:
        v26 = +[UIKeyboardInputModeController sharedInputModeController];
        hardwareInputMode2 = [v26 hardwareInputMode];
        automaticHardwareLayout2 = [hardwareInputMode2 automaticHardwareLayout];
      }

LABEL_49:
      GSKeyboardForHWLayout_senderID_forceRebuild_createIfNeeded___keyboard = GSKeyboardCreate();
      v28 = _UIHardwareKeyboardLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315650;
        v33 = "[UIApplication GSKeyboardForHWLayout:senderID:forceRebuild:createIfNeeded:]";
        v34 = 2112;
        v35 = automaticHardwareLayout2;
        v36 = 1024;
        v37 = standardType;
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_DEFAULT, "%s, New hardware layout is created with %@ layout and %d standardType.", &v32, 0x1Cu);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UITextInputCurrentKeyboardLayoutDidChangeNotification" object:0 userInfo:0];

      BKSHIDKeyboardSetLayout();
      v30 = [(UIApplication *)self getKeyboardDevicePropertiesForSenderID:d shouldUpdate:1];
      v21 = GSKeyboardForHWLayout_senderID_forceRebuild_createIfNeeded___keyboard;
      goto LABEL_52;
    }

    if (standardType != -1)
    {
LABEL_46:
      GSKeyboardRelease();
      goto LABEL_47;
    }

LABEL_36:
    HWKeyboardType = GSKeyboardGetHWKeyboardType();
    switch(HWKeyboardType)
    {
      case 202:
        standardType = 0;
        break;
      case 207:
        standardType = 2;
        break;
      case 203:
        standardType = 1;
        break;
      default:
        standardType = -1;
        break;
    }

    goto LABEL_46;
  }

  v21 = 0;
LABEL_53:

  return v21;
}

- (void)_hardwareKeyboardAvailabilityChanged:(id)changed
{
  v4 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v4 _isHardwareKeyboardAvailable];

  if (_isHardwareKeyboardAvailable)
  {

    [(UIApplication *)self _updateSerializableKeyCommandsForResponder:0];
  }
}

- (__GSKeyboard)_hardwareKeyboardForPhysicalKeyboardEvent:(id)event createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  eventCopy = event;
  if ([eventCopy _hidEvent])
  {
    [eventCopy _hidEvent];
    SenderID = IOHIDEventGetSenderID();
  }

  else
  {
    SenderID = 0;
  }

  v8 = [(UIApplication *)self GSKeyboardForHWLayout:0 senderID:SenderID forceRebuild:0 createIfNeeded:neededCopy];

  return v8;
}

- (void)_resetGSKeyboardModifierStateIfNecessary:(__IOHIDEvent *)necessary
{
  if (!IOHIDEventGetIntegerValue())
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v4 = IOHIDEventGetIntegerValue();
    IsGlobeKeyUsagePair = GSKeyboardIsGlobeKeyUsagePair();
    if (IsGlobeKeyUsagePair)
    {
      v6 = 0;
    }

    else
    {
      v6 = IntegerValue == 7;
    }

    v8 = v6 && (v4 & 0xFFFFFFFFFFFFFFF8) == 224;
    if (IsGlobeKeyUsagePair || v8)
    {
      if ([UIApp GSKeyboardForHWLayout:0 senderID:IOHIDEventGetSenderID() forceRebuild:0 createIfNeeded:0])
      {
        GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
      }
    }
  }
}

- (id)_responderForKeyEvents
{
  v3 = +[UIWindow _applicationKeyWindow];
  _responderForKeyEvents = [v3 _responderForKeyEvents];
  v5 = _responderForKeyEvents;
  if (_responderForKeyEvents)
  {
    self = _responderForKeyEvents;
  }

  selfCopy = self;

  return self;
}

- (id)_keyDownDictionary
{
  hardwareKeyDownCodeToEventMap = self->_hardwareKeyDownCodeToEventMap;
  if (!hardwareKeyDownCodeToEventMap)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_hardwareKeyDownCodeToEventMap;
    self->_hardwareKeyDownCodeToEventMap = v4;

    hardwareKeyDownCodeToEventMap = self->_hardwareKeyDownCodeToEventMap;
  }

  return hardwareKeyDownCodeToEventMap;
}

- (id)_pressInfoForPhysicalKeyboardEvent:(id)event
{
  eventCopy = event;
  _isKeyDown = [eventCopy _isKeyDown];
  v6 = objc_alloc_init(UIPressInfo);
  -[UIPressInfo setType:](v6, "setType:", [eventCopy _keyCode] + 2000);
  _isKeyDown2 = [eventCopy _isKeyDown];
  v8 = 0.0;
  if (_isKeyDown2)
  {
    v8 = 1.0;
  }

  [(UIPressInfo *)v6 setForce:v8];
  if ([eventCopy _isKeyDown])
  {
    v9 = 0;
  }

  else
  {
    v9 = 3;
  }

  [(UIPressInfo *)v6 setPhase:v9];
  [eventCopy timestamp];
  [(UIPressInfo *)v6 setTimestamp:?];
  [(UIPressInfo *)v6 setSource:1];
  [eventCopy _hidEvent];
  v10 = BKSHIDEventGetBaseAttributes();
  -[UIPressInfo setContextID:](v6, "setContextID:", [v10 contextID]);

  if (_isKeyDown)
  {
    v11 = [[UIKey alloc] initWithKeyboardEvent:eventCopy];
    _keyDownDictionary = [(UIApplication *)self _keyDownDictionary];
    v13 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(eventCopy, "_keyCode")}];
    [_keyDownDictionary setObject:v11 forKey:v13];
  }

  else
  {
    _keyDownDictionary2 = [(UIApplication *)self _keyDownDictionary];
    v15 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(eventCopy, "_keyCode")}];
    v11 = [_keyDownDictionary2 objectForKey:v15];

    if (!v11)
    {
      goto LABEL_11;
    }

    _keyDownDictionary = [(UIApplication *)self _keyDownDictionary];
    v13 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(eventCopy, "_keyCode")}];
    [_keyDownDictionary removeObjectForKey:v13];
  }

LABEL_11:
  [(UIPressInfo *)v6 setKey:v11];

  return v6;
}

- (void)_handleKeyHIDEvent:(__IOHIDEvent *)event usingSyntheticEvent:(BOOL)syntheticEvent
{
  syntheticEventCopy = syntheticEvent;
  CFRetain(event);
  _responderForKeyEvents = [(UIApplication *)self _responderForKeyEvents];
  if (syntheticEventCopy)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v8 = IOHIDEventGetIntegerValue();
    IsGlobeKeyUsagePair = GSKeyboardIsGlobeKeyUsagePair();
    v10 = !IsGlobeKeyUsagePair && IntegerValue == 7;
    v11 = v10 && (v8 & 0xFFFFFFFFFFFFFFF8) == 224;
    v12 = v11;
    if (IsGlobeKeyUsagePair || v12)
    {
      goto LABEL_23;
    }
  }

  v13 = [(UIEventEnvironment *)&self->_eventDispatcher->_mainEnvironment->super.isa _physicalKeyboardEventForHIDEvent:event];
  SenderID = IOHIDEventGetSenderID();
  if ((IOHIDEventGetEventFlags() & 0x40) != 0)
  {
    v15 = [(UIApplication *)self getKeyboardDevicePropertiesForSenderID:SenderID shouldUpdate:1 usingSyntheticEvent:1];

    if (!v15)
    {
      SenderID = _lastUsedKeyboardSenderID;
      IOHIDEventSetSenderID();
    }
  }

  [v13 _setHIDEvent:event keyboard:{-[UIApplication GSKeyboardForHWLayout:senderID:forceRebuild:createIfNeeded:](self, "GSKeyboardForHWLayout:senderID:forceRebuild:createIfNeeded:", 0, SenderID, 0, 1)}];
  v16 = +[UIKeyShortcutHUDService sharedHUDService];
  [v16 handleKeyboardEvent:v13];

  v17 = +[_UIContextMenuModifierKeyService sharedService];
  [v17 handleKeyboardEvent:v13];

  if ([v13 _isKeyDown])
  {
    _isDeleteKey = [v13 _isDeleteKey];
    v19 = +[UIKeyboardImpl activeInstance];
    v20 = v19;
    if (_isDeleteKey)
    {
      v21 = 7;
    }

    else
    {
      v21 = 1;
    }

    [v19 updateIdleDetection:v21];
  }

  if ([v13 _isGlobeKey] && (+[UIKeyboardImpl sharedInstance](UIKeyboardImpl, "sharedInstance"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "handleKeyCommand:repeatOkay:beforePublicKeyCommands:", v13, 0, 1), v22, v23))
  {
LABEL_23:
    CFRelease(event);
  }

  else
  {
    _isKeyDown = [v13 _isKeyDown];
    physicalKeycodeSet = self->_physicalKeycodeSet;
    if (_isKeyDown)
    {
      [(_UIKeyboardHIDEventOrderedDescriptorSet *)physicalKeycodeSet addEvent:event];
    }

    else
    {
      [(_UIKeyboardHIDEventOrderedDescriptorSet *)physicalKeycodeSet removeEvent:event];
    }

    CFRelease(event);
    v26 = [_responderForKeyEvents _keyboardShortcutInvocationForKeyboardEvent:v13];
    keyboardShortcutLeaf = [v26 keyboardShortcutLeaf];
    v28 = objc_opt_class();
    v29 = keyboardShortcutLeaf;
    if (v28)
    {
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    if (v31 && [v31 _buttonType] != -1)
    {
      v32 = [(UIApplication *)self _pressInfoForPhysicalKeyboardEvent:v13];
      [v32 setType:{objc_msgSend(v31, "_buttonType")}];
      [UIApp _prepareButtonEvent:v13 withPressInfo:v32];
      [(UIApplication *)self sendEvent:v13];
      [(UIApplication *)self _finishButtonEvent:v13];
    }

    [(UIApplication *)self handleKeyUIEvent:v13];
  }
}

- (void)_handleKeyUIEvent:(id)event
{
  eventCopy = event;
  _isPhysicalKeyEvent = [eventCopy _isPhysicalKeyEvent];
  v5 = eventCopy;
  if (_isPhysicalKeyEvent)
  {
    v6 = eventCopy;
    if ([v6 source] == 4)
    {
      v7 = [(UIApplication *)self _pressInfoForPhysicalKeyboardEvent:v6];
      [UIApp _prepareButtonEvent:v6 withPressInfo:v7];
      [(UIRepeatedAction *)self->_keyRepeatAction invalidate];
      [(UIApplication *)self sendEvent:v6];
      [(UIApplication *)self _finishButtonEvent:v6];
    }

    else
    {
      [(UIApplication *)self _handleKeyboardPressEvent:v6];
    }

    v5 = eventCopy;
  }
}

- (void)handleKeyUIEvent:(id)event
{
  eventCopy = event;
  _responderForKeyEvents = [(UIApplication *)self _responderForKeyEvents];
  [_responderForKeyEvents _handleKeyUIEvent:eventCopy];
}

- (BOOL)_hasKeyboardShortcutForKeyboardEvent:(id)event
{
  v3 = [(UIApplication *)self _currentKeyboardShortcutInvocationForKeyboardEvent:event];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_handleKeyboardShortcutForKeyboardEvent:(id)event allowsRepeat:(BOOL)repeat
{
  repeatCopy = repeat;
  v6 = [(UIApplication *)self _currentKeyboardShortcutInvocationForKeyboardEvent:event];
  if (v6)
  {
    v7 = [(UIApplication *)self _performKeyboardShortcutInvocation:v6 allowsRepeat:repeatCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_currentKeyboardShortcutInvocationForKeyboardEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy _isKeyDown])
  {
    _responderForKeyEvents = [(UIApplication *)self _responderForKeyEvents];
    v6 = [_responderForKeyEvents _keyboardShortcutInvocationForKeyboardEvent:eventCopy];
  }

  else
  {
    keyUpKeyCommandMap = self->_keyUpKeyCommandMap;
    v8 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(eventCopy, "_keyCode")}];
    _responderForKeyEvents = [(NSMutableDictionary *)keyUpKeyCommandMap objectForKey:v8];

    if (_responderForKeyEvents)
    {
      v9 = [_UIKeyboardShortcutInvocation alloc];
      keyboardShortcutLeaf = [_responderForKeyEvents keyboardShortcutLeaf];
      validatedKeyboardShortcutLeaf = [_responderForKeyEvents validatedKeyboardShortcutLeaf];
      originatingResponder = [_responderForKeyEvents originatingResponder];
      target = [_responderForKeyEvents target];
      v6 = [(_UIKeyboardShortcutInvocation *)v9 initWithKeyboardShortcutLeaf:keyboardShortcutLeaf validatedKeyboardShortcutLeaf:validatedKeyboardShortcutLeaf triggeringEvent:eventCopy originatingResponder:originatingResponder target:target];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_performKeyboardShortcutInvocation:(id)invocation allowsRepeat:(BOOL)repeat
{
  repeatCopy = repeat;
  invocationCopy = invocation;
  if (!invocationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:13525 description:@"Attempted to perform a key command invocation with a nil invocation"];
  }

  keyboardShortcutLeafToInvoke = [invocationCopy keyboardShortcutLeafToInvoke];
  target = [invocationCopy target];
  triggeringEvent = [invocationCopy triggeringEvent];
  if (repeatCopy)
  {
    v11 = [invocationCopy isRepeatable] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  if (![triggeringEvent _hidEvent])
  {
    goto LABEL_10;
  }

  if (![triggeringEvent _isKeyDown])
  {
    [(UIRepeatedAction *)self->_keyRepeatAction invalidate];
    keyUpKeyCommandMap = self->_keyUpKeyCommandMap;
    v16 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(triggeringEvent, "_keyCode")}];
    [(NSMutableDictionary *)keyUpKeyCommandMap removeObjectForKey:v16];

    [invocationCopy performKeyUpAction];
LABEL_20:
    v14 = 1;
    goto LABEL_21;
  }

  if (target || (objc_opt_self(), v12 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v12, (isKindOfClass & 1) == 0))
  {
    [(UIApplication *)self setupRepeatActionWithinvocationDelay:0 reset:0 andRepeat:-1.0];
    [(UIRepeatedAction *)self->_keyRepeatAction setDisableRepeat:v11];
    [(UIRepeatedAction *)self->_keyRepeatAction scheduleWithTarget:invocationCopy selector:sel_performKeyDownAction object:triggeringEvent];
    v17 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      upAction = [keyboardShortcutLeafToInvoke upAction];

      if (!upAction)
      {
        goto LABEL_16;
      }

      v19 = self->_keyUpKeyCommandMap;
      v17 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(triggeringEvent, "_keyCode")}];
      [(NSMutableDictionary *)v19 setObject:invocationCopy forKey:v17];
    }

LABEL_16:
    v20 = TIStatisticGetKey();
    TIStatisticScalarIncrement();

    [triggeringEvent _hidEvent];
    SenderID = IOHIDEventGetSenderID();
    if (SenderID)
    {
      v22 = [(UIApplication *)self getKeyboardDevicePropertiesForSenderID:SenderID shouldUpdate:0];
      if (v22)
      {
        [UIKBAnalyticsDispatcher keyboardShortcutInvokedWithKeyboardShortcutLeaf:keyboardShortcutLeafToInvoke keyEvent:triggeringEvent keyboardProperties:v22];
        v23 = +[UIEventSessionActionAnalytics sharedInstance];
        [v23 didKeyboardShortcut:keyboardShortcutLeafToInvoke];
      }
    }

    goto LABEL_20;
  }

LABEL_10:
  v14 = 0;
LABEL_21:

  return v14;
}

- (id)repeatedAction:(id)action prepareInvocationObject:(id)object forPhase:(unint64_t)phase
{
  actionCopy = action;
  objectCopy = object;
  if (phase >= 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = objectCopy;
    [v9 set_inputFlags:{objc_msgSend(v9, "_inputFlags") | 1}];
  }

  else
  {
    v10 = objectCopy;
  }

  return objectCopy;
}

- (void)repeatedAction:(id)action willInvokeWithTarget:(id)target object:(id)object
{
  targetCopy = target;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = targetCopy;
    v8 = +[_UIMainMenuManager existingManager];
    keyboardShortcutLeafToInvoke = [v7 keyboardShortcutLeafToInvoke];

    [v8 userDidInvokeKeyboardShortcut:keyboardShortcutLeafToInvoke];
  }
}

- (BOOL)shouldBeginCurrentRepetitionOfRepeatedAction:(id)action forPhase:(unint64_t)phase
{
  v4 = +[_UIEventDeferringManager isAnySceneBufferingEvents];
  if (v4)
  {
    v5 = *(__UILogGetCategoryCachedImpl("KeyRepeat", &shouldBeginCurrentRepetitionOfRepeatedAction_forPhase____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Allowing repeated key action to fire: NO, reason: a scene is buffering events", v7, 2u);
    }
  }

  return v4 ^ 1;
}

- (BOOL)shouldInvokeRepeatedAction:(id)action forTarget:(id)target object:(id)object
{
  targetCopy = target;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    canInvokeKeyboardShortcut = [targetCopy canInvokeKeyboardShortcut];
  }

  else
  {
    canInvokeKeyboardShortcut = 1;
  }

  return canInvokeKeyboardShortcut;
}

- (void)setupRepeatActionWithinvocationDelay:(double)delay reset:(BOOL)reset andRepeat:(BOOL)repeat
{
  repeatCopy = repeat;
  resetCopy = reset;
  if (self->_keyRepeatAction)
  {
    if (!reset)
    {
      goto LABEL_3;
    }

LABEL_11:
    [(UIRepeatedAction *)self->_keyRepeatAction reset];
    if (!repeatCopy)
    {
      return;
    }

    goto LABEL_4;
  }

  v15 = [[UIRepeatedAction alloc] initWithInvocation:0];
  keyRepeatAction = self->_keyRepeatAction;
  self->_keyRepeatAction = v15;

  [(UIRepeatedAction *)self->_keyRepeatAction setDelegate:self];
  if (resetCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!repeatCopy)
  {
    return;
  }

LABEL_4:
  _AXSKeyRepeatDelay();
  v10 = v9;
  _AXSKeyRepeatInterval();
  v12 = v11;
  if (delay == -1.0)
  {
    delayCopy = v10;
  }

  else
  {
    delayCopy = delay;
  }

  [(UIRepeatedAction *)self->_keyRepeatAction setInvocationDelay:delayCopy];
  v14 = self->_keyRepeatAction;

  [(UIRepeatedAction *)v14 setRepeatedDelay:v12];
}

- (void)_handleKeyboardPressEvent:(id)event
{
  v128 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([eventCopy _isPhysicalKeyEvent])
  {
    _responderForKeyEvents = [(UIApplication *)self _responderForKeyEvents];
    v6 = eventCopy;
    _hidEvent = [v6 _hidEvent];
    v8 = _hidEvent;
    if (v6 && _hidEvent)
    {
      if ([v6 _isEjectKey])
      {
        if ([v6 _isKeyDown])
        {
          v9 = +[UIKeyboardImpl sharedInstance];
          [v9 ejectKeyDown];
        }

        goto LABEL_112;
      }
    }

    else if (!_hidEvent)
    {
      v15 = 0;
      v10 = -1.0;
      goto LABEL_17;
    }

    v10 = -1.0;
    if ([v6 _isKeyDown] && _AXSKeyRepeatEnabled() && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v6, "_modifiedInput"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(_responderForKeyEvents, "_shouldRepeatInsertText:", v11), v11, v12)))
    {
      if (objc_opt_respondsToSelector())
      {
        _modifiedInput = [v6 _modifiedInput];
        [_responderForKeyEvents _delayUntilRepeatInsertText:_modifiedInput];
        v10 = v14;
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

LABEL_17:
    [(UIApplication *)self setupRepeatActionWithinvocationDelay:1 reset:v15 andRepeat:v10];
    v125 = 0;
    if ([v6 _shouldAttemptSecurePasteAuthentication])
    {
      _authenticationMessage = [v6 _authenticationMessage];
      [UIPasteboard _attemptAuthenticationWithMessage:_authenticationMessage];
    }

    if (v8)
    {
      if (![v6 _isKeyDown])
      {
        [(UIRepeatedAction *)self->_keyRepeatAction invalidate];
        goto LABEL_25;
      }

      v17 = +[UIKeyboardImpl sharedInstance];
      v18 = [v17 handleKeyCommand:v6 repeatOkay:&v125 beforePublicKeyCommands:1];

      if (v18)
      {
        LODWORD(v15) = (v15 & v125);
        [(UIRepeatedAction *)self->_keyRepeatAction setDisableRepeat:v15 ^ 1];
        [(UIRepeatedAction *)self->_keyRepeatAction setSkipInitialFire:1];
        keyRepeatAction = self->_keyRepeatAction;
        v20 = +[UIKeyboardImpl sharedInstance];
        [(UIRepeatedAction *)keyRepeatAction scheduleWithTarget:v20 selector:sel_handleKeyEvent_ object:v6];

        v21 = +[UIEventSessionActionAnalytics sharedInstance];
        [v21 didKeyboardShortcut:0];

        if ([v6 _isModifierKey])
        {
          goto LABEL_112;
        }
      }

      else if ([v6 _isModifierKey])
      {
        goto LABEL_25;
      }

      v63 = +[UIKeyboardSceneDelegate automaticTextInputSourceCache];
      [v63 updateEventSource:objc_msgSend(v6 options:{"source"), 15}];

      if (v18)
      {
        goto LABEL_112;
      }
    }

LABEL_25:
    if ([v6 type] != 4)
    {
      isRepeatable = 0;
      goto LABEL_91;
    }

    v110 = v15;
    _dispatchWindows = [v6 _dispatchWindows];
    anyObject = [_dispatchWindows anyObject];

    v108 = anyObject;
    windowScene = [anyObject windowScene];
    _focusSystemSceneComponent = [windowScene _focusSystemSceneComponent];

    v107 = _focusSystemSceneComponent;
    _eventDelivery = [_focusSystemSceneComponent _eventDelivery];
    v27 = [_eventDelivery shouldDeliverFocusKeyboardEvent:v6 toResponder:_responderForKeyEvents];
    v28 = +[UIKeyboardImpl sharedInstance];
    LODWORD(keyboardShortcutLeaf2) = [v28 isCurrentEditResponderInEditingMode];

    selfCopy = self;
    v15 = [(UIApplication *)self _currentKeyboardShortcutInvocationForKeyboardEvent:v6];
    v111 = v27;
    v109 = _eventDelivery;
    if (![v6 _isKeyDown])
    {
LABEL_58:
      if ([v6 _isKeyDown])
      {
        isRepeatable = [v15 isRepeatable];
      }

      else
      {
        isRepeatable = 0;
      }

      v56 = v111;
      if (!v15)
      {
        v62 = 0;
LABEL_75:
        if ((v62 & 1) == 0 && ((v56 ^ 1) & 1) == 0)
        {
          v104 = _responderForKeyEvents;
          [_eventDelivery willDeliverFocusKeyboardEvent:v6];
          v116 = 0;
          v64 = [(UIApplication *)selfCopy _pressTypeForKeyboardEvent:v6 isTextual:&v116];
          v65 = (v64 == -1) | v116 & keyboardShortcutLeaf2;
          if (!((v64 == -1) | v116 & keyboardShortcutLeaf2 & 1))
          {
            v66 = v64;
            obja = isRepeatable;
            v102 = v8;
            v67 = keyboardShortcutLeaf2 ^ 1;
            if (v64 != 4)
            {
              v67 = 1;
            }

            if ((v67 & 1) == 0)
            {
              v68 = +[UIKeyboard activeKeyboard];
              if ([v104 _disableAutomaticKeyboardUI] && !objc_msgSend(v104, "_enableAutomaticKeyboardPressDone"))
              {
                v66 = 4;
              }

              else
              {
                _focusSystem = [v68 _focusSystem];
                focusedItem = [_focusSystem focusedItem];
                v71 = _UIFocusEnvironmentContainingView(focusedItem);
                v72 = v6;
                v73 = [v71 isDescendantOfView:v68];

                v74 = (v73 & 1) == 0;
                v6 = v72;
                if (v74)
                {
                  v66 = 4;
                }

                else
                {
                  v66 = 202;
                }
              }
            }

            [v6 _hidEvent];
            v75 = _UIEventHIDUIWindowForHIDEvent();
            [-[UIApplication _pressesEventForWindow:](selfCopy _pressesEventForWindow:{v75), "_setHIDEvent:", objc_msgSend(v6, "_hidEvent")}];
            _isKeyDown = [v6 _isKeyDown];
            [v6 timestamp];
            v78 = v77;
            v79 = v6;
            _contextId = [v75 _contextId];
            _modifierFlags = [v79 _modifierFlags];
            v82 = _contextId;
            v6 = v79;
            v83 = [UIPressInfo _keyboardPressInfoForType:v66 isKeyDown:_isKeyDown timestamp:v82 contextID:_modifierFlags modifierFlags:v78];
            [(UIApplication *)selfCopy _sendButtonEventWithPressInfo:v83];

            v8 = v102;
            _eventDelivery = v109;
            isRepeatable = obja;
          }

          v62 = v65 ^ 1;
          _responderForKeyEvents = v104;
        }

        self = selfCopy;
        LODWORD(v15) = v110;
        if (v62)
        {
          goto LABEL_112;
        }

LABEL_91:
        if (!v8 || ![v6 _isKeyDown])
        {
          v85 = +[UIKeyboardImpl sharedInstance];
          [v85 handleKeyEvent:v6];

          [(UIRepeatedAction *)self->_keyRepeatAction invalidate];
          v86 = +[UIKeyboardImpl sharedInstance];
          delegateRequiresKeyEvents = [v86 delegateRequiresKeyEvents];

          if (!delegateRequiresKeyEvents)
          {
LABEL_112:

            goto LABEL_113;
          }

          v88 = [(UIApplication *)self _currentKeyboardShortcutInvocationForKeyboardEvent:v6];
          keyboardShortcutLeaf = [v88 keyboardShortcutLeaf];
          v90 = objc_opt_class();
          v91 = keyboardShortcutLeaf;
          if (v90)
          {
            if (objc_opt_isKindOfClass())
            {
              v92 = v91;
            }

            else
            {
              v92 = 0;
            }
          }

          else
          {
            v92 = 0;
          }

          v93 = v92;

          if (v93 && [v93 _handleAfterKeyEvent])
          {
            [(UIApplication *)self _performKeyboardShortcutInvocation:v88 allowsRepeat:0];
          }

LABEL_111:
          goto LABEL_112;
        }

        if (!(v125 & 1 | ((v15 & 1) == 0) | isRepeatable & 1))
        {
          v84 = +[UIKeyboardImpl sharedInstance];
          if ([v84 _isKeyCommand:v6])
          {

LABEL_109:
            v97 = +[UIKeyboardImpl sharedInstance];
            LODWORD(v15) = [v97 shouldAllowRepeatEvent:v6];

            goto LABEL_110;
          }

          v94 = [(UIApplication *)self _hasKeyboardShortcutForKeyboardEvent:v6];

          if (v94)
          {
            goto LABEL_109;
          }

          v95 = +[UIKeyboardImpl sharedInstance];
          delegateRequiresKeyEvents2 = [v95 delegateRequiresKeyEvents];

          if ((delegateRequiresKeyEvents2 & 1) == 0)
          {
            goto LABEL_109;
          }

          LODWORD(v15) = [v6 _isModifierKey] ^ 1;
        }

LABEL_110:
        [(UIRepeatedAction *)self->_keyRepeatAction setDisableRepeat:v15 ^ 1];
        v98 = self->_keyRepeatAction;
        v88 = +[UIKeyboardImpl sharedInstance];
        [(UIRepeatedAction *)v98 scheduleWithTarget:v88 selector:sel_handleKeyEvent_ object:v6];
        goto LABEL_111;
      }

      v57 = +[UIKeyboardImpl sharedInstance];
      if ([v57 delegateRequiresKeyEvents])
      {
        v106 = keyboardShortcutLeaf2;
        v58 = v6;
        keyboardShortcutLeaf2 = [v15 keyboardShortcutLeaf];
        v59 = objc_opt_self();
        if (objc_opt_isKindOfClass())
        {
          [v15 keyboardShortcutLeaf];
          v61 = v60 = isRepeatable;
          objb = [v61 _handleAfterKeyEvent];

          isRepeatable = v60;
          v6 = v58;
          _eventDelivery = v109;
          LOBYTE(keyboardShortcutLeaf2) = v106;
          if (objb)
          {
            v62 = 0;
LABEL_74:
            v56 = v111;
            goto LABEL_75;
          }

LABEL_73:
          v62 = [(UIApplication *)selfCopy _performKeyboardShortcutInvocation:v15 allowsRepeat:v110];
          goto LABEL_74;
        }

        v6 = v58;
        _eventDelivery = v109;
        LOBYTE(keyboardShortcutLeaf2) = v106;
      }

      goto LABEL_73;
    }

    if (v27)
    {
      keyboardShortcutLeaf3 = [v15 keyboardShortcutLeaf];
      v31 = [_eventDelivery shouldSkipKeyboardShortcutLeaf:keyboardShortcutLeaf3 whenDeliveringFocusKeyboardEvent:v6 toResponder:_responderForKeyEvents];

      if (v31)
      {

        v15 = 0;
      }
    }

    v32 = +[UIKeyboardImpl sharedInstance];
    delegateAsResponder = [v32 delegateAsResponder];

    v105 = keyboardShortcutLeaf2;
    if (v15)
    {
      keyboardShortcutLeaf4 = [v15 keyboardShortcutLeaf];
      if (([keyboardShortcutLeaf4 _wantsPriorityOverSystemBehavior:1] & 1) == 0 && ((keyboardShortcutLeaf2 ^ 1) & 1) == 0)
      {
        v34 = [delegateAsResponder conformsToProtocol:&unk_1EFE8A940];

        if (!v34)
        {
          goto LABEL_38;
        }

        v35 = +[UIKeyboardImpl sharedInstance];
        v36 = [v35 _handlesKeyCommandForEvent:v6];

        if ((v36 & 1) == 0)
        {
          keyboardShortcutLeaf5 = [v15 keyboardShortcutLeaf];
          originatingResponder = [v15 originatingResponder];
          IsLikelyToUnintentionallyConflictWithTextInputResponderWithOriginatingResponder = _UIMenuLeafIsLikelyToUnintentionallyConflictWithTextInputResponderWithOriginatingResponder(keyboardShortcutLeaf5, delegateAsResponder, originatingResponder);

          if (!IsLikelyToUnintentionallyConflictWithTextInputResponderWithOriginatingResponder)
          {
            goto LABEL_38;
          }
        }

        keyboardShortcutLeaf4 = v15;
        v15 = 0;
      }
    }

LABEL_38:
    keyboardShortcutLeaf6 = [v15 keyboardShortcutLeaf];
    _keyboardShortcut = [keyboardShortcutLeaf6 _keyboardShortcut];
    currentLocalizedKeyCombination = [_keyboardShortcut currentLocalizedKeyCombination];
    v43 = [currentLocalizedKeyCombination modifierFlags] & 0x940000;

    if (!v43)
    {
      v100 = eventCopy;
      v101 = v8;
      v99 = v6;
      [v6 allPresses];
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      obj = v124 = 0u;
      v44 = [obj countByEnumeratingWithState:&v121 objects:v127 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v122;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v122 != v46)
            {
              objc_enumerationMutation(obj);
            }

            v48 = *(*(&v121 + 1) + 8 * i);
            v117 = 0u;
            v118 = 0u;
            v119 = 0u;
            v120 = 0u;
            gestureRecognizers = [v48 gestureRecognizers];
            v50 = [gestureRecognizers countByEnumeratingWithState:&v117 objects:v126 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v118;
              do
              {
                for (j = 0; j != v51; ++j)
                {
                  if (*v118 != v52)
                  {
                    objc_enumerationMutation(gestureRecognizers);
                  }

                  v54 = *(*(&v117 + 1) + 8 * j);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v54 hasActiveTypeSelectSession])
                  {

                    v15 = 0;
                  }
                }

                v51 = [gestureRecognizers countByEnumeratingWithState:&v117 objects:v126 count:16];
              }

              while (v51);
            }
          }

          v45 = [obj countByEnumeratingWithState:&v121 objects:v127 count:16];
        }

        while (v45);
      }

      v6 = v99;
      eventCopy = v100;
      v8 = v101;
    }

    _eventDelivery = v109;
    LOBYTE(keyboardShortcutLeaf2) = v105;
    goto LABEL_58;
  }

LABEL_113:
}

- (BOOL)_shouldUpdateSerializableKeyCommandsForResponder:(id)responder
{
  responderCopy = responder;
  v5 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v5 _isHardwareKeyboardAvailable];

  if (_isHardwareKeyboardAvailable)
  {
    if (responderCopy)
    {
      _responderForKeyEvents = [(UIApplication *)self _responderForKeyEvents];
      v8 = [responderCopy _containsResponder:_responderForKeyEvents];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)_updateSerializableKeyCommandsForResponder:(id)responder
{
  if ([(UIApplication *)self _supportsMenuActions])
  {
    v4 = *(&self->_applicationFlags + 1);
    if ((v4 & 0x800000000000) == 0)
    {
      *(&self->_applicationFlags + 1) = v4 | 0x800000000000;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __60__UIApplication__updateSerializableKeyCommandsForResponder___block_invoke;
      v5[3] = &unk_1E70F3590;
      v5[4] = self;
      [UIApp _performBlockAfterCATransactionCommits:v5];
    }
  }
}

- (uint64_t)_shouldRegisterTopLevelKeyboardShortcutsForWindowScene:(uint64_t)scene
{
  v3 = a2;
  if (scene)
  {
    if (qword_1EA993108 != -1)
    {
      dispatch_once(&qword_1EA993108, &__block_literal_global_2198);
    }

    if (byte_1EA992DCC == 1)
    {
      _eventDeferringComponent = [v3 _eventDeferringComponent];
      v5 = _eventDeferringComponent;
      if (_eventDeferringComponent)
      {
        avoidsRegisteringTopLevelAppKeyboardShortcuts = [_eventDeferringComponent avoidsRegisteringTopLevelAppKeyboardShortcuts];
      }

      else
      {
        keyWindow = [v3 keyWindow];
        avoidsRegisteringTopLevelAppKeyboardShortcuts = [keyWindow _isHostedInAnotherProcess];
      }

      v7 = avoidsRegisteringTopLevelAppKeyboardShortcuts ^ 1u;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __58__UIApplication__immediatelyUpdateSerializableKeyCommands__block_invoke(uint64_t a1, void *a2)
{
  v22 = [a2 keyboardShortcutLeaf];
  v3 = [v22 _keyboardShortcut];
  v4 = [v3 currentLocalizedKeyCombination];

  if (*(a1 + 48) != 1)
  {
    goto LABEL_10;
  }

  if (qword_1EA9930F8 != -1)
  {
    dispatch_once(&qword_1EA9930F8, &__block_literal_global_2179_0);
  }

  if (![qword_1EA9930E8 containsObject:v4])
  {
    goto LABEL_10;
  }

  v5 = [v22 _resolvedTargetFromFirstTarget:*(a1 + 32) sender:0];
  if (v5 || (objc_opt_self(), v6 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0))
  {
    if (qword_1EA993100 != -1)
    {
      dispatch_once(&qword_1EA993100, &__block_literal_global_2187);
    }

    v8 = [v22 _validatedLeafWithTarget:v5 validator:qword_1EA9930F0];
    v9 = [v8 attributes];

    if ((v9 & 1) == 0)
    {
LABEL_10:
      v10 = [v4 keyCodes];
      v11 = [v10 count];

      v12 = MEMORY[0x1E698E3D0];
      if (v11)
      {
        v13 = [v4 keyCodes];
        [v12 keyCommandWithKeyCode:objc_msgSend(v13 modifierFlags:{"firstIndex"), objc_msgSend(v4, "modifierFlags")}];
      }

      else
      {
        v13 = [v4 keyEquivalent];
        [v12 keyCommandWithInput:v13 modifierFlags:{objc_msgSend(v4, "modifierFlags")}];
      }
      v14 = ;

      v15 = [v22 _eventDeferringEnvironment];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      }

      v18 = v17;

      v19 = [*(a1 + 40) objectForKeyedSubscript:v18];
      v20 = v19;
      if (v19)
      {
        [v19 addObject:v14];
      }

      else
      {
        v21 = [MEMORY[0x1E695DFA8] setWithObject:v14];
        [*(a1 + 40) setObject:v21 forKeyedSubscript:v18];
      }
    }
  }
}

void __58__UIApplication__immediatelyUpdateSerializableKeyCommands__block_invoke_2()
{
  v0 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_performClose_];
  v1 = [v0 _keyboardShortcut];
  v12 = [v1 baseKeyCombination];

  v2 = [v12 modifierFlags];
  v3 = [v12 keyEquivalent];
  v4 = [v3 uppercaseString];
  v5 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:v2 keyEquivalent:v4];

  v6 = MEMORY[0x1E695DFD8];
  v7 = [(UICommand *)UIKeyCommand _defaultCommandForAction:sel_orderFrontPreferencesPanel_];
  v8 = [v7 _keyboardShortcut];
  v9 = [v8 baseKeyCombination];
  v10 = [v6 setWithObjects:{v12, v5, v9, 0}];
  v11 = qword_1EA9930E8;
  qword_1EA9930E8 = v10;
}

void __58__UIApplication__immediatelyUpdateSerializableKeyCommands__block_invoke_3()
{
  v0 = objc_opt_new();
  v1 = qword_1EA9930F0;
  qword_1EA9930F0 = v0;
}

uint64_t __72__UIApplication__shouldRegisterTopLevelKeyboardShortcutsForWindowScene___block_invoke()
{
  result = _os_feature_enabled_impl();
  byte_1EA992DCC = result;
  return result;
}

- (id)_keyboardShortcutMenuLeaves
{
  keyCommands = [(UIApplication *)self keyCommands];
  v3 = keyCommands;
  if (keyCommands)
  {
    v4 = keyCommands;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (id)keyCommands
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__UIApplication_keyCommands__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (qword_1EA993118 != -1)
  {
    dispatch_once(&qword_1EA993118, block);
  }

  return qword_1EA993110;
}

void __28__UIApplication_keyCommands__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isFrontBoard] & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v1 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputEscape" modifierFlags:0 action:sel__unlockPointerLockState_];
    v2 = [v1 copy];

    [v2 _setEnumerationPriority:-2];
    [v2 setAttributes:{objc_msgSend(v2, "attributes") | 4}];
    [v5 addObject:v2];
    v3 = [v5 copy];
    v4 = qword_1EA993110;
    qword_1EA993110 = v3;
  }
}

- (void)startDictation:(id)dictation
{
  v3 = +[UIDictationController sharedInstance];
  [v3 setReasonType:23];

  v4 = +[UIDictationController sharedInstance];
  [v4 handleHardwareKeyboardGesture];
}

- (void)orderFrontCharacterPalette:(id)palette
{
  v3 = +[UIKeyboardImpl sharedInstance];
  [v3 handleEmojiPopoverKeyCommand];
}

- (void)_toggleSoftwareKeyboard:(id)keyboard
{
  v3 = +[UIKeyboardImpl sharedInstance];
  [v3 toggleSoftwareKeyboard];
}

- (void)showHelp:(id)help
{
  v3 = +[UIKeyShortcutHUDService sharedHUDService];
  [v3 requestHUDPresentationIntoSearchMode];
}

- (BOOL)_areKeyboardHUDsEnabled
{
  if ([(UIApplication *)self isFrontBoard])
  {
    return (*(&self->_applicationFlags + 12) >> 2) & 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)_isGlobeKeyShortcutHUDEnabled
{
  if (qword_1EA993120 != -1)
  {
    dispatch_once(&qword_1EA993120, &__block_literal_global_2203);
  }

  isFrontBoard = [(UIApplication *)self isFrontBoard];
  return (isFrontBoard | byte_1EA992DCD) & 1;
}

void __46__UIApplication__isGlobeKeyShortcutHUDEnabled__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DCD = [v0 isEqualToString:@"com.apple.Spotlight"];
}

- (void)handleKeyEvent:(__GSEvent *)event
{
  _responderForKeyEvents = [(UIApplication *)self _responderForKeyEvents];
  [_responderForKeyEvents _handleKeyEvent:event];
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy subtype] >= 200 && objc_msgSend(eventCopy, "subtype") <= 205)
  {
    if ([eventCopy subtype] == 200)
    {
      userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
      v6 = userInterfaceLayoutDirection == 0;
      if (userInterfaceLayoutDirection)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      v8 = 32;
      v9 = 16;
    }

    else
    {
      if ([eventCopy subtype] != 201)
      {
        if ([eventCopy subtype] == 202)
        {
          v7 = 1;
          v11 = 1;
        }

        else if ([eventCopy subtype] == 204)
        {
          v11 = 4;
          v7 = 3;
        }

        else if ([eventCopy subtype] == 203)
        {
          v7 = 2;
          v11 = 2;
        }

        else
        {
          v12 = [eventCopy subtype] == 205;
          v7 = 4 * v12;
          v11 = 8 * v12;
        }

        goto LABEL_17;
      }

      userInterfaceLayoutDirection2 = [UIApp userInterfaceLayoutDirection];
      v6 = userInterfaceLayoutDirection2 == 0;
      if (userInterfaceLayoutDirection2)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      v8 = 16;
      v9 = 32;
    }

    if (v6)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

LABEL_17:
    [(UIApplication *)self _sendMoveEventWithDirection:v7 heading:v11 fromEvent:eventCopy];
    goto LABEL_18;
  }

  v13.receiver = self;
  v13.super_class = UIApplication;
  [(UIResponder *)&v13 _wheelChangedWithEvent:eventCopy];
LABEL_18:
}

- (void)_sendMoveEventWithDirection:(int64_t)direction heading:(unint64_t)heading fromEvent:(id)event
{
  eventCopy = event;
  [eventCopy _hidEvent];
  v9 = _UIEventHIDUIWindowForHIDEvent();
  v10 = [(UIApplication *)self _moveEventForWindow:v9];

  [v10 _setHIDEvent:{objc_msgSend(eventCopy, "_hidEvent")}];
  _gsEvent = [eventCopy _gsEvent];

  [v10 _setGSEvent:_gsEvent];
  [v10 _setMoveDirection:direction];
  [v10 _setFocusHeading:heading];

  [(UIApplication *)self sendEvent:v10];
}

- (void)_sendMoveEventWithPressesEvent:(id)event
{
  eventCopy = event;
  _lastPreparedPress = [eventCopy _lastPreparedPress];
  type = [_lastPreparedPress type];

  if (type <= 3)
  {
    [(UIApplication *)self _sendMoveEventWithDirection:type + 1 heading:qword_18A681338[type] fromEvent:eventCopy];
  }
}

- (int64_t)_pressTypeForKeyboardEvent:(id)event isTextual:(BOOL *)textual
{
  eventCopy = event;
  _keyCode = [eventCopy _keyCode];
  v7 = 0;
  v8 = -1;
  v9 = 1;
  if (_keyCode > 79)
  {
    if (_keyCode <= 81)
    {
      v10 = 1;
      if (_keyCode != 81)
      {
        v10 = -1;
      }

      v9 = _keyCode != 80 && _keyCode != 81;
      if (_keyCode == 80)
      {
        v8 = 2;
      }

      else
      {
        v8 = v10;
      }

      v7 = 0;
      if (textual)
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (_keyCode == 82)
    {
      v9 = 0;
      v8 = 0;
      v7 = 0;
      goto LABEL_33;
    }

    if (_keyCode != 88 && _keyCode != 158)
    {
LABEL_33:
      if (!textual)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_18:
    v9 = 0;
    v7 = 0;
    v8 = 4;
    if (textual)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (_keyCode <= 42)
  {
    if (_keyCode != 40)
    {
      v9 = _keyCode != 41;
      if (_keyCode == 41)
      {
        v8 = 5;
      }

      v7 = 0;
      if (textual)
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    goto LABEL_18;
  }

  switch(_keyCode)
  {
    case '+':
      v9 = 0;
      v7 = 0;
      v8 = 203;
      if (textual)
      {
        goto LABEL_34;
      }

      break;
    case ',':
      v9 = 0;
      v7 = 1;
      v8 = 6;
      if (textual)
      {
        goto LABEL_34;
      }

      break;
    case 'O':
      v9 = 0;
      v7 = 0;
      v8 = 3;
      if (!textual)
      {
        break;
      }

LABEL_34:
      *textual = v7;
      break;
    default:
      goto LABEL_33;
  }

LABEL_35:
  if (v9)
  {
    if ([eventCopy _isKeyDown])
    {
      v11 = 0;
    }

    else
    {
      v11 = 3;
    }

    v12 = [eventCopy _pressesForPhase:v11];
    anyObject = [v12 anyObject];

    v14 = [anyObject key];
    characters = [v14 characters];
    v16 = [characters isEqualToString:@"UIKeyInputEscape"];

    if (v16)
    {
      v8 = 5;
    }

    else
    {
      v8 = -1;
    }
  }

  return v8;
}

- (void)_setIdleModeVisualEffectsEnabled:(BOOL)enabled
{
  v4 = 0x4000000000000000;
  if (!enabled)
  {
    v4 = 0;
  }

  *&self->_applicationFlags = *&self->_applicationFlags & 0xBFFFFFFFFFFFFFFFLL | v4;
  _mainScene = [(UIApplication *)self _mainScene];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__UIApplication__setIdleModeVisualEffectsEnabled___block_invoke;
  v6[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  enabledCopy = enabled;
  [_mainScene updateUIClientSettingsWithBlock:v6];
}

- (void)_setSystemUserInterfaceStyle:(int64_t)style
{
  if (style)
  {
    if (self->_systemUserInterfaceStyle != style)
    {
      v6[8] = v3;
      v6[9] = v4;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __46__UIApplication__setSystemUserInterfaceStyle___block_invoke;
      v6[3] = &unk_1E70F32F0;
      v6[4] = self;
      v6[5] = style;
      [(UIApplication *)self _updateEffectiveUserInterfaceStyleAfterChange:v6];
      v5 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1];
      [v5 enumerateObjectsUsingBlock:&__block_literal_global_2207];
    }
  }
}

void __46__UIApplication__setSystemUserInterfaceStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 _systemAppearanceManager];
  [v3 updateUserInterfaceStyle];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"UIWindowSceneDidUpdateSystemUserInterfaceStyle" object:v2];
}

- (void)_updateEffectiveUserInterfaceStyleAfterChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    v8 = changeCopy;
    _pureEffectiveUserInterfaceStyle = [(UIApplication *)self _pureEffectiveUserInterfaceStyle];
    v8[2](v8);
    v6 = _pureEffectiveUserInterfaceStyle == [(UIApplication *)self _effectiveUserInterfaceStyle];
    changeCopy = v8;
    if (!v6)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_UIApplicationEffectiveUserInterfaceStyleChangedNotification" object:self];

      changeCopy = v8;
    }
  }
}

- (void)_setPreferredUserInterfaceStyle:(int64_t)style forWindowScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:14488 description:@"windowScene cannot be nil."];
  }

  _effectiveUIClientSettings = [sceneCopy _effectiveUIClientSettings];
  userInterfaceStyle = [_effectiveUIClientSettings userInterfaceStyle];

  if (userInterfaceStyle != style)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__UIApplication__setPreferredUserInterfaceStyle_forWindowScene___block_invoke;
    v11[3] = &__block_descriptor_40_e89_B24__0__UIMutableApplicationSceneClientSettings_8__UIApplicationSceneTransitionContext_16l;
    v11[4] = style;
    [sceneCopy _updateUIClientSettingsWithUITransitionBlock:v11];
  }
}

- (void)_maybeEffectiveUserInterfaceStyleChanged
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIApplicationEffectiveUserInterfaceStyleChangedNotification" object:UIApp];
}

+ (void)_setDebugUserInterfaceStyleOverride:(int64_t)override
{
  if (sDebugUserInterfaceStyleOverride != override)
  {
    aBlock[5] = v6;
    aBlock[6] = v5;
    aBlock[9] = v3;
    aBlock[10] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__UIApplication__setDebugUserInterfaceStyleOverride___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = override;
    v8 = _Block_copy(aBlock);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__UIApplication__setDebugUserInterfaceStyleOverride___block_invoke_2;
    block[3] = &unk_1E70F4178;
    v11 = v8;
    overrideCopy = override;
    v9 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __53__UIApplication__setDebugUserInterfaceStyleOverride___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (UIApp)
  {
    return [UIApp _updateEffectiveUserInterfaceStyleAfterChange:v1];
  }

  else
  {
    return (*(v1 + 16))(v1);
  }
}

- (id)_idleModeController
{
  idleModeController = self->_idleModeController;
  if (!idleModeController)
  {
    v4 = [_UIIdleModeController alloc];
    mainScreen = [objc_opt_self() mainScreen];
    v6 = [(_UIIdleModeController *)v4 initWithScreen:mainScreen];
    v7 = self->_idleModeController;
    self->_idleModeController = v6;

    idleModeController = self->_idleModeController;
  }

  return idleModeController;
}

- (void)_updateIdleModeStatus
{
  _mainScene = [(UIApplication *)self _mainScene];
  settings = [_mainScene settings];

  idleModeEnabled = [settings idleModeEnabled];
  _idleModeController = [(UIApplication *)self _idleModeController];
  [_idleModeController setIdleModeEnabled:idleModeEnabled];
}

- (BOOL)becomeFirstResponder
{
  keyWindow = [(UIApplication *)self keyWindow];
  becomeFirstResponder = [keyWindow becomeFirstResponder];

  return becomeFirstResponder;
}

- (void)_setDisableBecomeFirstResponder:(BOOL)responder
{
  v3 = 0x80000000000;
  if (!responder)
  {
    v3 = 0;
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (id)_currentHardwareKeyboardLayoutName
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:14617 description:@"Call must be made on main thread"];
  }

  v4 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v4 _isHardwareKeyboardAvailable];

  if (_isHardwareKeyboardAvailable)
  {
    v6 = [(UIApplication *)self _hardwareKeyboard:0];
    if (v6)
    {
      v6 = [GSKeyboardGetLayout() copy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)_currentHardwareKeyboardType
{
  v3 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v3 _isHardwareKeyboardAvailable];

  if (_isHardwareKeyboardAvailable && [(UIApplication *)self _hardwareKeyboard:0]&& (v5 = GSKeyboardGetHWKeyboardType() - 202, v5 <= 5))
  {
    return dword_18A681358[v5];
  }

  else
  {
    return -1;
  }
}

- (void)setHardwareKeyboardLayoutName:(id)name forceRebuild:(BOOL)rebuild
{
  [(UIApplication *)self GSKeyboardForHWLayout:name forceRebuild:rebuild];
  v4 = GSKeyboardGetModifierState() & 0x40000;
  v5 = +[UIKeyboardImpl activeInstance];
  isCapsLockASCIIToggle = [v5 isCapsLockASCIIToggle];

  BKSHIDServicesSetCapsLockRomanSwitchMode();
  if (!isCapsLockASCIIToggle)
  {
    v8 = +[UIKeyboardImpl activeInstance];
    [v8 adjustCapsLockDelayOverride];

    if (BKSHIDServicesIsCapsLockLightOn() == v4 >> 18)
    {
      return;
    }

    goto LABEL_5;
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 removeCapsLockDelayOverride];

  if (v4)
  {
LABEL_5:
    GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
    GSKeyboardTranslateKeyExtendedCommandWithUsagePage();
  }
}

- (void)setCapsLockDelayOverride:(double)override
{
  v4 = +[UIKeyboardImpl activeInstance];
  isInHardwareKeyboardMode = [v4 isInHardwareKeyboardMode];

  if (isInHardwareKeyboardMode)
  {
    v6.n128_f64[0] = override;

    MEMORY[0x1EEDEFE98](v6);
  }
}

- (void)_windowDidBecomeApplicationKey:(id)key
{
  object = [key object];
  [(UIApplication *)self _updateSerializableKeyCommandsForResponder:object];
}

- (void)_windowDidResignApplicationKey:(id)key
{
  object = [key object];
  [(UIApplication *)self _updateSerializableKeyCommandsForResponder:object];
}

- (id)_rootViewControllers
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v3 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        rootViewController = [*(*(&v15 + 1) + 8 * i) rootViewController];
        v9 = rootViewController;
        if (rootViewController)
        {
          view = [rootViewController view];
          window = [view window];
          _isTextEffectsWindow = [window _isTextEffectsWindow];

          if ((_isTextEffectsWindow & 1) == 0)
          {
            [array addObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  if ([array count])
  {
    v13 = array;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isAutorotationDisabledForAppWindows
{
  v15 = *MEMORY[0x1E69E9840];
  [(UIApplication *)self _rootViewControllers];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        _viewControllerForSupportedInterfaceOrientations = [*(*(&v10 + 1) + 8 * i) _viewControllerForSupportedInterfaceOrientations];
        if ([_viewControllerForSupportedInterfaceOrientations shouldAutorotate] && (objc_msgSend(_viewControllerForSupportedInterfaceOrientations, "supportedInterfaceOrientations") & 0x1E) != 0)
        {

          v8 = 0;
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (void)setExpectsFaceContact:(BOOL)contact inLandscape:(BOOL)landscape
{
  _mainScene = [(UIApplication *)self _mainScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__UIApplication_setExpectsFaceContact_inLandscape___block_invoke;
  v7[3] = &__block_descriptor_34_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  landscapeCopy = landscape;
  contactCopy = contact;
  [_mainScene updateUIClientSettingsWithBlock:v7];
}

void __51__UIApplication_setExpectsFaceContact_inLandscape___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 proximityDetectionModes];
  v4 = 4;
  if (*(a1 + 32))
  {
    v4 = 8;
  }

  v5 = v4 | v3;
  v6 = v3 & ~v4;
  if (*(a1 + 33))
  {
    v6 = v5;
  }

  v7 = (v6 & 0xC) == 0;
  v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
  if (v7)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  [v10 setProximityDetectionModes:v9];
}

- (void)_setApplicationBackdropStyle:(int64_t)style
{
  switch(style)
  {
    case 2010:
      v3 = 2;
      break;
    case 2030:
      v3 = 4;
      break;
    case 2020:
      v3 = 3;
      break;
    default:
      return;
  }

  [(UIApplication *)self _setBackgroundStyle:v3];
}

- (void)willDisplayMiniAlert
{
  _mainScene = [(UIApplication *)self _mainScene];
  v2 = [(UIScene *)UIWindowScene _sceneForFBSScene:_mainScene];
  [v2 _updateUIClientSettingsWithBlock:&__block_literal_global_2218];
}

void __37__UIApplication_willDisplayMiniAlert__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setVisibleMiniAlertCount:{objc_msgSend(v2, "visibleMiniAlertCount") + 1}];
}

- (void)didDismissMiniAlert
{
  _mainScene = [(UIApplication *)self _mainScene];
  v2 = [(UIScene *)UIWindowScene _sceneForFBSScene:_mainScene];
  [v2 _updateUIClientSettingsWithUITransitionBlock:&__block_literal_global_2220];
}

uint64_t __36__UIApplication_didDismissMiniAlert__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 visibleMiniAlertCount])
  {
    v3 = [v2 visibleMiniAlertCount] - 1;
  }

  else
  {
    v3 = 0;
  }

  [v2 setVisibleMiniAlertCount:v3];

  return 1;
}

- (BOOL)isPasscodeRequiredToUnlock
{
  mEMORY[0x1E699FCA0] = [MEMORY[0x1E699FCA0] sharedService];
  isPasscodeLockedOrBlocked = [mEMORY[0x1E699FCA0] isPasscodeLockedOrBlocked];

  return isPasscodeLockedOrBlocked;
}

- (void)_requestDeviceUnlockWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:14902 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E69DEBB8]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__UIApplication__requestDeviceUnlockWithCompletion___block_invoke;
  v10[3] = &unk_1E7107E48;
  v11 = v6;
  v12 = completionCopy;
  v7 = v6;
  v8 = completionCopy;
  [v7 requestPasscodeUnlockUIWithCompletion:v10];
}

void __52__UIApplication__requestDeviceUnlockWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __52__UIApplication__requestDeviceUnlockWithCompletion___block_invoke_2;
  v7 = &unk_1E7101B70;
  v8 = *(a1 + 40);
  v9 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], &v4);
  [*(a1 + 32) invalidate];
}

- (void)registerUserNotificationSettings:(UIUserNotificationSettings *)notificationSettings
{
  v4 = MEMORY[0x1E6983308];
  v5 = notificationSettings;
  currentNotificationCenter = [v4 currentNotificationCenter];
  categories = [(UIUserNotificationSettings *)v5 categories];
  v8 = [categories bs_map:UIUserNotificationCategoryToUNNotificationCategory];

  [currentNotificationCenter setNotificationCategories:v8];
  LOBYTE(categories) = [(UIUserNotificationSettings *)v5 types];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__UIApplication_registerUserNotificationSettings___block_invoke;
  v10[3] = &unk_1E711DB48;
  v11 = currentNotificationCenter;
  selfCopy = self;
  v9 = currentNotificationCenter;
  [v9 requestAuthorizationWithOptions:categories & 7 completionHandler:v10];
}

void __50__UIApplication_registerUserNotificationSettings___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__UIApplication_registerUserNotificationSettings___block_invoke_2;
  v5[3] = &unk_1E711DB20;
  v3 = v2;
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v3 getNotificationSettingsWithCompletionHandler:v5];
}

uint64_t __50__UIApplication_registerUserNotificationSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = UIRemoteNotificationTypesFromUNNotificationSettings(a2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__UIApplication_registerUserNotificationSettings___block_invoke_3;
  v6[3] = &unk_1E711DAF8;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v6[5] = v3;
  return [v4 getNotificationCategoriesWithCompletionHandler:v6];
}

void __50__UIApplication_registerUserNotificationSettings___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 bs_map:UNNotificationCategoryToUIUserNotificationCategory];
  v4 = [UIUserNotificationSettings settingsForTypes:*(a1 + 40) categories:v3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__UIApplication_registerUserNotificationSettings___block_invoke_4;
  v6[3] = &unk_1E70F35B8;
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __50__UIApplication_registerUserNotificationSettings___block_invoke_4(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 application:? didRegisterUserNotificationSettings:?];
  }

  return result;
}

- (UIUserNotificationSettings)currentUserNotificationSettings
{
  currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
  notificationSettings = [currentNotificationCenter notificationSettings];
  notificationCategories = [currentNotificationCenter notificationCategories];
  v5 = UIRemoteNotificationTypesFromUNNotificationSettings(notificationSettings);
  v6 = [notificationCategories bs_map:UNNotificationCategoryToUIUserNotificationCategory];
  v7 = [UIUserNotificationSettings settingsForTypes:v5 categories:v6];

  return v7;
}

uint64_t __47__UIApplication_registerForRemoteNotifications__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 application:? didRegisterForRemoteNotificationsWithDeviceToken:?];
  }

  return result;
}

- (BOOL)isRegisteredForRemoteNotifications
{
  mEMORY[0x1E6979260] = [MEMORY[0x1E6979260] sharedInstance];
  allowsRemoteNotifications = [mEMORY[0x1E6979260] allowsRemoteNotifications];

  return allowsRemoteNotifications;
}

- (void)unregisterForRemoteNotifications
{
  applicationPushRegistry = self->_applicationPushRegistry;
  v4 = [MEMORY[0x1E695DFD8] set];
  [(PKPushRegistry *)applicationPushRegistry setDesiredPushTypes:v4];

  [(PKPushRegistry *)self->_applicationPushRegistry setDelegate:0];
  v5 = self->_applicationPushRegistry;
  self->_applicationPushRegistry = 0;
}

- (UIRemoteNotificationType)enabledRemoteNotificationTypes
{
  if (dyld_program_sdk_at_least())
  {
    NSLog(&cfstr_Enabledremoten.isa);
    return 0;
  }

  else
  {
    currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
    notificationSettings = [currentNotificationCenter notificationSettings];
    v5 = UIRemoteNotificationTypesFromUNNotificationSettings(notificationSettings);

    return v5;
  }
}

- (void)registerForRemoteNotificationTypes:(UIRemoteNotificationType)types
{
  if (dyld_program_sdk_at_least())
  {
    NSLog(&cfstr_Registerforrem.isa);
  }

  else
  {

    [(UIApplication *)self _registerForRemoteNotificationTypes:types];
  }
}

- (void)_registerForRemoteNotificationTypes:(unint64_t)types
{
  typesCopy = types;
  currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__UIApplication__registerForRemoteNotificationTypes___block_invoke;
  v6[3] = &unk_1E711DB70;
  v6[4] = self;
  [currentNotificationCenter requestAuthorizationWithOptions:typesCopy & 7 completionHandler:v6];
}

void __53__UIApplication__registerForRemoteNotificationTypes___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__UIApplication__registerForRemoteNotificationTypes___block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)pushRegistry:(id)registry didReceiveIncomingPushWithPayload:(id)payload forType:(id)type withCompletionHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  v10 = objc_opt_respondsToSelector();
  [UIApp applicationState];
  delegate = self->_delegate;
  if (v10)
  {
    [(UIApplicationDelegate *)delegate methodForSelector:sel_application_didReceiveRemoteNotification_fetchCompletionHandler_];
    entr_act_modify();
    v12 = self->_delegate;
    dictionaryPayload = [payloadCopy dictionaryPayload];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __94__UIApplication_pushRegistry_didReceiveIncomingPushWithPayload_forType_withCompletionHandler___block_invoke;
    v17[3] = &unk_1E7118100;
    v18 = handlerCopy;
    v14 = _UIAutologgingBackgroundFetchBlock(@"Warning: Application delegate received call to -application:didReceiveRemoteNotification:fetchCompletionHandler: but the completion handler was never called.", v17);
    [(UIApplicationDelegate *)v12 application:self didReceiveRemoteNotification:dictionaryPayload fetchCompletionHandler:v14];
  }

  else
  {
    [(UIApplicationDelegate *)delegate methodForSelector:sel_application_didReceiveRemoteNotification_];
    entr_act_modify();
    if (objc_opt_respondsToSelector())
    {
      v15 = self->_delegate;
      dictionaryPayload2 = [payloadCopy dictionaryPayload];
      [(UIApplicationDelegate *)v15 application:self didReceiveRemoteNotification:dictionaryPayload2];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

uint64_t __94__UIApplication_pushRegistry_didReceiveIncomingPushWithPayload_forType_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)pushRegistry:(id)registry didUpdatePushCredentials:(id)credentials forType:(id)type
{
  credentialsCopy = credentials;
  if ([type isEqualToString:*MEMORY[0x1E6979270]])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__UIApplication_pushRegistry_didUpdatePushCredentials_forType___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v8[4] = self;
    v9 = credentialsCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __63__UIApplication_pushRegistry_didUpdatePushCredentials_forType___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 16);
    v5 = [v2 token];
    [v4 application:v3 didRegisterForRemoteNotificationsWithDeviceToken:v5];
  }
}

- (void)pushRegistry:(id)registry didInvalidatePushTokenForType:(id)type error:(id)error
{
  errorCopy = error;
  if ([type isEqualToString:*MEMORY[0x1E6979270]])
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __66__UIApplication_pushRegistry_didInvalidatePushTokenForType_error___block_invoke;
    v14 = &unk_1E70F35B8;
    selfCopy = self;
    v16 = errorCopy;
    dispatch_async(MEMORY[0x1E69E96A0], &v11);
    applicationPushRegistry = self->_applicationPushRegistry;
    v9 = [MEMORY[0x1E695DFD8] set];
    [(PKPushRegistry *)applicationPushRegistry setDesiredPushTypes:v9];

    [(PKPushRegistry *)self->_applicationPushRegistry setDelegate:0];
    v10 = self->_applicationPushRegistry;
    self->_applicationPushRegistry = 0;
  }
}

uint64_t __66__UIApplication_pushRegistry_didInvalidatePushTokenForType_error___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 16);

    return [v3 application:? didFailToRegisterForRemoteNotificationsWithError:?];
  }

  return result;
}

- (void)presentLocalNotificationNow:(UILocalNotification *)notification
{
  v4 = [(UILocalNotification *)notification copy];
  [v4 setFireDate:0];
  [v4 setTimeZone:0];
  [v4 setRepeatInterval:0];
  [(UIApplication *)self _scheduleLocalNotification:v4];
}

- (void)scheduleLocalNotification:(UILocalNotification *)notification
{
  v4 = [(UILocalNotification *)notification copy];
  [(UIApplication *)self _scheduleLocalNotification:v4];
}

- (void)_scheduleLocalNotification:(id)notification
{
  notificationCopy = notification;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    currentUserNotificationSettings = [(UIApplication *)self currentUserNotificationSettings];
    types = [currentUserNotificationSettings types];

    if ((types & 4) == 0)
    {
      v6 = [UIUserNotificationSettings settingsForTypes:7 categories:0];
      [(UIApplication *)self registerUserNotificationSettings:v6];
    }
  }

  v7 = notificationCopy;
  if (notificationCopy)
  {
    v8 = (*(UILocalNotificationToUNNotificationRequest + 2))(UILocalNotificationToUNNotificationRequest, notificationCopy);
    currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
    [currentNotificationCenter addNotificationRequest:v8 withCompletionHandler:0];

    v7 = notificationCopy;
  }
}

- (void)cancelLocalNotification:(UILocalNotification *)notification
{
  if (notification)
  {
    v3 = (*(UILocalNotificationToUNNotificationRequest + 2))(UILocalNotificationToUNNotificationRequest, notification);
    if (v3)
    {
      v6 = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObject:v3];
      currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
      [currentNotificationCenter removeSimilarNotificationRequests:v4];

      v3 = v6;
    }
  }
}

- (void)cancelAllLocalNotifications
{
  currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
  [currentNotificationCenter removeAllPendingNotificationRequests];
}

- (void)setScheduledLocalNotifications:(NSArray *)scheduledLocalNotifications
{
  v9 = scheduledLocalNotifications;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    currentUserNotificationSettings = [(UIApplication *)self currentUserNotificationSettings];
    types = [currentUserNotificationSettings types];

    if ((types & 4) == 0)
    {
      v6 = [UIUserNotificationSettings settingsForTypes:7 categories:0];
      [(UIApplication *)self registerUserNotificationSettings:v6];
    }
  }

  v7 = [(NSArray *)v9 bs_map:UILocalNotificationToUNNotificationRequest];
  currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
  [currentNotificationCenter setNotificationRequests:v7];
}

- (NSArray)scheduledLocalNotifications
{
  currentNotificationCenter = [MEMORY[0x1E6983308] currentNotificationCenter];
  pendingNotificationRequests = [currentNotificationCenter pendingNotificationRequests];
  v4 = [pendingNotificationRequests bs_map:UNNotificationRequestToUILocalNotification];

  return v4;
}

- (void)_openURL:(id)l originatingView:(id)view options:(id)options completionHandler:(id)handler
{
  lCopy = l;
  viewCopy = view;
  optionsCopy = options;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__UIApplication__openURL_originatingView_options_completionHandler___block_invoke;
  aBlock[3] = &unk_1E70F3608;
  v14 = handlerCopy;
  v29 = v14;
  v15 = _Block_copy(aBlock);
  if (qword_1EA992E78 != -1)
  {
    dispatch_once(&qword_1EA992E78, &__block_literal_global_1223_0);
  }

  if (byte_1EA992DAB)
  {
    _viewControllerForAncestor = [viewCopy _viewControllerForAncestor];
    extensionContext = [_viewControllerForAncestor extensionContext];

    if (!extensionContext)
    {
      v18 = *(__UILogGetCategoryCachedImpl("Extension", &qword_1EA993128) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Cannot open URL because an extension context could not be found.", v27, 2u);
      }

      v15[2](v15, 0);
    }

    [extensionContext openURL:lCopy completionHandler:v15];
  }

  else if ([(UIApplication *)self isFrontBoard])
  {
    (v15)[2](v15, [(UIApplication *)self _openURL:lCopy]);
  }

  else
  {
    window = [viewCopy window];
    _windowHostingScene = [window _windowHostingScene];
    _currentOpenApplicationEndpoint = [_windowHostingScene _currentOpenApplicationEndpoint];

    if (!_currentOpenApplicationEndpoint)
    {
      v22 = +[_UIApplicationConfigurationLoader sharedLoader];
      applicationInitializationContext = [v22 applicationInitializationContext];
      defaultSceneToken = [applicationInitializationContext defaultSceneToken];

      if (defaultSceneToken)
      {
        stringRepresentation = [defaultSceneToken stringRepresentation];
        v26 = _UISVisibilityEnvironmentForSceneIdentityTokenString();

        _currentOpenApplicationEndpoint = [(UIApplication *)self _currentOpenApplicationEndpointForEnvironment:v26];
      }

      else
      {
        _currentOpenApplicationEndpoint = 0;
      }
    }

    [(UIApplication *)self _openURL:lCopy options:optionsCopy openApplicationEndpoint:_currentOpenApplicationEndpoint completionHandler:v15];
  }
}

uint64_t __68__UIApplication__openURL_originatingView_options_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_beginShowingNetworkActivityIndicator
{
  networkResourcesCurrentlyLoadingCount = self->_networkResourcesCurrentlyLoadingCount;
  if (!networkResourcesCurrentlyLoadingCount)
  {
    hideNetworkActivityIndicatorTimer = self->_hideNetworkActivityIndicatorTimer;
    if (hideNetworkActivityIndicatorTimer && [(NSTimer *)hideNetworkActivityIndicatorTimer isValid])
    {
      [(NSTimer *)self->_hideNetworkActivityIndicatorTimer invalidate];
      v5 = self->_hideNetworkActivityIndicatorTimer;
      self->_hideNetworkActivityIndicatorTimer = 0;
    }

    [UIApp setNetworkActivityIndicatorVisible:1];
    networkResourcesCurrentlyLoadingCount = self->_networkResourcesCurrentlyLoadingCount;
  }

  self->_networkResourcesCurrentlyLoadingCount = networkResourcesCurrentlyLoadingCount + 1;
}

- (void)_endShowingNetworkActivityIndicator
{
  v3 = self->_networkResourcesCurrentlyLoadingCount - 1;
  self->_networkResourcesCurrentlyLoadingCount = v3;
  if (!v3)
  {
    [(NSTimer *)self->_hideNetworkActivityIndicatorTimer invalidate];
    v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__hideNetworkActivityIndicator selector:0 userInfo:0 repeats:0.1];
    hideNetworkActivityIndicatorTimer = self->_hideNetworkActivityIndicatorTimer;
    self->_hideNetworkActivityIndicatorTimer = v5;
  }
}

- (void)_setIgnoreHeadsetClicks:(BOOL)clicks
{
  v3 = 256;
  if (!clicks)
  {
    v3 = 0;
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)_endBackgroundTask:(unint64_t)task
{
  if ((_UIApplicationEndBackgroundTask(task) & 1) == 0)
  {
    v4 = *(&self->_applicationFlags + 1);
    if ((v4 & 0x400000000000) != 0)
    {
      *(&self->_applicationFlags + 1) = v4 & 0xFFFFBFFFFFFFFFFFLL;
      if ((*&self->_applicationFlags & 0x7FFFF) != 0)
      {

        _logApplicationLifecycleMemoryMetricApplicationWillBeSuspended();
      }
    }
  }
}

- (id)_backgroundModes
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v4 = [infoDictionary objectForKey:@"UIBackgroundModes"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v6 = array;

  return v6;
}

- (void)_wakeTimerFired
{
  if (qword_1EA993130)
  {
    (*(qword_1EA993130 + 16))();

    _setNextWakeDate();
  }
}

- (BOOL)setKeepAliveTimeout:(NSTimeInterval)timeout handler:(void *)keepAliveHandler
{
  v6 = keepAliveHandler;
  if (dyld_program_sdk_at_least() && ![(UIApplication *)self _UIApplicationLegacyVoipAllowed])
  {
    NSLog(&cfstr_TheUiapplicati.isa, "[UIApplication setKeepAliveTimeout:handler:]");
    goto LABEL_14;
  }

  if (timeout < 600.0)
  {
    NSLog(&cfstr_Keepalivetimeo.isa, 0x4082C00000000000);
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  _backgroundModes = [(UIApplication *)self _backgroundModes];
  if ([_backgroundModes containsObject:@"voip"])
  {
  }

  else
  {
    _UIApplicationLegacyVoipAllowed = [(UIApplication *)self _UIApplicationLegacyVoipAllowed];

    if (!_UIApplicationLegacyVoipAllowed)
    {
      NSLog(&cfstr_OnlyVoipAppsCa.isa);
      goto LABEL_14;
    }
  }

  qword_1EA993138 = *&timeout;
  v9 = qword_1EA993130;
  if (qword_1EA993130)
  {
    qword_1EA993130 = 0;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v10 = [v6 copy];
  v11 = qword_1EA993130;
  qword_1EA993130 = v10;

  _setNextWakeDate();
  v12 = 1;
LABEL_15:

  return v12;
}

- (void)clearKeepAliveTimeout
{
  if (!dyld_program_sdk_at_least() || [(UIApplication *)self _UIApplicationLegacyVoipAllowed])
  {
    qword_1EA993138 = 0;
    v3 = qword_1EA993130;
    if (qword_1EA993130)
    {
      qword_1EA993130 = 0;
    }

    _setNextWakeDate();
  }
}

- (void)_registerForKeyboardPrefChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _appleKeyboardsPreferencesChanged, @"AppleKeyboardsPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_checkBackgroundRefreshAPIAdoption
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v3 = [infoDictionary objectForKeyedSubscript:@"UIBackgroundModes"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 containsObject:@"fetch"] & 1) == 0 && (objc_msgSend(v3, "containsObject:", @"opportunistic-fetch") & 1) == 0)
  {
    NSLog(&cfstr_YouVeImplement.isa);
  }

  if (_UIDeviceNativeUserInterfaceIdiom() != 4 && (objc_opt_respondsToSelector() & 1) != 0 && ([v3 containsObject:@"remote-notification"] & 1) == 0 && (objc_msgSend(v3, "containsObject:", @"remote-notification-initiated-fetch") & 1) == 0)
  {
    NSLog(&cfstr_YouVeImplement_0.isa);
  }
}

- (void)beginReceivingRemoteControlEvents
{
  remoteControlEventObservers = self->_remoteControlEventObservers;
  self->_remoteControlEventObservers = remoteControlEventObservers + 1;
  if (!remoteControlEventObservers)
  {
    v6[7] = v2;
    v6[8] = v3;
    __MRMediaRemoteSetCanBeNowPlayingApplication(1);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__UIApplication_beginReceivingRemoteControlEvents__block_invoke;
    v6[3] = &unk_1E711DBA0;
    v6[4] = self;
    __MRMediaRemoteSetCommandHandlerBlock(v6);
  }
}

void __50__UIApplication_beginReceivingRemoteControlEvents__block_invoke(uint64_t a1, int a2, const __CFDictionary *a3)
{
  if (a3)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v6 = qword_1EA993298;
    v40 = qword_1EA993298;
    if (!qword_1EA993298)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getkMRMediaRemoteOptionIsExternalPlayerCommandSymbolLoc_block_invoke;
      v36 = &unk_1E70F2F20;
      v7 = MediaRemoteLibrary();
      v38[3] = dlsym(v7, "kMRMediaRemoteOptionIsExternalPlayerCommand");
      qword_1EA993298 = v38[3];
      v6 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v6)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkMRMediaRemoteOptionIsExternalPlayerCommand(void)"];
      [v31 handleFailureInFunction:v32 file:@"UIApplication.m" lineNumber:15566 description:{@"%s", dlerror(), v33, v34, v35, v36}];
      goto LABEL_112;
    }

    v8 = *v6;
    v9 = *v6;
    v10 = CFDictionaryGetValue(a3, v8);
    v11 = v10;
    if (v10 && ([v10 BOOLValue] & 1) != 0)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 99)
  {
    v12 = 6;
    switch(a2)
    {
      case 0:
        goto LABEL_77;
      case 1:
        v12 = 7;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 2:
        v12 = 0;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 3:
        v12 = 5;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 4:
        v12 = 1;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 5:
        v12 = 2;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 6:
        v12 = 12;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 7:
        v12 = 13;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 8:
        v12 = 14;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 9:
        v12 = 16;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 10:
        v12 = 15;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 11:
        v12 = 17;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 12:
        v12 = 23;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 13:
        v12 = 25;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 14:
        v12 = 24;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 15:
        v12 = 26;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 21:
        v12 = 27;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      default:
        goto LABEL_105;
    }
  }

  if (a2 <= 105)
  {
    if (a2 > 102)
    {
      if (a2 == 103)
      {
        v12 = 4;
LABEL_77:
        if (!a3)
        {
          goto LABEL_83;
        }
      }

      else if (a2 == 104)
      {
        v12 = 10;
        if (!a3)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v12 = 11;
        if (!a3)
        {
          goto LABEL_83;
        }
      }
    }

    else if (a2 == 100)
    {
      v12 = 8;
      if (!a3)
      {
        goto LABEL_83;
      }
    }

    else if (a2 == 101)
    {
      v12 = 9;
      if (!a3)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v12 = 3;
      if (!a3)
      {
        goto LABEL_83;
      }
    }

LABEL_78:
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v13 = qword_1EA9932A0;
    v40 = qword_1EA9932A0;
    if (!qword_1EA9932A0)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getkMRMediaRemoteOptionMediaTypeSymbolLoc_block_invoke;
      v36 = &unk_1E70F2F20;
      v14 = MediaRemoteLibrary();
      v38[3] = dlsym(v14, "kMRMediaRemoteOptionMediaType");
      qword_1EA9932A0 = v38[3];
      v13 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v13)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkMRMediaRemoteOptionMediaType(void)"];
      [v31 handleFailureInFunction:v32 file:@"UIApplication.m" lineNumber:15556 description:{@"%s", dlerror(), v33, v34, v35, v36}];
      goto LABEL_112;
    }

    v15 = *v13;
    v16 = *v13;
    Value = CFDictionaryGetValue(a3, v15);
    goto LABEL_84;
  }

  if (a2 <= 112)
  {
    switch(a2)
    {
      case 'j':
        v12 = 28;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 'o':
        v12 = 18;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      case 'p':
        v12 = 19;
        if (!a3)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
    }

LABEL_105:
    CFRetain(&unk_1EFE2D390);

    return;
  }

  if (a2 != 113)
  {
    if (a2 == 114)
    {
      v12 = 21;
      if (!a3)
      {
        goto LABEL_83;
      }

      goto LABEL_78;
    }

    if (a2 == 115)
    {
      v12 = 22;
      if (!a3)
      {
        goto LABEL_83;
      }

      goto LABEL_78;
    }

    goto LABEL_105;
  }

  v12 = 20;
  if (a3)
  {
    goto LABEL_78;
  }

LABEL_83:
  Value = 0;
LABEL_84:
  v18 = Value;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v19 = qword_1EA9932A8;
  v40 = qword_1EA9932A8;
  if (!qword_1EA9932A8)
  {
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __getkMRMediaRemoteMediaTypeAudioSymbolLoc_block_invoke;
    v36 = &unk_1E70F2F20;
    v20 = MediaRemoteLibrary();
    v38[3] = dlsym(v20, "kMRMediaRemoteMediaTypeAudio");
    qword_1EA9932A8 = v38[3];
    v19 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (v19)
  {
    if ([v18 isEqualToString:*v19])
    {
      v21 = 3;
    }

    else
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v22 = qword_1EA9932B0;
      v40 = qword_1EA9932B0;
      if (!qword_1EA9932B0)
      {
        v33 = MEMORY[0x1E69E9820];
        v34 = 3221225472;
        v35 = __getkMRMediaRemoteMediaTypeVideoSymbolLoc_block_invoke;
        v36 = &unk_1E70F2F20;
        v23 = MediaRemoteLibrary();
        v38[3] = dlsym(v23, "kMRMediaRemoteMediaTypeVideo");
        qword_1EA9932B0 = v38[3];
        v22 = v38[3];
      }

      _Block_object_dispose(&v37, 8);
      if (!v22)
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkMRMediaRemoteMediaTypeVideo(void)"];
        [v31 handleFailureInFunction:v32 file:@"UIApplication.m" lineNumber:15560 description:{@"%s", dlerror(), v33, v34, v35, v36}];
        goto LABEL_112;
      }

      if ([v18 isEqualToString:*v22])
      {
        v21 = 2;
      }

      else
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x2020000000;
        v24 = qword_1EA9932B8;
        v40 = qword_1EA9932B8;
        if (!qword_1EA9932B8)
        {
          v33 = MEMORY[0x1E69E9820];
          v34 = 3221225472;
          v35 = __getkMRMediaRemoteMediaTypeImageSymbolLoc_block_invoke;
          v36 = &unk_1E70F2F20;
          v25 = MediaRemoteLibrary();
          v38[3] = dlsym(v25, "kMRMediaRemoteMediaTypeImage");
          qword_1EA9932B8 = v38[3];
          v24 = v38[3];
        }

        _Block_object_dispose(&v37, 8);
        if (!v24)
        {
          v31 = [MEMORY[0x1E696AAA8] currentHandler];
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkMRMediaRemoteMediaTypeImage(void)"];
          [v31 handleFailureInFunction:v32 file:@"UIApplication.m" lineNumber:15562 description:{@"%s", dlerror(), v33, v34, v35, v36}];
          goto LABEL_112;
        }

        v21 = [v18 isEqualToString:*v24];
      }
    }

    if (!a3)
    {
      v30 = 0;
      goto LABEL_104;
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v26 = qword_1EA9932C0;
    v40 = qword_1EA9932C0;
    if (!qword_1EA9932C0)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getkMRMediaRemoteOptionTrackIDSymbolLoc_block_invoke;
      v36 = &unk_1E70F2F20;
      v27 = MediaRemoteLibrary();
      v38[3] = dlsym(v27, "kMRMediaRemoteOptionTrackID");
      qword_1EA9932C0 = v38[3];
      v26 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (v26)
    {
      v28 = *v26;
      v29 = *v26;
      v30 = CFDictionaryGetValue(a3, v28);
LABEL_104:
      [*(a1 + 32) _postSimpleRemoteNotificationForAction:v12 andContext:v21 trackID:v30];

      goto LABEL_105;
    }

    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNumber *getkMRMediaRemoteOptionTrackID(void)"];
    [v31 handleFailureInFunction:v32 file:@"UIApplication.m" lineNumber:15564 description:{@"%s", dlerror(), v33, v34, v35, v36}];
  }

  else
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkMRMediaRemoteMediaTypeAudio(void)"];
    [v31 handleFailureInFunction:v32 file:@"UIApplication.m" lineNumber:15558 description:{@"%s", dlerror(), v33, v34, v35, v36}];
  }

LABEL_112:

  __break(1u);
}

- (void)endReceivingRemoteControlEvents
{
  remoteControlEventObservers = self->_remoteControlEventObservers;
  v4 = remoteControlEventObservers == 1;
  v5 = remoteControlEventObservers < 1;
  v6 = remoteControlEventObservers - 1;
  if (!v5)
  {
    self->_remoteControlEventObservers = v6;
    if (v4)
    {
      __MRMediaRemoteSetCanBeNowPlayingApplication(0);

      __MRMediaRemoteSetCommandHandlerBlock(0);
    }
  }
}

- (void)_sendHeadsetOriginatedMediaRemoteCommand:(unsigned int)command
{
  v3 = *&command;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getMRMediaRemoteSendCommandSymbolLoc_ptr;
  v11 = getMRMediaRemoteSendCommandSymbolLoc_ptr;
  if (!getMRMediaRemoteSendCommandSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v9[3] = dlsym(v5, "MRMediaRemoteSendCommand");
    getMRMediaRemoteSendCommandSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    if (!v4(v3, 0))
    {
      NSLog(&cfstr_SUnableToSendC.isa, "[UIApplication _sendHeadsetOriginatedMediaRemoteCommand:]", v3);
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean __MRMediaRemoteSendCommand(MRMediaRemoteCommand, CFDictionaryRef)"}];
    [currentHandler handleFailureInFunction:v7 file:@"UIApplication.m" lineNumber:15570 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_setSystemWindowsSecure:(BOOL)secure
{
  v3 = 0x200000000;
  if (!secure)
  {
    v3 = 0;
  }

  *(&self->_applicationFlags + 1) = *(&self->_applicationFlags + 1) & 0xFFFFFFFDFFFFFFFFLL | v3;
  [(UIWindow *)self->_backgroundHitTestWindow _setSecure:?];
}

- (id)_preferredContentSizeCategory:(unint64_t)category
{
  categoryCopy = category;
  preferredContentSizeCategory = [(UIApplication *)self preferredContentSizeCategory];
  v5 = preferredContentSizeCategory;
  if ((categoryCopy & 1) != 0 && UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v6 = @"UICTContentSizeCategoryXXXL";

    v5 = v6;
  }

  if ((categoryCopy & 2) != 0)
  {
    if (qword_1EA9932C8 != -1)
    {
      dispatch_once(&qword_1EA9932C8, &__block_literal_global_3903);
    }

    if ([qword_1EA9932D0 containsObject:v5])
    {
      _defaultContentSizeCategory = [objc_opt_class() _defaultContentSizeCategory];

      v5 = _defaultContentSizeCategory;
    }
  }

  return v5;
}

- (id)_findPrintTarget:(id)target
{
  targetCopy = target;
  if ([(UIApplication *)self _supportsPrintCommand])
  {
    _responderForKeyEvents = [(UIApplication *)self _responderForKeyEvents];
    v6 = _UIResponderTargetForAction(_responderForKeyEvents, sel_print_, targetCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_supportsPrintCommand
{
  supportsPrintCommand = [(_UIApplicationInfoParser *)self->_appInfo supportsPrintCommand];
  if (supportsPrintCommand)
  {

    LOBYTE(supportsPrintCommand) = dyld_program_sdk_at_least();
  }

  return supportsPrintCommand;
}

- (BOOL)_supportsOpenMainMenuCommands
{
  if (qword_1EA993140 != -1)
  {
    dispatch_once(&qword_1EA993140, &__block_literal_global_2302_0);
  }

  return byte_1EA992DCE;
}

void __46__UIApplication__supportsOpenMainMenuCommands__block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    v0 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    v1 = objc_opt_class();
    v5 = v0;
    if (v1)
    {
      if (objc_opt_isKindOfClass())
      {
        v2 = v5;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;

    if (v3)
    {
      if ([v3 supportsOpenInPlace])
      {
        v4 = [v3 claimRecords];
        byte_1EA992DCE = [v4 bs_containsObjectPassingTest:&__block_literal_global_2307];
      }

      else
      {
        byte_1EA992DCE = 0;
      }
    }
  }
}

uint64_t __46__UIApplication__supportsOpenMainMenuCommands__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 handlerRank];
  if ([v2 isEqual:*MEMORY[0x1E69636D0]] & 1) != 0 || (objc_msgSend(v2, "isEqual:", *MEMORY[0x1E69636C0]))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqual:*MEMORY[0x1E69636C8]];
  }

  return v3;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == sel__toggleSoftwareKeyboard_)
  {
    v5 = +[UIKeyboardImpl activeInstance];
    if ([v5 isMinimized])
    {
      v6 = @"Show Keyboard";
    }

    else
    {
      v6 = @"Hide Keyboard";
    }

    v7 = _UINSLocalizedStringWithDefaultValue(v6, v6);
    [commandCopy setTitle:v7];

    [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") & 0xFFFFFFFFFFFFFFFBLL}];
    if (!+[UIKeyboardVisualModeManager softwareKeyboardAllowedForActiveKeyboardSceneDelegate])
    {
      [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") | 1}];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIApplication;
    [(UIResponder *)&v8 validateCommand:commandCopy];
  }
}

- (void)requestNewScene:(id)scene
{
  v3 = +[UISceneSessionActivationRequest request];
  [UIApp activateSceneSessionForRequest:v3 errorHandler:&__block_literal_global_2321];
}

void __33__UIApplication_requestNewScene___block_invoke(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v2;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to create a new scene. Error: %@", &v3, 0xCu);
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_orderFrontCharacterPalette_ == action || sel__handleLegacyEmojiKeyboardShortcut_ == action)
  {
    v8 = +[UIKeyboardImpl activeInstance];
    canPresentOrDismissEmojiFromShortcut = [v8 canPresentOrDismissEmojiFromShortcut];
  }

  else
  {
    if (sel_startDictation_ == action)
    {
      v11 = +[UIDictationController canPerformDictation];
      goto LABEL_12;
    }

    if (sel__toggleSoftwareKeyboard_ != action)
    {
      v13.receiver = self;
      v13.super_class = UIApplication;
      v11 = [(UIResponder *)&v13 canPerformAction:action withSender:senderCopy];
LABEL_12:
      v10 = v11;
      goto LABEL_13;
    }

    v8 = +[UIKeyboardImpl activeInstance];
    canPresentOrDismissEmojiFromShortcut = [v8 canToggleSoftwareKeyboard];
  }

  v10 = canPresentOrDismissEmojiFromShortcut;

LABEL_13:
  return v10;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  _storyboardInitialMenu = [(UIApplication *)self _storyboardInitialMenu];
  if (_storyboardInitialMenu)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:15949 description:@"Legacy menu found in storyboard. Please recompile using the latest version of Xcode."];
    }

    if (dyld_program_sdk_at_least())
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:15950 description:@"Building the menu bar using a storyboard is no longer supported for iOS and Mac Catalyst apps. Please migrate to the UIMenuBuilder or Commands APIs."];
    }

    [builderCopy _patch:_storyboardInitialMenu];
  }
}

- (void)requestSceneSessionActivation:(UISceneSession *)sceneSession userActivity:(NSUserActivity *)userActivity options:(UISceneActivationRequestOptions *)options errorHandler:(void *)errorHandler
{
  v10 = errorHandler;
  v11 = options;
  v12 = userActivity;
  if (sceneSession)
  {
    [UISceneSessionActivationRequest requestWithSession:sceneSession];
  }

  else
  {
    +[UISceneSessionActivationRequest request];
  }
  v13 = ;
  [v13 setUserActivity:v12];

  [v13 setOptions:v11];
  [(UIApplication *)self activateSceneSessionForRequest:v13 errorHandler:v10];
}

- (void)activateSceneSessionForRequest:(UISceneSessionActivationRequest *)request errorHandler:(void *)errorHandler
{
  v6 = request;
  v7 = errorHandler;
  if (qword_1EA993148 != -1)
  {
    dispatch_once(&qword_1EA993148, &__block_literal_global_2338);
  }

  if ((byte_1EA992DCF & 1) == 0)
  {
    v19 = *(__UILogGetCategoryCachedImpl("Scene", &qword_1EA993158) + 8);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v20 = "Cannot request scene session activation because it is not supported on the current device.";
    goto LABEL_12;
  }

  if ([(_UIApplicationInfoParser *)self->_appInfo supportsMultiwindow])
  {
    v8 = +[UIWindowScene _keyWindowScene];
    _eventDeferringManager = [v8 _eventDeferringManager];
    v10 = [(_UIEventDeferringManager *)_eventDeferringManager bufferKeyboardFocusEnvironmentEventsWithReason:?];

    v11 = +[_UIWorkspaceSceneRequestOptionsFactory sharedFactory];
    v12 = qword_1EA992E60;
    v13 = [v11 customEndpointForRequest:v6];
    if (!v13)
    {
      v14 = MEMORY[0x1E698F498];
      defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
      v13 = [v14 endpointForMachName:defaultShellMachName service:@"com.apple.frontboard.workspace-service" instance:0];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__UIApplication_activateSceneSessionForRequest_errorHandler___block_invoke;
    v21[3] = &unk_1E711DC10;
    v22 = v10;
    v24 = v13;
    v25 = v7;
    v23 = v12;
    v16 = v13;
    v17 = v12;
    v18 = v10;
    [v11 buildWorkspaceRequestOptionsForRequest:v6 withContinuation:v21];

    goto LABEL_15;
  }

  v19 = *(__UILogGetCategoryCachedImpl("Scene", &qword_1EA993160) + 8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v20 = "Cannot request scene session activation because the application does not support multiple scenes.";
LABEL_12:
    _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
  }

LABEL_13:
  if (v7)
  {
    v11 = _UISceneErrorWithCode(0);
    (*(v7 + 2))(v7, v11);
LABEL_15:
  }
}

void __61__UIApplication_activateSceneSessionForRequest_errorHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) invalidate];
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__UIApplication_activateSceneSessionForRequest_errorHandler___block_invoke_2;
    v10[3] = &unk_1E711DBE8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    [v8 requestSceneFromEndpoint:v9 withOptions:v5 completion:v10];
  }
}

void __61__UIApplication_activateSceneSessionForRequest_errorHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [*(a1 + 32) invalidate];
  if (v4)
  {
    v5 = *(__UILogGetCategoryCachedImpl("Scene", &UIApplicationBackgroundRefreshStatusDidChangeNotification_block_invoke_8___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Scene session activation failed with error: %@", &v7, 0xCu);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v4);
    }
  }
}

- (void)_requestSceneSessionActivationWithConfiguration:(id)configuration errorHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [configuration copy];
  _UIWindowSceneActivationPrepareConfiguration(v6, 0, 0, 0, 0);
  _UIWindowSceneActivateConfiguration(v6, 0, handlerCopy);
}

- (void)requestSceneSessionDestruction:(UISceneSession *)sceneSession options:(UISceneDestructionRequestOptions *)options errorHandler:(void *)errorHandler
{
  v32[1] = *MEMORY[0x1E69E9840];
  v9 = sceneSession;
  v10 = options;
  v11 = errorHandler;
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:16153 description:{@"Invalid parameter not satisfying: %@", @"sceneSession"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__UIApplication_requestSceneSessionDestruction_options_errorHandler___block_invoke;
  aBlock[3] = &unk_1E710DB08;
  v12 = v11;
  v31 = v12;
  v13 = _Block_copy(aBlock);
  if (qword_1EA993148 != -1)
  {
    dispatch_once(&qword_1EA993148, &__block_literal_global_2338);
  }

  if ((byte_1EA992DCF & 1) == 0)
  {
    v19 = *(__UILogGetCategoryCachedImpl("Scene", &qword_1EA993168) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Invalid attempt to call [UIApplication requestSceneSessionDestruction:] from an unsupported device.";
LABEL_19:
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    }

LABEL_20:
    persistentIdentifier = _UISceneErrorWithCode(0);
    v13[2](v13, persistentIdentifier);
    goto LABEL_23;
  }

  if (![(_UIApplicationInfoParser *)self->_appInfo supportsMultiwindow])
  {
    v19 = *(__UILogGetCategoryCachedImpl("Scene", &qword_1EA993170) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Calling [UIApplication requestSceneSessionDestruction:] requires multiwindow adoption.";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v10 && (objc_opt_self(), v14 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) != 0))
  {
    windowDismissalAnimation = [(UISceneDestructionRequestOptions *)v10 windowDismissalAnimation];
    if (windowDismissalAnimation == 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    if (windowDismissalAnimation == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    v18 = 1;
  }

  persistentIdentifier = [(UISceneSession *)v9 persistentIdentifier];
  v22 = objc_alloc_init(MEMORY[0x1E69DEBB8]);
  v32[0] = persistentIdentifier;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __69__UIApplication_requestSceneSessionDestruction_options_errorHandler___block_invoke_2353;
  v26[3] = &unk_1E711DC38;
  v27 = v22;
  v28 = v12;
  v24 = v22;
  [v24 destroyScenesWithPersistentIdentifiers:v23 animationType:v18 destroySessions:1 completion:v26];

LABEL_23:
}

uint64_t __69__UIApplication_requestSceneSessionDestruction_options_errorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __69__UIApplication_requestSceneSessionDestruction_options_errorHandler___block_invoke_2353(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __69__UIApplication_requestSceneSessionDestruction_options_errorHandler___block_invoke_2;
  v9 = &unk_1E70F37C0;
  v10 = v4;
  v11 = *(a1 + 40);
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], &v6);
  [*(a1 + 32) invalidate];
}

uint64_t __69__UIApplication_requestSceneSessionDestruction_options_errorHandler___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    result = *(result + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)requestSceneSessionRefresh:(UISceneSession *)sceneSession
{
  v5 = sceneSession;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:16223 description:{@"Invalid parameter not satisfying: %@", @"sceneSession != nil"}];
  }

  if (![(UISceneSession *)v5 _trackingRefreshRequest])
  {
    [(UISceneSession *)v5 _setTrackingRefreshRequest:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__UIApplication_requestSceneSessionRefresh___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    v6 = v5;
    v29 = v6;
    v7 = _Block_copy(aBlock);
    scene = [(UISceneSession *)v6 scene];
    v9 = scene;
    if (scene)
    {
      v10 = UIApp;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __44__UIApplication_requestSceneSessionRefresh___block_invoke_2;
      v25[3] = &unk_1E70FCE28;
      v25[4] = self;
      v26 = scene;
      v27 = v7;
      v11 = v7;
      [v10 _performBlockAfterCATransactionCommits:v25];
    }

    else
    {
      v12 = MEMORY[0x1E698F498];
      v13 = qword_1EA992E60;
      defaultShellMachName = [v12 defaultShellMachName];
      v15 = [v12 endpointForMachName:defaultShellMachName service:@"com.apple.frontboard.workspace-service" instance:0];

      v16 = objc_opt_new();
      persistentIdentifier = [(UISceneSession *)v6 persistentIdentifier];
      [v16 setIdentifier:persistentIdentifier];

      v18 = objc_alloc_init(MEMORY[0x1E69DEC10]);
      [v16 setScenePlacementConfiguration:v18];

      [v16 setRequestBackground:1];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __44__UIApplication_requestSceneSessionRefresh___block_invoke_3;
      v21[3] = &unk_1E711DC60;
      v24 = v7;
      v22 = v6;
      selfCopy = self;
      v19 = v7;
      [v13 requestSceneFromEndpoint:v15 withOptions:v16 completion:v21];
    }
  }
}

void __44__UIApplication_requestSceneSessionRefresh___block_invoke_3(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(a1[6] + 16))();
    v7 = *(__UILogGetCategoryCachedImpl("SceneSessionRequests", &UIApplicationBackgroundRefreshStatusDidChangeNotification_block_invoke_9___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = a1[4];
      v9 = v7;
      v10 = [v8 persistentIdentifier];
      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Could not request UISceneSession with persistent identifier: %@ due to error: %@", buf, 0x16u);
    }
  }

  else
  {
    v11 = a1[5];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__UIApplication_requestSceneSessionRefresh___block_invoke_2360;
    v15[3] = &unk_1E70FCE28;
    v12 = v5;
    v13 = a1[5];
    v14 = a1[6];
    v16 = v12;
    v17 = v13;
    v18 = v14;
    [v11 _performBlockAfterCATransactionCommitSynchronizes:v15];
  }
}

void __44__UIApplication_requestSceneSessionRefresh___block_invoke_2360(uint64_t a1)
{
  v2 = [UIScene _sceneForFBSScene:*(a1 + 32)];
  [*(a1 + 40) _performRefreshForUIScene:v2 disposeAfter:1 completion:*(a1 + 48)];
}

- (void)_performRefreshForUIScene:(id)scene disposeAfter:(BOOL)after completion:(id)completion
{
  sceneCopy = scene;
  completionCopy = completion;
  if (!sceneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplication.m" lineNumber:16272 description:{@"Invalid parameter not satisfying: %@", @"uiScene != nil"}];
  }

  v11 = sceneCopy;
  _effectiveUISettings = [v11 _effectiveUISettings];
  _hasInvalidated = [v11 _hasInvalidated];

  if (_hasInvalidated)
  {

    goto LABEL_5;
  }

  if ([_effectiveUISettings isForeground])
  {
    IsSEO = _UISceneLifecycleStateIsSEO(_effectiveUISettings);

    if (!IsSEO)
    {
LABEL_5:
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  [v11 _setIsRespondingToLifecycleEvent:1];
  if ([v11 _isReadyForSuspension])
  {
    [v11 _prepareForResume];
  }

  [(UIApplication *)self _saveRestorationUserActivityStateForScene:v11];
  _FBSScene = [v11 _FBSScene];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__UIApplication__performRefreshForUIScene_disposeAfter_completion___block_invoke;
  v18[3] = &unk_1E711DC88;
  v18[4] = self;
  v19 = _FBSScene;
  v20 = v11;
  v21 = completionCopy;
  afterCopy = after;
  v16 = _FBSScene;
  [(UIApplication *)self _beginSnapshotSessionForScene:v16 withSnapshotBlock:v18];

LABEL_14:
}

void __67__UIApplication__performRefreshForUIScene_disposeAfter_completion___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _createSnapshotContextForScene:*(a1 + 40) withName:@"UIApplicationAutomaticSnapshotDefault" performLayoutWithSettings:0];
  if (v4)
  {
    [*(a1 + 40) performSnapshotWithContext:v4];
  }

  if (v3)
  {
    v3[2](v3);
  }

  [*(a1 + 48) _setIsRespondingToLifecycleEvent:0];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = [*(a1 + 48) _isEligibleForSuspension];
  if (*(a1 + 64) == 1 && v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DEBB8]);
    v8 = [*(a1 + 48) session];
    v9 = [v8 persistentIdentifier];
    v15[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__UIApplication__performRefreshForUIScene_disposeAfter_completion___block_invoke_2;
    v12[3] = &unk_1E711DB48;
    v13 = *(a1 + 48);
    v14 = v7;
    v11 = v7;
    [v11 destroyScenesWithPersistentIdentifiers:v10 animationType:1 destroySessions:0 completion:v12];
  }

  else if (v6)
  {
    [*(a1 + 48) _prepareForSuspend];
  }
}

void __67__UIApplication__performRefreshForUIScene_disposeAfter_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __67__UIApplication__performRefreshForUIScene_disposeAfter_completion___block_invoke_3;
  v9 = &unk_1E70F35B8;
  v10 = v4;
  v11 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], &v6);
  [*(a1 + 40) invalidate];
}

void __67__UIApplication__performRefreshForUIScene_disposeAfter_completion___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(__UILogGetCategoryCachedImpl("SceneSessionRequests", &UIApplicationBackgroundRefreshStatusDidChangeNotification_block_invoke_10___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v3 = *(a1 + 40);
      v4 = v2;
      v5 = [v3 session];
      v6 = [v5 persistentIdentifier];
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Failed to dismiss UIScene with persistent identifier: %@ after refresh due to error: %@", &v8, 0x16u);
    }
  }
}

- (int64_t)defaultStatusForCategory:(int64_t)category error:(id *)error
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E6963650] queryResultForCategory:category error:?];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  if (![v5 didRefresh])
  {
    if (!error)
    {
      goto LABEL_15;
    }

    referenceDate = [v6 referenceDate];
    refreshAfter = [v6 refreshAfter];
    v9 = refreshAfter;
    if (referenceDate)
    {
      v10 = refreshAfter == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v14[0] = @"UIApplicationCategoryDefaultStatusLastProvidedDateErrorKey";
      v14[1] = @"UIApplicationCategoryDefaultRetryAvailabilityDateErrorKey";
      v15[0] = referenceDate;
      v15[1] = refreshAfter;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UIApplicationCategoryDefaultErrorDomain" code:1 userInfo:v11];
    *error = v12;

LABEL_14:
    error = 0;
    goto LABEL_15;
  }

  if ([v6 isDefaultForCategory])
  {
    error = 1;
  }

  else
  {
    error = 2;
  }

LABEL_15:

  return error;
}

- (BOOL)supportsAlternateIcons
{
  v2 = LSApplicationProxyForSettingCurrentApplicationIcon();
  v3 = v2 != 0;

  return v3;
}

- (void)_setAlternateIconName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v8 = LSApplicationProxyForSettingCurrentApplicationIcon();
  if (v8)
  {
    if ((*(&self->_applicationFlags + 13) & 2) == 0 && [(UIApplication *)self applicationState]== UIApplicationStateActive)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __86__UIApplication_UIAlternateApplicationIcons___setAlternateIconName_completionHandler___block_invoke_3;
      v12[3] = &unk_1E711D630;
      v9 = &v13;
      v13 = handlerCopy;
      [v8 setAlternateIconName:nameCopy withResult:v12];
      goto LABEL_7;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__UIApplication_UIAlternateApplicationIcons___setAlternateIconName_completionHandler___block_invoke_2;
    v14[3] = &unk_1E70F0F78;
    v9 = &v15;
    v15 = handlerCopy;
    v10 = MEMORY[0x1E69E96A0];
    v11 = v14;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__UIApplication_UIAlternateApplicationIcons___setAlternateIconName_completionHandler___block_invoke;
    block[3] = &unk_1E70F0F78;
    v9 = &v17;
    v17 = handlerCopy;
    v10 = MEMORY[0x1E69E96A0];
    v11 = block;
  }

  dispatch_async(v10, v11);
LABEL_7:
}

void __86__UIApplication_UIAlternateApplicationIcons___setAlternateIconName_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __86__UIApplication_UIAlternateApplicationIcons___setAlternateIconName_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __86__UIApplication_UIAlternateApplicationIcons___setAlternateIconName_completionHandler___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__UIApplication_UIAlternateApplicationIcons___setAlternateIconName_completionHandler___block_invoke_4;
    block[3] = &unk_1E70F0F78;
    v7 = &v12;
    v12 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (!v5)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__UIApplication_UIAlternateApplicationIcons___setAlternateIconName_completionHandler___block_invoke_5;
    v8[3] = &unk_1E70F4A50;
    v7 = &v10;
    v10 = *(a1 + 32);
    v6 = v6;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

- (void)setAlternateIconName:(NSString *)alternateIconName completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__UIApplication_UIAlternateApplicationIcons__setAlternateIconName_completionHandler___block_invoke;
  v8[3] = &unk_1E710DB08;
  v9 = v6;
  v7 = v6;
  [(UIApplication *)self _setAlternateIconName:alternateIconName completionHandler:v8];
}

void __85__UIApplication_UIAlternateApplicationIcons__setAlternateIconName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 16);
LABEL_7:
      v5();
    }
  }

  else if (_os_feature_enabled_impl())
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v5 = *(v6 + 16);
      goto LABEL_7;
    }
  }

  else
  {
    v7 = +[UIWindow _applicationKeyWindow];
    if (!v7)
    {
      v8 = [objc_opt_self() mainScreen];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __85__UIApplication_UIAlternateApplicationIcons__setAlternateIconName_completionHandler___block_invoke_2;
      v24[3] = &unk_1E70F44A8;
      v9 = v8;
      v25 = v9;
      v10 = [_UISceneLifecycleMultiplexer mostActiveSceneWithTest:v24];
      if (!v10)
      {
        v10 = [_UISceneLifecycleMultiplexer mostActiveSceneWithTest:&__block_literal_global_3449];
      }

      v7 = [v10 _topVisibleWindowPassingTest:&__block_literal_global_3451];
      if (!v7)
      {
        v7 = [UIWindow _topVisibleWindowPassingTest:&__block_literal_global_3451];
      }
    }

    v11 = [UIViewController _viewControllerForFullScreenPresentationFromView:v7];
    v12 = LSApplicationProxyForSettingCurrentApplicationIcon();
    v13 = [v12 localizedNameForContext:0];

    v14 = objc_opt_new();
    v15 = MEMORY[0x1E696AEC0];
    v16 = _UINSLocalizedStringWithDefaultValue(@"ALTERNATE_APP_ICONS_CONFIRMATION_MESSAGE", @"You have changed the icon for “%@”.");
    v17 = [v15 localizedStringWithFormat:v16, v13];
    [v14 setMessageText:v17];

    v18 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
    [v18 setContentViewController:v14];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__UIApplication_UIAlternateApplicationIcons__setAlternateIconName_completionHandler___block_invoke_5;
    aBlock[3] = &unk_1E7115460;
    v23 = *(a1 + 32);
    v19 = _Block_copy(aBlock);
    v20 = _UINSLocalizedStringWithDefaultValue(@"ALTERNATE_APP_ICONS_CONFIRMATION_DISMISS_BUTTON", @"OK");
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:v19];
    [v18 addAction:v21];

    [v11 presentViewController:v18 animated:1 completion:0];
  }
}

uint64_t __85__UIApplication_UIAlternateApplicationIcons__setAlternateIconName_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _hostsWindows])
  {
    v4 = v3;
    v5 = [v4 _screen];
    if (v5 == *(a1 + 32))
    {
      v7 = [v4 _effectiveUISettings];
      IsForegroundActive = _UISceneLifecycleStateIsForegroundActive(v7);
    }

    else
    {
      IsForegroundActive = 0;
    }
  }

  else
  {
    IsForegroundActive = 0;
  }

  return IsForegroundActive;
}

uint64_t __85__UIApplication_UIAlternateApplicationIcons__setAlternateIconName_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _hostsWindows])
  {
    v3 = [v2 _effectiveUISettings];
    v4 = [v3 isForeground];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __85__UIApplication_UIAlternateApplicationIcons__setAlternateIconName_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 canBecomeKeyWindow] && (objc_msgSend(v2, "_isTextEffectsWindow") & 1) == 0)
  {
    v3 = [v2 isInternalWindow] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __85__UIApplication_UIAlternateApplicationIcons__setAlternateIconName_completionHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)restoreApplicationPreservationStateWithSessionIdentifier:(id)identifier viewController:(id)controller beginHandler:(id)handler completionHandler:(id)completionHandler
{
  identifierCopy = identifier;
  controllerCopy = controller;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if ((byte_1EA992DD1 & 1) == 0)
  {
    RestorationRetryCountAndUpdateIfNecessary = _getRestorationRetryCountAndUpdateIfNecessary(identifierCopy);
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UIStateRestorationDeveloperMode", *MEMORY[0x1E695E8A8], 0);
    if (RestorationRetryCountAndUpdateIfNecessary > 0 || AppBooleanValue)
    {
      if (RestorationRetryCountAndUpdateIfNecessary <= 0 && _UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SDeveloperMode_0.isa, "[UIApplication(StateRestoration) restoreApplicationPreservationStateWithSessionIdentifier:viewController:beginHandler:completionHandler:]", identifierCopy);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      qword_1EA993198 = 0;
      p_applicationFlags = &selfCopy->_applicationFlags;
      *(&selfCopy->_applicationFlags + 1) |= 0x800000uLL;
      _incrementRestorationMarkerCount(selfCopy, identifierCopy, 1);
      objc_sync_exit(selfCopy);

      +[UIResponder _startDeferredTrackingObjectsWithIdentifiers];
      [controllerCopy _rebuildStateRestorationIdentifierPath];
      [(UIApplication *)selfCopy _restoreApplicationPreservationStateWithSessionIdentifier:identifierCopy beginHandler:handlerCopy completionHandler:completionHandlerCopy];
      v17 = selfCopy;
      objc_sync_enter(v17);
      _decrementRestorationMarkerCount(v17, identifierCopy);
      objc_sync_exit(v17);

      +[UIResponder _cleanupAllStateRestorationTables];
      v18 = selfCopy;
      objc_sync_enter(v18);
      *(p_applicationFlags + 1) &= ~0x800000uLL;
      objc_sync_exit(v18);
    }

    else
    {
      NSLog(&cfstr_TooManyFailedA.isa, identifierCopy);
      _deleteRestorationArchive(identifierCopy);
    }
  }
}

- (void)removeApplicationPreservationStateWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v3 = _restorationPath(identifierCopy);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtURL:v3 error:0];
}

- (unint64_t)_restorationArchiveProtectionClass
{
  if (!self->_saveStateRestorationArchiveWithFileProtectionCompleteUntilFirstUserAuthentication)
  {
    if (qword_1EA9931A0 != -1)
    {
      dispatch_once(&qword_1EA9931A0, &__block_literal_global_3538);
    }

    if (byte_1EA992DD8 != 1)
    {
      return 805306368;
    }
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SSavingRestora.isa, "[UIApplication(StateRestoration) _restorationArchiveProtectionClass]");
  }

  return 0x40000000;
}

void __69__UIApplication_StateRestoration___restorationArchiveProtectionClass__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v0 infoDictionary];

  v1 = [v5 objectForKey:@"UIStateRestorationFileProtection"];
  v2 = [v1 isEqualToString:*MEMORY[0x1E696A388]];

  if (v2)
  {
    HasEntitlement = UISelfHasEntitlement(*MEMORY[0x1E696A378]);
    v4 = UISelfHasEntitlement(*MEMORY[0x1E696A380]);
    if ((HasEntitlement & 1) == 0 && (v4 & 1) == 0)
    {
      byte_1EA992DD8 = 1;
    }
  }
}

- (void)_saveApplicationPreservationState:(id)state viewController:(id)controller sessionIdentifier:(id)identifier beginHandler:(id)handler completionHandler:(id)completionHandler
{
  v114[2] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  controllerCopy = controller;
  identifierCopy = identifier;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  byte_1EA992DD9 = 0;
  selfCopy = self;
  v97 = objc_opt_respondsToSelector();
  v96 = [[UIStateRestorationKeyedArchiver alloc] initRequiringSecureCoding:v97 & 1];
  v12 = +[_UIStateRestorationKeyedArchiverDelegate sharedDelegate];
  [v96 setDelegate:v12];

  if (identifierCopy)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v96);
    }

    goto LABEL_4;
  }

  if (*(&self->_applicationFlags + 7))
  {
    if (objc_opt_respondsToSelector())
    {
      v40 = [(UIApplicationDelegate *)self->_delegate application:self shouldSaveSecureApplicationState:v96];
    }

    else
    {
      if (qword_1EA9931A8 != -1)
      {
        dispatch_once(&qword_1EA9931A8, &__block_literal_global_3545);
      }

      v40 = [(UIApplicationDelegate *)self->_delegate application:self shouldSaveApplicationState:v96];
    }

    if (v40)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        v75 = @"NO";
        if (v97)
        {
          v75 = @"YES";
        }

        NSLog(&cfstr_SApplicationSu.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", v75);
      }

LABEL_4:
      v109 = 0;
      v110 = 0;
      v108 = 0;
      _UIInitializeStateRestorationCollections(&v110, &v109, &v108);
      v82 = v110;
      v94 = v109;
      v81 = v108;
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      [v96 encodeInt:2 forKey:@"kUIStateRestorationArchiveMajorVersionKey"];
      [v96 encodeInt:1 forKey:@"kUIStateRestorationArchiveMinorVersionKey"];
      v13 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v13 userInterfaceIdiom];

      v15 = [MEMORY[0x1E696AD98] numberWithInt:userInterfaceIdiom];
      [v96 encodeObject:v15 forKey:@"UIApplicationStateRestorationUserInterfaceIdiom"];

      date = [MEMORY[0x1E695DF00] date];
      [v96 encodeObject:date forKey:@"UIApplicationStateRestorationTimestamp"];

      v17 = +[UIDevice currentDevice];
      systemVersion = [v17 systemVersion];
      [v96 encodeObject:systemVersion forKey:@"UIApplicationStateRestorationSystemVersion"];

      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      if (mainBundle)
      {
        infoDictionary = [mainBundle infoDictionary];
        v20 = [infoDictionary objectForKey:*MEMORY[0x1E695E500]];

        if (v20)
        {
          [v96 encodeObject:v20 forKey:@"UIApplicationStateRestorationBundleVersion"];
        }
      }

      if (!identifierCopy && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(UIApplicationDelegate *)self->_delegate application:self willEncodeRestorableStateWithCoder:v96];
      }

      if ([stateCopy count])
      {
        v93 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(stateCopy, "count")}];
        v91 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(stateCopy, "count")}];
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v21 = stateCopy;
        v22 = [v21 countByEnumeratingWithState:&v104 objects:v112 count:16];
        if (v22)
        {
          v23 = *v105;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v105 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v104 + 1) + 8 * i);
              rootViewController = [v25 rootViewController];
              if (_UIStateRestorationDebugLogEnabled())
              {
                restorationIdentifier = [rootViewController restorationIdentifier];
                NSLog(&cfstr_SRootviewcontr.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", restorationIdentifier, v25, rootViewController);
              }

              restorationIdentifier2 = [rootViewController restorationIdentifier];

              if (restorationIdentifier2)
              {
                [v93 addObject:rootViewController];
                restorationIdentifier3 = [v25 restorationIdentifier];

                if (restorationIdentifier3)
                {
                  traitCollection = [v25 traitCollection];
                  verticalSizeClass = [traitCollection verticalSizeClass];
                  v32 = @"UIUserInterfaceSizeClassUnspecified";
                  if (verticalSizeClass == 2)
                  {
                    v32 = @"UIUserInterfaceSizeClassRegular";
                  }

                  if (verticalSizeClass == 1)
                  {
                    v32 = @"UIUserInterfaceSizeClassCompact";
                  }

                  v33 = v32;
                  horizontalSizeClass = [traitCollection horizontalSizeClass];

                  v35 = @"UIUserInterfaceSizeClassUnspecified";
                  if (horizontalSizeClass == 2)
                  {
                    v35 = @"UIUserInterfaceSizeClassRegular";
                  }

                  if (horizontalSizeClass == 1)
                  {
                    v35 = @"UIUserInterfaceSizeClassCompact";
                  }

                  v113[0] = @"VerticalSizeClassStringKey";
                  v113[1] = @"HorizontalSizeClassStringKey";
                  v114[0] = v33;
                  v114[1] = v35;
                  v36 = MEMORY[0x1E695DF20];
                  v37 = v35;
                  v38 = [v36 dictionaryWithObjects:v114 forKeys:v113 count:2];

                  restorationIdentifier4 = [v25 restorationIdentifier];
                  [v91 setObject:v38 forKey:restorationIdentifier4];
                }
              }

              else
              {
                if (_UIStateRestorationDebugLogEnabled())
                {
                  NSLog(&cfstr_SRootViewContr.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", v25, rootViewController);
                }

                if (([v25 isHidden] & 1) == 0)
                {
                  [(UIApplication *)selfCopy ignoreSnapshotOnNextApplicationLaunch];
                }
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v104 objects:v112 count:16];
          }

          while (v22);
        }

        if ([v91 count])
        {
          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SSavingWindowT.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", v91);
          }

          [v96 encodeObject:v91 forKey:@"WindowIdentifierToSizeClassMapKey"];
        }
      }

      else
      {
        if (controllerCopy)
        {
          v93 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
          v41 = [v93 count];
LABEL_48:
          if (v41)
          {
            _activeActivityViewControllers = [MEMORY[0x1E69CDA58] _activeActivityViewControllers];
            if ([_activeActivityViewControllers count])
            {
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v43 = _activeActivityViewControllers;
              v44 = [v43 countByEnumeratingWithState:&v100 objects:v111 count:16];
              if (v44)
              {
                v45 = *v101;
                do
                {
                  for (j = 0; j != v44; ++j)
                  {
                    if (*v101 != v45)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v47 = *(*(&v100 + 1) + 8 * j);
                    restorationIdentifier5 = [v47 restorationIdentifier];

                    if (restorationIdentifier5)
                    {
                      _UIAddObjectToStateRestorationRoots(v47);
                    }
                  }

                  v44 = [v43 countByEnumeratingWithState:&v100 objects:v111 count:16];
                }

                while (v44);
              }
            }
          }

          for (k = 0; [v93 count] > k; ++k)
          {
            v89 = [v93 objectAtIndex:?];
            if (stateCopy)
            {
              v88 = [stateCopy objectAtIndex:k];
            }

            else
            {
              v88 = 0;
            }

            _UIAddObjectToStateRestorationRoots(v89);
            while (2)
            {
              if ([v94 count])
              {
                v49 = [v94 copy];
                [v94 removeAllObjects];
                if (_UIStateRestorationDebugLogEnabled())
                {
                  NSLog(&cfstr_SProcessingObj.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", v49);
                }

                v50 = 0;
LABEL_71:
                if ([v49 count] <= v50)
                {

                  continue;
                }

                v51 = [v49 objectAtIndex:v50];
                v52 = _restorationIdentifierPathStringForObject(v51);
                if (_UIStateRestorationDebugLogEnabled())
                {
                  NSLog(&cfstr_SCurrentObject.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", v50, v52, v51);
                }

                if (v52)
                {
                  v53 = [[UIStateRestorationKeyedArchiver alloc] initRequiringSecureCoding:v97 & 1];
                  v54 = +[_UIStateRestorationKeyedArchiverDelegate sharedDelegate];
                  [v53 setDelegate:v54];

                  _encodeStateRestorationClassForObject(v51, v53);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v55 = v51;
                    [v55 encodeRestorableStateWithCoder:v53];
                    [v53 encodeBool:1 forKey:@"kObjectIsViewControllerKey"];
                    if ([v55 isViewLoaded])
                    {
                      view = [v55 view];
                      if (view)
                      {
                        v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
                        _encodeRestorationStateForViewAndSubviews(view, v55, v57, v97 & 1);
                        [v53 encodeObject:v57 forKey:@"kViewRestorationDataKey"];
                        [v53 encodeBool:1 forKey:@"kViewControllerViewWasLoadedKey"];
                      }
                    }

                    goto LABEL_85;
                  }

                  if ([v51 conformsToProtocol:&unk_1F016D9B0])
                  {
                    v58 = v51;
                    if (objc_opt_respondsToSelector())
                    {
                      [v58 encodeRestorableStateWithCoder:v53];
                    }

LABEL_85:
                  }

                  else if (_UIStateRestorationDebugLogEnabled())
                  {
                    NSLog(&cfstr_SWarningObject.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", v51);
                  }

                  [v53 finishEncoding];
                  encodedData = [v53 encodedData];
                  [v96 encodeObject:encodedData forKey:v52];

                  [array2 addObject:v52];
                }

                else if (_UIStateRestorationDebugLogEnabled())
                {
                  NSLog(&cfstr_SObjectInRootS.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", v51);
                }

                ++v50;
                goto LABEL_71;
              }

              break;
            }

            firstResponder = [v88 firstResponder];
            _restorationIdentifierPath = [firstResponder _restorationIdentifierPath];
            if (_restorationIdentifierPath)
            {
              [array addObject:_restorationIdentifierPath];
            }
          }

          if ([array count])
          {
            if (_UIStateRestorationDebugLogEnabled())
            {
              NSLog(&cfstr_SSavingFirstRe.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", array);
            }

            [v96 encodeObject:array forKey:@"kFirstRespondersKey"];
          }

          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SSavingRootSet.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", array2);
          }

          [v96 encodeObject:array2 forKey:@"kRootRestorationIdentifiersKey"];
          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SSavingRootSet_0.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]", v81);
          }

          [v96 encodeObject:v81 forKey:@"kViewControllerRestorationClassMapKey"];
          firstResponder2 = [(UIResponder *)selfCopy firstResponder];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            firstResponder3 = [(UIResponder *)selfCopy firstResponder];
            _isDisplayingShortcutViewController = [firstResponder3 _isDisplayingShortcutViewController];

            if (_isDisplayingShortcutViewController)
            {
              byte_1EA992DD9 = 1;
              goto LABEL_107;
            }
          }

          else
          {
          }

          if (byte_1EA992DD9 != 1)
          {
LABEL_108:
            [v96 finishEncoding];
            encodedData2 = [v96 encodedData];

            _restorationArchiveProtectionClass = [(UIApplication *)selfCopy _restorationArchiveProtectionClass];
            v67 = _restorationDirectory(identifierCopy);
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v99 = 0;
            [defaultManager createDirectoryAtURL:v67 withIntermediateDirectories:1 attributes:0 error:&v99];
            v69 = v99;

            if (v69)
            {
              NSLog(&cfstr_ErrorCreatingS.isa, v69);
            }

            v70 = _restorationPath(identifierCopy);

            v98 = 0;
            [encodedData2 writeToURL:v70 options:_restorationArchiveProtectionClass | 1 error:&v98];
            v71 = v98;
            v72 = v71;
            v73 = v71 == 0;
            if (v71)
            {
              NSLog(&cfstr_ErrorWritingAr.isa, v71);
            }

            else
            {
              if (byte_1EA992DD9 == 1)
              {
                if (_UIStateRestorationDebugLogEnabled())
                {
                  NSLog(&cfstr_SWillIgnoreSna.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]");
                }

                v74 = @"YES";
              }

              else
              {
                if (_UIStateRestorationDebugLogEnabled())
                {
                  NSLog(&cfstr_SWillUseSnapsh.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]");
                }

                v74 = @"NO";
              }

              v76 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v74, @"kIgnoreSnapshotKey", 0}];
              v77 = _restorationDirectory(identifierCopy);
              v78 = [v77 URLByAppendingPathComponent:@"restorationInfo.plist" isDirectory:0];

              [v76 writeToURL:v78 atomically:1];
            }

            v96 = 0;
            if (v82)
            {
              _UIReleaseStateRestorationCollections();
            }

            else
            {
              v82 = 0;
            }

            goto LABEL_134;
          }

LABEL_107:
          [v96 encodeBool:1 forKey:@"kIgnoreSnapshotKey"];
          goto LABEL_108;
        }

        v93 = 0;
      }

      v41 = [v93 count];
      goto LABEL_48;
    }
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SApplicationHa.isa, "[UIApplication(StateRestoration) _saveApplicationPreservationState:viewController:sessionIdentifier:beginHandler:completionHandler:]");
  }

  _deleteRestorationArchive(0);
  v81 = 0;
  v82 = 0;
  v94 = 0;
  v73 = 0;
LABEL_134:
  if (v96)
  {
    [v96 finishEncoding];
  }

  if (completionHandlerCopy)
  {
    completionHandlerCopy[2](completionHandlerCopy, v73);
  }
}

void __133__UIApplication_StateRestoration___saveApplicationPreservationState_viewController_sessionIdentifier_beginHandler_completionHandler___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("ApplicationStateRestoration", &kRestorationTriesLeftKey_block_invoke_11___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Warning: The UIApplicationDelegate method application:shouldSaveApplicationState: is deprecated. Please replace the use of application:shouldSaveApplicationState: with application:shouldSaveSecureApplicationState:", v1, 2u);
  }
}

- (void)ignoreSnapshotOnNextApplicationLaunch
{
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SMarkingIgnore.isa, "[UIApplication(StateRestoration) ignoreSnapshotOnNextApplicationLaunch]");
  }

  byte_1EA992DD9 = 1;
}

- (void)_restoreApplicationPreservationStateWithSessionIdentifier:(id)identifier beginHandler:(id)handler completionHandler:(id)completionHandler
{
  v151 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (![(UIApplication *)self _appAdoptsUISceneLifecycle])
  {
    v8 = __UIStatusBarManagerForWindow(0);
    isStatusBarHidden = [v8 isStatusBarHidden];

    [(UIApplication *)self setStatusBarHidden:isStatusBarHidden];
  }

  date = [MEMORY[0x1E695DF00] date];
  v10 = _restorationPath(identifierCopy);
  v125 = 0;
  v111 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10 options:0 error:&v125];
  v109 = v10;
  v11 = v125;
  if (v11)
  {
    v12 = v11;
    domain = [v11 domain];
    v14 = [domain isEqualToString:*MEMORY[0x1E696A250]];

    if (v14)
    {
      if ([v12 code] != 260)
      {
        v15 = *(__UILogGetCategoryCachedImpl("ApplicationStateRestoration", &qword_1EA9931B0) + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.tv_sec) = 138543362;
          *(&buf.tv_sec + 4) = v12;
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "Error reading archived restorable state: %{public}@", &buf, 0xCu);
        }
      }

      if ([v12 code] == 257)
      {
        v16 = *(__UILogGetCategoryCachedImpl("ApplicationStateRestoration", &qword_1EA9931B8) + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.tv_sec) = 0;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unable to read state restoration file. Probably the device is locked.", &buf, 2u);
        }

        *(&self->_applicationFlags + 1) |= 0x10000000uLL;
        buf.tv_sec = 0;
        buf.tv_nsec = 0;
        clock_gettime(_CLOCK_MONOTONIC_RAW_APPROX, &buf);
        self->_couldNotRestoreStateWhenLockedTime = buf.tv_sec;
      }
    }

    goto LABEL_176;
  }

  byte_1EA992DD1 = 1;
  delegate = self->_delegate;
  selfCopy = self;
  v111 = v111;
  v18 = delegate;
  v109 = v109;
  v112 = identifierCopy;
  v99 = handlerCopy;
  v102 = v18;
  v107 = objc_opt_respondsToSelector();
  v113 = [[UIStateRestorationKeyedUnarchiver alloc] initForReadingWithData:v111 defaultValues:0 requiresSecureCoding:?];
  v19 = [v113 decodeIntForKey:@"kUIStateRestorationArchiveMajorVersionKey"];
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SStateRestorat.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v19, [v113 decodeIntForKey:@"kUIStateRestorationArchiveMinorVersionKey"], 2, 1);
  }

  if (v19 != 2)
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SMajorVersionM.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v19, 2);
    }

    goto LABEL_23;
  }

  if (v112)
  {
    if (!v99)
    {
LABEL_25:
      if (_UIStateRestorationDebugLogEnabled())
      {
        v21 = @"NO";
        if (v107)
        {
          v21 = @"YES";
        }

        NSLog(&cfstr_SApplicationSu.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v21);
      }

      v104 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
      v98 = [v113 decodeObjectOfClass:objc_opt_class() forKey:@"UIApplicationStateRestorationUserInterfaceIdiom"];
      if (v98)
      {
        [v104 setObject:v98 forKey:@"UIApplicationStateRestorationUserInterfaceIdiom"];
        intValue = [v98 intValue];
        v23 = +[UIDevice currentDevice];
        LOBYTE(intValue) = [v23 userInterfaceIdiom] == intValue;

        if ((intValue & 1) == 0)
        {
          LOBYTE(buf.tv_sec) = 0;
          v24 = _getRestorationInProgressDictionary(v112, 0, &buf);
          if (LOBYTE(buf.tv_sec) == 1)
          {
            v25 = [MEMORY[0x1E696AD98] numberWithInteger:1];
            [v24 setObject:v25 forKey:@"kRestorationTriesLeft"];

            if ((_updateRestorationInProgressFile(0, v24) & 1) == 0)
            {
              NSLog(&cfstr_WarningUnableT_2.isa);
            }
          }
        }
      }

      v96 = [v113 decodeObjectOfClass:objc_opt_class() forKey:@"UIApplicationStateRestorationBundleVersion"];
      if (v96)
      {
        [v104 setObject:v96 forKey:@"UIApplicationStateRestorationBundleVersion"];
      }

      v95 = [v113 decodeObjectOfClass:objc_opt_class() forKey:@"UIApplicationStateRestorationTimestamp"];
      if (v95)
      {
        [v104 setObject:v95 forKey:@"UIApplicationStateRestorationTimestamp"];
      }

      v94 = [v113 decodeObjectOfClass:objc_opt_class() forKey:@"UIApplicationStateRestorationSystemVersion"];
      if (v94)
      {
        [v104 setObject:v94 forKey:@"UIApplicationStateRestorationSystemVersion"];
      }

      +[UIResponder _updateStateRestorationIdentifierMap];
      v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([(UIApplication *)selfCopy _appAdoptsUISceneLifecycle])
      {
        v114 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v26 = MEMORY[0x1E695DFD8];
        v27 = objc_opt_class();
        v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
        v114 = [v113 decodeObjectOfClasses:v28 forKey:@"kRootRestorationIdentifiersKey"];
      }

      v29 = MEMORY[0x1E695DFD8];
      v30 = objc_opt_class();
      v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
      v100 = [v113 decodeObjectOfClasses:v31 forKey:@"kViewControllerRestorationClassMapKey"];

      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SRootRestorati.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v114);
      }

      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SRestorationCl.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v100);
      }

      if ([(UIApplication *)selfCopy _appAdoptsUISceneLifecycle])
      {
        v97 = MEMORY[0x1E695E0F8];
      }

      else
      {
        v32 = MEMORY[0x1E695DFD8];
        v33 = objc_opt_class();
        v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
        v97 = [v113 decodeObjectOfClasses:v34 forKey:@"WindowIdentifierToSizeClassMapKey"];
      }

      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SWindowSizeCla.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v97);
      }

      if (v97)
      {
        v121 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v35 = [UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0];
        v36 = [v35 countByEnumeratingWithState:&v130 objects:v139 count:16];
        if (v36)
        {
          v37 = *v131;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v131 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v39 = *(*(&v130 + 1) + 8 * i);
              restorationIdentifier = [v39 restorationIdentifier];

              if (restorationIdentifier)
              {
                restorationIdentifier2 = [v39 restorationIdentifier];
                [v121 setObject:v39 forKey:restorationIdentifier2];
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v130 objects:v139 count:16];
          }

          while (v36);
        }

        if ([v121 count])
        {
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          obj = v97;
          v42 = [obj countByEnumeratingWithState:&v126 objects:v138 count:16];
          if (v42)
          {
            v119 = 0;
            v115 = *v127;
            do
            {
              v117 = v42;
              for (j = 0; j != v117; ++j)
              {
                if (*v127 != v115)
                {
                  objc_enumerationMutation(obj);
                }

                v44 = *(*(&v126 + 1) + 8 * j);
                v45 = [obj objectForKey:v44];
                v46 = [v121 objectForKey:v44];
                if (v46)
                {
                  v47 = [v45 objectForKey:@"VerticalSizeClassStringKey"];
                  v48 = [v45 objectForKey:@"HorizontalSizeClassStringKey"];
                  v49 = v46;
                  v50 = v48;
                  v123 = v47;
                  traitCollection = [v49 traitCollection];
                  v52 = _sizeClassFromString(v123);

                  v53 = _sizeClassFromString(v50);
                  if ((v52 != [traitCollection verticalSizeClass] || v53 != objc_msgSend(traitCollection, "horizontalSizeClass")) && _UIStateRestorationDebugLogEnabled())
                  {
                    NSLog(&cfstr_STraitCollecti.isa, "void _updateWindowSizeClassOverrides(UIWindow *__strong, NSString *__strong, NSString *__strong)", v49);
                  }

                  [v49 _setStateRestorationVerticalSizeClass:v52 horizontalSizeClass:v53];
                  traitCollection2 = [v49 traitCollection];
                  if (_UIStateRestorationDebugLogEnabled())
                  {
                    horizontalSizeClass = [traitCollection horizontalSizeClass];
                    v56 = @"UIUserInterfaceSizeClassUnspecified";
                    if (horizontalSizeClass == 2)
                    {
                      v56 = @"UIUserInterfaceSizeClassRegular";
                    }

                    if (horizontalSizeClass == 1)
                    {
                      v56 = @"UIUserInterfaceSizeClassCompact";
                    }

                    v57 = v56;
                    verticalSizeClass = [traitCollection verticalSizeClass];
                    v59 = @"UIUserInterfaceSizeClassUnspecified";
                    if (verticalSizeClass == 2)
                    {
                      v59 = @"UIUserInterfaceSizeClassRegular";
                    }

                    if (verticalSizeClass == 1)
                    {
                      v59 = @"UIUserInterfaceSizeClassCompact";
                    }

                    v60 = v59;
                    horizontalSizeClass2 = [traitCollection2 horizontalSizeClass];
                    v62 = @"UIUserInterfaceSizeClassUnspecified";
                    if (horizontalSizeClass2 == 2)
                    {
                      v62 = @"UIUserInterfaceSizeClassRegular";
                    }

                    if (horizontalSizeClass2 == 1)
                    {
                      v62 = @"UIUserInterfaceSizeClassCompact";
                    }

                    v63 = v62;
                    verticalSizeClass2 = [traitCollection2 verticalSizeClass];
                    v65 = @"UIUserInterfaceSizeClassUnspecified";
                    if (verticalSizeClass2 == 2)
                    {
                      v65 = @"UIUserInterfaceSizeClassRegular";
                    }

                    if (verticalSizeClass2 == 1)
                    {
                      v65 = @"UIUserInterfaceSizeClassCompact";
                    }

                    NSLog(&cfstr_SSetWindowSize.isa, "void _updateWindowSizeClassOverrides(UIWindow *__strong, NSString *__strong, NSString *__strong)", v49, v57, v60, v63, v65);
                  }

                  if (!v119)
                  {
                    v119 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  if (_UIStateRestorationDebugLogEnabled())
                  {
                    NSLog(&cfstr_SAddingWindowT.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v49);
                  }

                  [v119 addObject:v49];
                }
              }

              v42 = [obj countByEnumeratingWithState:&v126 objects:v138 count:16];
            }

            while (v42);
          }

          else
          {
            v119 = 0;
          }
        }

        else
        {
          v119 = 0;
        }
      }

      else
      {
        v119 = 0;
      }

      if (![v114 count])
      {
LABEL_172:
        +[UIResponder _prepareForSecondPassStateRestoration];
        buf.tv_sec = MEMORY[0x1E69E9820];
        buf.tv_nsec = 3221225472;
        v141 = ___restoreState_block_invoke_4025;
        v142 = &unk_1E711DE58;
        v88 = v103;
        v143 = v88;
        v89 = v104;
        v144 = v89;
        v150 = v107 & 1;
        v145 = v112;
        v146 = v102;
        v147 = selfCopy;
        v90 = v113;
        v148 = v90;
        v91 = v119;
        v149 = v91;
        [UIView performWithoutAnimation:&buf];
        +[UIResponder _finishStateRestoration];
        [v90 finishDecoding];

        goto LABEL_173;
      }

      v66 = 0;
      while (1)
      {
        v67 = [v114 objectAtIndex:v66];
        v68 = [v67 componentsSeparatedByString:@"/"];
        v69 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v68, "count")}];
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v70 = v68;
        v71 = [v70 countByEnumeratingWithState:&v134 objects:&buf count:16];
        if (v71)
        {
          v72 = *v135;
          do
          {
            for (k = 0; k != v71; ++k)
            {
              if (*v135 != v72)
              {
                objc_enumerationMutation(v70);
              }

              v74 = *(*(&v134 + 1) + 8 * k);
              if (([v74 hasPrefix:@":["] & 1) == 0)
              {
                [v69 addObject:v74];
              }
            }

            v71 = [v70 countByEnumeratingWithState:&v134 objects:&buf count:16];
          }

          while (v71);
        }

        v75 = [v113 decodeObjectOfClass:objc_opt_class() forKey:v67];
        if (!v75)
        {
          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SWarningNoStat.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v67);
          }

          goto LABEL_168;
        }

        v124 = [[UIStateRestorationKeyedUnarchiver alloc] initForReadingWithData:v75 defaultValues:v104 requiresSecureCoding:v107 & 1];
        v122 = [v124 decodeBoolForKey:@"kObjectIsViewControllerKey"];
        if (v112)
        {
          v76 = [UIResponder objectWithRestorationIdentifierPath:v67];
          if (v76)
          {
            v77 = 0;
            goto LABEL_156;
          }
        }

        v78 = [v100 objectForKey:v67];
        if (v78)
        {
          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SRestorationCl_0.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v67, v78);
          }

          v79 = NSClassFromString(v78);
          v80 = _UIStateRestorationDebugLogEnabled();
          if (v79)
          {
            if (v80)
            {
              NSLog(&cfstr_SFoundRestorat.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v79);
            }

            if (!v122)
            {
              if (([(objc_class *)v79 conformsToProtocol:&unk_1F016D950]& 1) != 0)
              {
                v81 = [(objc_class *)v79 objectWithRestorationIdentifierPath:v69 coder:v124];
                goto LABEL_137;
              }

              NSLog(&cfstr_WarningRestora_0.isa, v79);
              goto LABEL_146;
            }

            if (([(objc_class *)v79 conformsToProtocol:&unk_1F016D8F0]& 1) != 0)
            {
              v81 = [(objc_class *)v79 viewControllerWithRestorationIdentifierPath:v69 coder:v124];
LABEL_137:
              v76 = v81;
              goto LABEL_154;
            }

            NSLog(&cfstr_WarningRestora.isa, v79);
          }

          else if (v80)
          {
            NSLog(&cfstr_SNoRestoration.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)");
          }
        }

        v82 = v122 ^ 1;
        if (v112)
        {
          v82 = 1;
        }

        if ((v82 & 1) == 0)
        {
          if (objc_opt_respondsToSelector())
          {
            v76 = [(UIApplicationDelegate *)v102 application:selfCopy viewControllerWithRestorationIdentifierPath:v69 coder:v124];
            if (v76)
            {

              v77 = 1;
              goto LABEL_156;
            }
          }

LABEL_148:
          v76 = [UIResponder objectWithRestorationIdentifierPath:v67];
          goto LABEL_149;
        }

LABEL_146:
        if (!v112)
        {
          goto LABEL_148;
        }

        v76 = 0;
LABEL_149:
        v77 = v76 == 0;
        if ((v77 & v122) != 1)
        {
          goto LABEL_155;
        }

        v116 = v69;
        v83 = v124;
        v118 = [v83 decodeObjectOfClass:objc_opt_class() forKey:@"UIStateRestorationViewControllerStoryboard"];
        v84 = [v83 decodeObjectOfClass:objc_opt_class() forKey:@"UIStateRestorationViewControllerStoryboardIdentifier"];
        v85 = v84;
        v76 = 0;
        if (v118 && v84)
        {
          v76 = [v118 instantiateViewControllerWithIdentifier:v84];
        }

LABEL_154:
        v77 = 1;
LABEL_155:

        if (!v76)
        {
          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SCouldnTGetObj.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v66, v67);
          }

          goto LABEL_167;
        }

LABEL_156:
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SObjectInRootS_0.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v66, v67, v76);
        }

        if (v122)
        {
          v86 = v76;
          [v124 decodeBoolForKey:@"kViewControllerViewWasLoadedKey"];
          if ([v86 _shouldLoadViewDuringRestoration:v124])
          {
            [v86 view];
          }

          else if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SSpecialCasePa.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)", v67);
          }
        }

        if (v77)
        {
          [UIResponder _setRestoredIdentifierPathForObject:v76 identifierPath:v67];
        }

        +[UIResponder _updateStateRestorationIdentifierMap];
        v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v67, v76, v124, 0}];
        [v103 addObject:v87];

LABEL_167:
LABEL_168:

        if ([v114 count] <= ++v66)
        {
          goto LABEL_172;
        }
      }
    }

    v20 = v99[2](v99, v113);
  }

  else
  {
    if ((*(&selfCopy->_applicationFlags + 7) & 1) == 0)
    {
      goto LABEL_25;
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [(UIApplicationDelegate *)v102 application:UIApp shouldRestoreSecureApplicationState:v113];
    }

    else
    {
      if (qword_1EA9932E0 != -1)
      {
        dispatch_once(&qword_1EA9932E0, &__block_literal_global_3965);
      }

      v20 = [(UIApplicationDelegate *)v102 application:UIApp shouldRestoreApplicationState:v113];
    }
  }

  if (v20)
  {
    goto LABEL_25;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SApplicationHa_0.isa, "void _restoreState(UIApplication *__strong, NSData *__strong, NSObject<UIApplicationDelegate> *__strong, NSURL *__strong, NSString *__strong, __strong UIStateRestorationRestoreStateBeginHandler)");
  }

LABEL_23:
  _deleteRestorationArchive(v112);
  [v113 finishDecoding];
LABEL_173:

  byte_1EA992DD1 = 0;
  if (completionHandlerCopy)
  {
    completionHandlerCopy[2]();
  }

  v12 = 0;
LABEL_176:
  if (_UIStateRestorationDebugLogEnabled())
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:date];
    NSLog(&cfstr_RestoredRestor.isa, v93);
  }
}

- (void)_appendSessionToSessionSet:(id)set save:(BOOL)save
{
  saveCopy = save;
  setCopy = set;
  if (saveCopy)
  {
    [_UISceneUserActivityManager _updatePersistedSceneSession:setCopy];
  }

  if (qword_1EA993300 != -1)
  {
    dispatch_once(&qword_1EA993300, &__block_literal_global_4113);
  }

  [qword_1EA9932F8 addObject:?];
}

- (void)_removeSessionFromSessionSet:(id)set
{
  setCopy = set;
  v4 = setCopy;
  if (setCopy)
  {
    v5 = setCopy;
    if (qword_1EA993300 != -1)
    {
      dispatch_once(&qword_1EA993300, &__block_literal_global_4113);
    }

    [qword_1EA9932F8 removeObject:v5];
    v4 = v5;
  }
}

- (id)_openSessionsIncludingInternal:(BOOL)internal
{
  if (internal)
  {
    if (qword_1EA993300 != -1)
    {
      dispatch_once(&qword_1EA993300, &__block_literal_global_4113);
    }

    v3 = [qword_1EA9932F8 copy];
  }

  else
  {
    if (qword_1EA993300 != -1)
    {
      dispatch_once(&qword_1EA993300, &__block_literal_global_4113);
    }

    v4 = [qword_1EA9932F8 objectsPassingTest:&__block_literal_global_3696];
    v3 = [v4 copy];
  }

  return v3;
}

- (id)_openSessionForPersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_1EA993300 != -1)
  {
    dispatch_once(&qword_1EA993300, &__block_literal_global_4113);
  }

  v4 = qword_1EA9932F8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__UIApplication_SessionAndConfigurationInternal___openSessionForPersistentIdentifier___block_invoke;
  v10[3] = &unk_1E711DA48;
  v11 = identifierCopy;
  v5 = identifierCopy;
  v6 = v4;
  v7 = [v6 objectsPassingTest:v10];
  anyObject = [v7 anyObject];

  return anyObject;
}

uint64_t __86__UIApplication_SessionAndConfigurationInternal___openSessionForPersistentIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 persistentIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  *a3 = v6;
  return v6;
}

- (void)_discardSceneSessionsWithPersistentIdentifiers:(id)identifiers skippingPersistenceDeletion:(BOOL)deletion
{
  identifiersCopy = identifiers;
  v6 = [identifiersCopy count];
  v7 = identifiersCopy;
  if (v6)
  {
    v8 = [identifiersCopy bs_map:&__block_literal_global_3699];
    [(UIApplication *)self _discardSceneSessions:v8];
    if (!deletion)
    {
      [_UISceneUserActivityManager _deleteSceneSessionsWithPersistentIdentifiers:identifiersCopy];
    }

    v7 = identifiersCopy;
  }
}

id __125__UIApplication_SessionAndConfigurationInternal___discardSceneSessionsWithPersistentIdentifiers_skippingPersistenceDeletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_1EA993300 != -1)
  {
    dispatch_once(&qword_1EA993300, &__block_literal_global_4113);
  }

  v3 = qword_1EA9932F8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __125__UIApplication_SessionAndConfigurationInternal___discardSceneSessionsWithPersistentIdentifiers_skippingPersistenceDeletion___block_invoke_2;
  v10[3] = &unk_1E711DD08;
  v4 = v2;
  v11 = v4;
  v5 = [v3 bs_filter:v10];
  v6 = [v5 anyObject];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [_UISceneUserActivityManager _fetchSceneSessionWithPersistentIdentifier:v4];
  }

  v8 = v7;

  return v8;
}

uint64_t __125__UIApplication_SessionAndConfigurationInternal___discardSceneSessionsWithPersistentIdentifiers_skippingPersistenceDeletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 persistentIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_discardSceneSessions:(id)sessions
{
  sessionsCopy = sessions;
  if ([sessionsCopy count])
  {
    v5 = [MEMORY[0x1E695DFA8] setWithSet:sessionsCopy];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __72__UIApplication_SessionAndConfigurationInternal___discardSceneSessions___block_invoke;
    v10 = &unk_1E711DD30;
    selfCopy = self;
    v6 = v5;
    v12 = v6;
    [sessionsCopy enumerateObjectsUsingBlock:&v7];
    if ((*(&self->_applicationFlags + 7) & 0x20) != 0 && [v6 count])
    {
      [(UIApplicationDelegate *)self->_delegate application:self didDiscardSceneSessions:v6];
    }
  }
}

void __72__UIApplication_SessionAndConfigurationInternal___discardSceneSessions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _removeSessionFromSessionSet:v3];
  if ([v3 _isInternal])
  {
    [*(a1 + 40) removeObject:v3];
  }
}

- (id)_discardedSceneSessionIdentifiersSinceLastRunWithContext:(id)context knownSessions:(id)sessions
{
  contextCopy = context;
  sessionsCopy = sessions;
  persistedSceneIdentifiers = [contextCopy persistedSceneIdentifiers];

  if (persistedSceneIdentifiers)
  {
    v8 = MEMORY[0x1E695DFA8];
    allKeys = [sessionsCopy allKeys];
    v10 = [allKeys copy];
    v11 = [v8 setWithArray:v10];

    persistedSceneIdentifiers2 = [contextCopy persistedSceneIdentifiers];
    v13 = [persistedSceneIdentifiers2 copy];

    [v11 minusSet:v13];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v11;
}

+ (void)registerObjectForStateRestoration:(id)object restorationIdentifier:(NSString *)restorationIdentifier
{
  if (object && restorationIdentifier && ([object conformsToProtocol:&unk_1F016D9B0] & 1) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SWarningIgnori.isa, "void _UIRegisterObjectForStateRestoration(id<UIStateRestoring>, NSString *)", object);
      }
    }

    else
    {
      objc_setAssociatedObject(object, &_MergedGlobals_1269, restorationIdentifier, 1);

      _trackObjectWithIdentifier(object);
    }
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];

    [v6 raise:@"UIRestorationObjectRegistrationException" format:{@"To register an object for state restoration, must specify a valid non-nil object and a valid non-nil restoration identifier, and the object must implement the UIStateRestoring protocol."}];
  }
}

- (void)installNotificationObserverForNotificationName:(id)name forOneNotification:(BOOL)notification usingBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__199;
  v25 = __Block_byref_object_dispose__199;
  v26 = 0;
  v11 = defaultCenter;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __124__UIApplication_UIApplicationKeyboardTesting__installNotificationObserverForNotificationName_forOneNotification_usingBlock___block_invoke;
  v16[3] = &unk_1E7123D50;
  v19 = &v21;
  notificationCopy = notification;
  v12 = v11;
  v17 = v12;
  v13 = blockCopy;
  v18 = v13;
  v14 = [v12 addObserverForName:nameCopy object:0 queue:mainQueue usingBlock:v16];
  v15 = v22[5];
  v22[5] = v14;

  _Block_object_dispose(&v21, 8);
}

void __124__UIApplication_UIApplicationKeyboardTesting__installNotificationObserverForNotificationName_forOneNotification_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = v3;
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) removeObserver:?];
      v5 = *(*(a1 + 48) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = 0;
    }

    (*(*(a1 + 40) + 16))();
    v4 = v7;
  }
}

- (void)showKeyboardUsingBlock:(id)block withCompletionBlock:(id)completionBlock
{
  blockCopy = block;
  [(UIApplication *)self installNotificationObserverForNotificationName:@"UIKeyboardDidShowNotification" forOneNotification:1 usingBlock:completionBlock];
  blockCopy[2]();
}

- (void)_runSubTestForKeyboardBringupWithName:(id)name withShowKeyboardBlock:(id)block withHideKeyboardBlock:(id)keyboardBlock withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock
{
  nameCopy = name;
  keyboardBlockCopy = keyboardBlock;
  resultsBlockCopy = resultsBlock;
  cleanupBlockCopy = cleanupBlock;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __168__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardBringupWithName_withShowKeyboardBlock_withHideKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke;
  v21[3] = &unk_1E7123DA0;
  v21[4] = self;
  v22 = nameCopy;
  v23 = keyboardBlockCopy;
  v24 = resultsBlockCopy;
  v25 = cleanupBlockCopy;
  v16 = cleanupBlockCopy;
  v17 = resultsBlockCopy;
  v18 = keyboardBlockCopy;
  v19 = nameCopy;
  blockCopy = block;
  [(UIApplication *)self installNotificationObserverForNotificationName:@"UIKeyboardDidShowNotification" forOneNotification:1 usingBlock:v21];
  [(UIApplication *)self startedTest:v19];
  [(UIApplication *)self startedSubTest:@"ShowKeyboard" forTest:v19];
  blockCopy[2](blockCopy);
}

void __168__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardBringupWithName_withShowKeyboardBlock_withHideKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"ShowKeyboard" forTest:*(a1 + 40)];
  v2 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __168__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardBringupWithName_withShowKeyboardBlock_withHideKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke_2;
  block[3] = &unk_1E7123D78;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

- (void)_runSubTestForKeyboardDismissalWithName:(id)name withHideKeyboardBlock:(id)block withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock
{
  nameCopy = name;
  resultsBlockCopy = resultsBlock;
  cleanupBlockCopy = cleanupBlock;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __148__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardDismissalWithName_withHideKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke;
  v20 = &unk_1E7123DF0;
  selfCopy = self;
  v22 = nameCopy;
  v23 = resultsBlockCopy;
  v24 = cleanupBlockCopy;
  v13 = cleanupBlockCopy;
  v14 = resultsBlockCopy;
  v15 = nameCopy;
  blockCopy = block;
  [(UIApplication *)self installNotificationObserverForNotificationName:@"UIKeyboardDidHideNotification" forOneNotification:1 usingBlock:&v17];
  [(UIApplication *)self startedSubTest:@"HideKeyboard" forTest:v15, v17, v18, v19, v20, selfCopy];
  blockCopy[2](blockCopy);
}

void __148__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardDismissalWithName_withHideKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) finishedSubTest:@"HideKeyboard" forTest:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = (*(v3 + 16))(v3, v5);
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) finishedTest:*(a1 + 40) extraResults:v4 withTeardownBlock:*(a1 + 56)];
}

- (void)_runSubTestForKeyboardSplitWithName:(id)name withShowKeyboardBlock:(id)block withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock
{
  nameCopy = name;
  blockCopy = block;
  resultsBlockCopy = resultsBlock;
  cleanupBlockCopy = cleanupBlock;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __144__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardSplitWithName_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke;
  aBlock[3] = &unk_1E711D7E8;
  aBlock[4] = self;
  v14 = nameCopy;
  v22 = v14;
  v15 = resultsBlockCopy;
  v23 = v15;
  v16 = cleanupBlockCopy;
  v24 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v17;
  if (blockCopy)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __144__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardSplitWithName_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke_4;
    v19[3] = &unk_1E7123DC8;
    v20 = v17;
    [(UIApplication *)self showKeyboardUsingBlock:blockCopy withCompletionBlock:v19];
  }

  else
  {
    NSLog(&cfstr_NoBlockSpecifi.isa);
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }
}

void __144__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardSplitWithName_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __144__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardSplitWithName_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke_2;
  v8[3] = &unk_1E7123DF0;
  v7 = *(a1 + 32);
  v2 = *(&v7 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v9 = v7;
  v10 = v5;
  [v7 installNotificationObserverForNotificationName:@"UIKeyboardDidChangeFrameNotification" forOneNotification:1 usingBlock:v8];
  [*(a1 + 32) startedTest:*(a1 + 40)];
  [*(a1 + 32) startedSubTest:@"SplitKeyboard" forTest:*(a1 + 40)];
  v6 = +[UIKeyboard activeKeyboard];
  [v6 _setSplit:1];
}

void __144__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardSplitWithName_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"SplitKeyboard" forTest:*(a1 + 40)];
  v2 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __144__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardSplitWithName_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke_3;
  block[3] = &unk_1E711D7E8;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

- (void)_runSubTestForKeyboardMergeWithName:(id)name withExtraResultsBlock:(id)block withCleanupBlock:(id)cleanupBlock
{
  nameCopy = name;
  blockCopy = block;
  cleanupBlockCopy = cleanupBlock;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __122__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardMergeWithName_withExtraResultsBlock_withCleanupBlock___block_invoke;
  v18 = &unk_1E7123DF0;
  selfCopy = self;
  v20 = nameCopy;
  v21 = blockCopy;
  v22 = cleanupBlockCopy;
  v11 = cleanupBlockCopy;
  v12 = blockCopy;
  v13 = nameCopy;
  [(UIApplication *)self installNotificationObserverForNotificationName:@"UIKeyboardDidChangeFrameNotification" forOneNotification:1 usingBlock:&v15];
  [(UIApplication *)self startedSubTest:@"MergeKeyboard" forTest:v13, v15, v16, v17, v18, selfCopy];
  v14 = +[UIKeyboard activeKeyboard];
  [v14 _setSplit:0];
}

void __122__UIApplication_UIApplicationKeyboardTesting___runSubTestForKeyboardMergeWithName_withExtraResultsBlock_withCleanupBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) finishedSubTest:@"MergeKeyboard" forTest:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = (*(v3 + 16))(v3, v5);
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 32) finishedTest:*(a1 + 40) extraResults:v4 withTeardownBlock:*(a1 + 56)];
}

- (void)runTestForKeyboardBringupAndDismissalWithName:(id)name withShowKeyboardBlock:(id)block withHideKeyboardBlock:(id)keyboardBlock withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock
{
  if (name && block && keyboardBlock)
  {

    [UIApplication _runSubTestForKeyboardBringupWithName:"_runSubTestForKeyboardBringupWithName:withShowKeyboardBlock:withHideKeyboardBlock:withExtraResultsBlock:withCleanupBlock:" withShowKeyboardBlock:? withHideKeyboardBlock:? withExtraResultsBlock:? withCleanupBlock:?];
  }

  else
  {
    NSLog(&cfstr_YouMustSpecify.isa, a2);
  }
}

- (void)runTestForKeyboardRotationWithName:(id)name fromOrientation:(int64_t)orientation withShowKeyboardBlock:(id)block withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock
{
  nameCopy = name;
  blockCopy = block;
  resultsBlockCopy = resultsBlock;
  cleanupBlockCopy = cleanupBlock;
  if (nameCopy)
  {
    if ((orientation - 3) < 2)
    {
      v16 = 1;
    }

    else
    {
      v16 = 4;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __159__UIApplication_UIApplicationKeyboardTesting__runTestForKeyboardRotationWithName_fromOrientation_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke;
    aBlock[3] = &unk_1E7123E18;
    aBlock[4] = self;
    v24 = resultsBlockCopy;
    v23 = nameCopy;
    v25 = cleanupBlockCopy;
    v26 = v16;
    v17 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __159__UIApplication_UIApplicationKeyboardTesting__runTestForKeyboardRotationWithName_fromOrientation_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke_3;
    v19[3] = &unk_1E7123E40;
    v20 = blockCopy;
    v21 = v17;
    v19[4] = self;
    v18 = v17;
    [(UIApplication *)self rotateIfNeeded:orientation completion:v19];
  }

  else
  {
    NSLog(&cfstr_YouMustSpecify_0.isa);
  }
}

void __159__UIApplication_UIApplicationKeyboardTesting__runTestForKeyboardRotationWithName_fromOrientation_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __159__UIApplication_UIApplicationKeyboardTesting__runTestForKeyboardRotationWithName_fromOrientation_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke_2;
  v8[3] = &unk_1E7123DF0;
  v3 = *(a1 + 48);
  v7 = *(a1 + 32);
  v4 = *(&v7 + 1);
  v5 = *(a1 + 56);
  *&v6 = v3;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 installNotificationObserverForNotificationName:@"UIKeyboardDidShowNotification" forOneNotification:1 usingBlock:v8];
  [*(a1 + 32) startedTest:*(a1 + 40)];
  [*(a1 + 32) rotateIfNeeded:*(a1 + 64)];
}

void __159__UIApplication_UIApplicationKeyboardTesting__runTestForKeyboardRotationWithName_fromOrientation_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = (*(v2 + 16))();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [*(a1 + 32) finishedTest:*(a1 + 40) extraResults:v3 withTeardownBlock:*(a1 + 56)];
}

void __159__UIApplication_UIApplicationKeyboardTesting__runTestForKeyboardRotationWithName_fromOrientation_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __159__UIApplication_UIApplicationKeyboardTesting__runTestForKeyboardRotationWithName_fromOrientation_withShowKeyboardBlock_withExtraResultsBlock_withCleanupBlock___block_invoke_4;
    v6[3] = &unk_1E7123DC8;
    v7 = *(a1 + 48);
    [v3 showKeyboardUsingBlock:v2 withCompletionBlock:v6];
  }

  else
  {
    NSLog(&cfstr_NoBlockSpecifi.isa);
    v4 = *(a1 + 48);
    v5 = MEMORY[0x1E69E96A0];

    dispatch_async(v5, v4);
  }
}

- (void)runTestForKeyboardSplitAndMergeWithName:(id)name withShowKeyboardBlock:(id)block withExtraResultsBlock:(id)resultsBlock withCleanupBlock:(id)cleanupBlock
{
  if (name)
  {

    [UIApplication _runSubTestForKeyboardSplitWithName:"_runSubTestForKeyboardSplitWithName:withShowKeyboardBlock:withExtraResultsBlock:withCleanupBlock:" withShowKeyboardBlock:? withExtraResultsBlock:? withCleanupBlock:?];
  }

  else
  {
    NSLog(&cfstr_YouMustSpecify_1.isa, a2, name, block, resultsBlock, cleanupBlock);
  }
}

- (BOOL)_shouldHandleTestURL:(id)l
{
  scheme = [l scheme];
  v4 = scheme;
  if (scheme && ![scheme compare:@"test" options:1])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults BOOLForKey:@"UIHandleTestURLScheme"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  v9 = [optionsCopy objectForKey:@"quit"];
  if (v9)
  {

LABEL_4:
    objc_storeStrong(&qword_1ED4A20B8, test);
    [(UIApplication *)self startedTest:testCopy];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"PPTFakeSuspendEvent", @"PPTMessageType", 0}];
    [(UIApplication *)self _sendDictionaryToPPT:v11];

LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  v10 = [optionsCopy objectForKey:@"suspend"];

  if (v10)
  {
    goto LABEL_4;
  }

  v14 = [optionsCopy objectForKey:@"launch"];

  if (v14)
  {
    v15 = _pptLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Application received PPT launch test command, but we're already running!", buf, 2u);
    }

    [(UIApplication *)self startedTest:testCopy];
    [(UIApplication *)self failedTest:testCopy];
    goto LABEL_5;
  }

  if ([testCopy isEqualToString:@"leak"])
  {
    v16 = [optionsCopy objectForKey:@"leak"];
    v17 = [v16 isEqualToString:@"yes"];

    if (v17)
    {
      [(UIApplication *)self startLeaking];
    }

    else
    {
      [(UIApplication *)self stopLeaking];
    }

    goto LABEL_5;
  }

  if ([testCopy isEqualToString:@"resize"])
  {
    [(UIApplication *)self performSelector:sel__executeResizeTest withObject:self afterDelay:1.0];
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [(UIApplicationDelegate *)self->_delegate application:self runTest:testCopy options:optionsCopy];
  }

  else
  {
    v12 = 0;
  }

LABEL_6:

  return v12;
}

- (void)_executeNextResizeSubTest
{
  _mainScene = [UIApp _mainScene];
  v4 = [(UIScene *)UIWindowScene _sceneForFBSScene:_mainScene];

  [v4 _referenceBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = 0;
  v13 = 0.0;
  v14 = 320.0;
  do
  {
    if (v14 > v13 && v14 < v5)
    {
      v13 = v14;
    }

    v14 = *(&_UIWindowWidthsOnIPAD + v12 + 8);
    v12 += 8;
  }

  while (v12 != 32);
  if (_MergedGlobals_1316)
  {
    if (v13 <= 0.0)
    {
      v13 = v5;
    }

    if (v13 == v5)
    {
      v16 = 0;
      v13 = 320.0;
      while (v13 <= v5)
      {
        v13 = *(&_UIWindowWidthsOnIPAD + v16 + 8);
        v16 += 8;
        if (v16 == 32)
        {
          v13 = v5;
          break;
        }
      }

      v17 = 0;
      _MergedGlobals_1316 = 0;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v18 = 0;
    v13 = 320.0;
    while (v13 <= v5)
    {
      v13 = *(&_UIWindowWidthsOnIPAD + v18 + 8);
      v18 += 8;
      if (v18 == 32)
      {
        v17 = 0;
        v13 = v5;
        goto LABEL_23;
      }
    }

    v17 = 0;
  }

LABEL_23:
  v19 = qword_1ED4A20F8;
  if (v13 == *&qword_1ED4A20F8)
  {
    v17 = 1;
  }

  if (v17)
  {
    *&v19 = v13;
  }

  if (v5 == v13)
  {
    v20 = *&v19;
  }

  else
  {
    v20 = v13;
  }

  if (v20 == v5)
  {
    [(UIApplication *)self finishedTest:@"resize"];
    [MEMORY[0x1E6979518] begin];
    _effectiveSettings = [v4 _effectiveSettings];
    v27 = [_effectiveSettings mutableCopy];

    [v27 setFrame:{*&qword_1ED4A20E0, unk_1ED4A20E8, *&qword_1ED4A20F0, *&qword_1ED4A20F8}];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __64__UIApplication_UIApplicationTesting___executeNextResizeSubTest__block_invoke_3;
    v28[3] = &unk_1E7123EB8;
    v29 = v27;
    v25 = v27;
    [v4 _enableOverrideSettingsForActions:v28];
    v24 = v29;
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resize %.0f->%.0f", *&v5, *&v20];
    [(UIApplication *)self startedSubTest:v21 forTest:@"resize"];
    [MEMORY[0x1E6979518] begin];
    _effectiveSettings2 = [v4 _effectiveSettings];
    v23 = [_effectiveSettings2 mutableCopy];

    [v23 setFrame:{v7, v9, v11, v20}];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __64__UIApplication_UIApplicationTesting___executeNextResizeSubTest__block_invoke;
    v30[3] = &unk_1E711D770;
    v31 = v23;
    selfCopy = self;
    v33 = v21;
    v24 = v21;
    v25 = v23;
    [v4 _enableOverrideSettingsForActions:v30];
    [(UIApplication *)self performSelector:sel__executeNextResizeSubTest withObject:self afterDelay:1.0];
  }
}

void __64__UIApplication_UIApplicationTesting___executeNextResizeSubTest__block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__UIApplication_UIApplicationTesting___executeNextResizeSubTest__block_invoke_2;
  v5[3] = &unk_1E7123E90;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 _applyOverrideSettings:v3 forActions:v5];
}

uint64_t __64__UIApplication_UIApplicationTesting___executeNextResizeSubTest__block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] commit];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 finishedSubTest:v3 forTest:@"resize"];
}

uint64_t __64__UIApplication_UIApplicationTesting___executeNextResizeSubTest__block_invoke_4()
{
  [MEMORY[0x1E6979518] flush];
  v0 = MEMORY[0x1E6979518];

  return [v0 commit];
}

- (void)_executeResizeTest
{
  _MergedGlobals_1316 = 1;
  _mainScene = [UIApp _mainScene];
  v4 = [(UIScene *)UIWindowScene _sceneForFBSScene:_mainScene];
  [v4 _referenceBounds];
  qword_1ED4A20E0 = v5;
  unk_1ED4A20E8 = v6;
  qword_1ED4A20F0 = v7;
  qword_1ED4A20F8 = v8;

  [(UIApplication *)self startedTest:@"resize"];

  [(UIApplication *)self _executeNextResizeSubTest];
}

- (void)installCACommitCompletionBlock:(id)block
{
  context.version = 0;
  context.info = _Block_copy(block);
  memset(&context.retain, 0, 24);
  v3 = CFRunLoopObserverCreate(0, 0x20uLL, 0, 2000001, __UIRunLoopObserverTrampoline, &context);
  if (v3)
  {
    v4 = v3;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddObserver(Current, v4, *MEMORY[0x1E695E8D0]);
    info = v4;
  }

  else
  {
    info = context.info;
  }

  CFRelease(info);
}

- (void)_noteAnimationStarted:(id)started
{
  if (qword_1ED4A20C8)
  {
    userInfo = [started userInfo];
    v5 = [userInfo objectForKey:0x1EFB16630];

    if ([qword_1ED4A20D0 isEqualToString:v5])
    {
      [(UIApplication *)self startedTest:qword_1ED4A20C8];
    }
  }
}

- (void)_noteAnimationFinished:(id)finished
{
  if (qword_1ED4A20C8)
  {
    userInfo = [finished userInfo];
    v9 = [userInfo objectForKey:0x1EFB16630];

    if ([qword_1ED4A20D8 isEqualToString:v9])
    {
      [(UIApplication *)self finishedTest:qword_1ED4A20C8 extraResults:0];
      v5 = qword_1ED4A20C8;
      qword_1ED4A20C8 = 0;

      v6 = qword_1ED4A20D0;
      qword_1ED4A20D0 = 0;

      v7 = qword_1ED4A20D8;
      qword_1ED4A20D8 = 0;

      v8 = +[NSNotificationCenter uikitInternalCenter];
      [v8 removeObserver:self name:0x1EFBBAB50 object:0];
      [v8 removeObserver:self name:0x1EFBBAB70 object:0];
    }
  }
}

- (void)runTest:(id)test startingBeforeAnimation:(id)animation stoppingAfterAnimation:(id)afterAnimation
{
  testCopy = test;
  animationCopy = animation;
  afterAnimationCopy = afterAnimation;
  if (testCopy)
  {
    if (animationCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIApplicationTesting.m" lineNumber:424 description:{@"Invalid parameter not satisfying: %@", @"startAnimationName"}];

    if (afterAnimationCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIApplicationTesting.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"testName"}];

  if (!animationCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (afterAnimationCopy)
  {
    goto LABEL_4;
  }

LABEL_12:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIApplicationTesting.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"stopAnimationName"}];

LABEL_4:
  if (qword_1ED4A20C8)
  {
    NSLog(&cfstr_WarningTriedTo_1.isa, qword_1ED4A20C8, qword_1ED4A20D0, qword_1ED4A20D8);
  }

  else
  {
    v12 = +[NSNotificationCenter uikitInternalCenter];
    [v12 addObserver:self selector:sel__noteAnimationStarted_ name:0x1EFBBAB50 object:0];
    [v12 addObserver:self selector:sel__noteAnimationFinished_ name:0x1EFBBAB70 object:0];
    objc_storeStrong(&qword_1ED4A20C8, test);
    objc_storeStrong(&qword_1ED4A20D0, animation);
    objc_storeStrong(&qword_1ED4A20D8, afterAnimation);
  }
}

- (BOOL)isRunningTest:(id)test
{
  if (!test)
  {
    return 0;
  }

  v3 = [qword_1ED4A20A8 objectForKey:?];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isLaunchTest:(id)test
{
  testCopy = test;
  [testCopy rangeOfString:@"widget-launch"];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    [testCopy rangeOfString:@"launch"];
    v5 = v6 != 0;
  }

  return v5;
}

- (void)startedTest:(id)test
{
  v42 = *MEMORY[0x1E69E9840];
  testCopy = test;
  if (testCopy)
  {
    v5 = _pptLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      buf.blocks_in_use = 138412290;
      *(&buf.blocks_in_use + 1) = testCopy;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "PPT startedTest: %@", &buf, 0xCu);
    }

    v6 = [(UIApplication *)self isLaunchTest:testCopy];
    [testCopy rangeOfString:@"resume"];
    v8 = v7 != 0;
    [testCopy rangeOfString:@"quit"];
    v10 = v9;
    if (!qword_1ED4A20A8)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = qword_1ED4A20A8;
      qword_1ED4A20A8 = v11;
    }

    if (byte_1ED4A20A2 == 1)
    {
      [(UIApplication *)self startCHUDRecording:testCopy];
    }

    v13 = [qword_1ED4A20A8 objectForKey:testCopy];

    if (v13)
    {
      testCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requested to start an already started test: %@", testCopy];
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v16 = [standardUserDefaults BOOLForKey:@"UIApplicationTestStartIsStrict"];

      if (v16)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", testCopy}];
      }

      else
      {
        NSLog(&stru_1EFB25450.isa, testCopy);
      }
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [qword_1ED4A20A8 setObject:v17 forKey:testCopy];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = [qword_1ED4A20A8 objectForKey:testCopy];
    [v19 setObject:v18 forKey:@"SubTests"];

    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      memset(&buf, 0, sizeof(buf));
      GetProcStatistics(&buf, 0);
      v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&buf length:112];
      [v17 setObject:v20 forKey:@"startStats"];
    }

    memset(&buf, 0, sizeof(buf));
    malloc_zone_statistics(0, &buf);
    blocks_in_use = buf.blocks_in_use;
    v22 = [MEMORY[0x1E696AD98] numberWithInt:LODWORD(buf.size_in_use)];
    [v17 setObject:v22 forKey:@"heapBytes"];

    v23 = [MEMORY[0x1E696AD98] numberWithInt:blocks_in_use];
    [v17 setObject:v23 forKey:@"heapNodes"];

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CAGetCurrentImageBytes()];
    [v17 setObject:v24 forKey:@"imageBytes"];

    if (!v8 && !v10)
    {
      _currentFrameCountForTestDisplay = [(UIApplication *)self _currentFrameCountForTestDisplay];
      [v17 setObject:_currentFrameCountForTestDisplay forKey:@"startingFrameCount"];
    }

    v26 = MEMORY[0x1E696AD98];
    if (v8)
    {
      v27 = *&__LaunchTime;
    }

    else
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    }

    v28 = [v26 numberWithDouble:v27];
    [v17 setObject:v28 forKey:@"startTimeIntervalSinceReferenceDate"];

    if (v8)
    {
      v29 = __ExecOrResumeTime;
      if (*&__ExecOrResumeTime == 0.0)
      {
        v29 = __LaunchTime;
      }

      v30 = [MEMORY[0x1E696AD98] numberWithDouble:*&v29];
      [v17 setObject:v30 forKey:@"execOrResumeTimeIntervalSinceReferenceDate"];
    }

    else
    {
      v31 = MEMORY[0x1E696AEC0];
      v32 = [v17 objectForKey:@"startTimeIntervalSinceReferenceDate"];
      v33 = [v31 stringWithFormat:@"%@:%@", testCopy, v32];
      v34 = [v33 hash];

      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
      [v17 setObject:v35 forKey:@"pptTestTracepointIdentifier"];

      [(UIApplication *)self emitPPTStartTracePointForTestName:testCopy identifier:v34];
    }
  }
}

- (void)startedAnimationTest:(id)test
{
  testCopy = test;
  if (testCopy)
  {
    v5 = qword_1ED4A20B0;
    if (!qword_1ED4A20B0)
    {
      v6 = objc_opt_new();
      v7 = qword_1ED4A20B0;
      qword_1ED4A20B0 = v6;

      v5 = qword_1ED4A20B0;
    }

    [v5 addObject:testCopy];
    [(UIApplication *)self startedTest:testCopy];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __60__UIApplication_UIApplicationTesting__startedAnimationTest___block_invoke;
    v12 = &unk_1E70F35B8;
    selfCopy = self;
    v8 = testCopy;
    v14 = v8;
    [(UIApplication *)self installCACommitCompletionBlock:&v9];
    [(UIApplication *)self startedSubTest:@"setup" forTest:v8, v9, v10, v11, v12, selfCopy];
  }
}

uint64_t __60__UIApplication_UIApplicationTesting__startedAnimationTest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"setup" forTest:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 startedSubTest:@"duration" forTest:v3];
}

- (id)resultsForTest:(id)test
{
  testCopy = test;
  if (!testCopy)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = [qword_1ED4A20A8 objectForKey:testCopy];
  v5 = v4;
  if (!v4)
  {
LABEL_6:
    dictionary = 0;
    goto LABEL_7;
  }

  v6 = [v4 objectForKey:@"SubTestResults"];
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [v5 setObject:dictionary forKey:@"SubTestResults"];
  }

LABEL_7:

  return dictionary;
}

- (id)subTest:(id)test ForTest:(id)forTest withMetrics:(id)metrics
{
  v16 = *MEMORY[0x1E69E9840];
  testCopy = test;
  metricsCopy = metrics;
  if (forTest)
  {
    v9 = [qword_1ED4A20A8 objectForKey:forTest];
    v10 = [v9 objectForKey:@"SubTests"];

    if (v10)
    {
      v11 = [v10 objectForKey:testCopy];
      if (!v11)
      {
        v11 = [[UISubTest alloc] initWithName:testCopy metrics:metricsCopy];
        [v10 setObject:v11 forKey:testCopy];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = _pptLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = testCopy;
      _os_log_error_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Cannot get subtest for a nil testName. (subTestName: %@)", &v14, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (void)startedSubTest:(id)test forTest:(id)forTest
{
  v6 = MEMORY[0x1E695DEC8];
  forTestCopy = forTest;
  testCopy = test;
  v9 = [v6 arrayWithObjects:{@"time", @"fps", 0}];
  [(UIApplication *)self startedSubTest:testCopy forTest:forTestCopy withMetrics:v9];
}

- (void)startedSubTest:(id)test forTest:(id)forTest withMetrics:(id)metrics
{
  v21[1] = *MEMORY[0x1E69E9840];
  testCopy = test;
  forTestCopy = forTest;
  if (testCopy)
  {
    v10 = [(UIApplication *)self subTest:testCopy ForTest:forTestCopy withMetrics:metrics];
    if (v10)
    {
      _currentFrameCountForTestDisplay = [(UIApplication *)self _currentFrameCountForTestDisplay];
      [v10 startWithFrameCount:_currentFrameCountForTestDisplay];

      v12 = MEMORY[0x1E696AEC0];
      startTime = [v10 startTime];
      v14 = [v12 stringWithFormat:@"%@:%@:%@", forTestCopy, testCopy, startTime];
      v15 = [v14 hash];

      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
      v21[0] = @"pptSubTestTracepointIdentifier";
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [v10 setObject:v16 forKey:v17];

      v18 = [qword_1ED4A20A8 objectForKey:forTestCopy];
      v19 = [v18 objectForKey:@"pptTestTracepointIdentifier"];
      unsignedLongValue = [v19 unsignedLongValue];

      if (!unsignedLongValue)
      {
        unsignedLongValue = [forTestCopy hash];
      }

      [(UIApplication *)self emitPPTStartTracePointForSubTestName:testCopy identifier:v15 testIdentifier:unsignedLongValue];
    }
  }
}

- (void)finishedSubTest:(id)test forTest:(id)forTest
{
  v12[1] = *MEMORY[0x1E69E9840];
  testCopy = test;
  if (testCopy)
  {
    v7 = [(UIApplication *)self subTest:testCopy ForTest:forTest withMetrics:0];
    if (v7)
    {
      _currentFrameCountForTestDisplay = [(UIApplication *)self _currentFrameCountForTestDisplay];
      [v7 stopWithFrameCount:_currentFrameCountForTestDisplay];

      v12[0] = @"pptSubTestTracepointIdentifier";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      v10 = [v7 getObjectForKey:v9];
      unsignedLongValue = [v10 unsignedLongValue];

      [(UIApplication *)self emitPPTEndTracePointForSubTestName:testCopy identifier:unsignedLongValue];
    }
  }
}

- (void)finishedSubTest:(id)test forTest:(id)forTest waitForCommit:(BOOL)commit
{
  commitCopy = commit;
  testCopy = test;
  forTestCopy = forTest;
  if (commitCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__UIApplication_UIApplicationTesting__finishedSubTest_forTest_waitForCommit___block_invoke;
    v10[3] = &unk_1E70F6228;
    v10[4] = self;
    v11 = testCopy;
    v12 = forTestCopy;
    [(UIApplication *)self installCACommitCompletionBlock:v10];
  }

  else
  {
    [(UIApplication *)self finishedSubTest:testCopy forTest:forTestCopy];
  }
}

- (void)_sendDictionaryToPPT:(id)t
{
  v20 = *MEMORY[0x1E69E9840];
  tCopy = t;
  _purplePPTServerPort = [(UIApplication *)self _purplePPTServerPort];
  if (_purplePPTServerPort)
  {
    v6 = _purplePPTServerPort;
    v17 = 0;
    v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:tCopy format:200 options:0 error:&v17];
    v8 = v17;
    v9 = v8;
    if (v7)
    {
      goto LABEL_6;
    }

    v10 = @"UIKit failed to generate the result payload";
    if (v8)
    {
      v11 = MEMORY[0x1E696AEC0];
      localizedDescription = [v8 localizedDescription];
      v10 = [v11 stringWithFormat:@"%@. Serialization Error=%@", @"UIKit failed to generate the result payload", localizedDescription];
    }

    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v10, @"payloadGenerationError", 0}];
    v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:v13 format:200 options:0 error:0];

    if (v7)
    {
LABEL_6:
      v14 = CFMessagePortSendRequest(v6, 0, v7, 0.0, 0.0, 0, 0);
      v15 = _pptLogHandle();
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v19 = v14;
          _os_log_error_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Error sending test results to PPT. (CFMessagePortSendRequest error: %d)", buf, 8u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "Sent test results to PPT.", buf, 2u);
      }
    }
  }
}

- (void)startedIPTest:(id)test
{
  testCopy = test;
  if (testCopy)
  {
    v10 = testCopy;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:@"StartedInterProcessTest" forKey:@"PPTMessageType"];
    [v5 setObject:v10 forKey:@"testName"];
    _currentFrameCountForTestDisplay = [(UIApplication *)self _currentFrameCountForTestDisplay];
    [v5 setObject:_currentFrameCountForTestDisplay forKey:@"startingFrameCount"];

    v7 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = [v7 numberWithDouble:?];
    [v5 setObject:v8 forKey:@"startTimeIntervalSinceReferenceDate"];

    if (qword_1ED4A20C0)
    {
      [v5 setObject:qword_1ED4A20C0 forKey:@"aggregate"];
      v9 = qword_1ED4A20C0;
      qword_1ED4A20C0 = 0;
    }

    -[UIApplication emitPPTStartTracePointForTestName:identifier:](self, "emitPPTStartTracePointForTestName:identifier:", v10, [v10 hash]);
    [(UIApplication *)self _sendDictionaryToPPT:v5];

    testCopy = v10;
  }
}

- (void)finishedIPTest:(id)test waitForCommit:(BOOL)commit extraResults:(id)results withTeardownBlock:(id)block
{
  commitCopy = commit;
  testCopy = test;
  resultsCopy = results;
  blockCopy = block;
  if (commitCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __99__UIApplication_UIApplicationTesting__finishedIPTest_waitForCommit_extraResults_withTeardownBlock___block_invoke;
    v13[3] = &unk_1E70F5F08;
    v13[4] = self;
    v14 = testCopy;
    v15 = resultsCopy;
    v16 = blockCopy;
    [(UIApplication *)self installCACommitCompletionBlock:v13];
  }

  else
  {
    [(UIApplication *)self finishedIPTest:testCopy extraResults:resultsCopy withTeardownBlock:blockCopy];
  }
}

- (void)finishedIPTest:(id)test extraResults:(id)results withTeardownBlock:(id)block
{
  resultsCopy = results;
  blockCopy = block;
  if (test)
  {
    v9 = MEMORY[0x1E695DF90];
    testCopy = test;
    v11 = objc_alloc_init(v9);
    if (resultsCopy)
    {
      [v11 addEntriesFromDictionary:resultsCopy];
    }

    [v11 setObject:@"FinishedInterProcessTest" forKey:@"PPTMessageType"];
    [v11 setObject:testCopy forKey:@"testName"];
    _currentFrameCountForTestDisplay = [(UIApplication *)self _currentFrameCountForTestDisplay];
    [v11 setObject:_currentFrameCountForTestDisplay forKey:@"endingFrameCount"];

    v13 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v14 = [v13 numberWithDouble:?];
    [v11 setObject:v14 forKey:@"endTimeIntervalSinceReferenceDate"];

    -[UIApplication emitPPTEndTracePointForTestName:identifier:](self, "emitPPTEndTracePointForTestName:identifier:", testCopy, [testCopy hash]);
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    [(UIApplication *)self _sendDictionaryToPPT:v11];
  }
}

- (void)_reportResults:(id)results
{
  resultsCopy = results;
  [(UIApplication *)self _sendDictionaryToPPT:resultsCopy];
  v4 = [resultsCopy objectForKey:@"testName"];
  v5 = v4;
  v6 = &stru_1EFB14550;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = getenv("PPT_SERIALIZE_RESULTS");
  if (v8 && *v8 == 49 && !v8[1])
  {
    if (!_reportResults____dateFormatter)
    {
      v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v10 = _reportResults____dateFormatter;
      _reportResults____dateFormatter = v9;

      [_reportResults____dateFormatter setDateFormat:@"yyyy-MM-dd-HHmmss"];
    }

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    executablePath = [mainBundle executablePath];
    lastPathComponent = [executablePath lastPathComponent];

    v14 = MEMORY[0x1E696AEC0];
    v15 = _reportResults____dateFormatter;
    date = [MEMORY[0x1E695DF00] date];
    v17 = [v15 stringFromDate:date];
    v18 = [v14 stringWithFormat:@"%@-%@-%@.plist", lastPathComponent, v7, v17];

    v19 = NSTemporaryDirectory();
    v20 = [v19 stringByAppendingPathComponent:v18];

    [resultsCopy writeToFile:v20 atomically:1];
    NSLog(&cfstr_WroteTestResul.isa, v20);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, @"testName", resultsCopy, @"testResults", 0}];
  [defaultCenter postNotificationName:@"UIApplicationTestingTestFinishedNotification" object:self userInfo:v22];
}

- (void)finishedTest:(id)test extraResults:(id)results waitForNotification:(id)notification withTeardownBlock:(id)block
{
  testCopy = test;
  resultsCopy = results;
  notificationCopy = notification;
  blockCopy = block;
  v14 = [(UIApplication *)self isLaunchTest:testCopy];
  _extendLaunchTest = [(UIApplication *)self _extendLaunchTest];

  if (v14)
  {
    if (_extendLaunchTest)
    {
      __extendedLaunchTestIsMarkedAsFinished = 1;
      if (__basicLaunchTestIsMarkedAsFinished != 1)
      {
        goto LABEL_47;
      }
    }
  }

  if ((__IsRunningTests & 1) != 0 || (*(&self->_applicationFlags + 4) & 4) == 0 && ([(UIApplication *)self _extendLaunchTest], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
  {
LABEL_5:
    if ((*(&self->_applicationFlags + 4) & 4) != 0 || ([(UIApplication *)self _extendLaunchTest], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      if (*&__ExecOrResumeTime == 0.0)
      {
        if (os_variant_has_internal_content())
        {
          v22 = *(__UILogGetCategoryCachedImpl("Application", &qword_1ED4A2120) + 8);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v23 = "Unable to track resume time or/and signal end of extended launch as __ExecOrResumeTime is 0";
LABEL_21:
            _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
          }
        }
      }

      else
      {
        if (__wasResumed == 1)
        {
          v17 = *(__UILogGetCategoryCachedImpl("AppLifecycle", &qword_1ED4A2110) + 8);
          if (os_signpost_enabled(v17))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_188A29000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AppResume", " enableTelemetry=YES ", buf, 2u);
          }

          goto LABEL_40;
        }

        if (testCopy && [(UIApplication *)self isRunningTest])
        {
          v24 = [testCopy isEqualToString:@"launch"];
        }

        else
        {
          v24 = 1;
        }

        if (*&__LaunchTime != 0.0)
        {
          if (v24)
          {
            _extendLaunchTest2 = [(UIApplication *)self _extendLaunchTest];

            if (_extendLaunchTest2)
            {
              [(UIApplication *)self startedSubTest:@"extended-launch-responsive" forTest:testCopy];
              v43 = testCopy;
              alm_app_extended_launch_end_with_details();
            }

            alm_legacy_app_regular_or_extended_launch_end();
          }

          goto LABEL_40;
        }

        if (v24)
        {
          if (os_variant_has_internal_content())
          {
            v22 = *(__UILogGetCategoryCachedImpl("Application", &qword_1ED4A2118) + 8);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v23 = "Unable to signal end of extended launch as __LaunchTime is 0";
              goto LABEL_21;
            }
          }
        }
      }
    }

LABEL_40:
    if (testCopy && [(UIApplication *)self isRunningTest])
    {
      if (v14)
      {
        _extendLaunchTest3 = [(UIApplication *)self _extendLaunchTest];

        if (_extendLaunchTest3)
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v31 = v30;
          _extendLaunchTest4 = [(UIApplication *)self _extendLaunchTest];
          [(UIApplication *)self finishedSubTest:_extendLaunchTest4 forTest:testCopy];

          v33 = [qword_1ED4A20A8 objectForKey:testCopy];
          v34 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
          [v33 setObject:v34 forKey:@"extendedLaunchTimeIntervalSinceReferenceDate"];
        }

        v39 = testCopy;
        v40 = resultsCopy;
        v41 = notificationCopy;
        v42 = blockCopy;
        alm_execute_when_measurement_complete();
      }

      else
      {
        [(UIApplication *)self stopAndReportResultsForTest:testCopy extraResults:resultsCopy waitForNotification:notificationCopy withTeardownBlock:blockCopy];
      }
    }

    goto LABEL_47;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if (*&__LaunchTime == 0.0)
  {
    if (os_variant_has_internal_content())
    {
      v20 = *(__UILogGetCategoryCachedImpl("Application", &qword_1ED4A2100) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v21 = "Unable to track launch/resume time as __LaunchTime is 0";
LABEL_17:
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
        goto LABEL_47;
      }
    }

    goto LABEL_47;
  }

  v25 = v19 - *&__LaunchTime;
  if (__wasResumed)
  {
    v26 = @"appResumeTime.%@";
LABEL_50:
    v35 = MEMORY[0x1E696AEC0];
    v36 = +[UIApplication displayIdentifier];
    v37 = [v35 stringWithFormat:v26, v36];

    ADClientPushValueForDistributionKey();
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%3.1f", v37, *&v25];

    ADClientAddValueForScalarKey();
    goto LABEL_5;
  }

  if (![UIApp applicationState])
  {
    v26 = @"appLaunchTime.%@";
    goto LABEL_50;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if (*&__ExecOrResumeTime != 0.0)
  {
    v25 = v28 - *&__ExecOrResumeTime;
    v26 = @"appLaunchSuspendedTime.%@";
    goto LABEL_50;
  }

  if (os_variant_has_internal_content())
  {
    v20 = *(__UILogGetCategoryCachedImpl("Application", &qword_1ED4A2108) + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "Unable to track suspended time as __ExecOrResumeTime is 0";
      goto LABEL_17;
    }
  }

LABEL_47:
}

- (void)stopAndReportResultsForTest:(id)test extraResults:(id)results waitForNotification:(id)notification withTeardownBlock:(id)block
{
  v176 = *MEMORY[0x1E69E9840];
  testCopy = test;
  resultsCopy = results;
  notificationCopy = notification;
  blockCopy = block;
  v148 = resultsCopy;
  if (resultsCopy)
  {
    v11 = [resultsCopy mutableCopy];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = v11;
  v13 = [qword_1ED4A20A8 objectForKey:testCopy];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKey:@"pptTestTracepointIdentifier"];
    unsignedLongValue = [v15 unsignedLongValue];

    if (!unsignedLongValue)
    {
      unsignedLongValue = [testCopy hash];
    }

    v17 = [(UIApplication *)self isLaunchTest:testCopy];
    [testCopy rangeOfString:@"resume"];
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = v17;
    }

    v139 = v19;
    [testCopy rangeOfString:@"quit"];
    v142 = v20;
    _extendLaunchTest = [(UIApplication *)self _extendLaunchTest];
    v22 = _extendLaunchTest != 0;

    if ([qword_1ED4A20B0 containsObject:testCopy])
    {
      [(UIApplication *)self finishedSubTest:@"duration" forTest:testCopy];
      [qword_1ED4A20B0 removeObject:testCopy];
    }

    [(UIApplication *)self emitPPTEndTracePointForTestName:testCopy identifier:unsignedLongValue];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongValue];
    [v12 setObject:v23 forKey:@"pptTestTracepointIdentifier"];

    v24 = @"endTimeIntervalSinceReferenceDate";
    if (v17)
    {
      v24 = @"launchTimeIntervalSinceReferenceDate";
    }

    v144 = v24;
    v147 = [v14 objectForKey:?];
    v146 = [v14 objectForKey:@"startTimeIntervalSinceReferenceDate"];
    v145 = [v14 objectForKey:@"extendedLaunchTimeIntervalSinceReferenceDate"];
    [v146 doubleValue];
    v26 = v25;
    [v147 doubleValue];
    if (v27 == 0.0)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    }

    else
    {
      [v147 doubleValue];
    }

    v30 = v28;
    [v145 doubleValue];
    v32 = v31;
    v33 = [v14 objectForKey:@"execOrResumeTimeIntervalSinceReferenceDate"];
    v150 = v33;
    if (v33)
    {
      [v33 doubleValue];
      v35 = v34;
    }

    else
    {
      v35 = 0.0;
    }

    memset(&stats, 0, sizeof(stats));
    malloc_zone_statistics(0, &stats);
    blocks_in_use = stats.blocks_in_use;
    size_in_use = stats.size_in_use;
    if (byte_1ED4A20A2 == 1)
    {
      [(UIApplication *)self stopCHUDRecording];
    }

    if (testCopy)
    {
      [v12 setObject:testCopy forKey:@"testName"];
    }

    v37 = v30 - v26;
    v38 = _pptLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      stats.blocks_in_use = 138413058;
      *(&stats.blocks_in_use + 1) = testCopy;
      WORD2(stats.size_in_use) = 2048;
      *(&stats.size_in_use + 6) = v26;
      HIWORD(stats.max_size_in_use) = 2048;
      *&stats.size_allocated = v30;
      *v162 = 2048;
      *&v162[2] = v30 - v26;
      _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_DEFAULT, "PPT finishedTest: %@ (start: %f, end: %f, delta: %f)", &stats, 0x2Au);
    }

    if (v37 == 0.0)
    {
      v39 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v12 setObject:v39 forKey:@"failed"];

      [(UIApplication *)self _reportResults:v12];
    }

    else
    {
      v40 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
      [v12 setObject:v40 forKey:@"pid"];

      v41 = [v12 objectForKey:@"time"];
      v42 = v41 == 0;

      if (v42)
      {
        v43 = [MEMORY[0x1E696AD98] numberWithDouble:v30 - v26];
        [v12 setObject:v43 forKey:@"time"];
      }

      if (v22 && v17)
      {
        v44 = [v12 objectForKey:@"extendedLaunchTime"];
        v45 = v44 == 0;

        v46 = v32 - v26;
        if (v45)
        {
          v47 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
          [v12 setObject:v47 forKey:@"extendedLaunchTime"];
        }

        _extendLaunchTest2 = [(UIApplication *)self _extendLaunchTest];
        v49 = [v12 objectForKey:_extendLaunchTest2];
        v50 = v49 == 0;

        if (v50)
        {
          v51 = [MEMORY[0x1E696AD98] numberWithDouble:v46 - v37];
          _extendLaunchTest3 = [(UIApplication *)self _extendLaunchTest];
          [v12 setObject:v51 forKey:_extendLaunchTest3];
        }
      }

      if (v150)
      {
        v53 = [MEMORY[0x1E696AD98] numberWithDouble:v30 - v35];
        [v12 setObject:v53 forKey:@"execOrResumeTime"];
      }

      if (qword_1ED4A20C0)
      {
        [v12 setObject:qword_1ED4A20C0 forKey:@"aggregate"];
        v54 = qword_1ED4A20C0;
        qword_1ED4A20C0 = 0;
      }

      v133 = v142 != 0;
      v55 = [v14 objectForKey:@"heapBytes"];
      intValue = [v55 intValue];

      v57 = [MEMORY[0x1E696AD98] numberWithLong:size_in_use - intValue];
      [v12 setObject:v57 forKey:@"heapBytesDelta"];

      [v12 setObject:@"bytes" forKey:@"heapBytesDeltaUnits"];
      v58 = [v14 objectForKey:@"heapNodes"];
      LODWORD(v57) = [v58 intValue];

      v59 = [MEMORY[0x1E696AD98] numberWithLong:blocks_in_use - v57];
      [v12 setObject:v59 forKey:@"heapNodesDelta"];

      [v12 setObject:@"nodes" forKey:@"heapNodesDeltaUnits"];
      v60 = CAGetCurrentImageBytes();
      v61 = [v14 objectForKey:@"imageBytes"];
      unsignedIntValue = [v61 unsignedIntValue];

      v63 = CAGetMaximumImageBytes();
      v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v60 - unsignedIntValue];
      [v12 setObject:v64 forKey:@"imageBytesDelta"];

      [v12 setObject:@"bytes" forKey:@"imageBytesDeltaUnits"];
      v65 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v63];
      [v12 setObject:v65 forKey:@"maxImageBytes"];

      [v12 setObject:@"bytes" forKey:@"maxImageBytesUnits"];
      memset(v158, 0, sizeof(v158));
      v66 = [v14 objectForKey:@"startStats"];
      [v66 getBytes:v158 length:112];

      if (v17)
      {
        v67 = 0;
      }

      else
      {
        v67 = v158;
      }

      GetProcStatistics(&stats, v67);
      v134 = stats.blocks_in_use;
      v132 = *(&stats.blocks_in_use + 1);
      v131 = stats.size_in_use;
      size_in_use_high = HIDWORD(stats.size_in_use);
      max_size_in_use = stats.max_size_in_use;
      max_size_in_use_high = HIDWORD(stats.max_size_in_use);
      size_allocated = stats.size_allocated;
      size_allocated_high = HIDWORD(stats.size_allocated);
      v68 = *&v162[4];
      v69 = v163;
      v70 = v164;
      v71 = v165;
      v143 = v166;
      v72 = v167;
      v73 = v168;
      v138 = v169;
      v141 = v170;
      v136 = v172;
      v137 = v171;
      v135 = v173;
      v74 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*&v162[4]];
      [v12 setObject:v74 forKey:@"virtualSize"];

      [v12 setObject:@"bytes" forKey:@"virtualSizeUnits"];
      v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(&v68 + 1)];
      [v12 setObject:v75 forKey:@"maximumRSS"];

      [v12 setObject:@"bytes" forKey:@"maximumRSSUnits"];
      v76 = [MEMORY[0x1E696AD98] numberWithDouble:v70 / 1000.0 + (1000 * v69)];
      [v12 setObject:v76 forKey:@"userCpuSeconds"];

      [v12 setObject:@"ms" forKey:@"userCpuSecondsUnits"];
      v77 = [MEMORY[0x1E696AD98] numberWithDouble:v73 / 1000.0 + (1000 * v72)];
      [v12 setObject:v77 forKey:@"userCpuSecondsMainThread"];

      [v12 setObject:@"ms" forKey:@"userCpuSecondsMainThreadUnits"];
      v78 = [MEMORY[0x1E696AD98] numberWithDouble:v143 / 1000.0 + (1000 * v71)];
      [v12 setObject:v78 forKey:@"systemCpuSeconds"];

      [v12 setObject:@"ms" forKey:@"systemCpuSecondsUnits"];
      v79 = [MEMORY[0x1E696AD98] numberWithDouble:v141 / 1000.0 + (1000 * v138)];
      [v12 setObject:v79 forKey:@"systemCpuSecondsMainThread"];

      [v12 setObject:@"ms" forKey:@"systemCpuSecondsMainThreadUnits"];
      v80 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v137];
      [v12 setObject:v80 forKey:@"mainThreadCpuInstructions"];

      [v12 setObject:@"instructions" forKey:@"mainThreadCpuInstructionsUnits"];
      v81 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v136];
      [v12 setObject:v81 forKey:@"mainThreadCpuCycles"];

      [v12 setObject:@"cycles" forKey:@"mainThreadCpuCyclesUnits"];
      v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v135];
      [v12 setObject:v82 forKey:@"mainThreadCpuEnergy"];

      [v12 setObject:@"nJ" forKey:@"mainThreadCpuEnergyUnits"];
      v83 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v134];
      [v12 setObject:v83 forKey:@"pageFaults"];

      [v12 setObject:@"pages" forKey:@"pageFaultsUnits"];
      v84 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v132];
      [v12 setObject:v84 forKey:@"pageIns"];

      [v12 setObject:@"pages" forKey:@"pageInsUnits"];
      v85 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v131];
      [v12 setObject:v85 forKey:@"cowFaults"];

      [v12 setObject:@"pages" forKey:@"cowFaultsUnits"];
      v86 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:size_in_use_high];
      [v12 setObject:v86 forKey:@"machMessagesSent"];

      [v12 setObject:@"messages" forKey:@"machMessagesSentUnits"];
      v87 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:max_size_in_use];
      [v12 setObject:v87 forKey:@"machMessagesReceived"];

      [v12 setObject:@"messages" forKey:@"machMessagesReceivedUnits"];
      v88 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:max_size_in_use_high];
      [v12 setObject:v88 forKey:@"machSystemCalls"];

      [v12 setObject:@"syscalls" forKey:@"machSystemCallsUnits"];
      v89 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:size_allocated];
      [v12 setObject:v89 forKey:@"bsdSystemCalls"];

      [v12 setObject:@"syscalls" forKey:@"bsdSystemCallsUnits"];
      v90 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:size_allocated_high];
      [v12 setObject:v90 forKey:@"contextSwitches"];

      [v12 setObject:@"csw" forKey:@"contextSwitchesUnits"];
      [v12 removeObjectForKey:@"startStats"];
      if (((v139 | v133) & 1) == 0)
      {
        _currentFrameCountForTestDisplay = [(UIApplication *)self _currentFrameCountForTestDisplay];
        intValue2 = [_currentFrameCountForTestDisplay intValue];
        v93 = [v14 objectForKey:@"startingFrameCount"];
        intValue3 = [v93 intValue];

        if (v37 > 0.1)
        {
          v95 = intValue2 - intValue3;
          if (intValue2 - intValue3 >= 1)
          {
            v96 = v95;
            v97 = v95 / v37;
            *&v97 = v97;
            v98 = [MEMORY[0x1E696AD98] numberWithFloat:v97];
            [v12 setObject:v98 forKey:@"fps"];

            [v12 setObject:@"fps" forKey:@"fpsUnits"];
            v99 = v37 * 1000.0 / v96;
            *&v99 = v99;
            v100 = [MEMORY[0x1E696AD98] numberWithFloat:v99];
            [v12 setObject:v100 forKey:@"mspf"];

            [v12 setObject:@"mspf" forKey:@"mspfUnits"];
          }
        }

        v101 = [v14 objectForKey:@"SubTests"];
        if (v101)
        {
          v156[0] = MEMORY[0x1E69E9820];
          v156[1] = 3221225472;
          v156[2] = __118__UIApplication_UIApplicationTesting__stopAndReportResultsForTest_extraResults_waitForNotification_withTeardownBlock___block_invoke;
          v156[3] = &unk_1E7123EE0;
          v157 = v12;
          [v101 enumerateKeysAndObjectsUsingBlock:v156];
        }
      }

      if (byte_1ED4A20A3 == 1)
      {
        v102 = testCopy;
        __buf = 0;
        v159 = 0;
        pipe(v174);
        v103 = fork();
        if (!v103)
        {
          v110 = getppid();
          close(v174[0]);
          data = [MEMORY[0x1E695DF88] data];
          snprintf(__str, 0x50uLL, "leaks %d 2>/dev/null", v110);
          v112 = popen(__str, "r");
          if (!v112)
          {
            write(v174[1], &__buf, 4uLL);
            write(v174[1], &__buf + 4, 4uLL);
            _exit(1);
          }

          v113 = fread(&stats, 1uLL, 0x200uLL, v112);
          if (v113)
          {
            v114 = v113;
            do
            {
              [data appendBytes:&stats length:v114];
              v114 = fread(&stats, 1uLL, 0x200uLL, v112);
            }

            while (v114);
          }

          pclose(v112);
          v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:data encoding:1];
          v116 = [v115 componentsSeparatedByString:@"\n"];
          v117 = v116;
          if (v116 && [v116 count] && (objc_msgSend(v117, "count") & 0xFFFFFFFELL) != 0)
          {
            v121 = [v117 objectAtIndex:1];
            v122 = [v121 componentsSeparatedByString:@" "];

            v123 = [v122 objectAtIndex:2];
            LODWORD(__buf) = [v123 intValue];

            v124 = [v122 objectAtIndex:5];
            HIDWORD(__buf) = [v124 intValue];
          }

          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          executablePath = [mainBundle executablePath];
          lastPathComponent = [executablePath lastPathComponent];

          if (__buf)
          {
            v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%@.%d.%@leaks.txt", lastPathComponent, v110, v102];
            if ([v115 writeToFile:v102 atomically:1 encoding:4 error:0])
            {
              NSLog(&cfstr_LeaksDataWrite.isa, v102);
            }

            else
            {
              NSLog(&cfstr_CouldnTWriteLe.isa, v102);
            }
          }

          else
          {
            NSLog(&cfstr_NoLeaksFoundFo.isa, lastPathComponent);
          }

          write(v174[1], &__buf, 4uLL);
          write(v174[1], &__buf + 4, 4uLL);
          _exit(0);
        }

        close(v174[1]);
        read(v174[0], &__buf, 4uLL);
        read(v174[0], &__buf + 4, 4uLL);
        close(v174[0]);
        waitpid(v103, &v159, 0);

        v104 = HIDWORD(__buf);
        v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:__buf];
        [v12 setObject:v105 forKey:@"totalLeaks"];

        [v12 setObject:@"nodes" forKey:@"totalLeaksUnits"];
        v106 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v104];
        [v12 setObject:v106 forKey:@"totalLeakedBytes"];

        [v12 setObject:@"bytes" forKey:@"totalLeakedBytesUnits"];
      }

      if (testCopy)
      {
        [qword_1ED4A20A8 removeObjectForKey:testCopy];
      }

      if (blockCopy)
      {
        blockCopy[2]();
      }

      if (qword_1ED4A20B8 || [testCopy isEqualToString:@"launch suspended"])
      {
        [(UIApplication *)self _reportResults:v12];
      }

      else if (notificationCopy)
      {
        *&stats.blocks_in_use = 0;
        stats.size_in_use = &stats;
        stats.max_size_in_use = 0x3032000000;
        stats.size_allocated = __Block_byref_object_copy__200;
        *v162 = __Block_byref_object_dispose__200;
        *&v162[8] = 0;
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v153[0] = MEMORY[0x1E69E9820];
        v153[1] = 3221225472;
        v153[2] = __118__UIApplication_UIApplicationTesting__stopAndReportResultsForTest_extraResults_waitForNotification_withTeardownBlock___block_invoke_419;
        v153[3] = &unk_1E7123F08;
        v153[4] = self;
        v154 = v12;
        p_stats = &stats;
        v108 = [defaultCenter addObserverForName:notificationCopy object:0 queue:0 usingBlock:v153];
        v109 = *(stats.size_in_use + 40);
        *(stats.size_in_use + 40) = v108;

        _Block_object_dispose(&stats, 8);
      }

      else
      {
        [(UIApplication *)self performSelector:sel__reportResults_ withObject:v12 afterDelay:0.0];
      }
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v12 setObject:v29 forKey:@"failed"];

    [(UIApplication *)self _reportResults:v12];
  }
}

void __118__UIApplication_UIApplicationTesting__stopAndReportResultsForTest_extraResults_waitForNotification_withTeardownBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 outputData];
  [v3 addEntriesFromDictionary:v4];
}

void __118__UIApplication_UIApplicationTesting__stopAndReportResultsForTest_extraResults_waitForNotification_withTeardownBlock___block_invoke_419(uint64_t a1)
{
  [*(a1 + 32) performSelector:sel__reportResults_ withObject:*(a1 + 40) afterDelay:0.0];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)finishedTest:(id)test waitForCommit:(BOOL)commit extraResults:(id)results withTeardownBlock:(id)block
{
  commitCopy = commit;
  testCopy = test;
  resultsCopy = results;
  blockCopy = block;
  if (commitCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__UIApplication_UIApplicationTesting__finishedTest_waitForCommit_extraResults_withTeardownBlock___block_invoke;
    v13[3] = &unk_1E70F5F08;
    v13[4] = self;
    v14 = testCopy;
    v15 = resultsCopy;
    v16 = blockCopy;
    [(UIApplication *)self installCACommitCompletionBlock:v13];
  }

  else
  {
    [(UIApplication *)self finishedTest:testCopy extraResults:resultsCopy waitForNotification:0 withTeardownBlock:blockCopy];
  }
}

- (void)failedTest:(id)test withFailure:(id)failure withResults:(id)results
{
  v18 = *MEMORY[0x1E69E9840];
  testCopy = test;
  failureCopy = failure;
  resultsCopy = results;
  if (testCopy)
  {
    v11 = qword_1ED4A20B8 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = !v11;
  if (byte_1ED4A20A2 == 1)
  {
    [(UIApplication *)self stopCHUDRecording];
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:resultsCopy];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v13 setObject:v14 forKey:@"failed"];

  if (failureCopy)
  {
    [v13 setObject:failureCopy forKey:@"failureType"];
  }

  if (!testCopy)
  {
    goto LABEL_15;
  }

  [v13 setObject:testCopy forKey:@"testName"];
  v15 = _pptLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = testCopy;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "PPT failedTest: %@ (removing results)", &v16, 0xCu);
  }

  [qword_1ED4A20A8 removeObjectForKey:testCopy];
  if (!v12)
  {
    [(UIApplication *)self performSelector:sel__reportResults_ withObject:v13 afterDelay:0.0];
  }

  else
  {
LABEL_15:
    [(UIApplication *)self _reportResults:v13];
  }
}

- (BOOL)handleTestURL:(id)l
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = _pptLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = lCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Received PPT test URL: %@", buf, 0xCu);
  }

  path = [lCopy path];
  v7 = path;
  if (path)
  {
    if ([path hasPrefix:@"/"])
    {
      v8 = [v7 substringFromIndex:1];
    }

    else
    {
      v8 = v7;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v33 = v8;
    [dictionary setObject:v8 forKey:@"testName"];
    query = [lCopy query];
    v9 = [query componentsSeparatedByString:@""];;

    v12 = [v9 count];
    v13 = v12;
    if (v12)
    {
      selfCopy = self;
      v32 = v7;
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = v15;
        v17 = [v9 objectAtIndex:v14];
        v15 = [v17 componentsSeparatedByString:@"!!!"];

        if ([v15 count] == 2)
        {
          v18 = [v15 objectAtIndex:1];
          stringByRemovingPercentEncoding = [v18 stringByRemovingPercentEncoding];
          v20 = [v15 objectAtIndex:0];
          stringByRemovingPercentEncoding2 = [v20 stringByRemovingPercentEncoding];
          [dictionary setObject:stringByRemovingPercentEncoding forKey:stringByRemovingPercentEncoding2];
        }

        ++v14;
      }

      while (v13 != v14);

      v7 = v32;
      self = selfCopy;
    }

    v22 = [dictionary objectForKey:@"SampleWithCHUD"];
    byte_1ED4A20A2 = [v22 isEqualToString:@"YES"];

    v23 = [dictionary objectForKey:@"CheckForLeaks"];
    byte_1ED4A20A3 = [v23 isEqualToString:@"YES"];

    v24 = [dictionary objectForKey:@"TargetsAuxiliaryDisplay"];
    byte_1ED4A20A1 = [v24 isEqualToString:@"YES"];

    v25 = [dictionary objectForKey:@"aggregate"];
    v26 = qword_1ED4A20C0;
    qword_1ED4A20C0 = v25;

    v27 = [(UIApplication *)self _testOrientation:v33 options:dictionary];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __53__UIApplication_UIApplicationTesting__handleTestURL___block_invoke;
    v34[3] = &unk_1E70F4638;
    v34[4] = self;
    v35 = v33;
    v36 = dictionary;
    v28 = dictionary;
    v29 = v33;
    [(UIApplication *)self rotateIfNeeded:v27 completion:v34];
  }

  else
  {
    v9 = _pptLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = lCopy;
      _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Malformed test URL (no testName): %@", buf, 0xCu);
    }
  }

  return v7 != 0;
}

uint64_t __53__UIApplication_UIApplicationTesting__handleTestURL___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) runTest:*(a1 + 40) options:*(a1 + 48)];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) startedTest:*(a1 + 40)];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 failedTest:v4 withFailure:@"TestNotHandled"];
  }

  return result;
}

- (BOOL)_isSupportedOrientation:(int64_t)orientation
{
  v4 = [UIApp supportedInterfaceOrientationsForWindow:0];

  return _UIInterfaceOrientationMaskContainsOrientation(v4, orientation);
}

- (int64_t)_testOrientation:(id)orientation options:(id)options
{
  orientationCopy = orientation;
  v7 = [options valueForKey:@"orientation"];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"Portrait"])
    {
LABEL_3:
      _safeInterfaceOrientationForNoWindow = 1;
      goto LABEL_11;
    }

    if ([v8 isEqualToString:@"Landscape"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"LandscapeRight"))
    {
      goto LABEL_10;
    }

    if ([v8 isEqualToString:@"LandscapeLeft"])
    {
      _safeInterfaceOrientationForNoWindow = 4;
    }

    else if ([v8 isEqualToString:@"PortraitUpsideDown"])
    {
      _safeInterfaceOrientationForNoWindow = 2;
    }

    else
    {
      if (![v8 isEqualToString:@"current"])
      {
        NSLog(&cfstr_UnsupportedVal_0.isa, v8);
        goto LABEL_3;
      }

      _safeInterfaceOrientationForNoWindow = [UIApp _safeInterfaceOrientationForNoWindow];
    }
  }

  else
  {
    if ([orientationCopy rangeOfString:@"Landscape"] != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_10:
      _safeInterfaceOrientationForNoWindow = 3;
      goto LABEL_11;
    }

    if ([orientationCopy isEqualToString:@"resize"])
    {
      _safeInterfaceOrientationForNoWindow = 3;
    }

    else
    {
      _safeInterfaceOrientationForNoWindow = 1;
    }
  }

LABEL_11:
  if (![(UIApplication *)self _isSupportedOrientation:_safeInterfaceOrientationForNoWindow])
  {
    do
    {
      if (_safeInterfaceOrientationForNoWindow <= 3)
      {
        ++_safeInterfaceOrientationForNoWindow;
      }

      else
      {
        _safeInterfaceOrientationForNoWindow = 1;
      }
    }

    while (![(UIApplication *)self _isSupportedOrientation:_safeInterfaceOrientationForNoWindow]);
  }

  return _safeInterfaceOrientationForNoWindow;
}

- (void)emitPPTStartTracePointForTestName:(id)name identifier:(unint64_t)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v6 = _pptLogHandle();
  v7 = _pptLogHandle();
  v8 = os_signpost_id_make_with_pointer(v7, self);

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v17 = 138543362;
    v18 = nameCopy;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MainTest", "%{public, name=testName}@  isAnimation=YES ", &v17, 0xCu);
  }

  v9 = strlen([nameCopy UTF8String]);
  v10 = 3 * ((v9 + 11) / 0xC);
  v11 = 12 * ((v9 + 11) / 0xC);
  Buffer = createBuffer(nameCopy, v11);
  [nameCopy length];
  kdebug_trace();
  if (v11 >= 4)
  {
    v13 = v10 & 0x3FFFFFFFFFFFFFFFLL;
    v14 = Buffer + 8;
    v15 = 1;
    do
    {
      v14 += 12;
      kdebug_trace();
      v16 = v15 + 2;
      v15 += 3;
    }

    while (v16 < v13);
  }

  free(Buffer);
}

- (void)emitPPTStartTracePointForSubTestName:(id)name identifier:(unint64_t)identifier testIdentifier:(unint64_t)testIdentifier
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = _pptLogHandle();
  v8 = _pptLogHandle();
  v9 = os_signpost_id_make_with_pointer(v8, self);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v18 = 138543362;
    v19 = nameCopy;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SubTest", "%{public, name=subTestName}@  isAnimation=YES ", &v18, 0xCu);
  }

  v10 = strlen([nameCopy UTF8String]);
  v11 = 3 * ((v10 + 11) / 0xC);
  v12 = 12 * ((v10 + 11) / 0xC);
  Buffer = createBuffer(nameCopy, v12);
  [nameCopy length];
  kdebug_trace();
  if (v12 >= 4)
  {
    v14 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    v15 = Buffer + 8;
    v16 = 1;
    do
    {
      v15 += 12;
      kdebug_trace();
      v17 = v16 + 2;
      v16 += 3;
    }

    while (v17 < v14);
  }

  else if (!Buffer)
  {
    goto LABEL_10;
  }

  free(Buffer);
LABEL_10:
}

- (void)emitPPTEndTracePointForSubTestName:(id)name identifier:(unint64_t)identifier
{
  v5 = _pptLogHandle();
  v6 = _pptLogHandle();
  v7 = os_signpost_id_make_with_pointer(v6, self);

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v5, OS_SIGNPOST_INTERVAL_END, v7, "SubTest", "", v8, 2u);
  }

  kdebug_trace();
}

- (void)emitPPTEndTracePointForTestName:(id)name identifier:(unint64_t)identifier
{
  nameCopy = name;
  v6 = _pptLogHandle();
  v7 = _pptLogHandle();
  v8 = os_signpost_id_make_with_pointer(v7, self);

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v6, OS_SIGNPOST_INTERVAL_END, v8, "MainTest", "", v11, 2u);
  }

  v9 = strlen([nameCopy UTF8String]);
  Buffer = createBuffer(nameCopy, 12 * ((v9 + 11) / 0xC));
  [nameCopy length];

  kdebug_trace();
  free(Buffer);
}

- (void)startCHUDRecording:(id)recording
{
  recordingCopy = recording;
  CHUDSymbol = _getCHUDSymbol("chudAcquireRemoteAccess");
  v4 = _getCHUDSymbol("chudIsRemoteAccessAcquired");
  v5 = _getCHUDSymbol("chudStartRemotePerfMonitor");
  v6 = _getCHUDSymbol("chudInitialize");
  v7 = _getCHUDSymbol("chudMarkPID");
  if (v6 && v7 && CHUDSymbol && v4 && v5)
  {
    if ((startCHUDRecording__chudInitialized & 1) == 0)
    {
      v8 = v6();
      if (v8)
      {
        NSLog(&cfstr_Chudinitialize_0.isa, v8);
        goto LABEL_19;
      }

      startCHUDRecording__chudInitialized = 1;
    }

    v9 = 1;
    while (CHUDSymbol() || !v4())
    {
      NSLog(&cfstr_WaitingForShar.isa, v9, 5);
      sleep(2u);
      v9 = (v9 + 1);
      if (v9 == 6)
      {
        goto LABEL_17;
      }
    }

    NSLog(&cfstr_ConnectedToSha.isa);
LABEL_17:
    v10 = MEMORY[0x1E696AEC0];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    recordingCopy = [v10 stringWithFormat:@"%@-%@", processName, recordingCopy];
    v14 = v5([recordingCopy UTF8String]);

    if (v14)
    {
      NSLog(&cfstr_Chudstartremot_0.isa, v14);
    }
  }

  else
  {
    NSLog(&cfstr_CouldnTStartSh.isa);
  }

LABEL_19:
}

- (void)stopCHUDRecording
{
  CHUDSymbol = _getCHUDSymbol("chudStopRemotePerfMonitor");
  v3 = _getCHUDSymbol("chudReleaseRemoteAccess");
  if (CHUDSymbol)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    NSLog(&cfstr_CouldnTStopChu.isa);
  }

  else
  {
    v5 = v3;
    v6 = CHUDSymbol();
    if (v6)
    {
      NSLog(&cfstr_Chudstopremote_0.isa, v6);
    }

    v7 = v5();
    if (v7)
    {
      NSLog(&cfstr_Chudreleaserem_0.isa, v7);
    }
  }
}

- (void)_leak
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"DebugLeakSize"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x100000;
  }

  v5 = malloc_type_malloc(v4, 0xE4DAB4EFuLL);
  v6 = 4096;
  do
  {
    *v5 = 1;
    v7 = v6 & 0xFFFFF000;
    v5 += 4096;
    v6 += 4096;
  }

  while (v4 > v7);
  _leak_totalLeaked += v4;
}

- (void)startLeaking
{
  if (!__LeakTimer)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults floatForKey:@"DebugLeakRate"];
    v5 = v4;

    v6 = 1.0;
    if (v5 != 0.0)
    {
      v6 = v5;
    }

    v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__leak selector:0 userInfo:1 repeats:v6];
    v8 = __LeakTimer;
    __LeakTimer = v7;
  }
}

- (void)stopLeaking
{
  if (__LeakTimer)
  {
    [__LeakTimer invalidate];
    v2 = __LeakTimer;
    __LeakTimer = 0;
  }
}

- (BOOL)rotateIfNeeded:(int64_t)needed
{
  _safeInterfaceOrientationForNoWindow = [(UIApplication *)self _safeInterfaceOrientationForNoWindow];
  if ((_safeInterfaceOrientationForNoWindow - 3) > 1)
  {
    v6 = (_safeInterfaceOrientationForNoWindow - 1) | (needed - 1);
  }

  else
  {
    v6 = needed - 3;
  }

  if (v6 < 2)
  {
    return 0;
  }

  if ((needed - 1) >= 4)
  {
    needed = 0;
  }

  v8 = [[UIPPTRequestAction alloc] initWithDesiredOrientation:needed];
  _findUISceneForLegacyInterfaceOrientation = [(UIApplication *)self _findUISceneForLegacyInterfaceOrientation];
  _FBSScene = [_findUISceneForLegacyInterfaceOrientation _FBSScene];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [_FBSScene sendActions:v11];

  return 1;
}

- (void)rotateIfNeeded:(int64_t)needed before:(id)before after:(id)after
{
  beforeCopy = before;
  afterCopy = after;
  if ([(UIApplication *)self _safeInterfaceOrientationForNoWindow]== needed)
  {
    if (beforeCopy)
    {
      beforeCopy[2](beforeCopy, 0);
    }

    if (afterCopy)
    {
      afterCopy[2](afterCopy, 0);
    }
  }

  else
  {
    if (beforeCopy)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__200;
      v34 = __Block_byref_object_dispose__200;
      v35 = 0;
      keyWindow = [(UIApplication *)self keyWindow];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __67__UIApplication_UIApplicationTesting__rotateIfNeeded_before_after___block_invoke;
      v27[3] = &unk_1E7123F30;
      v27[4] = self;
      v28 = beforeCopy;
      v29 = &v30;
      v13 = [defaultCenter addObserverForName:@"UIWindowWillRotateNotification" object:keyWindow queue:mainQueue usingBlock:v27];
      v14 = v31[5];
      v31[5] = v13;

      _Block_object_dispose(&v30, 8);
    }

    if (afterCopy)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__200;
      v34 = __Block_byref_object_dispose__200;
      v35 = 0;
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      v16 = +[UIWindow _applicationKeyWindow];
      mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __67__UIApplication_UIApplicationTesting__rotateIfNeeded_before_after___block_invoke_4;
      v24[3] = &unk_1E7123F58;
      v25 = afterCopy;
      v26 = &v30;
      v18 = [defaultCenter2 addObserverForName:@"UIWindowDidRotateNotification" object:v16 queue:mainQueue2 usingBlock:v24];
      v19 = v31[5];
      v31[5] = v18;

      _Block_object_dispose(&v30, 8);
    }

    if ((needed - 1) >= 4)
    {
      needed = 0;
    }

    v20 = [[UIPPTRequestAction alloc] initWithDesiredOrientation:needed];
    _findUISceneForLegacyInterfaceOrientation = [(UIApplication *)self _findUISceneForLegacyInterfaceOrientation];
    _FBSScene = [_findUISceneForLegacyInterfaceOrientation _FBSScene];
    v23 = [MEMORY[0x1E695DFD8] setWithObject:v20];
    [_FBSScene sendActions:v23];
  }
}

void __67__UIApplication_UIApplicationTesting__rotateIfNeeded_before_after___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__UIApplication_UIApplicationTesting__rotateIfNeeded_before_after___block_invoke_2;
  v6[3] = &unk_1E70F0F78;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v2 installCACommitCompletionBlock:v6];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:*(*(*(a1 + 48) + 8) + 40)];

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __67__UIApplication_UIApplicationTesting__rotateIfNeeded_before_after___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 16666666);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__UIApplication_UIApplicationTesting__rotateIfNeeded_before_after___block_invoke_3;
  block[3] = &unk_1E70F0F78;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __67__UIApplication_UIApplicationTesting__rotateIfNeeded_before_after___block_invoke_4(uint64_t a1)
{
  v2 = UIApp;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__UIApplication_UIApplicationTesting__rotateIfNeeded_before_after___block_invoke_5;
  v6[3] = &unk_1E70F0F78;
  v7 = *(a1 + 32);
  [v2 installCACommitCompletionBlock:v6];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (void)_requestSceneActivationWithConfiguration:(id)configuration animated:(BOOL)animated sender:(id)sender errorHandler:(id)handler
{
  animatedCopy = animated;
  configurationCopy = configuration;
  handlerCopy = handler;
  v11 = +[UISceneSessionActivationRequest request];
  userActivity = [configurationCopy userActivity];
  [v11 setUserActivity:userActivity];

  options = [configurationCopy options];
  [v11 setOptions:options];

  if (animatedCopy)
  {
    v14 = [[_UIWindowSceneActivationAnimator alloc] initWithConfiguration:configurationCopy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __119__UIApplication__UIWindowSceneActivationCommon___requestSceneActivationWithConfiguration_animated_sender_errorHandler___block_invoke;
    v16[3] = &unk_1E7126D00;
    v17 = v14;
    v18 = configurationCopy;
    v19 = v11;
    selfCopy = self;
    v21 = handlerCopy;
    v15 = v14;
    [(_UIWindowSceneActivationAnimator *)v15 prewarmWithCompletion:v16];
  }

  else
  {
    [(UIApplication *)self activateSceneSessionForRequest:v11 errorHandler:handlerCopy];
  }
}

uint64_t __119__UIApplication__UIWindowSceneActivationCommon___requestSceneActivationWithConfiguration_animated_sender_errorHandler___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [*(a1 + 40) preview];
    [v3 animateWithSourcePreview:v4 velocity:0.0];

    v5 = [*(a1 + 40) options];
    [*(a1 + 48) setOptions:v5];
  }

  else
  {
    [*(a1 + 32) cancel];
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);

  return [v6 activateSceneSessionForRequest:v7 errorHandler:v8];
}

@end