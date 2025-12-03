@interface SUReflectionImageView
- (SUReflectionImageView)initWithReflectionHeight:(double)height spacing:(double)spacing;
- (void)dealloc;
- (void)setImage:(id)image;
- (void)setReflectionAlphaWhenVisible:(double)visible;
- (void)setReflectionVisible:(BOOL)visible;
@end

@implementation SUReflectionImageView

- (SUReflectionImageView)initWithReflectionHeight:(double)height spacing:(double)spacing
{
  v7.receiver = self;
  v7.super_class = SUReflectionImageView;
  result = [(SUReflectionImageView *)&v7 init];
  if (result)
  {
    result->_reflectionAlpha = 1.0;
    result->_reflectionHeight = height;
    result->_spacing = spacing;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUReflectionImageView;
  [(SUReflectionImageView *)&v3 dealloc];
}

- (void)setImage:(id)image
{
  imageView = self->_imageView;
  if (imageView)
  {
    [(UIImageView *)imageView setImage:image];
    [(UIImageView *)self->_imageView setNeedsDisplay];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:image];
    self->_imageView = v6;
    [(UIImageView *)v6 setContentMode:1];
    [(UIImageView *)self->_imageView setUserInteractionEnabled:0];
    [(SUReflectionImageView *)self addSubview:self->_imageView];
  }

  if (self->_useImageSize)
  {
    [(SUReflectionImageView *)self frame];
    v8 = v7;
    v10 = v9;
    [(UIImageView *)self->_imageView frame];
    selfCopy = self;
    v13 = v8;
    v14 = v10;
  }

  else
  {
    [(SUReflectionImageView *)self bounds];
    v16 = v15;
    [(UIImageView *)self->_imageView frame];
    selfCopy = self->_imageView;
    v11 = v16;
  }

  [selfCopy setFrame:{v13, v14, v11}];
  [(UIImageView *)self->_imageView frame];
  v19 = v18 + self->_spacing;
  reflection = self->_reflection;
  if (reflection)
  {
    [(SUReflectionView *)reflection setFrame:0.0, v19, v17, self->_reflectionHeight];
  }

  else
  {
    v21 = [[SUReflectionView alloc] initWithFrame:0.0, v19, v17, self->_reflectionHeight];
    self->_reflection = v21;
    [(SUReflectionView *)v21 setAlpha:self->_reflectionAlpha];
    [(SUReflectionView *)self->_reflection setOpaque:0];
    [(SUReflectionView *)self->_reflection setUserInteractionEnabled:0];
    [(SUReflectionImageView *)self addSubview:self->_reflection];
  }

  [(SUReflectionView *)self->_reflection setImage:image];
  [(SUReflectionView *)self->_reflection setNeedsDisplay];
  [(SUReflectionImageView *)self frame];
  v23 = v22;
  v25 = v24;
  [(UIImageView *)self->_imageView frame];
  v27 = v26;
  [(SUReflectionView *)self->_reflection frame];
  MaxY = CGRectGetMaxY(v30);

  [(SUReflectionImageView *)self setFrame:v23, v25, v27, MaxY];
}

- (void)setReflectionAlphaWhenVisible:(double)visible
{
  self->_reflectionAlpha = visible;
  [(SUReflectionView *)self->_reflection alpha];
  if (v4 > 0.0)
  {
    reflection = self->_reflection;
    reflectionAlpha = self->_reflectionAlpha;

    [(SUReflectionView *)reflection setAlpha:reflectionAlpha];
  }
}

- (void)setReflectionVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(SUReflectionView *)self->_reflection alpha];
  v6 = v5;
  if (visibleCopy)
  {
    reflectionAlpha = self->_reflectionAlpha;
    if (v6 == reflectionAlpha)
    {
      return;
    }
  }

  else
  {
    if (v5 == 0.0)
    {
      return;
    }

    reflectionAlpha = 0.0;
  }

  reflection = self->_reflection;

  [(SUReflectionView *)reflection setAlpha:reflectionAlpha];
}

@end