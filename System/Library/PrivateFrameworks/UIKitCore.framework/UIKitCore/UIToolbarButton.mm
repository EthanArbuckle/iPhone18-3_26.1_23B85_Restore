@interface UIToolbarButton
+ (id)_defaultLabelColor;
- (BOOL)_createdByBarButtonItem;
- (BOOL)_infoIsButton;
- (BOOL)_isBordered;
- (BOOL)_showsAccessibilityBackgroundWhenEnabled;
- (BOOL)_wantsAccessibilityButtonShapes;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_buttonBarHitRect;
- (CGSize)_defaultTitleShadowOffsetForState:(unint64_t)state;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)_tintColor;
- (UIEdgeInsets)_additionalSelectionInsets;
- (UIEdgeInsets)alignmentRectInsets;
- (UIOffset)_titlePositionAdjustmentForBarMetrics:(int64_t)metrics;
- (double)_backgroundVerticalPositionAdjustmentForBarMetrics:(int64_t)metrics;
- (double)_paddingForLeft:(BOOL)left;
- (double)initWithImage:(double)image pressedImage:(double)pressedImage label:(double)label labelHeight:(double)height withBarStyle:(uint64_t)style withStyle:(void *)withStyle withInsets:(void *)insets possibleTitles:(uint64_t)self0 possibleSystemItems:(uint64_t)self1 withToolbarTintColor:(uint64_t)self2 bezel:(uint64_t)self3 imageInsets:(double)self4 glowInsets:(double)self5 landscape:(double)self6;
- (id)_backgroundImageForState:(unint64_t)state barMetrics:(int64_t)metrics;
- (id)_customOrAccessibilityBackgroundImageForState:(unint64_t)state style:(int64_t)style isMini:(BOOL)mini;
- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_UIAppearance_setBackgroundImage:(id)image forState:(unint64_t)state style:(int64_t)style barMetrics:(int64_t)metrics;
- (void)_UIAppearance_setBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
- (void)_UIAppearance_setTintColor:(id)color;
- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics;
- (void)_adjustPushButtonForMiniBar:(BOOL)bar isChangingBarHeight:(BOOL)height;
- (void)_adjustToolbarButtonInfoTintColorHasChanged:(BOOL)changed;
- (void)_applyBarButtonAppearanceStorage:(id)storage withTaggedSelectors:(id)selectors;
- (void)_setAdditionalSelectionInsets:(UIEdgeInsets)insets;
- (void)_setBarHeight:(float)height;
- (void)_setCreatedByBarButtonItem:(BOOL)item;
- (void)_setInTopBar:(BOOL)bar;
- (void)_setInfoExtremityWidth:(float)width isMin:(BOOL)min;
- (void)_setInfoFlexibleWidth:(BOOL)width;
- (void)_setInfoWidth:(float)width;
- (void)_setLastHighlightSuccessful:(BOOL)successful;
- (void)_setPressed:(BOOL)pressed;
- (void)_setTouchHasHighlighted:(BOOL)highlighted;
- (void)_setWantsBlendModeForAccessibilityBackgrounds:(BOOL)backgrounds;
- (void)_sizeView:(id)view toPossibleTitles:(id)titles pressedTitle:(id)title;
- (void)_updateInfoTextColorsForState:(unint64_t)state;
- (void)_updateShadowOffsetWithAttributes:(id)attributes forState:(unint64_t)state;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBarStyle:(int64_t)style;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setToolbarTintColor:(id)color;
- (void)setUseSelectedImage:(BOOL)image;
@end

@implementation UIToolbarButton

- (void)_setInTopBar:(BOOL)bar
{
  if (self->_isInTopBar != bar)
  {
    self->_isInTopBar = bar;
    [(UIToolbarButton *)self layoutSubviews];
  }
}

+ (id)_defaultLabelColor
{
  result = _defaultLabelColor___labelColor;
  if (!_defaultLabelColor___labelColor)
  {
    result = [[UIColor alloc] initWithWhite:0.6 alpha:1.0];
    _defaultLabelColor___labelColor = result;
  }

  return result;
}

- (double)initWithImage:(double)image pressedImage:(double)pressedImage label:(double)label labelHeight:(double)height withBarStyle:(uint64_t)style withStyle:(void *)withStyle withInsets:(void *)insets possibleTitles:(uint64_t)self0 possibleSystemItems:(uint64_t)self1 withToolbarTintColor:(uint64_t)self2 bezel:(uint64_t)self3 imageInsets:(double)self4 glowInsets:(double)self5 landscape:(double)self6
{
  v79 = *MEMORY[0x1E69E9840];
  if (withStyle)
  {
    [withStyle size];
    v37 = v36;
    v39 = v38;
  }

  else
  {
    v37 = *MEMORY[0x1E695F060];
    v39 = *(MEMORY[0x1E695F060] + 8);
  }

  v40 = MEMORY[0x1E695F058];
  v41 = MEMORY[0x1E695EFF8];
  pressedImageCopy = pressedImage;
  heightCopy = height;
  labelCopy = label;
  if (insets)
  {
    [insets size];
    if (v42 > v37)
    {
      v37 = v42;
    }

    if (v43 > v39)
    {
      v39 = v43;
    }
  }

  v44 = *(v40 + 16);
  v46 = *v41;
  v45 = v41[1];
  if (a17)
  {
    v47 = v41[1];
    if ([a17 count])
    {
      titlesCopy = titles;
      v48 = *MEMORY[0x1E695F060];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v49 = [a17 countByEnumeratingWithState:&v74 objects:v78 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v75;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v75 != v51)
            {
              objc_enumerationMutation(a17);
            }

            integerValue = [*(*(&v74 + 1) + 8 * i) integerValue];
            v72 = 0;
            v73 = 0;
            LOWORD(v66) = a28;
            [UIBarButtonItem _getSystemItemStyle:0 title:0 image:&v73 selectedImage:&v72 action:0 forBarStyle:items landscape:v66 alwaysBordered:integerValue usingSystemItem:0 usingItemStyle:?];
            [v73 size];
            if (v48 < v54)
            {
              [v73 size];
              v48 = v55;
            }

            if (v72)
            {
              [v72 size];
              if (v48 < v56)
              {
                [v72 size];
                v48 = v57;
              }
            }
          }

          v50 = [a17 countByEnumeratingWithState:&v74 objects:v78 count:16];
        }

        while (v50);
      }

      if (v37 < v48)
      {
        v37 = v48;
      }

      titles = titlesCopy;
    }

    v45 = v47;
  }

  if (v44 + 2.0 <= v37)
  {
    v58 = v37;
  }

  else
  {
    v58 = v44 + 2.0;
  }

  v71.receiver = self;
  v71.super_class = UIToolbarButton;
  v59 = objc_msgSendSuper2(&v71, sel_initWithFrame_, v46, v45, v58, v39);
  *(v59 + 77) = a18;
  *(v59 + 65) = a24;
  *(v59 + 66) = a25;
  *(v59 + 67) = a26;
  *(v59 + 68) = a27;
  *(v59 + 63) = items;
  v59[64] = 0.0;
  if (withStyle)
  {
    *(v59 + 61) = [(UINavigationButton *)[_UIToolbarNavigationButton alloc] initWithImage:withStyle width:2 * (color == 2) style:1 applyBezel:*(v59 + 63) forBarStyle:0 buttonItemStyle:0.0];
    v61 = pressedImageCopy;
    v60 = heightCopy;
    imageCopy2 = image;
    v62 = labelCopy;
  }

  else
  {
    v61 = pressedImageCopy;
    v60 = heightCopy;
    imageCopy2 = image;
    v62 = labelCopy;
    if (titles)
    {
      v59[62] = 0.0;
      v64 = 4.0;
      if (a2 > 0.0)
      {
        v64 = a2;
      }

      v59[72] = v64;
    }
  }

  v59[73] = imageCopy2 + a20;
  v59[74] = v61 + a21;
  v59[75] = v62 + a22;
  v59[76] = v60 + a23;
  [v59 setOpaque:0];
  [v59 addSubview:*(v59 + 61)];
  [v59 _adjustPushButtonForMiniBar:0 isChangingBarHeight:0];
  [v59 addSubview:*(v59 + 62)];
  [v59 setNeedsLayout];
  return v59;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIToolbarButton;
  [(UIView *)&v3 dealloc];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (dyld_program_sdk_at_least())
  {
    info = self->_info;

    return [(UIButton *)info gestureRecognizerShouldBegin:begin];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIToolbarButton;
    return [(UIView *)&v7 gestureRecognizerShouldBegin:begin];
  }
}

- (void)_setWantsBlendModeForAccessibilityBackgrounds:(BOOL)backgrounds
{
  backgroundsCopy = backgrounds;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    info = self->_info;

    [(UINavigationButton *)info _setWantsBlendModeForAccessibilityBackgrounds:backgroundsCopy];
  }
}

- (BOOL)_showsAccessibilityBackgroundWhenEnabled
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  info = self->_info;

  return [(UINavigationButton *)info _showsAccessibilityBackgroundWhenEnabled];
}

- (BOOL)_wantsAccessibilityButtonShapes
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  info = self->_info;

  return [(UINavigationButton *)info _wantsAccessibilityButtonShapes];
}

- (void)_setCreatedByBarButtonItem:(BOOL)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    info = self->_info;

    [(UINavigationButton *)info _setCreatedByBarButtonItem:itemCopy];
  }
}

- (BOOL)_createdByBarButtonItem
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  info = self->_info;

  return [(UINavigationButton *)info _createdByBarButtonItem];
}

- (void)_sizeView:(id)view toPossibleTitles:(id)titles pressedTitle:(id)title
{
  v28 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  [view frame];
  v10 = v9;
  if (isKindOfClass)
  {
    text = [view titleForState:0];
  }

  else
  {
    text = [view text];
  }

  v12 = v10;
  v13 = text;
  if (title && ([titles containsObject:title] & 1) == 0)
  {
    if (isKindOfClass)
    {
      [view setTitle:title forState:0];
    }

    else
    {
      [view setText:title];
    }

    [view sizeToFit];
    [view frame];
    v15 = v14;
    if (v15 > v12)
    {
      v12 = v14;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [titles countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(titles);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        if (isKindOfClass)
        {
          [view setTitle:v20 forState:0];
        }

        else
        {
          [view setText:v20];
        }

        [view sizeToFit];
        [view frame];
        v22 = v21;
        if (v12 < v22)
        {
          v12 = v21;
        }
      }

      v17 = [titles countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  [view frame];
  [view setFrame:?];
  if (isKindOfClass)
  {
    [view setTitle:v13 forState:0];
  }

  else
  {
    [view setText:v13];
  }
}

- (CGRect)_buttonBarHitRect
{
  x = self->_hitRect.origin.x;
  y = self->_hitRect.origin.y;
  width = self->_hitRect.size.width;
  height = self->_hitRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_setPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  if ([(UIToolbarButton *)self _infoIsButton])
  {
    self->_onState = pressedCopy;
    [(UINavigationButton *)self->_info setHighlighted:pressedCopy];
  }

  label = self->_label;
  if (pressedCopy)
  {
    _defaultLabelColor = +[UIColor whiteColor];
  }

  else
  {
    _defaultLabelColor = [objc_opt_class() _defaultLabelColor];
  }

  [(UILabel *)label setTextColor:_defaultLabelColor];

  [(UIView *)self setNeedsLayout];
}

- (void)setUseSelectedImage:(BOOL)image
{
  imageCopy = image;
  if ([(UIToolbarButton *)self _infoIsButton])
  {
    info = self->_info;

    [(UIButton *)info setSelected:imageCopy];
  }

  else if (imageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

    [currentHandler handleFailureInMethod:a2 object:self file:@"UIToolbarButton.m" lineNumber:313 description:@"Selection not supported on toolbar items not backed by a UIButton subclass."];
  }
}

- (void)_setAdditionalSelectionInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  right = insets.right;
  top = insets.top;
  left = insets.left;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4.f64[0] = bottom;
    v4.f64[1] = right;
    v5.f64[0] = top;
    v5.f64[1] = left;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v5, *&self->__additionalSelectionInsets.top), vceqq_f64(v4, *&self->__additionalSelectionInsets.bottom)))) & 1) == 0)
    {
      [(UINavigationButton *)self->_info _setAdditionalSelectionInsets:top, left, bottom, right];
      info = self->_info;

      [(UIButton *)info setNeedsLayout];
    }
  }
}

- (void)_setInfoWidth:(float)width
{
  widthCopy = width;
  self->_minimumWidth = width;
  self->_maximumWidth = width;
  [(UIView *)self->_info frame];
  [(UIButton *)self->_info setFrame:?];
  [(UIView *)self frame];
  if (v5 < widthCopy)
  {
    [(UIView *)self frame];

    [(UIView *)self setFrame:?];
  }
}

- (void)_setInfoExtremityWidth:(float)width isMin:(BOOL)min
{
  minCopy = min;
  widthCopy = width;
  if (min)
  {
    self->_minimumWidth = widthCopy;
    maximumWidth = self->_maximumWidth;
  }

  else
  {
    self->_maximumWidth = widthCopy;
    maximumWidth = width;
  }

  if (maximumWidth > 0.0)
  {
    minimumWidth = self->_minimumWidth;
    if (maximumWidth < minimumWidth)
    {
      self->_maximumWidth = minimumWidth;
    }
  }

  [(UIView *)self->_info frame];
  if (v9 < widthCopy != minCopy)
  {
    widthCopy = v9;
  }

  [(UIButton *)self->_info setFrame:?];
  [(UIView *)self frame];
  if (widthCopy != v10)
  {
    [(UIView *)self frame];

    [(UIView *)self setFrame:?];
  }
}

- (void)_setInfoFlexibleWidth:(BOOL)width
{
  widthCopy = width;
  autoresizingMask = [(UIView *)self->_info autoresizingMask];
  if (widthCopy)
  {
    v6 = autoresizingMask & 0xFFFFFFFD | 2;
  }

  else
  {
    v6 = autoresizingMask & 0xFFFFFFFD;
  }

  info = self->_info;

  [(UIView *)info setAutoresizingMask:v6];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UIControl *)self isEnabled]!= enabled)
  {
    v10.receiver = self;
    v10.super_class = UIToolbarButton;
    [(UIControl *)&v10 setEnabled:enabledCopy];
    if ([(UIToolbarButton *)self _infoIsButton])
    {
      [(UINavigationButton *)self->_info setEnabled:enabledCopy];
      v5 = [self->_appearanceStorage textAttributesForState:0];
      if (v5)
      {
        v6 = v5;
        isHighlighted = [(UIControl *)self isHighlighted];
        v8 = 2;
        if (enabledCopy)
        {
          v8 = 0;
        }

        if (isHighlighted)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        if (isHighlighted || !enabledCopy)
        {
          v6 = [self->_appearanceStorage textAttributesForState:v9];
        }

        [(UIToolbarButton *)self _updateShadowOffsetWithAttributes:v6 forState:v9];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [self->_appearanceStorage textAttributesForState:2])
      {
        [(UIToolbarButton *)self _adjustToolbarButtonInfo];
      }
    }
  }
}

- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v10.receiver = self;
  v10.super_class = UIToolbarButton;
  if ([(UIControl *)&v10 pointMostlyInside:event withEvent:?])
  {
    return 1;
  }

  p_hitRect = &self->_hitRect;
  v11.x = x;
  v11.y = y;
  if (CGRectContainsPoint(self->_hitRect, v11))
  {
    return 1;
  }

  _barPosition = [[(UIView *)self superview] _barPosition];
  result = 0;
  if (_barPosition != 1 && _barPosition != 4)
  {
    v12.origin.x = p_hitRect->origin.x;
    v12.origin.y = self->_hitRect.origin.y;
    v12.size.width = self->_hitRect.size.width;
    v12.size.height = self->_hitRect.size.height;
    if (x >= CGRectGetMinX(v12) && (v13.origin.x = p_hitRect->origin.x, v13.origin.y = self->_hitRect.origin.y, v13.size.width = self->_hitRect.size.width, v13.size.height = self->_hitRect.size.height, x <= CGRectGetMaxX(v13)))
    {
      v14.origin.x = p_hitRect->origin.x;
      v14.origin.y = self->_hitRect.origin.y;
      v14.size.width = self->_hitRect.size.width;
      v14.size.height = self->_hitRect.size.height;
      return y <= CGRectGetMaxY(v14);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event
{
  v7.receiver = self;
  v7.super_class = UIToolbarButton;
  v5 = [(UIControl *)&v7 hitTest:event forEvent:test.x, test.y];
  if ([(UIToolbarButton *)self _infoIsButton]&& v5 == self->_info)
  {
    return self;
  }

  return v5;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = UIToolbarButton;
  v5 = [(UIControl *)&v7 hitTest:event withEvent:test.x, test.y];
  if ([(UIToolbarButton *)self _infoIsButton]&& v5 == self->_info)
  {
    return self;
  }

  return v5;
}

- (void)_setLastHighlightSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  v5.receiver = self;
  v5.super_class = UIToolbarButton;
  [(UIControl *)&v5 _setLastHighlightSuccessful:?];
  if ([(UIToolbarButton *)self _infoIsButton])
  {
    [(UIControl *)self->_info _setLastHighlightSuccessful:successfulCopy];
  }
}

- (void)_setTouchHasHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = UIToolbarButton;
  [(UIControl *)&v5 _setTouchHasHighlighted:?];
  if ([(UIToolbarButton *)self _infoIsButton])
  {
    [(UIControl *)self->_info _setTouchHasHighlighted:highlightedCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v37.receiver = self;
  v37.super_class = UIToolbarButton;
  [(UIControl *)&v37 setHighlighted:?];
  if ([(UIToolbarButton *)self _infoIsButton])
  {
    [(UINavigationButton *)self->_info setHighlighted:self->_onState | highlightedCopy];
    v5 = [self->_appearanceStorage textAttributesForState:0];
    if (v5)
    {
      v6 = v5;
      if (highlightedCopy)
      {
        v6 = [self->_appearanceStorage textAttributesForState:1];
      }

      [(UIToolbarButton *)self _updateShadowOffsetWithAttributes:v6 forState:highlightedCopy];
    }
  }

  else if (highlightedCopy)
  {
    if (!__backgroundGlow)
    {
      __backgroundGlow = [[UIImageView alloc] initWithImage:_UIImageWithName(@"UIButtonBarPressedIndicator.png")];
      [__backgroundGlow setEnabled:0];
      [__backgroundGlow setOpaque:0];
    }

    if ([(UIView *)self _containerStyle]== 1)
    {
      window = [(UIView *)self window];
    }

    else
    {
      window = [(UIView *)self superview];
    }

    [(UIView *)window addSubview:__backgroundGlow];
    [(UIView *)self frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [__backgroundGlow frame];
    top = self->_infoInsets.top;
    left = self->_infoInsets.left;
    v20 = left + v9 - round((v16 - v13) * 0.5);
    v21 = top + v11 - round((v17 - v15) * 0.5);
    v22 = v16 - (left + self->_infoInsets.right);
    v23 = v17 - (top + self->_infoInsets.bottom);
    v24 = self->_glowAdjust.top;
    v25 = self->_glowAdjust.left;
    v26 = v20 + v25;
    v27 = v21 + v24;
    v28 = v22 - (v25 + self->_glowAdjust.right);
    v29 = v23 - (v24 + self->_glowAdjust.bottom);
    if ([(UIView *)self _containerStyle]== 1)
    {
      [[(UIView *)self window] convertRect:[(UIView *)self superview] fromView:v26, v27, v28, v29];
      v26 = v30;
      v27 = v31;
      v28 = v32;
      v29 = v33;
    }

    [__backgroundGlow setFrame:{v26, v27, v28, v29}];
    [__backgroundGlow setAlpha:1.0];
    [[(UIView *)self superview] bringSubviewToFront:self];
    if ([(UIView *)self _containerStyle]== 1)
    {
      window2 = [(UIView *)self window];
      [(UIView *)window2 addSubview:__backgroundGlow];
      window3 = [(UIView *)self window];
      [(UIView *)window3 bringSubviewToFront:__backgroundGlow];
    }

    else
    {
      superview = [(UIView *)self superview];
      [(UIView *)superview _addSubview:__backgroundGlow positioned:-2 relativeTo:self];
    }
  }

  else if ([(UIControl *)self isTouchInside])
  {
    [UIView animateWithDuration:&__block_literal_global_61 animations:0 completion:0.25];
  }

  else
  {
    [__backgroundGlow setAlpha:0.0];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UINavigationButton *)self->_info sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(UIButton *)self->_info alignmentRectInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(UIToolbarButton *)self _isBordered])
  {
    v11 = v4;
    v12 = v6;
    v13 = v8;
    v14 = v10;
  }

  else
  {
    v15 = [(UIButton *)self->_info imageForState:0];

    [(UIImage *)v15 alignmentRectInsets];
  }

  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (id)_customOrAccessibilityBackgroundImageForState:(unint64_t)state style:(int64_t)style isMini:(BOOL)mini
{
  miniCopy = mini;
  _wantsAccessibilityButtonShapes = [(UIToolbarButton *)self _wantsAccessibilityButtonShapes];
  if (state || !_wantsAccessibilityButtonShapes)
  {
    appearanceStorage = self->_appearanceStorage;

    return [appearanceStorage backgroundImageForState:state style:style isMini:miniCopy];
  }

  else
  {

    return _UINavigationButtonAccessibilityBackground(0, miniCopy);
  }
}

- (void)_adjustPushButtonForMiniBar:(BOOL)bar isChangingBarHeight:(BOOL)height
{
  barCopy = bar;
  if ([self->_appearanceStorage anyBackgroundImage])
  {
    _wantsAccessibilityButtonShapes = 1;
  }

  else
  {
    _wantsAccessibilityButtonShapes = [(UIToolbarButton *)self _wantsAccessibilityButtonShapes];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !_wantsAccessibilityButtonShapes)
  {
    return;
  }

  info = self->_info;
  v9 = [(UIToolbarButton *)self _customOrAccessibilityBackgroundImageForState:0 style:self->_style isMini:barCopy];
  v10 = v9;
  if (barCopy)
  {
    if (v9)
    {
      v11 = 1;
      goto LABEL_12;
    }

    v10 = [(UIToolbarButton *)self _customOrAccessibilityBackgroundImageForState:0 style:self->_style isMini:0];
  }

  v11 = 0;
LABEL_12:
  _tintColor = [(UIToolbarButton *)self _tintColor];
  style = self->_style;
  if (style != 7 && v10 != 0)
  {
    [(UIButton *)info setBackgroundImage:v10 forState:0];
    v16 = [(UIToolbarButton *)self _customOrAccessibilityBackgroundImageForState:1 style:self->_style isMini:barCopy];
    v17 = v16;
    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = !barCopy;
    }

    if (((v11 | v18) & 1) == 0)
    {
      v17 = [(UIToolbarButton *)self _customOrAccessibilityBackgroundImageForState:1 style:self->_style isMini:0];
    }

    [(UIButton *)info setBackgroundImage:v17 forState:1];
    v19 = [(UIToolbarButton *)self _customOrAccessibilityBackgroundImageForState:4 style:self->_style isMini:barCopy];
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = !barCopy;
    }

    if (((v11 | v20) & 1) == 0)
    {
      v19 = [(UIToolbarButton *)self _customOrAccessibilityBackgroundImageForState:4 style:self->_style isMini:0];
    }

    [(UIButton *)info setBackgroundImage:v19 forState:4];
    v21 = [(UIToolbarButton *)self _customOrAccessibilityBackgroundImageForState:2 style:self->_style isMini:barCopy];
    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = !barCopy;
    }

    if (((v11 | v22) & 1) == 0)
    {
      v21 = [(UIToolbarButton *)self _customOrAccessibilityBackgroundImageForState:2 style:self->_style isMini:0];
    }

    [(UIButton *)info setBackgroundImage:v21 forState:2];
    [(UINavigationButton *)info setControlSize:barCopy];
    [(UIView *)info frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(UINavigationButton *)info sizeThatFits:10000.0, 10000.0];
    if (self->_minimumWidth >= minimumWidth)
    {
      minimumWidth = self->_minimumWidth;
    }

    if (minimumWidth < v28)
    {
      minimumWidth = v28;
    }

    maximumWidth = self->_maximumWidth;
    if (maximumWidth >= minimumWidth || maximumWidth <= 0.0)
    {
      maximumWidth = minimumWidth;
    }

    if (v32 >= v30)
    {
      v35 = v32;
    }

    else
    {
      v35 = v30;
    }

    [(UIButton *)info setFrame:v24, v26, maximumWidth, v35];
    goto LABEL_55;
  }

  if (style == 7 || _tintColor == 0)
  {
    [(UIButton *)info setBackgroundImage:0 forState:0];
    [(UIButton *)info setBackgroundImage:0 forState:1];
    if (self->_style != 2)
    {
      goto LABEL_55;
    }
  }

  else
  {
    [(UIButton *)info setBackgroundImage:0 forState:0];
    [(UIButton *)info setBackgroundImage:0 forState:1];
    if (style != 2)
    {
      goto LABEL_55;
    }
  }

  [(UIButton *)info setBackgroundImage:0 forState:2];
LABEL_55:
  if (!height)
  {
    [(UIButton *)info setTitleColor:0 forState:2];
  }

  if (!v10 || [(UIButton *)info currentTitle]|| [(UIButton *)info currentImage])
  {
    [(UIView *)info frame];
    [(UIButton *)info setFrame:?];
  }

  [(UIView *)info sizeToFit];

  [(UIView *)info layoutBelowIfNeeded];
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v69 = CGRectInset(v68, 0.0, 0.0);
  x = v69.origin.x;
  y = v69.origin.y;
  width = v69.size.width;
  height = v69.size.height;
  label = self->_label;
  if (label)
  {
    [(UIView *)label frame];
    [(UILabel *)self->_label setFrame:round((width - v8) * 0.5), y + height - v9];
    height = height - self->_labelHeight;
  }

  if (self->_info)
  {
    objc_opt_class();
    v10 = (objc_opt_isKindOfClass() & 1) != 0 && [(UIButton *)self->_info imageForState:0]!= 0;
    if ([(UIView *)self window])
    {
      _showsAccessibilityBackgroundWhenEnabled = [(UIToolbarButton *)self _showsAccessibilityBackgroundWhenEnabled];
      if (v10 || _showsAccessibilityBackgroundWhenEnabled)
      {
        v12 = _showsAccessibilityBackgroundWhenEnabled;
        -[_UIToolbarNavigationButton updateImageIfNeededWithTintColor:](self->_info, "updateImageIfNeededWithTintColor:", [self->_appearanceStorage tintColor]);
        if (v12)
        {
          [(UIView *)self->_info sizeToFit];
        }
      }
    }

    [(UIView *)self->_info frame];
    v14 = v13;
    v16 = v15;
    rect = v17;
    v19 = v18;
    +[UIToolbar defaultHeight];
    v21 = v20;
    if ([(UIToolbarButton *)self _wantsAccessibilityButtonShapes]|| v19 >= 30.0)
    {
      v70.origin.x = v14;
      v70.origin.y = v16;
      v70.size.width = rect;
      v70.size.height = v19;
      v22 = CGRectGetHeight(v70) <= 24.0;
    }

    else
    {
      v22 = 1;
    }

    [(UIView *)self superview];
    if (objc_opt_respondsToSelector())
    {
      v23 = height;
      if (([[(UIView *)self superview] _hidesShadow]& 1) == 0)
      {
        superview = [(UIView *)self superview];
        [-[UIView _screen](self "_screen")];
        v26 = 1.0 / v25;
        _barPosition = [(UIView *)superview _barPosition];
        if (_barPosition == 4 || _barPosition == 1)
        {
          y = y - v26;
        }

        v23 = height + v26;
      }
    }

    else
    {
      v23 = height;
    }

    _isBordered = [(UIToolbarButton *)self _isBordered];
    if (_isBordered && v22 != height < v21)
    {
      [(UIToolbarButton *)self _adjustPushButtonForMiniBar:height < v21 isChangingBarHeight:1];
      [(UIView *)self->_info frame];
      rect = v30;
      v19 = v31;
    }

    v65 = v21;
    UIRoundToViewScale(self);
    v33 = v32;
    if (_isBordered || !v10)
    {
      v71.origin.x = x;
      v71.origin.y = y;
      v71.size.width = width;
      v71.size.height = v23;
      CGRectGetMinY(v71);
      UIFloorToViewScale(self);
      v35 = v34;
    }

    else
    {
      v62 = v32;
      v63 = y;
      v64 = width;
      if (![(CALayer *)[(UIView *)self->_info layer] needsLayout]&& ![(UIButton *)self->_info _imageView]&& [(UIButton *)self->_info imageForState:0])
      {
        [(UIButton *)self->_info setNeedsLayout];
      }

      [(UIView *)self->_info layoutIfNeeded];
      [-[UIButton _imageView](self->_info "_imageView")];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v72.origin.x = x;
      v72.origin.y = v63;
      v72.size.width = v64;
      v72.size.height = v23;
      CGRectGetMinY(v72);
      UIFloorToViewScale(self);
      v45 = v44;
      v73.origin.x = v37;
      v73.origin.y = v39;
      v73.size.width = v41;
      v73.size.height = v43;
      v35 = v45 - CGRectGetMinY(v73);
      v33 = v62;
    }

    top = self->_infoInsets.top;
    left = self->_infoInsets.left;
    v48 = left + self->_infoInsets.right;
    v49 = top + self->_infoInsets.bottom;
    appearanceStorage = self->_appearanceStorage;
    if (height >= v65)
    {
      titlePositionOffset = [appearanceStorage titlePositionOffset];
    }

    else
    {
      titlePositionOffset = [appearanceStorage miniTitlePositionOffset];
    }

    v52 = titlePositionOffset;
    v53 = v33 + left;
    v54 = v35 + top;
    if (_isBordered)
    {
      v55 = height < v65;
      v56 = 3.0;
      if (self->_isInTopBar)
      {
        v56 = 2.0;
      }

      v57 = v54 + v56;
      [self->_appearanceStorage backgroundVerticalAdjustmentForBarMetrics:v55];
      v54 = v58 + v57;
      if (v52)
      {
        [v52 UIOffsetValue];
        [(UIButton *)self->_info setTitleEdgeInsets:v60, v59, -v60, -v59];
      }
    }

    info = self->_info;

    [(UIButton *)info setFrame:v53, v54, rect - v48, v19 - v49];
  }
}

- (BOOL)_isBordered
{
  if ([(UIToolbarButton *)self _wantsAccessibilityButtonShapes])
  {
    return 1;
  }

  return [(UIToolbarButton *)self _isBorderedOtherThanAccessibility];
}

- (BOOL)_infoIsButton
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  return [(UIToolbarButton *)self _isBordered];
}

- (double)_paddingForLeft:(BOOL)left
{
  v5 = 0.0;
  if ([(UIToolbarButton *)self _shouldApplyPadding])
  {
    [(UIView *)self layoutIfNeeded];
    [(UIView *)self->_info frame];
    v5 = v7;
    if (!left)
    {
      v8 = v6;
      [(UIView *)self bounds];
      return v9 - v5 - v8;
    }
  }

  return v5;
}

- (void)_setBarHeight:(float)height
{
  self->_barHeight = 1;
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (void)setToolbarTintColor:(id)color
{
  toolbarTintColor = self->_toolbarTintColor;
  if (toolbarTintColor != color)
  {

    self->_toolbarTintColor = color;

    [(UIToolbarButton *)self _adjustToolbarButtonInfo];
  }
}

- (void)setBarStyle:(int64_t)style
{
  if (self->_barStyle != style)
  {
    self->_barStyle = style;
    [(UIToolbarButton *)self _adjustToolbarButtonInfo];
  }
}

- (CGSize)_defaultTitleShadowOffsetForState:(unint64_t)state
{
  v3 = 0.0;
  v4 = -1.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateShadowOffsetWithAttributes:(id)attributes forState:(unint64_t)state
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  info = self->_info;
  if ((isKindOfClass & 1) != 0 || !info)
  {
    v9 = 0;
  }

  else
  {
    if ([(UIControl *)self isEnabled])
    {
      state = 0;
    }

    else
    {
      state = 2;
    }

    v9 = info;
    info = 0;
  }

  v10 = [attributes objectForKey:*off_1E70EC9B0];
  if (v10)
  {
    [v10 shadowOffset];
  }

  else
  {
    [(UIToolbarButton *)self _defaultTitleShadowOffsetForState:state];
  }

  v13 = v11;
  v14 = v12;
  [(UILabel *)[(UIButton *)info titleLabel] setShadowOffset:v11, v12];

  [(_UIToolbarNavigationButton *)v9 setShadowOffset:v13, v14];
}

- (void)_updateInfoTextColorsForState:(unint64_t)state
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  info = self->_info;
  if ((isKindOfClass & 1) != 0 || !info)
  {
    v8 = 0;
    stateCopy = state;
  }

  else
  {
    if ([(UIControl *)self isEnabled])
    {
      stateCopy = 0;
    }

    else
    {
      stateCopy = 2;
    }

    v8 = info;
    info = 0;
  }

  v9 = [self->_appearanceStorage textAttributesForState:0];
  if (v9)
  {
    if (stateCopy)
    {
      v9 = [self->_appearanceStorage textAttributesForState:stateCopy];
    }

    v10 = v9;
    v11 = [v9 objectForKey:*off_1E70EC920];
    [(UIButton *)info setTitleColor:v11 forState:state];
    [(_UIToolbarNavigationButton *)v8 setTextColor:v11];
    v12 = [objc_msgSend(v10 objectForKey:{*off_1E70EC9B0), "shadowColor"}];
    [(UIButton *)info setTitleShadowColor:v12 forState:state];
    [(_UIToolbarNavigationButton *)v8 setShadowColor:v12];
    isEnabled = [(UIControl *)self isEnabled];
    v14 = 2;
    if (isEnabled)
    {
      v14 = 0;
    }

    if (v14 == state)
    {

      [(UIToolbarButton *)self _updateShadowOffsetWithAttributes:v10 forState:state];
    }
  }
}

- (void)_adjustToolbarButtonInfoTintColorHasChanged:(BOOL)changed
{
  [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    superview = [(UIView *)self superview];
  }

  else
  {
    superview = 0;
  }

  isMinibar = [(UIView *)superview isMinibar];
  _infoIsButton = [(UIToolbarButton *)self _infoIsButton];
  if (_infoIsButton)
  {
    [(UIToolbarButton *)self _adjustPushButtonForMiniBar:isMinibar isChangingBarHeight:0];
    info = self->_info;
    toolbarTintColor = [self->_appearanceStorage tintColor];
    if (!toolbarTintColor)
    {
      toolbarTintColor = self->_toolbarTintColor;
    }

    [(UIView *)self setTintColor:toolbarTintColor];
    [(UINavigationButton *)info setBarStyle:self->_barStyle];
    -[UINavigationButton _setTitleTextAttributes:forState:](info, "_setTitleTextAttributes:forState:", [self->_appearanceStorage textAttributesForState:0], 0);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }
  }

  v9 = [objc_msgSend(self->_appearanceStorage textAttributesForState:{0), "objectForKey:", *off_1E70EC918}];
  if (v9)
  {
    v10 = v9;
    titleLabel = self->_info;
    if (_infoIsButton)
    {
      titleLabel = [(UIButton *)titleLabel titleLabel];
    }

    [v10 pointSize];
    if (v12 == 0.0)
    {
      v13 = 17.0;
      if (_infoIsButton)
      {
        v13 = 12.0;
      }

      v10 = [v10 fontWithSize:v13];
    }

    [(UIButton *)titleLabel setFont:v10];
  }

  if (_infoIsButton)
  {
    [(UIToolbarButton *)self _updateInfoTextColorsForState:0];
    [(UIToolbarButton *)self _updateInfoTextColorsForState:1];

    [(UIToolbarButton *)self _updateInfoTextColorsForState:2];
  }

  else
  {
    if ([(UIControl *)self isEnabled])
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    [(UIToolbarButton *)self _updateInfoTextColorsForState:v14];
    [(UIView *)self alpha];
    if (v15 > 0.0 && [self->_appearanceStorage textAttributesForState:2])
    {

      [(UIView *)self setAlpha:1.0];
    }
  }
}

- (void)_UIAppearance_setBackgroundImage:(id)image forState:(unint64_t)state style:(int64_t)style barMetrics:(int64_t)metrics
{
  if ((metrics - 101) > 1)
  {
    imageCopy = image;
    appearanceStorage = self->_appearanceStorage;
    if (image)
    {
      if (!appearanceStorage)
      {
        self->_appearanceStorage = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      }

      if (([imageCopy _isResizable] & 1) == 0)
      {
        [imageCopy size];
        v13 = floor(v12 * 0.5);
        imageCopy = [imageCopy resizableImageWithCapInsets:{0.0, v13, 0.0, v12 - v13 + -1.0}];
      }
    }

    else
    {
      if (!appearanceStorage)
      {
        return;
      }

      imageCopy = 0;
    }

    if ((state & 0xFFFFFFFFFFFFFFFDLL) == 0 || state == 4)
    {
      stateCopy = state;
    }

    else
    {
      stateCopy = 1;
    }

    if ([self->_appearanceStorage backgroundImageForState:stateCopy style:style isMini:metrics == 1] != imageCopy)
    {
      [self->_appearanceStorage setBackgroundImage:imageCopy forState:stateCopy style:style isMini:metrics == 1];
      [(UINavigationButton *)self->_info _setBackgroundImage:imageCopy forState:state style:style barMetrics:metrics];
      [(UIToolbarButton *)self _adjustToolbarButtonInfo];
      superview = [(UIView *)self superview];

      [(UIView *)superview setNeedsLayout];
    }
  }

  else if ((_UIAppearance_setBackgroundImage_forState_style_barMetrics__didWarn_0 & 1) == 0)
  {
    _UIAppearance_setBackgroundImage_forState_style_barMetrics__didWarn_0 = 1;
    NSLog(&cfstr_SCustomization.isa, a2, image, state, style, "UIBarButtonItem", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }
}

- (id)_backgroundImageForState:(unint64_t)state barMetrics:(int64_t)metrics
{
  if ((metrics - 101) > 1)
  {
    if ((state & 0xFFFFFFFFFFFFFFFDLL) != 0 && state != 4)
    {
      state = 1;
    }

    style = self->_style;
    appearanceStorage = self->_appearanceStorage;

    return [appearanceStorage backgroundImageForState:state style:style isMini:metrics == 1];
  }

  else
  {
    if ((_backgroundImageForState_barMetrics__didWarn_0 & 1) == 0)
    {
      _backgroundImageForState_barMetrics__didWarn_0 = 1;
      NSLog(&cfstr_SCustomization.isa, a2, state, "UIBarButtonItem", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    return 0;
  }
}

- (void)_UIAppearance_setTintColor:(id)color
{
  appearanceStorage = self->_appearanceStorage;
  if (color)
  {
    if (!appearanceStorage)
    {
      appearanceStorage = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      self->_appearanceStorage = appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    return;
  }

  tintColor = [(_UIBarButtonItemAppearanceStorage *)appearanceStorage tintColor];
  [self->_appearanceStorage setTintColor:color];
  if (tintColor != color)
  {

    [(UIToolbarButton *)self _adjustToolbarButtonInfoTintColorHasChanged:1];
  }
}

- (UIColor)_tintColor
{
  result = [self->_appearanceStorage tintColor];
  if (!result)
  {
    return self->_toolbarTintColor;
  }

  return result;
}

- (void)_UIAppearance_setBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (adjustment != 0.0 || appearanceStorage != 0)
    {
      if (!appearanceStorage)
      {
        appearanceStorage = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
        self->_appearanceStorage = appearanceStorage;
      }

      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage backgroundVerticalAdjustmentForBarMetrics:metrics];
      if (v9 != adjustment)
      {
        [self->_appearanceStorage setBackgroundVerticalAdjustment:metrics forBarMetrics:adjustment];

        [(UIView *)self setNeedsLayout];
      }
    }
  }

  else if ((_UIAppearance_setBackgroundVerticalPositionAdjustment_forBarMetrics__didWarn & 1) == 0)
  {
    _UIAppearance_setBackgroundVerticalPositionAdjustment_forBarMetrics__didWarn = 1;
    NSLog(&cfstr_SCustomization.isa, a2, adjustment, "UIBarButtonItem", @"toolbar button background vertical position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }
}

- (double)_backgroundVerticalPositionAdjustmentForBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;

    [appearanceStorage backgroundVerticalAdjustmentForBarMetrics:?];
  }

  else
  {
    if ((_backgroundVerticalPositionAdjustmentForBarMetrics__didWarn & 1) == 0)
    {
      _backgroundVerticalPositionAdjustmentForBarMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, "UIBarButtonItem", @"toolbar button background vertical position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    return 0.0;
  }

  return result;
}

- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) <= 1)
  {
    if ((_UIAppearance_setTitlePositionAdjustment_forBarMetrics__didWarn_0 & 1) == 0)
    {
      _UIAppearance_setTitlePositionAdjustment_forBarMetrics__didWarn_0 = 1;
      NSLog(&cfstr_SCustomization.isa, a2, adjustment.horizontal, adjustment.vertical, "UIBarButtonItem", @"title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    return;
  }

  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    if (adjustment.horizontal == 0.0 && adjustment.vertical == 0.0)
    {
      return;
    }

    appearanceStorage = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    self->_appearanceStorage = appearanceStorage;
  }

  if (metrics != 1)
  {
    titlePositionOffset = [(_UIBarButtonItemAppearanceStorage *)appearanceStorage titlePositionOffset];
    if (titlePositionOffset)
    {
      goto LABEL_10;
    }

LABEL_12:
    v10 = 0.0;
    v11 = 0.0;
    goto LABEL_13;
  }

  titlePositionOffset = [(_UIBarButtonItemAppearanceStorage *)appearanceStorage miniTitlePositionOffset];
  if (!titlePositionOffset)
  {
    goto LABEL_12;
  }

LABEL_10:
  [(NSValue *)titlePositionOffset UIOffsetValue];
LABEL_13:
  if (horizontal != v10 || vertical != v11)
  {
    v12 = self->_appearanceStorage;
    if (metrics == 1)
    {
      *v14 = horizontal;
      *&v14[1] = vertical;
      [v12 setMiniTitlePositionOffset:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", v14, "{UIOffset=dd}")}];
    }

    else
    {
      *v13 = horizontal;
      *&v13[1] = vertical;
      [v12 setTitlePositionOffset:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", v13, "{UIOffset=dd}")}];
    }

    [(UIView *)self setNeedsLayout];
  }
}

- (UIOffset)_titlePositionAdjustmentForBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) <= 1)
  {
    v3 = 0.0;
    if ((_titlePositionAdjustmentForBarMetrics__didWarn_0 & 1) == 0)
    {
      _titlePositionAdjustmentForBarMetrics__didWarn_0 = 1;
      NSLog(&cfstr_SCustomization.isa, a2, "UIBarButtonItem", @"title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    goto LABEL_9;
  }

  appearanceStorage = self->_appearanceStorage;
  if (metrics != 1)
  {
    titlePositionOffset = [appearanceStorage titlePositionOffset];
    if (titlePositionOffset)
    {
      goto LABEL_6;
    }

LABEL_8:
    v3 = 0.0;
LABEL_9:
    v6 = 0.0;
    goto LABEL_10;
  }

  titlePositionOffset = [appearanceStorage miniTitlePositionOffset];
  if (!titlePositionOffset)
  {
    goto LABEL_8;
  }

LABEL_6:
  [titlePositionOffset UIOffsetValue];
  v3 = v7;
LABEL_10:
  v8 = v3;
  result.vertical = v6;
  result.horizontal = v8;
  return result;
}

- (void)_applyBarButtonAppearanceStorage:(id)storage withTaggedSelectors:(id)selectors
{
  if (selectors)
  {
    objc_setAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey, selectors, 1);
  }

  if (storage)
  {
    -[UIToolbarButton _setBackgroundImage:forState:style:barMetrics:](self, "_setBackgroundImage:forState:style:barMetrics:", [storage backgroundImageForState:0 style:self->_style isMini:0], 0, self->_style, 0);
    -[UIToolbarButton _setBackgroundImage:forState:style:barMetrics:](self, "_setBackgroundImage:forState:style:barMetrics:", [storage backgroundImageForState:1 style:self->_style isMini:0], 1, self->_style, 0);
    -[UIToolbarButton _setBackgroundImage:forState:style:barMetrics:](self, "_setBackgroundImage:forState:style:barMetrics:", [storage backgroundImageForState:4 style:self->_style isMini:0], 4, self->_style, 0);
    -[UIToolbarButton _setBackgroundImage:forState:style:barMetrics:](self, "_setBackgroundImage:forState:style:barMetrics:", [storage backgroundImageForState:2 style:self->_style isMini:0], 2, self->_style, 0);
    -[UIToolbarButton _setBackgroundImage:forState:style:barMetrics:](self, "_setBackgroundImage:forState:style:barMetrics:", [storage backgroundImageForState:0 style:self->_style isMini:1], 0, self->_style, 1);
    -[UIToolbarButton _setBackgroundImage:forState:style:barMetrics:](self, "_setBackgroundImage:forState:style:barMetrics:", [storage backgroundImageForState:1 style:self->_style isMini:1], 1, self->_style, 1);
    -[UIToolbarButton _setBackgroundImage:forState:style:barMetrics:](self, "_setBackgroundImage:forState:style:barMetrics:", [storage backgroundImageForState:4 style:self->_style isMini:1], 4, self->_style, 1);
    -[UIToolbarButton _setBackgroundImage:forState:style:barMetrics:](self, "_setBackgroundImage:forState:style:barMetrics:", [storage backgroundImageForState:2 style:self->_style isMini:1], 2, self->_style, 1);
    -[UIToolbarButton _setTintColor:](self, "_setTintColor:", [storage tintColor]);
    -[UIToolbarButton _setTitleTextAttributes:forState:](self, "_setTitleTextAttributes:forState:", [storage textAttributesForState:0], 0);
    -[UIToolbarButton _setTitleTextAttributes:forState:](self, "_setTitleTextAttributes:forState:", [storage textAttributesForState:2], 2);
    -[UIToolbarButton _setTitleTextAttributes:forState:](self, "_setTitleTextAttributes:forState:", [storage textAttributesForState:1], 1);
    titlePositionOffset = [storage titlePositionOffset];
    if (titlePositionOffset)
    {
      [titlePositionOffset UIOffsetValue];
      [(UIToolbarButton *)self _setTitlePositionAdjustment:0 forBarMetrics:?];
    }

    miniTitlePositionOffset = [storage miniTitlePositionOffset];
    if (miniTitlePositionOffset)
    {
      [miniTitlePositionOffset UIOffsetValue];
      [(UIToolbarButton *)self _setTitlePositionAdjustment:1 forBarMetrics:?];
    }

    [storage backgroundVerticalAdjustmentForBarMetrics:0];
    [(UIToolbarButton *)self _setBackgroundVerticalPositionAdjustment:0 forBarMetrics:?];
    [storage backgroundVerticalAdjustmentForBarMetrics:1];

    [(UIToolbarButton *)self _setBackgroundVerticalPositionAdjustment:1 forBarMetrics:?];
  }
}

- (UIEdgeInsets)_additionalSelectionInsets
{
  top = self->__additionalSelectionInsets.top;
  left = self->__additionalSelectionInsets.left;
  bottom = self->__additionalSelectionInsets.bottom;
  right = self->__additionalSelectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end