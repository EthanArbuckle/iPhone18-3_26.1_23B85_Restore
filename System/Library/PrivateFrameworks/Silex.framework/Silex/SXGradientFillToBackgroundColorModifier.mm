@interface SXGradientFillToBackgroundColorModifier
- (id)convertGradientFillToBackgroundColorForComponentStyle:(id)a3;
- (void)modifyDOM:(id)a3 context:(id)a4;
@end

@implementation SXGradientFillToBackgroundColorModifier

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 componentStyles];
  v7 = [v6 copy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SXGradientFillToBackgroundColorModifier_modifyDOM_context___block_invoke;
  v9[3] = &unk_1E84FF830;
  v10 = v5;
  v11 = self;
  v8 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __61__SXGradientFillToBackgroundColorModifier_modifyDOM_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 backgroundColor];

  if (!v7)
  {
    v8 = [v6 fill];
    if (v8)
    {
      v9 = v8;
      v10 = [v6 fill];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v28 = a1;
        v29 = v6;
        v30 = v5;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v12 = [v6 fill];
        v13 = [v12 colorStops];

        obj = v13;
        v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = *v33;
          while (2)
          {
            v18 = 0;
            v19 = v16;
            do
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v32 + 1) + 8 * v18);
              if (v19)
              {
                v21 = [v19 color];
                v22 = [v21 hex];
                v23 = [v20 color];
                v24 = [v23 hex];
                v25 = [v22 isEqualToString:v24];

                if (!v25)
                {
                  v6 = v29;
                  v26 = obj;
                  goto LABEL_18;
                }
              }

              v16 = v20;

              ++v18;
              v19 = v16;
            }

            while (v15 != v18);
            v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v16 = 0;
        }

        v6 = v29;
        v26 = [*(v28 + 40) convertGradientFillToBackgroundColorForComponentStyle:v29];
        v27 = [*(v28 + 32) componentStyles];
        [v27 setObject:v26 forKeyedSubscript:v30];

        v19 = v16;
LABEL_18:

        v5 = v30;
      }
    }
  }
}

- (id)convertGradientFillToBackgroundColorForComponentStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 JSONRepresentation];
  v5 = [v4 mutableCopy];

  v6 = [v3 fill];
  v7 = [v6 colorStops];
  v8 = [v7 firstObject];

  v9 = [v8 color];

  if (v9)
  {
    v10 = [v8 color];
    v11 = [v10 hex];
    [v5 setObject:v11 forKeyedSubscript:@"backgroundColor"];

    [v5 setObject:0 forKeyedSubscript:@"fill"];
  }

  v12 = [SXComponentStyle alloc];
  v13 = [v3 specificationVersion];
  v14 = [(SXJSONObject *)v12 initWithJSONObject:v5 andVersion:v13];

  return v14;
}

@end