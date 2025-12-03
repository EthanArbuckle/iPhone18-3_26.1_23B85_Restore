@interface TUIKeyplane
+ (CGSize)sizeBasisForLayoutClass:(int64_t)class;
+ (CGSize)sizeFromScreenTraits:(id)traits layout:(id)layout layoutClass:(int64_t)class;
+ (double)baseHeightForLayout:(id)layout layoutClass:(int64_t)class landscape:(BOOL)landscape;
+ (double)customHeightForLayout:(id)layout;
+ (id)keyplaneFromKBTree:(id)tree withType:(int64_t)type;
+ (int64_t)layoutClassFromKeyplaneName:(id)name;
+ (int64_t)layoutClassFromScreenDimensions:(CGSize)dimensions;
- (BOOL)hasSimilarLayoutToKeyplane:(id)keyplane;
- (BOOL)isGridLayout;
- (BOOL)keyplaneKeyIsTenKeySwitchKey:(id)key;
- (BOOL)needsResetFromKeyplane:(id)keyplane;
- (BOOL)shouldDuplicateKey:(id)key forRow:(id)row;
- (BOOL)shouldDuplicateTenKeySwitchKey:(id)key forTreeRow:(id)row forRowNumber:(unint64_t)number;
- (BOOL)variantTypeIncludesSpaceBar:(int64_t)bar;
- (CGSize)leftSplitSize;
- (CGSize)rightSplitSize;
- (NSArray)orderedKeysByRow;
- (NSString)name;
- (NSString)prefix;
- (TUIKeyplane)init;
- (double)finalHeightForSplitKeyboard;
- (double)finalSplitSizeForRightSide:(BOOL)side;
- (double)heightMultiplierForRowNumber:(unint64_t)number;
- (double)multiplierForKey:(id)key withProperties:(id)properties;
- (id)candidateBarKeyFromKeyplane:(id)keyplane;
- (id)createPreparedKeyFromTree:(id)tree withMultiplier:(double)multiplier type:(int64_t)type shape:(int64_t)shape;
- (id)defaultKeysOrderedByRowForKeyplane:(id)keyplane;
- (id)defaultRowSet;
- (id)description;
- (id)duplicateTreeForSplitMode:(id)mode;
- (id)findRowSpanningDuplicatesForKeyplane:(id)keyplane;
- (id)keyRowFromTreeRow:(id)row rowNumber:(unint64_t)number type:(int64_t)type;
- (id)keysForName:(id)name;
- (id)rowSetForType:(int64_t)type;
- (id)rowsForKeyboardType:(int64_t)type;
- (id)sortedKeysForKeyplane:(id)keyplane;
- (id)stringFromKeyboardType:(int64_t)type;
- (id)stringFromLayoutClass:(int64_t)class;
- (id)stringFromLayoutStyle:(int64_t)style;
- (id)stringFromLayoutType:(int64_t)type;
- (int64_t)keyLayoutStyle;
- (int64_t)keyStyleForLayoutClass:(int64_t)class;
- (unint64_t)numberOfKeys;
- (unint64_t)numberOfRows;
- (unint64_t)variantRowLimitForLayoutWithKey:(id)key variantSelectorType:(int64_t)type;
- (void)duplicateTenKeySwitchKey:(id)key;
- (void)unduplicateTenKeySwitchKey:(id)key;
- (void)updateKeyboardType:(int64_t)type;
- (void)updateVariantOrderForKey:(id)key withVariantSelectorType:(int64_t)type;
@end

@implementation TUIKeyplane

- (NSArray)orderedKeysByRow
{
  if (-[TUIKeyplane currentVariantType](self, "currentVariantType") && (-[TUIKeyplane variantKeysByRow](self, "variantKeysByRow"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    variantKeysByRow = [(TUIKeyplane *)self variantKeysByRow];
  }

  else
  {
    variantKeysByRow = [(TUIKeyplane *)self defaultKeysByRow];
  }

  return variantKeysByRow;
}

- (unint64_t)numberOfRows
{
  orderedKeysByRow = [(TUIKeyplane *)self orderedKeysByRow];
  v3 = [orderedKeysByRow count];

  return v3;
}

- (TUIKeyplane)init
{
  v10.receiver = self;
  v10.super_class = TUIKeyplane;
  v2 = [(TUIKeyplane *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cache = v2->_cache;
    v2->_cache = dictionary;

    v2->_indexOfLastRow = -1;
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    doubleHeightKeys = v2->_doubleHeightKeys;
    v2->_doubleHeightKeys = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    rowSizes = v2->_rowSizes;
    v2->_rowSizes = dictionary3;
  }

  return v2;
}

- (BOOL)isGridLayout
{
  fullTree = [(TUIKeyplane *)self fullTree];
  v4 = ([fullTree gridLayout] & 1) != 0 || -[TUIKeyplane layoutType](self, "layoutType") == 2;

  return v4;
}

- (id)defaultRowSet
{
  keylayout = [(TUIKeyplane *)self keylayout];
  v4 = [keylayout subtreeWithType:15];

  if (v4)
  {
    keylayout2 = v4;
  }

  else
  {
    keylayout2 = [(TUIKeyplane *)self keylayout];
  }

  v6 = keylayout2;

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
  layoutClass = [(TUIKeyplane *)self layoutClass];

  return [(TUIKeyplane *)self keyStyleForLayoutClass:layoutClass];
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
  fullTree = [(TUIKeyplane *)self fullTree];
  name = [fullTree name];

  return name;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  fullTree = [(TUIKeyplane *)self fullTree];
  name = [fullTree name];
  v7 = [(TUIKeyplane *)self stringFromLayoutClass:[(TUIKeyplane *)self layoutClass]];
  v8 = [(TUIKeyplane *)self stringFromLayoutType:[(TUIKeyplane *)self layoutType]];
  v9 = [(TUIKeyplane *)self stringFromLayoutStyle:[(TUIKeyplane *)self keyLayoutStyle]];
  v10 = [v3 stringWithFormat:@"<%@: %p> name = %@ size class = %@; layout type = %@; key style = %@; number of rows = %li", v4, self, name, v7, v8, v9, -[TUIKeyplane numberOfRows](self, "numberOfRows")];;

  return v10;
}

- (unint64_t)variantRowLimitForLayoutWithKey:(id)key variantSelectorType:(int64_t)type
{
  keyCopy = key;
  if ([(TUIKeyplane *)self keyLayoutStyle]!= 1)
  {
    v7 = 5;
    goto LABEL_11;
  }

  if (type == 1)
  {
    if ([keyCopy variantType] == 4)
    {
      v7 = 10;
      goto LABEL_11;
    }

    v8 = [keyCopy variantType] == 7;
    v9 = 12;
    v10 = 10;
  }

  else
  {
    v8 = [keyCopy displayType] == 27;
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

- (void)updateVariantOrderForKey:(id)key withVariantSelectorType:(int64_t)type
{
  v88 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  backingTree = [keyCopy backingTree];
  subtrees = [backingTree subtrees];

  if (subtrees)
  {
    typeCopy = type;
    selfCopy = self;
    arrangedVariantsArray = [keyCopy arrangedVariantsArray];

    if (!arrangedVariantsArray)
    {
      v10 = objc_alloc(MEMORY[0x1E695DF70]);
      backingTree2 = [keyCopy backingTree];
      subtrees2 = [backingTree2 subtrees];
      v13 = [v10 initWithArray:subtrees2];
      [keyCopy setArrangedVariantsArray:v13];
    }

    arrangedVariantsArray2 = [keyCopy arrangedVariantsArray];
    v15 = [arrangedVariantsArray2 objectAtIndexedSubscript:0];
    [keyCopy setPrimaryVariant:v15];

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    arrangedVariantsArray3 = [keyCopy arrangedVariantsArray];
    v17 = [arrangedVariantsArray3 countByEnumeratingWithState:&v81 objects:v87 count:16];
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
            objc_enumerationMutation(arrangedVariantsArray3);
          }

          v21 = *(*(&v81 + 1) + 8 * i);
          displayString = [v21 displayString];
          adjustedPrimaryVariantDisplayStringForSpecialCases = [keyCopy adjustedPrimaryVariantDisplayStringForSpecialCases];
          if (adjustedPrimaryVariantDisplayStringForSpecialCases)
          {
            v24 = adjustedPrimaryVariantDisplayStringForSpecialCases;
            v25 = [displayString containsString:adjustedPrimaryVariantDisplayStringForSpecialCases];

            if (v25)
            {
              goto LABEL_16;
            }
          }

          else
          {
            backingTree3 = [keyCopy backingTree];
            displayString2 = [backingTree3 displayString];
            v28 = [displayString containsString:displayString2];

            if (v28)
            {
LABEL_16:
              [keyCopy setPrimaryVariant:v21];
              goto LABEL_17;
            }
          }

          flickableSet = [keyCopy flickableSet];
          [flickableSet addObject:v21];
        }

        v18 = [arrangedVariantsArray3 countByEnumeratingWithState:&v81 objects:v87 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v30 = selfCopy;
    if (-[TUIKeyplane keyLayoutStyle](selfCopy, "keyLayoutStyle") == 1 && ([keyCopy backingTree], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "subtrees"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "count"), objc_msgSend(keyCopy, "backingTree"), v34 = objc_claimAutoreleasedReturnValue(), v35 = -[TUIKeyplane variantRowLimitForLayoutWithKey:variantSelectorType:](selfCopy, "variantRowLimitForLayoutWithKey:variantSelectorType:", v34, typeCopy), v34, v32, v31, v33 <= v35))
    {
      arrangedVariantsArray4 = [keyCopy arrangedVariantsArray];
      primaryVariant = [keyCopy primaryVariant];
      [arrangedVariantsArray4 removeObject:primaryVariant];

      arrangedVariantsArray5 = [keyCopy arrangedVariantsArray];
      primaryVariant2 = [keyCopy primaryVariant];
      [arrangedVariantsArray5 insertObject:primaryVariant2 atIndex:0];

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      orderedKeysByRow = [(TUIKeyplane *)selfCopy orderedKeysByRow];
      v42 = [orderedKeysByRow countByEnumeratingWithState:&v77 objects:v86 count:16];
      v43 = 0;
      if (v42)
      {
        v44 = *v78;
        v69 = orderedKeysByRow;
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
              objc_enumerationMutation(orderedKeysByRow);
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
                    backingTree4 = [v55 backingTree];
                    backingTree5 = [keyCopy backingTree];
                    v59 = [backingTree4 isEqual:backingTree5];

                    if (v59)
                    {

                      orderedKeysByRow = v69;
                      v43 = v70;
                      v30 = selfCopy;
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

            orderedKeysByRow = v69;
            v46 = v70 + 1;
            v43 = v67;
            v45 = v68 + 1;
            v44 = v65;
            v30 = selfCopy;
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

      rowSizes = [(TUIKeyplane *)v30 rowSizes];
      v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
      v62 = [rowSizes objectForKey:v61];
      [v62 floatValue];
      v64 = v63;

      [keyCopy updateVariantOrderForSmallLayoutsWithKeyplaneWidth:v54 keyStartingPosition:typeCopy variantSelectorType:v64];
    }

    else
    {
      backingTree6 = [keyCopy backingTree];
      [keyCopy updateVariantOrderForMultilineSelectorWithRowLimit:{-[TUIKeyplane variantRowLimitForLayoutWithKey:variantSelectorType:](selfCopy, "variantRowLimitForLayoutWithKey:variantSelectorType:", backingTree6, typeCopy)}];
    }
  }
}

- (id)stringFromLayoutClass:(int64_t)class
{
  if (class > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E72D7668 + class);
  }
}

- (id)stringFromLayoutStyle:(int64_t)style
{
  if (style > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E72D7648 + style);
  }
}

- (id)stringFromLayoutType:(int64_t)type
{
  if (type > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E72D7628 + type);
  }
}

- (id)stringFromKeyboardType:(int64_t)type
{
  if (type > 5)
  {
    if (type > 8)
    {
      switch(type)
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

    if (type == 6)
    {
      return @"NamePhonePad";
    }

    else if (type == 7)
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
    if (type <= 2)
    {
      switch(type)
      {
        case 0:
          return @"Default";
        case 1:
          return @"ASCII";
        case 2:
          return @"NumbersAndPunctuation";
      }

LABEL_26:
      NSLog(&cfstr_KeyboardTypeLi.isa, a2, type);
      return @"Default";
    }

    if (type == 3)
    {
      return @"URL";
    }

    else if (type == 4)
    {
      return @"NumberPad";
    }

    else
    {
      return @"PhonePad";
    }
  }
}

- (id)sortedKeysForKeyplane:(id)keyplane
{
  selfCopy = self;
  v102 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v83 = [keyplaneCopy visualStyle] - 1;
  if (([keyplaneCopy isKanaPlane] & 1) != 0 || (objc_msgSend(keyplaneCopy, "name"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsString:", @"n10"), v5, v6) && v83 < 5)
  {
    v87 = 1;
    v7 = 2;
  }

  else
  {
    name = [keyplaneCopy name];
    v23 = [name containsString:@"Fudge"];

    v87 = 0;
    if (!v23)
    {
      goto LABEL_6;
    }

    v7 = 1;
  }

  [(TUIKeyplane *)selfCopy setLayoutType:v7, selfCopy];
LABEL_6:
  if (v83 >= 5)
  {
    v8 = 1.5;
  }

  else
  {
    v8 = 1.0;
  }

  keys = [keyplaneCopy keys];
  firstObject = [keys firstObject];
  [firstObject frame];
  v12 = v11;

  if (v12 < 15.0)
  {
    keys2 = [keyplaneCopy keys];
    v14 = [keys2 count];

    if (v14 >= 2)
    {
      v15 = 1;
      while (1)
      {
        keys3 = [keyplaneCopy keys];
        v17 = [keys3 objectAtIndex:v15];
        [v17 frame];
        v19 = v18;

        if (v19 > 15.0)
        {
          break;
        }

        ++v15;
        keys4 = [keyplaneCopy keys];
        v21 = [keys4 count];

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
  keysOrderedByPosition = [keyplaneCopy keysOrderedByPosition];
  v25 = [keysOrderedByPosition countByEnumeratingWithState:&v96 objects:v101 count:16];
  v85 = v4;
  if (!v25)
  {
    v58 = 0;
    v27 = 0;
    goto LABEL_76;
  }

  v26 = v25;
  obj = keysOrderedByPosition;
  v86 = 0;
  displayRowHint = 0;
  v27 = 0;
  v90 = 0;
  v28 = *v97;
  v82 = keyplaneCopy;
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
      shape = [v30 shape];
      if ([shape isEmpty])
      {
        goto LABEL_57;
      }

      shape2 = [v30 shape];
      [shape2 frame];
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
        [v30 setDisplayRowHint:(displayRowHint + 1)];
        v37 = [v30 copy];

        [v30 setDisplayRowHint:displayRowHint];
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
      displayRowHint = [v30 displayRowHint];
      v38 = [MEMORY[0x1E696AD98] numberWithInteger:displayRowHint];
      v39 = [v4 objectForKey:v38];

      if (v39)
      {
        v40 = [MEMORY[0x1E696AD98] numberWithInteger:displayRowHint];
        v41 = [v4 objectForKey:v40];
      }

      else
      {
        v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      displayType = [v30 displayType];
      if (displayType != [v90 displayType])
      {
        goto LABEL_42;
      }

      representedString = [v30 representedString];
      representedString2 = [v90 representedString];
      if (([representedString isEqualToString:representedString2] & 1) == 0)
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
          if ([(TUIKeyplane *)selfCopy layoutType]== 1)
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
        v54 = [MEMORY[0x1E696AD98] numberWithInteger:displayRowHint];
        [v4 setObject:v41 forKey:v54];

        goto LABEL_56;
      }

      displayType2 = [v30 displayType];

      v46 = displayType2 == 21;
      v4 = v85;
      if (v46)
      {
        goto LABEL_42;
      }

LABEL_56:

      shape = v90;
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

    keysOrderedByPosition = v59;
    keyplaneCopy = v82;

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
      if ([(TUIKeyplane *)selfCopy layoutType]== 1)
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
    [keysOrderedByPosition addObject:v62];
    v64 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "displayRowHint")}];
    [v4 setObject:keysOrderedByPosition forKey:v64];

LABEL_76:
  }

  else
  {
    keyplaneCopy = v82;
    v58 = v90;
  }

  if ([v4 count])
  {
    v91 = v58;
    v65 = keyplaneCopy;
    v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allKeys = [v4 allKeys];
    v68 = [allKeys sortedArrayUsingComparator:&__block_literal_global_4262];

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
            integerValue = [v74 integerValue];
            if (integerValue <= [v66 count])
            {
              if ([v74 integerValue])
              {
                integerValue2 = [v74 integerValue];
                v78 = v66;
                v79 = v75;
              }

              else
              {
                v78 = v66;
                v79 = v75;
                integerValue2 = 0;
              }

              [v78 insertObject:v79 atIndex:integerValue2];
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

    keyplaneCopy = v65;
    v58 = v91;
  }

  else
  {
    v66 = 0;
  }

  return v66;
}

- (double)heightMultiplierForRowNumber:(unint64_t)number
{
  defaultRowSet = [(TUIKeyplane *)self defaultRowSet];
  subtrees = [defaultRowSet subtrees];
  v6 = [subtrees count];

  v7 = 1.0;
  if (v6 > number)
  {
    subtrees2 = [defaultRowSet subtrees];
    v9 = [subtrees2 objectAtIndex:number];

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

- (int64_t)keyStyleForLayoutClass:(int64_t)class
{
  if (class > 4)
  {
    return -1;
  }

  else
  {
    return qword_1900C14F0[class];
  }
}

- (BOOL)needsResetFromKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  name = [(TUIKeyplane *)self name];
  name2 = [keyplaneCopy name];
  if ([name isEqualToString:name2] && (v7 = -[TUIKeyplane currentVariantType](self, "currentVariantType"), v7 == objc_msgSend(keyplaneCopy, "currentVariantType")) && -[TUIKeyplane hasSimilarLayoutToKeyplane:](self, "hasSimilarLayoutToKeyplane:", keyplaneCopy) && (v8 = -[TUIKeyplane layoutClass](self, "layoutClass"), v8 == objc_msgSend(keyplaneCopy, "layoutClass")))
  {
    fullTree = [(TUIKeyplane *)self fullTree];
    visualStyling = [fullTree visualStyling];
    fullTree2 = [keyplaneCopy fullTree];
    v12 = (([fullTree2 visualStyling] ^ visualStyling) & 0x3F) != 0;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)hasSimilarLayoutToKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  currentVariantType = [(TUIKeyplane *)self currentVariantType];
  if (currentVariantType == [keyplaneCopy currentVariantType] && (-[TUIKeyplane orderedKeysByRow](self, "orderedKeysByRow"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), objc_msgSend(keyplaneCopy, "orderedKeysByRow"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v6, v7 == v9))
  {
    orderedKeysByRow = [(TUIKeyplane *)self orderedKeysByRow];
    v11 = [orderedKeysByRow count];

    if (v11)
    {
      v12 = 0;
      while (1)
      {
        orderedKeysByRow2 = [(TUIKeyplane *)self orderedKeysByRow];
        v14 = [orderedKeysByRow2 objectAtIndex:v12];

        orderedKeysByRow3 = [keyplaneCopy orderedKeysByRow];
        v16 = [orderedKeysByRow3 objectAtIndex:v12];

        v11 = [v14 count];
        v17 = [v16 count];

        LOBYTE(v11) = v11 == v17;
        if (!v11)
        {
          break;
        }

        ++v12;
        orderedKeysByRow4 = [(TUIKeyplane *)self orderedKeysByRow];
        v19 = [orderedKeysByRow4 count];

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

- (double)finalSplitSizeForRightSide:(BOOL)side
{
  if (side)
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

- (id)candidateBarKeyFromKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  defaultRowSet = [(TUIKeyplane *)self defaultRowSet];
  subtrees = [defaultRowSet subtrees];

  if ([subtrees count])
  {
    v7 = [subtrees objectAtIndex:0];
    v8 = [(TUIKeyplane *)self keyRowFromTreeRow:v7 rowNumber:0 type:0];

    v9 = [v8 valueForKeyPath:@"@sum.multiplier"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [keyplaneCopy firstCachedKeyWithName:@"Candidate-Selection"];
  if (!v10)
  {
    keys = [keyplaneCopy keys];
    if ([keys count])
    {
      keys2 = [keyplaneCopy keys];
      v13 = [keys2 objectAtIndex:0];
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

  fullTree = [(TUIKeyplane *)self fullTree];
  [fullTree replaceKey:0 withKey:v10];

  [v9 floatValue];
  v16 = [TUIKey keyFromKBTree:v10 layoutType:2 layoutShape:0 multiplier:v15];

  return v16;
}

- (id)createPreparedKeyFromTree:(id)tree withMultiplier:(double)multiplier type:(int64_t)type shape:(int64_t)shape
{
  v7 = [TUIKey keyFromKBTree:tree layoutType:type layoutShape:shape multiplier:multiplier];
  fullTree = [(TUIKeyplane *)self fullTree];
  [v7 setKeyplane:fullTree];

  [v7 setStyle:{-[TUIKeyplane keyStyleForLayoutClass:](self, "keyStyleForLayoutClass:", -[TUIKeyplane layoutClass](self, "layoutClass"))}];
  [v7 setInGridLayout:{-[TUIKeyplane isGridLayout](self, "isGridLayout")}];

  return v7;
}

- (id)findRowSpanningDuplicatesForKeyplane:(id)keyplane
{
  v28 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([keyplaneCopy type] == 2)
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

          v9 = [keyplaneCopy cachedKeysByKeyName:*(*(&v22 + 1) + 8 * v8)];
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

                  name = [*(*(&v18 + 1) + 8 * i) name];
                  [dictionary setObject:v10 forKey:name];
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

  return dictionary;
}

- (id)keysForName:(id)name
{
  nameCopy = name;
  doubleHeightKeys = [(TUIKeyplane *)self doubleHeightKeys];
  v6 = [doubleHeightKeys objectForKey:nameCopy];

  return v6;
}

- (void)unduplicateTenKeySwitchKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  doubleHeightKeys = [(TUIKeyplane *)self doubleHeightKeys];
  name = [keyCopy name];
  v7 = [doubleHeightKeys objectForKey:name];
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
          doubleHeightKeys2 = [(TUIKeyplane *)self doubleHeightKeys];
          name2 = [v14 name];
          [doubleHeightKeys2 removeObjectForKey:name2];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    lastObject = [v9 lastObject];
    defaultRowSet = [(TUIKeyplane *)self defaultRowSet];
    subtrees = [defaultRowSet subtrees];
    lastObject2 = [subtrees lastObject];
    subtrees2 = [lastObject2 subtrees];

    [subtrees2 removeObject:lastObject];
    fullTree = [(TUIKeyplane *)self fullTree];
    [fullTree removeKey:lastObject];
  }
}

- (void)duplicateTenKeySwitchKey:(id)key
{
  v33[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  doubleHeightKeys = [(TUIKeyplane *)self doubleHeightKeys];
  name = [keyCopy name];
  v7 = [doubleHeightKeys objectForKey:name];

  if (!v7)
  {
    v8 = [keyCopy copy];
    [v8 setDisplayRowHint:{objc_msgSend(keyCopy, "displayRowHint") + 1}];
    v9 = MEMORY[0x1E695DF90];
    cache = [keyCopy cache];
    v11 = [v9 dictionaryWithDictionary:cache];

    v27 = v11;
    [v8 setCache:v11];
    defaultRowSet = [(TUIKeyplane *)self defaultRowSet];
    subtrees = [defaultRowSet subtrees];
    lastObject = [subtrees lastObject];
    subtrees2 = [lastObject subtrees];

    [subtrees2 insertObject:v8 atIndex:0];
    fullTree = [(TUIKeyplane *)self fullTree];
    [fullTree replaceKey:0 withKey:v8];

    fullTree2 = [(TUIKeyplane *)self fullTree];
    LOBYTE(subtrees) = objc_opt_respondsToSelector();

    if (subtrees)
    {
      fullTree3 = [(TUIKeyplane *)self fullTree];
      [fullTree3 updateCachedKeyList];
    }

    v33[0] = keyCopy;
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
          doubleHeightKeys2 = [(TUIKeyplane *)self doubleHeightKeys];
          name2 = [v24 name];
          [doubleHeightKeys2 setObject:v19 forKey:name2];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v21);
    }
  }
}

- (id)duplicateTreeForSplitMode:(id)mode
{
  v26 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  fullTree = [(TUIKeyplane *)self fullTree];
  v6 = [fullTree cachedKeysByKeyName:@"Space-Key"];

  if ([v6 count] < 2 || (objc_msgSend(v6, "objectAtIndex:", 1), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_15:
    v8 = [modeCopy copy];
    goto LABEL_16;
  }

  v8 = v7;
  if (![v7 isEqual:modeCopy])
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
        if (([v14 isEqual:{modeCopy, v21}] & 1) == 0)
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
    fullTree2 = [(TUIKeyplane *)self fullTree];
    [fullTree2 replaceKey:0 withKey:v8];
  }

  v17 = MEMORY[0x1E695DF90];
  cache = [modeCopy cache];
  dictionary = [v17 dictionaryWithDictionary:cache];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [dictionary setObject:&unk_1F03D8C78 forKey:@"KBsplitMode"];
  [v8 setCache:dictionary];
  [v8 setSplitMode:3];

  return v8;
}

- (BOOL)keyplaneKeyIsTenKeySwitchKey:(id)key
{
  keyCopy = key;
  name = [keyCopy name];
  v5 = [name hasSuffix:@"Switch-Key"];

  if (!v5)
  {
    goto LABEL_8;
  }

  name2 = [keyCopy name];
  if (![name2 hasPrefix:@"TenKey"])
  {
    name3 = [keyCopy name];
    if ([name3 hasPrefix:@"FiftyOn"])
    {

      goto LABEL_5;
    }

    name4 = [keyCopy name];
    v10 = [name4 hasPrefix:@"Korean10Key"];

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

- (BOOL)shouldDuplicateKey:(id)key forRow:(id)row
{
  keyCopy = key;
  rowCopy = row;
  if ([(TUIKeyplane *)self layoutClass]== 2)
  {
    v8 = [rowCopy subtreesWithProperty:@"KBinteractionType" value:&unk_1F03D8C60];
    if ([v8 count] <= 1 && objc_msgSend(keyCopy, "interactionType") == 15)
    {
      properties = [rowCopy properties];
      name = [keyCopy name];
      v11 = [properties objectForKey:name];
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

- (BOOL)shouldDuplicateTenKeySwitchKey:(id)key forTreeRow:(id)row forRowNumber:(unint64_t)number
{
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([(TUIKeyplane *)self layoutType]== 2 && [(TUIKeyplane *)self indexOfLastRow]- 1 == number && [(TUIKeyplane *)self keyplaneKeyIsTenKeySwitchKey:keyCopy])
  {
    fullTree = [(TUIKeyplane *)self fullTree];
    v9 = [fullTree firstCachedKeyWithName:@"Dictation-Key"];

    fullTree2 = [(TUIKeyplane *)self fullTree];
    v11 = [fullTree2 firstCachedKeyWithName:@"International-Key"];

    if (v11 && ([v11 visible] & 1) == 0)
    {
      if (v9 && [v9 visible])
      {
        fullTree3 = [(TUIKeyplane *)self fullTree];
        v15 = [fullTree3 cachedKeysByKeyName:@"Adaptive-Key"];

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

- (double)multiplierForKey:(id)key withProperties:(id)properties
{
  keyCopy = key;
  propertiesCopy = properties;
  name = [keyCopy name];
  v8 = [propertiesCopy objectForKey:name];

  if (v8 || ([keyCopy representedString], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(propertiesCopy, "objectForKey:", v9), v8 = objc_claimAutoreleasedReturnValue(), v9, v8) || (objc_msgSend(keyCopy, "name"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "rangeOfString:", @"_"), v16, v13 = 1.0, v17 == 1) && (objc_msgSend(keyCopy, "name"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "substringFromIndex:", 2), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(propertiesCopy, "objectForKey:", v19), v8 = objc_claimAutoreleasedReturnValue(), v19, v18, v8))
  {
    v10 = [propertiesCopy objectForKey:v8];

    if (v10)
    {
      v11 = [propertiesCopy objectForKey:v8];
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

- (id)keyRowFromTreeRow:(id)row rowNumber:(unint64_t)number type:(int64_t)type
{
  v296 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  if ([rowCopy type] == 7 || objc_msgSend(rowCopy, "type") == 4)
  {
    v238 = objc_alloc_init(MEMORY[0x1E695DF70]);
    properties = [rowCopy properties];
    v9 = [properties objectForKey:@"KBToggleKeys_Undo-Key"];
    if (v9)
    {
      v221 = 1;
    }

    else
    {
      properties2 = [rowCopy properties];
      v11 = [properties2 objectForKey:@"KBToggleKeys_Redo-Key"];
      v221 = v11 != 0;
    }

    properties3 = [rowCopy properties];
    v237 = [properties3 mutableCopy];

    name = [(UIKBTree *)self->_keylayout name];
    v14 = [name containsString:@"Numbers-And-Punctuation"];

    v220 = v14;
    if (v14)
    {
      name2 = [(UIKBTree *)self->_keylayout name];
      v16 = [name2 containsString:@"Alternate"];
    }

    else
    {
      v16 = 0;
    }

    selfCopy = self;
    v18 = number + 1;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rowset.Row%li", number + 1];
    v233 = selfCopy;
    keylayout = [(TUIKeyplane *)selfCopy keylayout];
    properties4 = [keylayout properties];
    v217 = v19;
    v22 = [properties4 objectForKey:v19];

    numberCopy = number;
    v224 = v22;
    if (v22)
    {
      v283 = 0u;
      v284 = 0u;
      v281 = 0u;
      v282 = 0u;
      allKeys = [v22 allKeys];
      v24 = [allKeys countByEnumeratingWithState:&v281 objects:v295 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            v28 = *(*(&v281 + 1) + 8 * i);
            v29 = [v224 objectForKey:v28];
            [v237 setObject:v29 forKey:v28];
          }

          v25 = [allKeys countByEnumeratingWithState:&v281 objects:v295 count:16];
        }

        while (v25);
      }

      number = numberCopy;
    }

    v30 = MEMORY[0x1E696AEC0];
    v31 = v233;
    v32 = [(TUIKeyplane *)v233 stringFromKeyboardType:type];
    v33 = [v30 stringWithFormat:@"Rowset.%@.Row%li", v32, v18];

    keylayout2 = [(TUIKeyplane *)v233 keylayout];
    properties5 = [keylayout2 properties];
    v216 = v33;
    v36 = [properties5 objectForKey:v33];

    v223 = v36;
    if (v36)
    {
      v279 = 0u;
      v280 = 0u;
      v277 = 0u;
      v278 = 0u;
      allKeys2 = [v36 allKeys];
      v38 = [allKeys2 countByEnumeratingWithState:&v277 objects:v294 count:16];
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
              objc_enumerationMutation(allKeys2);
            }

            v42 = *(*(&v277 + 1) + 8 * j);
            v43 = [v223 objectForKey:v42];
            [v237 setObject:v43 forKey:v42];
          }

          v39 = [allKeys2 countByEnumeratingWithState:&v277 objects:v294 count:16];
        }

        while (v39);
      }

      v31 = v233;
    }

    v219 = v16;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v273 = 0u;
    v274 = 0u;
    v275 = 0u;
    v276 = 0u;
    obj = [rowCopy subtrees];
    v44 = 0x1E696A000uLL;
    v235 = rowCopy;
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
            name3 = [v49 name];
            v57 = [name3 rangeOfString:@"Row"];

            name4 = [v49 name];
            v59 = [name4 length];

            if (v57 >= v59 || ([v49 name], v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v60, "substringFromIndex:", v57), v61 = objc_claimAutoreleasedReturnValue(), v60, -[TUIKeyplane keylayout](v31, "keylayout"), v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "properties"), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v63, "objectForKey:", v61), v64 = objc_claimAutoreleasedReturnValue(), v63, v62, v61, !v64))
            {
              keylayout3 = [(TUIKeyplane *)v31 keylayout];
              properties6 = [keylayout3 properties];
              name5 = [v49 name];
              v64 = [properties6 objectForKey:name5];
            }

            v271 = 0u;
            v272 = 0u;
            v269 = 0u;
            v270 = 0u;
            subtrees = [v49 subtrees];
            v239 = [subtrees countByEnumeratingWithState:&v269 objects:v292 count:16];
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
                    objc_enumerationMutation(subtrees);
                  }

                  v71 = *(*(&v269 + 1) + 8 * k);
                  shape = [v71 shape];

                  if (!shape)
                  {
                    shape2 = [MEMORY[0x1E69DCB70] shape];
                    [v71 setShape:shape2];
                  }

                  [v71 setDisplayRowHint:number];
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
                    doubleHeightKeys = [(TUIKeyplane *)v31 doubleHeightKeys];
                    name6 = [v71 name];
                    v79 = [doubleHeightKeys objectForKey:name6];

                    if (v79)
                    {
                      concaveCorner = 2;
                    }

                    else
                    {
                      shape3 = [v231 shape];
                      concaveCorner = [shape3 concaveCorner];

                      if (concaveCorner)
                      {
                        shape4 = [v231 shape];
                        [shape4 setConcaveCorner:0];

                        shape5 = [v231 shape];
                        [shape5 setConcaveCornerOffset:{v45, v46}];

                        concaveCorner = 0;
                      }

                      v69 = v229;
                    }

                    v31 = v233;
                  }

                  else
                  {
                    concaveCorner = 0;
                  }

                  if (v74 != 1)
                  {
                    v47 = v47 + v76;
                  }

                  if (([v71 visible] & 1) == 0)
                  {
                    v85 = [MEMORY[0x1E696AD98] numberWithDouble:v76];
                    name7 = [v71 name];
                    [dictionary setObject:v85 forKey:name7];
LABEL_71:

                    continue;
                  }

                  if ((v74 + 1) <= 2)
                  {
                    [(TUIKeyplane *)v31 setNumberOfPaddingKeys:[(TUIKeyplane *)v31 numberOfPaddingKeys]+ 1];
                  }

                  v84 = [(TUIKeyplane *)v31 createPreparedKeyFromTree:v71 withMultiplier:v74 type:concaveCorner shape:v76];
                  [v238 addObject:v84];

                  if ([(TUIKeyplane *)v31 shouldDuplicateKey:v71 forRow:v235])
                  {
                    v85 = [(TUIKeyplane *)v31 duplicateTreeForSplitMode:v71];
                    [v85 name];
                    v87 = v86 = v31;
                    name8 = [v71 name];
                    [v237 setObject:v87 forKey:name8];

                    v89 = v236;
                    if (!v236)
                    {
                      subtrees2 = [v231 subtrees];
                      v89 = [subtrees2 mutableCopy];
                    }

                    v236 = v89;
                    [v89 insertObject:v85 atIndex:{objc_msgSend(v238, "count")}];
                    name7 = [(TUIKeyplane *)v86 createPreparedKeyFromTree:v85 withMultiplier:v74 type:concaveCorner shape:v76];
                    [v238 addObject:name7];
                    v31 = v86;
                    number = numberCopy;
                    goto LABEL_71;
                  }
                }

                v239 = [subtrees countByEnumeratingWithState:&v269 objects:v292 count:16];
              }

              while (v239);
            }

            if (v236)
            {
              v92 = [v236 mutableCopy];
              [v231 setSubtrees:v92];

              [v236 removeAllObjects];
              name11 = v236;
              v236 = 0;
              rowCopy = v235;
              goto LABEL_101;
            }

            v236 = 0;
            rowCopy = v235;
            goto LABEL_102;
          }

          shape6 = [v49 shape];

          if (!shape6)
          {
            shape7 = [MEMORY[0x1E69DCB70] shape];
            [v49 setShape:shape7];
          }

          [v49 setDisplayRowHint:number];
          if ([(TUIKeyplane *)v31 indexOfLastRow]- 1 == number && [(TUIKeyplane *)v31 keyplaneKeyIsTenKeySwitchKey:v49])
          {
            v52 = [(TUIKeyplane *)v31 shouldDuplicateTenKeySwitchKey:v49 forTreeRow:rowCopy forRowNumber:number];
            doubleHeightKeys2 = [(TUIKeyplane *)v31 doubleHeightKeys];
            name9 = [v49 name];
            v55 = [doubleHeightKeys2 objectForKey:name9];

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
            doubleHeightKeys3 = [(TUIKeyplane *)v31 doubleHeightKeys];
            name10 = [v49 name];
            v97 = [doubleHeightKeys3 objectForKey:name10];

            if (v97)
            {
              v98 = 2;
            }

            else
            {
              shape8 = [v49 shape];
              concaveCorner2 = [shape8 concaveCorner];

              if (concaveCorner2)
              {
                shape9 = [v49 shape];
                [shape9 setConcaveCorner:0];

                shape10 = [v49 shape];
                [shape10 setConcaveCornerOffset:{v45, v46}];
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
            name11 = [v49 name];
            [dictionary setObject:v64 forKey:name11];
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

            if ([(TUIKeyplane *)v31 shouldDuplicateKey:v49 forRow:rowCopy])
            {
              v64 = [(TUIKeyplane *)v31 duplicateTreeForSplitMode:v49];
              name12 = [v64 name];
              name13 = [v49 name];
              [v237 setObject:name12 forKey:name13];

              v109 = v236;
              if (!v236)
              {
                subtrees3 = [rowCopy subtrees];
                v109 = [subtrees3 mutableCopy];
              }

              v236 = v109;
              if (([v109 containsObject:v64] & 1) == 0)
              {
                [v109 insertObject:v64 atIndex:{objc_msgSend(v238, "count")}];
                name11 = [(TUIKeyplane *)v31 createPreparedKeyFromTree:v64 withMultiplier:v94 type:v98 shape:v104];
                [v238 addObject:name11];
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

    if ([dictionary count])
    {
      allKeys3 = [dictionary allKeys];
      if ([allKeys3 containsObject:@"Dictation-Key"])
      {
        v112 = 1;
      }

      else
      {
        allKeys4 = [dictionary allKeys];
        v112 = [allKeys4 containsObject:@"NumberPad-Dictation"];
      }

      allKeys5 = [dictionary allKeys];
      v116 = [allKeys5 containsObject:@"International-Key"];

      v117 = [dictionary objectForKey:@"International-Key"];
      v118 = 0.0;
      v119 = 0.0;
      if (v117)
      {
        v120 = [dictionary objectForKey:@"International-Key"];
        [v120 doubleValue];
        v119 = v121;
      }

      v122 = [dictionary objectForKey:@"Dictation-Key"];
      if (v122)
      {
        v123 = [dictionary objectForKey:@"Dictation-Key"];
        [v123 doubleValue];
        v118 = v124;
      }

      v125 = [dictionary objectForKey:@"NumberPad-International"];

      v126 = [dictionary objectForKey:@"NumberPad-Dictation"];

      v127 = [dictionary objectForKey:@"NumberPad-Empty"];

      fullTree = [(TUIKeyplane *)v31 fullTree];
      [fullTree name];
      v130 = v129 = v31;
      v131 = [v130 hasPrefix:@"Dynamic-Thai-24-Key"];

      fullTree2 = [(TUIKeyplane *)v129 fullTree];
      v133 = [fullTree2 cachedKeysByKeyName:@"Adaptive-Key"];

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
            backingTree = [v145 backingTree];
            displayType = [backingTree displayType];

            if ((v112 & v116) == 0)
            {
              if (v116)
              {
                v148 = 1.0;
                v150 = displayType == 4;
              }

              else
              {
                if (!v112)
                {
                  continue;
                }

                v148 = 1.0;
                v150 = displayType == 13;
              }

              if (!v150 && displayType != 18)
              {
                if (displayType != 25)
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
            if (displayType == 18 || displayType == 25)
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
              backingTree2 = [v159 backingTree];
              displayType2 = [backingTree2 displayType];

              if (displayType2 == 13)
              {
                [v159 multiplier];
                [v159 setMultiplier:v118 + v171];
              }

              backingTree3 = [v159 backingTree];
              displayType3 = [backingTree3 displayType];

              if (displayType3 == 18)
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
                backingTree4 = [v159 backingTree];
                displayType4 = [backingTree4 displayType];

                if (displayType4 == 13)
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
            backingTree5 = [v188 backingTree];
            interactionType = [backingTree5 interactionType];
            if (!v125)
            {
              if (interactionType == 14)
              {
              }

              else
              {
                backingTree6 = [v188 backingTree];
                name14 = [backingTree6 name];
                v195 = [name14 containsString:@"NumberPad-Dot"];

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

            if (interactionType == 9)
            {
              goto LABEL_203;
            }

            backingTree7 = [v188 backingTree];
            if ([backingTree7 interactionType] == 5)
            {

              v44 = 0x1E696A000;
LABEL_203:

              v192 = 0.0;
LABEL_208:
              [v188 setMultiplier:v192];
              goto LABEL_209;
            }

            backingTree8 = [v188 backingTree];
            interactionType2 = [backingTree8 interactionType];

            if (!interactionType2)
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
                    backingTree9 = [v205 backingTree];
                    interactionType3 = [backingTree9 interactionType];

                    if (interactionType3 == 9)
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

      rowCopy = v235;
      number = numberCopy;
    }

    rowSizes = [(TUIKeyplane *)v31 rowSizes];
    v176 = [*(v44 + 3480) numberWithDouble:v47];
    v177 = [*(v44 + 3480) numberWithUnsignedInteger:number];
    [rowSizes setObject:v176 forKey:v177];

    if ([(TUIKeyplane *)v31 indexOfLastRow]== number)
    {
      cache = [(TUIKeyplane *)v31 cache];
      v179 = [*(v44 + 3480) numberWithBool:v226 & 1];
      v180 = [*(v44 + 3480) numberWithInteger:type];
      [cache setObject:v179 forKey:v180];
    }

    if (v236)
    {
      v181 = [v236 mutableCopy];
      [rowCopy setSubtrees:v181];

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

- (id)defaultKeysOrderedByRowForKeyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [keyplaneCopy subtreeWithType:3];
  [(TUIKeyplane *)self setKeylayout:v6];
  defaultRowSet = [(TUIKeyplane *)self defaultRowSet];
  subtrees = [defaultRowSet subtrees];
  -[TUIKeyplane setIndexOfLastRow:](self, "setIndexOfLastRow:", [subtrees count] - 1);
  if ([subtrees count])
  {
    v9 = 0;
    do
    {
      v10 = [subtrees objectAtIndex:v9];
      v11 = [(TUIKeyplane *)self keyRowFromTreeRow:v10 rowNumber:v9 type:0];
      if ([v11 count])
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
        [dictionary setObject:v11 forKey:v12];
      }

      ++v9;
    }

    while (v9 < [subtrees count]);
  }

  array = [MEMORY[0x1E695DF70] array];
  allKeys = [dictionary allKeys];
  v15 = [allKeys count];

  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
      v18 = [dictionary objectForKey:v17];

      if (v18)
      {
        [array addObject:v18];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
        [dictionary removeObjectForKey:v19];
      }

      ++v16;

      allKeys2 = [dictionary allKeys];
      v21 = [allKeys2 count];
    }

    while (v21);
  }

  return array;
}

- (id)rowSetForType:(int64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(TUIKeyplane *)self stringFromKeyboardType:type];
  v6 = [v4 stringWithFormat:@"_%@", v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  keylayout = [(TUIKeyplane *)self keylayout];
  subtrees = [keylayout subtrees];

  v9 = [subtrees countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(subtrees);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 type] == 15)
        {
          name = [v12 name];
          v14 = [name containsString:v6];

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }
      }

      v9 = [subtrees countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)rowsForKeyboardType:(int64_t)type
{
  if (!type)
  {
    [(TUIKeyplane *)self setCurrentVariantType:?];
    goto LABEL_8;
  }

  keylayout = [(TUIKeyplane *)self keylayout];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
LABEL_8:
    defaultKeysByRow = [(TUIKeyplane *)self defaultKeysByRow];
    goto LABEL_21;
  }

  keylayout2 = [(TUIKeyplane *)self keylayout];
  v8 = [keylayout2 orderedRowsForType:type];

  if ([v8 count])
  {
    if (-[TUIKeyplane currentVariantType](self, "currentVariantType") != type || (-[TUIKeyplane variantKeysByRow](self, "variantKeysByRow"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, !v10))
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
          keylayout3 = [(TUIKeyplane *)self keylayout];
          rowSet = [keylayout3 rowSet];
          subtrees = [rowSet subtrees];
          v19 = [subtrees count];

          if (v14 < v19 && (-[TUIKeyplane keylayout](self, "keylayout"), v20 = objc_claimAutoreleasedReturnValue(), [v20 rowSet], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "subtrees"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectAtIndex:", v14), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v15, "isEqualToTree:", v23), v23, v22, v21, v20, v24))
          {
            defaultKeysByRow2 = [(TUIKeyplane *)self defaultKeysByRow];
            v26 = [defaultKeysByRow2 objectAtIndex:v14];
            [v30 addObject:v26];
          }

          else
          {
            defaultKeysByRow2 = [(TUIKeyplane *)self keyRowFromTreeRow:v15 rowNumber:v14 type:type];
            if ([defaultKeysByRow2 count])
            {
              [v30 addObject:defaultKeysByRow2];
            }
          }

          ++v14;
        }

        while (v14 < [v13 count]);
      }

      [(TUIKeyplane *)self setVariantKeysByRow:v30, v28];
      [(TUIKeyplane *)self setCurrentVariantType:type];
      defaultKeysByRow = [(TUIKeyplane *)self variantKeysByRow];

      v8 = v29;
      goto LABEL_20;
    }

    variantKeysByRow = [(TUIKeyplane *)self variantKeysByRow];
  }

  else
  {
    variantKeysByRow = [(TUIKeyplane *)self defaultKeysByRow];
  }

  defaultKeysByRow = variantKeysByRow;
LABEL_20:

LABEL_21:

  return defaultKeysByRow;
}

- (BOOL)variantTypeIncludesSpaceBar:(int64_t)bar
{
  cache = [(TUIKeyplane *)self cache];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:bar];
  v6 = [cache objectForKey:v5];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (unint64_t)numberOfKeys
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  orderedKeysByRow = [(TUIKeyplane *)self orderedKeysByRow];
  v4 = [orderedKeysByRow countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(orderedKeysByRow);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) count];
      }

      v5 = [orderedKeysByRow countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  fullTree = [(TUIKeyplane *)self fullTree];
  name = [fullTree name];
  v5 = [name rangeOfString:@"_"];

  fullTree2 = [(TUIKeyplane *)self fullTree];
  name2 = [fullTree2 name];
  v8 = [name2 length];

  fullTree3 = [(TUIKeyplane *)self fullTree];
  name3 = [fullTree3 name];
  v11 = name3;
  if (v5 >= v8)
  {
    v13 = [name3 stringByReplacingOccurrencesOfString:@"Dynamic-" withString:&stru_1F03BA8F8];
  }

  else
  {
    v12 = [name3 substringToIndex:v5];
    v13 = [v12 stringByReplacingOccurrencesOfString:@"Dynamic-" withString:&stru_1F03BA8F8];
  }

  return v13;
}

- (void)updateKeyboardType:(int64_t)type
{
  v4 = [(TUIKeyplane *)self rowsForKeyboardType:type];
  [(TUIKeyplane *)self setVariantKeysByRow:v4];
}

+ (CGSize)sizeFromScreenTraits:(id)traits layout:(id)layout layoutClass:(int64_t)class
{
  traitsCopy = traits;
  layoutCopy = layout;
  +[TUIKeyplane baseHeightForLayout:layoutClass:landscape:](TUIKeyplane, "baseHeightForLayout:layoutClass:landscape:", layoutCopy, class, [traitsCopy isKeyboardMinorEdgeWidth] ^ 1);
  v10 = v9;
  [traitsCopy keyboardWidth];
  v12 = v11;
  if ([traitsCopy idiom] == 3)
  {
    [traitsCopy bounds];
    v14 = v13;
    [traitsCopy bounds];
    v16 = v15;
    [traitsCopy bounds];
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

    activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
    textInputTraits = [activeInstance textInputTraits];
    [textInputTraits preferredInputViewHeight];
    v28 = v27 + -16.0;

    if (v28 < v10 && v28 > 0.0)
    {
      v10 = v28;
    }

    goto LABEL_36;
  }

  if (class == 1)
  {
    if (![traitsCopy idiom])
    {
      [traitsCopy keyboardWidth];
      if (v18 > 400.0)
      {
        if ([traitsCopy isKeyboardMinorEdgeWidth])
        {
          v10 = v10 + 8.0;
        }
      }
    }

    if (([traitsCopy isKeyboardMinorEdgeWidth] & 1) == 0)
    {
      [MEMORY[0x1E69DCBE0] deviceSpecificPaddingForInterfaceOrientation:4 inputMode:0];
      v12 = v12 - (v19 + v20);
      v10 = v10 - (v21 + v22);
    }
  }

  if ([traitsCopy idiom] != 1 && !objc_msgSend(traitsCopy, "isFloating"))
  {
    goto LABEL_26;
  }

  if (class != 1)
  {
    [traitsCopy bounds];
    v12 = v30;
LABEL_26:
    if (class == 3)
    {
      if ([traitsCopy isKeyboardMinorEdgeWidth] && (objc_msgSend(traitsCopy, "keyboardWidth"), v31 < 834.0))
      {
        v10 = v10 + -3.0;
      }

      else if (([traitsCopy isKeyboardMinorEdgeWidth] & 1) == 0)
      {
        [traitsCopy keyboardWidth];
        if (v32 < 1194.0)
        {
          v10 = v10 + -6.0;
        }
      }
    }

    goto LABEL_33;
  }

  [TUIKeyplane baseHeightForLayout:layoutCopy layoutClass:1 landscape:0];
  v10 = v23 + 1.0;
  v12 = 320.0;
LABEL_33:
  screen = [traitsCopy screen];
  [screen scale];
  v35 = v34;
  screen2 = [traitsCopy screen];
  [screen2 nativeScale];
  v38 = v35 / v37;

  if (v38 > 1.0)
  {
    isFloating = [traitsCopy isFloating];
    v40 = round(v10 * v38);
    if ((isFloating & 1) == 0)
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

+ (CGSize)sizeBasisForLayoutClass:(int64_t)class
{
  if (class <= 1)
  {
    if (class)
    {
      if (class != 1)
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
    if (class == 2)
    {
      v3 = 1024.0;
      v4 = 0x4088000000000000;
      goto LABEL_13;
    }

    if (class != 3)
    {
      if (class == 4)
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

+ (double)baseHeightForLayout:(id)layout layoutClass:(int64_t)class landscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  layoutCopy = layout;
  if (landscapeCopy)
  {
    if ((class - 2) < 3)
    {
      v8 = dbl_1900C1518[class - 2];
      goto LABEL_19;
    }

    v9 = 0x4064000000000000;
LABEL_18:
    v8 = *&v9;
    goto LABEL_19;
  }

  if (class > 1)
  {
    if (class == 2 || class == 3)
    {
      v8 = 258.0;
      goto LABEL_19;
    }

    if (class == 4)
    {
      v8 = 325.0;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!class)
  {
    v8 = 132.0;
    goto LABEL_19;
  }

  if (class != 1)
  {
LABEL_17:
    v9 = 0x406B000000000000;
    goto LABEL_18;
  }

  [objc_opt_class() customHeightForLayout:layoutCopy];
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

+ (int64_t)layoutClassFromScreenDimensions:(CGSize)dimensions
{
  if (*MEMORY[0x1E695F060] == dimensions.width && *(MEMORY[0x1E695F060] + 8) == dimensions.height)
  {
    return -1;
  }

  if (dimensions.width > dimensions.height)
  {
    dimensions.width = dimensions.height;
  }

  if (dimensions.width < 320.0)
  {
    return 0;
  }

  if (dimensions.width < 730.0)
  {
    return 1;
  }

  if (dimensions.width < 815.0)
  {
    return 2;
  }

  if (dimensions.width >= 1024.0)
  {
    return 4;
  }

  return 3;
}

+ (int64_t)layoutClassFromKeyplaneName:(id)name
{
  nameCopy = name;
  if ([nameCopy containsString:@"Mini"])
  {
    v4 = 0;
  }

  else if ([nameCopy containsString:@"Small_"])
  {
    v4 = 1;
  }

  else if ([nameCopy containsString:@"Medium"])
  {
    v4 = 2;
  }

  else if ([nameCopy containsString:@"Large"])
  {
    v4 = 3;
  }

  else if ([nameCopy containsString:@"Grand"])
  {
    v4 = 4;
  }

  else
  {
    NSLog(&cfstr_ErrorNoMapping.isa, nameCopy);
    v4 = -1;
  }

  return v4;
}

+ (double)customHeightForLayout:(id)layout
{
  layoutCopy = layout;
  if ([&unk_1F03D8F90 containsObject:layoutCopy])
  {
    v4 = 240.0;
  }

  else if ([layoutCopy isEqualToString:@"Thai-24-Key"])
  {
    v4 = 265.0;
  }

  else if ([layoutCopy isEqualToString:@"QWERTY-Arabic"])
  {
    v4 = 250.0;
  }

  else if ([layoutCopy isEqualToString:@"AZERTY-Arabic"])
  {
    v4 = 250.0;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

+ (id)keyplaneFromKBTree:(id)tree withType:(int64_t)type
{
  treeCopy = tree;
  v6 = objc_alloc_init(TUIKeyplane);
  [(TUIKeyplane *)v6 setFullTree:treeCopy];
  [(TUIKeyplane *)v6 setEffectsType:+[TUIKeyplane defaultEffectsType]];
  name = [treeCopy name];
  [(TUIKeyplane *)v6 setLayoutClass:[TUIKeyplane layoutClassFromKeyplaneName:name]];

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
  v9 = [(TUIKeyplane *)v6 findRowSpanningDuplicatesForKeyplane:treeCopy];
  [(TUIKeyplane *)v6 setDoubleHeightKeys:v9];

  v10 = [(TUIKeyplane *)v6 defaultKeysOrderedByRowForKeyplane:treeCopy];
  [(TUIKeyplane *)v6 setDefaultKeysByRow:v10];

  v11 = [(TUIKeyplane *)v6 rowsForKeyboardType:type];
  [(TUIKeyplane *)v6 setVariantKeysByRow:v11];

  [(TUIKeyplane *)v6 setCurrentVariantType:type];

  return v6;
}

@end