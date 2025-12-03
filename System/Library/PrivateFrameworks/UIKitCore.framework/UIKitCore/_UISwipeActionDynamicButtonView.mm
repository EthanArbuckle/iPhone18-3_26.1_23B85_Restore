@interface _UISwipeActionDynamicButtonView
+ (double)imageOnlyButtonWidth:(CGRect)width buttonTypes:(id)types;
+ (id)defaultButtonConfiguration;
+ (id)defaultTitleLabel;
+ (id)preferredSymbolConfigurationForImage;
- (CGSize)preferredSize;
- (UIButtonConfiguration)buttonConfiguration;
- (_UISwipeActionDynamicButtonView)initWithFrame:(CGRect)frame;
- (_UISwipeActionDynamicButtonViewDelegate)delegate;
- (void)_buttonDidTouchUpInInside:(id)inside;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setButtonBackgroundColor:(id)color;
- (void)setButtonImage:(id)image;
- (void)setButtonMenu:(id)menu;
- (void)setFrame:(CGRect)frame;
- (void)setState:(unint64_t)state;
- (void)setTitle:(id)title;
- (void)swipeActionWillDisplayMenuForButton:(id)button;
- (void)updateButtonConfiguration;
@end

@implementation _UISwipeActionDynamicButtonView

- (_UISwipeActionDynamicButtonView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _UISwipeActionDynamicButtonView;
  v3 = [(UIView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_UISwipeActionDynamicButton);
    [(UIButton *)v4 setPreferredBehavioralStyle:1];
    [(UIControl *)v4 addTarget:v3 action:sel__buttonDidTouchUpInInside_ forControlEvents:0x2000];
    [(UIView *)v3 addSubview:v4];
    button = v3->_button;
    v3->_button = v4;
    v6 = v4;

    v7 = +[_UISwipeActionDynamicButtonView defaultTitleLabel];
    [(UIView *)v3 addSubview:v7];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    [(_UISwipeActionDynamicButtonView *)v3 setState:0];
  }

  return v3;
}

- (UIButtonConfiguration)buttonConfiguration
{
  buttonConfiguration = self->_buttonConfiguration;
  if (!buttonConfiguration)
  {
    v4 = +[_UISwipeActionDynamicButtonView defaultButtonConfiguration];
    v5 = self->_buttonConfiguration;
    self->_buttonConfiguration = v4;

    buttonBackgroundColor = [(_UISwipeActionDynamicButtonView *)self buttonBackgroundColor];
    [(UIButtonConfiguration *)self->_buttonConfiguration setBaseBackgroundColor:buttonBackgroundColor];

    buttonImage = [(_UISwipeActionDynamicButtonView *)self buttonImage];
    [(UIButtonConfiguration *)self->_buttonConfiguration setImage:buttonImage];

    buttonConfiguration = self->_buttonConfiguration;
  }

  return buttonConfiguration;
}

- (void)setButtonMenu:(id)menu
{
  button = [(_UISwipeActionDynamicButtonView *)self button];
  [button setMenu:menu];

  button2 = [(_UISwipeActionDynamicButtonView *)self button];
  [button2 setShowsMenuAsPrimaryAction:menu != 0];

  button3 = [(_UISwipeActionDynamicButtonView *)self button];
  [button3 setSwipeActionButtonDelegate:self];
}

- (CGSize)preferredSize
{
  p_preferredSize = &self->_preferredSize;
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [(UIView *)self setNeedsLayout];
    [(UIView *)self layoutIfNeeded];
    width = p_preferredSize->width;
    height = p_preferredSize->height;
  }

  result.height = height;
  result.width = width;
  return result;
}

+ (id)preferredSymbolConfigurationForImage
{
  v2 = [off_1E70ECC18 systemFontOfSize:18.0];
  v3 = [UIImageSymbolConfiguration configurationWithFont:v2 scale:2];

  return v3;
}

+ (id)defaultButtonConfiguration
{
  v2 = +[UIButtonConfiguration filledButtonConfiguration];
  [v2 setImagePlacement:2];
  v3 = +[_UISwipeActionDynamicButtonView preferredSymbolConfigurationForImage];
  [v2 setPreferredSymbolConfigurationForImage:v3];

  [v2 setTitleLineBreakMode:0];
  [v2 setTitleTextAttributesTransformer:&__block_literal_global_231];

  return v2;
}

+ (id)defaultTitleLabel
{
  v3 = objc_alloc_init(UILabel);
  v4 = +[UIColor secondaryLabelColor];
  [(UILabel *)v3 setTextColor:v4];

  preferredTitleFont = [self preferredTitleFont];
  [(UILabel *)v3 setFont:preferredTitleFont];

  [(UILabel *)v3 setNumberOfLines:0];
  [(UILabel *)v3 setTextAlignment:1];
  [(UILabel *)v3 setLineBreakMode:0];
  [(UILabel *)v3 setAdjustsFontForContentSizeCategory:1];
  [(UIView *)v3 setMaximumContentSizeCategory:@"UICTContentSizeCategoryXL"];

  return v3;
}

+ (double)imageOnlyButtonWidth:(CGRect)width buttonTypes:(id)types
{
  Height = CGRectGetHeight(width);
  v6 = floorf(Height) + -8.0;
  v7 = [types containsObject:&unk_1EFE30820];
  result = 50.0;
  v9 = 80.0;
  if (!v7)
  {
    v9 = 50.0;
  }

  if (v6 < v9)
  {
    v9 = v6;
  }

  if (v9 != 50.0)
  {
    return 60.0;
  }

  return result;
}

- (void)_buttonDidTouchUpInInside:(id)inside
{
  delegate = [(_UISwipeActionDynamicButtonView *)self delegate];
  [delegate swipeActionButtonDidTouchUpInside:self];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UISwipeActionDynamicButtonView;
  [(UIView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIView *)self setNeedsLayout];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _UISwipeActionDynamicButtonView;
  [(UIView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(UIView *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  title = self->_title;
  titleCopy = title;
  titleCopy2 = title;
  if (titleCopy2 == titleCopy)
  {
  }

  else
  {
    if (titleCopy && titleCopy2)
    {
      v6 = [(NSString *)titleCopy isEqual:titleCopy2];

      if (v6)
      {
        return;
      }
    }

    else
    {
    }

    v7 = [(NSString *)titleCopy copy];
    v8 = self->_title;
    self->_title = v7;

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setButtonBackgroundColor:(id)color
{
  if (self->_buttonBackgroundColor != color)
  {
    objc_storeStrong(&self->_buttonBackgroundColor, color);

    [(_UISwipeActionDynamicButtonView *)self updateButtonConfiguration];
  }
}

- (void)setButtonImage:(id)image
{
  if (self->_buttonImage != image)
  {
    objc_storeStrong(&self->_buttonImage, image);

    [(_UISwipeActionDynamicButtonView *)self updateButtonConfiguration];
  }
}

- (void)updateButtonConfiguration
{
  buttonBackgroundColor = [(_UISwipeActionDynamicButtonView *)self buttonBackgroundColor];
  [(UIButtonConfiguration *)self->_buttonConfiguration setBaseBackgroundColor:buttonBackgroundColor];

  buttonImage = [(_UISwipeActionDynamicButtonView *)self buttonImage];
  [(UIButtonConfiguration *)self->_buttonConfiguration setImage:buttonImage];

  [(UIView *)self setNeedsLayout];
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v78.receiver = self;
  v78.super_class = _UISwipeActionDynamicButtonView;
  [(UIView *)&v78 layoutSubviews];
  button = [(_UISwipeActionDynamicButtonView *)self button];
  buttonConfiguration = [(_UISwipeActionDynamicButtonView *)self buttonConfiguration];
  titleLabel = [(_UISwipeActionDynamicButtonView *)self titleLabel];
  title = [(_UISwipeActionDynamicButtonView *)self title];
  [titleLabel setText:title];
  image = [buttonConfiguration image];
  v8 = image != 0;

  v9 = [title length];
  if (!v9)
  {
    v8 = 0;
  }

  if (image)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 != 0;
  }

  [(UIView *)self bounds];
  Width = CGRectGetWidth(v79);
  v12 = floorf(Width);
  [(UIView *)self bounds];
  Height = CGRectGetHeight(v80);
  v14 = floorf(Height);
  v15 = *MEMORY[0x1E695F060];
  v16 = *(MEMORY[0x1E695F060] + 8);
  [titleLabel sizeThatFits:{*MEMORY[0x1E695F060], v16}];
  v19 = v18;
  if (v9)
  {
    v20 = v17;
    [(_UISwipeActionDynamicButtonView *)self uniformHeight];
    v22 = v21;
  }

  else
  {
    v22 = v16;
    v20 = v15;
  }

  v81.origin.x = 0.0;
  v81.origin.y = 0.0;
  v81.size.width = v12;
  v81.size.height = v14;
  v23 = CGRectGetHeight(v81) + -8.0;
  buttonTypes = [(_UISwipeActionDynamicButtonView *)self buttonTypes];
  v25 = [buttonTypes count];
  v75 = v25;
  if (v8)
  {
    v82.origin.x = 0.0;
    v82.origin.y = 0.0;
    v82.size.width = v12;
    v82.size.height = v14;
    v26 = v25;
    v8 = CGRectGetHeight(v82) >= 60.0 && v26 <= 1 && v23 - v22 + -4.0 >= 30.0;
  }

  [buttonConfiguration setCornerStyle:4];
  v77 = buttonTypes;
  if (v10 || [buttonTypes containsObject:&unk_1EFE30820])
  {
    [buttonConfiguration setCornerStyle:-1];
    background = [buttonConfiguration background];
    [background setCornerRadius:16.0];

    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  if (v9 && (image == 0 || !v8))
  {
    [titleLabel setText:0];
    [buttonConfiguration setTitle:title];
    v30 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleFootnote" maximumContentSizeCategory:@"UICTContentSizeCategoryAccessibilityM"];
    v31 = [UIImageSymbolConfiguration configurationWithFont:v30 scale:2];
    [buttonConfiguration setPreferredSymbolConfigurationForImage:v31];
  }

  if (!v8)
  {
    if ([(_UISwipeActionDynamicButtonView *)self canUseInlineStyle])
    {
      if (v19 > fmin(v23, 50.0) && !v10)
      {
LABEL_34:
        [buttonConfiguration setTitle:0];
        v39 = +[_UISwipeActionDynamicButtonView preferredSymbolConfigurationForImage];
        [buttonConfiguration setPreferredSymbolConfigurationForImage:v39];

        [button setConfiguration:buttonConfiguration];
        v85.origin.x = 0.0;
        v85.origin.y = 0.0;
        v85.size.width = v12;
        v85.size.height = v14;
        if (CGRectGetHeight(v85) < 58.0)
        {
          v40 = 1;
        }

        else
        {
          v40 = v29;
        }

        if (!v40)
        {
          v23 = 50.0;
        }

        if (v23 == 50.0)
        {
          v36 = 50.0;
        }

        else
        {
          v36 = 60.0;
        }

        v86.origin.x = 0.0;
        v86.origin.y = 0.0;
        v86.size.width = v12;
        v86.size.height = v14;
        v41 = CGRectGetWidth(v86);
        if (v41 >= v36)
        {
          v42 = v41;
        }

        else
        {
          v42 = v36;
        }

        v43 = 0.0;
        v76 = v23;
        [button setBounds:{0.0, 0.0, v42, v23}];
        v87.origin.x = 0.0;
        v87.origin.y = 0.0;
        v87.size.width = v12;
        v87.size.height = v14;
        MidX = CGRectGetMidX(v87);
        v88.origin.x = 0.0;
        v88.origin.y = 0.0;
        v88.size.width = v12;
        v88.size.height = v14;
        [button setCenter:{MidX, CGRectGetMidY(v88)}];
        [titleLabel setHidden:1];
        v45 = 32.0;
LABEL_66:
        v46 = v77;
        goto LABEL_67;
      }
    }

    else if (!v10)
    {
      goto LABEL_34;
    }

    [buttonConfiguration setDefaultContentInsets];
    [buttonConfiguration setImagePadding:4.0];
    [button setConfiguration:buttonConfiguration];
    [button sizeThatFits:{v15, v16}];
    v56 = v55;
    v57 = 80.0;
    if (!v29)
    {
      v57 = 50.0;
    }

    if (v23 >= v57)
    {
      v23 = v57;
    }

    title2 = [buttonConfiguration title];
    v59 = 60.0;
    if (v23 == 50.0)
    {
      v59 = 50.0;
    }

    if (title2)
    {
      v36 = v56;
    }

    else
    {
      v36 = v59;
    }

    v93.origin.x = 0.0;
    v93.origin.y = 0.0;
    v93.size.width = v12;
    v93.size.height = v14;
    v60 = CGRectGetWidth(v93);
    if (v60 >= v36)
    {
      v61 = v60;
    }

    else
    {
      v61 = v36;
    }

    v43 = 0.0;
    v76 = v23;
    [button setBounds:{0.0, 0.0, v61, v23}];
    v94.origin.x = 0.0;
    v94.origin.y = 0.0;
    v94.size.width = v12;
    v94.size.height = v14;
    v62 = CGRectGetMidX(v94);
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v95.size.width = v12;
    v95.size.height = v14;
    [button setCenter:{v62, CGRectGetMidY(v95)}];
    [titleLabel setHidden:1];
    v45 = 16.0;
    if ([(_UISwipeActionDynamicButtonView *)self canUseUniformInlineWidth])
    {
      [(_UISwipeActionDynamicButtonView *)self uniformInlineWidth];
      v43 = v63;
    }

    goto LABEL_66;
  }

  v74 = v19;
  v32 = v22;
  v33 = v22 + 4.0 + 50.0;
  v83.origin.x = 0.0;
  v83.origin.y = 0.0;
  v83.size.width = v12;
  v83.size.height = v14;
  v34 = CGRectGetHeight(v83);
  v84.origin.x = 0.0;
  v84.origin.y = 0.0;
  v84.size.width = v12;
  v84.size.height = v14;
  v35 = CGRectGetWidth(v84);
  v73 = v32;
  if (v34 >= v33 + 8.0)
  {
    v38 = 50.0;
    if (v35 >= 50.0)
    {
      v37 = v35;
    }

    else
    {
      v37 = 50.0;
    }

    v36 = fmax(v20, 50.0);
    v76 = 50.0;
  }

  else
  {
    v36 = fmax(v20, 60.0);
    if (v35 >= v36)
    {
      v37 = v35;
    }

    else
    {
      v37 = v36;
    }

    if (v23 - v32 + -4.0 <= 50.0)
    {
      v38 = v23 - v32 + -4.0;
    }

    else
    {
      v38 = 50.0;
    }

    v76 = v23;
    v33 = v23;
  }

  v46 = v77;
  [button setBounds:{0.0, 0.0, v37, v38}];
  v89.origin.x = 0.0;
  v89.origin.y = 0.0;
  v89.size.width = v12;
  v89.size.height = v14;
  v47 = CGRectGetMidX(v89);
  v90.origin.x = 0.0;
  v90.origin.y = 0.0;
  v90.size.width = v12;
  v90.size.height = v14;
  v48 = v33 * 0.5;
  v49 = v38 * 0.5 + CGRectGetMidY(v90) - v48;
  [(UIView *)self _currentScreenScale];
  [button setCenter:{UIPointRoundToScale(v47, v49, v50)}];
  [titleLabel setBounds:{0.0, 0.0, v20, v74}];
  v91.origin.x = 0.0;
  v91.origin.y = 0.0;
  v91.size.width = v12;
  v91.size.height = v14;
  v51 = CGRectGetMidX(v91);
  v92.origin.x = 0.0;
  v92.origin.y = 0.0;
  v92.size.width = v12;
  v92.size.height = v14;
  v52 = v74 * 0.5 + v48 + CGRectGetMidY(v92) - v73;
  [(UIView *)self _currentScreenScale];
  [titleLabel setCenter:{UIPointRoundToScale(v51, v52, v53)}];
  [titleLabel setHidden:0];
  [(_UISwipeActionDynamicButtonView *)self uniformWidth];
  v43 = v54;
  v45 = 32.0;
LABEL_67:
  state = [(_UISwipeActionDynamicButtonView *)self state];
  v65 = state - 3;
  if (state - 3 >= 0xFFFFFFFFFFFFFFFELL)
  {
    if (state == 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = 2;
    }

    if (state == 1)
    {
      v67 = v45;
    }

    else
    {
      v67 = 0.0;
    }

    if (state == 1)
    {
      v68 = 0.0;
    }

    else
    {
      v68 = v45;
    }

    [buttonConfiguration setContentInsets:{0.0, v67, 0.0, v68}];
  }

  else
  {
    [buttonConfiguration setDefaultContentInsets];
    v66 = 0;
  }

  [button setContentHorizontalAlignment:v66];
  [button setConfiguration:buttonConfiguration];
  v69 = 1.0;
  if (v65 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v69 = 0.0;
  }

  [titleLabel setAlpha:v69];
  if (v43 >= v36)
  {
    v70 = v43;
  }

  else
  {
    v70 = v36;
  }

  if (v75 >= 2 || v43 > 100.0 || v43 <= 0.0)
  {
    v70 = v36;
  }

  self->_preferredSize.width = v70;
  self->_preferredSize.height = v76;
}

- (void)swipeActionWillDisplayMenuForButton:(id)button
{
  delegate = [(_UISwipeActionDynamicButtonView *)self delegate];
  superview = [button superview];
  v6 = superview;
  if (superview == self)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      [delegate swipeActionWillDisplayMenuForButton:self];
    }
  }

  else
  {
  }
}

- (_UISwipeActionDynamicButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end