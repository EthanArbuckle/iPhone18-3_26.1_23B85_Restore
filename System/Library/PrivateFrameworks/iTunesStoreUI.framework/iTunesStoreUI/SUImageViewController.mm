@interface SUImageViewController
- (id)_imageView;
- (void)_backstopAction:(id)action;
- (void)dealloc;
- (void)loadView;
- (void)reloadWithStorePage:(id)page forURL:(id)l;
@end

@implementation SUImageViewController

- (void)dealloc
{
  [(SUTouchCaptureView *)self->_backstopView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  self->_backstopView = 0;
  self->_imageView = 0;
  v3.receiver = self;
  v3.super_class = SUImageViewController;
  [(SUViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(SUTouchCaptureView);
  self->_backstopView = v3;
  [(SUTouchCaptureView *)v3 addTarget:self action:sel__backstopAction_ forControlEvents:64];
  [(SUTouchCaptureView *)self->_backstopView setAutoresizingMask:18];
  -[SUTouchCaptureView setBackgroundColor:](self->_backstopView, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
  [(SUTouchCaptureView *)self->_backstopView addSubview:[(SUImageViewController *)self _imageView]];
  backstopView = self->_backstopView;

  [(SUImageViewController *)self setView:backstopView];
}

- (void)reloadWithStorePage:(id)page forURL:(id)l
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SUImageViewController reloadWithStorePage:a2 forURL:self];
  }

  _imageView = [(SUImageViewController *)self _imageView];

  [_imageView setImage:page];
}

- (void)_backstopAction:(id)action
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  [mEMORY[0x1E69DC668] sendAction:sel_imagePageViewTapped_ to:0 from:self forEvent:0];
}

- (id)_imageView
{
  result = self->_imageView;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    self->_imageView = v4;
    [(UIImageView *)v4 setAutoresizingMask:18];
    [(UIImageView *)self->_imageView setContentMode:1];
    return self->_imageView;
  }

  return result;
}

- (uint64_t)reloadWithStorePage:(uint64_t)a1 forURL:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUImageViewController.m" lineNumber:47 description:@"Page must be an image"];
}

@end