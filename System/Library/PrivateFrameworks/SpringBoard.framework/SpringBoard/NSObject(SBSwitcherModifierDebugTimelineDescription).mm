@interface NSObject(SBSwitcherModifierDebugTimelineDescription)
- (id)sb_switcherModifierDebugTimelineDescription;
@end

@implementation NSObject(SBSwitcherModifierDebugTimelineDescription)

- (id)sb_switcherModifierDebugTimelineDescription
{
  if (objc_opt_respondsToSelector())
  {
    [a1 succinctDescription];
  }

  else
  {
    [a1 description];
  }
  v2 = ;

  return v2;
}

@end