@interface SBBannerPanGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4;
- (SBBannerPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (SBBannerPanGestureSystemDragCancellingDelegate)systemDragCancellingDelegate;
- (SBWindowScene)windowScene;
- (void)_actuallySetCancelsTouchesInView:(BOOL)a3;
- (void)_addTouchDisablingTouchCancellation:(id)a3;
- (void)_removeTouchDisablingTouchCancellation:(id)a3;
- (void)_removeTouchesDisablingTouchCancellation:(id)a3;
- (void)_updateCancelsTouchesInView;
- (void)setEnabled:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
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

- (SBBannerPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v9.receiver = self;
  v9.super_class = SBBannerPanGestureRecognizer;
  v4 = [(SBBannerPanGestureRecognizer *)&v9 initWithTarget:a3 action:a4];
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

- (void)_actuallySetCancelsTouchesInView:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SBBannerPanGestureRecognizer;
  [(SBBannerPanGestureRecognizer *)&v3 setCancelsTouchesInView:a3];
}

- (void)_addTouchDisablingTouchCancellation:(id)a3
{
  identifiersForTouchesDisablingTouchCancellation = self->_identifiersForTouchesDisablingTouchCancellation;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3, "_touchIdentifier")}];
  [(NSMutableSet *)identifiersForTouchesDisablingTouchCancellation addObject:v5];

  [(SBBannerPanGestureRecognizer *)self _updateCancelsTouchesInView];
}

- (void)_removeTouchDisablingTouchCancellation:(id)a3
{
  identifiersForTouchesDisablingTouchCancellation = self->_identifiersForTouchesDisablingTouchCancellation;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3, "_touchIdentifier")}];
  [(NSMutableSet *)identifiersForTouchesDisablingTouchCancellation removeObject:v5];

  [(SBBannerPanGestureRecognizer *)self _updateCancelsTouchesInView];
}

- (void)_removeTouchesDisablingTouchCancellation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(SBBannerPanGestureRecognizer *)self _removeTouchDisablingTouchCancellation:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBBannerPanGestureRecognizer;
  v8 = [(SBBannerPanGestureRecognizer *)&v12 _shouldReceiveTouch:v6 withEvent:v7];
  if (v8 && (-[SBBannerPanGestureRecognizer systemDragCancellingDelegate](self, "systemDragCancellingDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 bannerPanGestureRecognizer:self shouldDisableTouchCancellationForTouch:v6 event:v7], v9, v10))
  {
    [(SBBannerPanGestureRecognizer *)self _addTouchDisablingTouchCancellation:v6];
  }

  else
  {
    [(SBBannerPanGestureRecognizer *)self _removeTouchDisablingTouchCancellation:v6];
  }

  return v8;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBBannerPanGestureRecognizer *)self systemDragCancellingDelegate];
  v9 = [v8 bannerPanGestureRecognizer:self shouldCancelSystemDragGestureWithTouches:v6 event:v7];

  if (v9)
  {
    [(SBBannerPanGestureRecognizer *)self setState:5];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBBannerPanGestureRecognizer;
    [(SBBannerPanGestureRecognizer *)&v10 touchesBegan:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBBannerPanGestureRecognizer;
  v6 = a3;
  [(SBBannerPanGestureRecognizer *)&v7 touchesEnded:v6 withEvent:a4];
  [(SBBannerPanGestureRecognizer *)self _removeTouchesDisablingTouchCancellation:v6, v7.receiver, v7.super_class];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBBannerPanGestureRecognizer;
  v6 = a3;
  [(SBBannerPanGestureRecognizer *)&v7 touchesCancelled:v6 withEvent:a4];
  [(SBBannerPanGestureRecognizer *)self _removeTouchesDisablingTouchCancellation:v6, v7.receiver, v7.super_class];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(SBBannerPanGestureRecognizer *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = SBBannerPanGestureRecognizer;
    [(SBBannerPanGestureRecognizer *)&v5 setEnabled:v3];
    if (!v3)
    {
      [(NSMutableSet *)self->_identifiersForTouchesDisablingTouchCancellation removeAllObjects];
    }
  }
}

@end