@interface SULockoutView
- (NSString)body;
- (NSString)title;
- (UIImage)image;
- (id)_bodyLabel;
- (id)_imageView;
- (id)_newLabel;
- (id)_titleLabel;
- (void)_layoutForSlowNetwork;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundImage:(id)image;
- (void)setBody:(id)body;
- (void)setGlowImage:(id)image;
- (void)setImage:(id)image;
- (void)setLayoutPreset:(int64_t)preset;
- (void)setTitle:(id)title;
@end

@implementation SULockoutView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SULockoutView;
  [(SULockoutView *)&v3 dealloc];
}

- (NSString)body
{
  _bodyLabel = [(SULockoutView *)self _bodyLabel];

  return [_bodyLabel text];
}

- (UIImage)image
{
  _imageView = [(SULockoutView *)self _imageView];

  return [_imageView image];
}

- (void)setBackgroundImage:(id)image
{
  backgroundImageView = self->_backgroundImageView;
  if (image)
  {
    if (!backgroundImageView)
    {
      backgroundImageView = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      self->_backgroundImageView = backgroundImageView;
    }

    [(UIImageView *)backgroundImageView setImage:image];
    [(SULockoutView *)self insertSubview:self->_backgroundImageView atIndex:0];

    [(SULockoutView *)self setNeedsLayout];
  }

  else
  {
    [(UIImageView *)backgroundImageView removeFromSuperview];

    self->_backgroundImageView = 0;
  }
}

- (void)setBody:(id)body
{
  [-[SULockoutView _bodyLabel](self "_bodyLabel")];

  [(SULockoutView *)self setNeedsLayout];
}

- (void)setGlowImage:(id)image
{
  glowImageView = self->_glowImageView;
  if (image)
  {
    if (!glowImageView)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      self->_glowImageView = v6;
      [(UIImageView *)v6 setContentMode:4];
      glowImageView = self->_glowImageView;
    }

    [(UIImageView *)glowImageView setImage:image];
    v7 = self->_glowImageView;
    if (self->_backgroundImageView)
    {
      [(SULockoutView *)self insertSubview:v7 aboveSubview:?];
    }

    else
    {
      [(SULockoutView *)self insertSubview:v7 atIndex:?];
    }

    [(SULockoutView *)self setNeedsLayout];
  }

  else
  {
    [(UIImageView *)glowImageView removeFromSuperview];

    self->_glowImageView = 0;
  }
}

- (void)setImage:(id)image
{
  _imageView = [(SULockoutView *)self _imageView];
  [_imageView setImage:image];
  [_imageView sizeToFit];

  [(SULockoutView *)self setNeedsLayout];
}

- (void)setLayoutPreset:(int64_t)preset
{
  if (self->_layoutPreset != preset)
  {
    self->_layoutPreset = preset;
    [(SULockoutView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  [-[SULockoutView _titleLabel](self "_titleLabel")];

  [(SULockoutView *)self setNeedsLayout];
}

- (NSString)title
{
  _titleLabel = [(SULockoutView *)self _titleLabel];

  return [_titleLabel text];
}

- (void)layoutSubviews
{
  if (![(SULockoutView *)self layoutPreset])
  {

    [(SULockoutView *)self _layoutForSlowNetwork];
  }
}

- (void)_layoutForSlowNetwork
{
  [(SULockoutView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _imageView = [(SULockoutView *)self _imageView];
  _bodyLabel = [(SULockoutView *)self _bodyLabel];
  _titleLabel = [(SULockoutView *)self _titleLabel];
  backgroundImageView = self->_backgroundImageView;
  if (backgroundImageView)
  {
    [(UIImageView *)backgroundImageView setFrame:v4, v6, v8, v10];
  }

  v15 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  v16 = -8.0;
  if (v15 == 1)
  {
    v16 = 0.0;
  }

  v47 = v16;
  v17 = 20.0;
  if (v15 != 1)
  {
    v17 = 10.0;
  }

  v52 = v17;
  if (v15 == 1)
  {
    v18 = 10.0;
  }

  else
  {
    v18 = 5.0;
  }

  v50 = v18;
  [_bodyLabel frame];
  [_imageView frame];
  v20 = v19;
  v22 = v21;
  [_titleLabel frame];
  [_bodyLabel sizeThatFits:{v8 + -20.0, v10}];
  v49 = v23;
  v24 = v10;
  v26 = v25;
  v51 = v25;
  [_titleLabel sizeThatFits:{v8 + -20.0, v24}];
  v28 = v27;
  v30 = v29;
  *&v27 = (v24 - (v26 + v18 + v52 + v22 + v29)) * 0.5;
  v31 = v47 + floorf(*&v27);
  *&v27 = (v8 - v20) * 0.5;
  v32 = floorf(*&v27);
  [_imageView setFrame:{v32, v31, v20, v22}];
  v33 = (v8 - v28) * 0.5;
  v34 = floorf(v33);
  v54.origin.x = v32;
  v46 = v22;
  v48 = v31;
  v54.origin.y = v31;
  v54.size.width = v20;
  v54.size.height = v22;
  v35 = v52 + CGRectGetMaxY(v54);
  [_titleLabel setFrame:{v34, v35, v28, v30}];
  v36 = (v8 - v49) * 0.5;
  v37 = floorf(v36);
  v55.origin.x = v34;
  v55.origin.y = v35;
  v55.size.width = v28;
  v55.size.height = v30;
  [_bodyLabel setFrame:{v37, v50 + CGRectGetMaxY(v55), v49, v51}];
  glowImageView = self->_glowImageView;
  if (glowImageView)
  {
    [(UIImageView *)glowImageView frame];
    v40 = (v39 - v20) * 0.5;
    v41 = v32 - floorf(v40);
    v43 = (v42 - v46) * 0.5;
    v44 = self->_glowImageView;
    v45 = v48 - floorf(v43);

    [(UIImageView *)v44 setFrame:v41, v45];
  }
}

- (id)_bodyLabel
{
  result = self->_bodyLabel;
  if (!result)
  {
    self->_bodyLabel = [(SULockoutView *)self _newLabel];
    v4 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
    v5 = 12.0;
    if (v4 == 1)
    {
      v5 = 24.0;
    }

    -[UILabel setFont:](self->_bodyLabel, "setFont:", [MEMORY[0x1E69DB878] systemFontOfSize:v5]);
    [(SULockoutView *)self addSubview:self->_bodyLabel];
    return self->_bodyLabel;
  }

  return result;
}

- (id)_imageView
{
  result = self->_imageView;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    self->_imageView = v4;
    [(SULockoutView *)self addSubview:v4];
    return self->_imageView;
  }

  return result;
}

- (id)_newLabel
{
  v2 = objc_alloc_init(SUInnerShadowLabel);
  -[SUInnerShadowLabel setBackgroundColor:](v2, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
  [(SUInnerShadowLabel *)v2 setNumberOfLines:0];
  [(SUInnerShadowLabel *)v2 setTextAlignment:1];
  -[SUInnerShadowLabel setTextColor:](v2, "setTextColor:", [MEMORY[0x1E69DC888] colorWithWhite:0.666666667 alpha:1.0]);
  return v2;
}

- (id)_titleLabel
{
  result = self->_titleLabel;
  if (!result)
  {
    self->_titleLabel = [(SULockoutView *)self _newLabel];
    v4 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
    v5 = 32.0;
    if (v4 != 1)
    {
      v5 = 16.0;
    }

    -[UILabel setFont:](self->_titleLabel, "setFont:", [MEMORY[0x1E69DB878] boldSystemFontOfSize:v5]);
    [(SULockoutView *)self addSubview:self->_titleLabel];
    return self->_titleLabel;
  }

  return result;
}

@end