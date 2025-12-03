@interface SBHWidgetAddSheetAnimationController
- (CGPoint)fromPoint;
- (SBHPortaledShadowedWidgetView)portaledShadowedWidgetView;
- (SBHWidgetAddSheetAnimationController)initWithSourceCell:(id)cell;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (void)animateTransition:(id)transition;
@end

@implementation SBHWidgetAddSheetAnimationController

- (SBHWidgetAddSheetAnimationController)initWithSourceCell:(id)cell
{
  cellCopy = cell;
  v9.receiver = self;
  v9.super_class = SBHWidgetAddSheetAnimationController;
  v6 = [(_UISheetAnimationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceCell, cell);
  }

  return v7;
}

- (SBHPortaledShadowedWidgetView)portaledShadowedWidgetView
{
  portaledShadowedWidgetView = self->_portaledShadowedWidgetView;
  if (!portaledShadowedWidgetView)
  {
    widgetWrapperViewController = [(SBHAddWidgetSheetGalleryCollectionViewCell *)self->_sourceCell widgetWrapperViewController];
    wrapperView = [widgetWrapperViewController wrapperView];
    newPortaledShadowedWidgetView = [wrapperView newPortaledShadowedWidgetView];
    v7 = self->_portaledShadowedWidgetView;
    self->_portaledShadowedWidgetView = newPortaledShadowedWidgetView;

    portaledShadowedWidgetView = self->_portaledShadowedWidgetView;
  }

  return portaledShadowedWidgetView;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__SBHWidgetAddSheetAnimationController_animateTransition___block_invoke;
  v8[3] = &unk_1E8088F18;
  v9 = transitionCopy;
  selfCopy = self;
  v6 = transitionCopy;
  [v5 performWithoutAnimation:v8];
  v7.receiver = self;
  v7.super_class = SBHWidgetAddSheetAnimationController;
  [(_UISheetAnimationController *)&v7 animateTransition:v6];
}

void __58__SBHWidgetAddSheetAnimationController_animateTransition___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) viewControllerForKey:*MEMORY[0x1E69DE778]];
  v2 = [*(*(a1 + 40) + 192) widgetWrapperViewController];
  v3 = [v2 galleryItem];
  v4 = [*(*(a1 + 40) + 192) widgetWrapperViewController];
  [v5 configureForGalleryItem:v3 selectedSizeClass:{objc_msgSend(v4, "selectedSizeClass")}];
}

- (id)interruptibleAnimatorForTransition:(id)transition
{
  v75[1] = *MEMORY[0x1E69E9840];
  v74.receiver = self;
  v74.super_class = SBHWidgetAddSheetAnimationController;
  transitionCopy = transition;
  v5 = [(_UISheetAnimationController *)&v74 interruptibleAnimatorForTransition:transitionCopy];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  widgetWrapperViewController = [(SBHAddWidgetSheetGalleryCollectionViewCell *)self->_sourceCell widgetWrapperViewController];
  wrapperView = [widgetWrapperViewController wrapperView];
  contentView = [wrapperView contentView];

  currentPage = [v6 currentPage];
  widgetWrapperViewController2 = [currentPage widgetWrapperViewController];
  wrapperView2 = [widgetWrapperViewController2 wrapperView];
  containerView = [wrapperView2 containerView];

  portaledShadowedWidgetView = [(SBHWidgetAddSheetAnimationController *)self portaledShadowedWidgetView];
  containerView2 = [transitionCopy containerView];

  [(SBHWidgetAddSheetAnimationController *)self fromPoint];
  v18 = v17 == *MEMORY[0x1E695EFF8] && v16 == *(MEMORY[0x1E695EFF8] + 8);
  v66 = v6;
  v67 = portaledShadowedWidgetView;
  if (v18)
  {
    [contentView bounds];
    UIRectGetCenter();
    [containerView2 convertPoint:contentView fromView:?];
    self->_fromPoint.x = v29;
    self->_fromPoint.y = v30;
    [containerView bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    view = [v6 view];
    [view bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    [v6 view];
    v48 = v65 = currentPage;
    [containerView2 convertRect:v48 fromView:{v41, v43, v45, v47}];
    v50 = v49;
    v52 = v51;

    [containerView2 bounds];
    v26 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v50, 0.0, v52, v53}];
    [(UIView *)v26 setClipsToBounds:1];
    [(UIView *)v26 setUserInteractionEnabled:0];
    [containerView2 addSubview:v26];
    v54 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v32, v34, v36, v38}];
    matchMoveView = self->_matchMoveView;
    self->_matchMoveView = v54;

    v56 = self->_matchMoveView;
    UIRectGetCenter();
    [(UIView *)v26 convertPoint:containerView fromView:?];
    [(UIView *)v56 setCenter:?];
    [(UIView *)self->_matchMoveView setClipsToBounds:0];
    [(UIView *)self->_matchMoveView setUserInteractionEnabled:0];
    [(UIView *)self->_matchMoveView addSubview:portaledShadowedWidgetView];
    [(UIView *)v26 addSubview:self->_matchMoveView];
    animation = [MEMORY[0x1E69793B8] animation];
    [containerView layer];
    v64 = widgetWrapperViewController;
    v57 = v23 = contentView;
    [animation setSourceLayer:v57];

    [animation setDuration:INFINITY];
    [animation setFillMode:*MEMORY[0x1E69797E0]];
    [animation setRemovedOnCompletion:0];
    [animation setAppliesY:1];
    [animation setAppliesX:1];
    v58 = MEMORY[0x1E696B098];
    UIRectGetCenter();
    v59 = [v58 valueWithCGPoint:?];
    v75[0] = v59;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
    v61 = v60 = v5;
    [animation setSourcePoints:v61];

    v5 = v60;
    layer = [(UIView *)self->_matchMoveView layer];
    [layer addAnimation:animation forKey:@"match-move"];

    v28 = v64;
    v25 = v65;
  }

  else
  {
    forcesEdgeAntialiasing = [widgetWrapperViewController forcesEdgeAntialiasing];
    [widgetWrapperViewController setForcesEdgeAntialiasing:1];
    [currentPage setJumpAnimationInProgress:1];
    [(UIView *)self->_matchMoveView convertPoint:containerView2 fromView:self->_fromPoint.x, self->_fromPoint.y];
    [portaledShadowedWidgetView setCenter:?];
    v20 = self->_matchMoveView;
    v21 = portaledShadowedWidgetView;
    v22 = widgetWrapperViewController;
    v23 = contentView;
    v24 = v20;
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __75__SBHWidgetAddSheetAnimationController_interruptibleAnimatorForTransition___block_invoke;
    v68[3] = &unk_1E80892C0;
    v69 = v20;
    v70 = v21;
    v71 = currentPage;
    v72 = v22;
    v73 = forcesEdgeAntialiasing;
    v25 = currentPage;
    v26 = v24;
    [v5 addAnimations:v68];

    animation = v69;
    v28 = v22;
  }

  return v5;
}

void __75__SBHWidgetAddSheetAnimationController_interruptibleAnimatorForTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  UIRectGetCenter();
  [*(a1 + 40) setCenter:?];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SBHWidgetAddSheetAnimationController_interruptibleAnimatorForTransition___block_invoke_2;
  block[3] = &unk_1E80892C0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __75__SBHWidgetAddSheetAnimationController_interruptibleAnimatorForTransition___block_invoke_2(uint64_t a1)
{
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, 1.4, 1.4);
  v17 = v19;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformTranslate(&v18, &v17, 0.0, 25.0);
  v2 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__SBHWidgetAddSheetAnimationController_interruptibleAnimatorForTransition___block_invoke_3;
  v13[3] = &unk_1E8089270;
  v14 = *(a1 + 32);
  v15 = v19;
  v16 = v18;
  [v2 animateWithDuration:0 delay:v13 usingSpringWithDamping:0 initialSpringVelocity:0.375 options:0.0 animations:1.0 completion:5.0];
  v3 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SBHWidgetAddSheetAnimationController_interruptibleAnimatorForTransition___block_invoke_4;
  v9[3] = &unk_1E8088F88;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__SBHWidgetAddSheetAnimationController_interruptibleAnimatorForTransition___block_invoke_5;
  v4[3] = &unk_1E8089298;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  [v3 animateWithDuration:0 delay:v9 usingSpringWithDamping:v4 initialSpringVelocity:1.5 options:0.0 animations:1.0 completion:0.0];
}

uint64_t __75__SBHWidgetAddSheetAnimationController_interruptibleAnimatorForTransition___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 72);
  [v2 setContentTransform:&v7];
  v4 = *(a1 + 32);
  v5 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = v5;
  v9 = *(a1 + 120);
  return [v4 setShadowSupplementalTransform:&v7];
}

void __75__SBHWidgetAddSheetAnimationController_interruptibleAnimatorForTransition___block_invoke_4(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 wrapperViewTransform];
  }

  v3 = *(a1 + 40);
  v12 = v20;
  v13 = v21;
  v14 = v22;
  [v3 setTransform:&v12];
  v4 = *(a1 + 48);
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v12 = *MEMORY[0x1E695EFD0];
  v11 = v12;
  v13 = v10;
  v14 = *(MEMORY[0x1E695EFD0] + 32);
  v9 = v14;
  [v4 setContentTransform:&v12];
  v5 = *(a1 + 48);
  v12 = v11;
  v13 = v10;
  v14 = v9;
  [v5 setShadowSupplementalTransform:&v12];
  v6 = [*(a1 + 32) widgetWrapperViewController];
  v7 = [v6 wrapperView];

  v8 = *(a1 + 48);
  if (v7)
  {
    [v7 hoverTransform];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  [v8 setTransform3D:&v12];
  [*(a1 + 48) setPerspectiveEnabled:{objc_msgSend(v7, "isHoverAnimationEnabled")}];
}

uint64_t __75__SBHWidgetAddSheetAnimationController_interruptibleAnimatorForTransition___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  [*(a1 + 40) setJumpAnimationInProgress:0];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 setForcesEdgeAntialiasing:v3];
}

- (CGPoint)fromPoint
{
  x = self->_fromPoint.x;
  y = self->_fromPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end