@interface NSSet(SBSwitcherModifierDebugTimelineDescription)
- (__CFString)sb_switcherModifierDebugTimelineDescription;
@end

@implementation NSSet(SBSwitcherModifierDebugTimelineDescription)

- (__CFString)sb_switcherModifierDebugTimelineDescription
{
  if ([a1 count])
  {
    v2 = [a1 bs_map:&__block_literal_global_592];
    v3 = MEMORY[0x277CCACA8];
    v4 = [a1 count];
    v5 = [a1 count];
    v6 = &stru_283094718;
    if (v5 > 1)
    {
      v6 = @"s";
    }

    v7 = [v3 stringWithFormat:@"%lu object%@:\n%@", v4, v6, v2];
  }

  else
  {
    v7 = @"(Empty set)";
  }

  return v7;
}

@end