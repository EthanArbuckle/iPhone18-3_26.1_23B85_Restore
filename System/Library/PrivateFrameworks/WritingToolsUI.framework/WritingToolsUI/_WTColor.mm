@interface _WTColor
+ (_WTColor)platformTextColor;
@end

@implementation _WTColor

+ (_WTColor)platformTextColor
{
  v2 = objc_opt_class();

  return [v2 grayColor];
}

@end