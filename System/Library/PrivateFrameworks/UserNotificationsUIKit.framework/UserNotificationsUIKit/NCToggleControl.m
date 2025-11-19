@interface NCToggleControl
+ (double)effectiveHeight:(BOOL)a3;
+ (id)_labelFont:(BOOL)a3;
+ (id)dismissControlWithMaterialRecipe:(int64_t)a3 clearAllText:(id)a4;
+ (id)showLessControlWithMaterialRecipe:(int64_t)a3 clearAllText:(id)a4 glyphOrientation:(int64_t)a5;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)clickInteractionPresenterShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_unexpandedFrame;
- (CGSize)_cachedEffectiveMaxExpandedSize;
- (CGSize)_cachedEffectiveMaxUnexpandedSize;
- (CGSize)_effectiveExpandedSize;
- (CGSize)_effectiveGlyphSize;
- (CGSize)_effectiveUnexpandedSize;
- (CGSize)_sizeThatFits:(CGSize)a3 whenExpanded:(BOOL)a4;
- (NCToggleControlDelegate)delegate;
- (NCToggleControlPair)_managingPair;
- (NSString)preferredContentSizeCategory;
- (double)_effectiveHeight;
- (double)_effectiveInternalPadding;
- (double)_effectiveLeadingTrailingPadding;
- (double)_effectiveValueForMinValue:(double)a3 withFont:(id)a4;
- (id)_labelFont;
- (id)containerViewForClickInteractionPresenter:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_configureTitleLabelIfNecessaryWithTitle:(id)a3;
- (void)_handleSecondaryClickEventForGestureRecognizer:(id)a3;
- (void)_handleTouchUpInsideWithEvent:(id)a3;
- (void)_sendActionsForEvents:(unint64_t)a3 withEvent:(id)a4;
- (void)_updateTitleLabelTextAttributes;
- (void)addTarget:(id)a3 forPreviewInteractionPresentedContentWithAction:(SEL)a4;
- (void)clickInteractionPresenterDidBeginInteraction:(id)a3;
- (void)clickInteractionPresenterDidCommitToPresentation:(id)a3;
- (void)clickInteractionPresenterDidDismiss:(id)a3;
- (void)clickInteractionPresenterDidPresent:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setClearAllText:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setVisualStyle:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NCToggleControl

+ (id)dismissControlWithMaterialRecipe:(int64_t)a3 clearAllText:(id)a4
{
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___NCToggleControl;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v14, sel_dismissControlWithMaterialRecipe_, a3);
  v6[67] = 1;
  v7 = NCUserNotificationsUIKitFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR" value:&stru_282FE84F8 table:{0, v14.receiver, v14.super_class}];
  [v6 setTitle:v8];

  [v6 setClearAllText:v5];
  [v6 setAnchorEdge:2];
  [v6 setExpanded:0];
  [v6 setAccessibilityIdentifier:@"clear-button"];
  v9 = [MEMORY[0x277D75418] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1)
  {
    v11 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v6];
    [v6 setPointerInteraction:v11];
    [v6 addInteraction:v11];
    v12 = objc_alloc_init(NCSecondaryClickGestureRecognizer);
    [v6 addGestureRecognizer:v12];
    [(NCSecondaryClickGestureRecognizer *)v12 addTarget:v6 action:sel__handleSecondaryClickEventForGestureRecognizer_];
  }

  return v6;
}

+ (id)showLessControlWithMaterialRecipe:(int64_t)a3 clearAllText:(id)a4 glyphOrientation:(int64_t)a5
{
  v8 = a4;
  v9 = [[a1 alloc] initWithMaterialRecipe:a3];
  v9[67] = 2;
  v10 = MEMORY[0x277D755B8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v10 imageNamed:@"chev" inBundle:v11 compatibleWithTraitCollection:0];
  v13 = [v12 imageWithRenderingMode:2];

  v14 = [v13 CGImage];
  v15 = MEMORY[0x277D755B8];
  [v13 scale];
  v16 = [v15 imageWithCGImage:v14 scale:a5 orientation:?];

  [v9 setGlyph:v16];
  v17 = NCUserNotificationsUIKitFrameworkBundle();
  v18 = [v17 localizedStringForKey:@"NOTIFICATION_LIST_SHOW_LESS" value:&stru_282FE84F8 table:0];
  [v9 setTitle:v18];

  [v9 setClearAllText:v8];
  [v9 setAnchorEdge:2];
  [v9 setGlyphAlwaysVisible:1];
  [v9 setExpanded:1];
  v19 = [MEMORY[0x277D75418] currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 1)
  {
    v21 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v9];
    [v9 setPointerInteraction:v21];
    [v9 addInteraction:v21];
  }

  return v9;
}

- (void)dealloc
{
  [(NCToggleControl *)self dismissModalFullScreenIfNeeded];
  v3.receiver = self;
  v3.super_class = NCToggleControl;
  [(NCToggleControl *)&v3 dealloc];
}

+ (double)effectiveHeight:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(v6);

  if (IsAX)
  {
    v8 = 21.0;
  }

  else
  {
    v8 = 34.0;
  }

  v9 = [a1 _labelFont:v3];
  [v9 _scaledValueForValue:v8];
  if (v10 > v8)
  {
    v8 = v10;
  }

  return v8;
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  v4 = [(NCToggleControl *)self title];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(NCToggleControl *)self _configureTitleLabelIfNecessaryWithTitle:v6];
  }
}

- (void)setClearAllText:(id)a3
{
  objc_storeStrong(&self->_clearAllText, a3);
  v5 = a3;
  [(NCClickInteractionPresenter *)self->_previewInteractionPlatterPresenter setTitle:v5];
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    v4 = [(NCToggleControl *)self pointerInteraction];
    [v4 invalidate];

    [(NCToggleControl *)self setNeedsLayout];
    if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
    {

      [(NCToggleControl *)self layoutIfNeeded];
    }
  }
}

- (void)addTarget:(id)a3 forPreviewInteractionPresentedContentWithAction:(SEL)a4
{
  v10 = a3;
  if ([(NCToggleControl *)self _toggleControlType]== 1)
  {
    v6 = [[NCClickInteractionPresenter alloc] initWithTitle:self->_clearAllText sourceView:self materialRecipe:[(PLGlyphControl *)self materialRecipe]];
    previewInteractionPlatterPresenter = self->_previewInteractionPlatterPresenter;
    self->_previewInteractionPlatterPresenter = v6;

    [(NCClickInteractionPresenter *)self->_previewInteractionPlatterPresenter setTitle:self->_clearAllText];
    v8 = self->_previewInteractionPlatterPresenter;
    v9 = [(NCToggleControl *)self traitCollection];
    -[NCClickInteractionPresenter setOverrideUserInterfaceStyle:](v8, "setOverrideUserInterfaceStyle:", [v9 userInterfaceStyle]);

    [(NCClickInteractionPresenter *)self->_previewInteractionPlatterPresenter addTarget:v10 action:a4];
    [(NCClickInteractionPresenter *)self->_previewInteractionPlatterPresenter setDelegate:self];
  }
}

- (void)setVisualStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = NCToggleControl;
  [(PLGlyphControl *)&v4 setVisualStyle:a3];
  [(NCToggleControl *)self _updateTitleLabelVisualStyling];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8.receiver = self;
  v8.super_class = NCToggleControl;
  result = [(NCToggleControl *)&v8 pointInside:a4 withEvent:?];
  if (!self->_expanded)
  {
    [(NCToggleControl *)self _unexpandedFrame];
    v9.x = x;
    v9.y = y;
    return CGRectContainsPoint(v10, v9);
  }

  return result;
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = NCToggleControl;
  [(PLGlyphControl *)&v58 layoutSubviews];
  expanded = self->_expanded;
  v4 = [(NCToggleControl *)self _shouldReverseLayoutDirection];
  v5 = [MEMORY[0x277D75D18] _isInRetargetableAnimationBlock];
  [(NCToggleControl *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(PLGlyphControl *)self _glyphView];
  [(NCToggleControl *)self _unexpandedFrame];
  v16 = v15;
  v18 = v17;
  v19 = v9;
  v21 = v20;
  v23 = v22;
  v24 = v13;
  v57 = v11;
  v25 = v11;
  v26 = v19;
  v27 = v7;
  rect = v19;
  if (v14)
  {
    [(NCToggleControl *)self _effectiveGlyphSize];
    BSRectWithSize();
    v49 = _NCMainScreenScale();
    UIRectCenteredIntegralRectScale();
    v28 = [v14 setFrame:*&v49];
    if (!self->_glyphAlwaysVisible)
    {
      v29 = 1.0;
      if (expanded)
      {
        v29 = 0.0;
      }

      if (v5)
      {
        __33__NCToggleControl_layoutSubviews__block_invoke(v29, 1.0, v28, v14);
      }

      else
      {
        [v14 setAlpha:v29];
      }
    }

    v24 = v13;
    v25 = v57;
    v19 = rect;
    v26 = rect;
    v27 = v7;
    if (!expanded)
    {
      v24 = v23;
      v25 = v21;
      v26 = v18;
      v27 = v16;
    }
  }

  v55 = v26;
  v56 = v25;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    v51 = v24;
    v52 = v18;
    v53 = v16;
    if (self->_glyphAlwaysVisible)
    {
      v31 = self->_anchorEdge == 0;
      [(UILabel *)titleLabel sizeThatFits:v57, v13];
      BSRectWithSize();
      UIRectCenteredIntegralRect();
      v34 = v33;
      v35 = v13;
      v37 = v36;
      v39 = v38;
      if ((v4 ^ v31))
      {
        v50 = v32;
        v59.origin.x = v7;
        v59.origin.y = rect;
        v59.size.width = v57;
        v59.size.height = v35;
        Width = CGRectGetWidth(v59);
        [(NCToggleControl *)self _effectiveLeadingTrailingPadding];
        v42 = Width - v41;
        v60.origin.x = v50;
        v60.origin.y = v34;
        v60.size.width = v37;
        v60.size.height = v39;
        v7 = v42 - CGRectGetWidth(v60);
      }

      else
      {
        [(NCToggleControl *)self _effectiveLeadingTrailingPadding];
        v7 = v43;
      }
    }

    else
    {
      v34 = v19;
      v39 = v13;
      v37 = v57;
    }

    [(UILabel *)self->_titleLabel setFrame:v7, v34, v37, v39];
    if (expanded)
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 0.0;
    }

    v45 = self->_titleLabel;
    if (v5)
    {
      v46 = [(UILabel *)self->_titleLabel text];
      v47 = [v46 length];
      __33__NCToggleControl_layoutSubviews__block_invoke(v44, v47, v47, v45);
    }

    else
    {
      [(UILabel *)self->_titleLabel setAlpha:v44];
    }

    v18 = v52;
    v16 = v53;
    v24 = v51;
  }

  v48 = [(PLGlyphControl *)self _backgroundMaterialView];
  [v48 setFrame:{v27, v55, v56, v24}];

  [(NCClickInteractionPresenter *)self->_previewInteractionPlatterPresenter setSourceViewVisibleRect:v16, v18, v21, v23];
}

void __33__NCToggleControl_layoutSubviews__block_invoke(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = a1;
  v7 = MEMORY[0x277D75D18];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __33__NCToggleControl_layoutSubviews__block_invoke_2;
  v12 = &unk_2783722B8;
  v15 = a1;
  v8 = v6;
  v16 = a2;
  v13 = v8;
  v14 = &v17;
  [v7 performWithoutAnimation:&v9];
  [v8 setAlpha:{v18[3], v9, v10, v11, v12}];

  _Block_object_dispose(&v17, 8);
}

double __33__NCToggleControl_layoutSubviews__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) <= 0.0)
  {
    result = *(a1 + 56) * -0.5;
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    [*(a1 + 32) setAlpha:*(a1 + 56) * -0.25];
  }

  return result;
}

- (void)_sendActionsForEvents:(unint64_t)a3 withEvent:(id)a4
{
  self->_expandedPriorToControlEvent = self->_expanded;
  v4.receiver = self;
  v4.super_class = NCToggleControl;
  [(PLGlyphControl *)&v4 _sendActionsForEvents:a3 withEvent:a4];
}

- (void)_handleTouchUpInsideWithEvent:(id)a3
{
  v4 = a3;
  if (![(NCClickInteractionPresenter *)self->_previewInteractionPlatterPresenter isPresented])
  {
    expandedPriorToControlEvent = self->_expandedPriorToControlEvent;
    WeakRetained = objc_loadWeakRetained(&self->_managingPair);
    [WeakRetained _handleTouchUpInside:self withEvent:v4];
    if (expandedPriorToControlEvent)
    {
      v11.receiver = self;
      v11.super_class = NCToggleControl;
      [(PLGlyphControl *)&v11 _handleTouchUpInsideWithEvent:v4];
    }

    else if (!WeakRetained)
    {
      expanded = self->_expanded;
      v8 = objc_opt_class();
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __49__NCToggleControl__handleTouchUpInsideWithEvent___block_invoke;
      v9[3] = &unk_27836F898;
      v9[4] = self;
      v10 = expanded;
      [v8 performWithDefaultExpansionAnimation:v9 completion:0];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = NCToggleControl;
  [(NCToggleControl *)&v6 traitCollectionDidChange:a3];
  previewInteractionPlatterPresenter = self->_previewInteractionPlatterPresenter;
  v5 = [(NCToggleControl *)self traitCollection];
  -[NCClickInteractionPresenter setOverrideUserInterfaceStyle:](previewInteractionPlatterPresenter, "setOverrideUserInterfaceStyle:", [v5 userInterfaceStyle]);

  [(NCClickInteractionPresenter *)self->_previewInteractionPlatterPresenter contentSizeCategoryDidChange];
}

- (id)containerViewForClickInteractionPresenter:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained containerViewForToggleControlClickInteractionPresentedContent:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)clickInteractionPresenterShouldBegin:(id)a3
{
  if ([(NCToggleControl *)self _toggleControlType]== 1)
  {
    return ![(NCToggleControl *)self isExpanded];
  }

  else
  {
    return 1;
  }
}

- (void)clickInteractionPresenterDidCommitToPresentation:(id)a3
{
  [(NCToggleControl *)self cancelTrackingWithEvent:0];

  [(NCToggleControl *)self setEnabled:0];
}

- (void)clickInteractionPresenterDidBeginInteraction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained toggleControlDidBeginClickInteraction:self];
  }
}

- (void)clickInteractionPresenterDidPresent:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained toggleControlDidPresentClickInteractionPresentedContent:self];
  }
}

- (void)clickInteractionPresenterDidDismiss:(id)a3
{
  [(NCToggleControl *)self setEnabled:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained toggleControlDidDismssClickInteractionPresentedContent:self];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(NCToggleControl *)self adjustForContentSizeCategoryChange];
  }
}

- (NSString)preferredContentSizeCategory
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  if (!preferredContentSizeCategory)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, *MEMORY[0x277D76860]);
    preferredContentSizeCategory = self->_preferredContentSizeCategory;
  }

  return preferredContentSizeCategory;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [(NCToggleControl *)self preferredContentSizeCategory];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(NCToggleControl *)self setPreferredContentSizeCategory:v4];
    v7 = *MEMORY[0x277CBF3A8];
    self->_cachedEffectiveMaxUnexpandedSize = *MEMORY[0x277CBF3A8];
    self->_cachedEffectiveMaxExpandedSize = v7;
    [(NCToggleControl *)self _updateTitleLabelTextAttributes];
    [(NCToggleControl *)self setNeedsLayout];
  }

  return v6 ^ 1;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  if ([(NCToggleControl *)self isExpanded:a3])
  {
    [(NCToggleControl *)self bounds];
  }

  else
  {
    [(NCToggleControl *)self _unexpandedFrame];
  }

  v6 = MEMORY[0x277D75880];

  return [v6 regionWithRect:@"notification-list-control" identifier:?];
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = MEMORY[0x277D75B90];
  v6 = a4;
  v7 = [[v5 alloc] initWithView:self];
  v8 = [MEMORY[0x277D75878] effectWithPreview:v7];
  [v6 rect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(NCToggleControl *)self superview];
  [(NCToggleControl *)self convertRect:v17 toView:v10, v12, v14, v16];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = MEMORY[0x277D75888];
  [(NCToggleControl *)self _effectiveHeight];
  v28 = [v26 shapeWithRoundedRect:v19 cornerRadius:{v21, v23, v25, v27 * 0.5}];
  v29 = [MEMORY[0x277D75890] styleWithEffect:v8 shape:v28];

  return v29;
}

- (void)_handleSecondaryClickEventForGestureRecognizer:(id)a3
{
  if ([a3 state] == 1)
  {
    previewInteractionPlatterPresenter = self->_previewInteractionPlatterPresenter;

    [(NCClickInteractionPresenter *)previewInteractionPlatterPresenter presentModalFullScreen];
  }
}

+ (id)_labelFont:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [MEMORY[0x277CF0D60] preferredFontProvider];
  }

  else
  {
    [MEMORY[0x277CF0D60] defaultFontProvider];
  }
  v4 = ;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 preferredContentSizeCategory];

  v7 = v6;
  if (v3)
  {
    v8 = *MEMORY[0x277D767F8];
    if (UIContentSizeCategoryCompareToCategory(v6, *MEMORY[0x277D767F8]) == NSOrderedDescending)
    {
      v7 = v8;
    }

    else
    {
      v7 = v6;
    }
  }

  v9 = [v4 preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:8 contentSizeCategory:v7];

  return v9;
}

- (id)_labelFont
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel font];
  }

  else
  {
    [objc_opt_class() _labelFont:{-[NCToggleControl adjustsFontForContentSizeCategory](self, "adjustsFontForContentSizeCategory")}];
  }
  v4 = ;

  return v4;
}

- (void)_updateTitleLabelTextAttributes
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    v4 = [objc_opt_class() _labelFont:{-[NCToggleControl adjustsFontForContentSizeCategory](self, "adjustsFontForContentSizeCategory")}];
    [(UILabel *)titleLabel setFont:v4];

    [(NCToggleControl *)self setNeedsLayout];
  }
}

- (void)_configureTitleLabelIfNecessaryWithTitle:(id)a3
{
  v4 = a3;
  if (!self->_titleLabel)
  {
    v7 = v4;
    v4 = [v4 length];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D756B8]);
      titleLabel = self->_titleLabel;
      self->_titleLabel = v5;

      [(UILabel *)self->_titleLabel setText:v7];
      [(UILabel *)self->_titleLabel setTextAlignment:1];
      [(UILabel *)self->_titleLabel setContentMode:4];
      [(NCToggleControl *)self _updateTitleLabelTextAttributes];
      [(NCToggleControl *)self _updateTitleLabelVisualStyling];
      [(NCToggleControl *)self addSubview:self->_titleLabel];
      v4 = [(NCToggleControl *)self setNeedsLayout];
    }
  }

  MEMORY[0x2821F96F8](v4);
}

- (double)_effectiveValueForMinValue:(double)a3 withFont:(id)a4
{
  [a4 _scaledValueForValue:?];
  if (result <= a3)
  {
    return a3;
  }

  return result;
}

- (double)_effectiveHeight
{
  v3 = objc_opt_class();
  v4 = [(NCToggleControl *)self adjustsFontForContentSizeCategory];

  [v3 effectiveHeight:v4];
  return result;
}

- (double)_effectiveLeadingTrailingPadding
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(v4);

  if (IsAX)
  {
    v6 = 6.0;
  }

  else
  {
    v6 = 12.0;
  }

  v7 = [(NCToggleControl *)self _labelFont];
  [(NCToggleControl *)self _effectiveValueForMinValue:v7 withFont:v6];
  v9 = v8;

  return v9;
}

- (double)_effectiveInternalPadding
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(v4);

  if (IsAX)
  {
    v6 = 3.0;
  }

  else
  {
    v6 = 6.0;
  }

  v7 = [(NCToggleControl *)self _labelFont];
  [(NCToggleControl *)self _effectiveValueForMinValue:v7 withFont:v6];
  v9 = v8;

  return v9;
}

- (CGSize)_cachedEffectiveMaxExpandedSize
{
  p_cachedEffectiveMaxExpandedSize = &self->_cachedEffectiveMaxExpandedSize;
  width = self->_cachedEffectiveMaxExpandedSize.width;
  height = self->_cachedEffectiveMaxExpandedSize.height;
  if (width == 0.0 && height == 0.0)
  {
    width = _MaxToggleControlSize(1, [(NCToggleControl *)self adjustsFontForContentSizeCategory]);
    p_cachedEffectiveMaxExpandedSize->width = width;
    p_cachedEffectiveMaxExpandedSize->height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_effectiveExpandedSize
{
  WeakRetained = objc_loadWeakRetained(&self->_managingPair);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([(NCToggleControl *)self _toggleControlType]== 1)
    {

LABEL_5:

      [(NCToggleControl *)self _cachedEffectiveMaxExpandedSize];
      goto __NCToggleControl__effectiveExpandedSize_;
    }

    v5 = [(NCToggleControl *)self _toggleControlType];

    if (v5 == 2)
    {
      goto LABEL_5;
    }
  }

  [(NCToggleControl *)self _sizeThatFits:1 whenExpanded:1.79769313e308, 1.79769313e308];
__NCToggleControl__effectiveExpandedSize_:
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)_cachedEffectiveMaxUnexpandedSize
{
  p_cachedEffectiveMaxUnexpandedSize = &self->_cachedEffectiveMaxUnexpandedSize;
  width = self->_cachedEffectiveMaxUnexpandedSize.width;
  height = self->_cachedEffectiveMaxUnexpandedSize.height;
  if (width == 0.0 && height == 0.0)
  {
    [NCToggleControl effectiveHeight:[(NCToggleControl *)self adjustsFontForContentSizeCategory]];
    height = width;
    p_cachedEffectiveMaxUnexpandedSize->width = width;
    p_cachedEffectiveMaxUnexpandedSize->height = width;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_effectiveUnexpandedSize
{
  if ([(NCToggleControl *)self _toggleControlType]== 1 || [(NCToggleControl *)self _toggleControlType]== 2)
  {

    [(NCToggleControl *)self _cachedEffectiveMaxUnexpandedSize];
  }

  else
  {

    [(NCToggleControl *)self _sizeThatFits:0 whenExpanded:1.79769313e308, 1.79769313e308];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_effectiveGlyphSize
{
  v3 = [(PLGlyphControl *)self glyph];
  [v3 size];
  v5 = v4;
  v7 = v6;

  if (v5 <= v7)
  {
    v5 = v7;
  }

  v8 = [(NCToggleControl *)self _labelFont];
  [(NCToggleControl *)self _effectiveValueForMinValue:v8 withFont:v5];
  v10 = v9;

  v11 = v10;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)_sizeThatFits:(CGSize)a3 whenExpanded:(BOOL)a4
{
  v4 = a4;
  [(NCToggleControl *)self _effectiveLeadingTrailingPadding:a3.width];
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    v7 = !v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(UILabel *)titleLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  }

  v8 = [(PLGlyphControl *)self _glyphView];
  v9 = v8;
  if (self->_titleLabel)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || !v4;
  if (v11)
  {
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  else if (self->_glyphAlwaysVisible)
  {
    [(NCToggleControl *)self _effectiveInternalPadding];
  }

  if (!v4 || self->_glyphAlwaysVisible)
  {
    [(NCToggleControl *)self _effectiveGlyphSize];
  }

LABEL_20:
  [(NCToggleControl *)self _effectiveHeight];
  _NCMainScreenScale();
  UISizeRoundToScale();
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGRect)_unexpandedFrame
{
  [(NCToggleControl *)self _effectiveUnexpandedSize];
  BSRectWithSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = self->_anchorEdge == 0;
  if ((([(NCToggleControl *)self _shouldReverseLayoutDirection]^ v11) & 1) == 0)
  {
    [(NCToggleControl *)self bounds];
    Width = CGRectGetWidth(v17);
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = v8;
    v18.size.height = v10;
    v4 = Width - CGRectGetWidth(v18);
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

- (NCToggleControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NCToggleControlPair)_managingPair
{
  WeakRetained = objc_loadWeakRetained(&self->_managingPair);

  return WeakRetained;
}

@end