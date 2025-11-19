@interface UIKBResizableKeyplaneTransformation
+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4;
@end

@implementation UIKBResizableKeyplaneTransformation

+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v125[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (([v5 visualStyling] & 0xFF0000) != 0x260000)
  {
    v10 = v5;
    goto LABEL_39;
  }

  v7 = [v5 firstCachedKeyWithName:@"Delete-Key"];
  if (v7)
  {
    [v5 removeKey:v7];
  }

  v8 = [v6 screenTraits];
  v9 = v8;
  if (v8 && v8[35] == 1)
  {

    goto LABEL_10;
  }

  v11 = [v6 screenTraits];
  if (!v11)
  {
    v13 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v12 = v11[37];

  if (v12 == 1)
  {
LABEL_10:
    v9 = [v5 firstCachedKeyWithName:@"Space-Key"];
    if (v9)
    {
      [v5 removeKey:v9];
    }

    v13 = [v5 firstCachedKeyWithName:@"Emoji-Search-Control-Key"];
    if (v13)
    {
      [v5 removeKey:v13];
    }

    v14 = [v5 firstCachedKeyWithName:@"Dismiss-Key"];
    if (v14)
    {
      [v5 removeKey:v14];
    }

    goto LABEL_17;
  }

LABEL_18:
  [v5 frame];
  v16 = v15;
  v113 = v17;
  [v6 keyboardSize];
  v19 = v18;
  v21 = v20;
  v22 = [v6 screenTraits];
  if (v22 && (v22[37] & 1) != 0)
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
    v24 = [v6 screenTraits];
    v25 = [v24 screen];
    [v25 scale];
    v27 = v26;

    [v5 numberOfRows];
    v28 = [v5 firstCachedKeyWithName:@"Emoji-InputView-Key"];
    v29 = [v5 firstCachedKeyWithName:@"Emoji-Category-Control-Key"];
    v30 = [v5 firstCachedKeyWithName:@"Emoji-International-Key"];
    v31 = [v6 screenTraits];
    if (v31)
    {
      v32 = v31[37];

      if (v32 == 1)
      {
        if (v29)
        {
          [v5 removeKey:v29];
        }

        if (v30)
        {
          [v5 removeKey:v30];
        }
      }
    }

    v33 = [v6 screenTraits];
    v111 = v30;
    v112 = v21;
    if (v33)
    {
      v34 = v33[37];

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
          [v5 resizeKeys:v65 withOffset:v19 - (v35 + v35) - v60 scale:{v64 - v62, v27}];

          v124 = v28;
          v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
          v16 = v108;
          [v5 repositionKeys:v66 withOffset:v35 - v105 scale:{v103 - v103, v27}];
        }

        v67 = v112;
        if (v29)
        {
          v68 = [v6 screenTraits];
          if (!v68 || (v69 = v68[37], v68, (v69 & 1) == 0))
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
            [v5 resizeKeys:v76 withOffset:v19 - (v35 + v35) - v73 scale:{0.0, v27}];

            v122 = v29;
            v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
            v78 = MaxY - v106;
            v16 = v74;
            v67 = v112;
            [v5 repositionKeys:v77 withOffset:v35 - v109 scale:{v78, v27}];
          }
        }

        if (v30)
        {
          v79 = [v6 screenTraits];
          if (!v79 || (v80 = v79[37], v79, (v80 & 1) == 0))
          {
            [v30 frame];
            v82 = v81;
            v84 = v83;
            [v29 frame];
            v86 = v85;
            v121 = v30;
            v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
            [v5 resizeKeys:v87 withOffset:0.0 - v84 scale:{0.0, v27}];

            v120 = v30;
            v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
            [v5 repositionKeys:v88 withOffset:0.0 scale:{v86 - v82, v27}];
          }
        }

        v102 = v28;
        v104 = v7;
        v107 = v6;
        v89 = [UIKBShapeOperator operatorWithScale:v27, v29];
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v110 = v5;
        v90 = [v5 subtrees];
        v91 = [v90 countByEnumeratingWithState:&v114 objects:v119 count:16];
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
                objc_enumerationMutation(v90);
              }

              v95 = *(*(&v114 + 1) + 8 * i);
              if ([v95 type] == 3)
              {
                v96 = [v95 shape];
                v118 = v96;
                v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
                v98 = [v89 shapesByResizingShapes:v97 withOffset:{v19 - v16, v67 - v113}];
                v99 = [v98 firstObject];
                [v95 setShape:v99];
              }
            }

            v92 = [v90 countByEnumeratingWithState:&v114 objects:v119 count:16];
          }

          while (v92);
        }

        v5 = v110;
        [v110 setObject:0 forProperty:@"KBunionFrame"];
        [v110 setObject:0 forProperty:@"KBunionPaddedFrame"];

        v100 = v110;
        v7 = v104;
        v6 = v107;
        goto LABEL_38;
      }
    }

    v39 = [v6 screenTraits];
    if (!v39)
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

    v40 = v39[35];

    if (v40 != 1)
    {
      v36 = 1.0;
      v35 = 0.0;
      goto LABEL_56;
    }

    v41 = v29;
    v42 = v28;
    v43 = [v6 screenTraits];
    if (([v43 orientation] - 1) >= 2)
    {
      v44 = +[UIDevice currentDevice];
      v45 = v7;
      v46 = [v44 userInterfaceIdiom];

      v47 = v46 & 0xFFFFFFFFFFFFFFFBLL;
      v7 = v45;

      v36 = 0.0;
      if (v47 != 1)
      {
LABEL_51:
        v49 = +[UIKeyboard activeKeyboard];
        v50 = [v49 window];
        v51 = v50;
        if (v50)
        {
          v52 = v50;
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
  v37 = v5;
LABEL_38:

LABEL_39:

  return v5;
}

@end