@interface _TVRUIAnimationState
+ (_TVRUIAnimationState)animationStateWithIndex:(unint64_t)index previousIndex:(unint64_t)previousIndex toViewController:(id)controller fromViewController:(id)viewController isInteractive:(BOOL)interactive;
- (BOOL)isParticpantViewController:(id)controller;
- (_TVRUIAnimationState)initWithIndex:(unint64_t)index previousIndex:(unint64_t)previousIndex toViewController:(id)controller fromViewController:(id)viewController isInteractive:(BOOL)interactive;
- (id)viewControllersNoLongerAnimatingForDestinationAnimationState:(id)state;
@end

@implementation _TVRUIAnimationState

- (_TVRUIAnimationState)initWithIndex:(unint64_t)index previousIndex:(unint64_t)previousIndex toViewController:(id)controller fromViewController:(id)viewController isInteractive:(BOOL)interactive
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v18.receiver = self;
  v18.super_class = _TVRUIAnimationState;
  v15 = [(_TVRUIAnimationState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_index = index;
    v15->_previousIndex = previousIndex;
    objc_storeStrong(&v15->_toViewController, controller);
    objc_storeStrong(&v16->_fromViewController, viewController);
    v16->_isInteractive = interactive;
  }

  return v16;
}

+ (_TVRUIAnimationState)animationStateWithIndex:(unint64_t)index previousIndex:(unint64_t)previousIndex toViewController:(id)controller fromViewController:(id)viewController isInteractive:(BOOL)interactive
{
  interactiveCopy = interactive;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v14 = [[self alloc] initWithIndex:index previousIndex:previousIndex toViewController:controllerCopy fromViewController:viewControllerCopy isInteractive:interactiveCopy];

  return v14;
}

- (BOOL)isParticpantViewController:(id)controller
{
  controllerCopy = controller;
  toViewController = [(_TVRUIAnimationState *)self toViewController];
  if (toViewController == controllerCopy)
  {
    v7 = 1;
  }

  else
  {
    fromViewController = [(_TVRUIAnimationState *)self fromViewController];
    v7 = fromViewController == controllerCopy;
  }

  return v7;
}

- (id)viewControllersNoLongerAnimatingForDestinationAnimationState:(id)state
{
  stateCopy = state;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __85___TVRUIAnimationState_viewControllersNoLongerAnimatingForDestinationAnimationState___block_invoke;
  v14 = &unk_279D88A98;
  v5 = stateCopy;
  v15 = v5;
  v16 = &v17;
  v6 = _Block_copy(&v11);
  v7 = [(_TVRUIAnimationState *)self fromViewController:v11];
  v6[2](v6, v7);

  toViewController = [(_TVRUIAnimationState *)self toViewController];
  v6[2](v6, toViewController);

  v9 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v9;
}

@end