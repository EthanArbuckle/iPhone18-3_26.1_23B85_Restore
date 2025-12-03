@interface _UINavigationControllerVisualStyleIOS
- (_UINavigationControllerVisualStyleIOS)initWithNavigationController:(id)controller;
- (void)layoutContainerViewSemanticContentAttributeChanged:(id)changed;
- (void)updateTransitionControllerWithOperation:(int64_t)operation;
@end

@implementation _UINavigationControllerVisualStyleIOS

- (_UINavigationControllerVisualStyleIOS)initWithNavigationController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = _UINavigationControllerVisualStyleIOS;
  v5 = [(_UINavigationControllerVisualStyle *)&v16 initWithNavigationController:controllerCopy];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [[_UINavigationParallaxTransition alloc] initWithCurrentOperation:0];
  transitionController = v5->_transitionController;
  v5->_transitionController = v6;

  view = [controllerCopy view];
  -[_UINavigationParallaxTransition _setShouldReverseLayoutDirection:](v5->_transitionController, "_setShouldReverseLayoutDirection:", [view _shouldReverseLayoutDirection]);

  traitCollection = [controllerCopy traitCollection];
  if ([traitCollection userInterfaceIdiom] != 3)
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
    v12 = [[_UINavigationInteractiveTransition alloc] initWithViewController:controllerCopy animator:0];
    interactionController = v5->_interactionController;
    v5->_interactionController = v12;

    traitCollection = [controllerCopy view];
    -[_UINavigationInteractiveTransition _setShouldReverseLayoutDirection:](v5->_interactionController, "_setShouldReverseLayoutDirection:", [traitCollection _shouldReverseLayoutDirection]);
LABEL_12:
  }

LABEL_13:

  return v5;
}

- (void)updateTransitionControllerWithOperation:(int64_t)operation
{
  navigationController = [(_UINavigationControllerVisualStyle *)self navigationController];
  [(_UINavigationParallaxTransition *)self->_transitionController setOperation:operation];
  -[_UINavigationParallaxTransition setClipUnderlapWhileTransitioning:](self->_transitionController, "setClipUnderlapWhileTransitioning:", [navigationController _clipUnderlapWhileTransitioning]);
  -[_UINavigationParallaxTransition setTransitionStyle:](self->_transitionController, "setTransitionStyle:", [navigationController _builtinTransitionStyle]);
  transitionController = self->_transitionController;
  [navigationController _builtinTransitionGap];
  [(_UINavigationParallaxTransition *)transitionController setTransitionGap:?];
  v6 = self->_transitionController;
  view = [navigationController view];
  -[_UINavigationParallaxTransition _setShouldReverseLayoutDirection:](v6, "_setShouldReverseLayoutDirection:", [view _shouldReverseLayoutDirection]);

  delegate = [navigationController delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate _navigationControllerDimmingColorForParallaxTransition:navigationController];
    [(_UINavigationParallaxTransition *)self->_transitionController setOverrideDimmingColor:v9];
  }
}

- (void)layoutContainerViewSemanticContentAttributeChanged:(id)changed
{
  changedCopy = changed;
  -[_UINavigationInteractiveTransition _setShouldReverseLayoutDirection:](self->_interactionController, "_setShouldReverseLayoutDirection:", [changedCopy _shouldReverseLayoutDirection]);
  _shouldReverseLayoutDirection = [changedCopy _shouldReverseLayoutDirection];

  transitionController = self->_transitionController;

  [(_UINavigationParallaxTransition *)transitionController _setShouldReverseLayoutDirection:_shouldReverseLayoutDirection];
}

@end