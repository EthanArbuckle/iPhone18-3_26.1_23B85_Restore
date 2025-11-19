@interface TVSearchBar
@end

@implementation TVSearchBar

uint64_t __34___TVSearchBar__listItemTextColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
  v1 = _listItemTextColor___lightThemeColor;
  _listItemTextColor___lightThemeColor = v0;

  v2 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  v3 = _listItemTextColor___darkThemeColor;
  _listItemTextColor___darkThemeColor = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t __49___TVSearchBar__listItemSelectedOverlayFillColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
  v1 = _listItemSelectedOverlayFillColor___lightThemeColor;
  _listItemSelectedOverlayFillColor___lightThemeColor = v0;

  v2 = [MEMORY[0x277D75348] colorWithRed:0.501960784 green:0.482352941 blue:0.501960784 alpha:0.1];
  v3 = _listItemSelectedOverlayFillColor___darkThemeColor;
  _listItemSelectedOverlayFillColor___darkThemeColor = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

@end