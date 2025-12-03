@interface _SBAlertItemHeaderViewController
- (CGSize)_expectedSize;
- (_SBAlertItemHeaderViewController)initWithImage:(id)image;
- (void)loadView;
@end

@implementation _SBAlertItemHeaderViewController

- (_SBAlertItemHeaderViewController)initWithImage:(id)image
{
  imageCopy = image;
  if (!imageCopy)
  {
    [(_SBAlertItemHeaderViewController *)a2 initWithImage:?];
  }

  v10.receiver = self;
  v10.super_class = _SBAlertItemHeaderViewController;
  v6 = [(_SBAlertItemHeaderViewController *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:imageCopy];
    imageView = v6->_imageView;
    v6->_imageView = v7;
  }

  return v6;
}

- (void)loadView
{
  image = [(_SBAlertItemHeaderViewController *)self image];
  [image size];
  v4 = v3;
  v6 = v5;
  [(_SBAlertItemHeaderViewController *)self _expectedSize];
  v8 = v7;
  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v7, v9}];
  [v11 setSize:{v8, v10}];
  [v11 setBackgroundColor:0];
  [v11 addSubview:self->_imageView];
  imageView = self->_imageView;
  [(_SBAlertItemHeaderViewController *)self _topMarginOffset];
  [(UIImageView *)imageView setFrame:0.0, v13, v4, v6];
  [v11 size];
  [(_SBAlertItemHeaderViewController *)self setPreferredContentSize:?];
  [(_SBAlertItemHeaderViewController *)self setView:v11];
}

- (CGSize)_expectedSize
{
  [(UIImageView *)self->_imageView size];
  v4 = v3;
  [(UIImageView *)self->_imageView size];
  v6 = v5;
  [(_SBAlertItemHeaderViewController *)self _topMarginOffset];
  v8 = v6 + v7;
  [(_SBAlertItemHeaderViewController *)self _bottomMarginOffset];
  v10 = v8 + v9;
  v11 = v4;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)initWithImage:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertItem.m" lineNumber:500 description:{@"Invalid parameter not satisfying: %@", @"image"}];
}

@end