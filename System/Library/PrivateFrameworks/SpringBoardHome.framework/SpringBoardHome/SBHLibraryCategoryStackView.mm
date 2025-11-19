@interface SBHLibraryCategoryStackView
- (CGRect)frameForStackedViewAtIndex:(unint64_t)a3;
- (CGRect)visibleContentFrame;
- (SBHLibraryCategoryStackView)initWithFrame:(CGRect)a3;
- (SBIconImageInfo)_innerIconImageInfo;
- (double)alphaForStackedViewAtIndex:(unint64_t)a3;
- (id)_scalingAnimationSettingsForStackedViewAtIndex:(unint64_t)a3 scale:(double *)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)makeBackgroundView;
- (id)matchingCategoryStackView;
- (id)succinctDescription;
- (unint64_t)_innerIconImageOptions;
- (void)_appendConfiguredPodBackgroundView;
- (void)_enumerateIconImageViewsUsingBlock:(id)a3;
- (void)_reconfigurePodBackgroundViews;
- (void)_removeLastPodBackgroundView;
- (void)_resetAllPodBackgroundViews;
- (void)_updateIconImageViewsAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setBackdropGroupName:(id)a3;
- (void)setDisplayedIconImageInfo:(SBIconImageInfo *)a3;
- (void)setEditing:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)setInnerIcons:(id)a3 animated:(BOOL)a4;
- (void)setNumberOfCategories:(unint64_t)a3;
- (void)setOverlapping:(BOOL)a3;
- (void)setPrefersFlatImageLayers:(BOOL)a3;
@end

@implementation SBHLibraryCategoryStackView

- (SBHLibraryCategoryStackView)initWithFrame:(CGRect)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = SBHLibraryCategoryStackView;
  v3 = [(SBHLibraryCategoryStackView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    podBackgroundViews = v3->_podBackgroundViews;
    v3->_podBackgroundViews = v4;

    v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    iconImageViews = v3->_iconImageViews;
    v3->_iconImageViews = v6;

    v3->_numberOfCategories = 1;
    v8 = +[SBHHomeScreenDomain rootSettings];
    v9 = [v8 iconAnimationSettings];
    v10 = [v9 libraryIndicatorIconSettings];
    iconSettings = v3->_iconSettings;
    v3->_iconSettings = v10;

    [(SBHLibraryCategoryStackView *)v3 _appendConfiguredPodBackgroundView];
    v12 = objc_opt_self();
    v18[0] = v12;
    v13 = objc_opt_self();
    v18[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v15 = [(SBHLibraryCategoryStackView *)v3 registerForTraitChanges:v14 withAction:sel__iconAppearanceDidChange];
  }

  return v3;
}

- (id)matchingCategoryStackView
{
  v3 = objc_alloc(objc_opt_class());
  [(SBHLibraryCategoryStackView *)self bounds];
  v4 = [v3 initWithFrame:?];
  [v4 setNumberOfCategories:{-[SBHLibraryCategoryStackView numberOfCategories](self, "numberOfCategories")}];
  [(SBHLibraryCategoryStackView *)self iconImageInfo];
  [v4 setIconImageInfo:?];
  v5 = [(SBHLibraryCategoryStackView *)self innerIcons];
  [v4 setInnerIcons:v5];

  v6 = [(SBHLibraryCategoryStackView *)self backdropGroupName];
  [v4 setBackdropGroupName:v6];

  [v4 setInnerIconImageInfoFrozen:{-[SBHLibraryCategoryStackView isInnerIconImageInfoFrozen](self, "isInnerIconImageInfoFrozen")}];

  return v4;
}

- (void)setNumberOfCategories:(unint64_t)a3
{
  if (self->_numberOfCategories != a3)
  {
    self->_numberOfCategories = a3;
    [(SBHLibraryCategoryStackView *)self setNeedsLayout];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius, v3, v4, v5, v6))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;

    [(SBHLibraryCategoryStackView *)self setNeedsLayout];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_editing = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__SBHLibraryCategoryStackView_setEditing___block_invoke;
    v5[3] = &__block_descriptor_33_e33_v32__0__SBHIconLayerView_8Q16_B24l;
    v6 = a3;
    [(SBHLibraryCategoryStackView *)self _enumerateIconImageViewsUsingBlock:v5];
  }
}

void __42__SBHLibraryCategoryStackView_setEditing___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 layer];
  if (*(a1 + 32) == 1)
  {
    v3 = [SBIconView _jitterXTranslationAnimationWithAmount:0.25];
    v4 = [SBIconView _jitterYTranslationAnimationWithAmount:0.25];
    BSDegreesToRadians();
    v5 = [SBIconView _jitterRotationAnimationWithAmount:?];
    [v6 addAnimation:v3 forKey:@"SBHIconImageJitterXTranslation"];
    [v6 addAnimation:v4 forKey:@"SBHIconImageJitterYTranslation"];
    [v6 addAnimation:v5 forKey:@"SBHIconImageJitterRotation"];
  }

  else
  {
    [v6 removeAnimationForKey:@"SBHIconImageJitterXTranslation"];
    [v6 removeAnimationForKey:@"SBHIconImageJitterYTranslation"];
    [v6 removeAnimationForKey:@"SBHIconImageJitterRotation"];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_highlighted = a3;
    podBackgroundViews = self->_podBackgroundViews;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__SBHLibraryCategoryStackView_setHighlighted___block_invoke;
    v6[3] = &unk_1E808B6B8;
    v6[4] = self;
    v7 = a3;
    [(NSMutableArray *)podBackgroundViews enumerateObjectsUsingBlock:v6];
  }
}

void __46__SBHLibraryCategoryStackView_setHighlighted___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v14 = 1.0;
  v6 = [*(a1 + 32) _scalingAnimationSettingsForStackedViewAtIndex:a3 scale:&v14];
  memset(&v13, 0, sizeof(v13));
  if (*(a1 + 40) == 1)
  {
    CGAffineTransformMakeScale(&v13, v14, v14);
  }

  else
  {
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&v13.a = *MEMORY[0x1E695EFD0];
    *&v13.c = v7;
    *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  v8 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v12 = v13;
  v10[2] = __46__SBHLibraryCategoryStackView_setHighlighted___block_invoke_2;
  v10[3] = &unk_1E808B4E0;
  v11 = v5;
  v9 = v5;
  [v8 sb_animateWithSettings:v6 mode:3 animations:v10 completion:0];
}

uint64_t __46__SBHLibraryCategoryStackView_setHighlighted___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (void)setOverlapping:(BOOL)a3
{
  if (self->_overlapping != a3)
  {
    v8 = v3;
    v9 = v4;
    self->_overlapping = a3;
    podBackgroundViews = self->_podBackgroundViews;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__SBHLibraryCategoryStackView_setOverlapping___block_invoke;
    v6[3] = &__block_descriptor_33_e23_v32__0__UIView_8Q16_B24l;
    v7 = a3;
    [(NSMutableArray *)podBackgroundViews enumerateObjectsUsingBlock:v6];
  }
}

void __46__SBHLibraryCategoryStackView_setOverlapping___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  memset(&v6, 0, sizeof(v6));
  if (*(a1 + 32) == 1)
  {
    CGAffineTransformMakeScale(&v6, 1.13, 1.13);
  }

  else
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v6.a = *MEMORY[0x1E695EFD0];
    *&v6.c = v4;
    *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  v5 = v6;
  [v3 setTransform:&v5];
}

- (void)setInnerIcons:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696AC90];
  v7 = a3;
  v8 = [v7 count];
  if (v8 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  v11 = [v6 indexSetWithIndexesInRange:{0, v9}];
  v10 = [v7 objectsAtIndexes:?];

  if ((BSEqualArrays() & 1) == 0)
  {
    objc_storeStrong(&self->_innerIcons, v10);
    [(SBHLibraryCategoryStackView *)self _updateIconImageViewsAnimated:v4];
  }
}

- (void)setBackdropGroupName:(id)a3
{
  v5 = a3;
  if ((BSEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_backdropGroupName, a3);
    podBackgroundViews = self->_podBackgroundViews;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__SBHLibraryCategoryStackView_setBackdropGroupName___block_invoke;
    v7[3] = &unk_1E808BDC0;
    v8 = v5;
    [(NSMutableArray *)podBackgroundViews enumerateObjectsUsingBlock:v7];
  }
}

- (void)setPrefersFlatImageLayers:(BOOL)a3
{
  if (self->_prefersFlatImageLayers != a3)
  {
    self->_prefersFlatImageLayers = a3;
    [(SBHLibraryCategoryStackView *)self _updateIconImageViewsAnimated:0];
  }
}

- (CGRect)visibleContentFrame
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = self->_podBackgroundViews;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v19 + 1) + 8 * v10) frame];
        v28.origin.x = v11;
        v28.origin.y = v12;
        v28.size.width = v13;
        v28.size.height = v14;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v28);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)frameForStackedViewAtIndex:(unint64_t)a3
{
  [(SBHLibraryCategoryStackView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBHLibraryCategoryStackView *)self traitCollection];
  [v12 displayScale];

  v13 = MEMORY[0x1E69DDA98];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] != 1)
  {
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    CGRectGetMinX(v19);
  }

  [*v13 userInterfaceLayoutDirection];

  UIRectIntegralWithScale();
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)alphaForStackedViewAtIndex:(unint64_t)a3
{
  result = 0.0;
  if (self->_numberOfCategories > a3)
  {
    return 1.0;
  }

  return result;
}

- (id)makeBackgroundView
{
  v3 = [_SBHLibraryCategoryStackViewBackgroundView alloc];
  v4 = [(_SBHLibraryCategoryStackViewBackgroundView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = [(SBHLibraryCategoryStackView *)self backdropGroupName];
  [(_SBHLibraryCategoryStackViewBackgroundView *)v4 setBackdropGroupName:v5];

  [(_SBHLibraryCategoryStackViewBackgroundView *)v4 setAutoresizingMask:18];

  return v4;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = SBHLibraryCategoryStackView;
  [(SBHLibraryCategoryStackView *)&v39 layoutSubviews];
  numberOfCategories = self->_numberOfCategories;
  if (numberOfCategories != [(NSMutableArray *)self->_podBackgroundViews count])
  {
    [(SBHLibraryCategoryStackView *)self _reconfigurePodBackgroundViews];
  }

  [(SBHLibraryCategoryStackView *)self bounds];
  v36 = v6;
  v37 = v5;
  v7 = v4;
  v9 = v8;
  if (numberOfCategories)
  {
    v10 = 0;
    continuousCornerRadius = self->_iconImageInfo.continuousCornerRadius;
    if (v4 >= 1.0)
    {
      v12 = v4;
    }

    else
    {
      v12 = 1.0;
    }

    do
    {
      v13 = [(NSMutableArray *)self->_podBackgroundViews objectAtIndex:v10];
      [(SBHLibraryCategoryStackView *)self frameForStackedViewAtIndex:v10];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      BSRectWithSize();
      [v13 setBounds:?];
      UIRectGetCenter();
      [v13 setCenter:?];
      v40.origin.x = v15;
      v40.origin.y = v17;
      v40.size.width = v19;
      v40.size.height = v21;
      [v13 _setContinuousCornerRadius:continuousCornerRadius * (CGRectGetWidth(v40) / v12)];
      [(SBHLibraryCategoryStackView *)self alphaForStackedViewAtIndex:v10];
      [v13 setAlpha:?];

      ++v10;
    }

    while (numberOfCategories != v10);
  }

  [(SBHLibraryCategoryStackView *)self _innerIconImageInfo];
  v26 = v25;
  v27 = v22;
  if (v25 != *MEMORY[0x1E695F060] || v22 != *(MEMORY[0x1E695F060] + 8))
  {
    v29 = v23;
    v30 = v24;
    [(SBHLibraryCategoryStackView *)self displayedIconImageInfo];
    if (!SBIconImageInfoEqualToIconImageInfo(v26, v27, v29, v30, v31, v32, v33, v34) && ![(SBHLibraryCategoryStackView *)self isInnerIconImageInfoFrozen])
    {
      [(SBHLibraryCategoryStackView *)self setDisplayedIconImageInfo:v26, v27, v29, v30];
      [(SBHLibraryCategoryStackView *)self _updateIconImageViewsAnimated:0];
    }

    [(SBHLibraryCategoryStackView *)self _innerIconEdgeSpacingFraction];
    UIRoundToScale();
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __45__SBHLibraryCategoryStackView_layoutSubviews__block_invoke;
    v38[3] = &__block_descriptor_88_e33_v32__0__SBHIconLayerView_8Q16_B24l;
    v38[4] = v35;
    v38[5] = v37;
    v38[6] = v36;
    *&v38[7] = v7;
    v38[8] = v9;
    *&v38[9] = v26;
    *&v38[10] = v27;
    [(SBHLibraryCategoryStackView *)self _enumerateIconImageViewsUsingBlock:v38];
  }
}

void __45__SBHLibraryCategoryStackView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2;
  if (([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] != 1) == (a3 & 1))
  {
    v5 = CGRectGetMaxX(*(a1 + 40)) - *(a1 + 32) - *(a1 + 72);
  }

  else
  {
    v5 = *(a1 + 32);
  }

  if (a3 > 1)
  {
    CGRectGetMaxY(*(a1 + 40));
  }

  [v6 setFrame:v5];
}

- (void)_reconfigurePodBackgroundViews
{
  numberOfCategories = self->_numberOfCategories;
  for (i = self->_podBackgroundViews; [(NSMutableArray *)i count]> numberOfCategories; i = self->_podBackgroundViews)
  {
    [(SBHLibraryCategoryStackView *)self _removeLastPodBackgroundView];
  }

  if ([(NSMutableArray *)self->_podBackgroundViews count])
  {
    [(SBHLibraryCategoryStackView *)self _removeLastPodBackgroundView];
  }

  while ([(NSMutableArray *)self->_podBackgroundViews count]< numberOfCategories)
  {
    [(SBHLibraryCategoryStackView *)self _appendConfiguredPodBackgroundView];
  }
}

- (void)_appendConfiguredPodBackgroundView
{
  v3 = [(SBHLibraryCategoryStackView *)self makeBackgroundView];
  [v3 setAutoresizingMask:18];
  [(SBHLibraryCategoryStackView *)self addSubview:v3];
  [(SBHLibraryCategoryStackView *)self sendSubviewToBack:v3];
  [(NSMutableArray *)self->_podBackgroundViews addObject:v3];
  if ([(NSMutableArray *)self->_podBackgroundViews count]== 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __65__SBHLibraryCategoryStackView__appendConfiguredPodBackgroundView__block_invoke;
    v4[3] = &unk_1E808BE08;
    v5 = v3;
    [(SBHLibraryCategoryStackView *)self _enumerateIconImageViewsUsingBlock:v4];
  }
}

- (void)_removeLastPodBackgroundView
{
  v3 = [(NSMutableArray *)self->_podBackgroundViews lastObject];
  [(NSMutableArray *)self->_podBackgroundViews removeLastObject];
  [v3 removeFromSuperview];
  if (![(NSMutableArray *)self->_podBackgroundViews count])
  {
    [(SBHLibraryCategoryStackView *)self _enumerateIconImageViewsUsingBlock:&__block_literal_global_34];
    [(NSMapTable *)self->_iconImageViews removeAllObjects];
    [(SBHLibraryCategoryStackView *)self setDisplayedImageAppearance:0];
    [(SBHLibraryCategoryStackView *)self setDisplayedIconImageInfo:0.0, 0.0, -1.0, 0.0];
  }
}

- (void)_resetAllPodBackgroundViews
{
  for (i = self->_podBackgroundViews; [(NSMutableArray *)i count]; i = self->_podBackgroundViews)
  {
    [(SBHLibraryCategoryStackView *)self _removeLastPodBackgroundView];
  }

  [(SBHLibraryCategoryStackView *)self setNeedsLayout];
}

- (SBIconImageInfo)_innerIconImageInfo
{
  [(SBHLibraryCategoryStackView *)self bounds];
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  v8 = self->_iconImageInfo.size.width == *MEMORY[0x1E695F060] && self->_iconImageInfo.size.height == v7;
  if (v8 || (v4 == v6 ? (v9 = v5 == v7) : (v9 = 0), v9))
  {
    v17 = 0.0;
    v16 = 0.0;
  }

  else
  {
    scale = self->_iconImageInfo.scale;
    [(SBHLibraryCategoryStackView *)self _innerIconEdgeSpacingFraction];
    [(SBHLibraryCategoryStackView *)self _innerIconInterSpacingFraction];
    UIRoundToScale();
    v12 = v11;
    UIRoundToScale();
    v14 = v13;
    UICeilToScale();
    v16 = v15;
    v6 = v12;
    v7 = v14;
    v17 = scale;
  }

  SBIconImageInfoMake(v6, v7, v17, v16);
  return result;
}

- (unint64_t)_innerIconImageOptions
{
  if ([(SBHLibraryCategoryStackView *)self prefersFlatImageLayers])
  {
    return 17;
  }

  else
  {
    return 1;
  }
}

- (void)_enumerateIconImageViewsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryCategoryStackView *)self innerIcons];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SBHLibraryCategoryStackView__enumerateIconImageViewsUsingBlock___block_invoke;
  v7[3] = &unk_1E808BE50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

uint64_t __66__SBHLibraryCategoryStackView__enumerateIconImageViewsUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 416) objectForKey:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 40) + 16))();
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)_updateIconImageViewsAnimated:(BOOL)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = [(SBHLibraryCategoryStackView *)self traitCollection];
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:v5];
  v7 = [(SBHLibraryCategoryStackView *)self displayedImageAppearance];
  v8 = [(SBHLibraryCategoryStackView *)self innerIcons];
  [(SBHLibraryCategoryStackView *)self _innerIconImageInfo];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(SBHLibraryCategoryStackView *)self _innerIconImageOptions];
  if (SBHIconImageAppearanceTypeHasGlass([v6 appearanceType]))
  {
    if (![(UIView *)self sbh_hasGlassGroup])
    {
      [(UIView *)self sbh_createGlassGroupInForeground:1];
    }
  }

  else
  {
    [(UIView *)self sbh_removeGlass];
  }

  v18 = [v6 appearanceType];
  if (v18 == [v7 appearanceType] && objc_msgSend(v6, "hasTintColor") && objc_msgSend(v7, "hasTintColor") && (objc_msgSend(v6, "tintColor"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "tintColor"), v20 = objc_claimAutoreleasedReturnValue(), v21 = BSEqualObjects(), v20, v19, (v21 & 1) == 0))
  {
    v37 = [v6 tintColor];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __61__SBHLibraryCategoryStackView__updateIconImageViewsAnimated___block_invoke;
    v60[3] = &unk_1E808BE08;
    v61 = v37;
    v38 = v37;
    [(SBHLibraryCategoryStackView *)self _enumerateIconImageViewsUsingBlock:v60];
    [(SBHLibraryCategoryStackView *)self setDisplayedImageAppearance:v6];
  }

  else
  {
    v41 = v7;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __61__SBHLibraryCategoryStackView__updateIconImageViewsAnimated___block_invoke_2;
    v51[3] = &unk_1E808BE78;
    v51[4] = self;
    v42 = v6;
    v39 = v6;
    v52 = v39;
    v54 = v10;
    v55 = v12;
    v56 = v14;
    v57 = v16;
    v53 = v5;
    v58 = v17;
    v59 = a3;
    v40 = v8;
    [v8 enumerateObjectsUsingBlock:v51];
    v22 = [MEMORY[0x1E695DFA8] set];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v23 = [(NSMapTable *)self->_iconImageViews keyEnumerator];
    v24 = [v23 countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v48;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v48 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v47 + 1) + 8 * i);
          v29 = [(SBHLibraryCategoryStackView *)self innerIcons];
          v30 = [v29 containsObject:v28];

          if ((v30 & 1) == 0)
          {
            v31 = [(NSMapTable *)self->_iconImageViews objectForKey:v28];
            [v31 removeFromSuperview];
            [v22 addObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v25);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = v22;
    v33 = [v32 countByEnumeratingWithState:&v43 objects:v62 count:16];
    v8 = v40;
    if (v33)
    {
      v34 = v33;
      v35 = *v44;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(v32);
          }

          [(NSMapTable *)self->_iconImageViews removeObjectForKey:*(*(&v43 + 1) + 8 * j)];
        }

        v34 = [v32 countByEnumeratingWithState:&v43 objects:v62 count:16];
      }

      while (v34);
    }

    [(SBHLibraryCategoryStackView *)self setDisplayedImageAppearance:v39];
    v6 = v42;
    v7 = v41;
  }
}

void __61__SBHLibraryCategoryStackView__updateIconImageViewsAnimated___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(*(a1 + 32) + 416) objectForKey:v5];
  v7 = [v6 iconImageAppearance];
  v8 = BSEqualObjects();

  if ((v8 & 1) == 0)
  {
    v9 = [v5 iconLayerViewWithInfo:*(a1 + 48) traitCollection:*(a1 + 88) options:-1 priority:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v10 = v9;
    v11 = 1.0;
    if (*(a1 + 96))
    {
      v11 = 0.0;
    }

    [v9 setAlpha:v11];
    v12 = [v5 nodeIdentifier];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBHLibraryCategoryStackView-innerIcon-%lu:", a3];
    v14 = [v13 stringByAppendingString:v12];
    [v10 setAccessibilityIdentifier:v14];

    [*(*(a1 + 32) + 416) setObject:v10 forKey:v5];
    [*(a1 + 32) addSubview:v10];
    if (*(a1 + 96) == 1)
    {
      v15 = +[SBIconImageView iconUpdateAnimationSettings];
      v16 = MEMORY[0x1E698E7D0];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __61__SBHLibraryCategoryStackView__updateIconImageViewsAnimated___block_invoke_3;
      v19[3] = &unk_1E8088F18;
      v20 = v6;
      v21 = v10;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __61__SBHLibraryCategoryStackView__updateIconImageViewsAnimated___block_invoke_4;
      v17[3] = &unk_1E8088F40;
      v18 = v20;
      [v16 animateWithSettings:v15 actions:v19 completion:v17];
    }

    else
    {
      [v6 removeFromSuperview];
    }
  }
}

uint64_t __61__SBHLibraryCategoryStackView__updateIconImageViewsAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

- (id)_scalingAnimationSettingsForStackedViewAtIndex:(unint64_t)a3 scale:(double *)a4
{
  v6 = self->_iconSettings;
  v7 = v6;
  if (a3 == 1)
  {
    [(SBHLibraryIndicatorIconSettings *)v6 pod2Scale];
    v9 = v11;
    v10 = [(SBHLibraryIndicatorIconSettings *)v7 pod2AnimationSettings];
  }

  else if (a3)
  {
    if (a3 >= 3)
    {
      NSLog(&cfstr_NoIndicatorIco.isa, a3);
    }

    [(SBHLibraryIndicatorIconSettings *)v7 pod3Scale];
    v9 = v12;
    v10 = [(SBHLibraryIndicatorIconSettings *)v7 pod3AnimationSettings];
  }

  else
  {
    [(SBHLibraryIndicatorIconSettings *)v6 pod1Scale];
    v9 = v8;
    v10 = [(SBHLibraryIndicatorIconSettings *)v7 pod1AnimationSettings];
  }

  v13 = v10;
  if (a4)
  {
    *a4 = v9;
  }

  return v13;
}

- (id)succinctDescription
{
  v2 = [(SBHLibraryCategoryStackView *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHLibraryCategoryStackView *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBHLibraryCategoryStackView *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__SBHLibraryCategoryStackView_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E8088F18;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __69__SBHLibraryCategoryStackView_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"numberOfCategories"), @"numberOfCategories"}];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) innerIcons];
  [v3 appendArraySection:v4 withName:@"innerIcons" skipIfEmpty:0];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) backdropGroupName];
  [v5 appendString:v6 withName:@"backdropGroupName"];
}

- (void)setDisplayedIconImageInfo:(SBIconImageInfo *)a3
{
  self->_displayedIconImageInfo.size.width = v3;
  self->_displayedIconImageInfo.size.height = v4;
  self->_displayedIconImageInfo.scale = v5;
  self->_displayedIconImageInfo.continuousCornerRadius = v6;
}

@end