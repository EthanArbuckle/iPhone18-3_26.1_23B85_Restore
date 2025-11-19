@interface UIKBPhoneToCarPlayTransformation
+ (id)cachedKeys;
+ (id)cachedKeysForTransformationContext:(id)a3;
+ (id)fillFrame:(CGRect)a3 withEmptyKeyNamed:(id)a4 inKeyplane:(id)a5 withTransformationContext:(id)a6;
+ (id)transform10KeyKeyplane:(id)a3 withTransformationContext:(id)a4;
+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4;
+ (id)transformQWERTYKeyplane:(id)a3 withTransformationContext:(id)a4;
+ (unint64_t)columnBySwappingForLeftHandDriveIfNeeded:(unint64_t)a3;
+ (void)removeAddedKeysFromKeyplane:(id)a3;
@end

@implementation UIKBPhoneToCarPlayTransformation

+ (id)cachedKeysForTransformationContext:(id)a3
{
  v3 = [a1 cachedKeys];
  v4 = [v3 allValues];

  return v4;
}

+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 visualStyling];
  v9 = BYTE2(v8);
  [v6 setVisualStyling:v8 & 0xFFFFFFFFFFFFFFC0 | 3];
  if (v9 <= 0x22u && ((1 << v9) & 0x600000002) != 0)
  {
    v11 = [a1 transform10KeyKeyplane:v6 withTransformationContext:v7];
LABEL_6:
    v12 = v11;

    v6 = v12;
    goto LABEL_7;
  }

  v14 = [v6 name];
  v15 = [v14 containsString:@"iPhone"];

  if (v15)
  {
    v11 = [a1 transformQWERTYKeyplane:v6 withTransformationContext:v7];
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

+ (id)transform10KeyKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 keyUnionFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v7 keyboardSize];
  v15 = v14;
  [v7 keyboardSize];
  v42 = round((v16 - v9) * 0.25);
  v43 = v9;
  if (v42 > 0.0 && v15 * 0.125 > 0.0)
  {
    v17 = [v6 keys];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = v11 * 0.125;
      v21 = round(v13 * 0.25);
      v22 = *v45;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v44 + 1) + 8 * i);
          v25 = [v24 shape];
          v26 = [v25 copy];

          [v26 frame];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          if ([v24 displayType] == 9 || objc_msgSend(v24, "displayType") == 2)
          {
            [v24 setVisible:0];
          }

          else
          {
            v33 = v43 + round(v30 / v21) * v42 + 1.0;
            v34 = v42 * round(v32 / v21);
            [a1 columnBySwappingForLeftHandDriveIfNeeded:vcvtad_u64_f64(v28 / v20)];
            UIRoundToScale();
            v36 = v35;
            [v24 interactionType];
            UIRoundToScale();
            v38 = v37;
            [v7 keyboardSize];
            if (v38 < v39)
            {
              v39 = v38;
            }

            v40 = v39 - v36;
            [v26 setFrame:{v36, v33, v39 - v36, v34}];
            [v26 setPaddedFrame:{v36, v33, v40, v34}];
            [v24 setShape:v26];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v19);
    }
  }

  return v6;
}

+ (id)transformQWERTYKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v113 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [a1 removeAddedKeysFromKeyplane:v6];
  [v6 keyUnionFrame];
  v9 = v8;
  v11 = v10;
  v12 = [v7 screenTraits];
  v13 = [v12 screen];
  [v13 scale];

  [v6 frame];
  v14 = [v6 numberOfRows];
  v15 = UIKeyboardAlwaysShowCandidateBarForCurrentInputMode();
  [v7 keyboardSize];
  UICeilToScale();
  v17 = v16 <= 0.0 || v14 == 0;
  if (!v17 && v11 > 0.0)
  {
    v18 = v16;
    v77 = v15;
    v19 = [v6 keys];
    [v7 keyboardSize];
    v21 = v20 / v11;
    v76 = a1;
    if (v20 / v11 != 1.0)
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v22 = v19;
      v23 = [v22 countByEnumeratingWithState:&v107 objects:v112 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v108;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v108 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v107 + 1) + 8 * i);
            [v27 frame];
            v29 = v28;
            v31 = v30;
            v33 = v21 * v32;
            v35 = v21 * v34;
            v36 = [v27 shape];
            v37 = [v36 copy];

            [v37 setFrame:{v33, v29, v35, v31}];
            [v27 setShape:v37];
          }

          v24 = [v22 countByEnumeratingWithState:&v107 objects:v112 count:16];
        }

        while (v24);
      }

      a1 = v76;
    }

    v101 = 0;
    v102 = &v101;
    v103 = 0x3032000000;
    v104 = __Block_byref_object_copy__3320;
    v105 = __Block_byref_object_dispose__3321;
    v106 = 0;
    v38 = [v19 sortedArrayUsingComparator:&__block_literal_global_3322];

    v39 = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_2;
    aBlock[3] = &unk_1E72D7410;
    v40 = v39;
    v100 = v40;
    v41 = _Block_copy(aBlock);
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_3;
    v96[3] = &unk_1E72D7438;
    v81 = v41;
    v98 = v81;
    v75 = v40;
    v97 = v75;
    v42 = _Block_copy(v96);
    v95[0] = 0;
    v95[1] = v95;
    v95[2] = 0x2020000000;
    v95[3] = 0;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_4;
    v90[3] = &unk_1E72D7460;
    v93 = v95;
    v94 = a1;
    v74 = v6;
    v91 = v74;
    v80 = v7;
    v92 = v80;
    v43 = _Block_copy(v90);
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_5;
    v86[3] = &unk_1E72D7488;
    v89 = &v101;
    v44 = v42;
    v87 = v44;
    v78 = v43;
    v88 = v78;
    v45 = _Block_copy(v86);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v38;
    v46 = [obj countByEnumeratingWithState:&v82 objects:v111 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v83;
      v49 = v18 * round(v18 / v18);
      v50 = 1.0;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v83 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v52 = *(*(&v82 + 1) + 8 * j);
          [v52 frame];
          v54 = v53;
          v55 = v9 + (v77 + ([v52 displayRowHint] - 1)) * v18;
          v56 = v102[5];
          if (v56 && (v57 = [v56 displayRowHint], v57 == objc_msgSend(v52, "displayRowHint")))
          {
            [v102[5] frame];
            MaxX = CGRectGetMaxX(v115);
            if ([v102[5] interactionType] == 14)
            {
              UIRoundToScale();
              v45[2](v45, 1, 0);
              [v102[5] frame];
              MaxX = CGRectGetMaxX(v116);
            }

            v59 = v54 + MaxX - v54;
            UIRoundToScale();
            v61 = v60;
            v50 = 1.0;
          }

          else
          {
            v81[2](v54);
            UIFloorToScale();
            v59 = v62;
            UIRoundToScale();
            v61 = v63;
            [v80 keyboardSize];
            v45[2](v45, 0, 1);
            if (v59 > v50)
            {
              v64 = v78[2](0.0, v55, v59, v49);
              [v64 frame];
              (*(v44 + 2))(v44, v64, 1);
            }
          }

          (*(v44 + 2))(v44, v52, 1, v59, v55, v61, v49);
          if ([v52 visible])
          {
            [v52 frame];
            if (v65 > 0.0)
            {
              objc_storeStrong(v102 + 5, v52);
            }
          }
        }

        v47 = [obj countByEnumeratingWithState:&v82 objects:v111 count:16];
      }

      while (v47);
    }

    [v80 keyboardSize];
    v45[2](v45, 0, 1);
    if (v77)
    {
      v66 = [v76 cachedKeys];
      v67 = [v66 objectForKey:@"Candidate-Selection"];

      v68 = v74;
      if (!v67)
      {
        v69 = [v74 firstCachedKeyWithName:@"Space-Key"];
        v67 = [v69 copy];
      }

      [v67 setName:{@"Candidate-Selection", v74}];
      [v67 setDisplayString:&stru_1F03BA8F8];
      [v67 setRepresentedString:&stru_1F03BA8F8];
      [v67 setDisplayType:1];
      [v67 setInteractionType:3];
      [v80 keyboardSize];
      [v67 setFrame:{0.0, v9, v70, v18}];
      [v67 frame];
      [v67 setPaddedFrame:?];
      v71 = [v76 cachedKeys];
      v72 = [v67 name];
      [v71 setObject:v67 forKey:v72];

      [v67 frame];
      [v68 insertKey:v67 withFrame:0 andShiftKeys:? scale:?];
    }

    _Block_object_dispose(v95, 8);
    _Block_object_dispose(&v101, 8);
  }

  return v6;
}

double __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_2(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 floatValue];
        if (vabdd_f64(a2, v9) <= 1.0)
        {
          [v8 floatValue];
          a2 = v10;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return a2;
}

void __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_3(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  MaxX = CGRectGetMaxX(v19);
  v13 = (*(*(a1 + 40) + 16))();
  if (v13 == MaxX)
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:MaxX];
    [v14 addObject:v15];
  }

  else
  {
    a5 = v13 - a3;
  }

  v16 = [v11 shape];
  v17 = [v16 copy];

  [v17 setFrame:{a3, a4, a5, a6}];
  UIRectInset();
  [v17 setPaddedFrame:?];
  [v11 setShape:v17];
}

id __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Empty-Key-%ld", *(*(*(a1 + 48) + 8) + 24)];
  ++*(*(*(a1 + 48) + 8) + 24);
  v11 = [*(a1 + 56) fillFrame:v10 withEmptyKeyNamed:*(a1 + 32) inKeyplane:*(a1 + 40) withTransformationContext:{a2, a3, a4, a5}];

  return v11;
}

void __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_5(void *a1, uint64_t a2, int a3, double a4)
{
  [*(*(a1[6] + 8) + 40) frame];
  if (*(*(a1[6] + 8) + 40))
  {
    v12 = v8.n128_f64[0];
    v13 = v9.n128_f64[0];
    v14 = v11.n128_f64[0];
    if (a3 && (v15 = v10.n128_f64[0], CGRectGetMaxX(*v8.n128_u64) <= a4 + -10.0))
    {
      v17 = a1[5];
      v25.origin.x = v12;
      v25.origin.y = v13;
      v25.size.width = v15;
      v25.size.height = v14;
      MaxX = CGRectGetMaxX(v25);
      v26.origin.x = v12;
      v26.origin.y = v13;
      v26.size.width = v15;
      v26.size.height = v14;
      v19 = CGRectGetMaxX(v26);
      v20 = (*(v17 + 16))(v17, MaxX, v13, a4 - v19, v14);
      v21 = a1[4];
      [v20 frame];
      (*(v21 + 16))(v21, v20, a2);
      v22 = *(a1[6] + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v20;
    }

    else
    {
      v16 = *(a1[4] + 16);
      v8.n128_f64[0] = v12;
      v9.n128_f64[0] = v13;
      v11.n128_f64[0] = v14;

      v10.n128_f64[0] = a4 - v12;
      v16(v8, v9, v10, v11);
    }
  }
}

uint64_t __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 frame];
  v6 = v5;
  v8 = v7;
  [v4 frame];
  v10 = v9;
  v12 = v11;

  v13 = vabdd_f64(v8, v12);
  v14 = v13 < 0.1;
  if (v13 >= 0.1)
  {
    v15 = v8;
  }

  else
  {
    v15 = v6;
  }

  if (v14)
  {
    v16 = v10;
  }

  else
  {
    v16 = v12;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v19 = [v17 compare:v18];

  return v19;
}

+ (void)removeAddedKeysFromKeyplane:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a1 cachedKeys];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 removeKey:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

+ (id)fillFrame:(CGRect)a3 withEmptyKeyNamed:(id)a4 inKeyplane:(id)a5 withTransformationContext:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [a1 cachedKeys];
  v17 = [v16 objectForKey:v13];

  if (v17)
  {
    [v14 removeKey:v17];
  }

  else
  {
    v18 = [v14 firstCachedKeyWithName:@"Return-Key"];
    v17 = [v18 copy];
  }

  [v17 setDisplayType:0];
  [v17 setInteractionType:0];
  [v17 setDisplayString:&stru_1F03BA8F8];
  [v17 setRepresentedString:&stru_1F03BA8F8];
  [v17 setFrame:{x, y, width, height}];
  [v17 setPaddedFrame:{x, y, width, height}];
  [v17 setName:v13];
  v19 = [a1 cachedKeys];
  v20 = [v17 name];
  [v19 setObject:v17 forKey:v20];

  [v17 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v15 screenTraits];

  v30 = [v29 screen];
  [v30 scale];
  [v14 insertKey:v17 withFrame:0 andShiftKeys:v22 scale:{v24, v26, v28, v31}];

  return v17;
}

+ (unint64_t)columnBySwappingForLeftHandDriveIfNeeded:(unint64_t)a3
{
  v4 = _TUIKeyboardCarPlayIsRightHandDrive();
  if ((a3 & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    v5 = a3 - 3;
  }

  else
  {
    v5 = a3;
  }

  if (a3 - 1 <= 2)
  {
    v6 = a3 | 4;
  }

  else
  {
    v6 = v5;
  }

  if (v4)
  {
    return a3;
  }

  else
  {
    return v6;
  }
}

+ (id)cachedKeys
{
  v2 = __cachedKeys;
  if (!__cachedKeys)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = __cachedKeys;
    __cachedKeys = v3;

    v2 = __cachedKeys;
  }

  return v2;
}

@end