@interface _UIProductivityGestureAction
- (BKSHIDEventAuthenticationMessage)authenticationMessage;
- (_UIProductivityGestureAction)initWithGestureDirection:(int64_t)direction authenticationMessage:(id)message;
- (int64_t)gestureDirection;
- (void)_handleActionForWindowScene:(id)scene;
@end

@implementation _UIProductivityGestureAction

- (_UIProductivityGestureAction)initWithGestureDirection:(int64_t)direction authenticationMessage:(id)message
{
  messageCopy = message;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:direction];
  [v7 setObject:v8 forSetting:1];

  if (messageCopy)
  {
    [v7 setObject:messageCopy forSetting:2];
  }

  v11.receiver = self;
  v11.super_class = _UIProductivityGestureAction;
  v9 = [(_UIProductivityGestureAction *)&v11 initWithInfo:v7 responder:0];

  return v9;
}

- (int64_t)gestureDirection
{
  info = [(_UIProductivityGestureAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BKSHIDEventAuthenticationMessage)authenticationMessage
{
  info = [(_UIProductivityGestureAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (void)_handleActionForWindowScene:(id)scene
{
  sceneCopy = scene;
  _keyWindow = [(UIWindowScene *)sceneCopy _keyWindow];
  firstResponder = [_keyWindow firstResponder];

  v6 = +[UIKeyboardImpl activeInstance];
  [v6 updateIdleDetection:5];

  if (![firstResponder _isHostingRemoteContent])
  {
    v10 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:sceneCopy];
    editingOverlayViewController = [v10 editingOverlayViewController];
    undoInteraction = [editingOverlayViewController undoInteraction];
    gestureDirection = [(_UIProductivityGestureAction *)self gestureDirection];
    authenticationMessage = [(_UIProductivityGestureAction *)self authenticationMessage];
    [undoInteraction performGestureWithDirection:gestureDirection authenticationMessage:authenticationMessage];

LABEL_8:
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _sceneHostingController = [firstResponder _sceneHostingController];
    v8 = _sceneHostingController;
    if (_sceneHostingController)
    {
      v9 = *(_sceneHostingController + 40);
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
    [firstResponder _didReceiveProductivityGestureAction:self];
  }

LABEL_9:
}

@end