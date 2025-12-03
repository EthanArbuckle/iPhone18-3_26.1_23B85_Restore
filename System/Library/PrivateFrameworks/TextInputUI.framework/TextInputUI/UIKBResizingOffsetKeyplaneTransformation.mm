@interface UIKBResizingOffsetKeyplaneTransformation
+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context;
@end

@implementation UIKBResizingOffsetKeyplaneTransformation

+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v71[1] = *MEMORY[0x1E69E9840];
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
    v60 = 0;
    v61 = &v60;
    v62 = 0x2050000000;
    v11 = getUIKeyboardImplClass_softClass;
    v63 = getUIKeyboardImplClass_softClass;
    if (!getUIKeyboardImplClass_softClass)
    {
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __getUIKeyboardImplClass_block_invoke;
      v59[3] = &unk_1E72D8058;
      v59[4] = &v60;
      __getUIKeyboardImplClass_block_invoke(v59);
      v11 = v61[3];
    }

    v12 = v11;
    _Block_object_dispose(&v60, 8);
    activeInstance = [v11 activeInstance];
    candidateController = [activeInstance candidateController];
    [candidateController candidateBarHeight];
    v10 = v10 + v15;
  }

  [keyplaneCopy resizingOffset];
  v17 = v16;
  screenTraits = [contextCopy screenTraits];
  [screenTraits orientation];

  screenTraits2 = [contextCopy screenTraits];
  screen = [screenTraits2 screen];
  [screen scale];
  v22 = v21;

  [keyplaneCopy numberOfRows];
  v23 = v10 - v17;
  if (v23 != 0.0)
  {
    [keyplaneCopy setResizingOffset:v10];
    v52 = v7;
    v53 = contextCopy;
    if (v7 == 589824)
    {
      v25 = [keyplaneCopy firstCachedKeyWithName:@"Handwriting-Input"];
      keys2 = v25;
      if (v25)
      {
        v71[0] = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
        [keyplaneCopy resizeKeys:v26 withOffset:0.0 scale:{v23, v22}];
      }

      v29 = [keyplaneCopy keysForDisplayRowAtIndex:2];
      [keyplaneCopy repositionKeys:v29 withOffset:0.0 scale:{v23, v22}];
    }

    else if (v8 == 2490368)
    {
      v27 = [keyplaneCopy firstCachedKeyWithName:@"Emoji-InputView-Key"];
      keys2 = v27;
      if (v27)
      {
        v70 = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
        [keyplaneCopy resizeKeys:v28 withOffset:0.0 scale:{v23, v22}];
      }

      keys = [keyplaneCopy keys];
      v31 = [keys mutableCopy];

      [v31 removeObject:keys2];
      [keyplaneCopy repositionKeys:v31 withOffset:0.0 scale:{v23, v22}];
    }

    else
    {
      keys2 = [keyplaneCopy keys];
      [keyplaneCopy repositionKeys:keys2 withOffset:0.0 scale:{v23, v22}];
    }

    v32 = [MEMORY[0x1E69DCB78] operatorWithScale:v22];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v54 = keyplaneCopy;
    subtrees = [keyplaneCopy subtrees];
    v34 = [subtrees countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v56;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v56 != v36)
          {
            objc_enumerationMutation(subtrees);
          }

          v38 = *(*(&v55 + 1) + 8 * i);
          if ([v38 type] == 3)
          {
            shape = [v38 shape];
            v68 = shape;
            v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
            v41 = [v32 shapesByResizingShapes:v40 withOffset:{0.0, v23}];
            firstObject = [v41 firstObject];
            [v38 setShape:firstObject];
          }
        }

        v35 = [subtrees countByEnumeratingWithState:&v55 objects:v69 count:16];
      }

      while (v35);
    }

    keyplaneCopy = v54;
    [v54 setObject:0 forProperty:@"KBunionFrame"];
    [v54 setObject:0 forProperty:@"KBunionPaddedFrame"];

    v7 = v52;
    contextCopy = v53;
  }

  if (v7 == 589824)
  {
    v43 = [keyplaneCopy firstCachedKeyWithName:@"Candidate-Selection"];
    v44 = v43;
    if (v43)
    {
      [v43 paddedFrame];
      if (CGRectGetMinY(v73) == 0.0)
      {
        v67 = v44;
        v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
        [keyplaneCopy insetKeys:v45 withInsets:11.0 scale:{0.0, 0.0, 0.0, v22}];

        v66 = v44;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
        [keyplaneCopy resizeKeys:v46 withOffset:0.0 scale:{11.0, v22}];
      }
    }

    v47 = [keyplaneCopy firstCachedKeyWithName:@"Delete-Key"];
    v48 = v47;
    if (v47)
    {
      [v47 paddedFrame];
      if (CGRectGetMinY(v74) == 0.0)
      {
        v65 = v48;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
        [keyplaneCopy insetKeys:v49 withInsets:11.0 scale:{0.0, 0.0, 0.0, v22}];

        v64 = v48;
        v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
        [keyplaneCopy resizeKeys:v50 withOffset:0.0 scale:{11.0, v22}];
      }
    }
  }

  return keyplaneCopy;
}

@end