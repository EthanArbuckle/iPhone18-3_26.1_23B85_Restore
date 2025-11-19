@interface SBPIPMorphAnimatorController
- (CGRect)appLayoutBoundingBox;
- (SBPIPContainerViewController)pictureInPictureContainerViewController;
- (SBPIPMorphAnimatorController)initWithTargetProcessIdentifier:(int)a3 scenePersistenceIdentifier:(id)a4 appLayout:(id)a5 layoutRole:(int64_t)a6 appLayoutBoundingBox:(CGRect)a7 windowScene:(id)a8 direction:(int64_t)a9 gestureInitiated:(BOOL)a10 delegate:(id)a11 uuid:(id)a12;
- (SBPIPMorphAnimatorControllerDelegate)delegate;
- (void)_performAnimatorWaitingForExternalAnimationActionBlock;
- (void)_terminate;
- (void)cancel;
- (void)didEndSourceAnimations:(unint64_t)a3 finished:(BOOL)a4 continueBlock:(id)a5;
- (void)didEndTargetAnimations:(unint64_t)a3 finished:(BOOL)a4 continueBlock:(id)a5;
- (void)setAnimatorWaitingForExternalAnimationActionBlock:(id)a3;
- (void)setPictureInPictureContainerViewController:(id)a3;
- (void)willRemoveTargeMatchMoveAnimationAtFrame:(CGRect)a3 withinSourceFrame:(CGRect)a4;
- (void)willStartSourceAnimations:(unint64_t)a3;
@end

@implementation SBPIPMorphAnimatorController

- (SBPIPMorphAnimatorController)initWithTargetProcessIdentifier:(int)a3 scenePersistenceIdentifier:(id)a4 appLayout:(id)a5 layoutRole:(int64_t)a6 appLayoutBoundingBox:(CGRect)a7 windowScene:(id)a8 direction:(int64_t)a9 gestureInitiated:(BOOL)a10 delegate:(id)a11 uuid:(id)a12
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v22 = a4;
  v39 = a5;
  v23 = a8;
  v24 = a11;
  v25 = a12;
  v40.receiver = self;
  v40.super_class = SBPIPMorphAnimatorController;
  v26 = [(SBPIPMorphAnimatorController *)&v40 init];
  v27 = v26;
  if (v26)
  {
    v37 = v22;
    v26->_targetProcessIdentifier = a3;
    objc_storeStrong(&v26->_scenePersistenceIdentifier, a4);
    objc_storeStrong(&v27->_appLayout, a5);
    v27->_layoutRole = a6;
    v27->_appLayoutBoundingBox.origin.x = x;
    v27->_appLayoutBoundingBox.origin.y = y;
    v27->_appLayoutBoundingBox.size.width = width;
    v27->_appLayoutBoundingBox.size.height = height;
    v27->_gestureInitiated = a10;
    objc_storeStrong(&v27->_uuid, a12);
    objc_storeWeak(&v27->_delegate, v24);
    v28 = [[SBViewMorphAnimator alloc] initWithUUID:v25 windowScene:v23 direction:a9];
    viewMorphAnimator = v27->_viewMorphAnimator;
    v27->_viewMorphAnimator = v28;

    v30 = [v24 dataSourceForMorphAnimatorController:v27];
    viewMorphAnimatorDataSource = v27->_viewMorphAnimatorDataSource;
    v27->_viewMorphAnimatorDataSource = v30;

    [(SBViewMorphAnimator *)v27->_viewMorphAnimator setDataSource:v27->_viewMorphAnimatorDataSource];
    v32 = v27->_viewMorphAnimator;
    v33 = +[SBPIPSettingsDomain rootSettings];
    v34 = [v33 fluidTransitionsSettings];
    v35 = [v34 targetClippingFluidBehavior];
    [(SBViewMorphAnimator *)v32 setTargetClipAnimationSettings:v35];

    v22 = v37;
    [(SBViewMorphAnimator *)v27->_viewMorphAnimator addObserver:v27];
  }

  return v27;
}

- (void)setPictureInPictureContainerViewController:(id)a3
{
  v9 = a3;
  v4 = objc_storeWeak(&self->_pictureInPictureContainerViewController, v9);
  [v9 transitionAnimationWillBegin];
  if ([(SBViewMorphAnimator *)self->_viewMorphAnimator direction]== 1)
  {
    [(SBViewMorphAnimator *)self->_viewMorphAnimator setAutomaticallyStartTargetAnimations:0];
  }

  viewMorphAnimator = self->_viewMorphAnimator;
  v6 = [v9 morphAnimatorTargetView];
  [(SBViewMorphAnimator *)viewMorphAnimator setTargetView:v6];

  v7 = self->_viewMorphAnimator;
  v8 = [v9 morphAnimatorTargetContainerView];
  [(SBViewMorphAnimator *)v7 setTargetContentView:v8];
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

- (void)setAnimatorWaitingForExternalAnimationActionBlock:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    [(SBPIPMorphAnimatorController *)a2 setAnimatorWaitingForExternalAnimationActionBlock:?];
  }

  if ([(SBPIPMorphAnimatorController *)self _isWaitingForExternalAnimationCompletion])
  {
    v7[2]();
  }

  else
  {
    v5 = MEMORY[0x223D6F7F0](v7);
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

- (void)willStartSourceAnimations:(unint64_t)a3
{
  setupCompletionBlock = self->_setupCompletionBlock;
  if (setupCompletionBlock)
  {
    setupCompletionBlock[2]();
  }
}

- (void)didEndSourceAnimations:(unint64_t)a3 finished:(BOOL)a4 continueBlock:(id)a5
{
  if ((a3 & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureContainerViewController);
    [WeakRetained transitionAnimationDidEnd];
  }
}

- (void)didEndTargetAnimations:(unint64_t)a3 finished:(BOOL)a4 continueBlock:(id)a5
{
  self->_completedTargetAnimations |= a3;
  if ([(SBPIPMorphAnimatorController *)self _isWaitingForExternalAnimationCompletion])
  {

    [(SBPIPMorphAnimatorController *)self _performAnimatorWaitingForExternalAnimationActionBlock];
  }

  else if (self->_completedTargetAnimations == 7)
  {

    [(SBPIPMorphAnimatorController *)self _terminate];
  }
}

- (void)willRemoveTargeMatchMoveAnimationAtFrame:(CGRect)a3 withinSourceFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v40 = [(SBViewMorphAnimator *)self->_viewMorphAnimator dataSource];
  [v40 sourceSubviewFrame:self->_viewMorphAnimator inScreenSpaceForAnimator:{v11, v10, v9, v8}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v40 sourceSubviewFrame:self->_viewMorphAnimator inScreenSpaceForAnimator:{x, y, width, height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureContainerViewController);
  v30 = [WeakRetained bundleIdentifier];
  v31 = [v30 isEqualToString:@"com.apple.InCallService"];

  v32 = [(SBViewMorphAnimator *)self->_viewMorphAnimator windowScene];
  v33 = [v32 switcherController];
  v34 = [v33 windowManagementContext];
  v35 = [v34 isChamoisOrFlexibleWindowing];

  if (v35 & 1 | ((v31 & 1) == 0))
  {
    v36 = v14;
  }

  else
  {
    v36 = v22;
  }

  if (v35 & 1 | ((v31 & 1) == 0))
  {
    v37 = v16;
  }

  else
  {
    v37 = v24;
  }

  if (v35 & 1 | ((v31 & 1) == 0))
  {
    v38 = v18;
  }

  else
  {
    v38 = v26;
  }

  if (v35 & 1 | ((v31 & 1) == 0))
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