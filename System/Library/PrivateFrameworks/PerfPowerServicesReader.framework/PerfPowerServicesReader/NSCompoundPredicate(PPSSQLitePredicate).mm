@interface NSCompoundPredicate(PPSSQLitePredicate)
- (id)pps_sqlPredicateForSelect;
@end

@implementation NSCompoundPredicate(PPSSQLitePredicate)

- (id)pps_sqlPredicateForSelect
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1 subpredicates];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [a1 compoundPredicateType];
    if (!v4)
    {
      v14 = [a1 subpredicates];
      v15 = [v14 objectAtIndexedSubscript:0];
      v6 = [v15 pps_sqlPredicateForSelect];

      if (!v6)
      {
        v3 = 0;
        goto LABEL_19;
      }

      v13 = [PPSSQLiteCompoundPredicate negatedPredicate:v6];
LABEL_18:
      v3 = v13;
LABEL_19:

      goto LABEL_21;
    }

    v5 = v4;
    v6 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [a1 subpredicates];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) pps_sqlPredicateForSelect];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    if (v5 == 2)
    {
      v13 = [PPSSQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];
      goto LABEL_18;
    }

    if (v5 == 1)
    {
      v13 = [PPSSQLiteCompoundPredicate predicateMatchingAllPredicates:v6];
      goto LABEL_18;
    }

    v3 = 0;
  }

LABEL_21:
  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

@end