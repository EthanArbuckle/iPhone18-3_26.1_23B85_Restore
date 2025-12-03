@interface SKUIEmptyContentPlaceholderView
- (BOOL)showsSignInButton;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)placeholderMessage;
- (UIButton)signInButton;
- (UIEdgeInsets)placeholderImageInsets;
- (UIImage)placeholderImage;
- (UILabel)placeholderMessageLabel;
- (void)layoutSubviews;
- (void)maskPlaceholdersInBackdropView:(id)view;
- (void)setBackgroundColor:(id)color;
- (void)setPlaceholderImage:(id)image;
- (void)setPlaceholderImageInsets:(UIEdgeInsets)insets;
- (void)setPlaceholderMessage:(id)message;
- (void)setShowsSignInButton:(BOOL)button;
@end

@implementation SKUIEmptyContentPlaceholderView

- (void)maskPlaceholdersInBackdropView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmptyContentPlaceholderView *)v5 maskPlaceholdersInBackdropView:v6, v7, v8, v9, v10, v11, v12];
        if (!viewCopy)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }
  }

  if (viewCopy)
  {
LABEL_5:
    [viewCopy removeMaskViews];
    label = self->_label;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)label setBackgroundColor:clearColor];

    [(UILabel *)self->_label setOpaque:0];
    v15 = self->_label;
    v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UILabel *)v15 setTextColor:v16];

    [(UILabel *)self->_label _setBackdropMaskViewFlags:2];
    [viewCopy updateMaskViewsForView:self->_label];
    [(UIImageView *)self->_imageView setAlpha:0.2];
    imageView = self->_imageView;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIImageView *)imageView setBackgroundColor:clearColor2];

    [(UIImageView *)self->_imageView setOpaque:0];
    [(UIImageView *)self->_imageView _setBackdropMaskViewFlags:2];
    [viewCopy updateMaskViewsForView:self->_imageView];
  }

LABEL_6:
}

- (UIImage)placeholderImage
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmptyContentPlaceholderView *)v3 placeholderImage:v4];
      }
    }
  }

  image = [(UIImageView *)self->_imageView image];

  return image;
}

- (NSString)placeholderMessage
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmptyContentPlaceholderView *)v3 placeholderMessage:v4];
      }
    }
  }

  text = [(UILabel *)self->_label text];

  return text;
}

- (UILabel)placeholderMessageLabel
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmptyContentPlaceholderView *)v3 placeholderMessageLabel:v4];
      }
    }
  }

  label = self->_label;
  if (!label)
  {
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    v13 = self->_label;
    self->_label = v12;

    v14 = self->_label;
    backgroundColor = [(SKUIEmptyContentPlaceholderView *)self backgroundColor];
    [(UILabel *)v14 setBackgroundColor:backgroundColor];

    v16 = self->_label;
    v17 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v16 setFont:v17];

    [(UILabel *)self->_label setHidden:1];
    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setTextAlignment:1];
    v18 = self->_label;
    v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [(UILabel *)v18 setTextColor:v19];

    [(SKUIEmptyContentPlaceholderView *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmptyContentPlaceholderView *)v5 setPlaceholderImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  imageView = self->_imageView;
  if (imageCopy)
  {
    if (!imageView)
    {
      v14 = objc_alloc_init(MEMORY[0x277D755E8]);
      v15 = self->_imageView;
      self->_imageView = v14;

      [(SKUIEmptyContentPlaceholderView *)self addSubview:self->_imageView];
      imageView = self->_imageView;
    }

    [(UIImageView *)imageView setImage:imageCopy];
    [(UIImageView *)self->_imageView sizeToFit];
    [(SKUIEmptyContentPlaceholderView *)self setNeedsLayout];
  }

  else
  {
    [(UIImageView *)imageView removeFromSuperview];
    v16 = self->_imageView;
    self->_imageView = 0;
  }
}

- (void)setPlaceholderImageInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIEmptyContentPlaceholderView *)v8 setPlaceholderImageInsets:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  self->_imageInsets.top = top;
  self->_imageInsets.left = left;
  self->_imageInsets.bottom = bottom;
  self->_imageInsets.right = right;
  [(SKUIEmptyContentPlaceholderView *)self setNeedsLayout];
}

- (void)setPlaceholderMessage:(id)message
{
  messageCopy = message;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmptyContentPlaceholderView *)v5 setPlaceholderMessage:v6, v7, v8, v9, v10, v11, v12];
        if (messageCopy)
        {
          goto LABEL_5;
        }

LABEL_7:
        [(UILabel *)self->_label setHidden:1];
        [(UILabel *)self->_label setText:0];
        goto LABEL_8;
      }
    }
  }

  if (!messageCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  placeholderMessageLabel = [(SKUIEmptyContentPlaceholderView *)self placeholderMessageLabel];
  [placeholderMessageLabel setHidden:0];
  [placeholderMessageLabel setText:messageCopy];
  [(SKUIEmptyContentPlaceholderView *)self setNeedsLayout];

LABEL_8:
}

- (void)setShowsSignInButton:(BOOL)button
{
  buttonCopy = button;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmptyContentPlaceholderView *)v5 setShowsSignInButton:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  signInButton = [(SKUIEmptyContentPlaceholderView *)self signInButton];
  [signInButton setHidden:!buttonCopy];
}

- (UIButton)signInButton
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmptyContentPlaceholderView *)v3 signInButton:v4];
      }
    }
  }

  signInButton = self->_signInButton;
  if (!signInButton)
  {
    v12 = [MEMORY[0x277D75220] buttonWithType:1];
    v13 = self->_signInButton;
    self->_signInButton = v12;

    [(UIButton *)self->_signInButton setHidden:1];
    titleLabel = [(UIButton *)self->_signInButton titleLabel];
    v15 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel setFont:v15];

    [(SKUIEmptyContentPlaceholderView *)self addSubview:self->_signInButton];
    signInButton = self->_signInButton;
  }

  return signInButton;
}

- (BOOL)showsSignInButton
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmptyContentPlaceholderView *)v3 showsSignInButton:v4];
      }
    }
  }

  signInButton = self->_signInButton;
  if (signInButton)
  {
    LOBYTE(signInButton) = [(UIButton *)signInButton isHidden]^ 1;
  }

  return signInButton;
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIEmptyContentPlaceholderView *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUIEmptyContentPlaceholderView *)self bounds];
  v12 = v11;
  v14 = v13;
  v15 = v11 + -30.0;
  [(UIImageView *)self->_imageView frame];
  v17 = v16;
  v19 = v18;
  [(UILabel *)self->_label frame];
  v20 = v15;
  [(UILabel *)self->_label sizeThatFits:v15, 1.79769313e308];
  v22 = v21;
  if (([(UIButton *)self->_signInButton isHidden]& 1) != 0)
  {
    v23 = *(MEMORY[0x277CBF3A0] + 24);
    v37 = *MEMORY[0x277CBF3A0];
    v38 = *(MEMORY[0x277CBF3A0] + 16);
  }

  else
  {
    [(UIButton *)self->_signInButton sizeToFit];
    [(UIButton *)self->_signInButton frame];
    v25 = (v12 - v24) * 0.5;
    v37 = floorf(v25);
    v38 = v24;
  }

  top = self->_imageInsets.top;
  v27 = v22 + v19 + self->_imageInsets.bottom + top;
  v36 = v23;
  if (v23 > 0.00000011920929)
  {
    v27 = v23 + 20.0 + v27;
  }

  v28 = (v12 - v17) * 0.5;
  v29 = floorf(v28);
  v30 = (v14 - v27) * 0.5;
  v31 = v19;
  v32 = v17;
  v33 = top + floorf(v30);
  v39.origin.x = v29;
  v39.origin.y = v33;
  v39.size.width = v32;
  v39.size.height = v31;
  v34 = CGRectGetMaxY(v39) + self->_imageInsets.bottom;
  v40.origin.x = 15.0;
  v40.origin.y = v34;
  v40.size.width = v15;
  v40.size.height = v22;
  v35 = CGRectGetMaxY(v40) + 20.0;
  [(UIImageView *)self->_imageView setFrame:v29, v33, v32, v31];
  [(UILabel *)self->_label setFrame:15.0, v34, v20, v22];
  [(UIButton *)self->_signInButton setFrame:v37, v35, v38, v36];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmptyContentPlaceholderView *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UIImageView *)self->_imageView setBackgroundColor:colorCopy];
  [(UILabel *)self->_label setBackgroundColor:colorCopy];
  v13.receiver = self;
  v13.super_class = SKUIEmptyContentPlaceholderView;
  [(SKUIEmptyContentPlaceholderView *)&v13 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEmptyContentPlaceholderView *)v5 sizeThatFits:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UIImageView *)self->_imageView frame];
  v14 = v13;
  v16 = v15;
  [(UILabel *)self->_label sizeThatFits:width + -30.0, 1.79769313e308];
  v18 = v17;
  v20 = v19;
  if (([(UIButton *)self->_signInButton isHidden]& 1) != 0)
  {
    v21 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    [(UIButton *)self->_signInButton sizeToFit];
    [(UIButton *)self->_signInButton frame];
  }

  v22 = v21 + 20.0 + v20 + v16 + self->_imageInsets.bottom + self->_imageInsets.top;
  if (v21 <= 0.00000011920929)
  {
    v22 = v20 + v16 + self->_imageInsets.bottom + self->_imageInsets.top;
  }

  if (v14 >= v18)
  {
    v23 = v14;
  }

  else
  {
    v23 = v18;
  }

  v24 = v23 + 30.0;
  result.height = v22;
  result.width = v24;
  return result;
}

- (UIEdgeInsets)placeholderImageInsets
{
  top = self->_imageInsets.top;
  left = self->_imageInsets.left;
  bottom = self->_imageInsets.bottom;
  right = self->_imageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end