@interface _UIFocusEngineDelayedPressAction
+ (void)sendDelayedPressWithType:(int64_t)a3 timestamp:(double)a4 sender:(id)a5;
- (_UIFocusEventRecognizer)sender;
- (id)_initWithPressType:(int64_t)a3 timestamp:(double)a4 sender:(id)a5;
- (void)_sendPressEvent;
@end

@implementation _UIFocusEngineDelayedPressAction

- (id)_initWithPressType:(int64_t)a3 timestamp:(double)a4 sender:(id)a5
{
  v9 = a5;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIFocusEventRecognizer.m" lineNumber:3487 description:{@"Invalid parameter not satisfying: %@", @"sender"}];
  }

  v14.receiver = self;
  v14.super_class = _UIFocusEngineDelayedPressAction;
  v10 = [(_UIFocusEngineDelayedPressAction *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_sender, v9);
    v11->_pressType = a3;
    v11->_timestamp = a4;
  }

  return v11;
}

+ (void)sendDelayedPressWithType:(int64_t)a3 timestamp:(double)a4 sender:(id)a5
{
  v10[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [[_UIFocusEngineDelayedPressAction alloc] _initWithPressType:a3 timestamp:v7 sender:a4];

  v10[0] = *MEMORY[0x1E695DA28];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v8 performSelector:sel__sendPressEvent withObject:0 afterDelay:v9 inModes:0.0];
}

- (void)_sendPressEvent
{
  v3 = [(_UIFocusEngineDelayedPressAction *)self sender];
  if (v3)
  {
    v15 = v3;
    v4 = [(_UIFocusEngineDelayedPressAction *)self sender];
    v5 = [v4 owningView];
    v6 = [v5 _window];
    if ([v6 _contextId])
    {
      v7 = [(_UIFocusEngineDelayedPressAction *)self sender];
      v8 = [v7 owningView];
      v9 = [v8 _window];
      v10 = [v9 windowScene];

      if (!v10)
      {
        return;
      }

      v15 = objc_alloc_init(UIPressInfo);
      [(UIPressInfo *)v15 setType:[(_UIFocusEngineDelayedPressAction *)self pressType]];
      [(_UIFocusEngineDelayedPressAction *)self timestamp];
      [(UIPressInfo *)v15 setTimestamp:?];
      [(UIPressInfo *)v15 setSource:3];
      v11 = [(_UIFocusEngineDelayedPressAction *)self sender];
      v4 = [v11 owningView];

      v12 = [(_UIFocusEngineDelayedPressAction *)self sender];
      v13 = [v12 owningView];
      v14 = [v13 _window];
      -[UIPressInfo setContextID:](v15, "setContextID:", [v14 _contextId]);

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