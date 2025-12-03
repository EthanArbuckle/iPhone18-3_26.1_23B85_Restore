@interface PXPhotosStatusToggleButtonController
- (PXPhotosStatusToggleButtonController)initWithFooterViewModel:(id)model buttonConfiguration:(id)configuration;
- (PXPhotosStatusToggleButtonControllerDelegate)delegate;
- (void)_handleButtonAction:(id)action;
- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller;
- (void)photosGlobalFooterViewDidChangeHeight:(id)height;
@end

@implementation PXPhotosStatusToggleButtonController

- (PXPhotosStatusToggleButtonControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photosGlobalFooterViewDidChangeHeight:(id)height
{
  heightCopy = height;
  [heightCopy frame];
  [heightCopy systemLayoutSizeFittingSize:{v5, 1.79769313e308}];
  v7 = v6;
  v9 = v8;

  WeakRetained = objc_loadWeakRetained(&self->_presentedPopOverViewController);
  [WeakRetained setPreferredContentSize:{v7, v9}];
}

- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(PXPhotosStatusToggleButtonController *)self delegate];
  if (!delegate)
  {
    PXAssertGetLog();
  }

  v7 = [delegate presentationEnvironmentForPhotosStatusToggleButtonController:self];
  [v7 presentViewController:controllerCopy animated:1 completionHandler:0];
}

- (void)_handleButtonAction:(id)action
{
  v4 = objc_alloc_init(PXPhotosGlobalFooterView);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PXPhotosGlobalFooterView *)v4 setBackgroundColor:systemBackgroundColor];

  [(PXPhotosGlobalFooterView *)v4 setViewModel:self->_footerViewModel];
  [(PXPhotosGlobalFooterView *)v4 setDelegate:self];
  v6 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [v6 setModalPresentationStyle:7];
  [v6 setView:v4];
  [(PXPhotosGlobalFooterView *)v4 systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)];
  [v6 setPreferredContentSize:?];
  objc_storeWeak(&self->_presentedPopOverViewController, v6);
  popoverPresentationController = [v6 popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  [popoverPresentationController setPermittedArrowDirections:2];
  delegate = [(PXPhotosStatusToggleButtonController *)self delegate];
  if (!delegate)
  {
    PXAssertGetLog();
  }

  v9 = [delegate popoverPresentationEnvironmentForPhotosStatusToggleButtonController:self];
  [v9 presentViewController:v6 animated:1 completionHandler:0];
}

- (PXPhotosStatusToggleButtonController)initWithFooterViewModel:(id)model buttonConfiguration:(id)configuration
{
  modelCopy = model;
  configurationCopy = configuration;
  v10 = configurationCopy;
  if (modelCopy)
  {
    if (configurationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosStatusToggleButtonController.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"footerViewModel"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosStatusToggleButtonController.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"buttonConfiguration"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PXPhotosStatusToggleButtonController;
  v11 = [(PXPhotosStatusToggleButtonController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_footerViewModel, model);
    v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v10 primaryAction:0];
    button = v12->_button;
    v12->_button = v13;

    [(UIButton *)v12->_button addTarget:v12 action:sel__handleButtonAction_ forControlEvents:0x2000];
  }

  return v12;
}

@end