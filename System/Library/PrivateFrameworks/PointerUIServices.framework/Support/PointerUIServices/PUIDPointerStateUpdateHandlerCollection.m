@interface PUIDPointerStateUpdateHandlerCollection
- (void)performAllHandlersWithFinished:(BOOL)a3 retargeted:(BOOL)a4;
@end

@implementation PUIDPointerStateUpdateHandlerCollection

- (void)performAllHandlersWithFinished:(BOOL)a3 retargeted:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  shapeTransitionCompletion = self->_shapeTransitionCompletion;
  if (shapeTransitionCompletion)
  {
    shapeTransitionCompletion[2](shapeTransitionCompletion, a3, a4);
  }

  visibilityTransitionCompletion = self->_visibilityTransitionCompletion;
  if (visibilityTransitionCompletion)
  {
    visibilityTransitionCompletion[2](visibilityTransitionCompletion, v5, v4);
  }

  portalSourceTransitionCompletion = self->_portalSourceTransitionCompletion;
  if (portalSourceTransitionCompletion)
  {
    portalSourceTransitionCompletion[2](portalSourceTransitionCompletion, v5, v4);
  }

  overlayEffectTransitionCompletion = self->_overlayEffectTransitionCompletion;
  if (overlayEffectTransitionCompletion)
  {
    overlayEffectTransitionCompletion[2](overlayEffectTransitionCompletion, v5, v4);
  }

  contentMatchMoveSourceTransitionCompletion = self->_contentMatchMoveSourceTransitionCompletion;
  if (contentMatchMoveSourceTransitionCompletion)
  {
    v12 = *(contentMatchMoveSourceTransitionCompletion + 2);

    v12();
  }
}

@end