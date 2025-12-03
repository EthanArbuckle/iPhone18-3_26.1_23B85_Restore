@interface SearchUIBackgroundColorView
- (SearchUIBackgroundColorView)initWithFrame:(CGRect)frame;
- (SearchUIBackgroundColorViewProtocol)delegate;
- (id)viewsToOverrideAppearance;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBackgroundImage:(id)image;
- (void)setColor:(id)color;
- (void)setHidden:(BOOL)hidden;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setShowsPlaceholderPlatterView:(BOOL)view;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)tlks_setCornerRadius:(double)radius withStyle:(id)style;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAppearance:(id)appearance withColors:(id)colors;
- (void)updateWithSFCard:(id)card;
@end

@implementation SearchUIBackgroundColorView

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUIBackgroundColorView;
  [(SearchUIBackgroundColorView *)&v3 didMoveToWindow];
  [(SearchUIBackgroundColorView *)self tlk_updateWithCurrentAppearance];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = SearchUIBackgroundColorView;
  [(SearchUIBackgroundColorView *)&v20 layoutSubviews];
  gradientView = [(SearchUIBackgroundColorView *)self gradientView];
  [gradientView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  gradientViewMaskView = [(SearchUIBackgroundColorView *)self gradientViewMaskView];
  [gradientViewMaskView setFrame:{v5, v7, v9, v11}];

  backgroundImageView = [(SearchUIBackgroundColorView *)self backgroundImageView];
  [backgroundImageView intrinsicContentSize];
  v15 = v14;
  v17 = v16;

  v18 = 0.0;
  if ([MEMORY[0x1E69D91A8] isLTR])
  {
    [(SearchUIBackgroundColorView *)self bounds];
    v18 = CGRectGetWidth(v21) - v15;
  }

  backgroundImageView2 = [(SearchUIBackgroundColorView *)self backgroundImageView];
  [backgroundImageView2 setFrame:{v18, 0.0, v15, v17}];
}

- (id)viewsToOverrideAppearance
{
  v11[1] = *MEMORY[0x1E69E9840];
  gradientView = [(SearchUIBackgroundColorView *)self gradientView];
  v11[0] = gradientView;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v5 = [v4 mutableCopy];

  delegate = [(SearchUIBackgroundColorView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(SearchUIBackgroundColorView *)self delegate];
    viewContainingContent = [delegate2 viewContainingContent];

    if (!viewContainingContent)
    {
      goto LABEL_5;
    }

    delegate = [(SearchUIBackgroundColorView *)self delegate];
    viewContainingContent2 = [delegate viewContainingContent];
    [v5 addObject:viewContainingContent2];
  }

LABEL_5:

  return v5;
}

- (SearchUIBackgroundColorViewProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SearchUIBackgroundColorView)initWithFrame:(CGRect)frame
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SearchUIBackgroundColorView;
  v3 = [(SearchUIBackgroundColorView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69D91C8] viewWithProminence:3];
    [(SearchUIBackgroundColorView *)v3 setProminenceView:v4];
    [(SearchUIBackgroundColorView *)v3 setPlatterView:v4];
    [(SearchUIBackgroundColorView *)v3 addSubview:v4];
    [SearchUIAutoLayout fillContainerWithView:v4];
    v5 = objc_opt_new();
    v6 = *MEMORY[0x1E6979840];
    layer = [v5 layer];
    [layer setCompositingFilter:v6];

    [(SearchUIBackgroundColorView *)v3 setColorBlendView:v5];
    colorBlendView = [(SearchUIBackgroundColorView *)v3 colorBlendView];
    [(SearchUIBackgroundColorView *)v3 addSubview:colorBlendView];

    colorBlendView2 = [(SearchUIBackgroundColorView *)v3 colorBlendView];
    [SearchUIAutoLayout fillContainerWithView:colorBlendView2];

    v10 = objc_opt_new();
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v22[0] = blackColor;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v22[1] = clearColor;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [v10 setColors:v13];

    layer2 = [v10 layer];
    [layer2 setLocations:&unk_1F55DD4F0];

    [(SearchUIBackgroundColorView *)v3 setGradientViewMaskView:v10];
    v15 = objc_opt_new();
    [(SearchUIBackgroundColorView *)v3 setGradientView:v15];

    gradientView = [(SearchUIBackgroundColorView *)v3 gradientView];
    [(SearchUIBackgroundColorView *)v3 addSubview:gradientView];

    gradientView2 = [(SearchUIBackgroundColorView *)v3 gradientView];
    [SearchUIAutoLayout fillContainerWithView:gradientView2];

    layer3 = [(SearchUIBackgroundColorView *)v3 layer];
    [layer3 setAllowsGroupOpacity:0];

    layer4 = [(SearchUIBackgroundColorView *)v3 layer];
    [layer4 setAllowsGroupBlending:0];

    [(SearchUIBackgroundColorView *)v3 setShowsPlaceholderPlatterView:1];
  }

  return v3;
}

- (void)updateAppearance:(id)appearance withColors:(id)colors
{
  v22 = *MEMORY[0x1E69E9840];
  appearanceCopy = appearance;
  colorsCopy = colors;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  viewsToOverrideAppearance = [(SearchUIBackgroundColorView *)self viewsToOverrideAppearance];
  v9 = [viewsToOverrideAppearance countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(viewsToOverrideAppearance);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if ([colorsCopy count])
        {
          [SearchUIBackgroundColorUtilities overrideAppearance:appearanceCopy onView:v13];
        }

        else
        {
          [MEMORY[0x1E69D9108] disableAppearanceOverrideForView:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [viewsToOverrideAppearance countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  delegate = [(SearchUIBackgroundColorView *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate2 = [(SearchUIBackgroundColorView *)self delegate];
    [delegate2 backgroundColorView:self updatedAppearance:appearanceCopy];
  }
}

- (void)updateWithSFCard:(id)card
{
  cardCopy = card;
  backgroundImage = [cardCopy backgroundImage];
  [(SearchUIBackgroundColorView *)self setBackgroundImage:backgroundImage];

  backgroundColor = [cardCopy backgroundColor];

  [(SearchUIBackgroundColorView *)self setColor:backgroundColor];
}

- (void)setBackgroundImage:(id)image
{
  imageCopy = image;
  if (self->_backgroundImage != imageCopy)
  {
    objc_storeStrong(&self->_backgroundImage, image);
    backgroundImageView = [(SearchUIBackgroundColorView *)self backgroundImageView];

    if (!backgroundImageView)
    {
      v6 = objc_opt_new();
      [v6 setShadowDisabled:1];
      [v6 setPlaceholderVisibility:2];
      [(SearchUIBackgroundColorView *)self setBackgroundImageView:v6];
      gradientView = [(SearchUIBackgroundColorView *)self gradientView];
      [gradientView addSubview:v6];
    }

    backgroundImageView2 = [(SearchUIBackgroundColorView *)self backgroundImageView];
    [backgroundImageView2 updateWithImage:imageCopy];

    backgroundImageView3 = [(SearchUIBackgroundColorView *)self backgroundImageView];
    [backgroundImageView3 setHidden:imageCopy == 0];

    gradientView2 = [(SearchUIBackgroundColorView *)self gradientView];
    layer = [gradientView2 layer];
    [layer setMasksToBounds:imageCopy != 0];

    if (imageCopy)
    {
      [(SearchUIBackgroundColorView *)self setNeedsLayout];
    }
  }
}

- (void)setShowsPlaceholderPlatterView:(BOOL)view
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (self->_showsPlaceholderPlatterView != view)
  {
    self->_showsPlaceholderPlatterView = view;
    if (view || (blackColor2 = 0x1E69D9000, ([MEMORY[0x1E69D9240] isSiri] & 1) != 0) || (objc_msgSend(MEMORY[0x1E69D9240], "isIpad") & 1) == 0 && !objc_msgSend(MEMORY[0x1E69D9240], "isMacOS"))
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v15 = blackColor;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      v8 = 0;
    }

    else
    {
      blackColor2 = [MEMORY[0x1E69DC888] blackColor];
      v16[0] = blackColor2;
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      v16[1] = clearColor;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
      v8 = 1;
    }

    colorBlendView = [(SearchUIBackgroundColorView *)self colorBlendView];
    [colorBlendView setColors:v7];

    if (v8)
    {

      blackColor2 = [(SearchUIBackgroundColorView *)self gradientViewMaskView];
      clearColor = [blackColor2 layer];
      locations = [clearColor locations];
    }

    else
    {

      locations = 0;
    }

    colorBlendView2 = [(SearchUIBackgroundColorView *)self colorBlendView];
    layer = [colorBlendView2 layer];
    [layer setLocations:locations];

    if (v8)
    {

      gradientViewMaskView = [(SearchUIBackgroundColorView *)self gradientViewMaskView];
    }

    else
    {
      gradientViewMaskView = 0;
    }

    gradientView = [(SearchUIBackgroundColorView *)self gradientView];
    [gradientView setMaskView:gradientViewMaskView];

    if (v8)
    {
    }
  }
}

- (void)tlks_setCornerRadius:(double)radius withStyle:(id)style
{
  v10.receiver = self;
  v10.super_class = SearchUIBackgroundColorView;
  styleCopy = style;
  [(SearchUIBackgroundColorView *)&v10 tlks_setCornerRadius:styleCopy withStyle:radius];
  v7 = [(SearchUIBackgroundColorView *)self platterView:v10.receiver];
  [v7 tlks_setCornerRadius:styleCopy withStyle:radius];

  gradientView = [(SearchUIBackgroundColorView *)self gradientView];
  [gradientView tlks_setCornerRadius:styleCopy withStyle:radius];

  colorBlendView = [(SearchUIBackgroundColorView *)self colorBlendView];
  [colorBlendView tlks_setCornerRadius:styleCopy withStyle:radius];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUIBackgroundColorView;
  [(SearchUIBackgroundColorView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUIBackgroundColorView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUIBackgroundColorView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUIBackgroundColorView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v30.receiver = self;
  v30.super_class = SearchUIBackgroundColorView;
  [(SearchUIBackgroundColorView *)&v30 tlk_updateForAppearance:appearanceCopy];
  prominenceView = [(SearchUIBackgroundColorView *)self prominenceView];
  [prominenceView setCustomColorAlpha:0.0];

  showsPlaceholderPlatterView = [(SearchUIBackgroundColorView *)self showsPlaceholderPlatterView];
  platterView = [(SearchUIBackgroundColorView *)self platterView];
  [platterView setAlpha:showsPlaceholderPlatterView];

  colorBlendView = [(SearchUIBackgroundColorView *)self colorBlendView];
  [colorBlendView setAlpha:0.0];

  gradientView = [(SearchUIBackgroundColorView *)self gradientView];
  [gradientView setAlpha:0.0];

  color = [(SearchUIBackgroundColorView *)self color];
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && [color gradientType] == 0;
  gradientView2 = [(SearchUIBackgroundColorView *)self gradientView];
  layer = [gradientView2 layer];

  if (v11)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 0.5;
  }

  if (v11)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = 0.0;
  }

  if (v11)
  {
    v16 = 0.5;
  }

  else
  {
    v16 = 1.0;
  }

  if (v11)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.5;
  }

  [layer setStartPoint:{v14, v15}];
  [layer setEndPoint:{v17, v16}];
  if (color)
  {
    v18 = objc_opt_new();
    [v18 setSfColor:color];
    [v18 setAppearance:appearanceCopy];
    v19 = dispatch_semaphore_create(0);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __55__SearchUIBackgroundColorView_tlk_updateForAppearance___block_invoke;
    v24[3] = &unk_1E85B4740;
    v25 = v19;
    v26 = color;
    selfCopy = self;
    v29 = v11;
    v28 = v18;
    v20 = v18;
    delegate2 = v19;
    [SearchUIBackgroundColorUtilities resolvedColoringForColorRequest:v20 completionHandler:v24];
    dispatch_semaphore_signal(delegate2);

LABEL_20:
    goto LABEL_21;
  }

  [(SearchUIBackgroundColorView *)self updateAppearance:0 withColors:0];
  delegate = [(SearchUIBackgroundColorView *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    delegate2 = [(SearchUIBackgroundColorView *)self delegate];
    [delegate2 backgroundColorView:self didFinishColorUpdate:0];
    goto LABEL_20;
  }

LABEL_21:
}

void __55__SearchUIBackgroundColorView_tlk_updateForAppearance___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_semaphore_wait(*(a1 + 32), 0) == 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SearchUIBackgroundColorView_tlk_updateForAppearance___block_invoke_2;
  v9[3] = &unk_1E85B4718;
  v10 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v14 = *(a1 + 64);
  v13 = v7;
  v15 = v4;
  v8 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v9];
}

void __55__SearchUIBackgroundColorView_tlk_updateForAppearance___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) tintedUIColors];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) color];
  if (![v3 isEqual:v4])
  {

    goto LABEL_17;
  }

  v5 = [v2 count];

  if (!v5)
  {
LABEL_17:
    if (![v2 count])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [*(a1 + 40) applicationBundleIdentifier];

        if (!v18)
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __55__SearchUIBackgroundColorView_tlk_updateForAppearance___block_invoke_4;
          v27[3] = &unk_1E85B24C8;
          v27[4] = *(a1 + 48);
          [SearchUIUtilities performAnimatableChanges:v27];
        }
      }
    }

    goto LABEL_25;
  }

  if (*(a1 + 64) == 1 && ([MEMORY[0x1E69D91A8] isLTR] & 1) == 0)
  {
    v6 = [v2 reverseObjectEnumerator];
    v7 = [v6 allObjects];

    v2 = v7;
  }

  v8 = [*(a1 + 48) gradientView];
  [v8 setColors:v2];

  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) bestForegroundAppearanceForBackgroundColors];
  [v9 updateAppearance:v10 withColors:v2];

  if ([*(a1 + 32) tintStyle] == 3)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = [*(a1 + 32) originalUIColors];
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v33 = 0.0;
          [v16 getHue:0 saturation:&v33 brightness:0 alpha:0];
          if (v33 > 0.1)
          {
            v17 = 1;
            goto LABEL_23;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:{16, v33}];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_23:
  }

  else
  {
    v17 = 1;
  }

  v19 = *(a1 + 40);
  v20 = +[SearchUIBackgroundColorUtilities disambiguationInnerPlatterColor];
  LOBYTE(v19) = [v19 isEqual:v20];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __55__SearchUIBackgroundColorView_tlk_updateForAppearance___block_invoke_3;
  v28[3] = &unk_1E85B34B0;
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v17 & (v19 ^ 1);
  [SearchUIUtilities performAnimatableChanges:v28 animated:*(a1 + 65)];

LABEL_25:
  v24 = [*(a1 + 48) delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [*(a1 + 48) delegate];
    [v26 backgroundColorView:*(a1 + 48) didFinishColorUpdate:*(a1 + 40)];
  }
}

void __55__SearchUIBackgroundColorView_tlk_updateForAppearance___block_invoke_3(uint64_t a1)
{
  if ([MEMORY[0x1E69D9240] isSiri] && _UISolariumEnabled() && (v3 = *(a1 + 32), +[SearchUIBackgroundColorUtilities disambiguationInnerPlatterColor](SearchUIBackgroundColorUtilities, "disambiguationInnerPlatterColor"), v4 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = objc_msgSend(v3, "isEqual:", v4), v4, v3))
  {
    v5 = [*(a1 + 48) appearance];
    v6 = [v5 isDark];
    v7 = MEMORY[0x1E69798C0];
    if (!v6)
    {
      v7 = MEMORY[0x1E6979C30];
    }

    v8 = *v7;
    v9 = [*(a1 + 40) colorBlendView];
    v10 = [v9 layer];
    [v10 setCompositingFilter:v8];

    v11 = 0.4;
  }

  else
  {
    LOBYTE(v2) = *(a1 + 56);
    v12 = v2;
    v5 = [*(a1 + 40) colorBlendView];
    [v5 setAlpha:v12];
    v11 = 1.0;
  }

  v13 = [*(a1 + 40) gradientView];
  [v13 setAlpha:v11];

  v14 = [*(a1 + 40) platterView];
  [v14 setAlpha:0.0];
}

void __55__SearchUIBackgroundColorView_tlk_updateForAppearance___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) prominenceView];
  [v1 setCustomColorAlpha:0.13];
}

- (void)setColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (!colorCopy)
  {
    [(SearchUIBackgroundColorView *)self updateAppearance:0 withColors:0];
    colorCopy = 0;
  }

  if (([colorCopy isEqual:self->_color] & 1) == 0)
  {
    objc_storeStrong(&self->_color, color);
    [(SearchUIBackgroundColorView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(SearchUIBackgroundColorView *)self isHidden]!= hidden)
  {
    v5.receiver = self;
    v5.super_class = SearchUIBackgroundColorView;
    [(SearchUIBackgroundColorView *)&v5 setHidden:hiddenCopy];
    if (hiddenCopy)
    {
      [(SearchUIBackgroundColorView *)self updateAppearance:0 withColors:0];
    }

    else
    {
      [(SearchUIBackgroundColorView *)self tlk_updateWithCurrentAppearance];
    }
  }
}

- (void)setMaskedCorners:(unint64_t)corners
{
  cornersCopy = corners;
  self->_maskedCorners = corners;
  v5 = [SearchUIUtilities flippedCornerMaskFromCornerMask:?];
  layer = [(SearchUIBackgroundColorView *)self layer];
  [layer setMaskedCorners:cornersCopy];

  platterView = [(SearchUIBackgroundColorView *)self platterView];
  layer2 = [platterView layer];
  isGeometryFlipped = [layer2 isGeometryFlipped];
  layer3 = [(SearchUIBackgroundColorView *)self layer];
  if (isGeometryFlipped != [layer3 isGeometryFlipped])
  {
    v11 = v5;
  }

  else
  {
    v11 = cornersCopy;
  }

  platterView2 = [(SearchUIBackgroundColorView *)self platterView];
  layer4 = [platterView2 layer];
  [layer4 setMaskedCorners:v11];

  gradientView = [(SearchUIBackgroundColorView *)self gradientView];
  layer5 = [gradientView layer];
  isGeometryFlipped2 = [layer5 isGeometryFlipped];
  layer6 = [(SearchUIBackgroundColorView *)self layer];
  if (isGeometryFlipped2 != [layer6 isGeometryFlipped])
  {
    v18 = v5;
  }

  else
  {
    v18 = cornersCopy;
  }

  gradientView2 = [(SearchUIBackgroundColorView *)self gradientView];
  layer7 = [gradientView2 layer];
  [layer7 setMaskedCorners:v18];

  colorBlendView = [(SearchUIBackgroundColorView *)self colorBlendView];
  layer8 = [colorBlendView layer];
  isGeometryFlipped3 = [layer8 isGeometryFlipped];
  layer9 = [(SearchUIBackgroundColorView *)self layer];
  if (isGeometryFlipped3 != [layer9 isGeometryFlipped])
  {
    cornersCopy = v5;
  }

  colorBlendView2 = [(SearchUIBackgroundColorView *)self colorBlendView];
  layer10 = [colorBlendView2 layer];
  [layer10 setMaskedCorners:cornersCopy];
}

@end