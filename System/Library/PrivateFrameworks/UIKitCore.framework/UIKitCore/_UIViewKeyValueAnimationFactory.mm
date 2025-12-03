@interface _UIViewKeyValueAnimationFactory
+ (id)animationsTransitioningFromAnimation:(id)animation toAnimation:(id)toAnimation onView:(id)view;
@end

@implementation _UIViewKeyValueAnimationFactory

+ (id)animationsTransitioningFromAnimation:(id)animation toAnimation:(id)toAnimation onView:(id)view
{
  v46 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  toAnimationCopy = toAnimation;
  viewCopy = view;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v35 = animationCopy;
  _collectTransitions(animationCopy, dictionary, &__block_literal_global_713);
  v34 = toAnimationCopy;
  _collectTransitions(toAnimationCopy, dictionary, &__block_literal_global_16_10);
  array = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = dictionary;
  v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v39)
  {
    v37 = viewCopy;
    v38 = *v42;
    v36 = array;
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
        v15 = viewCopy;
        v16 = v13;
        v17 = v14;
        fromAnimation = [v17 fromAnimation];
        fromValue = [fromAnimation fromValue];

        toAnimation = [v17 toAnimation];
        toValue = [toAnimation toValue];

        if (!(fromValue | toValue))
        {
          v28 = 0;
          goto LABEL_23;
        }

        v22 = objc_opt_class();
        layer = [v15 layer];
        v24 = [v22 _defaultUIViewAnimationForLayer:layer forKey:v16];

        if (v24)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v24 setAdditive:1];
            if (fromValue && toValue)
            {
              v25 = fromValue;
              v26 = toValue;
              v27 = 0xFFFFFFFFLL;
              goto LABEL_17;
            }

            if (fromValue || !toValue)
            {
              if (!fromValue || toValue)
              {
                abort();
              }

              v30 = fromValue;
              v29 = v30;
              v31 = v30;
            }

            else
            {
              v25 = toValue;
              v26 = toValue;
              v27 = 4294967294;
LABEL_17:
              v29 = [v25 CA_addValue:v26 multipliedBy:v27];
              v30 = toValue;
              v31 = toValue;
            }

            v32 = [v30 CA_addValue:v31 multipliedBy:0xFFFFFFFFLL];
            [v24 setFromValue:v29];
            [v24 setToValue:v32];
            v28 = v24;

            array = v36;
            viewCopy = v37;
            goto LABEL_22;
          }
        }

        v28 = 0;
LABEL_22:

LABEL_23:
        if (v28)
        {
          [array addObject:v28];
        }
      }

      v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v39);
  }

  return array;
}

@end