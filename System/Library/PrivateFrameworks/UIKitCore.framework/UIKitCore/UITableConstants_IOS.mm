@interface UITableConstants_IOS
+ (id)sharedConstants;
- ($7FDC96647900ED4FDF8E2F8A586A6BB4)contentPropertiesForSidebarElementWithTraitCollection:(SEL)collection state:(id)state isHeader:(id)header cellStyle:(BOOL)style sidebarStyle:(int64_t)sidebarStyle;
- (BOOL)defaultLabelAllowsTighteningForTruncationForSidebar:(BOOL)sidebar traitCollection:(id)collection;
- (BOOL)shouldUppercaseHeaderFooterTextForTableStyle:(int64_t)style isHeader:(BOOL)header;
- (BOOL)shouldUseMonochromaticTreatmentForCellAccessorySystemType:(int64_t)type sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection;
- (CGRect)defaultDeleteMinusRectForCell:(id)cell inTableView:(id)view;
- (CGSize)defaultEditControlSizeForCell:(id)cell inTableView:(id)view;
- (CGSize)defaultReorderControlSizeForCell:(id)cell withAccessoryBaseColor:(id)color;
- (NSDirectionalEdgeInsets)defaultInsetGroupedHeaderLayoutMarginsForExtraProminentStyle:(BOOL)style outAxesPreservingSuperviewLayoutMargins:(unint64_t *)margins;
- (UIEdgeInsets)defaultCellLayoutMarginsForTableStyle:(int64_t)style cellStyle:(int64_t)cellStyle isSidebarStyle:(BOOL)sidebarStyle textLabelFont:(id)font rawLayoutMargins:(UIEdgeInsets)margins;
- (UIEdgeInsets)defaultHeaderFooterLayoutMarginsForTableViewStyle:(int64_t)style isHeader:(BOOL)header isFirstSection:(BOOL)section;
- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)cell inTableView:(id)view;
- (UIEdgeInsets)defaultSidebarLayoutMarginsForElementsInsideSection;
- (UIEdgeInsets)reorderControlHoverEffectInsets;
- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection;
- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)style cellConfigurationState:(int64_t)state traitCollection:(id)collection floating:(id)floating;
- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection;
- (_UITableConstantsBackgroundProperties)defaultSidebarHeaderBackgroundPropertiesWithState:(SEL)state traitCollection:(id)collection;
- (double)_defaultMarginWidthForTableView:(id)view canUseLayoutMargins:(BOOL)margins;
- (double)defaultCellContentLeadingPaddingForSidebar:(BOOL)sidebar;
- (double)defaultCellCornerRadiusForTableViewStyle:(int64_t)style isSidebarStyle:(BOOL)sidebarStyle isSwipedCell:(BOOL)cell isHeaderFooter:(BOOL)footer traitCollection:(id)collection;
- (double)defaultContentAccessoryPadding;
- (double)defaultContentEditPaddingForCell:(id)cell inTableView:(id)view;
- (double)defaultContentReorderPaddingForCell:(id)cell inTableView:(id)view;
- (double)defaultDetailTextLabelFontSizeForCellStyle:(int64_t)style;
- (double)defaultDisclosureLayoutWidthForView:(id)view;
- (double)defaultImageToTextPaddingForSidebar:(BOOL)sidebar;
- (double)defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:(BOOL)sidebar traitCollection:(id)collection;
- (double)defaultImageViewSymbolImageLayoutHeightForTraitCollection:(id)collection;
- (double)defaultIndentationWidthForSidebarStyle:(BOOL)style;
- (double)defaultInterAccessoryPaddingForCell:(id)cell trailingAccessoryGroup:(BOOL)group;
- (double)defaultLabelMinimumScaleFactorForSidebar:(BOOL)sidebar traitCollection:(id)collection;
- (double)defaultLeadingCellMarginWidthForTableView:(id)view;
- (double)defaultRowHeightForTableView:(id)view cellStyle:(int64_t)style;
- (double)defaultSectionFooterHeightForTableView:(id)view;
- (double)defaultSectionFooterHeightForTableViewStyle:(int64_t)style screen:(id)screen;
- (double)defaultSectionHeaderHeightForTableView:(id)view;
- (double)defaultSectionHeaderHeightForTableViewStyle:(int64_t)style screen:(id)screen;
- (double)defaultTextLabelFontSizeForCellStyle:(int64_t)style;
- (double)defaultTextToSubtitlePaddingForCellStyle:(int64_t)style;
- (double)interspaceBetweenInnerAccessoryIdentifier:(id)identifier outerAccessoryIdentifier:(id)accessoryIdentifier forCell:(id)cell trailingAccessoryGroup:(BOOL)group;
- (double)minimumContentViewHeightForFont:(id)font traitCollection:(id)collection isSidebarStyle:(BOOL)style;
- (id)_accessoryTintColorForAccessoryBaseColor:(id)color;
- (id)_defaultAccessoryTintColor;
- (id)_defaultCircleDisclosureImageForTraitCollection:(id)collection;
- (id)_defaultDisclosureImageForTraitCollection:(id)collection;
- (id)_symbolImageNamed:(id)named withTextStyle:(id)style scale:(int64_t)scale;
- (id)defaultAccessoryBackgroundColorForAccessorySystemType:(int64_t)type header:(BOOL)header sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection;
- (id)defaultAccessoryTintColorForAccessorySystemType:(int64_t)type header:(BOOL)header sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection inheritedTintColor:(id)color;
- (id)defaultCheckmarkImageForCell:(id)cell;
- (id)defaultDeleteImageForCell:(id)cell;
- (id)defaultDeleteImageWithTintColor:(id)color backgroundColor:(id)backgroundColor;
- (id)defaultDetailTextColorForCellStyle:(int64_t)style traitCollection:(id)collection state:(id)state;
- (id)defaultDetailTextFontForCellStyle:(int64_t)style;
- (id)defaultDisclosureImageForCell:(id)cell withAccessoryBaseColor:(id)color;
- (id)defaultFooterFontForTableViewStyle:(int64_t)style;
- (id)defaultFooterTextColorForTableViewStyle:(int64_t)style focused:(BOOL)focused;
- (id)defaultHeaderFontForTableViewStyle:(int64_t)style;
- (id)defaultHeaderTextColorForTableViewStyle:(int64_t)style focused:(BOOL)focused;
- (id)defaultImageSymbolConfigurationForTraitCollection:(id)collection;
- (id)defaultImageTintColorForState:(id)state traitCollection:(id)collection;
- (id)defaultInsertImageForCell:(id)cell;
- (id)defaultInsertImageWithTintColor:(id)color backgroundColor:(id)backgroundColor;
- (id)defaultInsetGroupedHeaderFontForExtraProminentStyle:(BOOL)style secondaryText:(BOOL)text;
- (id)defaultMultiSelectBackgroundColorForCell:(id)cell inTableView:(id)view;
- (id)defaultMultiSelectNotSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection accessoryBaseColor:(id)color;
- (id)defaultMultiSelectSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection checkmarkColor:(id)color backgroundColor:(id)backgroundColor;
- (id)defaultOutlineDisclosureImageForView:(id)view;
- (id)defaultPlainHeaderFooterFont;
- (id)defaultPopUpMenuIndicatorImageForTraitCollection:(id)collection;
- (id)defaultReorderControlImageForTraitCollection:(id)collection withAccessoryBaseColor:(id)color isTracking:(BOOL)tracking;
- (id)defaultSidebarDetailTextLabelFontForCellStyle:(int64_t)style;
- (id)defaultSidebarHeaderFont;
- (id)defaultSidebarImageTintColorForTraitCollection:(id)collection state:(id)state isHeader:(BOOL)header style:(int64_t)style;
- (id)defaultSidebarTextColorForTraitCollection:(id)collection state:(id)state isHeader:(BOOL)header isSecondaryText:(BOOL)text style:(int64_t)style;
- (id)defaultTextColorForCellStyle:(int64_t)style traitCollection:(id)collection tintColor:(id)color state:(id)state;
- (id)defaultTextLabelFontForCellStyle:(int64_t)style;
- (int64_t)defaultLabelNumberOfLinesForSidebar:(BOOL)sidebar traitCollection:(id)collection;
- (void)_applySelectedOrDropTargetAppearanceToSidebarCellBackgroundProperties:(int)properties selected:(uint64_t)selected sidebarStyle:(int)style selectionIsKey:(void *)key state:(void *)state traitCollection:;
- (void)applyBoldSidebarStylingToContentProperties:(id *)properties traitCollection:(id)collection;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITableConstants_IOS.m" lineNumber:76 description:@"attempt to instantiate an instance of UITableConstants_IOS - use UITableConstants_Phone or _Pad instead"];

  return 0;
}

- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection
{
  collectionCopy = collection;
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
    isSwiped = [collectionCopy isSwiped];
  }

  else
  {
    isSwiped = 0;
  }

  [(UITableConstants_IOS *)self defaultCellCornerRadiusForTableViewStyle:state isSidebarStyle:0 isSwipedCell:isSwiped isHeaderFooter:0 traitCollection:v10];
  retstr->var12 = v12;
  cellDropState = [collectionCopy cellDropState];
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

  isHighlighted = [collectionCopy isHighlighted];
  if (cellDropState == 2)
  {
    v19 = isHighlighted;
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

  if ([collectionCopy isFocused] && (objc_msgSend(collectionCopy, "isSelected") & v17 & 1) == 0)
  {
    retstr->var0 = 1;
    retstr->var6 = 28;
    goto LABEL_45;
  }

  if (([collectionCopy isHighlighted] & 1) == 0)
  {
    isSelected = [collectionCopy isSelected];
    v22 = cellDropState == 2 ? 1 : isSelected;
    if (v22 != 1)
    {
      if (state)
      {
        if (!_UISolariumSwipeActionsEnabled() || ![collectionCopy isSwiped])
        {
          v20 = +[UIColor tableCellGroupedBackgroundColor];
          goto LABEL_44;
        }
      }

      else if (!_UISolariumSwipeActionsEnabled() || ![collectionCopy isSwiped])
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
    if (state)
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
  if ([collectionCopy isReordering])
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

- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection
{
  collectionCopy = collection;
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
  cellDropState = [collectionCopy cellDropState];
  cellDropState2 = [collectionCopy cellDropState];
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
      v18 = state != 2;
    }
  }

  else
  {
    v18 = v17 == 1;
  }

  if (![collectionCopy isSelected])
  {
LABEL_14:
    _usesAnyPlainListStyle = 0;
    goto LABEL_16;
  }

  if ([collectionCopy isEditing])
  {
    if (dyld_program_sdk_at_least())
    {
      _usesAnyPlainListStyle = [collectionCopy _usesAnyPlainListStyle];
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  _usesAnyPlainListStyle = 1;
LABEL_16:
  if (cellDropState == 2)
  {
    [(UITableConstants_IOS *)self _applySelectedOrDropTargetAppearanceToSidebarCellBackgroundProperties:_usesAnyPlainListStyle selected:state sidebarStyle:v18 selectionIsKey:collectionCopy state:v16 traitCollection:?];
    if ([collectionCopy isHighlighted])
    {
      retstr->var6 = 7;
    }

    isSelected = [collectionCopy isSelected];
    v21 = collectionCopy;
    if ((isSelected & 1) == 0)
    {
      *&retstr->var13.top = xmmword_18A64B730;
      *&retstr->var13.bottom = xmmword_18A64B730;
    }

    goto LABEL_37;
  }

  if ([collectionCopy isFocused] && (objc_msgSend(collectionCopy, "isSelected") & (v18 | v14) & 1) == 0)
  {
    retstr->var0 = 1;
    retstr->var6 = 28;
    v21 = collectionCopy;
    goto LABEL_37;
  }

  v21 = collectionCopy;
  if (!_usesAnyPlainListStyle)
  {
    goto LABEL_37;
  }

  v22 = collectionCopy;
  if (([v22 isDisabled] & 1) == 0)
  {

LABEL_30:
    if ((cellDropState2 != 1) | v14 & 1)
    {
      [(UITableConstants_IOS *)self _applySelectedOrDropTargetAppearanceToSidebarCellBackgroundProperties:1 selected:state sidebarStyle:v18 selectionIsKey:v22 state:v16 traitCollection:?];
    }

    else
    {
      v26 = +[UIColor systemGrayColor];
      var1 = retstr->var1;
      retstr->var1 = v26;

      v28 = 8;
      if (state != 2)
      {
        v28 = 3;
      }

      retstr->var6 = v28;
    }

    goto LABEL_35;
  }

  isSwiped = [v22 isSwiped];

  if (isSwiped)
  {
    goto LABEL_30;
  }

  v24 = +[UIColor quaternarySystemFillColor];
  v25 = retstr->var1;
  retstr->var1 = v24;

LABEL_35:
  isHighlighted = [v22 isHighlighted];
  v21 = collectionCopy;
  if (isHighlighted)
  {
    retstr->var6 = 7;
  }

LABEL_37:
  isSwiped2 = [v21 isSwiped];
  if (retstr->var1)
  {
    v31 = 0;
  }

  else
  {
    v31 = isSwiped2;
  }

  if (v31 == 1 && !retstr->var0 && !retstr->var2)
  {
    v32 = +[UIColor _swipedSidebarCellBackgroundColor];
    v33 = retstr->var1;
    retstr->var1 = v32;
  }

  if ([collectionCopy isReordering])
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
    v38 = collectionCopy;
    if ([v38 isDisabled])
    {
      isSwiped3 = [v38 isSwiped];

      if ((isSwiped3 & 1) == 0)
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

- (void)_applySelectedOrDropTargetAppearanceToSidebarCellBackgroundProperties:(int)properties selected:(uint64_t)selected sidebarStyle:(int)style selectionIsKey:(void *)key state:(void *)state traitCollection:
{
  if (self)
  {
    if ((_UITableConstantsUseUIPSidebarMetrics() & 1) != 0 && selected != 3)
    {
      if (_UISolariumEnabled())
      {
        v16 = +[UIColor tertiarySystemFillColor];
        v17 = a2[1];
        a2[1] = v16;

        v13 = 2;
        goto LABEL_11;
      }

      if ([state userInterfaceStyle] == 2)
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
      if (properties && ([key isSwiped] & 1) == 0 && (objc_msgSend(key, "_inMultiSelectGroup") & 1) == 0 && (objc_msgSend(key, "isEditing") & 1) == 0)
      {
        a2[5] = 4;
      }
    }

    else
    {
      if (style)
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

- (_UITableConstantsBackgroundProperties)defaultSidebarHeaderBackgroundPropertiesWithState:(SEL)state traitCollection:(id)collection
{
  collectionCopy = collection;
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
  if ([collectionCopy isFocused])
  {
    retstr->var0 = 1;
    retstr->var6 = 28;
  }

  return result;
}

- (id)defaultMultiSelectBackgroundColorForCell:(id)cell inTableView:(id)view
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

- (double)defaultRowHeightForTableView:(id)view cellStyle:(int64_t)style
{
  v6 = [off_1E70ECC18 preferredFontForTextStyle:{@"UICTFontTextStyleBody", style}];
  _scrollView = [view _scrollView];
  traitCollection = [_scrollView traitCollection];
  v9 = traitCollection;
  if (traitCollection)
  {
    v10 = traitCollection;
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

- (double)defaultSectionHeaderHeightForTableViewStyle:(int64_t)style screen:(id)screen
{
  if (style)
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

- (double)defaultSectionHeaderHeightForTableView:(id)view
{
  _tableStyle = [view _tableStyle];
  _scrollView = [view _scrollView];
  window = [_scrollView window];
  screen = [window screen];
  [(UITableConstants_IOS *)self defaultSectionHeaderHeightForTableViewStyle:_tableStyle screen:screen];
  v10 = v9;

  return v10;
}

- (double)defaultSectionFooterHeightForTableViewStyle:(int64_t)style screen:(id)screen
{
  if (style)
  {
    return 17.5;
  }

  [(UITableConstants_IOS *)self defaultSectionHeaderHeightForTableViewStyle:0 screen:screen];
  return result;
}

- (double)defaultSectionFooterHeightForTableView:(id)view
{
  _tableStyle = [view _tableStyle];
  _scrollView = [view _scrollView];
  window = [_scrollView window];
  screen = [window screen];
  [(UITableConstants_IOS *)self defaultSectionFooterHeightForTableViewStyle:_tableStyle screen:screen];
  v10 = v9;

  return v10;
}

- (double)defaultImageToTextPaddingForSidebar:(BOOL)sidebar
{
  if (sidebar)
  {
    return 10.0;
  }

  [(UITableConstants_IOS *)self defaultCellContentLeadingPaddingForSidebar:0];
  return result;
}

- (double)defaultTextToSubtitlePaddingForCellStyle:(int64_t)style
{
  result = 0.0;
  if (style != 3)
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

- (double)minimumContentViewHeightForFont:(id)font traitCollection:(id)collection isSidebarStyle:(BOOL)style
{
  fontCopy = font;
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v9 = _UIContentSizeCategoryMin(preferredContentSizeCategory, @"UICTContentSizeCategoryXXXL");

  v10 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v9];
  v11 = [fontCopy _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v10];

  if (style || !_UISolariumEnabled())
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

- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)cell inTableView:(id)view
{
  if (dyld_program_sdk_at_least())
  {
    v7 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:@"UICTContentSizeCategoryL"];
    v8 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:v7];
  }

  else
  {
    v8 = -[UITableConstants_IOS defaultTextLabelFontForCellStyle:](self, "defaultTextLabelFontForCellStyle:", [cell _cellStyle]);
  }

  _tableStyle = [view _tableStyle];
  _cellStyle = [cell _cellStyle];
  [cell _rawLayoutMargins];
  [(UITableConstants_IOS *)self defaultCellLayoutMarginsForTableStyle:_tableStyle cellStyle:_cellStyle isSidebarStyle:0 textLabelFont:v8 rawLayoutMargins:?];
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

- (UIEdgeInsets)defaultCellLayoutMarginsForTableStyle:(int64_t)style cellStyle:(int64_t)cellStyle isSidebarStyle:(BOOL)sidebarStyle textLabelFont:(id)font rawLayoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  left = margins.left;
  fontCopy = font;
  if (sidebarStyle || (v12 = 15.0, (_UISolariumEnabled() & 1) == 0))
  {
    if (cellStyle != 3 || (v12 = 4.0, (dyld_program_sdk_at_least() & 1) == 0))
    {
      [fontCopy lineHeight];
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

- (UIEdgeInsets)defaultHeaderFooterLayoutMarginsForTableViewStyle:(int64_t)style isHeader:(BOOL)header isFirstSection:(BOOL)section
{
  sectionCopy = section;
  headerCopy = header;
  if (_UISolariumEnabled())
  {
    if (headerCopy)
    {
      v8 = 10.0;
    }

    else
    {
      v8 = 6.0;
    }

    v9 = 8.0;
    if (headerCopy)
    {
      v9 = 10.0;
    }
  }

  else if (style)
  {
    v10 = dyld_program_sdk_at_least();
    v9 = 8.0;
    v11 = 32.0;
    if (!sectionCopy)
    {
      v11 = 17.0;
    }

    v8 = 12.0;
    if (headerCopy)
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

- (double)defaultContentEditPaddingForCell:(id)cell inTableView:(id)view
{
  v4 = dyld_program_sdk_at_least();
  result = 9.0;
  if (v4)
  {
    return 16.0;
  }

  return result;
}

- (double)defaultContentReorderPaddingForCell:(id)cell inTableView:(id)view
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

- (double)defaultCellContentLeadingPaddingForSidebar:(BOOL)sidebar
{
  result = 16.0;
  if (sidebar)
  {
    return 8.0;
  }

  return result;
}

- (double)defaultInterAccessoryPaddingForCell:(id)cell trailingAccessoryGroup:(BOOL)group
{
  if (group)
  {
    [(UITableConstants_IOS *)self defaultCellContentTrailingPadding];
  }

  else
  {
    [(UITableConstants_IOS *)self defaultCellContentLeadingPaddingForSidebar:0];
  }

  return result;
}

- (double)defaultImageViewSymbolImageAndAccessoryLayoutWidthForSidebar:(BOOL)sidebar traitCollection:(id)collection
{
  if (sidebar)
  {
    v4 = 28.0;
  }

  else
  {
    v4 = 24.0;
  }

  collectionCopy = collection;
  v6 = +[UIFontMetrics defaultMetrics];
  [v6 scaledValueForValue:collectionCopy compatibleWithTraitCollection:v4];
  v8 = v7;

  return v8;
}

- (double)defaultImageViewSymbolImageLayoutHeightForTraitCollection:(id)collection
{
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:collection];
  [v3 _bodyLeading];
  v5 = v4;

  return v5;
}

- (double)defaultDisclosureLayoutWidthForView:(id)view
{
  v3 = [(UITableConstants_IOS *)self defaultOutlineDisclosureImageForView:view];
  [v3 size];
  v5 = v4;
  [v3 size];
  if (v5 < v6)
  {
    v5 = v6;
  }

  return v5;
}

- (double)defaultCellCornerRadiusForTableViewStyle:(int64_t)style isSidebarStyle:(BOOL)sidebarStyle isSwipedCell:(BOOL)cell isHeaderFooter:(BOOL)footer traitCollection:(id)collection
{
  footerCopy = footer;
  collectionCopy = collection;
  v12 = collectionCopy;
  if (style)
  {
    v13 = footerCopy;
  }

  else
  {
    v13 = 0;
  }

  if (sidebarStyle || cell || (v14 = 0.0, v13))
  {
    userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
    if (userInterfaceIdiom == 6)
    {
      v14 = 16.0;
    }

    else if (userInterfaceIdiom == 3)
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

- (double)interspaceBetweenInnerAccessoryIdentifier:(id)identifier outerAccessoryIdentifier:(id)accessoryIdentifier forCell:(id)cell trailingAccessoryGroup:(BOOL)group
{
  groupCopy = group;
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  cellCopy = cell;
  if (dyld_program_sdk_at_least())
  {
    if (identifierCopy)
    {
      if (accessoryIdentifierCopy)
      {
        [(UITableConstants_IOS *)self defaultInterAccessoryPaddingForCell:cellCopy trailingAccessoryGroup:groupCopy];
LABEL_15:
        v14 = v13;
        goto LABEL_20;
      }

      [cellCopy _minimumCellAccessoryMargin];
      v16 = v15;
      [cellCopy directionalLayoutMargins];
      if (groupCopy)
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
      if ((_UITableViewCellUsesLayoutMarginBasedContentPadding() & 1) == 0 && groupCopy)
      {
        [(UITableConstants_IOS *)self defaultCellContentTrailingPadding];
        goto LABEL_15;
      }
    }
  }

  else
  {
    v14 = 0.0;
    if (([identifierCopy isEqualToString:0x1EFB34170] & 1) == 0 && (objc_msgSend(accessoryIdentifierCopy, "isEqualToString:", 0x1EFB34170) & 1) == 0)
    {
      if (identifierCopy)
      {
        if (accessoryIdentifierCopy)
        {
          if ([accessoryIdentifierCopy isEqualToString:0x1EFB9F430])
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
          [cellCopy _minimumCellAccessoryMargin];
          v22 = v21;
          [cellCopy directionalLayoutMargins];
          v14 = fmax(v22, v23);
        }
      }

      else if ((_UITableViewCellUsesLayoutMarginBasedContentPadding() & 1) == 0 && groupCopy)
      {
        [(UITableConstants_IOS *)self defaultContentAccessoryPadding];
        goto LABEL_15;
      }
    }
  }

LABEL_20:

  return v14;
}

- (double)defaultIndentationWidthForSidebarStyle:(BOOL)style
{
  result = 10.0;
  if (style)
  {
    return 20.0;
  }

  return result;
}

- (double)_defaultMarginWidthForTableView:(id)view canUseLayoutMargins:(BOOL)margins
{
  marginsCopy = margins;
  _scrollView = [view _scrollView];
  window = [_scrollView window];
  screen = [window screen];
  _scrollView2 = [view _scrollView];
  [_scrollView2 bounds];
  v11 = v10;
  v12 = screen;
  v13 = dyld_program_sdk_at_least();
  mainScreen = v12;
  if (!v12)
  {
    mainScreen = [objc_opt_self() mainScreen];
  }

  if (v13)
  {
    v15 = 16.0;
  }

  else
  {
    v15 = 15.0;
  }

  _wantsWideContentMargins = [mainScreen _wantsWideContentMargins];
  v17 = 20.0;
  if (v11 <= 320.0)
  {
    v17 = 16.0;
  }

  if (_wantsWideContentMargins)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  if (!marginsCopy)
  {
    return v18;
  }

  _scrollView3 = [view _scrollView];
  [_scrollView3 directionalLayoutMargins];
  v21 = v20;

  return fmax(v18, v21);
}

- (double)defaultLeadingCellMarginWidthForTableView:(id)view
{
  v5 = [view _sectionContentInsetFollowsLayoutMargins] ^ 1;

  [(UITableConstants_IOS *)self _defaultMarginWidthForTableView:view canUseLayoutMargins:v5];
  return result;
}

- (BOOL)shouldUppercaseHeaderFooterTextForTableStyle:(int64_t)style isHeader:(BOOL)header
{
  headerCopy = header;
  v6 = _UISolariumEnabled();
  v8 = style == 16 || (style - 1) < 2;
  if (!headerCopy)
  {
    v8 = 0;
  }

  return (v6 & 1) == 0 && v8;
}

- (int64_t)defaultLabelNumberOfLinesForSidebar:(BOOL)sidebar traitCollection:(id)collection
{
  if (!sidebar)
  {
    return 0;
  }

  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v5 = ~UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return v5 & 1;
}

- (BOOL)defaultLabelAllowsTighteningForTruncationForSidebar:(BOOL)sidebar traitCollection:(id)collection
{
  if (sidebar)
  {
    preferredContentSizeCategory = [collection preferredContentSizeCategory];
    v5 = !UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (double)defaultLabelMinimumScaleFactorForSidebar:(BOOL)sidebar traitCollection:(id)collection
{
  result = 0.0;
  if (sidebar)
  {
    preferredContentSizeCategory = [collection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    result = 0.9;
    if (IsAccessibilityCategory)
    {
      return 0.0;
    }
  }

  return result;
}

- (id)defaultTextColorForCellStyle:(int64_t)style traitCollection:(id)collection tintColor:(id)color state:(id)state
{
  collectionCopy = collection;
  colorCopy = color;
  stateCopy = state;
  if (([stateCopy isDisabled] & 1) == 0)
  {

LABEL_5:
    if (_UITableUsesTintColorAsBackgroundColor(stateCopy, collectionCopy, 0, 0))
    {
      v13 = +[UIColor whiteColor];
    }

    else if (style == 2 && colorCopy)
    {
      v13 = colorCopy;
    }

    else
    {
      v13 = +[UIColor labelColor];
    }

    goto LABEL_11;
  }

  isSwiped = [stateCopy isSwiped];

  if (isSwiped)
  {
    goto LABEL_5;
  }

  v13 = +[UIColor tertiaryLabelColor];
LABEL_11:
  v14 = v13;

  return v14;
}

- (void)applyBoldSidebarStylingToContentProperties:(id *)properties traitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD20];
  var0 = properties->var0;
  properties->var0 = v5;
  v7 = v5;

  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
    {
      if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa) == NSOrderedAscending)
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
  var5 = properties->var5;
  properties->var5 = v10;
}

- ($7FDC96647900ED4FDF8E2F8A586A6BB4)contentPropertiesForSidebarElementWithTraitCollection:(SEL)collection state:(id)state isHeader:(id)header cellStyle:(BOOL)style sidebarStyle:(int64_t)sidebarStyle
{
  styleCopy = style;
  stateCopy = state;
  headerCopy = header;
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
    if (styleCopy)
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

    v21 = [(UITableConstants_IOS *)self defaultSidebarDetailTextLabelFontForCellStyle:sidebarStyle];
    var1 = retstr->var1;
    retstr->var1 = v21;

    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    memset(v78, 0, sizeof(v78));
    _UITableConstantsGetBackgroundProperties(self, headerCopy, stateCopy, styleCopy, a8, v78);
    v23 = *&v78[0];
    v24 = [(UITableConstants_IOS *)self defaultImageSymbolConfigurationForTraitCollection:stateCopy];
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
        v26 = ([stateCopy _focusSystemState] - 1) <= 1 && _AXSFullKeyboardAccessEnabled() == 0;
        isEditing = [headerCopy isEditing];
        if (((isEditing | v26) & 1) != 0 && ![headerCopy isFocused])
        {
          v72 = +[UIColor labelColor];
          v73 = retstr->var2;
          retstr->var2 = v72;

          retstr->var7 = 12;
          v74 = +[UIColor secondaryLabelColor];
          v75 = retstr->var3;
          retstr->var3 = v74;

          if (!isEditing)
          {
            v76 = +[UIColor labelColor];
            v77 = retstr->var4;
            retstr->var4 = v76;

            retstr->var9 = 12;
LABEL_38:
            if (([headerCopy isEditing] & 1) == 0)
            {
LABEL_39:
              [(UITableConstants_IOS *)self applyBoldSidebarStylingToContentProperties:retstr traitCollection:stateCopy];
            }

LABEL_40:
            v62 = headerCopy;
            if ([v62 isDisabled])
            {
              isSwiped = [v62 isSwiped];

              if ((isSwiped & 1) == 0)
              {
                retstr->var6 = 0.5;
              }
            }

            else
            {
            }

            if ([v62 isHighlighted] && objc_msgSend(stateCopy, "userInterfaceIdiom") != 5)
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
      if (styleCopy)
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

      if (v23 != 4 || ([headerCopy isEditing] & 1) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v38 = ([stateCopy _focusSystemState] - 1) <= 1 && _AXSFullKeyboardAccessEnabled() == 0;
    isEditing2 = [headerCopy isEditing];
    if (((isEditing2 | v38) & 1) != 0 && ![headerCopy isFocused])
    {
      v66 = +[UIColor labelColor];
      v67 = retstr->var2;
      retstr->var2 = v66;

      retstr->var7 = 12;
      v68 = +[UIColor secondaryLabelColor];
      v69 = retstr->var3;
      retstr->var3 = v68;

      if (!isEditing2)
      {
        v70 = +[UIColor labelColor];
        v71 = retstr->var4;
        retstr->var4 = v70;

        retstr->var9 = 12;
LABEL_31:
        if (([headerCopy isEditing] & 1) == 0)
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

  if (styleCopy)
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

  v28 = [(UITableConstants_IOS *)self defaultSidebarDetailTextLabelFontForCellStyle:sidebarStyle];
  v29 = retstr->var1;
  retstr->var1 = v28;

  v30 = [(UITableConstants_IOS *)self defaultSidebarTextColorForTraitCollection:stateCopy state:headerCopy isHeader:0 isSecondaryText:0 style:a8];
  v31 = retstr->var2;
  retstr->var2 = v30;

  v32 = [(UITableConstants_IOS *)self defaultSidebarTextColorForTraitCollection:stateCopy state:headerCopy isHeader:styleCopy isSecondaryText:1 style:a8];
  v33 = retstr->var3;
  retstr->var3 = v32;

  v34 = [(UITableConstants_IOS *)self defaultSidebarImageTintColorForTraitCollection:stateCopy state:headerCopy isHeader:styleCopy style:a8];
  v35 = retstr->var4;
  retstr->var4 = v34;

  v36 = [(UITableConstants_IOS *)self defaultImageSymbolConfigurationForTraitCollection:stateCopy];
  v37 = retstr->var5;
  retstr->var5 = v36;

  if ([headerCopy isHighlighted])
  {
    *&retstr->var7 = vdupq_n_s64(7uLL);
    retstr->var9 = 7;
  }

LABEL_52:

  return result;
}

- (id)defaultSidebarTextColorForTraitCollection:(id)collection state:(id)state isHeader:(BOOL)header isSecondaryText:(BOOL)text style:(int64_t)style
{
  textCopy = text;
  headerCopy = header;
  collectionCopy = collection;
  stateCopy = state;
  if ([stateCopy isDisabled])
  {
    isSwiped = [stateCopy isSwiped];

    if ((isSwiped & 1) == 0)
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
  _UITableConstantsGetBackgroundProperties(self, stateCopy, collectionCopy, headerCopy, style, v21);
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
    if (style == 2 || ([stateCopy isEditing] & 1) != 0 || objc_msgSend(stateCopy, "cellDropState") != 2)
    {
      if (textCopy)
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
    if (textCopy)
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

- (id)defaultSidebarImageTintColorForTraitCollection:(id)collection state:(id)state isHeader:(BOOL)header style:(int64_t)style
{
  headerCopy = header;
  collectionCopy = collection;
  stateCopy = state;
  if ([stateCopy isDisabled])
  {
    isSwiped = [stateCopy isSwiped];

    if ((isSwiped & 1) == 0)
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
  _UITableConstantsGetBackgroundProperties(self, stateCopy, collectionCopy, headerCopy, style, v18);
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

  if (style == 2 || ([stateCopy isEditing] & 1) != 0 || objc_msgSend(stateCopy, "cellDropState") != 2)
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

- (id)defaultSidebarDetailTextLabelFontForCellStyle:(int64_t)style
{
  if (style == 1)
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

- (id)defaultInsetGroupedHeaderFontForExtraProminentStyle:(BOOL)style secondaryText:(BOOL)text
{
  if (text)
  {
    v4 = off_1E70ECC18;
    v5 = @"UICTFontTextStyleSubhead";
  }

  else
  {
    v6 = UIFontTextStyleEmphasizedTitle2;
    if (!style)
    {
      v6 = UIFontTextStyleEmphasizedTitle3;
    }

    v5 = *v6;
    v4 = off_1E70ECC18;
  }

  v7 = [v4 preferredFontForTextStyle:v5];

  return v7;
}

- (NSDirectionalEdgeInsets)defaultInsetGroupedHeaderLayoutMarginsForExtraProminentStyle:(BOOL)style outAxesPreservingSuperviewLayoutMargins:(unint64_t *)margins
{
  styleCopy = style;
  if (_UISolariumEnabled())
  {
    if (margins)
    {
      *margins = 1;
    }

    v6 = 3.0;
    v7 = 10.0;
    v8 = 10.0;
  }

  else
  {
    if (margins)
    {
      *margins = 0;
    }

    if (styleCopy)
    {
      v8 = 10.0;
    }

    else
    {
      v8 = 11.0;
    }

    v7 = 8.0;
    if (styleCopy)
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

- (id)defaultTextLabelFontForCellStyle:(int64_t)style
{
  if (dyld_program_sdk_at_least())
  {
    v5 = &UIFontTextStyleFootnote;
    if (style != 2)
    {
      v5 = &UIFontTextStyleBody;
    }

    v6 = [off_1E70ECC18 preferredFontForTextStyle:*v5];
  }

  else
  {
    [(UITableConstants_IOS *)self defaultTextLabelFontSizeForCellStyle:style];
    v6 = [off_1E70ECC18 systemFontOfSize:?];
  }

  return v6;
}

- (double)defaultTextLabelFontSizeForCellStyle:(int64_t)style
{
  result = 18.0;
  if (style == 2)
  {
    result = 14.0;
  }

  if (style == 1)
  {
    return 17.0;
  }

  return result;
}

- (id)defaultDetailTextColorForCellStyle:(int64_t)style traitCollection:(id)collection state:(id)state
{
  stateCopy = state;
  if (_UITableUsesTintColorAsBackgroundColor(stateCopy, collection, 0, 0))
  {
    v8 = +[UIColor whiteColor];
    goto LABEL_16;
  }

  if (style == 1 || style == 3 && _UISolariumEnabled())
  {
    v9 = stateCopy;
    if ([v9 isDisabled])
    {
      isSwiped = [v9 isSwiped];

      if ((isSwiped & 1) == 0)
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
    v11 = stateCopy;
    if ([v11 isDisabled])
    {
      isSwiped2 = [v11 isSwiped];

      if ((isSwiped2 & 1) == 0)
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

- (id)defaultDetailTextFontForCellStyle:(int64_t)style
{
  if (!dyld_program_sdk_at_least())
  {
    if ((style - 1) <= 2)
    {
      [(UITableConstants_IOS *)self defaultDetailTextLabelFontSizeForCellStyle:style];
      v7 = [off_1E70ECC18 systemFontOfSize:?];
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (style == 3)
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

  if (style == 2)
  {
    v5 = off_1E70ECC18;
    v6 = &UIFontTextStyleFootnote;
    goto LABEL_13;
  }

  if (style != 1)
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

- (double)defaultDetailTextLabelFontSizeForCellStyle:(int64_t)style
{
  if (style == 1)
  {
    return 17.0;
  }

  if (style == 3)
  {
    return 12.0;
  }

  [(UITableConstants_IOS *)self defaultTextLabelFontSizeForCellStyle:?];
  return result;
}

- (id)defaultHeaderFontForTableViewStyle:(int64_t)style
{
  if (_UISolariumEnabled())
  {
    v5 = off_1E70ECC18;
    v6 = UIFontTextStyleEmphasizedBody;
LABEL_6:
    defaultPlainHeaderFooterFont = [v5 preferredFontForTextStyle:*v6];
    goto LABEL_9;
  }

  if (style)
  {
    v7 = dyld_program_sdk_at_least();
    v5 = off_1E70ECC18;
    if (v7)
    {
      v6 = &UIFontTextStyleFootnote;
      goto LABEL_6;
    }

    defaultPlainHeaderFooterFont = [off_1E70ECC18 boldSystemFontOfSize:14.0];
  }

  else
  {
    defaultPlainHeaderFooterFont = [(UITableConstants_IOS *)self defaultPlainHeaderFooterFont];
  }

LABEL_9:

  return defaultPlainHeaderFooterFont;
}

- (id)defaultFooterFontForTableViewStyle:(int64_t)style
{
  if (_UISolariumEnabled())
  {
    v5 = off_1E70ECC18;
LABEL_5:
    defaultPlainHeaderFooterFont = [v5 preferredFontForTextStyle:@"UICTFontTextStyleShortFootnote"];
    goto LABEL_8;
  }

  if (style)
  {
    v6 = dyld_program_sdk_at_least();
    v5 = off_1E70ECC18;
    if (v6)
    {
      goto LABEL_5;
    }

    defaultPlainHeaderFooterFont = [off_1E70ECC18 systemFontOfSize:14.0];
  }

  else
  {
    defaultPlainHeaderFooterFont = [(UITableConstants_IOS *)self defaultPlainHeaderFooterFont];
  }

LABEL_8:

  return defaultPlainHeaderFooterFont;
}

- (id)defaultHeaderTextColorForTableViewStyle:(int64_t)style focused:(BOOL)focused
{
  if (dyld_program_sdk_at_least())
  {
    v5 = +[UIColor secondaryLabelColor];
  }

  else
  {
    if (style)
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

- (id)defaultFooterTextColorForTableViewStyle:(int64_t)style focused:(BOOL)focused
{
  if (dyld_program_sdk_at_least())
  {
    v5 = +[UIColor secondaryLabelColor];
  }

  else
  {
    if (style)
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

- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)style cellConfigurationState:(int64_t)state traitCollection:(id)collection floating:(id)floating
{
  v7 = a7;
  collectionCopy = collection;
  floatingCopy = floating;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var13.leading = 0u;
  retstr->var13.trailing = 0.0;
  [(UITableConstants_IOS *)self defaultCellCornerRadiusForTableViewStyle:state isSidebarStyle:0 isHeaderFooter:1 traitCollection:floatingCopy, __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault).n128_f64[0]];
  retstr->var12 = v13;
  if (state)
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
      v19 = [floatingCopy objectForTrait:var1];
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

  v15 = [collectionCopy isFocused] ^ 1;
  if (!state)
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

- (id)_accessoryTintColorForAccessoryBaseColor:(id)color
{
  if (color)
  {
    colorCopy = color;
  }

  else
  {
    colorCopy = [(UITableConstants_IOS *)self _defaultAccessoryTintColor];
  }

  return colorCopy;
}

- (id)_symbolImageNamed:(id)named withTextStyle:(id)style scale:(int64_t)scale
{
  namedCopy = named;
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:style scale:scale];
  v9 = [UIImage systemImageNamed:namedCopy withConfiguration:v8];

  return v9;
}

- (id)_defaultDisclosureImageForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  v7 = _MergedGlobals_1304;
  if (!_MergedGlobals_1304 || collectionCopy && (!qword_1ED4A0FC8 || *(collectionCopy + 13) != *(qword_1ED4A0FC8 + 104) || *(collectionCopy + 15) != *(qword_1ED4A0FC8 + 120)))
  {
    v8 = [(UITableConstants_IOS *)self _symbolImageNamed:@"chevron.forward" withTextStyle:@"UICTFontTextStyleEmphasizedBody" scale:1];
    v9 = _MergedGlobals_1304;
    _MergedGlobals_1304 = v8;

    objc_storeStrong(&qword_1ED4A0FC8, collection);
    v7 = _MergedGlobals_1304;
  }

  v10 = v7;

  return v7;
}

- (id)_defaultCircleDisclosureImageForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  v7 = qword_1ED4A0FD0;
  if (!qword_1ED4A0FD0 || collectionCopy && (!qword_1ED4A0FD8 || collectionCopy[13] != *(qword_1ED4A0FD8 + 104) || collectionCopy[15] != *(qword_1ED4A0FD8 + 120)))
  {
    preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
      {
        v11 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa);
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

    objc_storeStrong(&qword_1ED4A0FD8, collection);
    v7 = qword_1ED4A0FD0;
  }

  v14 = v7;

  return v7;
}

- (id)defaultDisclosureImageForCell:(id)cell withAccessoryBaseColor:(id)color
{
  colorCopy = color;
  traitCollection = [cell traitCollection];
  v8 = [(UITableConstants_IOS *)self _defaultDisclosureImageForTraitCollection:traitCollection];

  v9 = [(UITableConstants_IOS *)self _accessoryTintColorForAccessoryBaseColor:colorCopy];

  v10 = [v8 imageWithTintColor:v9 renderingMode:1];

  return v10;
}

- (id)defaultPopUpMenuIndicatorImageForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  v7 = qword_1ED4A0FE0;
  if (!qword_1ED4A0FE0 || collectionCopy && (!qword_1ED4A0FE8 || *(collectionCopy + 13) != *(qword_1ED4A0FE8 + 104) || *(collectionCopy + 15) != *(qword_1ED4A0FE8 + 120)))
  {
    v8 = [(UITableConstants_IOS *)self _symbolImageNamed:@"chevron.up.chevron.down" withTextStyle:@"UICTFontTextStyleEmphasizedBody" scale:1];
    v9 = qword_1ED4A0FE0;
    qword_1ED4A0FE0 = v8;

    objc_storeStrong(&qword_1ED4A0FE8, collection);
    v7 = qword_1ED4A0FE0;
  }

  v10 = v7;

  return v7;
}

- (id)defaultOutlineDisclosureImageForView:(id)view
{
  viewCopy = view;
  if (_AXSButtonShapesEnabled() || _AXSDifferentiateWithoutColorEnabled())
  {
    traitCollection = [viewCopy traitCollection];
    v6 = [(UITableConstants_IOS *)self _defaultCircleDisclosureImageForTraitCollection:traitCollection];
  }

  else
  {
    traitCollection = [viewCopy traitCollection];
    v6 = [(UITableConstants_IOS *)self _defaultDisclosureImageForTraitCollection:traitCollection];
  }

  v7 = v6;

  return v7;
}

- (id)defaultCheckmarkImageForCell:(id)cell
{
  traitCollection = [cell traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
    {
      v8 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa);
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

- (CGSize)defaultEditControlSizeForCell:(id)cell inTableView:(id)view
{
  view = [(UITableConstants_IOS *)self defaultDeleteImageForCell:cell, view];
  [view size];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)defaultDeleteMinusRectForCell:(id)cell inTableView:(id)view
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

- (id)defaultDeleteImageForCell:(id)cell
{
  v4 = [cell _editingControlTintColorForStyle:1];
  v5 = [(UITableConstants_IOS *)self defaultDeleteImageWithTintColor:v4 backgroundColor:0];

  return v5;
}

- (id)defaultDeleteImageWithTintColor:(id)color backgroundColor:(id)backgroundColor
{
  v15[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  if (colorCopy)
  {
    v7 = colorCopy;
    v8 = backgroundColorCopy;
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

- (id)defaultInsertImageForCell:(id)cell
{
  v4 = [cell _editingControlTintColorForStyle:2];
  v5 = [(UITableConstants_IOS *)self defaultInsertImageWithTintColor:v4 backgroundColor:0];

  return v5;
}

- (id)defaultInsertImageWithTintColor:(id)color backgroundColor:(id)backgroundColor
{
  v15[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  if (colorCopy)
  {
    v7 = colorCopy;
    v8 = backgroundColorCopy;
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

- (id)defaultMultiSelectNotSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection accessoryBaseColor:(id)color
{
  colorCopy = color;
  v7 = [UIImage systemImageNamed:@"circle"];
  v8 = [(UITableConstants_IOS *)self _accessoryTintColorForAccessoryBaseColor:colorCopy];

  v9 = [v7 imageWithTintColor:v8 renderingMode:1];

  return v9;
}

- (id)defaultMultiSelectSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection checkmarkColor:(id)color backgroundColor:(id)backgroundColor
{
  v22 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v11 = backgroundColorCopy;
  if (colorCopy)
  {
    if (backgroundColorCopy)
    {
      v20 = colorCopy;
      v21 = backgroundColorCopy;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v20;
      v14 = 2;
    }

    else
    {
      v19 = colorCopy;
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

- (CGSize)defaultReorderControlSizeForCell:(id)cell withAccessoryBaseColor:(id)color
{
  colorCopy = color;
  traitCollection = [cell traitCollection];
  v8 = [(UITableConstants_IOS *)self defaultReorderControlImageForTraitCollection:traitCollection withAccessoryBaseColor:colorCopy isTracking:0];

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

- (id)defaultReorderControlImageForTraitCollection:(id)collection withAccessoryBaseColor:(id)color isTracking:(BOOL)tracking
{
  collectionCopy = collection;
  colorCopy = color;
  v10 = qword_1ED4A0FF0;
  if (!qword_1ED4A0FF0 || collectionCopy && (!qword_1ED4A0FF8 || collectionCopy[13] != *(qword_1ED4A0FF8 + 104) || collectionCopy[15] != *(qword_1ED4A0FF8 + 120)))
  {
    preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
      {
        if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa) == NSOrderedAscending)
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

    objc_storeStrong(&qword_1ED4A0FF8, collection);
    v10 = qword_1ED4A0FF0;
  }

  v15 = v10;
  v16 = [(UITableConstants_IOS *)self _accessoryTintColorForAccessoryBaseColor:colorCopy];
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

- (id)defaultImageSymbolConfigurationForTraitCollection:(id)collection
{
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_11.isa) == NSOrderedAscending)
    {
      if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa) == NSOrderedAscending)
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

- (id)defaultImageTintColorForState:(id)state traitCollection:(id)collection
{
  stateCopy = state;
  v6 = _UITableUsesTintColorAsBackgroundColor(stateCopy, collection, 0, 0);
  v7 = stateCopy;
  if ([v7 isDisabled])
  {
    isSwiped = [v7 isSwiped];

    if ((isSwiped & 1) == 0)
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

- (id)defaultAccessoryTintColorForAccessorySystemType:(int64_t)type header:(BOOL)header sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection inheritedTintColor:(id)color
{
  headerCopy = header;
  stateCopy = state;
  collectionCopy = collection;
  colorCopy = color;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  _UITableConstantsGetBackgroundProperties(self, stateCopy, collectionCopy, headerCopy, style, v27);
  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(v25, v27);
  v18 = 0;
  if (v26 <= 0xC && ((1 << v26) & 0x1081) != 0)
  {
    v18 = (v25[0] & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  __destructor_8_s8_s16_s24_s80(v25);
  if (type > 5)
  {
    if (type <= 7)
    {
      if (type != 6)
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
      if (type == 8)
      {
        if (!v18)
        {
          v20 = +[UIColor separatorColor];
          goto LABEL_29;
        }

        v21 = 0.2;
        goto LABEL_28;
      }

      if (type != 9)
      {
        if (type != 10)
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

  if (type <= 1)
  {
    if (!type)
    {
      goto LABEL_26;
    }

    if (type == 1)
    {
      goto LABEL_24;
    }

LABEL_32:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITableConstants_IOS.m" lineNumber:1537 description:{@"Invalid _UICellAccessorySystemType value: %ld", type}];

    goto LABEL_33;
  }

  if ((type - 2) < 2)
  {
    goto LABEL_33;
  }

  if (type != 4)
  {
    if (type == 5)
    {
      if (v18)
      {
        v19 = colorCopy;
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

- (id)defaultAccessoryBackgroundColorForAccessorySystemType:(int64_t)type header:(BOOL)header sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection
{
  v10 = _UITableUsesTintColorAsBackgroundColor(state, collection, header, style);
  if (type > 0xA)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITableConstants_IOS.m" lineNumber:1567 description:{@"Invalid _UICellAccessorySystemType value: %ld", type}];

LABEL_3:
    v11 = 0;
    goto LABEL_4;
  }

  if (type != 5 || !v10)
  {
    goto LABEL_3;
  }

  v11 = +[UIColor whiteColor];
LABEL_4:

  return v11;
}

- (BOOL)shouldUseMonochromaticTreatmentForCellAccessorySystemType:(int64_t)type sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection
{
  stateCopy = state;
  v9 = +[_UITraitMonochromaticTreatment _sidebarListAccessoriesMonochromaticTreatment];
  v10 = 0;
  if ((style - 3) >= 0xFFFFFFFFFFFFFFFELL && v9)
  {
    isSelected = [stateCopy isSelected];
    v12 = 0x260u >> type;
    if (isSelected)
    {
      LOBYTE(v12) = 0;
    }

    if (type <= 9)
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