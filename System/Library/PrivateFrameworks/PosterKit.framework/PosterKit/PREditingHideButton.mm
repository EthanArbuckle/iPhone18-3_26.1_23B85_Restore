@interface PREditingHideButton
+ (id)editingTitledButtonSymbolName:(BOOL)name;
@end

@implementation PREditingHideButton

+ (id)editingTitledButtonSymbolName:(BOOL)name
{
  if (name)
  {
    return @"eye.slash.fill";
  }

  else
  {
    return @"eye.fill";
  }
}

@end