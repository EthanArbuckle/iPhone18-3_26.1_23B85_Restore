@interface PLPropertyValidationRule
- (BOOL)evaluateWithObject:(id)a3 outMessage:(id *)a4;
- (id)currentValuesOfObject:(id)a3;
- (id)descriptionOfCurrentValuesOfObject:(id)a3;
- (id)keyPaths;
- (id)predicate;
- (id)reverseRule;
@end

@implementation PLPropertyValidationRule

- (id)descriptionOfCurrentValuesOfObject:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(PLPropertyValidationRule *)self currentValuesOfObject:v4];
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

- (id)currentValuesOfObject:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLPropertyValidationRule *)self keyPath];
  v6 = [v4 valueForKey:v5];

  v7 = [(PLPropertyValidationRule *)self keyPath];
  v11 = v7;
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  if (!v6)
  {
  }

  return v9;
}

- (id)keyPaths
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(PLPropertyValidationRule *)self keyPath];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)predicate
{
  v35[2] = *MEMORY[0x1E69E9840];
  v3 = [(PLPropertyValidationRule *)self type];
  v4 = 0;
  if (v3 <= 6)
  {
    if (v3 <= 3)
    {
      if (v3 == 2)
      {
        v18 = MEMORY[0x1E696AE18];
        v6 = [(PLPropertyValidationRule *)self keyPath];
        [v18 predicateWithFormat:@"%K != NULL", v6];
        goto LABEL_20;
      }

      if (v3 != 3)
      {
        goto LABEL_39;
      }

      v17 = MEMORY[0x1E696AE18];
      v8 = [(PLPropertyValidationRule *)self keyPath];
      v9 = [(PLPropertyValidationRule *)self expectedValue];
      [v17 predicateWithFormat:@"%K == %@", v8, v9];
      goto LABEL_31;
    }

    if (v3 == 4)
    {
      v27 = MEMORY[0x1E696AE18];
      v8 = [(PLPropertyValidationRule *)self keyPath];
      v9 = [(PLPropertyValidationRule *)self expectedValue];
      [v27 predicateWithFormat:@"%K != %@", v8, v9];
    }

    else if (v3 == 5)
    {
      v19 = [(PLPropertyValidationRule *)self expectedValueRangeLow];

      if (v19)
      {
        v20 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];

        v21 = MEMORY[0x1E696AE18];
        v8 = [(PLPropertyValidationRule *)self keyPath];
        v22 = [(PLPropertyValidationRule *)self expectedValueRangeLow];
        v13 = v22;
        if (v20)
        {
          v35[0] = v22;
          v23 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
          v35[1] = v23;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
          [v21 predicateWithFormat:@"%K BETWEEN %@", v8, v24];
          v4 = LABEL_28:;

LABEL_36:
          goto LABEL_37;
        }

        v4 = [v21 predicateWithFormat:@"%K >= %@", v8, v22];
LABEL_37:

        goto LABEL_38;
      }

      v30 = MEMORY[0x1E696AE18];
      v8 = [(PLPropertyValidationRule *)self keyPath];
      v9 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
      [v30 predicateWithFormat:@"%K <= %@", v8, v9];
    }

    else
    {
      v7 = MEMORY[0x1E696AE18];
      v8 = [(PLPropertyValidationRule *)self keyPath];
      v9 = [(PLPropertyValidationRule *)self expectedValues];
      [v7 predicateWithFormat:@"%K in %@", v8, v9];
    }
  }

  else
  {
    if (v3 <= 9)
    {
      if (v3 != 7)
      {
        if (v3 != 8)
        {
          v5 = MEMORY[0x1E696AE18];
          v6 = [(PLPropertyValidationRule *)self keyPath];
          [v5 predicateWithFormat:@"%K == nil", v6];
          v4 = LABEL_20:;

          goto LABEL_39;
        }

        v25 = MEMORY[0x1E696AE18];
        v8 = [(PLPropertyValidationRule *)self keyPath];
        v9 = [(PLPropertyValidationRule *)self expectedValues];
        [v25 predicateWithFormat:@"NOT (%K in %@)", v8, v9];
        goto LABEL_31;
      }

      v28 = MEMORY[0x1E696AE18];
      v8 = [(PLPropertyValidationRule *)self keyPath];
      v13 = [(PLPropertyValidationRule *)self expectedValueRangeLow];
      v33[0] = v13;
      v23 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
      v33[1] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
      [v28 predicateWithFormat:@"NOT (%K BETWEEN %@)", v8, v24];
      goto LABEL_28;
    }

    if (v3 != 10)
    {
      if (v3 == 11)
      {
        v26 = MEMORY[0x1E696AE18];
        v8 = [(PLPropertyValidationRule *)self keyPath];
        v13 = [(PLPropertyValidationRule *)self keyPath];
        v23 = [(PLPropertyValidationRule *)self expectedValue];
        [v26 predicateWithFormat:@"%K == nil OR %K == %@", v8, v13, v23];
      }

      else
      {
        if (v3 != 12)
        {
          goto LABEL_39;
        }

        v10 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];

        if (v10)
        {
          v11 = [(PLPropertyValidationRule *)self expectedValueRangeLow];

          v12 = MEMORY[0x1E696AE18];
          v8 = [(PLPropertyValidationRule *)self keyPath];
          v13 = [(PLPropertyValidationRule *)self keyPath];
          if (v11)
          {
            v14 = [(PLPropertyValidationRule *)self expectedValueRangeLow];
            v34[0] = v14;
            v15 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
            v34[1] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
            v4 = [v12 predicateWithFormat:@"%K == NULL OR (%K BETWEEN %@)", v8, v13, v16];

            goto LABEL_37;
          }

          v23 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
          [v12 predicateWithFormat:@"%K == NULL OR %K <= %@", v8, v13, v23];
        }

        else
        {
          v31 = MEMORY[0x1E696AE18];
          v8 = [(PLPropertyValidationRule *)self keyPath];
          v13 = [(PLPropertyValidationRule *)self keyPath];
          v23 = [(PLPropertyValidationRule *)self expectedValueRangeLow];
          [v31 predicateWithFormat:@"%K == NULL OR %K >= %@", v8, v13, v23];
        }
      }
      v4 = ;
      goto LABEL_36;
    }

    v29 = MEMORY[0x1E696AE18];
    v8 = [(PLPropertyValidationRule *)self keyPath];
    v9 = [(PLPropertyValidationRule *)self keyPath];
    [v29 predicateWithFormat:@"%K == NULL OR %K == 0", v8, v9];
  }

  v4 = LABEL_31:;

LABEL_38:
LABEL_39:

  return v4;
}

- (BOOL)evaluateWithObject:(id)a3 outMessage:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = [(PLPropertyValidationRule *)self type];
  if (v7 == 1)
  {
LABEL_7:
    v15 = 1;
    goto LABEL_12;
  }

  if (!v7)
  {
    if (a4)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [(PLPropertyValidationRule *)self keyPaths];
      v12 = [v11 allObjects];
      v13 = [v12 componentsJoinedByString:{@", "}];
      v14 = [(PLPropertyValidationRule *)self descriptionOfCurrentValuesOfObject:v6];
      *a4 = [v8 stringWithFormat:@"Skipping property validation for: %@.(%@). Actual value: %@", v10, v13, v14];
      v15 = 1;
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v16 = [(PLPropertyValidationRule *)self predicate];
  v15 = [v16 evaluateWithObject:v6];

  if (a4 && (v15 & 1) == 0)
  {
    v22 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v10 = NSStringFromClass(v17);
    v11 = [(PLPropertyValidationRule *)self keyPaths];
    v12 = [v11 allObjects];
    v13 = [v12 componentsJoinedByString:{@", "}];
    v14 = [v6 objectID];
    v18 = [(PLPropertyValidationRule *)self descriptionOfCurrentValuesOfObject:v6];
    v19 = [(PLPropertyValidationRule *)self predicate];
    v20 = [v19 description];
    *a4 = [v22 stringWithFormat:@"Property value validation failure: %@.(%@) (%@). Actual values: (%@). Expected values: (%@)", v10, v13, v14, v18, v20];

    v15 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return v15;
}

- (id)reverseRule
{
  v3 = [(PLPropertyValidationRule *)self type];
  v4 = 0;
  if (v3 > 5)
  {
    if (v3 > 7)
    {
      if (v3 != 8)
      {
        if (v3 != 9)
        {
          goto LABEL_24;
        }

        v5 = [(PLPropertyValidationRule *)self keyPath];
        v11 = 2;
LABEL_16:
        v4 = _PLPropertyValidationRuleMake(v11, v5, 0, 0, 0, 0);
        goto LABEL_23;
      }

      v5 = [(PLPropertyValidationRule *)self keyPath];
      v6 = [(PLPropertyValidationRule *)self expectedValues];
      v7 = 6;
    }

    else
    {
      if (v3 != 6)
      {
        v5 = [(PLPropertyValidationRule *)self keyPath];
        v8 = [(PLPropertyValidationRule *)self expectedValueRangeLow];
        v9 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
        v10 = 5;
        goto LABEL_11;
      }

      v5 = [(PLPropertyValidationRule *)self keyPath];
      v6 = [(PLPropertyValidationRule *)self expectedValues];
      v7 = 8;
    }

    v12 = v5;
    v13 = 0;
    v14 = v6;
    goto LABEL_22;
  }

  if (v3 <= 3)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        goto LABEL_24;
      }

      v5 = [(PLPropertyValidationRule *)self keyPath];
      v6 = [(PLPropertyValidationRule *)self expectedValue];
      v7 = 4;
      goto LABEL_19;
    }

    v5 = [(PLPropertyValidationRule *)self keyPath];
    v11 = 9;
    goto LABEL_16;
  }

  if (v3 == 4)
  {
    v5 = [(PLPropertyValidationRule *)self keyPath];
    v6 = [(PLPropertyValidationRule *)self expectedValue];
    v7 = 3;
LABEL_19:
    v12 = v5;
    v13 = v6;
    v14 = 0;
LABEL_22:
    v4 = _PLPropertyValidationRuleMake(v7, v12, v13, 0, 0, v14);

    goto LABEL_23;
  }

  v5 = [(PLPropertyValidationRule *)self keyPath];
  v8 = [(PLPropertyValidationRule *)self expectedValueRangeLow];
  v9 = [(PLPropertyValidationRule *)self expectedValueRangeHigh];
  v10 = 7;
LABEL_11:
  v4 = _PLPropertyValidationRuleMake(v10, v5, 0, v8, v9, 0);

LABEL_23:
LABEL_24:

  return v4;
}

@end