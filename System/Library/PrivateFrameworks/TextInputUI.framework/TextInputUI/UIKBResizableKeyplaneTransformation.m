@interface UIKBResizableKeyplaneTransformation
+ (BOOL)_isStickerPickerService;
+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4;
@end

@implementation UIKBResizableKeyplaneTransformation

+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v113[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 visualStyling] & 0xFF0000) != 0x260000)
  {
    v20 = v6;
    goto LABEL_62;
  }

  v8 = [v6 firstCachedKeyWithName:@"Delete-Key"];
  if (v8)
  {
    [v6 removeKey:v8];
  }

  if (_TUIApplicationIsFirstPartyStickers_onceToken != -1)
  {
    dispatch_once(&_TUIApplicationIsFirstPartyStickers_onceToken, &__block_literal_global_1320);
  }

  if ((_TUIApplicationIsFirstPartyStickers_isFirstPartyStickers & 1) != 0 || [a1 _isStickerPickerService])
  {
    v9 = [v6 firstCachedKeyWithName:@"Space-Key"];
    if (v9)
    {
      [v6 removeKey:v9];
    }

    v10 = [v6 firstCachedKeyWithName:@"Emoji-Search-Control-Key"];
    if (v10)
    {
      [v6 removeKey:v10];
    }

    v11 = [v6 firstCachedKeyWithName:@"Dismiss-Key"];
    if (v11)
    {
      [v6 removeKey:v11];
    }
  }

  [v6 frame];
  v13 = v12;
  v15 = v14;
  [v7 keyboardSize];
  v17 = v16;
  v19 = v18;
  if ([a1 _isStickerPickerService])
  {
    if (v17 == 0.0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v21 = v13 == v17;
    if (v15 != v19)
    {
      v21 = 0;
    }

    if (v17 == 0.0 || v21)
    {
      goto LABEL_31;
    }
  }

  if (v19 != 0.0)
  {
    v22 = [v7 screenTraits];
    v23 = [v22 screen];
    [v23 scale];
    v25 = v24;

    [v6 numberOfRows];
    v26 = [v6 firstCachedKeyWithName:@"Emoji-InputView-Key"];
    v27 = [v6 firstCachedKeyWithName:@"Emoji-Category-Control-Key"];
    v28 = [v6 firstCachedKeyWithName:@"Emoji-International-Key"];
    if ([a1 _isStickerPickerService])
    {
      if (v27)
      {
        [v6 removeKey:v27];
      }

      if (v28)
      {
        [v6 removeKey:v28];
      }
    }

    v100 = 0.0;
    v96 = v7;
    v87 = v19;
    if ([a1 _isStickerPickerService])
    {
      v29 = 0.0;
LABEL_43:
      v42 = 0x1E695D000uLL;
      if (v26)
      {
        [v26 frame];
        v91 = v43;
        v93 = v13;
        v97 = v15;
        v45 = v44;
        v47 = v46;
        v48 = v25;
        v50 = v49;
        [v27 frame];
        v52 = v19 - v45 - v29 * v51;
        v113[0] = v26;
        v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:1];
        v54 = v52 - v50;
        v25 = v48;
        [v6 resizeKeys:v53 withOffset:v17 + v100 * -2.0 - v47 scale:{v54, v48}];

        v112 = v26;
        v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v112 count:1];
        v56 = v45 - v45;
        v13 = v93;
        v15 = v97;
        [v6 repositionKeys:v55 withOffset:v100 - v91 scale:{v56, v25}];
      }

      if (v27 && ([a1 _isStickerPickerService] & 1) == 0)
      {
        [v27 frame];
        v98 = v57;
        v94 = v58;
        v60 = v59;
        [v26 frame];
        MaxY = CGRectGetMaxY(v115);
        [v27 originalFrame];
        v111 = v27;
        v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
        [v6 resizeKeys:v62 withOffset:v17 + v100 * -2.0 - v60 scale:{0.0, v25}];

        v110 = v27;
        v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
        [v6 repositionKeys:v63 withOffset:v100 - v98 scale:{MaxY - v94, v25}];
      }

      v92 = v26;
      v95 = v8;
      if (v28 && ([a1 _isStickerPickerService] & 1) == 0)
      {
        [v28 frame];
        v65 = v64;
        v66 = v25;
        v68 = v67;
        [v27 frame];
        v70 = v69;
        v109 = v28;
        v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
        v72 = 0.0 - v68;
        v25 = v66;
        [v6 resizeKeys:v71 withOffset:v72 scale:{0.0, v66}];

        v108 = v28;
        v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
        [v6 repositionKeys:v73 withOffset:0.0 scale:{v70 - v65, v66}];
      }

      v89 = v28;
      v90 = v27;
      [MEMORY[0x1E69DCB78] operatorWithScale:{v25, *&v87}];
      v101 = v99 = v6;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v74 = [v6 subtrees];
      v75 = [v74 countByEnumeratingWithState:&v102 objects:v107 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v103;
        do
        {
          for (i = 0; i != v76; ++i)
          {
            if (*v103 != v77)
            {
              objc_enumerationMutation(v74);
            }

            v79 = *(*(&v102 + 1) + 8 * i);
            if ([v79 type] == 3)
            {
              v80 = [v79 shape];
              v106 = v80;
              v81 = [*(v42 + 3784) arrayWithObjects:&v106 count:1];
              [v101 shapesByResizingShapes:v81 withOffset:{v17 - v13, v88 - v15}];
              v83 = v82 = v42;
              v84 = [v83 firstObject];
              [v79 setShape:v84];

              v42 = v82;
            }
          }

          v76 = [v74 countByEnumeratingWithState:&v102 objects:v107 count:16];
        }

        while (v76);
      }

      v6 = v99;
      [v99 setObject:0 forProperty:@"KBunionFrame"];
      [v99 setObject:0 forProperty:@"KBunionPaddedFrame"];

      v85 = v99;
      v8 = v95;
      v7 = v96;
      goto LABEL_61;
    }

    if (_TUIApplicationIsFirstPartyStickers_onceToken != -1)
    {
      dispatch_once(&_TUIApplicationIsFirstPartyStickers_onceToken, &__block_literal_global_1320);
    }

    v29 = 1.0;
    if (_TUIApplicationIsFirstPartyStickers_isFirstPartyStickers != 1)
    {
      goto LABEL_43;
    }

    v31 = [v7 screenTraits];
    v32 = v8;
    if (([v31 orientation] - 1) >= 2)
    {
      v33 = [MEMORY[0x1E69DC938] currentDevice];
      v34 = [v33 userInterfaceIdiom];

      v29 = 0.0;
      if ((v34 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
LABEL_39:
        v36 = [MEMORY[0x1E69DCBB8] activeKeyboard];
        v37 = [v36 window];
        v38 = v37;
        if (v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
        }

        v40 = v39;

        [v40 safeAreaInsets];
        v19 = v19 - v41 * v29;

        v100 = 15.0;
        v8 = v32;
        goto LABEL_43;
      }
    }

    else
    {
    }

    [objc_opt_class() estimatedProgressForHeight:v19];
    v29 = v35;
    goto LABEL_39;
  }

LABEL_31:
  v30 = v6;
LABEL_61:

LABEL_62:

  return v6;
}

+ (BOOL)_isStickerPickerService
{
  if (_TUIApplicationIsStickerPickerService_onceToken != -1)
  {
    dispatch_once(&_TUIApplicationIsStickerPickerService_onceToken, &__block_literal_global_5);
  }

  if (_TUIApplicationIsStickerPickerService_isStickerPickerService == 1)
  {
    return [MEMORY[0x1E69DCBB8] canShowEmojiKeyboardInsideStickerPickerService] ^ 1;
  }

  else
  {
    return 0;
  }
}

@end