@interface _UICollectionViewControllerLayoutToLayoutTransition
+ (id)transitionForOperation:(int64_t)operation fromViewController:(id)controller toViewController:(id)viewController;
- (void)animateTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
@end

@implementation _UICollectionViewControllerLayoutToLayoutTransition

+ (id)transitionForOperation:(int64_t)operation fromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v9 = objc_alloc_init(objc_opt_class());
  v10 = v9;
  if (v9)
  {
    if ((operation - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      [v9 setOperation:operation];
      [viewControllerCopy loadViewIfRequired];
      collectionViewLayout = [viewControllerCopy collectionViewLayout];
      [v10 setToLayout:collectionViewLayout];

      if (operation == 1)
      {
        v13 = viewControllerCopy;
      }

      else
      {
        v13 = controllerCopy;
      }

      [v10 setCrossFadeNavigationBar:{objc_msgSend(v13, "shouldCrossFadeNavigationBar")}];
      [v10 setCrossFadeBottomBars:{objc_msgSend(v13, "shouldCrossFadeBottomBars")}];
      v11 = v10;
      goto LABEL_9;
    }

    NSLog(&cfstr_AttemptToUseAS_1.isa, v9);
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)animationEnded:(BOOL)ended
{
  interactionController = [(_UICollectionViewControllerLayoutToLayoutTransition *)self interactionController];
  [interactionController _resetInteractionController];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
  v6 = [transitionCopy viewControllerForKey:@"UITransitionContextFromViewController"];
  view = [v5 view];
  collectionView = [v5 collectionView];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __73___UICollectionViewControllerLayoutToLayoutTransition_animateTransition___block_invoke;
  v30[3] = &unk_1E70F3CB0;
  v9 = transitionCopy;
  v31 = v9;
  [collectionView _setNavigationCompletion:v30];

  [v6 _navigationControllerContentInsetAdjustment];
  [v5 _primitiveSetNavigationControllerContentInsetAdjustment:?];
  [v6 _navigationControllerContentOffsetAdjustment];
  [v5 _primitiveSetNavigationControllerContentOffsetAdjustment:?];
  [v6 _contentOverlayInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v6 _leftContentMargin];
  v19 = v18;
  [v6 _rightContentMargin];
  [v5 _setContentOverlayInsets:v11 andLeftMargin:v13 rightMargin:{v15, v17, v19, v20}];
  [v9 finalFrameForViewController:v5];
  [view setFrame:?];
  containerView = [v9 containerView];
  [containerView addSubview:view];

  [(_UICollectionViewControllerLayoutToLayoutTransition *)self transitionDuration:v9];
  v23 = v22;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __73___UICollectionViewControllerLayoutToLayoutTransition_animateTransition___block_invoke_2;
  v26[3] = &unk_1E70F6228;
  v27 = v5;
  selfCopy = self;
  v29 = v9;
  v24 = v9;
  v25 = v5;
  [UIView animateWithDuration:v26 animations:v23];
}

@end