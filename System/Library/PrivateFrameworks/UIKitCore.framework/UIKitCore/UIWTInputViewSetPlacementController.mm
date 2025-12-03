@interface UIWTInputViewSetPlacementController
- (id)_inputWindowController;
- (id)_keyboardTrackingCoordinator;
- (void)_postNotificationsForType:(unint64_t)type from:(CGRect)from to:(CGRect)to forStart:(BOOL)start;
- (void)_postNotificationsForType:(unint64_t)type onScreenFrame:(CGRect)frame forStart:(BOOL)start;
- (void)animateTrackingElementsFromStart:(CGRect)start toEnd:(CGRect)end forShow:(BOOL)show;
@end

@implementation UIWTInputViewSetPlacementController

- (void)animateTrackingElementsFromStart:(CGRect)start toEnd:(CGRect)end forShow:(BOOL)show
{
  showCopy = show;
  height = end.size.height;
  width = end.size.width;
  y = end.origin.y;
  x = end.origin.x;
  v10 = start.size.height;
  v11 = start.size.width;
  v12 = start.origin.y;
  v13 = start.origin.x;
  v15 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  showsInvisibleKeyboardBehindWTUI = [v15 showsInvisibleKeyboardBehindWTUI];

  if ((showsInvisibleKeyboardBehindWTUI & 1) == 0)
  {
    _keyboardTrackingCoordinator = [(UIWTInputViewSetPlacementController *)self _keyboardTrackingCoordinator];
    [_keyboardTrackingCoordinator animateTrackingElementsFromStart:showCopy toEnd:v13 duration:v12 forShow:{v11, v10, x, y, width, height, _UISheetTransitionDuration()}];
  }
}

- (id)_keyboardTrackingCoordinator
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  scene = [v2 scene];

  v4 = [UIKeyboardTrackingCoordinator trackingCoordinatorForScene:scene];

  return v4;
}

- (void)_postNotificationsForType:(unint64_t)type from:(CGRect)from to:(CGRect)to forStart:(BOOL)start
{
  startCopy = start;
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  v11 = from.size.height;
  v12 = from.size.width;
  v13 = from.origin.y;
  v14 = from.origin.x;
  _inputWindowController = [(UIWTInputViewSetPlacementController *)self _inputWindowController];
  v16 = objc_alloc_init(UIInputViewSetNotificationInfo);
  [(UIInputViewSetNotificationInfo *)v16 populateStartInfoWithFrame:v14, v13, v12, v11];
  [(UIInputViewSetNotificationInfo *)v16 populateEndInfoWithFrame:x, y, width, height];
  [(UIInputViewSetNotificationInfo *)v16 addKeyboardNotificationDebuggingInfo:@"WTWritingToolsViewController"];
  [(UIInputViewSetNotificationInfo *)v16 setForWritingToolsSheet:1];
  if (startCopy)
  {
    [_inputWindowController postStartNotifications:type withInfo:v16];
    [_inputWindowController keyboardMoveOfType:type info:v16];
  }

  else
  {
    [_inputWindowController postEndNotifications:type withInfo:v16];
  }
}

- (void)_postNotificationsForType:(unint64_t)type onScreenFrame:(CGRect)frame forStart:(BOOL)start
{
  startCopy = start;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ((type & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWTInputViewSetPlacementController.m" lineNumber:81 description:@"Invalid arguments."];
  }

  _inputWindowController = [(UIWTInputViewSetPlacementController *)self _inputWindowController];
  if (type == 2)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = height;
  }

  if (type == 2)
  {
    v13 = y + height;
  }

  else
  {
    v13 = y;
  }

  if (type == 2)
  {
    v14 = y;
  }

  else
  {
    v14 = y + height;
  }

  if (type == 2)
  {
    v15 = height;
  }

  else
  {
    v15 = 0.0;
  }

  [(UIWTInputViewSetPlacementController *)self _postNotificationsForType:type from:startCopy to:x forStart:v13, width, v12, x, v14, width, v15];
}

- (id)_inputWindowController
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  existingContainerRootController = [v4 existingContainerRootController];
  if (!existingContainerRootController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWTInputViewSetPlacementController.m" lineNumber:94 description:@"Missing input window."];
  }

  return existingContainerRootController;
}

@end