@interface _UIFocusEngineDelayedPressAction
+ (void)sendDelayedPressWithType:(int64_t)type timestamp:(double)timestamp sender:(id)sender;
- (_UIFocusEventRecognizer)sender;
- (id)_initWithPressType:(int64_t)type timestamp:(double)timestamp sender:(id)sender;
- (void)_sendPressEvent;
@end

@implementation _UIFocusEngineDelayedPressAction

- (id)_initWithPressType:(int64_t)type timestamp:(double)timestamp sender:(id)sender
{
  senderCopy = sender;
  if (!senderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEventRecognizer.m" lineNumber:3487 description:{@"Invalid parameter not satisfying: %@", @"sender"}];
  }

  v14.receiver = self;
  v14.super_class = _UIFocusEngineDelayedPressAction;
  v10 = [(_UIFocusEngineDelayedPressAction *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_sender, senderCopy);
    v11->_pressType = type;
    v11->_timestamp = timestamp;
  }

  return v11;
}

+ (void)sendDelayedPressWithType:(int64_t)type timestamp:(double)timestamp sender:(id)sender
{
  v10[1] = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  v8 = [[_UIFocusEngineDelayedPressAction alloc] _initWithPressType:type timestamp:senderCopy sender:timestamp];

  v10[0] = *MEMORY[0x1E695DA28];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v8 performSelector:sel__sendPressEvent withObject:0 afterDelay:v9 inModes:0.0];
}

- (void)_sendPressEvent
{
  sender = [(_UIFocusEngineDelayedPressAction *)self sender];
  if (sender)
  {
    v15 = sender;
    sender2 = [(_UIFocusEngineDelayedPressAction *)self sender];
    owningView = [sender2 owningView];
    _window = [owningView _window];
    if ([_window _contextId])
    {
      sender3 = [(_UIFocusEngineDelayedPressAction *)self sender];
      owningView2 = [sender3 owningView];
      _window2 = [owningView2 _window];
      windowScene = [_window2 windowScene];

      if (!windowScene)
      {
        return;
      }

      v15 = objc_alloc_init(UIPressInfo);
      [(UIPressInfo *)v15 setType:[(_UIFocusEngineDelayedPressAction *)self pressType]];
      [(_UIFocusEngineDelayedPressAction *)self timestamp];
      [(UIPressInfo *)v15 setTimestamp:?];
      [(UIPressInfo *)v15 setSource:3];
      sender4 = [(_UIFocusEngineDelayedPressAction *)self sender];
      sender2 = [sender4 owningView];

      sender5 = [(_UIFocusEngineDelayedPressAction *)self sender];
      owningView3 = [sender5 owningView];
      _window3 = [owningView3 _window];
      -[UIPressInfo setContextID:](v15, "setContextID:", [_window3 _contextId]);

      [(UIPressInfo *)v15 setPhase:0];
      [(UIPressInfo *)v15 setForce:1.0];
      [UIApp _sendButtonEventWithPressInfo:v15];
      [(UIPressInfo *)v15 setPhase:3];
      [(UIPressInfo *)v15 setForce:0.0];
      [UIApp _sendButtonEventWithPressInfo:v15];
    }

    else
    {
    }
  }
}

- (_UIFocusEventRecognizer)sender
{
  WeakRetained = objc_loadWeakRetained(&self->_sender);

  return WeakRetained;
}

@end