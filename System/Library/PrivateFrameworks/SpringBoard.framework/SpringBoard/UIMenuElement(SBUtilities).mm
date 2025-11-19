@interface UIMenuElement(SBUtilities)
- (id)sb_children;
- (id)sb_descendantsPassingTest:()SBUtilities;
- (id)sb_descendantsPassingTest:()SBUtilities passedSoFar:;
- (id)sb_searchResultsExcludingClasses:()SBUtilities passingTest:;
- (id)sb_searchResultsExcludingClasses:()SBUtilities passingTest:breadcrumbs:passedSoFar:;
- (id)sb_titleString;
- (uint64_t)sb_containsElementPassingTest:()SBUtilities;
- (uint64_t)sb_isInlineMenu;
@end

@implementation UIMenuElement(SBUtilities)

- (uint64_t)sb_containsElementPassingTest:()SBUtilities
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4[2](v4, a1))
  {
    v5 = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [a1 sb_children];
    v5 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v10 + 1) + 8 * i) sb_containsElementPassingTest:v4])
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

- (id)sb_descendantsPassingTest:()SBUtilities
{
  v3 = [a1 sb_descendantsPassingTest:a3 passedSoFar:0];
  v4 = [v3 copy];

  return v4;
}

- (id)sb_descendantsPassingTest:()SBUtilities passedSoFar:
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
  }

  if (v6[2](v6, a1))
  {
    [v7 addObject:a1];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [a1 sb_children];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) sb_descendantsPassingTest:v6 passedSoFar:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)sb_searchResultsExcludingClasses:()SBUtilities passingTest:
{
  v4 = [a1 sb_searchResultsExcludingClasses:a3 passingTest:a4 breadcrumbs:0 passedSoFar:0];
  v5 = [v4 copy];

  return v5;
}

- (id)sb_searchResultsExcludingClasses:()SBUtilities passingTest:breadcrumbs:passedSoFar:
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v12)
  {
    v13 = v12;
    v14 = a5;
  }

  else
  {
    v15 = MEMORY[0x277CBEB18];
    v16 = a5;
    v13 = [v15 array];
  }

  v17 = MEMORY[0x277CBEBF8];
  if (a5)
  {
    v17 = a5;
  }

  v18 = v17;

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __99__UIMenuElement_SBUtilities__sb_searchResultsExcludingClasses_passingTest_breadcrumbs_passedSoFar___block_invoke;
  v41[3] = &unk_2783B2670;
  v41[4] = a1;
  if (([v10 bs_containsObjectPassingTest:v41] & 1) == 0)
  {
    v19 = [a1 sb_titleString];
    v20 = v11[2](v11, v19);

    if (v20)
    {
      v21 = [a1 copy];
      v22 = [a1 sb_titleString];
      v23 = [v18 arrayByAddingObject:v22];

      v24 = objc_alloc(MEMORY[0x277CCA898]);
      v25 = [v23 componentsJoinedByString:@" ⏵ "];
      v26 = [v24 initWithString:v25];
      [v21 setAttributedTitle:v26];

      [v13 addObject:v21];
    }
  }

  v27 = [a1 sb_titleString];
  if ([v27 length])
  {
    if ([a1 sb_isInlineMenu])
    {
      v28 = [v18 count];

      if (v28)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v27 = [a1 sb_titleString];
    v29 = [v18 arrayByAddingObject:v27];

    v18 = v29;
  }

LABEL_16:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = [a1 sb_children];
  v31 = [v30 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v38;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v37 + 1) + 8 * i) sb_searchResultsExcludingClasses:v10 passingTest:v11 breadcrumbs:v18 passedSoFar:v13];
      }

      v32 = [v30 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v32);
  }

  return v13;
}

- (uint64_t)sb_isInlineMenu
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [a1 options] & 1;
  }

  else
  {
    return 0;
  }
}

- (id)sb_titleString
{
  v2 = [a1 attributedTitle];
  v3 = [v2 string];
  if ([v3 length])
  {
    v4 = [a1 attributedTitle];
    v5 = [v4 string];
  }

  else
  {
    v5 = [a1 title];
  }

  return v5;
}

- (id)sb_children
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 children];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

@end