@interface UIKeyboardCameraBasePresentationController
- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)a3 forStart:(BOOL)a4;
- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)a3 from:(CGRect)a4 to:(CGRect)a5 forStart:(BOOL)a6;
- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)a3 from:(CGRect)a4 to:(CGRect)a5 forStart:(BOOL)a6 inputWindowController:(id)a7;
@end

@implementation UIKeyboardCameraBasePresentationController

- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)a3 from:(CGRect)a4 to:(CGRect)a5 forStart:(BOOL)a6
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
  v18 = [(UIPresentationController *)self presentingViewController];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v20 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v22 = [v20 existingContainerRootController];

    v19 = v22;
    if (!v22)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"UIKeyboardCameraBasePresentationController.m" lineNumber:26 description:@"Missing input window."];

      v19 = 0;
    }
  }

  v23 = v19;
  [(UIKeyboardCameraBasePresentationController *)self modifyKeyboardTrackingUsingNotificationType:a3 from:v6 to:v19 forStart:v14 inputWindowController:v13, v12, v11, x, y, width, height];
}

- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)a3 from:(CGRect)a4 to:(CGRect)a5 forStart:(BOOL)a6 inputWindowController:(id)a7
{
  v7 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a4.size.height;
  v13 = a4.size.width;
  v14 = a4.origin.y;
  v15 = a4.origin.x;
  v17 = [a7 view];
  v18 = [v17 window];
  v19 = [v18 windowScene];
  v21 = [UIKeyboardTrackingCoordinator trackingCoordinatorForScene:v19];

  [UITransitionView defaultDurationForTransition:16];
  if (v7)
  {
    [v21 animateTrackingElementsFromStart:a3 == 2 toEnd:v15 duration:v14 forShow:{v13, v12, x, y, width, height, v20}];
  }

  else
  {
    [v21 moveKeyboardTrackingElementsFromStartFrame:0 endFrame:a3 == 2 duration:v15 isStart:v14 forShow:{v13, v12, x, y, width, height, v20}];
  }
}

- (void)modifyKeyboardTrackingUsingNotificationType:(unint64_t)a3 forStart:(BOOL)a4
{
  v4 = a4;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    [v54 handleFailureInMethod:a2 object:self file:@"UIKeyboardCameraBasePresentationController.m" lineNumber:45 description:@"Invalid arguments."];
  }

  v8 = [(UIPresentationController *)self presentingViewController];
  v56 = v8;
  if (!v8)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    [v55 handleFailureInMethod:a2 object:self file:@"UIKeyboardCameraBasePresentationController.m" lineNumber:48 description:@"Missing input window."];

    v8 = 0;
  }

  v9 = [v8 hosting];
  v10 = [v9 itemForPurpose:1];
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
  v35 = [(UIPresentationController *)self containerView];
  v36 = [v35 window];
  v37 = [(UIPresentationController *)self containerView];
  [v37 convertRect:0 toView:{v28, v30, v32, v34}];
  [v36 convertRect:0 toWindow:?];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  if (a3 == 2)
  {
    v46 = v26;
  }

  else
  {
    v46 = v45;
  }

  if (a3 == 2)
  {
    v47 = v24;
  }

  else
  {
    v47 = v43;
  }

  if (a3 == 2)
  {
    v48 = v22;
  }

  else
  {
    v48 = v41;
  }

  if (a3 == 2)
  {
    v49 = v20;
  }

  else
  {
    v49 = v39;
  }

  if (a3 == 2)
  {
    v50 = v39;
  }

  else
  {
    v50 = v20;
  }

  if (a3 == 2)
  {
    v51 = v41;
  }

  else
  {
    v51 = v22;
  }

  if (a3 == 2)
  {
    v52 = v43;
  }

  else
  {
    v52 = v24;
  }

  if (a3 == 2)
  {
    v53 = v45;
  }

  else
  {
    v53 = v26;
  }

  [(UIKeyboardCameraBasePresentationController *)self modifyKeyboardTrackingUsingNotificationType:a3 from:v4 to:v56 forStart:v49 inputWindowController:v48, v47, v46, v50, v51, v52, v53];
}

@end