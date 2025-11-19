@interface PLAggregateEntry
- (id)aggregateOperationWithMatchingPairs:(id)a3;
- (id)description;
- (id)matchingPairs;
- (id)query;
- (void)setMatchingKeyToValue:(id)a3;
- (void)updateWithValue:(double)a3;
@end

@implementation PLAggregateEntry

- (void)updateWithValue:(double)a3
{
  if ([(PLAggregateEntry *)self aggregateFunction])
  {
    if ([(PLAggregateEntry *)self aggregateFunction]== 2)
    {
      [(PLAggregateEntry *)self aggregateValue];
      if (v5 >= a3)
      {
        v5 = a3;
      }
    }

    else
    {
      if ([(PLAggregateEntry *)self aggregateFunction]!= 3)
      {
        return;
      }

      [(PLAggregateEntry *)self aggregateValue];
      if (v5 < a3)
      {
        v5 = a3;
      }
    }
  }

  else
  {
    [(PLAggregateEntry *)self aggregateValue];
    v5 = v6 + a3;
  }

  [(PLAggregateEntry *)self setAggregateValue:v5];
}

- (id)query
{
  v2 = self;
  v53 = *MEMORY[0x1E69E9840];
  v3 = [(PLAggregateEntry *)self matchingPairs];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  [v4 addObject:@"ID"];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(PLAggregateEntry *)v2 entryKey];
  v47 = v3;
  v8 = [v6 stringWithFormat:@"(SELECT ID FROM '%@' WHERE %@)", v7, v3];
  [v5 addObject:v8];

  v9 = [(PLAggregateEntry *)v2 matchingKeyToValue];
  v10 = [v9 allKeys];
  v11 = [v10 componentsJoinedByString:{@", "}];
  [v4 addObject:v11];

  v12 = [(PLAggregateEntry *)v2 matchingKeyToValue];
  v13 = [v12 allValues];
  v14 = [v13 componentsJoinedByString:{@", "}];
  [v5 addObject:v14];

  v15 = [(PLAggregateEntry *)v2 otherAggregateKeys];
  if (v15)
  {
    v16 = v15;
    v17 = [(PLAggregateEntry *)v2 otherAggregateKeys];
    v18 = [v17 count];

    if (v18)
    {
      v45 = v5;
      v19 = [(PLAggregateEntry *)v2 otherAggregateKeys];
      v20 = [v19 componentsJoinedByString:{@", "}];
      v46 = v4;
      [v4 addObject:v20];

      v21 = [MEMORY[0x1E695DF70] array];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v22 = [(PLAggregateEntry *)v2 otherAggregateKeys];
      v23 = [v22 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v49;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v49 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v48 + 1) + 8 * i);
            v28 = MEMORY[0x1E696AEC0];
            [(PLAggregateEntry *)v2 entryKey];
            v30 = v29 = v2;
            v31 = [v28 stringWithFormat:@"COALESCE((SELECT %@ FROM '%@' WHERE %@), 0)", v27, v30, v47];
            [v21 addObject:v31];

            v2 = v29;
          }

          v24 = [v22 countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v24);
      }

      v32 = [v21 componentsJoinedByString:{@", "}];
      v5 = v45;
      [v45 addObject:v32];

      v4 = v46;
    }
  }

  v33 = [(PLAggregateEntry *)v2 aggregateKey];
  [v4 addObject:v33];

  v34 = MEMORY[0x1E696AEC0];
  v35 = [(PLAggregateEntry *)v2 aggregateOperationWithMatchingPairs:v47];
  [(PLAggregateEntry *)v2 aggregateValue];
  v37 = [v34 stringWithFormat:@"COALESCE(%@, %f)", v35, v36];
  [v5 addObject:v37];

  v38 = MEMORY[0x1E696AEC0];
  v39 = [(PLAggregateEntry *)v2 entryKey];
  v40 = [v4 componentsJoinedByString:{@", "}];
  v41 = [v5 componentsJoinedByString:{@", "}];
  v42 = [v38 stringWithFormat:@"            INSERT OR REPLACE INTO '%@'             (%@)             VALUES (%@)", v39, v40, v41];;

  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

- (void)setMatchingKeyToValue:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NSMutableDictionary *)v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v10];
          [(NSMutableDictionary *)v3 setObject:v11 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  matchingKeyToValue = self->_matchingKeyToValue;
  self->_matchingKeyToValue = v3;

  v13 = *MEMORY[0x1E69E9840];
}

- (id)matchingPairs
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(PLAggregateEntry *)self matchingKeyToValue];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AEC0];
        v10 = [(PLAggregateEntry *)self matchingKeyToValue];
        v11 = [v10 objectForKeyedSubscript:v8];
        v12 = [v9 stringWithFormat:@"%@=%@", v8, v11];
        [v3 addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = [v3 componentsJoinedByString:@" AND "];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)aggregateOperationWithMatchingPairs:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [(PLAggregateEntry *)self aggregateKey];
  v7 = [(PLAggregateEntry *)self entryKey];
  v8 = [v4 stringWithFormat:@"SELECT %@ FROM '%@' WHERE %@", v6, v7, v5];

  if (![(PLAggregateEntry *)self aggregateFunction])
  {
    v9 = @"%f+(%@)";
    goto LABEL_7;
  }

  if ([(PLAggregateEntry *)self aggregateFunction]== 2)
  {
    v9 = @"MIN(%f,%@)";
LABEL_7:
    v10 = MEMORY[0x1E696AEC0];
    [(PLAggregateEntry *)self aggregateValue];
    v12 = [v10 stringWithFormat:v9, v11, v8];
    goto LABEL_8;
  }

  if ([(PLAggregateEntry *)self aggregateFunction]== 3)
  {
    v9 = @"MAX(%f,%@)";
    goto LABEL_7;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLAggregateEntry *)self entryKey];
  v5 = [(PLAggregateEntry *)self matchingPairs];
  v6 = [(PLAggregateEntry *)self aggregateKey];
  [(PLAggregateEntry *)self aggregateValue];
  v8 = [v3 stringWithFormat:@"entryKey=%@, matchingPairs=%@, aggregateKey=%@, aggregateValue=%f", v4, v5, v6, v7];

  return v8;
}

@end