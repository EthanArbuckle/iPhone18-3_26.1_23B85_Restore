@interface SearchUIBackgroundColorView
- (SearchUIBackgroundColorView)initWithFrame:(CGRect)a3;
- (SearchUIBackgroundColorViewProtocol)delegate;
- (id)viewsToOverrideAppearance;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBackgroundImage:(id)a3;
- (void)setColor:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setShowsPlaceholderPlatterView:(BOOL)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)tlks_setCornerRadius:(double)a3 withStyle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAppearance:(id)a3 withColors:(id)a4;
- (void)updateWithSFCard:(id)a3;
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
  v3 = [(SearchUIBackgroundColorView *)self gradientView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SearchUIBackgroundColorView *)self gradientViewMaskView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(SearchUIBackgroundColorView *)self backgroundImageView];
  [v13 intrinsicContentSize];
  v15 = v14;
  v17 = v16;

  v18 = 0.0;
  if ([MEMORY[0x1E69D91A8] isLTR])
  {
    [(SearchUIBackgroundColorView *)self bounds];
    v18 = CGRectGetWidth(v21) - v15;
  }

  v19 = [(SearchUIBackgroundColorView *)self backgroundImageView];
  [v19 setFrame:{v18, 0.0, v15, v17}];
}

- (id)viewsToOverrideAppearance
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIBackgroundColorView *)self gradientView];
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v5 = [v4 mutableCopy];

  v6 = [(SearchUIBackgroundColorView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(SearchUIBackgroundColorView *)self delegate];
    v8 = [v7 viewContainingContent];

    if (!v8)
    {
      goto LABEL_5;
    }

    v6 = [(SearchUIBackgroundColorView *)self delegate];
    v9 = [v6 viewContainingContent];
    [v5 addObject:v9];
  }

LABEL_5:

  return v5;
}

- (SearchUIBackgroundColorViewProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SearchUIBackgroundColorView)initWithFrame:(CGRect)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SearchUIBackgroundColorView;
  v3 = [(SearchUIBackgroundColorView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69D91C8] viewWithProminence:3];
    [(SearchUIBackgroundColorView *)v3 setProminenceView:v4];
    [(SearchUIBackgroundColorView *)v3 setPlatterView:v4];
    [(SearchUIBackgroundColorView *)v3 addSubview:v4];
    [SearchUIAutoLayout fillContainerWithView:v4];
    v5 = objc_opt_new();
    v6 = *MEMORY[0x1E6979840];
    v7 = [v5 layer];
    [v7 setCompositingFilter:v6];

    [(SearchUIBackgroundColorView *)v3 setColorBlendView:v5];
    v8 = [(SearchUIBackgroundColorView *)v3 colorBlendView];
    [(SearchUIBackgroundColorView *)v3 addSubview:v8];

    v9 = [(SearchUIBackgroundColorView *)v3 colorBlendView];
    [SearchUIAutoLayout fillContainerWithView:v9];

    v10 = objc_opt_new();
    v11 = [MEMORY[0x1E69DC888] blackColor];
    v22[0] = v11;
    v12 = [MEMORY[0x1E69DC888] clearColor];
    v22[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [v10 setColors:v13];

    v14 = [v10 layer];
    [v14 setLocations:&unk_1F55DD4F0];

    [(SearchUIBackgroundColorView *)v3 setGradientViewMaskView:v10];
    v15 = objc_opt_new();
    [(SearchUIBackgroundColorView *)v3 setGradientView:v15];

    v16 = [(SearchUIBackgroundColorView *)v3 gradientView];
    [(SearchUIBackgroundColorView *)v3 addSubview:v16];

    v17 = [(SearchUIBackgroundColorView *)v3 gradientView];
    [SearchUIAutoLayout fillContainerWithView:v17];

    v18 = [(SearchUIBackgroundColorView *)v3 layer];
    [v18 setAllowsGroupOpacity:0];

    v19 = [(SearchUIBackgroundColorView *)v3 layer];
    [v19 setAllowsGroupBlending:0];

    [(SearchUIBackgroundColorView *)v3 setShowsPlaceholderPlatterView:1];
  }

  return v3;
}

- (void)updateAppearance:(id)a3 withColors:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(SearchUIBackgroundColorView *)self viewsToOverrideAppearance];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if ([v7 count])
        {
          [SearchUIBackgroundColorUtilities overrideAppearance:v6 onView:v13];
        }

        else
        {
          [MEMORY[0x1E69D9108] disableAppearanceOverrideForView:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(SearchUIBackgroundColorView *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(SearchUIBackgroundColorView *)self delegate];
    [v16 backgroundColorView:self updatedAppearance:v6];
  }
}

- (void)updateWithSFCard:(id)a3
{
  v4 = a3;
  v5 = [v4 backgroundImage];
  [(SearchUIBackgroundColorView *)self setBackgroundImage:v5];

  v6 = [v4 backgroundColor];

  [(SearchUIBackgroundColorView *)self setColor:v6];
}

- (void)setBackgroundImage:(id)a3
{
  v12 = a3;
  if (self->_backgroundImage != v12)
  {
    objc_storeStrong(&self->_backgroundImage, a3);
    v5 = [(SearchUIBackgroundColorView *)self backgroundImageView];

    if (!v5)
    {
      v6 = objc_opt_new();
      [v6 setShadowDisabled:1];
      [v6 setPlaceholderVisibility:2];
      [(SearchUIBackgroundColorView *)self setBackgroundImageView:v6];
      v7 = [(SearchUIBackgroundColorView *)self gradientView];
      [v7 addSubview:v6];
    }

    v8 = [(SearchUIBackgroundColorView *)self backgroundImageView];
    [v8 updateWithImage:v12];

    v9 = [(SearchUIBackgroundColorView *)self backgroundImageView];
    [v9 setHidden:v12 == 0];

    v10 = [(SearchUIBackgroundColorView *)self gradientView];
    v11 = [v10 layer];
    [v11 setMasksToBounds:v12 != 0];

    if (v12)
    {
      [(SearchUIBackgroundColorView *)self setNeedsLayout];
    }
  }
}

- (void)setShowsPlaceholderPlatterView:(BOOL)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (self->_showsPlaceholderPlatterView != a3)
  {
    self->_showsPlaceholderPlatterView = a3;
    if (a3 || (v3 = 0x1E69D9000, ([MEMORY[0x1E69D9240] isSiri] & 1) != 0) || (objc_msgSend(MEMORY[0x1E69D9240], "isIpad") & 1) == 0 && !objc_msgSend(MEMORY[0x1E69D9240], "isMacOS"))
    {
      v5 = [MEMORY[0x1E69DC888] blackColor];
      v15 = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      v8 = 0;
    }

    else
    {
      v3 = [MEMORY[0x1E69DC888] blackColor];
      v16[0] = v3;
      v4 = [MEMORY[0x1E69DC888] clearColor];
      v16[1] = v4;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
      v8 = 1;
    }

    v9 = [(SearchUIBackgroundColorView *)self colorBlendView];
    [v9 setColors:v7];

    if (v8)
    {

      v3 = [(SearchUIBackgroundColorView *)self gradientViewMaskView];
      v4 = [v3 layer];
      v10 = [v4 locations];
    }

    else
    {

      v10 = 0;
    }

    v11 = [(SearchUIBackgroundColorView *)self colorBlendView];
    v12 = [v11 layer];
    [v12 setLocations:v10];

    if (v8)
    {

      v13 = [(SearchUIBackgroundColorView *)self gradientViewMaskView];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(SearchUIBackgroundColorView *)self gradientView];
    [v14 setMaskView:v13];

    if (v8)
    {
    }
  }
}

- (void)tlks_setCornerRadius:(double)a3 withStyle:(id)a4
{
  v10.receiver = self;
  v10.super_class = SearchUIBackgroundColorView;
  v6 = a4;
  [(SearchUIBackgroundColorView *)&v10 tlks_setCornerRadius:v6 withStyle:a3];
  v7 = [(SearchUIBackgroundColorView *)self platterView:v10.receiver];
  [v7 tlks_setCornerRadius:v6 withStyle:a3];

  v8 = [(SearchUIBackgroundColorView *)self gradientView];
  [v8 tlks_setCornerRadius:v6 withStyle:a3];

  v9 = [(SearchUIBackgroundColorView *)self colorBlendView];
  [v9 tlks_setCornerRadius:v6 withStyle:a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUIBackgroundColorView;
  [(SearchUIBackgroundColorView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUIBackgroundColorView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUIBackgroundColorView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUIBackgroundColorView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SearchUIBackgroundColorView;
  [(SearchUIBackgroundColorView *)&v30 tlk_updateForAppearance:v4];
  v5 = [(SearchUIBackgroundColorView *)self prominenceView];
  [v5 setCustomColorAlpha:0.0];

  v6 = [(SearchUIBackgroundColorView *)self showsPlaceholderPlatterView];
  v7 = [(SearchUIBackgroundColorView *)self platterView];
  [v7 setAlpha:v6];

  v8 = [(SearchUIBackgroundColorView *)self colorBlendView];
  [v8 setAlpha:0.0];

  v9 = [(SearchUIBackgroundColorView *)self gradientView];
  [v9 setAlpha:0.0];

  v10 = [(SearchUIBackgroundColorView *)self color];
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && [v10 gradientType] == 0;
  v12 = [(SearchUIBackgroundColorView *)self gradientView];
  v13 = [v12 layer];

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

  [v13 setStartPoint:{v14, v15}];
  [v13 setEndPoint:{v17, v16}];
  if (v10)
  {
    v18 = objc_opt_new();
    [v18 setSfColor:v10];
    [v18 setAppearance:v4];
    v19 = dispatch_semaphore_create(0);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __55__SearchUIBackgroundColorView_tlk_updateForAppearance___block_invoke;
    v24[3] = &unk_1E85B4740;
    v25 = v19;
    v26 = v10;
    v27 = self;
    v29 = v11;
    v28 = v18;
    v20 = v18;
    v21 = v19;
    [SearchUIBackgroundColorUtilities resolvedColoringForColorRequest:v20 completionHandler:v24];
    dispatch_semaphore_signal(v21);

LABEL_20:
    goto LABEL_21;
  }

  [(SearchUIBackgroundColorView *)self updateAppearance:0 withColors:0];
  v22 = [(SearchUIBackgroundColorView *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v21 = [(SearchUIBackgroundColorView *)self delegate];
    [v21 backgroundColorView:self didFinishColorUpdate:0];
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

- (void)setColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    [(SearchUIBackgroundColorView *)self updateAppearance:0 withColors:0];
    v5 = 0;
  }

  if (([v5 isEqual:self->_color] & 1) == 0)
  {
    objc_storeStrong(&self->_color, a3);
    [(SearchUIBackgroundColorView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if ([(SearchUIBackgroundColorView *)self isHidden]!= a3)
  {
    v5.receiver = self;
    v5.super_class = SearchUIBackgroundColorView;
    [(SearchUIBackgroundColorView *)&v5 setHidden:v3];
    if (v3)
    {
      [(SearchUIBackgroundColorView *)self updateAppearance:0 withColors:0];
    }

    else
    {
      [(SearchUIBackgroundColorView *)self tlk_updateWithCurrentAppearance];
    }
  }
}

- (void)setMaskedCorners:(unint64_t)a3
{
  v3 = a3;
  self->_maskedCorners = a3;
  v5 = [SearchUIUtilities flippedCornerMaskFromCornerMask:?];
  v6 = [(SearchUIBackgroundColorView *)self layer];
  [v6 setMaskedCorners:v3];

  v7 = [(SearchUIBackgroundColorView *)self platterView];
  v8 = [v7 layer];
  v9 = [v8 isGeometryFlipped];
  v10 = [(SearchUIBackgroundColorView *)self layer];
  if (v9 != [v10 isGeometryFlipped])
  {
    v11 = v5;
  }

  else
  {
    v11 = v3;
  }

  v12 = [(SearchUIBackgroundColorView *)self platterView];
  v13 = [v12 layer];
  [v13 setMaskedCorners:v11];

  v14 = [(SearchUIBackgroundColorView *)self gradientView];
  v15 = [v14 layer];
  v16 = [v15 isGeometryFlipped];
  v17 = [(SearchUIBackgroundColorView *)self layer];
  if (v16 != [v17 isGeometryFlipped])
  {
    v18 = v5;
  }

  else
  {
    v18 = v3;
  }

  v19 = [(SearchUIBackgroundColorView *)self gradientView];
  v20 = [v19 layer];
  [v20 setMaskedCorners:v18];

  v26 = [(SearchUIBackgroundColorView *)self colorBlendView];
  v21 = [v26 layer];
  v22 = [v21 isGeometryFlipped];
  v23 = [(SearchUIBackgroundColorView *)self layer];
  if (v22 != [v23 isGeometryFlipped])
  {
    v3 = v5;
  }

  v24 = [(SearchUIBackgroundColorView *)self colorBlendView];
  v25 = [v24 layer];
  [v25 setMaskedCorners:v3];
}

@end