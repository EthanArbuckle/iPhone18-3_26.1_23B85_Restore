@interface _UISwipeActionDynamicButtonView
+ (double)imageOnlyButtonWidth:(CGRect)a3 buttonTypes:(id)a4;
+ (id)defaultButtonConfiguration;
+ (id)defaultTitleLabel;
+ (id)preferredSymbolConfigurationForImage;
- (CGSize)preferredSize;
- (UIButtonConfiguration)buttonConfiguration;
- (_UISwipeActionDynamicButtonView)initWithFrame:(CGRect)a3;
- (_UISwipeActionDynamicButtonViewDelegate)delegate;
- (void)_buttonDidTouchUpInInside:(id)a3;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setButtonBackgroundColor:(id)a3;
- (void)setButtonImage:(id)a3;
- (void)setButtonMenu:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setState:(unint64_t)a3;
- (void)setTitle:(id)a3;
- (void)swipeActionWillDisplayMenuForButton:(id)a3;
- (void)updateButtonConfiguration;
@end

@implementation _UISwipeActionDynamicButtonView

- (_UISwipeActionDynamicButtonView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _UISwipeActionDynamicButtonView;
  v3 = [(UIView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v6 = [(_UISwipeActionDynamicButtonView *)self buttonBackgroundColor];
    [(UIButtonConfiguration *)self->_buttonConfiguration setBaseBackgroundColor:v6];

    v7 = [(_UISwipeActionDynamicButtonView *)self buttonImage];
    [(UIButtonConfiguration *)self->_buttonConfiguration setImage:v7];

    buttonConfiguration = self->_buttonConfiguration;
  }

  return buttonConfiguration;
}

- (void)setButtonMenu:(id)a3
{
  v5 = [(_UISwipeActionDynamicButtonView *)self button];
  [v5 setMenu:a3];

  v6 = [(_UISwipeActionDynamicButtonView *)self button];
  [v6 setShowsMenuAsPrimaryAction:a3 != 0];

  v7 = [(_UISwipeActionDynamicButtonView *)self button];
  [v7 setSwipeActionButtonDelegate:self];
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

  v5 = [a1 preferredTitleFont];
  [(UILabel *)v3 setFont:v5];

  [(UILabel *)v3 setNumberOfLines:0];
  [(UILabel *)v3 setTextAlignment:1];
  [(UILabel *)v3 setLineBreakMode:0];
  [(UILabel *)v3 setAdjustsFontForContentSizeCategory:1];
  [(UIView *)v3 setMaximumContentSizeCategory:@"UICTContentSizeCategoryXL"];

  return v3;
}

+ (double)imageOnlyButtonWidth:(CGRect)a3 buttonTypes:(id)a4
{
  Height = CGRectGetHeight(a3);
  v6 = floorf(Height) + -8.0;
  v7 = [a4 containsObject:&unk_1EFE30820];
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

- (void)_buttonDidTouchUpInInside:(id)a3
{
  v4 = [(_UISwipeActionDynamicButtonView *)self delegate];
  [v4 swipeActionButtonDidTouchUpInside:self];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UISwipeActionDynamicButtonView;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)self setNeedsLayout];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UISwipeActionDynamicButtonView;
  [(UIView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)self setNeedsLayout];
}

- (void)setTitle:(id)a3
{
  title = self->_title;
  v9 = a3;
  v5 = title;
  if (v5 == v9)
  {
  }

  else
  {
    if (v9 && v5)
    {
      v6 = [(NSString *)v9 isEqual:v5];

      if (v6)
      {
        return;
      }
    }

    else
    {
    }

    v7 = [(NSString *)v9 copy];
    v8 = self->_title;
    self->_title = v7;

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setButtonBackgroundColor:(id)a3
{
  if (self->_buttonBackgroundColor != a3)
  {
    objc_storeStrong(&self->_buttonBackgroundColor, a3);

    [(_UISwipeActionDynamicButtonView *)self updateButtonConfiguration];
  }
}

- (void)setButtonImage:(id)a3
{
  if (self->_buttonImage != a3)
  {
    objc_storeStrong(&self->_buttonImage, a3);

    [(_UISwipeActionDynamicButtonView *)self updateButtonConfiguration];
  }
}

- (void)updateButtonConfiguration
{
  v3 = [(_UISwipeActionDynamicButtonView *)self buttonBackgroundColor];
  [(UIButtonConfiguration *)self->_buttonConfiguration setBaseBackgroundColor:v3];

  v4 = [(_UISwipeActionDynamicButtonView *)self buttonImage];
  [(UIButtonConfiguration *)self->_buttonConfiguration setImage:v4];

  [(UIView *)self setNeedsLayout];
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v78.receiver = self;
  v78.super_class = _UISwipeActionDynamicButtonView;
  [(UIView *)&v78 layoutSubviews];
  v3 = [(_UISwipeActionDynamicButtonView *)self button];
  v4 = [(_UISwipeActionDynamicButtonView *)self buttonConfiguration];
  v5 = [(_UISwipeActionDynamicButtonView *)self titleLabel];
  v6 = [(_UISwipeActionDynamicButtonView *)self title];
  [v5 setText:v6];
  v7 = [v4 image];
  v8 = v7 != 0;

  v9 = [v6 length];
  if (!v9)
  {
    v8 = 0;
  }

  if (v7)
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
  [v5 sizeThatFits:{*MEMORY[0x1E695F060], v16}];
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
  v24 = [(_UISwipeActionDynamicButtonView *)self buttonTypes];
  v25 = [v24 count];
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

  [v4 setCornerStyle:4];
  v77 = v24;
  if (v10 || [v24 containsObject:&unk_1EFE30820])
  {
    [v4 setCornerStyle:-1];
    v28 = [v4 background];
    [v28 setCornerRadius:16.0];

    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  if (v9 && (v7 == 0 || !v8))
  {
    [v5 setText:0];
    [v4 setTitle:v6];
    v30 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleFootnote" maximumContentSizeCategory:@"UICTContentSizeCategoryAccessibilityM"];
    v31 = [UIImageSymbolConfiguration configurationWithFont:v30 scale:2];
    [v4 setPreferredSymbolConfigurationForImage:v31];
  }

  if (!v8)
  {
    if ([(_UISwipeActionDynamicButtonView *)self canUseInlineStyle])
    {
      if (v19 > fmin(v23, 50.0) && !v10)
      {
LABEL_34:
        [v4 setTitle:0];
        v39 = +[_UISwipeActionDynamicButtonView preferredSymbolConfigurationForImage];
        [v4 setPreferredSymbolConfigurationForImage:v39];

        [v3 setConfiguration:v4];
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
        [v3 setBounds:{0.0, 0.0, v42, v23}];
        v87.origin.x = 0.0;
        v87.origin.y = 0.0;
        v87.size.width = v12;
        v87.size.height = v14;
        MidX = CGRectGetMidX(v87);
        v88.origin.x = 0.0;
        v88.origin.y = 0.0;
        v88.size.width = v12;
        v88.size.height = v14;
        [v3 setCenter:{MidX, CGRectGetMidY(v88)}];
        [v5 setHidden:1];
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

    [v4 setDefaultContentInsets];
    [v4 setImagePadding:4.0];
    [v3 setConfiguration:v4];
    [v3 sizeThatFits:{v15, v16}];
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

    v58 = [v4 title];
    v59 = 60.0;
    if (v23 == 50.0)
    {
      v59 = 50.0;
    }

    if (v58)
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
    [v3 setBounds:{0.0, 0.0, v61, v23}];
    v94.origin.x = 0.0;
    v94.origin.y = 0.0;
    v94.size.width = v12;
    v94.size.height = v14;
    v62 = CGRectGetMidX(v94);
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v95.size.width = v12;
    v95.size.height = v14;
    [v3 setCenter:{v62, CGRectGetMidY(v95)}];
    [v5 setHidden:1];
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
  [v3 setBounds:{0.0, 0.0, v37, v38}];
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
  [v3 setCenter:{UIPointRoundToScale(v47, v49, v50)}];
  [v5 setBounds:{0.0, 0.0, v20, v74}];
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
  [v5 setCenter:{UIPointRoundToScale(v51, v52, v53)}];
  [v5 setHidden:0];
  [(_UISwipeActionDynamicButtonView *)self uniformWidth];
  v43 = v54;
  v45 = 32.0;
LABEL_67:
  v64 = [(_UISwipeActionDynamicButtonView *)self state];
  v65 = v64 - 3;
  if (v64 - 3 >= 0xFFFFFFFFFFFFFFFELL)
  {
    if (v64 == 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = 2;
    }

    if (v64 == 1)
    {
      v67 = v45;
    }

    else
    {
      v67 = 0.0;
    }

    if (v64 == 1)
    {
      v68 = 0.0;
    }

    else
    {
      v68 = v45;
    }

    [v4 setContentInsets:{0.0, v67, 0.0, v68}];
  }

  else
  {
    [v4 setDefaultContentInsets];
    v66 = 0;
  }

  [v3 setContentHorizontalAlignment:v66];
  [v3 setConfiguration:v4];
  v69 = 1.0;
  if (v65 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v69 = 0.0;
  }

  [v5 setAlpha:v69];
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

- (void)swipeActionWillDisplayMenuForButton:(id)a3
{
  v8 = [(_UISwipeActionDynamicButtonView *)self delegate];
  v5 = [a3 superview];
  v6 = v5;
  if (v5 == self)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      [v8 swipeActionWillDisplayMenuForButton:self];
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