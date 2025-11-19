@interface SQLiteCompoundPredicate
+ (id)negatedPredicate:(id)a3;
+ (id)predicateMatchingAllPredicates:(id)a3;
+ (id)predicateMatchingAnyPredicates:(id)a3;
+ (id)predicateWithProperty:(id)a3 notEqualToValues:(id)a4;
+ (id)predicateWithProperty:(id)a3 values:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (id)SQLJoinClausesForEntityClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
@end

@implementation SQLiteCompoundPredicate

+ (id)predicateMatchingAllPredicates:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[8] = 0;
  v4[9] = 1;
  v5 = *(v4 + 2);
  *(v4 + 2) = @" AND ";

  v6 = [v3 copy];
  v7 = *(v4 + 3);
  *(v4 + 3) = v6;

  return v4;
}

+ (id)predicateMatchingAnyPredicates:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[8] = 0;
  v4[9] = 0;
  v5 = *(v4 + 2);
  *(v4 + 2) = @" OR ";

  v6 = [v3 copy];
  v7 = *(v4 + 3);
  *(v4 + 3) = v6;

  return v4;
}

+ (id)negatedPredicate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v4[8] = 1;
  v5 = *(v4 + 2);
  *(v4 + 2) = @"NOT ";

  v6 = [[NSArray alloc] initWithObjects:{v3, 0}];
  v7 = *(v4 + 3);
  *(v4 + 3) = v6;

  return v4;
}

+ (id)predicateWithProperty:(id)a3 values:(id)a4 comparisonType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [SQLiteComparisonPredicate predicateWithProperty:v8 value:*(*(&v19 + 1) + 8 * i) comparisonType:a5, v19];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [a1 predicateMatchingAnyPredicates:v10];

  return v17;
}

+ (id)predicateWithProperty:(id)a3 notEqualToValues:(id)a4
{
  v4 = [SQLiteCompoundPredicate predicateWithProperty:a3 equalToValues:a4];
  v5 = [SQLiteCompoundPredicate negatedPredicate:v4];

  return v5;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_unary)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  [v3 appendFormat:@"unary: %@; ", v5];
  if (self->_trueIfNoPredicates)
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  [v4 appendFormat:@"trueIfNoPredicates: %@; ", v6];
  [v4 appendFormat:@"combinationOperation: %@; ", self->_combinationOperation];
  [v4 appendFormat:@"predicates: %@; ", self->_predicates];
  [v4 appendFormat:@">"];

  return v4;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_predicates;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) bindToStatement:a3 bindingIndex:{a4, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = SQLiteCompoundPredicate;
  v3 = [(SQLitePredicate *)&v6 hash];
  v4 = &v3[[(NSString *)self->_combinationOperation hash]];
  return [(NSArray *)self->_predicates hash]+ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SQLiteCompoundPredicate;
  if ([(SQLitePredicate *)&v10 isEqual:v4])
  {
    v5 = v4;
    combinationOperation = self->_combinationOperation;
    if (combinationOperation == v5[2] || [(NSString *)combinationOperation isEqual:?])
    {
      predicates = self->_predicates;
      if (predicates == v5[3])
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSArray *)predicates isEqual:?];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)SQLForEntityClass:(Class)a3
{
  if ([(NSArray *)self->_predicates count])
  {
    v5 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"(");
    v6 = v5;
    if (self->_unary)
    {
      [v5 appendString:self->_combinationOperation];
      v7 = [(NSArray *)self->_predicates objectAtIndex:0];
      v8 = [v7 SQLForEntityClass:a3];
      [v6 appendString:v8];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = self->_predicates;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v17 + 1) + 8 * i) SQLForEntityClass:{a3, v17}];
            if (v15)
            {
              if ([v6 length] >= 2)
              {
                [v6 appendString:self->_combinationOperation];
              }

              [v6 appendString:v15];
            }
          }

          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }
    }

    [v6 appendString:@""], v17);
  }

  else
  {
    if (self->_trueIfNoPredicates)
    {
      v9 = @"1";
    }

    else
    {
      v9 = @"0";
    }

    v6 = [NSMutableString stringWithString:v9];
  }

  return v6;
}

- (id)SQLJoinClausesForEntityClass:(Class)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_predicates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) SQLJoinClausesForEntityClass:{a3, v12}];
        if (v10)
        {
          if (!v7)
          {
            v7 = +[NSMutableSet set];
          }

          [v7 unionSet:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end