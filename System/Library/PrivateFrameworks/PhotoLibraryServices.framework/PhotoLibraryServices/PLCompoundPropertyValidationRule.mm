@interface PLCompoundPropertyValidationRule
+ (id)andCompoundPropertyValidationRuleWithRules:(id)rules;
+ (id)orCompoundPropertyValidationRuleWithRules:(id)rules;
- (PLCompoundPropertyValidationRule)initWithType:(int64_t)type rules:(id)rules;
- (id)currentValuesOfObject:(id)object;
- (id)keyPaths;
- (id)predicate;
@end

@implementation PLCompoundPropertyValidationRule

- (id)currentValuesOfObject:(id)object
{
  v20 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  keyPaths = [(PLCompoundPropertyValidationRule *)self keyPaths];
  v7 = [keyPaths countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(keyPaths);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [objectCopy valueForKey:v11];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v5 setObject:null forKeyedSubscript:v11];
        }
      }

      v8 = [keyPaths countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  rules = [(PLCompoundPropertyValidationRule *)self rules];
  v5 = [rules countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(rules);
        }

        keyPaths = [*(*(&v11 + 1) + 8 * i) keyPaths];
        [v3 unionSet:keyPaths];
      }

      v6 = [rules countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  rules = [(PLCompoundPropertyValidationRule *)self rules];
  v5 = [rules countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(rules);
        }

        predicate = [*(*(&v13 + 1) + 8 * i) predicate];
        [v3 addObject:predicate];
      }

      v6 = [rules countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  compoundType = [(PLCompoundPropertyValidationRule *)self compoundType];
  if (compoundType == 1)
  {
    v11 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v3];
  }

  else
  {
    if (compoundType)
    {
      goto LABEL_13;
    }

    v11 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];
  }

  self = v11;
LABEL_13:

  return self;
}

- (PLCompoundPropertyValidationRule)initWithType:(int64_t)type rules:(id)rules
{
  rulesCopy = rules;
  v11.receiver = self;
  v11.super_class = PLCompoundPropertyValidationRule;
  v8 = [(PLCompoundPropertyValidationRule *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PLPropertyValidationRule *)v8 setType:13];
    v9->_compoundType = type;
    objc_storeStrong(&v9->_rules, rules);
  }

  return v9;
}

+ (id)orCompoundPropertyValidationRuleWithRules:(id)rules
{
  rulesCopy = rules;
  v5 = [[self alloc] initWithType:1 rules:rulesCopy];

  return v5;
}

+ (id)andCompoundPropertyValidationRuleWithRules:(id)rules
{
  rulesCopy = rules;
  v5 = [[self alloc] initWithType:0 rules:rulesCopy];

  return v5;
}

@end