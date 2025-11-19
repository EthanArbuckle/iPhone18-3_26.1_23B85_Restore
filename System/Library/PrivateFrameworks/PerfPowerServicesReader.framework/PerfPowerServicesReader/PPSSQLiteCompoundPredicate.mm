@interface PPSSQLiteCompoundPredicate
+ (id)negatedPredicate:(id)a3;
+ (id)predicateMatchingAllPredicates:(id)a3;
+ (id)predicateMatchingAnyPredicates:(id)a3;
+ (id)predicateWithProperty:(id)a3 equalToValues:(id)a4;
+ (id)predicateWithProperty:(id)a3 notEqualToValues:(id)a4;
+ (id)predicateWithProperty:(id)a3 values:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)sqlForEntity:(id)a3;
- (id)sqlJoinClausesForEntity:(id)a3;
- (unint64_t)hash;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation PPSSQLiteCompoundPredicate

+ (id)predicateMatchingAllPredicates:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a3;
  if ([v17 count] == 1)
  {
    v16 = [v17 firstObject];
    goto LABEL_16;
  }

  v3 = objc_alloc_init(objc_opt_class());
  v3[16] = 0;
  v3[17] = 1;
  v4 = *(v3 + 3);
  v16 = v3;
  *(v3 + 3) = @" AND ";

  v5 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v17;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = *v19;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v18 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        if ([*(v11 + 3) isEqualToString:@" AND "])
        {
          [v5 addObjectsFromArray:*(v11 + 4)];

          continue;
        }
      }

      [v5 addObject:{v10, v16}];
    }

    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);
LABEL_15:

  v12 = [v5 copy];
  v13 = v16[4];
  v16[4] = v12;

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)predicateMatchingAnyPredicates:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a3;
  if ([v17 count] == 1)
  {
    v16 = [v17 firstObject];
    goto LABEL_16;
  }

  v3 = objc_alloc_init(objc_opt_class());
  v3[16] = 0;
  v3[17] = 0;
  v4 = *(v3 + 3);
  v16 = v3;
  *(v3 + 3) = @" OR ";

  v5 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v17;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = *v19;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v18 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        if ([*(v11 + 3) isEqualToString:@" OR "])
        {
          [v5 addObjectsFromArray:*(v11 + 4)];

          continue;
        }
      }

      [v5 addObject:{v10, v16}];
    }

    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);
LABEL_15:

  v12 = [v5 copy];
  v13 = v16[4];
  v16[4] = v12;

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)negatedPredicate:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(objc_opt_class());
    v4[16] = 1;
    v5 = *(v4 + 3);
    *(v4 + 3) = @"NOT ";

    v10[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = *(v4 + 4);
    *(v4 + 4) = v6;
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)predicateWithProperty:(id)a3 values:(id)a4 comparisonType:(int64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v18 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v18;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [PPSSQLiteComparisonPredicate predicateWithProperty:v8 value:*(*(&v19 + 1) + 8 * i) comparisonType:a5];
        [v9 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [a1 predicateMatchingAnyPredicates:v9];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)predicateWithProperty:(id)a3 equalToValues:(id)a4
{
  v4 = [a1 predicateWithProperty:a3 values:a4 comparisonType:1];

  return v4;
}

+ (id)predicateWithProperty:(id)a3 notEqualToValues:(id)a4
{
  v5 = [a1 predicateWithProperty:a3 equalToValues:a4];
  v6 = [a1 negatedPredicate:v5];

  return v6;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = PPSSQLiteCompoundPredicate;
  v3 = [(PPSSQLitePropertyPredicate *)&v8 hash];
  v4 = [(NSString *)self->_combineOperator hash];
  v5 = [(PPSSQLiteCompoundPredicate *)self predicates];
  v6 = [v5 hash];

  return v3 + v4 + v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PPSSQLiteCompoundPredicate;
  if ([(PPSSQLitePropertyPredicate *)&v12 isEqual:v4]&& ((combineOperator = self->_combineOperator, combineOperator == v4[3]) || [(NSString *)combineOperator isEqual:?]))
  {
    v6 = [(PPSSQLiteCompoundPredicate *)self predicates];
    v7 = [v4 predicates];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(PPSSQLiteCompoundPredicate *)self predicates];
      v9 = [v4 predicates];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PPSSQLiteCompoundPredicate *)self predicates];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) bindToStatement:a3 bindingIndex:a4];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)sqlForEntity:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PPSSQLiteCompoundPredicate *)self predicates];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
    v8 = v7;
    if (self->_unary)
    {
      [v7 appendString:self->_combineOperator];
      v9 = [(PPSSQLiteCompoundPredicate *)self predicates];
      v10 = [v9 objectAtIndexedSubscript:0];

      v11 = [v10 sqlForEntity:v4];
      [v8 appendString:v11];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = [(PPSSQLiteCompoundPredicate *)self predicates];
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        v15 = *v21;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = [*(*(&v20 + 1) + 8 * i) sqlForEntity:v4];
            if (v17)
            {
              if ([v8 length] >= 2)
              {
                [v8 appendString:self->_combineOperator];
              }

              [v8 appendString:v17];
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }
    }

    [v8 appendString:@""]);
  }

  else
  {
    if (self->_trueIfNoPredicates)
    {
      v12 = @"1";
    }

    else
    {
      v12 = @"0";
    }

    v8 = [MEMORY[0x277CCAB68] stringWithString:v12];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)sqlJoinClausesForEntity:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(PPSSQLiteCompoundPredicate *)self predicates];
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) sqlJoinClausesForEntity:v4];
        if (v10)
        {
          if (!v6)
          {
            v6 = [MEMORY[0x277CBEB58] set];
          }

          [v6 unionSet:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)description
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(PPSSQLiteCompoundPredicate *)self predicates];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PPSSQLiteCompoundPredicate *)self predicates];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) description];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v5 componentsJoinedByString:{@", \n\t"}];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@:\n\t%@\n}", self->_combineOperator, v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end