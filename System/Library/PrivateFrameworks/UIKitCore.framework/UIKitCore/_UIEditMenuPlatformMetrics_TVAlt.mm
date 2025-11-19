@interface _UIEditMenuPlatformMetrics_TVAlt
- (_UIEditMenuPlatformMetrics_TVAlt)init;
@end

@implementation _UIEditMenuPlatformMetrics_TVAlt

- (_UIEditMenuPlatformMetrics_TVAlt)init
{
  v6.receiver = self;
  v6.super_class = _UIEditMenuPlatformMetrics_TVAlt;
  v2 = [(_UIEditMenuPlatformMetrics *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(_UIEditMenuPlatformMetrics *)v2 setMenuItemMarginsProvider:&__block_literal_global_669];
    v4 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleSubhead"];
    [(_UIEditMenuPlatformMetrics *)v3 setMenuItemTitleFont:v4];
    [(_UIEditMenuPlatformMetrics *)v3 setPageButtonFont:v4];
  }

  return v3;
}

@end