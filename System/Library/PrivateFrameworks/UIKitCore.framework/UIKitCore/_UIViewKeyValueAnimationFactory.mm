@interface _UIViewKeyValueAnimationFactory
+ (id)animationsTransitioningFromAnimation:(id)a3 toAnimation:(id)a4 onView:(id)a5;
@end

@implementation _UIViewKeyValueAnimationFactory

+ (id)animationsTransitioningFromAnimation:(id)a3 toAnimation:(id)a4 onView:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v35 = v7;
  _collectTransitions(v7, v10, &__block_literal_global_713);
  v34 = v8;
  _collectTransitions(v8, v10, &__block_literal_global_16_10);
  v11 = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v10;
  v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v39)
  {
    v37 = v9;
    v38 = *v42;
    v36 = v11;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = [obj objectForKeyedSubscript:v13];
        v15 = v9;
        v16 = v13;
        v17 = v14;
        v18 = [v17 fromAnimation];
        v19 = [v18 fromValue];

        v20 = [v17 toAnimation];
        v21 = [v20 toValue];

        if (!(v19 | v21))
        {
          v28 = 0;
          goto LABEL_23;
        }

        v22 = objc_opt_class();
        v23 = [v15 layer];
        v24 = [v22 _defaultUIViewAnimationForLayer:v23 forKey:v16];

        if (v24)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v24 setAdditive:1];
            if (v19 && v21)
            {
              v25 = v19;
              v26 = v21;
              v27 = 0xFFFFFFFFLL;
              goto LABEL_17;
            }

            if (v19 || !v21)
            {
              if (!v19 || v21)
              {
                abort();
              }

              v30 = v19;
              v29 = v30;
              v31 = v30;
            }

            else
            {
              v25 = v21;
              v26 = v21;
              v27 = 4294967294;
LABEL_17:
              v29 = [v25 CA_addValue:v26 multipliedBy:v27];
              v30 = v21;
              v31 = v21;
            }

            v32 = [v30 CA_addValue:v31 multipliedBy:0xFFFFFFFFLL];
            [v24 setFromValue:v29];
            [v24 setToValue:v32];
            v28 = v24;

            v11 = v36;
            v9 = v37;
            goto LABEL_22;
          }
        }

        v28 = 0;
LABEL_22:

LABEL_23:
        if (v28)
        {
          [v11 addObject:v28];
        }
      }

      v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v39);
  }

  return v11;
}

@end