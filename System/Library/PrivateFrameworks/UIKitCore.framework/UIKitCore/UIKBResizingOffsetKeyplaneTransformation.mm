@interface UIKBResizingOffsetKeyplaneTransformation
+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context;
@end

@implementation UIKBResizingOffsetKeyplaneTransformation

+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v64[1] = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  contextCopy = context;
  v7 = [keyplaneCopy visualStyling] & 0xFF0000;
  v8 = [keyplaneCopy visualStyling] & 0xFF0000;
  [contextCopy resizingOffset];
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
    candidateController = [v11 candidateController];
    [candidateController candidateBarHeight];
    v10 = v10 + v13;
  }

  [keyplaneCopy resizingOffset];
  v15 = v14;
  screenTraits = [contextCopy screenTraits];
  [screenTraits orientation];

  screenTraits2 = [contextCopy screenTraits];
  screen = [screenTraits2 screen];
  [screen scale];
  v20 = v19;

  [keyplaneCopy numberOfRows];
  v21 = v10 - v15;
  if (v21 != 0.0)
  {
    [keyplaneCopy setResizingOffset:v10];
    v50 = v7;
    v51 = contextCopy;
    if (v7 == 589824)
    {
      v23 = [keyplaneCopy firstCachedKeyWithName:@"Handwriting-Input"];
      keys2 = v23;
      if (v23)
      {
        v64[0] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
        [keyplaneCopy resizeKeys:v24 withOffset:0.0 scale:{v21, v20}];
      }

      v27 = [keyplaneCopy keysForDisplayRowAtIndex:2];
      [keyplaneCopy repositionKeys:v27 withOffset:0.0 scale:{v21, v20}];
    }

    else if (v8 == 2490368)
    {
      v25 = [keyplaneCopy firstCachedKeyWithName:@"Emoji-InputView-Key"];
      keys2 = v25;
      if (v25)
      {
        v63 = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
        [keyplaneCopy resizeKeys:v26 withOffset:0.0 scale:{v21, v20}];
      }

      keys = [keyplaneCopy keys];
      v29 = [keys mutableCopy];

      [v29 removeObject:keys2];
      [keyplaneCopy repositionKeys:v29 withOffset:0.0 scale:{v21, v20}];
    }

    else
    {
      keys2 = [keyplaneCopy keys];
      [keyplaneCopy repositionKeys:keys2 withOffset:0.0 scale:{v21, v20}];
    }

    v30 = [UIKBShapeOperator operatorWithScale:v20];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v52 = keyplaneCopy;
    subtrees = [keyplaneCopy subtrees];
    v32 = [subtrees countByEnumeratingWithState:&v53 objects:v62 count:16];
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
            objc_enumerationMutation(subtrees);
          }

          v36 = *(*(&v53 + 1) + 8 * i);
          if ([v36 type] == 3)
          {
            shape = [v36 shape];
            v61 = shape;
            v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
            v39 = [v30 shapesByResizingShapes:v38 withOffset:{0.0, v21}];
            firstObject = [v39 firstObject];
            [v36 setShape:firstObject];
          }
        }

        v33 = [subtrees countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v33);
    }

    keyplaneCopy = v52;
    [v52 setObject:0 forProperty:@"KBunionFrame"];
    [v52 setObject:0 forProperty:@"KBunionPaddedFrame"];

    v7 = v50;
    contextCopy = v51;
  }

  if (v7 == 589824)
  {
    v41 = [keyplaneCopy firstCachedKeyWithName:@"Candidate-Selection"];
    v42 = v41;
    if (v41)
    {
      [v41 paddedFrame];
      if (CGRectGetMinY(v66) == 0.0)
      {
        v60 = v42;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
        [keyplaneCopy insetKeys:v43 withInsets:11.0 scale:{0.0, 0.0, 0.0, v20}];

        v59 = v42;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
        [keyplaneCopy resizeKeys:v44 withOffset:0.0 scale:{11.0, v20}];
      }
    }

    v45 = [keyplaneCopy firstCachedKeyWithName:@"Delete-Key"];
    v46 = v45;
    if (v45)
    {
      [v45 paddedFrame];
      if (CGRectGetMinY(v67) == 0.0)
      {
        v58 = v46;
        v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
        [keyplaneCopy insetKeys:v47 withInsets:11.0 scale:{0.0, 0.0, 0.0, v20}];

        v57 = v46;
        v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
        [keyplaneCopy resizeKeys:v48 withOffset:0.0 scale:{11.0, v20}];
      }
    }
  }

  return keyplaneCopy;
}

@end