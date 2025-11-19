@interface SQLiteQueryDescriptor
- (id)_newSelectSQLWithProperties:(id)a3 columns:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SQLiteQueryDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_entityClass;
  v5[2] = self->_limitCount;
  v6 = [(NSArray *)self->_orderingDirections copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSArray *)self->_orderingProperties copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSArray *)self->_groupingProperties copyWithZone:a3];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(SQLitePredicate *)self->_predicate copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  *(v5 + 56) = self->_returnsDistinctEntities;
  return v5;
}

- (id)_newSelectSQLWithProperties:(id)a3 columns:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableString alloc] initWithString:@"SELECT "];
  v9 = v8;
  if (self->_returnsDistinctEntities)
  {
    [v8 appendString:@"DISTINCT "];
  }

  v44 = v7;
  v10 = [v7 componentsJoinedByString:{@", "}];
  [v9 appendString:v10];

  v11 = [(objc_class *)self->_entityClass databaseTable];
  [v9 appendFormat:@" FROM %@", v11];

  v12 = objc_alloc_init(NSMutableSet);
  v13 = [(SQLitePredicate *)self->_predicate SQLJoinClausesForEntityClass:self->_entityClass];
  if (v13)
  {
    [v12 unionSet:v13];
  }

  v43 = v13;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      v18 = 0;
      do
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(objc_class *)self->_entityClass addJoinClausesForProperty:*(*(&v49 + 1) + 8 * v18) toJoins:v12];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v16);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v46;
    do
    {
      v23 = 0;
      do
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v45 + 1) + 8 * v23);
        [v9 appendString:@" "];
        [v9 appendString:v24];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v21);
  }

  v25 = [(SQLitePredicate *)self->_predicate SQLForEntityClass:self->_entityClass];
  if (v25)
  {
    [v9 appendString:@" WHERE "];
    [v9 appendString:v25];
  }

  v42 = v25;
  v26 = [(NSArray *)self->_groupingProperties count];
  if (v26 >= 1)
  {
    v27 = v26;
    v28 = objc_alloc_init(NSMutableString);
    for (i = 0; i != v27; ++i)
    {
      entityClass = self->_entityClass;
      v31 = [(NSArray *)self->_groupingProperties objectAtIndex:i];
      v32 = [(objc_class *)entityClass disambiguatedSQLForProperty:v31];

      if ([v28 length])
      {
        [v28 appendString:{@", "}];
      }

      [v28 appendString:v32];
      [v28 appendString:@" "];
    }

    [v9 appendString:@" GROUP BY "];
    [v9 appendString:v28];
  }

  v33 = [(NSArray *)self->_orderingProperties count];
  if (v33 >= 1)
  {
    v34 = v33;
    v35 = objc_alloc_init(NSMutableString);
    for (j = 0; j != v34; ++j)
    {
      v37 = self->_entityClass;
      v38 = [(NSArray *)self->_orderingProperties objectAtIndex:j];
      v39 = [(objc_class *)v37 disambiguatedSQLForProperty:v38];

      if ([v35 length])
      {
        [v35 appendString:{@", "}];
      }

      [v35 appendString:v39];
      [v35 appendString:@" "];
      if (j >= [(NSArray *)self->_orderingDirections count])
      {
        [v35 appendString:@"ASC"];
      }

      else
      {
        v40 = [(NSArray *)self->_orderingDirections objectAtIndex:j];
        [v35 appendString:v40];
      }
    }

    [v9 appendString:@" ORDER BY "];
    [v9 appendString:v35];
  }

  if (self->_limitCount)
  {
    [v9 appendString:@" LIMIT ?"];
  }

  return v9;
}

@end