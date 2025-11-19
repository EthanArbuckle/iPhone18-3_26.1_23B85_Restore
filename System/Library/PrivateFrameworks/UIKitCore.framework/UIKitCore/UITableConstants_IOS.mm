@interface UITableConstants_IOS
+ (id)sharedConstants;
- ($7FDC96647900ED4FDF8E2F8A586A6BB4)contentPropertiesForSidebarElementWithTraitCollection:(SEL)a3 state:(id)a4 isHeader:(id)a5 cellStyle:(BOOL)a6 sidebarStyle:(int64_t)a7;
- (BOOL)defaultLabelAllowsTighteningForTruncationForSidebar:(BOOL)a3 traitCollection:(id)a4;
- (BOOL)shouldUppercaseHeaderFooterTextForTableStyle:(int64_t)a3 isHeader:(BOOL)a4;
- (BOOL)shouldUseMonochromaticTreatmentForCellAccessorySystemType:(int64_t)a3 sidebarStyle:(int64_t)a4 cellConfigurationState:(id)a5 traitCollection:(id)a6;
- (CGRect)defaultDeleteMinusRectForCell:(id)a3 inTableView:(id)a4;
- (CGSize)defaultEditControlSizeForCell:(id)a3 inTableView:(id)a4;
- (CGSize)defaultReorderControlSizeForCell:(id)a3 withAccessoryBaseColor:(id)a4;
- (NSDirectionalEdgeInsets)defaultInsetGroupedHeaderLayoutMarginsForExtraProminentStyle:(BOOL)a3 outAxesPreservingSuperviewLayoutMargins:(unint64_t *)a4;
- (UIEdgeInsets)defaultCellLayoutMarginsForTableStyle:(int64_t)a3 cellStyle:(int64_t)a4 isSidebarStyle:(BOOL)a5 textLabelFont:(id)a6 rawLayoutMargins:(UIEdgeInsets)a7;
- (UIEdgeInsets)defaultHeaderFooterLayoutMarginsForTableViewStyle:(int64_t)a3 isHeader:(BOOL)a4 isFirstSection:(BOOL)a5;
- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)a3 inTableView:(id)a4;
- (UIEdgeInsets)defaultSidebarLayoutMarginsForElementsInsideSection;
- (UIEdgeInsets)reorderControlHoverEffectInsets;
- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5;
- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)a3 cellConfigurationState:(int64_t)a4 traitCollection:(id)a5 floating:(id)a6;
- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5;
- (_UITableConstantsBackgroundProperties)defaultSidebarHeaderBackgroundPropertiesWithState:(SEL)a3 traitCollection:(id)a4;
- (double)_defaultMarginWidthForTableView:(id)a3 canUseLayoutMargins:(BOOL)a4;
- (double)defaultCellContentLeadingPaddingForSidebar:(BOOL)a3;
- (double)defaultCellCornerRadiusForTableViewStyle:(int64_t)a3 isSidebarStyle:(BOOL)a4 isSwipedCell:(BOOL)a5 isHeaderFooter:(BOOL)a6 traitCollection:(id)a7;
- (double)defaultContentAccessoryPadding;
- (double)defaultContentEditPaddingForCell:(id)a3 inTableView:(id)a4;
- (double)defaultContentReorderPaddingForCell:(id)a3 inTableView:(id)a4;
- (double)defaultDetailTextLabelFontSizeForCellStyle:(int64_t)a3;
- (double)defaultDisclosureLayoutWidthForView:(id)a3;
- (double)defaultImageToTextPaddingForSidebar:(BOOL)a3;
- (double)defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:(BOOL)a3 traitCollection:(id)a4;
- (double)defaultImageViewSymbolImageLayoutHeightForTraitCollection:(id)a3;
- (double)defaultIndentationWidthForSidebarStyle:(BOOL)a3;
- (double)defaultInterAccessoryPaddingForCell:(id)a3 trailingAccessoryGroup:(BOOL)a4;
- (double)defaultLabelMinimumScaleFactorForSidebar:(BOOL)a3 traitCollection:(id)a4;
- (double)defaultLeadingCellMarginWidthForTableView:(id)a3;
- (double)defaultRowHeightForTableView:(id)a3 cellStyle:(int64_t)a4;
- (double)defaultSectionFooterHeightForTableView:(id)a3;
- (double)defaultSectionFooterHeightForTableViewStyle:(int64_t)a3 screen:(id)a4;
- (double)defaultSectionHeaderHeightForTableView:(id)a3;
- (double)defaultSectionHeaderHeightForTableViewStyle:(int64_t)a3 screen:(id)a4;
- (double)defaultTextLabelFontSizeForCellStyle:(int64_t)a3;
- (double)defaultTextToSubtitlePaddingForCellStyle:(int64_t)a3;
- (double)interspaceBetweenInnerAccessoryIdentifier:(id)a3 outerAccessoryIdentifier:(id)a4 forCell:(id)a5 trailingAccessoryGroup:(BOOL)a6;
- (double)minimumContentViewHeightForFont:(id)a3 traitCollection:(id)a4 isSidebarStyle:(BOOL)a5;
- (id)_accessoryTintColorForAccessoryBaseColor:(id)a3;
- (id)_defaultAccessoryTintColor;
- (id)_defaultCircleDisclosureImageForTraitCollection:(id)a3;
- (id)_defaultDisclosureImageForTraitCollection:(id)a3;
- (id)_symbolImageNamed:(id)a3 withTextStyle:(id)a4 scale:(int64_t)a5;
- (id)defaultAccessoryBackgroundColorForAccessorySystemType:(int64_t)a3 header:(BOOL)a4 sidebarStyle:(int64_t)a5 cellConfigurationState:(id)a6 traitCollection:(id)a7;
- (id)defaultAccessoryTintColorForAccessorySystemType:(int64_t)a3 header:(BOOL)a4 sidebarStyle:(int64_t)a5 cellConfigurationState:(id)a6 traitCollection:(id)a7 inheritedTintColor:(id)a8;
- (id)defaultCheckmarkImageForCell:(id)a3;
- (id)defaultDeleteImageForCell:(id)a3;
- (id)defaultDeleteImageWithTintColor:(id)a3 backgroundColor:(id)a4;
- (id)defaultDetailTextColorForCellStyle:(int64_t)a3 traitCollection:(id)a4 state:(id)a5;
- (id)defaultDetailTextFontForCellStyle:(int64_t)a3;
- (id)defaultDisclosureImageForCell:(id)a3 withAccessoryBaseColor:(id)a4;
- (id)defaultFooterFontForTableViewStyle:(int64_t)a3;
- (id)defaultFooterTextColorForTableViewStyle:(int64_t)a3 focused:(BOOL)a4;
- (id)defaultHeaderFontForTableViewStyle:(int64_t)a3;
- (id)defaultHeaderTextColorForTableViewStyle:(int64_t)a3 focused:(BOOL)a4;
- (id)defaultImageSymbolConfigurationForTraitCollection:(id)a3;
- (id)defaultImageTintColorForState:(id)a3 traitCollection:(id)a4;
- (id)defaultInsertImageForCell:(id)a3;
- (id)defaultInsertImageWithTintColor:(id)a3 backgroundColor:(id)a4;
- (id)defaultInsetGroupedHeaderFontForExtraProminentStyle:(BOOL)a3 secondaryText:(BOOL)a4;
- (id)defaultMultiSelectBackgroundColorForCell:(id)a3 inTableView:(id)a4;
- (id)defaultMultiSelectNotSelectedImageForCellStyle:(int64_t)a3 traitCollection:(id)a4 accessoryBaseColor:(id)a5;
- (id)defaultMultiSelectSelectedImageForCellStyle:(int64_t)a3 traitCollection:(id)a4 checkmarkColor:(id)a5 backgroundColor:(id)a6;
- (id)defaultOutlineDisclosureImageForView:(id)a3;
- (id)defaultPlainHeaderFooterFont;
- (id)defaultPopUpMenuIndicatorImageForTraitCollection:(id)a3;
- (id)defaultReorderControlImageForTraitCollection:(id)a3 withAccessoryBaseColor:(id)a4 isTracking:(BOOL)a5;
- (id)defaultSidebarDetailTextLabelFontForCellStyle:(int64_t)a3;
- (id)defaultSidebarHeaderFont;
- (id)defaultSidebarImageTintColorForTraitCollection:(id)a3 state:(id)a4 isHeader:(BOOL)a5 style:(int64_t)a6;
- (id)defaultSidebarTextColorForTraitCollection:(id)a3 state:(id)a4 isHeader:(BOOL)a5 isSecondaryText:(BOOL)a6 style:(int64_t)a7;
- (id)defaultTextColorForCellStyle:(int64_t)a3 traitCollection:(id)a4 tintColor:(id)a5 state:(id)a6;
- (id)defaultTextLabelFontForCellStyle:(int64_t)a3;
- (int64_t)defaultLabelNumberOfLinesForSidebar:(BOOL)a3 traitCollection:(id)a4;
- (void)_applySelectedOrDropTargetAppearanceToSidebarCellBackgroundProperties:(int)a3 selected:(uint64_t)a4 sidebarStyle:(int)a5 selectionIsKey:(void *)a6 state:(void *)a7 traitCollection:;
- (void)applyBoldSidebarStylingToContentProperties:(id *)a3 traitCollection:(id)a4;
@end

@implementation UITableConstants_IOS

- (id)_defaultAccessoryTintColor
{
  if (dyld_program_sdk_at_least())
  {
    +[UIColor tertiaryLabelColor];
  }

  else
  {
    [UIColor colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  }
  v2 = ;

  return v2;
}

- (id)defaultPlainHeaderFooterFont
{
  if (dyld_program_sdk_at_least())
  {
    v2 = off_1E70ECC18;
    v3 = UIFontTextStyleEmphasizedSubheadline;
LABEL_5:
    v5 = [v2 preferredFontForTextStyle:*v3];
    goto LABEL_7;
  }

  v4 = dyld_program_sdk_at_least();
  v2 = off_1E70ECC18;
  if (v4)
  {
    v3 = &UIFontTextStyleHeadline;
    goto LABEL_5;
  }

  v5 = [off_1E70ECC18 boldSystemFontOfSize:14.0];
LABEL_7:

  return v5;
}

+ (id)sharedConstants
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"UITableConstants_IOS.m" lineNumber:76 description:@"attempt to instantiate an instance of UITableConstants_IOS - use UITableConstants_Phone or _Pad instead"];

  return 0;
}

- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5
{
  v30 = a5;
  v10 = a6;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var13.leading = 0u;
  retstr->var13.trailing = 0.0;
  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault);
  if (_UISolariumSwipeActionsEnabled())
  {
    v11 = [v30 isSwiped];
  }

  else
  {
    v11 = 0;
  }

  [(UITableConstants_IOS *)self defaultCellCornerRadiusForTableViewStyle:a4 isSidebarStyle:0 isSwipedCell:v11 isHeaderFooter:0 traitCollection:v10];
  retstr->var12 = v12;
  v13 = [v30 cellDropState];
  v14 = v10;
  v15 = v14;
  if (v14)
  {
    _UIRecordTraitUsage(v14, 0x19uLL);
    v16 = v15[25];
  }

  else
  {
    v16 = 0;
  }

  if (([v15 _focusSystemState] - 1) > 1 || _AXSFullKeyboardAccessEnabled())
  {
    if (v16 == -1)
    {
      [v15 _splitViewControllerContext];
    }

    dyld_program_sdk_at_least();
    v17 = 0;
  }

  else
  {
    v17 = v16 == 1;
  }

  v18 = [v30 isHighlighted];
  if (v13 == 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 == 1)
  {
    v20 = +[UIColor systemGray2Color];
LABEL_44:
    var1 = retstr->var1;
    retstr->var1 = v20;

    goto LABEL_45;
  }

  if ([v30 isFocused] && (objc_msgSend(v30, "isSelected") & v17 & 1) == 0)
  {
    retstr->var0 = 1;
    retstr->var6 = 28;
    goto LABEL_45;
  }

  if (([v30 isHighlighted] & 1) == 0)
  {
    v21 = [v30 isSelected];
    v22 = v13 == 2 ? 1 : v21;
    if (v22 != 1)
    {
      if (a4)
      {
        if (!_UISolariumSwipeActionsEnabled() || ![v30 isSwiped])
        {
          v20 = +[UIColor tableCellGroupedBackgroundColor];
          goto LABEL_44;
        }
      }

      else if (!_UISolariumSwipeActionsEnabled() || ![v30 isSwiped])
      {
        if ([v15 _hasGlassBackgroundStyle])
        {
          +[UIColor clearColor];
        }

        else
        {
          +[UIColor tableCellPlainBackgroundColor];
        }

        goto LABEL_35;
      }

      v20 = +[UIColor systemGray5Color];
      goto LABEL_44;
    }
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v20 = [UIColor colorWithRed:0.847058824 green:0.847058824 blue:0.847058824 alpha:1.0];
    goto LABEL_44;
  }

  if (!v17)
  {
    if (a4)
    {
      +[UIColor tableCellGroupedSelectedBackgroundColor];
    }

    else
    {
      +[UIColor tableCellPlainSelectedBackgroundColor];
    }

    v20 = LABEL_35:;
    goto LABEL_44;
  }

  retstr->var0 = 1;
LABEL_45:
  if ([v30 isReordering])
  {
    v24 = [UIBlurEffect effectWithBlurRadius:4.0];
    var2 = retstr->var2;
    retstr->var2 = v24;

    retstr->var4 = 1;
    v26 = retstr->var1;
    [(UITableConstants_IOS *)self defaultAlphaForReorderingCell];
    v27 = [v26 colorWithAlphaComponent:?];
    v28 = retstr->var1;
    retstr->var1 = v27;

    if ([(UITableConstants_IOS *)self reorderingCellWantsShadows])
    {
      retstr->var5 = 2;
    }
  }

  return result;
}

- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5
{
  v41 = a5;
  v10 = a6;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var13.leading = 0u;
  retstr->var13.trailing = 0.0;
  [(UITableConstants_IOS *)self defaultCellCornerRadiusForTableViewStyle:1 isSidebarStyle:1 isHeaderFooter:0 traitCollection:v10, __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault).n128_f64[0]];
  retstr->var12 = v11;
  v12 = [v41 cellDropState];
  v13 = [v41 cellDropState];
  v14 = _UITableConstantsUseUIPSidebarMetrics();
  v15 = v10;
  v16 = v15;
  if (v15)
  {
    _UIRecordTraitUsage(v15, 0x19uLL);
    v17 = v16[25];
  }

  else
  {
    v17 = 0;
  }

  if (([v16 _focusSystemState] - 1) > 1 || _AXSFullKeyboardAccessEnabled())
  {
    if (v17 == -1)
    {
      v18 = [v16 _splitViewControllerContext] != 2;
    }

    else
    {
      v18 = v17 == 1;
    }

    if (!dyld_program_sdk_at_least())
    {
      v18 = a4 != 2;
    }
  }

  else
  {
    v18 = v17 == 1;
  }

  if (![v41 isSelected])
  {
LABEL_14:
    v19 = 0;
    goto LABEL_16;
  }

  if ([v41 isEditing])
  {
    if (dyld_program_sdk_at_least())
    {
      v19 = [v41 _usesAnyPlainListStyle];
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v19 = 1;
LABEL_16:
  if (v12 == 2)
  {
    [(UITableConstants_IOS *)self _applySelectedOrDropTargetAppearanceToSidebarCellBackgroundProperties:v19 selected:a4 sidebarStyle:v18 selectionIsKey:v41 state:v16 traitCollection:?];
    if ([v41 isHighlighted])
    {
      retstr->var6 = 7;
    }

    v20 = [v41 isSelected];
    v21 = v41;
    if ((v20 & 1) == 0)
    {
      *&retstr->var13.top = xmmword_18A64B730;
      *&retstr->var13.bottom = xmmword_18A64B730;
    }

    goto LABEL_37;
  }

  if ([v41 isFocused] && (objc_msgSend(v41, "isSelected") & (v18 | v14) & 1) == 0)
  {
    retstr->var0 = 1;
    retstr->var6 = 28;
    v21 = v41;
    goto LABEL_37;
  }

  v21 = v41;
  if (!v19)
  {
    goto LABEL_37;
  }

  v22 = v41;
  if (([v22 isDisabled] & 1) == 0)
  {

LABEL_30:
    if ((v13 != 1) | v14 & 1)
    {
      [(UITableConstants_IOS *)self _applySelectedOrDropTargetAppearanceToSidebarCellBackgroundProperties:1 selected:a4 sidebarStyle:v18 selectionIsKey:v22 state:v16 traitCollection:?];
    }

    else
    {
      v26 = +[UIColor systemGrayColor];
      var1 = retstr->var1;
      retstr->var1 = v26;

      v28 = 8;
      if (a4 != 2)
      {
        v28 = 3;
      }

      retstr->var6 = v28;
    }

    goto LABEL_35;
  }

  v23 = [v22 isSwiped];

  if (v23)
  {
    goto LABEL_30;
  }

  v24 = +[UIColor quaternarySystemFillColor];
  v25 = retstr->var1;
  retstr->var1 = v24;

LABEL_35:
  v29 = [v22 isHighlighted];
  v21 = v41;
  if (v29)
  {
    retstr->var6 = 7;
  }

LABEL_37:
  v30 = [v21 isSwiped];
  if (retstr->var1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  if (v31 == 1 && !retstr->var0 && !retstr->var2)
  {
    v32 = +[UIColor _swipedSidebarCellBackgroundColor];
    v33 = retstr->var1;
    retstr->var1 = v32;
  }

  if ([v41 isReordering])
  {
    if (!retstr->var1 && !retstr->var0)
    {
      v34 = +[UIColor _sidebarBackgroundColor];
      v35 = retstr->var1;
      retstr->var1 = v34;
    }

    if (!retstr->var6)
    {
      retstr->var6 = 12;
    }

    retstr->var4 = 1;
    v36 = [UIBlurEffect effectWithBlurRadius:4.0];
    var2 = retstr->var2;
    retstr->var2 = v36;

    retstr->var5 = 2;
  }

  if (v14)
  {
    v38 = v41;
    if ([v38 isDisabled])
    {
      v39 = [v38 isSwiped];

      if ((v39 & 1) == 0)
      {
        retstr->var6 = 3;
      }
    }

    else
    {
    }
  }

  return result;
}

- (void)_applySelectedOrDropTargetAppearanceToSidebarCellBackgroundProperties:(int)a3 selected:(uint64_t)a4 sidebarStyle:(int)a5 selectionIsKey:(void *)a6 state:(void *)a7 traitCollection:
{
  if (a1)
  {
    if ((_UITableConstantsUseUIPSidebarMetrics() & 1) != 0 && a4 != 3)
    {
      if (_UISolariumEnabled())
      {
        v16 = +[UIColor tertiarySystemFillColor];
        v17 = a2[1];
        a2[1] = v16;

        v13 = 2;
        goto LABEL_11;
      }

      if ([a7 userInterfaceStyle] == 2)
      {
        v18 = +[UIColor secondarySystemFillColor];
        v19 = 3;
      }

      else
      {
        v18 = +[UIColor systemBackgroundColor];
        v19 = 2;
      }

      v20 = a2[1];
      a2[1] = v18;

      *a2 = v19;
      if (a3 && ([a6 isSwiped] & 1) == 0 && (objc_msgSend(a6, "_inMultiSelectGroup") & 1) == 0 && (objc_msgSend(a6, "isEditing") & 1) == 0)
      {
        a2[5] = 4;
      }
    }

    else
    {
      if (a5)
      {
        v13 = 1;
LABEL_11:
        *a2 = v13;
        return;
      }

      v14 = +[UIColor secondarySystemFillColor];
      v15 = a2[1];
      a2[1] = v14;
    }
  }
}

- (_UITableConstantsBackgroundProperties)defaultSidebarHeaderBackgroundPropertiesWithState:(SEL)a3 traitCollection:(id)a4
{
  v11 = a4;
  v8 = a5;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var13.leading = 0u;
  retstr->var13.trailing = 0.0;
  [(UITableConstants_IOS *)self defaultCellCornerRadiusForTableViewStyle:1 isSidebarStyle:1 isHeaderFooter:1 traitCollection:v8, __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault).n128_f64[0]];
  retstr->var12 = v9;
  if ([v11 isFocused])
  {
    retstr->var0 = 1;
    retstr->var6 = 28;
  }

  return result;
}

- (id)defaultMultiSelectBackgroundColorForCell:(id)a3 inTableView:(id)a4
{
  if (dyld_program_sdk_at_least())
  {
    +[UIColor systemGray6Color];
  }

  else
  {
    [UIColor colorWithRed:0.91372549 green:0.941176471 blue:0.980392157 alpha:1.0];
  }
  v4 = ;

  return v4;
}

- (double)defaultRowHeightForTableView:(id)a3 cellStyle:(int64_t)a4
{
  v6 = [off_1E70ECC18 preferredFontForTextStyle:{@"UICTFontTextStyleBody", a4}];
  v7 = [a3 _scrollView];
  v8 = [v7 traitCollection];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = +[UITraitCollection _fallbackTraitCollection];
  }

  v11 = v10;

  [(UITableConstants_IOS *)self minimumContentViewHeightForFont:v6 traitCollection:v11 isSidebarStyle:0];
  v13 = v12;

  return v13;
}

- (double)defaultSectionHeaderHeightForTableViewStyle:(int64_t)a3 screen:(id)a4
{
  if (a3)
  {
    return 17.5;
  }

  v6 = dyld_program_sdk_at_least();
  result = 23.0;
  if (v6)
  {
    v7 = [(UITableConstants_IOS *)self defaultHeaderFontForTableViewStyle:0, 23.0];
    [v7 _scaledValueForValue:28.0];
    v9 = v8;

    return v9;
  }

  return result;
}

- (double)defaultSectionHeaderHeightForTableView:(id)a3
{
  v5 = [a3 _tableStyle];
  v6 = [a3 _scrollView];
  v7 = [v6 window];
  v8 = [v7 screen];
  [(UITableConstants_IOS *)self defaultSectionHeaderHeightForTableViewStyle:v5 screen:v8];
  v10 = v9;

  return v10;
}

- (double)defaultSectionFooterHeightForTableViewStyle:(int64_t)a3 screen:(id)a4
{
  if (a3)
  {
    return 17.5;
  }

  [(UITableConstants_IOS *)self defaultSectionHeaderHeightForTableViewStyle:0 screen:a4];
  return result;
}

- (double)defaultSectionFooterHeightForTableView:(id)a3
{
  v5 = [a3 _tableStyle];
  v6 = [a3 _scrollView];
  v7 = [v6 window];
  v8 = [v7 screen];
  [(UITableConstants_IOS *)self defaultSectionFooterHeightForTableViewStyle:v5 screen:v8];
  v10 = v9;

  return v10;
}

- (double)defaultImageToTextPaddingForSidebar:(BOOL)a3
{
  if (a3)
  {
    return 10.0;
  }

  [(UITableConstants_IOS *)self defaultCellContentLeadingPaddingForSidebar:0];
  return result;
}

- (double)defaultTextToSubtitlePaddingForCellStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 != 3)
  {
    v4 = _UISolariumEnabled();
    result = 3.0;
    if (v4)
    {
      return 4.0;
    }
  }

  return result;
}

- (double)minimumContentViewHeightForFont:(id)a3 traitCollection:(id)a4 isSidebarStyle:(BOOL)a5
{
  v7 = a3;
  v8 = [a4 preferredContentSizeCategory];
  v9 = _UIContentSizeCategoryMin(v8, @"UICTContentSizeCategoryXXXL");

  v10 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v9];
  v11 = [v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v10];

  if (a5 || !_UISolariumEnabled())
  {
    [v11 _bodyLeading];
    v13 = v14 + v14;
  }

  else
  {
    [v11 _bodyLeading];
    v13 = v12 + 30.0;
  }

  return v13;
}

- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)a3 inTableView:(id)a4
{
  if (dyld_program_sdk_at_least())
  {
    v7 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:@"UICTContentSizeCategoryL"];
    v8 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:v7];
  }

  else
  {
    v8 = -[UITableConstants_IOS defaultTextLabelFontForCellStyle:](self, "defaultTextLabelFontForCellStyle:", [a3 _cellStyle]);
  }

  v9 = [a4 _tableStyle];
  v10 = [a3 _cellStyle];
  [a3 _rawLayoutMargins];
  [(UITableConstants_IOS *)self defaultCellLayoutMarginsForTableStyle:v9 cellStyle:v10 isSidebarStyle:0 textLabelFont:v8 rawLayoutMargins:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (UIEdgeInsets)defaultCellLayoutMarginsForTableStyle:(int64_t)a3 cellStyle:(int64_t)a4 isSidebarStyle:(BOOL)a5 textLabelFont:(id)a6 rawLayoutMargins:(UIEdgeInsets)a7
{
  right = a7.right;
  left = a7.left;
  v11 = a6;
  if (a5 || (v12 = 15.0, (_UISolariumEnabled() & 1) == 0))
  {
    if (a4 != 3 || (v12 = 4.0, (dyld_program_sdk_at_least() & 1) == 0))
    {
      [v11 lineHeight];
      v12 = ceil(v13 * 0.5);
    }
  }

  v14 = v12;
  v15 = left;
  v16 = v12;
  v17 = right;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)defaultHeaderFooterLayoutMarginsForTableViewStyle:(int64_t)a3 isHeader:(BOOL)a4 isFirstSection:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (_UISolariumEnabled())
  {
    if (v6)
    {
      v8 = 10.0;
    }

    else
    {
      v8 = 6.0;
    }

    v9 = 8.0;
    if (v6)
    {
      v9 = 10.0;
    }
  }

  else if (a3)
  {
    v10 = dyld_program_sdk_at_least();
    v9 = 8.0;
    v11 = 32.0;
    if (!v5)
    {
      v11 = 17.0;
    }

    v8 = 12.0;
    if (v6)
    {
      v8 = 6.0;
    }

    else
    {
      v11 = 6.0;
    }

    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v8 = 8.0;
    }
  }

  else
  {
    v8 = 4.0;
    v9 = 4.0;
  }

  v12 = 8.0;
  v13 = 8.0;
  result.right = v13;
  result.bottom = v8;
  result.left = v12;
  result.top = v9;
  return result;
}

- (double)defaultContentEditPaddingForCell:(id)a3 inTableView:(id)a4
{
  v4 = dyld_program_sdk_at_least();
  result = 9.0;
  if (v4)
  {
    return 16.0;
  }

  return result;
}

- (double)defaultContentReorderPaddingForCell:(id)a3 inTableView:(id)a4
{
  v4 = dyld_program_sdk_at_least();
  result = 12.0;
  if (v4)
  {
    return 16.0;
  }

  return result;
}

- (double)defaultContentAccessoryPadding
{
  v2 = dyld_program_sdk_at_least();
  result = 10.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

- (double)defaultCellContentLeadingPaddingForSidebar:(BOOL)a3
{
  result = 16.0;
  if (a3)
  {
    return 8.0;
  }

  return result;
}

- (double)defaultInterAccessoryPaddingForCell:(id)a3 trailingAccessoryGroup:(BOOL)a4
{
  if (a4)
  {
    [(UITableConstants_IOS *)self defaultCellContentTrailingPadding];
  }

  else
  {
    [(UITableConstants_IOS *)self defaultCellContentLeadingPaddingForSidebar:0];
  }

  return result;
}

- (double)defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:(BOOL)a3 traitCollection:(id)a4
{
  if (a3)
  {
    v4 = 28.0;
  }

  else
  {
    v4 = 24.0;
  }

  v5 = a4;
  v6 = +[UIFontMetrics defaultMetrics];
  [v6 scaledValueForValue:v5 compatibleWithTraitCollection:v4];
  v8 = v7;

  return v8;
}

- (double)defaultImageViewSymbolImageLayoutHeightForTraitCollection:(id)a3
{
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:a3];
  [v3 _bodyLeading];
  v5 = v4;

  return v5;
}

- (double)defaultDisclosureLayoutWidthForView:(id)a3
{
  v3 = [(UITableConstants_IOS *)self defaultOutlineDisclosureImageForView:a3];
  [v3 size];
  v5 = v4;
  [v3 size];
  if (v5 < v6)
  {
    v5 = v6;
  }

  return v5;
}

- (double)defaultCellCornerRadiusForTableViewStyle:(int64_t)a3 isSidebarStyle:(BOOL)a4 isSwipedCell:(BOOL)a5 isHeaderFooter:(BOOL)a6 traitCollection:(id)a7
{
  v7 = a6;
  v11 = a7;
  v12 = v11;
  if (a3)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  if (a4 || a5 || (v14 = 0.0, v13))
  {
    v15 = [v11 userInterfaceIdiom];
    if (v15 == 6)
    {
      v14 = 16.0;
    }

    else if (v15 == 3)
    {
      v14 = 10.0;
    }

    else if (_UISolariumEnabled())
    {
      v14 = 26.0;
    }

    else
    {
      v14 = 10.0;
    }
  }

  return v14;
}

- (double)interspaceBetweenInnerAccessoryIdentifier:(id)a3 outerAccessoryIdentifier:(id)a4 forCell:(id)a5 trailingAccessoryGroup:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (dyld_program_sdk_at_least())
  {
    if (v10)
    {
      if (v11)
      {
        [(UITableConstants_IOS *)self defaultInterAccessoryPaddingForCell:v12 trailingAccessoryGroup:v6];
LABEL_15:
        v14 = v13;
        goto LABEL_20;
      }

      [v12 _minimumCellAccessoryMargin];
      v16 = v15;
      [v12 directionalLayoutMargins];
      if (v6)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v14 = fmax(v16, v19);
    }

    else
    {
      v14 = 0.0;
      if ((_UITableViewCellUsesLayoutMarginBasedContentPadding() & 1) == 0 && v6)
      {
        [(UITableConstants_IOS *)self defaultCellContentTrailingPadding];
        goto LABEL_15;
      }
    }
  }

  else
  {
    v14 = 0.0;
    if (([v10 isEqualToString:0x1EFB34170] & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", 0x1EFB34170) & 1) == 0)
    {
      if (v10)
      {
        if (v11)
        {
          if ([v11 isEqualToString:0x1EFB9F430])
          {
            v14 = 16.0;
          }

          else
          {
            v14 = 12.0;
          }
        }

        else
        {
          [v12 _minimumCellAccessoryMargin];
          v22 = v21;
          [v12 directionalLayoutMargins];
          v14 = fmax(v22, v23);
        }
      }

      else if ((_UITableViewCellUsesLayoutMarginBasedContentPadding() & 1) == 0 && v6)
      {
        [(UITableConstants_IOS *)self defaultContentAccessoryPadding];
        goto LABEL_15;
      }
    }
  }

LABEL_20:

  return v14;
}

- (double)defaultIndentationWidthForSidebarStyle:(BOOL)a3
{
  result = 10.0;
  if (a3)
  {
    return 20.0;
  }

  return result;
}

- (double)_defaultMarginWidthForTableView:(id)a3 canUseLayoutMargins:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 _scrollView];
  v7 = [v6 window];
  v8 = [v7 screen];
  v9 = [a3 _scrollView];
  [v9 bounds];
  v11 = v10;
  v12 = v8;
  v13 = dyld_program_sdk_at_least();
  v14 = v12;
  if (!v12)
  {
    v14 = [objc_opt_self() mainScreen];
  }

  if (v13)
  {
    v15 = 16.0;
  }

  else
  {
    v15 = 15.0;
  }

  v16 = [v14 _wantsWideContentMargins];
  v17 = 20.0;
  if (v11 <= 320.0)
  {
    v17 = 16.0;
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  if (!v4)
  {
    return v18;
  }

  v19 = [a3 _scrollView];
  [v19 directionalLayoutMargins];
  v21 = v20;

  return fmax(v18, v21);
}

- (double)defaultLeadingCellMarginWidthForTableView:(id)a3
{
  v5 = [a3 _sectionContentInsetFollowsLayoutMargins] ^ 1;

  [(UITableConstants_IOS *)self _defaultMarginWidthForTableView:a3 canUseLayoutMargins:v5];
  return result;
}

- (BOOL)shouldUppercaseHeaderFooterTextForTableStyle:(int64_t)a3 isHeader:(BOOL)a4
{
  v4 = a4;
  v6 = _UISolariumEnabled();
  v8 = a3 == 16 || (a3 - 1) < 2;
  if (!v4)
  {
    v8 = 0;
  }

  return (v6 & 1) == 0 && v8;
}

- (int64_t)defaultLabelNumberOfLinesForSidebar:(BOOL)a3 traitCollection:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a4 preferredContentSizeCategory];
  v5 = ~UIContentSizeCategoryIsAccessibilityCategory(v4);

  return v5 & 1;
}

- (BOOL)defaultLabelAllowsTighteningForTruncationForSidebar:(BOOL)a3 traitCollection:(id)a4
{
  if (a3)
  {
    v4 = [a4 preferredContentSizeCategory];
    v5 = !UIContentSizeCategoryIsAccessibilityCategory(v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (double)defaultLabelMinimumScaleFactorForSidebar:(BOOL)a3 traitCollection:(id)a4
{
  result = 0.0;
  if (a3)
  {
    v5 = [a4 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

    result = 0.9;
    if (IsAccessibilityCategory)
    {
      return 0.0;
    }
  }

  return result;
}

- (id)defaultTextColorForCellStyle:(int64_t)a3 traitCollection:(id)a4 tintColor:(id)a5 state:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (([v11 isDisabled] & 1) == 0)
  {

LABEL_5:
    if (_UITableUsesTintColorAsBackgroundColor(v11, v9, 0, 0))
    {
      v13 = +[UIColor whiteColor];
    }

    else if (a3 == 2 && v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = +[UIColor labelColor];
    }

    goto LABEL_11;
  }

  v12 = [v11 isSwiped];

  if (v12)
  {
    goto LABEL_5;
  }

  v13 = +[UIColor tertiaryLabelColor];
LABEL_11:
  v14 = v13;

  return v14;
}

- (void)applyBoldSidebarStylingToContentProperties:(id *)a3 traitCollection:(id)a4
{
  v12 = a4;
  v5 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD20];
  var0 = a3->var0;
  a3->var0 = v5;
  v7 = v5;

  v8 = [v12 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v8))
  {
    if (UIContentSizeCategoryCompareToCategory(v8, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
    {
      if (UIContentSizeCategoryCompareToCategory(v8, &cfstr_Uictcontentsiz_9.isa) == NSOrderedAscending)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 3;
  }

  v10 = [UIImageSymbolConfiguration configurationWithFont:v7 scale:v9];
  var5 = a3->var5;
  a3->var5 = v10;
}

- ($7FDC96647900ED4FDF8E2F8A586A6BB4)contentPropertiesForSidebarElementWithTraitCollection:(SEL)a3 state:(id)a4 isHeader:(id)a5 cellStyle:(BOOL)a6 sidebarStyle:(int64_t)a7
{
  v10 = a6;
  v14 = a4;
  v15 = a5;
  v16 = _UITableConstantsUseUIPSidebarMetrics();
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  retstr->var12 = 0;
  *&v17 = __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_t48w56(retstr, &_UITableConstantsContentPropertiesDefault).n128_u64[0];
  if (v16)
  {
    if (v10)
    {
      [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD20];
    }

    else
    {
      [off_1E70ECC18 preferredFontForTextStyle:{@"UICTFontTextStyleBody", v17}];
    }
    v18 = ;
    var0 = retstr->var0;
    retstr->var0 = v18;

    v21 = [(UITableConstants_IOS *)self defaultSidebarDetailTextLabelFontForCellStyle:a7];
    var1 = retstr->var1;
    retstr->var1 = v21;

    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    memset(v78, 0, sizeof(v78));
    _UITableConstantsGetBackgroundProperties(self, v15, v14, v10, a8, v78);
    v23 = *&v78[0];
    v24 = [(UITableConstants_IOS *)self defaultImageSymbolConfigurationForTraitCollection:v14];
    var5 = retstr->var5;
    retstr->var5 = v24;

    if (v23 == 1)
    {
      if (v79 <= 0xC && ((1 << v79) & 0x1081) != 0)
      {
        v39 = +[UIColor whiteColor];
        var2 = retstr->var2;
        retstr->var2 = v39;

        v41 = [UIColor colorWithWhite:1.0 alpha:0.8];
        var3 = retstr->var3;
        retstr->var3 = v41;

        v43 = +[UIColor whiteColor];
        var4 = retstr->var4;
        retstr->var4 = v43;

        goto LABEL_40;
      }

      goto LABEL_20;
    }

    if (v23 != 3)
    {
      if (v23 == 2)
      {
        v26 = ([v14 _focusSystemState] - 1) <= 1 && _AXSFullKeyboardAccessEnabled() == 0;
        v56 = [v15 isEditing];
        if (((v56 | v26) & 1) != 0 && ![v15 isFocused])
        {
          v72 = +[UIColor labelColor];
          v73 = retstr->var2;
          retstr->var2 = v72;

          retstr->var7 = 12;
          v74 = +[UIColor secondaryLabelColor];
          v75 = retstr->var3;
          retstr->var3 = v74;

          if (!v56)
          {
            v76 = +[UIColor labelColor];
            v77 = retstr->var4;
            retstr->var4 = v76;

            retstr->var9 = 12;
LABEL_38:
            if (([v15 isEditing] & 1) == 0)
            {
LABEL_39:
              [(UITableConstants_IOS *)self applyBoldSidebarStylingToContentProperties:retstr traitCollection:v14];
            }

LABEL_40:
            v62 = v15;
            if ([v62 isDisabled])
            {
              v63 = [v62 isSwiped];

              if ((v63 & 1) == 0)
              {
                retstr->var6 = 0.5;
              }
            }

            else
            {
            }

            if ([v62 isHighlighted] && objc_msgSend(v14, "userInterfaceIdiom") != 5)
            {
              *&retstr->var7 = vdupq_n_s64(7uLL);
              retstr->var9 = 7;
            }

            v64 = +[_UITraitMonochromaticTreatment _sidebarListMonochromaticTreatment];
            if ((a8 - 1) <= 1 && v64 && ([v62 isSelected] & 1) == 0)
            {
              retstr->var10 = -1;
              retstr->var12 = -1;
            }

            __destructor_8_s8_s16_s24_s80(v78);
            goto LABEL_52;
          }
        }

        else
        {
          v57 = +[UIColor tintColor];
          v58 = retstr->var2;
          retstr->var2 = v57;

          v59 = +[UIColor secondaryLabelColor];
          v60 = retstr->var3;
          retstr->var3 = v59;
        }

        v61 = retstr->var4;
        retstr->var4 = 0;

        goto LABEL_38;
      }

LABEL_20:
      if (v10)
      {
        +[UIColor secondaryLabelColor];
      }

      else
      {
        +[UIColor labelColor];
      }
      v45 = ;
      v46 = retstr->var2;
      retstr->var2 = v45;

      v47 = +[UIColor secondaryLabelColor];
      v48 = retstr->var3;
      retstr->var3 = v47;

      v49 = retstr->var4;
      retstr->var4 = 0;

      if (v23 != 4 || ([v15 isEditing] & 1) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v38 = ([v14 _focusSystemState] - 1) <= 1 && _AXSFullKeyboardAccessEnabled() == 0;
    v50 = [v15 isEditing];
    if (((v50 | v38) & 1) != 0 && ![v15 isFocused])
    {
      v66 = +[UIColor labelColor];
      v67 = retstr->var2;
      retstr->var2 = v66;

      retstr->var7 = 12;
      v68 = +[UIColor secondaryLabelColor];
      v69 = retstr->var3;
      retstr->var3 = v68;

      if (!v50)
      {
        v70 = +[UIColor labelColor];
        v71 = retstr->var4;
        retstr->var4 = v70;

        retstr->var9 = 12;
LABEL_31:
        if (([v15 isEditing] & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v51 = +[UIColor labelColor];
      v52 = retstr->var2;
      retstr->var2 = v51;

      v53 = +[UIColor secondaryLabelColor];
      v54 = retstr->var3;
      retstr->var3 = v53;
    }

    v55 = retstr->var4;
    retstr->var4 = 0;

    goto LABEL_31;
  }

  if (v10)
  {
    [(UITableConstants_IOS *)self defaultSidebarHeaderFont];
  }

  else
  {
    [(UITableConstants_IOS *)self defaultTextLabelFontForCellStyle:0, v17];
  }
  v19 = ;
  v27 = retstr->var0;
  retstr->var0 = v19;

  v28 = [(UITableConstants_IOS *)self defaultSidebarDetailTextLabelFontForCellStyle:a7];
  v29 = retstr->var1;
  retstr->var1 = v28;

  v30 = [(UITableConstants_IOS *)self defaultSidebarTextColorForTraitCollection:v14 state:v15 isHeader:0 isSecondaryText:0 style:a8];
  v31 = retstr->var2;
  retstr->var2 = v30;

  v32 = [(UITableConstants_IOS *)self defaultSidebarTextColorForTraitCollection:v14 state:v15 isHeader:v10 isSecondaryText:1 style:a8];
  v33 = retstr->var3;
  retstr->var3 = v32;

  v34 = [(UITableConstants_IOS *)self defaultSidebarImageTintColorForTraitCollection:v14 state:v15 isHeader:v10 style:a8];
  v35 = retstr->var4;
  retstr->var4 = v34;

  v36 = [(UITableConstants_IOS *)self defaultImageSymbolConfigurationForTraitCollection:v14];
  v37 = retstr->var5;
  retstr->var5 = v36;

  if ([v15 isHighlighted])
  {
    *&retstr->var7 = vdupq_n_s64(7uLL);
    retstr->var9 = 7;
  }

LABEL_52:

  return result;
}

- (id)defaultSidebarTextColorForTraitCollection:(id)a3 state:(id)a4 isHeader:(BOOL)a5 isSecondaryText:(BOOL)a6 style:(int64_t)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  if ([v13 isDisabled])
  {
    v14 = [v13 isSwiped];

    if ((v14 & 1) == 0)
    {
      v15 = +[UIColor quaternaryLabelColor];
      goto LABEL_22;
    }
  }

  else
  {
  }

  v22 = 0;
  memset(v21, 0, sizeof(v21));
  _UITableConstantsGetBackgroundProperties(self, v13, v12, v9, a7, v21);
  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v19, v21);
  if (v20 > 0xC || ((1 << v20) & 0x1081) == 0)
  {
    __destructor_8_s8_s16_s24_s80(v19);
    goto LABEL_11;
  }

  v16 = v19[0];
  __destructor_8_s8_s16_s24_s80(v19);
  if (v16 == 1)
  {
    goto LABEL_14;
  }

  if (v16 != 2)
  {
LABEL_11:
    if (a7 == 2 || ([v13 isEditing] & 1) != 0 || objc_msgSend(v13, "cellDropState") != 2)
    {
      if (v8)
      {
        +[UIColor secondaryLabelColor];
      }

      else
      {
        +[UIColor labelColor];
      }

      goto LABEL_16;
    }

LABEL_14:
    if (v8)
    {
      [UIColor colorWithWhite:1.0 alpha:0.8];
    }

    else
    {
      +[UIColor whiteColor];
    }

    v17 = LABEL_16:;
    goto LABEL_21;
  }

  v17 = +[UIColor tintColor];
LABEL_21:
  v15 = v17;
  __destructor_8_s8_s16_s24_s80(v21);
LABEL_22:

  return v15;
}

- (id)defaultSidebarImageTintColorForTraitCollection:(id)a3 state:(id)a4 isHeader:(BOOL)a5 style:(int64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if ([v11 isDisabled])
  {
    v12 = [v11 isSwiped];

    if ((v12 & 1) == 0)
    {
      v13 = +[UIColor quaternaryLabelColor];
      goto LABEL_15;
    }
  }

  else
  {
  }

  v19 = 0;
  memset(v18, 0, sizeof(v18));
  _UITableConstantsGetBackgroundProperties(self, v11, v10, v7, a6, v18);
  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v16, v18);
  if (v17 <= 0xC && ((1 << v17) & 0x1081) != 0)
  {
    v14 = v16[0];
    __destructor_8_s8_s16_s24_s80(v16);
    if (v14 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __destructor_8_s8_s16_s24_s80(v16);
  }

  if (a6 == 2 || ([v11 isEditing] & 1) != 0 || objc_msgSend(v11, "cellDropState") != 2)
  {
    v13 = 0;
    goto LABEL_14;
  }

LABEL_8:
  v13 = +[UIColor whiteColor];
LABEL_14:
  __destructor_8_s8_s16_s24_s80(v18);
LABEL_15:

  return v13;
}

- (UIEdgeInsets)defaultSidebarLayoutMarginsForElementsInsideSection
{
  v2 = 0.0;
  v3 = 8.0;
  v4 = 0.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)defaultSidebarHeaderFont
{
  v2 = _UITableConstantsUseUIPSidebarMetrics();
  v3 = &UIFontTextStyleBody;
  if (!v2)
  {
    v3 = UIFontTextStyleEmphasizedTitle3;
  }

  v4 = [off_1E70ECC18 preferredFontForTextStyle:*v3];

  return v4;
}

- (id)defaultSidebarDetailTextLabelFontForCellStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(UITableConstants_IOS *)self defaultDetailTextFontForCellStyle:?];
  }

  else
  {
    [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
  }
  v3 = ;

  return v3;
}

- (id)defaultInsetGroupedHeaderFontForExtraProminentStyle:(BOOL)a3 secondaryText:(BOOL)a4
{
  if (a4)
  {
    v4 = off_1E70ECC18;
    v5 = @"UICTFontTextStyleSubhead";
  }

  else
  {
    v6 = UIFontTextStyleEmphasizedTitle2;
    if (!a3)
    {
      v6 = UIFontTextStyleEmphasizedTitle3;
    }

    v5 = *v6;
    v4 = off_1E70ECC18;
  }

  v7 = [v4 preferredFontForTextStyle:v5];

  return v7;
}

- (NSDirectionalEdgeInsets)defaultInsetGroupedHeaderLayoutMarginsForExtraProminentStyle:(BOOL)a3 outAxesPreservingSuperviewLayoutMargins:(unint64_t *)a4
{
  v5 = a3;
  if (_UISolariumEnabled())
  {
    if (a4)
    {
      *a4 = 1;
    }

    v6 = 3.0;
    v7 = 10.0;
    v8 = 10.0;
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    if (v5)
    {
      v8 = 10.0;
    }

    else
    {
      v8 = 11.0;
    }

    v7 = 8.0;
    if (v5)
    {
      v7 = 9.0;
    }

    v6 = 3.0;
  }

  v9 = v6;
  result.trailing = v9;
  result.bottom = v8;
  result.leading = v6;
  result.top = v7;
  return result;
}

- (id)defaultTextLabelFontForCellStyle:(int64_t)a3
{
  if (dyld_program_sdk_at_least())
  {
    v5 = &UIFontTextStyleFootnote;
    if (a3 != 2)
    {
      v5 = &UIFontTextStyleBody;
    }

    v6 = [off_1E70ECC18 preferredFontForTextStyle:*v5];
  }

  else
  {
    [(UITableConstants_IOS *)self defaultTextLabelFontSizeForCellStyle:a3];
    v6 = [off_1E70ECC18 systemFontOfSize:?];
  }

  return v6;
}

- (double)defaultTextLabelFontSizeForCellStyle:(int64_t)a3
{
  result = 18.0;
  if (a3 == 2)
  {
    result = 14.0;
  }

  if (a3 == 1)
  {
    return 17.0;
  }

  return result;
}

- (id)defaultDetailTextColorForCellStyle:(int64_t)a3 traitCollection:(id)a4 state:(id)a5
{
  v7 = a5;
  if (_UITableUsesTintColorAsBackgroundColor(v7, a4, 0, 0))
  {
    v8 = +[UIColor whiteColor];
    goto LABEL_16;
  }

  if (a3 == 1 || a3 == 3 && _UISolariumEnabled())
  {
    v9 = v7;
    if ([v9 isDisabled])
    {
      v10 = [v9 isSwiped];

      if ((v10 & 1) == 0)
      {
        v8 = +[UIColor quaternaryLabelColor];
        goto LABEL_16;
      }
    }

    else
    {
    }

    v8 = +[UIColor secondaryLabelColor];
  }

  else
  {
    v11 = v7;
    if ([v11 isDisabled])
    {
      v12 = [v11 isSwiped];

      if ((v12 & 1) == 0)
      {
        v8 = +[UIColor tertiaryLabelColor];
        goto LABEL_16;
      }
    }

    else
    {
    }

    v8 = +[UIColor labelColor];
  }

LABEL_16:
  v13 = v8;

  return v13;
}

- (id)defaultDetailTextFontForCellStyle:(int64_t)a3
{
  if (!dyld_program_sdk_at_least())
  {
    if ((a3 - 1) <= 2)
    {
      [(UITableConstants_IOS *)self defaultDetailTextLabelFontSizeForCellStyle:a3];
      v7 = [off_1E70ECC18 systemFontOfSize:?];
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (a3 == 3)
  {
    v8 = _UISolariumEnabled();
    v5 = off_1E70ECC18;
    if (v8)
    {
      v6 = &UIFontTextStyleSubheadline;
    }

    else
    {
      v6 = &UIFontTextStyleCaption1;
    }

    goto LABEL_13;
  }

  if (a3 == 2)
  {
    v5 = off_1E70ECC18;
    v6 = &UIFontTextStyleFootnote;
    goto LABEL_13;
  }

  if (a3 != 1)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_14;
  }

  v5 = off_1E70ECC18;
  v6 = &UIFontTextStyleBody;
LABEL_13:
  v7 = [v5 preferredFontForTextStyle:*v6];
LABEL_14:

  return v7;
}

- (double)defaultDetailTextLabelFontSizeForCellStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    return 17.0;
  }

  if (a3 == 3)
  {
    return 12.0;
  }

  [(UITableConstants_IOS *)self defaultTextLabelFontSizeForCellStyle:?];
  return result;
}

- (id)defaultHeaderFontForTableViewStyle:(int64_t)a3
{
  if (_UISolariumEnabled())
  {
    v5 = off_1E70ECC18;
    v6 = UIFontTextStyleEmphasizedBody;
LABEL_6:
    v8 = [v5 preferredFontForTextStyle:*v6];
    goto LABEL_9;
  }

  if (a3)
  {
    v7 = dyld_program_sdk_at_least();
    v5 = off_1E70ECC18;
    if (v7)
    {
      v6 = &UIFontTextStyleFootnote;
      goto LABEL_6;
    }

    v8 = [off_1E70ECC18 boldSystemFontOfSize:14.0];
  }

  else
  {
    v8 = [(UITableConstants_IOS *)self defaultPlainHeaderFooterFont];
  }

LABEL_9:

  return v8;
}

- (id)defaultFooterFontForTableViewStyle:(int64_t)a3
{
  if (_UISolariumEnabled())
  {
    v5 = off_1E70ECC18;
LABEL_5:
    v7 = [v5 preferredFontForTextStyle:@"UICTFontTextStyleShortFootnote"];
    goto LABEL_8;
  }

  if (a3)
  {
    v6 = dyld_program_sdk_at_least();
    v5 = off_1E70ECC18;
    if (v6)
    {
      goto LABEL_5;
    }

    v7 = [off_1E70ECC18 systemFontOfSize:14.0];
  }

  else
  {
    v7 = [(UITableConstants_IOS *)self defaultPlainHeaderFooterFont];
  }

LABEL_8:

  return v7;
}

- (id)defaultHeaderTextColorForTableViewStyle:(int64_t)a3 focused:(BOOL)a4
{
  if (dyld_program_sdk_at_least())
  {
    v5 = +[UIColor secondaryLabelColor];
  }

  else
  {
    if (a3)
    {
      +[UIColor _groupTableHeaderFooterTextColor];
    }

    else
    {
      +[UIColor _plainTableHeaderFooterTextColor];
    }
    v5 = ;
  }

  return v5;
}

- (id)defaultFooterTextColorForTableViewStyle:(int64_t)a3 focused:(BOOL)a4
{
  if (dyld_program_sdk_at_least())
  {
    v5 = +[UIColor secondaryLabelColor];
  }

  else
  {
    if (a3)
    {
      +[UIColor _groupTableHeaderFooterTextColor];
    }

    else
    {
      +[UIColor _plainTableHeaderFooterTextColor];
    }
    v5 = ;
  }

  return v5;
}

- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)a3 cellConfigurationState:(int64_t)a4 traitCollection:(id)a5 floating:(id)a6
{
  v7 = a7;
  v22 = a5;
  v12 = a6;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var13.leading = 0u;
  retstr->var13.trailing = 0.0;
  [(UITableConstants_IOS *)self defaultCellCornerRadiusForTableViewStyle:a4 isSidebarStyle:0 isHeaderFooter:1 traitCollection:v12, __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault).n128_f64[0]];
  retstr->var12 = v13;
  if (a4)
  {
    goto LABEL_2;
  }

  if (dyld_program_sdk_at_least())
  {
    if (v7 && (_UIFloatingBarEnabled() & 1) == 0)
    {
      v17 = [UIBlurEffect effectWithStyle:10];
      var2 = retstr->var2;
      retstr->var2 = v17;

      var1 = objc_opt_self();
      v19 = [v12 objectForTrait:var1];
      var3 = retstr->var3;
      retstr->var3 = v19;

      goto LABEL_3;
    }

LABEL_2:
    var1 = retstr->var1;
    retstr->var1 = 0;
    goto LABEL_3;
  }

  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_2;
  }

  if (v7)
  {
    +[UIColor tablePlainHeaderFooterFloatingBackgroundColor];
  }

  else
  {
    +[UIColor tablePlainHeaderFooterBackgroundColor];
  }
  v21 = ;
  var1 = retstr->var1;
  retstr->var1 = v21;
LABEL_3:

  v15 = [v22 isFocused] ^ 1;
  if (!a4)
  {
    LOBYTE(v15) = 1;
  }

  if ((v15 & 1) == 0)
  {
    retstr->var0 = 1;
    retstr->var6 = 28;
  }

  return result;
}

- (id)_accessoryTintColorForAccessoryBaseColor:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = [(UITableConstants_IOS *)self _defaultAccessoryTintColor];
  }

  return v3;
}

- (id)_symbolImageNamed:(id)a3 withTextStyle:(id)a4 scale:(int64_t)a5
{
  v7 = a3;
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:a4 scale:a5];
  v9 = [UIImage systemImageNamed:v7 withConfiguration:v8];

  return v9;
}

- (id)_defaultDisclosureImageForTraitCollection:(id)a3
{
  v5 = a3;
  v6 = v5;
  v7 = _MergedGlobals_1304;
  if (!_MergedGlobals_1304 || v5 && (!qword_1ED4A0FC8 || *(v5 + 13) != *(qword_1ED4A0FC8 + 104) || *(v5 + 15) != *(qword_1ED4A0FC8 + 120)))
  {
    v8 = [(UITableConstants_IOS *)self _symbolImageNamed:@"chevron.forward" withTextStyle:@"UICTFontTextStyleEmphasizedBody" scale:1];
    v9 = _MergedGlobals_1304;
    _MergedGlobals_1304 = v8;

    objc_storeStrong(&qword_1ED4A0FC8, a3);
    v7 = _MergedGlobals_1304;
  }

  v10 = v7;

  return v7;
}

- (id)_defaultCircleDisclosureImageForTraitCollection:(id)a3
{
  v5 = a3;
  v6 = v5;
  v7 = qword_1ED4A0FD0;
  if (!qword_1ED4A0FD0 || v5 && (!qword_1ED4A0FD8 || v5[13] != *(qword_1ED4A0FD8 + 104) || v5[15] != *(qword_1ED4A0FD8 + 120)))
  {
    v8 = [v5 preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(v8))
    {
      if (UIContentSizeCategoryCompareToCategory(v8, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
      {
        v11 = UIContentSizeCategoryCompareToCategory(v8, &cfstr_Uictcontentsiz_9.isa);
        v9 = 2;
        if (v11 == NSOrderedAscending)
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 1;
      }

      if (v9 >= 2)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9;
      }
    }

    else
    {
      v10 = 2;
    }

    v12 = [(UITableConstants_IOS *)self _symbolImageNamed:@"chevron.forward.circle.fill" withTextStyle:@"UICTFontTextStyleEmphasizedBody" scale:v10];
    v13 = qword_1ED4A0FD0;
    qword_1ED4A0FD0 = v12;

    objc_storeStrong(&qword_1ED4A0FD8, a3);
    v7 = qword_1ED4A0FD0;
  }

  v14 = v7;

  return v7;
}

- (id)defaultDisclosureImageForCell:(id)a3 withAccessoryBaseColor:(id)a4
{
  v6 = a4;
  v7 = [a3 traitCollection];
  v8 = [(UITableConstants_IOS *)self _defaultDisclosureImageForTraitCollection:v7];

  v9 = [(UITableConstants_IOS *)self _accessoryTintColorForAccessoryBaseColor:v6];

  v10 = [v8 imageWithTintColor:v9 renderingMode:1];

  return v10;
}

- (id)defaultPopUpMenuIndicatorImageForTraitCollection:(id)a3
{
  v5 = a3;
  v6 = v5;
  v7 = qword_1ED4A0FE0;
  if (!qword_1ED4A0FE0 || v5 && (!qword_1ED4A0FE8 || *(v5 + 13) != *(qword_1ED4A0FE8 + 104) || *(v5 + 15) != *(qword_1ED4A0FE8 + 120)))
  {
    v8 = [(UITableConstants_IOS *)self _symbolImageNamed:@"chevron.up.chevron.down" withTextStyle:@"UICTFontTextStyleEmphasizedBody" scale:1];
    v9 = qword_1ED4A0FE0;
    qword_1ED4A0FE0 = v8;

    objc_storeStrong(&qword_1ED4A0FE8, a3);
    v7 = qword_1ED4A0FE0;
  }

  v10 = v7;

  return v7;
}

- (id)defaultOutlineDisclosureImageForView:(id)a3
{
  v4 = a3;
  if (_AXSButtonShapesEnabled() || _AXSDifferentiateWithoutColorEnabled())
  {
    v5 = [v4 traitCollection];
    v6 = [(UITableConstants_IOS *)self _defaultCircleDisclosureImageForTraitCollection:v5];
  }

  else
  {
    v5 = [v4 traitCollection];
    v6 = [(UITableConstants_IOS *)self _defaultDisclosureImageForTraitCollection:v5];
  }

  v7 = v6;

  return v7;
}

- (id)defaultCheckmarkImageForCell:(id)a3
{
  v4 = [a3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v5))
  {
    if (UIContentSizeCategoryCompareToCategory(v5, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
    {
      v8 = UIContentSizeCategoryCompareToCategory(v5, &cfstr_Uictcontentsiz_9.isa);
      v6 = 2;
      if (v8 == NSOrderedAscending)
      {
        v6 = 3;
      }
    }

    else
    {
      v6 = 1;
    }

    if (v6 >= 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 2;
  }

  v9 = [(UITableConstants_IOS *)self _symbolImageNamed:@"checkmark" withTextStyle:@"UICTFontTextStyleEmphasizedBody" scale:v7];

  return v9;
}

- (CGSize)defaultEditControlSizeForCell:(id)a3 inTableView:(id)a4
{
  v4 = [(UITableConstants_IOS *)self defaultDeleteImageForCell:a3, a4];
  [v4 size];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)defaultDeleteMinusRectForCell:(id)a3 inTableView:(id)a4
{
  v4 = 8.0;
  v5 = 12.0;
  v6 = 13.0;
  v7 = 3.0;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)defaultDeleteImageForCell:(id)a3
{
  v4 = [a3 _editingControlTintColorForStyle:1];
  v5 = [(UITableConstants_IOS *)self defaultDeleteImageWithTintColor:v4 backgroundColor:0];

  return v5;
}

- (id)defaultDeleteImageWithTintColor:(id)a3 backgroundColor:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v11 = +[UIColor whiteColor];

      v9 = v7;
      v7 = v11;
    }

    v15[0] = v7;
    v15[1] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v10 = [UIImageSymbolConfiguration configurationWithPaletteColors:v12];
  }

  else
  {
    v10 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
  }

  v13 = [UIImage systemImageNamed:@"minus.circle.fill" withConfiguration:v10];

  return v13;
}

- (id)defaultInsertImageForCell:(id)a3
{
  v4 = [a3 _editingControlTintColorForStyle:2];
  v5 = [(UITableConstants_IOS *)self defaultInsertImageWithTintColor:v4 backgroundColor:0];

  return v5;
}

- (id)defaultInsertImageWithTintColor:(id)a3 backgroundColor:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v11 = +[UIColor whiteColor];

      v9 = v7;
      v7 = v11;
    }

    v15[0] = v7;
    v15[1] = v9;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v10 = [UIImageSymbolConfiguration configurationWithPaletteColors:v12];
  }

  else
  {
    v10 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
  }

  v13 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v10];

  return v13;
}

- (id)defaultMultiSelectNotSelectedImageForCellStyle:(int64_t)a3 traitCollection:(id)a4 accessoryBaseColor:(id)a5
{
  v6 = a5;
  v7 = [UIImage systemImageNamed:@"circle"];
  v8 = [(UITableConstants_IOS *)self _accessoryTintColorForAccessoryBaseColor:v6];

  v9 = [v7 imageWithTintColor:v8 renderingMode:1];

  return v9;
}

- (id)defaultMultiSelectSelectedImageForCellStyle:(int64_t)a3 traitCollection:(id)a4 checkmarkColor:(id)a5 backgroundColor:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v20 = v9;
      v21 = v10;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v20;
      v14 = 2;
    }

    else
    {
      v19 = v9;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v19;
      v14 = 1;
    }

    v16 = [v12 arrayWithObjects:v13 count:{v14, v19, v20, v21, v22}];
    v17 = [UIImageSymbolConfiguration configurationWithPaletteColors:v16];
    v15 = [UIImage systemImageNamed:@"checkmark.circle.fill" withConfiguration:v17];
  }

  else
  {
    v15 = +[UIImage checkmarkImage];
  }

  return v15;
}

- (CGSize)defaultReorderControlSizeForCell:(id)a3 withAccessoryBaseColor:(id)a4
{
  v6 = a4;
  v7 = [a3 traitCollection];
  v8 = [(UITableConstants_IOS *)self defaultReorderControlImageForTraitCollection:v7 withAccessoryBaseColor:v6 isTracking:0];

  [v8 size];
  v10 = v9;
  v12 = v11;

  v13 = dyld_program_sdk_at_least();
  v14 = 30.0;
  if (v13)
  {
    v14 = 0.0;
  }

  v15 = v10 + v14;
  v16 = v12;
  result.height = v16;
  result.width = v15;
  return result;
}

- (id)defaultReorderControlImageForTraitCollection:(id)a3 withAccessoryBaseColor:(id)a4 isTracking:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = qword_1ED4A0FF0;
  if (!qword_1ED4A0FF0 || v8 && (!qword_1ED4A0FF8 || v8[13] != *(qword_1ED4A0FF8 + 104) || v8[15] != *(qword_1ED4A0FF8 + 120)))
  {
    v11 = [v8 preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(v11))
    {
      if (UIContentSizeCategoryCompareToCategory(v11, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
      {
        if (UIContentSizeCategoryCompareToCategory(v11, &cfstr_Uictcontentsiz_9.isa) == NSOrderedAscending)
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 3;
    }

    v13 = [(UITableConstants_IOS *)self _symbolImageNamed:@"line.horizontal.3" withTextStyle:@"UICTFontTextStyleBody" scale:v12];
    v14 = qword_1ED4A0FF0;
    qword_1ED4A0FF0 = v13;

    objc_storeStrong(&qword_1ED4A0FF8, a3);
    v10 = qword_1ED4A0FF0;
  }

  v15 = v10;
  v16 = [(UITableConstants_IOS *)self _accessoryTintColorForAccessoryBaseColor:v9];
  v17 = [v15 imageWithTintColor:v16 renderingMode:1];

  return v17;
}

- (UIEdgeInsets)reorderControlHoverEffectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)defaultImageSymbolConfigurationForTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v3))
  {
    if (UIContentSizeCategoryCompareToCategory(v3, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
    {
      if (UIContentSizeCategoryCompareToCategory(v3, &cfstr_Uictcontentsiz_9.isa) == NSOrderedAscending)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 3;
  }

  return [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:v4];
}

- (id)defaultImageTintColorForState:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = _UITableUsesTintColorAsBackgroundColor(v5, a4, 0, 0);
  v7 = v5;
  if ([v7 isDisabled])
  {
    v8 = [v7 isSwiped];

    if ((v8 & 1) == 0)
    {
      v9 = +[UIColor tertiaryLabelColor];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (v6)
  {
    v9 = +[UIColor whiteColor];
  }

  else
  {
    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (id)defaultAccessoryTintColorForAccessorySystemType:(int64_t)a3 header:(BOOL)a4 sidebarStyle:(int64_t)a5 cellConfigurationState:(id)a6 traitCollection:(id)a7 inheritedTintColor:(id)a8
{
  v11 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  _UITableConstantsGetBackgroundProperties(self, v15, v16, v11, a5, v27);
  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v25, v27);
  v18 = 0;
  if (v26 <= 0xC && ((1 << v26) & 0x1081) != 0)
  {
    v18 = (v25[0] & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  __destructor_8_s8_s16_s24_s80(v25);
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 != 6)
      {
        if (!v18)
        {
          v20 = +[UIColor secondaryLabelColor];
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (a3 == 8)
      {
        if (!v18)
        {
          v20 = +[UIColor separatorColor];
          goto LABEL_29;
        }

        v21 = 0.2;
        goto LABEL_28;
      }

      if (a3 != 9)
      {
        if (a3 != 10)
        {
          goto LABEL_32;
        }

        if (!v18)
        {
          v20 = +[UIColor tertiaryLabelColor];
          goto LABEL_29;
        }

LABEL_27:
        v21 = 0.8;
LABEL_28:
        v20 = [UIColor colorWithWhite:1.0 alpha:v21];
        goto LABEL_29;
      }
    }

LABEL_24:
    if (!v18)
    {
      goto LABEL_33;
    }

    v20 = +[UIColor whiteColor];
LABEL_29:
    v22 = v20;
    goto LABEL_34;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_26;
    }

    if (a3 == 1)
    {
      goto LABEL_24;
    }

LABEL_32:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"UITableConstants_IOS.m" lineNumber:1537 description:{@"Invalid _UICellAccessorySystemType value: %ld", a3}];

    goto LABEL_33;
  }

  if ((a3 - 2) < 2)
  {
    goto LABEL_33;
  }

  if (a3 != 4)
  {
    if (a3 == 5)
    {
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      goto LABEL_29;
    }

    goto LABEL_32;
  }

LABEL_26:
  if (v18)
  {
    goto LABEL_27;
  }

LABEL_33:
  v22 = 0;
LABEL_34:
  __destructor_8_s8_s16_s24_s80(v27);

  return v22;
}

- (id)defaultAccessoryBackgroundColorForAccessorySystemType:(int64_t)a3 header:(BOOL)a4 sidebarStyle:(int64_t)a5 cellConfigurationState:(id)a6 traitCollection:(id)a7
{
  v10 = _UITableUsesTintColorAsBackgroundColor(a6, a7, a4, a5);
  if (a3 > 0xA)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UITableConstants_IOS.m" lineNumber:1567 description:{@"Invalid _UICellAccessorySystemType value: %ld", a3}];

LABEL_3:
    v11 = 0;
    goto LABEL_4;
  }

  if (a3 != 5 || !v10)
  {
    goto LABEL_3;
  }

  v11 = +[UIColor whiteColor];
LABEL_4:

  return v11;
}

- (BOOL)shouldUseMonochromaticTreatmentForCellAccessorySystemType:(int64_t)a3 sidebarStyle:(int64_t)a4 cellConfigurationState:(id)a5 traitCollection:(id)a6
{
  v8 = a5;
  v9 = +[_UITraitMonochromaticTreatment _sidebarListAccessoriesMonochromaticTreatment];
  v10 = 0;
  if ((a4 - 3) >= 0xFFFFFFFFFFFFFFFELL && v9)
  {
    v11 = [v8 isSelected];
    v12 = 0x260u >> a3;
    if (v11)
    {
      LOBYTE(v12) = 0;
    }

    if (a3 <= 9)
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

@end