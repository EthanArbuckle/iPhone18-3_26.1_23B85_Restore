@interface UITableConstants_CarPlay
+ (id)sharedConstants;
- ($7FDC96647900ED4FDF8E2F8A586A6BB4)contentPropertiesForSidebarElementWithTraitCollection:(SEL)a3 state:(id)a4 isHeader:(id)a5 cellStyle:(BOOL)a6 sidebarStyle:(int64_t)a7;
- (BOOL)shouldUppercaseHeaderFooterTextForTableStyle:(int64_t)a3 isHeader:(BOOL)a4;
- (CGRect)defaultDeleteMinusRectForCell:(id)a3 inTableView:(id)a4;
- (CGSize)defaultEditControlSizeForCell:(id)a3 inTableView:(id)a4;
- (CGSize)defaultReorderControlSizeForCell:(id)a3 withAccessoryBaseColor:(id)a4;
- (UIEdgeInsets)_defaultLayoutMargins;
- (UIEdgeInsets)defaultCellLayoutMarginsForTableStyle:(int64_t)a3 cellStyle:(int64_t)a4 isSidebarStyle:(BOOL)a5 textLabelFont:(id)a6 rawLayoutMargins:(UIEdgeInsets)a7;
- (UIEdgeInsets)defaultHeaderFooterLayoutMarginsForTableViewStyle:(int64_t)a3 isHeader:(BOOL)a4 isFirstSection:(BOOL)a5;
- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)a3 inTableView:(id)a4;
- (UIEdgeInsets)headerFooterOffsetFromContentInsetForTableView:(id)a3;
- (UIEdgeInsets)reorderControlHoverEffectInsets;
- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5;
- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)a3 cellConfigurationState:(int64_t)a4 traitCollection:(id)a5 floating:(id)a6;
- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5;
- (_UITableConstantsBackgroundProperties)defaultSidebarHeaderBackgroundPropertiesWithState:(SEL)a3 traitCollection:(id)a4;
- (double)_defaultPlainHeaderFooterHeightForTableViewStyle:(int64_t)a3;
- (double)defaultCellCornerRadiusForTableViewStyle:(int64_t)a3 isSidebarStyle:(BOOL)a4 isSwipedCell:(BOOL)a5 isHeaderFooter:(BOOL)a6 traitCollection:(id)a7;
- (double)defaultDetailTextLabelFontSizeForCellStyle:(int64_t)a3;
- (double)defaultLeadingCellMarginWidthForTableView:(id)a3;
- (double)defaultPlainFirstSectionHeaderHeightForTableView:(id)a3;
- (double)defaultSectionFooterHeightForTableView:(id)a3;
- (double)defaultSectionFooterHeightForTableViewStyle:(int64_t)a3 screen:(id)a4;
- (double)defaultTextLabelFontSizeForCellStyle:(int64_t)a3;
- (double)interspaceBetweenInnerAccessoryIdentifier:(id)a3 outerAccessoryIdentifier:(id)a4 forCell:(id)a5 trailingAccessoryGroup:(BOOL)a6;
- (double)minimumContentViewHeightForFont:(id)a3 traitCollection:(id)a4 isSidebarStyle:(BOOL)a5;
- (id)_defaultAccessoryColorFocused:(BOOL)a3;
- (id)_imageWithName:(id)a3 accessoryBaseColor:(id)a4;
- (id)defaultAccessoryTintColorForAccessorySystemType:(int64_t)a3 header:(BOOL)a4 sidebarStyle:(int64_t)a5 cellConfigurationState:(id)a6 traitCollection:(id)a7 inheritedTintColor:(id)a8;
- (id)defaultDeleteImageWithTintColor:(id)a3 backgroundColor:(id)a4;
- (id)defaultDetailTextColorForCellStyle:(int64_t)a3 traitCollection:(id)a4 state:(id)a5;
- (id)defaultDetailTextFontForCellStyle:(int64_t)a3;
- (id)defaultFocusedDetailTextColorForCell:(id)a3 inTableView:(id)a4;
- (id)defaultFocusedDisclosureImageForCell:(id)a3 inTableView:(id)a4;
- (id)defaultFocusedTextColorForCell:(id)a3 inTableView:(id)a4;
- (id)defaultFooterFontForTableViewStyle:(int64_t)a3;
- (id)defaultFooterTextColorForTableViewStyle:(int64_t)a3 focused:(BOOL)a4;
- (id)defaultHeaderFontForTableViewStyle:(int64_t)a3;
- (id)defaultHeaderTextColorForTableViewStyle:(int64_t)a3 focused:(BOOL)a4;
- (id)defaultInsertImageWithTintColor:(id)a3 backgroundColor:(id)a4;
- (id)defaultMultiSelectNotSelectedImageForCellStyle:(int64_t)a3 traitCollection:(id)a4 accessoryBaseColor:(id)a5;
- (id)defaultMultiSelectSelectedImageForCellStyle:(int64_t)a3 traitCollection:(id)a4 checkmarkColor:(id)a5 backgroundColor:(id)a6;
- (id)defaultReorderControlImageForTraitCollection:(id)a3 withAccessoryBaseColor:(id)a4 isTracking:(BOOL)a5;
- (id)defaultTextLabelFontForCellStyle:(int64_t)a3;
@end

@implementation UITableConstants_CarPlay

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants;
  if (!sharedConstants___sharedConstants)
  {
    v4 = objc_alloc_init(a1);
    v5 = sharedConstants___sharedConstants;
    sharedConstants___sharedConstants = v4;

    v3 = sharedConstants___sharedConstants;
  }

  return v3;
}

- (_UITableConstantsBackgroundProperties)defaultCellBackgroundPropertiesForTableViewStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5
{
  v16 = a5;
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
  [(UITableConstants_CarPlay *)self defaultCellCornerRadiusForTableViewStyle:a4 isSidebarStyle:0 isHeaderFooter:0 traitCollection:v10, __copy_constructor_8_8_t0w8_s8_s16_s24_t32w41_s80_t88w48(retstr, &_UITableConstantsBackgroundPropertiesDefault).n128_f64[0]];
  retstr->var12 = v11;
  if (([v16 isFocused] & 1) != 0 || (objc_msgSend(v16, "isSelected") & 1) != 0 || objc_msgSend(v16, "isHighlighted"))
  {
    retstr->var0 = 1;
    goto LABEL_5;
  }

  if (a4)
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

- (_UITableConstantsBackgroundProperties)defaultSidebarCellBackgroundPropertiesForStyle:(SEL)a3 state:(int64_t)a4 traitCollection:(id)a5
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

- (_UITableConstantsBackgroundProperties)defaultSidebarHeaderBackgroundPropertiesWithState:(SEL)a3 traitCollection:(id)a4
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

- (double)defaultSectionFooterHeightForTableViewStyle:(int64_t)a3 screen:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v6 = [objc_opt_self() mainScreen];
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(UITableConstants_CarPlay *)self _defaultPlainHeaderFooterHeightForTableViewStyle:0];
    v7 = v8;
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 17.5;
LABEL_6:
  [v6 scale];
  v10 = UIPixelBoundaryOffset(0, v7, v9);

  return v10;
}

- (double)defaultSectionFooterHeightForTableView:(id)a3
{
  v5 = [a3 _tableStyle];
  v6 = [a3 _scrollView];
  v7 = [v6 window];
  v8 = [v7 screen];
  [(UITableConstants_CarPlay *)self defaultSectionHeaderHeightForTableViewStyle:v5 screen:v8];
  v10 = v9;

  return v10;
}

- (double)minimumContentViewHeightForFont:(id)a3 traitCollection:(id)a4 isSidebarStyle:(BOOL)a5
{
  v6 = a3;
  v7 = [a4 preferredContentSizeCategory];
  v8 = _UIContentSizeCategoryMin(v7, @"UICTContentSizeCategoryXXXL");

  v9 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v8];
  v10 = [v6 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v9];

  [v6 _bodyLeading];
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

- (UIEdgeInsets)defaultLayoutMarginsForCell:(id)a3 inTableView:(id)a4
{
  if (dyld_program_sdk_at_least())
  {
    v7 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:@"UICTContentSizeCategoryL"];
    v8 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:v7];
  }

  else
  {
    v8 = -[UITableConstants_CarPlay defaultTextLabelFontForCellStyle:](self, "defaultTextLabelFontForCellStyle:", [a3 _cellStyle]);
  }

  v9 = [a4 _tableStyle];
  v10 = [a3 _cellStyle];
  [a3 _rawLayoutMargins];
  [(UITableConstants_CarPlay *)self defaultCellLayoutMarginsForTableStyle:v9 cellStyle:v10 isSidebarStyle:0 textLabelFont:v8 rawLayoutMargins:?];
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
  v9 = a6;
  v10 = 6.0;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v9 lineHeight];
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

- (UIEdgeInsets)defaultHeaderFooterLayoutMarginsForTableViewStyle:(int64_t)a3 isHeader:(BOOL)a4 isFirstSection:(BOOL)a5
{
  v5 = 8.0;
  if (!a3)
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

- (UIEdgeInsets)headerFooterOffsetFromContentInsetForTableView:(id)a3
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

- (double)defaultCellCornerRadiusForTableViewStyle:(int64_t)a3 isSidebarStyle:(BOOL)a4 isSwipedCell:(BOOL)a5 isHeaderFooter:(BOOL)a6 traitCollection:(id)a7
{
  v9 = a7;
  v10 = 0.0;
  if (!a6)
  {
    v11 = _UISolariumEnabled();
    v12 = (a3 - 1) < 2 || a3 == 16;
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

- (double)interspaceBetweenInnerAccessoryIdentifier:(id)a3 outerAccessoryIdentifier:(id)a4 forCell:(id)a5 trailingAccessoryGroup:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = 0.0;
  if (([a3 isEqualToString:0x1EFB34170] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", 0x1EFB34170) & 1) == 0)
  {
    if (a3)
    {
      v12 = 12.0;
      if (!v10)
      {
        [v11 _minimumCellAccessoryMargin];
        v14 = v13;
        [v11 directionalLayoutMargins];
        v12 = fmax(v14, v15);
      }
    }

    else if ((_UITableViewCellUsesLayoutMarginBasedContentPadding() & 1) == 0 && v6)
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

- (double)defaultLeadingCellMarginWidthForTableView:(id)a3
{
  if (_UISolariumEnabled())
  {
    v4 = 8.0;
  }

  else
  {
    v4 = 12.0;
  }

  v5 = [a3 _scrollView];
  [v5 directionalLayoutMargins];
  v7 = fmax(v4, v6);

  return v7;
}

- (double)_defaultPlainHeaderFooterHeightForTableViewStyle:(int64_t)a3
{
  v3 = [(UITableConstants_CarPlay *)self defaultHeaderFontForTableViewStyle:a3];
  [v3 _scaledValueForValue:28.0];
  v5 = v4;

  return v5;
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

- (double)defaultPlainFirstSectionHeaderHeightForTableView:(id)a3
{
  v4 = [a3 _tableStyle];

  [(UITableConstants_CarPlay *)self _defaultPlainHeaderFooterHeightForTableViewStyle:v4];
  return result;
}

- ($7FDC96647900ED4FDF8E2F8A586A6BB4)contentPropertiesForSidebarElementWithTraitCollection:(SEL)a3 state:(id)a4 isHeader:(id)a5 cellStyle:(BOOL)a6 sidebarStyle:(int64_t)a7
{
  v22 = a4;
  v12 = a5;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  retstr->var12 = 0;
  v13 = [(UITableConstants_CarPlay *)self defaultTextLabelFontForCellStyle:a7, __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_t48w56(retstr, &_UITableConstantsContentPropertiesDefault).n128_f64[0]];
  var0 = retstr->var0;
  retstr->var0 = v13;

  v15 = [(UITableConstants_CarPlay *)self defaultDetailTextFontForCellStyle:a7];
  var1 = retstr->var1;
  retstr->var1 = v15;

  v17 = +[UIColor labelColor];
  var2 = retstr->var2;
  retstr->var2 = v17;

  v19 = +[UIColor secondaryLabelColor];
  var3 = retstr->var3;
  retstr->var3 = v19;

  if ([v12 isHighlighted])
  {
    *&retstr->var7 = vdupq_n_s64(7uLL);
    retstr->var9 = 7;
  }

  return result;
}

- (id)defaultFocusedTextColorForCell:(id)a3 inTableView:(id)a4
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

- (id)defaultTextLabelFontForCellStyle:(int64_t)a3
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

- (double)defaultTextLabelFontSizeForCellStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    return 17.0;
  }

  if (a3 == 2)
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

- (id)defaultDetailTextColorForCellStyle:(int64_t)a3 traitCollection:(id)a4 state:(id)a5
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

- (id)defaultFocusedDetailTextColorForCell:(id)a3 inTableView:(id)a4
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

- (id)defaultDetailTextFontForCellStyle:(int64_t)a3
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

- (double)defaultDetailTextLabelFontSizeForCellStyle:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      return 17.0;
    }

    if (a3 == 3)
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

  [(UITableConstants_CarPlay *)self defaultTextLabelFontSizeForCellStyle:a3];
  return result;
}

- (id)defaultHeaderFontForTableViewStyle:(int64_t)a3
{
  v3 = +[UIScreen _carScreen];
  v4 = [v3 traitCollection];
  v5 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedTitle3" compatibleWithTraitCollection:v4];

  return v5;
}

- (id)defaultFooterFontForTableViewStyle:(int64_t)a3
{
  if (a3)
  {
    v3 = UIFontTextStyleShortFootnote;
  }

  else
  {
    v3 = UIFontTextStyleSubtitle2;
  }

  return [off_1E70ECC18 preferredFontForTextStyle:*v3];
}

- (id)defaultHeaderTextColorForTableViewStyle:(int64_t)a3 focused:(BOOL)a4
{
  if (a3)
  {
    [UIColor _groupTableHeaderFooterTextColor:a3];
  }

  else
  {
    [UIColor _plainTableHeaderFooterTextColor:0];
  }
  v4 = ;

  return v4;
}

- (id)defaultFooterTextColorForTableViewStyle:(int64_t)a3 focused:(BOOL)a4
{
  if (a3)
  {
    [UIColor _groupTableHeaderFooterTextColor:a3];
  }

  else
  {
    [UIColor _plainTableHeaderFooterTextColor:0];
  }
  v4 = ;

  return v4;
}

- (_UITableConstantsBackgroundProperties)defaultHeaderFooterBackgroundPropertiesForTableViewStyle:(SEL)a3 cellConfigurationState:(int64_t)a4 traitCollection:(id)a5 floating:(id)a6
{
  if (a7)
  {
    [UIColor tablePlainHeaderFooterFloatingBackgroundColor:a4];
  }

  else
  {
    [UIColor tablePlainHeaderFooterBackgroundColor:a4];
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

- (id)_defaultAccessoryColorFocused:(BOOL)a3
{
  if (a3)
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

- (id)_imageWithName:(id)a3 accessoryBaseColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleEmphasizedCallout" scale:1];
  v8 = [UIImage systemImageNamed:v6 withConfiguration:v7];

  if (v5)
  {
    v9 = [v8 imageWithTintColor:v5 renderingMode:1];

    v8 = v9;
  }

  return v8;
}

- (id)defaultFocusedDisclosureImageForCell:(id)a3 inTableView:(id)a4
{
  v5 = [a4 _accessoryBaseColor];
  v6 = [(UITableConstants_CarPlay *)self _imageWithName:@"chevron.forward" accessoryBaseColor:v5];

  return v6;
}

- (CGSize)defaultEditControlSizeForCell:(id)a3 inTableView:(id)a4
{
  v4 = [(UITableConstants_CarPlay *)self defaultDeleteImageForCell:a3, a4];
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

- (id)defaultDeleteImageWithTintColor:(id)a3 backgroundColor:(id)a4
{
  v4 = [UIImageSymbolConfiguration configurationPreferringMulticolor:a3];
  v5 = [UIImage systemImageNamed:@"minus.circle.fill" withConfiguration:v4];

  return v5;
}

- (id)defaultInsertImageWithTintColor:(id)a3 backgroundColor:(id)a4
{
  v4 = [UIImageSymbolConfiguration configurationPreferringMulticolor:a3];
  v5 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v4];

  return v5;
}

- (id)defaultMultiSelectNotSelectedImageForCellStyle:(int64_t)a3 traitCollection:(id)a4 accessoryBaseColor:(id)a5
{
  v7 = a5;
  v8 = [(UITableConstants_CarPlay *)self defaultTextLabelFontForCellStyle:a3];
  v9 = [UIImageSymbolConfiguration configurationWithFont:v8 scale:3];
  v10 = [UIImage systemImageNamed:@"circle" withConfiguration:v9];
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = [UIColor colorWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  }

  v12 = v11;
  v13 = [v10 imageWithTintColor:v11 renderingMode:1];

  return v13;
}

- (id)defaultMultiSelectSelectedImageForCellStyle:(int64_t)a3 traitCollection:(id)a4 checkmarkColor:(id)a5 backgroundColor:(id)a6
{
  v8 = a5;
  v9 = [(UITableConstants_CarPlay *)self defaultTextLabelFontForCellStyle:a3];
  v10 = [UIImageSymbolConfiguration configurationWithFont:v9 scale:3];
  v11 = +[UIImage checkmarkImage];
  v12 = [v11 imageWithConfiguration:v10];

  if (v8)
  {
    v13 = [v12 imageWithTintColor:v8 renderingMode:1];

    v12 = v13;
  }

  return v12;
}

- (CGSize)defaultReorderControlSizeForCell:(id)a3 withAccessoryBaseColor:(id)a4
{
  v5 = [a3 traitCollection];
  v6 = [(UITableConstants_CarPlay *)self defaultReorderControlImageForTraitCollection:v5 withAccessoryBaseColor:0 isTracking:0];
  [v6 size];
  v8 = v7;
  v10 = v9;

  v11 = v8 + 30.0;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)defaultReorderControlImageForTraitCollection:(id)a3 withAccessoryBaseColor:(id)a4 isTracking:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = _UIImageWithName(@"UITableGrabber.png");
    [v8 size];
    v9 = [UIImage _tintedImageForSize:v7 withTint:0 effectsImage:v8 maskImage:0 style:?];
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

- (id)defaultAccessoryTintColorForAccessorySystemType:(int64_t)a3 header:(BOOL)a4 sidebarStyle:(int64_t)a5 cellConfigurationState:(id)a6 traitCollection:(id)a7 inheritedTintColor:(id)a8
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = 0;
  if (a3 <= 5)
  {
    if ((a3 - 1) < 5)
    {
      goto LABEL_16;
    }

    if (a3)
    {
LABEL_10:
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"UITableConstants_CarPlay.m" lineNumber:727 description:{@"Invalid _UICellAccessorySystemType value: %ld", a3}];

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

  if (a3 <= 7)
  {
    if (a3 != 6)
    {
      v17 = +[UIColor secondaryLabelColor];
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (a3 != 8)
  {
    if (a3 == 9)
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