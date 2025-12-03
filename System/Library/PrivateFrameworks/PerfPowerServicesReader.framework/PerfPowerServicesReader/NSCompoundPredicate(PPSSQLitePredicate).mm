@interface NSCompoundPredicate(PPSSQLitePredicate)
- (id)pps_sqlPredicateForSelect;
@end

@implementation NSCompoundPredicate(PPSSQLitePredicate)

- (id)pps_sqlPredicateForSelect
{
  v23 = *MEMORY[0x277D85DE8];
  subpredicates = [self subpredicates];
  v3 = [subpredicates count];

  if (v3)
  {
    compoundPredicateType = [self compoundPredicateType];
    if (!compoundPredicateType)
    {
      subpredicates2 = [self subpredicates];
      v15 = [subpredicates2 objectAtIndexedSubscript:0];
      pps_sqlPredicateForSelect = [v15 pps_sqlPredicateForSelect];

      if (!pps_sqlPredicateForSelect)
      {
        v3 = 0;
        goto LABEL_19;
      }

      v13 = [PPSSQLiteCompoundPredicate negatedPredicate:pps_sqlPredicateForSelect];
LABEL_18:
      v3 = v13;
LABEL_19:

      goto LABEL_21;
    }

    v5 = compoundPredicateType;
    pps_sqlPredicateForSelect = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    subpredicates3 = [self subpredicates];
    v8 = [subpredicates3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(subpredicates3);
          }

          pps_sqlPredicateForSelect2 = [*(*(&v18 + 1) + 8 * i) pps_sqlPredicateForSelect];
          if (pps_sqlPredicateForSelect2)
          {
            [pps_sqlPredicateForSelect addObject:pps_sqlPredicateForSelect2];
          }
        }

        v9 = [subpredicates3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    if (v5 == 2)
    {
      v13 = [PPSSQLiteCompoundPredicate predicateMatchingAnyPredicates:pps_sqlPredicateForSelect];
      goto LABEL_18;
    }

    if (v5 == 1)
    {
      v13 = [PPSSQLiteCompoundPredicate predicateMatchingAllPredicates:pps_sqlPredicateForSelect];
      goto LABEL_18;
    }

    v3 = 0;
  }

LABEL_21:
  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

@end