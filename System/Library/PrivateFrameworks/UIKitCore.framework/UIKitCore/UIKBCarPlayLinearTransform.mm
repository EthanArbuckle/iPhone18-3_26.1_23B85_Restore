@interface UIKBCarPlayLinearTransform
+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context;
@end

@implementation UIKBCarPlayLinearTransform

+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v45 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  [keyplaneCopy frame];
  v6 = v5;
  v7 = v5 + -60.0;
  v40 = 0u;
  v41 = 0u;
  if (v5 + -40.0 <= 331.0)
  {
    v8 = v5 + -60.0;
  }

  else
  {
    v8 = 331.0;
  }

  v42 = 0uLL;
  v43 = 0uLL;
  keys = [keyplaneCopy keys];
  v10 = [keys countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = (v8 + -40.0) * 0.5;
    v13 = fmax((v6 - v8) * 0.5, 20.0);
    v14 = *v41;
    v39 = v7 + 24.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(keys);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        shape = [v16 shape];
        v18 = [shape copy];

        [v16 paddedFrame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        interactionType = [v16 interactionType];
        if (interactionType > 12)
        {
          if (interactionType == 13)
          {
            [keyplaneCopy frame];
            v26 = 28.0;
            v31 = v12 + v13 + v36 + 28.0 + 12.0;
            goto LABEL_20;
          }

          if (interactionType == 15)
          {
            [keyplaneCopy frame];
            v26 = 28.0;
            v31 = v13 + v30 + 28.0;
LABEL_20:
            v20 = v31 + 12.0;
            [keyplaneCopy frame];
            v22 = v37 + 4.0 + v26 + 8.0;
            v24 = v12;
            goto LABEL_21;
          }
        }

        else
        {
          if (interactionType == 9)
          {
            [keyplaneCopy frame];
            v20 = v13 + v34;
            [keyplaneCopy frame];
            v24 = 28.0;
            v22 = v35 + 4.0 + 28.0 + 8.0;
            v26 = 28.0;
            goto LABEL_21;
          }

          if (interactionType == 11)
          {
            [keyplaneCopy frame];
            v20 = v28 + 12.0;
            [keyplaneCopy frame];
            v22 = v29 + 4.0 + 4.0;
            v26 = 20.0;
            v24 = 28.0;
            goto LABEL_21;
          }
        }

        if ([v16 displayType] == 38)
        {
          [keyplaneCopy frame];
          v26 = 28.0;
          v20 = v32 + 12.0 + 28.0 + 8.0;
          [keyplaneCopy frame];
          v22 = v33 + 4.0;
          v24 = v39;
        }

LABEL_21:
        [v18 setFrame:{v20, v22, v24, v26}];
        [v18 setPaddedFrame:{v20, v22, v24, v26}];
        [v16 setShape:v18];
      }

      v11 = [keys countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v11);
  }

  return keyplaneCopy;
}

@end