@interface _UIContextMenuPresentation
- (BOOL)addDismissalCompletion:(id)a3;
- (BOOL)contextMenuUIControllerShouldAllowSwipeToDismissForBeginningPanInteraction:(id)a3;
- (NSArray)visibleMenus;
- (_UIContextMenuPresentation)initWithPresentingViewController:(id)a3 configuration:(id)a4 style:(id)a5 outgoingPresentation:(id)a6;
- (_UIContextMenuPresentationDelegate)delegate;
- (_UIFulfilledContextMenuConfiguration)menuConfiguration;
- (id)_platformMetrics;
- (id)contextMenuUIController:(id)a3 dismissalPreviewForItem:(id)a4 clientReturnedPreview:(BOOL *)a5;
- (id)contextMenuUIController:(id)a3 willDisplayMenu:(id)a4;
- (id)livePreviewForDragItem:(id)a3 preferringFullSize:(BOOL)a4;
- (id)preferredFocusEnvironmentsForContextMenuPreviewPresentationController:(id)a3;
- (id)previewForCancellingDragItem:(id)a3;
- (id)windowSceneActivationPreview;
- (void)contextMenuPreviewPresentationController:(id)a3 didChangePreviewContentSize:(CGSize)a4;
- (void)contextMenuUIController:(id)a3 didBeginDragWithTouch:(id)a4;
- (void)contextMenuUIController:(id)a3 didRequestDismissalWithReason:(unint64_t)a4 alongsideActions:(id)a5 completion:(id)a6;
- (void)contextMenuUIController:(id)a3 didSelectMenuLeaf:(id)a4;
- (void)contextMenuUIControllerDidEndPanInteraction:(id)a3;
- (void)contextMenuUIControllerWillPerformLayout:(id)a3 withPreviewSize:(CGSize)a4;
- (void)dismiss;
- (void)displayMenu:(id)a3 inPlaceOfMenu:(id)a4;
- (void)dragWillCancelWithAnimator:(id)a3;
- (void)prepareToDismiss;
- (void)prepareToPresent;
- (void)present;
- (void)requestMenuDismissal;
- (void)retargetDismissingMenuToPreview:(id)a3;
- (void)setAlongsideAnimatorForDismissal:(id)a3;
- (void)setAlongsideAnimatorForPresentation:(id)a3;
- (void)viewTraitCollectionDidChange;
@end

@implementation _UIContextMenuPresentation

- (id)_platformMetrics
{
  v2 = [(_UIContextMenuPresentation *)self uiController];
  v3 = [v2 platterContainerView];
  v4 = [v3 traitCollection];
  v5 = _UIContextMenuGetPlatformMetrics([v4 userInterfaceIdiom]);

  return v5;
}

- (void)prepareToPresent
{
  v3 = [(_UIContextMenuPresentation *)self uiController];
  [v3 presentationTransitionWillBegin];
  v4 = [(_UIClickPresentation *)self appearanceTransition];
  [v4 setIsDismissTransition:0];
  v5 = [(_UIClickPresentation *)self presentationController];
  v6 = [v5 presentedViewController];
  v7 = [v6 view];
  [v4 prepareTransitionToView:v7];

  v8 = [v4 presentationAlongsideAnimator];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46___UIContextMenuPresentation_prepareToPresent__block_invoke;
  v10[3] = &unk_1E70F3590;
  v11 = v3;
  v9 = v3;
  [v8 addCompletion:v10];
}

- (_UIContextMenuPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIFulfilledContextMenuConfiguration)menuConfiguration
{
  v2 = [(_UIContextMenuPresentation *)self uiController];
  v3 = [v2 menuConfiguration];

  return v3;
}

- (void)present
{
  v8 = [(_UIClickPresentation *)self appearanceTransition];
  if (([v8 isDismissTransition] & 1) == 0)
  {
    [v8 performTransition];
    v3 = [(_UIClickPresentation *)self presentationController];
    v4 = [(_UIContextMenuUIController *)self->_uiController contentPlatterView];
    [v3 menuDidPresentWithContentPlatterView:v4];

    v5 = [(_UIContextMenuPresentation *)self uiController];
    v6 = [v5 platterContainerView];
    v7 = [_UIContextMenuSceneComponent sceneComponentForView:v6];
    [v7 registerPresentation:self];
  }
}

- (_UIContextMenuPresentation)initWithPresentingViewController:(id)a3 configuration:(id)a4 style:(id)a5 outgoingPresentation:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [v10 previewViewController];
  if ([v11 preferredLayout] == 3 || objc_msgSend(v11, "preferredLayout") == 1 && !v14)
  {
    v15 = [_UIContextMenuActionsOnlyViewController alloc];
    v16 = [v10 sourcePreview];
    v17 = [(_UIContextMenuActionsOnlyViewController *)v15 initWithTargetedPreview:v16];

    v14 = v17;
  }

  v18 = [(UIPresentationController *)[_UIContextMenuPreviewPresentationController alloc] initWithPresentedViewController:v14 presentingViewController:v13];

  [(_UIContextMenuPreviewPresentationController *)v18 setMenuPresentationDelegate:self];
  [(_UIContextMenuPreviewPresentationController *)v18 setMenuStyle:v11];
  v26.receiver = self;
  v26.super_class = _UIContextMenuPresentation;
  v19 = [(_UIClickPresentation *)&v26 initWithPresentedViewController:v14 presentationController:v18];
  if (v19)
  {
    v20 = [[_UIContextMenuUIController alloc] initWithConfiguration:v10 style:v11];
    objc_storeStrong(&v19->_uiController, v20);
    [(_UIContextMenuUIController *)v19->_uiController setDelegate:v19];
    v21 = [(_UIContextMenuUIController *)v20 platterContainerView];
    [(_UIClickPresentation *)v19 setCustomViewForTouchContinuation:v21];

    if (_UIContextMenuMagicMorphAnimationEnabled())
    {
      v22 = [v12 disappearanceTransition];
      v23 = [[_UIContextMenuLiquidMorphPresentationAnimation alloc] initWithUIController:v20 previousAnimation:v22];
      [(_UIClickPresentation *)v19 setAppearanceTransition:v23];
      [(_UIClickPresentation *)v19 setDisappearanceTransition:v23];
    }

    else
    {
      v24 = [[_UIContextMenuBasicMorphPresentationAnimation alloc] initWithUIController:v20 asDismissal:0];
      [(_UIClickPresentation *)v19 setAppearanceTransition:v24];

      v22 = [[_UIContextMenuBasicMorphPresentationAnimation alloc] initWithUIController:v20 asDismissal:1];
      [(_UIClickPresentation *)v19 setDisappearanceTransition:v22];
    }
  }

  return v19;
}

- (NSArray)visibleMenus
{
  v2 = [(_UIContextMenuPresentation *)self uiController];
  v3 = [v2 menuView];
  v4 = [v3 visibleMenus];

  return v4;
}

- (void)setAlongsideAnimatorForPresentation:(id)a3
{
  v4 = a3;
  v5 = [(_UIClickPresentation *)self appearanceTransition];
  [v5 setPresentationAlongsideAnimator:v4];

  v6 = [(_UIContextMenuPresentation *)self _platformMetrics];
  v7 = [v6 animateAlongsideTransition];

  if (v7)
  {
    v8 = [v5 presentationAlongsideAnimator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66___UIContextMenuPresentation_setAlongsideAnimatorForPresentation___block_invoke;
    v9[3] = &unk_1E70F4A50;
    v9[4] = self;
    v10 = v7;
    [v8 addAnimations:v9];
  }
}

- (void)setAlongsideAnimatorForDismissal:(id)a3
{
  v4 = a3;
  v5 = [(_UIClickPresentation *)self disappearanceTransition];
  [v5 setDismissalAlongsideAnimator:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___UIContextMenuPresentation_setAlongsideAnimatorForDismissal___block_invoke;
  v11[3] = &unk_1E70F3590;
  v11[4] = self;
  [v4 addCompletion:v11];

  v6 = [(_UIContextMenuPresentation *)self _platformMetrics];
  v7 = [v6 animateAlongsideTransition];

  if (v7)
  {
    v8 = [v5 dismissalAlongsideAnimator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63___UIContextMenuPresentation_setAlongsideAnimatorForDismissal___block_invoke_2;
    v9[3] = &unk_1E70F4A50;
    v9[4] = self;
    v10 = v7;
    [v8 addAnimations:v9];
  }
}

- (void)prepareToDismiss
{
  v9 = [(_UIContextMenuPresentation *)self uiController];
  [v9 dismissalTransitionWillBegin];
  v3 = [(_UIContextMenuPresentation *)self uiController];
  v4 = [v3 platterContainerView];
  v5 = [_UIContextMenuSceneComponent sceneComponentForView:v4];
  [v5 removePresentation:self];

  v6 = [(_UIClickPresentation *)self disappearanceTransition];
  [v6 setIsDismissTransition:1];
  v7 = [v6 sourcePreview];
  v8 = [v7 view];
  [v6 prepareTransitionToView:v8];
}

- (void)dismiss
{
  v2 = [(_UIClickPresentation *)self disappearanceTransition];
  [v2 performTransition];
}

- (BOOL)addDismissalCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIClickPresentation *)self disappearanceTransition];
  v6 = [v5 addCompletion:v4];

  return v6;
}

- (void)displayMenu:(id)a3 inPlaceOfMenu:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIContextMenuPresentation *)self uiController];
  [v8 displayMenu:v7 inPlaceOfMenu:v6];
}

- (void)retargetDismissingMenuToPreview:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuPresentation *)self uiController];
  [v5 retargetDismissingMenuToPreview:v4];

  v6 = [(_UIClickPresentation *)self disappearanceTransition];
  [v6 retargetDismissingMenuToPreview:v4];
}

- (void)viewTraitCollectionDidChange
{
  v2 = [(_UIContextMenuPresentation *)self uiController];
  [v2 viewTraitCollectionDidChange];
}

- (id)livePreviewForDragItem:(id)a3 preferringFullSize:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_UIContextMenuPresentation *)self uiController];
  v8 = [v7 livePreviewForDragItem:v6 preferringFullSize:v4];

  return v8;
}

- (id)previewForCancellingDragItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuPresentation *)self uiController];
  v6 = [v5 previewForCancellingDragItem:v4];

  return v6;
}

- (void)dragWillCancelWithAnimator:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuPresentation *)self uiController];
  [v5 dragWillCancelWithAnimator:v4];
}

- (id)windowSceneActivationPreview
{
  v2 = [(_UIContextMenuPresentation *)self uiController];
  v3 = [v2 windowSceneActivationPreview];

  return v3;
}

- (void)requestMenuDismissal
{
  v3 = [(_UIContextMenuPresentation *)self delegate];
  [v3 contextMenuPresentation:self didRequestDismissalWithReason:5 alongsideActions:0 completion:0];
}

- (id)contextMenuUIController:(id)a3 willDisplayMenu:(id)a4
{
  v5 = a4;
  v6 = [(_UIContextMenuPresentation *)self delegate];
  v7 = [v6 contextMenuPresentation:self willDisplayMenu:v5];

  return v7;
}

- (void)contextMenuUIControllerWillPerformLayout:(id)a3 withPreviewSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [(_UIClickPresentation *)self presentationController];
  [v6 menuLayoutDidProducePreviewSize:{width, height}];
}

- (void)contextMenuUIController:(id)a3 didSelectMenuLeaf:(id)a4
{
  v5 = a4;
  v6 = [(_UIContextMenuPresentation *)self delegate];
  [v6 contextMenuPresentation:self didSelectMenuLeaf:v5];
}

- (void)contextMenuUIController:(id)a3 didRequestDismissalWithReason:(unint64_t)a4 alongsideActions:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [(_UIContextMenuPresentation *)self delegate];
  [v11 contextMenuPresentation:self didRequestDismissalWithReason:a4 alongsideActions:v10 completion:v9];
}

- (BOOL)contextMenuUIControllerShouldAllowSwipeToDismissForBeginningPanInteraction:(id)a3
{
  v3 = self;
  v4 = [(_UIContextMenuPresentation *)self delegate];
  LOBYTE(v3) = [v4 contextMenuPresentationShouldAllowSwipeToDismissForBeginningPanInteraction:v3];

  return v3;
}

- (void)contextMenuUIControllerDidEndPanInteraction:(id)a3
{
  v4 = [(_UIContextMenuPresentation *)self delegate];
  [v4 contextMenuPresentationDidEndPanInteraction:self];
}

- (void)contextMenuUIController:(id)a3 didBeginDragWithTouch:(id)a4
{
  v5 = a4;
  v6 = [(_UIContextMenuPresentation *)self delegate];
  [v6 contextMenuPresentation:self didBeginDragWithTouch:v5];
}

- (id)contextMenuUIController:(id)a3 dismissalPreviewForItem:(id)a4 clientReturnedPreview:(BOOL *)a5
{
  v7 = a4;
  v8 = [(_UIContextMenuPresentation *)self delegate];
  v9 = [v8 contextMenuPresentation:self dismissalPreviewForItem:v7 clientReturnedPreview:a5];

  return v9;
}

- (void)contextMenuPreviewPresentationController:(id)a3 didChangePreviewContentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [(_UIContextMenuPresentation *)self uiController];
  [v6 previewSizeDidChange:{width, height}];
}

- (id)preferredFocusEnvironmentsForContextMenuPreviewPresentationController:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(_UIContextMenuPresentation *)self uiController];
  v5 = [v4 menuView];

  if (v5)
  {
    v6 = [(_UIContextMenuPresentation *)self uiController];
    v7 = [v6 menuView];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

@end