@interface SSSQLiteQueryDescriptor
- (id)_newSelectSQLWithProperties:(const void *)a3 count:(unint64_t)a4 columns:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation SSSQLiteQueryDescriptor

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSQLiteQueryDescriptor;
  [(SSSQLiteQueryDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_entityClass;
  *(v5 + 16) = self->_limitCount;
  *(v5 + 24) = self->_memoryEntityClass;
  *(v5 + 32) = [(NSString *)self->_orderingClause copyWithZone:a3];
  *(v5 + 40) = [(NSArray *)self->_orderingDirections copyWithZone:a3];
  *(v5 + 48) = [(NSArray *)self->_orderingProperties copyWithZone:a3];
  *(v5 + 56) = [(SSSQLitePredicate *)self->_predicate copyWithZone:a3];
  *(v5 + 64) = self->_returnsDistinctEntities;
  return v5;
}

- (id)_newSelectSQLWithProperties:(const void *)a3 count:(unint64_t)a4 columns:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT "];
  v10 = v9;
  if (self->_returnsDistinctEntities)
  {
    [v9 appendString:@"DISTINCT "];
  }

  [v10 appendString:{objc_msgSend(a5, "componentsJoinedByString:", @", ")}];
  [v10 appendFormat:@" FROM %@", -[objc_class databaseTable](self->_entityClass, "databaseTable")];
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = [(SSSQLitePredicate *)self->_predicate SQLJoinClausesForEntityClass:self->_entityClass];
  if (v12)
  {
    [v11 unionSet:v12];
  }

  for (; a4; --a4)
  {
    v13 = [(objc_class *)self->_entityClass joinClauseForProperty:*a3];
    if (v13)
    {
      [v11 addObject:v13];
    }

    ++a3;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v29 + 1) + 8 * v17);
        [v10 appendString:@" "];
        [v10 appendString:v18];
        ++v17;
      }

      while (v15 != v17);
      v15 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v19 = [(SSSQLitePredicate *)self->_predicate SQLForEntityClass:self->_entityClass];
  if (v19)
  {
    v20 = v19;
    [v10 appendString:@" WHERE "];
    [v10 appendString:v20];
  }

  v21 = [(NSArray *)self->_orderingProperties count];
  if (self->_orderingClause)
  {
    [v10 appendString:@" ORDER BY "];
    [v10 appendString:self->_orderingClause];
  }

  else
  {
    v22 = v21;
    if (v21 >= 1)
    {
      v23 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v24 = 0;
      do
      {
        v25 = [(objc_class *)self->_entityClass disambiguatedSQLForProperty:[(NSArray *)self->_orderingProperties objectAtIndex:v24]];
        if ([v23 length])
        {
          [v23 appendString:{@", "}];
        }

        [v23 appendString:v25];
        [v23 appendString:@" "];
        if (v24 >= [(NSArray *)self->_orderingDirections count])
        {
          v27 = v23;
          v26 = @"ASC";
        }

        else
        {
          v26 = [(NSArray *)self->_orderingDirections objectAtIndex:v24];
          v27 = v23;
        }

        [v27 appendString:v26];
        ++v24;
      }

      while (v22 != v24);
      [v10 appendString:@" ORDER BY "];
      [v10 appendString:v23];
    }
  }

  if (self->_limitCount)
  {
    [v10 appendString:@" LIMIT ?"];
  }

  return v10;
}

@end