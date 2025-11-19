@interface PREditingHideButton
+ (id)editingTitledButtonSymbolName:(BOOL)a3;
@end

@implementation PREditingHideButton

+ (id)editingTitledButtonSymbolName:(BOOL)a3
{
  if (a3)
  {
    return @"eye.slash.fill";
  }

  else
  {
    return @"eye.fill";
  }
}

@end