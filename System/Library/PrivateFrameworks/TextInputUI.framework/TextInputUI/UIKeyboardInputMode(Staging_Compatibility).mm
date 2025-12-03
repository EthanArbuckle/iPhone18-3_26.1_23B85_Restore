@interface UIKeyboardInputMode(Staging_Compatibility)
- (id)safe__extendedDisplayName;
@end

@implementation UIKeyboardInputMode(Staging_Compatibility)

- (id)safe__extendedDisplayName
{
  if (objc_opt_respondsToSelector())
  {
    [self extendedDisplayName];
  }

  else
  {
    [self displayName];
  }
  v2 = ;

  return v2;
}

@end