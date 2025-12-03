@interface UITableConstants_CarPlay
+ (id)sharedConstants;
- ($7FDC96647900ED4FDF8E2F8A586A6BB4)contentPropertiesForSidebarElementWithTraitCollection:(SEL)collection state:(id)state isHeader:(id)header cellStyle:(BOOL)style sidebarStyle:(int64_t)sidebarStyle;
- (BOOL)shouldUppercaseHeaderFooterTextForTableStyle:(int64_t)style isHeader:(BOOL)header;
- (CGRect)defaultDeleteMinusRectForCell:(id)cell inTableView:(id)view;
- (CGSize)defaultEditControlSizeForCell:(id)cell inTableView:(id)view;
- (CGSize)defaultReorderControlSizeForCell:(id)cell withAccessoryBaseColor:(id)color;
- (UIEdgeInsets)_defaultLayoutMargins;
- (UIEdgeInsets)defaultCellLayoutMarginsForTableStyle:(int64_t)style cellStyle:(int64_t)cellStyle isSidebarStyle:(BOOL)sidebarStyle textLabelFont:(id)font rawLayoutMargins:(UIEdgeInsets)margins;
- (UIEdgeInsets)defaultHeaderFooterLayoutMarginsForTableViewStyle:(int64_t)style isHeader:(BOOL)header isFirstSection:(BOOL)section;
- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)cell inTableView:(id)view;
- (UIEdgeInsets)headerFooterOffsetFromContentInsetForTableView:(id)view;
- (UIEdgeInsets)reorderControlHoverEffectInsets;
- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection;
- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)style cellConfigurationState:(int64_t)state traitCollection:(id)collection floating:(id)floating;
- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection;
- (_UITableConstantsBackgroundProperties)defaultSidebarHeaderBackgroundPropertiesWithState:(SEL)state traitCollection:(id)collection;
- (double)_defaultPlainHeaderFooterHeightForTableViewStyle:(int64_t)style;
- (double)defaultCellCornerRadiusForTableViewStyle:(int64_t)style isSidebarStyle:(BOOL)sidebarStyle isSwipedCell:(BOOL)cell isHeaderFooter:(BOOL)footer traitCollection:(id)collection;
- (double)defaultDetailTextLabelFontSizeForCellStyle:(int64_t)style;
- (double)defaultLeadingCellMarginWidthForTableView:(id)view;
- (double)defaultPlainFirstSectionHeaderHeightForTableView:(id)view;
- (double)defaultSectionFooterHeightForTableView:(id)view;
- (double)defaultSectionFooterHeightForTableViewStyle:(int64_t)style screen:(id)screen;
- (double)defaultTextLabelFontSizeForCellStyle:(int64_t)style;
- (double)interspaceBetweenInnerAccessoryIdentifier:(id)identifier outerAccessoryIdentifier:(id)accessoryIdentifier forCell:(id)cell trailingAccessoryGroup:(BOOL)group;
- (double)minimumContentViewHeightForFont:(id)font traitCollection:(id)collection isSidebarStyle:(BOOL)style;
- (id)_defaultAccessoryColorFocused:(BOOL)focused;
- (id)_imageWithName:(id)name accessoryBaseColor:(id)color;
- (id)defaultAccessoryTintColorForAccessorySystemType:(int64_t)type header:(BOOL)header sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection inheritedTintColor:(id)color;
- (id)defaultDeleteImageWithTintColor:(id)color backgroundColor:(id)backgroundColor;
- (id)defaultDetailTextColorForCellStyle:(int64_t)style traitCollection:(id)collection state:(id)state;
- (id)defaultDetailTextFontForCellStyle:(int64_t)style;
- (id)defaultFocusedDetailTextColorForCell:(id)cell inTableView:(id)view;
- (id)defaultFocusedDisclosureImageForCell:(id)cell inTableView:(id)view;
- (id)defaultFocusedTextColorForCell:(id)cell inTableView:(id)view;
- (id)defaultFooterFontForTableViewStyle:(int64_t)style;
- (id)defaultFooterTextColorForTableViewStyle:(int64_t)style focused:(BOOL)focused;
- (id)defaultHeaderFontForTableViewStyle:(int64_t)style;
- (id)defaultHeaderTextColorForTableViewStyle:(int64_t)style focused:(BOOL)focused;
- (id)defaultInsertImageWithTintColor:(id)color backgroundColor:(id)backgroundColor;
- (id)defaultMultiSelectNotSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection accessoryBaseColor:(id)color;
- (id)defaultMultiSelectSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection checkmarkColor:(id)color backgroundColor:(id)backgroundColor;
- (id)defaultReorderControlImageForTraitCollection:(id)collection withAccessoryBaseColor:(id)color isTracking:(BOOL)tracking;
- (id)defaultTextLabelFontForCellStyle:(int64_t)style;
@end

@implementation UITableConstants_CarPlay

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants;
  if (!sharedConstants___sharedConstants)
  {
    v4 = objc_alloc_init(self);
    v5 = sharedConstants___sharedConstants;
    sharedConstants___sharedConstants = v4;

    v3 = sharedConstants___sharedConstants;
  }

  return v3;
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
  [(UITableConstants_CarPlay *)self defaultCellCornerRadiusForTableViewStyle:state isSidebarStyle:0 isHeaderFooter:0 traitCollection:v10, __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault).n128_f64[0]];
  retstr->var12 = v11;
  if (([collectionCopy isFocused] & 1) != 0 || (objc_msgSend(collectionCopy, "isSelected") & 1) != 0 || objc_msgSend(collectionCopy, "isHighlighted"))
  {
    retstr->var0 = 1;
    goto LABEL_5;
  }

  if (state)
  {
    if (_UISolariumEnabled())
    {
      if ([v10 userInterfaceStyle] != 2)
      {
        v15 = [UIBlurEffect effectWithStyle:8];
        var2 = retstr->var2;
        retstr->var2 = v15;
        goto LABEL_18;
      }

      v13 = [UIColor colorWithWhite:1.0 alpha:0.15];
    }

    else
    {
      v13 = +[UIColor tableCellGroupedBackgroundColor];
    }
  }

  else
  {
    if (_UISolariumEnabled())
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor tableCellPlainBackgroundColor];
    }
    v13 = ;
  }

  var2 = retstr->var1;
  retstr->var1 = v13;
LABEL_18:

LABEL_5:

  return result;
}

- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection
{
  if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Calling a method on CarPlay that is not implemented for this platform. This is a UIKit bug.", buf, 2u);
    }
  }

  else
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &defaultSidebarCellBackgroundPropertiesForStyle_state_traitCollection____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Calling a method on CarPlay that is not implemented for this platform. This is a UIKit bug.", v10, 2u);
    }
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault);
  return result;
}

- (_UITableConstantsBackgroundProperties)defaultSidebarHeaderBackgroundPropertiesWithState:(SEL)state traitCollection:(id)collection
{
  if (os_variant_has_internal_diagnostics())
  {
    v8 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Calling a method on CarPlay that is not implemented for this platform. This is a UIKit bug.", buf, 2u);
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &defaultSidebarHeaderBackgroundPropertiesWithState_traitCollection____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Calling a method on CarPlay that is not implemented for this platform. This is a UIKit bug.", v9, 2u);
    }
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault);
  return result;
}

- (double)defaultSectionFooterHeightForTableViewStyle:(int64_t)style screen:(id)screen
{
  screenCopy = screen;
  if (!screenCopy)
  {
    screenCopy = [objc_opt_self() mainScreen];
    if (style)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(UITableConstants_CarPlay *)self _defaultPlainHeaderFooterHeightForTableViewStyle:0];
    v7 = v8;
    goto LABEL_6;
  }

  if (!style)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 17.5;
LABEL_6:
  [screenCopy scale];
  v10 = UIPixelBoundaryOffset(0, v7, v9);

  return v10;
}

- (double)defaultSectionFooterHeightForTableView:(id)view
{
  _tableStyle = [view _tableStyle];
  _scrollView = [view _scrollView];
  window = [_scrollView window];
  screen = [window screen];
  [(UITableConstants_CarPlay *)self defaultSectionHeaderHeightForTableViewStyle:_tableStyle screen:screen];
  v10 = v9;

  return v10;
}

- (double)minimumContentViewHeightForFont:(id)font traitCollection:(id)collection isSidebarStyle:(BOOL)style
{
  fontCopy = font;
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v8 = _UIContentSizeCategoryMin(preferredContentSizeCategory, @"UICTContentSizeCategoryXXXL");

  v9 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v8];
  v10 = [fontCopy _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v9];

  [fontCopy _bodyLeading];
  v12 = v11;

  v13 = v12 + v12;
  v14 = _UISolariumEnabled();
  v15 = fmax(v13, 44.0);
  if (v14)
  {
    v13 = v15;
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
    v8 = -[UITableConstants_CarPlay defaultTextLabelFontForCellStyle:](self, "defaultTextLabelFontForCellStyle:", [cell _cellStyle]);
  }

  _tableStyle = [view _tableStyle];
  _cellStyle = [cell _cellStyle];
  [cell _rawLayoutMargins];
  [(UITableConstants_CarPlay *)self defaultCellLayoutMarginsForTableStyle:_tableStyle cellStyle:_cellStyle isSidebarStyle:0 textLabelFont:v8 rawLayoutMargins:?];
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
  v10 = 6.0;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [fontCopy lineHeight];
    v10 = ceil(v11 * 0.5);
  }

  v12 = v10;
  v13 = left;
  v14 = v10;
  v15 = right;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (UIEdgeInsets)defaultHeaderFooterLayoutMarginsForTableViewStyle:(int64_t)style isHeader:(BOOL)header isFirstSection:(BOOL)section
{
  v5 = 8.0;
  if (!style)
  {
    v5 = 4.0;
  }

  v6 = 8.0;
  v7 = 8.0;
  v8 = v5;
  result.right = v7;
  result.bottom = v8;
  result.left = v6;
  result.top = v5;
  return result;
}

- (UIEdgeInsets)headerFooterOffsetFromContentInsetForTableView:(id)view
{
  v3 = 0.0;
  v4 = -1.0;
  v5 = 0.0;
  v6 = -1.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)defaultCellCornerRadiusForTableViewStyle:(int64_t)style isSidebarStyle:(BOOL)sidebarStyle isSwipedCell:(BOOL)cell isHeaderFooter:(BOOL)footer traitCollection:(id)collection
{
  collectionCopy = collection;
  v10 = 0.0;
  if (!footer)
  {
    v11 = _UISolariumEnabled();
    v12 = (style - 1) < 2 || style == 16;
    v13 = 14.0;
    if (v12)
    {
      v13 = 22.0;
    }

    if (v11)
    {
      v10 = v13;
    }
  }

  return v10;
}

- (double)interspaceBetweenInnerAccessoryIdentifier:(id)identifier outerAccessoryIdentifier:(id)accessoryIdentifier forCell:(id)cell trailingAccessoryGroup:(BOOL)group
{
  groupCopy = group;
  accessoryIdentifierCopy = accessoryIdentifier;
  cellCopy = cell;
  v12 = 0.0;
  if (([identifier isEqualToString:0x1EFB34170] & 1) == 0 && (objc_msgSend(accessoryIdentifierCopy, "isEqualToString:", 0x1EFB34170) & 1) == 0)
  {
    if (identifier)
    {
      v12 = 12.0;
      if (!accessoryIdentifierCopy)
      {
        [cellCopy _minimumCellAccessoryMargin];
        v14 = v13;
        [cellCopy directionalLayoutMargins];
        v12 = fmax(v14, v15);
      }
    }

    else if ((_UITableViewCellUsesLayoutMarginBasedContentPadding() & 1) == 0 && groupCopy)
    {
      [(UITableConstants_CarPlay *)self defaultContentAccessoryPadding];
      v12 = v16;
    }
  }

  return v12;
}

- (UIEdgeInsets)_defaultLayoutMargins
{
  if (_UISolariumEnabled())
  {
    v2 = 8.0;
  }

  else
  {
    v2 = 12.0;
  }

  if (_UISolariumEnabled())
  {
    v3 = 12.0;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = v2;
  result.right = v3;
  result.bottom = v5;
  result.left = v6;
  result.top = v4;
  return result;
}

- (double)defaultLeadingCellMarginWidthForTableView:(id)view
{
  if (_UISolariumEnabled())
  {
    v4 = 8.0;
  }

  else
  {
    v4 = 12.0;
  }

  _scrollView = [view _scrollView];
  [_scrollView directionalLayoutMargins];
  v7 = fmax(v4, v6);

  return v7;
}

- (double)_defaultPlainHeaderFooterHeightForTableViewStyle:(int64_t)style
{
  v3 = [(UITableConstants_CarPlay *)self defaultHeaderFontForTableViewStyle:style];
  [v3 _scaledValueForValue:28.0];
  v5 = v4;

  return v5;
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

- (double)defaultPlainFirstSectionHeaderHeightForTableView:(id)view
{
  _tableStyle = [view _tableStyle];

  [(UITableConstants_CarPlay *)self _defaultPlainHeaderFooterHeightForTableViewStyle:_tableStyle];
  return result;
}

- ($7FDC96647900ED4FDF8E2F8A586A6BB4)contentPropertiesForSidebarElementWithTraitCollection:(SEL)collection state:(id)state isHeader:(id)header cellStyle:(BOOL)style sidebarStyle:(int64_t)sidebarStyle
{
  stateCopy = state;
  headerCopy = header;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  retstr->var12 = 0;
  v13 = [(UITableConstants_CarPlay *)self defaultTextLabelFontForCellStyle:sidebarStyle, __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_t48w56(retstr, &_UITableConstantsContentPropertiesDefault).n128_f64[0]];
  var0 = retstr->var0;
  retstr->var0 = v13;

  v15 = [(UITableConstants_CarPlay *)self defaultDetailTextFontForCellStyle:sidebarStyle];
  var1 = retstr->var1;
  retstr->var1 = v15;

  v17 = +[UIColor labelColor];
  var2 = retstr->var2;
  retstr->var2 = v17;

  v19 = +[UIColor secondaryLabelColor];
  var3 = retstr->var3;
  retstr->var3 = v19;

  if ([headerCopy isHighlighted])
  {
    *&retstr->var7 = vdupq_n_s64(7uLL);
    retstr->var9 = 7;
  }

  return result;
}

- (id)defaultFocusedTextColorForCell:(id)cell inTableView:(id)view
{
  if (_UISolariumEnabled())
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor _carSystemFocusLabelColor];
  }
  v4 = ;

  return v4;
}

- (id)defaultTextLabelFontForCellStyle:(int64_t)style
{
  if (_UISolariumEnabled())
  {
    [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCallout" weight:*off_1E70ECD20];
  }

  else
  {
    [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCallout"];
  }
  v3 = ;

  return v3;
}

- (double)defaultTextLabelFontSizeForCellStyle:(int64_t)style
{
  if (style == 1)
  {
    return 17.0;
  }

  if (style == 2)
  {
    return 14.0;
  }

  v4 = _UISolariumEnabled();
  result = 18.0;
  if (v4)
  {
    return 16.0;
  }

  return result;
}

- (id)defaultDetailTextColorForCellStyle:(int64_t)style traitCollection:(id)collection state:(id)state
{
  if (_UISolariumEnabled())
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor _carSystemPrimaryColor];
  }
  v5 = ;

  return v5;
}

- (id)defaultFocusedDetailTextColorForCell:(id)cell inTableView:(id)view
{
  if (_UISolariumEnabled())
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor _carSystemFocusPrimaryColor];
  }
  v4 = ;

  return v4;
}

- (id)defaultDetailTextFontForCellStyle:(int64_t)style
{
  if (_UISolariumEnabled())
  {
    [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCaption1" weight:*off_1E70ECD28];
  }

  else
  {
    [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCallout"];
  }
  v3 = ;

  return v3;
}

- (double)defaultDetailTextLabelFontSizeForCellStyle:(int64_t)style
{
  if (style)
  {
    if (style == 1)
    {
      return 17.0;
    }

    if (style == 3)
    {
      return 12.0;
    }
  }

  else
  {
    v5 = 12.0;
    if (_UISolariumEnabled())
    {
      return v5;
    }
  }

  [(UITableConstants_CarPlay *)self defaultTextLabelFontSizeForCellStyle:style];
  return result;
}

- (id)defaultHeaderFontForTableViewStyle:(int64_t)style
{
  v3 = +[UIScreen _carScreen];
  traitCollection = [v3 traitCollection];
  v5 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedTitle3" compatibleWithTraitCollection:traitCollection];

  return v5;
}

- (id)defaultFooterFontForTableViewStyle:(int64_t)style
{
  if (style)
  {
    v3 = UIFontTextStyleShortFootnote;
  }

  else
  {
    v3 = UIFontTextStyleSubtitle2;
  }

  return [off_1E70ECC18 preferredFontForTextStyle:*v3];
}

- (id)defaultHeaderTextColorForTableViewStyle:(int64_t)style focused:(BOOL)focused
{
  if (style)
  {
    [UIColor _groupTableHeaderFooterTextColor:style];
  }

  else
  {
    [UIColor _plainTableHeaderFooterTextColor:0];
  }
  v4 = ;

  return v4;
}

- (id)defaultFooterTextColorForTableViewStyle:(int64_t)style focused:(BOOL)focused
{
  if (style)
  {
    [UIColor _groupTableHeaderFooterTextColor:style];
  }

  else
  {
    [UIColor _plainTableHeaderFooterTextColor:0];
  }
  v4 = ;

  return v4;
}

- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)style cellConfigurationState:(int64_t)state traitCollection:(id)collection floating:(id)floating
{
  if (a7)
  {
    [UIColor tablePlainHeaderFooterFloatingBackgroundColor:state];
  }

  else
  {
    [UIColor tablePlainHeaderFooterBackgroundColor:state];
  }
  result = ;
  retstr->var13.trailing = 0.0;
  *&retstr->var12 = 0u;
  *&retstr->var13.leading = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  retstr->var1 = result;
  return result;
}

- (id)_defaultAccessoryColorFocused:(BOOL)focused
{
  if (focused)
  {
    +[UIColor _carSystemFocusSecondaryColor];
  }

  else
  {
    +[UIColor _carSystemSecondaryColor];
  }
  v3 = ;

  return v3;
}

- (id)_imageWithName:(id)name accessoryBaseColor:(id)color
{
  colorCopy = color;
  nameCopy = name;
  v7 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleEmphasizedCallout" scale:1];
  v8 = [UIImage systemImageNamed:nameCopy withConfiguration:v7];

  if (colorCopy)
  {
    v9 = [v8 imageWithTintColor:colorCopy renderingMode:1];

    v8 = v9;
  }

  return v8;
}

- (id)defaultFocusedDisclosureImageForCell:(id)cell inTableView:(id)view
{
  _accessoryBaseColor = [view _accessoryBaseColor];
  v6 = [(UITableConstants_CarPlay *)self _imageWithName:@"chevron.forward" accessoryBaseColor:_accessoryBaseColor];

  return v6;
}

- (CGSize)defaultEditControlSizeForCell:(id)cell inTableView:(id)view
{
  view = [(UITableConstants_CarPlay *)self defaultDeleteImageForCell:cell, view];
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

- (id)defaultDeleteImageWithTintColor:(id)color backgroundColor:(id)backgroundColor
{
  v4 = [UIImageSymbolConfiguration configurationPreferringMulticolor:color];
  v5 = [UIImage systemImageNamed:@"minus.circle.fill" withConfiguration:v4];

  return v5;
}

- (id)defaultInsertImageWithTintColor:(id)color backgroundColor:(id)backgroundColor
{
  v4 = [UIImageSymbolConfiguration configurationPreferringMulticolor:color];
  v5 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v4];

  return v5;
}

- (id)defaultMultiSelectNotSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection accessoryBaseColor:(id)color
{
  colorCopy = color;
  v8 = [(UITableConstants_CarPlay *)self defaultTextLabelFontForCellStyle:style];
  v9 = [UIImageSymbolConfiguration configurationWithFont:v8 scale:3];
  v10 = [UIImage systemImageNamed:@"circle" withConfiguration:v9];
  if (colorCopy)
  {
    v11 = colorCopy;
  }

  else
  {
    v11 = [UIColor colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  }

  v12 = v11;
  v13 = [v10 imageWithTintColor:v11 renderingMode:1];

  return v13;
}

- (id)defaultMultiSelectSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection checkmarkColor:(id)color backgroundColor:(id)backgroundColor
{
  colorCopy = color;
  v9 = [(UITableConstants_CarPlay *)self defaultTextLabelFontForCellStyle:style];
  v10 = [UIImageSymbolConfiguration configurationWithFont:v9 scale:3];
  v11 = +[UIImage checkmarkImage];
  v12 = [v11 imageWithConfiguration:v10];

  if (colorCopy)
  {
    v13 = [v12 imageWithTintColor:colorCopy renderingMode:1];

    v12 = v13;
  }

  return v12;
}

- (CGSize)defaultReorderControlSizeForCell:(id)cell withAccessoryBaseColor:(id)color
{
  traitCollection = [cell traitCollection];
  v6 = [(UITableConstants_CarPlay *)self defaultReorderControlImageForTraitCollection:traitCollection withAccessoryBaseColor:0 isTracking:0];
  [v6 size];
  v8 = v7;
  v10 = v9;

  v11 = v8 + 30.0;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)defaultReorderControlImageForTraitCollection:(id)collection withAccessoryBaseColor:(id)color isTracking:(BOOL)tracking
{
  collectionCopy = collection;
  colorCopy = color;
  if (colorCopy)
  {
    v8 = _UIImageWithName(@"UITableGrabber.png");
    [v8 size];
    v9 = [UIImage _tintedImageForSize:colorCopy withTint:0 effectsImage:v8 maskImage:0 style:?];
  }

  else
  {
    v10 = defaultReorderControlImageForTraitCollection_withAccessoryBaseColor_isTracking____grabberImage;
    if (!defaultReorderControlImageForTraitCollection_withAccessoryBaseColor_isTracking____grabberImage)
    {
      v11 = _UIImageWithName(@"UITableGrabber.png");
      [v11 size];
      v13 = v12;
      v15 = v14;
      v16 = [UIColor colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
      v17 = [UIImage _tintedImageForSize:v16 withTint:0 effectsImage:v11 maskImage:0 style:v13, v15];
      v18 = defaultReorderControlImageForTraitCollection_withAccessoryBaseColor_isTracking____grabberImage;
      defaultReorderControlImageForTraitCollection_withAccessoryBaseColor_isTracking____grabberImage = v17;

      v10 = defaultReorderControlImageForTraitCollection_withAccessoryBaseColor_isTracking____grabberImage;
    }

    v9 = v10;
  }

  return v9;
}

- (id)defaultAccessoryTintColorForAccessorySystemType:(int64_t)type header:(BOOL)header sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection inheritedTintColor:(id)color
{
  stateCopy = state;
  collectionCopy = collection;
  colorCopy = color;
  v16 = 0;
  if (type <= 5)
  {
    if ((type - 1) < 5)
    {
      goto LABEL_16;
    }

    if (type)
    {
LABEL_10:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITableConstants_CarPlay.m" lineNumber:727 description:{@"Invalid _UICellAccessorySystemType value: %ld", type}];

LABEL_13:
      v16 = 0;
      goto LABEL_16;
    }

LABEL_11:
    if (!_UISolariumEnabled())
    {
      goto LABEL_13;
    }

    v17 = +[UIColor tertiaryLabelColor];
    goto LABEL_15;
  }

  if (type <= 7)
  {
    if (type != 6)
    {
      v17 = +[UIColor secondaryLabelColor];
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (type != 8)
  {
    if (type == 9)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v17 = +[UIColor separatorColor];
LABEL_15:
  v16 = v17;
LABEL_16:

  return v16;
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

@end