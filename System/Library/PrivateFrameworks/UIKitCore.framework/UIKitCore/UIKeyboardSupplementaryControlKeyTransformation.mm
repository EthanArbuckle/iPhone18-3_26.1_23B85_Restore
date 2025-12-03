@interface UIKeyboardSupplementaryControlKeyTransformation
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

+ (double)_totalKeyPaddingForOrientation:(int64_t)orientation
{
  result = 10.0;
  if ((orientation - 3) < 2)
  {
    return 14.0;
  }

  return result;
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

    v17 = dbl_18A6804D0[v16 < 2];
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

    v17 = dbl_18A6804C0[v18];
    goto LABEL_14;
  }

  if (row == 3)
  {
    v15 = 0;
    v17 = dbl_18A6804B0[v16 < 2];
  }

LABEL_15:
  [self _scaledDerivedLeadingControlKeyWidth:forRowCopy forKeysForRow:v10 keyCount:v15 numberOfKeysInSpecification:contextCopy context:v17];
  v20 = v19;

  return v20;
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
    v15 = dbl_18A6804E0[v14 < 2];
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
    width = 10.0 / (dbl_18A6804F0[(orientation - 3) < 2] * (count - specification) + 10.0) * width;
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

+ (double)_derivedTrailingControlKeyWidthForRow:(unint64_t)row orientation:(int64_t)orientation
{
  [self _totalKeyPaddingForOrientation:orientation];
  v7 = dbl_18A680500[(orientation - 3) < 2];
  if (row != 3)
  {
    v7 = -1.0;
  }

  return v7 + v6;
}

+ (id)_supplementaryControlKeySetForOrientation:(int64_t)orientation context:(id)context
{
  contextCopy = context;
  if (!__supplementaryControlKeysetCache)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = __supplementaryControlKeysetCache;
    __supplementaryControlKeysetCache = v6;
  }

  v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v8 preferencesActions];
  v10 = UIKeyboardGetCurrentInputMode();
  v11 = [preferencesActions inputModeSupportsCrescendo:v10];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = UIKeyboardGetCurrentInputMode();
    v14 = KBStarLayoutString(v13);

    v15 = MEMORY[0x1E696AEC0];
    currentKeyplaneName = [contextCopy currentKeyplaneName];
    orientation = [v15 stringWithFormat:@"%@-%@-%ld", v14, currentKeyplaneName, orientation];

    keySet = [__supplementaryControlKeysetCache objectForKey:orientation];
    if (keySet)
    {
      goto LABEL_19;
    }

    v19 = @"Portrait";
    screenTraits = [contextCopy screenTraits];
    v21 = [screenTraits orientation] - 3;

    if (v21 <= 1)
    {
      v22 = @"Landscape";

      v19 = v22;
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wildcat-%@Fudge-%@", v19, v14];
    additionalKeyboardLoader = [contextCopy additionalKeyboardLoader];
    screenTraits2 = [contextCopy screenTraits];
    v26 = [additionalKeyboardLoader keyboardWithName:v23 screenTraits:screenTraits2];

    currentKeyplaneName2 = [contextCopy currentKeyplaneName];
    [(__CFString *)currentKeyplaneName2 rangeOfString:@"alternate" options:1];
    if (v28)
    {

      currentKeyplaneName2 = @"Alternate";
    }

    v29 = [v26 subtreeWithName:currentKeyplaneName2];
    v35 = v26;
    if (v29 || (currentKeyplaneName2, currentKeyplaneName2 = @"Small-Letters", [v26 subtreeWithName:@"Small-Letters"], (v29 = objc_claimAutoreleasedReturnValue()) != 0) || (currentKeyplaneName2 = @"Letters", objc_msgSend(v26, "subtreeWithName:", @"Letters"), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v29;
      v31 = [v29 subtreeWithName:@"Wildcat-Fudge-Control-Keys-Keylayout"];
      v32 = v31;
      v33 = v31 != 0;
      if (v31)
      {
        keySet = [v31 keySet];
        if (keySet)
        {
          [__supplementaryControlKeysetCache setObject:keySet forKey:orientation];
        }
      }

      else
      {
        keySet = 0;
      }
    }

    else
    {
      keySet = 0;
      v33 = 0;
    }

    if (v33)
    {
LABEL_19:
      keySet = keySet;
      v12 = keySet;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
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

+ (id)cachedControlKeySetsForTransformationContext:(id)context
{
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  v6 = [self _supplementaryControlKeySetForOrientation:objc_msgSend(screenTraits context:{"orientation"), contextCopy}];

  subtrees = [v6 subtrees];

  return subtrees;
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

+ (void)adjustHorizontalPaddingForKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v70 = *MEMORY[0x1E69E9840];
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
  Width = CGRectGetWidth(v71);
  v22 = 0.0;
  v59 = orientation - 5;
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
    v30 = v22 <= 0.0 || v59 < 0xFFFFFFFFFFFFFFFELL;
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
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v39 = v36;
          v40 = [v39 countByEnumeratingWithState:&v64 objects:v69 count:16];
          v41 = v31;
          v42 = v31;
          if (v40)
          {
            v43 = v40;
            v44 = 0;
            v45 = *v65;
            v42 = v31;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v65 != v45)
                {
                  objc_enumerationMutation(v39);
                }

                v47 = *(*(&v64 + 1) + 8 * i);
                [v47 frame];
                if (!CGRectIsEmpty(v72) && [v47 interactionType] != 14)
                {
                  [v47 frame];
                  v41 = v48 + v49 * 0.5;
                  if (v44)
                  {
                    goto LABEL_25;
                  }

                  v44 = 1;
                  v42 = v48 + v49 * 0.5;
                }
              }

              v43 = [v39 countByEnumeratingWithState:&v64 objects:v69 count:16];
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

  v62 = 0u;
  v63 = 0u;
  if (v59 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v50 = 4.0;
  }

  else
  {
    v50 = 2.0;
  }

  v60 = 0uLL;
  v61 = 0uLL;
  keys = [keyplaneCopy keys];
  v52 = [keys countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v61;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v61 != v54)
        {
          objc_enumerationMutation(keys);
        }

        v56 = *(*(&v60 + 1) + 8 * j);
        [v56 frame];
        [v56 setPaddedFrame:v50 + v57];
      }

      v53 = [keys countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v53);
  }
}

+ (CGSize)layoutScaleFactorForContext:(id)context
{
  contextCopy = context;
  screenTraits = [contextCopy screenTraits];
  v5 = ([screenTraits orientation] - 3) < 2;

  v6 = dbl_18A680510[v5];
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

+ (void)transformKeysForFourRowKeyplane:(id)keyplane withTransformationContext:(id)context
{
  v125 = *MEMORY[0x1E69E9840];
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

  [keyplaneCopy insertKey:v19 withFrame:v16 andShiftKeys:v15 scale:{-1.0, v18, -1.0, v11}];
  v20 = [keyplaneCopy firstCachedKeyWithName:@"Delete-Key"];
  screenTraits3 = [contextCopy screenTraits];
  [screenTraits3 keyboardWidth];
  v23 = v22;
  [v19 frame];
  v25 = v23 - v24;
  [v20 frame];
  v26 = v25 - CGRectGetMinX(v126);

  [keyplaneCopy shiftRowAndResizeLeadingControlKey:v20 toSize:v26 scale:{0.0, v11}];
  v27 = [keyplaneCopy keysForDisplayRowAtIndex:2];
  [self _derivedLeadingControlKeyWidthForRow:1 keysForRow:v27 context:contextCopy];
  v29 = v28;
  v30 = [self _supplementaryControlKeyWithName:@"Caps-Lock-Key" context:contextCopy];
  LODWORD(v20) = [contextCopy usesScriptSwitch];
  scriptSwitchKey = [keyplaneCopy scriptSwitchKey];
  v32 = scriptSwitchKey;
  if (!v20)
  {

    if (!v32)
    {
      goto LABEL_11;
    }

    scriptSwitchKey2 = [keyplaneCopy scriptSwitchKey];
    [keyplaneCopy removeKey:scriptSwitchKey2];
    v34 = v30;
LABEL_10:

    v30 = v34;
LABEL_11:
    if (v30)
    {
      goto LABEL_36;
    }

    goto LABEL_12;
  }

  if (!v32)
  {
    v34 = [self _supplementaryScriptSwitchKeyWithContext:contextCopy];

    scriptSwitchKey2 = [keyplaneCopy firstCachedKeyWithName:@"Caps-Lock-Key"];
    if (scriptSwitchKey2)
    {
      [keyplaneCopy removeKey:scriptSwitchKey2];
    }

    goto LABEL_10;
  }

LABEL_12:
  scriptSwitchKey3 = [keyplaneCopy scriptSwitchKey];
  v36 = [self _cachedUndoOrRedoKeyForKeyplane:keyplaneCopy];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = scriptSwitchKey3;
  }

  v30 = v38;

  v39 = [keyplaneCopy keysForDisplayRowAtIndex:4];
  v40 = v39;
  if (v30 == scriptSwitchKey3)
  {
    v117 = v27;
    v41 = [keyplaneCopy cachedKeysByKeyName:@"More-Key"];
    if ([v40 containsObject:v30])
    {
      firstObject = [v41 firstObject];
      v43 = [firstObject copy];

      v44 = v30;
    }

    else
    {
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v45 = v40;
      v43 = [v45 countByEnumeratingWithState:&v120 objects:v124 count:16];
      if (v43)
      {
        v113 = v40;
        selfCopy = self;
        v46 = *v121;
        while (2)
        {
          for (i = 0; i != v43; i = i + 1)
          {
            if (*v121 != v46)
            {
              objc_enumerationMutation(v45);
            }

            v48 = *(*(&v120 + 1) + 8 * i);
            if ([v48 interactionType] == 11 && (objc_msgSend(v41, "containsObject:", v48) & 1) == 0)
            {
              v43 = v48;
              goto LABEL_31;
            }
          }

          v43 = [v45 countByEnumeratingWithState:&v120 objects:v124 count:16];
          if (v43)
          {
            continue;
          }

          break;
        }

LABEL_31:
        v40 = v113;
        self = selfCopy;
      }

      [v30 setMergeAsMoreKey:1];
      [keyplaneCopy removeKey:v30];
      v44 = 0;
    }

    [keyplaneCopy replaceKey:v44 withKey:v43];
    [v30 setMergeAsMoreKey:0];

    v27 = v117;
  }

  else if ([v39 containsObject:v30])
  {
    [keyplaneCopy removeKey:v30 andShiftKeys:v40 scale:v11];
  }

  if (!v30)
  {
    [self _derivedLeadingControlKeyWidthForRow:0 keysForRow:0 context:contextCopy];
    v29 = v49;
  }

LABEL_36:
  [keyplaneCopy insertKey:v30 withFrame:v27 andShiftKeys:v15 scale:{-1.0, v29, -1.0, v11}];
  v50 = [keyplaneCopy firstCachedKeyWithName:@"Return-Key"];
  screenTraits4 = [contextCopy screenTraits];
  [screenTraits4 keyboardWidth];
  v53 = v52;
  [v30 frame];
  v55 = v53 - v54;
  [v50 frame];
  v56 = v55 - CGRectGetMinX(v127);

  [keyplaneCopy shiftRowAndResizeLeadingControlKey:v50 toSize:v56 scale:{0.0, v11}];
  v57 = [keyplaneCopy cachedKeysByKeyName:@"Shift-Key"];
  if ([v57 count] == 2)
  {
    v58 = [v57 objectAtIndexedSubscript:0];
    [v58 paddedFrame];
    v60 = v59;
    v61 = [v57 objectAtIndexedSubscript:1];
    [v61 paddedFrame];
    v63 = v62;

    if (v60 >= v63)
    {
      firstObject2 = [v57 objectAtIndexedSubscript:1];
      v65 = v57;
      v66 = 0;
    }

    else
    {
      firstObject2 = [v57 objectAtIndexedSubscript:0];
      v65 = v57;
      v66 = 1;
    }

    lastObject3 = [v65 objectAtIndexedSubscript:v66];
  }

  else
  {
    firstObject2 = [v57 firstObject];
    v67 = [keyplaneCopy keysForDisplayRowAtIndex:3];
    v68 = [keyplaneCopy firstCachedKeyWithName:@"Return-Key"];
    if ([v67 containsObject:v68])
    {
      lastObject3 = v68;
    }

    else
    {
      lastObject = [v67 lastObject];
      layoutTag = [lastObject layoutTag];
      if (layoutTag)
      {
        v72 = layoutTag;
        selfCopy2 = self;
        lastObject2 = [v67 lastObject];
        name = [lastObject2 name];
        v118 = [name hasSuffix:@"width-Toggle-Key"];

        if (v118)
        {
          lastObject3 = [v67 lastObject];
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

  v75 = [keyplaneCopy keysForDisplayRowAtIndex:3];
  firstObject3 = [v75 firstObject];
  if ([firstObject3 interactionType] == 2)
  {
    [firstObject3 frame];
    MinX = CGRectGetMinX(v128);
    v78 = 2;
    if (MinX < 1.0)
    {
      v78 = 0;
    }
  }

  else
  {
    v78 = 2;
  }

  v119 = v78;
  v79 = [self _supplementaryShiftKeysWithContext:contextCopy];
  if ([v79 count] != 2 || firstObject2 && (objc_msgSend(v75, "containsObject:", firstObject2) & 1) != 0)
  {
    firstObject4 = firstObject2;
  }

  else
  {
    firstObject4 = [v79 firstObject];

    [self _derivedLeadingControlKeyWidthForRow:2 keysForRow:v75 context:contextCopy];
    v82 = v81;
    [firstObject4 frame];
    [keyplaneCopy insertKey:firstObject4 withFrame:v75 andShiftKeys:0.0 scale:{-1.0, v82}];
    if (!lastObject3 || ([v75 containsObject:lastObject3] & 1) == 0)
    {
      lastObject4 = [v79 lastObject];

      [v75 lastObject];
      v84 = v116 = self;
      [v84 frame];
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v92 = v91;

      screenTraits5 = [contextCopy screenTraits];
      [screenTraits5 keyboardWidth];
      v95 = v94;
      v129.origin.x = v86;
      v129.origin.y = v88;
      v129.size.width = v90;
      v129.size.height = v92;
      v96 = v95 - CGRectGetMaxX(v129);

      lastObject5 = [v75 lastObject];
      shape = [lastObject5 shape];
      [lastObject4 setShape:shape];

      self = v116;
      v130.origin.x = v86;
      v130.origin.y = v88;
      v130.size.width = v90;
      v130.size.height = v92;
      [keyplaneCopy insertKey:lastObject4 withFrame:0 andShiftKeys:CGRectGetMaxX(v130) scale:{-1.0, v96, -1.0, v11}];
      lastObject3 = lastObject4;
    }
  }

  v99 = firstObject4;
  [v99 frame];
  [v99 setFrame:{v15 + v100, v102 + 0.0, v101 - (v15 + 0.0)}];
  [v99 paddedFrame];
  [v99 setPaddedFrame:{v15 + v103, v105 + 0.0, v104 - (v15 + 0.0)}];

  [self _derivedLeadingControlKeyWidthForRow:v119 keysForRow:v75 context:contextCopy];
  [keyplaneCopy shiftRowAndResizeLeadingControlKey:v99 toSize:? scale:?];
  [contextCopy screenTraits];
  v107 = v106 = self;
  [v107 keyboardWidth];
  v109 = v108;
  [v99 frame];
  v111 = v109 - v110;
  [lastObject3 frame];
  v112 = v111 - CGRectGetMinX(v131);

  [keyplaneCopy shiftRowAndResizeLeadingControlKey:lastObject3 toSize:v112 scale:{0.0, v11}];
  [v106 transformLastRowKeysForKeyplane:keyplaneCopy row:4 withTransformationContext:contextCopy];
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
  [keyplaneCopy insertKey:0 withFrame:v16 andShiftKeys:-1.0 scale:{-1.0, v17, -1.0, v10}];
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
    v17 = [v16 indexOfObjectPassingTest:&__block_literal_global_401];
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

+ (void)transformKeysForVietnameseKeyPlane:(id)plane withTransformationContext:(id)context
{
  v113 = *MEMORY[0x1E69E9840];
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
  v96 = [planeCopy keysForDisplayRowAtIndex:3];
  v16 = [planeCopy keysForDisplayRowAtIndex:4];
  v95 = [planeCopy keysForDisplayRowAtIndex:5];
  [self _derivedLeadingControlKeyWidthForRow:3 keysForRow:? context:?];
  v18 = v17 + v17;
  [self _derivedTrailingControlKeyWidthForRow:3 orientation:orientation];
  v20 = v19;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v21 = v16;
  v22 = [v21 countByEnumeratingWithState:&v106 objects:v112 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v107;
LABEL_3:
    v25 = 0;
    while (1)
    {
      if (*v107 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v106 + 1) + 8 * v25);
      if (![v26 displayType])
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = [v21 countByEnumeratingWithState:&v106 objects:v112 count:16];
        if (v23)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v28 = v26;

    if (!v28)
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
      v92 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v92, OS_LOG_TYPE_FAULT, "Key plane should have at least one letter key.", buf, 2u);
      }
    }

    else
    {
      v27 = *(__UILogGetCategoryCachedImpl("Assert", &transformKeysForVietnameseKeyPlane_withTransformationContext____s_category) + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Key plane should have at least one letter key.", buf, 2u);
      }
    }

    v28 = 0;
  }

  [v28 frame];
  v30 = v29;
  screenTraits3 = [contextCopy screenTraits];
  [screenTraits3 keyboardWidth];
  v33 = (v32 - v18 - v20) / 9.0;

  v34 = v33 / v30;
  [planeCopy scaleKeys:v14 withFactor:v34 scale:{1.0, v11}];
  [planeCopy scaleKeys:v15 withFactor:v34 scale:{1.0, v11}];
  [planeCopy scaleKeys:v96 withFactor:v34 scale:{1.0, v11}];
  [planeCopy scaleKeys:v21 withFactor:v34 scale:{1.0, v11}];

  [self _derivedFiveRowControlKeyWidthForRow:0 keysForRow:v14 context:contextCopy];
  v93 = v14;
  [planeCopy repositionKeys:v14 withOffset:? scale:?];
  v35 = [planeCopy firstCachedKeyWithName:@"Delete-Key"];
  screenTraits4 = [contextCopy screenTraits];
  [screenTraits4 keyboardWidth];
  v38 = v37;
  [v35 frame];
  v39 = v38 - CGRectGetMinX(v114);

  [planeCopy shiftRowAndResizeLeadingControlKey:v35 toSize:v39 scale:{0.0, v11}];
  [self _derivedFiveRowControlKeyWidthForRow:1 keysForRow:v15 context:contextCopy];
  v41 = v40;
  firstObject = [v15 firstObject];
  [firstObject frame];
  CGRectGetMinX(v115);

  v43 = [self _supplementaryControlKeyWithName:@"Tab-Key" context:contextCopy];
  [planeCopy insertKey:v43 withFrame:v15 andShiftKeys:0.0 scale:{-1.0, v41, -1.0, v11}];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v44 = v15;
  v45 = [v44 countByEnumeratingWithState:&v101 objects:v111 count:16];
  v46 = v44;
  if (v45)
  {
    v47 = v45;
    v48 = *v102;
LABEL_17:
    v49 = 0;
    while (1)
    {
      if (*v102 != v48)
      {
        objc_enumerationMutation(v44);
      }

      v50 = *(*(&v101 + 1) + 8 * v49);
      if ([v50 interactionType] == 13)
      {
        break;
      }

      if (v47 == ++v49)
      {
        v47 = [v44 countByEnumeratingWithState:&v101 objects:v111 count:16];
        if (v47)
        {
          goto LABEL_17;
        }

        v46 = v44;
        goto LABEL_26;
      }
    }

    v46 = v50;

    if (!v46)
    {
      goto LABEL_27;
    }

    screenTraits5 = [contextCopy screenTraits];
    [screenTraits5 keyboardWidth];
    v53 = v52;
    [v46 frame];
    v54 = v53 - CGRectGetMinX(v116);

    [planeCopy shiftRowAndResizeLeadingControlKey:v46 toSize:v54 scale:{0.0, v11}];
  }

LABEL_26:

LABEL_27:
  [self _derivedFiveRowControlKeyWidthForRow:2 keysForRow:v96 context:contextCopy];
  v56 = v55;
  name = [planeCopy name];
  v58 = [name containsString:@"Alternate"];

  selfCopy = self;
  if (v58)
  {
    v59 = @"Undo-Key";
    v60 = [self _supplementaryControlKeyWithName:@"Undo-Key" context:contextCopy];
    v61 = [self _supplementaryControlKeyWithName:@"Redo-Key" context:contextCopy];
    name2 = [planeCopy name];
    v63 = [name2 containsString:@"First-Alternate"];

    v64 = v60;
    if ((v63 & 1) == 0)
    {
      name3 = [planeCopy name];
      v66 = [name3 containsString:@"Second-Alternate"];

      if (!v66)
      {
        v67 = 0;
LABEL_40:

        goto LABEL_41;
      }

      v59 = @"Redo-Key";
      v64 = v61;
    }

    [v60 setVisible:v63];
    [v61 setVisible:v63 ^ 1];
    v67 = v64;
    v68 = [planeCopy firstCachedKeyWithName:v59];
    if (v68)
    {
      v69 = v68;
      if ([v95 containsObject:v68])
      {
        [planeCopy removeKey:v69 andShiftKeys:v95 scale:v11];
      }

      else
      {
        [planeCopy removeKey:v69];
      }
    }

    goto LABEL_40;
  }

  v70 = [self _supplementaryControlKeyWithName:@"Caps-Lock-Key" context:contextCopy];
  if (![contextCopy usesScriptSwitch])
  {
    goto LABEL_42;
  }

  v67 = [self _supplementaryScriptSwitchKeyWithContext:contextCopy];

  v60 = [planeCopy firstCachedKeyWithName:@"Caps-Lock-Key"];
  if (v60)
  {
    [planeCopy removeKey:v60];
  }

LABEL_41:

  v70 = v67;
LABEL_42:
  [planeCopy insertKey:v70 withFrame:v96 andShiftKeys:0.0 scale:{-1.0, v56, -1.0, v11}];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v71 = v96;
  v72 = [v71 countByEnumeratingWithState:&v97 objects:v110 count:16];
  v73 = v71;
  if (v72)
  {
    v74 = v72;
    v75 = *v98;
LABEL_44:
    v76 = 0;
    while (1)
    {
      if (*v98 != v75)
      {
        objc_enumerationMutation(v71);
      }

      v77 = *(*(&v97 + 1) + 8 * v76);
      if ([v77 interactionType] == 13)
      {
        break;
      }

      if (v74 == ++v76)
      {
        v74 = [v71 countByEnumeratingWithState:&v97 objects:v110 count:16];
        if (v74)
        {
          goto LABEL_44;
        }

        v73 = v71;
        goto LABEL_53;
      }
    }

    v73 = v77;

    if (!v73)
    {
      goto LABEL_54;
    }

    screenTraits6 = [contextCopy screenTraits];
    [screenTraits6 keyboardWidth];
    v80 = v79;
    [v73 frame];
    v81 = v80 - CGRectGetMinX(v117);

    [planeCopy shiftRowAndResizeLeadingControlKey:v73 toSize:v81 scale:{0.0, v11}];
  }

LABEL_53:

LABEL_54:
  v82 = [planeCopy cachedKeysByKeyName:@"Shift-Key"];
  v83 = [v82 objectAtIndexedSubscript:0];
  [v83 paddedFrame];
  v85 = v84;
  v86 = [v82 objectAtIndexedSubscript:1];
  [v86 paddedFrame];
  v88 = v85 < v87;
  v89 = v85 >= v87;

  v90 = [v82 objectAtIndexedSubscript:v89];
  v91 = [v82 objectAtIndexedSubscript:v88];
  [planeCopy shiftRowAndResizeLeadingControlKey:v90 toSize:v18 scale:{0.0, v11}];
  [planeCopy shiftRowAndResizeLeadingControlKey:v91 toSize:v20 scale:{0.0, v11}];

  [selfCopy transformLastRowKeysForKeyplane:planeCopy row:5 withTransformationContext:contextCopy];
}

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
  v28 = [UIKBShapeOperator operatorWithScale:v11];
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

@end