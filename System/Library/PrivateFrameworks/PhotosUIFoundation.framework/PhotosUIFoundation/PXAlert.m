@interface PXAlert
+ (id)show:(id)a3;
+ (id)showForError:(id)a3;
+ (id)showWithConfiguration:(id)a3;
- (BOOL)performFirstActionWithStyle:(int64_t)a3;
- (PXAlert)init;
- (PXAlert)initWithConfiguration:(id)a3;
- (UIAlertController)alertController;
- (void)_loadIfNeeded;
- (void)_performAction:(id)a3;
- (void)_present;
- (void)dismissWithCompletionHandler:(id)a3;
@end

@implementation PXAlert

- (UIAlertController)alertController
{
  [(PXAlert *)self _loadIfNeeded];
  alertController = self->_alertController;

  return alertController;
}

- (void)dismissWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(PXAlert *)self alertController];
  v5 = v4;
  if (v4)
  {
    [v4 dismissViewControllerAnimated:1 completion:v6];
  }

  else if (v6)
  {
    v6[2]();
  }
}

- (void)_present
{
  v3 = [(PXAlert *)self configuration];
  v4 = [v3 presentingViewController];

  if (!v4)
  {
    v5 = PXUIApplicationGetFirstKeyWindow(*MEMORY[0x1E69DDA98]);
    v4 = [v5 rootViewController];

    if (!v4)
    {
      v6 = PXAssertGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *v8 = 0;
        _os_log_fault_impl(&dword_1B3F73000, v6, OS_LOG_TYPE_FAULT, "PXAlert should avoid using UIApplication singletons and pass in the presenting view controller directly", v8, 2u);
      }

      v4 = 0;
    }
  }

  v7 = [(PXAlert *)self alertController];
  [v4 px_presentOverTopmostPresentedViewController:v7 animated:1 completion:0];
}

- (void)_loadIfNeeded
{
  v49[1] = *MEMORY[0x1E69E9840];
  if (!self->_didLoad)
  {
    self->_didLoad = 1;
    v3 = [(PXAlert *)self configuration];
    v4 = [v3 actions];
    v5 = [v3 completionHandler];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __24__PXAlert__loadIfNeeded__block_invoke;
    aBlock[3] = &unk_1E7BB7ED0;
    v6 = v5;
    v47 = v6;
    v39 = _Block_copy(aBlock);
    v7 = MEMORY[0x1E69DC650];
    v8 = [v3 title];
    v9 = [v3 message];
    v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:{objc_msgSend(v3, "style")}];
    alertController = self->_alertController;
    self->_alertController = v10;

    v12 = [v3 contentViewController];
    [(UIAlertController *)self->_alertController setContentViewController:v12];

    v13 = [v3 headerContentViewController];
    [(UIAlertController *)self->_alertController _setHeaderContentViewController:v13];

    v37 = v6;
    if (![v4 count])
    {
      v14 = [PXAlertAction alloc];
      v15 = PXPhotosUIFoundationBundle();
      v16 = [v15 localizedStringForKey:@"PXOK" value:&stru_1F2B87EE0 table:{0, v6}];
      v17 = [(PXAlertAction *)v14 initWithTitle:v16 style:1 action:0];
      v49[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];

      v4 = v18;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v4;
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
          v25 = [v23 title];
          v26 = [v23 style];
          if (v26 >= 3)
          {
            v35 = [MEMORY[0x1E696AAA8] currentHandler];
            v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIAlertActionStyle UIAlertActionStyleFromPXAlertActionStyle(PXAlertActionStyle)"];
            [v35 handleFailureInFunction:v36 file:@"PXAlertActionStyle.h" lineNumber:42 description:@"Code which should be unreachable has been reached"];

            abort();
          }

          v27 = v26;
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __24__PXAlert__loadIfNeeded__block_invoke_2;
          v40[3] = &unk_1E7BB7EF8;
          v28 = v39;
          v40[4] = v23;
          v41 = v28;
          v29 = [v24 actionWithTitle:v25 style:v27 handler:v40];

          [(UIAlertController *)self->_alertController addAction:v29];
          v30 = [v3 preferredAction];
          v31 = v30;
          if (v23 == v30)
          {

LABEL_14:
            [(UIAlertController *)self->_alertController setPreferredAction:v29];
            goto LABEL_15;
          }

          v32 = [v23 isEqual:v30];

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

    v33 = [v3 sourceItem];
    if (v33)
    {
      [(UIAlertController *)self->_alertController setModalPresentationStyle:7];
      v34 = [(UIAlertController *)self->_alertController popoverPresentationController];
      [v34 setSourceItem:v33];
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

- (void)_performAction:(id)a3
{
  v4 = [a3 action];
  v7 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }

  v5 = [(PXAlert *)self configuration];
  v6 = [v5 completionHandler];

  if (v6)
  {
    v6[2](v6);
  }
}

- (BOOL)performFirstActionWithStyle:(int64_t)a3
{
  v5 = [(PXAlert *)self configuration];
  v6 = [v5 actions];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PXAlert_performFirstActionWithStyle___block_invoke;
  v9[3] = &__block_descriptor_40_e23_B16__0__PXAlertAction_8l;
  v9[4] = a3;
  v7 = PXFind(v6, v9);
  if (v7)
  {
    [(PXAlert *)self _performAction:v7];
  }

  return v7 != 0;
}

- (PXAlert)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXAlert;
  v5 = [(PXAlert *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

+ (id)showWithConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PXAlert.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  v6 = [[a1 alloc] initWithConfiguration:v5];
  [v6 _present];

  return v6;
}

+ (id)showForError:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXAlert.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __24__PXAlert_showForError___block_invoke;
  v10[3] = &unk_1E7BB7E88;
  v11 = v5;
  v6 = v5;
  v7 = [a1 show:v10];

  return v7;
}

+ (id)show:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PXAlertConfiguration);
  v4[2](v4, v5);

  v6 = [a1 showWithConfiguration:v5];

  return v6;
}

@end