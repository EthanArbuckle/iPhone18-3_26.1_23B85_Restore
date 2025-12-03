@interface PUIDPointerStateUpdateHandlerCollection
- (void)performAllHandlersWithFinished:(BOOL)finished retargeted:(BOOL)retargeted;
@end

@implementation PUIDPointerStateUpdateHandlerCollection

- (void)performAllHandlersWithFinished:(BOOL)finished retargeted:(BOOL)retargeted
{
  retargetedCopy = retargeted;
  finishedCopy = finished;
  shapeTransitionCompletion = self->_shapeTransitionCompletion;
  if (shapeTransitionCompletion)
  {
    shapeTransitionCompletion[2](shapeTransitionCompletion, finished, retargeted);
  }

  visibilityTransitionCompletion = self->_visibilityTransitionCompletion;
  if (visibilityTransitionCompletion)
  {
    visibilityTransitionCompletion[2](visibilityTransitionCompletion, finishedCopy, retargetedCopy);
  }

  portalSourceTransitionCompletion = self->_portalSourceTransitionCompletion;
  if (portalSourceTransitionCompletion)
  {
    portalSourceTransitionCompletion[2](portalSourceTransitionCompletion, finishedCopy, retargetedCopy);
  }

  overlayEffectTransitionCompletion = self->_overlayEffectTransitionCompletion;
  if (overlayEffectTransitionCompletion)
  {
    overlayEffectTransitionCompletion[2](overlayEffectTransitionCompletion, finishedCopy, retargetedCopy);
  }

  contentMatchMoveSourceTransitionCompletion = self->_contentMatchMoveSourceTransitionCompletion;
  if (contentMatchMoveSourceTransitionCompletion)
  {
    v12 = *(contentMatchMoveSourceTransitionCompletion + 2);

    v12();
  }
}

@end