@interface SBBannerPanGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (SBBannerPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (SBBannerPanGestureSystemDragCancellingDelegate)systemDragCancellingDelegate;
- (SBWindowScene)windowScene;
- (void)_actuallySetCancelsTouchesInView:(BOOL)view;
- (void)_addTouchDisablingTouchCancellation:(id)cancellation;
- (void)_removeTouchDisablingTouchCancellation:(id)cancellation;
- (void)_removeTouchesDisablingTouchCancellation:(id)cancellation;
- (void)_updateCancelsTouchesInView;
- (void)setEnabled:(BOOL)enabled;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation SBBannerPanGestureRecognizer

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (SBBannerPanGestureSystemDragCancellingDelegate)systemDragCancellingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemDragCancellingDelegate);

  return WeakRetained;
}

- (void)_updateCancelsTouchesInView
{
  v3 = self->_clientWantsCancelsTouchesInView && [(NSMutableSet *)self->_identifiersForTouchesDisablingTouchCancellation count]== 0;

  [(SBBannerPanGestureRecognizer *)self _actuallySetCancelsTouchesInView:v3];
}

- (SBBannerPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v9.receiver = self;
  v9.super_class = SBBannerPanGestureRecognizer;
  v4 = [(SBBannerPanGestureRecognizer *)&v9 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v4->_clientWantsCancelsTouchesInView = [(SBBannerPanGestureRecognizer *)v4 cancelsTouchesInView];
    v6 = [MEMORY[0x277CBEB58] set];
    identifiersForTouchesDisablingTouchCancellation = v5->_identifiersForTouchesDisablingTouchCancellation;
    v5->_identifiersForTouchesDisablingTouchCancellation = v6;
  }

  return v5;
}

- (void)_actuallySetCancelsTouchesInView:(BOOL)view
{
  v3.receiver = self;
  v3.super_class = SBBannerPanGestureRecognizer;
  [(SBBannerPanGestureRecognizer *)&v3 setCancelsTouchesInView:view];
}

- (void)_addTouchDisablingTouchCancellation:(id)cancellation
{
  identifiersForTouchesDisablingTouchCancellation = self->_identifiersForTouchesDisablingTouchCancellation;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(cancellation, "_touchIdentifier")}];
  [(NSMutableSet *)identifiersForTouchesDisablingTouchCancellation addObject:v5];

  [(SBBannerPanGestureRecognizer *)self _updateCancelsTouchesInView];
}

- (void)_removeTouchDisablingTouchCancellation:(id)cancellation
{
  identifiersForTouchesDisablingTouchCancellation = self->_identifiersForTouchesDisablingTouchCancellation;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(cancellation, "_touchIdentifier")}];
  [(NSMutableSet *)identifiersForTouchesDisablingTouchCancellation removeObject:v5];

  [(SBBannerPanGestureRecognizer *)self _updateCancelsTouchesInView];
}

- (void)_removeTouchesDisablingTouchCancellation:(id)cancellation
{
  v14 = *MEMORY[0x277D85DE8];
  cancellationCopy = cancellation;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [cancellationCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(cancellationCopy);
        }

        [(SBBannerPanGestureRecognizer *)self _removeTouchDisablingTouchCancellation:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [cancellationCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = SBBannerPanGestureRecognizer;
  v8 = [(SBBannerPanGestureRecognizer *)&v12 _shouldReceiveTouch:touchCopy withEvent:eventCopy];
  if (v8 && (-[SBBannerPanGestureRecognizer systemDragCancellingDelegate](self, "systemDragCancellingDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 bannerPanGestureRecognizer:self shouldDisableTouchCancellationForTouch:touchCopy event:eventCopy], v9, v10))
  {
    [(SBBannerPanGestureRecognizer *)self _addTouchDisablingTouchCancellation:touchCopy];
  }

  else
  {
    [(SBBannerPanGestureRecognizer *)self _removeTouchDisablingTouchCancellation:touchCopy];
  }

  return v8;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  systemDragCancellingDelegate = [(SBBannerPanGestureRecognizer *)self systemDragCancellingDelegate];
  v9 = [systemDragCancellingDelegate bannerPanGestureRecognizer:self shouldCancelSystemDragGestureWithTouches:beganCopy event:eventCopy];

  if (v9)
  {
    [(SBBannerPanGestureRecognizer *)self setState:5];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBBannerPanGestureRecognizer;
    [(SBBannerPanGestureRecognizer *)&v10 touchesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBBannerPanGestureRecognizer;
  endedCopy = ended;
  [(SBBannerPanGestureRecognizer *)&v7 touchesEnded:endedCopy withEvent:event];
  [(SBBannerPanGestureRecognizer *)self _removeTouchesDisablingTouchCancellation:endedCopy, v7.receiver, v7.super_class];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBBannerPanGestureRecognizer;
  cancelledCopy = cancelled;
  [(SBBannerPanGestureRecognizer *)&v7 touchesCancelled:cancelledCopy withEvent:event];
  [(SBBannerPanGestureRecognizer *)self _removeTouchesDisablingTouchCancellation:cancelledCopy, v7.receiver, v7.super_class];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(SBBannerPanGestureRecognizer *)self isEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = SBBannerPanGestureRecognizer;
    [(SBBannerPanGestureRecognizer *)&v5 setEnabled:enabledCopy];
    if (!enabledCopy)
    {
      [(NSMutableSet *)self->_identifiersForTouchesDisablingTouchCancellation removeAllObjects];
    }
  }
}

@end