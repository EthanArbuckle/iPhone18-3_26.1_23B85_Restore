@interface PXPhotosCloseButtonController
- (PXPhotosCloseButtonController)initWithButtonConfiguration:(id)configuration;
- (PXPhotosCloseButtonControllerDelegate)delegate;
- (void)_handleButtonAction:(id)action;
- (void)setForegroundColor:(id)color;
@end

@implementation PXPhotosCloseButtonController

- (PXPhotosCloseButtonControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleButtonAction:(id)action
{
  delegate = [(PXPhotosCloseButtonController *)self delegate];
  [delegate photosCloseButtonControllerHandleAction:self];
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  v5 = self->_foregroundColor;
  v6 = v5;
  if (v5 != colorCopy)
  {
    v7 = [(UIColor *)v5 isEqual:colorCopy];

    v8 = colorCopy;
    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_foregroundColor, color);
    configuration = [(UIButton *)self->_button configuration];
    v6 = [configuration copy];

    [(UIColor *)v6 setBaseForegroundColor:colorCopy];
    [(UIButton *)self->_button setConfiguration:v6];
  }

  v8 = colorCopy;
LABEL_5:
}

- (PXPhotosCloseButtonController)initWithButtonConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosCloseButtonController.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"buttonConfiguration"}];
  }

  v13.receiver = self;
  v13.super_class = PXPhotosCloseButtonController;
  v6 = [(PXPhotosCloseButtonController *)&v13 init];
  if (v6)
  {
    v7 = [PXPhotosViewRoundedAccessoryButton buttonWithConfiguration:configurationCopy primaryAction:0];
    button = v6->_button;
    v6->_button = v7;

    [(UIButton *)v6->_button addTarget:v6 action:sel__handleButtonAction_ forControlEvents:0x2000];
    baseForegroundColor = [configurationCopy baseForegroundColor];
    foregroundColor = v6->_foregroundColor;
    v6->_foregroundColor = baseForegroundColor;
  }

  return v6;
}

@end