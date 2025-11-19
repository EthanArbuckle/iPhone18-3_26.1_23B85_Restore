@interface UIMorphingLabelImageView
- (UIMorphingLabelImageView)initWithImage:(id)a3;
- (void)setImage:(id)a3;
@end

@implementation UIMorphingLabelImageView

- (UIMorphingLabelImageView)initWithImage:(id)a3
{
  v4 = a3;
  [v4 size];
  v6 = v5;
  [v4 size];
  v11.receiver = self;
  v11.super_class = UIMorphingLabelImageView;
  v8 = [(UIView *)&v11 initWithFrame:0.0, 0.0, v6, v7];
  v9 = v8;
  if (v8)
  {
    [(UIMorphingLabelImageView *)v8 setImage:v4];
  }

  return v9;
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v21 = v5;
    objc_storeStrong(&self->_image, a3);
    v6 = [(UIView *)self layer];
    v7 = [(UIMorphingLabelImage *)v21 image];
    [v6 setContents:{objc_msgSend(v7, "CGImage")}];

    if (v21)
    {
      [(UIMorphingLabelImage *)v21 contentsRect];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = [(UIMorphingLabelImage *)v21 image];
      [v16 size];
      v18 = v17;
      v20 = v19;

      [v6 setContentsRect:{v9 / v18, v11 / v20, v13 / v18, v15 / v20}];
    }

    v5 = v21;
  }
}

@end