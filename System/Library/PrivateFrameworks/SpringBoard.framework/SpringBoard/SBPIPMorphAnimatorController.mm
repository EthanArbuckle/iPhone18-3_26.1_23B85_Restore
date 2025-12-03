@interface SBPIPMorphAnimatorController
- (CGRect)appLayoutBoundingBox;
- (SBPIPContainerViewController)pictureInPictureContainerViewController;
- (SBPIPMorphAnimatorController)initWithTargetProcessIdentifier:(int)identifier scenePersistenceIdentifier:(id)persistenceIdentifier appLayout:(id)layout layoutRole:(int64_t)role appLayoutBoundingBox:(CGRect)box windowScene:(id)scene direction:(int64_t)direction gestureInitiated:(BOOL)self0 delegate:(id)self1 uuid:(id)self2;
- (SBPIPMorphAnimatorControllerDelegate)delegate;
- (void)_performAnimatorWaitingForExternalAnimationActionBlock;
- (void)_terminate;
- (void)cancel;
- (void)didEndSourceAnimations:(unint64_t)animations finished:(BOOL)finished continueBlock:(id)block;
- (void)didEndTargetAnimations:(unint64_t)animations finished:(BOOL)finished continueBlock:(id)block;
- (void)setAnimatorWaitingForExternalAnimationActionBlock:(id)block;
- (void)setPictureInPictureContainerViewController:(id)controller;
- (void)willRemoveTargeMatchMoveAnimationAtFrame:(CGRect)frame withinSourceFrame:(CGRect)sourceFrame;
- (void)willStartSourceAnimations:(unint64_t)animations;
@end

@implementation SBPIPMorphAnimatorController

- (SBPIPMorphAnimatorController)initWithTargetProcessIdentifier:(int)identifier scenePersistenceIdentifier:(id)persistenceIdentifier appLayout:(id)layout layoutRole:(int64_t)role appLayoutBoundingBox:(CGRect)box windowScene:(id)scene direction:(int64_t)direction gestureInitiated:(BOOL)self0 delegate:(id)self1 uuid:(id)self2
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  persistenceIdentifierCopy = persistenceIdentifier;
  layoutCopy = layout;
  sceneCopy = scene;
  delegateCopy = delegate;
  uuidCopy = uuid;
  v40.receiver = self;
  v40.super_class = SBPIPMorphAnimatorController;
  v26 = [(SBPIPMorphAnimatorController *)&v40 init];
  v27 = v26;
  if (v26)
  {
    v37 = persistenceIdentifierCopy;
    v26->_targetProcessIdentifier = identifier;
    objc_storeStrong(&v26->_scenePersistenceIdentifier, persistenceIdentifier);
    objc_storeStrong(&v27->_appLayout, layout);
    v27->_layoutRole = role;
    v27->_appLayoutBoundingBox.origin.x = x;
    v27->_appLayoutBoundingBox.origin.y = y;
    v27->_appLayoutBoundingBox.size.width = width;
    v27->_appLayoutBoundingBox.size.height = height;
    v27->_gestureInitiated = initiated;
    objc_storeStrong(&v27->_uuid, uuid);
    objc_storeWeak(&v27->_delegate, delegateCopy);
    v28 = [[SBViewMorphAnimator alloc] initWithUUID:uuidCopy windowScene:sceneCopy direction:direction];
    viewMorphAnimator = v27->_viewMorphAnimator;
    v27->_viewMorphAnimator = v28;

    v30 = [delegateCopy dataSourceForMorphAnimatorController:v27];
    viewMorphAnimatorDataSource = v27->_viewMorphAnimatorDataSource;
    v27->_viewMorphAnimatorDataSource = v30;

    [(SBViewMorphAnimator *)v27->_viewMorphAnimator setDataSource:v27->_viewMorphAnimatorDataSource];
    v32 = v27->_viewMorphAnimator;
    v33 = +[SBPIPSettingsDomain rootSettings];
    fluidTransitionsSettings = [v33 fluidTransitionsSettings];
    targetClippingFluidBehavior = [fluidTransitionsSettings targetClippingFluidBehavior];
    [(SBViewMorphAnimator *)v32 setTargetClipAnimationSettings:targetClippingFluidBehavior];

    persistenceIdentifierCopy = v37;
    [(SBViewMorphAnimator *)v27->_viewMorphAnimator addObserver:v27];
  }

  return v27;
}

- (void)setPictureInPictureContainerViewController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_storeWeak(&self->_pictureInPictureContainerViewController, controllerCopy);
  [controllerCopy transitionAnimationWillBegin];
  if ([(SBViewMorphAnimator *)self->_viewMorphAnimator direction]== 1)
  {
    [(SBViewMorphAnimator *)self->_viewMorphAnimator setAutomaticallyStartTargetAnimations:0];
  }

  viewMorphAnimator = self->_viewMorphAnimator;
  morphAnimatorTargetView = [controllerCopy morphAnimatorTargetView];
  [(SBViewMorphAnimator *)viewMorphAnimator setTargetView:morphAnimatorTargetView];

  v7 = self->_viewMorphAnimator;
  morphAnimatorTargetContainerView = [controllerCopy morphAnimatorTargetContainerView];
  [(SBViewMorphAnimator *)v7 setTargetContentView:morphAnimatorTargetContainerView];
}

- (void)cancel
{
  viewMorphAnimator = self->_viewMorphAnimator;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__SBPIPMorphAnimatorController_cancel__block_invoke;
  v3[3] = &unk_2783A8C18;
  v3[4] = self;
  [(SBViewMorphAnimator *)viewMorphAnimator cancel:v3];
}

- (void)_terminate
{
  if (!self->_terminated)
  {
    self->_terminated = 1;
    [(SBPIPMorphAnimatorController *)self _performAnimatorWaitingForExternalAnimationActionBlock];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained morphAnimatorControllerDidTerminate:self];

    v5 = objc_loadWeakRetained(&self->_pictureInPictureContainerViewController);
    [v5 transitionAnimationDidEnd];
  }
}

- (void)setAnimatorWaitingForExternalAnimationActionBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [(SBPIPMorphAnimatorController *)a2 setAnimatorWaitingForExternalAnimationActionBlock:?];
  }

  if ([(SBPIPMorphAnimatorController *)self _isWaitingForExternalAnimationCompletion])
  {
    blockCopy[2]();
  }

  else
  {
    v5 = MEMORY[0x223D6F7F0](blockCopy);
    animatorWaitingForExternalAnimationActionBlock = self->_animatorWaitingForExternalAnimationActionBlock;
    self->_animatorWaitingForExternalAnimationActionBlock = v5;
  }
}

- (void)_performAnimatorWaitingForExternalAnimationActionBlock
{
  v5 = MEMORY[0x223D6F7F0](self->_animatorWaitingForExternalAnimationActionBlock, a2);
  animatorWaitingForExternalAnimationActionBlock = self->_animatorWaitingForExternalAnimationActionBlock;
  self->_animatorWaitingForExternalAnimationActionBlock = 0;

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v4 = v5;
  }
}

- (void)willStartSourceAnimations:(unint64_t)animations
{
  setupCompletionBlock = self->_setupCompletionBlock;
  if (setupCompletionBlock)
  {
    setupCompletionBlock[2]();
  }
}

- (void)didEndSourceAnimations:(unint64_t)animations finished:(BOOL)finished continueBlock:(id)block
{
  if ((animations & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureContainerViewController);
    [WeakRetained transitionAnimationDidEnd];
  }
}

- (void)didEndTargetAnimations:(unint64_t)animations finished:(BOOL)finished continueBlock:(id)block
{
  self->_completedTargetAnimations |= animations;
  if ([(SBPIPMorphAnimatorController *)self _isWaitingForExternalAnimationCompletion])
  {

    [(SBPIPMorphAnimatorController *)self _performAnimatorWaitingForExternalAnimationActionBlock];
  }

  else if (self->_completedTargetAnimations == 7)
  {

    [(SBPIPMorphAnimatorController *)self _terminate];
  }
}

- (void)willRemoveTargeMatchMoveAnimationAtFrame:(CGRect)frame withinSourceFrame:(CGRect)sourceFrame
{
  height = sourceFrame.size.height;
  width = sourceFrame.size.width;
  y = sourceFrame.origin.y;
  x = sourceFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  dataSource = [(SBViewMorphAnimator *)self->_viewMorphAnimator dataSource];
  [dataSource sourceSubviewFrame:self->_viewMorphAnimator inScreenSpaceForAnimator:{v11, v10, v9, v8}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [dataSource sourceSubviewFrame:self->_viewMorphAnimator inScreenSpaceForAnimator:{x, y, width, height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureContainerViewController);
  bundleIdentifier = [WeakRetained bundleIdentifier];
  v31 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];

  windowScene = [(SBViewMorphAnimator *)self->_viewMorphAnimator windowScene];
  switcherController = [windowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing & 1 | ((v31 & 1) == 0))
  {
    v36 = v14;
  }

  else
  {
    v36 = v22;
  }

  if (isChamoisOrFlexibleWindowing & 1 | ((v31 & 1) == 0))
  {
    v37 = v16;
  }

  else
  {
    v37 = v24;
  }

  if (isChamoisOrFlexibleWindowing & 1 | ((v31 & 1) == 0))
  {
    v38 = v18;
  }

  else
  {
    v38 = v26;
  }

  if (isChamoisOrFlexibleWindowing & 1 | ((v31 & 1) == 0))
  {
    v39 = v20;
  }

  else
  {
    v39 = v28;
  }

  [WeakRetained forcePictureInPictureToFrame:{v36, v37, v38, v39}];
}

- (CGRect)appLayoutBoundingBox
{
  x = self->_appLayoutBoundingBox.origin.x;
  y = self->_appLayoutBoundingBox.origin.y;
  width = self->_appLayoutBoundingBox.size.width;
  height = self->_appLayoutBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SBPIPContainerViewController)pictureInPictureContainerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureContainerViewController);

  return WeakRetained;
}

- (SBPIPMorphAnimatorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAnimatorWaitingForExternalAnimationActionBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPMorphAnimatorController.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"animatorWaitingForExternalAnimationActionBlock"}];
}

@end