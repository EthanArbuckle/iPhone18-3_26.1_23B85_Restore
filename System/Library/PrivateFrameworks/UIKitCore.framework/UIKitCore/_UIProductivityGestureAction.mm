@interface _UIProductivityGestureAction
- (BKSHIDEventAuthenticationMessage)authenticationMessage;
- (_UIProductivityGestureAction)initWithGestureDirection:(int64_t)a3 authenticationMessage:(id)a4;
- (int64_t)gestureDirection;
- (void)_handleActionForWindowScene:(id)a3;
@end

@implementation _UIProductivityGestureAction

- (_UIProductivityGestureAction)initWithGestureDirection:(int64_t)a3 authenticationMessage:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 setObject:v8 forSetting:1];

  if (v6)
  {
    [v7 setObject:v6 forSetting:2];
  }

  v11.receiver = self;
  v11.super_class = _UIProductivityGestureAction;
  v9 = [(_UIProductivityGestureAction *)&v11 initWithInfo:v7 responder:0];

  return v9;
}

- (int64_t)gestureDirection
{
  v2 = [(_UIProductivityGestureAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (BKSHIDEventAuthenticationMessage)authenticationMessage
{
  v2 = [(_UIProductivityGestureAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

- (void)_handleActionForWindowScene:(id)a3
{
  v16 = a3;
  v4 = [(UIWindowScene *)v16 _keyWindow];
  v5 = [v4 firstResponder];

  v6 = +[UIKeyboardImpl activeInstance];
  [v6 updateIdleDetection:5];

  if (![v5 _isHostingRemoteContent])
  {
    v10 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v16];
    v12 = [v10 editingOverlayViewController];
    v13 = [v12 undoInteraction];
    v14 = [(_UIProductivityGestureAction *)self gestureDirection];
    v15 = [(_UIProductivityGestureAction *)self authenticationMessage];
    [v13 performGestureWithDirection:v14 authenticationMessage:v15];

LABEL_8:
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 _sceneHostingController];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 40);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if ([v10 isActive])
    {
      v11 = [MEMORY[0x1E695DFD8] setWithObject:self];
      [v10 sendActions:v11];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 _didReceiveProductivityGestureAction:self];
  }

LABEL_9:
}

@end