@interface SXConditionalObjectResolver
- (SXConditionalObjectResolver)initWithConditionValidator:(id)a3 objectMerger:(id)a4;
- (id)resolveObjects:(id)a3 context:(id)a4;
@end

@implementation SXConditionalObjectResolver

- (SXConditionalObjectResolver)initWithConditionValidator:(id)a3 objectMerger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXConditionalObjectResolver;
  v9 = [(SXConditionalObjectResolver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conditionValidator, a3);
    objc_storeStrong(&v10->_objectMerger, a4);
  }

  return v10;
}

- (id)resolveObjects:(id)a3 context:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v28 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DFA8] set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v6;
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
        [v28 addObject:v10];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v27 = [v10 conditional];
        v30 = [v27 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v30)
        {
          v29 = *v37;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v37 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v12 = *(*(&v36 + 1) + 8 * i);
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v31 = v12;
              v13 = [v12 conditions];
              v14 = [v13 countByEnumeratingWithState:&v32 objects:v44 count:16];
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
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v32 + 1) + 8 * j);
                    v19 = [v18 types];
                    [v8 unionSet:v19];

                    if ([(SXConditionValidating *)self->_conditionValidator validateCondition:v18 context:v7])
                    {
                      [v28 addObject:v31];
                      goto LABEL_21;
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v32 objects:v44 count:16];
                  if (v15)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_21:
            }

            v30 = [v27 countByEnumeratingWithState:&v36 objects:v45 count:16];
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

  v20 = [(SXJSONObjectMerger *)self->_objectMerger mergeObjects:v28];
  v21 = [[SXResolvedObject alloc] initWitObject:v20 conditionTypes:v8];

  return v21;
}

@end