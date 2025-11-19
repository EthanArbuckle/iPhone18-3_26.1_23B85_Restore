@interface UIKBResizingOffsetKeyplaneTransformation
+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4;
@end

@implementation UIKBResizingOffsetKeyplaneTransformation

+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v64[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 visualStyling] & 0xFF0000;
  v8 = [v5 visualStyling] & 0xFF0000;
  [v6 resizingOffset];
  if (v9 >= -170.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -170.0;
  }

  if (v7 != 589824 && v8 != 2490368 && v10 != 0.0)
  {
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 candidateController];
    [v12 candidateBarHeight];
    v10 = v10 + v13;
  }

  [v5 resizingOffset];
  v15 = v14;
  v16 = [v6 screenTraits];
  [v16 orientation];

  v17 = [v6 screenTraits];
  v18 = [v17 screen];
  [v18 scale];
  v20 = v19;

  [v5 numberOfRows];
  v21 = v10 - v15;
  if (v21 != 0.0)
  {
    [v5 setResizingOffset:v10];
    v50 = v7;
    v51 = v6;
    if (v7 == 589824)
    {
      v23 = [v5 firstCachedKeyWithName:@"Handwriting-Input"];
      v22 = v23;
      if (v23)
      {
        v64[0] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
        [v5 resizeKeys:v24 withOffset:0.0 scale:{v21, v20}];
      }

      v27 = [v5 keysForDisplayRowAtIndex:2];
      [v5 repositionKeys:v27 withOffset:0.0 scale:{v21, v20}];
    }

    else if (v8 == 2490368)
    {
      v25 = [v5 firstCachedKeyWithName:@"Emoji-InputView-Key"];
      v22 = v25;
      if (v25)
      {
        v63 = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
        [v5 resizeKeys:v26 withOffset:0.0 scale:{v21, v20}];
      }

      v28 = [v5 keys];
      v29 = [v28 mutableCopy];

      [v29 removeObject:v22];
      [v5 repositionKeys:v29 withOffset:0.0 scale:{v21, v20}];
    }

    else
    {
      v22 = [v5 keys];
      [v5 repositionKeys:v22 withOffset:0.0 scale:{v21, v20}];
    }

    v30 = [UIKBShapeOperator operatorWithScale:v20];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v52 = v5;
    v31 = [v5 subtrees];
    v32 = [v31 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v54;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v53 + 1) + 8 * i);
          if ([v36 type] == 3)
          {
            v37 = [v36 shape];
            v61 = v37;
            v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
            v39 = [v30 shapesByResizingShapes:v38 withOffset:{0.0, v21}];
            v40 = [v39 firstObject];
            [v36 setShape:v40];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v33);
    }

    v5 = v52;
    [v52 setObject:0 forProperty:@"KBunionFrame"];
    [v52 setObject:0 forProperty:@"KBunionPaddedFrame"];

    v7 = v50;
    v6 = v51;
  }

  if (v7 == 589824)
  {
    v41 = [v5 firstCachedKeyWithName:@"Candidate-Selection"];
    v42 = v41;
    if (v41)
    {
      [v41 paddedFrame];
      if (CGRectGetMinY(v66) == 0.0)
      {
        v60 = v42;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
        [v5 insetKeys:v43 withInsets:11.0 scale:{0.0, 0.0, 0.0, v20}];

        v59 = v42;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        [v5 resizeKeys:v44 withOffset:0.0 scale:{11.0, v20}];
      }
    }

    v45 = [v5 firstCachedKeyWithName:@"Delete-Key"];
    v46 = v45;
    if (v45)
    {
      [v45 paddedFrame];
      if (CGRectGetMinY(v67) == 0.0)
      {
        v58 = v46;
        v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
        [v5 insetKeys:v47 withInsets:11.0 scale:{0.0, 0.0, 0.0, v20}];

        v57 = v46;
        v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
        [v5 resizeKeys:v48 withOffset:0.0 scale:{11.0, v20}];
      }
    }
  }

  return v5;
}

@end