@interface UIKBResizableKeyplaneTransformation
+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context;
@end

@implementation UIKBResizableKeyplaneTransformation

+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v125[1] = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  contextCopy = context;
  if (([keyplaneCopy visualStyling] & 0xFF0000) != 0x260000)
  {
    v10 = keyplaneCopy;
    goto LABEL_39;
  }

  v7 = [keyplaneCopy firstCachedKeyWithName:@"Delete-Key"];
  if (v7)
  {
    [keyplaneCopy removeKey:v7];
  }

  screenTraits = [contextCopy screenTraits];
  v9 = screenTraits;
  if (screenTraits && screenTraits[35] == 1)
  {

    goto LABEL_10;
  }

  screenTraits2 = [contextCopy screenTraits];
  if (!screenTraits2)
  {
    v13 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v12 = screenTraits2[37];

  if (v12 == 1)
  {
LABEL_10:
    v9 = [keyplaneCopy firstCachedKeyWithName:@"Space-Key"];
    if (v9)
    {
      [keyplaneCopy removeKey:v9];
    }

    v13 = [keyplaneCopy firstCachedKeyWithName:@"Emoji-Search-Control-Key"];
    if (v13)
    {
      [keyplaneCopy removeKey:v13];
    }

    v14 = [keyplaneCopy firstCachedKeyWithName:@"Dismiss-Key"];
    if (v14)
    {
      [keyplaneCopy removeKey:v14];
    }

    goto LABEL_17;
  }

LABEL_18:
  [keyplaneCopy frame];
  v16 = v15;
  v113 = v17;
  [contextCopy keyboardSize];
  v19 = v18;
  v21 = v20;
  screenTraits3 = [contextCopy screenTraits];
  if (screenTraits3 && (screenTraits3[37] & 1) != 0)
  {
    if (v19 != 0.0)
    {
      goto LABEL_26;
    }

LABEL_36:

    goto LABEL_37;
  }

  v23 = v16 == v19;
  if (v113 != v21)
  {
    v23 = 0;
  }

  if (v19 == 0.0 || v23)
  {
    goto LABEL_36;
  }

LABEL_26:

  if (v21 != 0.0)
  {
    screenTraits4 = [contextCopy screenTraits];
    screen = [screenTraits4 screen];
    [screen scale];
    v27 = v26;

    [keyplaneCopy numberOfRows];
    v28 = [keyplaneCopy firstCachedKeyWithName:@"Emoji-InputView-Key"];
    v29 = [keyplaneCopy firstCachedKeyWithName:@"Emoji-Category-Control-Key"];
    v30 = [keyplaneCopy firstCachedKeyWithName:@"Emoji-International-Key"];
    screenTraits5 = [contextCopy screenTraits];
    if (screenTraits5)
    {
      v32 = screenTraits5[37];

      if (v32 == 1)
      {
        if (v29)
        {
          [keyplaneCopy removeKey:v29];
        }

        if (v30)
        {
          [keyplaneCopy removeKey:v30];
        }
      }
    }

    screenTraits6 = [contextCopy screenTraits];
    v111 = v30;
    v112 = v21;
    if (screenTraits6)
    {
      v34 = screenTraits6[37];

      v35 = 0.0;
      if (v34)
      {
        v36 = 0.0;
LABEL_56:
        if (v28)
        {
          [v28 frame];
          v105 = v55;
          v108 = v16;
          v57 = v56;
          v103 = v56;
          v58 = v36;
          v60 = v59;
          v62 = v61;
          [v29 frame];
          v64 = v21 - v57 - v58 * v63;
          v125[0] = v28;
          v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:1];
          [keyplaneCopy resizeKeys:v65 withOffset:v19 - (v35 + v35) - v60 scale:{v64 - v62, v27}];

          v124 = v28;
          v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
          v16 = v108;
          [keyplaneCopy repositionKeys:v66 withOffset:v35 - v105 scale:{v103 - v103, v27}];
        }

        v67 = v112;
        if (v29)
        {
          screenTraits7 = [contextCopy screenTraits];
          if (!screenTraits7 || (v69 = screenTraits7[37], screenTraits7, (v69 & 1) == 0))
          {
            [v29 frame];
            v106 = v71;
            v109 = v70;
            v73 = v72;
            [v28 frame];
            v74 = v16;
            MaxY = CGRectGetMaxY(v127);
            [v29 originalFrame];
            v123 = v29;
            v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
            [keyplaneCopy resizeKeys:v76 withOffset:v19 - (v35 + v35) - v73 scale:{0.0, v27}];

            v122 = v29;
            v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
            v78 = MaxY - v106;
            v16 = v74;
            v67 = v112;
            [keyplaneCopy repositionKeys:v77 withOffset:v35 - v109 scale:{v78, v27}];
          }
        }

        if (v30)
        {
          screenTraits8 = [contextCopy screenTraits];
          if (!screenTraits8 || (v80 = screenTraits8[37], screenTraits8, (v80 & 1) == 0))
          {
            [v30 frame];
            v82 = v81;
            v84 = v83;
            [v29 frame];
            v86 = v85;
            v121 = v30;
            v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
            [keyplaneCopy resizeKeys:v87 withOffset:0.0 - v84 scale:{0.0, v27}];

            v120 = v30;
            v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
            [keyplaneCopy repositionKeys:v88 withOffset:0.0 scale:{v86 - v82, v27}];
          }
        }

        v102 = v28;
        v104 = v7;
        v107 = contextCopy;
        v89 = [UIKBShapeOperator operatorWithScale:v27, v29];
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v110 = keyplaneCopy;
        subtrees = [keyplaneCopy subtrees];
        v91 = [subtrees countByEnumeratingWithState:&v114 objects:v119 count:16];
        if (v91)
        {
          v92 = v91;
          v93 = *v115;
          do
          {
            for (i = 0; i != v92; ++i)
            {
              if (*v115 != v93)
              {
                objc_enumerationMutation(subtrees);
              }

              v95 = *(*(&v114 + 1) + 8 * i);
              if ([v95 type] == 3)
              {
                shape = [v95 shape];
                v118 = shape;
                v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
                v98 = [v89 shapesByResizingShapes:v97 withOffset:{v19 - v16, v67 - v113}];
                firstObject = [v98 firstObject];
                [v95 setShape:firstObject];
              }
            }

            v92 = [subtrees countByEnumeratingWithState:&v114 objects:v119 count:16];
          }

          while (v92);
        }

        keyplaneCopy = v110;
        [v110 setObject:0 forProperty:@"KBunionFrame"];
        [v110 setObject:0 forProperty:@"KBunionPaddedFrame"];

        v100 = v110;
        v7 = v104;
        contextCopy = v107;
        goto LABEL_38;
      }
    }

    screenTraits9 = [contextCopy screenTraits];
    if (!screenTraits9)
    {
      v41 = v29;
      v42 = v28;
      v53 = 0;
      v36 = 1.0;
      v35 = 0.0;
LABEL_55:

      v28 = v42;
      v29 = v41;
      v30 = v111;
      goto LABEL_56;
    }

    v40 = screenTraits9[35];

    if (v40 != 1)
    {
      v36 = 1.0;
      v35 = 0.0;
      goto LABEL_56;
    }

    v41 = v29;
    v42 = v28;
    screenTraits10 = [contextCopy screenTraits];
    if (([screenTraits10 orientation] - 1) >= 2)
    {
      v44 = +[UIDevice currentDevice];
      v45 = v7;
      userInterfaceIdiom = [v44 userInterfaceIdiom];

      v47 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
      v7 = v45;

      v36 = 0.0;
      if (v47 != 1)
      {
LABEL_51:
        v49 = +[UIKeyboard activeKeyboard];
        window = [v49 window];
        v51 = window;
        if (window)
        {
          v52 = window;
        }

        else
        {
          v52 = +[UIWindow _applicationKeyWindow];
        }

        v53 = v52;

        [v53 safeAreaInsets];
        v21 = v21 - v36 * v54;
        v35 = 15.0;
        goto LABEL_55;
      }
    }

    else
    {
    }

    [objc_opt_class() estimatedProgressForHeight:v21];
    v36 = v48;
    goto LABEL_51;
  }

LABEL_37:
  v37 = keyplaneCopy;
LABEL_38:

LABEL_39:

  return keyplaneCopy;
}

@end