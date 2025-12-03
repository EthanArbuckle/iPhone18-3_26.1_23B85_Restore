@interface _UIBarBackgroundImageView
- (id)image;
- (void)removeTopStripView;
- (void)setImage:(id)image;
- (void)updateTopStripViewCreateIfNecessary;
@end

@implementation _UIBarBackgroundImageView

- (id)image
{
  if (self->_topStripView)
  {
    image = [(UIImageView *)self->_customImageContainer image];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _UIBarBackgroundImageView;
    image = [(UIImageView *)&v4 image];
  }

  return image;
}

- (void)updateTopStripViewCreateIfNecessary
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  window = [(UIView *)self window];
  v12 = __UIStatusBarManagerForWindow(window);
  [v12 defaultStatusBarHeightInOrientation:1];
  v14 = v13;

  v15 = v10 - (v14 + 0.0);
  image = [(_UIBarBackgroundImageView *)self image];
  topStripView = self->_topStripView;
  if (!topStripView)
  {
    v18 = [(UIView *)[_UIBarBackgroundTopCurtainView alloc] initWithFrame:v4, v6, v8, v14];
    v19 = self->_topStripView;
    self->_topStripView = &v18->super;

    [(UIView *)self->_topStripView setAutoresizingMask:2];
    [(UIView *)self addSubview:self->_topStripView];
    v20 = [(UIImageView *)[_UIBarBackgroundCustomImageContainer alloc] initWithFrame:v4 + 0.0, v6 + v14, v8, v15];
    customImageContainer = self->_customImageContainer;
    self->_customImageContainer = &v20->super;

    [(UIView *)self->_customImageContainer setAutoresizingMask:2];
    [(UIImageView *)self->_customImageContainer setImage:image];
    v25.receiver = self;
    v25.super_class = _UIBarBackgroundImageView;
    [(UIImageView *)&v25 setImage:0];
    [(UIView *)self addSubview:self->_customImageContainer];
    topStripView = self->_topStripView;
  }

  isTranslucent = [(_UIBarBackgroundImageView *)self isTranslucent];
  v23 = 1.0;
  if (isTranslucent)
  {
    v23 = 0.96;
  }

  v24 = [UIColor colorWithWhite:0.0 alpha:v23];
  [(UIView *)topStripView setBackgroundColor:v24];

  [(UIView *)self->_topStripView setFrame:v4, v6, v8, v14];
  [(UIImageView *)self->_customImageContainer setFrame:v4 + 0.0, v6 + v14, v8, v15];
}

- (void)removeTopStripView
{
  image = [(_UIBarBackgroundImageView *)self image];
  topStripView = self->_topStripView;
  if (topStripView)
  {
    [(UIView *)topStripView removeFromSuperview];
    v5 = self->_topStripView;
    self->_topStripView = 0;

    v19.receiver = self;
    v19.super_class = _UIBarBackgroundImageView;
    [(UIImageView *)&v19 setImage:image];
    [(UIView *)self->_customImageContainer removeFromSuperview];
    customImageContainer = self->_customImageContainer;
    self->_customImageContainer = 0;
  }

  if (image)
  {
    [image size];
    v8 = v7;
    [(UIView *)self bounds];
    if (v8 < v9)
    {
      [image capInsets];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      if (([image _isResizable] & 1) == 0)
      {
        [image size];
        if (v16 > 1.0)
        {
          [image size];
          v18 = [image resizableImageWithCapInsets:{v17 + -1.0, v11, v13, v15}];
          [(_UIBarBackgroundImageView *)self setImage:v18];
        }
      }
    }
  }
}

- (void)setImage:(id)image
{
  if (self->_topStripView)
  {
    customImageContainer = self->_customImageContainer;

    [(UIImageView *)customImageContainer setImage:image];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = _UIBarBackgroundImageView;
    [(UIImageView *)&v6 setImage:image];
  }
}

@end