@interface UIKBCarPlayLinearTransform
+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4;
@end

@implementation UIKBCarPlayLinearTransform

+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 frame];
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
  v9 = [v4 keys];
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = [v16 shape];
        v18 = [v17 copy];

        [v16 paddedFrame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v27 = [v16 interactionType];
        if (v27 > 12)
        {
          if (v27 == 13)
          {
            [v4 frame];
            v26 = 28.0;
            v31 = v12 + v13 + v36 + 28.0 + 12.0;
            goto LABEL_20;
          }

          if (v27 == 15)
          {
            [v4 frame];
            v26 = 28.0;
            v31 = v13 + v30 + 28.0;
LABEL_20:
            v20 = v31 + 12.0;
            [v4 frame];
            v22 = v37 + 4.0 + v26 + 8.0;
            v24 = v12;
            goto LABEL_21;
          }
        }

        else
        {
          if (v27 == 9)
          {
            [v4 frame];
            v20 = v13 + v34;
            [v4 frame];
            v24 = 28.0;
            v22 = v35 + 4.0 + 28.0 + 8.0;
            v26 = 28.0;
            goto LABEL_21;
          }

          if (v27 == 11)
          {
            [v4 frame];
            v20 = v28 + 12.0;
            [v4 frame];
            v22 = v29 + 4.0 + 4.0;
            v26 = 20.0;
            v24 = 28.0;
            goto LABEL_21;
          }
        }

        if ([v16 displayType] == 38)
        {
          [v4 frame];
          v26 = 28.0;
          v20 = v32 + 12.0 + 28.0 + 8.0;
          [v4 frame];
          v22 = v33 + 4.0;
          v24 = v39;
        }

LABEL_21:
        [v18 setFrame:{v20, v22, v24, v26}];
        [v18 setPaddedFrame:{v20, v22, v24, v26}];
        [v16 setShape:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v11);
  }

  return v4;
}

@end