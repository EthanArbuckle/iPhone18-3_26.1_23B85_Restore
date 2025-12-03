@interface UIKBPhoneToCarPlayTransformation
+ (id)cachedKeys;
+ (id)cachedKeysForTransformationContext:(id)context;
+ (id)fillFrame:(CGRect)frame withEmptyKeyNamed:(id)named inKeyplane:(id)keyplane withTransformationContext:(id)context;
+ (id)transform10KeyKeyplane:(id)keyplane withTransformationContext:(id)context;
+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context;
+ (id)transformQWERTYKeyplane:(id)keyplane withTransformationContext:(id)context;
+ (unint64_t)columnBySwappingForLeftHandDriveIfNeeded:(unint64_t)needed;
+ (void)removeAddedKeysFromKeyplane:(id)keyplane;
@end

@implementation UIKBPhoneToCarPlayTransformation

+ (id)cachedKeys
{
  v2 = __cachedKeys;
  if (!__cachedKeys)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v4 = __cachedKeys;
    __cachedKeys = dictionary;

    v2 = __cachedKeys;
  }

  return v2;
}

+ (unint64_t)columnBySwappingForLeftHandDriveIfNeeded:(unint64_t)needed
{
  IsRightHandDrive = UIKeyboardCarPlayIsRightHandDrive();
  if ((needed & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    neededCopy = needed - 3;
  }

  else
  {
    neededCopy = needed;
  }

  if (needed - 1 <= 2)
  {
    v6 = needed | 4;
  }

  else
  {
    v6 = neededCopy;
  }

  if (IsRightHandDrive)
  {
    return needed;
  }

  else
  {
    return v6;
  }
}

+ (id)fillFrame:(CGRect)frame withEmptyKeyNamed:(id)named inKeyplane:(id)keyplane withTransformationContext:(id)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  namedCopy = named;
  keyplaneCopy = keyplane;
  contextCopy = context;
  cachedKeys = [self cachedKeys];
  v17 = [cachedKeys objectForKey:namedCopy];

  if (v17)
  {
    [keyplaneCopy removeKey:v17];
  }

  else
  {
    v18 = [keyplaneCopy firstCachedKeyWithName:@"Return-Key"];
    v17 = [v18 copy];
  }

  [v17 setDisplayType:0];
  [v17 setInteractionType:0];
  [v17 setDisplayString:&stru_1EFB14550];
  [v17 setRepresentedString:&stru_1EFB14550];
  [v17 setFrame:{x, y, width, height}];
  [v17 setPaddedFrame:{x, y, width, height}];
  [v17 setName:namedCopy];
  cachedKeys2 = [self cachedKeys];
  name = [v17 name];
  [cachedKeys2 setObject:v17 forKey:name];

  [v17 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  screenTraits = [contextCopy screenTraits];

  screen = [screenTraits screen];
  [screen scale];
  [keyplaneCopy insertKey:v17 withFrame:0 andShiftKeys:v22 scale:{v24, v26, v28, v31}];

  return v17;
}

+ (void)removeAddedKeysFromKeyplane:(id)keyplane
{
  v16 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  cachedKeys = [self cachedKeys];
  allValues = [cachedKeys allValues];

  v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [keyplaneCopy removeKey:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

+ (id)transformQWERTYKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v116 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  contextCopy = context;
  selfCopy = self;
  [self removeAddedKeysFromKeyplane:keyplaneCopy];
  v79 = keyplaneCopy;
  [keyplaneCopy keyUnionFrame];
  v9 = v8;
  v11 = v10;
  v80 = contextCopy;
  screenTraits = [contextCopy screenTraits];
  screen = [screenTraits screen];
  [screen scale];

  [keyplaneCopy frame];
  numberOfRows = [keyplaneCopy numberOfRows];
  LODWORD(keyplaneCopy) = UIKeyboardAlwaysShowCandidateBarForCurrentInputMode();
  [v80 keyboardSize];
  v77 = keyplaneCopy;
  UICeilToScale((v15 - v9) / (numberOfRows + keyplaneCopy), 1.0);
  v17 = v16 <= 0.0 || numberOfRows == 0;
  if (!v17 && v11 > 0.0)
  {
    v18 = v16;
    keys = [v79 keys];
    [v80 keyboardSize];
    v21 = v20 / v11;
    if (v20 / v11 != 1.0)
    {
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v22 = keys;
      v23 = [v22 countByEnumeratingWithState:&v110 objects:v115 count:16];
      if (v23)
      {
        v24 = *v111;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v111 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v110 + 1) + 8 * i);
            [v26 frame];
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v34 = v33;
            shape = [v26 shape];
            v36 = [shape copy];

            [v36 setFrame:{v21 * v28, v30, v21 * v32, v34}];
            [v26 setShape:v36];
          }

          v23 = [v22 countByEnumeratingWithState:&v110 objects:v115 count:16];
        }

        while (v23);
      }
    }

    v104 = 0;
    v105 = &v104;
    v106 = 0x3032000000;
    v107 = __Block_byref_object_copy__153;
    v108 = __Block_byref_object_dispose__153;
    v109 = 0;
    v37 = [keys sortedArrayUsingComparator:&__block_literal_global_445];

    array = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_2;
    aBlock[3] = &unk_1E70F6200;
    v39 = array;
    v103 = v39;
    v40 = _Block_copy(aBlock);
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_3;
    v99[3] = &unk_1E711AA70;
    v84 = v40;
    v101 = v84;
    v76 = v39;
    v100 = v76;
    v41 = _Block_copy(v99);
    v98[0] = 0;
    v98[1] = v98;
    v98[2] = 0x2020000000;
    v98[3] = 0;
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_4;
    v93[3] = &unk_1E711AA98;
    v96 = v98;
    v97 = selfCopy;
    v74 = v79;
    v94 = v74;
    v83 = v80;
    v95 = v83;
    v42 = _Block_copy(v93);
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_5;
    v89[3] = &unk_1E711AAC0;
    v92 = &v104;
    v43 = v41;
    v90 = v43;
    v81 = v42;
    v91 = v81;
    v44 = _Block_copy(v89);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v37;
    v45 = [obj countByEnumeratingWithState:&v85 objects:v114 count:16];
    if (v45)
    {
      v46 = *v86;
      v47 = v18 * round(v18 / v18);
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v86 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v85 + 1) + 8 * j);
          [v49 frame];
          v51 = v50;
          v53 = v52;
          v54 = v9 + v18 * (v77 + ([v49 displayRowHint] - 1));
          v55 = v105[5];
          if (v55 && (v56 = [v55 displayRowHint], v56 == objc_msgSend(v49, "displayRowHint")))
          {
            [v105[5] frame];
            MaxX = CGRectGetMaxX(v118);
            if ([v105[5] interactionType] == 14)
            {
              UIRoundToScale(v51, 1.0);
              v44[2](v44, 1, 0);
              [v105[5] frame];
              MaxX = CGRectGetMaxX(v119);
            }

            v58 = MaxX - v51;
            UIRoundToScale(v53 - v58, 1.0);
            v60 = v59;
            v61 = v51 + v58;
          }

          else
          {
            v62 = v84[2](v51);
            UIFloorToScale(v62, 1.0);
            v61 = v63;
            UIRoundToScale(v53, 1.0);
            v60 = v64;
            [v83 keyboardSize];
            v44[2](v44, 0, 1);
            if (v61 > 1.0)
            {
              v65 = v81[2](0.0, v54, v61, v47);
              [v65 frame];
              (*(v43 + 2))(v43, v65, 1);
            }
          }

          (*(v43 + 2))(v43, v49, 1, v61, v54, v60, v47);
          if ([v49 visible])
          {
            [v49 frame];
            if (v66 > 0.0)
            {
              objc_storeStrong(v105 + 5, v49);
            }
          }
        }

        v45 = [obj countByEnumeratingWithState:&v85 objects:v114 count:16];
      }

      while (v45);
    }

    [v83 keyboardSize];
    v44[2](v44, 0, 1);
    if (v77)
    {
      cachedKeys = [selfCopy cachedKeys];
      v68 = [cachedKeys objectForKey:@"Candidate-Selection"];

      if (!v68)
      {
        v69 = [v74 firstCachedKeyWithName:@"Space-Key"];
        v68 = [v69 copy];
      }

      [v68 setName:{@"Candidate-Selection", v74}];
      [v68 setDisplayString:&stru_1EFB14550];
      [v68 setRepresentedString:&stru_1EFB14550];
      [v68 setDisplayType:1];
      [v68 setInteractionType:3];
      [v83 keyboardSize];
      [v68 setFrame:{0.0, v9, v70, v18}];
      [v68 frame];
      [v68 setPaddedFrame:?];
      cachedKeys2 = [selfCopy cachedKeys];
      name = [v68 name];
      [cachedKeys2 setObject:v68 forKey:name];

      [v68 frame];
      [v75 insertKey:v68 withFrame:0 andShiftKeys:? scale:?];
    }

    _Block_object_dispose(v98, 8);
    _Block_object_dispose(&v104, 8);
  }

  return v79;
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

void __86__UIKBPhoneToCarPlayTransformation_transformQWERTYKeyplane_withTransformationContext___block_invoke_3(uint64_t a1, void *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a2;
  v22.origin.x = a4;
  v22.origin.y = a5;
  v22.size.width = a6;
  v22.size.height = a7;
  MaxX = CGRectGetMaxX(v22);
  v15 = (*(*(a1 + 40) + 16))();
  if (v15 == MaxX)
  {
    v16 = *(a1 + 32);
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:MaxX];
    [v16 addObject:v17];
  }

  else
  {
    a6 = v15 - a4;
  }

  v18 = [v13 shape];
  v20 = [v18 copy];

  [v20 setFrame:{a4, a5, a6, a7}];
  if (a3)
  {
    v19 = 0.5;
  }

  else
  {
    v19 = 0.0;
  }

  [v20 setPaddedFrame:{a4 + 0.0, a5 + 0.5, a6 - v19, a7 + -0.5}];
  [v13 setShape:v20];
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

+ (id)transform10KeyKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v56 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  contextCopy = context;
  [keyplaneCopy keyUnionFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [contextCopy keyboardSize];
  v15 = v14;
  [contextCopy keyboardSize];
  v49 = round((v16 - v9) * 0.25);
  v50 = v9;
  if (v49 > 0.0)
  {
    v17 = v15 * 0.125;
    if (v15 * 0.125 > 0.0)
    {
      keys = [keyplaneCopy keys];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v19 = [keys countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = v11 * 0.125;
        v22 = round(v13 * 0.25);
        v23 = *v52;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v52 != v23)
            {
              objc_enumerationMutation(keys);
            }

            v25 = *(*(&v51 + 1) + 8 * i);
            shape = [v25 shape];
            v27 = [shape copy];

            [v27 frame];
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v35 = v34;
            if ([v25 displayType] == 9 || objc_msgSend(v25, "displayType") == 2)
            {
              [v25 setVisible:0];
            }

            else
            {
              v36 = v50 + v49 * round(v31 / v22) + 1.0;
              v37 = v49 * round(v35 / v22);
              v38 = [self columnBySwappingForLeftHandDriveIfNeeded:vcvtad_u64_f64(v29 / v21)];
              UIRoundToScale(v17 * v38, 1.0);
              v40 = v39;
              v41 = round(v33 / v21);
              interactionType = [v25 interactionType];
              v43 = 3.0;
              if (interactionType != 3)
              {
                v43 = v41;
              }

              UIRoundToScale(v17 * (v43 + v38), 1.0);
              v45 = v44;
              [contextCopy keyboardSize];
              if (v45 < v46)
              {
                v46 = v45;
              }

              v47 = v46 - v40;
              [v27 setFrame:{v40, v36, v46 - v40, v37}];
              [v27 setPaddedFrame:{v40, v36, v47, v37}];
              [v25 setShape:v27];
            }
          }

          v20 = [keys countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v20);
      }
    }
  }

  return keyplaneCopy;
}

+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context
{
  keyplaneCopy = keyplane;
  contextCopy = context;
  visualStyling = [keyplaneCopy visualStyling];
  v9 = BYTE2(visualStyling);
  [keyplaneCopy setVisualStyling:visualStyling & 0xFFFFFFFFFFFFFFC0 | 3];
  if (v9 <= 0x22u && ((1 << v9) & 0x600000002) != 0)
  {
    v11 = [self transform10KeyKeyplane:keyplaneCopy withTransformationContext:contextCopy];
LABEL_6:
    v12 = v11;

    keyplaneCopy = v12;
    goto LABEL_7;
  }

  name = [keyplaneCopy name];
  v15 = [name containsString:@"iPhone"];

  if (v15)
  {
    v11 = [self transformQWERTYKeyplane:keyplaneCopy withTransformationContext:contextCopy];
    goto LABEL_6;
  }

LABEL_7:

  return keyplaneCopy;
}

+ (id)cachedKeysForTransformationContext:(id)context
{
  cachedKeys = [self cachedKeys];
  allValues = [cachedKeys allValues];

  return allValues;
}

@end