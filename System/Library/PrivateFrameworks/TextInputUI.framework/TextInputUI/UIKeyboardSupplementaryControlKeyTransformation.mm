@interface UIKeyboardSupplementaryControlKeyTransformation
+ (BOOL)_inputModeSupportsCrescendo:(id)crescendo;
+ (CGSize)layoutScaleFactorForContext:(id)context;
+ (double)_derivedFiveRowControlKeyWidthForRow:(unint64_t)row keysForRow:(id)forRow context:(id)context;
+ (double)_derivedLeadingControlKeyWidthForRow:(unint64_t)row keysForRow:(id)forRow context:(id)context;
+ (double)_derivedTrailingControlKeyWidthForRow:(unint64_t)row orientation:(int64_t)orientation;
+ (double)_keyPitchForKeyplane:(id)keyplane;
+ (double)_keyplanePaddingForOrientation:(int64_t)orientation row:(unint64_t)row;
+ (double)_scaledDerivedLeadingControlKeyWidth:(double)width forKeysForRow:(id)row keyCount:(int64_t)count numberOfKeysInSpecification:(int64_t)specification context:(id)context;
+ (double)_totalKeyPaddingForOrientation:(int64_t)orientation;
+ (id)_cachedUndoOrRedoKeyForKeyplane:(id)keyplane;
+ (id)_supplementaryControlKeySetForOrientation:(int64_t)orientation context:(id)context;
+ (id)_supplementaryControlKeyWithName:(id)name context:(id)context;
+ (id)_supplementaryScriptSwitchKeyWithContext:(id)context;
+ (id)_supplementaryShiftKeysWithContext:(id)context;
+ (id)cachedControlKeySetsForTransformationContext:(id)context;
+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context;
+ (unint64_t)_numberOfKeysInRow:(id)row firstKey:(id *)key lastKey:(id *)lastKey;
+ (void)adjustHorizontalPaddingForKeyplane:(id)keyplane withTransformationContext:(id)context;
+ (void)transformKeysForFiveRowKeyplane:(id)keyplane withTransformationContext:(id)context;
+ (void)transformKeysForFourRowKeyplane:(id)keyplane withTransformationContext:(id)context;
+ (void)transformKeysForHandwritingKeyplane:(id)keyplane withTransformationContext:(id)context;
+ (void)transformKeysForVietnameseKeyPlane:(id)plane withTransformationContext:(id)context;
+ (void)transformLastRowKeysForKeyplane:(id)keyplane row:(unint64_t)row withTransformationContext:(id)context;
@end

@implementation UIKeyboardSupplementaryControlKeyTransformation

+ (id)transformKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v49 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  screen = [screenTraits screen];
  [screen scale];
  v11 = v10;

  screenTraits2 = [contextCopy screenTraits];
  [screenTraits2 orientation];

  v13 = [keyplaneCopy visualStyling] & 0xFF0000;
  numberOfRows = [keyplaneCopy numberOfRows];
  [self layoutScaleFactorForContext:contextCopy];
  v16 = v15;
  if (v13 == 589824)
  {
    [self transformKeysForHandwritingKeyplane:keyplaneCopy withTransformationContext:contextCopy];
  }

  else if (numberOfRows == 5)
  {
    name = [keyplaneCopy name];
    v18 = [name containsString:@"Wildcat-Vietnamese"];

    if (v18)
    {
      [self transformKeysForVietnameseKeyPlane:keyplaneCopy withTransformationContext:contextCopy];
    }

    else
    {
      [self transformKeysForFiveRowKeyplane:keyplaneCopy withTransformationContext:contextCopy];
    }
  }

  else if (numberOfRows == 4)
  {
    [self transformKeysForFourRowKeyplane:keyplaneCopy withTransformationContext:contextCopy];
  }

  [keyplaneCopy frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  screenTraits3 = [contextCopy screenTraits];
  [screenTraits3 keyboardWidth];
  v27 = v26;

  [keyplaneCopy setFrame:{v20, v22, v27, v24}];
  v28 = [MEMORY[0x1E69DCB78] operatorWithScale:v11];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  subtrees = [keyplaneCopy subtrees];
  v30 = [subtrees countByEnumeratingWithState:&v44 objects:v48 count:16];
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
          objc_enumerationMutation(subtrees);
        }

        v34 = *(*(&v44 + 1) + 8 * i);
        if ([v34 type] == 3)
        {
          shape = [v34 shape];

          if (shape)
          {
            screenTraits4 = [contextCopy screenTraits];
            [screenTraits4 keyboardWidth];
            v38 = v37;
            [v34 frame];
            v40 = v38 / v39;

            shape2 = [v34 shape];
            v42 = [v28 shapeByScalingShape:shape2 factor:{v40, v16}];
            [v34 setShape:v42];
          }
        }
      }

      v31 = [subtrees countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v31);
  }

  [keyplaneCopy setObject:0 forProperty:@"KBunionFrame"];
  [keyplaneCopy setObject:0 forProperty:@"KBunionPaddedFrame"];

  return keyplaneCopy;
}

+ (void)transformKeysForVietnameseKeyPlane:(id)plane withTransformationContext:(id)context
{
  v115 = *MEMORY[0x1E69E9840];
  planeCopy = plane;
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  screen = [screenTraits screen];
  [screen scale];
  v11 = v10;

  screenTraits2 = [contextCopy screenTraits];
  orientation = [screenTraits2 orientation];

  [self adjustHorizontalPaddingForKeyplane:planeCopy withTransformationContext:contextCopy];
  v14 = [planeCopy keysForDisplayRowAtIndex:1];
  v15 = [planeCopy keysForDisplayRowAtIndex:2];
  v98 = [planeCopy keysForDisplayRowAtIndex:3];
  v16 = [planeCopy keysForDisplayRowAtIndex:4];
  v97 = [planeCopy keysForDisplayRowAtIndex:5];
  [self _derivedLeadingControlKeyWidthForRow:3 keysForRow:? context:?];
  v18 = v17 + v17;
  [self _derivedTrailingControlKeyWidthForRow:3 orientation:orientation];
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
  screenTraits3 = [contextCopy screenTraits];
  [screenTraits3 keyboardWidth];
  v34 = (v33 - v18 - v20) / 9.0;

  v35 = v34 / v31;
  [planeCopy scaleKeys:v14 withFactor:v35 scale:{1.0, v11}];
  [planeCopy scaleKeys:v15 withFactor:v35 scale:{1.0, v11}];
  [planeCopy scaleKeys:v98 withFactor:v35 scale:{1.0, v11}];
  [planeCopy scaleKeys:v21 withFactor:v35 scale:{1.0, v11}];

  [self _derivedFiveRowControlKeyWidthForRow:0 keysForRow:v14 context:contextCopy];
  v95 = v14;
  [planeCopy repositionKeys:v14 withOffset:? scale:?];
  v36 = [planeCopy firstCachedKeyWithName:@"Delete-Key"];
  screenTraits4 = [contextCopy screenTraits];
  [screenTraits4 keyboardWidth];
  v39 = v38;
  [v36 frame];
  v40 = v39 - CGRectGetMinX(v116);

  [planeCopy shiftRowAndResizeLeadingControlKey:v36 toSize:v40 scale:{0.0, v11}];
  [self _derivedFiveRowControlKeyWidthForRow:1 keysForRow:v15 context:contextCopy];
  v42 = v41;
  firstObject = [v15 firstObject];
  [firstObject frame];
  CGRectGetMinX(v117);

  v44 = [self _supplementaryControlKeyWithName:@"Tab-Key" context:contextCopy];
  v45 = *MEMORY[0x1E69DDE68];
  [planeCopy insertKey:v44 withFrame:v15 andShiftKeys:0.0 scale:{*MEMORY[0x1E69DDE68], v42, *MEMORY[0x1E69DDE68], v11}];
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

    screenTraits5 = [contextCopy screenTraits];
    [screenTraits5 keyboardWidth];
    v55 = v54;
    [v48 frame];
    v56 = v55 - CGRectGetMinX(v118);

    [planeCopy shiftRowAndResizeLeadingControlKey:v48 toSize:v56 scale:{0.0, v11}];
  }

LABEL_28:

LABEL_29:
  [self _derivedFiveRowControlKeyWidthForRow:2 keysForRow:v98 context:contextCopy];
  v58 = v57;
  name = [planeCopy name];
  v60 = [name containsString:@"Alternate"];

  selfCopy = self;
  if (v60)
  {
    v61 = @"Undo-Key";
    v62 = [self _supplementaryControlKeyWithName:@"Undo-Key" context:contextCopy];
    v63 = [self _supplementaryControlKeyWithName:@"Redo-Key" context:contextCopy];
    name2 = [planeCopy name];
    v65 = [name2 containsString:@"First-Alternate"];

    v66 = v62;
    if ((v65 & 1) == 0)
    {
      name3 = [planeCopy name];
      v68 = [name3 containsString:@"Second-Alternate"];

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
    v70 = [planeCopy firstCachedKeyWithName:v61];
    if (v70)
    {
      v71 = v70;
      if ([v97 containsObject:v70])
      {
        [planeCopy removeKey:v71 andShiftKeys:v97 scale:v11];
      }

      else
      {
        [planeCopy removeKey:v71];
      }
    }

    goto LABEL_42;
  }

  v72 = [self _supplementaryControlKeyWithName:@"Caps-Lock-Key" context:contextCopy];
  if (![contextCopy usesScriptSwitch])
  {
    goto LABEL_44;
  }

  v69 = [self _supplementaryScriptSwitchKeyWithContext:contextCopy];

  v62 = [planeCopy firstCachedKeyWithName:@"Caps-Lock-Key"];
  if (v62)
  {
    [planeCopy removeKey:v62];
  }

LABEL_43:

  v72 = v69;
LABEL_44:
  [planeCopy insertKey:v72 withFrame:v98 andShiftKeys:0.0 scale:{v45, v58, v45, v11}];
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

    screenTraits6 = [contextCopy screenTraits];
    [screenTraits6 keyboardWidth];
    v82 = v81;
    [v75 frame];
    v83 = v82 - CGRectGetMinX(v119);

    [planeCopy shiftRowAndResizeLeadingControlKey:v75 toSize:v83 scale:{0.0, v11}];
  }

LABEL_55:

LABEL_56:
  v84 = [planeCopy cachedKeysByKeyName:@"Shift-Key"];
  v85 = [v84 objectAtIndexedSubscript:0];
  [v85 paddedFrame];
  v87 = v86;
  v88 = [v84 objectAtIndexedSubscript:1];
  [v88 paddedFrame];
  v90 = v87 < v89;
  v91 = v87 >= v89;

  v92 = [v84 objectAtIndexedSubscript:v91];
  v93 = [v84 objectAtIndexedSubscript:v90];
  [planeCopy shiftRowAndResizeLeadingControlKey:v92 toSize:v18 scale:{0.0, v11}];
  [planeCopy shiftRowAndResizeLeadingControlKey:v93 toSize:v20 scale:{0.0, v11}];

  [selfCopy transformLastRowKeysForKeyplane:planeCopy row:5 withTransformationContext:contextCopy];
}

+ (void)transformLastRowKeysForKeyplane:(id)keyplane row:(unint64_t)row withTransformationContext:(id)context
{
  v62 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  screen = [screenTraits screen];
  [screen scale];
  v13 = v12;

  screenTraits2 = [contextCopy screenTraits];
  orientation = [screenTraits2 orientation];

  v16 = [keyplaneCopy keysForDisplayRowAtIndex:row];
  if ([v16 count])
  {
    [self _keyplanePaddingForOrientation:orientation row:row];
    [keyplaneCopy repositionKeys:v16 withOffset:? scale:?];
    v17 = [v16 indexOfObjectPassingTest:&__block_literal_global_2991];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [self layoutScaleFactorForContext:contextCopy];
      v19 = v18;
    }

    else
    {
      firstObject = [v16 objectAtIndex:v17];
      [self layoutScaleFactorForContext:contextCopy];
      v19 = v21;
      if (firstObject)
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
          v54 = orientation;
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
                  firstObject = v29;
                }

                else
                {
                  [self _derivedLeadingControlKeyWidthForRow:3 keysForRow:v22 context:contextCopy];
                  v31 = v30;
                  if ((v25 & 1) != 0 && [v28 interactionType] != 1 && objc_msgSend(v28, "interactionType") != 2)
                  {
                    [self _derivedTrailingControlKeyWidthForRow:3 orientation:v54];
                    v31 = v32;
                  }

                  [keyplaneCopy shiftRowAndResizeLeadingControlKey:v28 toSize:v31 scale:{0.0, v13}];
                }
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v55 objects:v61 count:16];
          }

          while (v24);
        }

        screenTraits3 = [contextCopy screenTraits];
        [screenTraits3 keyboardWidth];
        v35 = v34;
        v36 = [v22 objectAtIndexedSubscript:0];
        [v36 frame];
        v38 = v35 - v37;
        lastObject = [v22 lastObject];
        [lastObject frame];
        v40 = v38 - CGRectGetMaxX(v63);

        [firstObject frame];
        [keyplaneCopy shiftRowAndResizeLeadingControlKey:firstObject toSize:v40 + v41 scale:{0.0, v13}];
        [keyplaneCopy scaleKeys:v22 withFactor:1.0 scale:{v19, v13}];
        v16 = v53;
        goto LABEL_22;
      }
    }

    firstObject = [v16 firstObject];
    lastObject2 = [v16 lastObject];
    [lastObject2 frame];
    MinX = CGRectGetMinX(v64);
    v60 = lastObject2;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
    [firstObject frame];
    Width = CGRectGetWidth(v65);
    [lastObject2 frame];
    [keyplaneCopy scaleKeys:v44 withFactor:Width / CGRectGetWidth(v66) scale:{1.0, v13}];

    v59 = lastObject2;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    [lastObject2 frame];
    [keyplaneCopy repositionKeys:v46 withOffset:MinX - CGRectGetMinX(v67) scale:{0.0, v13}];

    [firstObject frame];
    v47 = CGRectGetMinX(v68);
    [lastObject2 frame];
    v48 = CGRectGetMaxX(v69) - v47;
    screenTraits4 = [contextCopy screenTraits];
    [screenTraits4 keyboardWidth];
    v51 = v50 - v47;
    [lastObject2 frame];
    v52 = v51 - CGRectGetMaxX(v70);

    [keyplaneCopy scaleKeys:v16 withFactor:(v48 + v52) / v48 scale:{v19, v13}];
    [firstObject frame];
    [keyplaneCopy repositionKeys:v16 withOffset:v47 - CGRectGetMinX(v71) scale:{0.0, v13}];

LABEL_22:
  }
}

+ (void)transformKeysForHandwritingKeyplane:(id)keyplane withTransformationContext:(id)context
{
  keyplaneCopy = keyplane;
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  screen = [screenTraits screen];
  [screen scale];
  v10 = v9;

  screenTraits2 = [contextCopy screenTraits];
  [screenTraits2 orientation];

  [self layoutScaleFactorForContext:contextCopy];
  v13 = v12;
  v15 = v14;
  v16 = [keyplaneCopy keysForDisplayRowAtIndex:1];
  [self _derivedLeadingControlKeyWidthForRow:0 keysForRow:v16 context:contextCopy];
  [keyplaneCopy insertKey:0 withFrame:v16 andShiftKeys:*MEMORY[0x1E69DDE68] scale:{*MEMORY[0x1E69DDE68], v17, *MEMORY[0x1E69DDE68], v10}];
  [keyplaneCopy scaleKeys:v16 withFactor:v13 scale:{v15, v10}];
  v18 = [keyplaneCopy firstCachedKeyWithName:@"Delete-Key"];
  screenTraits3 = [contextCopy screenTraits];
  [screenTraits3 keyboardWidth];
  v21 = v20;
  [v18 frame];
  v22 = v21 - CGRectGetMinX(v30);

  [keyplaneCopy shiftRowAndResizeLeadingControlKey:v18 toSize:v22 scale:{0.0, v10}];
  v23 = [keyplaneCopy keysForDisplayRowAtIndex:0];
  screenTraits4 = [contextCopy screenTraits];
  [screenTraits4 keyboardWidth];
  v26 = v25;

  [keyplaneCopy frame];
  Width = CGRectGetWidth(v31);
  if (Width > 0.0)
  {
    [keyplaneCopy scaleKeys:v23 withFactor:v26 / Width scale:{v15, v10}];
  }

  [self transformLastRowKeysForKeyplane:keyplaneCopy row:2 withTransformationContext:contextCopy];
}

+ (void)transformKeysForFiveRowKeyplane:(id)keyplane withTransformationContext:(id)context
{
  keyplaneCopy = keyplane;
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  screen = [screenTraits screen];
  [screen scale];
  v10 = v9;

  screenTraits2 = [contextCopy screenTraits];
  [screenTraits2 orientation];

  screenTraits3 = [contextCopy screenTraits];
  [screenTraits3 keyboardWidth];
  v14 = v13;

  [keyplaneCopy frame];
  Width = CGRectGetWidth(v23);
  if (Width > 0.0)
  {
    v16 = v14 / Width;
    [self layoutScaleFactorForContext:contextCopy];
    v18 = v17;
    for (i = 1; i != 5; ++i)
    {
      v20 = [keyplaneCopy keysForDisplayRowAtIndex:i];
      [keyplaneCopy scaleKeys:v20 withFactor:v16 scale:{v18, v10}];
    }
  }

  [self transformLastRowKeysForKeyplane:keyplaneCopy row:5 withTransformationContext:contextCopy];
}

+ (void)transformKeysForFourRowKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v120 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  screen = [screenTraits screen];
  [screen scale];
  v11 = v10;

  screenTraits2 = [contextCopy screenTraits];
  orientation = [screenTraits2 orientation];

  [self adjustHorizontalPaddingForKeyplane:keyplaneCopy withTransformationContext:contextCopy];
  [self _keyplanePaddingForOrientation:orientation];
  v15 = v14;
  v16 = [keyplaneCopy keysForDisplayRowAtIndex:1];
  [self _derivedLeadingControlKeyWidthForRow:0 keysForRow:v16 context:contextCopy];
  v18 = v17;
  v19 = 0;
  if ([v16 count] >= 2)
  {
    v19 = [self _supplementaryControlKeyWithName:@"Tab-Key" context:contextCopy];
  }

  v20 = *MEMORY[0x1E69DDE68];
  [keyplaneCopy insertKey:v19 withFrame:v16 andShiftKeys:v15 scale:{*MEMORY[0x1E69DDE68], v18, *MEMORY[0x1E69DDE68], v11}];
  v21 = [keyplaneCopy firstCachedKeyWithName:@"Delete-Key"];
  screenTraits3 = [contextCopy screenTraits];
  [screenTraits3 keyboardWidth];
  v24 = v23;
  [v19 frame];
  v26 = v24 - v25;
  [v21 frame];
  v27 = v26 - CGRectGetMinX(v121);

  [keyplaneCopy shiftRowAndResizeLeadingControlKey:v21 toSize:v27 scale:{0.0, v11}];
  v28 = [keyplaneCopy keysForDisplayRowAtIndex:2];
  [self _derivedLeadingControlKeyWidthForRow:1 keysForRow:v28 context:contextCopy];
  v30 = v29;
  v31 = [self _supplementaryControlKeyWithName:@"Caps-Lock-Key" context:contextCopy];
  LODWORD(v21) = [contextCopy usesScriptSwitch];
  scriptSwitchKey = [keyplaneCopy scriptSwitchKey];
  v33 = scriptSwitchKey;
  if (!v21)
  {

    if (!v33)
    {
      goto LABEL_11;
    }

    scriptSwitchKey2 = [keyplaneCopy scriptSwitchKey];
    [keyplaneCopy removeKey:scriptSwitchKey2];
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
    v35 = [self _supplementaryScriptSwitchKeyWithContext:contextCopy];

    scriptSwitchKey2 = [keyplaneCopy firstCachedKeyWithName:@"Caps-Lock-Key"];
    if (scriptSwitchKey2)
    {
      [keyplaneCopy removeKey:scriptSwitchKey2];
    }

    goto LABEL_10;
  }

LABEL_12:
  scriptSwitchKey3 = [keyplaneCopy scriptSwitchKey];
  v37 = [self _cachedUndoOrRedoKeyForKeyplane:keyplaneCopy];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = scriptSwitchKey3;
  }

  v31 = v39;

  v40 = [keyplaneCopy keysForDisplayRowAtIndex:4];
  v41 = v40;
  if (v31 == scriptSwitchKey3)
  {
    v112 = v28;
    v42 = [keyplaneCopy cachedKeysByKeyName:@"More-Key"];
    if ([v41 containsObject:v31])
    {
      firstObject = [v42 firstObject];
      v44 = [firstObject copy];

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
        selfCopy = self;
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
        self = selfCopy;
      }

      [v31 setMergeAsMoreKey:1];
      [keyplaneCopy removeKey:v31];
      v45 = 0;
    }

    [keyplaneCopy replaceKey:v45 withKey:v44];
    [v31 setMergeAsMoreKey:0];

    v28 = v112;
  }

  else if ([v40 containsObject:v31])
  {
    [keyplaneCopy removeKey:v31 andShiftKeys:v41 scale:v11];
  }

  if (!v31)
  {
    [self _derivedLeadingControlKeyWidthForRow:0 keysForRow:0 context:contextCopy];
    v30 = v50;
  }

LABEL_36:
  [keyplaneCopy insertKey:v31 withFrame:v28 andShiftKeys:v15 scale:{v20, v30, v20, v11}];
  v51 = [keyplaneCopy firstCachedKeyWithName:@"Return-Key"];
  screenTraits4 = [contextCopy screenTraits];
  [screenTraits4 keyboardWidth];
  v54 = v53;
  [v31 frame];
  v56 = v54 - v55;
  [v51 frame];
  v57 = v56 - CGRectGetMinX(v122);

  [keyplaneCopy shiftRowAndResizeLeadingControlKey:v51 toSize:v57 scale:{0.0, v11}];
  v58 = [keyplaneCopy cachedKeysByKeyName:@"Shift-Key"];
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
      firstObject2 = [v58 objectAtIndexedSubscript:1];
      v66 = v58;
      v67 = 0;
    }

    else
    {
      firstObject2 = [v58 objectAtIndexedSubscript:0];
      v66 = v58;
      v67 = 1;
    }

    lastObject3 = [v66 objectAtIndexedSubscript:v67];
  }

  else
  {
    firstObject2 = [v58 firstObject];
    v68 = [keyplaneCopy keysForDisplayRowAtIndex:3];
    v69 = [keyplaneCopy firstCachedKeyWithName:@"Return-Key"];
    if ([v68 containsObject:v69])
    {
      lastObject3 = v69;
    }

    else
    {
      lastObject = [v68 lastObject];
      layoutTag = [lastObject layoutTag];
      if (layoutTag)
      {
        v73 = layoutTag;
        selfCopy2 = self;
        lastObject2 = [v68 lastObject];
        name = [lastObject2 name];
        v113 = [name hasSuffix:@"width-Toggle-Key"];

        if (v113)
        {
          lastObject3 = [v68 lastObject];
        }

        else
        {
          lastObject3 = 0;
        }

        self = selfCopy2;
      }

      else
      {

        lastObject3 = 0;
      }
    }
  }

  v76 = [keyplaneCopy keysForDisplayRowAtIndex:3];
  firstObject3 = [v76 firstObject];
  if ([firstObject3 interactionType] == 2)
  {
    [firstObject3 frame];
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
  v80 = [self _supplementaryShiftKeysWithContext:contextCopy];
  if ([v80 count] != 2 || firstObject2 && (objc_msgSend(v76, "containsObject:", firstObject2) & 1) != 0)
  {
    firstObject4 = firstObject2;
  }

  else
  {
    firstObject4 = [v80 firstObject];

    [self _derivedLeadingControlKeyWidthForRow:2 keysForRow:v76 context:contextCopy];
    v83 = v82;
    [firstObject4 frame];
    [keyplaneCopy insertKey:firstObject4 withFrame:v76 andShiftKeys:0.0 scale:{v20, v83}];
    if (!lastObject3 || ([v76 containsObject:lastObject3] & 1) == 0)
    {
      lastObject4 = [v80 lastObject];

      [v76 lastObject];
      v85 = v111 = self;
      [v85 frame];
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v93 = v92;

      screenTraits5 = [contextCopy screenTraits];
      [screenTraits5 keyboardWidth];
      v96 = v95;
      v124.origin.x = v87;
      v124.origin.y = v89;
      v124.size.width = v91;
      v124.size.height = v93;
      v97 = v96 - CGRectGetMaxX(v124);

      lastObject5 = [v76 lastObject];
      shape = [lastObject5 shape];
      [lastObject4 setShape:shape];

      self = v111;
      v125.origin.x = v87;
      v125.origin.y = v89;
      v125.size.width = v91;
      v125.size.height = v93;
      [keyplaneCopy insertKey:lastObject4 withFrame:0 andShiftKeys:CGRectGetMaxX(v125) scale:{v20, v97, v20, v11}];
      lastObject3 = lastObject4;
    }
  }

  v100 = firstObject4;
  [v100 frame];
  UIRectInset();
  [v100 setFrame:?];
  [v100 paddedFrame];
  UIRectInset();
  [v100 setPaddedFrame:?];

  [self _derivedLeadingControlKeyWidthForRow:v114 keysForRow:v76 context:contextCopy];
  [keyplaneCopy shiftRowAndResizeLeadingControlKey:v100 toSize:? scale:?];
  [contextCopy screenTraits];
  v102 = v101 = self;
  [v102 keyboardWidth];
  v104 = v103;
  [v100 frame];
  v106 = v104 - v105;
  [lastObject3 frame];
  v107 = v106 - CGRectGetMinX(v126);

  [keyplaneCopy shiftRowAndResizeLeadingControlKey:lastObject3 toSize:v107 scale:{0.0, v11}];
  [v101 transformLastRowKeysForKeyplane:keyplaneCopy row:4 withTransformationContext:contextCopy];
}

+ (CGSize)layoutScaleFactorForContext:(id)context
{
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  v5 = ([screenTraits orientation] - 3) < 2;

  v6 = dbl_1900C0EF0[v5];
  [contextCopy keyboardSize];
  v8 = v7 / v6;
  [contextCopy keyboardSize];
  v10 = v9;
  activeKeyplane = [contextCopy activeKeyplane];

  [activeKeyplane frame];
  v13 = v10 / v12;

  v14 = v8;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (void)adjustHorizontalPaddingForKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v66 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  orientation = [screenTraits orientation];

  screenTraits2 = [contextCopy screenTraits];
  screen = [screenTraits2 screen];
  [screen scale];
  v13 = v12;

  screenTraits3 = [contextCopy screenTraits];
  [screenTraits3 keyboardWidth];
  v16 = v15;

  [self _totalKeyPaddingForOrientation:orientation];
  v18 = v17;
  [self _derivedLeadingControlKeyWidthForRow:0 keysForRow:0 context:contextCopy];
  v20 = v19;
  [keyplaneCopy frame];
  Width = CGRectGetWidth(v67);
  v22 = 0.0;
  if ((orientation - 5) >= 0xFFFFFFFFFFFFFFFELL)
  {
    [self _keyPitchForKeyplane:keyplaneCopy];
    v22 = v23;
  }

  [self layoutScaleFactorForContext:{contextCopy, contextCopy}];
  v25 = v24;
  v27 = v26;
  if ([keyplaneCopy numberOfRows] >= 2)
  {
    v28 = v18 + v20 + Width;
    v30 = v22 <= 0.0 || (orientation - 5) < 0xFFFFFFFFFFFFFFFELL;
    v31 = *MEMORY[0x1E695EFF8];
    v32 = v22 * 5.2571428 * v25;
    v33 = v16 / v28;
    v34 = 1;
    do
    {
      v35 = [keyplaneCopy keysForDisplayRowAtIndex:v34];
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

      [keyplaneCopy scaleKeys:v36 withFactor:v37 scale:{v27, v13}];

      ++v34;
    }

    while (v34 < [keyplaneCopy numberOfRows]);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  keys = [keyplaneCopy keys];
  v50 = [keys countByEnumeratingWithState:&v56 objects:v64 count:16];
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
          objc_enumerationMutation(keys);
        }

        v54 = *(*(&v56 + 1) + 8 * j);
        [v54 frame];
        UIRectInsetEdges();
        [v54 setPaddedFrame:?];
      }

      v51 = [keys countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v51);
  }
}

+ (double)_keyPitchForKeyplane:(id)keyplane
{
  v25 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v5 = 0.0;
  if ([keyplaneCopy numberOfRows] <= 4)
  {
    if ([keyplaneCopy numberOfRows] < 2)
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
        v7 = [keyplaneCopy keysForDisplayRowAtIndex:v6 + 1];
        v20 = 0;
        v21 = 0;
        v8 = [self _numberOfKeysInRow:v7 firstKey:&v21 lastKey:&v20];
        v9 = v21;
        v10 = v20;
        v11 = v8 - ([v9 interactionType] == 14);
        LODWORD(v8) = [v10 interactionType];

        *(&v22 + v6) = v11 - (v8 == 14);
        numberOfRows = [keyplaneCopy numberOfRows];
        v13 = v6 + 2;
        ++v6;
      }

      while (v13 < numberOfRows);
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

+ (id)cachedControlKeySetsForTransformationContext:(id)context
{
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  v6 = [self _supplementaryControlKeySetForOrientation:objc_msgSend(screenTraits context:{"orientation"), contextCopy}];

  subtrees = [v6 subtrees];

  return subtrees;
}

+ (id)_supplementaryShiftKeysWithContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  screenTraits = [contextCopy screenTraits];
  v21 = contextCopy;
  v7 = [self _supplementaryControlKeySetForOrientation:objc_msgSend(screenTraits context:{"orientation"), contextCopy}];
  subtrees = [v7 subtrees];

  v9 = [subtrees countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(subtrees);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        subtrees2 = [v13 subtrees];
        v15 = [subtrees2 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(subtrees2);
              }

              v19 = *(*(&v22 + 1) + 8 * j);
              if ([v19 interactionType] == 14)
              {
                [array addObject:v19];
              }
            }

            v16 = [subtrees2 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v16);
        }
      }

      v10 = [subtrees countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  return array;
}

+ (id)_cachedUndoOrRedoKeyForKeyplane:(id)keyplane
{
  v25 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  v4 = [keyplaneCopy firstCachedKeyWithName:@"Undo-Key"];
  v5 = [keyplaneCopy firstCachedKeyWithName:@"Redo-Key"];
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
    [keyplaneCopy cachedKeysByKeyName:@"Modify-For-Writeboard-Key"];
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
          name = [v14 name];
          if ([name isEqualToString:@"Undo-Key"])
          {

LABEL_17:
            v8 = v14;
            v6 = v19;
            goto LABEL_18;
          }

          name2 = [v14 name];
          v17 = [name2 isEqualToString:@"Redo-Key"];

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

+ (id)_supplementaryScriptSwitchKeyWithContext:(id)context
{
  contextCopy = context;
  v5 = [self _supplementaryControlKeyWithName:@"Roman-to-Non-Roman-Switch-Key" context:contextCopy];
  if (!v5)
  {
    v5 = [self _supplementaryControlKeyWithName:@"Non-Roman-to-Roman-Switch-Key" context:contextCopy];
  }

  return v5;
}

+ (id)_supplementaryControlKeyWithName:(id)name context:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  contextCopy = context;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  screenTraits = [contextCopy screenTraits];
  v9 = [self _supplementaryControlKeySetForOrientation:objc_msgSend(screenTraits context:{"orientation"), contextCopy}];
  subtrees = [v9 subtrees];

  v26 = [subtrees countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v26)
  {
    v11 = *v32;
    v24 = *v32;
    v25 = contextCopy;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(subtrees);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        subtrees2 = [v13 subtrees];
        v15 = [subtrees2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(subtrees2);
              }

              v19 = *(*(&v27 + 1) + 8 * j);
              name = [v19 name];
              v21 = [name isEqualToString:nameCopy];

              if (v21)
              {
                v22 = v19;

                contextCopy = v25;
                goto LABEL_19;
              }
            }

            v16 = [subtrees2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
      contextCopy = v25;
      v26 = [subtrees countByEnumeratingWithState:&v31 objects:v36 count:16];
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

+ (id)_supplementaryControlKeySetForOrientation:(int64_t)orientation context:(id)context
{
  contextCopy = context;
  if (!__supplementaryControlKeysetCache)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = __supplementaryControlKeysetCache;
    __supplementaryControlKeysetCache = v7;
  }

  v9 = UIKeyboardGetCurrentInputMode();
  v10 = MEMORY[0x193AE81B0]();

  if ([self _inputModeSupportsCrescendo:v10])
  {
    v11 = 0;
    goto LABEL_20;
  }

  v12 = MEMORY[0x1E696AEC0];
  currentKeyplaneName = [contextCopy currentKeyplaneName];
  orientation = [v12 stringWithFormat:@"%@-%@-%ld", v10, currentKeyplaneName, orientation];

  keySet = [__supplementaryControlKeysetCache objectForKey:orientation];
  if (keySet)
  {
    goto LABEL_18;
  }

  screenTraits = [contextCopy screenTraits];
  v17 = [screenTraits orientation] - 3;

  v18 = @"Portrait";
  if (v17 < 2)
  {
    v18 = @"Landscape";
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wildcat-%@Fudge-%@", v18, v10];
  additionalKeyboardLoader = [contextCopy additionalKeyboardLoader];
  screenTraits2 = [contextCopy screenTraits];
  v22 = [additionalKeyboardLoader keyboardWithName:v19 screenTraits:screenTraits2];

  currentKeyplaneName2 = [contextCopy currentKeyplaneName];
  [(__CFString *)currentKeyplaneName2 rangeOfString:@"alternate" options:1];
  if (v24)
  {

    currentKeyplaneName2 = @"Alternate";
  }

  v25 = [v22 subtreeWithName:currentKeyplaneName2];
  if (!v25)
  {

    currentKeyplaneName2 = @"Small-Letters";
    v25 = [v22 subtreeWithName:@"Small-Letters"];
    if (!v25)
    {
      currentKeyplaneName2 = @"Letters";
      v25 = [v22 subtreeWithName:@"Letters"];
      if (!v25)
      {

        keySet = 0;
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
    keySet = [v27 keySet];
    if (keySet)
    {
      [__supplementaryControlKeysetCache setObject:keySet forKey:orientation];
    }
  }

  else
  {
    keySet = 0;
  }

  if (!v28)
  {
    goto LABEL_24;
  }

LABEL_18:
  keySet = keySet;
  v11 = keySet;
LABEL_19:

LABEL_20:

  return v11;
}

+ (BOOL)_inputModeSupportsCrescendo:(id)crescendo
{
  crescendoCopy = crescendo;
  if (!_inputModeSupportsCrescendo__supportedModes)
  {
    v4 = +[TUIKeyboardLayoutFactory crescendoLayouts];
    v5 = _inputModeSupportsCrescendo__supportedModes;
    _inputModeSupportsCrescendo__supportedModes = v4;
  }

  v6 = MEMORY[0x193AE8220](crescendoCopy);
  v7 = [_inputModeSupportsCrescendo__supportedModes containsObject:v6];

  return v7;
}

+ (double)_derivedTrailingControlKeyWidthForRow:(unint64_t)row orientation:(int64_t)orientation
{
  [self _totalKeyPaddingForOrientation:orientation];
  v7 = MEMORY[0x1E69DDE68];
  if (row == 3)
  {
    v7 = (&unk_1900C0F00 + 8 * ((orientation - 3) < 2));
  }

  return v6 + *v7;
}

+ (double)_scaledDerivedLeadingControlKeyWidth:(double)width forKeysForRow:(id)row keyCount:(int64_t)count numberOfKeysInSpecification:(int64_t)specification context:(id)context
{
  v38 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  orientation = [screenTraits orientation];

  [self _totalKeyPaddingForOrientation:orientation];
  v17 = v16;
  if (specification && count > specification)
  {
    width = 10.0 / (dbl_1900C0F10[(orientation - 3) < 2] * (count - specification) + 10.0) * width;
    v35 = 0u;
    v36 = 0u;
    v18 = v16 + width;
    v33 = 0u;
    v34 = 0u;
    v19 = rowCopy;
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

    screenTraits2 = [contextCopy screenTraits];
    [screenTraits2 keyboardWidth];
    v27 = v26;

    if (v18 > v27)
    {
      screenTraits3 = [contextCopy screenTraits];
      [screenTraits3 keyboardWidth];
      width = v29 - (v18 - width) - v17;
    }
  }

  [self layoutScaleFactorForContext:{contextCopy, v33}];
  v31 = v30;

  return (v17 + width) * v31;
}

+ (double)_derivedFiveRowControlKeyWidthForRow:(unint64_t)row keysForRow:(id)forRow context:(id)context
{
  v21 = 0;
  v22 = 0;
  contextCopy = context;
  forRowCopy = forRow;
  v10 = [self _numberOfKeysInRow:forRowCopy firstKey:&v22 lastKey:&v21];
  v11 = v22;
  screenTraits = [contextCopy screenTraits];
  orientation = [screenTraits orientation];

  v14 = orientation - 3;
  if (row == 2)
  {
    v15 = dbl_1900C0F20[v14 < 2];
    v17 = 10;
  }

  else if (row == 1)
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

    if (row)
    {
      v17 = 0;
    }

    else
    {
      v17 = 11;
    }

    if (!row)
    {
      v15 = v16;
    }
  }

  [self _scaledDerivedLeadingControlKeyWidth:forRowCopy forKeysForRow:v10 keyCount:v17 numberOfKeysInSpecification:contextCopy context:v15];
  v19 = v18;

  return v19;
}

+ (double)_derivedLeadingControlKeyWidthForRow:(unint64_t)row keysForRow:(id)forRow context:(id)context
{
  forRowCopy = forRow;
  contextCopy = context;
  v22 = 0;
  v23 = 0;
  v10 = [self _numberOfKeysInRow:forRowCopy firstKey:&v23 lastKey:&v22];
  v11 = v23;
  v12 = v22;
  screenTraits = [contextCopy screenTraits];
  orientation = [screenTraits orientation];

  v15 = 0;
  v16 = orientation - 3;
  v17 = 0.0;
  if (row <= 1)
  {
    if (row)
    {
      if (row == 1)
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

  if (row == 2)
  {
    v18 = v16 < 2;
    if ([v11 interactionType] == 2)
    {
      ++v10;
    }

    v17 = dbl_1900C0F40[v18];
    goto LABEL_14;
  }

  if (row == 3)
  {
    v15 = 0;
    v17 = dbl_1900C0F30[v16 < 2];
  }

LABEL_15:
  [self _scaledDerivedLeadingControlKeyWidth:forRowCopy forKeysForRow:v10 keyCount:v15 numberOfKeysInSpecification:contextCopy context:v17];
  v20 = v19;

  return v20;
}

+ (unint64_t)_numberOfKeysInRow:(id)row firstKey:(id *)key lastKey:(id *)lastKey
{
  v25 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [rowCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(rowCopy);
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

      v9 = [rowCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
    if (key)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (key)
    {
LABEL_13:
      v17 = v11;
      *key = v11;
    }
  }

  if (lastKey)
  {
    v18 = v10;
    *lastKey = v10;
  }

  return v12;
}

+ (double)_keyplanePaddingForOrientation:(int64_t)orientation row:(unint64_t)row
{
  if (row == 5)
  {
    return 1.0;
  }

  [self _keyplanePaddingForOrientation:orientation];
  return result;
}

+ (double)_totalKeyPaddingForOrientation:(int64_t)orientation
{
  result = 10.0;
  if ((orientation - 3) < 2)
  {
    return 14.0;
  }

  return result;
}

@end