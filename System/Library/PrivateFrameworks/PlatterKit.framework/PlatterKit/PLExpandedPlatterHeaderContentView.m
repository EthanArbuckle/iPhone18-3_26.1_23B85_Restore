@interface PLExpandedPlatterHeaderContentView
- (CGRect)_titleLabelBoundsForSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_headerHeightForWidth:(double)a3;
- (double)_largeTextLabelBaselineOffsetFromBottom;
- (double)_largeTextTitleLabelBaselineOffset;
- (double)_titleFirstLineCenterY;
- (id)_ellipsisHighlightedBackgroundImage;
- (id)_newIconButton;
- (void)_configureIconButton:(id)a3 withIcon:(id)a4;
- (void)_configureUtilityButton;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_layoutTitleLabelWithScale:(double)a3;
- (void)_layoutUtilityButtonWithScale:(double)a3;
- (void)_updateStylingForTitleLabel:(id)a3;
- (void)_updateUtilityButtonFont;
@end

@implementation PLExpandedPlatterHeaderContentView

- (double)_headerHeightForWidth:(double)a3
{
  v5 = [(PLPlatterHeaderContentView *)self _usesLargeTextLayout];
  if (a3 <= 0.0 || !v5)
  {
    v8 = [(PLPlatterHeaderContentView *)self _titleLabelFont];
    [v8 _scaledValueForValue:16.0];
    v10 = v7 * 2.0 + 20.0;
  }

  else
  {
    [(PLExpandedPlatterHeaderContentView *)self _shouldReverseLayoutDirection];
    [(PLExpandedPlatterHeaderContentView *)self _titleLabelBoundsForSize:a3 + -16.0 + -56.0, 1.79769313e308];
    [(PLExpandedPlatterHeaderContentView *)self _largeTextLabelBaselineOffsetFromBottom];
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 scale];
    UIRoundToScale();
    v10 = v9;
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (a3.width <= 0.0)
  {
    width = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    width = a3.width;
    [(PLExpandedPlatterHeaderContentView *)self _headerHeightForWidth:?];
    v5 = v4;
  }

  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v10.receiver = self;
  v10.super_class = PLExpandedPlatterHeaderContentView;
  [(PLExpandedPlatterHeaderContentView *)&v10 _dynamicUserInterfaceTraitDidChange];
  v3 = +[PLMappedImageCache sharedCache];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"%@.ellipsesHighlightImage", v6];
  [v3 removeImageForKey:v7];

  v8 = [(PLPlatterHeaderContentView *)self _utilityButton];
  v9 = [(PLExpandedPlatterHeaderContentView *)self _ellipsisHighlightedBackgroundImage];
  [v8 setBackgroundImage:v9 forState:1];

  [(PLExpandedPlatterHeaderContentView *)self setNeedsLayout];
}

- (id)_newIconButton
{
  v8.receiver = self;
  v8.super_class = PLExpandedPlatterHeaderContentView;
  v3 = [(PLPlatterHeaderContentView *)&v8 _newIconButton];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v3 setPointerInteractionEnabled:1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__PLExpandedPlatterHeaderContentView__newIconButton__block_invoke;
    v7[3] = &unk_278425820;
    v7[4] = self;
    [v3 setPointerStyleProvider:v7];
  }

  return v3;
}

id __52__PLExpandedPlatterHeaderContentView__newIconButton__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D75B90]);
  v3 = [*(a1 + 32) iconButtons];
  v4 = [v3 firstObject];
  v5 = [v4 imageView];
  v6 = [v2 initWithView:v5];

  v7 = [MEMORY[0x277D75878] effectWithPreview:v6];
  v8 = [MEMORY[0x277D75890] styleWithEffect:v7 shape:0];

  return v8;
}

- (void)_configureIconButton:(id)a3 withIcon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLExpandedPlatterHeaderContentView *)self traitCollection];
  v9 = [v6 mt_imageWithDefaultShadowAttributesForUserInterfaceStyle:{objc_msgSend(v8, "userInterfaceStyle")}];

  v10.receiver = self;
  v10.super_class = PLExpandedPlatterHeaderContentView;
  [(PLPlatterHeaderContentView *)&v10 _configureIconButton:v7 withIcon:v9];
}

- (void)_updateStylingForTitleLabel:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [v3 _secondaryLabelColor];
  [v4 setTextColor:v5];
}

- (void)_updateUtilityButtonFont
{
  v3 = [(PLPlatterHeaderContentView *)self _utilityButton];

  if (v3)
  {
    v7 = [(PLPlatterHeaderContentView *)self utilityButton];
    v4 = [v7 titleLabel];
    v5 = [(PLPlatterHeaderContentView *)self _fontProvider];
    v6 = [v5 preferredFontForTextStyle:*MEMORY[0x277D76968] hiFontStyle:8];
    [v4 setFont:v6];
  }
}

- (id)_ellipsisHighlightedBackgroundImage
{
  v2 = +[PLMappedImageCache sharedCache];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@.ellipsesHighlightImage", v5];
  v7 = [v2 imageForKey:v6 generatingIfNecessaryWithBlock:&__block_literal_global_5];

  return v7;
}

id __73__PLExpandedPlatterHeaderContentView__ellipsisHighlightedBackgroundImage__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  BSRectWithSize();
  [v0 setBounds:?];
  v1 = [MEMORY[0x277D75348] _tertiaryLabelColor];
  [v0 setBackgroundColor:{objc_msgSend(v1, "CGColor")}];

  [v0 setCornerRadius:15.0];
  v2 = PLMainScreenScale();
  v6.height = 30.0;
  v6.width = 40.0;
  UIGraphicsBeginImageContextWithOptions(v6, 0, v2);
  [v0 renderInContext:UIGraphicsGetCurrentContext()];
  v3 = UIGraphicsGetImageFromCurrentImageContext();

  return v3;
}

- (void)_configureUtilityButton
{
  v16.receiver = self;
  v16.super_class = PLExpandedPlatterHeaderContentView;
  [(PLPlatterHeaderContentView *)&v16 _configureUtilityButton];
  v3 = MEMORY[0x277D755B8];
  v4 = PlatterKitFrameworkBundle();
  v5 = [v3 imageNamed:@"ellipsis" inBundle:v4];
  v6 = [MEMORY[0x277D75348] _secondaryLabelColor];
  v7 = [v5 _flatImageWithColor:v6];

  v8 = [(PLPlatterHeaderContentView *)self utilityButton];
  [v8 setImage:v7 forState:0];

  v9 = [(PLPlatterHeaderContentView *)self utilityButton];
  v10 = [(PLExpandedPlatterHeaderContentView *)self _ellipsisHighlightedBackgroundImage];
  [v9 setBackgroundImage:v10 forState:1];

  v11 = [(PLPlatterHeaderContentView *)self utilityButton];
  [v11 setAdjustsImageWhenHighlighted:0];

  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = [(PLPlatterHeaderContentView *)self utilityButton];
    [v14 setPointerInteractionEnabled:1];

    v15 = [(PLPlatterHeaderContentView *)self utilityButton];
    [v15 setPointerStyleProvider:&__block_literal_global_21];
  }

  [(PLExpandedPlatterHeaderContentView *)self _updateUtilityButtonVibrantStyling];
}

id __61__PLExpandedPlatterHeaderContentView__configureUtilityButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D75B90];
  v3 = a2;
  v4 = [[v2 alloc] initWithView:v3];
  v5 = [MEMORY[0x277D75858] effectWithPreview:v4];
  [v3 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [MEMORY[0x277D75888] shapeWithRoundedRect:v7 cornerRadius:{v9, v11, v13, 13.0}];
  v15 = [MEMORY[0x277D75890] styleWithEffect:v5 shape:v14];

  return v15;
}

- (void)_layoutTitleLabelWithScale:(double)a3
{
  v4 = [(PLPlatterHeaderContentView *)self _titleLabel];
  if (v4)
  {
    v47 = v4;
    [(PLExpandedPlatterHeaderContentView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(PLPlatterHeaderContentView *)self _usesLargeTextLayout];
    v14 = [(PLExpandedPlatterHeaderContentView *)self _shouldReverseLayoutDirection];
    if (v13)
    {
      [(PLExpandedPlatterHeaderContentView *)self _shouldReverseLayoutDirection];
      v49.origin.x = v6;
      v49.origin.y = v8;
      v49.size.width = v10;
      v49.size.height = v12;
      [(PLExpandedPlatterHeaderContentView *)self _titleLabelBoundsForSize:CGRectGetWidth(v49) + -16.0 + -56.0, 1.79769313e308];
      [v47 setBounds:?];
      [v47 frame];
      v45 = v16;
      v46 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(PLPlatterHeaderContentView *)self iconButtons];
      [v21 count];

      if (v14)
      {
        v50.origin.x = v6;
        v50.origin.y = v8;
        v50.size.width = v10;
        v50.size.height = v12;
        CGRectGetWidth(v50);
        v51.origin.y = v45;
        v51.origin.x = v46;
        v51.size.width = v18;
        v51.size.height = v20;
        CGRectGetWidth(v51);
      }

      [(PLExpandedPlatterHeaderContentView *)self _largeTextTitleLabelBaselineOffset];
      [v47 _firstLineBaselineOffsetFromBoundsTop];
    }

    else
    {
      [v47 sizeToFit];
      [v47 frame];
      v42 = v22;
      v43 = v23;
      v44 = v24;
      v26 = v25;
      v27 = [(PLPlatterHeaderContentView *)self _dateLabel];
      if (v27)
      {
        v28 = 72.0;
      }

      else
      {
        v29 = [(PLPlatterHeaderContentView *)self _utilityButton];
        if (v29)
        {
          v28 = 72.0;
        }

        else
        {
          v28 = 0.0;
        }
      }

      if ((v14 & 1) == 0)
      {
        v52.origin.x = v6;
        v52.origin.y = v8;
        v52.size.width = v10;
        v52.size.height = v12;
        v28 = CGRectGetMaxX(v52) - v28;
      }

      v30 = [(PLPlatterHeaderContentView *)self iconButtons];
      if ([v30 count])
      {
        v31 = 16.0;
      }

      else
      {
        v31 = 17.0;
      }

      if (v14)
      {
        v41 = v6;
        v53.origin.x = v6;
        v53.origin.y = v8;
        v53.size.width = v10;
        v53.size.height = v12;
        rect = v10;
        v40 = v12;
        v32 = CGRectGetWidth(v53) - v31;
        v54.origin.x = v42;
        v33 = v43;
        v34 = v44;
        v54.origin.y = v44;
        v54.size.width = v43;
        v54.size.height = v26;
        v35 = v32 - CGRectGetWidth(v54);
        if (v28 >= v35)
        {
          v36 = v28;
        }

        else
        {
          v36 = v35;
        }

        v55.origin.x = v36;
        v55.origin.y = v44;
        v55.size.width = v43;
        v55.size.height = v26;
        CGRectGetWidth(v55);
        v56.size.height = v40;
        v56.origin.x = v41;
        v56.origin.y = v8;
        v56.size.width = rect;
        CGRectGetMaxX(v56);
      }

      else
      {
        v57.origin.x = v31;
        v33 = v43;
        v34 = v44;
        v57.origin.y = v44;
        v57.size.width = v43;
        v57.size.height = v26;
        CGRectGetWidth(v57);
        v36 = v31;
      }

      v58.origin.x = v36;
      v58.origin.y = v34;
      v58.size.width = v33;
      v58.size.height = v26;
      CGRectGetMinX(v58);
      v37 = [v47 font];
      [v37 capHeight];
      v38 = [v47 font];
      [v38 _scaledValueForValue:16.0];
      [v47 _firstLineBaselineOffsetFromBoundsTop];
    }

    UIRectIntegralWithScale();
    [v47 setFrame:?];
    v4 = v47;
  }
}

- (void)_layoutUtilityButtonWithScale:(double)a3
{
  v24 = [(PLPlatterHeaderContentView *)self utilityButton];
  BSRectWithSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PLPlatterHeaderContentView *)self _utilityButtonHorizontalLayoutReference];
  if (v12 <= 0.0)
  {
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    Width = CGRectGetWidth(v27);
    v19 = [v24 imageForState:0];
    [v19 size];
    v21 = (Width - v20) * 0.5;

    if ([(PLExpandedPlatterHeaderContentView *)self _shouldReverseLayoutDirection])
    {
      [(PLExpandedPlatterHeaderContentView *)self _shouldReverseLayoutDirection];
      v14 = 16.0 - v21;
    }

    else
    {
      [(PLExpandedPlatterHeaderContentView *)self bounds];
      v22 = CGRectGetWidth(v28);
      [(PLExpandedPlatterHeaderContentView *)self _shouldReverseLayoutDirection];
      v14 = v21 + v22 + -16.0 + -40.0;
    }
  }

  else
  {
    v26.origin.x = v5;
    v26.origin.y = v7;
    v26.size.width = v9;
    v26.size.height = v11;
    CGRectGetMidY(v26);
    UIRectCenteredAboutPoint();
    v14 = v13;
    v7 = v15;
    v9 = v16;
    v11 = v17;
  }

  [(PLExpandedPlatterHeaderContentView *)self frame];
  [(PLExpandedPlatterHeaderContentView *)self _headerHeightForWidth:v23];
  if ([(PLPlatterHeaderContentView *)self _usesLargeTextLayout])
  {
    [(PLExpandedPlatterHeaderContentView *)self _titleFirstLineCenterY];
  }

  else
  {
    v29.origin.x = v14;
    v29.origin.y = v7;
    v29.size.width = v9;
    v29.size.height = v11;
    CGRectGetHeight(v29);
  }

  UIRectIntegralWithScale();
  [v24 setFrame:?];
}

- (double)_titleFirstLineCenterY
{
  v3 = [(PLPlatterHeaderContentView *)self _titleLabelFont];
  [v3 capHeight];
  v5 = v4;

  [(PLExpandedPlatterHeaderContentView *)self _largeTextTitleLabelBaselineOffset];
  return v6 + v5 * -0.5;
}

- (CGRect)_titleLabelBoundsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PLPlatterHeaderContentView *)self _titleLabel];
  [v5 sizeThatFits:{width, height}];
  BSRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)_largeTextTitleLabelBaselineOffset
{
  v2 = [(PLPlatterHeaderContentView *)self _titleLabelFont];
  [v2 _scaledValueForValue:16.5];
  v4 = v3;

  return v4;
}

- (double)_largeTextLabelBaselineOffsetFromBottom
{
  v2 = [(PLPlatterHeaderContentView *)self _titleLabelFont];
  [v2 _scaledValueForValue:6.5];
  v4 = v3;

  return v4;
}

@end