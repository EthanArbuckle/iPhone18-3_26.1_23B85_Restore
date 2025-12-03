@interface UIKeyboardCameraBasePresentationController
- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)type forStart:(BOOL)start;
- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)type from:(CGRect)from to:(CGRect)to forStart:(BOOL)start;
- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)type from:(CGRect)from to:(CGRect)to forStart:(BOOL)start inputWindowController:(id)controller;
@end

@implementation UIKeyboardCameraBasePresentationController

- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)type from:(CGRect)from to:(CGRect)to forStart:(BOOL)start
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
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  if (presentingViewController)
  {
    v19 = presentingViewController;
  }

  else
  {
    v20 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    existingContainerRootController = [v20 existingContainerRootController];

    v19 = existingContainerRootController;
    if (!existingContainerRootController)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardCameraBasePresentationController.m" lineNumber:26 description:@"Missing input window."];

      v19 = 0;
    }
  }

  v23 = v19;
  [(UIKeyboardCameraBasePresentationController *)self modifyKeyboardTrackingUsingNotificationType:type from:startCopy to:v19 forStart:v14 inputWindowController:v13, v12, v11, x, y, width, height];
}

- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)type from:(CGRect)from to:(CGRect)to forStart:(BOOL)start inputWindowController:(id)controller
{
  startCopy = start;
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  v12 = from.size.height;
  v13 = from.size.width;
  v14 = from.origin.y;
  v15 = from.origin.x;
  view = [controller view];
  window = [view window];
  windowScene = [window windowScene];
  v21 = [UIKeyboardTrackingCoordinator trackingCoordinatorForScene:windowScene];

  [UITransitionView defaultDurationForTransition:16];
  if (startCopy)
  {
    [v21 animateTrackingElementsFromStart:type == 2 toEnd:v15 duration:v14 forShow:{v13, v12, x, y, width, height, v20}];
  }

  else
  {
    [v21 moveKeyboardTrackingElementsFromStartFrame:0 endFrame:type == 2 duration:v15 isStart:v14 forShow:{v13, v12, x, y, width, height, v20}];
  }
}

- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)type forStart:(BOOL)start
{
  startCopy = start;
  if ((type & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardCameraBasePresentationController.m" lineNumber:45 description:@"Invalid arguments."];
  }

  presentingViewController = [(UIPresentationController *)self presentingViewController];
  v56 = presentingViewController;
  if (!presentingViewController)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIKeyboardCameraBasePresentationController.m" lineNumber:48 description:@"Missing input window."];

    presentingViewController = 0;
  }

  hosting = [presentingViewController hosting];
  v10 = [hosting itemForPurpose:1];
  [v10 notificationsFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v56 convertRectFromContainerCoordinateSpaceToScreenSpace:{v12, v14, v16, v18}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(UIPresentationController *)self frameOfPresentedViewInContainerView];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  containerView2 = [(UIPresentationController *)self containerView];
  [containerView2 convertRect:0 toView:{v28, v30, v32, v34}];
  [window convertRect:0 toWindow:?];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  if (type == 2)
  {
    v46 = v26;
  }

  else
  {
    v46 = v45;
  }

  if (type == 2)
  {
    v47 = v24;
  }

  else
  {
    v47 = v43;
  }

  if (type == 2)
  {
    v48 = v22;
  }

  else
  {
    v48 = v41;
  }

  if (type == 2)
  {
    v49 = v20;
  }

  else
  {
    v49 = v39;
  }

  if (type == 2)
  {
    v50 = v39;
  }

  else
  {
    v50 = v20;
  }

  if (type == 2)
  {
    v51 = v41;
  }

  else
  {
    v51 = v22;
  }

  if (type == 2)
  {
    v52 = v43;
  }

  else
  {
    v52 = v24;
  }

  if (type == 2)
  {
    v53 = v45;
  }

  else
  {
    v53 = v26;
  }

  [(UIKeyboardCameraBasePresentationController *)self modifyKeyboardTrackingUsingNotificationType:type from:startCopy to:v56 forStart:v49 inputWindowController:v48, v47, v46, v50, v51, v52, v53];
}

@end