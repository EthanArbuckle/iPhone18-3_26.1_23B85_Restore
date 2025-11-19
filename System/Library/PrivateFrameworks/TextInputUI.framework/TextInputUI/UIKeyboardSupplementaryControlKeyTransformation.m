@interface UIKeyboardSupplementaryControlKeyTransformation
+ (BOOL)_inputModeSupportsCrescendo:(id)a3;
+ (CGSize)layoutScaleFactorForContext:(id)a3;
+ (double)_derivedFiveRowControlKeyWidthForRow:(unint64_t)a3 keysForRow:(id)a4 context:(id)a5;
+ (double)_derivedLeadingControlKeyWidthForRow:(unint64_t)a3 keysForRow:(id)a4 context:(id)a5;
+ (double)_derivedTrailingControlKeyWidthForRow:(unint64_t)a3 orientation:(int64_t)a4;
+ (double)_keyPitchForKeyplane:(id)a3;
+ (double)_keyplanePaddingForOrientation:(int64_t)a3 row:(unint64_t)a4;
+ (double)_scaledDerivedLeadingControlKeyWidth:(double)a3 forKeysForRow:(id)a4 keyCount:(int64_t)a5 numberOfKeysInSpecification:(int64_t)a6 context:(id)a7;
+ (double)_totalKeyPaddingForOrientation:(int64_t)a3;
+ (id)_cachedUndoOrRedoKeyForKeyplane:(id)a3;
+ (id)_supplementaryControlKeySetForOrientation:(int64_t)a3 context:(id)a4;
+ (id)_supplementaryControlKeyWithName:(id)a3 context:(id)a4;
+ (id)_supplementaryScriptSwitchKeyWithContext:(id)a3;
+ (id)_supplementaryShiftKeysWithContext:(id)a3;
+ (id)cachedControlKeySetsForTransformationContext:(id)a3;
+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4;
+ (unint64_t)_numberOfKeysInRow:(id)a3 firstKey:(id *)a4 lastKey:(id *)a5;
+ (void)adjustHorizontalPaddingForKeyplane:(id)a3 withTransformationContext:(id)a4;
+ (void)transformKeysForFiveRowKeyplane:(id)a3 withTransformationContext:(id)a4;
+ (void)transformKeysForFourRowKeyplane:(id)a3 withTransformationContext:(id)a4;
+ (void)transformKeysForHandwritingKeyplane:(id)a3 withTransformationContext:(id)a4;
+ (void)transformKeysForVietnameseKeyPlane:(id)a3 withTransformationContext:(id)a4;
+ (void)transformLastRowKeysForKeyplane:(id)a3 row:(unint64_t)a4 withTransformationContext:(id)a5;
@end

@implementation UIKeyboardSupplementaryControlKeyTransformation

+ (id)transformKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 screenTraits];
  v9 = [v8 screen];
  [v9 scale];
  v11 = v10;

  v12 = [v7 screenTraits];
  [v12 orientation];

  v13 = [v6 visualStyling] & 0xFF0000;
  v14 = [v6 numberOfRows];
  [a1 layoutScaleFactorForContext:v7];
  v16 = v15;
  if (v13 == 589824)
  {
    [a1 transformKeysForHandwritingKeyplane:v6 withTransformationContext:v7];
  }

  else if (v14 == 5)
  {
    v17 = [v6 name];
    v18 = [v17 containsString:@"Wildcat-Vietnamese"];

    if (v18)
    {
      [a1 transformKeysForVietnameseKeyPlane:v6 withTransformationContext:v7];
    }

    else
    {
      [a1 transformKeysForFiveRowKeyplane:v6 withTransformationContext:v7];
    }
  }

  else if (v14 == 4)
  {
    [a1 transformKeysForFourRowKeyplane:v6 withTransformationContext:v7];
  }

  [v6 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v7 screenTraits];
  [v25 keyboardWidth];
  v27 = v26;

  [v6 setFrame:{v20, v22, v27, v24}];
  v28 = [MEMORY[0x1E69DCB78] operatorWithScale:v11];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = [v6 subtrees];
  v30 = [v29 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v45;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v44 + 1) + 8 * i);
        if ([v34 type] == 3)
        {
          v35 = [v34 shape];

          if (v35)
          {
            v36 = [v7 screenTraits];
            [v36 keyboardWidth];
            v38 = v37;
            [v34 frame];
            v40 = v38 / v39;

            v41 = [v34 shape];
            v42 = [v28 shapeByScalingShape:v41 factor:{v40, v16}];
            [v34 setShape:v42];
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v31);
  }

  [v6 setObject:0 forProperty:@"KBunionFrame"];
  [v6 setObject:0 forProperty:@"KBunionPaddedFrame"];

  return v6;
}

+ (void)transformKeysForVietnameseKeyPlane:(id)a3 withTransformationContext:(id)a4
{
  v115 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 screenTraits];
  v9 = [v8 screen];
  [v9 scale];
  v11 = v10;

  v12 = [v7 screenTraits];
  v13 = [v12 orientation];

  [a1 adjustHorizontalPaddingForKeyplane:v6 withTransformationContext:v7];
  v14 = [v6 keysForDisplayRowAtIndex:1];
  v15 = [v6 keysForDisplayRowAtIndex:2];
  v98 = [v6 keysForDisplayRowAtIndex:3];
  v16 = [v6 keysForDisplayRowAtIndex:4];
  v97 = [v6 keysForDisplayRowAtIndex:5];
  [a1 _derivedLeadingControlKeyWidthForRow:3 keysForRow:? context:?];
  v18 = v17 + v17;
  [a1 _derivedTrailingControlKeyWidthForRow:3 orientation:v13];
  v20 = v19;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v21 = v16;
  v22 = [v21 countByEnumeratingWithState:&v108 objects:v114 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v109;
LABEL_3:
    v25 = 0;
    while (1)
    {
      if (*v109 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v108 + 1) + 8 * v25);
      if (![v26 displayType])
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = [v21 countByEnumeratingWithState:&v108 objects:v114 count:16];
        if (v23)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v29 = v26;

    if (!v29)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_9:

LABEL_10:
    if (os_variant_has_internal_diagnostics())
    {
      v94 = __TUIFaultDebugAssertLog();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18FFDC000, v94, OS_LOG_TYPE_FAULT, "Key plane should have at least one letter key.", buf, 2u);
      }
    }

    else
    {
      CategoryImpl = transformKeysForVietnameseKeyPlane_withTransformationContext____s_category;
      if (!transformKeysForVietnameseKeyPlane_withTransformationContext____s_category)
      {
        CategoryImpl = __TUILogGetCategoryImpl("Assert");
        atomic_store(CategoryImpl, &transformKeysForVietnameseKeyPlane_withTransformationContext____s_category);
      }

      v28 = *(CategoryImpl + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18FFDC000, v28, OS_LOG_TYPE_ERROR, "Key plane should have at least one letter key.", buf, 2u);
      }
    }

    v29 = 0;
  }

  [v29 frame];
  v31 = v30;
  v32 = [v7 screenTraits];
  [v32 keyboardWidth];
  v34 = (v33 - v18 - v20) / 9.0;

  v35 = v34 / v31;
  [v6 scaleKeys:v14 withFactor:v35 scale:{1.0, v11}];
  [v6 scaleKeys:v15 withFactor:v35 scale:{1.0, v11}];
  [v6 scaleKeys:v98 withFactor:v35 scale:{1.0, v11}];
  [v6 scaleKeys:v21 withFactor:v35 scale:{1.0, v11}];

  [a1 _derivedFiveRowControlKeyWidthForRow:0 keysForRow:v14 context:v7];
  v95 = v14;
  [v6 repositionKeys:v14 withOffset:? scale:?];
  v36 = [v6 firstCachedKeyWithName:@"Delete-Key"];
  v37 = [v7 screenTraits];
  [v37 keyboardWidth];
  v39 = v38;
  [v36 frame];
  v40 = v39 - CGRectGetMinX(v116);

  [v6 shiftRowAndResizeLeadingControlKey:v36 toSize:v40 scale:{0.0, v11}];
  [a1 _derivedFiveRowControlKeyWidthForRow:1 keysForRow:v15 context:v7];
  v42 = v41;
  v43 = [v15 firstObject];
  [v43 frame];
  CGRectGetMinX(v117);

  v44 = [a1 _supplementaryControlKeyWithName:@"Tab-Key" context:v7];
  v45 = *MEMORY[0x1E69DDE68];
  [v6 insertKey:v44 withFrame:v15 andShiftKeys:0.0 scale:{*MEMORY[0x1E69DDE68], v42, *MEMORY[0x1E69DDE68], v11}];
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v46 = v15;
  v47 = [v46 countByEnumeratingWithState:&v103 objects:v113 count:16];
  v48 = v46;
  if (v47)
  {
    v49 = v47;
    v50 = *v104;
LABEL_19:
    v51 = 0;
    while (1)
    {
      if (*v104 != v50)
      {
        objc_enumerationMutation(v46);
      }

      v52 = *(*(&v103 + 1) + 8 * v51);
      if ([v52 interactionType] == 13)
      {
        break;
      }

      if (v49 == ++v51)
      {
        v49 = [v46 countByEnumeratingWithState:&v103 objects:v113 count:16];
        if (v49)
        {
          goto LABEL_19;
        }

        v48 = v46;
        goto LABEL_28;
      }
    }

    v48 = v52;

    if (!v48)
    {
      goto LABEL_29;
    }

    v53 = [v7 screenTraits];
    [v53 keyboardWidth];
    v55 = v54;
    [v48 frame];
    v56 = v55 - CGRectGetMinX(v118);

    [v6 shiftRowAndResizeLeadingControlKey:v48 toSize:v56 scale:{0.0, v11}];
  }

LABEL_28:

LABEL_29:
  [a1 _derivedFiveRowControlKeyWidthForRow:2 keysForRow:v98 context:v7];
  v58 = v57;
  v59 = [v6 name];
  v60 = [v59 containsString:@"Alternate"];

  v96 = a1;
  if (v60)
  {
    v61 = @"Undo-Key";
    v62 = [a1 _supplementaryControlKeyWithName:@"Undo-Key" context:v7];
    v63 = [a1 _supplementaryControlKeyWithName:@"Redo-Key" context:v7];
    v64 = [v6 name];
    v65 = [v64 containsString:@"First-Alternate"];

    v66 = v62;
    if ((v65 & 1) == 0)
    {
      v67 = [v6 name];
      v68 = [v67 containsString:@"Second-Alternate"];

      if (!v68)
      {
        v69 = 0;
LABEL_42:

        goto LABEL_43;
      }

      v61 = @"Redo-Key";
      v66 = v63;
    }

    [v62 setVisible:v65];
    [v63 setVisible:v65 ^ 1];
    v69 = v66;
    v70 = [v6 firstCachedKeyWithName:v61];
    if (v70)
    {
      v71 = v70;
      if ([v97 containsObject:v70])
      {
        [v6 removeKey:v71 andShiftKeys:v97 scale:v11];
      }

      else
      {
        [v6 removeKey:v71];
      }
    }

    goto LABEL_42;
  }

  v72 = [a1 _supplementaryControlKeyWithName:@"Caps-Lock-Key" context:v7];
  if (![v7 usesScriptSwitch])
  {
    goto LABEL_44;
  }

  v69 = [a1 _supplementaryScriptSwitchKeyWithContext:v7];

  v62 = [v6 firstCachedKeyWithName:@"Caps-Lock-Key"];
  if (v62)
  {
    [v6 removeKey:v62];
  }

LABEL_43:

  v72 = v69;
LABEL_44:
  [v6 insertKey:v72 withFrame:v98 andShiftKeys:0.0 scale:{v45, v58, v45, v11}];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v73 = v98;
  v74 = [v73 countByEnumeratingWithState:&v99 objects:v112 count:16];
  v75 = v73;
  if (v74)
  {
    v76 = v74;
    v77 = *v100;
LABEL_46:
    v78 = 0;
    while (1)
    {
      if (*v100 != v77)
      {
        objc_enumerationMutation(v73);
      }

      v79 = *(*(&v99 + 1) + 8 * v78);
      if ([v79 interactionType] == 13)
      {
        break;
      }

      if (v76 == ++v78)
      {
        v76 = [v73 countByEnumeratingWithState:&v99 objects:v112 count:16];
        if (v76)
        {
          goto LABEL_46;
        }

        v75 = v73;
        goto LABEL_55;
      }
    }

    v75 = v79;

    if (!v75)
    {
      goto LABEL_56;
    }

    v80 = [v7 screenTraits];
    [v80 keyboardWidth];
    v82 = v81;
    [v75 frame];
    v83 = v82 - CGRectGetMinX(v119);

    [v6 shiftRowAndResizeLeadingControlKey:v75 toSize:v83 scale:{0.0, v11}];
  }

LABEL_55:

LABEL_56:
  v84 = [v6 cachedKeysByKeyName:@"Shift-Key"];
  v85 = [v84 objectAtIndexedSubscript:0];
  [v85 paddedFrame];
  v87 = v86;
  v88 = [v84 objectAtIndexedSubscript:1];
  [v88 paddedFrame];
  v90 = v87 < v89;
  v91 = v87 >= v89;

  v92 = [v84 objectAtIndexedSubscript:v91];
  v93 = [v84 objectAtIndexedSubscript:v90];
  [v6 shiftRowAndResizeLeadingControlKey:v92 toSize:v18 scale:{0.0, v11}];
  [v6 shiftRowAndResizeLeadingControlKey:v93 toSize:v20 scale:{0.0, v11}];

  [v96 transformLastRowKeysForKeyplane:v6 row:5 withTransformationContext:v7];
}

+ (void)transformLastRowKeysForKeyplane:(id)a3 row:(unint64_t)a4 withTransformationContext:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v9 screenTraits];
  v11 = [v10 screen];
  [v11 scale];
  v13 = v12;

  v14 = [v9 screenTraits];
  v15 = [v14 orientation];

  v16 = [v8 keysForDisplayRowAtIndex:a4];
  if ([v16 count])
  {
    [a1 _keyplanePaddingForOrientation:v15 row:a4];
    [v8 repositionKeys:v16 withOffset:? scale:?];
    v17 = [v16 indexOfObjectPassingTest:&__block_literal_global_2991];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [a1 layoutScaleFactorForContext:v9];
      v19 = v18;
    }

    else
    {
      v20 = [v16 objectAtIndex:v17];
      [a1 layoutScaleFactorForContext:v9];
      v19 = v21;
      if (v20)
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v22 = v16;
        v23 = [v22 countByEnumeratingWithState:&v55 objects:v61 count:16];
        v53 = v16;
        if (v23)
        {
          v24 = v23;
          v54 = v15;
          v25 = 0;
          v26 = *v56;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v56 != v26)
              {
                objc_enumerationMutation(v22);
              }

              v28 = *(*(&v55 + 1) + 8 * i);
              if ([v28 visible])
              {
                if ([v28 interactionType] == 15)
                {
                  v29 = v28;

                  v25 = 1;
                  v20 = v29;
                }

                else
                {
                  [a1 _derivedLeadingControlKeyWidthForRow:3 keysForRow:v22 context:v9];
                  v31 = v30;
                  if ((v25 & 1) != 0 && [v28 interactionType] != 1 && objc_msgSend(v28, "interactionType") != 2)
                  {
                    [a1 _derivedTrailingControlKeyWidthForRow:3 orientation:v54];
                    v31 = v32;
                  }

                  [v8 shiftRowAndResizeLeadingControlKey:v28 toSize:v31 scale:{0.0, v13}];
                }
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v55 objects:v61 count:16];
          }

          while (v24);
        }

        v33 = [v9 screenTraits];
        [v33 keyboardWidth];
        v35 = v34;
        v36 = [v22 objectAtIndexedSubscript:0];
        [v36 frame];
        v38 = v35 - v37;
        v39 = [v22 lastObject];
        [v39 frame];
        v40 = v38 - CGRectGetMaxX(v63);

        [v20 frame];
        [v8 shiftRowAndResizeLeadingControlKey:v20 toSize:v40 + v41 scale:{0.0, v13}];
        [v8 scaleKeys:v22 withFactor:1.0 scale:{v19, v13}];
        v16 = v53;
        goto LABEL_22;
      }
    }

    v20 = [v16 firstObject];
    v42 = [v16 lastObject];
    [v42 frame];
    MinX = CGRectGetMinX(v64);
    v60 = v42;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    [v20 frame];
    Width = CGRectGetWidth(v65);
    [v42 frame];
    [v8 scaleKeys:v44 withFactor:Width / CGRectGetWidth(v66) scale:{1.0, v13}];

    v59 = v42;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    [v42 frame];
    [v8 repositionKeys:v46 withOffset:MinX - CGRectGetMinX(v67) scale:{0.0, v13}];

    [v20 frame];
    v47 = CGRectGetMinX(v68);
    [v42 frame];
    v48 = CGRectGetMaxX(v69) - v47;
    v49 = [v9 screenTraits];
    [v49 keyboardWidth];
    v51 = v50 - v47;
    [v42 frame];
    v52 = v51 - CGRectGetMaxX(v70);

    [v8 scaleKeys:v16 withFactor:(v48 + v52) / v48 scale:{v19, v13}];
    [v20 frame];
    [v8 repositionKeys:v16 withOffset:v47 - CGRectGetMinX(v71) scale:{0.0, v13}];

LABEL_22:
  }
}

+ (void)transformKeysForHandwritingKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = [v6 screenTraits];
  v8 = [v7 screen];
  [v8 scale];
  v10 = v9;

  v11 = [v6 screenTraits];
  [v11 orientation];

  [a1 layoutScaleFactorForContext:v6];
  v13 = v12;
  v15 = v14;
  v16 = [v28 keysForDisplayRowAtIndex:1];
  [a1 _derivedLeadingControlKeyWidthForRow:0 keysForRow:v16 context:v6];
  [v28 insertKey:0 withFrame:v16 andShiftKeys:*MEMORY[0x1E69DDE68] scale:{*MEMORY[0x1E69DDE68], v17, *MEMORY[0x1E69DDE68], v10}];
  [v28 scaleKeys:v16 withFactor:v13 scale:{v15, v10}];
  v18 = [v28 firstCachedKeyWithName:@"Delete-Key"];
  v19 = [v6 screenTraits];
  [v19 keyboardWidth];
  v21 = v20;
  [v18 frame];
  v22 = v21 - CGRectGetMinX(v30);

  [v28 shiftRowAndResizeLeadingControlKey:v18 toSize:v22 scale:{0.0, v10}];
  v23 = [v28 keysForDisplayRowAtIndex:0];
  v24 = [v6 screenTraits];
  [v24 keyboardWidth];
  v26 = v25;

  [v28 frame];
  Width = CGRectGetWidth(v31);
  if (Width > 0.0)
  {
    [v28 scaleKeys:v23 withFactor:v26 / Width scale:{v15, v10}];
  }

  [a1 transformLastRowKeysForKeyplane:v28 row:2 withTransformationContext:v6];
}

+ (void)transformKeysForFiveRowKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [v6 screenTraits];
  v8 = [v7 screen];
  [v8 scale];
  v10 = v9;

  v11 = [v6 screenTraits];
  [v11 orientation];

  v12 = [v6 screenTraits];
  [v12 keyboardWidth];
  v14 = v13;

  [v21 frame];
  Width = CGRectGetWidth(v23);
  if (Width > 0.0)
  {
    v16 = v14 / Width;
    [a1 layoutScaleFactorForContext:v6];
    v18 = v17;
    for (i = 1; i != 5; ++i)
    {
      v20 = [v21 keysForDisplayRowAtIndex:i];
      [v21 scaleKeys:v20 withFactor:v16 scale:{v18, v10}];
    }
  }

  [a1 transformLastRowKeysForKeyplane:v21 row:5 withTransformationContext:v6];
}

+ (void)transformKeysForFourRowKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v120 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 screenTraits];
  v9 = [v8 screen];
  [v9 scale];
  v11 = v10;

  v12 = [v7 screenTraits];
  v13 = [v12 orientation];

  [a1 adjustHorizontalPaddingForKeyplane:v6 withTransformationContext:v7];
  [a1 _keyplanePaddingForOrientation:v13];
  v15 = v14;
  v16 = [v6 keysForDisplayRowAtIndex:1];
  [a1 _derivedLeadingControlKeyWidthForRow:0 keysForRow:v16 context:v7];
  v18 = v17;
  v19 = 0;
  if ([v16 count] >= 2)
  {
    v19 = [a1 _supplementaryControlKeyWithName:@"Tab-Key" context:v7];
  }

  v20 = *MEMORY[0x1E69DDE68];
  [v6 insertKey:v19 withFrame:v16 andShiftKeys:v15 scale:{*MEMORY[0x1E69DDE68], v18, *MEMORY[0x1E69DDE68], v11}];
  v21 = [v6 firstCachedKeyWithName:@"Delete-Key"];
  v22 = [v7 screenTraits];
  [v22 keyboardWidth];
  v24 = v23;
  [v19 frame];
  v26 = v24 - v25;
  [v21 frame];
  v27 = v26 - CGRectGetMinX(v121);

  [v6 shiftRowAndResizeLeadingControlKey:v21 toSize:v27 scale:{0.0, v11}];
  v28 = [v6 keysForDisplayRowAtIndex:2];
  [a1 _derivedLeadingControlKeyWidthForRow:1 keysForRow:v28 context:v7];
  v30 = v29;
  v31 = [a1 _supplementaryControlKeyWithName:@"Caps-Lock-Key" context:v7];
  LODWORD(v21) = [v7 usesScriptSwitch];
  v32 = [v6 scriptSwitchKey];
  v33 = v32;
  if (!v21)
  {

    if (!v33)
    {
      goto LABEL_11;
    }

    v34 = [v6 scriptSwitchKey];
    [v6 removeKey:v34];
    v35 = v31;
LABEL_10:

    v31 = v35;
LABEL_11:
    if (v31)
    {
      goto LABEL_36;
    }

    goto LABEL_12;
  }

  if (!v33)
  {
    v35 = [a1 _supplementaryScriptSwitchKeyWithContext:v7];

    v34 = [v6 firstCachedKeyWithName:@"Caps-Lock-Key"];
    if (v34)
    {
      [v6 removeKey:v34];
    }

    goto LABEL_10;
  }

LABEL_12:
  v36 = [v6 scriptSwitchKey];
  v37 = [a1 _cachedUndoOrRedoKeyForKeyplane:v6];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v31 = v39;

  v40 = [v6 keysForDisplayRowAtIndex:4];
  v41 = v40;
  if (v31 == v36)
  {
    v112 = v28;
    v42 = [v6 cachedKeysByKeyName:@"More-Key"];
    if ([v41 containsObject:v31])
    {
      v43 = [v42 firstObject];
      v44 = [v43 copy];

      v45 = v31;
    }

    else
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v46 = v41;
      v44 = [v46 countByEnumeratingWithState:&v115 objects:v119 count:16];
      if (v44)
      {
        v108 = v41;
        v109 = a1;
        v47 = *v116;
        while (2)
        {
          for (i = 0; i != v44; i = i + 1)
          {
            if (*v116 != v47)
            {
              objc_enumerationMutation(v46);
            }

            v49 = *(*(&v115 + 1) + 8 * i);
            if ([v49 interactionType] == 11 && (objc_msgSend(v42, "containsObject:", v49) & 1) == 0)
            {
              v44 = v49;
              goto LABEL_31;
            }
          }

          v44 = [v46 countByEnumeratingWithState:&v115 objects:v119 count:16];
          if (v44)
          {
            continue;
          }

          break;
        }

LABEL_31:
        v41 = v108;
        a1 = v109;
      }

      [v31 setMergeAsMoreKey:1];
      [v6 removeKey:v31];
      v45 = 0;
    }

    [v6 replaceKey:v45 withKey:v44];
    [v31 setMergeAsMoreKey:0];

    v28 = v112;
  }

  else if ([v40 containsObject:v31])
  {
    [v6 removeKey:v31 andShiftKeys:v41 scale:v11];
  }

  if (!v31)
  {
    [a1 _derivedLeadingControlKeyWidthForRow:0 keysForRow:0 context:v7];
    v30 = v50;
  }

LABEL_36:
  [v6 insertKey:v31 withFrame:v28 andShiftKeys:v15 scale:{v20, v30, v20, v11}];
  v51 = [v6 firstCachedKeyWithName:@"Return-Key"];
  v52 = [v7 screenTraits];
  [v52 keyboardWidth];
  v54 = v53;
  [v31 frame];
  v56 = v54 - v55;
  [v51 frame];
  v57 = v56 - CGRectGetMinX(v122);

  [v6 shiftRowAndResizeLeadingControlKey:v51 toSize:v57 scale:{0.0, v11}];
  v58 = [v6 cachedKeysByKeyName:@"Shift-Key"];
  if ([v58 count] == 2)
  {
    v59 = [v58 objectAtIndexedSubscript:0];
    [v59 paddedFrame];
    v61 = v60;
    v62 = [v58 objectAtIndexedSubscript:1];
    [v62 paddedFrame];
    v64 = v63;

    if (v61 >= v64)
    {
      v65 = [v58 objectAtIndexedSubscript:1];
      v66 = v58;
      v67 = 0;
    }

    else
    {
      v65 = [v58 objectAtIndexedSubscript:0];
      v66 = v58;
      v67 = 1;
    }

    v70 = [v66 objectAtIndexedSubscript:v67];
  }

  else
  {
    v65 = [v58 firstObject];
    v68 = [v6 keysForDisplayRowAtIndex:3];
    v69 = [v6 firstCachedKeyWithName:@"Return-Key"];
    if ([v68 containsObject:v69])
    {
      v70 = v69;
    }

    else
    {
      v71 = [v68 lastObject];
      v72 = [v71 layoutTag];
      if (v72)
      {
        v73 = v72;
        v110 = a1;
        v74 = [v68 lastObject];
        v75 = [v74 name];
        v113 = [v75 hasSuffix:@"width-Toggle-Key"];

        if (v113)
        {
          v70 = [v68 lastObject];
        }

        else
        {
          v70 = 0;
        }

        a1 = v110;
      }

      else
      {

        v70 = 0;
      }
    }
  }

  v76 = [v6 keysForDisplayRowAtIndex:3];
  v77 = [v76 firstObject];
  if ([v77 interactionType] == 2)
  {
    [v77 frame];
    MinX = CGRectGetMinX(v123);
    v79 = 2;
    if (MinX < 1.0)
    {
      v79 = 0;
    }
  }

  else
  {
    v79 = 2;
  }

  v114 = v79;
  v80 = [a1 _supplementaryShiftKeysWithContext:v7];
  if ([v80 count] != 2 || v65 && (objc_msgSend(v76, "containsObject:", v65) & 1) != 0)
  {
    v81 = v65;
  }

  else
  {
    v81 = [v80 firstObject];

    [a1 _derivedLeadingControlKeyWidthForRow:2 keysForRow:v76 context:v7];
    v83 = v82;
    [v81 frame];
    [v6 insertKey:v81 withFrame:v76 andShiftKeys:0.0 scale:{v20, v83}];
    if (!v70 || ([v76 containsObject:v70] & 1) == 0)
    {
      v84 = [v80 lastObject];

      [v76 lastObject];
      v85 = v111 = a1;
      [v85 frame];
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v93 = v92;

      v94 = [v7 screenTraits];
      [v94 keyboardWidth];
      v96 = v95;
      v124.origin.x = v87;
      v124.origin.y = v89;
      v124.size.width = v91;
      v124.size.height = v93;
      v97 = v96 - CGRectGetMaxX(v124);

      v98 = [v76 lastObject];
      v99 = [v98 shape];
      [v84 setShape:v99];

      a1 = v111;
      v125.origin.x = v87;
      v125.origin.y = v89;
      v125.size.width = v91;
      v125.size.height = v93;
      [v6 insertKey:v84 withFrame:0 andShiftKeys:CGRectGetMaxX(v125) scale:{v20, v97, v20, v11}];
      v70 = v84;
    }
  }

  v100 = v81;
  [v100 frame];
  UIRectInset();
  [v100 setFrame:?];
  [v100 paddedFrame];
  UIRectInset();
  [v100 setPaddedFrame:?];

  [a1 _derivedLeadingControlKeyWidthForRow:v114 keysForRow:v76 context:v7];
  [v6 shiftRowAndResizeLeadingControlKey:v100 toSize:? scale:?];
  [v7 screenTraits];
  v102 = v101 = a1;
  [v102 keyboardWidth];
  v104 = v103;
  [v100 frame];
  v106 = v104 - v105;
  [v70 frame];
  v107 = v106 - CGRectGetMinX(v126);

  [v6 shiftRowAndResizeLeadingControlKey:v70 toSize:v107 scale:{0.0, v11}];
  [v101 transformLastRowKeysForKeyplane:v6 row:4 withTransformationContext:v7];
}

+ (CGSize)layoutScaleFactorForContext:(id)a3
{
  v3 = a3;
  v4 = [v3 screenTraits];
  v5 = ([v4 orientation] - 3) < 2;

  v6 = dbl_1900C0EF0[v5];
  [v3 keyboardSize];
  v8 = v7 / v6;
  [v3 keyboardSize];
  v10 = v9;
  v11 = [v3 activeKeyplane];

  [v11 frame];
  v13 = v10 / v12;

  v14 = v8;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (void)adjustHorizontalPaddingForKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 screenTraits];
  v9 = [v8 orientation];

  v10 = [v7 screenTraits];
  v11 = [v10 screen];
  [v11 scale];
  v13 = v12;

  v14 = [v7 screenTraits];
  [v14 keyboardWidth];
  v16 = v15;

  [a1 _totalKeyPaddingForOrientation:v9];
  v18 = v17;
  [a1 _derivedLeadingControlKeyWidthForRow:0 keysForRow:0 context:v7];
  v20 = v19;
  [v6 frame];
  Width = CGRectGetWidth(v67);
  v22 = 0.0;
  if ((v9 - 5) >= 0xFFFFFFFFFFFFFFFELL)
  {
    [a1 _keyPitchForKeyplane:v6];
    v22 = v23;
  }

  [a1 layoutScaleFactorForContext:{v7, v7}];
  v25 = v24;
  v27 = v26;
  if ([v6 numberOfRows] >= 2)
  {
    v28 = v18 + v20 + Width;
    v30 = v22 <= 0.0 || (v9 - 5) < 0xFFFFFFFFFFFFFFFELL;
    v31 = *MEMORY[0x1E695EFF8];
    v32 = v22 * 5.2571428 * v25;
    v33 = v16 / v28;
    v34 = 1;
    do
    {
      v35 = [v6 keysForDisplayRowAtIndex:v34];
      v36 = v35;
      v37 = v33;
      if (!v30)
      {
        v38 = [v35 count];
        v37 = v33;
        if (v38 >= 2)
        {
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v39 = v36;
          v40 = [v39 countByEnumeratingWithState:&v60 objects:v65 count:16];
          v41 = v31;
          v42 = v31;
          if (v40)
          {
            v43 = v40;
            v44 = 0;
            v45 = *v61;
            v42 = v31;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v61 != v45)
                {
                  objc_enumerationMutation(v39);
                }

                v47 = *(*(&v60 + 1) + 8 * i);
                [v47 frame];
                if (!CGRectIsEmpty(v68) && [v47 interactionType] != 14)
                {
                  [v47 frame];
                  UIRectGetCenter();
                  v41 = v48;
                  if (v44)
                  {
                    goto LABEL_25;
                  }

                  v44 = 1;
                  v42 = v48;
                }
              }

              v43 = [v39 countByEnumeratingWithState:&v60 objects:v65 count:16];
            }

            while (v43);
            v41 = v31;
          }

LABEL_25:

          v37 = v32 / (v41 - v42);
        }
      }

      [v6 scaleKeys:v36 withFactor:v37 scale:{v27, v13}];

      ++v34;
    }

    while (v34 < [v6 numberOfRows]);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v49 = [v6 keys];
  v50 = [v49 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v57;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v57 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v56 + 1) + 8 * j);
        [v54 frame];
        UIRectInsetEdges();
        [v54 setPaddedFrame:?];
      }

      v51 = [v49 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v51);
  }
}

+ (double)_keyPitchForKeyplane:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v5 = 0.0;
  if ([v4 numberOfRows] <= 4)
  {
    if ([v4 numberOfRows] < 2)
    {
      v16 = 0;
      v15 = 0;
      v14 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = [v4 keysForDisplayRowAtIndex:v6 + 1];
        v20 = 0;
        v21 = 0;
        v8 = [a1 _numberOfKeysInRow:v7 firstKey:&v21 lastKey:&v20];
        v9 = v21;
        v10 = v20;
        v11 = v8 - ([v9 interactionType] == 14);
        LODWORD(v8) = [v10 interactionType];

        *(&v22 + v6) = v11 - (v8 == 14);
        v12 = [v4 numberOfRows];
        v13 = v6 + 2;
        ++v6;
      }

      while (v13 < v12);
      v14 = v22;
      v15 = v23;
      v16 = v24;
    }

    if (v14 > 0xB || v15 > 0xB || (v5 = 18.0, v16 >= 0xB))
    {
      if (v14 > 0xC || v15 > 0xC || v16 >= 0xC)
      {
        if (v16 >= 0xC || v15 >= 0xD || v14 >= 0xE)
        {
          v5 = 0.0;
        }

        else
        {
          v5 = 16.0;
        }
      }

      else
      {
        v5 = 16.8;
      }
    }
  }

  return v5;
}

+ (id)cachedControlKeySetsForTransformationContext:(id)a3
{
  v4 = a3;
  v5 = [v4 screenTraits];
  v6 = [a1 _supplementaryControlKeySetForOrientation:objc_msgSend(v5 context:{"orientation"), v4}];

  v7 = [v6 subtrees];

  return v7;
}

+ (id)_supplementaryShiftKeysWithContext:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v4 screenTraits];
  v21 = v4;
  v7 = [a1 _supplementaryControlKeySetForOrientation:objc_msgSend(v6 context:{"orientation"), v4}];
  v8 = [v7 subtrees];

  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v14 = [v13 subtrees];
        v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v23;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v23 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v22 + 1) + 8 * j);
              if ([v19 interactionType] == 14)
              {
                [v5 addObject:v19];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v16);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  return v5;
}

+ (id)_cachedUndoOrRedoKeyForKeyplane:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstCachedKeyWithName:@"Undo-Key"];
  v5 = [v3 firstCachedKeyWithName:@"Redo-Key"];
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  if (!v8)
  {
    [v3 cachedKeysByKeyName:@"Modify-For-Writeboard-Key"];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v23 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      v19 = v6;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 name];
          if ([v15 isEqualToString:@"Undo-Key"])
          {

LABEL_17:
            v8 = v14;
            v6 = v19;
            goto LABEL_18;
          }

          v16 = [v14 name];
          v17 = [v16 isEqualToString:@"Redo-Key"];

          if (v17)
          {
            goto LABEL_17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v8 = 0;
        v6 = v19;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_18:
  }

  return v8;
}

+ (id)_supplementaryScriptSwitchKeyWithContext:(id)a3
{
  v4 = a3;
  v5 = [a1 _supplementaryControlKeyWithName:@"Roman-to-Non-Roman-Switch-Key" context:v4];
  if (!v5)
  {
    v5 = [a1 _supplementaryControlKeyWithName:@"Non-Roman-to-Roman-Switch-Key" context:v4];
  }

  return v5;
}

+ (id)_supplementaryControlKeyWithName:(id)a3 context:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = [v7 screenTraits];
  v9 = [a1 _supplementaryControlKeySetForOrientation:objc_msgSend(v8 context:{"orientation"), v7}];
  v10 = [v9 subtrees];

  v26 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v26)
  {
    v11 = *v32;
    v24 = *v32;
    v25 = v7;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v10);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = [v13 subtrees];
        v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v28;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v28 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v27 + 1) + 8 * j);
              v20 = [v19 name];
              v21 = [v20 isEqualToString:v6];

              if (v21)
              {
                v22 = v19;

                v7 = v25;
                goto LABEL_19;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v11 = v24;
      }

      v22 = 0;
      v7 = v25;
      v26 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v26);
  }

  else
  {
    v22 = 0;
  }

LABEL_19:

  return v22;
}

+ (id)_supplementaryControlKeySetForOrientation:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  if (!__supplementaryControlKeysetCache)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = __supplementaryControlKeysetCache;
    __supplementaryControlKeysetCache = v7;
  }

  v9 = UIKeyboardGetCurrentInputMode();
  v10 = MEMORY[0x193AE81B0]();

  if ([a1 _inputModeSupportsCrescendo:v10])
  {
    v11 = 0;
    goto LABEL_20;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v6 currentKeyplaneName];
  v14 = [v12 stringWithFormat:@"%@-%@-%ld", v10, v13, a3];

  v15 = [__supplementaryControlKeysetCache objectForKey:v14];
  if (v15)
  {
    goto LABEL_18;
  }

  v16 = [v6 screenTraits];
  v17 = [v16 orientation] - 3;

  v18 = @"Portrait";
  if (v17 < 2)
  {
    v18 = @"Landscape";
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wildcat-%@Fudge-%@", v18, v10];
  v20 = [v6 additionalKeyboardLoader];
  v21 = [v6 screenTraits];
  v22 = [v20 keyboardWithName:v19 screenTraits:v21];

  v23 = [v6 currentKeyplaneName];
  [(__CFString *)v23 rangeOfString:@"alternate" options:1];
  if (v24)
  {

    v23 = @"Alternate";
  }

  v25 = [v22 subtreeWithName:v23];
  if (!v25)
  {

    v23 = @"Small-Letters";
    v25 = [v22 subtreeWithName:@"Small-Letters"];
    if (!v25)
    {
      v23 = @"Letters";
      v25 = [v22 subtreeWithName:@"Letters"];
      if (!v25)
      {

        v15 = 0;
LABEL_24:
        v11 = 0;
        goto LABEL_19;
      }
    }
  }

  v26 = v25;
  v27 = [v25 subtreeWithName:@"Wildcat-Fudge-Control-Keys-Keylayout"];
  v28 = v27;
  if (v27)
  {
    v15 = [v27 keySet];
    if (v15)
    {
      [__supplementaryControlKeysetCache setObject:v15 forKey:v14];
    }
  }

  else
  {
    v15 = 0;
  }

  if (!v28)
  {
    goto LABEL_24;
  }

LABEL_18:
  v15 = v15;
  v11 = v15;
LABEL_19:

LABEL_20:

  return v11;
}

+ (BOOL)_inputModeSupportsCrescendo:(id)a3
{
  v3 = a3;
  if (!_inputModeSupportsCrescendo__supportedModes)
  {
    v4 = +[TUIKeyboardLayoutFactory crescendoLayouts];
    v5 = _inputModeSupportsCrescendo__supportedModes;
    _inputModeSupportsCrescendo__supportedModes = v4;
  }

  v6 = MEMORY[0x193AE8220](v3);
  v7 = [_inputModeSupportsCrescendo__supportedModes containsObject:v6];

  return v7;
}

+ (double)_derivedTrailingControlKeyWidthForRow:(unint64_t)a3 orientation:(int64_t)a4
{
  [a1 _totalKeyPaddingForOrientation:a4];
  v7 = MEMORY[0x1E69DDE68];
  if (a3 == 3)
  {
    v7 = (&unk_1900C0F00 + 8 * ((a4 - 3) < 2));
  }

  return v6 + *v7;
}

+ (double)_scaledDerivedLeadingControlKeyWidth:(double)a3 forKeysForRow:(id)a4 keyCount:(int64_t)a5 numberOfKeysInSpecification:(int64_t)a6 context:(id)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a7;
  v14 = [v13 screenTraits];
  v15 = [v14 orientation];

  [a1 _totalKeyPaddingForOrientation:v15];
  v17 = v16;
  if (a6 && a5 > a6)
  {
    a3 = 10.0 / (dbl_1900C0F10[(v15 - 3) < 2] * (a5 - a6) + 10.0) * a3;
    v35 = 0u;
    v36 = 0u;
    v18 = v16 + a3;
    v33 = 0u;
    v34 = 0u;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * i);
          if ([v24 interactionType] == 2)
          {
            [v24 frame];
            v18 = v18 + CGRectGetWidth(v39);
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v21);
    }

    v25 = [v13 screenTraits];
    [v25 keyboardWidth];
    v27 = v26;

    if (v18 > v27)
    {
      v28 = [v13 screenTraits];
      [v28 keyboardWidth];
      a3 = v29 - (v18 - a3) - v17;
    }
  }

  [a1 layoutScaleFactorForContext:{v13, v33}];
  v31 = v30;

  return (v17 + a3) * v31;
}

+ (double)_derivedFiveRowControlKeyWidthForRow:(unint64_t)a3 keysForRow:(id)a4 context:(id)a5
{
  v21 = 0;
  v22 = 0;
  v8 = a5;
  v9 = a4;
  v10 = [a1 _numberOfKeysInRow:v9 firstKey:&v22 lastKey:&v21];
  v11 = v22;
  v12 = [v8 screenTraits];
  v13 = [v12 orientation];

  v14 = v13 - 3;
  if (a3 == 2)
  {
    v15 = dbl_1900C0F20[v14 < 2];
    v17 = 10;
  }

  else if (a3 == 1)
  {
    v15 = 84.0;
    if (v14 < 2)
    {
      v15 = 101.0;
    }

    v17 = 11;
  }

  else
  {
    v15 = 0.0;
    v16 = 42.0;
    if (v14 < 2)
    {
      v16 = 52.0;
    }

    if (a3)
    {
      v17 = 0;
    }

    else
    {
      v17 = 11;
    }

    if (!a3)
    {
      v15 = v16;
    }
  }

  [a1 _scaledDerivedLeadingControlKeyWidth:v9 forKeysForRow:v10 keyCount:v17 numberOfKeysInSpecification:v8 context:v15];
  v19 = v18;

  return v19;
}

+ (double)_derivedLeadingControlKeyWidthForRow:(unint64_t)a3 keysForRow:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22 = 0;
  v23 = 0;
  v10 = [a1 _numberOfKeysInRow:v8 firstKey:&v23 lastKey:&v22];
  v11 = v23;
  v12 = v22;
  v13 = [v9 screenTraits];
  v14 = [v13 orientation];

  v15 = 0;
  v16 = v14 - 3;
  v17 = 0.0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v17 = 87.0;
        if (v16 < 2)
        {
          v17 = 136.0;
        }

        v15 = 10;
      }

      goto LABEL_15;
    }

    v17 = dbl_1900C0F50[v16 < 2];
LABEL_14:
    v15 = 11;
    goto LABEL_15;
  }

  if (a3 == 2)
  {
    v18 = v16 < 2;
    if ([v11 interactionType] == 2)
    {
      ++v10;
    }

    v17 = dbl_1900C0F40[v18];
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    v15 = 0;
    v17 = dbl_1900C0F30[v16 < 2];
  }

LABEL_15:
  [a1 _scaledDerivedLeadingControlKeyWidth:v8 forKeysForRow:v10 keyCount:v15 numberOfKeysInSpecification:v9 context:v17];
  v20 = v19;

  return v20;
}

+ (unint64_t)_numberOfKeysInRow:(id)a3 firstKey:(id *)a4 lastKey:(id *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        [v15 frame];
        if (!CGRectIsEmpty(v26))
        {
          if (!v11)
          {
            v11 = v15;
          }

          ++v12;
          v16 = v15;

          v10 = v16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
    if (a4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (a4)
    {
LABEL_13:
      v17 = v11;
      *a4 = v11;
    }
  }

  if (a5)
  {
    v18 = v10;
    *a5 = v10;
  }

  return v12;
}

+ (double)_keyplanePaddingForOrientation:(int64_t)a3 row:(unint64_t)a4
{
  if (a4 == 5)
  {
    return 1.0;
  }

  [a1 _keyplanePaddingForOrientation:a3];
  return result;
}

+ (double)_totalKeyPaddingForOrientation:(int64_t)a3
{
  result = 10.0;
  if ((a3 - 3) < 2)
  {
    return 14.0;
  }

  return result;
}

@end