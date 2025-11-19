@interface SBIconLabelImageParametersBuilder
+ (UIEdgeInsets)insetsForFont:(id)a3;
+ (double)_normalFontSizeForSizeParameter:(int64_t)a3;
+ (id)defaultFontForContentSizeCategory:(id)a3 languageInsets:(UIEdgeInsets *)a4;
+ (int64_t)_fontSizeParameterForContentSizeCategory:(id)a3;
- (BOOL)_canTightenLabel;
- (BOOL)_hasValidInputs;
- (CGSize)_maxSize;
- (CGSize)iconImageSize;
- (SBIconLabelImageParametersBuilder)init;
- (SBIconListLayoutProvider)listLayoutProvider;
- (UIEdgeInsets)textInsets;
- (UIFont)font;
- (id)_fontWithLanguageInsets:(UIEdgeInsets *)a3;
- (id)buildParameters;
- (id)listLayout;
- (void)setIcon:(id)a3;
- (void)setIconView:(id)a3;
@end

@implementation SBIconLabelImageParametersBuilder

- (SBIconLabelImageParametersBuilder)init
{
  v7.receiver = self;
  v7.super_class = SBIconLabelImageParametersBuilder;
  v2 = [(SBIconLabelImageParametersBuilder *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_scale = 2.0;
    v2->_accessibilityReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
    v4 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    contentSizeCategory = v3->_contentSizeCategory;
    v3->_contentSizeCategory = v4;
  }

  return v3;
}

- (id)buildParameters
{
  if (![(SBIconLabelImageParametersBuilder *)self _hasValidInputs])
  {
    v6 = 0;
    goto LABEL_19;
  }

  v3 = [(SBIconLabelImageParametersBuilder *)self overrideText];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SBIconLabelImageParametersBuilder *)self text];
  }

  v7 = v5;

  v8 = MEMORY[0x1E69DDCE0];
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v39 = *MEMORY[0x1E69DDCE0];
  v40 = v9;
  v10 = [(SBIconLabelImageParametersBuilder *)self _fontWithLanguageInsets:&v39];
  v11 = [v7 sb_containsEmoji];
  v38 = [(SBIconLabelImageParametersBuilder *)self _canTruncateLabel];
  v37 = [(SBIconLabelImageParametersBuilder *)self _canTightenLabel];
  [(SBIconLabelImageParametersBuilder *)self _maxSize];
  v13 = v12;
  v15 = v14;
  v36 = [(SBHLegibilitySettings *)self->_legibilitySettings style];
  [(SBIconLabelImageParametersBuilder *)self scale];
  v17 = v16;
  v18 = [(SBIconLabelImageParametersBuilder *)self isAccessibilityReduceTransparencyEnabled];
  v19 = [(SBIconLabelImageParametersBuilder *)self contentSizeCategory];
  v20 = [(SBIconLabelImageParametersBuilder *)self focusHighlightColor];
  v21 = [(SBIconLabelImageParametersBuilder *)self overrideTraitCollection];
  if (self->_hasSetTextInsets || v11)
  {
    [(SBIconLabelImageParametersBuilder *)self textInsets];
  }

  else
  {
    [objc_opt_class() insetsForFont:v10];
  }

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = [(SBIconLabelImageParametersBuilder *)self textColor];
  if (!v30)
  {
    if (v38 || v37)
    {
      v27 = 6.0;
      v26 = 0.0;
      v28 = 0.0;
      v29 = 6.0;
      if (!v11)
      {
LABEL_13:
        v31 = [(SBIconLabelImageParametersBuilder *)self fallbackTextColor];
        goto LABEL_16;
      }
    }

    else
    {
      v26 = *v8;
      v27 = v8[1];
      v28 = v8[2];
      v29 = v8[3];
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v31 = [(SBHLegibilitySettings *)self->_legibilitySettings primaryColor];
LABEL_16:
    v30 = v31;
    if (!v31)
    {
      v30 = [MEMORY[0x1E69DC888] whiteColor];
    }
  }

  v32 = [SBIconLabelImageParameters alloc];
  LOBYTE(v35) = 0;
  LOBYTE(v34) = v18;
  v6 = [(SBIconLabelImageParameters *)v32 initWithText:v7 maxSize:v10 font:v38 scale:v37 canTruncate:v11 canTighten:v36 containsEmoji:v13 legibilityStyle:v15 textColor:v17 accessibilityReduceTransparencyEnabled:v26 contentSizeCategory:v27 focusHighlightColor:v28 textInsets:v29 fontLanguageInsets:v30 overrideTraitCollection:v34 colorspaceGrayscale:v19, v20, v39, v40, v21, v35];

LABEL_19:

  return v6;
}

- (BOOL)_hasValidInputs
{
  if (self->_icon)
  {
    v2 = [(NSString *)self->_text length];
    if (v2)
    {
      LOBYTE(v2) = BSFloatLessThanFloat() ^ 1;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (BOOL)_canTightenLabel
{
  if ([(SBIcon *)self->_icon canTightenLabel])
  {
    return 1;
  }

  return [(SBIconLabelImageParametersBuilder *)self _canTruncateLabel];
}

- (CGSize)_maxSize
{
  v3 = [(SBIconLabelImageParametersBuilder *)self iconView];
  v4 = v3;
  if (v3)
  {
    [v3 maxLabelSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = [(SBIconLabelImageParametersBuilder *)self listLayout];
    v10 = [(SBIconLabelImageParametersBuilder *)self contentSizeCategory];
    [(objc_class *)self->_iconViewClass maxLabelSizeForListLayout:v9 contentSizeCategory:v10 options:UIAccessibilityIsBoldTextEnabled()];
    v6 = v11;
    v8 = v12;
  }

  if ([(SBIconView *)self->_iconView shouldShowLabelAccessoryView])
  {
    [v4 labelAccessoryTotalWidth];
    v14 = v13 + v13;
    if (v6 <= v14)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v6 - v14;
    }
  }

  v15 = v6;
  v16 = v8;
  result.height = v16;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)textInsets
{
  top = self->_textInsets.top;
  left = self->_textInsets.left;
  bottom = self->_textInsets.bottom;
  right = self->_textInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setIcon:(id)a3
{
  v5 = a3;
  p_icon = &self->_icon;
  if (self->_icon != v5)
  {
    v10 = v5;
    objc_storeStrong(p_icon, a3);
    v7 = [(SBIconLabelImageParametersBuilder *)self iconView];
    v8 = [v7 displaysIconStatusInLabel];

    if (!v8 || ([(SBIcon *)v10 statusDescriptionForLocation:self->_iconLocation], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [(SBIcon *)self->_icon displayNameForLocation:self->_iconLocation];
    }

    [(SBIconLabelImageParametersBuilder *)self setText:v9];

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](p_icon, v5);
}

- (void)setIconView:(id)a3
{
  v5 = a3;
  p_iconView = &self->_iconView;
  if (self->_iconView != v5)
  {
    v9 = v5;
    objc_storeStrong(p_iconView, a3);
    [(SBIconLabelImageParametersBuilder *)self setIconViewClass:objc_opt_class()];
    if ([(SBIconView *)v9 displaysIconStatusInLabel])
    {
      v7 = [(SBIcon *)self->_icon statusDescriptionForLocation:self->_iconLocation];
      if (v7)
      {
        [(SBIconLabelImageParametersBuilder *)self setText:v7];
      }
    }

    v8 = [(SBIconView *)v9 traitCollection];
    [v8 displayScale];
    [(SBIconLabelImageParametersBuilder *)self setScale:?];

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](p_iconView, v5);
}

- (SBIconListLayoutProvider)listLayoutProvider
{
  v3 = self->_listLayoutProvider;
  if (!v3)
  {
    v3 = [(SBIconView *)self->_iconView listLayoutProvider];
  }

  return v3;
}

- (id)listLayout
{
  v3 = [(SBIconLabelImageParametersBuilder *)self iconView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 listLayout];
  }

  else
  {
    v6 = [(SBIconLabelImageParametersBuilder *)self listLayoutProvider];
    v7 = [(SBIconLabelImageParametersBuilder *)self iconLocation];
    v8 = v7;
    v5 = 0;
    if (v6 && v7)
    {
      v5 = [v6 layoutForIconLocation:v7];
    }
  }

  return v5;
}

- (CGSize)iconImageSize
{
  v3 = [(SBIconLabelImageParametersBuilder *)self iconView];
  v4 = v3;
  if (!v3)
  {
    v9 = [(SBIconLabelImageParametersBuilder *)self listLayout];
    v10 = v9;
    if (v9)
    {
      [v9 iconImageInfo];
    }

    else
    {
      v13 = [(SBIconLabelImageParametersBuilder *)self iconViewClass];
      if (!v13)
      {
        v6 = 0x4059000000000000;
        v8 = 0x4059000000000000;
        goto LABEL_8;
      }

      [(objc_class *)v13 defaultIconImageSize];
    }

    v6 = v11;
    v8 = v12;
LABEL_8:

    goto LABEL_9;
  }

  [v3 iconImageSize];
  v6 = v5;
  v8 = v7;
LABEL_9:

  v14 = *&v6;
  v15 = *&v8;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (UIEdgeInsets)insetsForFont:(id)a3
{
  v3 = a3;
  if (insetsForFont__onceToken != -1)
  {
    +[SBIconLabelImageParametersBuilder insetsForFont:];
  }

  v4 = [insetsForFont__cachedInsets objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    [v4 UIEdgeInsetsValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E69DDCE0];
    v9 = *(MEMORY[0x1E69DDCE0] + 8);
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
    if (v3)
    {
      if (CTFontGetLanguageAwareOutsets())
      {
        v9 = -0.0;
        v7 = -0.0;
        v13 = -0.0;
        v11 = -0.0;
      }

      v14 = insetsForFont__cachedInsets;
      v15 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{v7, v9, v11, v13, 0, 0, 0, 0}];
      [v14 setObject:v15 forKey:v3];
    }
  }

  v16 = v7;
  v17 = v9;
  v18 = v11;
  v19 = v13;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

uint64_t __51__SBIconLabelImageParametersBuilder_insetsForFont___block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v1 = insetsForFont__cachedInsets;
  insetsForFont__cachedInsets = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)defaultFontForContentSizeCategory:(id)a3 languageInsets:(UIEdgeInsets *)a4
{
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__SBIconLabelImageParametersBuilder_defaultFontForContentSizeCategory_languageInsets___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultFontForContentSizeCategory_languageInsets__onceToken != -1)
  {
    dispatch_once(&defaultFontForContentSizeCategory_languageInsets__onceToken, block);
  }

  v7 = defaultFontForContentSizeCategory_languageInsets____NormalFontBySizeParameter[[a1 _fontSizeParameterForContentSizeCategory:v6]];
  if (a4)
  {
    [a1 insetsForFont:v7];
    a4->top = v8;
    a4->left = v9;
    a4->bottom = v10;
    a4->right = v11;
  }

  return v7;
}

void __86__SBIconLabelImageParametersBuilder_defaultFontForContentSizeCategory_languageInsets___block_invoke(uint64_t a1)
{
  for (i = 0; i != 5; ++i)
  {
    v3 = MEMORY[0x1E69DB878];
    [*(a1 + 32) _normalFontSizeForSizeParameter:i];
    v4 = [v3 systemFontOfSize:? weight:?];
    v5 = defaultFontForContentSizeCategory_languageInsets____NormalFontBySizeParameter[i];
    defaultFontForContentSizeCategory_languageInsets____NormalFontBySizeParameter[i] = v4;
  }
}

- (id)_fontWithLanguageInsets:(UIEdgeInsets *)a3
{
  font = self->_font;
  if (font)
  {
    v6 = font;
LABEL_3:
    v7 = v6;
    goto LABEL_6;
  }

  if (!self->_listLayoutProvider)
  {
    v6 = [objc_opt_class() defaultFontForContentSizeCategory:self->_contentSizeCategory languageInsets:0];
    goto LABEL_3;
  }

  v8 = [(SBIconLabelImageParametersBuilder *)self iconLocation];
  v9 = [(SBIconLabelImageParametersBuilder *)self contentSizeCategory];
  v10 = [(SBIconListLayoutProvider *)self->_listLayoutProvider layoutForIconLocation:v8];
  v7 = [v10 labelFontForContentSizeCategory:v9 options:UIAccessibilityIsBoldTextEnabled()];

LABEL_6:
  v11 = [(SBIconLabelImageParametersBuilder *)self text];
  v12 = [v11 _adjustedFontForScripts:3 forFont:v7];

  if (v7 != v12)
  {
    v13 = v12;

    v7 = v13;
  }

  if (a3)
  {
    [objc_opt_class() insetsForFont:v12];
    a3->top = v14;
    a3->left = v15;
    a3->bottom = v16;
    a3->right = v17;
  }

  return v7;
}

- (UIFont)font
{
  v3 = self->_font;
  if (!v3)
  {
    v3 = [(SBIconLabelImageParametersBuilder *)self _fontWithLanguageInsets:0];
  }

  return v3;
}

+ (int64_t)_fontSizeParameterForContentSizeCategory:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || (v5 = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC60]), v6 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC58]), v7 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC50]), v5 == NSOrderedAscending))
  {
    v8 = 0;
  }

  else if (v5)
  {
    v9 = 3;
    if (v7)
    {
      v9 = 4;
    }

    if (v6)
    {
      v8 = v9;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (double)_normalFontSizeForSizeParameter:(int64_t)a3
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = __sb__runningInSpringBoard();
    v11 = v10;
    if (v10)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v4 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v4 userInterfaceIdiom] != 1)
      {

        goto LABEL_31;
      }
    }

    v14 = __sb__runningInSpringBoard();
    v15 = v14;
    if (v14)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v6 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v6 _referenceBounds];
    }

    BSSizeRoundForScale();
    v17 = v16;
    v18 = *(MEMORY[0x1E69D4380] + 280);
    if ((v15 & 1) == 0)
    {
    }

    if ((v11 & 1) == 0)
    {
    }

    if (v17 >= v18)
    {
      v19 = a3 - 1;
      v8 = 14.0;
      if ((a3 - 1) >= 4)
      {
        return v8;
      }

      v20 = &unk_1BEE857C0;
      return v20[v19];
    }

LABEL_31:
    v19 = a3 - 1;
    v8 = 13.0;
    if ((a3 - 1) >= 4)
    {
      return v8;
    }

    v20 = &unk_1BEE857E0;
    return v20[v19];
  }

  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = 12.0;
  if (a3 <= 2)
  {
    v9 = 14.0;
    if (a3 != 2)
    {
      v9 = 12.0;
    }

    if (a3 == 1)
    {
      return 13.0;
    }

    else
    {
      return v9;
    }
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      return v8;
    }

    v12 = __sb__runningInSpringBoard();
    v13 = v12;
    if (v12)
    {
      if (SBFEffectiveDeviceClass())
      {
        v8 = 14.0;
        if (SBFEffectiveDeviceClass() != 1)
        {
          return v8;
        }
      }

      goto LABEL_42;
    }

    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = 14.0;
    if (![v3 userInterfaceIdiom])
    {
LABEL_42:
      v22 = __sb__runningInSpringBoard();
      v23 = v22;
      if (v22)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v5 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v5 _referenceBounds];
      }

      BSSizeRoundForScale();
      v25 = v24 < *(MEMORY[0x1E69D4380] + 56);
      v26 = 14.0;
      v27 = 16.0;
      goto LABEL_50;
    }

LABEL_56:

    return v8;
  }

  v21 = __sb__runningInSpringBoard();
  v13 = v21;
  if (v21)
  {
    if (SBFEffectiveDeviceClass())
    {
      v8 = 14.0;
      if (SBFEffectiveDeviceClass() != 1)
      {
        return v8;
      }
    }
  }

  else
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = 14.0;
    if ([v3 userInterfaceIdiom])
    {
      goto LABEL_56;
    }
  }

  v28 = __sb__runningInSpringBoard();
  v23 = v28;
  if (v28)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 _referenceBounds];
  }

  BSSizeRoundForScale();
  v25 = v29 < *(MEMORY[0x1E69D4380] + 56);
  v26 = 14.0;
  v27 = 15.0;
LABEL_50:
  if (v25)
  {
    v8 = v26;
  }

  else
  {
    v8 = v27;
  }

  if ((v23 & 1) == 0)
  {
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_56;
  }

  return v8;
}

@end