@interface PPSSQLiteCompoundPredicate
+ (id)negatedPredicate:(id)predicate;
+ (id)predicateMatchingAllPredicates:(id)predicates;
+ (id)predicateMatchingAnyPredicates:(id)predicates;
+ (id)predicateWithProperty:(id)property equalToValues:(id)values;
+ (id)predicateWithProperty:(id)property notEqualToValues:(id)values;
+ (id)predicateWithProperty:(id)property values:(id)values comparisonType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)sqlForEntity:(id)entity;
- (id)sqlJoinClausesForEntity:(id)entity;
- (unint64_t)hash;
- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
@end

@implementation PPSSQLiteCompoundPredicate

+ (id)predicateMatchingAllPredicates:(id)predicates
{
  v23 = *MEMORY[0x277D85DE8];
  predicatesCopy = predicates;
  if ([predicatesCopy count] == 1)
  {
    firstObject = [predicatesCopy firstObject];
    goto LABEL_16;
  }

  v3 = objc_alloc_init(objc_opt_class());
  v3[16] = 0;
  v3[17] = 1;
  v4 = *(v3 + 3);
  firstObject = v3;
  *(v3 + 3) = @" AND ";

  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = predicatesCopy;
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
          [array addObjectsFromArray:*(v11 + 4)];

          continue;
        }
      }

      [array addObject:{v10, firstObject}];
    }

    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);
LABEL_15:

  v12 = [array copy];
  v13 = firstObject[4];
  firstObject[4] = v12;

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)predicateMatchingAnyPredicates:(id)predicates
{
  v23 = *MEMORY[0x277D85DE8];
  predicatesCopy = predicates;
  if ([predicatesCopy count] == 1)
  {
    firstObject = [predicatesCopy firstObject];
    goto LABEL_16;
  }

  v3 = objc_alloc_init(objc_opt_class());
  v3[16] = 0;
  v3[17] = 0;
  v4 = *(v3 + 3);
  firstObject = v3;
  *(v3 + 3) = @" OR ";

  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = predicatesCopy;
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
          [array addObjectsFromArray:*(v11 + 4)];

          continue;
        }
      }

      [array addObject:{v10, firstObject}];
    }

    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);
LABEL_15:

  v12 = [array copy];
  v13 = firstObject[4];
  firstObject[4] = v12;

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)negatedPredicate:(id)predicate
{
  v10[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v4 = objc_alloc_init(objc_opt_class());
    v4[16] = 1;
    v5 = *(v4 + 3);
    *(v4 + 3) = @"NOT ";

    v10[0] = predicateCopy;
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

+ (id)predicateWithProperty:(id)property values:(id)values comparisonType:(int64_t)type
{
  v24 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  valuesCopy = values;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = valuesCopy;
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

        v14 = [PPSSQLiteComparisonPredicate predicateWithProperty:propertyCopy value:*(*(&v19 + 1) + 8 * i) comparisonType:type];
        [v9 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v15 = [self predicateMatchingAnyPredicates:v9];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)predicateWithProperty:(id)property equalToValues:(id)values
{
  v4 = [self predicateWithProperty:property values:values comparisonType:1];

  return v4;
}

+ (id)predicateWithProperty:(id)property notEqualToValues:(id)values
{
  v5 = [self predicateWithProperty:property equalToValues:values];
  v6 = [self negatedPredicate:v5];

  return v6;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = PPSSQLiteCompoundPredicate;
  v3 = [(PPSSQLitePropertyPredicate *)&v8 hash];
  v4 = [(NSString *)self->_combineOperator hash];
  predicates = [(PPSSQLiteCompoundPredicate *)self predicates];
  v6 = [predicates hash];

  return v3 + v4 + v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = PPSSQLiteCompoundPredicate;
  if ([(PPSSQLitePropertyPredicate *)&v12 isEqual:equalCopy]&& ((combineOperator = self->_combineOperator, combineOperator == equalCopy[3]) || [(NSString *)combineOperator isEqual:?]))
  {
    predicates = [(PPSSQLiteCompoundPredicate *)self predicates];
    predicates2 = [equalCopy predicates];
    if (predicates == predicates2)
    {
      v10 = 1;
    }

    else
    {
      predicates3 = [(PPSSQLiteCompoundPredicate *)self predicates];
      predicates4 = [equalCopy predicates];
      v10 = [predicates3 isEqual:predicates4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  predicates = [(PPSSQLiteCompoundPredicate *)self predicates];
  v7 = [predicates countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(predicates);
        }

        [*(*(&v11 + 1) + 8 * v9++) bindToStatement:statement bindingIndex:index];
      }

      while (v7 != v9);
      v7 = [predicates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)sqlForEntity:(id)entity
{
  v25 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  predicates = [(PPSSQLiteCompoundPredicate *)self predicates];
  v6 = [predicates count];

  if (v6)
  {
    v7 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
    v8 = v7;
    if (self->_unary)
    {
      [v7 appendString:self->_combineOperator];
      predicates2 = [(PPSSQLiteCompoundPredicate *)self predicates];
      v10 = [predicates2 objectAtIndexedSubscript:0];

      v11 = [v10 sqlForEntity:entityCopy];
      [v8 appendString:v11];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      predicates3 = [(PPSSQLiteCompoundPredicate *)self predicates];
      v14 = [predicates3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        v15 = *v21;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(predicates3);
            }

            v17 = [*(*(&v20 + 1) + 8 * i) sqlForEntity:entityCopy];
            if (v17)
            {
              if ([v8 length] >= 2)
              {
                [v8 appendString:self->_combineOperator];
              }

              [v8 appendString:v17];
            }
          }

          v14 = [predicates3 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)sqlJoinClausesForEntity:(id)entity
{
  v18 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  predicates = [(PPSSQLiteCompoundPredicate *)self predicates];
  v6 = 0;
  v7 = [predicates countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(predicates);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) sqlJoinClausesForEntity:entityCopy];
        if (v10)
        {
          if (!v6)
          {
            v6 = [MEMORY[0x277CBEB58] set];
          }

          [v6 unionSet:v10];
        }
      }

      v7 = [predicates countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  predicates = [(PPSSQLiteCompoundPredicate *)self predicates];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(predicates, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  predicates2 = [(PPSSQLiteCompoundPredicate *)self predicates];
  v7 = [predicates2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(predicates2);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) description];
        [v5 addObject:v10];
      }

      v7 = [predicates2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [v5 componentsJoinedByString:{@", \n\t"}];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@:\n\t%@\n}", self->_combineOperator, v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end