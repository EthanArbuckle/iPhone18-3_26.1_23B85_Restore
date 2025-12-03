@interface VUIVideosImageView
+ (id)imageWithImage:(id)image existingImageView:(id)view;
- (void)_updateImage;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
@end

@implementation VUIVideosImageView

+ (id)imageWithImage:(id)image existingImageView:(id)view
{
  imageCopy = image;
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
    [v7 setImage:imageCopy];
  }

  else
  {
    v7 = [objc_alloc(objc_opt_class()) initWithImage:imageCopy];
  }

  return v7;
}

- (void)setImage:(id)image
{
  v7.receiver = self;
  v7.super_class = VUIVideosImageView;
  imageCopy = image;
  [(VUIVideosImageView *)&v7 setImage:imageCopy];
  v5 = [imageCopy copy];

  flatImage = self->_flatImage;
  self->_flatImage = v5;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = VUIVideosImageView;
  [(VUIVideosImageView *)&v4 setHighlighted:highlighted];
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