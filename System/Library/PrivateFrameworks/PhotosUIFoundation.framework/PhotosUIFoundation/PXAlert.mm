@interface PXAlert
+ (id)show:(id)show;
+ (id)showForError:(id)error;
+ (id)showWithConfiguration:(id)configuration;
- (BOOL)performFirstActionWithStyle:(int64_t)style;
- (PXAlert)init;
- (PXAlert)initWithConfiguration:(id)configuration;
- (UIAlertController)alertController;
- (void)_loadIfNeeded;
- (void)_performAction:(id)action;
- (void)_present;
- (void)dismissWithCompletionHandler:(id)handler;
@end

@implementation PXAlert

- (UIAlertController)alertController
{
  [(PXAlert *)self _loadIfNeeded];
  alertController = self->_alertController;

  return alertController;
}

- (void)dismissWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  alertController = [(PXAlert *)self alertController];
  v5 = alertController;
  if (alertController)
  {
    [alertController dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2]();
  }
}

- (void)_present
{
  configuration = [(PXAlert *)self configuration];
  presentingViewController = [configuration presentingViewController];

  if (!presentingViewController)
  {
    v5 = PXUIApplicationGetFirstKeyWindow(*MEMORY[0x1E69DDA98]);
    presentingViewController = [v5 rootViewController];

    if (!presentingViewController)
    {
      v6 = PXAssertGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *v8 = 0;
        _os_log_fault_impl(&dword_1B3F73000, v6, OS_LOG_TYPE_FAULT, "PXAlert should avoid using UIApplication singletons and pass in the presenting view controller directly", v8, 2u);
      }

      presentingViewController = 0;
    }
  }

  alertController = [(PXAlert *)self alertController];
  [presentingViewController px_presentOverTopmostPresentedViewController:alertController animated:1 completion:0];
}

- (void)_loadIfNeeded
{
  v49[1] = *MEMORY[0x1E69E9840];
  if (!self->_didLoad)
  {
    self->_didLoad = 1;
    configuration = [(PXAlert *)self configuration];
    actions = [configuration actions];
    completionHandler = [configuration completionHandler];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __24__PXAlert__loadIfNeeded__block_invoke;
    aBlock[3] = &unk_1E7BB7ED0;
    v6 = completionHandler;
    v47 = v6;
    v39 = _Block_copy(aBlock);
    v7 = MEMORY[0x1E69DC650];
    title = [configuration title];
    message = [configuration message];
    v10 = [v7 alertControllerWithTitle:title message:message preferredStyle:{objc_msgSend(configuration, "style")}];
    alertController = self->_alertController;
    self->_alertController = v10;

    contentViewController = [configuration contentViewController];
    [(UIAlertController *)self->_alertController setContentViewController:contentViewController];

    headerContentViewController = [configuration headerContentViewController];
    [(UIAlertController *)self->_alertController _setHeaderContentViewController:headerContentViewController];

    v37 = v6;
    if (![actions count])
    {
      v14 = [PXAlertAction alloc];
      v15 = PXPhotosUIFoundationBundle();
      v16 = [v15 localizedStringForKey:@"PXOK" value:&stru_1F2B87EE0 table:{0, v6}];
      v17 = [(PXAlertAction *)v14 initWithTitle:v16 style:1 action:0];
      v49[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];

      actions = v18;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = actions;
    v19 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v42 + 1) + 8 * i);
          v24 = MEMORY[0x1E69DC648];
          title2 = [v23 title];
          style = [v23 style];
          if (style >= 3)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIAlertActionStyle UIAlertActionStyleFromPXAlertActionStyle(PXAlertActionStyle)"];
            [currentHandler handleFailureInFunction:v36 file:@"PXAlertActionStyle.h" lineNumber:42 description:@"Code which should be unreachable has been reached"];

            abort();
          }

          v27 = style;
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __24__PXAlert__loadIfNeeded__block_invoke_2;
          v40[3] = &unk_1E7BB7EF8;
          v28 = v39;
          v40[4] = v23;
          v41 = v28;
          v29 = [v24 actionWithTitle:title2 style:v27 handler:v40];

          [(UIAlertController *)self->_alertController addAction:v29];
          preferredAction = [configuration preferredAction];
          v31 = preferredAction;
          if (v23 == preferredAction)
          {

LABEL_14:
            [(UIAlertController *)self->_alertController setPreferredAction:v29];
            goto LABEL_15;
          }

          v32 = [v23 isEqual:preferredAction];

          if (v32)
          {
            goto LABEL_14;
          }

LABEL_15:
        }

        v20 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v20);
    }

    sourceItem = [configuration sourceItem];
    if (sourceItem)
    {
      [(UIAlertController *)self->_alertController setModalPresentationStyle:7];
      popoverPresentationController = [(UIAlertController *)self->_alertController popoverPresentationController];
      [popoverPresentationController setSourceItem:sourceItem];
    }
  }
}

void __24__PXAlert__loadIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = [v6 action];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }
}

- (void)_performAction:(id)action
{
  action = [action action];
  v7 = action;
  if (action)
  {
    (*(action + 16))(action);
  }

  configuration = [(PXAlert *)self configuration];
  completionHandler = [configuration completionHandler];

  if (completionHandler)
  {
    completionHandler[2](completionHandler);
  }
}

- (BOOL)performFirstActionWithStyle:(int64_t)style
{
  configuration = [(PXAlert *)self configuration];
  actions = [configuration actions];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PXAlert_performFirstActionWithStyle___block_invoke;
  v9[3] = &__block_descriptor_40_e23_B16__0__PXAlertAction_8l;
  v9[4] = style;
  v7 = PXFind(actions, v9);
  if (v7)
  {
    [(PXAlert *)self _performAction:v7];
  }

  return v7 != 0;
}

- (PXAlert)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PXAlert;
  v5 = [(PXAlert *)&v9 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

- (PXAlert)init
{
  v3 = objc_alloc_init(PXAlertConfiguration);
  v4 = [(PXAlert *)self initWithConfiguration:v3];

  return v4;
}

+ (id)showWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAlert.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  v6 = [[self alloc] initWithConfiguration:configurationCopy];
  [v6 _present];

  return v6;
}

+ (id)showForError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAlert.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __24__PXAlert_showForError___block_invoke;
  v10[3] = &unk_1E7BB7E88;
  v11 = errorCopy;
  v6 = errorCopy;
  v7 = [self show:v10];

  return v7;
}

+ (id)show:(id)show
{
  showCopy = show;
  v5 = objc_alloc_init(PXAlertConfiguration);
  showCopy[2](showCopy, v5);

  v6 = [self showWithConfiguration:v5];

  return v6;
}

@end