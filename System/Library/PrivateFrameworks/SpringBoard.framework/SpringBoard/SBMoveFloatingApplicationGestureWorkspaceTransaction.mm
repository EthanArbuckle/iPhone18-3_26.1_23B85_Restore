@interface SBMoveFloatingApplicationGestureWorkspaceTransaction
- (id)_transitionRequestForPreemptiveFloatingApplicationActivation;
- (void)_begin;
- (void)_beginWithGesture:(id)gesture;
- (void)_didComplete;
- (void)_finishWithGesture:(id)gesture;
- (void)_performBlockWithLiveContentOverlayUpdatesSuspended:(id)suspended;
- (void)_startSuppressingKeyboardForFloatingApplication;
- (void)_stopSuppressingKeyboard;
- (void)_tryPreemptiveFloatingApplicationActivationIfNecessaryWithGesture:(id)gesture;
- (void)_updateWithGesture:(id)gesture;
@end

@implementation SBMoveFloatingApplicationGestureWorkspaceTransaction

- (void)_begin
{
  v28 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = SBMoveFloatingApplicationGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v26 _begin];
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  layoutContext = [switcherViewController layoutContext];
  layoutState = [layoutContext layoutState];

  v6 = [layoutState layoutContainsRole:3];
  self->_tryPreemptiveFloatingApplicationActivation = v6 ^ 1;
  self->_didAddActivateFloatingApplicationTransaction = 0;
  dataSource = [switcherViewController dataSource];
  if (objc_opt_respondsToSelector())
  {
    [dataSource switcherContentController:switcherViewController frameForFloatingAppLayoutInInterfaceOrientation:objc_msgSend(layoutState floatingConfiguration:{"interfaceOrientation"), objc_msgSend(layoutState, "floatingConfiguration")}];
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
  }

  self->_initialFloatingApplicationFrame.origin.x = v8;
  self->_initialFloatingApplicationFrame.origin.y = v9;
  self->_initialFloatingApplicationFrame.size.width = v10;
  self->_initialFloatingApplicationFrame.size.height = v11;
  if ((v6 & 1) == 0)
  {
    [(SBMoveFloatingApplicationGestureWorkspaceTransaction *)self _startSuppressingKeyboardForFloatingApplication];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    elements = [layoutState elements];
    v13 = [elements countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(elements);
          }

          workspaceEntity = [*(*(&v22 + 1) + 8 * v16) workspaceEntity];
          deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];

          if (deviceApplicationSceneEntity)
          {
            sceneHandle = [deviceApplicationSceneEntity sceneHandle];
            [sceneHandle setKeyboardContextMaskStyle:2];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [elements countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    windowScene = [(SBWorkspaceTransaction *)self windowScene];
    medusaHostedKeyboardWindowController = [windowScene medusaHostedKeyboardWindowController];
    [medusaHostedKeyboardWindowController updateMedusaHostedKeyboardWindow];
  }
}

- (void)_didComplete
{
  v3.receiver = self;
  v3.super_class = SBMoveFloatingApplicationGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v3 _didComplete];
  [(SBMoveFloatingApplicationGestureWorkspaceTransaction *)self _stopSuppressingKeyboard];
}

- (void)_beginWithGesture:(id)gesture
{
  gestureCopy = gesture;
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  appLayouts = [switcherViewController appLayouts];
  v7 = [appLayouts bs_firstObjectPassingTest:&__block_literal_global_441];

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self setSelectedAppLayout:v7];
  v8.receiver = self;
  v8.super_class = SBMoveFloatingApplicationGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v8 _beginWithGesture:gestureCopy];
}

- (void)_updateWithGesture:(id)gesture
{
  gestureCopy = gesture;
  [(SBMoveFloatingApplicationGestureWorkspaceTransaction *)self _tryPreemptiveFloatingApplicationActivationIfNecessaryWithGesture:gestureCopy];
  v5.receiver = self;
  v5.super_class = SBMoveFloatingApplicationGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v5 _updateWithGesture:gestureCopy];
}

- (void)_finishWithGesture:(id)gesture
{
  gestureCopy = gesture;
  layoutStateTransitionCoordinator = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  v6 = layoutStateTransitionCoordinator;
  if (self->_didAddActivateFloatingApplicationTransaction && [layoutStateTransitionCoordinator isTransitioning])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__SBMoveFloatingApplicationGestureWorkspaceTransaction__finishWithGesture___block_invoke;
    v11[3] = &unk_2783A92D8;
    v12 = v6;
    selfCopy = self;
    [(SBMoveFloatingApplicationGestureWorkspaceTransaction *)self _performBlockWithLiveContentOverlayUpdatesSuspended:v11];
  }

  v10.receiver = self;
  v10.super_class = SBMoveFloatingApplicationGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v10 _finishWithGesture:gestureCopy];
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  layoutContext = [switcherViewController layoutContext];
  layoutState = [layoutContext layoutState];

  if (([layoutState layoutContainsRole:3] & 1) == 0)
  {
    [(SBMoveFloatingApplicationGestureWorkspaceTransaction *)self _startSuppressingKeyboardForFloatingApplication];
  }
}

void *__75__SBMoveFloatingApplicationGestureWorkspaceTransaction__finishWithGesture___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.springboard.moveFloatingApplicationTransaction" code:0 userInfo:0];
  [v2 endTransitionWithError:v3];

  result = *(*(a1 + 40) + 440);
  if (result)
  {

    return [result interruptWithReason:@"Finished Move Gesture"];
  }

  return result;
}

- (void)_tryPreemptiveFloatingApplicationActivationIfNecessaryWithGesture:(id)gesture
{
  gestureCopy = gesture;
  if (self->_tryPreemptiveFloatingApplicationActivation && !self->_didAddActivateFloatingApplicationTransaction)
  {
    selectedAppLayout = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];

    if (selectedAppLayout)
    {
      switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
      layoutContext = [switcherViewController layoutContext];
      layoutState = [layoutContext layoutState];

      view = [switcherViewController view];
      [gestureCopy translationInView:view];
      v11 = v10;

      [layoutState interfaceOrientation];
      SBLayoutDefaultSideLayoutElementWidth();
      if (fabs(v11) > v12 * 0.3)
      {
        _transitionRequestForPreemptiveFloatingApplicationActivation = [(SBMoveFloatingApplicationGestureWorkspaceTransaction *)self _transitionRequestForPreemptiveFloatingApplicationActivation];
        [_transitionRequestForPreemptiveFloatingApplicationActivation finalize];
        objc_storeStrong(&self->super.super.super.super._transitionRequest, _transitionRequestForPreemptiveFloatingApplicationActivation);
        layoutStateTransitionCoordinator = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
        [layoutStateTransitionCoordinator beginTransitionForWorkspaceTransaction:self];

        applicationContext = [_transitionRequestForPreemptiveFloatingApplicationActivation applicationContext];
        layoutState2 = [applicationContext layoutState];
        v17 = [layoutState2 elementWithRole:3];

        workspaceEntity = [v17 workspaceEntity];
        applicationSceneEntity = [workspaceEntity applicationSceneEntity];

        v20 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:applicationSceneEntity transitionRequest:_transitionRequestForPreemptiveFloatingApplicationActivation];
        activateFloatingApplicationTransaction = self->_activateFloatingApplicationTransaction;
        self->_activateFloatingApplicationTransaction = v20;

        [(FBApplicationUpdateScenesTransaction *)self->_activateFloatingApplicationTransaction setWaitsForSceneCommits:0];
        objc_initWeak(&location, self);
        v22 = self->_activateFloatingApplicationTransaction;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __122__SBMoveFloatingApplicationGestureWorkspaceTransaction__tryPreemptiveFloatingApplicationActivationIfNecessaryWithGesture___block_invoke;
        v23[3] = &unk_2783AC358;
        objc_copyWeak(&v24, &location);
        [(SBApplicationSceneUpdateTransaction *)v22 setCompletionBlock:v23];
        [(SBMoveFloatingApplicationGestureWorkspaceTransaction *)self addChildTransaction:self->_activateFloatingApplicationTransaction];
        self->_didAddActivateFloatingApplicationTransaction = 1;
        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __122__SBMoveFloatingApplicationGestureWorkspaceTransaction__tryPreemptiveFloatingApplicationActivationIfNecessaryWithGesture___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[55];
    WeakRetained[55] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (id)_transitionRequestForPreemptiveFloatingApplicationActivation
{
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  workspace = [transitionRequest workspace];

  v5 = [workspace createRequestWithOptions:0];
  selectedAppLayout = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
  v7 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:selectedAppLayout];

  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  switcherController = [windowScene switcherController];

  [switcherController configureRequest:v5 forSwitcherTransitionRequest:v7 withEventLabel:@"PreemptiveFloatingApplicationActivation"];
  transitionRequest2 = [(SBWorkspaceTransaction *)self transitionRequest];
  [v5 setSource:{objc_msgSend(transitionRequest2, "source")}];

  [v5 modifyApplicationContext:&__block_literal_global_27_3];

  return v5;
}

void __116__SBMoveFloatingApplicationGestureWorkspaceTransaction__transitionRequestForPreemptiveFloatingApplicationActivation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 applicationSceneEntities];
  [v2 bs_each:&__block_literal_global_30_6];
}

- (void)_performBlockWithLiveContentOverlayUpdatesSuspended:(id)suspended
{
  suspendedCopy = suspended;
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  areLiveContentOverlayUpdatesSuspended = [switcherViewController areLiveContentOverlayUpdatesSuspended];
  [switcherViewController setLiveContentOverlayUpdatesSuspended:1];
  suspendedCopy[2](suspendedCopy);

  [switcherViewController setLiveContentOverlayUpdatesSuspended:areLiveContentOverlayUpdatesSuspended];
}

- (void)_startSuppressingKeyboardForFloatingApplication
{
  v3 = +[SBKeyboardSuppressionManager sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __103__SBMoveFloatingApplicationGestureWorkspaceTransaction__startSuppressingKeyboardForFloatingApplication__block_invoke;
  v4[3] = &unk_2783ADD00;
  v4[4] = self;
  [v3 startSuppressingKeyboardWithReason:@"SBMoveFloatingApplicationKeyboardSuppressionReason" predicate:v4 displayIdentity:0];
}

uint64_t __103__SBMoveFloatingApplicationGestureWorkspaceTransaction__startSuppressingKeyboardForFloatingApplication__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedAppLayout];
  v5 = [v4 itemForLayoutRole:1];

  v6 = [v3 identifier];

  v7 = [v5 uniqueIdentifier];
  v8 = [v6 isEqualToString:v7];

  return v8;
}

- (void)_stopSuppressingKeyboard
{
  v2 = +[SBKeyboardSuppressionManager sharedInstance];
  [v2 stopSuppressingKeyboardWithReason:@"SBMoveFloatingApplicationKeyboardSuppressionReason"];
}

@end