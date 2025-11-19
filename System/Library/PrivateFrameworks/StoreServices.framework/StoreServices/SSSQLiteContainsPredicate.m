@interface SSSQLiteContainsPredicate
+ (id)containsPredicateWithProperty:(id)a3 query:(id)a4 queryProperty:(id)a5;
+ (id)containsPredicateWithProperty:(id)a3 values:(id)a4;
+ (id)doesNotContainPredicateWithProperty:(id)a3 values:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)SQLForEntityClass:(Class)a3;
- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4;
- (void)dealloc;
@end

@implementation SSSQLiteContainsPredicate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSQLiteContainsPredicate;
  [(SSSQLitePropertyPredicate *)&v3 dealloc];
}

+ (id)containsPredicateWithProperty:(id)a3 values:(id)a4
{
  v6 = objc_alloc_init(objc_opt_class());
  v6[1] = [a3 copy];
  *(v6 + 16) = 0;
  v6[5] = [a4 copy];

  return v6;
}

+ (id)containsPredicateWithProperty:(id)a3 query:(id)a4 queryProperty:(id)a5
{
  v8 = objc_alloc_init(objc_opt_class());
  v8[1] = [a3 copy];
  *(v8 + 16) = 0;
  v8[3] = a4;
  v8[4] = [a5 copy];

  return v8;
}

+ (id)doesNotContainPredicateWithProperty:(id)a3 values:(id)a4
{
  v6 = objc_alloc_init(objc_opt_class());
  v6[1] = [a3 copy];
  *(v6 + 16) = 1;
  v6[5] = [a4 copy];

  return v6;
}

- (void)bindToStatement:(sqlite3_stmt *)a3 bindingIndex:(int *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_query)
  {
    query = self->_query;

    [SSSQLiteQuery bindToSelectStatement:"bindToSelectStatement:bindingIndex:" bindingIndex:?];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    values = self->_values;
    v8 = [values countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(values);
          }

          SSSQLiteBindFoundationValueToStatement(a3, *a4, *(*(&v12 + 1) + 8 * i));
          ++*a4;
        }

        v9 = [values countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v10.receiver = self;
  v10.super_class = SSSQLiteContainsPredicate;
  v5 = [(SSSQLitePropertyPredicate *)&v10 isEqual:?];
  if (v5)
  {
    v6 = [(SSSQLiteContainsPredicate *)self isNegative];
    if (v6 == [a3 isNegative])
    {
      v7 = [(SSSQLiteContainsPredicate *)self values];
      if (v7 == [a3 values] || (v5 = -[NSArray isEqual:](-[SSSQLiteContainsPredicate values](self, "values"), "isEqual:", objc_msgSend(a3, "values"))) != 0)
      {
        v8 = [(SSSQLiteContainsPredicate *)self query];
        if (v8 == [a3 query])
        {
          LOBYTE(v5) = 1;
        }

        else
        {
          LOBYTE(v5) = -[SSSQLiteQuery isEqual:](-[SSSQLiteContainsPredicate query](self, "query"), "isEqual:", [a3 query]);
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)SQLForEntityClass:(Class)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [(objc_class *)a3 disambiguatedSQLForProperty:[(SSSQLitePropertyPredicate *)self property]];
  v5 = [MEMORY[0x1E696AD60] stringWithString:v4];
  v6 = v5;
  if (self->_negative)
  {
    v7 = CFSTR(" NOT IN (");
  }

  else
  {
    v7 = CFSTR(" IN (");
  }

  [v5 appendString:v7];
  query = self->_query;
  if (query)
  {
    v15[0] = self->_queryProperty;
    v9 = [(SSSQLiteQuery *)query copySelectSQLWithProperties:v15 count:1];
    if (v9)
    {
      v10 = v9;
      [v6 appendString:v9];
    }
  }

  else
  {
    v11 = [self->_values count];
    if (v11)
    {
      v12 = v11;
      [v6 appendString:@"?"];
      v13 = v12 - 1;
      if (v12 != 1)
      {
        do
        {
          [v6 appendString:{@", ?"}];
          --v13;
        }

        while (v13);
      }
    }
  }

  [v6 appendString:@""]);
  return v6;
}

@end