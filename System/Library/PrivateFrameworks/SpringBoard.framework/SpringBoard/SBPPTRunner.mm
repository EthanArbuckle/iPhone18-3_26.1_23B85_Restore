@interface SBPPTRunner
+ (BOOL)isAppLibraryTest:(id)test;
+ (BOOL)isFocusModeTest:(id)test;
+ (BOOL)isPageManagementTest:(id)test;
+ (id)sharedInstance;
- (BOOL)_runCoverSheetTestWithName:(id)name options:(id)options;
- (BOOL)_runDashBoardTestWithName:(id)name options:(id)options;
- (BOOL)runTestWithName:(id)name options:(id)options;
- (id)_libraryViewController;
- (id)_mainDisplayWindowScene;
- (id)_operationToDismissCoverSheetForTestWithName:(id)name;
- (id)_operationToPresentCoverSheetForTestWithName:(id)name;
- (void)_configureParams:(id)params forScrollView:(id)view;
- (void)_runAppLibraryPadPresentTestWithOptions:(id)options;
- (void)_runAppLibraryTestWithName:(id)name options:(id)options;
- (void)_runCoverSheetDismissTestWithOptions:(id)options;
- (void)_runCoverSheetDismissToSafariTestWithOptions:(id)options;
- (void)_runCoverSheetPresentOverSafariTestWithOptions:(id)options;
- (void)_runCoverSheetPresentTestWithOptions:(id)options;
- (void)_runDashBoardDismissTestWithOptions:(id)options;
- (void)_runFloatingDockBringupTestWithOptions:(id)options;
- (void)_runFloatingDockDismissTestWithOptions:(id)options;
- (void)_runFocusModePresentTestWithName:(id)name options:(id)options;
- (void)_runFocusModeTestWithName:(id)name options:(id)options;
- (void)_runLibrarySearchTestWithOptions:(id)options;
- (void)_runNotificationBannerTransitionTestWithOptions:(id)options;
- (void)_runNotificationClearLongLookTransitionTestWithOptions:(id)options;
- (void)_runNotificationReParkLongLookTransitionTestWithOptions:(id)options;
- (void)_runNotificationShortToLongLookTransitionTestWithOptions:(id)options;
- (void)_runPIPAutoStashByEnteringSwitcherTestWithOptions:(id)options;
- (void)_runPIPAutoUnstashAndRestoreByExitingSwitcherBackToAppTestWithOptions:(id)options;
- (void)_runPIPBasicRestoreTestWithOptions:(id)options;
- (void)_runPIPManualStashTestWithOptions:(id)options;
- (void)_runPIPManualUnstashTestWithOptions:(id)options;
- (void)_runPageManagementPresentTestWithName:(id)name options:(id)options;
- (void)_runPageManagementTestWithName:(id)name options:(id)options;
- (void)_runPullToAppLibrarySearchTestWithOptions:(id)options;
- (void)_runScrollDeweyTestWithOptions:(id)options;
- (void)_runScrollWithinExpandedPodTestWithOptions:(id)options;
- (void)_runSiriTestWithName:(id)name options:(id)options;
- (void)_runSwipeFromDeweyTestWithOptions:(id)options;
- (void)_runSwipeToDeweyTestWithOptions:(id)options;
- (void)_setCoverSheetPresentationManagerTransitionCallbacksForTestName:(id)name operation:(id)operation;
- (void)assistantDidAppear:(id)appear windowScene:(id)scene;
- (void)assistantWillAppear:(id)appear windowScene:(id)scene;
- (void)longLookDidDismissForNotificationViewController:(id)controller;
- (void)longLookDidPresentForNotificationViewController:(id)controller;
- (void)longLookWillDismissForNotificationViewController:(id)controller;
- (void)longLookWillPresentForNotificationViewController:(id)controller;
- (void)prepareForControlCenterPPTHostState:(unint64_t)state completionHandler:(id)handler;
@end

@implementation SBPPTRunner

- (BOOL)_runDashBoardTestWithName:(id)name options:(id)options
{
  optionsCopy = options;
  v7 = [name isEqualToString:@"DashBoardSwipeDismissWhileAuthenticated"];
  if (v7)
  {
    [(SBPPTRunner *)self _runDashBoardDismissTestWithOptions:optionsCopy];
  }

  return v7;
}

- (void)_runDashBoardDismissTestWithOptions:(id)options
{
  v10[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[SBPPTOperation operationToLockInterface];
  v6 = [SBPPTOperation operationToUnlockInterfaceFinishingUIUnlock:0, v5];
  v10[1] = v6;
  v7 = [optionsCopy objectForKey:@"testName"];

  v8 = [(SBPPTRunner *)self _operationToDismissDashBoardForTestWithName:v7];
  v10[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  [SBPPTOperation enqueueOperations:v9];
}

void __74__SBPPTRunner_DashBoardPPTs___operationToDismissDashBoardForTestWithName___block_invoke()
{
  v0 = SBPPTEventActionsToSwipeUpFromBottomOfInterface();
  SBPPTSynthesizeEventsForEventActions(v0, 0);
}

- (void)prepareForControlCenterPPTHostState:(unint64_t)state completionHandler:(id)handler
{
  v22[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __94__SBPPTRunner_ControlCenterPPTSupport__prepareForControlCenterPPTHostState_completionHandler___block_invoke;
  v18 = &unk_2783B2FF8;
  v6 = handlerCopy;
  v19 = v6;
  v7 = [SBPPTBlockOperation operationWithBlock:&v15];
  switch(state)
  {
    case 2uLL:
      v8 = [SBPPTOperation operationToPreventSystemIdle:v15];
      v20[0] = v8;
      v9 = +[SBPPTOperation operationToUnlockInterface];
      v20[1] = v9;
      v10 = [SBPPTOperation operationToActivateApplicationWithBundleIdentifier:@"com.apple.mobilesafari"];
      v20[2] = v10;
      v20[3] = v7;
      v11 = +[SBPPTOperation operationToResumeSystemIdle];
      v20[4] = v11;
      v12 = MEMORY[0x277CBEA60];
      v13 = v20;
      goto LABEL_7;
    case 1uLL:
      v8 = [SBPPTOperation operationToPreventSystemIdle:v15];
      v21[0] = v8;
      v9 = +[SBPPTOperation operationToUnlockInterface];
      v21[1] = v9;
      v10 = +[SBPPTOperation operationToTransitionToHomeScreen];
      v21[2] = v10;
      v21[3] = v7;
      v11 = +[SBPPTOperation operationToResumeSystemIdle];
      v21[4] = v11;
      v12 = MEMORY[0x277CBEA60];
      v13 = v21;
LABEL_7:
      v14 = [v12 arrayWithObjects:v13 count:5];
      [SBPPTOperation enqueueOperations:v14];

      goto LABEL_8;
    case 0uLL:
      v8 = [SBPPTOperation operationToPreventSystemIdle:v15];
      v22[0] = v8;
      v9 = +[SBPPTOperation operationToLockInterface];
      v22[1] = v9;
      v22[2] = v7;
      v10 = +[SBPPTOperation operationToResumeSystemIdle];
      v22[3] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
      [SBPPTOperation enqueueOperations:v11];
LABEL_8:

      break;
  }
}

void __94__SBPPTRunner_ControlCenterPPTSupport__prepareForControlCenterPPTHostState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2);
  [v4 finish];
}

- (void)_runFloatingDockBringupTestWithOptions:(id)options
{
  v18[5] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v18[0] = v5;
  v6 = [SBPPTOperation operationToActivateApplicationWithBundleIdentifier:@"com.apple.mobilesafari"];
  v18[1] = v6;
  v7 = +[SBPPTOperation operationToDismissFloatingDock];
  v18[2] = v7;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __64__SBPPTRunner_DockPPTs___runFloatingDockBringupTestWithOptions___block_invoke;
  v15 = &unk_2783BC300;
  selfCopy = self;
  v17 = optionsCopy;
  v8 = optionsCopy;
  v9 = [SBPPTBlockOperation operationWithBlock:&v12];
  v18[3] = v9;
  v10 = [SBPPTOperation operationToTransitionToHomeScreen:v12];
  v18[4] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
  [SBPPTOperation enqueueOperations:v11];
}

void __64__SBPPTRunner_DockPPTs___runFloatingDockBringupTestWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _mainDisplayWindowScene];
  v5 = [v4 floatingDockController];
  v6 = [*(a1 + 40) objectForKey:@"testName"];
  [*MEMORY[0x277D76620] startedTest:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBPPTRunner_DockPPTs___runFloatingDockBringupTestWithOptions___block_invoke_2;
  v9[3] = &unk_2783A8BF0;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  v8 = v6;
  [v5 presentFloatingDockIfDismissedAnimated:1 completionHandler:v9];
}

uint64_t __64__SBPPTRunner_DockPPTs___runFloatingDockBringupTestWithOptions___block_invoke_2(uint64_t a1)
{
  [*MEMORY[0x277D76620] finishedTest:*(a1 + 32)];
  v2 = *(a1 + 40);

  return [v2 finish];
}

- (void)_runFloatingDockDismissTestWithOptions:(id)options
{
  v18[5] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v18[0] = v5;
  v6 = [SBPPTOperation operationToActivateApplicationWithBundleIdentifier:@"com.apple.mobilesafari"];
  v18[1] = v6;
  v7 = +[SBPPTOperation operationToPresentFloatingDock];
  v18[2] = v7;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __64__SBPPTRunner_DockPPTs___runFloatingDockDismissTestWithOptions___block_invoke;
  v15 = &unk_2783BC300;
  selfCopy = self;
  v17 = optionsCopy;
  v8 = optionsCopy;
  v9 = [SBPPTBlockOperation operationWithBlock:&v12];
  v18[3] = v9;
  v10 = [SBPPTOperation operationToTransitionToHomeScreen:v12];
  v18[4] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
  [SBPPTOperation enqueueOperations:v11];
}

void __64__SBPPTRunner_DockPPTs___runFloatingDockDismissTestWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _mainDisplayWindowScene];
  v5 = [v4 floatingDockController];
  v6 = [*(a1 + 40) objectForKey:@"testName"];
  [*MEMORY[0x277D76620] startedTest:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBPPTRunner_DockPPTs___runFloatingDockDismissTestWithOptions___block_invoke_2;
  v9[3] = &unk_2783A8BF0;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  v8 = v6;
  [v5 dismissFloatingDockIfPresentedAnimated:1 completionHandler:v9];
}

uint64_t __64__SBPPTRunner_DockPPTs___runFloatingDockDismissTestWithOptions___block_invoke_2(uint64_t a1)
{
  [*MEMORY[0x277D76620] finishedTest:*(a1 + 32)];
  v2 = *(a1 + 40);

  return [v2 finish];
}

- (void)_runNotificationShortToLongLookTransitionTestWithOptions:(id)options
{
  v16[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v16[0] = v5;
  v6 = +[SBPPTOperation operationToPresentBannerNotification];
  v16[1] = v6;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __90__SBPPTRunner_NotificationPPTs___runNotificationShortToLongLookTransitionTestWithOptions___block_invoke;
  v13 = &unk_2783BC300;
  v14 = optionsCopy;
  selfCopy = self;
  v7 = optionsCopy;
  v8 = [SBPPTBlockOperation operationWithBlock:&v10];
  v16[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:{3, v10, v11, v12, v13}];
  [SBPPTOperation enqueueOperations:v9];
}

void __90__SBPPTRunner_NotificationPPTs___runNotificationShortToLongLookTransitionTestWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:@"testName"];
  v5 = [SBApp notificationDispatcher];
  v6 = [v5 bannerDestination];

  v7 = [v6 presentedBanner];
  [v7 addObserver:*(a1 + 40)];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__SBPPTRunner_NotificationPPTs___runNotificationShortToLongLookTransitionTestWithOptions___block_invoke_2;
  v17[3] = &unk_2783A8C18;
  v8 = v4;
  v18 = v8;
  [v7 setPPTLongLookWillPresentBlock:v17];
  objc_initWeak(&location, v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__SBPPTRunner_NotificationPPTs___runNotificationShortToLongLookTransitionTestWithOptions___block_invoke_4;
  v13[3] = &unk_2783B0E88;
  v9 = v8;
  v14 = v9;
  objc_copyWeak(&v15, &location);
  [v7 setPPTLongLookDidPresentBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__SBPPTRunner_NotificationPPTs___runNotificationShortToLongLookTransitionTestWithOptions___block_invoke_5;
  v11[3] = &unk_2783A8C18;
  v10 = v3;
  v12 = v10;
  [v7 setPPTLongLookDidDismissBlock:v11];
  [v7 _recapSwipePresentLongLook];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __90__SBPPTRunner_NotificationPPTs___runNotificationShortToLongLookTransitionTestWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] startedTest:*(a1 + 32)];
  [*v2 startedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__SBPPTRunner_NotificationPPTs___runNotificationShortToLongLookTransitionTestWithOptions___block_invoke_3;
  v4[3] = &unk_2783A8C18;
  v5 = *(a1 + 32);
  [v3 installCACommitCompletionBlock:v4];
}

uint64_t __90__SBPPTRunner_NotificationPPTs___runNotificationShortToLongLookTransitionTestWithOptions___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 startedSubTest:@"animation" forTest:v4];
}

void __90__SBPPTRunner_NotificationPPTs___runNotificationShortToLongLookTransitionTestWithOptions___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"animation" forTest:*(a1 + 32)];
  [*v2 finishedTest:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _recapDismissLongLookViaTapOutside];
}

- (void)_runNotificationReParkLongLookTransitionTestWithOptions:(id)options
{
  v18[5] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v18[0] = v5;
  v6 = +[SBPPTOperation operationToActivateNullOffscreenApp];
  v18[1] = v6;
  v7 = +[SBPPTOperation operationToPresentBannerNotification];
  v18[2] = v7;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __89__SBPPTRunner_NotificationPPTs___runNotificationReParkLongLookTransitionTestWithOptions___block_invoke;
  v15 = &unk_2783BC300;
  v16 = optionsCopy;
  selfCopy = self;
  v8 = optionsCopy;
  v9 = [SBPPTBlockOperation operationWithBlock:&v12];
  v18[3] = v9;
  v10 = [SBPPTOperation operationToTerminateNullOffscreenApp:v12];
  v18[4] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:5];
  [SBPPTOperation enqueueOperations:v11];
}

void __89__SBPPTRunner_NotificationPPTs___runNotificationReParkLongLookTransitionTestWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:@"testName"];
  v5 = [SBApp notificationDispatcher];
  v6 = [v5 bannerDestination];

  v7 = [v6 presentedBanner];
  [v7 addObserver:*(a1 + 40)];
  objc_initWeak(&location, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__SBPPTRunner_NotificationPPTs___runNotificationReParkLongLookTransitionTestWithOptions___block_invoke_2;
  v14[3] = &unk_2783B0E88;
  v8 = v4;
  v15 = v8;
  objc_copyWeak(&v16, &location);
  [v7 setPPTLongLookDidPresentBlock:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__SBPPTRunner_NotificationPPTs___runNotificationReParkLongLookTransitionTestWithOptions___block_invoke_4;
  v11[3] = &unk_2783A92D8;
  v9 = v8;
  v12 = v9;
  v10 = v3;
  v13 = v10;
  [v7 setPPTLongLookDidDismissBlock:v11];
  [v7 _recapSwipePresentLongLook];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __89__SBPPTRunner_NotificationPPTs___runNotificationReParkLongLookTransitionTestWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] startedTest:*(a1 + 32)];
  [*v2 startedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__SBPPTRunner_NotificationPPTs___runNotificationReParkLongLookTransitionTestWithOptions___block_invoke_3;
  v5[3] = &unk_2783A8C18;
  v6 = *(a1 + 32);
  [v3 installCACommitCompletionBlock:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _recapDismissLongLookViaTapOutside];
}

uint64_t __89__SBPPTRunner_NotificationPPTs___runNotificationReParkLongLookTransitionTestWithOptions___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 startedSubTest:@"animation" forTest:v4];
}

uint64_t __89__SBPPTRunner_NotificationPPTs___runNotificationReParkLongLookTransitionTestWithOptions___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"animation" forTest:*(a1 + 32)];
  [*v2 finishedTest:*(a1 + 32)];
  v3 = *(a1 + 40);

  return [v3 finish];
}

- (void)_runNotificationClearLongLookTransitionTestWithOptions:(id)options
{
  v16[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v16[0] = v5;
  v6 = +[SBPPTOperation operationToPresentBannerNotification];
  v16[1] = v6;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __88__SBPPTRunner_NotificationPPTs___runNotificationClearLongLookTransitionTestWithOptions___block_invoke;
  v13 = &unk_2783BC300;
  v14 = optionsCopy;
  selfCopy = self;
  v7 = optionsCopy;
  v8 = [SBPPTBlockOperation operationWithBlock:&v10];
  v16[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:{3, v10, v11, v12, v13}];
  [SBPPTOperation enqueueOperations:v9];
}

void __88__SBPPTRunner_NotificationPPTs___runNotificationClearLongLookTransitionTestWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:@"testName"];
  v5 = [SBApp notificationDispatcher];
  v6 = [v5 bannerDestination];

  v7 = [v6 presentedBanner];
  [v7 addObserver:*(a1 + 40)];
  objc_initWeak(&location, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__SBPPTRunner_NotificationPPTs___runNotificationClearLongLookTransitionTestWithOptions___block_invoke_2;
  v14[3] = &unk_2783B0E88;
  v8 = v4;
  v15 = v8;
  objc_copyWeak(&v16, &location);
  [v7 setPPTLongLookDidPresentBlock:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__SBPPTRunner_NotificationPPTs___runNotificationClearLongLookTransitionTestWithOptions___block_invoke_4;
  v11[3] = &unk_2783A92D8;
  v9 = v8;
  v12 = v9;
  v10 = v3;
  v13 = v10;
  [v7 setPPTLongLookDidDismissBlock:v11];
  [v7 _recapSwipePresentLongLook];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __88__SBPPTRunner_NotificationPPTs___runNotificationClearLongLookTransitionTestWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] startedTest:*(a1 + 32)];
  [*v2 startedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__SBPPTRunner_NotificationPPTs___runNotificationClearLongLookTransitionTestWithOptions___block_invoke_3;
  v5[3] = &unk_2783A8C18;
  v6 = *(a1 + 32);
  [v3 installCACommitCompletionBlock:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _recapDismissLongLookViaPullDown];
}

uint64_t __88__SBPPTRunner_NotificationPPTs___runNotificationClearLongLookTransitionTestWithOptions___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 startedSubTest:@"animation" forTest:v4];
}

uint64_t __88__SBPPTRunner_NotificationPPTs___runNotificationClearLongLookTransitionTestWithOptions___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"animation" forTest:*(a1 + 32)];
  [*v2 finishedTest:*(a1 + 32)];
  v3 = *(a1 + 40);

  return [v3 finish];
}

- (void)_runNotificationBannerTransitionTestWithOptions:(id)options
{
  v11[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = +[SBPPTOperation operationToUnlockInterface];
  v10 = optionsCopy;
  v11[0] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SBPPTRunner_NotificationPPTs___runNotificationBannerTransitionTestWithOptions___block_invoke;
  v9[3] = &unk_2783B2FA8;
  v5 = optionsCopy;
  v6 = [SBPPTBlockOperation operationWithBlock:v9];
  v11[1] = v6;
  v7 = +[SBPPTOperation operationToDismissBannerNotification];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  [SBPPTOperation enqueueOperations:v8];
}

void __81__SBPPTRunner_NotificationPPTs___runNotificationBannerTransitionTestWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:@"testName"];
  v5 = [SBApp notificationDispatcher];
  v6 = [v5 bannerDestination];

  v7 = +[SBNotificationBannerDestination _test_notificationRequestForBannerWithIcon];
  v8 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] startedTest:v4];
  [*v8 startedSubTest:@"delay" forTest:v4];
  v9 = *v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__SBPPTRunner_NotificationPPTs___runNotificationBannerTransitionTestWithOptions___block_invoke_2;
  v14[3] = &unk_2783A9BD8;
  v15 = v4;
  v16 = v6;
  v17 = v7;
  v18 = v3;
  v10 = v3;
  v11 = v7;
  v12 = v6;
  v13 = v4;
  [v9 installCACommitCompletionBlock:v14];
}

void __81__SBPPTRunner_NotificationPPTs___runNotificationBannerTransitionTestWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"delay" forTest:*(a1 + 32)];
  [*v2 startedSubTest:@"animation" forTest:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__SBPPTRunner_NotificationPPTs___runNotificationBannerTransitionTestWithOptions___block_invoke_3;
  v5[3] = &unk_2783A92D8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  [v3 _test_postNotificationRequest:v4 completion:v5];
}

uint64_t __81__SBPPTRunner_NotificationPPTs___runNotificationBannerTransitionTestWithOptions___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"animation" forTest:*(a1 + 32)];
  [*v2 finishedTest:*(a1 + 32)];
  v3 = *(a1 + 40);

  return [v3 finish];
}

- (void)longLookWillPresentForNotificationViewController:(id)controller
{
  controllerCopy = controller;
  pptLongLookWillPresentBlock = [controllerCopy pptLongLookWillPresentBlock];
  if (pptLongLookWillPresentBlock)
  {
    [controllerCopy setPPTLongLookWillPresentBlock:0];
    pptLongLookWillPresentBlock[2](pptLongLookWillPresentBlock);
  }
}

- (void)longLookDidPresentForNotificationViewController:(id)controller
{
  controllerCopy = controller;
  pptLongLookDidPresentBlock = [controllerCopy pptLongLookDidPresentBlock];
  if (pptLongLookDidPresentBlock)
  {
    [controllerCopy setPPTLongLookDidPresentBlock:0];
    pptLongLookDidPresentBlock[2](pptLongLookDidPresentBlock);
  }
}

- (void)longLookWillDismissForNotificationViewController:(id)controller
{
  controllerCopy = controller;
  pptLongLookWillDismissBlock = [controllerCopy pptLongLookWillDismissBlock];
  if (pptLongLookWillDismissBlock)
  {
    [controllerCopy setPPTLongLookWillDismissBlock:0];
    pptLongLookWillDismissBlock[2](pptLongLookWillDismissBlock);
  }
}

- (void)longLookDidDismissForNotificationViewController:(id)controller
{
  controllerCopy = controller;
  pptLongLookDidDismissBlock = [controllerCopy pptLongLookDidDismissBlock];
  if (pptLongLookDidDismissBlock)
  {
    [controllerCopy setPPTLongLookDidDismissBlock:0];
    pptLongLookDidDismissBlock[2](pptLongLookDidDismissBlock);
  }
}

- (void)_runSiriTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v7 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v7 policyAggregator];
  v9 = [policyAggregator allowsCapability:5];

  if (v9)
  {
    if ([nameCopy hasPrefix:@"SiriBringup"])
    {
      v10 = +[SBAssistantController sharedInstance];
      [v10 addObserver:self];

      [*MEMORY[0x277D76620] startedIPTest:nameCopy];
    }

    v11 = MEMORY[0x277CBEC10];
    if (optionsCopy)
    {
      v11 = optionsCopy;
    }

    v12 = v11;
    v13 = objc_opt_new();
    v14 = [objc_alloc(MEMORY[0x277D55240]) initWithPPTContext:v12];

    [v13 activateWithContext:v14];
  }
}

- (void)assistantWillAppear:(id)appear windowScene:(id)scene
{
  v4 = [SBApplicationTestingManager sharedInstance:appear];
  currentTestName = [v4 currentTestName];

  v6 = *MEMORY[0x277D76620];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SBPPTRunner_SiriPPTSupport__assistantWillAppear_windowScene___block_invoke;
  v8[3] = &unk_2783A8C18;
  v9 = currentTestName;
  v7 = currentTestName;
  [v6 _performBlockAfterCATransactionCommits:v8];
}

- (void)assistantDidAppear:(id)appear windowScene:(id)scene
{
  v5 = [SBAssistantController sharedInstance:appear];
  [v5 removeObserver:self];

  v6 = +[SBApplicationTestingManager sharedInstance];
  currentTestName = [v6 currentTestName];

  [*MEMORY[0x277D76620] finishedSubTest:@"appear" forTest:currentTestName];
  v8 = dispatch_time(0, 2000000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__SBPPTRunner_SiriPPTSupport__assistantDidAppear_windowScene___block_invoke;
  v10[3] = &unk_2783A92D8;
  v11 = currentTestName;
  selfCopy = self;
  v9 = currentTestName;
  dispatch_after(v8, MEMORY[0x277D85CD0], v10);
}

void __62__SBPPTRunner_SiriPPTSupport__assistantDidAppear_windowScene___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277D76620];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SBPPTRunner_SiriPPTSupport__assistantDidAppear_windowScene___block_invoke_2;
  v5[3] = &unk_2783A92D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 _performBlockAfterCATransactionCommits:v5];
}

void __62__SBPPTRunner_SiriPPTSupport__assistantDidAppear_windowScene___block_invoke_2(int8x16_t *a1)
{
  [*MEMORY[0x277D76620] startedSubTest:@"disappear" forTest:a1[2].i64[0]];
  v2 = +[SBAssistantController sharedInstance];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SBPPTRunner_SiriPPTSupport__assistantDidAppear_windowScene___block_invoke_3;
  v5[3] = &unk_2783A92D8;
  v4 = a1[2];
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  [v2 dismissAssistantViewInEverySceneIfNecessaryWithAnimation:1 completion:v5];
}

uint64_t __62__SBPPTRunner_SiriPPTSupport__assistantDidAppear_windowScene___block_invoke_3(uint64_t a1)
{
  v2 = +[SBAssistantController sharedInstance];
  [v2 removeObserver:*(a1 + 32)];

  v3 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"disappear" forTest:*(a1 + 40)];
  v4 = *v3;
  v5 = *(a1 + 40);

  return [v4 finishedTest:v5];
}

+ (BOOL)isFocusModeTest:(id)test
{
  v3 = isFocusModeTest__onceToken;
  testCopy = test;
  if (v3 != -1)
  {
    +[SBPPTRunner(FocusModePPTSupport) isFocusModeTest:];
  }

  v5 = [isFocusModeTest__focusModePPTTests containsObject:testCopy];

  return v5;
}

void __52__SBPPTRunner_FocusModePPTSupport__isFocusModeTest___block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"FocusMode";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = isFocusModeTest__focusModePPTTests;
  isFocusModeTest__focusModePPTTests = v2;
}

- (void)_runFocusModeTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  if ([nameCopy isEqualToString:@"FocusMode"])
  {
    [(SBPPTRunner *)self _runFocusModePresentTestWithName:nameCopy options:optionsCopy];
  }
}

- (void)_runFocusModePresentTestWithName:(id)name options:(id)options
{
  v11[5] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v6 = +[SBPPTOperation operationToTransitionToHomeScreen];
  v11[1] = v6;
  v7 = [SBPPTOperation operationToStartTest:nameCopy];
  v11[2] = v7;
  v8 = [SBPPTOperation operationToUpdateHomeScreenPagesForActiveFocusModeForTestWithName:nameCopy];
  v11[3] = v8;
  v9 = [SBPPTOperation operationToFinishTest:nameCopy];

  v11[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
  [SBPPTOperation enqueueOperations:v10];
}

+ (BOOL)isPageManagementTest:(id)test
{
  v3 = isPageManagementTest__onceToken;
  testCopy = test;
  if (v3 != -1)
  {
    +[SBPPTRunner(PageManagementPPTSupport) isPageManagementTest:];
  }

  v5 = [isPageManagementTest__pageManagementPPTTests containsObject:testCopy];

  return v5;
}

void __62__SBPPTRunner_PageManagementPPTSupport__isPageManagementTest___block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"PresentPageManagement";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = isPageManagementTest__pageManagementPPTTests;
  isPageManagementTest__pageManagementPPTTests = v2;
}

- (void)_runPageManagementTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  if ([nameCopy isEqualToString:@"PresentPageManagement"])
  {
    [(SBPPTRunner *)self _runPageManagementPresentTestWithName:nameCopy options:optionsCopy];
  }
}

- (void)_runPageManagementPresentTestWithName:(id)name options:(id)options
{
  v13[7] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v6 = +[SBPPTOperation operationToTransitionToHomeScreen];
  v13[1] = v6;
  v7 = [SBPPTOperation operationToStartTest:nameCopy];
  v13[2] = v7;
  v8 = [SBPPTOperation operationToPresentPageManagementForTestWithName:nameCopy];
  v13[3] = v8;
  v9 = [SBPPTOperation operationToWaitForTimeInterval:2.0];
  v13[4] = v9;
  v10 = [SBPPTOperation operationToDismissPageManagementForTestWithName:nameCopy];
  v13[5] = v10;
  v11 = [SBPPTOperation operationToFinishTest:nameCopy];

  v13[6] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:7];
  [SBPPTOperation enqueueOperations:v12];
}

- (BOOL)_runCoverSheetTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  if ([nameCopy isEqualToString:@"CoverSheetPresent"])
  {
    [(SBPPTRunner *)self _runCoverSheetPresentTestWithOptions:optionsCopy];
  }

  else if ([nameCopy isEqualToString:@"CoverSheetPresentOverSafari"])
  {
    [(SBPPTRunner *)self _runCoverSheetPresentOverSafariTestWithOptions:optionsCopy];
  }

  else if ([nameCopy isEqualToString:@"CoverSheetDismiss"])
  {
    [(SBPPTRunner *)self _runCoverSheetDismissTestWithOptions:optionsCopy];
  }

  else
  {
    if (![nameCopy isEqualToString:@"CoverSheetDismissToSafari"])
    {
      v8 = 0;
      goto LABEL_10;
    }

    [(SBPPTRunner *)self _runCoverSheetDismissToSafariTestWithOptions:optionsCopy];
  }

  v8 = 1;
LABEL_10:

  return v8;
}

- (void)_runCoverSheetPresentTestWithOptions:(id)options
{
  v11[4] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v11[0] = v5;
  v6 = +[SBPPTOperation operationToTransitionToHomeScreen];
  v11[1] = v6;
  v7 = [optionsCopy objectForKey:@"testName"];

  v8 = [(SBPPTRunner *)self _operationToPresentCoverSheetForTestWithName:v7];
  v11[2] = v8;
  v9 = +[SBPPTOperation operationToDismissCoverSheet];
  v11[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  [SBPPTOperation enqueueOperations:v10];
}

- (void)_runCoverSheetDismissTestWithOptions:(id)options
{
  v11[4] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v11[0] = v5;
  v6 = +[SBPPTOperation operationToTransitionToHomeScreen];
  v11[1] = v6;
  v7 = +[SBPPTOperation operationToPresentCoverSheet];
  v11[2] = v7;
  v8 = [optionsCopy objectForKey:@"testName"];

  v9 = [(SBPPTRunner *)self _operationToDismissCoverSheetForTestWithName:v8];
  v11[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  [SBPPTOperation enqueueOperations:v10];
}

- (void)_runCoverSheetPresentOverSafariTestWithOptions:(id)options
{
  v11[4] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v11[0] = v5;
  v6 = [SBPPTOperation operationToActivateApplicationWithBundleIdentifier:@"com.apple.mobilesafari"];
  v11[1] = v6;
  v7 = [optionsCopy objectForKey:@"testName"];

  v8 = [(SBPPTRunner *)self _operationToPresentCoverSheetForTestWithName:v7];
  v11[2] = v8;
  v9 = +[SBPPTOperation operationToDismissCoverSheet];
  v11[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  [SBPPTOperation enqueueOperations:v10];
}

- (void)_runCoverSheetDismissToSafariTestWithOptions:(id)options
{
  v11[4] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v11[0] = v5;
  v6 = [SBPPTOperation operationToActivateApplicationWithBundleIdentifier:@"com.apple.mobilesafari"];
  v11[1] = v6;
  v7 = +[SBPPTOperation operationToPresentCoverSheet];
  v11[2] = v7;
  v8 = [optionsCopy objectForKey:@"testName"];

  v9 = [(SBPPTRunner *)self _operationToDismissCoverSheetForTestWithName:v8];
  v11[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  [SBPPTOperation enqueueOperations:v10];
}

- (id)_operationToPresentCoverSheetForTestWithName:(id)name
{
  nameCopy = name;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SBPPTRunner_CoverSheetPPTs___operationToPresentCoverSheetForTestWithName___block_invoke;
  v8[3] = &unk_2783BC300;
  v8[4] = self;
  v9 = nameCopy;
  v5 = nameCopy;
  v6 = [SBPPTBlockOperation operationWithBlock:v8];

  return v6;
}

void __76__SBPPTRunner_CoverSheetPPTs___operationToPresentCoverSheetForTestWithName___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setCoverSheetPresentationManagerTransitionCallbacksForTestName:*(a1 + 40) operation:a2];
  v2 = SBPPTEventActionsToSwipeDownFromTopOfInterface();
  SBPPTSynthesizeEventsForEventActions(v2, 0);
}

- (id)_operationToDismissCoverSheetForTestWithName:(id)name
{
  nameCopy = name;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SBPPTRunner_CoverSheetPPTs___operationToDismissCoverSheetForTestWithName___block_invoke;
  v8[3] = &unk_2783BC300;
  v8[4] = self;
  v9 = nameCopy;
  v5 = nameCopy;
  v6 = [SBPPTBlockOperation operationWithBlock:v8];

  return v6;
}

void __76__SBPPTRunner_CoverSheetPPTs___operationToDismissCoverSheetForTestWithName___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setCoverSheetPresentationManagerTransitionCallbacksForTestName:*(a1 + 40) operation:a2];

  SBPPTSynthesizeEventsForCommandString(@"b h", 0);
}

- (void)_setCoverSheetPresentationManagerTransitionCallbacksForTestName:(id)name operation:(id)operation
{
  nameCopy = name;
  operationCopy = operation;
  v7 = +[SBCoverSheetPresentationManager sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __105__SBPPTRunner_CoverSheetPPTs___setCoverSheetPresentationManagerTransitionCallbacksForTestName_operation___block_invoke;
  v14[3] = &unk_2783A8C18;
  v8 = nameCopy;
  v15 = v8;
  [v7 setPpt_transitionBeginsCallback:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__SBPPTRunner_CoverSheetPPTs___setCoverSheetPresentationManagerTransitionCallbacksForTestName_operation___block_invoke_3;
  v11[3] = &unk_2783A92D8;
  v12 = v8;
  v13 = operationCopy;
  v9 = operationCopy;
  v10 = v8;
  [v7 setPpt_transitionEndsCallback:v11];
}

void __105__SBPPTRunner_CoverSheetPPTs___setCoverSheetPresentationManagerTransitionCallbacksForTestName_operation___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] startedTest:*(a1 + 32)];
  [*v2 startedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __105__SBPPTRunner_CoverSheetPPTs___setCoverSheetPresentationManagerTransitionCallbacksForTestName_operation___block_invoke_2;
  v4[3] = &unk_2783A8C18;
  v5 = *(a1 + 32);
  [v3 installCACommitCompletionBlock:v4];
}

uint64_t __105__SBPPTRunner_CoverSheetPPTs___setCoverSheetPresentationManagerTransitionCallbacksForTestName_operation___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"delay" forTest:*(a1 + 32)];
  v3 = *v2;
  v4 = *(a1 + 32);

  return [v3 startedSubTest:@"animation" forTest:v4];
}

uint64_t __105__SBPPTRunner_CoverSheetPPTs___setCoverSheetPresentationManagerTransitionCallbacksForTestName_operation___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"animation" forTest:*(a1 + 32)];
  [*v2 finishedTest:*(a1 + 32)];
  v3 = *(a1 + 40);

  return [v3 finish];
}

void __49__SBPPTRunner_PIPPPTs___operationToPutVideoInPIP__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SBWorkspace mainWorkspace];
  v4 = [v3 pipControllerForType:0];

  [v4 _startPictureInPictureTestActionForApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  [v2 finish];
}

void __55__SBPPTRunner_PIPPPTs___operationToRestoreVideoFromPIP__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SBWorkspace mainWorkspace];
  v4 = [v3 pipControllerForType:0];

  [v4 _restorePictureInPictureForTestForApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  [v2 finish];
}

void __44__SBPPTRunner_PIPPPTs___operationToStashPIP__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SBWorkspace mainWorkspace];
  v8 = [v3 pipControllerForType:0];

  v4 = [SBApp windowSceneManager];
  v5 = [v4 embeddedDisplayWindowScene];

  v6 = [v8 acquireStashAssertionForWindowScene:v5 withReason:1 identifier:@"SB-PPT-Testing"];
  v7 = _stashAssertion;
  _stashAssertion = v6;

  [v2 finish];
}

void __53__SBPPTRunner_PIPPPTs___operationToUnstashStashedPIP__block_invoke(uint64_t a1, void *a2)
{
  v2 = _stashAssertion;
  v4 = a2;
  [v2 invalidate];
  v3 = _stashAssertion;
  _stashAssertion = 0;

  [v4 finish];
}

- (void)_runPIPBasicRestoreTestWithOptions:(id)options
{
  v15[8] = *MEMORY[0x277D85DE8];
  v3 = [options objectForKey:@"testName"];
  v14 = +[SBPPTOperation operationToUnlockInterface];
  v15[0] = v14;
  v13 = [SBPPTOperation operationToActivateApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  v15[1] = v13;
  _operationToPutVideoInPIP = [objc_opt_class() _operationToPutVideoInPIP];
  v15[2] = _operationToPutVideoInPIP;
  v4 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsActive" object:0 timeout:10.0];
  v15[3] = v4;
  _operationToRestoreVideoFromPIP = [objc_opt_class() _operationToRestoreVideoFromPIP];
  v6 = [_operationToRestoreVideoFromPIP markStartedTest:v3];
  v15[4] = v6;
  v7 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsNoLongerActive" object:0 timeout:10.0];
  v8 = [v7 markFinishedTest:v3];
  v15[5] = v8;
  v9 = +[SBPPTOperation operationToTransitionToHomeScreen];
  v15[6] = v9;
  v10 = [SBPPTOperation operationToTerminateApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  v15[7] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:8];
  [SBPPTOperation enqueueOperations:v11];
}

- (void)_runPIPManualStashTestWithOptions:(id)options
{
  v16[9] = *MEMORY[0x277D85DE8];
  v12 = [options objectForKey:@"testName"];
  v15 = +[SBPPTOperation operationToUnlockInterface];
  v16[0] = v15;
  v14 = [SBPPTOperation operationToActivateApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  v16[1] = v14;
  _operationToPutVideoInPIP = [objc_opt_class() _operationToPutVideoInPIP];
  v16[2] = _operationToPutVideoInPIP;
  v3 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsActive" object:0 timeout:10.0];
  v16[3] = v3;
  _operationToStashPIP = [objc_opt_class() _operationToStashPIP];
  v5 = [_operationToStashPIP markStartedTest:v12];
  v16[4] = v5;
  v6 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsStashed" object:0 timeout:10.0];
  v7 = [v6 markFinishedTest:v12];
  v16[5] = v7;
  _operationToUnstashStashedPIP = [objc_opt_class() _operationToUnstashStashedPIP];
  v16[6] = _operationToUnstashStashedPIP;
  v9 = +[SBPPTOperation operationToTransitionToHomeScreen];
  v16[7] = v9;
  v10 = [SBPPTOperation operationToTerminateApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  v16[8] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:9];
  [SBPPTOperation enqueueOperations:v11];
}

- (void)_runPIPManualUnstashTestWithOptions:(id)options
{
  v18[10] = *MEMORY[0x277D85DE8];
  v3 = [options objectForKey:@"testName"];
  v17 = +[SBPPTOperation operationToUnlockInterface];
  v18[0] = v17;
  v16 = [SBPPTOperation operationToActivateApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  v18[1] = v16;
  _operationToPutVideoInPIP = [objc_opt_class() _operationToPutVideoInPIP];
  v18[2] = _operationToPutVideoInPIP;
  v14 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsActive" object:0 timeout:10.0];
  v18[3] = v14;
  _operationToStashPIP = [objc_opt_class() _operationToStashPIP];
  v18[4] = _operationToStashPIP;
  v5 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsStashed" object:0 timeout:10.0];
  v18[5] = v5;
  _operationToUnstashStashedPIP = [objc_opt_class() _operationToUnstashStashedPIP];
  v13 = v3;
  v7 = [_operationToUnstashStashedPIP markStartedTest:v3];
  v18[6] = v7;
  v8 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsNoLongerStashed" object:0 timeout:10.0];
  v9 = [v8 markFinishedTest:v3];
  v18[7] = v9;
  v10 = +[SBPPTOperation operationToTransitionToHomeScreen];
  v18[8] = v10;
  v11 = [SBPPTOperation operationToTerminateApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  v18[9] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:10];
  [SBPPTOperation enqueueOperations:v12];
}

- (void)_runPIPAutoStashByEnteringSwitcherTestWithOptions:(id)options
{
  v16[8] = *MEMORY[0x277D85DE8];
  v3 = [options objectForKey:@"testName"];
  v15 = +[SBPPTOperation operationToUnlockInterface];
  v16[0] = v15;
  v14 = [SBPPTOperation operationToActivateApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  v16[1] = v14;
  _operationToPutVideoInPIP = [objc_opt_class() _operationToPutVideoInPIP];
  v16[2] = _operationToPutVideoInPIP;
  v4 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsActive" object:0 timeout:10.0];
  v16[3] = v4;
  v5 = +[SBPPTOperation operationToPresentAppSwitcher];
  v12 = v3;
  v6 = [v5 markStartedTest:v3];
  v16[4] = v6;
  v7 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsStashed" object:0 timeout:10.0];
  v8 = [v7 markFinishedTest:v3];
  v16[5] = v8;
  v9 = +[SBPPTOperation operationToTransitionToHomeScreen];
  v16[6] = v9;
  v10 = [SBPPTOperation operationToTerminateApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  v16[7] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:8];
  [SBPPTOperation enqueueOperations:v11];
}

- (void)_runPIPAutoUnstashAndRestoreByExitingSwitcherBackToAppTestWithOptions:(id)options
{
  v19[11] = *MEMORY[0x277D85DE8];
  v3 = [options objectForKey:@"testName"];
  v18 = +[SBPPTOperation operationToUnlockInterface];
  v19[0] = v18;
  v17 = [SBPPTOperation operationToActivateApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  v19[1] = v17;
  _operationToPutVideoInPIP = [objc_opt_class() _operationToPutVideoInPIP];
  v19[2] = _operationToPutVideoInPIP;
  v15 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsActive" object:0 timeout:10.0];
  v19[3] = v15;
  v4 = +[SBPPTOperation operationToPresentAppSwitcher];
  v19[4] = v4;
  v5 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsStashed" object:0 timeout:10.0];
  v19[5] = v5;
  v6 = [SBPPTOperation operationToWaitForTimeInterval:1.0];
  v19[6] = v6;
  v7 = +[SBPPTOperation operationToDismissAppSwitcherAndReturnToSource];
  v14 = v3;
  v8 = [v7 markStartedTest:v3];
  v19[7] = v8;
  v9 = [SBPPTOperation operationToWaitForNotificationName:@"SBApplicationTestingPIPIsNoLongerActive" object:0 timeout:10.0];
  v10 = [v9 markFinishedTest:v3];
  v19[8] = v10;
  v11 = +[SBPPTOperation operationToTransitionToHomeScreen];
  v19[9] = v11;
  v12 = [SBPPTOperation operationToTerminateApplicationWithBundleIdentifier:@"com.apple.test.FullscreenVideoPlayer"];
  v19[10] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:11];
  [SBPPTOperation enqueueOperations:v13];
}

+ (BOOL)isAppLibraryTest:(id)test
{
  v3 = isAppLibraryTest__onceToken;
  testCopy = test;
  if (v3 != -1)
  {
    +[SBPPTRunner(AppLibraryPPTSupport) isAppLibraryTest:];
  }

  v5 = [isAppLibraryTest__appLibraryTests containsObject:testCopy];

  return v5;
}

void __54__SBPPTRunner_AppLibraryPPTSupport__isAppLibraryTest___block_invoke()
{
  v4[7] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"SwipeToDewey";
  v4[1] = @"SwipeFromDewey";
  v4[2] = @"ScrollDewey";
  v4[3] = @"ScrollDeweyLibrarySearch";
  v4[4] = @"ScrollDeweyWithinExpandedPod";
  v4[5] = @"DeweyPullToLibrarySearch";
  v4[6] = @"PresentAppLibraryPad";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:7];
  v2 = [v0 setWithArray:v1];
  v3 = isAppLibraryTest__appLibraryTests;
  isAppLibraryTest__appLibraryTests = v2;
}

- (void)_runAppLibraryTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  if ([nameCopy isEqualToString:@"SwipeToDewey"])
  {
    [(SBPPTRunner *)self _runSwipeToDeweyTestWithOptions:optionsCopy];
  }

  else if ([nameCopy isEqualToString:@"SwipeFromDewey"])
  {
    [(SBPPTRunner *)self _runSwipeFromDeweyTestWithOptions:optionsCopy];
  }

  else if ([nameCopy isEqualToString:@"ScrollDewey"])
  {
    [(SBPPTRunner *)self _runScrollDeweyTestWithOptions:optionsCopy];
  }

  else if ([nameCopy isEqualToString:@"ScrollDeweyLibrarySearch"])
  {
    [(SBPPTRunner *)self _runLibrarySearchTestWithOptions:optionsCopy];
  }

  else if ([nameCopy isEqualToString:@"ScrollDeweyWithinExpandedPod"])
  {
    [(SBPPTRunner *)self _runScrollWithinExpandedPodTestWithOptions:optionsCopy];
  }

  else if ([nameCopy isEqualToString:@"DeweyPullToLibrarySearch"])
  {
    [(SBPPTRunner *)self _runPullToAppLibrarySearchTestWithOptions:optionsCopy];
  }

  else if ([nameCopy isEqualToString:@"PresentAppLibraryPad"])
  {
    [(SBPPTRunner *)self _runAppLibraryPadPresentTestWithOptions:optionsCopy];
  }
}

- (void)_runAppLibraryPadPresentTestWithOptions:(id)options
{
  v12[7] = *MEMORY[0x277D85DE8];
  v3 = [options objectForKey:@"testName"];
  v4 = +[SBPPTOperation operationToUnlockInterface];
  v5 = [SBPPTOperation dismissOverlaysAndResetHomeScreenToLastIconPageAnimated:1, v4];
  v12[1] = v5;
  v6 = [SBPPTOperation operationToStartTest:v3];
  v12[2] = v6;
  v7 = [SBPPTOperation presentAppLibrary:1 forTestWithName:v3];
  v12[3] = v7;
  v8 = [SBPPTOperation dismissAppLibraryPad:1 forTestWithName:v3];
  v12[4] = v8;
  v9 = [SBPPTOperation operationToFinishTest:v3];
  v12[5] = v9;
  v10 = +[SBPPTOperation resetAndPrepareforNextTest];
  v12[6] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:7];
  [SBPPTOperation enqueueOperations:v11];
}

- (void)_runSwipeToDeweyTestWithOptions:(id)options
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = [options objectForKey:@"testName"];
  v4 = +[SBPPTOperation operationToUnlockInterface];
  v11[0] = v4;
  v5 = [SBPPTOperation dismissOverlaysAndResetHomeScreenToLastIconPageAnimated:1];
  v11[1] = v5;
  v6 = [SBPPTOperation operationToStartTest:v3];
  v11[2] = v6;
  v7 = [SBPPTOperation presentAppLibraryPhoneForTestWithName:v3];
  v11[3] = v7;
  v8 = [SBPPTOperation operationToFinishTest:v3];
  v11[4] = v8;
  v9 = +[SBPPTOperation resetAndPrepareforNextTest];
  v11[5] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:6];
  [SBPPTOperation enqueueOperations:v10];
}

- (void)_runSwipeFromDeweyTestWithOptions:(id)options
{
  v12[7] = *MEMORY[0x277D85DE8];
  v3 = [options objectForKey:@"testName"];
  v4 = +[SBPPTOperation operationToUnlockInterface];
  v5 = [SBPPTOperation dismissOverlaysAndResetHomeScreenToLastIconPageAnimated:1, v4];
  v12[1] = v5;
  v6 = [SBPPTOperation presentAppLibraryForTestWithName:v3];
  v12[2] = v6;
  v7 = [SBPPTOperation operationToStartTest:v3];
  v12[3] = v7;
  v8 = +[SBPPTOperation dismissAppLibraryOverlay];
  v12[4] = v8;
  v9 = [SBPPTOperation operationToFinishTest:v3];
  v12[5] = v9;
  v10 = +[SBPPTOperation resetAndPrepareforNextTest];
  v12[6] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:7];
  [SBPPTOperation enqueueOperations:v11];
}

- (void)_runScrollDeweyTestWithOptions:(id)options
{
  v20[7] = *MEMORY[0x277D85DE8];
  v4 = [options objectForKey:@"testName"];
  v5 = +[SBPPTOperation operationToUnlockInterface];
  v20[0] = v5;
  v6 = [SBPPTOperation dismissOverlaysAndResetHomeScreenToLastIconPageAnimated:1];
  v20[1] = v6;
  v7 = +[SBPPTOperation configureAppLibraryForEachAppHavingOwnPod];
  v20[2] = v7;
  v8 = [SBPPTOperation presentAppLibraryForTestWithName:v4];
  v20[3] = v8;
  v9 = +[SBPPTOperation resetAppLibraryToTop];
  v20[4] = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __68__SBPPTRunner_AppLibraryPPTSupport___runScrollDeweyTestWithOptions___block_invoke;
  v17 = &unk_2783C46F8;
  selfCopy = self;
  v19 = v4;
  v10 = v4;
  v11 = [SBPPTRecapPerformanceTestingOperation scrollViewRecapPerformanceTestOperationWithBlock:&v14];
  v20[5] = v11;
  v12 = [(SBPPTOperation *)SBPPTBlockOperation resetAndPrepareforNextTest:v14];
  v20[6] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:7];
  [SBPPTOperation enqueueOperations:v13];
}

id __68__SBPPTRunner_AppLibraryPPTSupport___runScrollDeweyTestWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _libraryViewController];
  v3 = [v2 containerViewController];
  [v3 ppt_setDisablePullToSearch:1];

  v4 = [v2 podFolderViewController];
  v5 = [v4 contentScrollView];

  [v5 _scrollToTopIfPossible:0];
  v6 = objc_alloc(MEMORY[0x277D44360]);
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__SBPPTRunner_AppLibraryPPTSupport___runScrollDeweyTestWithOptions___block_invoke_2;
  v11[3] = &unk_2783A8C18;
  v12 = v2;
  v8 = v2;
  v9 = [v6 initWithTestName:v7 scrollView:v5 completionHandler:v11];
  [*(a1 + 32) _configureParams:v9 forScrollView:v5];

  return v9;
}

void __68__SBPPTRunner_AppLibraryPPTSupport___runScrollDeweyTestWithOptions___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) containerViewController];
  [v1 ppt_setDisablePullToSearch:0];
}

- (void)_runLibrarySearchTestWithOptions:(id)options
{
  v21[8] = *MEMORY[0x277D85DE8];
  v4 = [options objectForKey:@"testName"];
  _mainDisplayWindowScene = [(SBPPTRunner *)self _mainDisplayWindowScene];
  homeScreenController = [_mainDisplayWindowScene homeScreenController];
  iconManager = [homeScreenController iconManager];

  rootFolderController = [iconManager rootFolderController];
  v7 = +[SBPPTOperation operationToUnlockInterface];
  v21[0] = v7;
  v8 = +[SBPPTOperation dismissOverlaysAndResetHomeScreenToPage:animated:completion:](SBPPTOperation, "dismissOverlaysAndResetHomeScreenToPage:animated:completion:", [rootFolderController lastIconPageIndex], 1, 0);
  v21[1] = v8;
  v9 = [SBPPTOperation presentAppLibraryForTestWithName:v4];
  v21[2] = v9;
  v10 = +[SBPPTOperation presentAppLibrarySearchByTappingSearchField];
  v21[3] = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__SBPPTRunner_AppLibraryPPTSupport___runLibrarySearchTestWithOptions___block_invoke;
  v19[3] = &unk_2783C46F8;
  v19[4] = self;
  v20 = v4;
  v16 = v4;
  v11 = [SBPPTRecapPerformanceTestingOperation scrollViewRecapPerformanceTestOperationWithBlock:v19];
  v21[4] = v11;
  v12 = [SBPPTOperation operationToWaitForTimeInterval:1.0];
  v21[5] = v12;
  v13 = +[(SBPPTOperation *)SBPPTBlockOperation];
  v21[6] = v13;
  v14 = +[SBPPTOperation resetAndPrepareforNextTest];
  v21[7] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:8];
  [SBPPTOperation enqueueOperations:v15];
}

id __70__SBPPTRunner_AppLibraryPPTSupport___runLibrarySearchTestWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _libraryViewController];
  v3 = [v2 contentScrollView];
  [v3 _scrollToTopIfPossible:0];
  v4 = [objc_alloc(MEMORY[0x277D44360]) initWithTestName:*(a1 + 40) scrollView:v3 completionHandler:0];
  [*(a1 + 32) _configureParams:v4 forScrollView:v3];

  return v4;
}

- (void)_runScrollWithinExpandedPodTestWithOptions:(id)options
{
  v23[10] = *MEMORY[0x277D85DE8];
  v4 = [options objectForKey:@"testName"];
  v20 = +[SBPPTOperation operationToUnlockInterface];
  v23[0] = v20;
  v19 = [SBPPTOperation dismissOverlaysAndResetHomeScreenToLastIconPageAnimated:0];
  v23[1] = v19;
  v18 = +[SBPPTOperation configureAppLibraryForAllAppsInOnePod];
  v23[2] = v18;
  v17 = [SBPPTOperation presentAppLibraryForTestWithName:v4];
  v23[3] = v17;
  v16 = [SBPPTOperation operationToStartTest:v4];
  v23[4] = v16;
  v15 = +[SBPPTOperation appLibraryExpandFirstPod];
  v5 = [v15 markStartSubTest:@"ExpandPod" forTestName:v4];
  v6 = [v5 markFinishedSubTest:@"ExpandPod" forTestName:v4];
  v23[5] = v6;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__SBPPTRunner_AppLibraryPPTSupport___runScrollWithinExpandedPodTestWithOptions___block_invoke;
  v21[3] = &unk_2783C46F8;
  v21[4] = self;
  v22 = v4;
  v7 = v4;
  v8 = [SBPPTRecapPerformanceTestingOperation scrollViewRecapPerformanceTestOperationWithBlock:v21];
  v23[6] = v8;
  v9 = +[SBPPTOperation appLibraryDismissExpandedPod];
  v10 = [v9 markStartSubTest:@"CollapsePod" forTestName:v7];
  v11 = [v10 markFinishedSubTest:@"CollapsePod" forTestName:v7];
  v23[7] = v11;
  v12 = [SBPPTOperation operationToFinishTest:v7];
  v23[8] = v12;
  v13 = +[(SBPPTOperation *)SBPPTBlockOperation];
  v23[9] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:10];
  [SBPPTOperation enqueueOperations:v14];
}

id __80__SBPPTRunner_AppLibraryPPTSupport___runScrollWithinExpandedPodTestWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _libraryViewController];
  v3 = [v2 contentScrollView];
  [v3 _scrollToTopIfPossible:0];
  [*MEMORY[0x277D76620] startedSubTest:@"ScrollDeweyExpandedPod" forTest:*(a1 + 40)];
  v4 = objc_alloc(MEMORY[0x277D44360]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__SBPPTRunner_AppLibraryPPTSupport___runScrollWithinExpandedPodTestWithOptions___block_invoke_2;
  v7[3] = &unk_2783A8C18;
  v8 = *(a1 + 40);
  v5 = [v4 initWithTestName:0 scrollView:v3 completionHandler:v7];
  [*(a1 + 32) _configureParams:v5 forScrollView:v3];

  return v5;
}

- (void)_runPullToAppLibrarySearchTestWithOptions:(id)options
{
  v14[9] = *MEMORY[0x277D85DE8];
  v3 = [options objectForKey:@"testName"];
  v13 = +[SBPPTOperation operationToUnlockInterface];
  v14[0] = v13;
  v12 = [SBPPTOperation dismissOverlaysAndResetHomeScreenToLastIconPageAnimated:1];
  v14[1] = v12;
  v4 = [SBPPTOperation presentAppLibraryForTestWithName:v3];
  v14[2] = v4;
  v5 = +[SBPPTOperation resetAppLibraryToTop];
  v14[3] = v5;
  v6 = [SBPPTOperation operationToStartTest:v3];
  v14[4] = v6;
  v7 = +[SBPPTOperation pullToAppLibrarySearch];
  v14[5] = v7;
  v8 = +[SBPPTOperation dismissAppLibrarySearch];
  v14[6] = v8;
  v9 = [SBPPTOperation operationToFinishTest:v3];
  v14[7] = v9;
  v10 = +[(SBPPTOperation *)SBPPTBlockOperation];
  v14[8] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:9];
  [SBPPTOperation enqueueOperations:v11];
}

- (void)_configureParams:(id)params forScrollView:(id)view
{
  paramsCopy = params;
  viewCopy = view;
  [paramsCopy setPreventSheetDismissal:1];
  RPTAmplitudeFromPagesOfView();
  [paramsCopy setAmplitude:?];
  _libraryViewController = [(SBPPTRunner *)self _libraryViewController];
  window = [viewCopy window];

  [window bounds];
  containerViewController = [_libraryViewController containerViewController];
  searchBar = [containerViewController searchBar];
  [searchBar frame];
  CGRectGetMaxY(v27);
  UIRectInset();

  UIRectInset();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    UIRectInset();
    v12 = v21;
    v14 = v22;
    v16 = v23;
    v18 = v24;
  }

  [paramsCopy setScrollingBounds:{v12, v14, v16, v18}];
}

- (id)_mainDisplayWindowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];
  v4 = [connectedWindowScenes bs_firstObjectPassingTest:&__block_literal_global_61_7];

  return v4;
}

- (id)_libraryViewController
{
  _mainDisplayWindowScene = [(SBPPTRunner *)self _mainDisplayWindowScene];
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

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SBPPTRunner_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance___once_12 != -1)
  {
    dispatch_once(&sharedInstance___once_12, block);
  }

  v2 = sharedInstance___sharedInstance_31;

  return v2;
}

void __29__SBPPTRunner_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance_31;
  sharedInstance___sharedInstance_31 = v1;
}

- (BOOL)runTestWithName:(id)name options:(id)options
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  optionsCopy = options;
  v8 = SBLogPPT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = nameCopy;
    v19 = 2112;
    v20 = optionsCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBPPTRunner runTestWithName:%@]", buf, 0x16u);
  }

  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
  controlCenterController = [embeddedDisplayWindowScene controlCenterController];

  viewController = [controlCenterController viewController];
  LOBYTE(embeddedDisplayWindowScene) = [viewController runTest:nameCopy options:optionsCopy delegate:self];

  if ((embeddedDisplayWindowScene & 1) == 0 && ![(SBPPTRunner *)self _runCoverSheetTestWithName:nameCopy options:optionsCopy]&& ![(SBPPTRunner *)self _runDashBoardTestWithName:nameCopy options:optionsCopy])
  {
    if ([nameCopy hasPrefix:@"Siri"])
    {
      [(SBPPTRunner *)self _runSiriTestWithName:nameCopy options:optionsCopy];
    }

    else if ([objc_opt_class() isAppLibraryTest:nameCopy])
    {
      [(SBPPTRunner *)self _runAppLibraryTestWithName:nameCopy options:optionsCopy];
    }

    else if ([objc_opt_class() isFocusModeTest:nameCopy])
    {
      [(SBPPTRunner *)self _runFocusModeTestWithName:nameCopy options:optionsCopy];
    }

    else if ([objc_opt_class() isPageManagementTest:nameCopy])
    {
      [(SBPPTRunner *)self _runPageManagementTestWithName:nameCopy options:optionsCopy];
    }

    else
    {
      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"_run%@TestWithOptions:", nameCopy];
      v14 = NSSelectorFromString(nameCopy);

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v15 = 0;
        goto LABEL_17;
      }

      ([(SBPPTRunner *)self methodForSelector:v14])(self, v14, optionsCopy);
    }
  }

  v15 = 1;
LABEL_17:

  return v15;
}

@end