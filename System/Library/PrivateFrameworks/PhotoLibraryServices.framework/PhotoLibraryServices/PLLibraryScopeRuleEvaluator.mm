@interface PLLibraryScopeRuleEvaluator
- (PLLibraryScopeRuleEvaluator)initWithRules:(id)rules andInterpreter:(id)interpreter;
- (id)description;
- (id)evaluateObjects:(id)objects withResultEnumerationBlock:(id)block;
@end

@implementation PLLibraryScopeRuleEvaluator

- (id)evaluateObjects:(id)objects withResultEnumerationBlock:(id)block
{
  v79 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  blockCopy = block;
  v40 = objectsCopy;
  v52 = [objectsCopy mutableCopy];
  v47 = [MEMORY[0x1E695DFA8] set];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  selfCopy = self;
  obj = [(PLLibraryScopeRuleEvaluator *)self rules];
  v43 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v43)
  {
    v42 = *v70;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v70 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v44 = v8;
      v9 = *(*(&v69 + 1) + 8 * v8);
      context = objc_autoreleasePoolPush();
      allConditions = [v9 allConditions];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v48 = allConditions;
      v11 = [v48 countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v11)
      {
        v12 = v11;
        v50 = *v66;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v66 != v50)
            {
              objc_enumerationMutation(v48);
            }

            v14 = *(*(&v65 + 1) + 8 * i);
            v15 = objc_autoreleasePoolPush();
            interpreter = [(PLLibraryScopeRuleEvaluator *)selfCopy interpreter];
            v17 = [interpreter evaluateObjects:v52 forCondition:v14];

            if ([v17 count])
            {
              criteria = [v14 criteria];
              if (criteria == 2)
              {
                [v47 minusSet:v17];
                [v52 minusSet:v17];
              }

              else if (criteria == 1)
              {
                [v47 unionSet:v17];
              }

              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v19 = v17;
              v20 = [v19 countByEnumeratingWithState:&v61 objects:v76 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v62;
                do
                {
                  for (j = 0; j != v21; ++j)
                  {
                    if (*v62 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    [strongToStrongObjectsMapTable setObject:v14 forKey:*(*(&v61 + 1) + 8 * j)];
                  }

                  v21 = [v19 countByEnumeratingWithState:&v61 objects:v76 count:16];
                }

                while (v21);
              }
            }

            objc_autoreleasePoolPop(v15);
          }

          v12 = [v48 countByEnumeratingWithState:&v65 objects:v77 count:16];
        }

        while (v12);
      }

      v24 = [v52 count];
      objc_autoreleasePoolPop(context);
      if (!v24)
      {
        break;
      }

      v8 = v44 + 1;
      if (v44 + 1 == v43)
      {
        v43 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
        if (v43)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [v52 minusSet:v47];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  keyEnumerator = [strongToStrongObjectsMapTable keyEnumerator];
  v25 = [keyEnumerator countByEnumeratingWithState:&v57 objects:v75 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v58;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v58 != v27)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v29 = *(*(&v57 + 1) + 8 * k);
        v30 = [strongToStrongObjectsMapTable objectForKey:v29];
        criteria2 = [v30 criteria];
        v74 = v30;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
        blockCopy[2](blockCopy, v29, criteria2, v32);
      }

      v26 = [keyEnumerator countByEnumeratingWithState:&v57 objects:v75 count:16];
    }

    while (v26);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v33 = v52;
  v34 = [v33 countByEnumeratingWithState:&v53 objects:v73 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v54;
    v37 = MEMORY[0x1E695E0F0];
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v54 != v36)
        {
          objc_enumerationMutation(v33);
        }

        blockCopy[2](blockCopy, *(*(&v53 + 1) + 8 * m), 0, v37);
      }

      v35 = [v33 countByEnumeratingWithState:&v53 objects:v73 count:16];
    }

    while (v35);
  }

  return v47;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PLLibraryScopeRuleEvaluator;
  v4 = [(PLLibraryScopeRuleEvaluator *)&v9 description];
  interpreter = [(PLLibraryScopeRuleEvaluator *)self interpreter];
  rules = [(PLLibraryScopeRuleEvaluator *)self rules];
  v7 = [v3 stringWithFormat:@"%@ - interpreter: %@ rules: %@", v4, interpreter, rules];

  return v7;
}

- (PLLibraryScopeRuleEvaluator)initWithRules:(id)rules andInterpreter:(id)interpreter
{
  rulesCopy = rules;
  interpreterCopy = interpreter;
  v11.receiver = self;
  v11.super_class = PLLibraryScopeRuleEvaluator;
  v8 = [(PLLibraryScopeRuleEvaluator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PLLibraryScopeRuleEvaluator *)v8 setRules:rulesCopy];
    [(PLLibraryScopeRuleEvaluator *)v9 setInterpreter:interpreterCopy];
  }

  return v9;
}

@end