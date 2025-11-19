@interface _TVRUIAnimationState
+ (_TVRUIAnimationState)animationStateWithIndex:(unint64_t)a3 previousIndex:(unint64_t)a4 toViewController:(id)a5 fromViewController:(id)a6 isInteractive:(BOOL)a7;
- (BOOL)isParticpantViewController:(id)a3;
- (_TVRUIAnimationState)initWithIndex:(unint64_t)a3 previousIndex:(unint64_t)a4 toViewController:(id)a5 fromViewController:(id)a6 isInteractive:(BOOL)a7;
- (id)viewControllersNoLongerAnimatingForDestinationAnimationState:(id)a3;
@end

@implementation _TVRUIAnimationState

- (_TVRUIAnimationState)initWithIndex:(unint64_t)a3 previousIndex:(unint64_t)a4 toViewController:(id)a5 fromViewController:(id)a6 isInteractive:(BOOL)a7
{
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _TVRUIAnimationState;
  v15 = [(_TVRUIAnimationState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_index = a3;
    v15->_previousIndex = a4;
    objc_storeStrong(&v15->_toViewController, a5);
    objc_storeStrong(&v16->_fromViewController, a6);
    v16->_isInteractive = a7;
  }

  return v16;
}

+ (_TVRUIAnimationState)animationStateWithIndex:(unint64_t)a3 previousIndex:(unint64_t)a4 toViewController:(id)a5 fromViewController:(id)a6 isInteractive:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = a5;
  v14 = [[a1 alloc] initWithIndex:a3 previousIndex:a4 toViewController:v13 fromViewController:v12 isInteractive:v7];

  return v14;
}

- (BOOL)isParticpantViewController:(id)a3
{
  v4 = a3;
  v5 = [(_TVRUIAnimationState *)self toViewController];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(_TVRUIAnimationState *)self fromViewController];
    v7 = v6 == v4;
  }

  return v7;
}

- (id)viewControllersNoLongerAnimatingForDestinationAnimationState:(id)a3
{
  v4 = a3;
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
  v5 = v4;
  v15 = v5;
  v16 = &v17;
  v6 = _Block_copy(&v11);
  v7 = [(_TVRUIAnimationState *)self fromViewController:v11];
  v6[2](v6, v7);

  v8 = [(_TVRUIAnimationState *)self toViewController];
  v6[2](v6, v8);

  v9 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v9;
}

@end