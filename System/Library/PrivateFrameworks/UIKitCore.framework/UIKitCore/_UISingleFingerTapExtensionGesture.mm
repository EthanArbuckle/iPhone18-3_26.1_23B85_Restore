@interface _UISingleFingerTapExtensionGesture
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (int64_t)_modifierFlags;
- (void)_resetGestureRecognizer;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation _UISingleFingerTapExtensionGesture

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UISingleFingerTapExtensionGesture;
  [(UITapGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)_resetGestureRecognizer
{
  v3.receiver = self;
  v3.super_class = _UISingleFingerTapExtensionGesture;
  [(UITapGestureRecognizer *)&v3 _resetGestureRecognizer];
  [(NSMutableSet *)self->_trackedEvents removeAllObjects];
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  trackedEvents = self->_trackedEvents;
  if (!trackedEvents)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = self->_trackedEvents;
    self->_trackedEvents = v7;

    trackedEvents = self->_trackedEvents;
  }

  [(NSMutableSet *)trackedEvents addObject:eventCopy];

  return 1;
}

- (int64_t)_modifierFlags
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UISingleFingerTapExtensionGesture;
  _modifierFlags = [(UIGestureRecognizer *)&v14 _modifierFlags];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_trackedEvents;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        _modifierFlags |= [*(*(&v10 + 1) + 8 * v8++) _modifierFlags];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return _modifierFlags;
}

@end