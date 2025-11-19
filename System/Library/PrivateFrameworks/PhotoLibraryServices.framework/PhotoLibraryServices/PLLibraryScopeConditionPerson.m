@interface PLLibraryScopeConditionPerson
+ (id)conditionWithSingleQueries:(id)a3 criteria:(unsigned __int8)a4;
- (BOOL)removePersonUUID:(id)a3;
- (BOOL)replaceTombstonePersonUUID:(id)a3 withPersonUUID:(id)a4;
- (id)conditionQuery;
- (id)description;
@end

@implementation PLLibraryScopeConditionPerson

- (BOOL)removePersonUUID:(id)a3
{
  v4 = a3;
  v5 = [(PLLibraryScopeConditionPerson *)self personUUIDs];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 mutableCopy];
    [v7 removeObjectAtIndex:v6];
    [(PLLibraryScopeConditionPerson *)self setPersonUUIDs:v7];
  }

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)replaceTombstonePersonUUID:(id)a3 withPersonUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLLibraryScopeConditionPerson *)self personUUIDs];
  v9 = [v8 indexOfObject:v7];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v8 mutableCopy];
    if ([v8 containsObject:v6])
    {
      [v10 removeObjectAtIndex:v9];
    }

    else
    {
      [v10 replaceObjectAtIndex:v9 withObject:v6];
    }

    [(PLLibraryScopeConditionPerson *)self setPersonUUIDs:v10];
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [&stru_1F0F06D80 mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_personUUIDs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, ", *(*(&v15 + 1) + 8 * i)];
        [v3 appendString:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = PLLibraryScopeConditionPerson;
  v11 = [(PLLibraryScopeCondition *)&v14 description];
  v12 = [v10 stringWithFormat:@"%@, Persons: %@", v11, v3];

  return v12;
}

- (id)conditionQuery
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69BF2C0]) initWithConjunction:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(PLLibraryScopeConditionPerson *)self personUUIDs];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addPersonUUIDInMomentQuery:*(*(&v11 + 1) + 8 * i) comparator:22];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [v3 query];

  return v9;
}

+ (id)conditionWithSingleQueries:(id)a3 criteria:(unsigned __int8)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [[a1 alloc] initWithCriteria:v4];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) stringValue];
        if (([v9 containsObject:v15] & 1) == 0)
        {
          [v9 addObject:v15];
          [v8 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v7 setPersonUUIDs:v8];

  return v7;
}

@end