@interface TKUIKitConstants
+ (UIColor)groupedTableHeaderFooterTextColor;
@end

@implementation TKUIKitConstants

+ (UIColor)groupedTableHeaderFooterTextColor
{
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D75348] _groupTableHeaderFooterTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithRed:0.42745098 green:0.42745098 blue:0.447058824 alpha:1.0];
  }
  v2 = ;

  return v2;
}

@end