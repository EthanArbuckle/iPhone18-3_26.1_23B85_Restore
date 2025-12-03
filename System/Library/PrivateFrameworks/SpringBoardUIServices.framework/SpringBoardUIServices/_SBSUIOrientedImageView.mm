@interface _SBSUIOrientedImageView
- (_SBSUIOrientedImageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _SBSUIOrientedImageView

- (_SBSUIOrientedImageView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _SBSUIOrientedImageView;
  v3 = [(_SBSUIOrientedImageView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(_SBSUIOrientedImageView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(UIImageView *)v3->_imageView setContentMode:4];
    [(_SBSUIOrientedImageView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = _SBSUIOrientedImageView;
  [(_SBSUIOrientedImageView *)&v15 layoutSubviews];
  imageView = self->_imageView;
  [(_SBSUIOrientedImageView *)self bounds];
  [(UIImageView *)imageView setFrame:?];
  [(_SBSUIOrientedImageView *)self frame];
  v5 = v4;
  portraitImage = [(_SBSUIOrientedImageView *)self portraitImage];
  [portraitImage size];
  v8 = v7;

  if (v8 <= v5)
  {
    [(_SBSUIOrientedImageView *)self portraitImage];
  }

  else
  {
    [(_SBSUIOrientedImageView *)self landscapeImage];
  }
  v9 = ;
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x1E69DD250];
    v12 = self->_imageView;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41___SBSUIOrientedImageView_layoutSubviews__block_invoke;
    v13[3] = &unk_1E789DD98;
    v13[4] = self;
    v14 = v9;
    [v11 transitionWithView:v12 duration:5242880 options:v13 animations:0 completion:0.0];
  }
}

@end