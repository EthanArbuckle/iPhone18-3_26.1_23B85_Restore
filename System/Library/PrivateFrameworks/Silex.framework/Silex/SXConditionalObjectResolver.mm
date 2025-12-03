@interface SXConditionalObjectResolver
- (SXConditionalObjectResolver)initWithConditionValidator:(id)validator objectMerger:(id)merger;
- (id)resolveObjects:(id)objects context:(id)context;
@end

@implementation SXConditionalObjectResolver

- (SXConditionalObjectResolver)initWithConditionValidator:(id)validator objectMerger:(id)merger
{
  validatorCopy = validator;
  mergerCopy = merger;
  v12.receiver = self;
  v12.super_class = SXConditionalObjectResolver;
  v9 = [(SXConditionalObjectResolver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conditionValidator, validator);
    objc_storeStrong(&v10->_objectMerger, merger);
  }

  return v10;
}

- (id)resolveObjects:(id)objects context:(id)context
{
  v47 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DFA8] set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = objectsCopy;
  v25 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v25)
  {
    v24 = *v41;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v9;
        v10 = *(*(&v40 + 1) + 8 * v9);
        [array addObject:v10];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        conditional = [v10 conditional];
        v30 = [conditional countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v30)
        {
          v29 = *v37;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v37 != v29)
              {
                objc_enumerationMutation(conditional);
              }

              v12 = *(*(&v36 + 1) + 8 * i);
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v31 = v12;
              conditions = [v12 conditions];
              v14 = [conditions countByEnumeratingWithState:&v32 objects:v44 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v33;
                while (2)
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v33 != v16)
                    {
                      objc_enumerationMutation(conditions);
                    }

                    v18 = *(*(&v32 + 1) + 8 * j);
                    types = [v18 types];
                    [v8 unionSet:types];

                    if ([(SXConditionValidating *)self->_conditionValidator validateCondition:v18 context:contextCopy])
                    {
                      [array addObject:v31];
                      goto LABEL_21;
                    }
                  }

                  v15 = [conditions countByEnumeratingWithState:&v32 objects:v44 count:16];
                  if (v15)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_21:
            }

            v30 = [conditional countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v30);
        }

        v9 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v25);
  }

  v20 = [(SXJSONObjectMerger *)self->_objectMerger mergeObjects:array];
  v21 = [[SXResolvedObject alloc] initWitObject:v20 conditionTypes:v8];

  return v21;
}

@end