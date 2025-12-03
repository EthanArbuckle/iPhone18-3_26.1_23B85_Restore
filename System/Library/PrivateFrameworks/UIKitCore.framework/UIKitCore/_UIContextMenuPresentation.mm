@interface _UIContextMenuPresentation
- (BOOL)addDismissalCompletion:(id)completion;
- (BOOL)contextMenuUIControllerShouldAllowSwipeToDismissForBeginningPanInteraction:(id)interaction;
- (NSArray)visibleMenus;
- (_UIContextMenuPresentation)initWithPresentingViewController:(id)controller configuration:(id)configuration style:(id)style outgoingPresentation:(id)presentation;
- (_UIContextMenuPresentationDelegate)delegate;
- (_UIFulfilledContextMenuConfiguration)menuConfiguration;
- (id)_platformMetrics;
- (id)contextMenuUIController:(id)controller dismissalPreviewForItem:(id)item clientReturnedPreview:(BOOL *)preview;
- (id)contextMenuUIController:(id)controller willDisplayMenu:(id)menu;
- (id)livePreviewForDragItem:(id)item preferringFullSize:(BOOL)size;
- (id)preferredFocusEnvironmentsForContextMenuPreviewPresentationController:(id)controller;
- (id)previewForCancellingDragItem:(id)item;
- (id)windowSceneActivationPreview;
- (void)contextMenuPreviewPresentationController:(id)controller didChangePreviewContentSize:(CGSize)size;
- (void)contextMenuUIController:(id)controller didBeginDragWithTouch:(id)touch;
- (void)contextMenuUIController:(id)controller didRequestDismissalWithReason:(unint64_t)reason alongsideActions:(id)actions completion:(id)completion;
- (void)contextMenuUIController:(id)controller didSelectMenuLeaf:(id)leaf;
- (void)contextMenuUIControllerDidEndPanInteraction:(id)interaction;
- (void)contextMenuUIControllerWillPerformLayout:(id)layout withPreviewSize:(CGSize)size;
- (void)dismiss;
- (void)displayMenu:(id)menu inPlaceOfMenu:(id)ofMenu;
- (void)dragWillCancelWithAnimator:(id)animator;
- (void)prepareToDismiss;
- (void)prepareToPresent;
- (void)present;
- (void)requestMenuDismissal;
- (void)retargetDismissingMenuToPreview:(id)preview;
- (void)setAlongsideAnimatorForDismissal:(id)dismissal;
- (void)setAlongsideAnimatorForPresentation:(id)presentation;
- (void)viewTraitCollectionDidChange;
@end

@implementation _UIContextMenuPresentation

- (id)_platformMetrics
{
  uiController = [(_UIContextMenuPresentation *)self uiController];
  platterContainerView = [uiController platterContainerView];
  traitCollection = [platterContainerView traitCollection];
  v5 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  return v5;
}

- (void)prepareToPresent
{
  uiController = [(_UIContextMenuPresentation *)self uiController];
  [uiController presentationTransitionWillBegin];
  appearanceTransition = [(_UIClickPresentation *)self appearanceTransition];
  [appearanceTransition setIsDismissTransition:0];
  presentationController = [(_UIClickPresentation *)self presentationController];
  presentedViewController = [presentationController presentedViewController];
  view = [presentedViewController view];
  [appearanceTransition prepareTransitionToView:view];

  presentationAlongsideAnimator = [appearanceTransition presentationAlongsideAnimator];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46___UIContextMenuPresentation_prepareToPresent__block_invoke;
  v10[3] = &unk_1E70F3590;
  v11 = uiController;
  v9 = uiController;
  [presentationAlongsideAnimator addCompletion:v10];
}

- (_UIContextMenuPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIFulfilledContextMenuConfiguration)menuConfiguration
{
  uiController = [(_UIContextMenuPresentation *)self uiController];
  menuConfiguration = [uiController menuConfiguration];

  return menuConfiguration;
}

- (void)present
{
  appearanceTransition = [(_UIClickPresentation *)self appearanceTransition];
  if (([appearanceTransition isDismissTransition] & 1) == 0)
  {
    [appearanceTransition performTransition];
    presentationController = [(_UIClickPresentation *)self presentationController];
    contentPlatterView = [(_UIContextMenuUIController *)self->_uiController contentPlatterView];
    [presentationController menuDidPresentWithContentPlatterView:contentPlatterView];

    uiController = [(_UIContextMenuPresentation *)self uiController];
    platterContainerView = [uiController platterContainerView];
    v7 = [_UIContextMenuSceneComponent sceneComponentForView:platterContainerView];
    [v7 registerPresentation:self];
  }
}

- (_UIContextMenuPresentation)initWithPresentingViewController:(id)controller configuration:(id)configuration style:(id)style outgoingPresentation:(id)presentation
{
  configurationCopy = configuration;
  styleCopy = style;
  presentationCopy = presentation;
  controllerCopy = controller;
  previewViewController = [configurationCopy previewViewController];
  if ([styleCopy preferredLayout] == 3 || objc_msgSend(styleCopy, "preferredLayout") == 1 && !previewViewController)
  {
    v15 = [_UIContextMenuActionsOnlyViewController alloc];
    sourcePreview = [configurationCopy sourcePreview];
    v17 = [(_UIContextMenuActionsOnlyViewController *)v15 initWithTargetedPreview:sourcePreview];

    previewViewController = v17;
  }

  v18 = [(UIPresentationController *)[_UIContextMenuPreviewPresentationController alloc] initWithPresentedViewController:previewViewController presentingViewController:controllerCopy];

  [(_UIContextMenuPreviewPresentationController *)v18 setMenuPresentationDelegate:self];
  [(_UIContextMenuPreviewPresentationController *)v18 setMenuStyle:styleCopy];
  v26.receiver = self;
  v26.super_class = _UIContextMenuPresentation;
  v19 = [(_UIClickPresentation *)&v26 initWithPresentedViewController:previewViewController presentationController:v18];
  if (v19)
  {
    v20 = [[_UIContextMenuUIController alloc] initWithConfiguration:configurationCopy style:styleCopy];
    objc_storeStrong(&v19->_uiController, v20);
    [(_UIContextMenuUIController *)v19->_uiController setDelegate:v19];
    platterContainerView = [(_UIContextMenuUIController *)v20 platterContainerView];
    [(_UIClickPresentation *)v19 setCustomViewForTouchContinuation:platterContainerView];

    if (_UIContextMenuMagicMorphAnimationEnabled())
    {
      disappearanceTransition = [presentationCopy disappearanceTransition];
      v23 = [[_UIContextMenuLiquidMorphPresentationAnimation alloc] initWithUIController:v20 previousAnimation:disappearanceTransition];
      [(_UIClickPresentation *)v19 setAppearanceTransition:v23];
      [(_UIClickPresentation *)v19 setDisappearanceTransition:v23];
    }

    else
    {
      v24 = [[_UIContextMenuBasicMorphPresentationAnimation alloc] initWithUIController:v20 asDismissal:0];
      [(_UIClickPresentation *)v19 setAppearanceTransition:v24];

      disappearanceTransition = [[_UIContextMenuBasicMorphPresentationAnimation alloc] initWithUIController:v20 asDismissal:1];
      [(_UIClickPresentation *)v19 setDisappearanceTransition:disappearanceTransition];
    }
  }

  return v19;
}

- (NSArray)visibleMenus
{
  uiController = [(_UIContextMenuPresentation *)self uiController];
  menuView = [uiController menuView];
  visibleMenus = [menuView visibleMenus];

  return visibleMenus;
}

- (void)setAlongsideAnimatorForPresentation:(id)presentation
{
  presentationCopy = presentation;
  appearanceTransition = [(_UIClickPresentation *)self appearanceTransition];
  [appearanceTransition setPresentationAlongsideAnimator:presentationCopy];

  _platformMetrics = [(_UIContextMenuPresentation *)self _platformMetrics];
  animateAlongsideTransition = [_platformMetrics animateAlongsideTransition];

  if (animateAlongsideTransition)
  {
    presentationAlongsideAnimator = [appearanceTransition presentationAlongsideAnimator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66___UIContextMenuPresentation_setAlongsideAnimatorForPresentation___block_invoke;
    v9[3] = &unk_1E70F4A50;
    v9[4] = self;
    v10 = animateAlongsideTransition;
    [presentationAlongsideAnimator addAnimations:v9];
  }
}

- (void)setAlongsideAnimatorForDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  disappearanceTransition = [(_UIClickPresentation *)self disappearanceTransition];
  [disappearanceTransition setDismissalAlongsideAnimator:dismissalCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___UIContextMenuPresentation_setAlongsideAnimatorForDismissal___block_invoke;
  v11[3] = &unk_1E70F3590;
  v11[4] = self;
  [dismissalCopy addCompletion:v11];

  _platformMetrics = [(_UIContextMenuPresentation *)self _platformMetrics];
  animateAlongsideTransition = [_platformMetrics animateAlongsideTransition];

  if (animateAlongsideTransition)
  {
    dismissalAlongsideAnimator = [disappearanceTransition dismissalAlongsideAnimator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63___UIContextMenuPresentation_setAlongsideAnimatorForDismissal___block_invoke_2;
    v9[3] = &unk_1E70F4A50;
    v9[4] = self;
    v10 = animateAlongsideTransition;
    [dismissalAlongsideAnimator addAnimations:v9];
  }
}

- (void)prepareToDismiss
{
  uiController = [(_UIContextMenuPresentation *)self uiController];
  [uiController dismissalTransitionWillBegin];
  uiController2 = [(_UIContextMenuPresentation *)self uiController];
  platterContainerView = [uiController2 platterContainerView];
  v5 = [_UIContextMenuSceneComponent sceneComponentForView:platterContainerView];
  [v5 removePresentation:self];

  disappearanceTransition = [(_UIClickPresentation *)self disappearanceTransition];
  [disappearanceTransition setIsDismissTransition:1];
  sourcePreview = [disappearanceTransition sourcePreview];
  view = [sourcePreview view];
  [disappearanceTransition prepareTransitionToView:view];
}

- (void)dismiss
{
  disappearanceTransition = [(_UIClickPresentation *)self disappearanceTransition];
  [disappearanceTransition performTransition];
}

- (BOOL)addDismissalCompletion:(id)completion
{
  completionCopy = completion;
  disappearanceTransition = [(_UIClickPresentation *)self disappearanceTransition];
  v6 = [disappearanceTransition addCompletion:completionCopy];

  return v6;
}

- (void)displayMenu:(id)menu inPlaceOfMenu:(id)ofMenu
{
  ofMenuCopy = ofMenu;
  menuCopy = menu;
  uiController = [(_UIContextMenuPresentation *)self uiController];
  [uiController displayMenu:menuCopy inPlaceOfMenu:ofMenuCopy];
}

- (void)retargetDismissingMenuToPreview:(id)preview
{
  previewCopy = preview;
  uiController = [(_UIContextMenuPresentation *)self uiController];
  [uiController retargetDismissingMenuToPreview:previewCopy];

  disappearanceTransition = [(_UIClickPresentation *)self disappearanceTransition];
  [disappearanceTransition retargetDismissingMenuToPreview:previewCopy];
}

- (void)viewTraitCollectionDidChange
{
  uiController = [(_UIContextMenuPresentation *)self uiController];
  [uiController viewTraitCollectionDidChange];
}

- (id)livePreviewForDragItem:(id)item preferringFullSize:(BOOL)size
{
  sizeCopy = size;
  itemCopy = item;
  uiController = [(_UIContextMenuPresentation *)self uiController];
  v8 = [uiController livePreviewForDragItem:itemCopy preferringFullSize:sizeCopy];

  return v8;
}

- (id)previewForCancellingDragItem:(id)item
{
  itemCopy = item;
  uiController = [(_UIContextMenuPresentation *)self uiController];
  v6 = [uiController previewForCancellingDragItem:itemCopy];

  return v6;
}

- (void)dragWillCancelWithAnimator:(id)animator
{
  animatorCopy = animator;
  uiController = [(_UIContextMenuPresentation *)self uiController];
  [uiController dragWillCancelWithAnimator:animatorCopy];
}

- (id)windowSceneActivationPreview
{
  uiController = [(_UIContextMenuPresentation *)self uiController];
  windowSceneActivationPreview = [uiController windowSceneActivationPreview];

  return windowSceneActivationPreview;
}

- (void)requestMenuDismissal
{
  delegate = [(_UIContextMenuPresentation *)self delegate];
  [delegate contextMenuPresentation:self didRequestDismissalWithReason:5 alongsideActions:0 completion:0];
}

- (id)contextMenuUIController:(id)controller willDisplayMenu:(id)menu
{
  menuCopy = menu;
  delegate = [(_UIContextMenuPresentation *)self delegate];
  v7 = [delegate contextMenuPresentation:self willDisplayMenu:menuCopy];

  return v7;
}

- (void)contextMenuUIControllerWillPerformLayout:(id)layout withPreviewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  presentationController = [(_UIClickPresentation *)self presentationController];
  [presentationController menuLayoutDidProducePreviewSize:{width, height}];
}

- (void)contextMenuUIController:(id)controller didSelectMenuLeaf:(id)leaf
{
  leafCopy = leaf;
  delegate = [(_UIContextMenuPresentation *)self delegate];
  [delegate contextMenuPresentation:self didSelectMenuLeaf:leafCopy];
}

- (void)contextMenuUIController:(id)controller didRequestDismissalWithReason:(unint64_t)reason alongsideActions:(id)actions completion:(id)completion
{
  completionCopy = completion;
  actionsCopy = actions;
  delegate = [(_UIContextMenuPresentation *)self delegate];
  [delegate contextMenuPresentation:self didRequestDismissalWithReason:reason alongsideActions:actionsCopy completion:completionCopy];
}

- (BOOL)contextMenuUIControllerShouldAllowSwipeToDismissForBeginningPanInteraction:(id)interaction
{
  selfCopy = self;
  delegate = [(_UIContextMenuPresentation *)self delegate];
  LOBYTE(selfCopy) = [delegate contextMenuPresentationShouldAllowSwipeToDismissForBeginningPanInteraction:selfCopy];

  return selfCopy;
}

- (void)contextMenuUIControllerDidEndPanInteraction:(id)interaction
{
  delegate = [(_UIContextMenuPresentation *)self delegate];
  [delegate contextMenuPresentationDidEndPanInteraction:self];
}

- (void)contextMenuUIController:(id)controller didBeginDragWithTouch:(id)touch
{
  touchCopy = touch;
  delegate = [(_UIContextMenuPresentation *)self delegate];
  [delegate contextMenuPresentation:self didBeginDragWithTouch:touchCopy];
}

- (id)contextMenuUIController:(id)controller dismissalPreviewForItem:(id)item clientReturnedPreview:(BOOL *)preview
{
  itemCopy = item;
  delegate = [(_UIContextMenuPresentation *)self delegate];
  v9 = [delegate contextMenuPresentation:self dismissalPreviewForItem:itemCopy clientReturnedPreview:preview];

  return v9;
}

- (void)contextMenuPreviewPresentationController:(id)controller didChangePreviewContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  uiController = [(_UIContextMenuPresentation *)self uiController];
  [uiController previewSizeDidChange:{width, height}];
}

- (id)preferredFocusEnvironmentsForContextMenuPreviewPresentationController:(id)controller
{
  v10[1] = *MEMORY[0x1E69E9840];
  uiController = [(_UIContextMenuPresentation *)self uiController];
  menuView = [uiController menuView];

  if (menuView)
  {
    uiController2 = [(_UIContextMenuPresentation *)self uiController];
    menuView2 = [uiController2 menuView];
    v10[0] = menuView2;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

@end