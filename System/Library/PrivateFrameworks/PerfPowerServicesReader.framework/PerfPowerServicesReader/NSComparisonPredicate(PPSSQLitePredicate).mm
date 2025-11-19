@interface NSComparisonPredicate(PPSSQLitePredicate)
- (id)_checkTypeForValue:()PPSSQLitePredicate inKeyPath:;
- (id)pps_sqlPredicateForSelect;
@end

@implementation NSComparisonPredicate(PPSSQLitePredicate)

- (id)pps_sqlPredicateForSelect
{
  v2 = [a1 leftExpression];
  v3 = [a1 rightExpression];
  v4 = [a1 predicateOperatorType];
  if (v4 > 3)
  {
    if (v4 > 6)
    {
      if (v4 == 7)
      {
        v5 = 0;
        v6 = 7;
      }

      else
      {
        if (v4 != 10)
        {
          goto LABEL_37;
        }

        v5 = 1;
        v6 = 8;
      }
    }

    else if (v4 == 4)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      if (v4 != 5)
      {
        goto LABEL_37;
      }

      v5 = 0;
      v6 = 2;
    }

LABEL_19:
    if ([v2 expressionType] == 3)
    {
      [v2 keyPath];
    }

    else
    {
      [v2 description];
    }
    v7 = ;
    v8 = [v3 expressionType];
    if (v8)
    {
      v9 = v5 ^ 1;
      if (v8 != 14)
      {
        v9 = 1;
      }

      if (v9)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unexpected constant value in right side of comparison expression: %@", a1}];
        v11 = 0;
        goto LABEL_30;
      }

      v10 = [v3 collection];
    }

    else
    {
      v10 = [v3 constantValue];
    }

    v11 = v10;
LABEL_30:
    v12 = [a1 _checkTypeForValue:v11 inKeyPath:v7];

    if (v5)
    {
      [PPSSQLiteContainsPredicate containsPredicateWithProperty:v7 values:v12];
    }

    else
    {
      [PPSSQLiteComparisonPredicate predicateWithProperty:v7 value:v12 comparisonType:v6];
    }
    v13 = ;

    goto LABEL_34;
  }

  if (v4 > 1)
  {
    v5 = 0;
    if (v4 == 2)
    {
      v6 = 5;
    }

    else
    {
      v6 = 6;
    }

    goto LABEL_19;
  }

  if (!v4)
  {
    v5 = 0;
    v6 = 3;
    goto LABEL_19;
  }

  if (v4 == 1)
  {
    v5 = 0;
    v6 = 4;
    goto LABEL_19;
  }

LABEL_37:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported operator type in comparison expression: %@", a1}];
  v13 = 0;
LABEL_34:

  return v13;
}

- (id)_checkTypeForValue:()PPSSQLitePredicate inKeyPath:
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
LABEL_3:
      v4 = v3;
LABEL_16:
      v6 = v4;
      goto LABEL_17;
    }

LABEL_15:
    v4 = [MEMORY[0x277CBEB68] null];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      v5 = MEMORY[0x277CCABB0];
      [v3 timeIntervalSinceReferenceDate];
      v4 = [v5 numberWithDouble:?];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      v4 = [v3 UUIDString];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      v4 = [v3 absoluteString];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  if (![v3 conformsToProtocol:&unk_28702FB30])
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v15 expressionType])
        {
          v16 = [v15 constantValue];

          v15 = v16;
        }

        [v9 addObject:{v15, v17}];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v6 = [v9 allObjects];

LABEL_17:
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end