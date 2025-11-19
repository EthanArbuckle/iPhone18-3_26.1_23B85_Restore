@interface PLCompoundPropertyValidationRule
+ (id)andCompoundPropertyValidationRuleWithRules:(id)a3;
+ (id)orCompoundPropertyValidationRuleWithRules:(id)a3;
- (PLCompoundPropertyValidationRule)initWithType:(int64_t)a3 rules:(id)a4;
- (id)currentValuesOfObject:(id)a3;
- (id)keyPaths;
- (id)predicate;
@end

@implementation PLCompoundPropertyValidationRule

- (id)currentValuesOfObject:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(PLCompoundPropertyValidationRule *)self keyPaths];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v4 valueForKey:v11];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }

        else
        {
          v13 = [MEMORY[0x1E695DFB0] null];
          [v5 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)keyPaths
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(PLCompoundPropertyValidationRule *)self rules];
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

        v9 = [*(*(&v11 + 1) + 8 * i) keyPaths];
        [v3 unionSet:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)predicate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PLCompoundPropertyValidationRule *)self rules];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) predicate];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [(PLCompoundPropertyValidationRule *)self compoundType];
  if (v10 == 1)
  {
    v11 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];
  }

  else
  {
    if (v10)
    {
      goto LABEL_13;
    }

    v11 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];
  }

  self = v11;
LABEL_13:

  return self;
}

- (PLCompoundPropertyValidationRule)initWithType:(int64_t)a3 rules:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PLCompoundPropertyValidationRule;
  v8 = [(PLCompoundPropertyValidationRule *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PLPropertyValidationRule *)v8 setType:13];
    v9->_compoundType = a3;
    objc_storeStrong(&v9->_rules, a4);
  }

  return v9;
}

+ (id)orCompoundPropertyValidationRuleWithRules:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:1 rules:v4];

  return v5;
}

+ (id)andCompoundPropertyValidationRuleWithRules:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:0 rules:v4];

  return v5;
}

@end