@interface PXPPTNavigationHelper
+ (UIViewController)applicationRootViewController;
+ (id)_unwrapNavigationController:(id)controller;
+ (id)caseNameStringForPXProgrammaticNavigationResult:(int64_t)result;
+ (id)topmostChildFromViewController:(id)controller;
+ (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
@end

@implementation PXPPTNavigationHelper

+ (id)_unwrapNavigationController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = controllerCopy;
  v6 = v5;
  v7 = v5;
  if (isKindOfClass)
  {
    topViewController = [v5 topViewController];
    v9 = topViewController;
    if (topViewController)
    {
      v10 = topViewController;
    }

    else
    {
      v10 = v6;
    }

    v7 = v10;
  }

  return v7;
}

+ (UIViewController)applicationRootViewController
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
  rootViewController = [px_firstKeyWindow rootViewController];

  if (!rootViewController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPPTNavigationHelper.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"rootViewController != nil"}];
  }

  return rootViewController;
}

+ (id)caseNameStringForPXProgrammaticNavigationResult:(int64_t)result
{
  if ((result - 1) > 5)
  {
    return @"PXProgrammaticNavigationResultUndefined";
  }

  else
  {
    return off_1E774C550[result - 1];
  }
}

+ (id)topmostChildFromViewController:(id)controller
{
  controllerCopy = controller;
  presentedViewController = [controllerCopy presentedViewController];

  presentedViewController2 = controllerCopy;
  if (presentedViewController)
  {
    presentedViewController2 = controllerCopy;
    do
    {
      v7 = [self _unwrapNavigationController:presentedViewController2];

      presentedViewController2 = [v7 presentedViewController];

      v6PresentedViewController = [presentedViewController2 presentedViewController];
    }

    while (v6PresentedViewController);
  }

  v9 = [self _unwrapNavigationController:presentedViewController2];

  return v9;
}

+ (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  destinationCopy = destination;
  handlerCopy = handler;
  applicationRootViewController = [self applicationRootViewController];
  v12 = [PXProgrammaticNavigationRequest alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73__PXPPTNavigationHelper_navigateToDestination_options_completionHandler___block_invoke;
  v21[3] = &unk_1E774C530;
  v22 = destinationCopy;
  v23 = applicationRootViewController;
  v24 = handlerCopy;
  v25 = a2;
  selfCopy = self;
  v13 = applicationRootViewController;
  v14 = handlerCopy;
  v15 = destinationCopy;
  v16 = [(PXProgrammaticNavigationRequest *)v12 initWithDestination:v15 options:options completionHandler:v21];
  v17 = [v13 px_forwardingNavigationParticipantForDestination:v15];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v13;
  }

  v20 = v19;

  PXProgrammaticNavigationRequestExecute(v16, v20);
}

void __73__PXPPTNavigationHelper_navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v4 = PXProgrammaticNavigationLastParticipantOnRouteToDestinationMatching(*(a1 + 32), *(a1 + 40), &__block_literal_global_258127);
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = *(a1 + 56);
        v27 = *(a1 + 64);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = [v4 px_descriptionForAssertionMessage];
        [v25 handleFailureInMethod:v26 object:v27 file:@"PXPPTNavigationHelper.m" lineNumber:30 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"PXProgrammaticNavigationLastParticipantOnRouteToDestinationMatching(destination, rootViewController, ^BOOL(id<PXProgrammaticNavigationParticipant> participant) { UIViewController *viewController = ((UIViewController *)({ id obj = (participant); id result = ((void*)0); Class cls = [UIViewController class]; if (cls && [obj isKindOfClass:cls]) { result = obj; } result; })); return viewController.px_isVisible || viewController.presentedViewController != ((void*)0); })", v29, v30}];
      }
    }

    v5 = [v4 ppt_containedViewController];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;

    v9 = [v8 px_topmostPresentedViewController];
    v10 = v9;
    if (v9)
    {
      v11 = v9;

      v8 = v11;
    }

    v12 = [v8 ppt_containedViewController];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v8;
    }

    v15 = v14;

    v16 = [v15 navigationController];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = 0;
        goto LABEL_23;
      }

      v17 = v15;
      if (!v17)
      {
        v15 = 0;
        goto LABEL_23;
      }
    }

    v18 = [v17 topViewController];

    v15 = v18;
LABEL_23:
    v19 = [v15 ppt_containedViewController];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v15;
    }

    v22 = v21;

    if (v22)
    {
      v23 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__PXPPTNavigationHelper_navigateToDestination_options_completionHandler___block_invoke_3;
      block[3] = &unk_1E774C508;
      v34 = *(a1 + 48);
      v35 = 1;
      v33 = v22;
      dispatch_after(v23, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No view controller found after navigating to destination %@", *(a1 + 32)];
      (*(*(a1 + 48) + 16))();
    }

    return;
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to navigate to destination %@: %@", *(a1 + 32), a3];
  (*(*(a1 + 48) + 16))();
}

BOOL __73__PXPPTNavigationHelper_navigateToDestination_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if ([v3 px_isVisible])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 presentedViewController];
    v4 = v5 != 0;
  }

  return v4;
}

@end