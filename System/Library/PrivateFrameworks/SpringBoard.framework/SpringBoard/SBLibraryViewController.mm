@interface SBLibraryViewController
- (BOOL)_canHandleKeyEvents;
- (BOOL)_canHandleKeyUIEvent:(id)a3;
- (BOOL)_isPresentationForegroundModal;
- (SBLibraryViewController)initWithCategoryMapProvider:(id)a3 windowScene:(id)a4;
- (SBWindowScene)windowScene;
- (id)_currentLayoutState;
- (id)_sbWindowScene;
- (id)keyboardHomeAffordanceAssertionForBarSwipeAffordanceControlling:(id)a3;
- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4;
- (void)_acquireUseSnapshotAsBackgroundViewAssertionIfNecessary;
- (void)_didActivateTypeAheadSearchWithPhysicalKeyboardEvent:(id)a3;
- (void)_evaluateAffordanceActivation;
- (void)_evaluateAsyncRenderingAssertion;
- (void)_evaluateFirstResponderStatus;
- (void)_handlePressesBegan:(id)a3;
- (void)_setExpandedPodDisplayLayoutElementActive:(BOOL)a3;
- (void)_setStatusBarSettingsAssertionActive:(BOOL)a3 quickly:(BOOL)a4;
- (void)dealloc;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)libraryViewController:(id)a3 didDismissSearchController:(id)a4;
- (void)libraryViewController:(id)a3 didPresentSearchController:(id)a4;
- (void)libraryViewController:(id)a3 willDismissFolderController:(id)a4;
- (void)libraryViewController:(id)a3 willPresentFolderController:(id)a4;
- (void)libraryViewControllerDidDismiss:(id)a3;
- (void)libraryViewControllerDidPresent:(id)a3;
- (void)libraryViewControllerWillDismiss:(id)a3;
- (void)libraryViewControllerWillPresent:(id)a3;
- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setPresenter:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBLibraryViewController

- (id)_currentLayoutState
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained layoutStateProvider];
  v4 = [v3 layoutState];

  return v4;
}

- (void)_evaluateFirstResponderStatus
{
  if ([(SBLibraryViewController *)self bs_isAppearingOrAppeared]&& [(SBLibraryViewController *)self _isPresentationForegroundModal])
  {

    [(SBLibraryViewController *)self becomeFirstResponder];
  }

  else
  {

    [(SBLibraryViewController *)self resignFirstResponder];
  }
}

- (void)_evaluateAsyncRenderingAssertion
{
  v3 = [(SBLibraryViewController *)self _isPresentationForegroundModal];
  v4 = [(SBLibraryViewController *)self _currentLayoutState];
  v5 = [v4 unlockedEnvironmentMode];

  v6 = 1;
  if (v3 && v5 == 3)
  {
    v6 = [(SBLibraryViewController *)self isRotating];
  }

  v7 = [(SBLibraryViewController *)self asynchronousRenderingAssertion];
  v8 = [v7 isValid];

  if (v6 || (v8 & 1) != 0)
  {
    if ((v6 & v8) == 1)
    {
      v14 = SBLogAppLibrary();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[SBLibraryViewController] Updating async rendering assertion to: Relinquished", v16, 2u);
      }

      v15 = [(SBLibraryViewController *)self asynchronousRenderingAssertion];
      [v15 invalidate];

      [(SBLibraryViewController *)self setAsynchronousRenderingAssertion:0];
    }
  }

  else
  {
    v9 = SBLogAppLibrary();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[SBLibraryViewController] Updating async rendering assertion to: Acquired", buf, 2u);
    }

    v10 = [SBAsynchronousRenderingAssertion alloc];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(SBAsynchronousRenderingAssertion *)v10 initWithReason:v12];
    [(SBLibraryViewController *)self setAsynchronousRenderingAssertion:v13];
  }
}

- (void)_evaluateAffordanceActivation
{
  v3 = [(SBHLibraryViewController *)self barSwipeViewController];
  if (v3)
  {
    v12 = v3;
    v4 = [(SBHLibraryViewController *)self presenter];
    v5 = [v4 isLibraryPresentationModal];
    v6 = [(SBLibraryViewController *)self _currentLayoutState];
    v7 = [v6 unlockedEnvironmentMode];

    if (([(SBLibraryViewController *)self bs_isDisappearingOrDisappeared]& 1) != 0)
    {
LABEL_3:
      v8 = 0;
LABEL_12:
      [v12 setWantsToBeActiveAffordance:v8];

      v3 = v12;
      goto LABEL_13;
    }

    v9 = [v4 isPresentingLibraryInMostForegroundState:self];
    if (v5)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v8 = 0;
      if (!v9 || v7 != 1)
      {
        goto LABEL_12;
      }
    }

    v10 = [(SBHLibraryViewController *)self isPresentingFolder];
    v11 = [(SBHLibraryViewController *)self isPresentingSearch];
    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v8 = v11 | (v5 & (v7 != 1));
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)_isPresentationForegroundModal
{
  v2 = self;
  v3 = [(SBHLibraryViewController *)self presenter];
  v4 = [v3 isLibraryPresentationModal];
  LOBYTE(v2) = [v3 isPresentingLibraryInMostForegroundState:v2];

  return v4 & v2;
}

- (SBLibraryViewController)initWithCategoryMapProvider:(id)a3 windowScene:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = SBLibraryViewController;
  v7 = [(SBHLibraryViewController *)&v15 initWithCategoryMapProvider:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_windowScene, v6);
    v9 = [v6 layoutStateTransitionCoordinator];
    [v9 addObserver:v8];

    if (SBHomeGestureEnabled())
    {
      v10 = [[SBBarSwipeAffordanceViewController alloc] initWithZStackParticipantIdentifier:3 windowScene:v6];
      [(SBBarSwipeAffordanceViewController *)v10 setDelegate:v8];
      v11 = [(SBBarSwipeAffordanceViewController *)v10 view];
      [v11 setColorBias:2];
      [v11 setIgnoresLuminance:1];
      [v11 addObserver:v8];
      [v11 setDelegate:v8];
      [v11 setUserInteractionEnabled:0];
      [(SBHLibraryViewController *)v8 setBarSwipeViewController:v10];
    }

    v12 = [MEMORY[0x277CEB358] sharedInstance];
    loggingClient = v8->_loggingClient;
    v8->_loggingClient = v12;

    [(SBHLibraryViewController *)v8 addObserver:v8];
  }

  return v8;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
}

- (void)invalidate
{
  if (![(SBLibraryViewController *)self isInvalidated])
  {
    [(SBLibraryViewController *)self setInvalidated:1];
    v3 = [(SBLibraryViewController *)self windowScene];
    v4 = [v3 layoutStateTransitionCoordinator];
    [v4 removeObserver:self];

    v5 = [(SBLibraryViewController *)self expandedPodDisplayLayoutElementAssertion];
    [v5 invalidate];

    v6 = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];
    [v6 invalidate];

    v7 = [(SBLibraryViewController *)self asynchronousRenderingAssertion];
    [v7 invalidate];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(SBLibraryViewController *)self setRotating:1];
  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];
  v8 = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];
  [v8 invalidate];

  [(SBLibraryViewController *)self setUseSnapshotAsBackgroundViewAssertion:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__SBLibraryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_2783A9488;
  v10[4] = self;
  [v7 animateAlongsideTransition:0 completion:v10];
  v9.receiver = self;
  v9.super_class = SBLibraryViewController;
  [(SBHLibraryViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

uint64_t __78__SBLibraryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRotating:0];
  [*(a1 + 32) _evaluateAsyncRenderingAssertion];
  v2 = *MEMORY[0x277D76620];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__SBLibraryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v4[3] = &unk_2783A8C18;
  v4[4] = *(a1 + 32);
  return [v2 sb_performBlockAfterCATransactionSynchronizedCommit:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBLibraryViewController;
  v4 = a3;
  [(SBLibraryViewController *)&v12 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(SBLibraryViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    v8 = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];
    v9 = v8;
    if (v8)
    {
      [v8 invalidate];
      [(SBLibraryViewController *)self setUseSnapshotAsBackgroundViewAssertion:0];
      v10 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__SBLibraryViewController_traitCollectionDidChange___block_invoke;
      block[3] = &unk_2783A8C18;
      block[4] = self;
      dispatch_after(v10, MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)setPresenter:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBLibraryViewController;
  v5 = [(SBHLibraryViewController *)&v9 presenter];

  if (v5 != v4)
  {
    v8.receiver = self;
    v8.super_class = SBLibraryViewController;
    [(SBHLibraryViewController *)&v8 setPresenter:v4];
    v6 = [v4 isLibraryPresentationModal];
    v7 = [(SBHLibraryViewController *)self barSwipeViewController];
    [v7 setActivationPolicyForParticipantsBelow:v6];
  }
}

- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6
{
  v8.receiver = self;
  v8.super_class = SBLibraryViewController;
  [SBHLibraryViewController overlayController:sel_overlayController_didChangePresentationProgress_newPresentationProgress_fromLeading_ didChangePresentationProgress:a3 newPresentationProgress:a4 fromLeading:?];
  if (!a6)
  {
    [(SBLibraryViewController *)self _setStatusBarSettingsAssertionActive:BSFloatGreaterThanFloat() quickly:1];
  }
}

- (void)libraryViewController:(id)a3 willPresentFolderController:(id)a4
{
  [(SBLibraryViewController *)self _setExpandedPodDisplayLayoutElementActive:1, a4];

  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
}

- (void)libraryViewController:(id)a3 willDismissFolderController:(id)a4
{
  [(SBLibraryViewController *)self _setExpandedPodDisplayLayoutElementActive:0, a4];

  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
}

- (void)libraryViewControllerWillPresent:(id)a3
{
  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];
  [(SBLibraryViewController *)self _evaluateFirstResponderStatus];
  v4 = [(SBHLibraryViewController *)self presenter];
  v5 = [v4 isLibraryPresentationModal];

  if (v5)
  {

    [(SBLibraryViewController *)self _setStatusBarSettingsAssertionActive:1];
  }
}

- (void)libraryViewControllerDidPresent:(id)a3
{
  v4 = [(SBLibraryViewController *)self loggingClient];
  v5 = [MEMORY[0x277CBEAA8] now];
  [v4 logDidEnterAppDirectoryWithDate:v5];

  [(SBLibraryViewController *)self _acquireUseSnapshotAsBackgroundViewAssertionIfNecessary];

  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];
}

- (void)libraryViewControllerWillDismiss:(id)a3
{
  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];
  [(SBLibraryViewController *)self _evaluateFirstResponderStatus];
  v4 = [(SBHLibraryViewController *)self presenter];
  v5 = [v4 isLibraryPresentationModal];

  if (v5)
  {

    [(SBLibraryViewController *)self _setStatusBarSettingsAssertionActive:0];
  }
}

- (void)libraryViewControllerDidDismiss:(id)a3
{
  v4 = [(SBHLibraryViewController *)self libraryCategoryMap];
  v5 = [v4 metadata];
  v9 = [v5 objectForKey:*MEMORY[0x277D665B0]];

  v6 = [(SBLibraryViewController *)self loggingClient];
  v7 = [MEMORY[0x277CBEAA8] now];
  [v6 logDidLeaveAppDirectoryWithDate:v7 appDirectoryResponse:v9];

  v8 = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];
  [v8 invalidate];

  [(SBLibraryViewController *)self setUseSnapshotAsBackgroundViewAssertion:0];
  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];
}

- (void)libraryViewController:(id)a3 didPresentSearchController:(id)a4
{
  v5 = [(SBLibraryViewController *)self loggingClient:a3];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v5 logOpenSearchWithDate:v6];

  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
}

- (void)libraryViewController:(id)a3 didDismissSearchController:(id)a4
{
  v5 = [(SBLibraryViewController *)self loggingClient:a3];
  v4 = [MEMORY[0x277CBEAA8] now];
  [v5 logCloseSearchWithDate:v4];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  [(SBLibraryViewController *)self _evaluateAffordanceActivation:a3];
  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];

  [(SBLibraryViewController *)self _evaluateFirstResponderStatus];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v5 = [a4 toLayoutState];
  if ([v5 unlockedEnvironmentMode] == 1)
  {
    v6 = *MEMORY[0x277D76620];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __98__SBLibraryViewController_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke;
    v8[3] = &unk_2783A8C18;
    v8[4] = self;
    [v6 sb_performBlockAfterCATransactionSynchronizedCommit:v8];
  }

  else
  {
    v7 = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];
    [v7 invalidate];

    [(SBLibraryViewController *)self setUseSnapshotAsBackgroundViewAssertion:0];
  }

  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
}

- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4
{
  v4 = 55;
  if (a4 != 3)
  {
    v4 = 0;
  }

  if (a4 == 1)
  {
    return 54;
  }

  else
  {
    return v4;
  }
}

- (id)keyboardHomeAffordanceAssertionForBarSwipeAffordanceControlling:(id)a3
{
  if (![MEMORY[0x277D75658] usesInputSystemUI])
  {
    goto LABEL_5;
  }

  v4 = [(SBHLibraryViewController *)self barSwipeViewController];
  if (![v4 wantsToBeActiveAffordance])
  {
    v7 = 0;
    goto LABEL_7;
  }

  v5 = [(SBLibraryViewController *)self isViewLoaded];

  if (!v5)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_8;
  }

  v4 = [(SBLibraryViewController *)self view];
  v6 = [v4 window];
  v7 = [SBKeyboardHomeAffordanceAssertion assertionForGestureWindow:v6];

LABEL_7:
LABEL_8:

  return v7;
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v5 = a4;
  v6 = [(SBHLibraryViewController *)self barSwipeViewController];
  [v5 setActivationPolicyForParticipantsBelow:{objc_msgSend(v6, "activationPolicyForParticipantsBelow")}];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBLibraryViewController;
  v6 = a4;
  [(SBLibraryViewController *)&v7 pressesBegan:a3 withEvent:v6];
  [(SBLibraryViewController *)self _handlePressesBegan:v6, v7.receiver, v7.super_class];
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBLibraryViewController;
  [(SBLibraryViewController *)&v4 pressesChanged:a3 withEvent:a4];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBLibraryViewController;
  [(SBLibraryViewController *)&v4 pressesEnded:a3 withEvent:a4];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBLibraryViewController;
  [(SBLibraryViewController *)&v4 pressesCancelled:a3 withEvent:a4];
}

- (void)_handlePressesBegan:(id)a3
{
  v4 = a3;
  if ([(SBLibraryViewController *)self _canHandleKeyEvents]&& [(SBLibraryViewController *)self _canHandleKeyUIEvent:v4])
  {
    v5 = [(SBHLibraryViewController *)self containerViewController];
    if (([v5 isActive] & 1) == 0)
    {
      v6 = SBLogAppLibrary();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Activating type-ahead search in App Library due to key input event", v10, 2u);
      }

      v7 = [(SBLibraryViewController *)self view];
      v8 = [v7 window];

      if (([v8 isKeyWindow] & 1) == 0)
      {
        [v8 makeKeyWindow];
      }

      v9 = [v5 searchResultsController];
      [v9 setDisablesNullQueryExecution:1];
      [v5 setActive:1];
      [v9 setDisablesNullQueryExecution:0];
      [(SBLibraryViewController *)self _didActivateTypeAheadSearchWithPhysicalKeyboardEvent:v4];
    }
  }
}

- (BOOL)_canHandleKeyEvents
{
  v3 = [(SBLibraryViewController *)self isViewLoaded];
  if (v3)
  {
    v4 = [(SBLibraryViewController *)self viewIfLoaded];
    if ([v4 isHidden])
    {

LABEL_8:
      LOBYTE(v3) = 0;
      return v3;
    }

    v5 = [(SBLibraryViewController *)self bs_isDisappearingOrDisappeared];

    if (v5)
    {
      goto LABEL_8;
    }

    v6 = [(SBHLibraryViewController *)self contentVisibility];
    if (v6 != 3)
    {
      if (v6)
      {
        goto LABEL_8;
      }
    }

    if ([(SBHLibraryViewController *)self isPresentingSearch])
    {
      goto LABEL_8;
    }

    LOBYTE(v3) = ![(SBHLibraryViewController *)self isPresentingFolder];
  }

  return v3;
}

- (BOOL)_canHandleKeyUIEvent:(id)a3
{
  v3 = a3;
  if ([v3 type] == 4 && objc_msgSend(v3, "_isKeyDown") && !objc_msgSend(v3, "modifierFlags") && (objc_msgSend(v3, "_unmodifiedInput"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "stringByTrimmingCharactersInSet:", v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v6, v9))
  {
    if (_canHandleKeyUIEvent__onceToken != -1)
    {
      [SBLibraryViewController _canHandleKeyUIEvent:];
    }

    v10 = _canHandleKeyUIEvent__keyInputsToIgnore;
    v11 = [v3 _unmodifiedInput];
    v4 = [v10 containsObject:v11] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

void __48__SBLibraryViewController__canHandleKeyUIEvent___block_invoke()
{
  v13[23] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D76AC0];
  v13[0] = *MEMORY[0x277D76B68];
  v13[1] = v0;
  v1 = *MEMORY[0x277D76B60];
  v13[2] = *MEMORY[0x277D76B48];
  v13[3] = v1;
  v2 = *MEMORY[0x277D76B58];
  v13[4] = *MEMORY[0x277D76AD8];
  v13[5] = v2;
  v3 = *MEMORY[0x277D76B40];
  v13[6] = *MEMORY[0x277D76B50];
  v13[7] = v3;
  v4 = *MEMORY[0x277D76AE0];
  v13[8] = *MEMORY[0x277D76AD0];
  v13[9] = v4;
  v5 = *MEMORY[0x277D76B00];
  v13[10] = v4;
  v13[11] = v5;
  v6 = *MEMORY[0x277D76B10];
  v13[12] = *MEMORY[0x277D76B08];
  v13[13] = v6;
  v7 = *MEMORY[0x277D76B20];
  v13[14] = *MEMORY[0x277D76B18];
  v13[15] = v7;
  v8 = *MEMORY[0x277D76B30];
  v13[16] = *MEMORY[0x277D76B28];
  v13[17] = v8;
  v9 = *MEMORY[0x277D76AE8];
  v13[18] = *MEMORY[0x277D76B38];
  v13[19] = v9;
  v10 = *MEMORY[0x277D76AF8];
  v13[20] = *MEMORY[0x277D76AF0];
  v13[21] = v10;
  v13[22] = *MEMORY[0x277D76AB8];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:23];
  v12 = _canHandleKeyUIEvent__keyInputsToIgnore;
  _canHandleKeyUIEvent__keyInputsToIgnore = v11;
}

- (void)_didActivateTypeAheadSearchWithPhysicalKeyboardEvent:(id)a3
{
  v3 = [a3 _cloneEvent];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB88] mainRunLoop];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __80__SBLibraryViewController__didActivateTypeAheadSearchWithPhysicalKeyboardEvent___block_invoke;
    v5[3] = &unk_2783A8C18;
    v6 = v3;
    [v4 performBlock:v5];
  }
}

void __80__SBLibraryViewController__didActivateTypeAheadSearchWithPhysicalKeyboardEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75678] activeInstance];
  [v2 performDelete];
  [v2 handleKeyEvent:*(a1 + 32)];
}

- (void)_setExpandedPodDisplayLayoutElementActive:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBLibraryViewController *)self expandedPodDisplayLayoutElementAssertion];
  if (v3 && !v5)
  {
    v17 = 0;
    v6 = objc_alloc(MEMORY[0x277D66A50]);
    v7 = [v6 initWithIdentifier:*MEMORY[0x277D66F08]];
    [v7 setFillsDisplayBounds:1];
    [v7 setLayoutRole:6];
    v8 = [(SBLibraryViewController *)self view];
    v9 = [v8 window];
    [v9 level];
    v11 = v10;
    v12 = v10;

    if (*MEMORY[0x277D772B0] + -2.0 >= v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    [v7 setLevel:v13];
    v14 = [(SBLibraryViewController *)self _sbWindowScene];
    v15 = [v14 displayLayoutPublisher];
    v16 = [v15 addElement:v7];

    [(SBLibraryViewController *)self setExpandedPodDisplayLayoutElementAssertion:v16];
    goto LABEL_10;
  }

  if (!v3 && v5)
  {
    v17 = v5;
    [v5 invalidate];
    [(SBLibraryViewController *)self setExpandedPodDisplayLayoutElementAssertion:0];
LABEL_10:
    v5 = v17;
  }
}

- (void)_setStatusBarSettingsAssertionActive:(BOOL)a3 quickly:(BOOL)a4
{
  v5 = a3;
  v7 = [(SBLibraryViewController *)self statusBarSettingsAssertion];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__SBLibraryViewController__setStatusBarSettingsAssertionActive_quickly___block_invoke;
  v19[3] = &__block_descriptor_33_e42___UIStatusBarStyleAnimationParameters_8__0l;
  v20 = a4;
  v8 = MEMORY[0x223D6F7F0](v19);
  v9 = v8;
  if (!v5 || v7)
  {
    if (!v5 && v7)
    {
      v18 = (*(v8 + 16))(v8);
      [v7 invalidateWithAnimationParameters:v18];

      [(SBLibraryViewController *)self setStatusBarSettingsAssertion:0];
    }
  }

  else
  {
    v10 = [(SBLibraryViewController *)self _sbWindowScene];
    v11 = [v10 statusBarManager];
    v12 = [v11 assertionManager];

    v13 = objc_alloc_init(SBMutableStatusBarSettings);
    v14 = [(SBHLibraryViewController *)self effectiveLegibilitySettings];
    v15 = SBUIDeriveUILegibilitySettings();
    [(SBMutableStatusBarSettings *)v13 setLegibilitySettings:v15];

    v16 = [v12 newSettingsAssertionWithSettings:v13 atLevel:3 reason:@"App Library"];
    v17 = v9[2](v9);
    [v16 acquireWithAnimationParameters:v17];

    [(SBLibraryViewController *)self setStatusBarSettingsAssertion:v16];
  }
}

id __72__SBLibraryViewController__setStatusBarSettingsAssertionActive_quickly___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  v3 = v2;
  if (*(a1 + 32) == 1)
  {
    [v2 duration];
    [v3 setDuration:v4 * 0.6];
  }

  return v3;
}

- (void)_acquireUseSnapshotAsBackgroundViewAssertionIfNecessary
{
  v3 = [(SBLibraryViewController *)self _currentLayoutState];
  v4 = [v3 unlockedEnvironmentMode];

  if ([(SBLibraryViewController *)self _appearState]== 2 && ![(SBLibraryViewController *)self isRotating]&& v4 == 1)
  {
    v5 = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];

    if (!v5)
    {
      v6 = [(SBHLibraryViewController *)self presenter];
      v7 = [v6 acquireUseSnapshotAsBackgroundViewAssertionForReason:@"SBLibraryViewControllerSnapshotBackgroundViewReason"];

      [(SBLibraryViewController *)self setUseSnapshotAsBackgroundViewAssertion:v7];
    }
  }
}

- (id)_sbWindowScene
{
  v3 = [(SBLibraryViewController *)self windowScene];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBLibraryViewController;
    v5 = [(UIViewController *)&v8 _sbWindowScene];
  }

  v6 = v5;

  return v6;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end