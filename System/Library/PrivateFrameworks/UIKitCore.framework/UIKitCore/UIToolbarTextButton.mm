@interface UIToolbarTextButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)alignmentRectInsets;
- (UIToolbarTextButton)initWithTitle:(id)title pressedTitle:(id)pressedTitle withFont:(id)font withBarStyle:(int64_t)style withStyle:(int64_t)withStyle withTitleWidth:(double)width possibleTitles:(id)titles withToolbarTintColor:(id)self0;
- (void)_UIAppearance_setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)_setPressed:(BOOL)pressed;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation UIToolbarTextButton

- (UIToolbarTextButton)initWithTitle:(id)title pressedTitle:(id)pressedTitle withFont:(id)font withBarStyle:(int64_t)style withStyle:(int64_t)withStyle withTitleWidth:(double)width possibleTitles:(id)titles withToolbarTintColor:(id)self0
{
  v18 = withStyle == 2;
  self->super._toolbarTintColor = color;
  self->super._barStyle = style;
  self->super._style = withStyle;
  v19 = [(UINavigationButton *)[_UIToolbarNavigationButton alloc] initWithTitle:title possibleTitles:titles style:(2 * v18)];
  v20 = v19;
  if (font)
  {
    [(UILabel *)[(UIButton *)v19 titleLabel] setFont:font];
  }

  [(UIView *)self frame];
  v22 = v21;
  v24 = v23;
  [(UINavigationButton *)v20 sizeThatFits:v25, v26];
  [(UINavigationButton *)v20 _setFrame:1 deferLayout:v22, v24, v27, v28];
  if (width == 0.0)
  {
    if (titles)
    {
      v29 = [titles count];
      if (!pressedTitle && !v29)
      {
        goto LABEL_10;
      }
    }

    else if (!pressedTitle)
    {
      goto LABEL_10;
    }

    [(UIToolbarButton *)self _sizeView:v20 toPossibleTitles:titles pressedTitle:pressedTitle];
  }

LABEL_10:
  [(UIView *)v20 frame];
  v33.receiver = self;
  v33.super_class = UIToolbarTextButton;
  v30 = [(UIControl *)&v33 initWithFrame:?];
  v31 = v30;
  if (v30)
  {
    [(UIView *)v30 setOpaque:0];
    v31->super._info = v20;
    v31->_title = [title copy];
    v31->_pressedTitle = [pressedTitle copy];
    v31->_possibleTitles = [titles copy];
    [(UIView *)v31 addSubview:v31->super._info];
    [(UIToolbarButton *)v31 _adjustPushButtonForMiniBar:0 isChangingBarHeight:0];
    [(UIView *)v31 setNeedsLayout];
  }

  else
  {
  }

  return v31;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v13[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    info = self->super._info;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      titleLabel = [(UIButton *)info titleLabel];
      text = [(UILabel *)titleLabel text];
      v12 = *off_1E70EC918;
      v13[0] = [(UILabel *)titleLabel font];
      -[NSString boundingRectWithSize:options:attributes:context:](text, "boundingRectWithSize:options:attributes:context:", 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1], 0, width, height);
      width = v9;
    }
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIToolbarTextButton;
  [(UIToolbarButton *)&v3 dealloc];
}

- (void)_setPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  if ([(UIToolbarButton *)self _infoIsButton])
  {
    v6.receiver = self;
    v6.super_class = UIToolbarTextButton;
    [(UIToolbarButton *)&v6 _setPressed:pressedCopy];
  }

  else
  {
    pressedTitle = self->_pressedTitle;
    if (pressedTitle)
    {
      if (!pressedCopy)
      {
        pressedTitle = self->_title;
      }

      [(_UIToolbarNavigationButton *)self->super._info setText:pressedTitle];
      [(UIView *)self->super._info sizeToFit];

      [(UIView *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = UIToolbarTextButton;
  [(UIToolbarButton *)&v28 layoutSubviews];
  if (![(UIToolbarButton *)self _isBorderedOtherThanAccessibility])
  {
    if ([(UIView *)self superview])
    {
      [(UIView *)self superview];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        superview = [(UIView *)self superview];
        if (superview)
        {
          v4 = superview;
          if (([(UIView *)superview centerTextButtons]& 1) == 0)
          {
            info = self->super._info;
            [(UIButton *)info setNeedsLayout];
            [(UIView *)info layoutIfNeeded];
            _titleView = [(UIButton *)info _titleView];
            if (_titleView)
            {
              v7 = _titleView;
              [_titleView _baselineOffsetFromBottom];
              v9 = v8;
              [v7 frame];
              [(UIView *)info convertRect:v4 toView:?];
              v11 = v10;
              v13 = v12;
              v15 = v14;
              v17 = v16;
              [(UIView *)v4 bounds];
              MaxY = CGRectGetMaxY(v29);
              v30.origin.x = v11;
              v30.origin.y = v13;
              v30.size.width = v15;
              v30.size.height = v17;
              v19 = MaxY - (CGRectGetMaxY(v30) - v9);
              if ([(UIView *)v4 isMinibar])
              {
                v20 = 11.0;
              }

              else
              {
                v20 = 16.0;
              }

              if (v20 != v19)
              {
                [(UIView *)info frame];
                v22 = v21;
                v24 = v23;
                v26 = v25;
                UIRoundToViewScale(self);
                [(UIButton *)info setFrame:v22, v27, v24, v26];
              }
            }
          }
        }
      }
    }
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(UIButton *)self->super._info alignmentRectInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_UIAppearance_setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  appearanceStorage = self->super._appearanceStorage;
  if (attributes)
  {
    if (!appearanceStorage)
    {
      self->super._appearanceStorage = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    }
  }

  else if (!appearanceStorage)
  {
    return;
  }

  _ui_attributesForDictionaryContainingUIStringDrawingKeys = [attributes _ui_attributesForDictionaryContainingUIStringDrawingKeys];
  v9 = [self->super._appearanceStorage textAttributesForState:state];
  if (_ui_attributesForDictionaryContainingUIStringDrawingKeys | v9)
  {
    v10 = v9;
    if (([_ui_attributesForDictionaryContainingUIStringDrawingKeys isEqualToDictionary:v9] & 1) == 0)
    {
      [self->super._appearanceStorage setTextAttributes:_ui_attributesForDictionaryContainingUIStringDrawingKeys forState:state];
      [(UIToolbarButton *)self _adjustToolbarButtonInfo];
      v11 = *off_1E70EC918;
      v12 = [_ui_attributesForDictionaryContainingUIStringDrawingKeys objectForKey:*off_1E70EC918];
      v13 = [v10 objectForKey:v11];
      if (v12 | v13)
      {
        if (([v12 isEqual:v13] & 1) == 0)
        {
          [(UIView *)self->super._info sizeToFit];
          if (*&self->_pressedTitle != 0)
          {
            [UIToolbarButton _sizeView:"_sizeView:toPossibleTitles:pressedTitle:" toPossibleTitles:self->super._info pressedTitle:?];
          }

          [(UIView *)self->super._info frame];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          _isBordered = [(UIToolbarButton *)self _isBordered];
          v23 = v19 + 20.0;
          if (_isBordered)
          {
            v24 = 30.0;
          }

          else
          {
            v23 = v19;
            v24 = v21;
          }

          maximumWidth = self->super._maximumWidth;
          v26 = fmax(self->super._minimumWidth, v23);
          v27 = fmin(maximumWidth, v26);
          if (maximumWidth <= 0.0)
          {
            v28 = v26;
          }

          else
          {
            v28 = v27;
          }

          [(UIButton *)self->super._info setFrame:v15, v17, v28, v24];
          superview = [(UIView *)self superview];

          [(UIView *)superview setNeedsLayout];
        }
      }
    }
  }
}

@end