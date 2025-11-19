@interface PPSSQLiteQueryDescriptor
- (PPSSQLiteQueryDescriptor)initWithEntity:(id)a3 predicate:(id)a4 limitCount:(unint64_t)a5 offsetCount:(unint64_t)a6;
- (id)_sqlForSelectWithProperties:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PPSSQLiteQueryDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setEntity:self->_entity];
  v6 = [(PPSSQLitePredicate *)self->_predicate copyWithZone:a3];
  [v5 setPredicate:v6];

  v7 = [(NSArray *)self->_groupByProperties copyWithZone:a3];
  [v5 setGroupByProperties:v7];

  v8 = [(NSArray *)self->_orderByProperties copyWithZone:a3];
  [v5 setOrderByProperties:v8];

  v9 = [(NSArray *)self->_orderByDirections copyWithZone:a3];
  [v5 setOrderByDirections:v9];

  [v5 setLimitCount:self->_limitCount];
  [v5 setOffsetCount:self->_offsetCount];
  [v5 setReturnsDistinctEntities:self->_returnsDistinctEntities];
  return v5;
}

- (PPSSQLiteQueryDescriptor)initWithEntity:(id)a3 predicate:(id)a4 limitCount:(unint64_t)a5 offsetCount:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = PPSSQLiteQueryDescriptor;
  v13 = [(PPSSQLiteQueryDescriptor *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_entity, a3);
    v15 = [v12 copy];
    predicate = v14->_predicate;
    v14->_predicate = v15;

    v14->_limitCount = a5;
    v14->_offsetCount = a6;
  }

  return v14;
}

- (id)_sqlForSelectWithProperties:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v46 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"SELECT "];
  context = objc_autoreleasePoolPush();
  if ([(PPSSQLiteQueryDescriptor *)self returnsDistinctEntities])
  {
    [v46 appendString:@"DISTINCT "];
  }

  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%d'.ID", 0];
  [v4 addObject:v5];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = v43;
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v7)
  {
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = [(PPSSQLiteQueryDescriptor *)self entity];
        v12 = [v11 disambiguatedSQLForProperty:v10 shouldEscape:1];
        [v4 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v7);
  }

  v13 = [v4 componentsJoinedByString:{@", "}];
  [v46 appendString:v13];

  v14 = [(PPSSQLiteQueryDescriptor *)self entity];
  v15 = [v14 tableNames];
  v16 = [v15 firstObject];
  [v46 appendFormat:@" FROM '%@' AS '%d'", v16, 0];

  v17 = [(PPSSQLiteQueryDescriptor *)self entity];
  v45 = [v17 joinClauses];

  if ([v45 count])
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __56__PPSSQLiteQueryDescriptor__sqlForSelectWithProperties___block_invoke;
    v47[3] = &unk_279A11848;
    v48 = v46;
    [v45 enumerateObjectsUsingBlock:v47];
  }

  v18 = [(PPSSQLiteQueryDescriptor *)self predicate];
  v19 = [(PPSSQLiteQueryDescriptor *)self entity];
  v44 = [v18 sqlForEntity:v19];

  if (v44)
  {
    [v46 appendFormat:@" WHERE %@", v44];
  }

  v20 = [(PPSSQLiteQueryDescriptor *)self groupByProperties];
  v21 = [v20 count];

  if (v21 >= 1)
  {
    v22 = objc_opt_new();
    for (j = 0; j != v21; ++j)
    {
      v24 = [(PPSSQLiteQueryDescriptor *)self entity];
      v25 = [(PPSSQLiteQueryDescriptor *)self groupByProperties];
      v26 = [v25 objectAtIndexedSubscript:j];
      v27 = [v24 disambiguatedSQLForProperty:v26 shouldEscape:1];

      if ([v22 length])
      {
        [v22 appendString:{@", "}];
      }

      [v22 appendFormat:@"%@", v27];
    }

    [v46 appendFormat:@" GROUP BY %@", v22];
  }

  v28 = [(PPSSQLiteQueryDescriptor *)self orderByProperties];
  v29 = [v28 count];

  if (v29 >= 1)
  {
    v30 = objc_opt_new();
    for (k = 0; k != v29; ++k)
    {
      v32 = [(PPSSQLiteQueryDescriptor *)self entity];
      v33 = [(PPSSQLiteQueryDescriptor *)self orderByProperties];
      v34 = [v33 objectAtIndexedSubscript:k];
      v35 = [v32 disambiguatedSQLForProperty:v34 shouldEscape:1];

      if ([v30 length])
      {
        [v30 appendString:{@", "}];
      }

      [v30 appendFormat:@"%@ ", v35];
      v36 = [(PPSSQLiteQueryDescriptor *)self orderByDirections];
      v37 = k < [v36 count];

      if (v37)
      {
        v38 = [(PPSSQLiteQueryDescriptor *)self orderByDirections];
        v39 = [v38 objectAtIndexedSubscript:k];
        [v30 appendString:v39];
      }

      else
      {
        [v30 appendString:@"ASC"];
      }
    }

    [v46 appendFormat:@" ORDER BY %@", v30];
  }

  if ([(PPSSQLiteQueryDescriptor *)self limitCount])
  {
    [v46 appendString:@" LIMIT ? "];
  }

  if ([(PPSSQLiteQueryDescriptor *)self offsetCount])
  {
    [v46 appendString:@" OFFSET ?"];
  }

  objc_autoreleasePoolPop(context);
  v40 = *MEMORY[0x277D85DE8];

  return v46;
}

@end