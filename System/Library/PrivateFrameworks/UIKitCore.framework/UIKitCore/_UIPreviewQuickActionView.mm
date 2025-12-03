@interface _UIPreviewQuickActionView
- (UIImageView)backgroundViewImage;
- (UIImageView)imageView;
- (UILabel)label;
- (_UIPreviewQuickActionView)initWithCoder:(id)coder;
- (_UIPreviewQuickActionView)initWithFrame:(CGRect)frame;
- (id)centerYAnchor;
- (void)_updateCircleBackgroundImage;
- (void)layoutSubviews;
- (void)setQuickAction:(id)action;
- (void)setSelected:(BOOL)selected;
- (void)updateFromQuickAction;
@end

@implementation _UIPreviewQuickActionView

- (_UIPreviewQuickActionView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIPreviewQuickActionView;
  v3 = [(UIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    _UIPreviewQuickActionViewCommonInit(v3);
  }

  return v4;
}

- (_UIPreviewQuickActionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIPreviewQuickActionView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _UIPreviewQuickActionViewCommonInit(v3);
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIPreviewQuickActionView;
  [(UIView *)&v3 layoutSubviews];
  [(_UIPreviewQuickActionView *)self _updateCircleBackgroundImage];
}

- (id)centerYAnchor
{
  imageView = [(_UIPreviewQuickActionView *)self imageView];
  bottomAnchor = [imageView bottomAnchor];

  return bottomAnchor;
}

- (void)setQuickAction:(id)action
{
  actionCopy = action;
  if (self->_quickAction != actionCopy)
  {
    v6 = actionCopy;
    objc_storeStrong(&self->_quickAction, action);
    [(_UIPreviewQuickActionView *)self updateFromQuickAction];
    actionCopy = v6;
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(_UIPreviewQuickActionView *)self updateFromQuickAction];
  }
}

- (void)updateFromQuickAction
{
  quickAction = [(_UIPreviewQuickActionView *)self quickAction];
  title = [quickAction title];
  label = [(_UIPreviewQuickActionView *)self label];
  [label setText:title];

  quickAction2 = [(_UIPreviewQuickActionView *)self quickAction];
  image = [quickAction2 image];
  v8 = [image imageWithRenderingMode:2];
  imageView = [(_UIPreviewQuickActionView *)self imageView];
  [imageView setImage:v8];

  quickAction3 = [(_UIPreviewQuickActionView *)self quickAction];
  _color = [quickAction3 _color];
  label2 = [(_UIPreviewQuickActionView *)self label];
  [label2 setTextColor:_color];

  if ([(_UIPreviewQuickActionView *)self selected])
  {
    quickAction4 = [(_UIPreviewQuickActionView *)self quickAction];
    _color2 = [quickAction4 _color];
    backgroundViewImage = [(_UIPreviewQuickActionView *)self backgroundViewImage];
    [backgroundViewImage setTintColor:_color2];

    quickAction5 = +[UIColor whiteColor];
    imageView2 = [(_UIPreviewQuickActionView *)self imageView];
    [imageView2 setTintColor:quickAction5];
  }

  else
  {
    v18 = +[UIColor whiteColor];
    backgroundViewImage2 = [(_UIPreviewQuickActionView *)self backgroundViewImage];
    [backgroundViewImage2 setTintColor:v18];

    quickAction5 = [(_UIPreviewQuickActionView *)self quickAction];
    imageView2 = [quickAction5 _color];
    imageView3 = [(_UIPreviewQuickActionView *)self imageView];
    [imageView3 setTintColor:imageView2];
  }

  [(UIView *)self setNeedsLayout];
}

- (void)_updateCircleBackgroundImage
{
  backgroundViewImage = [(_UIPreviewQuickActionView *)self backgroundViewImage];
  [backgroundViewImage bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v16 = [UIBezierPath bezierPathWithOvalInRect:v5, v7, v9, v11];
  _UIGraphicsBeginImageContextWithOptions(0, 0, v9, v11, 0.0);
  v12 = +[UIColor whiteColor];
  [v12 setFill];

  [v16 fill];
  v13 = _UIGraphicsGetImageFromCurrentImageContext(0);
  v14 = [v13 imageWithRenderingMode:2];
  backgroundViewImage2 = [(_UIPreviewQuickActionView *)self backgroundViewImage];
  [backgroundViewImage2 setImage:v14];

  UIGraphicsEndImageContext();
}

- (UIImageView)backgroundViewImage
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundViewImage);

  return WeakRetained;
}

- (UIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end