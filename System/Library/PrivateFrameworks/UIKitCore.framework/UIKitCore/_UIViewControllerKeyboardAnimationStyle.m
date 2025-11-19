@interface _UIViewControllerKeyboardAnimationStyle
+ (_UIViewControllerKeyboardAnimationStyle)animationStyleWithContext:(id)a3 useCustomTransition:(BOOL)a4;
- (BOOL)isAnimationCompleted;
- (BOOL)isEqual:(id)a3;
- (_UIViewControllerKeyboardAnimationStyle)initWithContext:(id)a3;
- (id)controllerForStartPlacement:(id)a3 endPlacement:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_launchAnimation:(id)a3 afterStarted:(id)a4 completion:(id)a5 forHost:(id)a6 fromCurrentPosition:(BOOL)a7;
- (void)launchAnimation:(id)a3 afterStarted:(id)a4 completion:(id)a5 forHost:(id)a6 fromCurrentPosition:(BOOL)a7;
@end

@implementation _UIViewControllerKeyboardAnimationStyle

- (BOOL)isAnimationCompleted
{
  v2 = [(_UIViewControllerKeyboardAnimationStyle *)self info];
  v3 = [v2 isAnimationCompleting];

  return v3;
}

- (_UIViewControllerKeyboardAnimationStyle)initWithContext:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = _UIViewControllerKeyboardAnimationStyle;
  v6 = [(_UIViewControllerKeyboardAnimationStyle *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = objc_alloc_init(_UIViewControllerKeyboardAnimationStyleInfo);
    objc_storeStrong(&v7->_info, v8);
    *(&v7->_allowCustomTransition + 1) = 1;
    v9 = [(_UIViewControllerKeyboardAnimationStyle *)v7 context];
    v10 = [v9 _willCompleteHandler];
    [(_UIViewControllerKeyboardAnimationStyleInfo *)v7->_info setPreviousCompleteHandler:v10];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59___UIViewControllerKeyboardAnimationStyle_initWithContext___block_invoke;
    v14[3] = &unk_1E7104C08;
    v15 = v8;
    v11 = v8;
    v12 = [(_UIViewControllerKeyboardAnimationStyle *)v7 context];
    [v12 _setWillCompleteHandler:v14];
  }

  return v7;
}

+ (_UIViewControllerKeyboardAnimationStyle)animationStyleWithContext:(id)a3 useCustomTransition:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[_UIViewControllerKeyboardAnimationStyle alloc] initWithContext:v5];
  -[UIInputViewAnimationStyle setAnimated:](v6, "setAnimated:", [v5 isAnimated]);
  v7 = [v5 _animator];
  [v7 transitionDuration:v5];
  [(UIInputViewAnimationStyle *)v6 setDuration:?];

  [(UIInputViewAnimationStyle *)v6 setExtraOptions:96];
  v8 = [v5 _animator];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v5 _animator];
    v10 = [v9 _allowKeyboardToAnimateAlongside:v5];
  }

  else
  {
    v10 = [v5 isInteractive];
  }

  if (v10)
  {
    v11 = 196608;
  }

  else
  {
    v11 = 458752;
  }

  [(UIInputViewAnimationStyle *)v6 setExtraOptions:[(UIInputViewAnimationStyle *)v6 extraOptions]| v11];
  [(_UIViewControllerKeyboardAnimationStyle *)v6 setDisableAlongsideView:v10 ^ 1u];
  [(_UIViewControllerKeyboardAnimationStyle *)v6 setAllowCustomTransition:v4];
  [(UIInputViewAnimationStyleDirectional *)v6 setOutDirection:0];
  if (v4)
  {
    v12 = [v5 _animator];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [v5 _animator];
      v15 = [v14 transition];

      [(UIInputViewAnimationStyleDirectional *)v6 setOutDirection:[UIViewController _keyboardDirectionForTransition:v15]];
      [(_UIViewControllerKeyboardAnimationStyle *)v6 setAnimationType:[UIViewController _keyboardAnimationTypeForTransition:v15]];
    }
  }

  return v6;
}

- (void)launchAnimation:(id)a3 afterStarted:(id)a4 completion:(id)a5 forHost:(id)a6 fromCurrentPosition:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([(UIInputViewAnimationStyle *)self animated])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __111___UIViewControllerKeyboardAnimationStyle_launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke;
    v16[3] = &unk_1E7104C30;
    v16[4] = self;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v17 = v15;
    v21 = v7;
    [UIView _performWithAnimation:v16];
  }

  else
  {
    [(_UIViewControllerKeyboardAnimationStyle *)self _launchAnimation:v12 afterStarted:v13 completion:v14 forHost:v15 fromCurrentPosition:v7];
  }
}

- (void)_launchAnimation:(id)a3 afterStarted:(id)a4 completion:(id)a5 forHost:(id)a6 fromCurrentPosition:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(_UIViewControllerKeyboardAnimationStyle *)self info];
  [v16 setIsAnimationCompleting:0];

  if (+[UIView areAnimationsEnabled])
  {
    v17 = +[UIDevice currentDevice];
    v18 = [v17 userInterfaceIdiom];

    if ((v18 & 0xFFFFFFFFFFFFFFFBLL) == 1 || -[_UIViewControllerKeyboardAnimationStyle disableAlongsideView](self, "disableAlongsideView") || !-[UIInputViewAnimationStyle animated](self, "animated") || (-[_UIViewControllerKeyboardAnimationStyle context](self, "context"), v19 = objc_claimAutoreleasedReturnValue(), [v19 _auxContext], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "transitioningView"), v21 = objc_claimAutoreleasedReturnValue(), v26[0] = MEMORY[0x1E69E9820], v26[1] = 3221225472, v26[2] = __112___UIViewControllerKeyboardAnimationStyle__launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke, v26[3] = &unk_1E7104C58, v27 = v12, v28 = v13, v24[0] = MEMORY[0x1E69E9820], v24[1] = 3221225472, v24[2] = __112___UIViewControllerKeyboardAnimationStyle__launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke_2, v24[3] = &unk_1E7101880, v24[4] = self, v25 = v14, v22 = objc_msgSend(v20, "animateAlongsideTransitionInView:animation:completion:", v21, v26, v24), v21, v20, v19, v25, v28, v27, (v22 & 1) == 0))
    {
      v23.receiver = self;
      v23.super_class = _UIViewControllerKeyboardAnimationStyle;
      [(UIInputViewAnimationStyle *)&v23 launchAnimation:v12 afterStarted:v13 completion:v14 forHost:v15 fromCurrentPosition:v7];
    }
  }

  else
  {
    v12[2](v12);
    v13[2](v13);
    (*(v14 + 2))(v14, 1);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _UIViewControllerKeyboardAnimationStyle;
  v4 = [(UIInputViewAnimationStyleDirectional *)&v8 copyWithZone:a3];
  v5 = [(_UIViewControllerKeyboardAnimationStyle *)self context];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  objc_storeStrong(v4 + 9, self->_info);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIViewControllerKeyboardAnimationStyle;
  if ([(UIInputViewAnimationStyleDirectional *)&v9 isEqual:v4])
  {
    v5 = [(_UIViewControllerKeyboardAnimationStyle *)self context];
    v6 = [v4 context];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)controllerForStartPlacement:(id)a3 endPlacement:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[_UIViewControllerKeyboardAnimationStyle allowCustomTransition](self, "allowCustomTransition") && (-[_UIViewControllerKeyboardAnimationStyle context](self, "context"), v8 = objc_claimAutoreleasedReturnValue(), [v8 _animator], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0) && ((-[_UIViewControllerKeyboardAnimationStyle context](self, "context"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "_animator"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, v11, (v13 & 1) == 0) || (-[_UIViewControllerKeyboardAnimationStyle context](self, "context"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "_animator"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "wantsToCommandeerKeyboardTransition"), v15, v14, v16)))
  {
    v17 = [(_UIViewControllerKeyboardAnimationStyle *)self context];
    v18 = [UIInputViewAnimationControllerViewController controllerWithContext:v17];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _UIViewControllerKeyboardAnimationStyle;
    v18 = [(UIInputViewAnimationStyleDirectional *)&v20 controllerForStartPlacement:v6 endPlacement:v7];
  }

  return v18;
}

@end