@interface NSArray(SBHistorianDescription)
- (__CFString)sb_switcherModifierDebugTimelineDescription;
@end

@implementation NSArray(SBHistorianDescription)

- (__CFString)sb_switcherModifierDebugTimelineDescription
{
  if ([self count])
  {
    v2 = objc_opt_new();
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __78__NSArray_SBHistorianDescription__sb_switcherModifierDebugTimelineDescription__block_invoke;
    v13 = &unk_2783C0540;
    v14 = v2;
    v3 = v2;
    [self enumerateObjectsUsingBlock:&v10];
    v4 = MEMORY[0x277CCACA8];
    v5 = [self count];
    v6 = [self count];
    v7 = &stru_283094718;
    if (v6 > 1)
    {
      v7 = @"s";
    }

    v8 = [v4 stringWithFormat:@"%lu object%@:\n%@", v5, v7, v3, v10, v11, v12, v13];
  }

  else
  {
    v8 = @"(Empty array)";
  }

  return v8;
}

@end