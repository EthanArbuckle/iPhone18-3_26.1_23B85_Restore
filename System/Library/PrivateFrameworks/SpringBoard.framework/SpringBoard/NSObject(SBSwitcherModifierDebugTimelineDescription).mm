@interface NSObject(SBSwitcherModifierDebugTimelineDescription)
- (id)sb_switcherModifierDebugTimelineDescription;
@end

@implementation NSObject(SBSwitcherModifierDebugTimelineDescription)

- (id)sb_switcherModifierDebugTimelineDescription
{
  if (objc_opt_respondsToSelector())
  {
    [self succinctDescription];
  }

  else
  {
    [self description];
  }
  v2 = ;

  return v2;
}

@end