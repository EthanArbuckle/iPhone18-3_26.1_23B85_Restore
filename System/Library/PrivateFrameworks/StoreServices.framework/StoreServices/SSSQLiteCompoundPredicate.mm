@interface SSSQLiteCompoundPredicate
+ (id)predicateMatchingAllPredicates:(id)a3;
+ (id)predicateMatchingAnyPredicates:(id)a3;
+ (id)predicateWithProperty:(id)a3 values:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)SQLJoinClausesForEntityClass:(Class)a3;
- (unint64_t)hash;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
- (void)dealloc;
@end

@implementation SSSQLiteCompoundPredicate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSQLiteCompoundPredicate;
  [(SSSQLiteCompoundPredicate *)&v3 dealloc];
}

+ (id)predicateMatchingAllPredicates:(id)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = @" AND ";
  v4[2] = [a3 copy];

  return v4;
}

+ (id)predicateMatchingAnyPredicates:(id)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = @" OR ";
  v4[2] = [a3 copy];

  return v4;
}

+ (id)predicateWithProperty:(id)a3 values:(id)a4 comparisonType:(int64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [a4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(a4);
        }

        [v9 addObject:{+[SSSQLiteComparisonPredicate predicateWithProperty:value:comparisonType:](SSSQLiteComparisonPredicate, "predicateWithProperty:value:comparisonType:", a3, *(*(&v16 + 1) + 8 * v13++), a5)}];
      }

      while (v11 != v13);
      v11 = [a4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [a1 predicateMatchingAnyPredicates:v9];

  return v14;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  predicates = self->_predicates;
  v7 = [(NSArray *)predicates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(predicates);
        }

        [*(*(&v11 + 1) + 8 * i) bindToStatement:a3 bindingIndex:a4];
      }

      v8 = [(NSArray *)predicates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = SSSQLiteCompoundPredicate;
  v3 = [(SSSQLitePredicate *)&v6 hash];
  v4 = [(NSString *)self->_combinationOperation hash];
  return v3 + [(NSArray *)[(SSSQLiteCompoundPredicate *)self predicates] hash]+ v4;
}

- (BOOL)isEqual:(id)a3
{
  v9.receiver = self;
  v9.super_class = SSSQLiteCompoundPredicate;
  v5 = [(SSSQLitePredicate *)&v9 isEqual:?];
  if (v5)
  {
    combinationOperation = self->_combinationOperation;
    if (combinationOperation == *(a3 + 1) || (v5 = [(NSString *)combinationOperation isEqual:?]) != 0)
    {
      predicates = self->_predicates;
      if (predicates == [a3 predicates])
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v5) = -[NSArray isEqual:](self->_predicates, "isEqual:", [a3 predicates]);
      }
    }
  }

  return v5;
}

- (id)SQLForEntityClass:(Class)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(NSArray *)self->_predicates count];
  v6 = MEMORY[0x1E696AD60];
  if (v5)
  {
    v7 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    predicates = self->_predicates;
    v9 = [(NSArray *)predicates countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(predicates);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) SQLForEntityClass:a3];
          if (v13)
          {
            v14 = v13;
            if ([v7 length] >= 2)
            {
              [v7 appendString:self->_combinationOperation];
            }

            [v7 appendString:v14];
          }
        }

        v10 = [(NSArray *)predicates countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v7 appendString:@""]);
    return v7;
  }

  else
  {

    return [v6 stringWithString:@"1"];
  }
}

- (id)SQLJoinClausesForEntityClass:(Class)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  predicates = self->_predicates;
  v5 = [(NSArray *)predicates countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v14;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(predicates);
      }

      v10 = [*(*(&v13 + 1) + 8 * i) SQLJoinClausesForEntityClass:a3];
      if (v10)
      {
        v11 = v10;
        if (!v7)
        {
          v7 = [MEMORY[0x1E695DFA8] set];
        }

        [v7 unionSet:v11];
      }
    }

    v6 = [(NSArray *)predicates countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v6);
  return v7;
}

@end