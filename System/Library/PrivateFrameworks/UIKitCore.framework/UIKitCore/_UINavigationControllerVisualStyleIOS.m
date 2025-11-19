@interface _UINavigationControllerVisualStyleIOS
- (_UINavigationControllerVisualStyleIOS)initWithNavigationController:(id)a3;
- (void)layoutContainerViewSemanticContentAttributeChanged:(id)a3;
- (void)updateTransitionControllerWithOperation:(int64_t)a3;
@end

@implementation _UINavigationControllerVisualStyleIOS

- (_UINavigationControllerVisualStyleIOS)initWithNavigationController:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _UINavigationControllerVisualStyleIOS;
  v5 = [(_UINavigationControllerVisualStyle *)&v16 initWithNavigationController:v4];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [[_UINavigationParallaxTransition alloc] initWithCurrentOperation:0];
  transitionController = v5->_transitionController;
  v5->_transitionController = v6;

  v8 = [v4 view];
  -[_UINavigationParallaxTransition _setShouldReverseLayoutDirection:](v5->_transitionController, "_setShouldReverseLayoutDirection:", [v8 _shouldReverseLayoutDirection]);

  v9 = [v4 traitCollection];
  if ([v9 userInterfaceIdiom] != 3)
  {

    goto LABEL_11;
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v10 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    goto LABEL_12;
  }

  v11 = _UIInternalPreference_EnableInteractionControllerOnCarPlay;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_EnableInteractionControllerOnCarPlay)
  {
    goto LABEL_12;
  }

  while (v10 >= v11)
  {
    _UIInternalPreferenceSync(v10, &_UIInternalPreference_EnableInteractionControllerOnCarPlay, @"EnableInteractionControllerOnCarPlay", _UIInternalPreferenceUpdateBool);
    v11 = _UIInternalPreference_EnableInteractionControllerOnCarPlay;
    if (v10 == _UIInternalPreference_EnableInteractionControllerOnCarPlay)
    {
      goto LABEL_12;
    }
  }

  v15 = byte_1EA95E54C;

  if (v15)
  {
LABEL_11:
    v12 = [[_UINavigationInteractiveTransition alloc] initWithViewController:v4 animator:0];
    interactionController = v5->_interactionController;
    v5->_interactionController = v12;

    v9 = [v4 view];
    -[_UINavigationInteractiveTransition _setShouldReverseLayoutDirection:](v5->_interactionController, "_setShouldReverseLayoutDirection:", [v9 _shouldReverseLayoutDirection]);
LABEL_12:
  }

LABEL_13:

  return v5;
}

- (void)updateTransitionControllerWithOperation:(int64_t)a3
{
  v10 = [(_UINavigationControllerVisualStyle *)self navigationController];
  [(_UINavigationParallaxTransition *)self->_transitionController setOperation:a3];
  -[_UINavigationParallaxTransition setClipUnderlapWhileTransitioning:](self->_transitionController, "setClipUnderlapWhileTransitioning:", [v10 _clipUnderlapWhileTransitioning]);
  -[_UINavigationParallaxTransition setTransitionStyle:](self->_transitionController, "setTransitionStyle:", [v10 _builtinTransitionStyle]);
  transitionController = self->_transitionController;
  [v10 _builtinTransitionGap];
  [(_UINavigationParallaxTransition *)transitionController setTransitionGap:?];
  v6 = self->_transitionController;
  v7 = [v10 view];
  -[_UINavigationParallaxTransition _setShouldReverseLayoutDirection:](v6, "_setShouldReverseLayoutDirection:", [v7 _shouldReverseLayoutDirection]);

  v8 = [v10 delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 _navigationControllerDimmingColorForParallaxTransition:v10];
    [(_UINavigationParallaxTransition *)self->_transitionController setOverrideDimmingColor:v9];
  }
}

- (void)layoutContainerViewSemanticContentAttributeChanged:(id)a3
{
  v4 = a3;
  -[_UINavigationInteractiveTransition _setShouldReverseLayoutDirection:](self->_interactionController, "_setShouldReverseLayoutDirection:", [v4 _shouldReverseLayoutDirection]);
  v5 = [v4 _shouldReverseLayoutDirection];

  transitionController = self->_transitionController;

  [(_UINavigationParallaxTransition *)transitionController _setShouldReverseLayoutDirection:v5];
}

@end