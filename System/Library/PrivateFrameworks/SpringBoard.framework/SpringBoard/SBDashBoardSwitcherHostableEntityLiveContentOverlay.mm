@interface SBDashBoardSwitcherHostableEntityLiveContentOverlay
- (SBDashBoardSwitcherHostableEntityLiveContentOverlay)initWithEntity:(id)entity windowScene:(id)scene;
- (SBSwitcherLiveContentOverlayDelegate)delegate;
- (UIRectCornerRadii)cornerRadii;
- (UIView)contentOverlayView;
- (id)_hostedSceneID;
- (id)_sceneHandleIfExists;
- (id)_sceneIfExists;
- (id)liveSceneIdentityToken;
- (int64_t)preferredInterfaceOrientation;
- (void)configureWithWorkspaceEntity:(id)entity referenceFrame:(CGRect)frame contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation layoutRole:(int64_t)role sbsDisplayLayoutRole:(int64_t)layoutRole zOrderIndex:(int64_t)index spaceConfiguration:(int64_t)self0 floatingConfiguration:(int64_t)self1 hasClassicAppOrientationMismatch:(BOOL)self2 sizingPolicy:(int64_t)self3;
- (void)invalidate;
- (void)noteKeyboardFocusDidChangeToSceneID:(id)d;
- (void)setDisplayLayoutElementActive:(BOOL)active;
- (void)setLiveContentBlurEnabled:(BOOL)enabled duration:(double)duration blurDelay:(double)delay iconViewScale:(double)scale began:(id)began completion:(id)completion;
- (void)updateDisplayLayoutElementWithBuilder:(id)builder;
@end

@implementation SBDashBoardSwitcherHostableEntityLiveContentOverlay

- (SBDashBoardSwitcherHostableEntityLiveContentOverlay)initWithEntity:(id)entity windowScene:(id)scene
{
  entityCopy = entity;
  sceneCopy = scene;
  v17.receiver = self;
  v17.super_class = SBDashBoardSwitcherHostableEntityLiveContentOverlay;
  v9 = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entity, entity);
    objc_storeWeak(&v10->_sbWindowScene, sceneCopy);
    v11 = objc_alloc(MEMORY[0x277D66A50]);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 initWithIdentifier:v13];
    displayLayoutElement = v10->_displayLayoutElement;
    v10->_displayLayoutElement = v14;
  }

  return v10;
}

- (void)updateDisplayLayoutElementWithBuilder:(id)builder
{
  if (self->_displayLayoutElementAssertion)
  {
    builderCopy = builder;
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    if (!WeakRetained)
    {
      [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)a2 updateDisplayLayoutElementWithBuilder:?];
    }

    builderCopy2 = [WeakRetained displayLayoutPublisher];
    if (!builderCopy2)
    {
      [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)a2 updateDisplayLayoutElementWithBuilder:WeakRetained];
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [builderCopy2 transitionAssertionWithReason:v8];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    builderCopy[2](builderCopy, self->_displayLayoutElement);
    v11 = [builderCopy2 addElement:self->_displayLayoutElement];
    v12 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v11;

    [v9 invalidate];
  }

  else
  {
    v13 = *(builder + 2);
    builderCopy2 = builder;
    v13();
  }
}

- (void)setDisplayLayoutElementActive:(BOOL)active
{
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  if (active)
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

    displayLayoutPublisher = [WeakRetained displayLayoutPublisher];
    if (!displayLayoutPublisher)
    {
      [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)a2 setDisplayLayoutElementActive:WeakRetained];
    }

    displayLayoutElement = self->_displayLayoutElement;
    contentOverlayView = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self contentOverlayView];
    window = [contentOverlayView window];
    [window level];
    [(SBSDisplayLayoutElement *)displayLayoutElement setLevel:v10];

    v11 = [displayLayoutPublisher addElement:self->_displayLayoutElement];
    v12 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v11;

    v13 = displayLayoutPublisher;
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
  contentViewController = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self contentViewController];
  view = [contentViewController view];

  return view;
}

- (void)noteKeyboardFocusDidChangeToSceneID:(id)d
{
  dCopy = d;
  _hostedSceneID = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _hostedSceneID];
  v6 = [_hostedSceneID isEqualToString:dCopy];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__SBDashBoardSwitcherHostableEntityLiveContentOverlay_noteKeyboardFocusDidChangeToSceneID___block_invoke;
  v7[3] = &__block_descriptor_33_e33_v16__0__SBSDisplayLayoutElement_8l;
  v8 = v6;
  [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self updateDisplayLayoutElementWithBuilder:v7];
}

- (void)setLiveContentBlurEnabled:(BOOL)enabled duration:(double)duration blurDelay:(double)delay iconViewScale:(double)scale began:(id)began completion:(id)completion
{
  v9 = *(began + 2);
  completionCopy = completion;
  v9(began);
  completionCopy[2]();
}

- (int64_t)preferredInterfaceOrientation
{
  _sceneHandleIfExists = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _sceneHandleIfExists];
  v3 = objc_opt_class();
  v4 = _sceneHandleIfExists;
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
    currentInterfaceOrientation = [v6 currentInterfaceOrientation];
  }

  else
  {
    currentInterfaceOrientation = 0;
  }

  return currentInterfaceOrientation;
}

- (id)liveSceneIdentityToken
{
  _sceneIfExists = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _sceneIfExists];
  if ([_sceneIfExists isActive])
  {
    settings = [_sceneIfExists settings];
    if ([settings isForeground])
    {
      identityToken = [_sceneIfExists identityToken];
    }

    else
    {
      identityToken = 0;
    }
  }

  else
  {
    identityToken = 0;
  }

  return identityToken;
}

- (void)configureWithWorkspaceEntity:(id)entity referenceFrame:(CGRect)frame contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation layoutRole:(int64_t)role sbsDisplayLayoutRole:(int64_t)layoutRole zOrderIndex:(int64_t)index spaceConfiguration:(int64_t)self0 floatingConfiguration:(int64_t)self1 hasClassicAppOrientationMismatch:(BOOL)self2 sizingPolicy:(int64_t)self3
{
  dashBoardHostableEntity = [entity dashBoardHostableEntity];
  hostableEntity = [dashBoardHostableEntity hostableEntity];
  hostableEntity = self->_hostableEntity;
  self->_hostableEntity = hostableEntity;
  v16 = hostableEntity;

  hostingContainerViewController = [(CSHostableEntity *)v16 hostingContainerViewController];
  contentViewController = self->_contentViewController;
  self->_contentViewController = hostingContainerViewController;
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
  _sceneHandleIfExists = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _sceneHandleIfExists];
  sceneIdentifier = [_sceneHandleIfExists sceneIdentifier];

  if (!sceneIdentifier)
  {
    _hostedEntityViewController = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _hostedEntityViewController];
    sceneForTraitsParticipant = [_hostedEntityViewController sceneForTraitsParticipant];
    sceneIdentifier = [sceneForTraitsParticipant identifier];
  }

  return sceneIdentifier;
}

- (id)_sceneIfExists
{
  _sceneHandleIfExists = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _sceneHandleIfExists];
  sceneIfExists = [_sceneHandleIfExists sceneIfExists];
  v5 = sceneIfExists;
  if (sceneIfExists)
  {
    sceneForTraitsParticipant = sceneIfExists;
  }

  else
  {
    _hostedEntityViewController = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _hostedEntityViewController];
    sceneForTraitsParticipant = [_hostedEntityViewController sceneForTraitsParticipant];
  }

  return sceneForTraitsParticipant;
}

- (id)_sceneHandleIfExists
{
  _hostedEntityViewController = [(SBDashBoardSwitcherHostableEntityLiveContentOverlay *)self _hostedEntityViewController];
  sceneHandleForTraitsParticipant = [_hostedEntityViewController sceneHandleForTraitsParticipant];

  return sceneHandleForTraitsParticipant;
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