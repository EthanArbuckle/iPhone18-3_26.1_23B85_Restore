@interface VUIVideosImageView
+ (id)imageWithImage:(id)a3 existingImageView:(id)a4;
- (void)_updateImage;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
@end

@implementation VUIVideosImageView

+ (id)imageWithImage:(id)a3 existingImageView:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    [v7 setImage:v5];
  }

  else
  {
    v7 = [objc_alloc(objc_opt_class()) initWithImage:v5];
  }

  return v7;
}

- (void)setImage:(id)a3
{
  v7.receiver = self;
  v7.super_class = VUIVideosImageView;
  v4 = a3;
  [(VUIVideosImageView *)&v7 setImage:v4];
  v5 = [v4 copy];

  flatImage = self->_flatImage;
  self->_flatImage = v5;
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VUIVideosImageView;
  [(VUIVideosImageView *)&v4 setHighlighted:a3];
  [(VUIVideosImageView *)self _updateImage];
}

- (void)_updateImage
{
  p_highlightOrSelectedImage = &self->_highlightOrSelectedImage;
  if (self->_highlightOrSelectedImage)
  {
    if (!self->_selected)
    {
      v6.receiver = self;
      v6.super_class = VUIVideosImageView;
      if (([(VUIVideosImageView *)&v6 isHighlighted]& 1) == 0)
      {
        p_highlightOrSelectedImage = &self->_flatImage;
      }
    }

    v4 = *p_highlightOrSelectedImage;
    v5.receiver = self;
    v5.super_class = VUIVideosImageView;
    [(VUIVideosImageView *)&v5 setImage:v4];
  }
}

@end