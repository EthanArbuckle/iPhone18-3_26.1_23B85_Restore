@interface UIToolbarTextButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIToolbarTextButton)initWithTitle:(id)a3 pressedTitle:(id)a4 withFont:(id)a5 withBarStyle:(int64_t)a6 withStyle:(int64_t)a7 withTitleWidth:(double)a8 possibleTitles:(id)a9 withToolbarTintColor:(id)a10;
- (void)_UIAppearance_setTitleTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)_setPressed:(BOOL)a3;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation UIToolbarTextButton

- (UIToolbarTextButton)initWithTitle:(id)a3 pressedTitle:(id)a4 withFont:(id)a5 withBarStyle:(int64_t)a6 withStyle:(int64_t)a7 withTitleWidth:(double)a8 possibleTitles:(id)a9 withToolbarTintColor:(id)a10
{
  v18 = a7 == 2;
  self->super._toolbarTintColor = a10;
  self->super._barStyle = a6;
  self->super._style = a7;
  v19 = [(UINavigationButton *)[_UIToolbarNavigationButton alloc] initWithTitle:a3 possibleTitles:a9 style:(2 * v18)];
  v20 = v19;
  if (a5)
  {
    [(UILabel *)[(UIButton *)v19 titleLabel] setFont:a5];
  }

  [(UIView *)self frame];
  v22 = v21;
  v24 = v23;
  [(UINavigationButton *)v20 sizeThatFits:v25, v26];
  [(UINavigationButton *)v20 _setFrame:1 deferLayout:v22, v24, v27, v28];
  if (a8 == 0.0)
  {
    if (a9)
    {
      v29 = [a9 count];
      if (!a4 && !v29)
      {
        goto LABEL_10;
      }
    }

    else if (!a4)
    {
      goto LABEL_10;
    }

    [(UIToolbarButton *)self _sizeView:v20 toPossibleTitles:a9 pressedTitle:a4];
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
    v31->_title = [a3 copy];
    v31->_pressedTitle = [a4 copy];
    v31->_possibleTitles = [a9 copy];
    [(UIView *)v31 addSubview:v31->super._info];
    [(UIToolbarButton *)v31 _adjustPushButtonForMiniBar:0 isChangingBarHeight:0];
    [(UIView *)v31 setNeedsLayout];
  }

  else
  {
  }

  return v31;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v13[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    info = self->super._info;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(UIButton *)info titleLabel];
      v8 = [(UILabel *)v7 text];
      v12 = *off_1E70EC918;
      v13[0] = [(UILabel *)v7 font];
      -[NSString boundingRectWithSize:options:attributes:context:](v8, "boundingRectWithSize:options:attributes:context:", 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1], 0, width, height);
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

- (void)_setPressed:(BOOL)a3
{
  v3 = a3;
  if ([(UIToolbarButton *)self _infoIsButton])
  {
    v6.receiver = self;
    v6.super_class = UIToolbarTextButton;
    [(UIToolbarButton *)&v6 _setPressed:v3];
  }

  else
  {
    pressedTitle = self->_pressedTitle;
    if (pressedTitle)
    {
      if (!v3)
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
        v3 = [(UIView *)self superview];
        if (v3)
        {
          v4 = v3;
          if (([(UIView *)v3 centerTextButtons]& 1) == 0)
          {
            info = self->super._info;
            [(UIButton *)info setNeedsLayout];
            [(UIView *)info layoutIfNeeded];
            v6 = [(UIButton *)info _titleView];
            if (v6)
            {
              v7 = v6;
              [v6 _baselineOffsetFromBottom];
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

- (void)_UIAppearance_setTitleTextAttributes:(id)a3 forState:(unint64_t)a4
{
  appearanceStorage = self->super._appearanceStorage;
  if (a3)
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

  v8 = [a3 _ui_attributesForDictionaryContainingUIStringDrawingKeys];
  v9 = [self->super._appearanceStorage textAttributesForState:a4];
  if (v8 | v9)
  {
    v10 = v9;
    if (([v8 isEqualToDictionary:v9] & 1) == 0)
    {
      [self->super._appearanceStorage setTextAttributes:v8 forState:a4];
      [(UIToolbarButton *)self _adjustToolbarButtonInfo];
      v11 = *off_1E70EC918;
      v12 = [v8 objectForKey:*off_1E70EC918];
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
          v22 = [(UIToolbarButton *)self _isBordered];
          v23 = v19 + 20.0;
          if (v22)
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
          v29 = [(UIView *)self superview];

          [(UIView *)v29 setNeedsLayout];
        }
      }
    }
  }
}

@end