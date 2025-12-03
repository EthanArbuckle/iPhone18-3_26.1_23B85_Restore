@interface SBPPTOperation
+ (BOOL)_isLibraryDismissalAllowedWithCompletion:(id)completion;
+ (BOOL)_isLibraryPresentationAllowedWithCompletion:(id)completion;
+ (BOOL)isLibraryPresented;
+ (id)_homeScreenController;
+ (id)_libraryViewController;
+ (id)_mainDisplayWindowScene;
+ (id)appLibraryDismissExpandedPod;
+ (id)appLibraryExpandFirstPod;
+ (id)configureAppLibraryForAllAppsInOnePod;
+ (id)configureAppLibraryForEachAppHavingOwnPod;
+ (id)dismissAppLibraryOverlay;
+ (id)dismissAppLibraryPad:(BOOL)pad forTestWithName:(id)name;
+ (id)dismissAppLibrarySearch;
+ (id)dismissOverlaysAndResetHomeScreenToFirstIconPageAnimated:(BOOL)animated;
+ (id)dismissOverlaysAndResetHomeScreenToLastIconPageAnimated:(BOOL)animated;
+ (id)dismissOverlaysAndResetHomeScreenToPage:(unint64_t)page animated:(BOOL)animated completion:(id)completion;
+ (id)embeddedWindowScene;
+ (id)operationToActivateApplicationWithBundleIdentifier:(id)identifier;
+ (id)operationToActivateNullOffscreenApp;
+ (id)operationToCreateFolderWithName:(id)name containingIconsForBundleIdentifiers:(id)identifiers;
+ (id)operationToDismissAppSwitcherAndReturnToSource;
+ (id)operationToDismissBannerNotification;
+ (id)operationToDismissCoverSheet;
+ (id)operationToDismissFloatingDock;
+ (id)operationToDismissPageManagementForTestWithName:(id)name;
+ (id)operationToFinishTest:(id)test;
+ (id)operationToLoadPPTAppSwitcherState;
+ (id)operationToLockInterface;
+ (id)operationToMonitorCoverSheetTransitionWithTestName:(id)name execute:(id)execute;
+ (id)operationToOpenFolderWithName:(id)name;
+ (id)operationToPresentAppSwitcher;
+ (id)operationToPresentBannerNotification;
+ (id)operationToPresentCoverSheet;
+ (id)operationToPresentFloatingDock;
+ (id)operationToPresentPageManagementForTestWithName:(id)name;
+ (id)operationToPreventSystemIdle;
+ (id)operationToPublishExampleNotificationsWithNotificationCount:(unint64_t)count threadCount:(unint64_t)threadCount;
+ (id)operationToRemoveExampleNotifications;
+ (id)operationToRestoreAppSwitcherState;
+ (id)operationToRestoreHomeScreenState;
+ (id)operationToResumeSystemIdle;
+ (id)operationToSaveAppSwitcherState;
+ (id)operationToSaveHomeScreenState;
+ (id)operationToSetAllApplicationsBlockedForScreenTime:(BOOL)time;
+ (id)operationToSetApplicationWithBundleIdentifier:(id)identifier blockedForScreenTime:(BOOL)time;
+ (id)operationToSetInterfaceOrientation:(int64_t)orientation;
+ (id)operationToStartTest:(id)test;
+ (id)operationToSwipeDownInMiddleOfInterface;
+ (id)operationToSwipeLeftInMiddleOfInterface;
+ (id)operationToSwipeRightInMiddleOfInterface;
+ (id)operationToSwipeUpInMiddleOfInterface;
+ (id)operationToSynthesizeEventsForCommandString:(id)string;
+ (id)operationToSynthesizeEventsForEventActions:(id)actions;
+ (id)operationToSynthesizeEventsForEventStream:(id)stream;
+ (id)operationToTerminateApplicationWithBundleIdentifier:(id)identifier;
+ (id)operationToTerminateNullOffscreenApp;
+ (id)operationToTransitionToHomeScreen;
+ (id)operationToUnlockInterface;
+ (id)operationToUnlockInterfaceFinishingUIUnlock:(BOOL)unlock;
+ (id)operationToUpdateHomeScreenPagesForActiveFocusModeForTestWithName:(id)name;
+ (id)operationToWaitForNotificationName:(id)name object:(id)object timeout:(double)timeout;
+ (id)operationToWaitForTimeInterval:(double)interval;
+ (id)performTapAtPointWithBlock:(id)block;
+ (id)presentAppLibrary:(BOOL)library forTestWithName:(id)name;
+ (id)presentAppLibraryPhone;
+ (id)presentAppLibrarySearchByTappingSearchField;
+ (id)pullToAppLibrarySearch;
+ (id)resetAndPrepareforNextTest;
+ (id)resetAppLibraryToTop;
+ (void)_appLibrarySupport__performPanGesturesOnScreenFromPage:(unint64_t)page toPage:(unint64_t)toPage completion:(id)completion;
+ (void)_appLibrarySupport_performDragFromPoint:(CGPoint)point andDragTo:(CGPoint)to duration:(double)duration fromView:(id)view withCompletion:(id)completion;
+ (void)_appLibrarySupport_performLeftToRightPanGestureOnScreenWithDuration:(double)duration completion:(id)completion;
+ (void)_appLibrarySupport_performPanGestureAwayFromUserInterfaceLayoutDirectionOnScreenWithDuration:(double)duration completion:(id)completion;
+ (void)_appLibrarySupport_performPanGestureTowardsUserInterfaceLayoutDirectionOnScreenWithDuration:(double)duration completion:(id)completion;
+ (void)_appLibrarySupport_performPanGesturesOnScreenUntilOnDefaultHomeScreenIconPageWithCompletion:(id)completion;
+ (void)_appLibrarySupport_performPanGesturesOnScreenUntilOnDeweyOverlayWithCompletion:(id)completion;
+ (void)_appLibrarySupport_performPanGesturesOnScreenUntilOnPage:(unint64_t)page withCompletion:(id)completion;
+ (void)_appLibrarySupport_performPanWithComposer:(id)composer startLocation:(CGPoint)location endLocation:(CGPoint)endLocation duration:(double)duration;
+ (void)_appLibrarySupport_performRightToLeftPanGestureOnScreenWithDuration:(double)duration completion:(id)completion;
+ (void)_appLibrarySupport_performTapAtPoint:(CGPoint)point fromView:(id)view withCompletion:(id)completion;
+ (void)_dismissOverlaysAndResetHomeScreenToPage:(unint64_t)page animated:(BOOL)animated operation:(id)operation completion:(id)completion;
+ (void)enqueueOperations:(id)operations;
- (SBPPTOperation)init;
- (id)markFinishedSubTest:(id)test forTestName:(id)name;
- (id)markFinishedTest:(id)test;
- (id)markStartSubTest:(id)test forTestName:(id)name;
- (id)markStartedTest:(id)test;
- (void)operationDidFinish;
- (void)operationWillStart;
@end

@implementation SBPPTOperation

- (id)markStartedTest:(id)test
{
  testCopy = test;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__SBPPTOperation_markStartedTest___block_invoke;
  v9[3] = &unk_2783A9CE8;
  objc_copyWeak(&v11, &location);
  v10 = testCopy;
  v5 = testCopy;
  v6 = MEMORY[0x223D6F7F0](v9);
  startTestBlock = self->_startTestBlock;
  self->_startTestBlock = v6;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return self;
}

void __34__SBPPTOperation_markStartedTest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 startedTest:*(a1 + 32)];

  v4 = SBLogPPT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained operationName];
    v6 = v5;
    v7 = *(a1 + 32);
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = WeakRetained;
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' starting testname '%@'", &v9, 0x16u);
  }
}

- (id)markFinishedTest:(id)test
{
  testCopy = test;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__SBPPTOperation_markFinishedTest___block_invoke;
  v9[3] = &unk_2783A9CE8;
  objc_copyWeak(&v11, &location);
  v10 = testCopy;
  v5 = testCopy;
  v6 = MEMORY[0x223D6F7F0](v9);
  finishTestBlock = self->_finishTestBlock;
  self->_finishTestBlock = v6;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return self;
}

void __35__SBPPTOperation_markFinishedTest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 finishedTest:*(a1 + 32)];

  v4 = SBLogPPT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained operationName];
    v6 = v5;
    v7 = *(a1 + 32);
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = WeakRetained;
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' finished testname '%@'", &v9, 0x16u);
  }
}

- (id)markStartSubTest:(id)test forTestName:(id)name
{
  testCopy = test;
  nameCopy = name;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__SBPPTOperation_markStartSubTest_forTestName___block_invoke;
  v13[3] = &unk_2783B00B0;
  objc_copyWeak(&v16, &location);
  v14 = testCopy;
  v15 = nameCopy;
  v8 = nameCopy;
  v9 = testCopy;
  v10 = MEMORY[0x223D6F7F0](v13);
  startSubTestBlock = self->_startSubTestBlock;
  self->_startSubTestBlock = v10;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  return self;
}

void __47__SBPPTOperation_markStartSubTest_forTestName___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 startedSubTest:*(a1 + 32) forTest:*(a1 + 40)];

  v4 = SBLogPPT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained operationName];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = WeakRetained;
    }

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' started testname '%@' / sub test %@", &v10, 0x20u);
  }
}

- (id)markFinishedSubTest:(id)test forTestName:(id)name
{
  testCopy = test;
  nameCopy = name;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SBPPTOperation_markFinishedSubTest_forTestName___block_invoke;
  v13[3] = &unk_2783B00B0;
  objc_copyWeak(&v16, &location);
  v14 = testCopy;
  v15 = nameCopy;
  v8 = nameCopy;
  v9 = testCopy;
  v10 = MEMORY[0x223D6F7F0](v13);
  finishSubTestBlock = self->_finishSubTestBlock;
  self->_finishSubTestBlock = v10;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  return self;
}

void __50__SBPPTOperation_markFinishedSubTest_forTestName___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 finishedSubTest:*(a1 + 32) forTest:*(a1 + 40)];

  v4 = SBLogPPT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained operationName];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = WeakRetained;
    }

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' finished testname '%@' / sub test %@", &v10, 0x20u);
  }
}

- (void)operationWillStart
{
  v11 = *MEMORY[0x277D85DE8];
  self->_operationStartTime = CFAbsoluteTimeGetCurrent();
  v3 = SBLogPPT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    operationName = self->_operationName;
    if (!operationName)
    {
      operationName = self;
    }

    v9 = 138412290;
    v10 = operationName;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' starting", &v9, 0xCu);
  }

  startTestBlock = self->_startTestBlock;
  if (startTestBlock)
  {
    startTestBlock[2]();
    v6 = self->_startTestBlock;
    self->_startTestBlock = 0;
  }

  startSubTestBlock = self->_startSubTestBlock;
  if (startSubTestBlock)
  {
    startSubTestBlock[2]();
    v8 = self->_startSubTestBlock;
    self->_startSubTestBlock = 0;
  }
}

- (void)operationDidFinish
{
  v14 = *MEMORY[0x277D85DE8];
  self->_operationEndTime = CFAbsoluteTimeGetCurrent();
  v3 = SBLogPPT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    operationName = self->_operationName;
    if (!operationName)
    {
      operationName = self;
    }

    v5 = self->_operationEndTime - self->_operationStartTime;
    v10 = 138412546;
    v11 = operationName;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' executed in %f seconds", &v10, 0x16u);
  }

  finishSubTestBlock = self->_finishSubTestBlock;
  if (finishSubTestBlock)
  {
    finishSubTestBlock[2]();
    v7 = self->_finishSubTestBlock;
    self->_finishSubTestBlock = 0;
  }

  finishTestBlock = self->_finishTestBlock;
  if (finishTestBlock)
  {
    finishTestBlock[2]();
    v9 = self->_finishTestBlock;
    self->_finishTestBlock = 0;
  }
}

+ (void)enqueueOperations:(id)operations
{
  v3 = MEMORY[0x277CCABD8];
  operationsCopy = operations;
  mainQueue = [v3 mainQueue];
  [mainQueue addOperations:operationsCopy waitUntilFinished:0];
}

+ (id)operationToUnlockInterface
{
  v3 = [self operationToUnlockInterfaceFinishingUIUnlock:1];
  v4 = NSStringFromSelector(a2);
  [v3 setName:v4];

  return v3;
}

+ (id)operationToUnlockInterfaceFinishingUIUnlock:(BOOL)unlock
{
  v4 = NSStringFromSelector(a2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SBPPTOperation_operationToUnlockInterfaceFinishingUIUnlock___block_invoke;
  v7[3] = &__block_descriptor_33_e29_v16__0__SBPPTBlockOperation_8l;
  unlockCopy = unlock;
  v5 = [SBPPTBlockOperation operationWithName:v4 block:v7];

  return v5;
}

void __62__SBPPTOperation_operationToUnlockInterfaceFinishingUIUnlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBLockScreenManager sharedInstance];
  v5 = [v4 isUILocked];

  if (v5)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __62__SBPPTOperation_operationToUnlockInterfaceFinishingUIUnlock___block_invoke_3;
    v13 = &unk_2783A9F58;
    v15 = *(a1 + 32);
    v14 = v3;
    v6 = MEMORY[0x223D6F7F0](&v10);
    v7 = [SBBacklightController sharedInstance:v10];
    v8 = [v7 screenIsOn];

    if (v8)
    {
      v6[2](v6);
    }

    else
    {
      __62__SBPPTOperation_operationToUnlockInterfaceFinishingUIUnlock___block_invoke_2();
      v9 = dispatch_time(0, 2000000000);
      dispatch_after(v9, MEMORY[0x277D85CD0], v6);
    }
  }

  else
  {
    [v3 finish];
  }
}

void __62__SBPPTOperation_operationToUnlockInterfaceFinishingUIUnlock___block_invoke_2()
{
  v0 = [SBApp lockHardwareButton];
  v1 = [v0 buttonActions];

  [v1 performInitialButtonDownActions];
  [v1 performButtonUpPreActions];
  [v1 performSinglePressAction];
}

void __62__SBPPTOperation_operationToUnlockInterfaceFinishingUIUnlock___block_invoke_3(uint64_t a1)
{
  v2 = +[SBLockScreenManager sharedInstance];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SBPPTOperation_operationToUnlockInterfaceFinishingUIUnlock___block_invoke_4;
  v4[3] = &unk_2783AE4B8;
  v5 = *(a1 + 32);
  [v2 attemptUnlockWithPasscode:@"1111" finishUIUnlock:v3 completion:v4];
}

void __62__SBPPTOperation_operationToUnlockInterfaceFinishingUIUnlock___block_invoke_4(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SBPPTOperation_operationToUnlockInterfaceFinishingUIUnlock___block_invoke_5;
    block[3] = &unk_2783A8C18;
    v7 = *(a1 + 32);
    dispatch_after(v4, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 cancelAndFailTestWithReason:@"Couldn't unlock user interface"];
  }
}

+ (id)operationToLockInterface
{
  v3 = +[SBBacklightController sharedInstance];
  +[SBScreenWakeAnimationController backlightFadeDurationForSource:isWake:](SBScreenWakeAnimationController, "backlightFadeDurationForSource:isWake:", 1, [v3 screenIsOn]);
  v5 = v4;
  [SBScreenWakeAnimationController backlightFadeDurationForSource:1 isWake:1];
  v7 = v6;
  v8 = NSStringFromSelector(a2);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__SBPPTOperation_operationToLockInterface__block_invoke;
  v12[3] = &unk_2783B2E58;
  v13 = v3;
  v14 = v5;
  v15 = v7;
  v9 = v3;
  v10 = [SBPPTBlockOperation operationWithName:v8 block:v12];

  return v10;
}

void __42__SBPPTOperation_operationToLockInterface__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SBPPTOperation_operationToLockInterface__block_invoke_2;
  v5[3] = &unk_2783AB9E0;
  v8 = *(a1 + 40);
  v6 = v3;
  v7 = *(a1 + 32);
  v9 = *(a1 + 48);
  v4 = v3;
  SBPPTSynthesizeEventsForCommandString(@"b w", v5);
}

void __42__SBPPTOperation_operationToLockInterface__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SBPPTOperation_operationToLockInterface__block_invoke_3;
  block[3] = &unk_2783AB2A8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void __42__SBPPTOperation_operationToLockInterface__block_invoke_3(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SBPPTOperation_operationToLockInterface__block_invoke_4;
  v6[3] = &unk_2783A8C18;
  v7 = *(a1 + 32);
  v2 = MEMORY[0x223D6F7F0](v6);
  if ([*(a1 + 40) screenIsOn])
  {
    v2[2](v2);
  }

  else
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __42__SBPPTOperation_operationToLockInterface__block_invoke_5;
    v3[3] = &unk_2783B2E30;
    v5 = *(a1 + 48);
    v4 = v2;
    SBPPTSynthesizeEventsForCommandString(@"b w", v3);
  }
}

void __42__SBPPTOperation_operationToLockInterface__block_invoke_5(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D85CD0];

  dispatch_after(v2, v4, v3);
}

+ (id)operationToSetInterfaceOrientation:(int64_t)orientation
{
  v4 = NSStringFromSelector(a2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SBPPTOperation_operationToSetInterfaceOrientation___block_invoke;
  v7[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v7[4] = orientation;
  v5 = [SBPPTBlockOperation operationWithName:v4 block:v7];

  return v5;
}

void __53__SBPPTOperation_operationToSetInterfaceOrientation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277D76620];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SBPPTOperation_operationToSetInterfaceOrientation___block_invoke_2;
  v7[3] = &unk_2783A9398;
  v8 = v3;
  v6 = v3;
  [v4 rotateIfNeeded:v5 completion:v7];
}

void __53__SBPPTOperation_operationToSetInterfaceOrientation___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SBPPTOperation_operationToSetInterfaceOrientation___block_invoke_3;
  block[3] = &unk_2783A8C18;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

+ (id)operationToMonitorCoverSheetTransitionWithTestName:(id)name execute:(id)execute
{
  nameCopy = name;
  executeCopy = execute;
  v8 = NSStringFromSelector(a2);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SBPPTOperation_operationToMonitorCoverSheetTransitionWithTestName_execute___block_invoke;
  v13[3] = &unk_2783B2EA0;
  v14 = nameCopy;
  v15 = executeCopy;
  v9 = executeCopy;
  v10 = nameCopy;
  v11 = [SBPPTBlockOperation operationWithName:v8 block:v13];

  return v11;
}

void __77__SBPPTOperation_operationToMonitorCoverSheetTransitionWithTestName_execute___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBCoverSheetPresentationManager sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBPPTOperation_operationToMonitorCoverSheetTransitionWithTestName_execute___block_invoke_2;
  v9[3] = &unk_2783A8C18;
  v10 = *(a1 + 32);
  [v4 setPpt_transitionBeginsCallback:v9];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SBPPTOperation_operationToMonitorCoverSheetTransitionWithTestName_execute___block_invoke_4;
  v6[3] = &unk_2783A92D8;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 setPpt_transitionEndsCallback:v6];
  (*(*(a1 + 40) + 16))();
}

void __77__SBPPTOperation_operationToMonitorCoverSheetTransitionWithTestName_execute___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] startedTest:*(a1 + 32)];
  [*v2 startedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__SBPPTOperation_operationToMonitorCoverSheetTransitionWithTestName_execute___block_invoke_3;
  v4[3] = &unk_2783A8C18;
  v5 = *(a1 + 32);
  [v3 installCACommitCompletionBlock:v4];
}

uint64_t __77__SBPPTOperation_operationToMonitorCoverSheetTransitionWithTestName_execute___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 startedSubTest:@"animation" forTest:v4];
}

uint64_t __77__SBPPTOperation_operationToMonitorCoverSheetTransitionWithTestName_execute___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"animation" forTest:*(a1 + 32)];
  [*v2 finishedTest:*(a1 + 32)];
  v3 = *(a1 + 40);

  return [v3 finish];
}

+ (id)operationToPreventSystemIdle
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_31_1];

  return v3;
}

void __46__SBPPTOperation_operationToPreventSystemIdle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  SBWorkspaceSetPreventIdleSleepForReason(1, @"SBWorkspacePreventIdleSleepReasonPPT");
  [v2 finish];
}

+ (id)operationToResumeSystemIdle
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_33_2];

  return v3;
}

void __45__SBPPTOperation_operationToResumeSystemIdle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  SBWorkspaceSetPreventIdleSleepForReason(0, @"SBWorkspacePreventIdleSleepReasonPPT");
  [v2 finish];
}

+ (id)operationToWaitForTimeInterval:(double)interval
{
  v4 = NSStringFromSelector(a2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SBPPTOperation_operationToWaitForTimeInterval___block_invoke;
  v7[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  *&v7[4] = interval;
  v5 = [SBPPTBlockOperation operationWithName:v4 block:v7];

  return v5;
}

void __49__SBPPTOperation_operationToWaitForTimeInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, (*(a1 + 32) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SBPPTOperation_operationToWaitForTimeInterval___block_invoke_2;
  block[3] = &unk_2783A8C18;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

+ (id)operationToWaitForNotificationName:(id)name object:(id)object timeout:(double)timeout
{
  nameCopy = name;
  objectCopy = object;
  v10 = NSStringFromSelector(a2);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__SBPPTOperation_operationToWaitForNotificationName_object_timeout___block_invoke;
  v15[3] = &unk_2783B2F10;
  v16 = nameCopy;
  v17 = objectCopy;
  timeoutCopy = timeout;
  v11 = objectCopy;
  v12 = nameCopy;
  v13 = [SBPPTBlockOperation operationWithName:v10 block:v15];

  return v13;
}

void __68__SBPPTOperation_operationToWaitForNotificationName_object_timeout___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  v6 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SBPPTOperation_operationToWaitForNotificationName_object_timeout___block_invoke_2;
  v8[3] = &unk_2783B2EE8;
  v9 = v3;
  v10 = v5;
  v11 = *(a1 + 6);
  v7 = v3;
  SBPPTObserveNotification(v5, v4, v8, v6);
}

void __68__SBPPTOperation_operationToWaitForNotificationName_object_timeout___block_invoke_2(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (a2)
  {
    v3 = a1[4];

    [v3 finish];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Didn't observe %@ within %f seconds", a1[5], a1[6]];
    [v2 cancelAndFailTestWithReason:v4];
  }
}

+ (id)operationToTransitionToHomeScreen
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_40_1];

  return v3;
}

void __51__SBPPTOperation_operationToTransitionToHomeScreen__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SBWorkspace mainWorkspace];
  v4 = [v3 createRequestWithOptions:0];

  [v4 modifyApplicationContext:&__block_literal_global_44];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__SBPPTOperation_operationToTransitionToHomeScreen__block_invoke_3;
  v8[3] = &unk_2783A9398;
  v9 = v2;
  v5 = v2;
  v6 = [v4 addCompletionHandler:v8];
  v7 = +[SBWorkspace mainWorkspace];
  [v7 executeTransitionRequest:v4];
}

void __51__SBPPTOperation_operationToTransitionToHomeScreen__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v2 setActivatingEntity:v3];
}

void __51__SBPPTOperation_operationToTransitionToHomeScreen__block_invoke_3(uint64_t a1)
{
  v2 = +[SBMainWorkspace sharedInstance];
  v3 = [v2 eventQueue];
  v4 = MEMORY[0x277D0AB18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SBPPTOperation_operationToTransitionToHomeScreen__block_invoke_4;
  v6[3] = &unk_2783A8C18;
  v7 = *(a1 + 32);
  v5 = [v4 eventWithName:@"PPTHomeScreenTransition" handler:v6];
  [v3 executeOrAppendEvent:v5];
}

+ (id)operationToSaveHomeScreenState
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SBPPTOperation_operationToSaveHomeScreenState__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v4 = [SBPPTBlockOperation operationWithName:v3 block:v6];

  return v4;
}

void __48__SBPPTOperation_operationToSaveHomeScreenState__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _homeScreenController];
  v10 = 0;
  [v5 _ppt_pushHomeScreenStateWithError:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = [v6 description];

    [v4 cancelAndFailTestWithReason:v7];
    v4 = v7;
  }

  else
  {
    v8 = [*(a1 + 32) _homeScreenController];

    v9 = [v8 iconManager];
    [v9 relayout];

    [v4 finish];
  }
}

+ (id)operationToRestoreHomeScreenState
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SBPPTOperation_operationToRestoreHomeScreenState__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v4 = [SBPPTBlockOperation operationWithName:v3 block:v6];

  return v4;
}

void __51__SBPPTOperation_operationToRestoreHomeScreenState__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 _homeScreenController];
  [v3 _ppt_popHomeScreenState];

  [v4 finish];
}

+ (id)operationToCreateFolderWithName:(id)name containingIconsForBundleIdentifiers:(id)identifiers
{
  nameCopy = name;
  identifiersCopy = identifiers;
  v9 = NSStringFromSelector(a2);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__SBPPTOperation_operationToCreateFolderWithName_containingIconsForBundleIdentifiers___block_invoke;
  v14[3] = &unk_2783B2F10;
  v16 = nameCopy;
  selfCopy = self;
  v15 = identifiersCopy;
  v10 = nameCopy;
  v11 = identifiersCopy;
  v12 = [SBPPTBlockOperation operationWithName:v9 block:v14];

  return v12;
}

void __86__SBPPTOperation_operationToCreateFolderWithName_containingIconsForBundleIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = a2;
  v3 = [*(a1 + 48) _homeScreenController];
  v4 = [v3 iconManager];

  v5 = [v4 rootFolder];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v5 indexPathForNodeIdentifier:*(*(&v30 + 1) + 8 * i)];
        v13 = [v5 iconAtIndexPath:v12];

        if (v13 && [v13 isApplicationIcon])
        {
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v14 = [v4 iconModel];
  v15 = [v14 makeFolderWithDisplayName:*(a1 + 40)];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        [v5 removeIcon:v21 options:0];
        v22 = [v15 addIcon:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v23 = [objc_alloc(MEMORY[0x277D660E8]) initWithFolder:v15];
  v24 = [v5 addIcon:v23];
  [v4 layoutIconListsWithAnimationType:-1 forceRelayout:1];
  [v25 finish];
}

+ (id)operationToOpenFolderWithName:(id)name
{
  nameCopy = name;
  v6 = NSStringFromSelector(a2);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__SBPPTOperation_operationToOpenFolderWithName___block_invoke;
  v10[3] = &unk_2783B2F38;
  v11 = nameCopy;
  selfCopy = self;
  v7 = nameCopy;
  v8 = [SBPPTBlockOperation operationWithName:v6 block:v10];

  return v8;
}

void __48__SBPPTOperation_operationToOpenFolderWithName___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v3 = [*(a1 + 40) _homeScreenController];
  v4 = [v3 iconManager];
  v5 = [v4 rootFolder];
  v6 = [v5 allIcons];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 isFolderIcon])
        {
          v13 = [v12 displayName];
          v14 = [v13 isEqualToString:*(a1 + 32)];

          if (v14)
          {
            [v4 scrollToIconListContainingIcon:v12 animate:0];
            [v12 launchFromLocation:*MEMORY[0x277D666D0] context:0];
            v17 = dispatch_time(0, 1000000000);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __48__SBPPTOperation_operationToOpenFolderWithName___block_invoke_2;
            block[3] = &unk_2783A8C18;
            v16 = v18;
            v20 = v18;
            dispatch_after(v17, MEMORY[0x277D85CD0], block);

            v15 = v7;
            goto LABEL_12;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't find folder named %@", *(a1 + 32)];
  v16 = v18;
  [v18 cancelAndFailTestWithReason:v15];
LABEL_12:
}

+ (id)operationToPresentAppSwitcher
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SBPPTOperation_operationToPresentAppSwitcher__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v4 = [SBPPTBlockOperation operationWithName:v3 block:v6];

  return v4;
}

void __47__SBPPTOperation_operationToPresentAppSwitcher__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _mainDisplayWindowScene];
  v5 = [v4 switcherController];
  if ([v5 unlockedEnvironmentMode] == 2)
  {
    [v3 finish];
  }

  else
  {
    [v5 activateMainSwitcherWithSource:21 animated:1];
    v6 = +[SBMainWorkspace sharedInstance];
    v7 = [v6 eventQueue];
    v8 = MEMORY[0x277D0AB18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SBPPTOperation_operationToPresentAppSwitcher__block_invoke_2;
    v10[3] = &unk_2783A8C18;
    v11 = v3;
    v9 = [v8 eventWithName:@"PPTAppSwitcherPresentation" handler:v10];
    [v7 executeOrAppendEvent:v9];
  }
}

+ (id)operationToDismissAppSwitcherAndReturnToSource
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBPPTOperation_operationToDismissAppSwitcherAndReturnToSource__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v4 = [SBPPTBlockOperation operationWithName:v3 block:v6];

  return v4;
}

void __64__SBPPTOperation_operationToDismissAppSwitcherAndReturnToSource__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _mainDisplayWindowScene];
  v5 = [v4 switcherController];
  if ([v5 unlockedEnvironmentMode] == 2)
  {
    [v5 dismissMainSwitcherWithSource:21 animated:1];
    v6 = +[SBMainWorkspace sharedInstance];
    v7 = [v6 eventQueue];
    v8 = MEMORY[0x277D0AB18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__SBPPTOperation_operationToDismissAppSwitcherAndReturnToSource__block_invoke_2;
    v10[3] = &unk_2783A8C18;
    v11 = v3;
    v9 = [v8 eventWithName:@"PPTAppSwitcherDismissal" handler:v10];
    [v7 executeOrAppendEvent:v9];
  }

  else
  {
    [v3 finish];
  }
}

+ (id)operationToSaveAppSwitcherState
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_66];

  return v3;
}

void __49__SBPPTOperation_operationToSaveAppSwitcherState__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!SBPPTOperationAppSwitcherStateStack)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = SBPPTOperationAppSwitcherStateStack;
    SBPPTOperationAppSwitcherStateStack = v2;
  }

  v4 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v5 = [v4 _recentAppLayoutsController];
  v6 = [v5 _ppt_currentModel];

  if (v6)
  {
    [SBPPTOperationAppSwitcherStateStack addObject:v6];
    [v7 finish];
  }

  else
  {
    [v7 cancelAndFailTestWithReason:@"Couldn't save app switcher state (nothing to save)"];
  }
}

+ (id)operationToRestoreAppSwitcherState
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_72];

  return v3;
}

void __52__SBPPTOperation_operationToRestoreAppSwitcherState__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = [SBPPTOperationAppSwitcherStateStack lastObject];
  if (v2)
  {
    [SBPPTOperationAppSwitcherStateStack removeLastObject];
    v3 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    v4 = [v3 _recentAppLayoutsController];
    [v4 _ppt_setModel:v2];

    [v5 finish];
  }

  else
  {
    [v5 cancelAndFailTestWithReason:@"Couldn't restore app switcher state (nothing to restore)"];
  }
}

+ (id)operationToLoadPPTAppSwitcherState
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_77];

  return v3;
}

void __52__SBPPTOperation_operationToLoadPPTAppSwitcherState__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v3 = [v2 _recentAppLayoutsController];
  v4 = [v3 _ppt_loadStashedModel];

  [v5 finish];
}

+ (id)operationToPresentCoverSheet
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_79];

  return v3;
}

void __46__SBPPTOperation_operationToPresentCoverSheet__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SBCoverSheetPresentationManager sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SBPPTOperation_operationToPresentCoverSheet__block_invoke_2;
  v5[3] = &unk_2783A8C18;
  v6 = v2;
  v4 = v2;
  [v3 setCoverSheetPresented:1 animated:1 withCompletion:v5];
}

+ (id)operationToDismissCoverSheet
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_81];

  return v3;
}

void __46__SBPPTOperation_operationToDismissCoverSheet__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SBCoverSheetPresentationManager sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SBPPTOperation_operationToDismissCoverSheet__block_invoke_2;
  v5[3] = &unk_2783A8C18;
  v6 = v2;
  v4 = v2;
  [v3 setCoverSheetPresented:0 animated:1 withCompletion:v5];
}

+ (id)operationToPresentFloatingDock
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SBPPTOperation_operationToPresentFloatingDock__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v4 = [SBPPTBlockOperation operationWithName:v3 block:v6];

  return v4;
}

void __48__SBPPTOperation_operationToPresentFloatingDock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _mainDisplayWindowScene];
  v5 = [v4 floatingDockController];
  if (v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SBPPTOperation_operationToPresentFloatingDock__block_invoke_2;
    v6[3] = &unk_2783A9398;
    v7 = v3;
    [v5 presentFloatingDockIfDismissedAnimated:0 completionHandler:v6];
  }

  else
  {
    [v3 cancelAndFailTestWithReason:@"Floating dock not supported"];
  }
}

void __48__SBPPTOperation_operationToPresentFloatingDock__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 48000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBPPTOperation_operationToPresentFloatingDock__block_invoke_3;
  block[3] = &unk_2783A8C18;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

+ (id)operationToDismissFloatingDock
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SBPPTOperation_operationToDismissFloatingDock__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v4 = [SBPPTBlockOperation operationWithName:v3 block:v6];

  return v4;
}

void __48__SBPPTOperation_operationToDismissFloatingDock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _mainDisplayWindowScene];
  v5 = [v4 floatingDockController];
  if (v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SBPPTOperation_operationToDismissFloatingDock__block_invoke_2;
    v6[3] = &unk_2783A9398;
    v7 = v3;
    [v5 dismissFloatingDockIfPresentedAnimated:0 completionHandler:v6];
  }

  else
  {
    [v3 cancelAndFailTestWithReason:@"Floating dock not supported"];
  }
}

void __48__SBPPTOperation_operationToDismissFloatingDock__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 48000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBPPTOperation_operationToDismissFloatingDock__block_invoke_3;
  block[3] = &unk_2783A8C18;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

+ (id)operationToPresentBannerNotification
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_86_2];

  return v3;
}

void __54__SBPPTOperation_operationToPresentBannerNotification__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SBNotificationBannerDestination _test_notificationRequestForBannerWithIcon];
  v4 = [SBApp notificationDispatcher];
  v5 = [v4 bannerDestination];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SBPPTOperation_operationToPresentBannerNotification__block_invoke_2;
  v7[3] = &unk_2783A8C18;
  v8 = v2;
  v6 = v2;
  [v5 _test_postNotificationRequest:v3 completion:v7];
}

+ (id)operationToDismissBannerNotification
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_89_0];

  return v3;
}

void __54__SBPPTOperation_operationToDismissBannerNotification__block_invoke(uint64_t a1, void *a2)
{
  v2 = SBApp;
  v3 = a2;
  v4 = [v2 notificationDispatcher];
  v5 = [v4 bannerDestination];

  [v5 _test_dismissNotificationRequest:0];
  [v3 finish];
}

+ (id)operationToPublishExampleNotificationsWithNotificationCount:(unint64_t)count threadCount:(unint64_t)threadCount
{
  v6 = NSStringFromSelector(a2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__SBPPTOperation_operationToPublishExampleNotificationsWithNotificationCount_threadCount___block_invoke;
  v9[3] = &__block_descriptor_48_e29_v16__0__SBPPTBlockOperation_8l;
  v9[4] = count;
  v9[5] = threadCount;
  v7 = [SBPPTBlockOperation operationWithName:v6 block:v9];

  [v7 setTimeoutInterval:30.0];

  return v7;
}

void __90__SBPPTOperation_operationToPublishExampleNotificationsWithNotificationCount_threadCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBExampleUserNotificationCenter sharedInstance];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__SBPPTOperation_operationToPublishExampleNotificationsWithNotificationCount_threadCount___block_invoke_2;
  v8[3] = &unk_2783A8C18;
  v9 = v3;
  v7 = v3;
  [v4 publish:v6 numberOfUniqueThreads:v5 completion:v8];
}

void __90__SBPPTOperation_operationToPublishExampleNotificationsWithNotificationCount_threadCount___block_invoke_2(uint64_t a1)
{
  v2 = +[SBCoverSheetPresentationManager sharedInstance];
  v3 = [v2 coverSheetViewController];

  v4 = [v3 mainPageContentViewController];
  v5 = [v4 combinedListViewController];

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__37;
  v12[4] = __Block_byref_object_dispose__37;
  v13 = 0;
  v6 = dispatch_queue_create("com.apple.springboard.ppt.ExampleUserNotificationCenter", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__SBPPTOperation_operationToPublishExampleNotificationsWithNotificationCount_threadCount___block_invoke_92;
  block[3] = &unk_2783AB258;
  v11 = v12;
  v9 = v5;
  v10 = *(a1 + 32);
  v7 = v5;
  dispatch_async(v6, block);

  _Block_object_dispose(v12, 8);
}

void __90__SBPPTOperation_operationToPublishExampleNotificationsWithNotificationCount_threadCount___block_invoke_92(uint64_t a1)
{
  v2 = +[SBExampleUserNotificationCenter sharedInstance];
  v3 = [v2 latestNotificationRequestIdentifier];
  v4 = [v2 sectionIdentifier];
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = MEMORY[0x277D85CD0];
    do
    {
      usleep(0x186A0u);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __90__SBPPTOperation_operationToPublishExampleNotificationsWithNotificationCount_threadCount___block_invoke_2_93;
      block[3] = &unk_2783B24A0;
      v12 = *(a1 + 48);
      v9 = *(a1 + 32);
      v10 = v3;
      v11 = v4;
      dispatch_async(v5, block);
    }

    while (!*(*(*(a1 + 48) + 8) + 40));
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__SBPPTOperation_operationToPublishExampleNotificationsWithNotificationCount_threadCount___block_invoke_3;
  v6[3] = &unk_2783A8C18;
  v7 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __90__SBPPTOperation_operationToPublishExampleNotificationsWithNotificationCount_threadCount___block_invoke_2_93(uint64_t a1)
{
  v2 = [*(a1 + 32) _testingNotificationRequestWithIdentifier:*(a1 + 40) sectionIdentifier:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)operationToRemoveExampleNotifications
{
  v2 = NSStringFromSelector(a2);
  v3 = [SBPPTBlockOperation operationWithName:v2 block:&__block_literal_global_96];

  return v3;
}

void __55__SBPPTOperation_operationToRemoveExampleNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[SBExampleUserNotificationCenter sharedInstance];
  [v2 removeAllNotifications];

  [v3 finish];
}

+ (id)operationToActivateApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = NSStringFromSelector(a2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SBPPTOperation_operationToActivateApplicationWithBundleIdentifier___block_invoke;
  v9[3] = &unk_2783B2FA8;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [SBPPTBlockOperation operationWithName:v5 block:v9];

  return v7;
}

void __69__SBPPTOperation_operationToActivateApplicationWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:*(a1 + 32)];

  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__SBPPTOperation_operationToActivateApplicationWithBundleIdentifier___block_invoke_2;
    v7[3] = &unk_2783B2F80;
    v8 = v3;
    v9 = *(a1 + 32);
    SBWorkspaceActivateApplicationWithActionsAndResult(v5, 0, v7);
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't find application with bundle identifier: %@", *(a1 + 32)];
    [v3 cancelAndFailTestWithReason:v6];
  }
}

void __69__SBPPTOperation_operationToActivateApplicationWithBundleIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't activate application with bundle identifier: %@", *(a1 + 40)];
    [v3 cancelAndFailTestWithReason:v5];
  }

  else
  {
    v4 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__SBPPTOperation_operationToActivateApplicationWithBundleIdentifier___block_invoke_3;
    block[3] = &unk_2783A92D8;
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    dispatch_after(v4, MEMORY[0x277D85CD0], block);
  }
}

void __69__SBPPTOperation_operationToActivateApplicationWithBundleIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PPTApplicationActivation (%@)", *(a1 + 32)];
  v3 = +[SBMainWorkspace sharedInstance];
  v4 = [v3 eventQueue];
  v5 = MEMORY[0x277D0AB18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SBPPTOperation_operationToActivateApplicationWithBundleIdentifier___block_invoke_4;
  v7[3] = &unk_2783A8C18;
  v8 = *(a1 + 40);
  v6 = [v5 eventWithName:v2 handler:v7];
  [v4 executeOrAppendEvent:v6];
}

+ (id)operationToTerminateApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = NSStringFromSelector(a2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBPPTOperation_operationToTerminateApplicationWithBundleIdentifier___block_invoke;
  v9[3] = &unk_2783B2FA8;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [SBPPTBlockOperation operationWithName:v5 block:v9];

  return v7;
}

void __70__SBPPTOperation_operationToTerminateApplicationWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:*(a1 + 32)];

  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__SBPPTOperation_operationToTerminateApplicationWithBundleIdentifier___block_invoke_2;
    v7[3] = &unk_2783A8BF0;
    v8 = v3;
    v9 = *(a1 + 32);
    SBWorkspaceTerminateApplication(v5, 7, 0, @"Terminating for PPT", v7);
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't find application with bundle identifier: %@", *(a1 + 32)];
    [v3 cancelAndFailTestWithReason:v6];
  }
}

void __70__SBPPTOperation_operationToTerminateApplicationWithBundleIdentifier___block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finish];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't terminate application with bundle identifier: %@", *(a1 + 40)];
    [v2 cancelAndFailTestWithReason:v4];
  }
}

+ (id)operationToActivateNullOffscreenApp
{
  v3 = [self operationToActivateApplicationWithBundleIdentifier:@"com.apple.perf.NullOffscreen"];
  v4 = NSStringFromSelector(a2);
  [v3 setOperationName:v4];

  return v3;
}

+ (id)operationToTerminateNullOffscreenApp
{
  v3 = [self operationToTerminateApplicationWithBundleIdentifier:@"com.apple.perf.NullOffscreen"];
  v4 = NSStringFromSelector(a2);
  [v3 setOperationName:v4];

  return v3;
}

+ (id)operationToSetApplicationWithBundleIdentifier:(id)identifier blockedForScreenTime:(BOOL)time
{
  identifierCopy = identifier;
  v7 = NSStringFromSelector(a2);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__SBPPTOperation_operationToSetApplicationWithBundleIdentifier_blockedForScreenTime___block_invoke;
  v11[3] = &unk_2783B2FD0;
  v12 = identifierCopy;
  timeCopy = time;
  v8 = identifierCopy;
  v9 = [SBPPTBlockOperation operationWithName:v7 block:v11];

  return v9;
}

void __85__SBPPTOperation_operationToSetApplicationWithBundleIdentifier_blockedForScreenTime___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [SBScreenTimeTestRecipe _setApplicationBundleIdentifiers:v5 blockedForScreenTimeExpiration:*(a1 + 40), v6, v7];

  [v4 finish];
}

+ (id)operationToSetAllApplicationsBlockedForScreenTime:(BOOL)time
{
  v4 = NSStringFromSelector(a2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__SBPPTOperation_operationToSetAllApplicationsBlockedForScreenTime___block_invoke;
  v7[3] = &__block_descriptor_33_e29_v16__0__SBPPTBlockOperation_8l;
  timeCopy = time;
  v5 = [SBPPTBlockOperation operationWithName:v4 block:v7];

  return v5;
}

void __68__SBPPTOperation_operationToSetAllApplicationsBlockedForScreenTime___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[SBApplicationController sharedInstance];
  v4 = [v3 allBundleIdentifiers];
  [SBScreenTimeTestRecipe _setApplicationBundleIdentifiers:v4 blockedForScreenTimeExpiration:*(a1 + 32)];

  [v5 finish];
}

+ (id)operationToSynthesizeEventsForEventActions:(id)actions
{
  actionsCopy = actions;
  v5 = NSStringFromSelector(a2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SBPPTOperation_operationToSynthesizeEventsForEventActions___block_invoke;
  v9[3] = &unk_2783B2FF8;
  v10 = actionsCopy;
  v6 = actionsCopy;
  v7 = [SBPPTBlockOperation operationWithName:v5 block:v9];

  return v7;
}

void __61__SBPPTOperation_operationToSynthesizeEventsForEventActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBPPTOperation_operationToSynthesizeEventsForEventActions___block_invoke_2;
  v6[3] = &unk_2783A8C18;
  v7 = v3;
  v5 = v3;
  SBPPTSynthesizeEventsForEventActions(v4, v6);
}

+ (id)operationToSynthesizeEventsForCommandString:(id)string
{
  stringCopy = string;
  v5 = NSStringFromSelector(a2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SBPPTOperation_operationToSynthesizeEventsForCommandString___block_invoke;
  v9[3] = &unk_2783B2FA8;
  v10 = stringCopy;
  v6 = stringCopy;
  v7 = [SBPPTBlockOperation operationWithName:v5 block:v9];

  return v7;
}

void __62__SBPPTOperation_operationToSynthesizeEventsForCommandString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SBPPTOperation_operationToSynthesizeEventsForCommandString___block_invoke_2;
  v6[3] = &unk_2783A8C18;
  v7 = v3;
  v5 = v3;
  SBPPTSynthesizeEventsForCommandString(v4, v6);
}

+ (id)operationToSynthesizeEventsForEventStream:(id)stream
{
  streamCopy = stream;
  v5 = NSStringFromSelector(a2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SBPPTOperation_operationToSynthesizeEventsForEventStream___block_invoke;
  v9[3] = &unk_2783B2FA8;
  v10 = streamCopy;
  v6 = streamCopy;
  v7 = [SBPPTBlockOperation operationWithName:v5 block:v9];

  return v7;
}

void __60__SBPPTOperation_operationToSynthesizeEventsForEventStream___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SBPPTOperation_operationToSynthesizeEventsForEventStream___block_invoke_2;
  v6[3] = &unk_2783A8C18;
  v7 = v3;
  v5 = v3;
  SBPPTSynthesizeEventsForEventStream(v4, v6);
}

+ (id)operationToSwipeUpInMiddleOfInterface
{
  v4 = SBPPTEventActionsToSwipeUpInMiddleOfInterface();
  v5 = [self operationToSynthesizeEventsForEventActions:v4];

  v6 = NSStringFromSelector(a2);
  [v5 setName:v6];

  return v5;
}

+ (id)operationToSwipeDownInMiddleOfInterface
{
  v4 = SBPPTEventActionsToSwipeDownInMiddleOfInterface();
  v5 = [self operationToSynthesizeEventsForEventActions:v4];

  v6 = NSStringFromSelector(a2);
  [v5 setName:v6];

  return v5;
}

+ (id)operationToSwipeLeftInMiddleOfInterface
{
  v4 = SBPPTEventActionsToSwipeLeftInMiddleOfInterface();
  v5 = [self operationToSynthesizeEventsForEventActions:v4];

  v6 = NSStringFromSelector(a2);
  [v5 setName:v6];

  return v5;
}

+ (id)operationToSwipeRightInMiddleOfInterface
{
  v4 = SBPPTEventActionsToSwipeRightInMiddleOfInterface();
  v5 = [self operationToSynthesizeEventsForEventActions:v4];

  v6 = NSStringFromSelector(a2);
  [v5 setName:v6];

  return v5;
}

+ (id)operationToStartTest:(id)test
{
  testCopy = test;
  v5 = [SBPPTBlockOperation operationWithBlock:&__block_literal_global_120_0];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  testCopy = [v6 stringWithFormat:@"%@%@", v7, testCopy];
  [v5 setOperationName:testCopy];

  v9 = [v5 markStartedTest:testCopy];

  return v5;
}

+ (id)operationToFinishTest:(id)test
{
  testCopy = test;
  v5 = [SBPPTBlockOperation operationWithBlock:&__block_literal_global_125];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  testCopy = [v6 stringWithFormat:@"%@%@", v7, testCopy];
  [v5 setOperationName:testCopy];

  v9 = [v5 markFinishedTest:testCopy];

  return v5;
}

- (SBPPTOperation)init
{
  v9.receiver = self;
  v9.super_class = SBPPTOperation;
  v2 = [(SBPPTOperation *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"<%@: %p>", v5, v2];
    operationName = v2->_operationName;
    v2->_operationName = v6;
  }

  return v2;
}

+ (id)_mainDisplayWindowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];
  v4 = [connectedWindowScenes bs_firstObjectPassingTest:&__block_literal_global_131];

  return v4;
}

+ (id)_homeScreenController
{
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];

  return homeScreenController;
}

+ (id)operationToUpdateHomeScreenPagesForActiveFocusModeForTestWithName:(id)name
{
  nameCopy = name;
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  iconController = [embeddedDisplayWindowScene iconController];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __105__SBPPTOperation_FocusModePPTSupport__operationToUpdateHomeScreenPagesForActiveFocusModeForTestWithName___block_invoke;
  v16 = &unk_2783BC300;
  v17 = nameCopy;
  v18 = iconController;
  v8 = iconController;
  v9 = nameCopy;
  v10 = [SBPPTBlockOperation operationWithBlock:&v13];
  v11 = NSStringFromSelector(a2);
  [v10 setName:{v11, v13, v14, v15, v16}];

  return v10;
}

void __105__SBPPTOperation_FocusModePPTSupport__operationToUpdateHomeScreenPagesForActiveFocusModeForTestWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v6 markStartSubTest:@"UpdateHomeScreenPagesForActiveFocusMode" forTestName:v3];
  [*(a1 + 40) updateRootFolderWithCurrentDoNotDisturbState];
  v5 = [v6 markFinishedSubTest:@"UpdateHomeScreenPagesForActiveFocusMode" forTestName:*(a1 + 32)];
  [v6 finish];
}

+ (id)operationToPresentPageManagementForTestWithName:(id)name
{
  nameCopy = name;
  embeddedWindowScene = [self embeddedWindowScene];
  homeScreenController = [embeddedWindowScene homeScreenController];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __92__SBPPTOperation_PageManagementPPTSupport__operationToPresentPageManagementForTestWithName___block_invoke;
  v17 = &unk_2783BC300;
  v18 = homeScreenController;
  v19 = nameCopy;
  v8 = nameCopy;
  v9 = homeScreenController;
  v10 = [SBPPTBlockOperation operationWithBlock:&v14];
  v11 = NSStringFromSelector(a2);
  [v10 setName:{v11, v14, v15, v16, v17}];

  v12 = [v10 markStartSubTest:@"PresentPageManagement" forTestName:v8];

  return v10;
}

void __92__SBPPTOperation_PageManagementPPTSupport__operationToPresentPageManagementForTestWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__SBPPTOperation_PageManagementPPTSupport__operationToPresentPageManagementForTestWithName___block_invoke_2;
  v6[3] = &unk_2783A92D8;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _presentPageManagement:v6];
}

uint64_t __92__SBPPTOperation_PageManagementPPTSupport__operationToPresentPageManagementForTestWithName___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) markFinishedSubTest:@"PresentPageManagement" forTestName:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 finish];
}

+ (id)operationToDismissPageManagementForTestWithName:(id)name
{
  nameCopy = name;
  embeddedWindowScene = [self embeddedWindowScene];
  homeScreenController = [embeddedWindowScene homeScreenController];

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __92__SBPPTOperation_PageManagementPPTSupport__operationToDismissPageManagementForTestWithName___block_invoke;
  v17 = &unk_2783BC300;
  v18 = homeScreenController;
  v19 = nameCopy;
  v8 = nameCopy;
  v9 = homeScreenController;
  v10 = [SBPPTBlockOperation operationWithBlock:&v14];
  v11 = NSStringFromSelector(a2);
  [v10 setName:{v11, v14, v15, v16, v17}];

  v12 = [v10 markStartSubTest:@"DismissPageManagement" forTestName:v8];

  return v10;
}

void __92__SBPPTOperation_PageManagementPPTSupport__operationToDismissPageManagementForTestWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__SBPPTOperation_PageManagementPPTSupport__operationToDismissPageManagementForTestWithName___block_invoke_2;
  v6[3] = &unk_2783A92D8;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _dismissPageManagementIfPresented:v6];
}

uint64_t __92__SBPPTOperation_PageManagementPPTSupport__operationToDismissPageManagementForTestWithName___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) markFinishedSubTest:@"DismissPageManagement" forTestName:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 finish];
}

+ (id)presentAppLibrary:(BOOL)library forTestWithName:(id)name
{
  nameCopy = name;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__SBPPTOperation_SBAppLibrarySupport__presentAppLibrary_forTestWithName___block_invoke;
  v13[3] = &__block_descriptor_41_e29_v16__0__SBPPTBlockOperation_8l;
  v13[4] = self;
  libraryCopy = library;
  v8 = [SBPPTBlockOperation operationWithBlock:v13];
  v9 = NSStringFromSelector(a2);
  [v8 setOperationName:v9];

  [v8 setTimeoutInterval:30.0];
  v10 = [v8 markStartSubTest:@"AppLibraryPresent" forTestName:nameCopy];
  v11 = [v8 markFinishedSubTest:@"AppLibraryPresent" forTestName:nameCopy];

  return v8;
}

void __73__SBPPTOperation_SBAppLibrarySupport__presentAppLibrary_forTestWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _mainDisplayWindowScene];
  v5 = [v4 homeScreenController];
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBPPTOperation_SBAppLibrarySupport__presentAppLibrary_forTestWithName___block_invoke_2;
  v9[3] = &unk_2783B0F28;
  v7 = v3;
  v10 = v7;
  if ([v6 _isLibraryPresentationAllowedWithCompletion:v9])
  {
    if ([v5 isModalAppLibrarySupported])
    {
      v8 = [v4 modalLibraryController];
      [v8 presentLibraryAnimated:*(a1 + 40) completion:0];
    }

    else
    {
      [v5 presentLibraryFromOverlayControllerAnimated:*(a1 + 40) completion:0];
    }
  }
}

void __73__SBPPTOperation_SBAppLibrarySupport__presentAppLibrary_forTestWithName___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [a2 description];
    [v2 cancelAndFailTestWithReason:v3];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __73__SBPPTOperation_SBAppLibrarySupport__presentAppLibrary_forTestWithName___block_invoke_3;
    v4[3] = &unk_2783A8C18;
    v5 = *(a1 + 32);
    SBPPTPerformAfterCommitWithDelay(v4, 1.0);
  }
}

+ (id)dismissAppLibraryPad:(BOOL)pad forTestWithName:(id)name
{
  nameCopy = name;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryPad_forTestWithName___block_invoke;
  v13[3] = &__block_descriptor_41_e29_v16__0__SBPPTBlockOperation_8l;
  v13[4] = self;
  padCopy = pad;
  v8 = [SBPPTBlockOperation operationWithBlock:v13];
  v9 = NSStringFromSelector(a2);
  [v8 setOperationName:v9];

  [v8 setTimeoutInterval:30.0];
  v10 = [v8 markStartSubTest:@"AppLibraryPadDismiss" forTestName:nameCopy];
  v11 = [v8 markFinishedSubTest:@"AppLibraryPadDismiss" forTestName:nameCopy];

  return v8;
}

void __76__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryPad_forTestWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _mainDisplayWindowScene];
  v5 = [v4 homeScreenController];
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryPad_forTestWithName___block_invoke_2;
  v10[3] = &unk_2783B0F28;
  v7 = v3;
  v11 = v7;
  if ([v6 _isLibraryDismissalAllowedWithCompletion:v10])
  {
    if ([v5 isModalAppLibrarySupported])
    {
      v8 = [*(a1 + 32) _mainDisplayWindowScene];
      v9 = [v8 modalLibraryController];

      [v9 dismissLibraryAnimated:*(a1 + 40) completion:0];
    }

    else
    {
      [v5 dismissLibraryFromOverlayControllerAnimated:*(a1 + 40) completion:0];
    }
  }
}

void __76__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryPad_forTestWithName___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [a2 description];
    [v2 cancelAndFailTestWithReason:v3];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __76__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryPad_forTestWithName___block_invoke_3;
    v4[3] = &unk_2783A8C18;
    v5 = *(a1 + 32);
    SBPPTPerformAfterCommitWithDelay(v4, 1.0);
  }
}

+ (BOOL)_isLibraryPresentationAllowedWithCompletion:(id)completion
{
  completionCopy = completion;
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  if (([homeScreenController isAppLibraryAllowed] & 1) == 0)
  {
    if (completionCopy)
    {
LABEL_6:
      v9 = SBHLibraryPresentationErrorForCode();
      completionCopy[2](completionCopy, v9);
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v7 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v7 isUILocked];

  if (isUILocked)
  {
    if (completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  layoutStateProvider = [_mainDisplayWindowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];
  if ([layoutState unlockedEnvironmentMode] == 1)
  {
  }

  else
  {
    isModalAppLibrarySupported = [homeScreenController isModalAppLibrarySupported];

    if ((isModalAppLibrarySupported & 1) == 0)
    {
      if (!completionCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v10 = 1;
LABEL_8:

  return v10;
}

+ (BOOL)_isLibraryDismissalAllowedWithCompletion:(id)completion
{
  completionCopy = completion;
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  if (([homeScreenController isAppLibraryAllowed] & 1) == 0)
  {
    if (!completionCopy)
    {
      goto LABEL_12;
    }

LABEL_11:
    v12 = SBHLibraryPresentationErrorForCode();
    completionCopy[2](completionCopy, v12);

    goto LABEL_12;
  }

  if ([homeScreenController isModalAppLibrarySupported])
  {
    modalLibraryController = [_mainDisplayWindowScene modalLibraryController];
    isPresentingLibrary = [modalLibraryController isPresentingLibrary];
  }

  else
  {
    modalLibraryController = [homeScreenController iconManager];
    isPresentingLibrary = [modalLibraryController isMainDisplayLibraryViewVisible];
  }

  v9 = isPresentingLibrary;

  if ((v9 & 1) == 0)
  {
    if (!completionCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  layoutStateProvider = [_mainDisplayWindowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];
  if ([layoutState unlockedEnvironmentMode] != 1)
  {
    isModalAppLibrarySupported = [homeScreenController isModalAppLibrarySupported];

    if (isModalAppLibrarySupported)
    {
      goto LABEL_15;
    }

    if (completionCopy)
    {
      goto LABEL_11;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_15:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v13 = 1;
LABEL_13:

  return v13;
}

+ (id)resetAndPrepareforNextTest
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SBPPTOperation_SBAppLibrarySupport__resetAndPrepareforNextTest__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v3 = [SBPPTBlockOperation operationWithBlock:v6];
  v4 = NSStringFromSelector(a2);
  [v3 setOperationName:v4];

  [v3 setTimeoutInterval:30.0];

  return v3;
}

void __65__SBPPTOperation_SBAppLibrarySupport__resetAndPrepareforNextTest__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _mainDisplayWindowScene];
  v5 = [v4 homeScreenController];
  v6 = [v4 iconController];
  v7 = [v5 iconManager];
  v8 = [v7 rootFolderController];

  v9 = [*(a1 + 32) _libraryViewController];
  [v9 dismissSearch];
  [v9 _dismissExpandedPods:0 completion:0];
  v10 = [v9 podFolderViewController];
  v11 = [v10 contentScrollView];

  [v11 _scrollToTopIfPossible:0];
  v12 = *(a1 + 32);
  v13 = [v8 firstIconPageIndex];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SBPPTOperation_SBAppLibrarySupport__resetAndPrepareforNextTest__block_invoke_2;
  v16[3] = &unk_2783A8BF0;
  v17 = v6;
  v18 = v3;
  v14 = v3;
  v15 = v6;
  [v12 _dismissOverlaysAndResetHomeScreenToPage:v13 animated:0 operation:0 completion:v16];
}

void __65__SBPPTOperation_SBAppLibrarySupport__resetAndPrepareforNextTest__block_invoke_2(uint64_t a1, char a2)
{
  [*(a1 + 32) resetCategories];
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__SBPPTOperation_SBAppLibrarySupport__resetAndPrepareforNextTest__block_invoke_3;
    v5[3] = &unk_2783A8C18;
    v6 = *(a1 + 40);
    SBPPTPerformAfterCommitWithDelay(v5, 1.0);
  }

  else
  {
    v4 = *(a1 + 40);

    [v4 cancelAndFailTestWithReason:@"unable to reset home screen"];
  }
}

+ (id)presentAppLibrarySearchByTappingSearchField
{
  _libraryViewController = [self _libraryViewController];
  containerViewController = [_libraryViewController containerViewController];
  searchBar = [containerViewController searchBar];

  v7 = +[SBApplicationTestingManager sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__SBPPTOperation_SBAppLibrarySupport__presentAppLibrarySearchByTappingSearchField__block_invoke;
  v13[3] = &unk_2783B2F10;
  v14 = v7;
  v15 = searchBar;
  selfCopy = self;
  v8 = searchBar;
  v9 = v7;
  v10 = [SBPPTBlockOperation operationWithBlock:v13];
  v11 = NSStringFromSelector(a2);
  [v10 setOperationName:v11];

  return v10;
}

void __82__SBPPTOperation_SBAppLibrarySupport__presentAppLibrarySearchByTappingSearchField__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D665D8];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__SBPPTOperation_SBAppLibrarySupport__presentAppLibrarySearchByTappingSearchField__block_invoke_2;
  v13[3] = &unk_2783AC180;
  v14 = v3;
  v7 = v3;
  [v4 installNotificationObserverForNotificationName:v5 notificationCenter:v6 forOneNotification:1 usingBlock:v13];

  v8 = [*(a1 + 40) searchTextField];
  [v8 center];
  v10 = v9;
  v12 = v11;

  [*(a1 + 48) _appLibrarySupport_performTapAtPoint:*(a1 + 40) fromView:&__block_literal_global_95_0 withCompletion:{v10, v12}];
}

void __82__SBPPTOperation_SBAppLibrarySupport__presentAppLibrarySearchByTappingSearchField__block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __82__SBPPTOperation_SBAppLibrarySupport__presentAppLibrarySearchByTappingSearchField__block_invoke_3;
  v1[3] = &unk_2783A8C18;
  v2 = *(a1 + 32);
  SBPPTPerformAfterCommitWithDelay(v1, 1.0);
}

+ (id)resetAppLibraryToTop
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SBPPTOperation_SBAppLibrarySupport__resetAppLibraryToTop__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v3 = [SBPPTBlockOperation operationWithBlock:v6];
  v4 = NSStringFromSelector(a2);
  [v3 setOperationName:v4];

  return v3;
}

void __59__SBPPTOperation_SBAppLibrarySupport__resetAppLibraryToTop__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _libraryViewController];
  v5 = [v4 podFolderViewController];
  v6 = [v5 contentScrollView];

  [v6 _scrollToTopIfPossible:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SBPPTOperation_SBAppLibrarySupport__resetAppLibraryToTop__block_invoke_2;
  v8[3] = &unk_2783A8C18;
  v9 = v3;
  v7 = v3;
  SBPPTPerformAfterCommitWithDelay(v8, 0.0);
}

+ (id)dismissAppLibrarySearch
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SBPPTOperation_SBAppLibrarySupport__dismissAppLibrarySearch__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v3 = [SBPPTBlockOperation operationWithBlock:v6];
  v4 = NSStringFromSelector(a2);
  [v3 setOperationName:v4];

  [v3 setTimeoutInterval:30.0];

  return v3;
}

void __62__SBPPTOperation_SBAppLibrarySupport__dismissAppLibrarySearch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBApplicationTestingManager sharedInstance];
  v5 = [MEMORY[0x277CCAB98] sbh_defaultPPTNotificationCenter];
  v6 = [v4 currentTestName];
  v7 = *MEMORY[0x277D665E0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__SBPPTOperation_SBAppLibrarySupport__dismissAppLibrarySearch__block_invoke_2;
  v19[3] = &unk_2783AC180;
  v8 = v6;
  v20 = v8;
  [v4 installNotificationObserverForNotificationName:v7 notificationCenter:v5 forOneNotification:1 usingBlock:v19];
  v9 = *MEMORY[0x277D665D0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__SBPPTOperation_SBAppLibrarySupport__dismissAppLibrarySearch__block_invoke_3;
  v16[3] = &unk_2783B7F38;
  v17 = v8;
  v18 = v3;
  v10 = v3;
  v11 = v8;
  [v4 installNotificationObserverForNotificationName:v9 notificationCenter:v5 forOneNotification:1 usingBlock:v16];
  v12 = [*(a1 + 32) _libraryViewController];
  v13 = [v12 containerViewController];
  v14 = [v13 searchBar];

  v15 = [v14 cancelButton];
  [v15 sendActionsForControlEvents:64];
}

void __62__SBPPTOperation_SBAppLibrarySupport__dismissAppLibrarySearch__block_invoke_3(uint64_t a1)
{
  [*MEMORY[0x277D76620] finishedSubTest:@"DeweyPullToLibrarySearchDismiss" forTest:*(a1 + 32)];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __62__SBPPTOperation_SBAppLibrarySupport__dismissAppLibrarySearch__block_invoke_4;
  v2[3] = &unk_2783A8C18;
  v3 = *(a1 + 40);
  SBPPTPerformAfterCommitWithDelay(v2, 1.0);
}

+ (id)pullToAppLibrarySearch
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v3 = [SBPPTBlockOperation operationWithBlock:v6];
  v4 = NSStringFromSelector(a2);
  [v3 setOperationName:v4];

  return v3;
}

void __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBApplicationTestingManager sharedInstance];
  v5 = [MEMORY[0x277CCAB98] sbh_defaultPPTNotificationCenter];
  v6 = [v4 currentTestName];
  v7 = [*(a1 + 32) _libraryViewController];
  v8 = [v7 containerViewController];
  v9 = [v8 searchBar];

  v10 = [v7 contentScrollView];
  v11 = [v10 window];

  [v11 center];
  v13 = v12;
  v15 = v14;
  [v11 center];
  v17 = v16;
  v19 = v18;
  [v11 size];
  v21 = v19 + v20 * 0.75;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke_2;
  v34[3] = &unk_2783A92D8;
  v22 = v3;
  v35 = v22;
  v36 = v9;
  v23 = v9;
  [SBPPTOperation _appLibrarySupport_performDragFromPoint:0 andDragTo:v34 duration:v13 fromView:v15 withCompletion:v17, v21, 1.0];
  v24 = *MEMORY[0x277D665E8];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke_4;
  v32[3] = &unk_2783AC180;
  v25 = v6;
  v33 = v25;
  [v4 installNotificationObserverForNotificationName:v24 notificationCenter:v5 forOneNotification:1 usingBlock:v32];
  v26 = *MEMORY[0x277D665D8];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke_5;
  v29[3] = &unk_2783B7F38;
  v30 = v25;
  v31 = v22;
  v27 = v22;
  v28 = v25;
  [v4 installNotificationObserverForNotificationName:v26 notificationCenter:v5 forOneNotification:1 usingBlock:v29];
}

void __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke_3;
  v3[3] = &unk_2783A92D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
}

void __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = [*(a1 + 40) searchTextField];
    v3 = [v2 isFirstResponder];

    if ((v3 & 1) == 0)
    {
      v4 = *(a1 + 32);

      [v4 cancelAndFailTestWithReason:@"Search bar still active; test failed."];
    }
  }
}

void __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke_6;
  v2[3] = &unk_2783A92D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  SBPPTPerformAfterCommitWithDelay(v2, 0.75);
}

void __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke_6(uint64_t a1)
{
  [*MEMORY[0x277D76620] finishedSubTest:@"DeweyPullToLibrarySearchPresent" forTest:*(a1 + 32)];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__SBPPTOperation_SBAppLibrarySupport__pullToAppLibrarySearch__block_invoke_7;
  v2[3] = &unk_2783A8C18;
  v3 = *(a1 + 40);
  SBPPTPerformAfterCommitWithDelay(v2, 1.0);
}

+ (id)presentAppLibraryPhone
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBPPTOperation_SBAppLibrarySupport__presentAppLibraryPhone__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v4 = [SBPPTBlockOperation operationWithName:v3 block:v6];

  return v4;
}

void __61__SBPPTOperation_SBAppLibrarySupport__presentAppLibraryPhone__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBPPTOperation_SBAppLibrarySupport__presentAppLibraryPhone__block_invoke_2;
  v6[3] = &unk_2783A9398;
  v7 = v3;
  v5 = v3;
  [v4 _appLibrarySupport_performPanGesturesOnScreenUntilOnDeweyOverlayWithCompletion:v6];
}

void __61__SBPPTOperation_SBAppLibrarySupport__presentAppLibraryPhone__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __61__SBPPTOperation_SBAppLibrarySupport__presentAppLibraryPhone__block_invoke_3;
    v4[3] = &unk_2783A8C18;
    v5 = *(a1 + 32);
    SBPPTPerformAfterCommitWithDelay(v4, 0.0);
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 cancelAndFailTestWithReason:@"Unable to pan HomeScreen to App Library overlay"];
  }
}

+ (id)dismissOverlaysAndResetHomeScreenToPage:(unint64_t)page animated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  v10 = NSStringFromSelector(a2);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__SBPPTOperation_SBAppLibrarySupport__dismissOverlaysAndResetHomeScreenToPage_animated_completion___block_invoke;
  v14[3] = &unk_2783C4740;
  selfCopy = self;
  pageCopy = page;
  animatedCopy = animated;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = [SBPPTBlockOperation operationWithName:v10 block:v14];

  return v12;
}

+ (void)_dismissOverlaysAndResetHomeScreenToPage:(unint64_t)page animated:(BOOL)animated operation:(id)operation completion:(id)completion
{
  operationCopy = operation;
  completionCopy = completion;
  selfCopy = self;
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];
  rootFolderController = [iconManager rootFolderController];
  homeScreenOverlayController = [homeScreenController homeScreenOverlayController];
  v16 = +[SBApplicationTestingManager sharedInstance];
  currentTestName = [v16 currentTestName];
  SBDismissSpotlight();
  v29 = iconManager;
  v30 = _mainDisplayWindowScene;
  if ([homeScreenController isModalAppLibrarySupported])
  {
    modalLibraryController = [_mainDisplayWindowScene modalLibraryController];
    libraryViewController = [modalLibraryController libraryViewController];
    isPresentingLibrary = [modalLibraryController isPresentingLibrary];
  }

  else
  {
    libraryViewController = [homeScreenController overlayLibraryViewController];
    isPresentingLibrary = [iconManager isMainDisplayLibraryViewVisible];
    modalLibraryController = 0;
  }

  if ([libraryViewController isPresentingSearch])
  {
    [libraryViewController dismissSearch];
  }

  [libraryViewController _dismissExpandedPods:0 completion:0];
  [v16 setupKeyboardAnimationSubTestsForTestName:currentTestName];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __110__SBPPTOperation_SBAppLibrarySupport___dismissOverlaysAndResetHomeScreenToPage_animated_operation_completion___block_invoke;
  v36[3] = &unk_2783BC598;
  v20 = rootFolderController;
  v37 = v20;
  pageCopy = page;
  v21 = homeScreenOverlayController;
  v38 = v21;
  v22 = completionCopy;
  v40 = v22;
  v23 = operationCopy;
  v39 = v23;
  v24 = MEMORY[0x223D6F7F0](v36);
  v25 = v24;
  if (isPresentingLibrary)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __110__SBPPTOperation_SBAppLibrarySupport___dismissOverlaysAndResetHomeScreenToPage_animated_operation_completion___block_invoke_4;
    v32[3] = &unk_2783C4768;
    v34 = v22;
    v33 = v23;
    v35 = v25;
    v26 = v30;
    if ([selfCopy _isLibraryDismissalAllowedWithCompletion:v32])
    {
      if (modalLibraryController)
      {
        v27 = modalLibraryController;
      }

      else
      {
        v27 = homeScreenController;
      }

      [v27 dismissLibraryAnimated:0 completion:0];
    }
  }

  else
  {
    (*(v24 + 16))(v24);
    v26 = v30;
  }
}

void __110__SBPPTOperation_SBAppLibrarySupport___dismissOverlaysAndResetHomeScreenToPage_animated_operation_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__SBPPTOperation_SBAppLibrarySupport___dismissOverlaysAndResetHomeScreenToPage_animated_operation_completion___block_invoke_2;
  v8[3] = &unk_2783BC598;
  v3 = *(a1 + 32);
  v11 = *(a1 + 64);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v9 = v7;
  v10 = v6;
  [v3 setCurrentPageIndex:v2 animated:0 completion:v8];
}

void __110__SBPPTOperation_SBAppLibrarySupport___dismissOverlaysAndResetHomeScreenToPage_animated_operation_completion___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x277D76620];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__SBPPTOperation_SBAppLibrarySupport___dismissOverlaysAndResetHomeScreenToPage_animated_operation_completion___block_invoke_3;
  v8[3] = &unk_2783BC598;
  v3 = *(a1 + 32);
  v11 = *(a1 + 64);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v9 = v7;
  v10 = v6;
  [v2 _performBlockAfterCATransactionCommits:v8];
}

uint64_t __110__SBPPTOperation_SBAppLibrarySupport___dismissOverlaysAndResetHomeScreenToPage_animated_operation_completion___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) currentPageIndex] == *(a1 + 64) && (objc_msgSend(*(a1 + 40), "isPresented") & 1) == 0)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      (*(v5 + 16))(v5, 1);
    }

    v6 = *(a1 + 48);

    return [v6 finish];
  }

  else
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      (*(v2 + 16))(v2, 0);
    }

    v3 = *(a1 + 48);

    return [v3 cancelAndFailTestWithReason:@"Unable to scroll to page!"];
  }
}

void __110__SBPPTOperation_SBAppLibrarySupport___dismissOverlaysAndResetHomeScreenToPage_animated_operation_completion___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v7 = v3;
  if (v3)
  {
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
      v3 = v7;
    }

    v5 = a1[4];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to dismiss home screen overlay controller: %@", v3];
    [v5 cancelAndFailTestWithReason:v6];
  }

  else
  {
    if (v4)
    {
      (*(v4 + 16))(v4, 1);
    }

    (*(a1[6] + 16))();
  }
}

+ (id)_libraryViewController
{
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  if ([homeScreenController isModalAppLibrarySupported])
  {
    modalLibraryController = [_mainDisplayWindowScene modalLibraryController];
    libraryViewController = [modalLibraryController libraryViewController];
  }

  else
  {
    libraryViewController = [homeScreenController overlayLibraryViewController];
  }

  return libraryViewController;
}

+ (BOOL)isLibraryPresented
{
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  if ([homeScreenController isModalAppLibrarySupported])
  {
    modalLibraryController = [_mainDisplayWindowScene modalLibraryController];
    isPresentingLibrary = [modalLibraryController isPresentingLibrary];
  }

  else
  {
    modalLibraryController = [homeScreenController iconManager];
    isPresentingLibrary = [modalLibraryController isMainDisplayLibraryViewVisible];
  }

  v6 = isPresentingLibrary;

  return v6;
}

+ (id)dismissOverlaysAndResetHomeScreenToLastIconPageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];
  rootFolderController = [iconManager rootFolderController];
  v10 = [self dismissOverlaysAndResetHomeScreenToPage:objc_msgSend(rootFolderController animated:"lastIconPageIndex") completion:{animatedCopy, 0}];
  [v10 setTimeoutInterval:30.0];
  v11 = NSStringFromSelector(a2);
  [v10 setOperationName:v11];

  return v10;
}

+ (id)dismissOverlaysAndResetHomeScreenToFirstIconPageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];
  rootFolderController = [iconManager rootFolderController];
  v10 = [self dismissOverlaysAndResetHomeScreenToPage:objc_msgSend(rootFolderController animated:"firstIconPageIndex") completion:{animatedCopy, 0}];
  [v10 setTimeoutInterval:30.0];
  v11 = NSStringFromSelector(a2);
  [v10 setOperationName:v11];

  return v10;
}

+ (id)appLibraryExpandFirstPod
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SBPPTOperation_SBAppLibrarySupport__appLibraryExpandFirstPod__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v4 = [SBPPTBlockOperation operationWithName:v3 block:v6];

  [v4 setTimeoutInterval:30.0];

  return v4;
}

void __63__SBPPTOperation_SBAppLibrarySupport__appLibraryExpandFirstPod__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _libraryViewController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SBPPTOperation_SBAppLibrarySupport__appLibraryExpandFirstPod__block_invoke_2;
  v6[3] = &unk_2783A9398;
  v7 = v3;
  v5 = v3;
  [v4 _expandPodAtIndex:0 animated:1 completion:v6];
}

void __63__SBPPTOperation_SBAppLibrarySupport__appLibraryExpandFirstPod__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __63__SBPPTOperation_SBAppLibrarySupport__appLibraryExpandFirstPod__block_invoke_3;
    v4[3] = &unk_2783A8C18;
    v5 = *(a1 + 32);
    SBPPTPerformAfterCommitWithDelay(v4, 1.0);
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 cancelAndFailTestWithReason:@"Unable to expand pod"];
  }
}

+ (id)appLibraryDismissExpandedPod
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SBPPTOperation_SBAppLibrarySupport__appLibraryDismissExpandedPod__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v4 = [SBPPTBlockOperation operationWithName:v3 block:v6];

  [v4 setTimeoutInterval:30.0];

  return v4;
}

void __67__SBPPTOperation_SBAppLibrarySupport__appLibraryDismissExpandedPod__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _libraryViewController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SBPPTOperation_SBAppLibrarySupport__appLibraryDismissExpandedPod__block_invoke_2;
  v6[3] = &unk_2783A9398;
  v7 = v3;
  v5 = v3;
  [v4 _dismissExpandedPods:1 completion:v6];
}

void __67__SBPPTOperation_SBAppLibrarySupport__appLibraryDismissExpandedPod__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __67__SBPPTOperation_SBAppLibrarySupport__appLibraryDismissExpandedPod__block_invoke_3;
    v4[3] = &unk_2783A8C18;
    v5 = *(a1 + 32);
    SBPPTPerformAfterCommitWithDelay(v4, 1.0);
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 cancelAndFailTestWithReason:@"Unable to dismiss expanded pods."];
  }
}

+ (id)performTapAtPointWithBlock:(id)block
{
  blockCopy = block;
  v6 = NSStringFromSelector(a2);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __66__SBPPTOperation_SBAppLibrarySupport__performTapAtPointWithBlock___block_invoke;
  v13 = &unk_2783C4790;
  v14 = blockCopy;
  selfCopy = self;
  v7 = blockCopy;
  v8 = [SBPPTBlockOperation operationWithName:v6 block:&v10];

  [v8 setTimeoutInterval:{30.0, v10, v11, v12, v13}];

  return v8;
}

void __66__SBPPTOperation_SBAppLibrarySupport__performTapAtPointWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = 0;
  v5 = (*(v4 + 16))();
  v7 = v6;
  v8 = v13;
  v9 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SBPPTOperation_SBAppLibrarySupport__performTapAtPointWithBlock___block_invoke_2;
  v11[3] = &unk_2783A8C18;
  v12 = v3;
  v10 = v3;
  [v9 _appLibrarySupport_performTapAtPoint:v8 fromView:v11 withCompletion:{v5, v7}];
}

+ (id)dismissAppLibraryOverlay
{
  v3 = NSStringFromSelector(a2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryOverlay__block_invoke;
  v6[3] = &__block_descriptor_40_e29_v16__0__SBPPTBlockOperation_8l;
  v6[4] = self;
  v4 = [SBPPTBlockOperation operationWithName:v3 block:v6];

  [v4 setTimeoutInterval:30.0];

  return v4;
}

void __63__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryOverlay__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isLibraryPresented])
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryOverlay__block_invoke_2;
    v5[3] = &unk_2783A8BC8;
    v7 = v4;
    v6 = v3;
    [v4 _appLibrarySupport_performPanGestureTowardsUserInterfaceLayoutDirectionOnScreenWithDuration:v5 completion:0.25];
  }

  else
  {
    [v3 cancelAndFailTestWithReason:@"Library isn't visible; cannot dismiss!"];
  }
}

void __63__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryOverlay__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryOverlay__block_invoke_3;
  v3[3] = &unk_2783A8BC8;
  v2 = *(a1 + 32);
  v1 = v2;
  v4 = v2;
  SBPPTPerformAfterCommitWithDelay(v3, 0.0);
}

uint64_t __63__SBPPTOperation_SBAppLibrarySupport__dismissAppLibraryOverlay__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) isLibraryPresented];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 cancelAndFailTestWithReason:@"Library was not dismissed!"];
  }

  else
  {

    return [v3 finish];
  }
}

+ (id)configureAppLibraryForAllAppsInOnePod
{
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  v5 = NSStringFromSelector(a2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SBPPTOperation_SBAppLibrarySupport__configureAppLibraryForAllAppsInOnePod__block_invoke;
  v9[3] = &unk_2783B2FA8;
  v10 = homeScreenController;
  v6 = homeScreenController;
  v7 = [SBPPTBlockOperation operationWithName:v5 block:v9];

  [v7 setTimeoutInterval:30.0];

  return v7;
}

void __76__SBPPTOperation_SBAppLibrarySupport__configureAppLibraryForAllAppsInOnePod__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SBPPTOperation_SBAppLibrarySupport__configureAppLibraryForAllAppsInOnePod__block_invoke_2;
  v5[3] = &unk_2783A92D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  SBPPTPerformAfterCommitWithDelay(v5, 0.0);
}

void __76__SBPPTOperation_SBAppLibrarySupport__configureAppLibraryForAllAppsInOnePod__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _configureDeweyOneCategoryWithAllApps];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __76__SBPPTOperation_SBAppLibrarySupport__configureAppLibraryForAllAppsInOnePod__block_invoke_3;
  v2[3] = &unk_2783A8C18;
  v3 = *(a1 + 40);
  SBPPTPerformAfterCommitWithDelay(v2, 1.0);
}

+ (id)configureAppLibraryForEachAppHavingOwnPod
{
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  v5 = NSStringFromSelector(a2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__SBPPTOperation_SBAppLibrarySupport__configureAppLibraryForEachAppHavingOwnPod__block_invoke;
  v9[3] = &unk_2783B2FA8;
  v10 = homeScreenController;
  v6 = homeScreenController;
  v7 = [SBPPTBlockOperation operationWithName:v5 block:v9];

  [v7 setTimeoutInterval:30.0];

  return v7;
}

void __80__SBPPTOperation_SBAppLibrarySupport__configureAppLibraryForEachAppHavingOwnPod__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__SBPPTOperation_SBAppLibrarySupport__configureAppLibraryForEachAppHavingOwnPod__block_invoke_2;
  v5[3] = &unk_2783A92D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  SBPPTPerformAfterCommitWithDelay(v5, 0.0);
}

void __80__SBPPTOperation_SBAppLibrarySupport__configureAppLibraryForEachAppHavingOwnPod__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _configureDeweyEachAppHasItsOwnCategory:30];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __80__SBPPTOperation_SBAppLibrarySupport__configureAppLibraryForEachAppHavingOwnPod__block_invoke_3;
  v2[3] = &unk_2783A8C18;
  v3 = *(a1 + 40);
  SBPPTPerformAfterCommitWithDelay(v2, 1.0);
}

+ (void)_appLibrarySupport_performPanGestureTowardsUserInterfaceLayoutDirectionOnScreenWithDuration:(double)duration completion:(id)completion
{
  v6 = *MEMORY[0x277D76620];
  completionCopy = completion;
  if ([v6 userInterfaceLayoutDirection] == 1)
  {
    [self _appLibrarySupport_performRightToLeftPanGestureOnScreenWithDuration:completionCopy completion:duration];
  }

  else
  {
    [self _appLibrarySupport_performLeftToRightPanGestureOnScreenWithDuration:completionCopy completion:duration];
  }
}

+ (void)_appLibrarySupport_performPanGestureAwayFromUserInterfaceLayoutDirectionOnScreenWithDuration:(double)duration completion:(id)completion
{
  v6 = *MEMORY[0x277D76620];
  completionCopy = completion;
  if ([v6 userInterfaceLayoutDirection] == 1)
  {
    [self _appLibrarySupport_performLeftToRightPanGestureOnScreenWithDuration:completionCopy completion:duration];
  }

  else
  {
    [self _appLibrarySupport_performRightToLeftPanGestureOnScreenWithDuration:completionCopy completion:duration];
  }
}

+ (void)_appLibrarySupport_performRightToLeftPanGestureOnScreenWithDuration:(double)duration completion:(id)completion
{
  v6 = MEMORY[0x277D75DA0];
  completionCopy = completion;
  _applicationKeyWindow = [v6 _applicationKeyWindow];
  [_applicationKeyWindow bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v24.origin.x = v10;
  v24.origin.y = v12;
  v24.size.width = v14;
  v24.size.height = v16;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = v10;
  v25.origin.y = v12;
  v25.size.width = v14;
  v25.size.height = v16;
  MidY = CGRectGetMidY(v25);
  v26.origin.x = v10;
  v26.origin.y = v12;
  v26.size.width = v14;
  v26.size.height = v16;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = v10;
  v27.origin.y = v12;
  v27.size.width = v14;
  v27.size.height = v16;
  v20 = CGRectGetMidY(v27);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __118__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport_performRightToLeftPanGestureOnScreenWithDuration_completion___block_invoke;
  v23[3] = &__block_descriptor_80_e34_v16__0___RCPEventStreamComposer__8l;
  v23[4] = self;
  *&v23[5] = MaxX;
  *&v23[6] = MidY;
  *&v23[7] = MinX;
  *&v23[8] = v20;
  *&v23[9] = duration;
  v21 = [MEMORY[0x277D44358] eventStreamWithEventActions:v23];
  v22 = objc_opt_new();
  [MEMORY[0x277D44348] playEventStream:v21 options:v22 completion:completionCopy];
}

+ (void)_appLibrarySupport_performLeftToRightPanGestureOnScreenWithDuration:(double)duration completion:(id)completion
{
  v6 = MEMORY[0x277D75DA0];
  completionCopy = completion;
  _applicationKeyWindow = [v6 _applicationKeyWindow];
  [_applicationKeyWindow bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v24.origin.x = v10;
  v24.origin.y = v12;
  v24.size.width = v14;
  v24.size.height = v16;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = v10;
  v25.origin.y = v12;
  v25.size.width = v14;
  v25.size.height = v16;
  MidY = CGRectGetMidY(v25);
  v26.origin.x = v10;
  v26.origin.y = v12;
  v26.size.width = v14;
  v26.size.height = v16;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = v10;
  v27.origin.y = v12;
  v27.size.width = v14;
  v27.size.height = v16;
  v20 = CGRectGetMidY(v27);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __118__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport_performLeftToRightPanGestureOnScreenWithDuration_completion___block_invoke;
  v23[3] = &__block_descriptor_80_e34_v16__0___RCPEventStreamComposer__8l;
  v23[4] = self;
  *&v23[5] = MinX;
  *&v23[6] = MidY;
  *&v23[7] = MaxX;
  *&v23[8] = v20;
  *&v23[9] = duration;
  v21 = [MEMORY[0x277D44358] eventStreamWithEventActions:v23];
  v22 = objc_opt_new();
  [MEMORY[0x277D44348] playEventStream:v21 options:v22 completion:completionCopy];
}

+ (void)_appLibrarySupport_performPanWithComposer:(id)composer startLocation:(CGPoint)location endLocation:(CGPoint)endLocation duration:(double)duration
{
  y = endLocation.y;
  x = endLocation.x;
  v9 = location.y;
  v10 = location.x;
  v11 = *MEMORY[0x277D76620];
  v12 = MEMORY[0x277D759A0];
  composerCopy = composer;
  mainScreen = [v12 mainScreen];
  v21 = [v11 _keyWindowForScreen:mainScreen];

  [v21 convertPoint:0 toView:{v10, v9}];
  [v21 _convertPointToSceneReferenceSpace:?];
  v16 = v15;
  v18 = v17;
  [v21 convertPoint:0 toView:{x, y}];
  [v21 _convertPointToSceneReferenceSpace:?];
  [composerCopy sendFlickWithStartPoint:v16 endPoint:v18 duration:{v19, v20, duration}];
}

+ (void)_appLibrarySupport_performPanGesturesOnScreenUntilOnPage:(unint64_t)page withCompletion:(id)completion
{
  completionCopy = completion;
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];
  rootFolderController = [iconManager rootFolderController];
  [self _appLibrarySupport__performPanGesturesOnScreenFromPage:objc_msgSend(rootFolderController toPage:"currentPageIndex") completion:{page, completionCopy}];
}

+ (void)_appLibrarySupport_performPanGesturesOnScreenUntilOnDefaultHomeScreenIconPageWithCompletion:(id)completion
{
  completionCopy = completion;
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];
  rootFolderController = [iconManager rootFolderController];
  currentPageIndex = [rootFolderController currentPageIndex];
  iconManager2 = [homeScreenController iconManager];
  rootFolderController2 = [iconManager2 rootFolderController];
  [self _appLibrarySupport__performPanGesturesOnScreenFromPage:currentPageIndex toPage:objc_msgSend(rootFolderController2 completion:{"defaultPageIndex"), completionCopy}];
}

+ (void)_appLibrarySupport_performPanGesturesOnScreenUntilOnDeweyOverlayWithCompletion:(id)completion
{
  completionCopy = completion;
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  _rootFolderController = [homeScreenController _rootFolderController];
  currentPageIndex = [_rootFolderController currentPageIndex];

  _rootFolderController2 = [homeScreenController _rootFolderController];
  lastIconPageIndex = [_rootFolderController2 lastIconPageIndex];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __118__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport_performPanGesturesOnScreenUntilOnDeweyOverlayWithCompletion___block_invoke;
  v13[3] = &unk_2783B3D68;
  v14 = homeScreenController;
  v15 = completionCopy;
  selfCopy = self;
  v11 = completionCopy;
  v12 = homeScreenController;
  [self _appLibrarySupport__performPanGesturesOnScreenFromPage:currentPageIndex toPage:lastIconPageIndex completion:v13];
}

void __118__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport_performPanGesturesOnScreenUntilOnDeweyOverlayWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeScreenOverlayController];
  v3 = [v2 isPresented];

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __118__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport_performPanGesturesOnScreenUntilOnDeweyOverlayWithCompletion___block_invoke_2;
    v16[3] = &__block_descriptor_40_e14_v16__0___v___8l;
    v16[4] = *(a1 + 48);
    v6 = MEMORY[0x223D6F7F0](v16);
    from = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __118__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport_performPanGesturesOnScreenUntilOnDeweyOverlayWithCompletion___block_invoke_3;
    v9[3] = &unk_2783C47F8;
    objc_copyWeak(&v13, &from);
    v10 = *(a1 + 32);
    v14 = 0;
    v11 = *(a1 + 40);
    v7 = v6;
    v12 = v7;
    v8 = MEMORY[0x223D6F7F0](v9);
    objc_storeWeak(&from, v8);
    (*(v7 + 2))(v7, v8);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
  }
}

void __118__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport_performPanGesturesOnScreenUntilOnDeweyOverlayWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D76620];
  v6 = a2;
  v4 = [v3 userInterfaceLayoutDirection];
  v5 = *(a1 + 32);
  if (v4 == 1)
  {
    [v5 _appLibrarySupport_performPanGestureTowardsUserInterfaceLayoutDirectionOnScreenWithDuration:v6 completion:0.25];
  }

  else
  {
    [v5 _appLibrarySupport_performPanGestureAwayFromUserInterfaceLayoutDirectionOnScreenWithDuration:v6 completion:0.25];
  }
}

void __118__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport_performPanGesturesOnScreenUntilOnDeweyOverlayWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [*(a1 + 32) homeScreenOverlayController];
  v3 = [v2 isPresented];

  if (*(a1 + 64) == v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 1);
    }
  }
}

+ (void)_appLibrarySupport__performPanGesturesOnScreenFromPage:(unint64_t)page toPage:(unint64_t)toPage completion:(id)completion
{
  completionCopy = completion;
  _mainDisplayWindowScene = [self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];
  rootFolderController = [iconManager rootFolderController];

  homeScreenOverlayController = [homeScreenController homeScreenOverlayController];
  isPresented = [homeScreenOverlayController isPresented];

  if ([rootFolderController currentPageIndex] == toPage)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __112__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport__performPanGesturesOnScreenFromPage_toPage_completion___block_invoke;
    v16[3] = &unk_2783C4820;
    v17 = homeScreenController;
    pageCopy = page;
    v23 = isPresented;
    v18 = rootFolderController;
    toPageCopy = toPage;
    v19 = completionCopy;
    selfCopy = self;
    v15 = MEMORY[0x223D6F7F0](v16);
    if (page >= toPage || [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      [self _appLibrarySupport_performPanGestureAwayFromUserInterfaceLayoutDirectionOnScreenWithDuration:v15 completion:0.25];
    }

    else
    {
      [self _appLibrarySupport_performPanGestureTowardsUserInterfaceLayoutDirectionOnScreenWithDuration:v15 completion:0.25];
    }
  }
}

uint64_t __112__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport__performPanGesturesOnScreenFromPage_toPage_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) iconManager];
  v3 = [v2 rootFolderController];
  v4 = [v3 currentPageIndex];

  v5 = *(a1 + 56);
  v6 = [*(a1 + 32) homeScreenOverlayController];
  v7 = [v6 isPresented];
  v8 = *(a1 + 80);

  v9 = v4 != v5;
  if (v4 == v5 && v8 != v7)
  {
    v9 = *(a1 + 80);
  }

  if ([*(a1 + 40) currentPageIndex] == *(a1 + 64))
  {
    result = *(a1 + 48);
    if (!result)
    {
      return result;
    }

    v12 = *(result + 16);
LABEL_15:

    return v12();
  }

  if ((v9 & 1) == 0)
  {
    result = *(a1 + 48);
    if (!result)
    {
      return result;
    }

    v12 = *(result + 16);
    goto LABEL_15;
  }

  v13 = *(a1 + 72);

  return [v13 _appLibrarySupport__performPanGesturesOnScreenFromPage:v4 toPage:? completion:?];
}

+ (void)_appLibrarySupport_performTapAtPoint:(CGPoint)point fromView:(id)view withCompletion:(id)completion
{
  y = point.y;
  x = point.x;
  v8 = *MEMORY[0x277D76620];
  v9 = MEMORY[0x277D759A0];
  completionCopy = completion;
  viewCopy = view;
  mainScreen = [v9 mainScreen];
  v13 = [v8 _keyWindowForScreen:mainScreen];

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  coordinateSpace = [mainScreen2 coordinateSpace];
  [coordinateSpace convertPoint:viewCopy fromCoordinateSpace:{x, y}];
  v17 = v16;
  v19 = v18;

  [v13 convertPoint:0 fromView:{v17, v19}];
  [v13 _convertPointToSceneReferenceSpace:?];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __100__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport_performTapAtPoint_fromView_withCompletion___block_invoke;
  v24[3] = &__block_descriptor_48_e34_v16__0___RCPEventStreamComposer__8l;
  v24[4] = v20;
  v24[5] = v21;
  v22 = [MEMORY[0x277D44358] eventStreamWithEventActions:v24];
  v23 = objc_opt_new();
  [MEMORY[0x277D44348] playEventStream:v22 options:v23 completion:completionCopy];
}

+ (void)_appLibrarySupport_performDragFromPoint:(CGPoint)point andDragTo:(CGPoint)to duration:(double)duration fromView:(id)view withCompletion:(id)completion
{
  y = to.y;
  x = to.x;
  v11 = point.y;
  v12 = point.x;
  v13 = *MEMORY[0x277D76620];
  v14 = MEMORY[0x277D759A0];
  completionCopy = completion;
  viewCopy = view;
  mainScreen = [v14 mainScreen];
  v18 = [v13 _keyWindowForScreen:mainScreen];

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  coordinateSpace = [mainScreen2 coordinateSpace];
  [coordinateSpace convertPoint:viewCopy fromCoordinateSpace:{v12, v11}];
  v22 = v21;
  v24 = v23;

  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  coordinateSpace2 = [mainScreen3 coordinateSpace];
  [coordinateSpace2 convertPoint:viewCopy fromCoordinateSpace:{x, y}];
  v28 = v27;
  v30 = v29;

  [v18 convertPoint:0 fromView:{v22, v24}];
  [v18 _convertPointToSceneReferenceSpace:?];
  v32 = v31;
  v34 = v33;
  [v18 convertPoint:0 fromView:{v28, v30}];
  [v18 _convertPointToSceneReferenceSpace:?];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __122__SBPPTOperation_SBAppLibrarySupport___appLibrarySupport_performDragFromPoint_andDragTo_duration_fromView_withCompletion___block_invoke;
  v39[3] = &__block_descriptor_72_e34_v16__0___RCPEventStreamComposer__8l;
  v39[4] = v32;
  v39[5] = v34;
  v39[6] = v35;
  v39[7] = v36;
  *&v39[8] = duration;
  v37 = [MEMORY[0x277D44358] eventStreamWithEventActions:v39];
  v38 = objc_opt_new();
  [MEMORY[0x277D44348] playEventStream:v37 options:v38 completion:completionCopy];
}

+ (id)embeddedWindowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  return embeddedDisplayWindowScene;
}

@end