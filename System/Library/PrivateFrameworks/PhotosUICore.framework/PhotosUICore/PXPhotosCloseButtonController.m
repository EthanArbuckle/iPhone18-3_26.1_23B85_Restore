@interface PXPhotosCloseButtonController
- (PXPhotosCloseButtonController)initWithButtonConfiguration:(id)a3;
- (PXPhotosCloseButtonControllerDelegate)delegate;
- (void)_handleButtonAction:(id)a3;
- (void)setForegroundColor:(id)a3;
@end

@implementation PXPhotosCloseButtonController

- (PXPhotosCloseButtonControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleButtonAction:(id)a3
{
  v4 = [(PXPhotosCloseButtonController *)self delegate];
  [v4 photosCloseButtonControllerHandleAction:self];
}

- (void)setForegroundColor:(id)a3
{
  v10 = a3;
  v5 = self->_foregroundColor;
  v6 = v5;
  if (v5 != v10)
  {
    v7 = [(UIColor *)v5 isEqual:v10];

    v8 = v10;
    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_foregroundColor, a3);
    v9 = [(UIButton *)self->_button configuration];
    v6 = [v9 copy];

    [(UIColor *)v6 setBaseForegroundColor:v10];
    [(UIButton *)self->_button setConfiguration:v6];
  }

  v8 = v10;
LABEL_5:
}

- (PXPhotosCloseButtonController)initWithButtonConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXPhotosCloseButtonController.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"buttonConfiguration"}];
  }

  v13.receiver = self;
  v13.super_class = PXPhotosCloseButtonController;
  v6 = [(PXPhotosCloseButtonController *)&v13 init];
  if (v6)
  {
    v7 = [PXPhotosViewRoundedAccessoryButton buttonWithConfiguration:v5 primaryAction:0];
    button = v6->_button;
    v6->_button = v7;

    [(UIButton *)v6->_button addTarget:v6 action:sel__handleButtonAction_ forControlEvents:0x2000];
    v9 = [v5 baseForegroundColor];
    foregroundColor = v6->_foregroundColor;
    v6->_foregroundColor = v9;
  }

  return v6;
}

@end