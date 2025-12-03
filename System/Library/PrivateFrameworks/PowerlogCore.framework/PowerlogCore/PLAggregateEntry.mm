@interface PLAggregateEntry
- (id)aggregateOperationWithMatchingPairs:(id)pairs;
- (id)description;
- (id)matchingPairs;
- (id)query;
- (void)setMatchingKeyToValue:(id)value;
- (void)updateWithValue:(double)value;
@end

@implementation PLAggregateEntry

- (void)updateWithValue:(double)value
{
  if ([(PLAggregateEntry *)self aggregateFunction])
  {
    if ([(PLAggregateEntry *)self aggregateFunction]== 2)
    {
      [(PLAggregateEntry *)self aggregateValue];
      if (valueCopy2 >= value)
      {
        valueCopy2 = value;
      }
    }

    else
    {
      if ([(PLAggregateEntry *)self aggregateFunction]!= 3)
      {
        return;
      }

      [(PLAggregateEntry *)self aggregateValue];
      if (valueCopy2 < value)
      {
        valueCopy2 = value;
      }
    }
  }

  else
  {
    [(PLAggregateEntry *)self aggregateValue];
    valueCopy2 = v6 + value;
  }

  [(PLAggregateEntry *)self setAggregateValue:valueCopy2];
}

- (id)query
{
  selfCopy = self;
  v53 = *MEMORY[0x1E69E9840];
  matchingPairs = [(PLAggregateEntry *)self matchingPairs];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [array addObject:@"ID"];
  v6 = MEMORY[0x1E696AEC0];
  entryKey = [(PLAggregateEntry *)selfCopy entryKey];
  v47 = matchingPairs;
  v8 = [v6 stringWithFormat:@"(SELECT ID FROM '%@' WHERE %@)", entryKey, matchingPairs];
  [array2 addObject:v8];

  matchingKeyToValue = [(PLAggregateEntry *)selfCopy matchingKeyToValue];
  allKeys = [matchingKeyToValue allKeys];
  v11 = [allKeys componentsJoinedByString:{@", "}];
  [array addObject:v11];

  matchingKeyToValue2 = [(PLAggregateEntry *)selfCopy matchingKeyToValue];
  allValues = [matchingKeyToValue2 allValues];
  v14 = [allValues componentsJoinedByString:{@", "}];
  [array2 addObject:v14];

  otherAggregateKeys = [(PLAggregateEntry *)selfCopy otherAggregateKeys];
  if (otherAggregateKeys)
  {
    v16 = otherAggregateKeys;
    otherAggregateKeys2 = [(PLAggregateEntry *)selfCopy otherAggregateKeys];
    v18 = [otherAggregateKeys2 count];

    if (v18)
    {
      v45 = array2;
      otherAggregateKeys3 = [(PLAggregateEntry *)selfCopy otherAggregateKeys];
      v20 = [otherAggregateKeys3 componentsJoinedByString:{@", "}];
      v46 = array;
      [array addObject:v20];

      array3 = [MEMORY[0x1E695DF70] array];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      otherAggregateKeys4 = [(PLAggregateEntry *)selfCopy otherAggregateKeys];
      v23 = [otherAggregateKeys4 countByEnumeratingWithState:&v48 objects:v52 count:16];
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
              objc_enumerationMutation(otherAggregateKeys4);
            }

            v27 = *(*(&v48 + 1) + 8 * i);
            v28 = MEMORY[0x1E696AEC0];
            [(PLAggregateEntry *)selfCopy entryKey];
            v30 = v29 = selfCopy;
            v31 = [v28 stringWithFormat:@"COALESCE((SELECT %@ FROM '%@' WHERE %@), 0)", v27, v30, v47];
            [array3 addObject:v31];

            selfCopy = v29;
          }

          v24 = [otherAggregateKeys4 countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v24);
      }

      v32 = [array3 componentsJoinedByString:{@", "}];
      array2 = v45;
      [v45 addObject:v32];

      array = v46;
    }
  }

  aggregateKey = [(PLAggregateEntry *)selfCopy aggregateKey];
  [array addObject:aggregateKey];

  v34 = MEMORY[0x1E696AEC0];
  v35 = [(PLAggregateEntry *)selfCopy aggregateOperationWithMatchingPairs:v47];
  [(PLAggregateEntry *)selfCopy aggregateValue];
  v37 = [v34 stringWithFormat:@"COALESCE(%@, %f)", v35, v36];
  [array2 addObject:v37];

  v38 = MEMORY[0x1E696AEC0];
  entryKey2 = [(PLAggregateEntry *)selfCopy entryKey];
  v40 = [array componentsJoinedByString:{@", "}];
  v41 = [array2 componentsJoinedByString:{@", "}];
  v42 = [v38 stringWithFormat:@"            INSERT OR REPLACE INTO '%@'             (%@)             VALUES (%@)", entryKey2, v40, v41];;

  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

- (void)setMatchingKeyToValue:(id)value
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [(NSMutableDictionary *)valueCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)valueCopy objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", v10];
          [(NSMutableDictionary *)valueCopy setObject:v11 forKeyedSubscript:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  matchingKeyToValue = self->_matchingKeyToValue;
  self->_matchingKeyToValue = valueCopy;

  v13 = *MEMORY[0x1E69E9840];
}

- (id)matchingPairs
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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
        matchingKeyToValue = [(PLAggregateEntry *)self matchingKeyToValue];
        v11 = [matchingKeyToValue objectForKeyedSubscript:v8];
        v12 = [v9 stringWithFormat:@"%@=%@", v8, v11];
        [array addObject:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = [array componentsJoinedByString:@" AND "];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)aggregateOperationWithMatchingPairs:(id)pairs
{
  v4 = MEMORY[0x1E696AEC0];
  pairsCopy = pairs;
  aggregateKey = [(PLAggregateEntry *)self aggregateKey];
  entryKey = [(PLAggregateEntry *)self entryKey];
  pairsCopy = [v4 stringWithFormat:@"SELECT %@ FROM '%@' WHERE %@", aggregateKey, entryKey, pairsCopy];

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
    v12 = [v10 stringWithFormat:v9, v11, pairsCopy];
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
  entryKey = [(PLAggregateEntry *)self entryKey];
  matchingPairs = [(PLAggregateEntry *)self matchingPairs];
  aggregateKey = [(PLAggregateEntry *)self aggregateKey];
  [(PLAggregateEntry *)self aggregateValue];
  v8 = [v3 stringWithFormat:@"entryKey=%@, matchingPairs=%@, aggregateKey=%@, aggregateValue=%f", entryKey, matchingPairs, aggregateKey, v7];

  return v8;
}

@end