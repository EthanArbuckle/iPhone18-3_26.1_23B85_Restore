@interface _SSUSoundScapesDelegateForwarder
- (SSUSoundscapesPickerControllerDelegate)delegate;
- (_EXHostViewController)viewController;
- (id)initForViewController:(id)controller;
- (void)cleanup;
- (void)mediaPickerConfirmChoices;
- (void)pickerDismissed;
- (void)requestDismiss;
- (void)selectedSoundScapes:(id)scapes withError:(id)error;
@end

@implementation _SSUSoundScapesDelegateForwarder

- (id)initForViewController:(id)controller
{
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = _SSUSoundScapesDelegateForwarder;
  v5 = [(_SSUSoundScapesDelegateForwarder *)&v24 init];
  v6 = v5;
  if (v5)
  {
    [(_SSUSoundScapesDelegateForwarder *)v5 setViewController:controllerCopy];
    v7 = +[SSUSoundScapesPickerManager pickerIdentity];
    v8 = MEMORY[0x277CCA8D8];
    v9 = [v7 url];
    v10 = [v8 bundleWithURL:v9];

    v11 = [v10 localizedStringForKey:@"AMBIENTSOUNDS" value:0 table:0];
    viewController = [(_SSUSoundScapesDelegateForwarder *)v6 viewController];
    navigationItem = [viewController navigationItem];
    [navigationItem setTitle:v11];

    if (!v6->_doneButton)
    {
      v14 = [v10 localizedStringForKey:@"DONE" value:0 table:0];
      v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v14 style:2 target:v6 action:sel_mediaPickerConfirmChoices];
      doneButton = v6->_doneButton;
      v6->_doneButton = v15;

      viewController2 = [(_SSUSoundScapesDelegateForwarder *)v6 viewController];
      navigationItem2 = [viewController2 navigationItem];
      [navigationItem2 setRightBarButtonItem:v6->_doneButton];

      viewController3 = [(_SSUSoundScapesDelegateForwarder *)v6 viewController];
      navigationItem3 = [viewController3 navigationItem];
      [navigationItem3 setLargeTitleDisplayMode:2];
    }

    viewController4 = [(_SSUSoundScapesDelegateForwarder *)v6 viewController];
    view = [viewController4 view];
    [view setClipsToBounds:1];

    [(_SSUSoundScapesDelegateForwarder *)v6 updateNavigationItem];
    v6->_exiting = 0;
  }

  return v6;
}

- (void)mediaPickerConfirmChoices
{
  self->_exiting = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___SSUSoundScapesDelegateForwarder_mediaPickerConfirmChoices__block_invoke;
  block[3] = &unk_279CD65C8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)selectedSoundScapes:(id)scapes withError:(id)error
{
  scapesCopy = scapes;
  errorCopy = error;
  lastPickedArchive = self->_lastPickedArchive;
  self->_lastPickedArchive = scapesCopy;
  v9 = scapesCopy;

  lastPickedError = self->_lastPickedError;
  self->_lastPickedError = errorCopy;
  v11 = errorCopy;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___SSUSoundScapesDelegateForwarder_selectedSoundScapes_withError___block_invoke;
  block[3] = &unk_279CD65C8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)requestDismiss
{
  self->_exiting = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___SSUSoundScapesDelegateForwarder_requestDismiss__block_invoke;
  block[3] = &unk_279CD65C8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)pickerDismissed
{
  if (!self->_exiting)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    placeholderView = [WeakRetained placeholderView];
    v8 = [placeholderView viewWithTag:10001];

    [v8 setHidden:0];
    viewController = [(_SSUSoundScapesDelegateForwarder *)self viewController];
    navigationItem = [viewController navigationItem];
    [navigationItem setRightBarButtonItem:0];
  }
}

- (void)cleanup
{
  v3 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___SSUSoundScapesDelegateForwarder_cleanup__block_invoke;
  block[3] = &unk_279CD65C8;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (SSUSoundscapesPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_EXHostViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end