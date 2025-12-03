@interface SBIconLabelImageParametersBuilder
+ (UIEdgeInsets)insetsForFont:(id)font;
+ (double)_normalFontSizeForSizeParameter:(int64_t)parameter;
+ (id)defaultFontForContentSizeCategory:(id)category languageInsets:(UIEdgeInsets *)insets;
+ (int64_t)_fontSizeParameterForContentSizeCategory:(id)category;
- (BOOL)_canTightenLabel;
- (BOOL)_hasValidInputs;
- (CGSize)_maxSize;
- (CGSize)iconImageSize;
- (SBIconLabelImageParametersBuilder)init;
- (SBIconListLayoutProvider)listLayoutProvider;
- (UIEdgeInsets)textInsets;
- (UIFont)font;
- (id)_fontWithLanguageInsets:(UIEdgeInsets *)insets;
- (id)buildParameters;
- (id)listLayout;
- (void)setIcon:(id)icon;
- (void)setIconView:(id)view;
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
    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    contentSizeCategory = v3->_contentSizeCategory;
    v3->_contentSizeCategory = preferredContentSizeCategory;
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

  overrideText = [(SBIconLabelImageParametersBuilder *)self overrideText];
  v4 = overrideText;
  if (overrideText)
  {
    text = overrideText;
  }

  else
  {
    text = [(SBIconLabelImageParametersBuilder *)self text];
  }

  v7 = text;

  v8 = MEMORY[0x1E69DDCE0];
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v39 = *MEMORY[0x1E69DDCE0];
  v40 = v9;
  v10 = [(SBIconLabelImageParametersBuilder *)self _fontWithLanguageInsets:&v39];
  sb_containsEmoji = [v7 sb_containsEmoji];
  _canTruncateLabel = [(SBIconLabelImageParametersBuilder *)self _canTruncateLabel];
  _canTightenLabel = [(SBIconLabelImageParametersBuilder *)self _canTightenLabel];
  [(SBIconLabelImageParametersBuilder *)self _maxSize];
  v13 = v12;
  v15 = v14;
  style = [(SBHLegibilitySettings *)self->_legibilitySettings style];
  [(SBIconLabelImageParametersBuilder *)self scale];
  v17 = v16;
  isAccessibilityReduceTransparencyEnabled = [(SBIconLabelImageParametersBuilder *)self isAccessibilityReduceTransparencyEnabled];
  contentSizeCategory = [(SBIconLabelImageParametersBuilder *)self contentSizeCategory];
  focusHighlightColor = [(SBIconLabelImageParametersBuilder *)self focusHighlightColor];
  overrideTraitCollection = [(SBIconLabelImageParametersBuilder *)self overrideTraitCollection];
  if (self->_hasSetTextInsets || sb_containsEmoji)
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
  textColor = [(SBIconLabelImageParametersBuilder *)self textColor];
  if (!textColor)
  {
    if (_canTruncateLabel || _canTightenLabel)
    {
      v27 = 6.0;
      v26 = 0.0;
      v28 = 0.0;
      v29 = 6.0;
      if (!sb_containsEmoji)
      {
LABEL_13:
        fallbackTextColor = [(SBIconLabelImageParametersBuilder *)self fallbackTextColor];
        goto LABEL_16;
      }
    }

    else
    {
      v26 = *v8;
      v27 = v8[1];
      v28 = v8[2];
      v29 = v8[3];
      if (!sb_containsEmoji)
      {
        goto LABEL_13;
      }
    }

    fallbackTextColor = [(SBHLegibilitySettings *)self->_legibilitySettings primaryColor];
LABEL_16:
    textColor = fallbackTextColor;
    if (!fallbackTextColor)
    {
      textColor = [MEMORY[0x1E69DC888] whiteColor];
    }
  }

  v32 = [SBIconLabelImageParameters alloc];
  LOBYTE(v35) = 0;
  LOBYTE(v34) = isAccessibilityReduceTransparencyEnabled;
  v6 = [(SBIconLabelImageParameters *)v32 initWithText:v7 maxSize:v10 font:_canTruncateLabel scale:_canTightenLabel canTruncate:sb_containsEmoji canTighten:style containsEmoji:v13 legibilityStyle:v15 textColor:v17 accessibilityReduceTransparencyEnabled:v26 contentSizeCategory:v27 focusHighlightColor:v28 textInsets:v29 fontLanguageInsets:textColor overrideTraitCollection:v34 colorspaceGrayscale:contentSizeCategory, focusHighlightColor, v39, v40, overrideTraitCollection, v35];

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
  iconView = [(SBIconLabelImageParametersBuilder *)self iconView];
  v4 = iconView;
  if (iconView)
  {
    [iconView maxLabelSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    listLayout = [(SBIconLabelImageParametersBuilder *)self listLayout];
    contentSizeCategory = [(SBIconLabelImageParametersBuilder *)self contentSizeCategory];
    [(objc_class *)self->_iconViewClass maxLabelSizeForListLayout:listLayout contentSizeCategory:contentSizeCategory options:UIAccessibilityIsBoldTextEnabled()];
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

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  p_icon = &self->_icon;
  if (self->_icon != iconCopy)
  {
    v10 = iconCopy;
    objc_storeStrong(p_icon, icon);
    iconView = [(SBIconLabelImageParametersBuilder *)self iconView];
    displaysIconStatusInLabel = [iconView displaysIconStatusInLabel];

    if (!displaysIconStatusInLabel || ([(SBIcon *)v10 statusDescriptionForLocation:self->_iconLocation], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [(SBIcon *)self->_icon displayNameForLocation:self->_iconLocation];
    }

    [(SBIconLabelImageParametersBuilder *)self setText:v9];

    iconCopy = v10;
  }

  MEMORY[0x1EEE66BB8](p_icon, iconCopy);
}

- (void)setIconView:(id)view
{
  viewCopy = view;
  p_iconView = &self->_iconView;
  if (self->_iconView != viewCopy)
  {
    v9 = viewCopy;
    objc_storeStrong(p_iconView, view);
    [(SBIconLabelImageParametersBuilder *)self setIconViewClass:objc_opt_class()];
    if ([(SBIconView *)v9 displaysIconStatusInLabel])
    {
      v7 = [(SBIcon *)self->_icon statusDescriptionForLocation:self->_iconLocation];
      if (v7)
      {
        [(SBIconLabelImageParametersBuilder *)self setText:v7];
      }
    }

    traitCollection = [(SBIconView *)v9 traitCollection];
    [traitCollection displayScale];
    [(SBIconLabelImageParametersBuilder *)self setScale:?];

    viewCopy = v9;
  }

  MEMORY[0x1EEE66BB8](p_iconView, viewCopy);
}

- (SBIconListLayoutProvider)listLayoutProvider
{
  listLayoutProvider = self->_listLayoutProvider;
  if (!listLayoutProvider)
  {
    listLayoutProvider = [(SBIconView *)self->_iconView listLayoutProvider];
  }

  return listLayoutProvider;
}

- (id)listLayout
{
  iconView = [(SBIconLabelImageParametersBuilder *)self iconView];
  v4 = iconView;
  if (iconView)
  {
    listLayout = [iconView listLayout];
  }

  else
  {
    listLayoutProvider = [(SBIconLabelImageParametersBuilder *)self listLayoutProvider];
    iconLocation = [(SBIconLabelImageParametersBuilder *)self iconLocation];
    v8 = iconLocation;
    listLayout = 0;
    if (listLayoutProvider && iconLocation)
    {
      listLayout = [listLayoutProvider layoutForIconLocation:iconLocation];
    }
  }

  return listLayout;
}

- (CGSize)iconImageSize
{
  iconView = [(SBIconLabelImageParametersBuilder *)self iconView];
  v4 = iconView;
  if (!iconView)
  {
    listLayout = [(SBIconLabelImageParametersBuilder *)self listLayout];
    v10 = listLayout;
    if (listLayout)
    {
      [listLayout iconImageInfo];
    }

    else
    {
      iconViewClass = [(SBIconLabelImageParametersBuilder *)self iconViewClass];
      if (!iconViewClass)
      {
        v6 = 0x4059000000000000;
        v8 = 0x4059000000000000;
        goto LABEL_8;
      }

      [(objc_class *)iconViewClass defaultIconImageSize];
    }

    v6 = v11;
    v8 = v12;
LABEL_8:

    goto LABEL_9;
  }

  [iconView iconImageSize];
  v6 = v5;
  v8 = v7;
LABEL_9:

  v14 = *&v6;
  v15 = *&v8;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (UIEdgeInsets)insetsForFont:(id)font
{
  fontCopy = font;
  if (insetsForFont__onceToken != -1)
  {
    +[SBIconLabelImageParametersBuilder insetsForFont:];
  }

  v4 = [insetsForFont__cachedInsets objectForKey:fontCopy];
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
    if (fontCopy)
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
      [v14 setObject:v15 forKey:fontCopy];
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

+ (id)defaultFontForContentSizeCategory:(id)category languageInsets:(UIEdgeInsets *)insets
{
  categoryCopy = category;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__SBIconLabelImageParametersBuilder_defaultFontForContentSizeCategory_languageInsets___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultFontForContentSizeCategory_languageInsets__onceToken != -1)
  {
    dispatch_once(&defaultFontForContentSizeCategory_languageInsets__onceToken, block);
  }

  v7 = defaultFontForContentSizeCategory_languageInsets____NormalFontBySizeParameter[[self _fontSizeParameterForContentSizeCategory:categoryCopy]];
  if (insets)
  {
    [self insetsForFont:v7];
    insets->top = v8;
    insets->left = v9;
    insets->bottom = v10;
    insets->right = v11;
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

- (id)_fontWithLanguageInsets:(UIEdgeInsets *)insets
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

  iconLocation = [(SBIconLabelImageParametersBuilder *)self iconLocation];
  contentSizeCategory = [(SBIconLabelImageParametersBuilder *)self contentSizeCategory];
  v10 = [(SBIconListLayoutProvider *)self->_listLayoutProvider layoutForIconLocation:iconLocation];
  v7 = [v10 labelFontForContentSizeCategory:contentSizeCategory options:UIAccessibilityIsBoldTextEnabled()];

LABEL_6:
  text = [(SBIconLabelImageParametersBuilder *)self text];
  v12 = [text _adjustedFontForScripts:3 forFont:v7];

  if (v7 != v12)
  {
    v13 = v12;

    v7 = v13;
  }

  if (insets)
  {
    [objc_opt_class() insetsForFont:v12];
    insets->top = v14;
    insets->left = v15;
    insets->bottom = v16;
    insets->right = v17;
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

+ (int64_t)_fontSizeParameterForContentSizeCategory:(id)category
{
  categoryCopy = category;
  v4 = categoryCopy;
  if (!categoryCopy || (v5 = UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC60]), v6 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC58]), v7 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC50]), v5 == NSOrderedAscending))
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

+ (double)_normalFontSizeForSizeParameter:(int64_t)parameter
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
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
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
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
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
      v19 = parameter - 1;
      v8 = 14.0;
      if ((parameter - 1) >= 4)
      {
        return v8;
      }

      v20 = &unk_1BEE857C0;
      return v20[v19];
    }

LABEL_31:
    v19 = parameter - 1;
    v8 = 13.0;
    if ((parameter - 1) >= 4)
    {
      return v8;
    }

    v20 = &unk_1BEE857E0;
    return v20[v19];
  }

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  currentDevice = [currentDevice2 userInterfaceIdiom];

  if (currentDevice == 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = 12.0;
  if (parameter <= 2)
  {
    v9 = 14.0;
    if (parameter != 2)
    {
      v9 = 12.0;
    }

    if (parameter == 1)
    {
      return 13.0;
    }

    else
    {
      return v9;
    }
  }

  if (parameter != 3)
  {
    if (parameter != 4)
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

    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = 14.0;
    if (![currentDevice2 userInterfaceIdiom])
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
        mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen2 _referenceBounds];
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
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = 14.0;
    if ([currentDevice2 userInterfaceIdiom])
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
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 _referenceBounds];
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