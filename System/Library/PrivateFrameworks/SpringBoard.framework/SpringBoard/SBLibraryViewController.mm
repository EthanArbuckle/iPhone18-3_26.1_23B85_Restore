@interface SBLibraryViewController
- (BOOL)_canHandleKeyEvents;
- (BOOL)_canHandleKeyUIEvent:(id)event;
- (BOOL)_isPresentationForegroundModal;
- (SBLibraryViewController)initWithCategoryMapProvider:(id)provider windowScene:(id)scene;
- (SBWindowScene)windowScene;
- (id)_currentLayoutState;
- (id)_sbWindowScene;
- (id)keyboardHomeAffordanceAssertionForBarSwipeAffordanceControlling:(id)controlling;
- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type;
- (void)_acquireUseSnapshotAsBackgroundViewAssertionIfNecessary;
- (void)_didActivateTypeAheadSearchWithPhysicalKeyboardEvent:(id)event;
- (void)_evaluateAffordanceActivation;
- (void)_evaluateAsyncRenderingAssertion;
- (void)_evaluateFirstResponderStatus;
- (void)_handlePressesBegan:(id)began;
- (void)_setExpandedPodDisplayLayoutElementActive:(BOOL)active;
- (void)_setStatusBarSettingsAssertionActive:(BOOL)active quickly:(BOOL)quickly;
- (void)dealloc;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)libraryViewController:(id)controller didDismissSearchController:(id)searchController;
- (void)libraryViewController:(id)controller didPresentSearchController:(id)searchController;
- (void)libraryViewController:(id)controller willDismissFolderController:(id)folderController;
- (void)libraryViewController:(id)controller willPresentFolderController:(id)folderController;
- (void)libraryViewControllerDidDismiss:(id)dismiss;
- (void)libraryViewControllerDidPresent:(id)present;
- (void)libraryViewControllerWillDismiss:(id)dismiss;
- (void)libraryViewControllerWillPresent:(id)present;
- (void)overlayController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setPresenter:(id)presenter;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBLibraryViewController

- (id)_currentLayoutState
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  return layoutState;
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
  _isPresentationForegroundModal = [(SBLibraryViewController *)self _isPresentationForegroundModal];
  _currentLayoutState = [(SBLibraryViewController *)self _currentLayoutState];
  unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];

  isRotating = 1;
  if (_isPresentationForegroundModal && unlockedEnvironmentMode == 3)
  {
    isRotating = [(SBLibraryViewController *)self isRotating];
  }

  asynchronousRenderingAssertion = [(SBLibraryViewController *)self asynchronousRenderingAssertion];
  isValid = [asynchronousRenderingAssertion isValid];

  if (isRotating || (isValid & 1) != 0)
  {
    if ((isRotating & isValid) == 1)
    {
      v14 = SBLogAppLibrary();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[SBLibraryViewController] Updating async rendering assertion to: Relinquished", v16, 2u);
      }

      asynchronousRenderingAssertion2 = [(SBLibraryViewController *)self asynchronousRenderingAssertion];
      [asynchronousRenderingAssertion2 invalidate];

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
  barSwipeViewController = [(SBHLibraryViewController *)self barSwipeViewController];
  if (barSwipeViewController)
  {
    v12 = barSwipeViewController;
    presenter = [(SBHLibraryViewController *)self presenter];
    isLibraryPresentationModal = [presenter isLibraryPresentationModal];
    _currentLayoutState = [(SBLibraryViewController *)self _currentLayoutState];
    unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];

    if (([(SBLibraryViewController *)self bs_isDisappearingOrDisappeared]& 1) != 0)
    {
LABEL_3:
      v8 = 0;
LABEL_12:
      [v12 setWantsToBeActiveAffordance:v8];

      barSwipeViewController = v12;
      goto LABEL_13;
    }

    v9 = [presenter isPresentingLibraryInMostForegroundState:self];
    if (isLibraryPresentationModal)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v8 = 0;
      if (!v9 || unlockedEnvironmentMode != 1)
      {
        goto LABEL_12;
      }
    }

    isPresentingFolder = [(SBHLibraryViewController *)self isPresentingFolder];
    isPresentingSearch = [(SBHLibraryViewController *)self isPresentingSearch];
    if (isPresentingFolder)
    {
      v8 = 1;
    }

    else
    {
      v8 = isPresentingSearch | (isLibraryPresentationModal & (unlockedEnvironmentMode != 1));
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)_isPresentationForegroundModal
{
  selfCopy = self;
  presenter = [(SBHLibraryViewController *)self presenter];
  isLibraryPresentationModal = [presenter isLibraryPresentationModal];
  LOBYTE(selfCopy) = [presenter isPresentingLibraryInMostForegroundState:selfCopy];

  return isLibraryPresentationModal & selfCopy;
}

- (SBLibraryViewController)initWithCategoryMapProvider:(id)provider windowScene:(id)scene
{
  sceneCopy = scene;
  v15.receiver = self;
  v15.super_class = SBLibraryViewController;
  v7 = [(SBHLibraryViewController *)&v15 initWithCategoryMapProvider:provider];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_windowScene, sceneCopy);
    layoutStateTransitionCoordinator = [sceneCopy layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator addObserver:v8];

    if (SBHomeGestureEnabled())
    {
      v10 = [[SBBarSwipeAffordanceViewController alloc] initWithZStackParticipantIdentifier:3 windowScene:sceneCopy];
      [(SBBarSwipeAffordanceViewController *)v10 setDelegate:v8];
      view = [(SBBarSwipeAffordanceViewController *)v10 view];
      [view setColorBias:2];
      [view setIgnoresLuminance:1];
      [view addObserver:v8];
      [view setDelegate:v8];
      [view setUserInteractionEnabled:0];
      [(SBHLibraryViewController *)v8 setBarSwipeViewController:v10];
    }

    mEMORY[0x277CEB358] = [MEMORY[0x277CEB358] sharedInstance];
    loggingClient = v8->_loggingClient;
    v8->_loggingClient = mEMORY[0x277CEB358];

    [(SBHLibraryViewController *)v8 addObserver:v8];
  }

  return v8;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
}

- (void)invalidate
{
  if (![(SBLibraryViewController *)self isInvalidated])
  {
    [(SBLibraryViewController *)self setInvalidated:1];
    windowScene = [(SBLibraryViewController *)self windowScene];
    layoutStateTransitionCoordinator = [windowScene layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator removeObserver:self];

    expandedPodDisplayLayoutElementAssertion = [(SBLibraryViewController *)self expandedPodDisplayLayoutElementAssertion];
    [expandedPodDisplayLayoutElementAssertion invalidate];

    useSnapshotAsBackgroundViewAssertion = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];
    [useSnapshotAsBackgroundViewAssertion invalidate];

    asynchronousRenderingAssertion = [(SBLibraryViewController *)self asynchronousRenderingAssertion];
    [asynchronousRenderingAssertion invalidate];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(SBLibraryViewController *)self setRotating:1];
  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];
  useSnapshotAsBackgroundViewAssertion = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];
  [useSnapshotAsBackgroundViewAssertion invalidate];

  [(SBLibraryViewController *)self setUseSnapshotAsBackgroundViewAssertion:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__SBLibraryViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_2783A9488;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v10];
  v9.receiver = self;
  v9.super_class = SBLibraryViewController;
  [(SBHLibraryViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = SBLibraryViewController;
  changeCopy = change;
  [(SBLibraryViewController *)&v12 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(SBLibraryViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    useSnapshotAsBackgroundViewAssertion = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];
    v9 = useSnapshotAsBackgroundViewAssertion;
    if (useSnapshotAsBackgroundViewAssertion)
    {
      [useSnapshotAsBackgroundViewAssertion invalidate];
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

- (void)setPresenter:(id)presenter
{
  presenterCopy = presenter;
  v9.receiver = self;
  v9.super_class = SBLibraryViewController;
  presenter = [(SBHLibraryViewController *)&v9 presenter];

  if (presenter != presenterCopy)
  {
    v8.receiver = self;
    v8.super_class = SBLibraryViewController;
    [(SBHLibraryViewController *)&v8 setPresenter:presenterCopy];
    isLibraryPresentationModal = [presenterCopy isLibraryPresentationModal];
    barSwipeViewController = [(SBHLibraryViewController *)self barSwipeViewController];
    [barSwipeViewController setActivationPolicyForParticipantsBelow:isLibraryPresentationModal];
  }
}

- (void)overlayController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading
{
  v8.receiver = self;
  v8.super_class = SBLibraryViewController;
  [SBHLibraryViewController overlayController:sel_overlayController_didChangePresentationProgress_newPresentationProgress_fromLeading_ didChangePresentationProgress:controller newPresentationProgress:progress fromLeading:?];
  if (!leading)
  {
    [(SBLibraryViewController *)self _setStatusBarSettingsAssertionActive:BSFloatGreaterThanFloat() quickly:1];
  }
}

- (void)libraryViewController:(id)controller willPresentFolderController:(id)folderController
{
  [(SBLibraryViewController *)self _setExpandedPodDisplayLayoutElementActive:1, folderController];

  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
}

- (void)libraryViewController:(id)controller willDismissFolderController:(id)folderController
{
  [(SBLibraryViewController *)self _setExpandedPodDisplayLayoutElementActive:0, folderController];

  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
}

- (void)libraryViewControllerWillPresent:(id)present
{
  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];
  [(SBLibraryViewController *)self _evaluateFirstResponderStatus];
  presenter = [(SBHLibraryViewController *)self presenter];
  isLibraryPresentationModal = [presenter isLibraryPresentationModal];

  if (isLibraryPresentationModal)
  {

    [(SBLibraryViewController *)self _setStatusBarSettingsAssertionActive:1];
  }
}

- (void)libraryViewControllerDidPresent:(id)present
{
  loggingClient = [(SBLibraryViewController *)self loggingClient];
  v5 = [MEMORY[0x277CBEAA8] now];
  [loggingClient logDidEnterAppDirectoryWithDate:v5];

  [(SBLibraryViewController *)self _acquireUseSnapshotAsBackgroundViewAssertionIfNecessary];

  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];
}

- (void)libraryViewControllerWillDismiss:(id)dismiss
{
  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];
  [(SBLibraryViewController *)self _evaluateFirstResponderStatus];
  presenter = [(SBHLibraryViewController *)self presenter];
  isLibraryPresentationModal = [presenter isLibraryPresentationModal];

  if (isLibraryPresentationModal)
  {

    [(SBLibraryViewController *)self _setStatusBarSettingsAssertionActive:0];
  }
}

- (void)libraryViewControllerDidDismiss:(id)dismiss
{
  libraryCategoryMap = [(SBHLibraryViewController *)self libraryCategoryMap];
  metadata = [libraryCategoryMap metadata];
  v9 = [metadata objectForKey:*MEMORY[0x277D665B0]];

  loggingClient = [(SBLibraryViewController *)self loggingClient];
  v7 = [MEMORY[0x277CBEAA8] now];
  [loggingClient logDidLeaveAppDirectoryWithDate:v7 appDirectoryResponse:v9];

  useSnapshotAsBackgroundViewAssertion = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];
  [useSnapshotAsBackgroundViewAssertion invalidate];

  [(SBLibraryViewController *)self setUseSnapshotAsBackgroundViewAssertion:0];
  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];
}

- (void)libraryViewController:(id)controller didPresentSearchController:(id)searchController
{
  v5 = [(SBLibraryViewController *)self loggingClient:controller];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v5 logOpenSearchWithDate:v6];

  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
}

- (void)libraryViewController:(id)controller didDismissSearchController:(id)searchController
{
  v5 = [(SBLibraryViewController *)self loggingClient:controller];
  v4 = [MEMORY[0x277CBEAA8] now];
  [v5 logCloseSearchWithDate:v4];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  [(SBLibraryViewController *)self _evaluateAffordanceActivation:coordinator];
  [(SBLibraryViewController *)self _evaluateAsyncRenderingAssertion];

  [(SBLibraryViewController *)self _evaluateFirstResponderStatus];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  toLayoutState = [context toLayoutState];
  if ([toLayoutState unlockedEnvironmentMode] == 1)
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
    useSnapshotAsBackgroundViewAssertion = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];
    [useSnapshotAsBackgroundViewAssertion invalidate];

    [(SBLibraryViewController *)self setUseSnapshotAsBackgroundViewAssertion:0];
  }

  [(SBLibraryViewController *)self _evaluateAffordanceActivation];
}

- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type
{
  v4 = 55;
  if (type != 3)
  {
    v4 = 0;
  }

  if (type == 1)
  {
    return 54;
  }

  else
  {
    return v4;
  }
}

- (id)keyboardHomeAffordanceAssertionForBarSwipeAffordanceControlling:(id)controlling
{
  if (![MEMORY[0x277D75658] usesInputSystemUI])
  {
    goto LABEL_5;
  }

  barSwipeViewController = [(SBHLibraryViewController *)self barSwipeViewController];
  if (![barSwipeViewController wantsToBeActiveAffordance])
  {
    v7 = 0;
    goto LABEL_7;
  }

  isViewLoaded = [(SBLibraryViewController *)self isViewLoaded];

  if (!isViewLoaded)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_8;
  }

  barSwipeViewController = [(SBLibraryViewController *)self view];
  window = [barSwipeViewController window];
  v7 = [SBKeyboardHomeAffordanceAssertion assertionForGestureWindow:window];

LABEL_7:
LABEL_8:

  return v7;
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  barSwipeViewController = [(SBHLibraryViewController *)self barSwipeViewController];
  [preferencesCopy setActivationPolicyForParticipantsBelow:{objc_msgSend(barSwipeViewController, "activationPolicyForParticipantsBelow")}];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBLibraryViewController;
  eventCopy = event;
  [(SBLibraryViewController *)&v7 pressesBegan:began withEvent:eventCopy];
  [(SBLibraryViewController *)self _handlePressesBegan:eventCopy, v7.receiver, v7.super_class];
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = SBLibraryViewController;
  [(SBLibraryViewController *)&v4 pressesChanged:changed withEvent:event];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = SBLibraryViewController;
  [(SBLibraryViewController *)&v4 pressesEnded:ended withEvent:event];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = SBLibraryViewController;
  [(SBLibraryViewController *)&v4 pressesCancelled:cancelled withEvent:event];
}

- (void)_handlePressesBegan:(id)began
{
  beganCopy = began;
  if ([(SBLibraryViewController *)self _canHandleKeyEvents]&& [(SBLibraryViewController *)self _canHandleKeyUIEvent:beganCopy])
  {
    containerViewController = [(SBHLibraryViewController *)self containerViewController];
    if (([containerViewController isActive] & 1) == 0)
    {
      v6 = SBLogAppLibrary();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Activating type-ahead search in App Library due to key input event", v10, 2u);
      }

      view = [(SBLibraryViewController *)self view];
      window = [view window];

      if (([window isKeyWindow] & 1) == 0)
      {
        [window makeKeyWindow];
      }

      searchResultsController = [containerViewController searchResultsController];
      [searchResultsController setDisablesNullQueryExecution:1];
      [containerViewController setActive:1];
      [searchResultsController setDisablesNullQueryExecution:0];
      [(SBLibraryViewController *)self _didActivateTypeAheadSearchWithPhysicalKeyboardEvent:beganCopy];
    }
  }
}

- (BOOL)_canHandleKeyEvents
{
  isViewLoaded = [(SBLibraryViewController *)self isViewLoaded];
  if (isViewLoaded)
  {
    viewIfLoaded = [(SBLibraryViewController *)self viewIfLoaded];
    if ([viewIfLoaded isHidden])
    {

LABEL_8:
      LOBYTE(isViewLoaded) = 0;
      return isViewLoaded;
    }

    bs_isDisappearingOrDisappeared = [(SBLibraryViewController *)self bs_isDisappearingOrDisappeared];

    if (bs_isDisappearingOrDisappeared)
    {
      goto LABEL_8;
    }

    contentVisibility = [(SBHLibraryViewController *)self contentVisibility];
    if (contentVisibility != 3)
    {
      if (contentVisibility)
      {
        goto LABEL_8;
      }
    }

    if ([(SBHLibraryViewController *)self isPresentingSearch])
    {
      goto LABEL_8;
    }

    LOBYTE(isViewLoaded) = ![(SBHLibraryViewController *)self isPresentingFolder];
  }

  return isViewLoaded;
}

- (BOOL)_canHandleKeyUIEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 4 && objc_msgSend(eventCopy, "_isKeyDown") && !objc_msgSend(eventCopy, "modifierFlags") && (objc_msgSend(eventCopy, "_unmodifiedInput"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "stringByTrimmingCharactersInSet:", v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v6, v9))
  {
    if (_canHandleKeyUIEvent__onceToken != -1)
    {
      [SBLibraryViewController _canHandleKeyUIEvent:];
    }

    v10 = _canHandleKeyUIEvent__keyInputsToIgnore;
    _unmodifiedInput = [eventCopy _unmodifiedInput];
    v4 = [v10 containsObject:_unmodifiedInput] ^ 1;
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

- (void)_didActivateTypeAheadSearchWithPhysicalKeyboardEvent:(id)event
{
  _cloneEvent = [event _cloneEvent];
  if (_cloneEvent)
  {
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __80__SBLibraryViewController__didActivateTypeAheadSearchWithPhysicalKeyboardEvent___block_invoke;
    v5[3] = &unk_2783A8C18;
    v6 = _cloneEvent;
    [mainRunLoop performBlock:v5];
  }
}

void __80__SBLibraryViewController__didActivateTypeAheadSearchWithPhysicalKeyboardEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75678] activeInstance];
  [v2 performDelete];
  [v2 handleKeyEvent:*(a1 + 32)];
}

- (void)_setExpandedPodDisplayLayoutElementActive:(BOOL)active
{
  activeCopy = active;
  expandedPodDisplayLayoutElementAssertion = [(SBLibraryViewController *)self expandedPodDisplayLayoutElementAssertion];
  if (activeCopy && !expandedPodDisplayLayoutElementAssertion)
  {
    v17 = 0;
    v6 = objc_alloc(MEMORY[0x277D66A50]);
    v7 = [v6 initWithIdentifier:*MEMORY[0x277D66F08]];
    [v7 setFillsDisplayBounds:1];
    [v7 setLayoutRole:6];
    view = [(SBLibraryViewController *)self view];
    window = [view window];
    [window level];
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
    _sbWindowScene = [(SBLibraryViewController *)self _sbWindowScene];
    displayLayoutPublisher = [_sbWindowScene displayLayoutPublisher];
    v16 = [displayLayoutPublisher addElement:v7];

    [(SBLibraryViewController *)self setExpandedPodDisplayLayoutElementAssertion:v16];
    goto LABEL_10;
  }

  if (!activeCopy && expandedPodDisplayLayoutElementAssertion)
  {
    v17 = expandedPodDisplayLayoutElementAssertion;
    [expandedPodDisplayLayoutElementAssertion invalidate];
    [(SBLibraryViewController *)self setExpandedPodDisplayLayoutElementAssertion:0];
LABEL_10:
    expandedPodDisplayLayoutElementAssertion = v17;
  }
}

- (void)_setStatusBarSettingsAssertionActive:(BOOL)active quickly:(BOOL)quickly
{
  activeCopy = active;
  statusBarSettingsAssertion = [(SBLibraryViewController *)self statusBarSettingsAssertion];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __72__SBLibraryViewController__setStatusBarSettingsAssertionActive_quickly___block_invoke;
  v19[3] = &__block_descriptor_33_e42___UIStatusBarStyleAnimationParameters_8__0l;
  quicklyCopy = quickly;
  v8 = MEMORY[0x223D6F7F0](v19);
  v9 = v8;
  if (!activeCopy || statusBarSettingsAssertion)
  {
    if (!activeCopy && statusBarSettingsAssertion)
    {
      v18 = (*(v8 + 16))(v8);
      [statusBarSettingsAssertion invalidateWithAnimationParameters:v18];

      [(SBLibraryViewController *)self setStatusBarSettingsAssertion:0];
    }
  }

  else
  {
    _sbWindowScene = [(SBLibraryViewController *)self _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];
    assertionManager = [statusBarManager assertionManager];

    v13 = objc_alloc_init(SBMutableStatusBarSettings);
    effectiveLegibilitySettings = [(SBHLibraryViewController *)self effectiveLegibilitySettings];
    v15 = SBUIDeriveUILegibilitySettings();
    [(SBMutableStatusBarSettings *)v13 setLegibilitySettings:v15];

    v16 = [assertionManager newSettingsAssertionWithSettings:v13 atLevel:3 reason:@"App Library"];
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
  _currentLayoutState = [(SBLibraryViewController *)self _currentLayoutState];
  unlockedEnvironmentMode = [_currentLayoutState unlockedEnvironmentMode];

  if ([(SBLibraryViewController *)self _appearState]== 2 && ![(SBLibraryViewController *)self isRotating]&& unlockedEnvironmentMode == 1)
  {
    useSnapshotAsBackgroundViewAssertion = [(SBLibraryViewController *)self useSnapshotAsBackgroundViewAssertion];

    if (!useSnapshotAsBackgroundViewAssertion)
    {
      presenter = [(SBHLibraryViewController *)self presenter];
      v7 = [presenter acquireUseSnapshotAsBackgroundViewAssertionForReason:@"SBLibraryViewControllerSnapshotBackgroundViewReason"];

      [(SBLibraryViewController *)self setUseSnapshotAsBackgroundViewAssertion:v7];
    }
  }
}

- (id)_sbWindowScene
{
  windowScene = [(SBLibraryViewController *)self windowScene];
  v4 = windowScene;
  if (windowScene)
  {
    _sbWindowScene = windowScene;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBLibraryViewController;
    _sbWindowScene = [(UIViewController *)&v8 _sbWindowScene];
  }

  v6 = _sbWindowScene;

  return v6;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end