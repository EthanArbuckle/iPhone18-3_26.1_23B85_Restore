@interface _UIAssistantEntry
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
@end

@implementation _UIAssistantEntry

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  requestCopy = request;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained pointerInteraction:interactionCopy regionForRequest:requestCopy defaultRegion:regionCopy];

  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPointerInteractionAssistant.m" lineNumber:118 description:@"Assisted views must call -createRegionFromRect:targetView:identifier:selected: to create regions"];
    }

    objc_storeStrong(v13 + 11, self);
  }

  return v13;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained pointerInteraction:interactionCopy styleForRegion:regionCopy];

  return v9;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  regionCopy = region;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pointerInteraction:interactionCopy willEnterRegion:regionCopy animator:animatorCopy];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  regionCopy = region;
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pointerInteraction:interactionCopy willExitRegion:regionCopy animator:animatorCopy];
}

@end