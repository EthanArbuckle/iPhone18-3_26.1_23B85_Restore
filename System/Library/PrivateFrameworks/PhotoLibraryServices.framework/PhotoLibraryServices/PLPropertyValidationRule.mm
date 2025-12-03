@interface PLPropertyValidationRule
- (BOOL)evaluateWithObject:(id)object outMessage:(id *)message;
- (id)currentValuesOfObject:(id)object;
- (id)descriptionOfCurrentValuesOfObject:(id)object;
- (id)keyPaths;
- (id)predicate;
- (id)reverseRule;
@end

@implementation PLPropertyValidationRule

- (id)descriptionOfCurrentValuesOfObject:(id)object
{
  v21 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(PLPropertyValidationRule *)self currentValuesOfObject:objectCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", v11, v12];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 componentsJoinedByString:{@", "}];

  return v14;
}

- (id)currentValuesOfObject:(id)object
{
  v12[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyPath = [(PLPropertyValidationRule *)self keyPath];
  v6 = [objectCopy valueForKey:keyPath];

  keyPath2 = [(PLPropertyValidationRule *)self keyPath];
  v11 = keyPath2;
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  if (!v6)
  {
  }

  return v9;
}

- (id)keyPaths
{
  v2 = MEMORY[0x1E695DFD8];
  keyPath = [(PLPropertyValidationRule *)self keyPath];
  v4 = [v2 setWithObject:keyPath];

  return v4;
}

- (id)predicate
{
  v35[2] = *MEMORY[0x1E69E9840];
  type = [(PLPropertyValidationRule *)self type];
  v4 = 0;
  if (type <= 6)
  {
    if (type <= 3)
    {
      if (type == 2)
      {
        v18 = MEMORY[0x1E696AE18];
        keyPath = [(PLPropertyValidationRule *)self keyPath];
        [v18 predicateWithFormat:@"%K != NULL", keyPath];
        goto LABEL_20;
      }

      if (type != 3)
      {
        goto LABEL_39;
      }

      v17 = MEMORY[0x1E696AE18];
      keyPath2 = [(PLPropertyValidationRule *)self keyPath];
      expectedValue = [(PLPropertyValidationRule *)self expectedValue];
      [v17 predicateWithFormat:@"%K == %@", keyPath2, expectedValue];
      goto LABEL_31;
    }

    if (type == 4)
    {
      v27 = MEMORY[0x1E696AE18];
      keyPath2 = [(PLPropertyValidationRule *)self keyPath];
      expectedValue = [(PLPropertyValidationRule *)self expectedValue];
      [v27 predicateWithFormat:@"%K != %@", keyPath2, expectedValue];
    }

    else if (type == 5)
    {
      expectedValueRangeLow = [(PLPropertyValidationRule *)self expectedValueRangeLow];

      if (expectedValueRangeLow)
      {
        expectedValueRangeHigh = [(PLPropertyValidationRule *)self expectedValueRangeHigh];

        v21 = MEMORY[0x1E696AE18];
        keyPath2 = [(PLPropertyValidationRule *)self keyPath];
        expectedValueRangeLow2 = [(PLPropertyValidationRule *)self expectedValueRangeLow];
        expectedValueRangeLow3 = expectedValueRangeLow2;
        if (expectedValueRangeHigh)
        {
          v35[0] = expectedValueRangeLow2;
          expectedValueRangeHigh2 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
          v35[1] = expectedValueRangeHigh2;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
          [v21 predicateWithFormat:@"%K BETWEEN %@", keyPath2, v24];
          v4 = LABEL_28:;

LABEL_36:
          goto LABEL_37;
        }

        v4 = [v21 predicateWithFormat:@"%K >= %@", keyPath2, expectedValueRangeLow2];
LABEL_37:

        goto LABEL_38;
      }

      v30 = MEMORY[0x1E696AE18];
      keyPath2 = [(PLPropertyValidationRule *)self keyPath];
      expectedValue = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
      [v30 predicateWithFormat:@"%K <= %@", keyPath2, expectedValue];
    }

    else
    {
      v7 = MEMORY[0x1E696AE18];
      keyPath2 = [(PLPropertyValidationRule *)self keyPath];
      expectedValue = [(PLPropertyValidationRule *)self expectedValues];
      [v7 predicateWithFormat:@"%K in %@", keyPath2, expectedValue];
    }
  }

  else
  {
    if (type <= 9)
    {
      if (type != 7)
      {
        if (type != 8)
        {
          v5 = MEMORY[0x1E696AE18];
          keyPath = [(PLPropertyValidationRule *)self keyPath];
          [v5 predicateWithFormat:@"%K == nil", keyPath];
          v4 = LABEL_20:;

          goto LABEL_39;
        }

        v25 = MEMORY[0x1E696AE18];
        keyPath2 = [(PLPropertyValidationRule *)self keyPath];
        expectedValue = [(PLPropertyValidationRule *)self expectedValues];
        [v25 predicateWithFormat:@"NOT (%K in %@)", keyPath2, expectedValue];
        goto LABEL_31;
      }

      v28 = MEMORY[0x1E696AE18];
      keyPath2 = [(PLPropertyValidationRule *)self keyPath];
      expectedValueRangeLow3 = [(PLPropertyValidationRule *)self expectedValueRangeLow];
      v33[0] = expectedValueRangeLow3;
      expectedValueRangeHigh2 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
      v33[1] = expectedValueRangeHigh2;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
      [v28 predicateWithFormat:@"NOT (%K BETWEEN %@)", keyPath2, v24];
      goto LABEL_28;
    }

    if (type != 10)
    {
      if (type == 11)
      {
        v26 = MEMORY[0x1E696AE18];
        keyPath2 = [(PLPropertyValidationRule *)self keyPath];
        expectedValueRangeLow3 = [(PLPropertyValidationRule *)self keyPath];
        expectedValueRangeHigh2 = [(PLPropertyValidationRule *)self expectedValue];
        [v26 predicateWithFormat:@"%K == nil OR %K == %@", keyPath2, expectedValueRangeLow3, expectedValueRangeHigh2];
      }

      else
      {
        if (type != 12)
        {
          goto LABEL_39;
        }

        expectedValueRangeHigh3 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];

        if (expectedValueRangeHigh3)
        {
          expectedValueRangeLow4 = [(PLPropertyValidationRule *)self expectedValueRangeLow];

          v12 = MEMORY[0x1E696AE18];
          keyPath2 = [(PLPropertyValidationRule *)self keyPath];
          expectedValueRangeLow3 = [(PLPropertyValidationRule *)self keyPath];
          if (expectedValueRangeLow4)
          {
            expectedValueRangeLow5 = [(PLPropertyValidationRule *)self expectedValueRangeLow];
            v34[0] = expectedValueRangeLow5;
            expectedValueRangeHigh4 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
            v34[1] = expectedValueRangeHigh4;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
            v4 = [v12 predicateWithFormat:@"%K == NULL OR (%K BETWEEN %@)", keyPath2, expectedValueRangeLow3, v16];

            goto LABEL_37;
          }

          expectedValueRangeHigh2 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
          [v12 predicateWithFormat:@"%K == NULL OR %K <= %@", keyPath2, expectedValueRangeLow3, expectedValueRangeHigh2];
        }

        else
        {
          v31 = MEMORY[0x1E696AE18];
          keyPath2 = [(PLPropertyValidationRule *)self keyPath];
          expectedValueRangeLow3 = [(PLPropertyValidationRule *)self keyPath];
          expectedValueRangeHigh2 = [(PLPropertyValidationRule *)self expectedValueRangeLow];
          [v31 predicateWithFormat:@"%K == NULL OR %K >= %@", keyPath2, expectedValueRangeLow3, expectedValueRangeHigh2];
        }
      }
      v4 = ;
      goto LABEL_36;
    }

    v29 = MEMORY[0x1E696AE18];
    keyPath2 = [(PLPropertyValidationRule *)self keyPath];
    expectedValue = [(PLPropertyValidationRule *)self keyPath];
    [v29 predicateWithFormat:@"%K == NULL OR %K == 0", keyPath2, expectedValue];
  }

  v4 = LABEL_31:;

LABEL_38:
LABEL_39:

  return v4;
}

- (BOOL)evaluateWithObject:(id)object outMessage:(id *)message
{
  objectCopy = object;
  if (message)
  {
    *message = 0;
  }

  type = [(PLPropertyValidationRule *)self type];
  if (type == 1)
  {
LABEL_7:
    v15 = 1;
    goto LABEL_12;
  }

  if (!type)
  {
    if (message)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      keyPaths = [(PLPropertyValidationRule *)self keyPaths];
      allObjects = [keyPaths allObjects];
      v13 = [allObjects componentsJoinedByString:{@", "}];
      objectID = [(PLPropertyValidationRule *)self descriptionOfCurrentValuesOfObject:objectCopy];
      *message = [v8 stringWithFormat:@"Skipping property validation for: %@.(%@). Actual value: %@", v10, v13, objectID];
      v15 = 1;
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_7;
  }

  predicate = [(PLPropertyValidationRule *)self predicate];
  v15 = [predicate evaluateWithObject:objectCopy];

  if (message && (v15 & 1) == 0)
  {
    v22 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v10 = NSStringFromClass(v17);
    keyPaths = [(PLPropertyValidationRule *)self keyPaths];
    allObjects = [keyPaths allObjects];
    v13 = [allObjects componentsJoinedByString:{@", "}];
    objectID = [objectCopy objectID];
    v18 = [(PLPropertyValidationRule *)self descriptionOfCurrentValuesOfObject:objectCopy];
    predicate2 = [(PLPropertyValidationRule *)self predicate];
    v20 = [predicate2 description];
    *message = [v22 stringWithFormat:@"Property value validation failure: %@.(%@) (%@). Actual values: (%@). Expected values: (%@)", v10, v13, objectID, v18, v20];

    v15 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return v15;
}

- (id)reverseRule
{
  type = [(PLPropertyValidationRule *)self type];
  v4 = 0;
  if (type > 5)
  {
    if (type > 7)
    {
      if (type != 8)
      {
        if (type != 9)
        {
          goto LABEL_24;
        }

        keyPath = [(PLPropertyValidationRule *)self keyPath];
        v11 = 2;
LABEL_16:
        v4 = _PLPropertyValidationRuleMake(v11, keyPath, 0, 0, 0, 0);
        goto LABEL_23;
      }

      keyPath = [(PLPropertyValidationRule *)self keyPath];
      expectedValues = [(PLPropertyValidationRule *)self expectedValues];
      v7 = 6;
    }

    else
    {
      if (type != 6)
      {
        keyPath = [(PLPropertyValidationRule *)self keyPath];
        expectedValueRangeLow = [(PLPropertyValidationRule *)self expectedValueRangeLow];
        expectedValueRangeHigh = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
        v10 = 5;
        goto LABEL_11;
      }

      keyPath = [(PLPropertyValidationRule *)self keyPath];
      expectedValues = [(PLPropertyValidationRule *)self expectedValues];
      v7 = 8;
    }

    v12 = keyPath;
    v13 = 0;
    v14 = expectedValues;
    goto LABEL_22;
  }

  if (type <= 3)
  {
    if (type != 2)
    {
      if (type != 3)
      {
        goto LABEL_24;
      }

      keyPath = [(PLPropertyValidationRule *)self keyPath];
      expectedValues = [(PLPropertyValidationRule *)self expectedValue];
      v7 = 4;
      goto LABEL_19;
    }

    keyPath = [(PLPropertyValidationRule *)self keyPath];
    v11 = 9;
    goto LABEL_16;
  }

  if (type == 4)
  {
    keyPath = [(PLPropertyValidationRule *)self keyPath];
    expectedValues = [(PLPropertyValidationRule *)self expectedValue];
    v7 = 3;
LABEL_19:
    v12 = keyPath;
    v13 = expectedValues;
    v14 = 0;
LABEL_22:
    v4 = _PLPropertyValidationRuleMake(v7, v12, v13, 0, 0, v14);

    goto LABEL_23;
  }

  keyPath = [(PLPropertyValidationRule *)self keyPath];
  expectedValueRangeLow = [(PLPropertyValidationRule *)self expectedValueRangeLow];
  expectedValueRangeHigh = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
  v10 = 7;
LABEL_11:
  v4 = _PLPropertyValidationRuleMake(v10, keyPath, 0, expectedValueRangeLow, expectedValueRangeHigh, 0);

LABEL_23:
LABEL_24:

  return v4;
}

@end