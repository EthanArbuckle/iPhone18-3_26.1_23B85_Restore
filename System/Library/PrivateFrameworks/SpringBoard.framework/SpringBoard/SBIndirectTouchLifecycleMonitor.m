@interface SBIndirectTouchLifecycleMonitor
- (CGPoint)systemGestureHoverLocationInView:(id)a3;
- (SBIndirectTouchLifecycleMonitor)initWithSystemGestureManager:(id)a3;
- (void)addObserver:(id)a3;
- (void)handleHoverEvent:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SBIndirectTouchLifecycleMonitor

- (SBIndirectTouchLifecycleMonitor)initWithSystemGestureManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBIndirectTouchLifecycleMonitor;
  v5 = [(SBIndirectTouchLifecycleMonitor *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v5 action:sel_handleHoverEvent_];
    hoverGestureRecognizer = v5->_hoverGestureRecognizer;
    v5->_hoverGestureRecognizer = v6;

    [(UIHoverGestureRecognizer *)v5->_hoverGestureRecognizer setDelegate:v5];
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v8;

    [v4 addGestureRecognizer:v5->_hoverGestureRecognizer withType:112];
  }

  return v5;
}

- (void)handleHoverEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 _activeEventOfType:11];
  [v4 _hidEvent];
  if (SBPointerHIDSubEventFromEvent())
  {
    v5 = BKSHIDEventGetPointerAttributes();
  }

  else
  {
    v5 = 0;
  }

  if (SBPointerEventRepresentsTrackpadTouchUp(v5))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) trackpadDidTouchUpWithEvent:{v4, v11}];
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (CGPoint)systemGestureHoverLocationInView:(id)a3
{
  _UISystemGestureLocationInView();
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (![(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers addObject:v4];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if ([(NSHashTable *)self->_observers containsObject:?])
  {
    [(NSHashTable *)self->_observers removeObject:v4];
  }
}

@end