@interface PPSSQLiteQueryDescriptor
- (PPSSQLiteQueryDescriptor)initWithEntity:(id)entity predicate:(id)predicate limitCount:(unint64_t)count offsetCount:(unint64_t)offsetCount;
- (id)_sqlForSelectWithProperties:(id)properties;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PPSSQLiteQueryDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setEntity:self->_entity];
  v6 = [(PPSSQLitePredicate *)self->_predicate copyWithZone:zone];
  [v5 setPredicate:v6];

  v7 = [(NSArray *)self->_groupByProperties copyWithZone:zone];
  [v5 setGroupByProperties:v7];

  v8 = [(NSArray *)self->_orderByProperties copyWithZone:zone];
  [v5 setOrderByProperties:v8];

  v9 = [(NSArray *)self->_orderByDirections copyWithZone:zone];
  [v5 setOrderByDirections:v9];

  [v5 setLimitCount:self->_limitCount];
  [v5 setOffsetCount:self->_offsetCount];
  [v5 setReturnsDistinctEntities:self->_returnsDistinctEntities];
  return v5;
}

- (PPSSQLiteQueryDescriptor)initWithEntity:(id)entity predicate:(id)predicate limitCount:(unint64_t)count offsetCount:(unint64_t)offsetCount
{
  entityCopy = entity;
  predicateCopy = predicate;
  v18.receiver = self;
  v18.super_class = PPSSQLiteQueryDescriptor;
  v13 = [(PPSSQLiteQueryDescriptor *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_entity, entity);
    v15 = [predicateCopy copy];
    predicate = v14->_predicate;
    v14->_predicate = v15;

    v14->_limitCount = count;
    v14->_offsetCount = offsetCount;
  }

  return v14;
}

- (id)_sqlForSelectWithProperties:(id)properties
{
  v54 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
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
  v6 = propertiesCopy;
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
        entity = [(PPSSQLiteQueryDescriptor *)self entity];
        v12 = [entity disambiguatedSQLForProperty:v10 shouldEscape:1];
        [v4 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v7);
  }

  v13 = [v4 componentsJoinedByString:{@", "}];
  [v46 appendString:v13];

  entity2 = [(PPSSQLiteQueryDescriptor *)self entity];
  tableNames = [entity2 tableNames];
  firstObject = [tableNames firstObject];
  [v46 appendFormat:@" FROM '%@' AS '%d'", firstObject, 0];

  entity3 = [(PPSSQLiteQueryDescriptor *)self entity];
  joinClauses = [entity3 joinClauses];

  if ([joinClauses count])
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __56__PPSSQLiteQueryDescriptor__sqlForSelectWithProperties___block_invoke;
    v47[3] = &unk_279A11848;
    v48 = v46;
    [joinClauses enumerateObjectsUsingBlock:v47];
  }

  predicate = [(PPSSQLiteQueryDescriptor *)self predicate];
  entity4 = [(PPSSQLiteQueryDescriptor *)self entity];
  v44 = [predicate sqlForEntity:entity4];

  if (v44)
  {
    [v46 appendFormat:@" WHERE %@", v44];
  }

  groupByProperties = [(PPSSQLiteQueryDescriptor *)self groupByProperties];
  v21 = [groupByProperties count];

  if (v21 >= 1)
  {
    v22 = objc_opt_new();
    for (j = 0; j != v21; ++j)
    {
      entity5 = [(PPSSQLiteQueryDescriptor *)self entity];
      groupByProperties2 = [(PPSSQLiteQueryDescriptor *)self groupByProperties];
      v26 = [groupByProperties2 objectAtIndexedSubscript:j];
      v27 = [entity5 disambiguatedSQLForProperty:v26 shouldEscape:1];

      if ([v22 length])
      {
        [v22 appendString:{@", "}];
      }

      [v22 appendFormat:@"%@", v27];
    }

    [v46 appendFormat:@" GROUP BY %@", v22];
  }

  orderByProperties = [(PPSSQLiteQueryDescriptor *)self orderByProperties];
  v29 = [orderByProperties count];

  if (v29 >= 1)
  {
    v30 = objc_opt_new();
    for (k = 0; k != v29; ++k)
    {
      entity6 = [(PPSSQLiteQueryDescriptor *)self entity];
      orderByProperties2 = [(PPSSQLiteQueryDescriptor *)self orderByProperties];
      v34 = [orderByProperties2 objectAtIndexedSubscript:k];
      v35 = [entity6 disambiguatedSQLForProperty:v34 shouldEscape:1];

      if ([v30 length])
      {
        [v30 appendString:{@", "}];
      }

      [v30 appendFormat:@"%@ ", v35];
      orderByDirections = [(PPSSQLiteQueryDescriptor *)self orderByDirections];
      v37 = k < [orderByDirections count];

      if (v37)
      {
        orderByDirections2 = [(PPSSQLiteQueryDescriptor *)self orderByDirections];
        v39 = [orderByDirections2 objectAtIndexedSubscript:k];
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