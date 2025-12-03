@interface UIColor(TSUAdditions)
+ (id)grayCheckerboardColor;
+ (id)transparentGrayCheckerboardColor;
+ (uint64_t)checkerboardColorWithColor:()TSUAdditions andColor:squareSize:;
+ (uint64_t)tableViewCellDarkBlueTextColor;
@end

@implementation UIColor(TSUAdditions)

+ (uint64_t)checkerboardColorWithColor:()TSUAdditions andColor:squareSize:
{
  v16.width = self + self;
  width = v16.width;
  v16.height = a2 + a2;
  height = v16.height;
  UIGraphicsBeginImageContext(v16);
  [a5 setFill];
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = width;
  v17.size.height = height;
  UIRectFill(v17);
  [a6 setFill];
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = self;
  v18.size.height = a2;
  UIRectFill(v18);
  v19.origin.x = self;
  v19.origin.y = a2;
  v19.size.width = self;
  v19.size.height = a2;
  UIRectFill(v19);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (!ImageFromCurrentImageContext)
  {
    return 0;
  }

  v13 = MEMORY[0x277D75348];

  return [v13 colorWithPatternImage:ImageFromCurrentImageContext];
}

+ (id)grayCheckerboardColor
{
  result = grayCheckerboardColor_sColor;
  if (!grayCheckerboardColor_sColor)
  {
    darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
    result = [self checkerboardColorWithColor:darkGrayColor andColor:objc_msgSend(MEMORY[0x277D75348] squareSize:{"lightGrayColor"), 16.0, 16.0}];
    grayCheckerboardColor_sColor = result;
  }

  return result;
}

+ (id)transparentGrayCheckerboardColor
{
  result = transparentGrayCheckerboardColor_sColor;
  if (!transparentGrayCheckerboardColor_sColor)
  {
    v3 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.25];
    result = [self checkerboardColorWithColor:v3 andColor:objc_msgSend(MEMORY[0x277D75348] squareSize:{"colorWithWhite:alpha:", 0.0, 0.25), 16.0, 16.0}];
    transparentGrayCheckerboardColor_sColor = result;
  }

  return result;
}

+ (uint64_t)tableViewCellDarkBlueTextColor
{
  result = tableViewCellDarkBlueTextColor_sColor;
  if (!tableViewCellDarkBlueTextColor_sColor)
  {
    result = [objc_alloc(MEMORY[0x277D75348]) initWithRed:0.219607843 green:0.329411765 blue:0.529411765 alpha:1.0];
    tableViewCellDarkBlueTextColor_sColor = result;
  }

  return result;
}

@end