@interface _UIViewControllerKeyboardAnimationStyle
+ (_UIViewControllerKeyboardAnimationStyle)animationStyleWithContext:(id)context useCustomTransition:(BOOL)transition;
- (BOOL)isAnimationCompleted;
- (BOOL)isEqual:(id)equal;
- (_UIViewControllerKeyboardAnimationStyle)initWithContext:(id)context;
- (id)controllerForStartPlacement:(id)placement endPlacement:(id)endPlacement;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_launchAnimation:(id)animation afterStarted:(id)started completion:(id)completion forHost:(id)host fromCurrentPosition:(BOOL)position;
- (void)launchAnimation:(id)animation afterStarted:(id)started completion:(id)completion forHost:(id)host fromCurrentPosition:(BOOL)position;
@end

@implementation _UIViewControllerKeyboardAnimationStyle

- (BOOL)isAnimationCompleted
{
  info = [(_UIViewControllerKeyboardAnimationStyle *)self info];
  isAnimationCompleting = [info isAnimationCompleting];

  return isAnimationCompleting;
}

- (_UIViewControllerKeyboardAnimationStyle)initWithContext:(id)context
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = _UIViewControllerKeyboardAnimationStyle;
  v6 = [(_UIViewControllerKeyboardAnimationStyle *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = objc_alloc_init(_UIViewControllerKeyboardAnimationStyleInfo);
    objc_storeStrong(&v7->_info, v8);
    *(&v7->_allowCustomTransition + 1) = 1;
    context = [(_UIViewControllerKeyboardAnimationStyle *)v7 context];
    _willCompleteHandler = [context _willCompleteHandler];
    [(_UIViewControllerKeyboardAnimationStyleInfo *)v7->_info setPreviousCompleteHandler:_willCompleteHandler];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59___UIViewControllerKeyboardAnimationStyle_initWithContext___block_invoke;
    v14[3] = &unk_1E7104C08;
    v15 = v8;
    v11 = v8;
    context2 = [(_UIViewControllerKeyboardAnimationStyle *)v7 context];
    [context2 _setWillCompleteHandler:v14];
  }

  return v7;
}

+ (_UIViewControllerKeyboardAnimationStyle)animationStyleWithContext:(id)context useCustomTransition:(BOOL)transition
{
  transitionCopy = transition;
  contextCopy = context;
  v6 = [[_UIViewControllerKeyboardAnimationStyle alloc] initWithContext:contextCopy];
  -[UIInputViewAnimationStyle setAnimated:](v6, "setAnimated:", [contextCopy isAnimated]);
  _animator = [contextCopy _animator];
  [_animator transitionDuration:contextCopy];
  [(UIInputViewAnimationStyle *)v6 setDuration:?];

  [(UIInputViewAnimationStyle *)v6 setExtraOptions:96];
  _animator2 = [contextCopy _animator];
  if (objc_opt_respondsToSelector())
  {
    _animator3 = [contextCopy _animator];
    isInteractive = [_animator3 _allowKeyboardToAnimateAlongside:contextCopy];
  }

  else
  {
    isInteractive = [contextCopy isInteractive];
  }

  if (isInteractive)
  {
    v11 = 196608;
  }

  else
  {
    v11 = 458752;
  }

  [(UIInputViewAnimationStyle *)v6 setExtraOptions:[(UIInputViewAnimationStyle *)v6 extraOptions]| v11];
  [(_UIViewControllerKeyboardAnimationStyle *)v6 setDisableAlongsideView:isInteractive ^ 1u];
  [(_UIViewControllerKeyboardAnimationStyle *)v6 setAllowCustomTransition:transitionCopy];
  [(UIInputViewAnimationStyleDirectional *)v6 setOutDirection:0];
  if (transitionCopy)
  {
    _animator4 = [contextCopy _animator];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      _animator5 = [contextCopy _animator];
      transition = [_animator5 transition];

      [(UIInputViewAnimationStyleDirectional *)v6 setOutDirection:[UIViewController _keyboardDirectionForTransition:transition]];
      [(_UIViewControllerKeyboardAnimationStyle *)v6 setAnimationType:[UIViewController _keyboardAnimationTypeForTransition:transition]];
    }
  }

  return v6;
}

- (void)launchAnimation:(id)animation afterStarted:(id)started completion:(id)completion forHost:(id)host fromCurrentPosition:(BOOL)position
{
  positionCopy = position;
  animationCopy = animation;
  startedCopy = started;
  completionCopy = completion;
  hostCopy = host;
  if ([(UIInputViewAnimationStyle *)self animated])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __111___UIViewControllerKeyboardAnimationStyle_launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke;
    v16[3] = &unk_1E7104C30;
    v16[4] = self;
    v18 = animationCopy;
    v19 = startedCopy;
    v20 = completionCopy;
    v17 = hostCopy;
    v21 = positionCopy;
    [UIView _performWithAnimation:v16];
  }

  else
  {
    [(_UIViewControllerKeyboardAnimationStyle *)self _launchAnimation:animationCopy afterStarted:startedCopy completion:completionCopy forHost:hostCopy fromCurrentPosition:positionCopy];
  }
}

- (void)_launchAnimation:(id)animation afterStarted:(id)started completion:(id)completion forHost:(id)host fromCurrentPosition:(BOOL)position
{
  positionCopy = position;
  animationCopy = animation;
  startedCopy = started;
  completionCopy = completion;
  hostCopy = host;
  info = [(_UIViewControllerKeyboardAnimationStyle *)self info];
  [info setIsAnimationCompleting:0];

  if (+[UIView areAnimationsEnabled])
  {
    v17 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v17 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || -[_UIViewControllerKeyboardAnimationStyle disableAlongsideView](self, "disableAlongsideView") || !-[UIInputViewAnimationStyle animated](self, "animated") || (-[_UIViewControllerKeyboardAnimationStyle context](self, "context"), v19 = objc_claimAutoreleasedReturnValue(), [v19 _auxContext], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(hostCopy, "transitioningView"), v21 = objc_claimAutoreleasedReturnValue(), v26[0] = MEMORY[0x1E69E9820], v26[1] = 3221225472, v26[2] = __112___UIViewControllerKeyboardAnimationStyle__launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke, v26[3] = &unk_1E7104C58, v27 = animationCopy, v28 = startedCopy, v24[0] = MEMORY[0x1E69E9820], v24[1] = 3221225472, v24[2] = __112___UIViewControllerKeyboardAnimationStyle__launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke_2, v24[3] = &unk_1E7101880, v24[4] = self, v25 = completionCopy, v22 = objc_msgSend(v20, "animateAlongsideTransitionInView:animation:completion:", v21, v26, v24), v21, v20, v19, v25, v28, v27, (v22 & 1) == 0))
    {
      v23.receiver = self;
      v23.super_class = _UIViewControllerKeyboardAnimationStyle;
      [(UIInputViewAnimationStyle *)&v23 launchAnimation:animationCopy afterStarted:startedCopy completion:completionCopy forHost:hostCopy fromCurrentPosition:positionCopy];
    }
  }

  else
  {
    animationCopy[2](animationCopy);
    startedCopy[2](startedCopy);
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _UIViewControllerKeyboardAnimationStyle;
  v4 = [(UIInputViewAnimationStyleDirectional *)&v8 copyWithZone:zone];
  context = [(_UIViewControllerKeyboardAnimationStyle *)self context];
  v6 = *(v4 + 8);
  *(v4 + 8) = context;

  objc_storeStrong(v4 + 9, self->_info);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _UIViewControllerKeyboardAnimationStyle;
  if ([(UIInputViewAnimationStyleDirectional *)&v9 isEqual:equalCopy])
  {
    context = [(_UIViewControllerKeyboardAnimationStyle *)self context];
    context2 = [equalCopy context];
    v7 = [context isEqual:context2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)controllerForStartPlacement:(id)placement endPlacement:(id)endPlacement
{
  placementCopy = placement;
  endPlacementCopy = endPlacement;
  if (-[_UIViewControllerKeyboardAnimationStyle allowCustomTransition](self, "allowCustomTransition") && (-[_UIViewControllerKeyboardAnimationStyle context](self, "context"), v8 = objc_claimAutoreleasedReturnValue(), [v8 _animator], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0) && ((-[_UIViewControllerKeyboardAnimationStyle context](self, "context"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "_animator"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, v11, (v13 & 1) == 0) || (-[_UIViewControllerKeyboardAnimationStyle context](self, "context"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "_animator"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "wantsToCommandeerKeyboardTransition"), v15, v14, v16)))
  {
    context = [(_UIViewControllerKeyboardAnimationStyle *)self context];
    v18 = [UIInputViewAnimationControllerViewController controllerWithContext:context];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _UIViewControllerKeyboardAnimationStyle;
    v18 = [(UIInputViewAnimationStyleDirectional *)&v20 controllerForStartPlacement:placementCopy endPlacement:endPlacementCopy];
  }

  return v18;
}

@end