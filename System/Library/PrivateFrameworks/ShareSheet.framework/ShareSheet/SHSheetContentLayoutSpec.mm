@interface SHSheetContentLayoutSpec
- (BOOL)isAccessibilityContentSize;
- (BOOL)shouldUseNarrowLayoutForHeroActionsWithContainerWidth:(double)a3;
- (CGSize)portraitWindowSize;
- (NSDirectionalEdgeInsets)linkViewHeaderInsets;
- (NSDirectionalEdgeInsets)topContentSectionHeaderInsets;
- (SHSheetContentLayoutSpec)initWithTraitCollection:(id)a3 tintColor:(id)a4 deviceClass:(unint64_t)a5 portraitWindowSize:(CGSize)a6;
- (UIColor)editTintColor;
- (UIImageSymbolConfiguration)activityImageSymbolConfiguration;
- (UIImageSymbolConfiguration)horizontalActivityImageSymbolConfiguration;
- (double)horizontalCellWidthForContentWidth:(double)a3 sizeOffset:(double)a4;
- (id)_accessibilityImageSymbolConfiguration;
- (id)actionsLayoutSectionConfigurationWithEnvironment:(id)a3;
- (int64_t)numberOfHorizontalItemsPerGroupForContentWidth:(double)a3;
@end

@implementation SHSheetContentLayoutSpec

- (SHSheetContentLayoutSpec)initWithTraitCollection:(id)a3 tintColor:(id)a4 deviceClass:(unint64_t)a5 portraitWindowSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v12 = a3;
  v13 = a4;
  v33.receiver = self;
  v33.super_class = SHSheetContentLayoutSpec;
  v14 = [(SHSheetContentLayoutSpec *)&v33 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_33;
  }

  objc_storeStrong(&v14->_traitCollection, a3);
  v15->_deviceClass = a5;
  objc_storeStrong(&v15->_tintColor, a4);
  v15->_portraitWindowSize.width = width;
  v15->_portraitWindowSize.height = height;
  v15->_estimatedHeaderHeight = 10.0;
  v16 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v16 scale];
  v15->_estimatedFooterHeight = 1.0 / v17;

  v15->_customViewVerticalInset = 12.0;
  v15->_peopleSectionHeight = 132.0;
  *&v15->_sharingAppIconWidth = xmmword_18B433C40;
  *&v15->_estimatedActionFooterHeight = xmmword_18B433C50;
  v15->_horizontalCellWidth = 78.0;
  *&v15->_horizontalSectionBottomInset = xmmword_18B433C60;
  v18 = [MEMORY[0x1E69DC888] separatorColor];
  footerBackgroundColor = v15->_footerBackgroundColor;
  v15->_footerBackgroundColor = v18;

  if (a5 <= 5)
  {
    if (a5 <= 3)
    {
      if (a5 != 1)
      {
        if (a5 == 3)
        {
          *&v15->_customViewSectionHeight = xmmword_18B433C70;
        }

        goto LABEL_27;
      }

      *&v15->_customViewSectionHeight = xmmword_18B433CB0;
      goto LABEL_20;
    }

    if (a5 == 4)
    {
      v15->_customViewSectionHeight = 320.0;
      v15->_peopleIconWidth = 64.0;
LABEL_23:
      v15->_sharingAppIconWidth = 64.0;
      goto LABEL_27;
    }

    v20 = 0x4074E00000000000;
LABEL_22:
    *&v15->_customViewSectionHeight = v20;
    v15->_peopleIconWidth = 66.0;
    goto LABEL_23;
  }

  if (a5 <= 7)
  {
    if (a5 != 6)
    {
      v21 = 0x406BE00000000000;
LABEL_19:
      *&v15->_customViewSectionHeight = v21;
LABEL_20:
      v15->_peopleSectionHeight = 128.0;
      goto LABEL_27;
    }

    v20 = 0x4076000000000000;
    goto LABEL_22;
  }

  switch(a5)
  {
    case 8uLL:
      v21 = 0x4071800000000000;
      goto LABEL_19;
    case 9uLL:
      v15->_customViewSectionHeight = 280.0;
      v15->_peopleSectionHeight = 108.0;
      v15->_horizontalCellWidth = 84.0;
      v15->_sharingAppIconWidth = 52.0;
      *&v15->_horizontalSectionBottomInset = xmmword_18B433C80;
LABEL_25:
      v15->_estimatedActionFooterHeight = 84.0;
      if (_ShareSheetIsRealityLauncher())
      {
        *&v15->_topContentSectionHeaderInsets.top = xmmword_18B433C90;
        *&v15->_topContentSectionHeaderInsets.bottom = xmmword_18B433CA0;
      }

      break;
    case 0xAuLL:
      v15->_customViewSectionHeight = 280.0;
      v15->_peopleSectionHeight = 132.0;
      v15->_horizontalCellWidth = 92.0;
      v15->_sharingAppIconWidth = 68.0;
      *&v15->_horizontalSectionBottomInset = xmmword_18B433CC0;
      goto LABEL_25;
  }

LABEL_27:
  if (_ShareSheetSolariumEnabled())
  {
    v15->_customViewVerticalInset = 0.0;
    v15->_estimatedFooterHeight = 1.0;
    __asm { FMOV            V0.2D, #20.0 }

    *&v15->_linkViewHeaderInsets.top = _Q0;
    *&v15->_linkViewHeaderInsets.bottom = _Q0;
    v15->_horizontalCellWidth = 82.0;
    v27 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v27 userInterfaceIdiom] == 1)
    {
      width = _ShareSheetPopoverSize();
    }

    v28 = floor(width / 402.0 * 70.0);
    v29 = v28 + 32.0 + 6.0;
    v30 = floor(width / 402.0 * 68.0);
    v15->_sharingAppIconWidth = v30;
    v15->_peopleSectionTopInset = 16.0;
    v15->_peopleIconWidth = v28;
    v15->_peopleSectionHeight = v29;
    peopleSectionHeight = v30 + 32.0 + 8.0;
  }

  else
  {
    peopleSectionHeight = v15->_peopleSectionHeight;
    v29 = peopleSectionHeight;
  }

  v15->_sharingAppSectionHeight = peopleSectionHeight;
  v15->_topActionsSectionHeight = v29;
LABEL_33:

  return v15;
}

- (BOOL)isAccessibilityContentSize
{
  v2 = [(SHSheetContentLayoutSpec *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

- (UIColor)editTintColor
{
  v3 = [(SHSheetContentLayoutSpec *)self tintColor];

  if (v3)
  {
    [(SHSheetContentLayoutSpec *)self tintColor];
  }

  else
  {
    SHSheetTintColor();
  }
  v4 = ;

  return v4;
}

- (double)horizontalCellWidthForContentWidth:(double)a3 sizeOffset:(double)a4
{
  [(SHSheetContentLayoutSpec *)self horizontalCellWidth];
  v8 = v7;
  v9 = [(SHSheetContentLayoutSpec *)self isAccessibilityContentSize];
  result = -(a4 - a3 * 0.666666667);
  if (!v9)
  {
    return v8;
  }

  return result;
}

- (int64_t)numberOfHorizontalItemsPerGroupForContentWidth:(double)a3
{
  v5 = _ShareSheetPlatformPrefersPopover();
  if ([(SHSheetContentLayoutSpec *)self isAccessibilityContentSize])
  {
    return 1;
  }

  if (a3 == 540.0 && v5)
  {
    return 6;
  }

  if (a3 <= 320.0)
  {
    return 3;
  }

  if (a3 >= 568.0)
  {
    return 6;
  }

  return 4;
}

- (UIImageSymbolConfiguration)activityImageSymbolConfiguration
{
  if ([(SHSheetContentLayoutSpec *)self isAccessibilityContentSize])
  {
    [(SHSheetContentLayoutSpec *)self _accessibilityImageSymbolConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
  }
  v3 = ;

  return v3;
}

- (UIImageSymbolConfiguration)horizontalActivityImageSymbolConfiguration
{
  if ([(SHSheetContentLayoutSpec *)self isAccessibilityContentSize])
  {
    [(SHSheetContentLayoutSpec *)self _accessibilityImageSymbolConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:2 scale:25.0];
  }
  v3 = ;

  return v3;
}

- (id)_accessibilityImageSymbolConfiguration
{
  v2 = MEMORY[0x1E69DB880];
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC40]];
  v5 = [v2 preferredFontDescriptorWithTextStyle:v3 compatibleWithTraitCollection:v4];

  v6 = [v5 fontDescriptorWithSymbolicTraits:0x8000];

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];
  v8 = MEMORY[0x1E69DCAD8];
  [v7 pointSize];
  v9 = [v8 configurationWithPointSize:?];

  return v9;
}

- (id)actionsLayoutSectionConfigurationWithEnvironment:(id)a3
{
  v3 = MEMORY[0x1E69DC938];
  v4 = a3;
  v5 = [v3 currentDevice];
  if ([v5 userInterfaceIdiom])
  {
    if (_ShareSheetPlatformPrefersPopover())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 2;
  }

  v7 = [objc_alloc(MEMORY[0x1E69DD3F8]) initWithAppearanceStyle:v6 layoutEnvironment:v4];
  if ((_ShareSheetSolariumEnabled() & 1) == 0)
  {
    [v7 setSeparatorInset:{0.0, 0.0, 0.0, 0.0}];
  }

  [v7 setEstimatedRowHeight:52.0];

  return v7;
}

- (BOOL)shouldUseNarrowLayoutForHeroActionsWithContainerWidth:(double)a3
{
  v4 = [(SHSheetContentLayoutSpec *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryCompareToCategory(v5, *MEMORY[0x1E69DDC58]);

  return a3 <= 320.0 || v6 != NSOrderedAscending;
}

- (CGSize)portraitWindowSize
{
  width = self->_portraitWindowSize.width;
  height = self->_portraitWindowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSDirectionalEdgeInsets)linkViewHeaderInsets
{
  top = self->_linkViewHeaderInsets.top;
  leading = self->_linkViewHeaderInsets.leading;
  bottom = self->_linkViewHeaderInsets.bottom;
  trailing = self->_linkViewHeaderInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)topContentSectionHeaderInsets
{
  top = self->_topContentSectionHeaderInsets.top;
  leading = self->_topContentSectionHeaderInsets.leading;
  bottom = self->_topContentSectionHeaderInsets.bottom;
  trailing = self->_topContentSectionHeaderInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end