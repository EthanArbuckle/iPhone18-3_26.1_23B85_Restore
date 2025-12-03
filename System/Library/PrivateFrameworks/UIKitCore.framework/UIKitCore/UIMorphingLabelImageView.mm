@interface UIMorphingLabelImageView
- (UIMorphingLabelImageView)initWithImage:(id)image;
- (void)setImage:(id)image;
@end

@implementation UIMorphingLabelImageView

- (UIMorphingLabelImageView)initWithImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v6 = v5;
  [imageCopy size];
  v11.receiver = self;
  v11.super_class = UIMorphingLabelImageView;
  v8 = [(UIView *)&v11 initWithFrame:0.0, 0.0, v6, v7];
  v9 = v8;
  if (v8)
  {
    [(UIMorphingLabelImageView *)v8 setImage:imageCopy];
  }

  return v9;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v21 = imageCopy;
    objc_storeStrong(&self->_image, image);
    layer = [(UIView *)self layer];
    image = [(UIMorphingLabelImage *)v21 image];
    [layer setContents:{objc_msgSend(image, "CGImage")}];

    if (v21)
    {
      [(UIMorphingLabelImage *)v21 contentsRect];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      image2 = [(UIMorphingLabelImage *)v21 image];
      [image2 size];
      v18 = v17;
      v20 = v19;

      [layer setContentsRect:{v9 / v18, v11 / v20, v13 / v18, v15 / v20}];
    }

    imageCopy = v21;
  }
}

@end