@interface UIKeyboardSupplementaryControlKeyTransformation
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

+ (double)_totalKeyPaddingForOrientation:(int64_t)a3
{
  result = 10.0;
  if ((a3 - 3) < 2)
  {
    return 14.0;
  }

  return result;
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

    v17 = dbl_18A6804D0[v16 < 2];
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

    v17 = dbl_18A6804C0[v18];
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    v15 = 0;
    v17 = dbl_18A6804B0[v16 < 2];
  }

LABEL_15:
  [a1 _scaledDerivedLeadingControlKeyWidth:v8 forKeysForRow:v10 keyCount:v15 numberOfKeysInSpecification:v9 context:v17];
  v20 = v19;

  return v20;
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
    v15 = dbl_18A6804E0[v14 < 2];
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
    a3 = 10.0 / (dbl_18A6804F0[(v15 - 3) < 2] * (a5 - a6) + 10.0) * a3;
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

+ (double)_derivedTrailingControlKeyWidthForRow:(unint64_t)a3 orientation:(int64_t)a4
{
  [a1 _totalKeyPaddingForOrientation:a4];
  v7 = dbl_18A680500[(a4 - 3) < 2];
  if (a3 != 3)
  {
    v7 = -1.0;
  }

  return v7 + v6;
}

+ (id)_supplementaryControlKeySetForOrientation:(int64_t)a3 context:(id)a4
{
  v5 = a4;
  if (!__supplementaryControlKeysetCache)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = __supplementaryControlKeysetCache;
    __supplementaryControlKeysetCache = v6;
  }

  v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v9 = [v8 preferencesActions];
  v10 = UIKeyboardGetCurrentInputMode();
  v11 = [v9 inputModeSupportsCrescendo:v10];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = UIKeyboardGetCurrentInputMode();
    v14 = KBStarLayoutString(v13);

    v15 = MEMORY[0x1E696AEC0];
    v16 = [v5 currentKeyplaneName];
    v17 = [v15 stringWithFormat:@"%@-%@-%ld", v14, v16, a3];

    v18 = [__supplementaryControlKeysetCache objectForKey:v17];
    if (v18)
    {
      goto LABEL_19;
    }

    v19 = @"Portrait";
    v20 = [v5 screenTraits];
    v21 = [v20 orientation] - 3;

    if (v21 <= 1)
    {
      v22 = @"Landscape";

      v19 = v22;
    }

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wildcat-%@Fudge-%@", v19, v14];
    v24 = [v5 additionalKeyboardLoader];
    v25 = [v5 screenTraits];
    v26 = [v24 keyboardWithName:v23 screenTraits:v25];

    v27 = [v5 currentKeyplaneName];
    [(__CFString *)v27 rangeOfString:@"alternate" options:1];
    if (v28)
    {

      v27 = @"Alternate";
    }

    v29 = [v26 subtreeWithName:v27];
    v35 = v26;
    if (v29 || (v27, v27 = @"Small-Letters", [v26 subtreeWithName:@"Small-Letters"], (v29 = objc_claimAutoreleasedReturnValue()) != 0) || (v27 = @"Letters", objc_msgSend(v26, "subtreeWithName:", @"Letters"), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v29;
      v31 = [v29 subtreeWithName:@"Wildcat-Fudge-Control-Keys-Keylayout"];
      v32 = v31;
      v33 = v31 != 0;
      if (v31)
      {
        v18 = [v31 keySet];
        if (v18)
        {
          [__supplementaryControlKeysetCache setObject:v18 forKey:v17];
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v33 = 0;
    }

    if (v33)
    {
LABEL_19:
      v18 = v18;
      v12 = v18;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
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

+ (id)cachedControlKeySetsForTransformationContext:(id)a3
{
  v4 = a3;
  v5 = [v4 screenTraits];
  v6 = [a1 _supplementaryControlKeySetForOrientation:objc_msgSend(v5 context:{"orientation"), v4}];

  v7 = [v6 subtrees];

  return v7;
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

+ (void)adjustHorizontalPaddingForKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
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
  Width = CGRectGetWidth(v71);
  v22 = 0.0;
  v59 = v9 - 5;
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
    v30 = v22 <= 0.0 || v59 < 0xFFFFFFFFFFFFFFFELL;
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

      [v6 scaleKeys:v36 withFactor:v37 scale:{v27, v13}];

      ++v34;
    }

    while (v34 < [v6 numberOfRows]);
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
  v51 = [v6 keys];
  v52 = [v51 countByEnumeratingWithState:&v60 objects:v68 count:16];
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
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v60 + 1) + 8 * j);
        [v56 frame];
        [v56 setPaddedFrame:v50 + v57];
      }

      v53 = [v51 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v53);
  }
}

+ (CGSize)layoutScaleFactorForContext:(id)a3
{
  v3 = a3;
  v4 = [v3 screenTraits];
  v5 = ([v4 orientation] - 3) < 2;

  v6 = dbl_18A680510[v5];
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

+ (void)transformKeysForFourRowKeyplane:(id)a3 withTransformationContext:(id)a4
{
  v125 = *MEMORY[0x1E69E9840];
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

  [v6 insertKey:v19 withFrame:v16 andShiftKeys:v15 scale:{-1.0, v18, -1.0, v11}];
  v20 = [v6 firstCachedKeyWithName:@"Delete-Key"];
  v21 = [v7 screenTraits];
  [v21 keyboardWidth];
  v23 = v22;
  [v19 frame];
  v25 = v23 - v24;
  [v20 frame];
  v26 = v25 - CGRectGetMinX(v126);

  [v6 shiftRowAndResizeLeadingControlKey:v20 toSize:v26 scale:{0.0, v11}];
  v27 = [v6 keysForDisplayRowAtIndex:2];
  [a1 _derivedLeadingControlKeyWidthForRow:1 keysForRow:v27 context:v7];
  v29 = v28;
  v30 = [a1 _supplementaryControlKeyWithName:@"Caps-Lock-Key" context:v7];
  LODWORD(v20) = [v7 usesScriptSwitch];
  v31 = [v6 scriptSwitchKey];
  v32 = v31;
  if (!v20)
  {

    if (!v32)
    {
      goto LABEL_11;
    }

    v33 = [v6 scriptSwitchKey];
    [v6 removeKey:v33];
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
    v34 = [a1 _supplementaryScriptSwitchKeyWithContext:v7];

    v33 = [v6 firstCachedKeyWithName:@"Caps-Lock-Key"];
    if (v33)
    {
      [v6 removeKey:v33];
    }

    goto LABEL_10;
  }

LABEL_12:
  v35 = [v6 scriptSwitchKey];
  v36 = [a1 _cachedUndoOrRedoKeyForKeyplane:v6];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v30 = v38;

  v39 = [v6 keysForDisplayRowAtIndex:4];
  v40 = v39;
  if (v30 == v35)
  {
    v117 = v27;
    v41 = [v6 cachedKeysByKeyName:@"More-Key"];
    if ([v40 containsObject:v30])
    {
      v42 = [v41 firstObject];
      v43 = [v42 copy];

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
        v114 = a1;
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
        a1 = v114;
      }

      [v30 setMergeAsMoreKey:1];
      [v6 removeKey:v30];
      v44 = 0;
    }

    [v6 replaceKey:v44 withKey:v43];
    [v30 setMergeAsMoreKey:0];

    v27 = v117;
  }

  else if ([v39 containsObject:v30])
  {
    [v6 removeKey:v30 andShiftKeys:v40 scale:v11];
  }

  if (!v30)
  {
    [a1 _derivedLeadingControlKeyWidthForRow:0 keysForRow:0 context:v7];
    v29 = v49;
  }

LABEL_36:
  [v6 insertKey:v30 withFrame:v27 andShiftKeys:v15 scale:{-1.0, v29, -1.0, v11}];
  v50 = [v6 firstCachedKeyWithName:@"Return-Key"];
  v51 = [v7 screenTraits];
  [v51 keyboardWidth];
  v53 = v52;
  [v30 frame];
  v55 = v53 - v54;
  [v50 frame];
  v56 = v55 - CGRectGetMinX(v127);

  [v6 shiftRowAndResizeLeadingControlKey:v50 toSize:v56 scale:{0.0, v11}];
  v57 = [v6 cachedKeysByKeyName:@"Shift-Key"];
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
      v64 = [v57 objectAtIndexedSubscript:1];
      v65 = v57;
      v66 = 0;
    }

    else
    {
      v64 = [v57 objectAtIndexedSubscript:0];
      v65 = v57;
      v66 = 1;
    }

    v69 = [v65 objectAtIndexedSubscript:v66];
  }

  else
  {
    v64 = [v57 firstObject];
    v67 = [v6 keysForDisplayRowAtIndex:3];
    v68 = [v6 firstCachedKeyWithName:@"Return-Key"];
    if ([v67 containsObject:v68])
    {
      v69 = v68;
    }

    else
    {
      v70 = [v67 lastObject];
      v71 = [v70 layoutTag];
      if (v71)
      {
        v72 = v71;
        v115 = a1;
        v73 = [v67 lastObject];
        v74 = [v73 name];
        v118 = [v74 hasSuffix:@"width-Toggle-Key"];

        if (v118)
        {
          v69 = [v67 lastObject];
        }

        else
        {
          v69 = 0;
        }

        a1 = v115;
      }

      else
      {

        v69 = 0;
      }
    }
  }

  v75 = [v6 keysForDisplayRowAtIndex:3];
  v76 = [v75 firstObject];
  if ([v76 interactionType] == 2)
  {
    [v76 frame];
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
  v79 = [a1 _supplementaryShiftKeysWithContext:v7];
  if ([v79 count] != 2 || v64 && (objc_msgSend(v75, "containsObject:", v64) & 1) != 0)
  {
    v80 = v64;
  }

  else
  {
    v80 = [v79 firstObject];

    [a1 _derivedLeadingControlKeyWidthForRow:2 keysForRow:v75 context:v7];
    v82 = v81;
    [v80 frame];
    [v6 insertKey:v80 withFrame:v75 andShiftKeys:0.0 scale:{-1.0, v82}];
    if (!v69 || ([v75 containsObject:v69] & 1) == 0)
    {
      v83 = [v79 lastObject];

      [v75 lastObject];
      v84 = v116 = a1;
      [v84 frame];
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v92 = v91;

      v93 = [v7 screenTraits];
      [v93 keyboardWidth];
      v95 = v94;
      v129.origin.x = v86;
      v129.origin.y = v88;
      v129.size.width = v90;
      v129.size.height = v92;
      v96 = v95 - CGRectGetMaxX(v129);

      v97 = [v75 lastObject];
      v98 = [v97 shape];
      [v83 setShape:v98];

      a1 = v116;
      v130.origin.x = v86;
      v130.origin.y = v88;
      v130.size.width = v90;
      v130.size.height = v92;
      [v6 insertKey:v83 withFrame:0 andShiftKeys:CGRectGetMaxX(v130) scale:{-1.0, v96, -1.0, v11}];
      v69 = v83;
    }
  }

  v99 = v80;
  [v99 frame];
  [v99 setFrame:{v15 + v100, v102 + 0.0, v101 - (v15 + 0.0)}];
  [v99 paddedFrame];
  [v99 setPaddedFrame:{v15 + v103, v105 + 0.0, v104 - (v15 + 0.0)}];

  [a1 _derivedLeadingControlKeyWidthForRow:v119 keysForRow:v75 context:v7];
  [v6 shiftRowAndResizeLeadingControlKey:v99 toSize:? scale:?];
  [v7 screenTraits];
  v107 = v106 = a1;
  [v107 keyboardWidth];
  v109 = v108;
  [v99 frame];
  v111 = v109 - v110;
  [v69 frame];
  v112 = v111 - CGRectGetMinX(v131);

  [v6 shiftRowAndResizeLeadingControlKey:v69 toSize:v112 scale:{0.0, v11}];
  [v106 transformLastRowKeysForKeyplane:v6 row:4 withTransformationContext:v7];
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
  [v28 insertKey:0 withFrame:v16 andShiftKeys:-1.0 scale:{-1.0, v17, -1.0, v10}];
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
    v17 = [v16 indexOfObjectPassingTest:&__block_literal_global_401];
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

+ (void)transformKeysForVietnameseKeyPlane:(id)a3 withTransformationContext:(id)a4
{
  v113 = *MEMORY[0x1E69E9840];
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
  v96 = [v6 keysForDisplayRowAtIndex:3];
  v16 = [v6 keysForDisplayRowAtIndex:4];
  v95 = [v6 keysForDisplayRowAtIndex:5];
  [a1 _derivedLeadingControlKeyWidthForRow:3 keysForRow:? context:?];
  v18 = v17 + v17;
  [a1 _derivedTrailingControlKeyWidthForRow:3 orientation:v13];
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
  v31 = [v7 screenTraits];
  [v31 keyboardWidth];
  v33 = (v32 - v18 - v20) / 9.0;

  v34 = v33 / v30;
  [v6 scaleKeys:v14 withFactor:v34 scale:{1.0, v11}];
  [v6 scaleKeys:v15 withFactor:v34 scale:{1.0, v11}];
  [v6 scaleKeys:v96 withFactor:v34 scale:{1.0, v11}];
  [v6 scaleKeys:v21 withFactor:v34 scale:{1.0, v11}];

  [a1 _derivedFiveRowControlKeyWidthForRow:0 keysForRow:v14 context:v7];
  v93 = v14;
  [v6 repositionKeys:v14 withOffset:? scale:?];
  v35 = [v6 firstCachedKeyWithName:@"Delete-Key"];
  v36 = [v7 screenTraits];
  [v36 keyboardWidth];
  v38 = v37;
  [v35 frame];
  v39 = v38 - CGRectGetMinX(v114);

  [v6 shiftRowAndResizeLeadingControlKey:v35 toSize:v39 scale:{0.0, v11}];
  [a1 _derivedFiveRowControlKeyWidthForRow:1 keysForRow:v15 context:v7];
  v41 = v40;
  v42 = [v15 firstObject];
  [v42 frame];
  CGRectGetMinX(v115);

  v43 = [a1 _supplementaryControlKeyWithName:@"Tab-Key" context:v7];
  [v6 insertKey:v43 withFrame:v15 andShiftKeys:0.0 scale:{-1.0, v41, -1.0, v11}];
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

    v51 = [v7 screenTraits];
    [v51 keyboardWidth];
    v53 = v52;
    [v46 frame];
    v54 = v53 - CGRectGetMinX(v116);

    [v6 shiftRowAndResizeLeadingControlKey:v46 toSize:v54 scale:{0.0, v11}];
  }

LABEL_26:

LABEL_27:
  [a1 _derivedFiveRowControlKeyWidthForRow:2 keysForRow:v96 context:v7];
  v56 = v55;
  v57 = [v6 name];
  v58 = [v57 containsString:@"Alternate"];

  v94 = a1;
  if (v58)
  {
    v59 = @"Undo-Key";
    v60 = [a1 _supplementaryControlKeyWithName:@"Undo-Key" context:v7];
    v61 = [a1 _supplementaryControlKeyWithName:@"Redo-Key" context:v7];
    v62 = [v6 name];
    v63 = [v62 containsString:@"First-Alternate"];

    v64 = v60;
    if ((v63 & 1) == 0)
    {
      v65 = [v6 name];
      v66 = [v65 containsString:@"Second-Alternate"];

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
    v68 = [v6 firstCachedKeyWithName:v59];
    if (v68)
    {
      v69 = v68;
      if ([v95 containsObject:v68])
      {
        [v6 removeKey:v69 andShiftKeys:v95 scale:v11];
      }

      else
      {
        [v6 removeKey:v69];
      }
    }

    goto LABEL_40;
  }

  v70 = [a1 _supplementaryControlKeyWithName:@"Caps-Lock-Key" context:v7];
  if (![v7 usesScriptSwitch])
  {
    goto LABEL_42;
  }

  v67 = [a1 _supplementaryScriptSwitchKeyWithContext:v7];

  v60 = [v6 firstCachedKeyWithName:@"Caps-Lock-Key"];
  if (v60)
  {
    [v6 removeKey:v60];
  }

LABEL_41:

  v70 = v67;
LABEL_42:
  [v6 insertKey:v70 withFrame:v96 andShiftKeys:0.0 scale:{-1.0, v56, -1.0, v11}];
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

    v78 = [v7 screenTraits];
    [v78 keyboardWidth];
    v80 = v79;
    [v73 frame];
    v81 = v80 - CGRectGetMinX(v117);

    [v6 shiftRowAndResizeLeadingControlKey:v73 toSize:v81 scale:{0.0, v11}];
  }

LABEL_53:

LABEL_54:
  v82 = [v6 cachedKeysByKeyName:@"Shift-Key"];
  v83 = [v82 objectAtIndexedSubscript:0];
  [v83 paddedFrame];
  v85 = v84;
  v86 = [v82 objectAtIndexedSubscript:1];
  [v86 paddedFrame];
  v88 = v85 < v87;
  v89 = v85 >= v87;

  v90 = [v82 objectAtIndexedSubscript:v89];
  v91 = [v82 objectAtIndexedSubscript:v88];
  [v6 shiftRowAndResizeLeadingControlKey:v90 toSize:v18 scale:{0.0, v11}];
  [v6 shiftRowAndResizeLeadingControlKey:v91 toSize:v20 scale:{0.0, v11}];

  [v94 transformLastRowKeysForKeyplane:v6 row:5 withTransformationContext:v7];
}

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
  v28 = [UIKBShapeOperator operatorWithScale:v11];
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

@end