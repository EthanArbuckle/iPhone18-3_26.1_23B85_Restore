@interface SBDashBoardSwitcherHostableEntityLiveContentOverlay
- (SBDashBoardSwitcherHostableEntityLiveContentOverlay)initWithEntity:(id)a3 windowScene:(id)a4;
- (SBSwitcherLiveContentOverlayDelegate)delegate;
- (UIRectCornerRadii)cornerRadii;
- (UIView)contentOverlayView;
- (id)_hostedSceneID;
- (id)_sceneHandleIfExists;
- (id)_sceneIfExists;
- (id)liveSceneIdentityToken;
- (int64_t)preferredInterfaceOrientation;
- (void)configureWithWorkspaceEntity:(id)a3 referenceFrame:(CGRect)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 layoutRole:(int64_t)a7 sbsDisplayLayoutRole:(int64_t)a8 zOrderIndex:(int64_t)a9 spaceConfiguration:(int64_t)a10 floatingConfiguration:(int64_t)a11 hasClassicAppOrientationMismatch:(BOOL)a12 sizingPolicy:(int64_t)a13;
- (void)invalidate;
- (void)noteKeyboardFocusDidChangeToSceneID:(id)a3;
- (void)setDisplayLayoutElementActive:(BOOL)a3;
- (void)setLiveContentBlurEnabled:(BOOL)a3 duration:(double)a4 blurDelay:(double)a5 iconViewScale:(double)a6 began:(id)a7 completion:(id)a8;
- (void)updateDisplayLayoutElementWithBuilder:(id)a3;
@end

@implementation SBDashBoardSwitcherHostableEntityLiveContentOverlay

- (SBDashBoardSwitcherHostableEntityLiveContentOverlay)initWithEntity:(id)a3 windowScene:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SBDashBoardSwitcherHostableEntityLiveContentOverlay;
  v9 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entity, a3);
    objc_storeWeak(&v10->_sbWindowScene, v8);
    v11 = objc_alloc(MEMORY[0x277D66A50]);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 initWithIdentifier:v13];
    displayLayoutElement = v10->_displayLayoutElement;
    v10->_displayLayoutElement = v14;
  }

  return v10;
}

- (void)updateDisplayLayoutElementWithBuilder:(id)a3
{
  if (self->_displayLayoutElementAssertion)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    if (!WeakRetained)
    {
      [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)a2 updateDisplayLayoutElementWithBuilder:?];
    }

    v14 = [WeakRetained displayLayoutPublisher];
    if (!v14)
    {
      [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)a2 updateDisplayLayoutElementWithBuilder:WeakRetained];
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v14 transitionAssertionWithReason:v8];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    v5[2](v5, self->_displayLayoutElement);
    v11 = [v14 addElement:self->_displayLayoutElement];
    v12 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v11;

    [v9 invalidate];
  }

  else
  {
    v13 = *(a3 + 2);
    v14 = a3;
    v13();
  }
}

- (void)setDisplayLayoutElementActive:(BOOL)a3
{
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  if (a3)
  {
    if (displayLayoutElementAssertion)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    if (!WeakRetained)
    {
      [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)a2 setDisplayLayoutElementActive:?];
    }

    v14 = [WeakRetained displayLayoutPublisher];
    if (!v14)
    {
      [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)a2 setDisplayLayoutElementActive:WeakRetained];
    }

    displayLayoutElement = self->_displayLayoutElement;
    v8 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self contentOverlayView];
    v9 = [v8 window];
    [v9 level];
    [(SBSDisplayLayoutElement *)displayLayoutElement setLevel:v10];

    v11 = [v14 addElement:self->_displayLayoutElement];
    v12 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v11;

    v13 = v14;
  }

  else
  {
    if (!displayLayoutElementAssertion)
    {
      return;
    }

    [(BSInvalidatable *)displayLayoutElementAssertion invalidate];
    v13 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;
  }
}

- (UIView)contentOverlayView
{
  v2 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self contentViewController];
  v3 = [v2 view];

  return v3;
}

- (void)noteKeyboardFocusDidChangeToSceneID:(id)a3
{
  v4 = a3;
  v5 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _hostedSceneID];
  v6 = [v5 isEqualToString:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__SBDashBoardSwitcherHostableEntityLiveContentOverlay_noteKeyboardFocusDidChangeToSceneID___block_invoke;
  v7[3] = &__block_descriptor_33_e33_v16__0__SBSDisplayLayoutElement_8l;
  v8 = v6;
  [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self updateDisplayLayoutElementWithBuilder:v7];
}

- (void)setLiveContentBlurEnabled:(BOOL)a3 duration:(double)a4 blurDelay:(double)a5 iconViewScale:(double)a6 began:(id)a7 completion:(id)a8
{
  v9 = *(a7 + 2);
  v10 = a8;
  v9(a7);
  v10[2]();
}

- (int64_t)preferredInterfaceOrientation
{
  v2 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _sceneHandleIfExists];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 currentInterfaceOrientation];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)liveSceneIdentityToken
{
  v2 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _sceneIfExists];
  if ([v2 isActive])
  {
    v3 = [v2 settings];
    if ([v3 isForeground])
    {
      v4 = [v2 identityToken];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)configureWithWorkspaceEntity:(id)a3 referenceFrame:(CGRect)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 layoutRole:(int64_t)a7 sbsDisplayLayoutRole:(int64_t)a8 zOrderIndex:(int64_t)a9 spaceConfiguration:(int64_t)a10 floatingConfiguration:(int64_t)a11 hasClassicAppOrientationMismatch:(BOOL)a12 sizingPolicy:(int64_t)a13
{
  v19 = [a3 dashBoardHostableEntity];
  v14 = [v19 hostableEntity];
  hostableEntity = self->_hostableEntity;
  self->_hostableEntity = v14;
  v16 = v14;

  v17 = [(CSHostableEntity *)v16 hostingContainerViewController];
  contentViewController = self->_contentViewController;
  self->_contentViewController = v17;
}

- (void)invalidate
{
  [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  self->_displayLayoutElementAssertion = 0;

  [(CSHostableEntityContentContaining *)self->_contentViewController invalidate];
  contentViewController = self->_contentViewController;
  self->_contentViewController = 0;

  hostableEntity = self->_hostableEntity;
  self->_hostableEntity = 0;
}

- (id)_hostedSceneID
{
  v3 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _sceneHandleIfExists];
  v4 = [v3 sceneIdentifier];

  if (!v4)
  {
    v5 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _hostedEntityViewController];
    v6 = [v5 sceneForTraitsParticipant];
    v4 = [v6 identifier];
  }

  return v4;
}

- (id)_sceneIfExists
{
  v3 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _sceneHandleIfExists];
  v4 = [v3 sceneIfExists];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _hostedEntityViewController];
    v6 = [v7 sceneForTraitsParticipant];
  }

  return v6;
}

- (id)_sceneHandleIfExists
{
  v2 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _hostedEntityViewController];
  v3 = [v2 sceneHandleForTraitsParticipant];

  return v3;
}

- (SBSwitcherLiveContentOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIRectCornerRadii)cornerRadii
{
  topLeft = self->_cornerRadii.topLeft;
  bottomLeft = self->_cornerRadii.bottomLeft;
  bottomRight = self->_cornerRadii.bottomRight;
  topRight = self->_cornerRadii.topRight;
  result.topRight = topRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topLeft = topLeft;
  return result;
}

- (void)updateDisplayLayoutElementWithBuilder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDashBoardSwitcherHostableEntityLiveContentOverlay.m" lineNumber:58 description:{@"No window scene to get a publisher: %@", a2}];
}

- (void)updateDisplayLayoutElementWithBuilder:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBDashBoardSwitcherHostableEntityLiveContentOverlay.m" lineNumber:58 description:{@"No publisher for window scene: %@; self: %@", a3, a2}];
}

- (void)setDisplayLayoutElementActive:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDashBoardSwitcherHostableEntityLiveContentOverlay.m" lineNumber:75 description:{@"No window scene to get a publisher: %@", a2}];
}

- (void)setDisplayLayoutElementActive:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBDashBoardSwitcherHostableEntityLiveContentOverlay.m" lineNumber:75 description:{@"No publisher for window scene: %@; self: %@", a3, a2}];
}

@end