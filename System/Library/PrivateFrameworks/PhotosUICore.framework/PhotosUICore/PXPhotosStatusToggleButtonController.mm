@interface PXPhotosStatusToggleButtonController
- (PXPhotosStatusToggleButtonController)initWithFooterViewModel:(id)a3 buttonConfiguration:(id)a4;
- (PXPhotosStatusToggleButtonControllerDelegate)delegate;
- (void)_handleButtonAction:(id)a3;
- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4;
- (void)photosGlobalFooterViewDidChangeHeight:(id)a3;
@end

@implementation PXPhotosStatusToggleButtonController

- (PXPhotosStatusToggleButtonControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photosGlobalFooterViewDidChangeHeight:(id)a3
{
  v4 = a3;
  [v4 frame];
  [v4 systemLayoutSizeFittingSize:{v5, 1.79769313e308}];
  v7 = v6;
  v9 = v8;

  WeakRetained = objc_loadWeakRetained(&self->_presentedPopOverViewController);
  [WeakRetained setPreferredContentSize:{v7, v9}];
}

- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosStatusToggleButtonController *)self delegate];
  if (!v6)
  {
    PXAssertGetLog();
  }

  v7 = [v6 presentationEnvironmentForPhotosStatusToggleButtonController:self];
  [v7 presentViewController:v5 animated:1 completionHandler:0];
}

- (void)_handleButtonAction:(id)a3
{
  v4 = objc_alloc_init(PXPhotosGlobalFooterView);
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PXPhotosGlobalFooterView *)v4 setBackgroundColor:v5];

  [(PXPhotosGlobalFooterView *)v4 setViewModel:self->_footerViewModel];
  [(PXPhotosGlobalFooterView *)v4 setDelegate:self];
  v6 = objc_alloc_init(MEMORY[0x1E69DD258]);
  [v6 setModalPresentationStyle:7];
  [v6 setView:v4];
  [(PXPhotosGlobalFooterView *)v4 systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)];
  [v6 setPreferredContentSize:?];
  objc_storeWeak(&self->_presentedPopOverViewController, v6);
  v7 = [v6 popoverPresentationController];
  [v7 setDelegate:self];
  [v7 setPermittedArrowDirections:2];
  v8 = [(PXPhotosStatusToggleButtonController *)self delegate];
  if (!v8)
  {
    PXAssertGetLog();
  }

  v9 = [v8 popoverPresentationEnvironmentForPhotosStatusToggleButtonController:self];
  [v9 presentViewController:v6 animated:1 completionHandler:0];
}

- (PXPhotosStatusToggleButtonController)initWithFooterViewModel:(id)a3 buttonConfiguration:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXPhotosStatusToggleButtonController.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"footerViewModel"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosStatusToggleButtonController.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"buttonConfiguration"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PXPhotosStatusToggleButtonController;
  v11 = [(PXPhotosStatusToggleButtonController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_footerViewModel, a3);
    v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v10 primaryAction:0];
    button = v12->_button;
    v12->_button = v13;

    [(UIButton *)v12->_button addTarget:v12 action:sel__handleButtonAction_ forControlEvents:0x2000];
  }

  return v12;
}

@end