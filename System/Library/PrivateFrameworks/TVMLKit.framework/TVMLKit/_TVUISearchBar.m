@interface _TVUISearchBar
+ (id)_clearGlyph;
+ (id)_searchGlyph;
+ (id)_tvmlKitBundle;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)traitCollectionDidChange:(id)a3
{
  v16.receiver = self;
  v16.super_class = _TVUISearchBar;
  [(_TVUISearchBar *)&v16 traitCollectionDidChange:a3];
  v4 = [(_TVUISearchBar *)self searchField];
  v5 = [v4 _placeholderLabel];
  [v4 _setRoundedRectBackgroundCornerRadius:6.0];
  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v6 preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  v9 = MEMORY[0x277D76A20];
  if (IsAccessibilityContentSizeCategory)
  {
    v9 = MEMORY[0x277D76918];
  }

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*v9];
  [v4 setFont:v10];
  [v5 setFont:v10];
  v11 = [MEMORY[0x277D75348] systemGrayColor];
  [v5 setTextColor:v11];

  v12 = [objc_opt_class() _clearGlyph];
  v13 = [objc_opt_class() _searchGlyph];
  [(_TVUISearchBar *)self setImage:v12 forSearchBarIcon:1 state:0];
  [(_TVUISearchBar *)self setPositionAdjustment:1 forSearchBarIcon:-4.0, 0.0];
  v14 = [(_TVUISearchBar *)self searchField];
  v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v13];
  [v14 setLeftView:v15];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _TVUISearchBar;
  [(_TVUISearchBar *)&v8 layoutSubviews];
  v3 = [(_TVUISearchBar *)self searchField];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  [(_TVUISearchBar *)self bounds];
  [v3 setFrame:{v5, 0.0, v7, CGRectGetHeight(v9)}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v15.receiver = self;
  v15.super_class = _TVUISearchBar;
  [(_TVUISearchBar *)&v15 sizeThatFits:a3.width, a3.height];
  v4 = v3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 preferredContentSizeCategory];
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

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 preferredLocalizations];
  v6 = [v5 objectAtIndex:0];

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