@interface NSDictionary(SBSwitcherModifierDebugTimelineDescription)
- (__CFString)sb_switcherModifierDebugTimelineDescription;
@end

@implementation NSDictionary(SBSwitcherModifierDebugTimelineDescription)

- (__CFString)sb_switcherModifierDebugTimelineDescription
{
  v22 = *MEMORY[0x277D85DE8];
  if ([self count])
  {
    v2 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    selfCopy = self;
    v4 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(selfCopy);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [selfCopy objectForKey:v8];
          sb_switcherModifierDebugTimelineDescription = [v9 sb_switcherModifierDebugTimelineDescription];
          [v2 setObject:sb_switcherModifierDebugTimelineDescription forKey:v8];
        }

        v5 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [selfCopy count];
    v13 = [selfCopy count];
    v14 = &stru_283094718;
    if (v13 > 1)
    {
      v14 = @"s";
    }

    v15 = [v11 stringWithFormat:@"%lu object%@:\n%@", v12, v14, v2];
  }

  else
  {
    v15 = @"(Empty dict)";
  }

  return v15;
}

@end