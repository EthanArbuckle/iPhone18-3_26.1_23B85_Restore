@interface UIListContentConfiguration
+ (UIListContentConfiguration)accompaniedSidebarCellConfiguration;
+ (UIListContentConfiguration)accompaniedSidebarSubtitleCellConfiguration;
+ (UIListContentConfiguration)cellConfiguration;
+ (UIListContentConfiguration)extraProminentInsetGroupedHeaderConfiguration;
+ (UIListContentConfiguration)groupedFooterConfiguration;
+ (UIListContentConfiguration)groupedHeaderConfiguration;
+ (UIListContentConfiguration)plainFooterConfiguration;
+ (UIListContentConfiguration)plainHeaderConfiguration;
+ (UIListContentConfiguration)prominentInsetGroupedHeaderConfiguration;
+ (UIListContentConfiguration)sidebarCellConfiguration;
+ (UIListContentConfiguration)sidebarHeaderConfiguration;
+ (UIListContentConfiguration)sidebarSubtitleCellConfiguration;
+ (UIListContentConfiguration)subtitleCellConfiguration;
+ (UIListContentConfiguration)valueCellConfiguration;
+ (id)_defaultCellConfigurationForState:(void *)a3 traitCollection:;
+ (id)_defaultGroupedFooterConfigurationForState:(void *)a3 traitCollection:;
+ (id)_defaultGroupedHeaderConfigurationForState:(void *)a3 traitCollection:;
+ (id)_defaultHeaderFooterConfigurationForState:(void *)a3 traitCollection:(uint64_t)a4 isHeader:(uint64_t)a5 style:;
+ (id)_defaultInsetGroupedCellConfiguration;
+ (id)_defaultInsetGroupedCellConfigurationForState:(void *)a3 traitCollection:;
+ (id)_defaultInsetGroupedHeaderConfigurationForState:(void *)a3 traitCollection:(uint64_t)a4 isExtraProminent:;
+ (id)_defaultPlainFooterConfigurationForState:(void *)a3 traitCollection:;
+ (id)_defaultPlainHeaderConfigurationForState:(void *)a3 traitCollection:;
+ (id)_defaultSidebarCellConfigurationForState:(void *)a3 traitCollection:(uint64_t)a4 style:;
+ (id)_defaultSidebarHeaderConfigurationForState:(void *)a3 traitCollection:;
+ (id)_defaultSidebarSubtitleCellConfigurationForState:(void *)a3 traitCollection:(uint64_t)a4 style:;
+ (id)_defaultSubtitleCellConfigurationForState:(void *)a3 traitCollection:;
+ (id)_defaultValueCellConfigurationForState:(void *)a3 traitCollection:;
+ (id)_footerConfiguration;
+ (id)_headerConfiguration;
+ (id)_sidebarPlainCellConfiguration;
+ (id)footerConfiguration;
+ (id)headerConfiguration;
+ (void)_applySidebarCellStylingToConfiguration:(void *)a3 forState:(void *)a4 traitCollection:(uint64_t)a5 cellStyle:(uint64_t)a6 sidebarStyle:;
- (BOOL)isEqual:(id)a3;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSString)description;
- (UIListContentConfiguration)initWithCoder:(id)a3;
- (double)_minimumHeightForTraitCollection:(id)a3;
- (id)_descriptionPropertiesForFullDescription:(uint64_t)a1;
- (id)_initWithImageProperties:(void *)a3 textProperties:(void *)a4 secondaryTextProperties:(char)a5 directionalLayoutMargins:(double)a6 prefersSideBySideTextAndSecondaryText:(double)a7 imageToTextPadding:(double)a8 textToSecondaryTextVerticalPadding:(double)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)makeContentView;
- (id)updatedConfigurationForState:(id)a3;
- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)a1;
- (unint64_t)hash;
- (void)_setDefaultStyle:(uint64_t)a1;
- (void)_setSwiftBridgingImageProperties:(id)a3;
- (void)_setSwiftBridgingSecondaryTextProperties:(id)a3;
- (void)_setSwiftBridgingTextProperties:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIListContentConfiguration

+ (UIListContentConfiguration)extraProminentInsetGroupedHeaderConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultInsetGroupedHeaderConfigurationForState:v3 traitCollection:v4 isExtraProminent:1];

  return v5;
}

+ (id)headerConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultPlainHeaderConfigurationForState:v3 traitCollection:v4];

  if (v5)
  {
    *(v5 + 64) = 17;
    v6 = *(v5 + 8);
    if ((v6 & 0x40) == 0)
    {
      *(v5 + 13) = 0;
    }

    *(v5 + 8) = v6 & 0xFEFF;
  }

  return v5;
}

- (NSDirectionalEdgeInsets)directionalLayoutMargins
{
  top = self->_directionalLayoutMargins.top;
  leading = self->_directionalLayoutMargins.leading;
  bottom = self->_directionalLayoutMargins.bottom;
  trailing = self->_directionalLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

+ (UIListContentConfiguration)groupedHeaderConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultGroupedHeaderConfigurationForState:v3 traitCollection:v4];

  return v5;
}

- (id)makeContentView
{
  v2 = [[UIListContentView alloc] initWithConfiguration:self];

  return v2;
}

+ (UIListContentConfiguration)prominentInsetGroupedHeaderConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultInsetGroupedHeaderConfigurationForState:v3 traitCollection:v4 isExtraProminent:0];

  return v5;
}

+ (UIListContentConfiguration)cellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultCellConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (UIListContentConfiguration)valueCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultValueCellConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (UIListContentConfiguration)plainHeaderConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultPlainHeaderConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (id)_defaultCellConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = _UITableConstantsForTraitCollection(v4);
  v7 = objc_alloc_init(UIListContentImageProperties);
  v9 = [v6 defaultImageSymbolConfigurationForTraitCollection:v4];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v8, v9, 24);
  }

  v10 = [v6 defaultImageTintColorForState:v5 traitCollection:v4];
  [(UIContentUnavailableImageProperties *)v7 _setTintColor:v10];

  v11 = objc_alloc_init(UIListContentTextProperties);
  v12 = [v6 defaultTextLabelFontForCellStyle:0];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v12];

  v13 = [v6 defaultTextColorForCellStyle:0 traitCollection:v4 tintColor:0 state:v5];
  [(UIBackgroundConfiguration *)v11 _setBackgroundColor:v13];

  [(UIListContentTextProperties *)v11 _configureWithConstants:v6 traitCollection:v4 forSidebar:0];
  v14 = objc_alloc_init(UIListContentTextProperties);
  v15 = [v6 defaultDetailTextFontForCellStyle:3];
  [(UIContentUnavailableImageProperties *)v14 _setTintColor:v15];

  v16 = [v6 defaultDetailTextColorForCellStyle:3 traitCollection:v4 state:v5];

  [(UIBackgroundConfiguration *)v14 _setBackgroundColor:v16];
  [(UIListContentTextProperties *)v14 _configureWithConstants:v6 traitCollection:v4 forSidebar:0];
  v17 = _UICellContentViewDefaultDirectionalLayoutMargins(v6, v4, 0, 0, 0);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v6 defaultImageToTextPaddingForSidebar:0];
  v25 = v24;
  [v6 defaultTextToSubtitlePaddingForCellStyle:0];
  v27 = [[UIListContentConfiguration alloc] _initWithImageProperties:v7 textProperties:v11 secondaryTextProperties:v14 directionalLayoutMargins:0 prefersSideBySideTextAndSecondaryText:v17 imageToTextPadding:v19 textToSecondaryTextVerticalPadding:v21, v23, v25, v26];
  v28 = v27;
  if (v27)
  {
    v27[8] = 0;
    v29 = *(v27 + 4);
    if ((v29 & 0x40) == 0)
    {
      *(v27 + 13) = 1;
    }

    *(v27 + 4) = v29 & 0xFEFF;
  }

  return v28;
}

+ (UIListContentConfiguration)subtitleCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultSubtitleCellConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (id)_defaultSubtitleCellConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = _UITableConstantsForTraitCollection(v4);
  v7 = objc_alloc_init(UIListContentImageProperties);
  v9 = [v6 defaultImageSymbolConfigurationForTraitCollection:v4];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v8, v9, 24);
  }

  v10 = [v6 defaultImageTintColorForState:v5 traitCollection:v4];
  [(UIContentUnavailableImageProperties *)v7 _setTintColor:v10];

  v11 = objc_alloc_init(UIListContentTextProperties);
  v12 = [v6 defaultTextLabelFontForCellStyle:3];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v12];

  v13 = [v6 defaultTextColorForCellStyle:3 traitCollection:v4 tintColor:0 state:v5];
  [(UIBackgroundConfiguration *)v11 _setBackgroundColor:v13];

  [(UIListContentTextProperties *)v11 _configureWithConstants:v6 traitCollection:v4 forSidebar:0];
  v14 = objc_alloc_init(UIListContentTextProperties);
  v15 = [v6 defaultDetailTextFontForCellStyle:3];
  [(UIContentUnavailableImageProperties *)v14 _setTintColor:v15];

  v16 = [v6 defaultDetailTextColorForCellStyle:3 traitCollection:v4 state:v5];

  [(UIBackgroundConfiguration *)v14 _setBackgroundColor:v16];
  [(UIListContentTextProperties *)v14 _configureWithConstants:v6 traitCollection:v4 forSidebar:0];
  v17 = _UICellContentViewDefaultDirectionalLayoutMargins(v6, v4, 3, 0, 0);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v6 defaultImageToTextPaddingForSidebar:0];
  v25 = v24;
  [v6 defaultTextToSubtitlePaddingForCellStyle:3];
  v27 = [[UIListContentConfiguration alloc] _initWithImageProperties:v7 textProperties:v11 secondaryTextProperties:v14 directionalLayoutMargins:0 prefersSideBySideTextAndSecondaryText:v17 imageToTextPadding:v19 textToSecondaryTextVerticalPadding:v21, v23, v25, v26];
  v28 = v27;
  if (v27)
  {
    v27[8] = 1;
    v29 = *(v27 + 4);
    if ((v29 & 0x40) == 0)
    {
      *(v27 + 13) = 1;
    }

    *(v27 + 4) = v29 & 0xFEFF;
  }

  return v28;
}

+ (id)_defaultValueCellConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = _UITableConstantsForTraitCollection(v4);
  v7 = objc_alloc_init(UIListContentImageProperties);
  v9 = [v6 defaultImageSymbolConfigurationForTraitCollection:v4];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v8, v9, 24);
  }

  v10 = [v6 defaultImageTintColorForState:v5 traitCollection:v4];
  [(UIContentUnavailableImageProperties *)v7 _setTintColor:v10];

  v11 = objc_alloc_init(UIListContentTextProperties);
  v12 = [v6 defaultTextLabelFontForCellStyle:1];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v12];

  v13 = [v6 defaultTextColorForCellStyle:1 traitCollection:v4 tintColor:0 state:v5];
  [(UIBackgroundConfiguration *)v11 _setBackgroundColor:v13];

  [(UIListContentTextProperties *)v11 _configureWithConstants:v6 traitCollection:v4 forSidebar:0];
  v14 = objc_alloc_init(UIListContentTextProperties);
  v15 = [v6 defaultDetailTextFontForCellStyle:1];
  [(UIContentUnavailableImageProperties *)v14 _setTintColor:v15];

  v16 = [v6 defaultDetailTextColorForCellStyle:1 traitCollection:v4 state:v5];

  [(UIBackgroundConfiguration *)v14 _setBackgroundColor:v16];
  [(UIListContentTextProperties *)v14 _configureWithConstants:v6 traitCollection:v4 forSidebar:0];
  v17 = _UICellContentViewDefaultDirectionalLayoutMargins(v6, v4, 1, 0, 0);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v6 defaultImageToTextPaddingForSidebar:0];
  v25 = v24;
  [v6 defaultTextToSubtitlePaddingForCellStyle:1];
  v27 = [[UIListContentConfiguration alloc] _initWithImageProperties:v7 textProperties:v11 secondaryTextProperties:v14 directionalLayoutMargins:1 prefersSideBySideTextAndSecondaryText:v17 imageToTextPadding:v19 textToSecondaryTextVerticalPadding:v21, v23, v25, v26];
  v28 = v27;
  if (v27)
  {
    v27[8] = 2;
    v29 = *(v27 + 4);
    if ((v29 & 0x40) == 0)
    {
      *(v27 + 13) = 1;
    }

    *(v27 + 4) = v29 & 0xFEFF;
  }

  return v28;
}

+ (id)_defaultPlainHeaderConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [(UIListContentConfiguration *)v6 _defaultHeaderFooterConfigurationForState:v5 traitCollection:v4 isHeader:1 style:0];

  if (v7)
  {
    *(v7 + 64) = 3;
    v8 = *(v7 + 8);
    if ((v8 & 0x40) == 0)
    {
      *(v7 + 13) = 0;
    }

    *(v7 + 8) = v8 & 0xFEFF;
  }

  return v7;
}

- (void)_setDefaultStyle:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 64) = a2;
    if ((*(a1 + 8) & 0x40) != 0)
    {
LABEL_18:
      if (a2 > 0x10 || ((1 << a2) & 0x18F80) == 0)
      {
        v3 = *(a1 + 8) & 0xFEFF;
        goto LABEL_21;
      }

LABEL_20:
      v3 = *(a1 + 8) | 0x100;
LABEL_21:
      *(a1 + 8) = v3;
      return;
    }

    if (a2 <= 8)
    {
      if ((a2 - 3) < 4)
      {
        goto LABEL_15;
      }

      if (a2 < 3 || (a2 - 7) < 2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (a2 <= 13)
      {
        if ((a2 - 10) >= 2)
        {
          if ((a2 - 12) >= 2)
          {
            if (a2 == 9)
            {
              *(a1 + 13) = 1;
              goto LABEL_20;
            }

            goto LABEL_24;
          }

          goto LABEL_15;
        }

LABEL_17:
        *(a1 + 13) = 1;
        goto LABEL_18;
      }

      if ((a2 - 15) < 2)
      {
        goto LABEL_17;
      }

      if ((a2 - 17) < 2)
      {
LABEL_15:
        *(a1 + 13) = 0;
        goto LABEL_18;
      }

      if (a2 == 14)
      {
        goto LABEL_17;
      }
    }

LABEL_24:
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:sel__setDefaultStyle_ object:a1 file:@"UIListContentConfiguration.m" lineNumber:929 description:{@"Unknown style: %ld", *(a1 + 64)}];

    *(a1 + 13) = 1;
    a2 = *(a1 + 64);
    goto LABEL_18;
  }
}

+ (id)footerConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultPlainFooterConfigurationForState:v3 traitCollection:v4];

  if (v5)
  {
    *(v5 + 64) = 18;
    v6 = *(v5 + 8);
    if ((v6 & 0x40) == 0)
    {
      *(v5 + 13) = 0;
    }

    *(v5 + 8) = v6 & 0xFEFF;
  }

  return v5;
}

+ (id)_defaultPlainFooterConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [(UIListContentConfiguration *)v6 _defaultHeaderFooterConfigurationForState:v5 traitCollection:v4 isHeader:0 style:0];

  if (v7)
  {
    *(v7 + 64) = 4;
    v8 = *(v7 + 8);
    if ((v8 & 0x40) == 0)
    {
      *(v7 + 13) = 0;
    }

    *(v7 + 8) = v8 & 0xFEFF;
  }

  return v7;
}

+ (UIListContentConfiguration)accompaniedSidebarCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultSidebarCellConfigurationForState:v3 traitCollection:v4 style:2];

  return v5;
}

+ (id)_defaultSidebarCellConfigurationForState:(void *)a3 traitCollection:(uint64_t)a4 style:
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = [(UIListContentConfiguration *)v8 _defaultCellConfigurationForState:v7 traitCollection:v6];
  [(UIListContentConfiguration *)v8 _applySidebarCellStylingToConfiguration:v9 forState:v7 traitCollection:v6 cellStyle:0 sidebarStyle:a4];

  if (a4 == 2)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = v9 + 8;
    v11 = *(v9 + 8);
    v12 = 10;
  }

  else if (a4 == 3)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = v9 + 8;
    v11 = *(v9 + 8);
    v12 = 15;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = v9 + 8;
    v11 = *(v9 + 8);
    v12 = 7;
  }

  *(v10 + 56) = v12;
  if ((v11 & 0x40) == 0)
  {
    *(v9 + 13) = 1;
  }

  *v10 = v11 | 0x100;
LABEL_12:

  return v9;
}

+ (UIListContentConfiguration)accompaniedSidebarSubtitleCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultSidebarSubtitleCellConfigurationForState:v3 traitCollection:v4 style:2];

  return v5;
}

+ (id)_defaultSidebarSubtitleCellConfigurationForState:(void *)a3 traitCollection:(uint64_t)a4 style:
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = [(UIListContentConfiguration *)v8 _defaultSubtitleCellConfigurationForState:v7 traitCollection:v6];
  [(UIListContentConfiguration *)v8 _applySidebarCellStylingToConfiguration:v9 forState:v7 traitCollection:v6 cellStyle:3 sidebarStyle:a4];

  if (a4 == 2)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = v9 + 8;
    v11 = *(v9 + 8);
    v12 = 11;
  }

  else if (a4 == 3)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = v9 + 8;
    v11 = *(v9 + 8);
    v12 = 16;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = v9 + 8;
    v11 = *(v9 + 8);
    v12 = 8;
  }

  *(v10 + 56) = v12;
  if ((v11 & 0x40) == 0)
  {
    *(v9 + 13) = 1;
  }

  *v10 = v11 | 0x100;
LABEL_12:

  return v9;
}

+ (id)_defaultInsetGroupedHeaderConfigurationForState:(void *)a3 traitCollection:(uint64_t)a4 isExtraProminent:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = _UITableConstantsForTraitCollection(v7);
  v9 = objc_alloc_init(UIListContentImageProperties);
  v11 = [v8 defaultImageSymbolConfigurationForTraitCollection:v7];
  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v10, v11, 24);
  }

  v12 = objc_alloc_init(UIListContentTextProperties);
  [(UIListContentTextProperties *)v12 _configureWithConstants:v8 traitCollection:v7 forSidebar:0];

  if (v12)
  {
    v12->_showsExpansionTextWhenTruncated = 0;
  }

  v13 = [(UIListContentTextProperties *)v12 copy];
  if (objc_opt_respondsToSelector())
  {
    v14 = [v8 defaultInsetGroupedHeaderFontForExtraProminentStyle:a4 secondaryText:0];
    [(UIContentUnavailableImageProperties *)v12 _setTintColor:v14];

    v15 = [v8 defaultInsetGroupedHeaderFontForExtraProminentStyle:a4 secondaryText:1];
    [(UIContentUnavailableImageProperties *)v13 _setTintColor:v15];
  }

  v16 = +[UIColor labelColor];
  [(UIBackgroundConfiguration *)v12 _setBackgroundColor:v16];

  v17 = +[UIColor secondaryLabelColor];
  [(UIBackgroundConfiguration *)v13 _setBackgroundColor:v17];

  v18 = v6;
  if ([v18 isDisabled])
  {
    v19 = [v18 isSwiped];

    if ((v19 & 1) == 0)
    {
      v20 = +[UIColor quaternaryLabelColor];
      [(UIContentUnavailableImageProperties *)v9 _setTintColor:v20];

      v21 = +[UIColor quaternaryLabelColor];
      [(UIBackgroundConfiguration *)v12 _setBackgroundColor:v21];

      v22 = +[UIColor quaternaryLabelColor];
      [(UIBackgroundConfiguration *)v13 _setBackgroundColor:v22];

      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([v18 isHighlighted])
  {
    [(UIListContentImageProperties *)v9 _setTintColorTransformerIdentifier:?];
    [(UIListContentTextProperties *)v12 _setColorTransformerIdentifier:?];
    [(UIListContentTextProperties *)v13 _setColorTransformerIdentifier:?];
  }

LABEL_13:
  v38 = 0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v8 defaultInsetGroupedHeaderLayoutMarginsForExtraProminentStyle:a4 outAxesPreservingSuperviewLayoutMargins:&v38];
    v26 = v27;
    v25 = v28;
    v24 = v29;
    v23 = v30;
  }

  [v8 defaultImageToTextPaddingForSidebar:0];
  v32 = v31;
  [v8 defaultTextToSubtitlePaddingForCellStyle:0];
  v34 = [[UIListContentConfiguration alloc] _initWithImageProperties:v9 textProperties:v12 secondaryTextProperties:v13 directionalLayoutMargins:0 prefersSideBySideTextAndSecondaryText:v26 imageToTextPadding:v25 textToSecondaryTextVerticalPadding:v24, v23, v32, v33];
  v35 = v34;
  if (v34)
  {
    v34[2] = v38;
  }

  if (a4)
  {
    v36 = 13;
  }

  else
  {
    v36 = 12;
  }

  [(UIListContentConfiguration *)v34 _setDefaultStyle:v36];

  return v35;
}

- (id)_initWithImageProperties:(void *)a3 textProperties:(void *)a4 secondaryTextProperties:(char)a5 directionalLayoutMargins:(double)a6 prefersSideBySideTextAndSecondaryText:(double)a7 imageToTextPadding:(double)a8 textToSecondaryTextVerticalPadding:(double)a9
{
  v22 = a2;
  v23 = a3;
  v24 = a4;
  if (a1)
  {
    v27.receiver = a1;
    v27.super_class = UIListContentConfiguration;
    v25 = objc_msgSendSuper2(&v27, sel_init);
    a1 = v25;
    if (v25)
    {
      objc_storeStrong(v25 + 9, a2);
      objc_storeStrong(a1 + 10, a3);
      objc_storeStrong(a1 + 11, a4);
      a1[2] = 1;
      *(a1 + 12) = a6;
      *(a1 + 13) = a7;
      *(a1 + 14) = a8;
      *(a1 + 15) = a9;
      *(a1 + 12) = a5;
      *(a1 + 3) = a10;
      a1[4] = 0x4020000000000000;
      *(a1 + 5) = a11;
      a1[6] = 0x3FF0000000000000;
    }
  }

  return a1;
}

+ (id)_defaultInsetGroupedCellConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [UIListContentConfiguration _defaultCellConfigurationForState:v5 traitCollection:v4];

  objc_opt_self();
  if (v6)
  {
    *(v6 + 64) = 14;
    v7 = *(v6 + 8);
    if ((v7 & 0x40) == 0)
    {
      *(v6 + 13) = 1;
    }

    *(v6 + 8) = v7 & 0xFEFF;
  }

  return v6;
}

+ (id)_defaultInsetGroupedCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultInsetGroupedCellConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (id)_defaultHeaderFooterConfigurationForState:(void *)a3 traitCollection:(uint64_t)a4 isHeader:(uint64_t)a5 style:
{
  v8 = a2;
  v9 = a3;
  objc_opt_self();
  v10 = _UITableConstantsForTraitCollection(v9);
  v11 = objc_alloc_init(UIListContentImageProperties);
  v13 = [v10 defaultImageSymbolConfigurationForTraitCollection:v9];
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v12, v13, 24);
  }

  v14 = [v10 defaultImageTintColorForState:v8 traitCollection:v9];
  [(UIContentUnavailableImageProperties *)v11 _setTintColor:v14];

  v15 = objc_alloc_init(UIListContentTextProperties);
  if (a4)
  {
    v16 = [v10 defaultHeaderFontForTableViewStyle:a5];
    [(UIContentUnavailableImageProperties *)v15 _setTintColor:v16];

    [v10 defaultHeaderTextColorForTableViewStyle:a5 focused:{objc_msgSend(v8, "isFocused")}];
  }

  else
  {
    v17 = [v10 defaultFooterFontForTableViewStyle:a5];
    [(UIContentUnavailableImageProperties *)v15 _setTintColor:v17];

    [v10 defaultFooterTextColorForTableViewStyle:a5 focused:{objc_msgSend(v8, "isFocused")}];
  }
  v18 = ;
  [(UIBackgroundConfiguration *)v15 _setBackgroundColor:v18];

  [(UIListContentTextProperties *)v15 _configureWithConstants:v10 traitCollection:v9 forSidebar:0];
  if (v15)
  {
    v15->_showsExpansionTextWhenTruncated = 0;
    v15->_transform = [v10 shouldUppercaseHeaderFooterTextForTableStyle:a5 isHeader:a4];
  }

  else
  {
    [v10 shouldUppercaseHeaderFooterTextForTableStyle:a5 isHeader:a4];
  }

  v19 = [(UIListContentTextProperties *)v15 copy];
  v20 = v19;
  if (v19)
  {
    *(v19 + 96) = 0;
  }

  [v10 defaultHeaderFooterLayoutMarginsForTableViewStyle:a5 isHeader:a4 isFirstSection:0];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v9 layoutDirection];
  if (v29 == 1)
  {
    v30 = v28;
  }

  else
  {
    v30 = v24;
  }

  if (v29 != 1)
  {
    v24 = v28;
  }

  [v10 defaultImageToTextPaddingForSidebar:0];
  v32 = v31;
  [v10 defaultTextToSubtitlePaddingForCellStyle:0];
  v34 = [[UIListContentConfiguration alloc] _initWithImageProperties:v11 textProperties:v15 secondaryTextProperties:v20 directionalLayoutMargins:0 prefersSideBySideTextAndSecondaryText:v22 imageToTextPadding:v30 textToSecondaryTextVerticalPadding:v26, v24, v32, v33];

  return v34;
}

+ (id)_defaultGroupedHeaderConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [(UIListContentConfiguration *)v6 _defaultHeaderFooterConfigurationForState:v5 traitCollection:v4 isHeader:1 style:1];

  if (v7)
  {
    *(v7 + 64) = 5;
    v8 = *(v7 + 8);
    if ((v8 & 0x40) == 0)
    {
      *(v7 + 13) = 0;
    }

    *(v7 + 8) = v8 & 0xFEFF;
  }

  return v7;
}

+ (id)_defaultGroupedFooterConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [(UIListContentConfiguration *)v6 _defaultHeaderFooterConfigurationForState:v5 traitCollection:v4 isHeader:0 style:1];

  if (v7)
  {
    *(v7 + 64) = 6;
    v8 = *(v7 + 8);
    if ((v8 & 0x40) == 0)
    {
      *(v7 + 13) = 0;
    }

    *(v7 + 8) = v8 & 0xFEFF;
  }

  return v7;
}

+ (void)_applySidebarCellStylingToConfiguration:(void *)a3 forState:(void *)a4 traitCollection:(uint64_t)a5 cellStyle:(uint64_t)a6 sidebarStyle:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  objc_opt_self();
  v13 = _UITableConstantsForTraitCollection(v12);
  v14 = v13;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  if (v13)
  {
    [v13 contentPropertiesForSidebarElementWithTraitCollection:v12 state:v11 isHeader:0 cellStyle:a5 sidebarStyle:a6];
  }

  [v14 defaultImageToTextPaddingForSidebar:{1, v36}];
  if (v10)
  {
    v10[3] = v15;
  }

  v16 = _UICellContentViewDefaultDirectionalLayoutMargins(v14, v12, a5, 1, 0);
  if (v10)
  {
    *(v10 + 12) = v16;
    v10[13] = v17;
    v10[14] = v18;
    v10[15] = v19;
  }

  v20 = [v10 textProperties];
  [(UIListContentTextProperties *)v20 _configureWithConstants:v14 traitCollection:v12 forSidebar:1];

  v21 = [v10 secondaryTextProperties];
  [(UIListContentTextProperties *)v21 _configureWithConstants:v14 traitCollection:v12 forSidebar:1];

  v22 = [v10 textProperties];
  [(UIContentUnavailableImageProperties *)v22 _setTintColor:v36];

  v23 = [v10 textProperties];
  [(UIBackgroundConfiguration *)v23 _setBackgroundColor:v37];

  v24 = [v10 textProperties];
  [(UIListContentTextProperties *)v24 _setColorTransformerIdentifier:?];

  v25 = [v10 textProperties];
  if (v25)
  {
    v25[13] = v41;
  }

  v26 = [v10 secondaryTextProperties];
  [(UIContentUnavailableImageProperties *)v26 _setTintColor:?];

  v27 = [v10 secondaryTextProperties];
  [(UIBackgroundConfiguration *)v27 _setBackgroundColor:?];

  v28 = [v10 secondaryTextProperties];
  [(UIListContentTextProperties *)v28 _setColorTransformerIdentifier:v40];

  v29 = [v10 secondaryTextProperties];
  if (v29)
  {
    v29[13] = *(&v41 + 1);
  }

  v30 = [v10 imageProperties];
  [(UIContentUnavailableImageProperties *)v30 _setTintColor:v38];

  v31 = [v10 imageProperties];
  v33 = v31;
  if (v31)
  {
    objc_setProperty_nonatomic_copy(v31, v32, *(&v38 + 1), 24);
  }

  v34 = [v10 imageProperties];
  [(UIListContentImageProperties *)v34 _setTintColorTransformerIdentifier:?];

  v35 = [v10 imageProperties];
  if (v35)
  {
    v35[12] = v42;
  }

  if (v10)
  {
    v10[6] = v39;
  }

  __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(&v36);
}

+ (id)_sidebarPlainCellConfiguration
{
  v0 = objc_opt_self();
  v1 = [UICellConfigurationState _readonlyCellState:?];
  v2 = +[UITraitCollection _fallbackTraitCollection];
  v3 = [(UIListContentConfiguration *)v0 _defaultSidebarCellConfigurationForState:v1 traitCollection:v2 style:3];

  return v3;
}

+ (id)_defaultSidebarHeaderConfigurationForState:(void *)a3 traitCollection:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = _UITableConstantsForTraitCollection(v5);
  v8 = [v5 _splitViewControllerContext];
  v9 = _UICollectionViewListStyleFromListEnvironment([v5 listEnvironment]);
  if (v9 == 4)
  {
    v10 = 3;
  }

  else if (v9 == 3)
  {
    if (v8 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [(UIListContentConfiguration *)v6 _defaultCellConfigurationForState:v4 traitCollection:v5];
  [v7 defaultImageToTextPaddingForSidebar:1];
  if (v11)
  {
    *(v11 + 24) = v12;
    *(v11 + 96) = _UICellContentViewDefaultDirectionalLayoutMargins(v7, v5, 0, 1, 0);
    *(v11 + 104) = v13;
    *(v11 + 112) = v14;
    *(v11 + 120) = v15;
  }

  else
  {
    _UICellContentViewDefaultDirectionalLayoutMargins(v7, v5, 0, 1, 0);
  }

  v16 = [v11 textProperties];
  [(UIListContentTextProperties *)v16 _configureWithConstants:v7 traitCollection:v5 forSidebar:1];

  v17 = [v11 secondaryTextProperties];
  [(UIListContentTextProperties *)v17 _configureWithConstants:v7 traitCollection:v5 forSidebar:1];

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  if (v7)
  {
    [v7 contentPropertiesForSidebarElementWithTraitCollection:v5 state:v4 isHeader:1 cellStyle:0 sidebarStyle:v10];
    v18 = v35;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v11 textProperties];
  [(UIContentUnavailableImageProperties *)v19 _setTintColor:v18];

  v20 = [v11 textProperties];
  [(UIBackgroundConfiguration *)v20 _setBackgroundColor:v36];

  v21 = [v11 textProperties];
  [(UIListContentTextProperties *)v21 _setColorTransformerIdentifier:?];

  v22 = [v11 textProperties];
  if (v22)
  {
    v22[13] = v40;
  }

  v23 = [v11 secondaryTextProperties];
  [(UIContentUnavailableImageProperties *)v23 _setTintColor:?];

  v24 = [v11 secondaryTextProperties];
  [(UIBackgroundConfiguration *)v24 _setBackgroundColor:?];

  v25 = [v11 secondaryTextProperties];
  [(UIListContentTextProperties *)v25 _setColorTransformerIdentifier:v39];

  v26 = [v11 secondaryTextProperties];
  if (v26)
  {
    v26[13] = *(&v40 + 1);
  }

  v27 = [v11 imageProperties];
  [(UIContentUnavailableImageProperties *)v27 _setTintColor:v37];

  v28 = [v11 imageProperties];
  v30 = v28;
  if (v28)
  {
    objc_setProperty_nonatomic_copy(v28, v29, *(&v37 + 1), 24);
  }

  v31 = [v11 imageProperties];
  [(UIListContentImageProperties *)v31 _setTintColorTransformerIdentifier:?];

  v32 = [v11 imageProperties];
  if (v32)
  {
    v32[12] = v41;
  }

  if (v11)
  {
    *(v11 + 48) = v38;
    *(v11 + 64) = 9;
    v33 = *(v11 + 8);
    if ((v33 & 0x40) == 0)
    {
      *(v11 + 13) = 1;
    }

    *(v11 + 8) = v33 | 0x100;
  }

  __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(&v35);

  return v11;
}

+ (UIListContentConfiguration)sidebarCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultSidebarCellConfigurationForState:v3 traitCollection:v4 style:1];

  return v5;
}

+ (UIListContentConfiguration)sidebarSubtitleCellConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultSidebarSubtitleCellConfigurationForState:v3 traitCollection:v4 style:1];

  return v5;
}

+ (UIListContentConfiguration)plainFooterConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultPlainFooterConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (UIListContentConfiguration)sidebarHeaderConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultSidebarHeaderConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (UIListContentConfiguration)groupedFooterConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultGroupedFooterConfigurationForState:v3 traitCollection:v4];

  return v5;
}

+ (id)_headerConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultPlainHeaderConfigurationForState:v3 traitCollection:v4];

  if (v5)
  {
    *(v5 + 64) = 17;
    v6 = *(v5 + 8);
    if ((v6 & 0x40) == 0)
    {
      *(v5 + 13) = 0;
    }

    *(v5 + 8) = v6 & 0xFEFF;
  }

  return v5;
}

+ (id)_footerConfiguration
{
  v3 = [UICellConfigurationState _readonlyCellState:?];
  v4 = +[UITraitCollection _fallbackTraitCollection];
  v5 = [(UIListContentConfiguration *)a1 _defaultPlainFooterConfigurationForState:v3 traitCollection:v4];

  if (v5)
  {
    *(v5 + 64) = 18;
    v6 = *(v5 + 8);
    if ((v6 & 0x40) == 0)
    {
      *(v5 + 13) = 0;
    }

    *(v5 + 8) = v6 & 0xFEFF;
  }

  return v5;
}

- (id)updatedConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = [(UIListContentConfiguration *)self copy];
  if (self)
  {
    defaultStyle = self->_defaultStyle;
  }

  else
  {
    defaultStyle = 0;
  }

  v7 = v4;
  v8 = objc_opt_self();
  v9 = [UICellConfigurationState _readonlyCellState:v7];
  v10 = [v7 traitCollection];
  if (dyld_program_sdk_at_least() && defaultStyle <= 0x12 && ((1 << defaultStyle) & 0x60007) != 0)
  {
    v11 = _UICollectionViewListStyleFromListEnvironment([v10 listEnvironment]);
    v12 = v11;
    if (defaultStyle > 1)
    {
      if (defaultStyle != 2)
      {
        if (defaultStyle != 17)
        {
          if (defaultStyle == 18)
          {
            if (v11 > 2)
            {
              if (v11 != 3)
              {
                if (v11 == 4)
                {
                  goto LABEL_13;
                }

                goto LABEL_72;
              }
            }

            else if ((v11 - 1) >= 2)
            {
              if (!v11)
              {
LABEL_13:
                v13 = [(UIListContentConfiguration *)v8 _defaultPlainFooterConfigurationForState:v9 traitCollection:v10];
LABEL_89:
                v28 = v13;
                goto LABEL_90;
              }

LABEL_72:
              v44 = [MEMORY[0x1E696AAA8] currentHandler];
              v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[UIListContentConfiguration _defaultConfigurationForStyle:state:]"];
              [v44 handleFailureInFunction:v45 file:@"UIListContentConfiguration.m" lineNumber:777 description:{@"Unknown list appearance style in trait collection. Style: %ld; trait collection: %@", v12, v10}];

              goto LABEL_13;
            }

            v13 = [(UIListContentConfiguration *)v8 _defaultGroupedFooterConfigurationForState:v9 traitCollection:v10];
            goto LABEL_89;
          }

          v32 = [MEMORY[0x1E696AAA8] currentHandler];
          [v32 handleFailureInMethod:sel__defaultConfigurationForStyle_state_ object:v8 file:@"UIListContentConfiguration.m" lineNumber:783 description:{@"Attempting to unknown resolve generic content configuration style: %ld for state: %@", defaultStyle, v7}];

LABEL_45:
          v13 = [(UIListContentConfiguration *)v8 _defaultCellConfigurationForState:v9 traitCollection:v10];
          goto LABEL_89;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            v13 = [(UIListContentConfiguration *)v8 _defaultSidebarHeaderConfigurationForState:v9 traitCollection:v10];
            goto LABEL_89;
          }

          if (v11 == 4)
          {
            goto LABEL_82;
          }
        }

        else
        {
          if ((v11 - 1) < 2)
          {
            v13 = [(UIListContentConfiguration *)v8 _defaultGroupedHeaderConfigurationForState:v9 traitCollection:v10];
            goto LABEL_89;
          }

          if (!v11)
          {
LABEL_82:
            v13 = [(UIListContentConfiguration *)v8 _defaultPlainHeaderConfigurationForState:v9 traitCollection:v10];
            goto LABEL_89;
          }
        }

        v43 = [MEMORY[0x1E696AAA8] currentHandler];
        [v43 handleFailureInMethod:sel__defaultConfigurationForStyle_state_ object:v8 file:@"UIListContentConfiguration.m" lineNumber:756 description:{@"Unknown list appearance style in trait collection. Style: %ld; trait collection: %@", v12, v10}];

        goto LABEL_82;
      }

      if (v11 >= 2)
      {
        if ((v11 - 3) < 2)
        {
          v22 = [v10 _splitViewControllerContext];
          v23 = 1;
          if (v22 == 2)
          {
            v23 = 2;
          }

          if (v12 == 3)
          {
            v24 = v23;
          }

          else
          {
            v24 = 3;
          }

          v25 = v10;
          v26 = v9;
          v27 = objc_opt_self();
          v28 = [(UIListContentConfiguration *)v27 _defaultValueCellConfigurationForState:v26 traitCollection:v25];
          [(UIListContentConfiguration *)v27 _applySidebarCellStylingToConfiguration:v28 forState:v26 traitCollection:v25 cellStyle:1 sidebarStyle:v24];

          goto LABEL_90;
        }

        if (v11 == 2)
        {
          v46 = [(UIListContentConfiguration *)v8 _defaultValueCellConfigurationForState:v9 traitCollection:v10];
LABEL_80:
          v28 = v46;
          objc_opt_self();
          goto LABEL_90;
        }

        v47 = [MEMORY[0x1E696AAA8] currentHandler];
        [v47 handleFailureInMethod:sel__defaultConfigurationForStyle_state_ object:v8 file:@"UIListContentConfiguration.m" lineNumber:736 description:{@"Unknown list appearance style in trait collection. Style: %ld; trait collection: %@", v12, v10}];
      }

      v13 = [(UIListContentConfiguration *)v8 _defaultValueCellConfigurationForState:v9 traitCollection:v10];
      goto LABEL_89;
    }

    if (!defaultStyle)
    {
      if (v11 >= 2)
      {
        if ((v11 - 3) < 2)
        {
          v29 = [v10 _splitViewControllerContext];
          v30 = 1;
          if (v29 == 2)
          {
            v30 = 2;
          }

          if (v12 == 3)
          {
            v31 = v30;
          }

          else
          {
            v31 = 3;
          }

          v13 = [(UIListContentConfiguration *)v8 _defaultSidebarCellConfigurationForState:v9 traitCollection:v10 style:v31];
          goto LABEL_89;
        }

        if (v11 == 2)
        {
          v13 = [(UIListContentConfiguration *)v8 _defaultInsetGroupedCellConfigurationForState:v9 traitCollection:v10];
          goto LABEL_89;
        }

        v48 = [MEMORY[0x1E696AAA8] currentHandler];
        [v48 handleFailureInMethod:sel__defaultConfigurationForStyle_state_ object:v8 file:@"UIListContentConfiguration.m" lineNumber:686 description:{@"Unknown list appearance style in trait collection. Style: %ld; trait collection: %@", v12, v10}];
      }

      goto LABEL_45;
    }

    if (v11 >= 2)
    {
      if ((v11 - 3) < 2)
      {
        v19 = [v10 _splitViewControllerContext];
        v20 = 1;
        if (v19 == 2)
        {
          v20 = 2;
        }

        if (v12 == 3)
        {
          v21 = v20;
        }

        else
        {
          v21 = 3;
        }

        v13 = [(UIListContentConfiguration *)v8 _defaultSidebarSubtitleCellConfigurationForState:v9 traitCollection:v10 style:v21];
        goto LABEL_89;
      }

      if (v11 == 2)
      {
        v46 = [(UIListContentConfiguration *)v8 _defaultSubtitleCellConfigurationForState:v9 traitCollection:v10];
        goto LABEL_80;
      }

      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      [v49 handleFailureInMethod:sel__defaultConfigurationForStyle_state_ object:v8 file:@"UIListContentConfiguration.m" lineNumber:711 description:{@"Unknown list appearance style in trait collection. Style: %ld; trait collection: %@", v12, v10}];
    }

    v13 = [(UIListContentConfiguration *)v8 _defaultSubtitleCellConfigurationForState:v9 traitCollection:v10];
    goto LABEL_89;
  }

  v14 = v9;
  v15 = v10;
  v16 = objc_opt_self();
  v17 = v16;
  switch(defaultStyle)
  {
    case 0:
      goto LABEL_65;
    case 1:
      v18 = [(UIListContentConfiguration *)v16 _defaultSubtitleCellConfigurationForState:v14 traitCollection:v15];
      break;
    case 2:
      v18 = [(UIListContentConfiguration *)v16 _defaultValueCellConfigurationForState:v14 traitCollection:v15];
      break;
    case 3:
    case 17:
      v18 = [(UIListContentConfiguration *)v16 _defaultPlainHeaderConfigurationForState:v14 traitCollection:v15];
      break;
    case 4:
    case 18:
      v18 = [(UIListContentConfiguration *)v16 _defaultPlainFooterConfigurationForState:v14 traitCollection:v15];
      break;
    case 5:
      v18 = [(UIListContentConfiguration *)v16 _defaultGroupedHeaderConfigurationForState:v14 traitCollection:v15];
      break;
    case 6:
      v18 = [(UIListContentConfiguration *)v16 _defaultGroupedFooterConfigurationForState:v14 traitCollection:v15];
      break;
    case 7:
      v39 = v14;
      v40 = v15;
      v41 = 1;
      goto LABEL_63;
    case 8:
      v33 = v14;
      v34 = v15;
      v35 = 1;
      goto LABEL_59;
    case 9:
      v18 = [(UIListContentConfiguration *)v16 _defaultSidebarHeaderConfigurationForState:v14 traitCollection:v15];
      break;
    case 10:
      v39 = v14;
      v40 = v15;
      v41 = 2;
      goto LABEL_63;
    case 11:
      v33 = v14;
      v34 = v15;
      v35 = 2;
      goto LABEL_59;
    case 12:
      v36 = v14;
      v37 = v15;
      v38 = 0;
      goto LABEL_61;
    case 13:
      v36 = v14;
      v37 = v15;
      v38 = 1;
LABEL_61:
      v18 = [(UIListContentConfiguration *)v16 _defaultInsetGroupedHeaderConfigurationForState:v36 traitCollection:v37 isExtraProminent:v38];
      break;
    case 14:
      v18 = [(UIListContentConfiguration *)v16 _defaultInsetGroupedCellConfigurationForState:v14 traitCollection:v15];
      break;
    case 15:
      v39 = v14;
      v40 = v15;
      v41 = 3;
LABEL_63:
      v18 = [(UIListContentConfiguration *)v16 _defaultSidebarCellConfigurationForState:v39 traitCollection:v40 style:v41];
      break;
    case 16:
      v33 = v14;
      v34 = v15;
      v35 = 3;
LABEL_59:
      v18 = [(UIListContentConfiguration *)v16 _defaultSidebarSubtitleCellConfigurationForState:v33 traitCollection:v34 style:v35];
      break;
    default:
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      [v42 handleFailureInMethod:sel__defaultConfigurationForFixedStyle_state_traitCollection_ object:v17 file:@"UIListContentConfiguration.m" lineNumber:849 description:{@"Default configuration requested for unknown style: %ld; state: %@; trait collection: %@", defaultStyle, v14, v15}];

LABEL_65:
      v18 = [(UIListContentConfiguration *)v17 _defaultCellConfigurationForState:v14 traitCollection:v15];
      break;
  }

  v28 = v18;

LABEL_90:
  v50 = [v5 imageProperties];
  v51 = [v28 imageProperties];
  [(UIListContentImageProperties *)v50 _applyPropertiesFromDefaultProperties:v51];

  v52 = [v5 textProperties];
  v53 = [v28 textProperties];
  [(UIListContentTextProperties *)v52 _applyPropertiesFromDefaultProperties:v53];

  v54 = [v5 secondaryTextProperties];
  v55 = [v28 secondaryTextProperties];
  [(UIListContentTextProperties *)v54 _applyPropertiesFromDefaultProperties:v55];

  configurationFlags = self->_configurationFlags;
  if (configurationFlags)
  {
    goto LABEL_94;
  }

  if (v28)
  {
    v57 = *(v28 + 16);
    if (!v5)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v57 = 0;
  if (v5)
  {
LABEL_93:
    *(v5 + 16) = v57;
    configurationFlags = self->_configurationFlags;
  }

LABEL_94:
  if ((configurationFlags & 2) != 0)
  {
    goto LABEL_98;
  }

  if (v28)
  {
    v58 = *(v28 + 96);
    v59 = *(v28 + 112);
    if (!v5)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  v58 = 0uLL;
  v59 = 0uLL;
  if (v5)
  {
LABEL_97:
    *(v5 + 96) = v58;
    *(v5 + 112) = v59;
    configurationFlags = self->_configurationFlags;
  }

LABEL_98:
  if ((configurationFlags & 4) != 0)
  {
    goto LABEL_102;
  }

  if (v28)
  {
    v60 = *(v28 + 12);
    if (!v5)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  v60 = 0;
  if (v5)
  {
LABEL_101:
    *(v5 + 12) = v60 & 1;
    configurationFlags = self->_configurationFlags;
  }

LABEL_102:
  if ((configurationFlags & 8) != 0)
  {
    goto LABEL_106;
  }

  if (v28)
  {
    v61 = *(v28 + 24);
    if (!v5)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  v61 = 0;
  if (v5)
  {
LABEL_105:
    *(v5 + 24) = v61;
    configurationFlags = self->_configurationFlags;
  }

LABEL_106:
  if ((configurationFlags & 0x10) != 0)
  {
    goto LABEL_110;
  }

  if (v28)
  {
    v62 = *(v28 + 32);
    if (!v5)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  v62 = 0;
  if (v5)
  {
LABEL_109:
    *(v5 + 32) = v62;
    configurationFlags = self->_configurationFlags;
  }

LABEL_110:
  if ((configurationFlags & 0x20) != 0)
  {
    goto LABEL_114;
  }

  if (v28)
  {
    v63 = *(v28 + 40);
    if (!v5)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  v63 = 0;
  if (v5)
  {
LABEL_113:
    *(v5 + 40) = v63;
    configurationFlags = self->_configurationFlags;
  }

LABEL_114:
  if ((configurationFlags & 0x80) != 0)
  {
    goto LABEL_118;
  }

  if (v28)
  {
    v64 = *(v28 + 48);
    if (!v5)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

  v64 = 0;
  if (v5)
  {
LABEL_117:
    *(v5 + 48) = v64;
    configurationFlags = self->_configurationFlags;
  }

LABEL_118:
  if ((configurationFlags & 0x40) != 0)
  {
    goto LABEL_122;
  }

  if (v28)
  {
    v65 = *(v28 + 13);
    if (!v5)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v65 = 0;
  if (v5)
  {
LABEL_121:
    *(v5 + 13) = v65 & 1;
  }

LABEL_122:
  if (v28)
  {
    v66 = *(v28 + 8) & 0x100;
  }

  else
  {
    v66 = 0;
  }

  *(v5 + 8) = *(v5 + 8) & 0xFEFF | v66;

  return v5;
}

- (UIListContentConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = UIListContentConfiguration;
  v5 = [(UIListContentConfiguration *)&v39 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageProperties"];
    imageProperties = v5->_imageProperties;
    v5->_imageProperties = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textProperties"];
    textProperties = v5->_textProperties;
    v5->_textProperties = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryTextProperties"];
    secondaryTextProperties = v5->_secondaryTextProperties;
    v5->_secondaryTextProperties = v10;

    v5->_axesPreservingSuperviewLayoutMargins = [v4 decodeIntegerForKey:@"axesPreservingSuperviewLayoutMargins"];
    [v4 decodeDirectionalEdgeInsetsForKey:@"directionalLayoutMargins"];
    v5->_directionalLayoutMargins.top = v12;
    v5->_directionalLayoutMargins.leading = v13;
    v5->_directionalLayoutMargins.bottom = v14;
    v5->_directionalLayoutMargins.trailing = v15;
    v5->_prefersSideBySideTextAndSecondaryText = [v4 decodeBoolForKey:@"prefersSideBySideTextAndSecondaryText"];
    [v4 decodeDoubleForKey:@"imageToTextPadding"];
    v5->_imageToTextPadding = v16;
    [v4 decodeDoubleForKey:@"textToSecondaryTextHorizontalPadding"];
    v5->_textToSecondaryTextHorizontalPadding = v17;
    [v4 decodeDoubleForKey:@"textToSecondaryTextVerticalPadding"];
    v5->_textToSecondaryTextVerticalPadding = v18;
    if ([v4 containsValueForKey:@"defaultStyle_v2"])
    {
      v19 = @"defaultStyle_v2";
    }

    else
    {
      v19 = @"defaultStyle";
    }

    v20 = [v4 decodeIntegerForKey:v19];
    if (v20 >= 0x13)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    [(UIListContentConfiguration *)v5 _setDefaultStyle:v21];
    if ([v4 containsValueForKey:@"enforcesMinimumHeight"])
    {
      v5->_enforcesMinimumHeight = [v4 decodeBoolForKey:@"enforcesMinimumHeight"];
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFE | [v4 decodeBoolForKey:v22];

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
    if ([v4 decodeBoolForKey:v23])
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFD | v24;

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"prefersSideBySideTextAndSecondaryText"];
    if ([v4 decodeBoolForKey:v25])
    {
      v26 = 4;
    }

    else
    {
      v26 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFFB | v26;

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
    if ([v4 decodeBoolForKey:v27])
    {
      v28 = 8;
    }

    else
    {
      v28 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFF7 | v28;

    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSecondaryTextHorizontalPadding"];
    if ([v4 decodeBoolForKey:v29])
    {
      v30 = 16;
    }

    else
    {
      v30 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFEF | v30;

    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSecondaryTextVerticalPadding"];
    if ([v4 decodeBoolForKey:v31])
    {
      v32 = 32;
    }

    else
    {
      v32 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFDF | v32;

    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"enforcesMinimumHeight"];
    if ([v4 decodeBoolForKey:v33])
    {
      v34 = 64;
    }

    else
    {
      v34 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFFBF | v34;

    if ([v4 containsValueForKey:@"isSidebarStyle"])
    {
      if ([v4 decodeBoolForKey:@"isSidebarStyle"])
      {
        v35 = 256;
      }

      else
      {
        v35 = 0;
      }

      *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFEFF | v35;
    }

    v36 = [v4 containsValueForKey:@"alpha"];
    v37 = 1.0;
    if (v36)
    {
      [v4 decodeDoubleForKey:{@"alpha", 1.0}];
    }

    v5->_alpha = v37;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  [v22 encodeObject:self->_imageProperties forKey:@"imageProperties"];
  [v22 encodeObject:self->_textProperties forKey:@"textProperties"];
  [v22 encodeObject:self->_secondaryTextProperties forKey:@"secondaryTextProperties"];
  [v22 encodeInteger:self->_axesPreservingSuperviewLayoutMargins forKey:@"axesPreservingSuperviewLayoutMargins"];
  [v22 encodeDirectionalEdgeInsets:@"directionalLayoutMargins" forKey:{self->_directionalLayoutMargins.top, self->_directionalLayoutMargins.leading, self->_directionalLayoutMargins.bottom, self->_directionalLayoutMargins.trailing}];
  [v22 encodeBool:self->_prefersSideBySideTextAndSecondaryText forKey:@"prefersSideBySideTextAndSecondaryText"];
  [v22 encodeDouble:@"imageToTextPadding" forKey:self->_imageToTextPadding];
  [v22 encodeDouble:@"textToSecondaryTextHorizontalPadding" forKey:self->_textToSecondaryTextHorizontalPadding];
  [v22 encodeDouble:@"textToSecondaryTextVerticalPadding" forKey:self->_textToSecondaryTextVerticalPadding];
  [v22 encodeBool:self->_enforcesMinimumHeight forKey:@"enforcesMinimumHeight"];
  [v22 encodeDouble:@"alpha" forKey:self->_alpha];
  [v22 encodeInteger:self->_defaultStyle forKey:@"defaultStyle_v2"];
  defaultStyle = self->_defaultStyle;
  if ((defaultStyle & 0x8000000000000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v5 = 4 * (defaultStyle == 18);
    if (defaultStyle == 17)
    {
      v5 = 3;
    }

    if (defaultStyle - 15 >= 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = 7;
    }

    if (defaultStyle >= 0xE)
    {
      v7 = v6;
    }

    else
    {
      v7 = self->_defaultStyle;
    }
  }

  [v22 encodeInteger:v7 forKey:@"defaultStyle"];
  [v22 encodeBool:HIBYTE(*&self->_configurationFlags) & 1 forKey:@"isSidebarStyle"];
  configurationFlags = self->_configurationFlags;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"axesPreservingSuperviewLayoutMargins"];
  [v22 encodeBool:configurationFlags & 1 forKey:v9];

  v10 = (*&self->_configurationFlags >> 1) & 1;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"directionalLayoutMargins"];
  [v22 encodeBool:v10 forKey:v11];

  v12 = (*&self->_configurationFlags >> 2) & 1;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"prefersSideBySideTextAndSecondaryText"];
  [v22 encodeBool:v12 forKey:v13];

  v14 = (*&self->_configurationFlags >> 3) & 1;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"imageToTextPadding"];
  [v22 encodeBool:v14 forKey:v15];

  v16 = (*&self->_configurationFlags >> 4) & 1;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSecondaryTextHorizontalPadding"];
  [v22 encodeBool:v16 forKey:v17];

  v18 = (*&self->_configurationFlags >> 5) & 1;
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"textToSecondaryTextVerticalPadding"];
  [v22 encodeBool:v18 forKey:v19];

  v20 = (*&self->_configurationFlags >> 6) & 1;
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"enforcesMinimumHeight"];
  [v22 encodeBool:v20 forKey:v21];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(UIListContentImageProperties *)self->_imageProperties copy];
    v6 = *(v4 + 72);
    *(v4 + 72) = v5;

    v7 = [(UIListContentTextProperties *)self->_textProperties copy];
    v8 = *(v4 + 80);
    *(v4 + 80) = v7;

    v9 = [(UIListContentTextProperties *)self->_secondaryTextProperties copy];
    v10 = *(v4 + 88);
    *(v4 + 88) = v9;

    *(v4 + 16) = self->_axesPreservingSuperviewLayoutMargins;
    v11 = *&self->_directionalLayoutMargins.bottom;
    *(v4 + 96) = *&self->_directionalLayoutMargins.top;
    *(v4 + 112) = v11;
    *(v4 + 12) = self->_prefersSideBySideTextAndSecondaryText;
    *(v4 + 24) = self->_imageToTextPadding;
    *(v4 + 32) = self->_textToSecondaryTextHorizontalPadding;
    *(v4 + 40) = self->_textToSecondaryTextVerticalPadding;
    *(v4 + 48) = self->_alpha;
    v12 = [(_UIContentViewEditingConfiguration *)self->_textEditingConfiguration copy];
    v13 = *(v4 + 56);
    *(v4 + 56) = v12;

    *(v4 + 13) = self->_enforcesMinimumHeight;
    *(v4 + 64) = self->_defaultStyle;
    *(v4 + 8) = self->_configurationFlags;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6;
    if (self)
    {
      if (self->_defaultStyle == v6->_defaultStyle && ((*&v6->_configurationFlags ^ *&self->_configurationFlags) & 0x100) == 0 && self->_alpha == v6->_alpha && [(UIListContentImageProperties *)self->_imageProperties _isEqualToProperties:1 compareImage:?]&& [(UIListContentTextProperties *)self->_textProperties _isEqualToProperties:1 compareText:?]&& [(UIListContentTextProperties *)self->_secondaryTextProperties _isEqualToProperties:1 compareText:?]&& self->_axesPreservingSuperviewLayoutMargins == v7->_axesPreservingSuperviewLayoutMargins && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_directionalLayoutMargins.top, *&v7->_directionalLayoutMargins.top), vceqq_f64(*&self->_directionalLayoutMargins.bottom, *&v7->_directionalLayoutMargins.bottom)))) & 1) != 0 && self->_prefersSideBySideTextAndSecondaryText == v7->_prefersSideBySideTextAndSecondaryText && self->_imageToTextPadding == v7->_imageToTextPadding && self->_textToSecondaryTextHorizontalPadding == v7->_textToSecondaryTextHorizontalPadding && self->_textToSecondaryTextVerticalPadding == v7->_textToSecondaryTextVerticalPadding && self->_enforcesMinimumHeight == v7->_enforcesMinimumHeight)
      {
        LOBYTE(self) = _deferringTokenEqualToToken(self->_textEditingConfiguration, v7->_textEditingConfiguration);
      }

      else
      {
        LOBYTE(self) = 0;
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (uint64_t)_isEqualToConfigurationQuick:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3 == a1)
    {
      a1 = 1;
    }

    else if (*(a1 + 64) == v3[8] && ((*(v3 + 4) ^ *(a1 + 8)) & 0x100) == 0 && *(a1 + 48) == *(v3 + 6) && [(UIListContentImageProperties *)*(a1 + 72) _isEqualToPropertiesQuick:1 compareImage:?]&& [(UIListContentTextProperties *)*(a1 + 80) _isEqualToPropertiesQuick:1 compareText:?]&& [(UIListContentTextProperties *)*(a1 + 88) _isEqualToPropertiesQuick:1 compareText:?]&& *(a1 + 16) == v4[2] && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 96), *(v4 + 6)), vceqq_f64(*(a1 + 112), *(v4 + 7))))) & 1) != 0 && *(a1 + 12) == *(v4 + 12) && *(a1 + 24) == *(v4 + 3) && *(a1 + 32) == *(v4 + 4) && *(a1 + 40) == *(v4 + 5) && *(a1 + 13) == *(v4 + 13))
    {
      a1 = _deferringTokenEqualToToken(*(a1 + 56), v4[7]);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (unint64_t)hash
{
  v3 = [(UIListContentImageProperties *)self->_imageProperties hash];
  v4 = [(UIListContentTextProperties *)self->_textProperties hash]^ v3;
  return v4 ^ [(UIListContentTextProperties *)self->_secondaryTextProperties hash];
}

- (id)_descriptionPropertiesForFullDescription:(uint64_t)a1
{
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(a1 + 72);
    if (v5 && v5->data)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [(UIContentUnavailableImageProperties *)v5 _shortDescription];
      v8 = [v6 stringWithFormat:@"image = %@", v7];
      [v4 addObject:v8];
    }

    if ([*(a1 + 80) _hasText])
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [(UIListContentTextProperties *)*(a1 + 80) _shortDescription];
      v11 = [v9 stringWithFormat:@"text = %@", v10];
      [v4 addObject:v11];
    }

    if ([*(a1 + 88) _hasText])
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [(UIListContentTextProperties *)*(a1 + 88) _shortDescription];
      v14 = [v12 stringWithFormat:@"secondaryText = %@", v13];
      [v4 addObject:v14];
    }

    if (*(a1 + 48) != 1.0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"alpha = %g", *(a1 + 48)];
      [v4 addObject:v15];
    }

    if (*(a1 + 56))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"textEditingConfiguration = %@", *(a1 + 56)];
      [v4 addObject:v16];
    }

    if (a2)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = *(a1 + 64);
      if (v18 >= 0x13)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_UIListContentConfigurationStyleToString(_UIListContentConfigurationStyle)"];
        [v20 handleFailureInFunction:v21 file:@"UIListContentConfiguration.m" lineNumber:143 description:{@"Unknown style: %ld", v18}];

        v19 = 0;
      }

      else
      {
        v19 = off_1E7122948[v18];
      }

      v22 = [v17 stringWithFormat:@"Base Style = %@", v19];
      [v4 addObject:v22];

      v23 = *(a1 + 96);
      v24 = *(a1 + 112);
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v23), vceqzq_f64(v24))))))
      {
        v25 = *(a1 + 104);
        v26 = MEMORY[0x1E696AEC0];
        v27 = *(a1 + 120);
        v28 = NSStringFromDirectionalEdgeInsets(*v23.f64);
        v29 = [v26 stringWithFormat:@"directionalLayoutMargins = %@", v28];
        [v4 addObject:v29];
      }

      v30 = *(a1 + 16);
      if (v30)
      {
        v31 = MEMORY[0x1E696AEC0];
        v32 = _UIContentViewStringForAxis(v30);
        v33 = [v31 stringWithFormat:@"axesPreservingSuperviewLayoutMargins = %@", v32];
        [v4 addObject:v33];
      }

      if (*(a1 + 12) == 1)
      {
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"prefersSideBySideTextAndSecondaryText = YES"];
        [v4 addObject:v34];
      }

      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"imageToTextPadding = %g", *(a1 + 24)];
      [v4 addObject:v35];

      if (*(a1 + 12) == 1)
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"textToSecondaryTextHorizontalPadding = %g", *(a1 + 32)];
        [v4 addObject:v36];
      }

      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"textToSecondaryTextVerticalPadding = %g", *(a1 + 40)];
      [v4 addObject:v37];
    }

    if (![v4 count])
    {
      [v4 addObject:@"(empty)"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  v3 = [(UIListContentConfiguration *)self _descriptionPropertiesForFullDescription:?];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 componentsJoinedByString:@" "];;
  v8 = [v4 stringWithFormat:@"<%@: %p %@>", v6, self, v7];;

  return v8;
}

- (double)_minimumHeightForTraitCollection:(id)a3
{
  if (!self->_enforcesMinimumHeight)
  {
    return 0.0;
  }

  v4 = a3;
  v5 = _UITableConstantsForTraitCollection(v4);
  v6 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  [v5 minimumContentViewHeightForFont:v6 traitCollection:v4 isSidebarStyle:HIBYTE(*&self->_configurationFlags) & 1];
  v8 = v7;

  return v8;
}

- (void)_setSwiftBridgingImageProperties:(id)a3
{
  v4 = a3;
  imageProperties = self->_imageProperties;
  if (imageProperties)
  {
    imageProperties = imageProperties->_image;
  }

  v6 = imageProperties;
  [(UIBackgroundConfiguration *)v4 _setCustomView:v6];

  v7 = self->_imageProperties;
  self->_imageProperties = v4;
}

- (void)_setSwiftBridgingTextProperties:(id)a3
{
  v4 = a3;
  textProperties = self->_textProperties;
  if (textProperties)
  {
    textProperties = textProperties->_text;
  }

  v7 = textProperties;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v6, v7, 24);
  }

  v8 = self->_textProperties;
  if (v8)
  {
    v8 = v8->_attributedText;
  }

  v10 = v8;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v9, v10, 72);
  }

  v11 = self->_textProperties;
  self->_textProperties = v4;
}

- (void)_setSwiftBridgingSecondaryTextProperties:(id)a3
{
  v4 = a3;
  secondaryTextProperties = self->_secondaryTextProperties;
  if (secondaryTextProperties)
  {
    secondaryTextProperties = secondaryTextProperties->_text;
  }

  v7 = secondaryTextProperties;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v6, v7, 24);
  }

  v8 = self->_secondaryTextProperties;
  if (v8)
  {
    v8 = v8->_attributedText;
  }

  v10 = v8;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v9, v10, 72);
  }

  v11 = self->_secondaryTextProperties;
  self->_secondaryTextProperties = v4;
}

@end