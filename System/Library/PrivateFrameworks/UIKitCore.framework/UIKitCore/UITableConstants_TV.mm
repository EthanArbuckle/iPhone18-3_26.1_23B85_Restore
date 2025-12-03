@interface UITableConstants_TV
+ (id)sharedConstants;
- ($7FDC96647900ED4FDF8E2F8A586A6BB4)contentPropertiesForSidebarElementWithTraitCollection:(SEL)collection state:(id)state isHeader:(id)header cellStyle:(BOOL)style sidebarStyle:(int64_t)sidebarStyle;
- (CGRect)defaultDeleteMinusRectForCell:(id)cell inTableView:(id)view;
- (CGSize)defaultEditControlSizeForCell:(id)cell inTableView:(id)view;
- (CGSize)defaultReorderControlSizeForCell:(id)cell withAccessoryBaseColor:(id)color;
- (UIEdgeInsets)_defaultLayoutMargins;
- (UIEdgeInsets)defaultCellLayoutMarginsForTableStyle:(int64_t)style cellStyle:(int64_t)cellStyle isSidebarStyle:(BOOL)sidebarStyle textLabelFont:(id)font rawLayoutMargins:(UIEdgeInsets)margins;
- (UIEdgeInsets)defaultHeaderFooterLayoutMarginsForTableViewStyle:(int64_t)style isHeader:(BOOL)header isFirstSection:(BOOL)section;
- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)cell inTableView:(id)view;
- (UIEdgeInsets)reorderControlHoverEffectInsets;
- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection;
- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)style cellConfigurationState:(int64_t)state traitCollection:(id)collection floating:(id)floating;
- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)style state:(int64_t)state traitCollection:(id)collection;
- (_UITableConstantsBackgroundProperties)defaultSidebarHeaderBackgroundPropertiesWithState:(SEL)state traitCollection:(id)collection;
- (double)_symbolImageLayoutSizeForTraitCollection:(id)collection;
- (double)defaultCellCornerRadiusForTableViewStyle:(int64_t)style isSidebarStyle:(BOOL)sidebarStyle isSwipedCell:(BOOL)cell isHeaderFooter:(BOOL)footer traitCollection:(id)collection;
- (double)defaultDetailTextLabelFontSizeForCellStyle:(int64_t)style;
- (double)defaultFocusedShadowRadiusForTableView:(id)view;
- (double)defaultLeadingCellMarginWidthForTableView:(id)view;
- (double)defaultPlainHeaderLabelYPositionForTableView:(id)view headerBounds:(CGRect)bounds textRect:(CGRect)rect isHeader:(BOOL)header;
- (double)defaultRowHeightForTableView:(id)view cellStyle:(int64_t)style;
- (double)defaultSectionFooterHeightForTableView:(id)view;
- (double)defaultSectionFooterHeightForTableViewStyle:(int64_t)style screen:(id)screen;
- (double)defaultSectionHeaderHeightForTableView:(id)view;
- (double)defaultSectionHeaderHeightForTableViewStyle:(int64_t)style screen:(id)screen;
- (double)defaultTextLabelFontSizeForCellStyle:(int64_t)style;
- (double)interspaceBetweenInnerAccessoryIdentifier:(id)identifier outerAccessoryIdentifier:(id)accessoryIdentifier forCell:(id)cell trailingAccessoryGroup:(BOOL)group;
- (id)_defaultCheckmarkImageForCell:(id)cell forUserInterfaceStyle:(int64_t)style;
- (id)_defaultDisclosureImageForCell:(id)cell;
- (id)_defaultInsertImageForUserInterfaceStyle:(int64_t)style;
- (id)_defaultMultiSelectNotSelectedImageForUserInterfaceStyle:(int64_t)style;
- (id)_defaultMultiSelectSelectedImageForUserInterfaceStyle:(int64_t)style;
- (id)_defaultReorderControlImageForUserInterfaceStyle:(int64_t)style;
- (id)_kitImageNamed:(id)named withTint:(id)tint flippedForRightToLeftLayoutDirection:(BOOL)direction;
- (id)_symbolImageNamed:(id)named font:(id)font cell:(id)cell;
- (id)defaultAccessoryTintColorForAccessorySystemType:(int64_t)type header:(BOOL)header sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection inheritedTintColor:(id)color;
- (id)defaultCheckmarkImageForCell:(id)cell;
- (id)defaultDeleteImageForCell:(id)cell;
- (id)defaultDeleteImageForUserInterfaceStyle:(int64_t)style;
- (id)defaultDeleteImageWithTintColor:(id)color backgroundColor:(id)backgroundColor;
- (id)defaultDetailTextColorForCellStyle:(int64_t)style traitCollection:(id)collection state:(id)state;
- (id)defaultDetailTextColorForUserInterfaceStyle:(int64_t)style;
- (id)defaultDetailTextFontForCellStyle:(int64_t)style;
- (id)defaultDisclosureImageForCell:(id)cell withAccessoryBaseColor:(id)color;
- (id)defaultFocusedDetailTextColorForCell:(id)cell inTableView:(id)view;
- (id)defaultFocusedDisclosureImageForCell:(id)cell inTableView:(id)view;
- (id)defaultFocusedTextColorForCell:(id)cell inTableView:(id)view;
- (id)defaultHeaderTextColorForTableViewStyle:(int64_t)style focused:(BOOL)focused;
- (id)defaultImageSymbolConfigurationForTraitCollection:(id)collection;
- (id)defaultImageTintColorForState:(id)state traitCollection:(id)collection;
- (id)defaultInsertImageForCell:(id)cell;
- (id)defaultInsertImageWithTintColor:(id)color backgroundColor:(id)backgroundColor;
- (id)defaultMultiSelectNotSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection accessoryBaseColor:(id)color;
- (id)defaultMultiSelectSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection checkmarkColor:(id)color backgroundColor:(id)backgroundColor;
- (id)defaultReorderControlImageForTraitCollection:(id)collection withAccessoryBaseColor:(id)color isTracking:(BOOL)tracking;
- (id)defaultSidebarDetailTextLabelFontForCellStyle:(int64_t)style;
- (id)defaultTextColorForCellStyle:(int64_t)style traitCollection:(id)collection tintColor:(id)color state:(id)state;
- (id)defaultTextColorForUserInterfaceStyle:(int64_t)style;
- (id)defaultTextLabelFontForCellStyle:(int64_t)style;
@end

@implementation UITableConstants_TV

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants_2;
  if (!sharedConstants___sharedConstants_2)
  {
    v4 = objc_alloc_init(self);
    v5 = sharedConstants___sharedConstants_2;
    sharedConstants___sharedConstants_2 = v4;

    v3 = sharedConstants___sharedConstants_2;
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
  [(UITableConstants_TV *)self defaultCellCornerRadiusForTableViewStyle:state isSidebarStyle:0 isHeaderFooter:0 traitCollection:v10, __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault).n128_f64[0]];
  retstr->var12 = v11;
  if (state)
  {
    if ([collectionCopy isHighlighted])
    {
      v12 = +[UIColor tableCellHighlightedBackgroundColor];
    }

    else if ([collectionCopy isFocused])
    {
      v12 = +[UIColor tableCellFocusedBackgroundColor];
    }

    else if ([collectionCopy isSelected])
    {
      v12 = +[UIColor tableCellGroupedSelectedBackgroundColor];
    }

    else
    {
      if ([collectionCopy isDisabled])
      {
        +[UIColor tableCellDisabledBackgroundColor];
      }

      else
      {
        +[UIColor tableCellGroupedBackgroundColor];
      }
      v12 = ;
    }

    var1 = retstr->var1;
    retstr->var1 = v12;

    isFocused = [collectionCopy isFocused];
  }

  else
  {
    if ([collectionCopy isHighlighted])
    {
      v13 = +[UIColor tableCellHighlightedBackgroundColor];
    }

    else if ([collectionCopy isFocused])
    {
      v13 = +[UIColor tableCellFocusedBackgroundColor];
    }

    else if ([collectionCopy isSelected])
    {
      v13 = +[UIColor tableCellPlainSelectedBackgroundColor];
    }

    else
    {
      v13 = 0;
    }

    v14 = retstr->var1;
    retstr->var1 = v13;

    if (![collectionCopy isSelected])
    {
      goto LABEL_24;
    }

    isFocused = [collectionCopy isFocused];
  }

  if ((isFocused & 1) == 0)
  {
    retstr->var5 = 3;
  }

LABEL_24:

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
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Calling a method on tvOS that is not implemented for this platform. This is a UIKit bug.", buf, 2u);
    }
  }

  else
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &defaultSidebarCellBackgroundPropertiesForStyle_state_traitCollection____s_category_0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Calling a method on tvOS that is not implemented for this platform. This is a UIKit bug.", v10, 2u);
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
      _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Calling a method on tvOS that is not implemented for this platform. This is a UIKit bug.", buf, 2u);
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &defaultSidebarHeaderBackgroundPropertiesWithState_traitCollection____s_category_0) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Calling a method on tvOS that is not implemented for this platform. This is a UIKit bug.", v9, 2u);
    }
  }

  __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault);
  return result;
}

- (double)defaultRowHeightForTableView:(id)view cellStyle:(int64_t)style
{
  result = 66.0;
  if (style == 3)
  {
    return 120.0;
  }

  return result;
}

- (double)defaultSectionHeaderHeightForTableViewStyle:(int64_t)style screen:(id)screen
{
  screenCopy = screen;
  if (!screenCopy)
  {
    screenCopy = [objc_opt_self() mainScreen];
  }

  v6 = dbl_18A682A00[style == 0];
  [screenCopy scale];
  v8 = UIPixelBoundaryOffset(1, v6, v7);

  return v8;
}

- (double)defaultSectionFooterHeightForTableViewStyle:(int64_t)style screen:(id)screen
{
  screenCopy = screen;
  if (!screenCopy)
  {
    screenCopy = [objc_opt_self() mainScreen];
  }

  v7 = dbl_18A682A00[style == 0];
  v8 = dyld_program_sdk_at_least();
  if (!style && v8)
  {
    v9 = [(UITableConstants_TV *)self defaultFooterFontForTableViewStyle:0];
    [v9 pointSize];
    v7 = v10;
  }

  [screenCopy scale];
  v12 = UIPixelBoundaryOffset(0, v7, v11);

  return v12;
}

- (double)defaultSectionHeaderHeightForTableView:(id)view
{
  _tableStyle = [view _tableStyle];
  _scrollView = [view _scrollView];
  window = [_scrollView window];
  screen = [window screen];
  [(UITableConstants_TV *)self defaultSectionHeaderHeightForTableViewStyle:_tableStyle screen:screen];
  v10 = v9;

  return v10;
}

- (double)defaultSectionFooterHeightForTableView:(id)view
{
  _tableStyle = [view _tableStyle];
  _scrollView = [view _scrollView];
  window = [_scrollView window];
  screen = [window screen];
  [(UITableConstants_TV *)self defaultSectionHeaderHeightForTableViewStyle:_tableStyle screen:screen];
  v10 = v9;

  return v10;
}

- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)cell inTableView:(id)view
{
  _tableStyle = [view _tableStyle];
  _cellStyle = [cell _cellStyle];
  v9 = -[UITableConstants_TV defaultTextLabelFontForCellStyle:](self, "defaultTextLabelFontForCellStyle:", [cell _cellStyle]);
  [cell _rawLayoutMargins];
  [(UITableConstants_TV *)self defaultCellLayoutMarginsForTableStyle:_tableStyle cellStyle:_cellStyle isSidebarStyle:0 textLabelFont:v9 rawLayoutMargins:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewCopy = view;
    [(UITableConstants_TV *)self _defaultLayoutMargins];
    v20 = v19;
    if (dyld_program_sdk_at_least())
    {
      [viewCopy _tableStyle];
    }

    v11 = UIEdgeInsetsMax(15, v11, v13, v15, v17, v20);
    v13 = v21;
    v15 = v22;
    v17 = v23;
  }

  v24 = v11;
  v25 = v13;
  v26 = v15;
  v27 = v17;
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

- (UIEdgeInsets)defaultCellLayoutMarginsForTableStyle:(int64_t)style cellStyle:(int64_t)cellStyle isSidebarStyle:(BOOL)sidebarStyle textLabelFont:(id)font rawLayoutMargins:(UIEdgeInsets)margins
{
  [(UITableConstants_TV *)self _defaultNeighborPadding:style];
  v8 = v7;
  v9 = 10.0;
  v10 = 10.0;
  v11 = v8;
  result.right = v11;
  result.bottom = v10;
  result.left = v8;
  result.top = v9;
  return result;
}

- (UIEdgeInsets)defaultHeaderFooterLayoutMarginsForTableViewStyle:(int64_t)style isHeader:(BOOL)header isFirstSection:(BOOL)section
{
  [(UITableConstants_TV *)self _defaultNeighborPadding:style];
  v7 = v6;
  [(UITableConstants_TV *)self _defaultNeighborPadding];
  v9 = v8;
  v10 = 15.0;
  v11 = 15.0;
  v12 = v7;
  result.right = v9;
  result.bottom = v11;
  result.left = v12;
  result.top = v10;
  return result;
}

- (double)_symbolImageLayoutSizeForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = +[UIFontMetrics defaultMetrics];
  [v4 scaledValueForValue:collectionCopy compatibleWithTraitCollection:35.0];
  v6 = v5;

  return v6;
}

- (double)defaultCellCornerRadiusForTableViewStyle:(int64_t)style isSidebarStyle:(BOOL)sidebarStyle isSwipedCell:(BOOL)cell isHeaderFooter:(BOOL)footer traitCollection:(id)collection
{
  v7 = _UISolariumEnabled();
  result = 33.0;
  if (!v7)
  {
    return 4.5;
  }

  return result;
}

- (double)interspaceBetweenInnerAccessoryIdentifier:(id)identifier outerAccessoryIdentifier:(id)accessoryIdentifier forCell:(id)cell trailingAccessoryGroup:(BOOL)group
{
  groupCopy = group;
  identifierCopy = identifier;
  accessoryIdentifierCopy = accessoryIdentifier;
  cellCopy = cell;
  if (identifierCopy)
  {
    v13 = 12.0;
    if (!accessoryIdentifierCopy)
    {
      if (qword_1ED4A1038 != -1)
      {
        dispatch_once(&qword_1ED4A1038, &__block_literal_global_569);
      }

      v13 = 0.0;
      if (([_MergedGlobals_1307 containsObject:identifierCopy] & 1) == 0)
      {
        [cellCopy _minimumCellAccessoryMargin];
        v15 = v14;
        [cellCopy directionalLayoutMargins];
        v13 = fmax(v15, v16);
      }
    }
  }

  else
  {
    v13 = 0.0;
    if ((_UITableViewCellUsesLayoutMarginBasedContentPadding() & 1) == 0 && groupCopy)
    {
      [(UITableConstants_TV *)self defaultContentAccessoryPadding];
      v13 = v17;
    }
  }

  return v13;
}

- (UIEdgeInsets)_defaultLayoutMargins
{
  v2 = 0.0;
  v3 = 20.0;
  v4 = 0.0;
  v5 = 20.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)defaultLeadingCellMarginWidthForTableView:(id)view
{
  if ([view _sectionContentInsetFollowsLayoutMargins])
  {
    return 20.0;
  }

  _scrollView = [view _scrollView];
  [_scrollView directionalLayoutMargins];
  v7 = v6;

  return fmax(v7, 20.0);
}

- (double)defaultPlainHeaderLabelYPositionForTableView:(id)view headerBounds:(CGRect)bounds textRect:(CGRect)rect isHeader:(BOOL)header
{
  v6 = bounds.size.height - rect.size.height;
  if (header)
  {
    if (v6 >= bounds.origin.y)
    {
      y = bounds.origin.y;
    }

    else
    {
      y = bounds.size.height - rect.size.height;
    }

    v8 = -[UITableConstants_TV defaultHeaderFontForTableViewStyle:](self, "defaultHeaderFontForTableViewStyle:", [view _tableStyle]);
    [v8 descender];
    v10 = floor(v9);

    if (v6 - (v10 + 22.0) >= y)
    {
      return v6 - (v10 + 22.0);
    }

    else
    {
      return y;
    }
  }

  return v6;
}

- (id)defaultTextColorForUserInterfaceStyle:(int64_t)style
{
  if (style == 1000 || style == 2)
  {
    v3 = +[UIColor whiteColor];
  }

  else
  {
    v3 = +[UIColor blackColor];
  }

  return v3;
}

- (id)defaultTextColorForCellStyle:(int64_t)style traitCollection:(id)collection tintColor:(id)color state:(id)state
{
  collectionCopy = collection;
  if ([state isFocused])
  {
    userInterfaceStyle = 1;
  }

  else
  {
    userInterfaceStyle = [collectionCopy userInterfaceStyle];
  }

  v10 = [(UITableConstants_TV *)self defaultTextColorForUserInterfaceStyle:userInterfaceStyle];

  return v10;
}

- ($7FDC96647900ED4FDF8E2F8A586A6BB4)contentPropertiesForSidebarElementWithTraitCollection:(SEL)collection state:(id)state isHeader:(id)header cellStyle:(BOOL)style sidebarStyle:(int64_t)sidebarStyle
{
  styleCopy = style;
  stateCopy = state;
  headerCopy = header;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  retstr->var12 = 0;
  *&v15 = __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_t48w56(retstr, &_UITableConstantsContentPropertiesDefault).n128_u64[0];
  if (styleCopy)
  {
    [(UITableConstants_TV *)self defaultSidebarHeaderFont];
  }

  else
  {
    [(UITableConstants_TV *)self defaultTextLabelFontForCellStyle:0, v15];
  }
  v16 = ;
  var0 = retstr->var0;
  retstr->var0 = v16;

  v18 = [(UITableConstants_TV *)self defaultSidebarDetailTextLabelFontForCellStyle:sidebarStyle];
  var1 = retstr->var1;
  retstr->var1 = v18;

  v20 = [(UITableConstants_TV *)self defaultSidebarTextColorForTraitCollection:stateCopy state:headerCopy isHeader:0 isSecondaryText:0 style:a8];
  var2 = retstr->var2;
  retstr->var2 = v20;

  v22 = [(UITableConstants_TV *)self defaultSidebarTextColorForTraitCollection:stateCopy state:headerCopy isHeader:styleCopy isSecondaryText:1 style:a8];
  var3 = retstr->var3;
  retstr->var3 = v22;

  v24 = [(UITableConstants_TV *)self defaultSidebarImageTintColorForTraitCollection:stateCopy state:headerCopy isHeader:styleCopy style:a8];
  var4 = retstr->var4;
  retstr->var4 = v24;

  v26 = [(UITableConstants_TV *)self defaultImageSymbolConfigurationForTraitCollection:stateCopy];
  var5 = retstr->var5;
  retstr->var5 = v26;

  if ([headerCopy isHighlighted])
  {
    *&retstr->var7 = vdupq_n_s64(7uLL);
    retstr->var9 = 7;
  }

  return result;
}

- (id)defaultSidebarDetailTextLabelFontForCellStyle:(int64_t)style
{
  if (style == 1)
  {
    [(UITableConstants_TV *)self defaultDetailTextFontForCellStyle:?];
  }

  else
  {
    [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
  }
  v3 = ;

  return v3;
}

- (id)defaultFocusedTextColorForCell:(id)cell inTableView:(id)view
{
  cellCopy = cell;
  _cellStyle = [cellCopy _cellStyle];
  traitCollection = [cellCopy traitCollection];
  tintColor = [cellCopy tintColor];

  v9 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:?];
  v10 = [(UITableConstants_TV *)self defaultTextColorForCellStyle:_cellStyle traitCollection:traitCollection tintColor:tintColor state:v9];

  return v10;
}

- (id)defaultTextLabelFontForCellStyle:(int64_t)style
{
  v3 = &UIFontTextStyleHeadline;
  if (style == 1000)
  {
    v3 = &UIFontTextStyleBody;
  }

  v4 = [off_1E70ECC18 preferredFontForTextStyle:*v3];

  return v4;
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

- (id)defaultDetailTextColorForUserInterfaceStyle:(int64_t)style
{
  if (style == 1000 || style == 2)
  {
    v3 = +[UIColor _tvInterfaceStyleDarkContentColor];
  }

  else
  {
    v3 = +[UIColor _tvInterfaceStyleLightContentColor];
  }

  return v3;
}

- (id)defaultDetailTextColorForCellStyle:(int64_t)style traitCollection:(id)collection state:(id)state
{
  collectionCopy = collection;
  if ([state isFocused])
  {
    userInterfaceStyle = 1;
  }

  else
  {
    userInterfaceStyle = [collectionCopy userInterfaceStyle];
  }

  v9 = [(UITableConstants_TV *)self defaultDetailTextColorForUserInterfaceStyle:userInterfaceStyle];

  return v9;
}

- (id)defaultFocusedDetailTextColorForCell:(id)cell inTableView:(id)view
{
  cellCopy = cell;
  _cellStyle = [cellCopy _cellStyle];
  traitCollection = [cellCopy traitCollection];

  v8 = [UICellConfigurationState _readonlyCellStateFromViewConfigurationState:?];
  v9 = [(UITableConstants_TV *)self defaultDetailTextColorForCellStyle:_cellStyle traitCollection:traitCollection state:v8];

  return v9;
}

- (id)defaultDetailTextFontForCellStyle:(int64_t)style
{
  if ((style - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [off_1E70ECC18 preferredFontForTextStyle:{*off_1E71232B8[style - 1], v3}];
  }

  return v5;
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

  [(UITableConstants_TV *)self defaultTextLabelFontSizeForCellStyle:?];
  return result;
}

- (id)defaultHeaderTextColorForTableViewStyle:(int64_t)style focused:(BOOL)focused
{
  if (focused)
  {
    +[UIColor _tvInterfaceStyleLightContentColor];
  }

  else
  {
    +[UIColor tertiaryLabelColor];
  }
  v4 = ;

  return v4;
}

- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)style cellConfigurationState:(int64_t)state traitCollection:(id)collection floating:(id)floating
{
  retstr->var13.trailing = 0.0;
  *&retstr->var12 = 0u;
  *&retstr->var13.leading = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  return self;
}

- (id)_kitImageNamed:(id)named withTint:(id)tint flippedForRightToLeftLayoutDirection:(BOOL)direction
{
  directionCopy = direction;
  tintCopy = tint;
  namedCopy = named;
  mainScreen = [objc_opt_self() mainScreen];
  traitCollection = [mainScreen traitCollection];
  v11 = [UIImage _kitImageNamed:namedCopy withTrait:traitCollection];

  [v11 size];
  v12 = [UIImage _tintedImageForSize:tintCopy withTint:0 effectsImage:v11 maskImage:0 style:?];

  if (directionCopy)
  {
    imageFlippedForRightToLeftLayoutDirection = [v12 imageFlippedForRightToLeftLayoutDirection];

    v12 = imageFlippedForRightToLeftLayoutDirection;
  }

  return v12;
}

- (id)_symbolImageNamed:(id)named font:(id)font cell:(id)cell
{
  namedCopy = named;
  v7 = [UIImageSymbolConfiguration configurationWithFont:font];
  v8 = [UIImage systemImageNamed:namedCopy withConfiguration:v7];

  return v8;
}

- (id)_defaultDisclosureImageForCell:(id)cell
{
  v5 = -[UITableConstants_TV defaultTextLabelFontForCellStyle:](self, "defaultTextLabelFontForCellStyle:", [cell _cellStyle]);
  v6 = [v5 isEqual:qword_1ED4A1048];
  v7 = qword_1ED4A1040;
  if (v6)
  {
    v8 = qword_1ED4A1040 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = [(UITableConstants_TV *)self _symbolImageNamed:@"chevron.forward" font:v5 cell:cell];
    v10 = qword_1ED4A1040;
    qword_1ED4A1040 = v9;

    objc_storeStrong(&qword_1ED4A1048, v5);
    v7 = qword_1ED4A1040;
  }

  v11 = v7;

  return v7;
}

- (id)defaultDisclosureImageForCell:(id)cell withAccessoryBaseColor:(id)color
{
  colorCopy = color;
  traitCollection = [cell traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v9 = [(UITableConstants_TV *)self _defaultDisclosureImageForCell:cell];
  v10 = colorCopy;
  v11 = v10;
  if (!v10)
  {
    if (userInterfaceStyle == 1000 || userInterfaceStyle == 2)
    {
      v12 = +[UIColor _tvInterfaceStyleDarkContentColor];
    }

    else
    {
      v12 = +[UIColor _tvInterfaceStyleLightContentColor];
    }

    v11 = v12;
  }

  v13 = [v9 imageWithTintColor:v11 renderingMode:1];

  return v13;
}

- (id)defaultFocusedDisclosureImageForCell:(id)cell inTableView:(id)view
{
  view = [(UITableConstants_TV *)self _defaultDisclosureImageForCell:cell, view];
  v5 = +[UIColor _tvInterfaceStyleLightContentColor];
  v6 = [view imageWithTintColor:v5 renderingMode:1];

  return v6;
}

- (id)_defaultCheckmarkImageForCell:(id)cell forUserInterfaceStyle:(int64_t)style
{
  v7 = -[UITableConstants_TV defaultTextLabelFontForCellStyle:](self, "defaultTextLabelFontForCellStyle:", [cell _cellStyle]);
  v8 = v7;
  if (style == 1000 || style == 2)
  {
    v9 = &qword_1ED4A1060;
    v10 = [v7 isEqual:qword_1ED4A1068];
    v11 = qword_1ED4A1060;
    if (v10)
    {
      v12 = qword_1ED4A1060 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = +[UIColor _tvInterfaceStyleDarkContentColor];
LABEL_15:
    v16 = v13;
    v17 = [(UITableConstants_TV *)self _symbolImageNamed:@"checkmark" font:v8 cell:cell];
    v18 = [v17 imageWithTintColor:v16 renderingMode:1];
    v19 = *v9;
    *v9 = v18;

    objc_storeStrong(v9 + 1, v8);
    v11 = *v9;
    goto LABEL_16;
  }

  v9 = &qword_1ED4A1050;
  v14 = [v7 isEqual:qword_1ED4A1058];
  v11 = qword_1ED4A1050;
  if (v14)
  {
    v15 = qword_1ED4A1050 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v13 = +[UIColor _tvInterfaceStyleLightContentColor];
    goto LABEL_15;
  }

LABEL_16:
  v20 = v11;

  return v11;
}

- (id)defaultCheckmarkImageForCell:(id)cell
{
  traitCollection = [cell traitCollection];
  v6 = -[UITableConstants_TV _defaultCheckmarkImageForCell:forUserInterfaceStyle:](self, "_defaultCheckmarkImageForCell:forUserInterfaceStyle:", cell, [traitCollection userInterfaceStyle]);

  return v6;
}

- (CGSize)defaultEditControlSizeForCell:(id)cell inTableView:(id)view
{
  v4 = 105.0;
  v5 = 70.0;
  result.height = v5;
  result.width = v4;
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

- (id)defaultDeleteImageForUserInterfaceStyle:(int64_t)style
{
  v4 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
  v5 = [UIImage systemImageNamed:@"trash" withConfiguration:v4];
  v6 = v5;
  if (style == 1000 || style == 2)
  {
    v7 = +[UIColor whiteColor];
    v8 = [v6 imageWithTintColor:v7 renderingMode:1];
  }

  else
  {
    v9 = defaultDeleteImageForUserInterfaceStyle____deleteImage;
    if (!defaultDeleteImageForUserInterfaceStyle____deleteImage)
    {
      v10 = ImageWithOpacity(v5);
      v11 = defaultDeleteImageForUserInterfaceStyle____deleteImage;
      defaultDeleteImageForUserInterfaceStyle____deleteImage = v10;

      v9 = defaultDeleteImageForUserInterfaceStyle____deleteImage;
    }

    v8 = v9;
  }

  return v8;
}

- (id)defaultDeleteImageForCell:(id)cell
{
  traitCollection = [cell traitCollection];
  v5 = -[UITableConstants_TV defaultDeleteImageForUserInterfaceStyle:](self, "defaultDeleteImageForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  return v5;
}

- (id)defaultDeleteImageWithTintColor:(id)color backgroundColor:(id)backgroundColor
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v7 = defaultDeleteImageWithTintColor_backgroundColor____untintedDeleteImage;
  if (defaultDeleteImageWithTintColor_backgroundColor____untintedDeleteImage)
  {
    if (colorCopy)
    {
LABEL_3:
      v8 = [v7 imageWithTintColor:colorCopy renderingMode:1];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
    v10 = [UIImage systemImageNamed:@"trash" withConfiguration:v9];
    v11 = defaultDeleteImageWithTintColor_backgroundColor____untintedDeleteImage;
    defaultDeleteImageWithTintColor_backgroundColor____untintedDeleteImage = v10;

    v7 = defaultDeleteImageWithTintColor_backgroundColor____untintedDeleteImage;
    if (colorCopy)
    {
      goto LABEL_3;
    }
  }

  v12 = +[UIColor whiteColor];
  v8 = [v7 imageWithTintColor:v12 renderingMode:1];

LABEL_6:

  return v8;
}

- (id)_defaultInsertImageForUserInterfaceStyle:(int64_t)style
{
  v4 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
  v5 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v4];
  v6 = v5;
  if (style == 1000 || style == 2)
  {
    v7 = +[UIColor whiteColor];
    v8 = [v6 imageWithTintColor:v7 renderingMode:1];
  }

  else
  {
    v9 = _defaultInsertImageForUserInterfaceStyle____insertImage;
    if (!_defaultInsertImageForUserInterfaceStyle____insertImage)
    {
      v10 = ImageWithOpacity(v5);
      v11 = _defaultInsertImageForUserInterfaceStyle____insertImage;
      _defaultInsertImageForUserInterfaceStyle____insertImage = v10;

      v9 = _defaultInsertImageForUserInterfaceStyle____insertImage;
    }

    v8 = v9;
  }

  return v8;
}

- (id)defaultInsertImageForCell:(id)cell
{
  traitCollection = [cell traitCollection];
  v5 = -[UITableConstants_TV _defaultInsertImageForUserInterfaceStyle:](self, "_defaultInsertImageForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  return v5;
}

- (id)defaultInsertImageWithTintColor:(id)color backgroundColor:(id)backgroundColor
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v7 = defaultInsertImageWithTintColor_backgroundColor____untintedInsertImage;
  if (defaultInsertImageWithTintColor_backgroundColor____untintedInsertImage)
  {
    if (colorCopy)
    {
LABEL_3:
      v8 = [v7 imageWithTintColor:colorCopy renderingMode:1];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
    v10 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v9];
    v11 = defaultInsertImageWithTintColor_backgroundColor____untintedInsertImage;
    defaultInsertImageWithTintColor_backgroundColor____untintedInsertImage = v10;

    v7 = defaultInsertImageWithTintColor_backgroundColor____untintedInsertImage;
    if (colorCopy)
    {
      goto LABEL_3;
    }
  }

  v12 = +[UIColor whiteColor];
  v8 = [v7 imageWithTintColor:v12 renderingMode:1];

LABEL_6:

  return v8;
}

- (id)_defaultMultiSelectNotSelectedImageForUserInterfaceStyle:(int64_t)style
{
  v4 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
  v5 = [UIImage systemImageNamed:@"circle" withConfiguration:v4];
  v6 = v5;
  if (style == 1000 || style == 2)
  {
    v7 = +[UIColor whiteColor];
    v8 = [v6 imageWithTintColor:v7 renderingMode:1];
  }

  else
  {
    v9 = _defaultMultiSelectNotSelectedImageForUserInterfaceStyle____multiSelectNotSelectedImage;
    if (!_defaultMultiSelectNotSelectedImageForUserInterfaceStyle____multiSelectNotSelectedImage)
    {
      v10 = ImageWithOpacity(v5);
      v11 = _defaultMultiSelectNotSelectedImageForUserInterfaceStyle____multiSelectNotSelectedImage;
      _defaultMultiSelectNotSelectedImageForUserInterfaceStyle____multiSelectNotSelectedImage = v10;

      v9 = _defaultMultiSelectNotSelectedImageForUserInterfaceStyle____multiSelectNotSelectedImage;
    }

    v8 = v9;
  }

  return v8;
}

- (id)defaultMultiSelectNotSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection accessoryBaseColor:(id)color
{
  collectionCopy = collection;
  colorCopy = color;
  if (colorCopy)
  {
    v9 = defaultMultiSelectNotSelectedImageForCellStyle_traitCollection_accessoryBaseColor____untintedMultiSelectNotSelectedImage;
    if (!defaultMultiSelectNotSelectedImageForCellStyle_traitCollection_accessoryBaseColor____untintedMultiSelectNotSelectedImage)
    {
      v10 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
      v11 = [UIImage systemImageNamed:@"circle" withConfiguration:v10];
      v12 = defaultMultiSelectNotSelectedImageForCellStyle_traitCollection_accessoryBaseColor____untintedMultiSelectNotSelectedImage;
      defaultMultiSelectNotSelectedImageForCellStyle_traitCollection_accessoryBaseColor____untintedMultiSelectNotSelectedImage = v11;

      v9 = defaultMultiSelectNotSelectedImageForCellStyle_traitCollection_accessoryBaseColor____untintedMultiSelectNotSelectedImage;
    }

    v13 = [v9 imageWithTintColor:colorCopy renderingMode:1];
  }

  else
  {
    v13 = -[UITableConstants_TV _defaultMultiSelectNotSelectedImageForUserInterfaceStyle:](self, "_defaultMultiSelectNotSelectedImageForUserInterfaceStyle:", [collectionCopy userInterfaceStyle]);
  }

  v14 = v13;

  return v14;
}

- (id)_defaultMultiSelectSelectedImageForUserInterfaceStyle:(int64_t)style
{
  v4 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
  v5 = +[UIImage checkmarkImage];
  v6 = [v5 imageWithConfiguration:v4];

  if (style == 1000 || style == 2)
  {
    v7 = +[UIColor whiteColor];
    v8 = [v6 imageWithTintColor:v7 renderingMode:1];
  }

  else
  {
    v9 = _defaultMultiSelectSelectedImageForUserInterfaceStyle____multiSelectSelectedImage;
    if (!_defaultMultiSelectSelectedImageForUserInterfaceStyle____multiSelectSelectedImage)
    {
      v10 = ImageWithOpacity(v6);
      v11 = _defaultMultiSelectSelectedImageForUserInterfaceStyle____multiSelectSelectedImage;
      _defaultMultiSelectSelectedImageForUserInterfaceStyle____multiSelectSelectedImage = v10;

      v9 = _defaultMultiSelectSelectedImageForUserInterfaceStyle____multiSelectSelectedImage;
    }

    v8 = v9;
  }

  return v8;
}

- (id)defaultMultiSelectSelectedImageForCellStyle:(int64_t)style traitCollection:(id)collection checkmarkColor:(id)color backgroundColor:(id)backgroundColor
{
  userInterfaceStyle = [collection userInterfaceStyle];

  return [(UITableConstants_TV *)self _defaultMultiSelectSelectedImageForUserInterfaceStyle:userInterfaceStyle];
}

- (CGSize)defaultReorderControlSizeForCell:(id)cell withAccessoryBaseColor:(id)color
{
  v4 = 105.0;
  v5 = 70.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)_defaultReorderControlImageForUserInterfaceStyle:(int64_t)style
{
  if (style == 1000 || style == 2)
  {
    v4 = qword_1ED4A1078;
    if (qword_1ED4A1078)
    {
      goto LABEL_8;
    }

    v5 = +[UIColor whiteColor];
    v6 = [(UITableConstants_TV *)self _kitImageNamed:@"UITableGrabber" withTint:v5 flippedForRightToLeftLayoutDirection:0];
    v7 = &qword_1ED4A1078;
    v8 = qword_1ED4A1078;
    qword_1ED4A1078 = v6;
  }

  else
  {
    v4 = qword_1ED4A1070;
    if (qword_1ED4A1070)
    {
      goto LABEL_8;
    }

    v9 = _UIImageWithName(@"UITableGrabber");
    v7 = &qword_1ED4A1070;
    v10 = qword_1ED4A1070;
    qword_1ED4A1070 = v9;

    v11 = ImageWithOpacity(qword_1ED4A1070);
    v5 = qword_1ED4A1070;
    qword_1ED4A1070 = v11;
  }

  v4 = *v7;
LABEL_8:

  return v4;
}

- (id)defaultReorderControlImageForTraitCollection:(id)collection withAccessoryBaseColor:(id)color isTracking:(BOOL)tracking
{
  collectionCopy = collection;
  colorCopy = color;
  if (colorCopy)
  {
    v9 = defaultReorderControlImageForTraitCollection_withAccessoryBaseColor_isTracking____untintedGrabberImage;
    if (!defaultReorderControlImageForTraitCollection_withAccessoryBaseColor_isTracking____untintedGrabberImage)
    {
      v10 = _UIImageWithName(@"UITableGrabber");
      v11 = defaultReorderControlImageForTraitCollection_withAccessoryBaseColor_isTracking____untintedGrabberImage;
      defaultReorderControlImageForTraitCollection_withAccessoryBaseColor_isTracking____untintedGrabberImage = v10;

      v9 = defaultReorderControlImageForTraitCollection_withAccessoryBaseColor_isTracking____untintedGrabberImage;
    }

    v12 = [v9 imageWithTintColor:colorCopy renderingMode:1];
  }

  else
  {
    v12 = -[UITableConstants_TV _defaultReorderControlImageForUserInterfaceStyle:](self, "_defaultReorderControlImageForUserInterfaceStyle:", [collectionCopy userInterfaceStyle]);
  }

  v13 = v12;

  return v13;
}

- (double)defaultFocusedShadowRadiusForTableView:(id)view
{
  v3 = _UISolariumEnabled();
  result = 33.0;
  if (!v3)
  {
    return 20.0;
  }

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
  if ([state isFocused])
  {
    v4 = +[UIColor blackColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)defaultAccessoryTintColorForAccessorySystemType:(int64_t)type header:(BOOL)header sidebarStyle:(int64_t)style cellConfigurationState:(id)state traitCollection:(id)collection inheritedTintColor:(id)color
{
  stateCopy = state;
  userInterfaceStyle = [collection userInterfaceStyle];
  v15 = userInterfaceStyle != 2 && userInterfaceStyle != 1000;
  isFocused = [stateCopy isFocused];

  if (type > 0xA)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITableConstants_TV.m" lineNumber:1026 description:{@"Invalid _UICellAccessorySystemType value: %ld", type}];

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  if (((1 << type) & 0x683) == 0)
  {
    if (((1 << type) & 0x3C) != 0)
    {
      if (((v15 | isFocused) & 1) == 0)
      {
        v17 = +[UIColor whiteColor];
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if ((v15 | isFocused))
  {
LABEL_13:
    v17 = +[UIColor _tvInterfaceStyleLightContentColor];
    goto LABEL_17;
  }

  v17 = +[UIColor _tvInterfaceStyleDarkContentColor];
LABEL_17:

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

@end