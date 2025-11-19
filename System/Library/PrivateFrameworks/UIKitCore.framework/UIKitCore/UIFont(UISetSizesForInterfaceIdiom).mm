@interface UIFont(UISetSizesForInterfaceIdiom)
+ (uint64_t)_setDefaultFontSizesForUserInterfaceIdiom:()UISetSizesForInterfaceIdiom;
@end

@implementation UIFont(UISetSizesForInterfaceIdiom)

+ (uint64_t)_setDefaultFontSizesForUserInterfaceIdiom:()UISetSizesForInterfaceIdiom
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  [_UITextAttributeDefaults _getFontSizesForUserInterfaceIdiom:a3 labelFontSize:&v7 buttonFontSize:&v6 systemFontSize:&v5 smallSystemFontSize:&v4];
  [off_1E70ECC18 _setLabelFontSize:v7];
  [off_1E70ECC18 _setButtonFontSize:v6];
  [off_1E70ECC18 _setSystemFontSize:v5];
  return [off_1E70ECC18 _setSmallSystemFontSize:v4];
}

@end