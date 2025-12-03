@interface _UIWindowRotationAnimationController
- (void)animateTransition:(id)transition;
- (void)dealloc;
@end

@implementation _UIWindowRotationAnimationController

- (void)dealloc
{
  [(_UIWindowRotationAnimationController *)self setAnimations:0];
  v3.receiver = self;
  v3.super_class = _UIWindowRotationAnimationController;
  [(_UIWindowRotationAnimationController *)&v3 dealloc];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  [(_UIWindowRotationAnimationController *)self transitionDuration:transitionCopy];
  v7 = v6;
  skipCallbacks = [(_UIWindowRotationAnimationController *)self skipCallbacks];
  updateStatusBarIfNecessary = [(_UIWindowRotationAnimationController *)self updateStatusBarIfNecessary];
  _toWindowOrientation = [containerView _toWindowOrientation];
  v11 = [UIApp _safeInterfaceOrientationForWindowIfExists:containerView];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58___UIWindowRotationAnimationController_animateTransition___block_invoke;
  aBlock[3] = &unk_1E7104CD0;
  aBlock[4] = self;
  v26 = transitionCopy;
  v12 = containerView;
  v32 = skipCallbacks;
  v27 = v12;
  v29 = _toWindowOrientation;
  v30 = v11;
  v33 = updateStatusBarIfNecessary;
  v13 = v26;
  v28 = v13;
  v31 = v7;
  v14 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58___UIWindowRotationAnimationController_animateTransition___block_invoke_4;
  v22[3] = &unk_1E70F4638;
  v22[4] = self;
  v15 = v13;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  v17 = _Block_copy(v22);
  if ([v15 isAnimated])
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v18 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1)
    {
      goto LABEL_5;
    }

    v19 = _UIInternalPreference_120HzRotationEnabled;
    if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_120HzRotationEnabled)
    {
      goto LABEL_5;
    }

    while (v18 >= v19)
    {
      _UIInternalPreferenceSync(v18, &_UIInternalPreference_120HzRotationEnabled, @"120HzRotationEnabled", _UIInternalPreferenceUpdateBool);
      v19 = _UIInternalPreference_120HzRotationEnabled;
      if (v18 == _UIInternalPreference_120HzRotationEnabled)
      {
        goto LABEL_5;
      }
    }

    if (byte_1EA95E2C4)
    {
LABEL_5:
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __58___UIWindowRotationAnimationController_animateTransition___block_invoke_6;
      v20[3] = &unk_1E70F0F78;
      v21 = v14;
      v14 = _Block_copy(v20);
    }

    [UIView animateWithDuration:4 delay:v14 options:v17 animations:v7 completion:0.0];
    [v15 _setTransitionIsInFlight:1];
  }

  else
  {
    v14[2](v14);
    v17[2](v17, 1);
  }
}

@end