@interface UITabBarButton
+ (id)_defaultLabelColor;
- (BOOL)canBecomeFocused;
- (BOOL)iconShouldUseVibrancyForState:(int64_t)a3;
- (BOOL)isDefaultColor:(id)a3 forState:(int64_t)a4;
- (BOOL)labelShouldUseVibrancyForState:(int64_t)a3;
- (BOOL)pointMostlyInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGRect)_contentRect;
- (CGRect)_responderSelectionRect;
- (CGRect)_responderSelectionRectForWindow:(id)a3;
- (CGRect)_tabBarHitRect;
- (CGSize)_appleTV_sizeThatFits:(CGSize)a3;
- (CGSize)_horizontalLayout_sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIOffset)_titlePositionAdjustment;
- (UIOffset)badgePositionAdjustmentForState:(int64_t)a3;
- (UIOffset)badgeTitlePositionAdjustmentForState:(int64_t)a3;
- (UIOffset)titlePositionAdjustmentForState:(int64_t)a3;
- (UITabBar)tabBar;
- (UITabBarButton)initWithImage:(id)a3 landscapeImage:(id)a4 selectedImage:(id)a5 landscapeSelectedImage:(id)a6 label:(id)a7 withInsets:(UIEdgeInsets)a8 landscapeInsets:(UIEdgeInsets)a9 tabBar:(id)a10;
- (UIView)focusView;
- (id)_buttonTintColorForState:(unint64_t)a3;
- (id)_contentTintColorForState:(unint64_t)a3;
- (id)_selectedIndicatorImage;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)_tabBar;
- (id)badgeBackgroundColorForState:(int64_t)a3;
- (id)badgeTextAttributesForState:(int64_t)a3;
- (id)defaultColorForState:(int64_t)a3;
- (id)iconColorForState:(int64_t)a3;
- (id)titleTextAttributesForState:(int64_t)a3;
- (int64_t)_currentItemState;
- (void)_UIAppearance_setBadgeColor:(id)a3;
- (void)_UIAppearance_setBadgeTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)a3;
- (void)_accessibilityButtonShapesDidChangeNotification:(id)a3;
- (void)_accessibilityGrayStatusDidChangeNotification:(id)a3;
- (void)_accessibilityHighContractFocusIndicatorDidChangeNotification:(id)a3;
- (void)_appleTV_layoutSubviews;
- (void)_applyTabBarButtonAppearanceStorage:(id)a3 withTaggedSelectors:(id)a4;
- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5;
- (void)_ios_layoutSubviews;
- (void)_positionBadge;
- (void)_positionBadgeAfterChangesIfNecessary:(id)a3;
- (void)_removeCarplayConstraints;
- (void)_sendFocusAction:(id)a3;
- (void)_setAppearanceGuideClass:(Class)a3;
- (void)_setBadgeValue:(id)a3;
- (void)_setButtonTintColor:(id)a3 forState:(unint64_t)a4;
- (void)_setContentTintColor:(id)a3 forState:(unint64_t)a4;
- (void)_setCustomSelectedIndicatorImage:(id)a3;
- (void)_setShowsHighlightedState:(BOOL)a3;
- (void)_setUnselectedTintColor:(id)a3;
- (void)_setupCarplayConstraints;
- (void)_setupSymbolConfigurationsForIdiom:(int64_t)a3;
- (void)_showSelectedIndicator:(BOOL)a3 changeSelection:(BOOL)a4;
- (void)_updateAfterTraitCollectionOrAccessibilityDidChangeTV;
- (void)_updateBadgeAppearanceAndLayoutNow:(BOOL)a3;
- (void)_updateSelectedIndicatorFrame;
- (void)_updateSelectedIndicatorView;
- (void)_updateToMatchCurrentState;
- (void)_updateVibrancyEffectView;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItemAppearanceData:(id)a3;
- (void)setItemVibrantEffect:(id)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UITabBarButton

- (UITabBar)tabBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  return WeakRetained;
}

- (int64_t)_currentItemState
{
  if (![(UIControl *)self isEnabled])
  {
    return 3;
  }

  if ([(UIView *)self isFocused])
  {
    return 4;
  }

  if ([(UIControl *)self isHighlighted]&& self->_showsHighlightedState)
  {
    return 1;
  }

  if (self->_selected)
  {
    return 2;
  }

  return 0;
}

- (void)_updateToMatchCurrentState
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if ([(UITabBarButton *)self _showsHighlightedState])
  {
    v5 = [(UIControl *)self isHighlighted];
  }

  else
  {
    v5 = 0;
  }

  [(UITabBarButton *)self _showsHighlightedState];
  [(UITabBarButtonLabel *)self->_label setSelected:self->_selected];
  [(UITabBarButtonLabel *)self->_label setHighlighted:v5];
  if (self->_itemAppearanceData)
  {
    [(UITabBarButtonLabel *)self->_label updateTextColorsForState];
    [(UIView *)self->_label sizeToFit];
  }

  v20 = self->_imageView;
  [(UITabBarSwappableImageView *)v20 showAlternateImage:self->_selected];
  if (v20)
  {
    v6 = [(UITabBarButton *)self _currentItemState];
    if ([(UITabBarButton *)self iconShouldUseVibrancyForState:v6])
    {
      v7 = 0;
    }

    else
    {
      if (self->_layoutStyle == 3)
      {
        if (self->_selected)
        {
          v8 = 4;
        }

        else
        {
          v8 = 0;
        }

        v9 = [(UITabBarButton *)self _contentTintColorForState:v8 & 0xFFFFFFFFFFFFFFFELL | v5];
      }

      else
      {
        v9 = [(UITabBarButton *)self iconColorForState:v6];
      }

      v7 = v9;
    }

    if ([(UITabBarButton *)self isDefaultTVLayout])
    {
      if ([(UITabBarButton *)self isDefaultColor:v7 forState:v6])
      {
        v10 = [(UITabBarButton *)self defaultCompositingModeForState:v6];
        [(UITabBarButton *)self defaultAlphaForState:v6];
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 1.0;
      }

      v13 = _AXSEnhanceBackgroundContrastEnabled();
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v10;
      }

      if (v13)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = v12;
      }

      [(UIView *)v20 setAlpha:v15];
      [(UIView *)v20 setCompositingMode:v14];
    }

    [(UIView *)v20 setTintColor:v7];
  }

  v16 = [(UITabBarButton *)self _buttonTintColorForState:0];
  [(UIView *)self setTintColor:v16];

  if (v4 == 3)
  {
    if (v5)
    {
      v17 = [(UIView *)self tintColor];
      v18 = [(UITabBarButton *)self focusView];
      [v18 setBackgroundColor:v17];
    }

    else
    {
      v17 = [(UITabBarButton *)self focusView];
      [v17 setBackgroundColor:0];
    }

    goto LABEL_37;
  }

  if (!v5)
  {
LABEL_37:
    v19 = 0;
    goto LABEL_38;
  }

  v19 = 0;
  if (v4 != 2 && v4 != 8)
  {
    v19 = [(UIView *)self tintColor];
  }

LABEL_38:
  [(UIView *)self setBackgroundColor:v19];
  [(UITabBarButton *)self _updateBadgeAppearanceAndLayoutNow:0];
  [(UIView *)self setNeedsLayout];
}

- (void)_positionBadge
{
  badge = self->_badge;
  if (!badge)
  {
    return;
  }

  v4 = [(_UIBadgeView *)badge style];

  if (!v4)
  {
    v5 = [(UIView *)self traitCollection];
    v6 = _UIBadgeGetTabBarVisualStyle([v5 userInterfaceIdiom], self->_layoutStyle);
    [(_UIBadgeView *)self->_badge setStyle:v6];
  }

  [(_UIBadgeView *)self->_badge sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_badge frame];
  if (v8 != v12 || v10 != v11)
  {
    [(UIView *)self->_badge sizeToFit];
    [(UIView *)self->_badge setNeedsLayout];
    [(UIView *)self->_badge layoutIfNeeded];
  }

  v14 = [(UIView *)self superview];
  if (v14)
  {
    rect_8 = v14;
    [(UIView *)self->_badge frame];
    rect = v15;
    v17 = v16;
    v19 = v18;
    [(UITabBarButton *)self badgePositionAdjustmentForState:[(UITabBarButton *)self _currentItemState]];
    v21 = v20;
    imageView = self->_imageView;
    if (!imageView)
    {
      imageView = self->_label;
    }

    [imageView frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(UIView *)self convertPoint:rect_8 fromView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v32 = v21 + v31;
    v33 = *(&self->super.super._viewFlags + 2);
    UIRoundToViewScale(self);
    layoutStyle = self->_layoutStyle;
    if (layoutStyle && layoutStyle != 3)
    {
      v39 = v24;
      v40 = v26;
      v41 = v28;
      v42 = v30;
      if ((v33 & 0x400000) != 0)
      {
        CGRectGetMinX(*&v39);
        goto LABEL_21;
      }

      CGRectGetMaxX(*&v39);
      UIRoundToViewScale(self);
      v63.origin.x = rect;
      v63.origin.y = v32;
      v63.size.width = v17;
      v63.size.height = v19;
      CGRectGetWidth(v63);
    }

    else
    {
      v35 = v24;
      v36 = v26;
      v37 = v28;
      v38 = v30;
      if ((v33 & 0x400000) == 0)
      {
        CGRectGetMaxX(*&v35);
LABEL_21:
        UIRoundToViewScale(self);
        goto LABEL_22;
      }

      CGRectGetMinX(*&v35);
      UIRoundToViewScale(self);
      v62.origin.x = rect;
      v62.origin.y = v32;
      v62.size.width = v17;
      v62.size.height = v19;
      CGRectGetWidth(v62);
    }

LABEL_22:
    [rect_8 bounds];
    v65 = CGRectInset(v64, 6.0, 0.0);
    [(UIView *)self convertRect:rect_8 fromView:v65.origin.x, v65.origin.y, v65.size.width, v65.size.height];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [(UIView *)self bounds];
    v70.origin.x = v51;
    v70.origin.y = v52;
    v70.size.width = v53;
    v70.size.height = v54;
    v66.origin.x = v44;
    v66.origin.y = v46;
    v66.size.width = v48;
    v66.size.height = v50;
    v67 = CGRectIntersection(v66, v70);
    x = v67.origin.x;
    y = v67.origin.y;
    width = v67.size.width;
    height = v67.size.height;
    CGRectGetMinX(v67);
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    CGRectGetMaxX(v68);
    v69.origin.x = rect;
    v69.origin.y = v32;
    v69.size.width = v17;
    v69.size.height = v19;
    CGRectGetWidth(v69);
    UIRoundToViewScale(self);
    [(UIView *)self->_badge setFrame:?];
    v14 = rect_8;
  }
}

- (void)_removeCarplayConstraints
{
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:1];
  [(UIView *)self->_label setTranslatesAutoresizingMaskIntoConstraints:1];
  [(UILabel *)self->_label setTextAlignment:4];
  v3 = [(UITabBarButton *)self focusView];
  [v3 removeFromSuperview];

  v4 = MEMORY[0x1E69977A0];
  v5 = [(UITabBarButton *)self carplayConstraints];
  [v4 deactivateConstraints:v5];

  [(UITabBarButton *)self setCarplayConstraints:0];
}

- (UIView)focusView
{
  focusView = self->_focusView;
  if (!focusView)
  {
    v4 = [UIView alloc];
    v5 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_focusView;
    self->_focusView = v5;

    [(UIView *)self->_focusView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(UIView *)self->_focusView layer];
    [v7 setCornerRadius:8.0];

    v8 = *MEMORY[0x1E69796E8];
    v9 = [(UIView *)self->_focusView layer];
    [v9 setCornerCurve:v8];

    [(UIView *)self->_focusView setUserInteractionEnabled:0];
    focusView = self->_focusView;
  }

  return focusView;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = UITabBarButton;
  [(UIView *)&v15 layoutSubviews];
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (self->_badge)
  {
    v5 = _UIBadgeGetTabBarVisualStyle(v4, self->_layoutStyle);
    [(_UIBadgeView *)self->_badge setStyle:v5];
  }

  [(UITabBarButton *)self _setupSymbolConfigurationsForIdiom:v4];
  switch(v4)
  {
    case 8:
      goto LABEL_6;
    case 3:
      break;
    case 2:
LABEL_6:
      [(UITabBarButton *)self _appleTV_layoutSubviews];
      break;
    default:
      [(UITabBarButton *)self _ios_layoutSubviews];
      break;
  }

  [(UITabBarButton *)self _updateSelectedIndicatorFrame];
  [(UITabBarButton *)self _positionBadge];
  v6 = self;
  WeakRetained = objc_loadWeakRetained(&v6->_tabBar);
  if (!v6->_itemVibrantEffect)
  {
    vibrancyEffectView = v6->_vibrancyEffectView;
    if (vibrancyEffectView)
    {
      [(UIView *)vibrancyEffectView removeFromSuperview];
      v11 = v6->_vibrancyEffectView;
      v6->_vibrancyEffectView = 0;
      v9 = v6;
      v10 = v6;
      goto LABEL_15;
    }

    v9 = v6;
LABEL_17:
    v10 = v6;
    goto LABEL_18;
  }

  [(UITabBarButton *)v6 _updateVibrancyEffectView];
  [(UIView *)v6 bounds];
  [(UIView *)v6->_vibrancyEffectView setFrame:?];
  v8 = [(UITabBarButton *)v6 _currentItemState];
  v9 = v6;
  if ([(UITabBarButton *)v6 labelShouldUseVibrancyForState:v8])
  {
    v9 = [(UIVisualEffectView *)v6->_vibrancyEffectView contentView];
  }

  if (![(UITabBarButton *)v6 iconShouldUseVibrancyForState:v8])
  {
    goto LABEL_17;
  }

  v10 = [(UIVisualEffectView *)v6->_vibrancyEffectView contentView];
  v11 = v6;
LABEL_15:

LABEL_18:
  v13 = v6->_vibrancyEffectView == 0;
  v14 = [(UIView *)v6 layer];
  [v14 setAllowsGroupOpacity:v13];

  [v10 addSubview:v6->_imageView];
  [v9 addSubview:v6->_label];
  [(UIView *)v6 bringSubviewToFront:self->_badge];
}

- (void)_ios_layoutSubviews
{
  [(UIView *)self bounds];
  v86 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(UIView *)self _shouldReverseLayoutDirection];
  layoutStyle = self->_layoutStyle;
  v13 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  imageView = self->_imageView;
  v88 = v14;
  v17 = v15;
  if (imageView)
  {
    [(UITabBarSwappableImageView *)imageView setLandscape:layoutStyle == 2];
    [(UITabBarSwappableImageView *)self->_imageView sizeThatFits:v7, v9];
    v17 = v18;
    v14 = v19;
    v20 = [(UIImageView *)self->_imageView image];
    v21 = [v20 hasBaseline];

    if (v21)
    {
      [(UIImageView *)self->_imageView setFrame:v13, v12, v17, v14];
    }
  }

  v90 = v15;
  v91 = v13;
  v89 = v12;
  v22 = v17;
  v23 = v14;
  [(UITabBarButton *)self titlePositionAdjustmentForState:[(UITabBarButton *)self _currentItemState]];
  v24 = self->_layoutStyle;
  v25 = [(UIView *)self window];
  v26 = [v25 windowScene];
  _UITabBarMetricsForStyleAndScene(v24, v26);

  label = self->_label;
  if (!self->_layoutStyle)
  {
    [(UITabBarButtonLabel *)label resizeToFitWidth:v7];
    v45 = self->_label;
    if (v45)
    {
      [(UIView *)v45 frame];
      UIFloorToViewScale(self);
      v47 = v46;
      [(UILabel *)self->_label _firstBaselineOffsetFromTop];
      UIFloorToViewScale(self);
      v5 = v48;
      UICeilToViewScale(self);
      v7 = v49;
      UICeilToViewScale(self);
      v51 = v50;
      v52 = v47;
      v88 = v51;
      v15 = v7;
      v53 = v5;
      v54 = v52;
    }

    else
    {
      v52 = v86;
      v51 = v9;
      v53 = v89;
      v54 = v91;
    }

    v29 = v23;
    v61 = v5;
    v62 = v7;
    CGRectGetMidX(*&v52);
    v31 = v22;
    if (self->_imageView)
    {
      UIFloorToViewScale(self);
      v39 = v63;
      v64 = [(UIImageView *)self->_imageView image];
      v65 = [v64 hasBaseline];

      v37 = v88;
      if (v65)
      {
        v40 = _yOffsetForBaselinedImageView(self->_imageView, self);
      }

      else
      {
        UIFloorToViewScale(self);
        top = self->_imageInsets.top;
        left = self->_imageInsets.left;
        v39 = v39 + left;
        v40 = v84 + top;
        v31 = v31 - (left + self->_imageInsets.right);
        v29 = v29 - (top + self->_imageInsets.bottom);
      }
    }

    else
    {
      v39 = v91;
      v37 = v88;
      v40 = v89;
    }

    goto LABEL_33;
  }

  v28 = self->_imageView;
  if (label)
  {
    v29 = v14;
    if (v28)
    {
      v85 = v14;
      if (_UIIsFourInch())
      {
        v30 = 5.0;
      }

      else
      {
        v30 = 6.0;
      }

      v31 = v22;
      [(UITabBarButtonLabel *)self->_label resizeToFitWidth:v7 - v30 - v22];
      [(UIView *)self->_label frame];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      UIFloorToViewScale(self);
      v39 = v38;
      v40 = v89;
      v90 = v35;
      v87 = v33;
      if (v10)
      {
        v91 = v38;
        v41 = v33;
        v42 = v35;
        v43 = v37;
        CGRectGetMaxX(*&v38);
        UIFloorToViewScale(self);
        v39 = v44;
        v29 = v85;
      }

      else
      {
        v66 = v89;
        v67 = v31;
        v29 = v85;
        v68 = v85;
        CGRectGetMaxX(*&v38);
        UIFloorToViewScale(self);
        v91 = v69;
      }
    }

    else
    {
      [(UITabBarButtonLabel *)label resizeToFitWidth:v7];
      [(UIView *)self->_label frame];
      v87 = v56;
      v58 = v57;
      v90 = v59;
      UIFloorToViewScale(self);
      v39 = v91;
      v91 = v60;
      v31 = v22;
      v37 = v58;
      v40 = v89;
    }
  }

  else
  {
    v29 = v14;
    if (!v28)
    {
      v54 = v91;
      v39 = v91;
      v40 = v89;
      v53 = v89;
      v31 = v22;
      v37 = v88;
      goto LABEL_33;
    }

    v31 = v22;
    UIFloorToViewScale(self);
    v39 = v55;
    v37 = v88;
    v40 = v89;
    v87 = v89;
  }

  v70 = self->_label;
  if (v70)
  {
    [(UILabel *)v70 _firstBaselineOffsetFromTop];
    UIFloorToViewScale(self);
    v53 = v71;
    UICeilToViewScale(self);
    v15 = v72;
    UICeilToViewScale(self);
    v37 = v73;
  }

  else
  {
    v15 = v90;
    v53 = v87;
  }

  v74 = self->_imageView;
  if (v74)
  {
    v75 = [(UIImageView *)v74 image];
    v76 = [v75 hasBaseline];

    if (v76)
    {
      v40 = _yOffsetForBaselinedImageView(self->_imageView, self);
    }

    else
    {
      UIFloorToViewScale(self);
      v78 = 25;
      if (layoutStyle == 2)
      {
        v78 = 26;
      }

      v79 = (self + OBJC_IVAR___UITabBarSwappableImageView__value[v78]);
      v80 = v79[1];
      v39 = v39 + v80;
      v40 = v77 + *v79;
      v31 = v31 - (v80 + v79[3]);
      v29 = v29 - (*v79 + v79[2]);
    }
  }

  v54 = v91;
LABEL_33:
  [(UILabel *)self->_label setFrame:v54, v53, v15, v37];
  v81 = self->_imageView;

  [(UIImageView *)v81 setFrame:v39, v40, v31, v29];
}

- (void)_updateSelectedIndicatorFrame
{
  if (!self->_selectedIndicator)
  {
    return;
  }

  [(UIView *)self bounds];
  v33 = CGRectInset(v32, 0.0, 2.0);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v7 = [(UIView *)self superview];
  if (v7)
  {
    customSelectedIndicatorImage = self->_customSelectedIndicatorImage;
    if (customSelectedIndicatorImage)
    {
      if (![(UIImage *)customSelectedIndicatorImage _isResizable])
      {

        goto LABEL_15;
      }

      [(UIImage *)self->_customSelectedIndicatorImage capInsets];
      if (v9 == 0.0)
      {
        [(UIImage *)self->_customSelectedIndicatorImage capInsets];
        v11 = v10;

        if (v11 != 0.0)
        {
          goto LABEL_9;
        }

LABEL_15:
        [(UIImage *)self->_customSelectedIndicatorImage size];
        height = v12;
        [(UIView *)self bounds];
        if (height <= v13)
        {
          [(UIView *)self bounds];
          y = floor((v19 - height) * 0.5);
          goto LABEL_24;
        }

        WeakRetained = objc_loadWeakRetained(&self->_tabBar);
        [WeakRetained bounds];
        [(UIView *)self convertRect:WeakRetained fromView:x, floor((v15 - height) * 0.5), width, height];
        y = v16;
        width = v17;
        height = v18;
        goto LABEL_23;
      }
    }
  }

LABEL_9:
  if (!self->_customSelectedIndicatorImage && [(UITabBarButton *)self _areTabBarButtonAccessibilityButtonShapesEnabled])
  {
    if ([(UITabBarButton *)self isDefaultTVLayout])
    {
      [(UIImageView *)self->_selectedIndicator setHidden:1];
      [(UIView *)self->_highContrastFocusIndicator setHidden:1];
      goto LABEL_24;
    }

    v20 = objc_loadWeakRetained(&self->_tabBar);
    WeakRetained = v20;
    if (v20)
    {
      width = width + 0.0;
      [v20 bounds];
      v22 = v21 + -4.0;
      v23 = _UIBackgroundExtensionForBarWithInsetFromHomeAffordanceAllowance(WeakRetained, 0);
      if (v23 <= 0.0)
      {
        height = v22;
      }

      else
      {
        height = v22 - v23;
      }

      [(UIView *)self convertPoint:WeakRetained fromView:0.0, 2.0];
      y = v24;
    }

LABEL_23:
  }

LABEL_24:
  v25 = [(UIImageView *)self->_selectedIndicator image];
  v30 = v25;
  if (v25 && ([v25 _isResizable] & 1) == 0)
  {
    [v30 size];
    if (v27 != width || v28 != height)
    {
      v26 = v28;
      x = x + floor((width - v27) * 0.5);
      y = y + floor((height - v28) * 0.5);
      width = v27;
      goto LABEL_34;
    }

LABEL_33:
    v26 = height;
    goto LABEL_34;
  }

  if (width >= 48.0)
  {
    goto LABEL_33;
  }

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectInset(v34, -round((48.0 - width) * 0.5), 0.0);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  v26 = v35.size.height;
LABEL_34:
  [(UIImageView *)self->_selectedIndicator setFrame:x, y, width, v26];
  [(UIView *)self->_highContrastFocusIndicator setFrame:x, y, width, v26];
}

- (void)_updateVibrancyEffectView
{
  itemVibrantEffect = self->_itemVibrantEffect;
  vibrancyEffectView = self->_vibrancyEffectView;
  v8 = itemVibrantEffect;
  if (vibrancyEffectView)
  {
    [(UIVisualEffectView *)vibrancyEffectView setEffect:itemVibrantEffect];
  }

  else
  {
    v5 = [[UIVisualEffectView alloc] initWithEffect:itemVibrantEffect];
    v6 = self->_vibrancyEffectView;
    self->_vibrancyEffectView = v5;

    [(UIVisualEffectView *)self->_vibrancyEffectView _setAllowsGroupFiltering:0];
    v7 = [(UIVisualEffectView *)self->_vibrancyEffectView contentView];
    [v7 setClipsToBounds:0];

    [(UIView *)self bounds];
    [(UIView *)self->_vibrancyEffectView setFrame:?];
    [(UIView *)self->_vibrancyEffectView setUserInteractionEnabled:0];
    [(UIView *)self insertSubview:self->_vibrancyEffectView atIndex:0];
  }
}

- (BOOL)canBecomeFocused
{
  v3 = [(UIControl *)self isEnabled];
  if (v3)
  {
    v4 = [(UIView *)self _focusBehavior];
    v5 = [v4 tabBarButtonCanBecomeFocused];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    label = self->_label;
    if (label)
    {
      v6 = [(UIView *)self traitCollection];
      -[UITabBarButtonLabel _updateForFontChangeWithIdiom:](label, "_updateForFontChangeWithIdiom:", [v6 userInterfaceIdiom]);
    }

    [(UIView *)self setNeedsLayout];
  }
}

- (CGRect)_contentRect
{
  imageView = self->_imageView;
  v4 = self->_label;
  v5 = imageView;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(UIView *)v4 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(UIView *)v6 frame];
    v55.origin.x = v16;
    v55.origin.y = v17;
    v55.size.width = v18;
    v55.size.height = v19;
    v51.origin.x = v9;
    v51.origin.y = v11;
    v51.size.width = v13;
    v51.size.height = v15;
    v52 = CGRectUnion(v51, v55);
LABEL_10:
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
    goto LABEL_11;
  }

  if (v4)
  {
    v5 = v4;
LABEL_9:
    [(UIView *)v5 frame];
    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
LABEL_11:

  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  if (!CGRectIsNull(v53))
  {
    [(UIView *)self bounds];
    v25 = v24;
    v27 = v26;
    v28 = +[_UIPointerSettingsDomain rootSettings];
    v29 = [v28 tabBarSettings];

    layoutStyle = self->_layoutStyle;
    if ((layoutStyle - 1) >= 2)
    {
      v36 = 0.0;
      v34 = 0.0;
      v38 = 0.0;
      v32 = 0.0;
      if (layoutStyle)
      {
LABEL_24:
        x = x + v36;
        y = v25 + v32;
        width = width - (v36 + v38);
        height = v27 - (v34 + v32);

        goto LABEL_25;
      }

      [v29 stackedTopInset];
      v32 = v39;
      [v29 stackedBottomInset];
      v41 = v40;
      [(UIView *)self safeAreaInsets];
      if (v41 >= v42)
      {
        [v29 stackedBottomInset];
        v34 = v43;
      }

      if ([(UIView *)self _shouldReverseLayoutDirection])
      {
        [v29 stackedTrailingPadding];
        v36 = -v44;
        [v29 stackedLeadingPadding];
      }

      else
      {
        [v29 stackedLeadingPadding];
        v36 = -v46;
        [v29 stackedTrailingPadding];
      }
    }

    else
    {
      [v29 inlineTopInset];
      v32 = v31;
      [v29 inlineBottomInset];
      v34 = v33;
      if ([(UIView *)self _shouldReverseLayoutDirection])
      {
        [v29 inlineTrailingPadding];
        v36 = -v35;
        [v29 inlineLeadingPadding];
      }

      else
      {
        [v29 inlineLeadingPadding];
        v36 = -v45;
        [v29 inlineTrailingPadding];
      }
    }

    v38 = -v37;
    goto LABEL_24;
  }

LABEL_25:
  v47 = x;
  v48 = y;
  v49 = width;
  v50 = height;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

- (void)setItemAppearanceData:(id)a3
{
  v5 = a3;
  v6 = self->_itemAppearanceData;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(_UIBarAppearanceData *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_itemAppearanceData, a3);
    [(UITabBarButton *)self _updateToMatchCurrentState];
  }

LABEL_9:
}

- (void)setItemVibrantEffect:(id)a3
{
  v5 = a3;
  if (self->_itemVibrantEffect != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_itemVibrantEffect, a3);
    [(UITabBarButton *)self _updateToMatchCurrentState];
    v5 = v6;
  }
}

+ (id)_defaultLabelColor
{
  v2 = _defaultLabelColor___labelColor_0;
  if (!_defaultLabelColor___labelColor_0)
  {
    v3 = [[UIColor alloc] initWithWhite:0.57254902 alpha:1.0];
    v4 = _defaultLabelColor___labelColor_0;
    _defaultLabelColor___labelColor_0 = v3;

    v2 = _defaultLabelColor___labelColor_0;
  }

  return v2;
}

- (UITabBarButton)initWithImage:(id)a3 landscapeImage:(id)a4 selectedImage:(id)a5 landscapeSelectedImage:(id)a6 label:(id)a7 withInsets:(UIEdgeInsets)a8 landscapeInsets:(UIEdgeInsets)a9 tabBar:(id)a10
{
  right = a8.right;
  bottom = a8.bottom;
  left = a8.left;
  top = a8.top;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a10;
  if (v20)
  {
    [v20 size];
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v27 = *MEMORY[0x1E695F060];
    v29 = *(MEMORY[0x1E695F060] + 8);
  }

  v30 = MEMORY[0x1E695EFF8];
  if (v22)
  {
    [v22 size];
    if (v31 > v27)
    {
      v27 = v31;
    }

    if (v32 > v29)
    {
      v29 = v32;
    }
  }

  v33 = *v30;
  v34 = v30[1];
  if (v24)
  {
    v35 = objc_alloc_init(UITabBarButtonLabel);
    [(UIView *)v35 setOpaque:0];
    [(UITabBarButtonLabel *)v35 updateTextColorsForState];
    [(UIView *)v35 setBackgroundColor:0];
    [(UILabel *)v35 setText:v24];
    [(UILabel *)v35 setAdjustsLetterSpacingToFitWidth:1];
    [(UIView *)v35 sizeToFit];
    [(UIView *)v35 frame];
  }

  else
  {
    v35 = 0;
    v36 = *(MEMORY[0x1E695F058] + 16);
  }

  if (v36 + 2.0 <= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v36 + 2.0;
  }

  v59.receiver = self;
  v59.super_class = UITabBarButton;
  v38 = [(UIControl *)&v59 initWithFrame:v33, v34, v37, v29];
  v39 = v38;
  if (v38)
  {
    v53 = v24;
    v55 = v23;
    v40 = v25;
    objc_storeWeak(&v38->_tabBar, v25);
    if (v20)
    {
      v41 = [[UITabBarSwappableImageView alloc] initWithImage:v20 alternateImage:v22 landscapeImage:v21 landscapeAlternateImage:v23];
      imageView = v39->_imageView;
      v39->_imageView = v41;

      [(UIView *)v39->_imageView setUserInteractionEnabled:0];
      [(UIView *)v39->_imageView setOpaque:0];
      [(UIImageView *)v39->_imageView setFrame:v33, v34, v27, v29];
      v43 = [(UIView *)v39 traitCollection];
      -[UITabBarButton _setupSymbolConfigurationsForIdiom:](v39, "_setupSymbolConfigurationsForIdiom:", [v43 userInterfaceIdiom]);
    }

    v44 = v21;
    objc_storeStrong(&v39->_label, v35);
    [(UITabBarButtonLabel *)v39->_label setTabBarButton:v39];
    v39->_imageInsets.top = top;
    v39->_imageInsets.left = left;
    v39->_imageInsets.bottom = bottom;
    v39->_imageInsets.right = right;
    v39->_imageLandscapeInsets = a9;
    [(UIView *)v39 setOpaque:0];
    [(UIView *)v39 addSubview:v39->_imageView];
    [(UIView *)v39 addSubview:v39->_label];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __124__UITabBarButton_initWithImage_landscapeImage_selectedImage_landscapeSelectedImage_label_withInsets_landscapeInsets_tabBar___block_invoke;
    v56[3] = &unk_1E70F35B8;
    v45 = v39;
    v57 = v45;
    v58 = v40;
    [UIView _performSystemAppearanceModifications:v56];
    [(UIView *)v45 addSubview:v45->_vibrancyEffectView];
    [(UIView *)v45 setNeedsLayout];
    v46 = objc_opt_new();
    [(UIView *)v45 _setIdleModeLayoutAttributes:v46];
    v47 = [(UIView *)v45 traitCollection];
    v48 = [v47 userInterfaceIdiom];

    if (v48 == 3)
    {
      [(UITabBarButton *)v45 _setupCarplayConstraints];
    }

    v21 = v44;
    v23 = v55;
    v25 = v40;
    v24 = v53;
  }

  v49 = [MEMORY[0x1E696AD88] defaultCenter];
  [v49 addObserver:v39 selector:sel__accessibilityButtonShapesDidChangeNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v50 = [MEMORY[0x1E696AD88] defaultCenter];
  [v50 addObserver:v39 selector:sel__accessibilityHighContractFocusIndicatorDidChangeNotification_ name:@"UIAccessibilityHighContrastFocusIndicatorChangedNotification" object:0];

  v51 = [MEMORY[0x1E696AD88] defaultCenter];
  [v51 addObserver:v39 selector:sel__accessibilityGrayStatusDidChangeNotification_ name:@"UIAccessibilityGrayscaleStatusDidChangeNotification" object:0];

  v39->_accessibilityGrayStatusEnabled = _AXSGrayscaleEnabled() != 0;
  v39->_accessibilityHighContractFocusIndicatorEnabled = _AXSHighContrastFocusIndicatorsEnabled() != 0;
  v39->_accessibilityButtonShapesEnabled = _AXSButtonShapesEnabled() != 0;

  return v39;
}

void __124__UITabBarButton_initWithImage_landscapeImage_selectedImage_landscapeSelectedImage_label_withInsets_landscapeInsets_tabBar___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) _effectiveUnselectedLabelTintColor];
  v3 = *(a1 + 32);
  v4 = *(v3 + 632);
  *(v3 + 632) = v2;

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) _effectiveUnselectedTintColor];
  [v5 _setContentTintColor:v6 forState:0];

  v7 = *(a1 + 32);
  v8 = +[UIColor blackColor];
  [v7 _setContentTintColor:v8 forState:1];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"UIAccessibilityHighContrastFocusIndicatorChangedNotification" object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"UIAccessibilityGrayscaleStatusDidChangeNotification" object:0];

  v6.receiver = self;
  v6.super_class = UITabBarButton;
  [(UIView *)&v6 dealloc];
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UITabBarButton;
  [(UIView *)&v5 setSemanticContentAttribute:?];
  [(UIImageView *)self->_imageView setSemanticContentAttribute:a3];
  [(UILabel *)self->_label setSemanticContentAttribute:a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UITabBarButton;
  [(UIView *)&v12 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceIdiom];
  v6 = [(UIView *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v5 != v7)
  {
    [(UIView *)self setNeedsLayout];
    v8 = [(UIView *)self traitCollection];
    -[UITabBarButton _setupSymbolConfigurationsForIdiom:](self, "_setupSymbolConfigurationsForIdiom:", [v8 userInterfaceIdiom]);
  }

  [(UIView *)self traitCollection];

  if (self->_vibrancyEffectView)
  {
    [(UITabBarButton *)self _updateVibrancyEffectView];
  }

  v9 = [(UIView *)self traitCollection];
  v10 = [v9 legibilityWeight];
  v11 = [v4 legibilityWeight];

  if (v10 != v11)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_updateAfterTraitCollectionOrAccessibilityDidChangeTV
{
  if (self->_vibrancyEffectView)
  {

    [(UITabBarButton *)self _updateVibrancyEffectView];
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __71__UITabBarButton__updateAfterTraitCollectionOrAccessibilityDidChangeTV__block_invoke;
    v3[3] = &unk_1E70F3590;
    v3[4] = self;
    [UIView _performSystemAppearanceModifications:v3];
    [(UITabBarButton *)self _updateToMatchCurrentState];
    [(UITabBarButtonLabel *)self->_label updateTextColorsForState];
  }
}

void __71__UITabBarButton__updateAfterTraitCollectionOrAccessibilityDidChangeTV__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tabBar];
  v3 = [v2 _effectiveUnselectedLabelTintColor];
  v4 = *(a1 + 32);
  v5 = *(v4 + 632);
  *(v4 + 632) = v3;

  v6 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained(v6 + 91);
  v8 = [WeakRetained _effectiveUnselectedTintColor];
  [v6 _setContentTintColor:v8 forState:0];

  v9 = *(a1 + 32);
  v10 = +[UIColor blackColor];
  [v9 _setContentTintColor:v10 forState:1];
}

- (CGRect)_tabBarHitRect
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

- (void)_accessibilityGrayStatusDidChangeNotification:(id)a3
{
  self->_accessibilityGrayStatusEnabled = _AXSGrayscaleEnabled() != 0;
  v4 = [(UITabBarButton *)self _isSelected];

  [(UITabBarButton *)self _showSelectedIndicator:v4 changeSelection:0];
}

- (void)_accessibilityHighContractFocusIndicatorDidChangeNotification:(id)a3
{
  self->_accessibilityHighContractFocusIndicatorEnabled = _AXSHighContrastFocusIndicatorsEnabled() != 0;
  v4 = [(UITabBarButton *)self _isSelected];

  [(UITabBarButton *)self _showSelectedIndicator:v4 changeSelection:0];
}

- (void)_accessibilityButtonShapesDidChangeNotification:(id)a3
{
  self->_accessibilityButtonShapesEnabled = _AXSButtonShapesEnabled() != 0;
  v4 = [(UITabBarButton *)self _isSelected];

  [(UITabBarButton *)self _showSelectedIndicator:v4 changeSelection:0];
}

- (id)_selectedIndicatorImage
{
  v3 = self->_customSelectedIndicatorImage;
  if (!v3)
  {
    if ([(UITabBarButton *)self _areTabBarButtonAccessibilityButtonShapesEnabled])
    {
      v4 = AccessibilitySelectedImageIndicatorMask_maskImage;
      if (!AccessibilitySelectedImageIndicatorMask_maskImage)
      {
        _UIGraphicsBeginImageContextWithOptions(0, 0, 11.0, 11.0, 1.0);
        v5 = +[UIColor blackColor];
        [v5 set];

        v6 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, 11.0, 11.0, 5.0];
        [v6 fill];

        v7 = _UIGraphicsGetImageFromCurrentImageContext(0);
        v8 = [v7 resizableImageWithCapInsets:1 resizingMode:{5.0, 5.0, 5.0, 5.0}];
        v9 = AccessibilitySelectedImageIndicatorMask_maskImage;
        AccessibilitySelectedImageIndicatorMask_maskImage = v8;

        ContextStack = GetContextStack(0);
        PopContextFromStack(ContextStack);
        v4 = AccessibilitySelectedImageIndicatorMask_maskImage;
      }

      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_updateSelectedIndicatorView
{
  v3 = [(UITabBarButton *)self _selectedIndicatorImage];
  selectedIndicator = self->_selectedIndicator;
  v22 = v3;
  if (v3)
  {
    if (!selectedIndicator)
    {
      v5 = objc_alloc_init(UIImageView);
      v6 = self->_selectedIndicator;
      self->_selectedIndicator = v5;

      v3 = v22;
    }

    if (v3 == self->_customSelectedIndicatorImage)
    {
      v8 = 1.0;
      v9 = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_tabBar);
      if ([WeakRetained barStyle])
      {
        v8 = 0.25;
      }

      else
      {
        v8 = 0.15;
      }

      v9 = 2;
    }

    [(UIView *)self->_selectedIndicator setAlpha:v8];
    [(UIImageView *)self->_selectedIndicator _setDefaultRenderingMode:v9];
    [(UIView *)self bounds];
    x = v11;
    y = v13;
    width = v15;
    height = v17;
    if ([(UIImage *)v22 _isResizable])
    {
      if (width < 48.0)
      {
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v25 = CGRectInset(v24, -round((48.0 - width) * 0.5), 0.0);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
        height = v25.size.height;
      }

      v19 = 0;
    }

    else
    {
      [(UIImage *)v22 size];
      if (v20 == width && v21 == height)
      {
        v19 = 4;
      }

      else
      {
        x = x + floor((width - v20) * 0.5);
        y = y + floor((height - v21) * 0.5);
        v19 = 4;
        height = v21;
        width = v20;
      }
    }

    [(UIImageView *)self->_selectedIndicator setContentMode:v19];
    [(UIImageView *)self->_selectedIndicator setFrame:x, y, width, height];
    [(UIImageView *)self->_selectedIndicator setImage:v22];
  }

  else
  {
    [(UIView *)selectedIndicator removeFromSuperview];
    v10 = self->_selectedIndicator;
    self->_selectedIndicator = 0;
  }
}

- (void)_showSelectedIndicator:(BOOL)a3 changeSelection:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  v8 = [WeakRetained _appearanceStorage];
  v9 = [v8 selectionIndicatorImage];
  if (v9)
  {
  }

  else
  {
    v10 = [(UITabBarButton *)self _areTabBarButtonAccessibilityButtonShapesEnabled];

    if (!v10)
    {
      selectedIndicator = self->_selectedIndicator;
      goto LABEL_14;
    }
  }

  selectedIndicator = self->_selectedIndicator;
  if (v5)
  {
    if (!selectedIndicator)
    {
      [(UITabBarButton *)self _updateSelectedIndicatorView];
      [(UIView *)self insertSubview:self->_selectedIndicator atIndex:0];
      [(UIView *)self insertSubview:self->_highContrastFocusIndicator aboveSubview:self->_selectedIndicator];
      if (!v4)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (selectedIndicator)
  {
LABEL_14:
    [(UIView *)selectedIndicator removeFromSuperview];
    v12 = self->_selectedIndicator;
    self->_selectedIndicator = 0;

    [(UIView *)self->_highContrastFocusIndicator removeFromSuperview];
    highContrastFocusIndicator = self->_highContrastFocusIndicator;
    self->_highContrastFocusIndicator = 0;

    if (!v4)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_9:
  if (!v4)
  {
    return;
  }

LABEL_10:

  [(UITabBarButton *)self _setSelected:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UITabBarButton;
  [(UIControl *)&v4 setHighlighted:a3];
  [(UITabBarButton *)self _updateToMatchCurrentState];
}

- (void)_setUnselectedTintColor:(id)a3
{
  v4 = a3;
  [(UITabBarButton *)self _setContentTintColor:v4 forState:0];
  [(UITabBarButtonLabel *)self->_label setUnselectedTintColor:v4];

  [(UITabBarButton *)self _updateToMatchCurrentState];
}

- (void)_positionBadgeAfterChangesIfNecessary:(id)a3
{
  if (self->_badge)
  {
    (*(a3 + 2))(a3, a2);

    [(UITabBarButton *)self _positionBadge];
  }
}

- (void)_setBadgeValue:(id)a3
{
  v4 = a3;
  badge = self->_badge;
  if (v4)
  {
    if (!badge)
    {
      v7 = [[_UIBadgeView alloc] initWithText:v4];
      v8 = self->_badge;
      self->_badge = v7;

      [(UIView *)self addSubview:self->_badge];
      [(UITabBarButton *)self _updateBadgeAppearanceAndLayoutNow:1];
      goto LABEL_7;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33__UITabBarButton__setBadgeValue___block_invoke;
    v9[3] = &unk_1E70F35B8;
    v9[4] = self;
    v10 = v4;
    [(UITabBarButton *)self _positionBadgeAfterChangesIfNecessary:v9];
    v6 = v10;
  }

  else
  {
    [(UIView *)badge removeFromSuperview];
    v6 = self->_badge;
    self->_badge = 0;
  }

LABEL_7:
}

- (void)_updateBadgeAppearanceAndLayoutNow:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__UITabBarButton__updateBadgeAppearanceAndLayoutNow___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v3)
  {
    [(UITabBarButton *)self _positionBadgeAfterChangesIfNecessary:v5];
  }

  else
  {
    (*(v5 + 2))(v5);
  }
}

uint64_t __53__UITabBarButton__updateBadgeAppearanceAndLayoutNow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentItemState];
  v3 = [*(a1 + 32) badgeBackgroundColorForState:v2];
  [*(*(a1 + 32) + 512) setBadgeColor:v3];

  v4 = [*(a1 + 32) badgeTextAttributesForState:v2];
  [*(*(a1 + 32) + 512) setTextAttributes:v4];

  [*(a1 + 32) badgeTitlePositionAdjustmentForState:v2];
  v5 = *(*(a1 + 32) + 512);

  return [v5 setTextOffset:?];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UIControl *)self isEnabled]!= a3)
  {
    v7.receiver = self;
    v7.super_class = UITabBarButton;
    [(UIControl *)&v7 setEnabled:v3];
    [(UIView *)self alpha];
    if (v5 > 0.0)
    {
      v6 = 0.25;
      if (v3)
      {
        v6 = 1.0;
      }

      [(UIView *)self setAlpha:v6];
    }
  }
}

- (BOOL)pointMostlyInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v10 = CGRectInset(self->_hitRect, -15.0, -15.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v10, *&v6);
}

- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = UITabBarButton;
  [(UIView *)&v8 _didChangeFromIdiom:a3 onScreen:a4 traverseHierarchy:a5];
  v6 = [(UIView *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 3)
  {
    [(UITabBarButton *)self _setupCarplayConstraints];
  }

  else
  {
    [(UITabBarButton *)self _removeCarplayConstraints];
  }
}

- (void)_setupSymbolConfigurationsForIdiom:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v12 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:2];
      [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:?];
    }

    else
    {
      imageView = self->_imageView;

      [(UIImageView *)imageView setPreferredSymbolConfiguration:0];
    }
  }

  else
  {
    v5 = [(_UITabBarItemData *)self->_itemAppearanceData preferredSymbolConfiguration];
    if (!v5)
    {
      if (self->_layoutStyle == 3)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v10 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            v11 = "pad";
            if (!a3)
            {
              v11 = "phone";
            }

            *buf = 136315138;
            v14 = v11;
            _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "LayoutStyle is CarPlay when on %s idiom. Substituting Stacked style.", buf, 0xCu);
          }
        }

        else
        {
          v8 = *(__UILogGetCategoryCachedImpl("Assert", &_setupSymbolConfigurationsForIdiom____s_category) + 8);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = "pad";
            if (!a3)
            {
              v9 = "phone";
            }

            *buf = 136315138;
            v14 = v9;
            _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "LayoutStyle is CarPlay when on %s idiom. Substituting Stacked style.", buf, 0xCu);
          }
        }
      }

      v6 = [_UITabBarItemData standardItemDataForStyle:?];
      v5 = [v6 preferredSymbolConfiguration];
    }

    [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v5];
  }
}

- (CGSize)_appleTV_sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIView *)self bounds];
  imageView = self->_imageView;
  if (imageView)
  {
    [(UITabBarSwappableImageView *)imageView sizeThatFits:width, height];
  }

  label = self->_label;
  if (label)
  {
    [(UILabel *)label sizeThatFits:width, height];
    if (self->_label)
    {
      [(UITabBarButton *)self titlePositionAdjustmentForState:[(UITabBarButton *)self _currentItemState]];
    }
  }

  UICeilToViewScale(self);
  v9 = v8;
  UICeilToViewScale(self);
  v11 = v10;
  v12 = v9;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)_setupCarplayConstraints
{
  v63[6] = *MEMORY[0x1E69E9840];
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  v60 = objc_opt_new();
  v3 = [(UITabBarButton *)self focusView];
  [(UIView *)self addSubview:v3];

  v4 = [(UITabBarButton *)self focusView];
  v5 = [v4 widthAnchor];
  v59 = [v5 constraintLessThanOrEqualToConstant:76.0];

  LODWORD(v6) = 1148846080;
  [v59 setPriority:v6];
  v7 = [(UITabBarButton *)self focusView];
  v8 = [v7 leadingAnchor];
  v9 = [(UIView *)self leadingAnchor];
  v10 = [v8 constraintLessThanOrEqualToAnchor:v9 constant:2.0];

  v11 = [(UITabBarButton *)self focusView];
  v12 = [v11 trailingAnchor];
  v13 = [(UIView *)self trailingAnchor];
  v14 = [v12 constraintLessThanOrEqualToAnchor:v13 constant:-2.0];

  LODWORD(v15) = 1144750080;
  [v10 setPriority:v15];
  LODWORD(v16) = 1144750080;
  [v14 setPriority:v16];
  v54 = [(UITabBarButton *)self focusView];
  v52 = [v54 topAnchor];
  v50 = [(UIView *)self topAnchor];
  v49 = [v52 constraintEqualToAnchor:v50 constant:2.0];
  v63[0] = v49;
  v48 = [(UITabBarButton *)self focusView];
  v17 = [v48 bottomAnchor];
  v18 = [(UIView *)self bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-3.0];
  v63[1] = v19;
  v20 = [(UITabBarButton *)self focusView];
  v21 = [v20 centerXAnchor];
  v22 = [(UIView *)self centerXAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v63[2] = v23;
  v63[3] = v59;
  v58 = v10;
  v63[4] = v10;
  v63[5] = v14;
  v57 = v14;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:6];
  [v60 addObjectsFromArray:v24];

  imageView = self->_imageView;
  if (imageView)
  {
    v26 = [(UIView *)imageView centerXAnchor];
    v27 = [(UIView *)self centerXAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v60 addObject:v28];

    v29 = [(UIImageView *)self->_imageView image];
    LODWORD(v27) = [v29 hasBaseline];

    v30 = self->_imageView;
    if (v27)
    {
      v31 = [(UIView *)v30 lastBaselineAnchor];
      v32 = [(UIView *)self topAnchor];
      v33 = [v31 constraintEqualToAnchor:v32 constant:20.0];
      [v60 addObject:v33];
    }

    else
    {
      v31 = [(UIView *)v30 centerYAnchor];
      v32 = [(UIView *)self topAnchor];
      v33 = [v31 constraintEqualToAnchor:v32 constant:13.0];
      v62[0] = v33;
      v34 = [(UIView *)self->_imageView heightAnchor];
      v35 = [v34 constraintLessThanOrEqualToConstant:21.0];
      v62[1] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
      [v60 addObjectsFromArray:v36];
    }
  }

  label = self->_label;
  if (label)
  {
    [(UILabel *)label setTextAlignment:1];
    v55 = [(UIView *)self->_label leadingAnchor];
    v56 = [(UITabBarButton *)self focusView];
    v53 = [v56 leadingAnchor];
    v51 = [v55 constraintEqualToAnchor:v53 constant:2.0];
    v61[0] = v51;
    v38 = [(UIView *)self->_label trailingAnchor];
    v39 = [(UITabBarButton *)self focusView];
    v40 = [v39 trailingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40 constant:-2.0];
    v61[1] = v41;
    v42 = [(UIView *)self->_label lastBaselineAnchor];
    v43 = [(UIView *)self topAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:36.0];
    v61[2] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
    [v60 addObjectsFromArray:v45];
  }

  [(UITabBarButton *)self setCarplayConstraints:v60];
  v46 = MEMORY[0x1E69977A0];
  v47 = [(UITabBarButton *)self carplayConstraints];
  [v46 activateConstraints:v47];
}

- (void)_appleTV_layoutSubviews
{
  [(UIView *)self bounds];
  v5 = v4;
  imageView = self->_imageView;
  if (imageView)
  {
    [(UIView *)imageView frame];
    v7 = self->_imageView;
    [(UIView *)self bounds];
    [(UITabBarSwappableImageView *)v7 sizeThatFits:v8, v9];
    if (v5 != 0.0)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"_UITabBarButton.m" lineNumber:1744 description:@"huh?"];
    }

    UIFloorToViewScale(self);
    UIFloorToViewScale(self);
    v11 = v10;
    UIFloorToViewScale(self);
    v13 = v12;
    UICeilToViewScale(self);
    v15 = v14;
    UICeilToViewScale(self);
    v17 = v16;
    [(UIImageView *)self->_imageView setFrame:v11, v13, v15, v16];
  }

  else
  {
    v11 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
  }

  label = self->_label;
  if (label)
  {
    [(UIView *)label frame];
    if (self->_imageView)
    {
      v28.origin.x = v11;
      v28.origin.y = v13;
      v28.size.width = v15;
      v28.size.height = v17;
      CGRectGetMaxX(v28);
    }

    [(UITabBarButton *)self titlePositionAdjustmentForState:[(UITabBarButton *)self _currentItemState]];
    UIFloorToViewScale(self);
    v20 = v19;
    UIFloorToViewScale(self);
    v22 = v21;
    UICeilToViewScale(self);
    v24 = v23;
    UICeilToViewScale(self);
    [(UILabel *)self->_label setFrame:v20, v22, v24, v25];
  }

  [(UITabBarButton *)self _updateSelectedIndicatorFrame];
}

- (CGSize)_horizontalLayout_sizeThatFits:(CGSize)a3
{
  [(UIView *)self bounds:a3.width];
  v5 = v4;
  [(UIView *)self->_label bounds];
  v7 = v6;
  v8 = _UIIsFourInch();
  v9 = 6.0;
  if (v8)
  {
    v9 = 5.0;
  }

  v10 = v7 + v9;
  [(UIView *)self->_imageView bounds];
  v12 = v10 + v11;
  v13 = v5;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self->_layoutStyle)
  {

    [(UITabBarButton *)self _horizontalLayout_sizeThatFits:a3.width, a3.height];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = UITabBarButton;
    [(UIView *)&v7 sizeThatFits:a3.width, a3.height];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_setCustomSelectedIndicatorImage:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_customSelectedIndicatorImage != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_customSelectedIndicatorImage, a3);
    selectedIndicator = self->_selectedIndicator;
    if (!selectedIndicator)
    {
      v8 = [(UITabBarButton *)self _isSelected];
      v6 = v10;
      if (!v8)
      {
        goto LABEL_6;
      }

      selectedIndicator = self->_selectedIndicator;
    }

    [(UIView *)selectedIndicator removeFromSuperview];
    v9 = self->_selectedIndicator;
    self->_selectedIndicator = 0;

    [(UITabBarButton *)self _showSelectedIndicator:1 changeSelection:0];
    v6 = v10;
  }

LABEL_6:
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if ((v4 & 0x20) != 0)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITabBarButton;
    v5 = [(UIControl *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (void)_sendFocusAction:(id)a3
{
  v5 = a3;
  v4 = [(UITabBarButton *)self _tabBar];
  [v4 _setPendingFocusAction:0];

  if (-[UIView isFocused](self, "isFocused") || [v5 BOOLValue])
  {
    [(UIControl *)self sendActionsForControlEvents:0x2000];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v11.receiver = self;
  v11.super_class = UITabBarButton;
  v6 = a3;
  [(UIView *)&v11 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];

  v8 = [(UIView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 3)
  {
    v10 = v7 == self || [(UITabBarButton *)self canBecomeFocused];
    [(UITabBarButton *)self _setShowsHighlightedState:v10];
    [(UITabBarButton *)self setHighlighted:v7 == self];
  }

  [(UITabBarButtonLabel *)self->_label updateTextColorsForState];
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  if ([v4 focusHeading] == 2 || objc_msgSend(v4, "focusHeading") == 1)
  {
    v5 = [(UITabBarButton *)self _tabBar];
    LODWORD(self) = [v5 _pendingFocusAction] ^ 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITabBarButton;
    LOBYTE(self) = [(UIView *)&v7 shouldUpdateFocusInContext:v4];
  }

  return self;
}

- (id)_tabBar
{
  v2 = self;
  while (1)
  {
    v3 = v2;
    v2 = [(UIView *)v2 superview];

    if (!v2)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v2;
      break;
    }
  }

  return v2;
}

- (CGRect)_responderSelectionRectForWindow:(id)a3
{
  v4 = a3;
  [(UITabBarButton *)self _responderSelectionRect];
  [(UIView *)self convertRect:v4 toCoordinateSpace:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_responderSelectionRect
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(UITabBarButton *)self isDefaultTVLayout])
  {
    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    MaxY = CGRectGetMaxY(v17);
    [(UIView *)self frame];
    v6 = v6 - v12;
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = v8;
    v18.size.height = v10;
    v10 = v10 + MaxY - CGRectGetMaxY(v18);
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [v7 _lastPreparedPress];
  if ([v9 type] != 4)
  {

    goto LABEL_5;
  }

  v10 = [(UIControl *)v8 isEnabled];

  if (!v10)
  {
LABEL_5:
    v11.receiver = v8;
    v11.super_class = UITabBarButton;
    [(UIResponder *)&v11 pressesBegan:v6 withEvent:v7];
    goto LABEL_6;
  }

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:v8 selector:sel__sendFocusAction object:0];
  [(UITabBarButton *)v8 _sendFocusAction:MEMORY[0x1E695E110]];
LABEL_6:
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [v7 _lastPreparedPress];
  if ([v9 type] == 4)
  {
    v10 = [(UIControl *)v8 isEnabled];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11.receiver = v8;
  v11.super_class = UITabBarButton;
  [(UIResponder *)&v11 pressesChanged:v6 withEvent:v7];
LABEL_6:
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [v7 _lastPreparedPress];
  if ([v9 type] == 4)
  {
    v10 = [(UIControl *)v8 isEnabled];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11.receiver = v8;
  v11.super_class = UITabBarButton;
  [(UIResponder *)&v11 pressesEnded:v6 withEvent:v7];
LABEL_6:
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [v7 _lastPreparedPress];
  if ([v9 type] == 4)
  {
    v10 = [(UIControl *)v8 isEnabled];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11.receiver = v8;
  v11.super_class = UITabBarButton;
  [(UIResponder *)&v11 pressesCancelled:v6 withEvent:v7];
LABEL_6:
}

- (id)titleTextAttributesForState:(int64_t)a3
{
  itemAppearanceData = self->_itemAppearanceData;
  if (!itemAppearanceData)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UITabBarButton.m" lineNumber:2184 description:@"This method should only be called when a UITabBarAppearance has been set"];

    itemAppearanceData = self->_itemAppearanceData;
  }

  v6 = [(UIView *)self traitCollection];
  v7 = [(_UITabBarItemData *)itemAppearanceData titleTextAttributesForState:a3 compatibleWithTraitCollection:v6];

  return v7;
}

- (UIOffset)titlePositionAdjustmentForState:(int64_t)a3
{
  if (self->_itemAppearanceData)
  {
    [(_UITabBarItemData *)self->_itemAppearanceData titlePositionAdjustmentForState:a3];
  }

  else
  {
    horizontal = self->_labelOffset.horizontal;
    vertical = self->_labelOffset.vertical;
  }

  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (id)defaultColorForState:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = 0;
  }

  else
  {
    if ([(UITabBarButton *)self isDefaultTVLayout])
    {
      if (a3 == 4)
      {
        +[UIColor blackColor];
      }

      else
      {
        [(UITabBarButton *)self _defaultUnselectedLabelTintColor];
      }
      v4 = ;
    }

    else
    {
      v4 = [UIColor colorWithWhite:0.57254902 alpha:0.85];
    }
  }

  return v4;
}

- (id)iconColorForState:(int64_t)a3
{
  itemAppearanceData = self->_itemAppearanceData;
  if (!itemAppearanceData)
  {
    contentTintColorsForState = self->_contentTintColorsForState;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:4 * (a3 == 2)];
    v7 = [(NSMutableDictionary *)contentTintColorsForState objectForKeyedSubscript:v8];
    goto LABEL_5;
  }

  v6 = [(_UITabBarItemData *)itemAppearanceData iconColorForState:a3];
  if (v6)
  {
    v7 = v6;
    v8 = v7;
LABEL_5:
    v10 = v7;
    goto LABEL_7;
  }

  v10 = [(UITabBarButton *)self defaultColorForState:a3];
  v8 = 0;
LABEL_7:

  return v10;
}

- (BOOL)isDefaultColor:(id)a3 forState:(int64_t)a4
{
  v6 = a3;
  v7 = [(UITabBarButton *)self defaultColorForState:a4];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v9 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0;
    if (v8 && v9)
    {
      v11 = [v8 isEqual:v9];
    }
  }

  return v11;
}

- (UIOffset)badgePositionAdjustmentForState:(int64_t)a3
{
  itemAppearanceData = self->_itemAppearanceData;
  if (itemAppearanceData)
  {
    [(_UITabBarItemData *)itemAppearanceData badgePositionAdjustmentForState:a3];
    horizontal = v5;
    vertical = v7;
  }

  else
  {
    horizontal = self->_badgeOffset.horizontal;
    vertical = self->_badgeOffset.vertical;
  }

  layoutStyle = self->_layoutStyle;
  v10 = [(UIView *)self window];
  v11 = [v10 windowScene];
  v12 = _UITabBarAdjustBadgePositionForStyleAndScene(layoutStyle, v11, horizontal, vertical).n128_u64[0];
  v14 = v13;

  v15 = *&v12;
  v16 = v14;
  result.vertical = v16;
  result.horizontal = v15;
  return result;
}

- (id)badgeBackgroundColorForState:(int64_t)a3
{
  if (self->_itemAppearanceData)
  {
    v3 = [(_UITabBarItemData *)self->_itemAppearanceData badgeBackgroundColorForState:a3];
  }

  else
  {
    v3 = self->_badgeColor;
  }

  return v3;
}

- (id)badgeTextAttributesForState:(int64_t)a3
{
  itemAppearanceData = self->_itemAppearanceData;
  if (itemAppearanceData)
  {
    v6 = [(UIView *)self traitCollection];
    itemAppearanceData = [itemAppearanceData badgeTextAttributesForState:a3 compatibleWithTraitCollection:v6];

    goto LABEL_17;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        badgeTextAttributesForState = self->_badgeTextAttributesForState;
        v8 = &unk_1EFE2FDE8;
        goto LABEL_13;
      }
    }

    else
    {
      itemAppearanceData = [(NSMutableDictionary *)self->_badgeTextAttributesForState objectForKeyedSubscript:&unk_1EFE2FDD0];
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        badgeTextAttributesForState = self->_badgeTextAttributesForState;
        v8 = &unk_1EFE2FE00;
        goto LABEL_13;
      case 3:
        badgeTextAttributesForState = self->_badgeTextAttributesForState;
        v8 = &unk_1EFE2FE18;
        goto LABEL_13;
      case 4:
        badgeTextAttributesForState = self->_badgeTextAttributesForState;
        v8 = &unk_1EFE2FE30;
LABEL_13:
        v9 = [(NSMutableDictionary *)badgeTextAttributesForState objectForKeyedSubscript:v8];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = [(NSMutableDictionary *)self->_badgeTextAttributesForState objectForKeyedSubscript:&unk_1EFE2FDD0];
        }

        itemAppearanceData = v11;

        break;
    }
  }

LABEL_17:

  return itemAppearanceData;
}

- (UIOffset)badgeTitlePositionAdjustmentForState:(int64_t)a3
{
  itemAppearanceData = self->_itemAppearanceData;
  if (itemAppearanceData)
  {
    [(_UITabBarItemData *)itemAppearanceData badgeTitlePositionAdjustmentForState:a3];
  }

  else
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  result.vertical = v5;
  result.horizontal = v4;
  return result;
}

- (BOOL)iconShouldUseVibrancyForState:(int64_t)a3
{
  if (!self->_itemVibrantEffect)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  layoutStyle = self->_layoutStyle;
  v7 = WeakRetained;
  v8 = v7;
  if (a3 == 2 || layoutStyle == 3 || layoutStyle == 4 && ![v7 _vibrantLabels])
  {
    v10 = 0;
    v11 = v8;
  }

  else
  {

    imageView = self->_imageView;
    if (self->_layoutStyle == 2)
    {
      [(UITabBarSwappableImageView *)imageView _unselectedCompactImage];
    }

    else
    {
      [(UITabBarSwappableImageView *)imageView _unselectedImage];
    }
    v11 = ;
    if ([v11 renderingMode] == 1)
    {
      v10 = 0;
      goto LABEL_10;
    }

    itemAppearanceData = self->_itemAppearanceData;
    if (!itemAppearanceData)
    {
      v10 = 1;
      goto LABEL_10;
    }

    v8 = [(_UITabBarItemData *)itemAppearanceData iconColorForState:a3];
    v10 = v8 == 0;
  }

LABEL_10:
  return v10;
}

- (BOOL)labelShouldUseVibrancyForState:(int64_t)a3
{
  if (!self->_itemVibrantEffect)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  layoutStyle = self->_layoutStyle;
  v7 = WeakRetained;
  v8 = v7;
  if (a3 == 2 || layoutStyle == 3 || layoutStyle == 4 && ([v7 _vibrantLabels] & 1) == 0)
  {

    return 0;
  }

  else
  {

    itemAppearanceData = self->_itemAppearanceData;
    if (itemAppearanceData)
    {
      return ![(_UITabBarItemData *)itemAppearanceData titleTextAttributesSpecifyColorForState:a3];
    }

    else
    {
      return 1;
    }
  }
}

- (void)_setAppearanceGuideClass:(Class)a3
{
  objc_storeStrong(&self->_appearanceGuideClass, a3);
  label = self->_label;

  [(UITabBarButtonLabel *)label _setAppearanceGuideClass:a3];
}

- (void)_UIAppearance_setBadgeColor:(id)a3
{
  v5 = a3;
  if (self->_badgeColor != v5)
  {
    objc_storeStrong(&self->_badgeColor, a3);
  }

  [(UITabBarButton *)self _updateBadgeAppearanceAndLayoutNow:0];
}

- (void)_UIAppearance_setBadgeTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v13 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  if (v13 || ([(NSMutableDictionary *)self->_badgeTextAttributesForState objectForKeyedSubscript:v6], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    badgeTextAttributesForState = self->_badgeTextAttributesForState;
    if (!badgeTextAttributesForState)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
      v10 = self->_badgeTextAttributesForState;
      self->_badgeTextAttributesForState = v9;

      badgeTextAttributesForState = self->_badgeTextAttributesForState;
    }

    v11 = [(NSMutableDictionary *)badgeTextAttributesForState objectForKeyedSubscript:v6];
    if (v11 != v13 && ([v13 isEqual:v11] & 1) == 0)
    {
      v12 = [v13 copy];
      [(NSMutableDictionary *)self->_badgeTextAttributesForState setObject:v12 forKeyedSubscript:v6];
    }

    [(UITabBarButton *)self _updateBadgeAppearanceAndLayoutNow:1];
  }
}

- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)a3
{
  if (self->_labelOffset.horizontal != a3.horizontal || self->_labelOffset.vertical != a3.vertical)
  {
    self->_labelOffset = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (UIOffset)_titlePositionAdjustment
{
  horizontal = self->_labelOffset.horizontal;
  vertical = self->_labelOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (void)_applyTabBarButtonAppearanceStorage:(id)a3 withTaggedSelectors:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_setAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey, v7, 1);
  }

  if (v6)
  {
    [(UITabBarButtonLabel *)self->_label _applyTabBarButtonAppearanceStorage:v6 withTaggedSelectors:v7];
    [v6 titleOffset];
    [(UITabBarButton *)self _setTitlePositionAdjustment:?];
    v8 = [v6 badgeColor];
    [(UITabBarButton *)self _setBadgeColor:v8];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__UITabBarButton__applyTabBarButtonAppearanceStorage_withTaggedSelectors___block_invoke;
    v9[3] = &unk_1E70F9438;
    v9[4] = self;
    [v6 enumerateBadgeTextAttributesWithBlock:v9];
  }
}

- (void)_setButtonTintColor:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  buttonTintColorsForState = self->_buttonTintColorsForState;
  v15 = v6;
  if (v6)
  {
    if (!buttonTintColorsForState)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_buttonTintColorsForState;
      self->_buttonTintColorsForState = v8;

      buttonTintColorsForState = self->_buttonTintColorsForState;
    }
  }

  else if (!buttonTintColorsForState)
  {
    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v11 = [(NSMutableDictionary *)buttonTintColorsForState objectForKey:v10];
  v12 = [v15 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    v13 = self->_buttonTintColorsForState;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    if (v15)
    {
      [(NSMutableDictionary *)v13 setObject:v15 forKey:v14];
    }

    else
    {
      [(NSMutableDictionary *)v13 removeObjectForKey:v14];
    }

    [(UITabBarButton *)self _updateToMatchCurrentState];
  }

LABEL_10:
}

- (id)_buttonTintColorForState:(unint64_t)a3
{
  buttonTintColorsForState = self->_buttonTintColorsForState;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)buttonTintColorsForState objectForKey:v4];

  return v5;
}

- (void)_setContentTintColor:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  contentTintColorsForState = self->_contentTintColorsForState;
  v15 = v6;
  if (v6)
  {
    if (!contentTintColorsForState)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_contentTintColorsForState;
      self->_contentTintColorsForState = v8;

      contentTintColorsForState = self->_contentTintColorsForState;
    }
  }

  else if (!contentTintColorsForState)
  {
    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v11 = [(NSMutableDictionary *)contentTintColorsForState objectForKey:v10];
  v12 = [v15 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    v13 = self->_contentTintColorsForState;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    if (v15)
    {
      [(NSMutableDictionary *)v13 setObject:v15 forKey:v14];
    }

    else
    {
      [(NSMutableDictionary *)v13 removeObjectForKey:v14];
    }

    [(UITabBarButton *)self _updateToMatchCurrentState];
    [(UITabBarButtonLabel *)self->_label updateTextColorsForState];
  }

LABEL_10:
}

- (id)_contentTintColorForState:(unint64_t)a3
{
  contentTintColorsForState = self->_contentTintColorsForState;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)contentTintColorsForState objectForKey:v4];

  return v5;
}

- (void)_setShowsHighlightedState:(BOOL)a3
{
  if (self->_showsHighlightedState != a3)
  {
    self->_showsHighlightedState = a3;
    [(UITabBarButton *)self _updateToMatchCurrentState];
  }
}

UISpringLoadedInteraction *__49__UITabBarButton_SpringLoading__setSpringLoaded___block_invoke()
{
  v0 = [[UISpringLoadedInteraction alloc] initWithActivationHandler:&__block_literal_global_434];

  return v0;
}

void __49__UITabBarButton_SpringLoading__setSpringLoaded___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 view];
  [v2 sendActionsForControlEvents:64];
}

@end