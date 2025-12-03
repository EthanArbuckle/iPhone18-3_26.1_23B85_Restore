@interface PXDiagnosticsController
+ (id)sharedController;
+ (void)_presentContextualDiagnostics;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (id)_currentRootViewController;
- (id)_itemProvidersFromPoint:(CGPoint)point inCoordinateSpace:(id)space viewController:(id)controller;
- (id)_topMostPresentedViewController;
- (id)consoleDescriptionForServices:(id)services;
- (id)currentItemProviders;
- (id)servicesWithItemProviders:(id)providers;
- (void)_executeService:(id)service;
- (void)_handleGestureRecognizer:(id)recognizer;
- (void)_loadDiagnosticsServicesClasses;
- (void)_presentContextualViewControllerFromPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (void)_updateGestureRecognizer;
- (void)presentContextualDiagnostics;
- (void)presentContextualViewControllerForServices:(id)services;
- (void)setupOnInternalDevicesWithWindow:(id)window;
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
  _gestureRecognizer = [(PXDiagnosticsController *)self _gestureRecognizer];
  v3 = +[PXDiagnosticsSettings sharedInstance];
  enableContextualGesture = [v3 enableContextualGesture];

  if (enableContextualGesture)
  {
    _window = [(PXDiagnosticsController *)self _window];
    v6 = _gestureRecognizer;
    if (!_gestureRecognizer)
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
    view = [v6 view];

    if (view != _window)
    {
      view2 = [v12 view];
      [view2 removeGestureRecognizer:v12];

      [_window addGestureRecognizer:v12];
    }
  }

  else
  {
    view3 = [_gestureRecognizer view];
    [view3 removeGestureRecognizer:_gestureRecognizer];

    _window = _gestureRecognizer;
    v12 = 0;
  }

  [(PXDiagnosticsController *)self _setGestureRecognizer:v12];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  _gestureRecognizer = [(PXDiagnosticsController *)self _gestureRecognizer];

  return _gestureRecognizer == recognizerCopy;
}

- (void)_executeService:(id)service
{
  serviceCopy = service;
  contextualViewController = [serviceCopy contextualViewController];
  if (contextualViewController)
  {
    _topMostPresentedViewController = [(PXDiagnosticsController *)self _topMostPresentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [_topMostPresentedViewController presentViewController:contextualViewController animated:1 completion:0];
    }

    else
    {
      [_topMostPresentedViewController px_presentViewControllerInNavigationController:contextualViewController animated:1 dimissButtonLocation:0 completion:0];
    }
  }

  if ([serviceCopy canPerformAction])
  {
    [serviceCopy performAction];
  }
}

- (id)_topMostPresentedViewController
{
  _currentRootViewController = [(PXDiagnosticsController *)self _currentRootViewController];
  presentedViewController = [_currentRootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [_currentRootViewController presentedViewController];

      v4PresentedViewController = [presentedViewController2 presentedViewController];

      _currentRootViewController = presentedViewController2;
    }

    while (v4PresentedViewController);
  }

  else
  {
    presentedViewController2 = _currentRootViewController;
  }

  return presentedViewController2;
}

- (id)_currentRootViewController
{
  _window = [(PXDiagnosticsController *)self _window];
  rootViewController = [_window rootViewController];

  presentedViewController = [rootViewController presentedViewController];
  v5 = presentedViewController;
  if (presentedViewController)
  {
    v6 = presentedViewController;
  }

  else
  {
    v6 = rootViewController;
  }

  v7 = v6;

  return v6;
}

- (id)_itemProvidersFromPoint:(CGPoint)point inCoordinateSpace:(id)space viewController:(id)controller
{
  y = point.y;
  x = point.x;
  v14[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v9 = [controllerCopy px_diagnosticsItemProvidersForPoint:space inCoordinateSpace:{x, y}];
  v10 = [PXDiagnosticsItemProvider providerWithItem:controllerCopy identifier:@"PXDiagnosticsItemIdentifierViewController"];

  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [v9 arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (void)_presentContextualViewControllerFromPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  _topMostPresentedViewController = [(PXDiagnosticsController *)self _topMostPresentedViewController];
  v8 = [(PXDiagnosticsController *)self _itemProvidersFromPoint:spaceCopy inCoordinateSpace:_topMostPresentedViewController viewController:x, y];

  v9 = [(PXDiagnosticsController *)self servicesWithItemProviders:v8];
  [(PXDiagnosticsController *)self presentContextualViewControllerForServices:v9];
}

- (void)presentContextualDiagnostics
{
  [(PXDiagnosticsController *)self _window];
  [objc_claimAutoreleasedReturnValue() bounds];
  PXRectGetCenter();
}

- (void)_handleGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 3)
  {
    _topMostPresentedViewController = [(PXDiagnosticsController *)self _topMostPresentedViewController];
    view = [_topMostPresentedViewController view];
    [recognizerCopy locationInView:view];
    [(PXDiagnosticsController *)self _presentContextualViewControllerFromPoint:view inCoordinateSpace:?];
  }
}

- (void)presentContextualViewControllerForServices:(id)services
{
  v32 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  v4 = [servicesCopy indexesOfObjectsPassingTest:&__block_literal_global_14_183076];
  v5 = [servicesCopy objectsAtIndexes:v4];

  if ([v5 count] == 1 && (objc_msgSend(v5, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "canProvideContextualViewController"), v6, v7))
  {
    firstObject = [v5 firstObject];
    [(PXDiagnosticsController *)self _executeService:firstObject];
  }

  else if ([v5 count])
  {
    v23 = servicesCopy;
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
          title = [v14 title];
          v16 = title;
          if (title)
          {
            v17 = title;
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

    _topMostPresentedViewController = [(PXDiagnosticsController *)self _topMostPresentedViewController];
    [_topMostPresentedViewController presentViewController:v9 animated:1 completion:0];

    v5 = v22;
    servicesCopy = v23;
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

- (id)consoleDescriptionForServices:(id)services
{
  v19 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  string = [MEMORY[0x1E696AD60] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = servicesCopy;
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
          if ([string length])
          {
            [string appendFormat:@"\n"];
          }

          title = [v10 title];
          consoleDescription = [v10 consoleDescription];
          [string appendFormat:@"%@:\n%@\n", title, consoleDescription, v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return string;
}

- (id)servicesWithItemProviders:(id)providers
{
  v18 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _diagnosticsServicesClasses = [(PXDiagnosticsController *)self _diagnosticsServicesClasses];
  v7 = [_diagnosticsServicesClasses countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_diagnosticsServicesClasses);
        }

        v11 = [objc_alloc(*(*(&v13 + 1) + 8 * i)) initWithItemProviders:providersCopy];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [_diagnosticsServicesClasses countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)currentItemProviders
{
  [(PXDiagnosticsController *)self _window];
  [objc_claimAutoreleasedReturnValue() bounds];
  PXRectGetCenter();
}

- (void)setupOnInternalDevicesWithWindow:(id)window
{
  windowCopy = window;
  if (PFOSVariantHasInternalUI() && !self->__window)
  {
    objc_storeStrong(&self->__window, window);
    objc_setAssociatedObject(self->__window, AssociatedObjectKeyDiagnosticsController, self, 0);
    [(PXDiagnosticsController *)self _loadDiagnosticsServicesClasses];
    v5 = +[PXDiagnosticsSettings sharedInstance];
    [v5 addKeyObserver:self];

    [(PXDiagnosticsController *)self _updateGestureRecognizer];
  }
}

+ (void)_presentContextualDiagnostics
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
  v4 = objc_getAssociatedObject(px_firstKeyWindow, AssociatedObjectKeyDiagnosticsController);

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