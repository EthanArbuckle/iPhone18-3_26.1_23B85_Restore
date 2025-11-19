@interface UIWTInputViewSetPlacementController
- (id)_inputWindowController;
- (id)_keyboardTrackingCoordinator;
- (void)_postNotificationsForType:(unint64_t)a3 from:(CGRect)a4 to:(CGRect)a5 forStart:(BOOL)a6;
- (void)_postNotificationsForType:(unint64_t)a3 onScreenFrame:(CGRect)a4 forStart:(BOOL)a5;
- (void)animateTrackingElementsFromStart:(CGRect)a3 toEnd:(CGRect)a4 forShow:(BOOL)a5;
@end

@implementation UIWTInputViewSetPlacementController

- (void)animateTrackingElementsFromStart:(CGRect)a3 toEnd:(CGRect)a4 forShow:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v15 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v16 = [v15 showsInvisibleKeyboardBehindWTUI];

  if ((v16 & 1) == 0)
  {
    v17 = [(UIWTInputViewSetPlacementController *)self _keyboardTrackingCoordinator];
    [v17 animateTrackingElementsFromStart:v5 toEnd:v13 duration:v12 forShow:{v11, v10, x, y, width, height, _UISheetTransitionDuration()}];
  }
}

- (id)_keyboardTrackingCoordinator
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 scene];

  v4 = [UIKeyboardTrackingCoordinator trackingCoordinatorForScene:v3];

  return v4;
}

- (void)_postNotificationsForType:(unint64_t)a3 from:(CGRect)a4 to:(CGRect)a5 forStart:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4.size.height;
  v12 = a4.size.width;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v17 = [(UIWTInputViewSetPlacementController *)self _inputWindowController];
  v16 = objc_alloc_init(UIInputViewSetNotificationInfo);
  [(UIInputViewSetNotificationInfo *)v16 populateStartInfoWithFrame:v14, v13, v12, v11];
  [(UIInputViewSetNotificationInfo *)v16 populateEndInfoWithFrame:x, y, width, height];
  [(UIInputViewSetNotificationInfo *)v16 addKeyboardNotificationDebuggingInfo:@"WTWritingToolsViewController"];
  [(UIInputViewSetNotificationInfo *)v16 setForWritingToolsSheet:1];
  if (v6)
  {
    [v17 postStartNotifications:a3 withInfo:v16];
    [v17 keyboardMoveOfType:a3 info:v16];
  }

  else
  {
    [v17 postEndNotifications:a3 withInfo:v16];
  }
}

- (void)_postNotificationsForType:(unint64_t)a3 onScreenFrame:(CGRect)a4 forStart:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIWTInputViewSetPlacementController.m" lineNumber:81 description:@"Invalid arguments."];
  }

  v18 = [(UIWTInputViewSetPlacementController *)self _inputWindowController];
  if (a3 == 2)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = height;
  }

  if (a3 == 2)
  {
    v13 = y + height;
  }

  else
  {
    v13 = y;
  }

  if (a3 == 2)
  {
    v14 = y;
  }

  else
  {
    v14 = y + height;
  }

  if (a3 == 2)
  {
    v15 = height;
  }

  else
  {
    v15 = 0.0;
  }

  [(UIWTInputViewSetPlacementController *)self _postNotificationsForType:a3 from:v5 to:x forStart:v13, width, v12, x, v14, width, v15];
}

- (id)_inputWindowController
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 existingContainerRootController];
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIWTInputViewSetPlacementController.m" lineNumber:94 description:@"Missing input window."];
  }

  return v5;
}

@end