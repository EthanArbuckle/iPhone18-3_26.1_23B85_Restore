@interface UIKeyboardInputMode(Staging_Compatibility)
- (id)safe__extendedDisplayName;
@end

@implementation UIKeyboardInputMode(Staging_Compatibility)

- (id)safe__extendedDisplayName
{
  if (objc_opt_respondsToSelector())
  {
    [a1 extendedDisplayName];
  }

  else
  {
    [a1 displayName];
  }
  v2 = ;

  return v2;
}

@end