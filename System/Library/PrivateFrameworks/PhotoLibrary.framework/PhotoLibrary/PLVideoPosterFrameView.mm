@interface PLVideoPosterFrameView
- (CGRect)imageFrame;
- (PLVideoPosterFrameView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image;
- (void)setScaleMode:(int64_t)mode;
@end

@implementation PLVideoPosterFrameView

- (CGRect)imageFrame
{
  [(UIImageView *)self->_imageView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setScaleMode:(int64_t)mode
{
  if (self->_scaleMode != mode)
  {
    self->_scaleMode = mode;
    [(PLVideoPosterFrameView *)self setNeedsLayout];
  }
}

- (void)setImage:(id)image
{
  [(UIImageView *)self->_imageView setImage:image];

  [(PLVideoPosterFrameView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(PLVideoPosterFrameView *)self bounds];
  v4 = v3;
  v6 = v5;
  image = [(UIImageView *)self->_imageView image];
  if (image)
  {
    [(UIImage *)image size];
    v9 = v4 / v8;
    v11 = v6 / v10;
    scaleMode = self->_scaleMode;
    if (v9 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }

    if (v9 >= v11)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (scaleMode == 2)
    {
      v9 = v14;
      v11 = v14;
    }

    if (scaleMode == 1)
    {
      v9 = v13;
    }

    memset(&v21.c, 0, 32);
    if (scaleMode == 1)
    {
      v11 = v13;
    }

    *&v21.a = 0uLL;
    CGAffineTransformMakeScale(&v21, v9, v11);
    [(UIImageView *)self->_imageView center];
    v16 = v15;
    v18 = v17;
    [(UIImageView *)self->_imageView bounds];
    [(UIImageView *)self->_imageView setBounds:?];
    [(UIImageView *)self->_imageView setCenter:v16, v18];
    imageView = self->_imageView;
    v20 = v21;
    [(UIImageView *)imageView setTransform:&v20];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PLVideoPosterFrameView *)self frame];
  v15.origin.x = v8;
  v15.origin.y = v9;
  v15.size.width = v10;
  v15.size.height = v11;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (!CGRectEqualToRect(v14, v15))
  {
    v13.receiver = self;
    v13.super_class = PLVideoPosterFrameView;
    [(PLVideoPosterFrameView *)&v13 setFrame:x, y, width, height];
    imageView = self->_imageView;
    [(PLVideoPosterFrameView *)self bounds];
    [(UIImageView *)imageView setFrame:?];
    [(PLVideoPosterFrameView *)self setNeedsLayout];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLVideoPosterFrameView;
  [(PLVideoPosterFrameView *)&v3 dealloc];
}

- (PLVideoPosterFrameView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PLVideoPosterFrameView;
  v3 = [(PLVideoPosterFrameView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    [(PLVideoPosterFrameView *)v3 bounds];
    v3->_imageView = [v4 initWithFrame:?];
    v3->_scaleMode = 1;
    [(PLVideoPosterFrameView *)v3 addSubview:v3->_imageView];
    [(PLVideoPosterFrameView *)v3 setClipsToBounds:1];
  }

  return v3;
}

@end