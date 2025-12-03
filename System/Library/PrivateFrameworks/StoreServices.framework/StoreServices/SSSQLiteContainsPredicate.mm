@interface SSSQLiteContainsPredicate
+ (id)containsPredicateWithProperty:(id)property query:(id)query queryProperty:(id)queryProperty;
+ (id)containsPredicateWithProperty:(id)property values:(id)values;
+ (id)doesNotContainPredicateWithProperty:(id)property values:(id)values;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
- (void)dealloc;
@end

@implementation SSSQLiteContainsPredicate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSQLiteContainsPredicate;
  [(SSSQLitePropertyPredicate *)&v3 dealloc];
}

+ (id)containsPredicateWithProperty:(id)property values:(id)values
{
  v6 = objc_alloc_init(objc_opt_class());
  v6[1] = [property copy];
  *(v6 + 16) = 0;
  v6[5] = [values copy];

  return v6;
}

+ (id)containsPredicateWithProperty:(id)property query:(id)query queryProperty:(id)queryProperty
{
  v8 = objc_alloc_init(objc_opt_class());
  v8[1] = [property copy];
  *(v8 + 16) = 0;
  v8[3] = query;
  v8[4] = [queryProperty copy];

  return v8;
}

+ (id)doesNotContainPredicateWithProperty:(id)property values:(id)values
{
  v6 = objc_alloc_init(objc_opt_class());
  v6[1] = [property copy];
  *(v6 + 16) = 1;
  v6[5] = [values copy];

  return v6;
}

- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
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

          SSSQLiteBindFoundationValueToStatement(statement, *index, *(*(&v12 + 1) + 8 * i));
          ++*index;
        }

        v9 = [values countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  v10.receiver = self;
  v10.super_class = SSSQLiteContainsPredicate;
  v5 = [(SSSQLitePropertyPredicate *)&v10 isEqual:?];
  if (v5)
  {
    isNegative = [(SSSQLiteContainsPredicate *)self isNegative];
    if (isNegative == [equal isNegative])
    {
      values = [(SSSQLiteContainsPredicate *)self values];
      if (values == [equal values] || (v5 = -[NSArray isEqual:](-[SSSQLiteContainsPredicate values](self, "values"), "isEqual:", objc_msgSend(equal, "values"))) != 0)
      {
        query = [(SSSQLiteContainsPredicate *)self query];
        if (query == [equal query])
        {
          LOBYTE(v5) = 1;
        }

        else
        {
          LOBYTE(v5) = -[SSSQLiteQuery isEqual:](-[SSSQLiteContainsPredicate query](self, "query"), "isEqual:", [equal query]);
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

- (id)SQLForEntityClass:(Class)class
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [(objc_class *)class disambiguatedSQLForProperty:[(SSSQLitePropertyPredicate *)self property]];
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