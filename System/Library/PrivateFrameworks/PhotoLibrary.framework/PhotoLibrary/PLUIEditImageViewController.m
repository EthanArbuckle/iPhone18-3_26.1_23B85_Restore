@interface PLUIEditImageViewController
- (PLUIEditImageViewController)initWithPhoto:(id)a3;
- (int)cropOverlayMode;
- (void)cropOverlay:(id)a3 didFinishSaving:(id)a4;
- (void)cropOverlayWasCancelled:(id)a3;
- (void)cropOverlayWasOKed:(id)a3;
- (void)dealloc;
@end

@implementation PLUIEditImageViewController

- (int)cropOverlayMode
{
  mode = self->_mode;
  if (mode == 8)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = PLUIEditImageViewController;
    return [(PLUIImageViewController *)&v6 cropOverlayMode];
  }

  return mode;
}

- (void)cropOverlayWasCancelled:(id)a3
{
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [delegate editImageViewControllerDidCancel:self];
  }
}

- (void)cropOverlay:(id)a3 didFinishSaving:(id)a4
{
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [delegate editImageViewController:self didEditImageWithOptions:a4];
  }
}

- (void)cropOverlayWasOKed:(id)a3
{
  if (!self->_saveOptions)
  {
    self->_saveOptions = 4;
  }

  [PLCropOverlay beginBackgroundSaveWithTile:"beginBackgroundSaveWithTile:progressTitle:completionCallbackTarget:options:" progressTitle:self->super._imageTile completionCallbackTarget:0 options:?];
}

- (PLUIEditImageViewController)initWithPhoto:(id)a3
{
  v6.receiver = self;
  v6.super_class = PLUIEditImageViewController;
  v3 = [(PLUIImageViewController *)&v6 initWithPhoto:a3];
  v4 = v3;
  if (v3)
  {
    [(PLUIImageViewController *)v3 setAllowsEditing:1];
    [(PLUIEditImageViewController *)v4 setMode:8];
    v4->_saveOptions = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(PLUIEditImageViewController *)self setDelegate:0];
  self->_delegate = 0;
  v3.receiver = self;
  v3.super_class = PLUIEditImageViewController;
  [(PLUIImageViewController *)&v3 dealloc];
}

@end