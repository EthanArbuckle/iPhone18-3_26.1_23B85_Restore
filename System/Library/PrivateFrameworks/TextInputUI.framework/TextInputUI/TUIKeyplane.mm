@interface TUIKeyplane
+ (CGSize)sizeBasisForLayoutClass:(int64_t)a3;
+ (CGSize)sizeFromScreenTraits:(id)a3 layout:(id)a4 layoutClass:(int64_t)a5;
+ (double)baseHeightForLayout:(id)a3 layoutClass:(int64_t)a4 landscape:(BOOL)a5;
+ (double)customHeightForLayout:(id)a3;
+ (id)keyplaneFromKBTree:(id)a3 withType:(int64_t)a4;
+ (int64_t)layoutClassFromKeyplaneName:(id)a3;
+ (int64_t)layoutClassFromScreenDimensions:(CGSize)a3;
- (BOOL)hasSimilarLayoutToKeyplane:(id)a3;
- (BOOL)isGridLayout;
- (BOOL)keyplaneKeyIsTenKeySwitchKey:(id)a3;
- (BOOL)needsResetFromKeyplane:(id)a3;
- (BOOL)shouldDuplicateKey:(id)a3 forRow:(id)a4;
- (BOOL)shouldDuplicateTenKeySwitchKey:(id)a3 forTreeRow:(id)a4 forRowNumber:(unint64_t)a5;
- (BOOL)variantTypeIncludesSpaceBar:(int64_t)a3;
- (CGSize)leftSplitSize;
- (CGSize)rightSplitSize;
- (NSArray)orderedKeysByRow;
- (NSString)name;
- (NSString)prefix;
- (TUIKeyplane)init;
- (double)finalHeightForSplitKeyboard;
- (double)finalSplitSizeForRightSide:(BOOL)a3;
- (double)heightMultiplierForRowNumber:(unint64_t)a3;
- (double)multiplierForKey:(id)a3 withProperties:(id)a4;
- (id)candidateBarKeyFromKeyplane:(id)a3;
- (id)createPreparedKeyFromTree:(id)a3 withMultiplier:(double)a4 type:(int64_t)a5 shape:(int64_t)a6;
- (id)defaultKeysOrderedByRowForKeyplane:(id)a3;
- (id)defaultRowSet;
- (id)description;
- (id)duplicateTreeForSplitMode:(id)a3;
- (id)findRowSpanningDuplicatesForKeyplane:(id)a3;
- (id)keyRowFromTreeRow:(id)a3 rowNumber:(unint64_t)a4 type:(int64_t)a5;
- (id)keysForName:(id)a3;
- (id)rowSetForType:(int64_t)a3;
- (id)rowsForKeyboardType:(int64_t)a3;
- (id)sortedKeysForKeyplane:(id)a3;
- (id)stringFromKeyboardType:(int64_t)a3;
- (id)stringFromLayoutClass:(int64_t)a3;
- (id)stringFromLayoutStyle:(int64_t)a3;
- (id)stringFromLayoutType:(int64_t)a3;
- (int64_t)keyLayoutStyle;
- (int64_t)keyStyleForLayoutClass:(int64_t)a3;
- (unint64_t)numberOfKeys;
- (unint64_t)numberOfRows;
- (unint64_t)variantRowLimitForLayoutWithKey:(id)a3 variantSelectorType:(int64_t)a4;
- (void)duplicateTenKeySwitchKey:(id)a3;
- (void)unduplicateTenKeySwitchKey:(id)a3;
- (void)updateKeyboardType:(int64_t)a3;
- (void)updateVariantOrderForKey:(id)a3 withVariantSelectorType:(int64_t)a4;
@end

@implementation TUIKeyplane

- (NSArray)orderedKeysByRow
{
  if (-[TUIKeyplane currentVariantType](self, "currentVariantType") && (-[TUIKeyplane variantKeysByRow](self, "variantKeysByRow"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v5 = [(TUIKeyplane *)self variantKeysByRow];
  }

  else
  {
    v5 = [(TUIKeyplane *)self defaultKeysByRow];
  }

  return v5;
}

- (unint64_t)numberOfRows
{
  v2 = [(TUIKeyplane *)self orderedKeysByRow];
  v3 = [v2 count];

  return v3;
}

- (TUIKeyplane)init
{
  v10.receiver = self;
  v10.super_class = TUIKeyplane;
  v2 = [(TUIKeyplane *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    cache = v2->_cache;
    v2->_cache = v3;

    v2->_indexOfLastRow = -1;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    doubleHeightKeys = v2->_doubleHeightKeys;
    v2->_doubleHeightKeys = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    rowSizes = v2->_rowSizes;
    v2->_rowSizes = v7;
  }

  return v2;
}

- (BOOL)isGridLayout
{
  v3 = [(TUIKeyplane *)self fullTree];
  v4 = ([v3 gridLayout] & 1) != 0 || -[TUIKeyplane layoutType](self, "layoutType") == 2;

  return v4;
}

- (id)defaultRowSet
{
  v3 = [(TUIKeyplane *)self keylayout];
  v4 = [v3 subtreeWithType:15];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(TUIKeyplane *)self keylayout];
  }

  v6 = v5;

  return v6;
}

- (CGSize)leftSplitSize
{
  width = self->_leftSplitSize.width;
  height = self->_leftSplitSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)finalHeightForSplitKeyboard
{
  [(TUIKeyplane *)self leftSplitSize];
  result = 206.0;
  if (v2 > 0.0)
  {
    return v2;
  }

  return result;
}

- (int64_t)keyLayoutStyle
{
  v3 = [(TUIKeyplane *)self layoutClass];

  return [(TUIKeyplane *)self keyStyleForLayoutClass:v3];
}

- (CGSize)rightSplitSize
{
  width = self->_rightSplitSize.width;
  height = self->_rightSplitSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSString)name
{
  v2 = [(TUIKeyplane *)self fullTree];
  v3 = [v2 name];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUIKeyplane *)self fullTree];
  v6 = [v5 name];
  v7 = [(TUIKeyplane *)self stringFromLayoutClass:[(TUIKeyplane *)self layoutClass]];
  v8 = [(TUIKeyplane *)self stringFromLayoutType:[(TUIKeyplane *)self layoutType]];
  v9 = [(TUIKeyplane *)self stringFromLayoutStyle:[(TUIKeyplane *)self keyLayoutStyle]];
  v10 = [v3 stringWithFormat:@"<%@: %p> name = %@ size class = %@; layout type = %@; key style = %@; number of rows = %li", v4, self, v6, v7, v8, v9, -[TUIKeyplane numberOfRows](self, "numberOfRows")];;

  return v10;
}

- (unint64_t)variantRowLimitForLayoutWithKey:(id)a3 variantSelectorType:(int64_t)a4
{
  v6 = a3;
  if ([(TUIKeyplane *)self keyLayoutStyle]!= 1)
  {
    v7 = 5;
    goto LABEL_11;
  }

  if (a4 == 1)
  {
    if ([v6 variantType] == 4)
    {
      v7 = 10;
      goto LABEL_11;
    }

    v8 = [v6 variantType] == 7;
    v9 = 12;
    v10 = 10;
  }

  else
  {
    v8 = [v6 displayType] == 27;
    v9 = 15;
    v10 = 5;
  }

  if (v8)
  {
    v7 = v10;
  }

  else
  {
    v7 = v9;
  }

LABEL_11:

  return v7;
}

- (void)updateVariantOrderForKey:(id)a3 withVariantSelectorType:(int64_t)a4
{
  v88 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 backingTree];
  v8 = [v7 subtrees];

  if (v8)
  {
    v71 = a4;
    v72 = self;
    v9 = [v6 arrangedVariantsArray];

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x1E695DF70]);
      v11 = [v6 backingTree];
      v12 = [v11 subtrees];
      v13 = [v10 initWithArray:v12];
      [v6 setArrangedVariantsArray:v13];
    }

    v14 = [v6 arrangedVariantsArray];
    v15 = [v14 objectAtIndexedSubscript:0];
    [v6 setPrimaryVariant:v15];

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v16 = [v6 arrangedVariantsArray];
    v17 = [v16 countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v82;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v82 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v81 + 1) + 8 * i);
          v22 = [v21 displayString];
          v23 = [v6 adjustedPrimaryVariantDisplayStringForSpecialCases];
          if (v23)
          {
            v24 = v23;
            v25 = [v22 containsString:v23];

            if (v25)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v26 = [v6 backingTree];
            v27 = [v26 displayString];
            v28 = [v22 containsString:v27];

            if (v28)
            {
LABEL_16:
              [v6 setPrimaryVariant:v21];
              goto LABEL_17;
            }
          }

          v29 = [v6 flickableSet];
          [v29 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v81 objects:v87 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v30 = v72;
    if (-[TUIKeyplane keyLayoutStyle](v72, "keyLayoutStyle") == 1 && ([v6 backingTree], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "subtrees"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "count"), objc_msgSend(v6, "backingTree"), v34 = objc_claimAutoreleasedReturnValue(), v35 = -[TUIKeyplane variantRowLimitForLayoutWithKey:variantSelectorType:](v72, "variantRowLimitForLayoutWithKey:variantSelectorType:", v34, v71), v34, v32, v31, v33 <= v35))
    {
      v37 = [v6 arrangedVariantsArray];
      v38 = [v6 primaryVariant];
      [v37 removeObject:v38];

      v39 = [v6 arrangedVariantsArray];
      v40 = [v6 primaryVariant];
      [v39 insertObject:v40 atIndex:0];

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v41 = [(TUIKeyplane *)v72 orderedKeysByRow];
      v42 = [v41 countByEnumeratingWithState:&v77 objects:v86 count:16];
      v43 = 0;
      if (v42)
      {
        v44 = *v78;
        v69 = v41;
        v65 = *v78;
        do
        {
          v45 = 0;
          v46 = v43;
          v66 = v42;
          v67 = v43 + v42;
          do
          {
            v70 = v46;
            if (*v78 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v68 = v45;
            v47 = *(*(&v77 + 1) + 8 * v45);
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v48 = v47;
            v49 = [v48 countByEnumeratingWithState:&v73 objects:v85 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = 0;
              v52 = *v74;
              while (2)
              {
                v53 = 0;
                v54 = v51;
                v51 += v50;
                do
                {
                  if (*v74 != v52)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v55 = *(*(&v73 + 1) + 8 * v53);
                  [v55 multiplier];
                  if (v56 > 0.0)
                  {
                    v57 = [v55 backingTree];
                    v58 = [v6 backingTree];
                    v59 = [v57 isEqual:v58];

                    if (v59)
                    {

                      v41 = v69;
                      v43 = v70;
                      v30 = v72;
                      goto LABEL_39;
                    }
                  }

                  ++v54;
                  ++v53;
                }

                while (v50 != v53);
                v50 = [v48 countByEnumeratingWithState:&v73 objects:v85 count:16];
                if (v50)
                {
                  continue;
                }

                break;
              }
            }

            v41 = v69;
            v46 = v70 + 1;
            v43 = v67;
            v45 = v68 + 1;
            v44 = v65;
            v30 = v72;
            v54 = 1;
          }

          while (v68 + 1 != v66);
          v42 = [v69 countByEnumeratingWithState:&v77 objects:v86 count:16];
        }

        while (v42);
      }

      else
      {
        v54 = 1;
      }

LABEL_39:

      v60 = [(TUIKeyplane *)v30 rowSizes];
      v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
      v62 = [v60 objectForKey:v61];
      [v62 floatValue];
      v64 = v63;

      [v6 updateVariantOrderForSmallLayoutsWithKeyplaneWidth:v54 keyStartingPosition:v71 variantSelectorType:v64];
    }

    else
    {
      v36 = [v6 backingTree];
      [v6 updateVariantOrderForMultilineSelectorWithRowLimit:{-[TUIKeyplane variantRowLimitForLayoutWithKey:variantSelectorType:](v72, "variantRowLimitForLayoutWithKey:variantSelectorType:", v36, v71)}];
    }
  }
}

- (id)stringFromLayoutClass:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E72D7668 + a3);
  }
}

- (id)stringFromLayoutStyle:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E72D7648 + a3);
  }
}

- (id)stringFromLayoutType:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E72D7628 + a3);
  }
}

- (id)stringFromKeyboardType:(int64_t)a3
{
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      switch(a3)
      {
        case 9:
          return @"Twitter";
        case 10:
          return @"WebSearch";
        case 126:
          return @"Writeboard";
      }

      goto LABEL_26;
    }

    if (a3 == 6)
    {
      return @"NamePhonePad";
    }

    else if (a3 == 7)
    {
      return @"EmailAddress";
    }

    else
    {
      return @"DecimalPad";
    }
  }

  else
  {
    if (a3 <= 2)
    {
      switch(a3)
      {
        case 0:
          return @"Default";
        case 1:
          return @"ASCII";
        case 2:
          return @"NumbersAndPunctuation";
      }

LABEL_26:
      NSLog(&cfstr_KeyboardTypeLi.isa, a2, a3);
      return @"Default";
    }

    if (a3 == 3)
    {
      return @"URL";
    }

    else if (a3 == 4)
    {
      return @"NumberPad";
    }

    else
    {
      return @"PhonePad";
    }
  }
}

- (id)sortedKeysForKeyplane:(id)a3
{
  v81 = self;
  v102 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v83 = [v3 visualStyle] - 1;
  if (([v3 isKanaPlane] & 1) != 0 || (objc_msgSend(v3, "name"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsString:", @"n10"), v5, v6) && v83 < 5)
  {
    v87 = 1;
    v7 = 2;
  }

  else
  {
    v22 = [v3 name];
    v23 = [v22 containsString:@"Fudge"];

    v87 = 0;
    if (!v23)
    {
      goto LABEL_6;
    }

    v7 = 1;
  }

  [(TUIKeyplane *)v81 setLayoutType:v7, v81];
LABEL_6:
  if (v83 >= 5)
  {
    v8 = 1.5;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = [v3 keys];
  v10 = [v9 firstObject];
  [v10 frame];
  v12 = v11;

  if (v12 < 15.0)
  {
    v13 = [v3 keys];
    v14 = [v13 count];

    if (v14 >= 2)
    {
      v15 = 1;
      while (1)
      {
        v16 = [v3 keys];
        v17 = [v16 objectAtIndex:v15];
        [v17 frame];
        v19 = v18;

        if (v19 > 15.0)
        {
          break;
        }

        ++v15;
        v20 = [v3 keys];
        v21 = [v20 count];

        if (v15 >= v21)
        {
          goto LABEL_18;
        }
      }

      v12 = v19;
    }
  }

LABEL_18:
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v24 = [v3 keysOrderedByPosition];
  v25 = [v24 countByEnumeratingWithState:&v96 objects:v101 count:16];
  v85 = v4;
  if (!v25)
  {
    v58 = 0;
    v27 = 0;
    goto LABEL_76;
  }

  v26 = v25;
  obj = v24;
  v86 = 0;
  v84 = 0;
  v27 = 0;
  v90 = 0;
  v28 = *v97;
  v82 = v3;
  v89 = v87;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v97 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v96 + 1) + 8 * i);
      v31 = [v30 shape];
      if ([v31 isEmpty])
      {
        goto LABEL_57;
      }

      v32 = [v30 shape];
      [v32 frame];
      IsEmpty = CGRectIsEmpty(v104);

      if (IsEmpty)
      {
        continue;
      }

      if ([v30 displayType] == 51 && objc_msgSend(v90, "interactionType") == 9)
      {
        v34 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v90, "displayRowHint")}];
        v35 = [v4 objectForKey:v34];

        [v35 removeObjectAtIndex:0];
        v36 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v90, "displayRowHint")}];
        [v4 setObject:v35 forKey:v36];

        v86 = 1;
      }

      else
      {
        v86 = 0;
      }

      if ((v89 & 1) != 0 && [v30 interactionType] == 13)
      {
        [v30 setDisplayRowHint:(v84 + 1)];
        v37 = [v30 copy];

        [v30 setDisplayRowHint:v84];
        v89 = 1;
        if ((v87 & 1) == 0)
        {
          v27 = v37;
          continue;
        }
      }

      else
      {
        v89 |= [v30 interactionType] == 13;
        v37 = v27;
      }

      [v30 setState:4];
      v84 = [v30 displayRowHint];
      v38 = [MEMORY[0x1E696AD98] numberWithInteger:v84];
      v39 = [v4 objectForKey:v38];

      if (v39)
      {
        v40 = [MEMORY[0x1E696AD98] numberWithInteger:v84];
        v41 = [v4 objectForKey:v40];
      }

      else
      {
        v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v42 = [v30 displayType];
      if (v42 != [v90 displayType])
      {
        goto LABEL_42;
      }

      v43 = [v30 representedString];
      v44 = [v90 representedString];
      if (([v43 isEqualToString:v44] & 1) == 0)
      {

LABEL_42:
        [v30 frame];
        if (vabdd_f64(v47, v12) <= 10.0)
        {
          v48 = 1;
        }

        else
        {
          v48 = v86;
        }

        v49 = 0.0;
        if ((v48 & 1) == 0)
        {
          v49 = round((v47 + v47) / v12) * 0.5;
        }

        v50 = [TUIKey layoutTypeForKey:v30];
        if (v87)
        {
          v51 = v8;
        }

        else
        {
          v51 = v49;
        }

        v52 = [TUIKey keyFromKBTree:v30 layoutType:v50 layoutShape:v87 multiplier:v51];
        [v52 setKeyplane:v82];
        if (v83 >= 5)
        {
          if ([(TUIKeyplane *)v81 layoutType]== 1)
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }
        }

        else
        {
          v53 = 1;
        }

        [v52 setStyle:v53];
        [v52 setInGridLayout:v87];
        [v41 addObject:v52];
        v54 = [MEMORY[0x1E696AD98] numberWithInteger:v84];
        [v4 setObject:v41 forKey:v54];

        goto LABEL_56;
      }

      v45 = [v30 displayType];

      v46 = v45 == 21;
      v4 = v85;
      if (v46)
      {
        goto LABEL_42;
      }

LABEL_56:

      v31 = v90;
      v90 = v30;
      v27 = v37;
LABEL_57:
    }

    v26 = [obj countByEnumeratingWithState:&v96 objects:v101 count:16];
  }

  while (v26);

  if (v27)
  {
    v55 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "displayRowHint")}];
    v56 = [v4 objectForKey:v55];
    v57 = v56;
    v58 = v90;
    if (v56)
    {
      v59 = v56;
    }

    else
    {
      v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v24 = v59;
    v3 = v82;

    [v27 frame];
    v61 = 0.0;
    if (!((vabdd_f64(v60, v12) <= 10.0) | v86 & 1))
    {
      v61 = round((v60 + v60) / v12) * 0.5;
    }

    if (v87)
    {
      v61 = v8;
    }

    v62 = [TUIKey keyFromKBTree:v27 layoutType:3 layoutShape:0 multiplier:v61];
    [v62 setKeyplane:v82];
    if (v83 >= 5)
    {
      if ([(TUIKeyplane *)v81 layoutType]== 1)
      {
        v63 = 3;
      }

      else
      {
        v63 = 2;
      }
    }

    else
    {
      v63 = 1;
    }

    [v62 setStyle:v63];
    [v62 setInGridLayout:v87];
    [v24 addObject:v62];
    v64 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "displayRowHint")}];
    [v4 setObject:v24 forKey:v64];

LABEL_76:
  }

  else
  {
    v3 = v82;
    v58 = v90;
  }

  if ([v4 count])
  {
    v91 = v58;
    v65 = v3;
    v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v67 = [v4 allKeys];
    v68 = [v67 sortedArrayUsingComparator:&__block_literal_global_4262];

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v69 = v68;
    v70 = [v69 countByEnumeratingWithState:&v92 objects:v100 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v93;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v93 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v74 = *(*(&v92 + 1) + 8 * j);
          v75 = [v4 objectForKey:v74];
          if ([v75 count] && (objc_msgSend(v69, "count") < 3 || objc_msgSend(v75, "count") >= 2))
          {
            v76 = [v74 integerValue];
            if (v76 <= [v66 count])
            {
              if ([v74 integerValue])
              {
                v77 = [v74 integerValue];
                v78 = v66;
                v79 = v75;
              }

              else
              {
                v78 = v66;
                v79 = v75;
                v77 = 0;
              }

              [v78 insertObject:v79 atIndex:v77];
            }

            else
            {
              [v66 addObject:v75];
            }

            v4 = v85;
          }
        }

        v71 = [v69 countByEnumeratingWithState:&v92 objects:v100 count:16];
      }

      while (v71);
    }

    v3 = v65;
    v58 = v91;
  }

  else
  {
    v66 = 0;
  }

  return v66;
}

- (double)heightMultiplierForRowNumber:(unint64_t)a3
{
  v4 = [(TUIKeyplane *)self defaultRowSet];
  v5 = [v4 subtrees];
  v6 = [v5 count];

  v7 = 1.0;
  if (v6 > a3)
  {
    v8 = [v4 subtrees];
    v9 = [v8 objectAtIndex:a3];

    if (v9)
    {
      v10 = [v9 numberForProperty:@"Height"];
      if (v10)
      {
        v11 = v10;
        [v10 doubleValue];
        v7 = v12;
      }
    }
  }

  return v7;
}

- (int64_t)keyStyleForLayoutClass:(int64_t)a3
{
  if (a3 > 4)
  {
    return -1;
  }

  else
  {
    return qword_1900C14F0[a3];
  }
}

- (BOOL)needsResetFromKeyplane:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyplane *)self name];
  v6 = [v4 name];
  if ([v5 isEqualToString:v6] && (v7 = -[TUIKeyplane currentVariantType](self, "currentVariantType"), v7 == objc_msgSend(v4, "currentVariantType")) && -[TUIKeyplane hasSimilarLayoutToKeyplane:](self, "hasSimilarLayoutToKeyplane:", v4) && (v8 = -[TUIKeyplane layoutClass](self, "layoutClass"), v8 == objc_msgSend(v4, "layoutClass")))
  {
    v9 = [(TUIKeyplane *)self fullTree];
    v10 = [v9 visualStyling];
    v11 = [v4 fullTree];
    v12 = (([v11 visualStyling] ^ v10) & 0x3F) != 0;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)hasSimilarLayoutToKeyplane:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyplane *)self currentVariantType];
  if (v5 == [v4 currentVariantType] && (-[TUIKeyplane orderedKeysByRow](self, "orderedKeysByRow"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), objc_msgSend(v4, "orderedKeysByRow"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v6, v7 == v9))
  {
    v10 = [(TUIKeyplane *)self orderedKeysByRow];
    v11 = [v10 count];

    if (v11)
    {
      v12 = 0;
      while (1)
      {
        v13 = [(TUIKeyplane *)self orderedKeysByRow];
        v14 = [v13 objectAtIndex:v12];

        v15 = [v4 orderedKeysByRow];
        v16 = [v15 objectAtIndex:v12];

        v11 = [v14 count];
        v17 = [v16 count];

        LOBYTE(v11) = v11 == v17;
        if (!v11)
        {
          break;
        }

        ++v12;
        v18 = [(TUIKeyplane *)self orderedKeysByRow];
        v19 = [v18 count];

        if (v12 >= v19)
        {
          LOBYTE(v11) = 1;
          break;
        }
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (double)finalSplitSizeForRightSide:(BOOL)a3
{
  if (a3)
  {
    [(TUIKeyplane *)self rightSplitSize];
    v4 = 280.0;
  }

  else
  {
    [(TUIKeyplane *)self leftSplitSize];
    v4 = 266.0;
  }

  if (result <= 0.0)
  {
    return v4;
  }

  return result;
}

- (id)candidateBarKeyFromKeyplane:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyplane *)self defaultRowSet];
  v6 = [v5 subtrees];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndex:0];
    v8 = [(TUIKeyplane *)self keyRowFromTreeRow:v7 rowNumber:0 type:0];

    v9 = [v8 valueForKeyPath:@"@sum.multiplier"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 firstCachedKeyWithName:@"Candidate-Selection"];
  if (!v10)
  {
    v11 = [v4 keys];
    if ([v11 count])
    {
      v12 = [v4 keys];
      v13 = [v12 objectAtIndex:0];
      v10 = [v13 copy];
    }

    else
    {
      v10 = 0;
    }

    [v10 setName:@"Candidate-Selection"];
    [v10 setDisplayString:&stru_1F03BA8F8];
    [v10 setRepresentedString:&stru_1F03BA8F8];
    [v10 setDisplayType:1];
    [v10 setInteractionType:3];
  }

  v14 = [(TUIKeyplane *)self fullTree];
  [v14 replaceKey:0 withKey:v10];

  [v9 floatValue];
  v16 = [TUIKey keyFromKBTree:v10 layoutType:2 layoutShape:0 multiplier:v15];

  return v16;
}

- (id)createPreparedKeyFromTree:(id)a3 withMultiplier:(double)a4 type:(int64_t)a5 shape:(int64_t)a6
{
  v7 = [TUIKey keyFromKBTree:a3 layoutType:a5 layoutShape:a6 multiplier:a4];
  v8 = [(TUIKeyplane *)self fullTree];
  [v7 setKeyplane:v8];

  [v7 setStyle:{-[TUIKeyplane keyStyleForLayoutClass:](self, "keyStyleForLayoutClass:", -[TUIKeyplane layoutClass](self, "layoutClass"))}];
  [v7 setInGridLayout:{-[TUIKeyplane isGridLayout](self, "isGridLayout")}];

  return v7;
}

- (id)findRowSpanningDuplicatesForKeyplane:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if ([v3 type] == 2)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [&unk_1F03D8F78 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        v17 = v6;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(&unk_1F03D8F78);
          }

          v9 = [v3 cachedKeysByKeyName:*(*(&v22 + 1) + 8 * v8)];
          if ([v9 count] >= 2)
          {
            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
            v10 = v9;
            v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v19;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v19 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = [*(*(&v18 + 1) + 8 * i) name];
                  [v4 setObject:v10 forKey:v15];
                }

                v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
              }

              while (v12);
            }

            v6 = v17;
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [&unk_1F03D8F78 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

- (id)keysForName:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyplane *)self doubleHeightKeys];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)unduplicateTenKeySwitchKey:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUIKeyplane *)self doubleHeightKeys];
  v6 = [v4 name];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 copy];

  if (v8 && [v8 count] == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = [(TUIKeyplane *)self doubleHeightKeys];
          v16 = [v14 name];
          [v15 removeObjectForKey:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v17 = [v9 lastObject];
    v18 = [(TUIKeyplane *)self defaultRowSet];
    v19 = [v18 subtrees];
    v20 = [v19 lastObject];
    v21 = [v20 subtrees];

    [v21 removeObject:v17];
    v22 = [(TUIKeyplane *)self fullTree];
    [v22 removeKey:v17];
  }
}

- (void)duplicateTenKeySwitchKey:(id)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUIKeyplane *)self doubleHeightKeys];
  v6 = [v4 name];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v8 = [v4 copy];
    [v8 setDisplayRowHint:{objc_msgSend(v4, "displayRowHint") + 1}];
    v9 = MEMORY[0x1E695DF90];
    v10 = [v4 cache];
    v11 = [v9 dictionaryWithDictionary:v10];

    v27 = v11;
    [v8 setCache:v11];
    v12 = [(TUIKeyplane *)self defaultRowSet];
    v13 = [v12 subtrees];
    v14 = [v13 lastObject];
    v15 = [v14 subtrees];

    [v15 insertObject:v8 atIndex:0];
    v16 = [(TUIKeyplane *)self fullTree];
    [v16 replaceKey:0 withKey:v8];

    v17 = [(TUIKeyplane *)self fullTree];
    LOBYTE(v13) = objc_opt_respondsToSelector();

    if (v13)
    {
      v18 = [(TUIKeyplane *)self fullTree];
      [v18 updateCachedKeyList];
    }

    v33[0] = v4;
    v33[1] = v8;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v31 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        v23 = 0;
        do
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v28 + 1) + 8 * v23);
          v25 = [(TUIKeyplane *)self doubleHeightKeys];
          v26 = [v24 name];
          [v25 setObject:v19 forKey:v26];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v21);
    }
  }
}

- (id)duplicateTreeForSplitMode:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUIKeyplane *)self fullTree];
  v6 = [v5 cachedKeysByKeyName:@"Space-Key"];

  if ([v6 count] < 2 || (objc_msgSend(v6, "objectAtIndex:", 1), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_15:
    v8 = [v4 copy];
    goto LABEL_16;
  }

  v8 = v7;
  if (![v7 isEqual:v4])
  {
    goto LABEL_16;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if (([v14 isEqual:{v4, v21}] & 1) == 0)
        {
          v15 = v14;

          v8 = v15;
          goto LABEL_14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

LABEL_14:

    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

LABEL_16:
  if (([v6 containsObject:{v8, v21}] & 1) == 0)
  {
    v16 = [(TUIKeyplane *)self fullTree];
    [v16 replaceKey:0 withKey:v8];
  }

  v17 = MEMORY[0x1E695DF90];
  v18 = [v4 cache];
  v19 = [v17 dictionaryWithDictionary:v18];

  if (!v19)
  {
    v19 = [MEMORY[0x1E695DF90] dictionary];
  }

  [v19 setObject:&unk_1F03D8C78 forKey:@"KBsplitMode"];
  [v8 setCache:v19];
  [v8 setSplitMode:3];

  return v8;
}

- (BOOL)keyplaneKeyIsTenKeySwitchKey:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v4 hasSuffix:@"Switch-Key"];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v3 name];
  if (![v6 hasPrefix:@"TenKey"])
  {
    v7 = [v3 name];
    if ([v7 hasPrefix:@"FiftyOn"])
    {

      goto LABEL_5;
    }

    v9 = [v3 name];
    v10 = [v9 hasPrefix:@"Korean10Key"];

    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

LABEL_5:

LABEL_6:
  v8 = 1;
LABEL_9:

  return v8;
}

- (BOOL)shouldDuplicateKey:(id)a3 forRow:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(TUIKeyplane *)self layoutClass]== 2)
  {
    v8 = [v7 subtreesWithProperty:@"KBinteractionType" value:&unk_1F03D8C60];
    if ([v8 count] <= 1 && objc_msgSend(v6, "interactionType") == 15)
    {
      v9 = [v7 properties];
      v10 = [v6 name];
      v11 = [v9 objectForKey:v10];
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)shouldDuplicateTenKeySwitchKey:(id)a3 forTreeRow:(id)a4 forRowNumber:(unint64_t)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ([(TUIKeyplane *)self layoutType]== 2 && [(TUIKeyplane *)self indexOfLastRow]- 1 == a5 && [(TUIKeyplane *)self keyplaneKeyIsTenKeySwitchKey:v7])
  {
    v8 = [(TUIKeyplane *)self fullTree];
    v9 = [v8 firstCachedKeyWithName:@"Dictation-Key"];

    v10 = [(TUIKeyplane *)self fullTree];
    v11 = [v10 firstCachedKeyWithName:@"International-Key"];

    if (v11 && ([v11 visible] & 1) == 0)
    {
      if (v9 && [v9 visible])
      {
        v14 = [(TUIKeyplane *)self fullTree];
        v15 = [v14 cachedKeysByKeyName:@"Adaptive-Key"];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v16 = v15;
        v12 = [v16 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          v17 = *v20;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v20 != v17)
              {
                objc_enumerationMutation(v16);
              }

              if (([*(*(&v19 + 1) + 8 * i) interactionType] & 0x1D) != 0)
              {
                LOBYTE(v12) = 1;
                goto LABEL_22;
              }
            }

            v12 = [v16 countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }

      else
      {
        LOBYTE(v12) = 1;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (double)multiplierForKey:(id)a3 withProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 name];
  v8 = [v6 objectForKey:v7];

  if (v8 || ([v5 representedString], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", v9), v8 = objc_claimAutoreleasedReturnValue(), v9, v8) || (objc_msgSend(v5, "name"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "rangeOfString:", @"_"), v16, v13 = 1.0, v17 == 1) && (objc_msgSend(v5, "name"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "substringFromIndex:", 2), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", v19), v8 = objc_claimAutoreleasedReturnValue(), v19, v18, v8))
  {
    v10 = [v6 objectForKey:v8];

    if (v10)
    {
      v11 = [v6 objectForKey:v8];
      [v11 doubleValue];
      v13 = v12;
    }

    else
    {
      [v8 doubleValue];
      v13 = v14;
    }
  }

  return v13;
}

- (id)keyRowFromTreeRow:(id)a3 rowNumber:(unint64_t)a4 type:(int64_t)a5
{
  v296 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ([v7 type] == 7 || objc_msgSend(v7, "type") == 4)
  {
    v238 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [v7 properties];
    v9 = [v8 objectForKey:@"KBToggleKeys_Undo-Key"];
    if (v9)
    {
      v221 = 1;
    }

    else
    {
      v10 = [v7 properties];
      v11 = [v10 objectForKey:@"KBToggleKeys_Redo-Key"];
      v221 = v11 != 0;
    }

    v12 = [v7 properties];
    v237 = [v12 mutableCopy];

    v13 = [(UIKBTree *)self->_keylayout name];
    v14 = [v13 containsString:@"Numbers-And-Punctuation"];

    v220 = v14;
    if (v14)
    {
      v15 = [(UIKBTree *)self->_keylayout name];
      v16 = [v15 containsString:@"Alternate"];
    }

    else
    {
      v16 = 0;
    }

    v17 = self;
    v18 = a4 + 1;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rowset.Row%li", a4 + 1];
    v233 = v17;
    v20 = [(TUIKeyplane *)v17 keylayout];
    v21 = [v20 properties];
    v217 = v19;
    v22 = [v21 objectForKey:v19];

    v230 = a4;
    v224 = v22;
    if (v22)
    {
      v283 = 0u;
      v284 = 0u;
      v281 = 0u;
      v282 = 0u;
      v23 = [v22 allKeys];
      v24 = [v23 countByEnumeratingWithState:&v281 objects:v295 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v282;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v282 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v281 + 1) + 8 * i);
            v29 = [v224 objectForKey:v28];
            [v237 setObject:v29 forKey:v28];
          }

          v25 = [v23 countByEnumeratingWithState:&v281 objects:v295 count:16];
        }

        while (v25);
      }

      a4 = v230;
    }

    v30 = MEMORY[0x1E696AEC0];
    v31 = v233;
    v32 = [(TUIKeyplane *)v233 stringFromKeyboardType:a5];
    v33 = [v30 stringWithFormat:@"Rowset.%@.Row%li", v32, v18];

    v34 = [(TUIKeyplane *)v233 keylayout];
    v35 = [v34 properties];
    v216 = v33;
    v36 = [v35 objectForKey:v33];

    v223 = v36;
    if (v36)
    {
      v279 = 0u;
      v280 = 0u;
      v277 = 0u;
      v278 = 0u;
      v37 = [v36 allKeys];
      v38 = [v37 countByEnumeratingWithState:&v277 objects:v294 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v278;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v278 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v277 + 1) + 8 * j);
            v43 = [v223 objectForKey:v42];
            [v237 setObject:v43 forKey:v42];
          }

          v39 = [v37 countByEnumeratingWithState:&v277 objects:v294 count:16];
        }

        while (v39);
      }

      v31 = v233;
    }

    v219 = v16;
    v234 = [MEMORY[0x1E695DF90] dictionary];
    v273 = 0u;
    v274 = 0u;
    v275 = 0u;
    v276 = 0u;
    obj = [v7 subtrees];
    v44 = 0x1E696A000uLL;
    v235 = v7;
    v227 = [obj countByEnumeratingWithState:&v273 objects:v293 count:16];
    if (v227)
    {
      v226 = 0;
      v236 = 0;
      v225 = *v274;
      v45 = *MEMORY[0x1E695F060];
      v46 = *(MEMORY[0x1E695F060] + 8);
      v47 = 0.0;
      while (1)
      {
        v48 = 0;
        do
        {
          if (*v274 != v225)
          {
            objc_enumerationMutation(obj);
          }

          v228 = v48;
          v49 = *(*(&v273 + 1) + 8 * v48);
          v231 = v49;
          if ([v49 type] != 8)
          {
            v56 = [v49 name];
            v57 = [v56 rangeOfString:@"Row"];

            v58 = [v49 name];
            v59 = [v58 length];

            if (v57 >= v59 || ([v49 name], v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v60, "substringFromIndex:", v57), v61 = objc_claimAutoreleasedReturnValue(), v60, -[TUIKeyplane keylayout](v31, "keylayout"), v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "properties"), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v63, "objectForKey:", v61), v64 = objc_claimAutoreleasedReturnValue(), v63, v62, v61, !v64))
            {
              v65 = [(TUIKeyplane *)v31 keylayout];
              v66 = [v65 properties];
              v67 = [v49 name];
              v64 = [v66 objectForKey:v67];
            }

            v271 = 0u;
            v272 = 0u;
            v269 = 0u;
            v270 = 0u;
            v68 = [v49 subtrees];
            v239 = [v68 countByEnumeratingWithState:&v269 objects:v292 count:16];
            if (v239)
            {
              v69 = *v270;
              v229 = *v270;
              do
              {
                for (k = 0; k != v239; ++k)
                {
                  if (*v270 != v69)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v71 = *(*(&v269 + 1) + 8 * k);
                  v72 = [v71 shape];

                  if (!v72)
                  {
                    v73 = [MEMORY[0x1E69DCB70] shape];
                    [v71 setShape:v73];
                  }

                  [v71 setDisplayRowHint:a4];
                  v74 = [TUIKey layoutTypeForKey:v71];
                  if (v64)
                  {
                    [v64 doubleValue];
                  }

                  else
                  {
                    [(TUIKeyplane *)v31 multiplierForKey:v71 withProperties:v237];
                  }

                  v76 = v75;
                  if (v74 == 3)
                  {
                    v77 = [(TUIKeyplane *)v31 doubleHeightKeys];
                    v78 = [v71 name];
                    v79 = [v77 objectForKey:v78];

                    if (v79)
                    {
                      v80 = 2;
                    }

                    else
                    {
                      v81 = [v231 shape];
                      v80 = [v81 concaveCorner];

                      if (v80)
                      {
                        v82 = [v231 shape];
                        [v82 setConcaveCorner:0];

                        v83 = [v231 shape];
                        [v83 setConcaveCornerOffset:{v45, v46}];

                        v80 = 0;
                      }

                      v69 = v229;
                    }

                    v31 = v233;
                  }

                  else
                  {
                    v80 = 0;
                  }

                  if (v74 != 1)
                  {
                    v47 = v47 + v76;
                  }

                  if (([v71 visible] & 1) == 0)
                  {
                    v85 = [MEMORY[0x1E696AD98] numberWithDouble:v76];
                    v91 = [v71 name];
                    [v234 setObject:v85 forKey:v91];
LABEL_71:

                    continue;
                  }

                  if ((v74 + 1) <= 2)
                  {
                    [(TUIKeyplane *)v31 setNumberOfPaddingKeys:[(TUIKeyplane *)v31 numberOfPaddingKeys]+ 1];
                  }

                  v84 = [(TUIKeyplane *)v31 createPreparedKeyFromTree:v71 withMultiplier:v74 type:v80 shape:v76];
                  [v238 addObject:v84];

                  if ([(TUIKeyplane *)v31 shouldDuplicateKey:v71 forRow:v235])
                  {
                    v85 = [(TUIKeyplane *)v31 duplicateTreeForSplitMode:v71];
                    [v85 name];
                    v87 = v86 = v31;
                    v88 = [v71 name];
                    [v237 setObject:v87 forKey:v88];

                    v89 = v236;
                    if (!v236)
                    {
                      v90 = [v231 subtrees];
                      v89 = [v90 mutableCopy];
                    }

                    v236 = v89;
                    [v89 insertObject:v85 atIndex:{objc_msgSend(v238, "count")}];
                    v91 = [(TUIKeyplane *)v86 createPreparedKeyFromTree:v85 withMultiplier:v74 type:v80 shape:v76];
                    [v238 addObject:v91];
                    v31 = v86;
                    a4 = v230;
                    goto LABEL_71;
                  }
                }

                v239 = [v68 countByEnumeratingWithState:&v269 objects:v292 count:16];
              }

              while (v239);
            }

            if (v236)
            {
              v92 = [v236 mutableCopy];
              [v231 setSubtrees:v92];

              [v236 removeAllObjects];
              v93 = v236;
              v236 = 0;
              v7 = v235;
              goto LABEL_101;
            }

            v236 = 0;
            v7 = v235;
            goto LABEL_102;
          }

          v50 = [v49 shape];

          if (!v50)
          {
            v51 = [MEMORY[0x1E69DCB70] shape];
            [v49 setShape:v51];
          }

          [v49 setDisplayRowHint:a4];
          if ([(TUIKeyplane *)v31 indexOfLastRow]- 1 == a4 && [(TUIKeyplane *)v31 keyplaneKeyIsTenKeySwitchKey:v49])
          {
            v52 = [(TUIKeyplane *)v31 shouldDuplicateTenKeySwitchKey:v49 forTreeRow:v7 forRowNumber:a4];
            v53 = [(TUIKeyplane *)v31 doubleHeightKeys];
            v54 = [v49 name];
            v55 = [v53 objectForKey:v54];

            if (v52)
            {
              [(TUIKeyplane *)v31 duplicateTenKeySwitchKey:v49];
            }

            else if (v55)
            {
              [(TUIKeyplane *)v31 unduplicateTenKeySwitchKey:v49];
            }
          }

          v94 = [TUIKey layoutTypeForKey:v49];
          if (v94 == 3)
          {
            v95 = [(TUIKeyplane *)v31 doubleHeightKeys];
            v96 = [v49 name];
            v97 = [v95 objectForKey:v96];

            if (v97)
            {
              v98 = 2;
            }

            else
            {
              v99 = [v49 shape];
              v100 = [v99 concaveCorner];

              if (v100)
              {
                v101 = [v49 shape];
                [v101 setConcaveCorner:0];

                v102 = [v49 shape];
                [v102 setConcaveCornerOffset:{v45, v46}];
              }

              v98 = 0;
            }
          }

          else
          {
            v98 = 0;
          }

          v226 |= v94 == 4;
          [(TUIKeyplane *)v31 multiplierForKey:v49 withProperties:v237];
          v104 = v103;
          v105 = v47 + v103;
          if (v94 != 1)
          {
            v47 = v105;
          }

          if (([v49 visible] & 1) == 0)
          {
            v64 = [*(v44 + 3480) numberWithDouble:v104];
            v93 = [v49 name];
            [v234 setObject:v64 forKey:v93];
LABEL_101:

LABEL_102:
            v44 = 0x1E696A000;
            goto LABEL_103;
          }

          if (!v221 || (([v49 interactionType] == 17) & v220 & v219) == 0 && (objc_msgSend(v49, "interactionType") != 12) | (v220 ^ 1 | v219) & 1)
          {
            if ((v94 + 1) <= 2)
            {
              [(TUIKeyplane *)v31 setNumberOfPaddingKeys:[(TUIKeyplane *)v31 numberOfPaddingKeys]+ 1];
            }

            v106 = [(TUIKeyplane *)v31 createPreparedKeyFromTree:v49 withMultiplier:v94 type:v98 shape:v104];
            [v238 addObject:v106];

            if ([(TUIKeyplane *)v31 shouldDuplicateKey:v49 forRow:v7])
            {
              v64 = [(TUIKeyplane *)v31 duplicateTreeForSplitMode:v49];
              v107 = [v64 name];
              v108 = [v49 name];
              [v237 setObject:v107 forKey:v108];

              v109 = v236;
              if (!v236)
              {
                v110 = [v7 subtrees];
                v109 = [v110 mutableCopy];
              }

              v236 = v109;
              if (([v109 containsObject:v64] & 1) == 0)
              {
                [v109 insertObject:v64 atIndex:{objc_msgSend(v238, "count")}];
                v93 = [(TUIKeyplane *)v31 createPreparedKeyFromTree:v64 withMultiplier:v94 type:v98 shape:v104];
                [v238 addObject:v93];
                goto LABEL_101;
              }

              goto LABEL_102;
            }
          }

LABEL_103:
          v48 = v228 + 1;
        }

        while (v228 + 1 != v227);
        v227 = [obj countByEnumeratingWithState:&v273 objects:v293 count:16];
        if (!v227)
        {
          goto LABEL_107;
        }
      }
    }

    v226 = 0;
    v236 = 0;
    v47 = 0.0;
LABEL_107:

    if ([v234 count])
    {
      v111 = [v234 allKeys];
      if ([v111 containsObject:@"Dictation-Key"])
      {
        v112 = 1;
      }

      else
      {
        v114 = [v234 allKeys];
        v112 = [v114 containsObject:@"NumberPad-Dictation"];
      }

      v115 = [v234 allKeys];
      v116 = [v115 containsObject:@"International-Key"];

      v117 = [v234 objectForKey:@"International-Key"];
      v118 = 0.0;
      v119 = 0.0;
      if (v117)
      {
        v120 = [v234 objectForKey:@"International-Key"];
        [v120 doubleValue];
        v119 = v121;
      }

      v122 = [v234 objectForKey:@"Dictation-Key"];
      if (v122)
      {
        v123 = [v234 objectForKey:@"Dictation-Key"];
        [v123 doubleValue];
        v118 = v124;
      }

      v125 = [v234 objectForKey:@"NumberPad-International"];

      v126 = [v234 objectForKey:@"NumberPad-Dictation"];

      v127 = [v234 objectForKey:@"NumberPad-Empty"];

      v128 = [(TUIKeyplane *)v31 fullTree];
      [v128 name];
      v130 = v129 = v31;
      v131 = [v130 hasPrefix:@"Dynamic-Thai-24-Key"];

      v132 = [(TUIKeyplane *)v129 fullTree];
      v133 = [v132 cachedKeysByKeyName:@"Adaptive-Key"];

      v267 = 0u;
      v268 = 0u;
      v265 = 0u;
      v266 = 0u;
      v134 = v133;
      v135 = [v134 countByEnumeratingWithState:&v265 objects:v291 count:16];
      if (v135)
      {
        v136 = v135;
        v137 = *v266;
        while (2)
        {
          for (m = 0; m != v136; ++m)
          {
            if (*v266 != v137)
            {
              objc_enumerationMutation(v134);
            }

            if ([*(*(&v265 + 1) + 8 * m) displayType] == 4)
            {
              v139 = 1;
              goto LABEL_126;
            }
          }

          v136 = [v134 countByEnumeratingWithState:&v265 objects:v291 count:16];
          if (v136)
          {
            continue;
          }

          break;
        }
      }

      v139 = 0;
LABEL_126:

      v232 = v134;
      if (v131)
      {
        v263 = 0u;
        v264 = 0u;
        v261 = 0u;
        v262 = 0u;
        v140 = v238;
        v141 = [v140 countByEnumeratingWithState:&v261 objects:v290 count:16];
        if (!v141)
        {
          goto LABEL_181;
        }

        v142 = v141;
        v143 = *v262;
        while (1)
        {
          for (n = 0; n != v142; ++n)
          {
            if (*v262 != v143)
            {
              objc_enumerationMutation(v140);
            }

            v145 = *(*(&v261 + 1) + 8 * n);
            v146 = [v145 backingTree];
            v147 = [v146 displayType];

            if ((v112 & v116) == 0)
            {
              if (v116)
              {
                v148 = 1.0;
                v150 = v147 == 4;
              }

              else
              {
                if (!v112)
                {
                  continue;
                }

                v148 = 1.0;
                v150 = v147 == 13;
              }

              if (!v150 && v147 != 18)
              {
                if (v147 != 25)
                {
                  continue;
                }

                v148 = 2.0;
              }

LABEL_148:
              [v145 setMultiplier:v148];
              continue;
            }

            v148 = 2.0;
            if (v147 == 18 || v147 == 25)
            {
              goto LABEL_148;
            }
          }

          v142 = [v140 countByEnumeratingWithState:&v261 objects:v290 count:{16, v148}];
          if (!v142)
          {
            goto LABEL_181;
          }
        }
      }

      if (v119 > 0.0)
      {
        v259 = 0u;
        v260 = 0u;
        v257 = 0u;
        v258 = 0u;
        v152 = v238;
        v153 = [v152 countByEnumeratingWithState:&v257 objects:v289 count:16];
        if (!v153)
        {
          goto LABEL_181;
        }

        v154 = v153;
        v155 = *v258;
        v156 = v112 | v139;
        while (1)
        {
          v157 = 0;
          v158 = v233;
          do
          {
            if (*v258 != v155)
            {
              objc_enumerationMutation(v152);
            }

            v159 = *(*(&v257 + 1) + 8 * v157);
            if (((v112 & 1) != 0 || -[TUIKeyplane layoutClass](v158, "layoutClass") == 1) && ([v159 backingTree], v160 = objc_claimAutoreleasedReturnValue(), v161 = objc_msgSend(v160, "displayType"), v160, v158 = v233, v161 == 18) || (v156 & 1) == 0 && (objc_msgSend(v159, "backingTree"), v162 = objc_claimAutoreleasedReturnValue(), v163 = objc_msgSend(v162, "displayType"), v162, v158 = v233, v163 == 4))
            {
              v118 = v119;
LABEL_180:
              [v159 multiplier];
              [v159 setMultiplier:v118 + v174];
              goto LABEL_181;
            }

            ++v157;
          }

          while (v154 != v157);
          v154 = [v152 countByEnumeratingWithState:&v257 objects:v289 count:16];
          if (!v154)
          {
            goto LABEL_181;
          }
        }
      }

      v44 = 0x1E696A000;
      if (v118 > 0.0)
      {
        v31 = v233;
        if ([(TUIKeyplane *)v233 layoutClass]== 4)
        {
          v255 = 0u;
          v256 = 0u;
          v253 = 0u;
          v254 = 0u;
          v164 = v238;
          v165 = [v164 countByEnumeratingWithState:&v253 objects:v288 count:16];
          if (!v165)
          {
            goto LABEL_181;
          }

          v166 = v165;
          v167 = *v254;
          v118 = v118 * 0.5;
          do
          {
            for (ii = 0; ii != v166; ++ii)
            {
              if (*v254 != v167)
              {
                objc_enumerationMutation(v164);
              }

              v159 = *(*(&v253 + 1) + 8 * ii);
              v169 = [v159 backingTree];
              v170 = [v169 displayType];

              if (v170 == 13)
              {
                [v159 multiplier];
                [v159 setMultiplier:v118 + v171];
              }

              v172 = [v159 backingTree];
              v173 = [v172 displayType];

              if (v173 == 18)
              {
                goto LABEL_180;
              }
            }

            v166 = [v164 countByEnumeratingWithState:&v253 objects:v288 count:16];
          }

          while (v166);
        }

        else
        {
          if ([(TUIKeyplane *)v233 layoutType]!= 2)
          {
            goto LABEL_182;
          }

          v251 = 0u;
          v252 = 0u;
          v249 = 0u;
          v250 = 0u;
          v209 = v238;
          v210 = [v209 countByEnumeratingWithState:&v249 objects:v287 count:16];
          if (!v210)
          {
            goto LABEL_181;
          }

          v211 = v210;
          v212 = *v250;
          do
          {
            for (jj = 0; jj != v211; ++jj)
            {
              if (*v250 != v212)
              {
                objc_enumerationMutation(v209);
              }

              if ((v116 & 1) == 0)
              {
                v159 = *(*(&v249 + 1) + 8 * jj);
                v214 = [v159 backingTree];
                v215 = [v214 displayType];

                if (v215 == 13)
                {
                  goto LABEL_180;
                }
              }
            }

            v211 = [v209 countByEnumeratingWithState:&v249 objects:v287 count:16];
          }

          while (v211);
        }

LABEL_181:

        v134 = v232;
        v31 = v233;
        v44 = 0x1E696A000uLL;
        goto LABEL_182;
      }

      v31 = v233;
      if (v125 || v126 || v127)
      {
        v247 = 0u;
        v248 = 0u;
        v245 = 0u;
        v246 = 0u;
        v183 = v238;
        v184 = [v183 countByEnumeratingWithState:&v245 objects:v286 count:16];
        if (!v184)
        {
          goto LABEL_181;
        }

        v185 = v184;
        v240 = 0;
        v186 = *v246;
        v31 = v233;
        while (1)
        {
          v187 = 0;
          do
          {
            if (*v246 != v186)
            {
              objc_enumerationMutation(v183);
            }

            v188 = *(*(&v245 + 1) + 8 * v187);
            v189 = [v188 backingTree];
            v190 = [v189 interactionType];
            if (!v125)
            {
              if (v190 == 14)
              {
              }

              else
              {
                v193 = [v188 backingTree];
                v194 = [v193 name];
                v195 = [v194 containsString:@"NumberPad-Dot"];

                v44 = 0x1E696A000;
                v31 = v233;

                if (!v195)
                {
                  goto LABEL_209;
                }
              }

              [v188 multiplier];
              v192 = v196 * 0.5;
              v240 = 1;
              goto LABEL_208;
            }

            if (v190 == 9)
            {
              goto LABEL_203;
            }

            v191 = [v188 backingTree];
            if ([v191 interactionType] == 5)
            {

              v44 = 0x1E696A000;
LABEL_203:

              v192 = 0.0;
LABEL_208:
              [v188 setMultiplier:v192];
              goto LABEL_209;
            }

            v197 = [v188 backingTree];
            v198 = [v197 interactionType];

            if (!v198)
            {
              v192 = 0.0;
              v31 = v233;
              v44 = 0x1E696A000;
              goto LABEL_208;
            }

            v31 = v233;
            v44 = 0x1E696A000;
LABEL_209:
            ++v187;
          }

          while (v185 != v187);
          v199 = [v183 countByEnumeratingWithState:&v245 objects:v286 count:16];
          v185 = v199;
          if (!v199)
          {

            v134 = v232;
            if (v240)
            {
              v243 = 0u;
              v244 = 0u;
              v241 = 0u;
              v242 = 0u;
              v200 = v183;
              v201 = [v200 countByEnumeratingWithState:&v241 objects:v285 count:16];
              if (v201)
              {
                v202 = v201;
                v203 = *v242;
                do
                {
                  for (kk = 0; kk != v202; ++kk)
                  {
                    if (*v242 != v203)
                    {
                      objc_enumerationMutation(v200);
                    }

                    v205 = *(*(&v241 + 1) + 8 * kk);
                    v206 = [v205 backingTree];
                    v207 = [v206 interactionType];

                    if (v207 == 9)
                    {
                      [v205 multiplier];
                      [v205 setMultiplier:v208 * 0.5];
                    }
                  }

                  v202 = [v200 countByEnumeratingWithState:&v241 objects:v285 count:16];
                }

                while (v202);
              }

              goto LABEL_181;
            }

            break;
          }
        }
      }

LABEL_182:

      v7 = v235;
      a4 = v230;
    }

    v175 = [(TUIKeyplane *)v31 rowSizes];
    v176 = [*(v44 + 3480) numberWithDouble:v47];
    v177 = [*(v44 + 3480) numberWithUnsignedInteger:a4];
    [v175 setObject:v176 forKey:v177];

    if ([(TUIKeyplane *)v31 indexOfLastRow]== a4)
    {
      v178 = [(TUIKeyplane *)v31 cache];
      v179 = [*(v44 + 3480) numberWithBool:v226 & 1];
      v180 = [*(v44 + 3480) numberWithInteger:a5];
      [v178 setObject:v179 forKey:v180];
    }

    if (v236)
    {
      v181 = [v236 mutableCopy];
      [v7 setSubtrees:v181];

      [v236 removeAllObjects];
    }

    v113 = v238;
  }

  else
  {
    v113 = MEMORY[0x1E695E0F0];
  }

  return v113;
}

- (id)defaultKeysOrderedByRowForKeyplane:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [v4 subtreeWithType:3];
  [(TUIKeyplane *)self setKeylayout:v6];
  v7 = [(TUIKeyplane *)self defaultRowSet];
  v8 = [v7 subtrees];
  -[TUIKeyplane setIndexOfLastRow:](self, "setIndexOfLastRow:", [v8 count] - 1);
  if ([v8 count])
  {
    v9 = 0;
    do
    {
      v10 = [v8 objectAtIndex:v9];
      v11 = [(TUIKeyplane *)self keyRowFromTreeRow:v10 rowNumber:v9 type:0];
      if ([v11 count])
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
        [v5 setObject:v11 forKey:v12];
      }

      ++v9;
    }

    while (v9 < [v8 count]);
  }

  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [v5 allKeys];
  v15 = [v14 count];

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
      v18 = [v5 objectForKey:v17];

      if (v18)
      {
        [v13 addObject:v18];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
        [v5 removeObjectForKey:v19];
      }

      ++v16;

      v20 = [v5 allKeys];
      v21 = [v20 count];
    }

    while (v21);
  }

  return v13;
}

- (id)rowSetForType:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(TUIKeyplane *)self stringFromKeyboardType:a3];
  v6 = [v4 stringWithFormat:@"_%@", v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(TUIKeyplane *)self keylayout];
  v8 = [v7 subtrees];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 type] == 15)
        {
          v13 = [v12 name];
          v14 = [v13 containsString:v6];

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v9;
}

- (id)rowsForKeyboardType:(int64_t)a3
{
  if (!a3)
  {
    [(TUIKeyplane *)self setCurrentVariantType:?];
    goto LABEL_8;
  }

  v5 = [(TUIKeyplane *)self keylayout];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
LABEL_8:
    v12 = [(TUIKeyplane *)self defaultKeysByRow];
    goto LABEL_21;
  }

  v7 = [(TUIKeyplane *)self keylayout];
  v8 = [v7 orderedRowsForType:a3];

  if ([v8 count])
  {
    if (-[TUIKeyplane currentVariantType](self, "currentVariantType") != a3 || (-[TUIKeyplane variantKeysByRow](self, "variantKeysByRow"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, !v10))
    {
      [MEMORY[0x1E695DF70] array];
      v30 = v28 = v8;
      v13 = v8;
      if ([v13 count])
      {
        v14 = 0;
        do
        {
          v15 = [v13 objectAtIndex:{v14, v28}];
          v16 = [(TUIKeyplane *)self keylayout];
          v17 = [v16 rowSet];
          v18 = [v17 subtrees];
          v19 = [v18 count];

          if (v14 < v19 && (-[TUIKeyplane keylayout](self, "keylayout"), v20 = objc_claimAutoreleasedReturnValue(), [v20 rowSet], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "subtrees"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectAtIndex:", v14), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v15, "isEqualToTree:", v23), v23, v22, v21, v20, v24))
          {
            v25 = [(TUIKeyplane *)self defaultKeysByRow];
            v26 = [v25 objectAtIndex:v14];
            [v30 addObject:v26];
          }

          else
          {
            v25 = [(TUIKeyplane *)self keyRowFromTreeRow:v15 rowNumber:v14 type:a3];
            if ([v25 count])
            {
              [v30 addObject:v25];
            }
          }

          ++v14;
        }

        while (v14 < [v13 count]);
      }

      [(TUIKeyplane *)self setVariantKeysByRow:v30, v28];
      [(TUIKeyplane *)self setCurrentVariantType:a3];
      v12 = [(TUIKeyplane *)self variantKeysByRow];

      v8 = v29;
      goto LABEL_20;
    }

    v11 = [(TUIKeyplane *)self variantKeysByRow];
  }

  else
  {
    v11 = [(TUIKeyplane *)self defaultKeysByRow];
  }

  v12 = v11;
LABEL_20:

LABEL_21:

  return v12;
}

- (BOOL)variantTypeIncludesSpaceBar:(int64_t)a3
{
  v4 = [(TUIKeyplane *)self cache];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (unint64_t)numberOfKeys
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(TUIKeyplane *)self orderedKeysByRow];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) count];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= [(TUIKeyplane *)self numberOfPaddingKeys])
  {
    v6 -= [(TUIKeyplane *)self numberOfPaddingKeys];
  }

  return v6;
}

- (NSString)prefix
{
  v3 = [(TUIKeyplane *)self fullTree];
  v4 = [v3 name];
  v5 = [v4 rangeOfString:@"_"];

  v6 = [(TUIKeyplane *)self fullTree];
  v7 = [v6 name];
  v8 = [v7 length];

  v9 = [(TUIKeyplane *)self fullTree];
  v10 = [v9 name];
  v11 = v10;
  if (v5 >= v8)
  {
    v13 = [v10 stringByReplacingOccurrencesOfString:@"Dynamic-" withString:&stru_1F03BA8F8];
  }

  else
  {
    v12 = [v10 substringToIndex:v5];
    v13 = [v12 stringByReplacingOccurrencesOfString:@"Dynamic-" withString:&stru_1F03BA8F8];
  }

  return v13;
}

- (void)updateKeyboardType:(int64_t)a3
{
  v4 = [(TUIKeyplane *)self rowsForKeyboardType:a3];
  [(TUIKeyplane *)self setVariantKeysByRow:v4];
}

+ (CGSize)sizeFromScreenTraits:(id)a3 layout:(id)a4 layoutClass:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  +[TUIKeyplane baseHeightForLayout:layoutClass:landscape:](TUIKeyplane, "baseHeightForLayout:layoutClass:landscape:", v8, a5, [v7 isKeyboardMinorEdgeWidth] ^ 1);
  v10 = v9;
  [v7 keyboardWidth];
  v12 = v11;
  if ([v7 idiom] == 3)
  {
    [v7 bounds];
    v14 = v13;
    [v7 bounds];
    v16 = v15;
    [v7 bounds];
    if (v16 >= v17 * 0.7)
    {
      v12 = v14 + -24.0;
    }

    else
    {
      v12 = fmin(v14 + -44.0 + -24.0, 465.0);
    }

    v24 = round(v12 * 0.333333333);
    if (v24 >= 130.0)
    {
      v10 = v24;
    }

    else
    {
      v10 = 130.0;
    }

    v25 = [MEMORY[0x1E69DCBE0] activeInstance];
    v26 = [v25 textInputTraits];
    [v26 preferredInputViewHeight];
    v28 = v27 + -16.0;

    if (v28 < v10 && v28 > 0.0)
    {
      v10 = v28;
    }

    goto LABEL_36;
  }

  if (a5 == 1)
  {
    if (![v7 idiom])
    {
      [v7 keyboardWidth];
      if (v18 > 400.0)
      {
        if ([v7 isKeyboardMinorEdgeWidth])
        {
          v10 = v10 + 8.0;
        }
      }
    }

    if (([v7 isKeyboardMinorEdgeWidth] & 1) == 0)
    {
      [MEMORY[0x1E69DCBE0] deviceSpecificPaddingForInterfaceOrientation:4 inputMode:0];
      v12 = v12 - (v19 + v20);
      v10 = v10 - (v21 + v22);
    }
  }

  if ([v7 idiom] != 1 && !objc_msgSend(v7, "isFloating"))
  {
    goto LABEL_26;
  }

  if (a5 != 1)
  {
    [v7 bounds];
    v12 = v30;
LABEL_26:
    if (a5 == 3)
    {
      if ([v7 isKeyboardMinorEdgeWidth] && (objc_msgSend(v7, "keyboardWidth"), v31 < 834.0))
      {
        v10 = v10 + -3.0;
      }

      else if (([v7 isKeyboardMinorEdgeWidth] & 1) == 0)
      {
        [v7 keyboardWidth];
        if (v32 < 1194.0)
        {
          v10 = v10 + -6.0;
        }
      }
    }

    goto LABEL_33;
  }

  [TUIKeyplane baseHeightForLayout:v8 layoutClass:1 landscape:0];
  v10 = v23 + 1.0;
  v12 = 320.0;
LABEL_33:
  v33 = [v7 screen];
  [v33 scale];
  v35 = v34;
  v36 = [v7 screen];
  [v36 nativeScale];
  v38 = v35 / v37;

  if (v38 > 1.0)
  {
    v39 = [v7 isFloating];
    v40 = round(v10 * v38);
    if ((v39 & 1) == 0)
    {
      v10 = v40;
    }
  }

LABEL_36:

  v41 = v12;
  v42 = v10;
  result.height = v42;
  result.width = v41;
  return result;
}

+ (CGSize)sizeBasisForLayoutClass:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      v3 = 812.0;
      v5 = 375.0;
    }

    else
    {
      v3 = 244.0;
      v5 = 198.0;
    }
  }

  else
  {
    if (a3 == 2)
    {
      v3 = 1024.0;
      v4 = 0x4088000000000000;
      goto LABEL_13;
    }

    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v3 = 1366.0;
        v4 = 0x4090000000000000;
LABEL_13:
        v5 = *&v4;
        goto LABEL_14;
      }

LABEL_12:
      v3 = 568.0;
      v4 = 0x4074000000000000;
      goto LABEL_13;
    }

    v3 = 1194.0;
    v5 = 834.0;
  }

LABEL_14:
  result.height = v3;
  result.width = v5;
  return result;
}

+ (double)baseHeightForLayout:(id)a3 layoutClass:(int64_t)a4 landscape:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (v5)
  {
    if ((a4 - 2) < 3)
    {
      v8 = dbl_1900C1518[a4 - 2];
      goto LABEL_19;
    }

    v9 = 0x4064000000000000;
LABEL_18:
    v8 = *&v9;
    goto LABEL_19;
  }

  if (a4 > 1)
  {
    if (a4 == 2 || a4 == 3)
    {
      v8 = 258.0;
      goto LABEL_19;
    }

    if (a4 == 4)
    {
      v8 = 325.0;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!a4)
  {
    v8 = 132.0;
    goto LABEL_19;
  }

  if (a4 != 1)
  {
LABEL_17:
    v9 = 0x406B000000000000;
    goto LABEL_18;
  }

  [objc_opt_class() customHeightForLayout:v7];
  if (v10 == 0.0)
  {
    v8 = 216.0;
  }

  else
  {
    v8 = v10;
  }

LABEL_19:

  return v8;
}

+ (int64_t)layoutClassFromScreenDimensions:(CGSize)a3
{
  if (*MEMORY[0x1E695F060] == a3.width && *(MEMORY[0x1E695F060] + 8) == a3.height)
  {
    return -1;
  }

  if (a3.width > a3.height)
  {
    a3.width = a3.height;
  }

  if (a3.width < 320.0)
  {
    return 0;
  }

  if (a3.width < 730.0)
  {
    return 1;
  }

  if (a3.width < 815.0)
  {
    return 2;
  }

  if (a3.width >= 1024.0)
  {
    return 4;
  }

  return 3;
}

+ (int64_t)layoutClassFromKeyplaneName:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@"Mini"])
  {
    v4 = 0;
  }

  else if ([v3 containsString:@"Small_"])
  {
    v4 = 1;
  }

  else if ([v3 containsString:@"Medium"])
  {
    v4 = 2;
  }

  else if ([v3 containsString:@"Large"])
  {
    v4 = 3;
  }

  else if ([v3 containsString:@"Grand"])
  {
    v4 = 4;
  }

  else
  {
    NSLog(&cfstr_ErrorNoMapping.isa, v3);
    v4 = -1;
  }

  return v4;
}

+ (double)customHeightForLayout:(id)a3
{
  v3 = a3;
  if ([&unk_1F03D8F90 containsObject:v3])
  {
    v4 = 240.0;
  }

  else if ([v3 isEqualToString:@"Thai-24-Key"])
  {
    v4 = 265.0;
  }

  else if ([v3 isEqualToString:@"QWERTY-Arabic"])
  {
    v4 = 250.0;
  }

  else if ([v3 isEqualToString:@"AZERTY-Arabic"])
  {
    v4 = 250.0;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

+ (id)keyplaneFromKBTree:(id)a3 withType:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(TUIKeyplane);
  [(TUIKeyplane *)v6 setFullTree:v5];
  [(TUIKeyplane *)v6 setEffectsType:+[TUIKeyplane defaultEffectsType]];
  v7 = [v5 name];
  [(TUIKeyplane *)v6 setLayoutClass:[TUIKeyplane layoutClassFromKeyplaneName:v7]];

  if ([(TUIKeyplane *)v6 isGridLayout])
  {
    v8 = 2;
  }

  else
  {
    v8 = [(TUIKeyplane *)v6 layoutClass]== 4;
  }

  [(TUIKeyplane *)v6 setLayoutType:v8];
  [(TUIKeyplane *)v6 setNumberOfPaddingKeys:0];
  v9 = [(TUIKeyplane *)v6 findRowSpanningDuplicatesForKeyplane:v5];
  [(TUIKeyplane *)v6 setDoubleHeightKeys:v9];

  v10 = [(TUIKeyplane *)v6 defaultKeysOrderedByRowForKeyplane:v5];
  [(TUIKeyplane *)v6 setDefaultKeysByRow:v10];

  v11 = [(TUIKeyplane *)v6 rowsForKeyboardType:a4];
  [(TUIKeyplane *)v6 setVariantKeysByRow:v11];

  [(TUIKeyplane *)v6 setCurrentVariantType:a4];

  return v6;
}

@end