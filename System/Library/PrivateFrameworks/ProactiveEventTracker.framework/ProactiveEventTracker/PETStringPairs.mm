@interface PETStringPairs
- (PETStringPairs)initWithKeys:(id)keys values:(id)values;
- (id)subsetForKeys:(id)keys;
@end

@implementation PETStringPairs

- (id)subsetForKeys:(id)keys
{
  v24 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = keysCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [(NSArray *)self->_keys indexOfObject:v12, v19];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v13;
          [v6 addObject:v12];
          v15 = [(NSArray *)self->_values objectAtIndexedSubscript:v14];
          [v5 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [[PETStringPairs alloc] initWithKeys:v6 values:v5];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (PETStringPairs)initWithKeys:(id)keys values:(id)values
{
  keysCopy = keys;
  valuesCopy = values;
  v14.receiver = self;
  v14.super_class = PETStringPairs;
  v10 = [(PETStringPairs *)&v14 init];
  if (v10)
  {
    v11 = [keysCopy count];
    if (v11 != [valuesCopy count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PETStringPairs.m" lineNumber:16 description:{@"number of elements don't match: keys - %lu, values - %lu", -[NSArray count](v10->_keys, "count"), -[NSArray count](v10->_values, "count")}];
    }

    objc_storeStrong(&v10->_keys, keys);
    objc_storeStrong(&v10->_values, values);
  }

  return v10;
}

@end