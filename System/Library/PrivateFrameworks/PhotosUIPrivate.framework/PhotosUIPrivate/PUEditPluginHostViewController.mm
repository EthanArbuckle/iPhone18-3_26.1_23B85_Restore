@interface PUEditPluginHostViewController
- (BOOL)prepareForDismissingForced:(BOOL)forced;
- (PUEditPluginHostViewController)initWithPlugin:(id)plugin;
- (PUEditPluginHostViewControllerDataSource)dataSource;
- (PUEditPluginHostViewControllerDelegate)delegate;
- (UIBarButtonItem)redoBarButtonItem;
- (UIBarButtonItem)undoBarButtonItem;
- (id)_extensionVendorProxy;
- (id)_hostContext;
- (int64_t)preferredUserInterfaceStyle;
- (void)_addRemoteViewControllerIfNeeded;
- (void)_beginContentEditingWithCompletionHandler:(id)handler timeout:(double)timeout;
- (void)_beginDisablingIdleTimer;
- (void)_dismiss;
- (void)_endDisablingIdleTimerIfNecessary;
- (void)_handleCancel;
- (void)_handleCancelButton:(id)button;
- (void)_handleDoneButton:(id)button;
- (void)_queryShouldShowCancelConfirmationWithResponseHandler:(id)handler timeout:(double)timeout;
- (void)_setupUndoProxy;
- (void)_updateBarButtonsWithUndoRedoVisible:(BOOL)visible;
- (void)dealloc;
- (void)handleRedoButton:(id)button;
- (void)handleUndoButton:(id)button;
- (void)loadRemoteViewControllerWithCompletionHandler:(id)handler;
- (void)loadView;
- (void)queryHandlingCapabilityForAdjustmentData:(id)data withResponseHandler:(id)handler timeout:(double)timeout;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUEditPluginHostViewController

- (UIBarButtonItem)redoBarButtonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_redoBarButtonItem);

  return WeakRetained;
}

- (UIBarButtonItem)undoBarButtonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_undoBarButtonItem);

  return WeakRetained;
}

- (PUEditPluginHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PUEditPluginHostViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)handleRedoButton:(id)button
{
  undoProxy = [(PUEditPluginHostViewController *)self undoProxy];
  [undoProxy performRedo];
}

- (void)handleUndoButton:(id)button
{
  undoProxy = [(PUEditPluginHostViewController *)self undoProxy];
  [undoProxy performUndo];
}

void __61__PUEditPluginHostViewController_setUndoEnabled_redoEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) undoBarButtonItem];
  [v3 setEnabled:v2];

  v4 = *(a1 + 41);
  v5 = [*(a1 + 32) redoBarButtonItem];
  [v5 setEnabled:v4];
}

uint64_t __50__PUEditPluginHostViewController_setShowUndoRedo___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShowUndoRedoButtons:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateBarButtonsWithUndoRedoVisible:v3];
}

- (void)_setupUndoProxy
{
  v6 = objc_opt_new();
  [(PUEditPluginHostViewController *)self setUndoProxy:v6];
  [v6 setTarget:self];
  _extensionVendorProxy = [(PUEditPluginHostViewController *)self _extensionVendorProxy];
  listenerEndpoint = [v6 listenerEndpoint];
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  [_extensionVendorProxy setupUndoProxyWithXPCListenerEndpoint:listenerEndpoint attemptUndoManagerAutoSetup:{objc_msgSend(v5, "attemptEditExtensionUndoAutoSetup")}];
}

- (void)_endDisablingIdleTimerIfNecessary
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUEditPluginHostViewController.m" lineNumber:494 description:@"Must be on main thread"];
  }

  disablingIdleTimerToken = [(PUEditPluginHostViewController *)self disablingIdleTimerToken];
  if (disablingIdleTimerToken)
  {
    v7 = disablingIdleTimerToken;
    mEMORY[0x1E69C3358] = [MEMORY[0x1E69C3358] sharedState];
    [mEMORY[0x1E69C3358] endDisablingIdleTimer:v7];

    [(PUEditPluginHostViewController *)self setDisablingIdleTimerToken:0];
    disablingIdleTimerToken = v7;
  }
}

- (void)_beginDisablingIdleTimer
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUEditPluginHostViewController.m" lineNumber:486 description:@"Must be on main thread"];
  }

  disablingIdleTimerToken = [(PUEditPluginHostViewController *)self disablingIdleTimerToken];

  if (!disablingIdleTimerToken)
  {
    mEMORY[0x1E69C3358] = [MEMORY[0x1E69C3358] sharedState];
    v5 = [mEMORY[0x1E69C3358] beginDisablingIdleTimerForReason:@"Editor (PUEditPluginHostViewController)"];
    [(PUEditPluginHostViewController *)self setDisablingIdleTimerToken:v5];
  }
}

- (void)_handleDoneButton:(id)button
{
  if (![(PUEditPluginHostViewController *)self didHandleDone])
  {
    [(PUEditPluginHostViewController *)self setDidHandleDone:1];
    [(PUEditPluginHostViewController *)self _beginDisablingIdleTimer];
    v4 = +[PUPhotoEditProtoSettings sharedInstance];
    lightModeEditor = [v4 lightModeEditor];

    v6 = [[PUProgressView alloc] initWithStyle:lightModeEditor];
    view = [(PUEditPluginHostViewController *)self view];
    [(PUProgressView *)v6 showInView:view animated:1 afterDelay:0.0];

    _hostContext = [(PUEditPluginHostViewController *)self _hostContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__PUEditPluginHostViewController__handleDoneButton___block_invoke;
    v10[3] = &unk_1E7B76B80;
    v10[4] = self;
    [_hostContext setContentEditingOutputCommitHandler:v10];
    _extensionVendorProxy = [(PUEditPluginHostViewController *)self _extensionVendorProxy];
    [_extensionVendorProxy finishContentEditing];
  }
}

void __52__PUEditPluginHostViewController__handleDoneButton___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PUEditPluginHostViewController__handleDoneButton___block_invoke_2;
  aBlock[3] = &unk_1E7B76B30;
  v7 = v6;
  aBlock[4] = *(a1 + 32);
  v25 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v5)
  {
    v10 = [v5 adjustmentData];
    if (v10)
    {

LABEL_6:
      v15 = [*(a1 + 32) plugin];
      v16 = [v15 extension];
      v17 = [v16 _plugIn];
      v18 = [v17 containingUrl];

      [v5 setEditorBundleURL:v18];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__PUEditPluginHostViewController__handleDoneButton___block_invoke_299;
      block[3] = &unk_1E7B80CB0;
      block[4] = *(a1 + 32);
      v21 = v5;
      v22 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_10;
    }

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [v5 renderedContentURL];
    v13 = [v12 path];
    v14 = [v11 fileExistsAtPath:v13];

    if (v14)
    {
      goto LABEL_6;
    }

    v19 = PLUIGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEFAULT, "Extension returned output with no changes to commit.", buf, 2u);
    }

    v9[2](v9, 1, 0);
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0);
  }

LABEL_10:
}

void __52__PUEditPluginHostViewController__handleDoneButton___block_invoke_2(uint64_t a1, char a2, char a3)
{
  (*(*(a1 + 40) + 16))();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PUEditPluginHostViewController__handleDoneButton___block_invoke_3;
  v6[3] = &unk_1E7B7DF20;
  v6[4] = *(a1 + 32);
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __52__PUEditPluginHostViewController__handleDoneButton___block_invoke_299(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PUEditPluginHostViewController__handleDoneButton___block_invoke_2_300;
  v5[3] = &unk_1E7B76B58;
  v6 = *(a1 + 48);
  [v2 editPluginHostViewController:v3 commitContentEditingOutput:v4 withCompletionHandler:v5];
}

uint64_t __52__PUEditPluginHostViewController__handleDoneButton___block_invoke_2_300(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_ErrorCommittin.isa, a2);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __52__PUEditPluginHostViewController__handleDoneButton___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _endDisablingIdleTimerIfNecessary];
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 41);
    v3 = [*(a1 + 32) delegate];
    if (v2 == 1)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    [v3 editPluginHostViewController:*(a1 + 32) didFinishWithCompletionType:{v4, v3}];
  }

  else
  {
    v5 = MEMORY[0x1E69DC650];
    v6 = PULocalizedString(@"PLUGIN_OUTPUT_ERROR_TITLE");
    v7 = PULocalizedString(@"PLUGIN_OUTPUT_ERROR_MESSAGE");
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = MEMORY[0x1E69DC648];
    v10 = PULocalizedString(@"OK");
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__PUEditPluginHostViewController__handleDoneButton___block_invoke_4;
    v13[3] = &unk_1E7B7E148;
    v13[4] = *(a1 + 32);
    v11 = [v9 actionWithTitle:v10 style:1 handler:v13];
    [v8 addAction:v11];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }
}

void __52__PUEditPluginHostViewController__handleDoneButton___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 editPluginHostViewController:*(a1 + 32) didFinishWithCompletionType:1];
}

- (void)_handleCancel
{
  [(PUEditPluginHostViewController *)self _endDisablingIdleTimerIfNecessary];
  _extensionVendorProxy = [(PUEditPluginHostViewController *)self _extensionVendorProxy];
  [_extensionVendorProxy cancelContentEditingWithResponseHandler:&__block_literal_global_22451];

  delegate = [(PUEditPluginHostViewController *)self delegate];
  [delegate editPluginHostViewController:self didFinishWithCompletionType:0];
}

- (void)_handleCancelButton:(id)button
{
  buttonCopy = button;
  if (![(PUEditPluginHostViewController *)self didHandleCancel])
  {
    [(PUEditPluginHostViewController *)self setDidHandleCancel:1];
    if ([(PUEditPluginHostViewController *)self extensionDidBeginContentEditing])
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __54__PUEditPluginHostViewController__handleCancelButton___block_invoke;
      v5[3] = &unk_1E7B80088;
      v5[4] = self;
      v6 = buttonCopy;
      [(PUEditPluginHostViewController *)self _queryShouldShowCancelConfirmationWithResponseHandler:v5 timeout:2.0];
    }

    else
    {
      [(PUEditPluginHostViewController *)self _handleCancel];
    }
  }
}

void __54__PUEditPluginHostViewController__handleCancelButton___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PUEditPluginHostViewController__handleCancelButton___block_invoke_2;
  block[3] = &unk_1E7B805E8;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__PUEditPluginHostViewController__handleCancelButton___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69DC650]);
    v3 = MEMORY[0x1E69DC648];
    v4 = PULocalizedString(@"CANCEL");
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PUEditPluginHostViewController__handleCancelButton___block_invoke_3;
    v12[3] = &unk_1E7B7E148;
    v12[4] = *(a1 + 32);
    v5 = [v3 actionWithTitle:v4 style:1 handler:v12];
    [v2 addAction:v5];

    v6 = MEMORY[0x1E69DC648];
    v7 = PULocalizedString(@"PHOTOEDIT_DISCARD_CHANGES");
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PUEditPluginHostViewController__handleCancelButton___block_invoke_4;
    v11[3] = &unk_1E7B7E148;
    v11[4] = *(a1 + 32);
    v8 = [v6 actionWithTitle:v7 style:0 handler:v11];
    [v2 addAction:v8];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v2 popoverPresentationController];
      [v9 setBarButtonItem:*(a1 + 40)];
    }

    [*(a1 + 32) presentViewController:v2 animated:1 completion:0];
  }

  else
  {
    v10 = *(a1 + 32);

    [v10 _handleCancel];
  }
}

- (BOOL)prepareForDismissingForced:(BOOL)forced
{
  if (forced)
  {
    [(PUEditPluginHostViewController *)self _dismiss];
  }

  return 0;
}

- (int64_t)preferredUserInterfaceStyle
{
  v2 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([v2 lightModeEditor])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)_updateBarButtonsWithUndoRedoVisible:(BOOL)visible
{
  visibleCopy = visible;
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "_updateBarButtonsWithUndoRedoVisible", buf, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelButton_];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDoneButton_];
  v8 = [MEMORY[0x1E695DF70] arrayWithObject:v6];
  v9 = 0;
  if (MEMORY[0x1B8C6D660]())
  {
    v10 = objc_alloc(MEMORY[0x1E69DC720]);
    v38[0] = v6;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v12 = [v10 initWithBarButtonItems:v11 representativeItem:0];

    v9 = [MEMORY[0x1E695DF70] arrayWithObject:v12];
  }

  v37 = v7;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  if (visibleCopy)
  {
    v33 = v8;
    if (MEMORY[0x1B8C6D660]())
    {
      v14 = objc_alloc(MEMORY[0x1E69DC708]);
      plainButtonConfiguration = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.backward"];
      v16 = [v14 initWithImage:plainButtonConfiguration style:0 target:self action:sel_handleUndoButton_];
    }

    else
    {
      plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.backward.circle"];
      [plainButtonConfiguration setImage:v17];

      [plainButtonConfiguration setContentInsets:{0.0, 4.0, 0.0, 4.0}];
      v18 = [MEMORY[0x1E69C3BE8] buttonWithWithCursorEffect:1 target:self action:sel_handleUndoButton_];
      [v18 setConfiguration:plainButtonConfiguration];
      v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v18];
    }

    v19 = PULocalizedString(@"PLUGIN_UNDO_BUTTON_TITLE");
    [v16 setTitle:v19];

    if (MEMORY[0x1B8C6D660]([v16 setEnabled:0]))
    {
      v20 = objc_alloc(MEMORY[0x1E69DC708]);
      plainButtonConfiguration2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.forward"];
      v22 = [v20 initWithImage:plainButtonConfiguration2 style:0 target:self action:sel_handleRedoButton_];
    }

    else
    {
      plainButtonConfiguration2 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.uturn.forward.circle"];
      [plainButtonConfiguration2 setImage:v23];

      [plainButtonConfiguration2 setContentInsets:{0.0, 4.0, 0.0, 4.0}];
      v24 = [MEMORY[0x1E69C3BE8] buttonWithWithCursorEffect:1 target:self action:sel_handleRedoButton_];
      [v24 setConfiguration:plainButtonConfiguration2];
      v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v24];
    }

    v25 = PULocalizedString(@"PLUGIN_REDO_BUTTON_TITLE");
    [v22 setTitle:v25];

    if (MEMORY[0x1B8C6D660]([v22 setEnabled:0]))
    {
      v26 = objc_alloc(MEMORY[0x1E69DC720]);
      v36[0] = v16;
      v36[1] = v22;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
      v28 = [v26 initWithBarButtonItems:v27 representativeItem:0];

      [v9 addObject:v28];
      v8 = v33;
    }

    else
    {
      v35[0] = v16;
      v35[1] = v22;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
      v8 = v33;
      [v33 addObjectsFromArray:v28];
    }

    [(PUEditPluginHostViewController *)self setUndoBarButtonItem:v16];
    [(PUEditPluginHostViewController *)self setRedoBarButtonItem:v22];
  }

  v29 = MEMORY[0x1B8C6D660]();
  navigationItem = [(PUEditPluginHostViewController *)self navigationItem];
  v31 = navigationItem;
  if (v29)
  {
    [navigationItem setLeadingItemGroups:v9];
  }

  else
  {
    [navigationItem setLeftBarButtonItems:v8 animated:1];
  }

  navigationItem2 = [(PUEditPluginHostViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItems:v13 animated:1];
}

- (void)_dismiss
{
  remoteViewController = [(PUEditPluginHostViewController *)self remoteViewController];
  v8 = remoteViewController;
  if (remoteViewController)
  {
    if ([remoteViewController isViewLoaded])
    {
      view = [v8 view];
      [view removeFromSuperview];
    }

    [v8 removeFromParentViewController];
    [(PUEditPluginHostViewController *)self setRemoteViewController:0];
  }

  request = [(PUEditPluginHostViewController *)self request];
  if (request)
  {
    plugin = [(PUEditPluginHostViewController *)self plugin];
    extension = [plugin extension];
    [extension cancelExtensionRequestWithIdentifier:request];

    [(PUEditPluginHostViewController *)self setRequest:0];
  }
}

- (id)_extensionVendorProxy
{
  _hostContext = [(PUEditPluginHostViewController *)self _hostContext];
  _auxiliaryConnection = [_hostContext _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_hostContext
{
  plugin = [(PUEditPluginHostViewController *)self plugin];
  extension = [plugin extension];
  request = [(PUEditPluginHostViewController *)self request];
  v7 = [extension _extensionContextForUUID:request];

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUEditPluginHostViewController.m" lineNumber:268 description:{@"unexpected class %@", v7}];
    }
  }

  return v7;
}

- (void)_addRemoteViewControllerIfNeeded
{
  v3 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "_addRemoteViewControllerIfNeeded", buf, 2u);
  }

  remoteViewController = [(PUEditPluginHostViewController *)self remoteViewController];
  if (remoteViewController)
  {
    if ([(PUEditPluginHostViewController *)self isViewLoaded])
    {
      parentViewController = [remoteViewController parentViewController];

      if (parentViewController != self)
      {
        [(PUEditPluginHostViewController *)self addChildViewController:remoteViewController];
        view = [remoteViewController view];
        view2 = [(PUEditPluginHostViewController *)self view];
        [view2 addSubview:view];

        [remoteViewController didMoveToParentViewController:self];
        v27 = _NSDictionaryOfVariableBindings(&cfstr_Remoteview.isa, view, 0);
        [view setTranslatesAutoresizingMaskIntoConstraints:0];
        array = [MEMORY[0x1E695DF70] array];
        centerXAnchor = [view centerXAnchor];
        view3 = [(PUEditPluginHostViewController *)self view];
        centerXAnchor2 = [view3 centerXAnchor];
        v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

        LODWORD(v13) = 1148846080;
        [v12 setPriority:v13];
        [array addObject:v12];
        leadingAnchor = [view leadingAnchor];
        view4 = [(PUEditPluginHostViewController *)self view];
        safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
        leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
        v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

        LODWORD(v19) = 1132068864;
        [v18 setPriority:v19];
        [array addObject:v18];
        trailingAnchor = [view trailingAnchor];
        view5 = [(PUEditPluginHostViewController *)self view];
        safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
        trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
        v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

        LODWORD(v25) = 1132068864;
        [v24 setPriority:v25];
        [array addObject:v24];
        v26 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[remoteView]|" options:0 metrics:0 views:v27];
        [array addObjectsFromArray:v26];

        [MEMORY[0x1E696ACD8] activateConstraints:array];
      }
    }
  }
}

- (void)_beginContentEditingWithCompletionHandler:(id)handler timeout:(double)timeout
{
  v29[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "_beginContentEditingWithCompletionHandler", buf, 2u);
  }

  *buf = 0;
  v25 = buf;
  v26 = 0x2020000000;
  v27 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PUEditPluginHostViewController__beginContentEditingWithCompletionHandler_timeout___block_invoke;
  aBlock[3] = &unk_1E7B76B08;
  v23 = buf;
  v8 = handlerCopy;
  v22 = v8;
  v9 = _Block_copy(aBlock);
  v10 = MEMORY[0x1E696ABC0];
  v28 = *MEMORY[0x1E696A578];
  v29[0] = @"extension connection lost";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v12 = [v10 errorWithDomain:*MEMORY[0x1E696A250] code:4099 userInfo:v11];

  _extensionVendorProxy = [(PUEditPluginHostViewController *)self _extensionVendorProxy];
  if (_extensionVendorProxy)
  {
    v14 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "_beginContentEditingWithCompletionHandler - calling plugin's beginContentEditingWithCompletionHandler", v20, 2u);
    }

    [_extensionVendorProxy beginContentEditingWithCompletionHandler:v9];
    v15 = dispatch_time(0, (timeout * 1000000000.0));
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__PUEditPluginHostViewController__beginContentEditingWithCompletionHandler_timeout___block_invoke_233;
    v17[3] = &unk_1E7B80B48;
    v19 = v9;
    v18 = v12;
    dispatch_after(v15, MEMORY[0x1E69E96A0], v17);
  }

  else
  {
    v16 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "_beginContentEditingWithCompletionHandler - no plugin proxy", v20, 2u);
    }

    (*(v9 + 2))(v9, v12);
  }

  _Block_object_dispose(buf, 8);
}

void __84__PUEditPluginHostViewController__beginContentEditingWithCompletionHandler_timeout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  atomic_compare_exchange_strong((*(*(a1 + 40) + 8) + 24), &v4, 1u);
  if (!v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __84__PUEditPluginHostViewController__beginContentEditingWithCompletionHandler_timeout___block_invoke_2;
      v6[3] = &unk_1E7B80B48;
      v8 = v5;
      v7 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], v6);
    }
  }
}

uint64_t __84__PUEditPluginHostViewController__beginContentEditingWithCompletionHandler_timeout___block_invoke_233(uint64_t a1)
{
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "_beginContentEditingWithCompletionHandler - callback from plugin timed out", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __84__PUEditPluginHostViewController__beginContentEditingWithCompletionHandler_timeout___block_invoke_2(uint64_t a1)
{
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "_beginContentEditingWithCompletionHandler - calling completion", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_queryShouldShowCancelConfirmationWithResponseHandler:(id)handler timeout:(double)timeout
{
  handlerCopy = handler;
  _extensionVendorProxy = [(PUEditPluginHostViewController *)self _extensionVendorProxy];
  if (_extensionVendorProxy)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__PUEditPluginHostViewController__queryShouldShowCancelConfirmationWithResponseHandler_timeout___block_invoke;
    aBlock[3] = &unk_1E7B76AE0;
    v15 = v16;
    v14 = handlerCopy;
    v8 = _Block_copy(aBlock);
    [_extensionVendorProxy queryShouldShowCancelConfirmationWithResponseHandler:v8];
    v9 = dispatch_time(0, (timeout * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__PUEditPluginHostViewController__queryShouldShowCancelConfirmationWithResponseHandler_timeout___block_invoke_2;
    block[3] = &unk_1E7B80C88;
    v12 = v8;
    v10 = v8;
    dispatch_after(v9, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v16, 8);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __96__PUEditPluginHostViewController__queryShouldShowCancelConfirmationWithResponseHandler_timeout___block_invoke(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong((*(*(result + 40) + 8) + 24), &v1, 1u);
  if (!v1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)queryHandlingCapabilityForAdjustmentData:(id)data withResponseHandler:(id)handler timeout:(double)timeout
{
  dataCopy = data;
  handlerCopy = handler;
  _extensionVendorProxy = [(PUEditPluginHostViewController *)self _extensionVendorProxy];
  if (_extensionVendorProxy)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __103__PUEditPluginHostViewController_queryHandlingCapabilityForAdjustmentData_withResponseHandler_timeout___block_invoke;
    aBlock[3] = &unk_1E7B76AE0;
    v18 = v19;
    v17 = handlerCopy;
    v11 = _Block_copy(aBlock);
    [_extensionVendorProxy queryHandlingCapabilityForAdjustmentData:dataCopy withResponseHandler:v11];
    v12 = dispatch_time(0, (timeout * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__PUEditPluginHostViewController_queryHandlingCapabilityForAdjustmentData_withResponseHandler_timeout___block_invoke_2;
    block[3] = &unk_1E7B80C88;
    v15 = v11;
    v13 = v11;
    dispatch_after(v12, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v19, 8);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __103__PUEditPluginHostViewController_queryHandlingCapabilityForAdjustmentData_withResponseHandler_timeout___block_invoke(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong((*(*(result + 40) + 8) + 24), &v1, 1u);
  if (!v1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)loadRemoteViewControllerWithCompletionHandler:(id)handler
{
  v33[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "loadRemoteViewControllerWithCompletionHandler", buf, 2u);
  }

  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUEditPluginHostViewController.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  plugin = [(PUEditPluginHostViewController *)self plugin];
  extension = [plugin extension];

  objc_initWeak(&location, self);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke;
  v29[3] = &unk_1E7B769F0;
  objc_copyWeak(&v30, &location);
  [extension set_requestPostCompletionBlock:v29];
  v9 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__22517;
  v27 = __Block_byref_object_dispose__22518;
  v28 = 0;
  v10 = *MEMORY[0x1E69791B8];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_212;
  v22[3] = &unk_1E7B76A40;
  v22[4] = buf;
  [v9 registerItemForTypeIdentifier:v10 loadHandler:v22];
  v11 = objc_alloc_init(MEMORY[0x1E696ABE0]);
  v33[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [v11 setAttachments:v12];

  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "loadRemoteViewControllerWithCompletionHandler - calling instantiateViewControllerWithInputItems", v21, 2u);
  }

  v32 = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_217;
  v17[3] = &unk_1E7B76AB8;
  v15 = handlerCopy;
  v17[4] = self;
  v18 = v15;
  v19 = buf;
  v20 = a2;
  [extension instantiateViewControllerWithInputItems:v14 listenerEndpoint:0 connectionHandler:v17];

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRequest:0];

  v5[2]();
}

void __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_212(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = *MEMORY[0x1E69791B8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E7B76A18;
  v8 = v3;
  v6 = v3;
  [v4 loadItemForTypeIdentifier:v5 options:0 completionHandler:v7];
}

void __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_217(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "loadRemoteViewControllerWithCompletionHandler - instantiateViewControllerWithInputItems callback", buf, 2u);
  }

  if (v9)
  {
    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "error instantiating remote view controller: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) setRequest:v7];
    [*(a1 + 32) _setupUndoProxy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_218;
    block[3] = &unk_1E7B76A90;
    block[4] = *(a1 + 32);
    v12 = v8;
    v13 = *(a1 + 56);
    v17 = v12;
    v19 = v13;
    v15 = *(a1 + 40);
    v14 = v15;
    v18 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_218(uint64_t a1)
{
  [*(a1 + 32) setRemoteViewController:*(a1 + 40)];
  [*(a1 + 32) _addRemoteViewControllerIfNeeded];
  v2 = [*(a1 + 32) dataSource];
  if (!v2)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"PUEditPluginHostViewController.m" lineNumber:141 description:@"dataSource must be set"];
  }

  v3 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "loadRemoteViewControllerWithCompletionHandler - calling loadItemProviderWithHandler", buf, 2u);
  }

  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_222;
  v8[3] = &unk_1E7B76A68;
  v8[4] = v4;
  v7 = *(a1 + 48);
  v5 = v7;
  v9 = v7;
  [v2 editPluginHostViewController:v4 loadItemProviderWithHandler:v8];
}

void __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_222(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "loadRemoteViewControllerWithCompletionHandler - loadItemProviderWithHandler callback", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_223;
  v7[3] = &unk_1E7B7C770;
  v7[4] = v6;
  v8 = *(a1 + 40);
  [v6 _beginContentEditingWithCompletionHandler:v7 timeout:10.0];
}

void __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_223(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "loadRemoteViewControllerWithCompletionHandler - _beginContentEditingWithCompletionHandler callback", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_224;
  block[3] = &unk_1E7B80CB0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __80__PUEditPluginHostViewController_loadRemoteViewControllerWithCompletionHandler___block_invoke_224(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) setExtensionDidBeginContentEditing:1];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PUEditPluginHostViewController;
  [(PUEditPluginHostViewController *)&v6 viewDidDisappear:disappear];
  if ((-[PUEditPluginHostViewController isBeingDismissed](self, "isBeingDismissed") & 1) != 0 || (-[PUEditPluginHostViewController navigationController](self, "navigationController"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isBeingDismissed], v4, v5))
  {
    [(PUEditPluginHostViewController *)self _dismiss];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = PUEditPluginHostViewController;
  [(PUEditPluginHostViewController *)&v5 viewWillAppear:?];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:appearCopy];
  [(PUEditPluginHostViewController *)self _addRemoteViewControllerIfNeeded];
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = PUEditPluginHostViewController;
  [(PUEditPluginHostViewController *)&v9 loadView];
  view = [(PUEditPluginHostViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  plugin = [(PUEditPluginHostViewController *)self plugin];
  title = [plugin title];

  [(PUEditPluginHostViewController *)self setTitle:title];
  [(PUEditPluginHostViewController *)self _updateBarButtonsWithUndoRedoVisible:[(PUEditPluginHostViewController *)self showUndoRedoButtons]];
  _hostContext = [(PUEditPluginHostViewController *)self _hostContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PUEditPluginHostViewController_loadView__block_invoke;
  v8[3] = &unk_1E7B7F020;
  v8[4] = self;
  [_hostContext setHideNavigationControllerHandler:v8];
}

void __42__PUEditPluginHostViewController_loadView__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) navigationController];
  [v2 setNavigationBarHidden:v1];
}

- (void)dealloc
{
  [(PUEditPluginHostViewController *)self _endDisablingIdleTimerIfNecessary];
  v3.receiver = self;
  v3.super_class = PUEditPluginHostViewController;
  [(PUEditPluginHostViewController *)&v3 dealloc];
}

- (PUEditPluginHostViewController)initWithPlugin:(id)plugin
{
  pluginCopy = plugin;
  v9.receiver = self;
  v9.super_class = PUEditPluginHostViewController;
  v6 = [(PUEditPluginHostViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plugin, plugin);
  }

  return v7;
}

@end