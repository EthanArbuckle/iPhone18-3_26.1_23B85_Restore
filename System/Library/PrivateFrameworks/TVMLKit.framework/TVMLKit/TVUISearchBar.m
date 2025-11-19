@interface TVUISearchBar
@end

@implementation TVUISearchBar

uint64_t __32___TVUISearchBar__tvmlKitBundle__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.TVMLKit"];
  v1 = _tvmlKitBundle_bundle;
  _tvmlKitBundle_bundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __29___TVUISearchBar__clearGlyph__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v5 = +[TVMLUtilities TVMLKitBundle];
  v1 = [v0 imageNamed:@"Search-clear" inBundle:v5];
  v2 = [MEMORY[0x277D75348] systemGrayColor];
  v3 = [v1 _flatImageWithColor:v2];
  v4 = _clearGlyph_clearGlpyh;
  _clearGlyph_clearGlpyh = v3;
}

void __30___TVUISearchBar__searchGlyph__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v5 = +[TVMLUtilities TVMLKitBundle];
  v1 = [v0 imageNamed:@"Search-glyph" inBundle:v5];
  v2 = [MEMORY[0x277D75348] systemGrayColor];
  v3 = [v1 _flatImageWithColor:v2];
  v4 = _searchGlyph_searchGlyph;
  _searchGlyph_searchGlyph = v3;
}

@end