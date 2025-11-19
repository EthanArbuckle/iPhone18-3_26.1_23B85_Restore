@interface PXDiagnosticsController
+ (id)sharedController;
+ (void)_presentContextualDiagnostics;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (id)_currentRootViewController;
- (id)_itemProvidersFromPoint:(CGPoint)a3 inCoordinateSpace:(id)a4 viewController:(id)a5;
- (id)_topMostPresentedViewController;
- (id)consoleDescriptionForServices:(id)a3;
- (id)currentItemProviders;
- (id)servicesWithItemProviders:(id)a3;
- (void)_executeService:(id)a3;
- (void)_handleGestureRecognizer:(id)a3;
- (void)_loadDiagnosticsServicesClasses;
- (void)_presentContextualViewControllerFromPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (void)_updateGestureRecognizer;
- (void)presentContextualDiagnostics;
- (void)presentContextualViewControllerForServices:(id)a3;
- (void)setupOnInternalDevicesWithWindow:(id)a3;
@end

@implementation PXDiagnosticsController

+ (id)sharedController
{
  if (sharedController_onceToken_183103 != -1)
  {
    dispatch_once(&sharedController_onceToken_183103, &__block_literal_global_183104);
  }

  v3 = sharedController_sharedController_183105;

  return v3;
}

uint64_t __43__PXDiagnosticsController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(PXDiagnosticsController);
  v1 = sharedController_sharedController_183105;
  sharedController_sharedController_183105 = v0;

  result = PFOSVariantHasInternalUI();
  if (result)
  {
    out_token = 0;
    return notify_register_dispatch("ShowContextualDiagnostics", &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_4_183108);
  }

  return result;
}

- (void)_loadDiagnosticsServicesClasses
{
  if (!self->__diagnosticsServicesClasses)
  {
    v4 = PXDiagnosticsServiceRegisteredClasses();
    diagnosticsServicesClasses = self->__diagnosticsServicesClasses;
    self->__diagnosticsServicesClasses = v4;
  }
}

- (void)_updateGestureRecognizer
{
  v10 = [(PXDiagnosticsController *)self _gestureRecognizer];
  v3 = +[PXDiagnosticsSettings sharedInstance];
  v4 = [v3 enableContextualGesture];

  if (v4)
  {
    v5 = [(PXDiagnosticsController *)self _window];
    v6 = v10;
    if (!v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleGestureRecognizer_];
      [v11 setNumberOfTouchesRequired:4];
      [v11 setNumberOfTapsRequired:2];
      [v11 setCancelsTouchesInView:0];
      [v11 setDelaysTouchesBegan:0];
      [v11 setDelaysTouchesEnded:0];
      [v11 setDelegate:self];
      v6 = v11;
    }

    v12 = v6;
    v7 = [v6 view];

    if (v7 != v5)
    {
      v8 = [v12 view];
      [v8 removeGestureRecognizer:v12];

      [v5 addGestureRecognizer:v12];
    }
  }

  else
  {
    v9 = [v10 view];
    [v9 removeGestureRecognizer:v10];

    v5 = v10;
    v12 = 0;
  }

  [(PXDiagnosticsController *)self _setGestureRecognizer:v12];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(PXDiagnosticsController *)self _gestureRecognizer];

  return v6 == v5;
}

- (void)_executeService:(id)a3
{
  v6 = a3;
  v4 = [v6 contextualViewController];
  if (v4)
  {
    v5 = [(PXDiagnosticsController *)self _topMostPresentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      [v5 px_presentViewControllerInNavigationController:v4 animated:1 dimissButtonLocation:0 completion:0];
    }
  }

  if ([v6 canPerformAction])
  {
    [v6 performAction];
  }
}

- (id)_topMostPresentedViewController
{
  v2 = [(PXDiagnosticsController *)self _currentRootViewController];
  v3 = [v2 presentedViewController];

  if (v3)
  {
    do
    {
      v4 = [v2 presentedViewController];

      v5 = [v4 presentedViewController];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (id)_currentRootViewController
{
  v2 = [(PXDiagnosticsController *)self _window];
  v3 = [v2 rootViewController];

  v4 = [v3 presentedViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

- (id)_itemProvidersFromPoint:(CGPoint)a3 inCoordinateSpace:(id)a4 viewController:(id)a5
{
  y = a3.y;
  x = a3.x;
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [v8 px_diagnosticsItemProvidersForPoint:a4 inCoordinateSpace:{x, y}];
  v10 = [PXDiagnosticsItemProvider providerWithItem:v8 identifier:@"PXDiagnosticsItemIdentifierViewController"];

  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [v9 arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (void)_presentContextualViewControllerFromPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v10 = [(PXDiagnosticsController *)self _topMostPresentedViewController];
  v8 = [(PXDiagnosticsController *)self _itemProvidersFromPoint:v7 inCoordinateSpace:v10 viewController:x, y];

  v9 = [(PXDiagnosticsController *)self servicesWithItemProviders:v8];
  [(PXDiagnosticsController *)self presentContextualViewControllerForServices:v9];
}

- (void)presentContextualDiagnostics
{
  [(PXDiagnosticsController *)self _window];
  [objc_claimAutoreleasedReturnValue() bounds];
  PXRectGetCenter();
}

- (void)_handleGestureRecognizer:(id)a3
{
  v6 = a3;
  if ([v6 state] == 3)
  {
    v4 = [(PXDiagnosticsController *)self _topMostPresentedViewController];
    v5 = [v4 view];
    [v6 locationInView:v5];
    [(PXDiagnosticsController *)self _presentContextualViewControllerFromPoint:v5 inCoordinateSpace:?];
  }
}

- (void)presentContextualViewControllerForServices:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_14_183076];
  v5 = [v3 objectsAtIndexes:v4];

  if ([v5 count] == 1 && (objc_msgSend(v5, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "canProvideContextualViewController"), v6, v7))
  {
    v8 = [v5 firstObject];
    [(PXDiagnosticsController *)self _executeService:v8];
  }

  else if ([v5 count])
  {
    v23 = v3;
    v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Diagnostics" message:0 preferredStyle:1];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = [v14 title];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = &stru_1F1741150;
          }

          v18 = v17;

          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __70__PXDiagnosticsController_presentContextualViewControllerForServices___block_invoke_2;
          v26[3] = &unk_1E774A2C8;
          v26[4] = self;
          v26[5] = v14;
          v19 = [MEMORY[0x1E69DC648] actionWithTitle:v18 style:0 handler:v26];

          [v9 addAction:v19];
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v11);
    }

    v20 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
    [v9 addAction:v20];

    v21 = [(PXDiagnosticsController *)self _topMostPresentedViewController];
    [v21 presentViewController:v9 animated:1 completion:0];

    v5 = v22;
    v3 = v23;
  }
}

uint64_t __70__PXDiagnosticsController_presentContextualViewControllerForServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 canProvideContextualViewController])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 canPerformAction];
  }

  return v3;
}

- (id)consoleDescriptionForServices:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 canProvideConsoleDescription])
        {
          if ([v4 length])
          {
            [v4 appendFormat:@"\n"];
          }

          v11 = [v10 title];
          v12 = [v10 consoleDescription];
          [v4 appendFormat:@"%@:\n%@\n", v11, v12, v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)servicesWithItemProviders:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PXDiagnosticsController *)self _diagnosticsServicesClasses];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_alloc(*(*(&v13 + 1) + 8 * i)) initWithItemProviders:v4];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)currentItemProviders
{
  [(PXDiagnosticsController *)self _window];
  [objc_claimAutoreleasedReturnValue() bounds];
  PXRectGetCenter();
}

- (void)setupOnInternalDevicesWithWindow:(id)a3
{
  v6 = a3;
  if (PFOSVariantHasInternalUI() && !self->__window)
  {
    objc_storeStrong(&self->__window, a3);
    objc_setAssociatedObject(self->__window, AssociatedObjectKeyDiagnosticsController, self, 0);
    [(PXDiagnosticsController *)self _loadDiagnosticsServicesClasses];
    v5 = +[PXDiagnosticsSettings sharedInstance];
    [v5 addKeyObserver:self];

    [(PXDiagnosticsController *)self _updateGestureRecognizer];
  }
}

+ (void)_presentContextualDiagnostics
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 px_firstKeyWindow];
  v4 = objc_getAssociatedObject(v3, AssociatedObjectKeyDiagnosticsController);

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v4;

    v5 = v6;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v5 = +[PXDiagnosticsController sharedController];
LABEL_7:
  v7 = v5;
  [v5 presentContextualDiagnostics];
}

@end