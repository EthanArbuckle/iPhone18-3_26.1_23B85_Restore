@interface _TVUISearchBar
+ (id)_clearGlyph;
+ (id)_searchGlyph;
+ (id)_tvmlKitBundle;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _TVUISearchBar

+ (id)_tvmlKitBundle
{
  if (_tvmlKitBundle_onceToken != -1)
  {
    +[_TVUISearchBar _tvmlKitBundle];
  }

  v3 = _tvmlKitBundle_bundle;

  return v3;
}

+ (id)_clearGlyph
{
  if (_clearGlyph_onceToken != -1)
  {
    +[_TVUISearchBar _clearGlyph];
  }

  v3 = _clearGlyph_clearGlpyh;

  return v3;
}

+ (id)_searchGlyph
{
  if (_searchGlyph_onceToken != -1)
  {
    +[_TVUISearchBar _searchGlyph];
  }

  v3 = _searchGlyph_searchGlyph;

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v16.receiver = self;
  v16.super_class = _TVUISearchBar;
  [(_TVUISearchBar *)&v16 traitCollectionDidChange:change];
  searchField = [(_TVUISearchBar *)self searchField];
  _placeholderLabel = [searchField _placeholderLabel];
  [searchField _setRoundedRectBackgroundCornerRadius:6.0];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  v9 = MEMORY[0x277D76A20];
  if (IsAccessibilityContentSizeCategory)
  {
    v9 = MEMORY[0x277D76918];
  }

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*v9];
  [searchField setFont:v10];
  [_placeholderLabel setFont:v10];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [_placeholderLabel setTextColor:systemGrayColor];

  _clearGlyph = [objc_opt_class() _clearGlyph];
  _searchGlyph = [objc_opt_class() _searchGlyph];
  [(_TVUISearchBar *)self setImage:_clearGlyph forSearchBarIcon:1 state:0];
  [(_TVUISearchBar *)self setPositionAdjustment:1 forSearchBarIcon:-4.0, 0.0];
  searchField2 = [(_TVUISearchBar *)self searchField];
  v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:_searchGlyph];
  [searchField2 setLeftView:v15];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _TVUISearchBar;
  [(_TVUISearchBar *)&v8 layoutSubviews];
  searchField = [(_TVUISearchBar *)self searchField];
  [searchField frame];
  v5 = v4;
  v7 = v6;
  [(_TVUISearchBar *)self bounds];
  [searchField setFrame:{v5, 0.0, v7, CGRectGetHeight(v9)}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v15.receiver = self;
  v15.super_class = _TVUISearchBar;
  [(_TVUISearchBar *)&v15 sizeThatFits:fits.width, fits.height];
  v4 = v3;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  v8 = MEMORY[0x277D76A20];
  if (IsAccessibilityContentSizeCategory)
  {
    v8 = MEMORY[0x277D76918];
    v9 = 33.0;
  }

  else
  {
    v9 = 44.0;
  }

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*v8];
  [v10 _scaledValueForValue:v9];
  v12 = round(v11);

  v13 = v4;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  preferredLocalizations = [v4 preferredLocalizations];
  v6 = [preferredLocalizations objectAtIndex:0];

  if ([&unk_287E48798 containsObject:v6])
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  v8.receiver = self;
  v8.super_class = _TVUISearchBar;
  [(_TVUISearchBar *)&v8 setSemanticContentAttribute:v7];
}

@end