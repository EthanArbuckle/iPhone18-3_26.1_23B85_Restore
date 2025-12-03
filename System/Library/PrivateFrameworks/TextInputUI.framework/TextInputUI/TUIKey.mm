@interface TUIKey
+ (id)keyFromKBTree:(id)tree;
+ (id)keyFromKBTree:(id)tree layoutType:(int64_t)type layoutShape:(int64_t)shape multiplier:(double)multiplier;
+ (int64_t)layoutTypeForKey:(id)key;
- (BOOL)isBaseKeyOnRight;
- (CGRect)frame;
- (CGRect)paddedFrame;
- (NSString)adjustedPrimaryVariantDisplayStringForSpecialCases;
- (id)description;
- (id)stringFromLayoutType:(int64_t)type;
- (id)stringFromShape:(int64_t)shape;
- (void)setKeyShape:(id)shape;
- (void)updateVariantOrderForMultilineSelectorWithRowLimit:(unint64_t)limit;
- (void)updateVariantOrderForSmallLayoutsWithKeyplaneWidth:(double)width keyStartingPosition:(unint64_t)position variantSelectorType:(int64_t)type;
@end

@implementation TUIKey

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUIKey *)self stringFromShape:[(TUIKey *)self layoutShape]];
  v6 = [(TUIKey *)self stringFromLayoutType:[(TUIKey *)self layoutType]];
  [(TUIKey *)self multiplier];
  v8 = v7;
  displayString = [(TUIKey *)self displayString];
  v10 = [v3 stringWithFormat:@"<%@: %p shape = %@; type = %@; multiplier = %0.2f; display = %@", v4, self, v5, v6, v8, displayString];;

  return v10;
}

- (id)stringFromLayoutType:(int64_t)type
{
  if ((type - 2) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E72D76A8 + type - 2);
  }
}

- (id)stringFromShape:(int64_t)shape
{
  if (shape > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E72D7690 + shape);
  }
}

- (NSString)adjustedPrimaryVariantDisplayStringForSpecialCases
{
  backingTree = [(TUIKey *)self backingTree];
  name = [backingTree name];
  v5 = [name isEqualToString:@"Apostrophe"];

  if (v5)
  {
    return @"'";
  }

  backingTree2 = [(TUIKey *)self backingTree];
  name2 = [backingTree2 name];
  v9 = [name2 isEqualToString:@"Quotation-Mark"];

  if (v9)
  {
    return @"";
  }

  else
  {
    return 0;
  }
}

- (void)updateVariantOrderForMultilineSelectorWithRowLimit:(unint64_t)limit
{
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  arrangedVariantsArray = [(TUIKey *)self arrangedVariantsArray];
  v6 = [arrangedVariantsArray count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
    do
    {
      arrangedVariantsArray2 = [(TUIKey *)self arrangedVariantsArray];
      v11 = [arrangedVariantsArray2 objectAtIndexedSubscript:v8];

      if (v9)
      {
        [v17 insertObject:v11 atIndex:v7 * limit];
        v12 = v8 % limit;
        v9 = v8 % limit == 1 && v7 != 0;
      }

      else
      {
        [v17 addObject:v11];
        v12 = v8 % limit;
        v9 = 1;
      }

      if (v8)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        ++v7;
      }

      ++v8;
      arrangedVariantsArray3 = [(TUIKey *)self arrangedVariantsArray];
      v16 = [arrangedVariantsArray3 count];
    }

    while (v8 < v16);
  }

  [(TUIKey *)self setArrangedVariantsArray:v17];
}

- (void)updateVariantOrderForSmallLayoutsWithKeyplaneWidth:(double)width keyStartingPosition:(unint64_t)position variantSelectorType:(int64_t)type
{
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  arrangedVariantsArray = [(TUIKey *)self arrangedVariantsArray];
  v10 = [arrangedVariantsArray count];

  isBaseKeyOnRight = [(TUIKey *)self isBaseKeyOnRight];
  v12 = isBaseKeyOnRight;
  if (type == 1)
  {
    v13 = 1.33333333;
  }

  else
  {
    v13 = 1.0;
  }

  positionCopy = position;
  if (isBaseKeyOnRight && v10 < position)
  {
    v15 = v10 - 1;
  }

  else
  {
    v16 = v10 >= (width - positionCopy + 1.0) || isBaseKeyOnRight;
    if (v16 == 1)
    {
      v15 = -(v13 - positionCopy * v13);
    }

    else
    {
      v15 = 0;
    }
  }

  arrangedVariantsArray2 = [(TUIKey *)self arrangedVariantsArray];
  primaryVariant = [(TUIKey *)self primaryVariant];
  v19 = [arrangedVariantsArray2 indexOfObject:primaryVariant];

  if (v19 == v15)
  {
    goto LABEL_59;
  }

  arrangedVariantsArray3 = [(TUIKey *)self arrangedVariantsArray];
  v21 = [arrangedVariantsArray3 count];

  v22 = 0;
  if (v21)
  {
    v23 = 0;
    v24 = v13 * width;
    v25 = 1;
    v26 = 0.0;
    do
    {
      arrangedVariantsArray4 = [(TUIKey *)self arrangedVariantsArray];
      v28 = [arrangedVariantsArray4 objectAtIndexedSubscript:v23];

      secondaryDisplayStrings = [v28 secondaryDisplayStrings];
      if ([secondaryDisplayStrings count])
      {
        if ([v28 displayType] == 7)
        {
          supportsSupplementalDisplayString = 0;
LABEL_22:

          if ((supportsSupplementalDisplayString & 1) == 0 && !v22)
          {
            v22 = v28;
          }

          goto LABEL_25;
        }

        if (![v28 displayType])
        {
          supportsSupplementalDisplayString = [v28 supportsSupplementalDisplayString];
          goto LABEL_22;
        }
      }

LABEL_25:
      v31 = v26 + positionCopy;
      if (v25 & 1 | (v26 + positionCopy >= v24))
      {
        [v54 insertObject:v28 atIndex:{0, v31}];
      }

      else
      {
        [v54 addObject:{v28, v31}];
        v26 = v13 + v26;
      }

      v25 ^= 1u;

      ++v23;
      arrangedVariantsArray5 = [(TUIKey *)self arrangedVariantsArray];
      v33 = [arrangedVariantsArray5 count];
    }

    while (v23 < v33);
  }

  primaryVariant2 = [(TUIKey *)self primaryVariant];
  v35 = [v54 indexOfObject:primaryVariant2];

  if (v35 != v15)
  {
    if (v12)
    {
      if (v10 > v35 + 1 && (v35 & 0x8000000000000000) == 0)
      {
        v36 = v35 + 1;
        v37 = v35 + 2;
        do
        {
          v38 = v35;
          v39 = [v54 objectAtIndexedSubscript:v36];
          [v54 removeObject:v39];
          [v54 insertObject:v39 atIndex:v38];

          if (v10 <= v37)
          {
            break;
          }

          v35 = v38 - 1;
          v36 = v37++;
        }

        while (v38);
      }
    }

    else if (v35)
    {
      v40 = v10 - 2;
      if (((v10 - 2) & 0x8000000000000000) == 0)
      {
        v41 = 1;
        do
        {
          v42 = [v54 objectAtIndexedSubscript:0];
          [v54 removeObject:v42];
          [v54 insertObject:v42 atIndex:v40];
          if (v40 > 2)
          {
            v43 = -2;
          }

          else
          {
            v43 = -1;
          }

          if (v35 <= v41)
          {
            break;
          }

          v40 += v43;
          ++v41;
        }

        while ((v40 & 0x8000000000000000) == 0);
      }
    }

    primaryVariant3 = [(TUIKey *)self primaryVariant];
    if ([v54 indexOfObject:primaryVariant3])
    {
      primaryVariant4 = [(TUIKey *)self primaryVariant];
      v46 = [v54 indexOfObject:primaryVariant4];

      if (v46 == v15 || v15 >= v10)
      {
        goto LABEL_50;
      }

      primaryVariant5 = [(TUIKey *)self primaryVariant];
      [v54 removeObject:primaryVariant5];

      primaryVariant3 = [(TUIKey *)self primaryVariant];
      [v54 insertObject:primaryVariant3 atIndex:v15];
    }
  }

LABEL_50:
  v48 = v54;
  if (v22)
  {
    v49 = [v54 indexOfObject:v22];
    primaryVariant6 = [(TUIKey *)self primaryVariant];
    v51 = [v54 indexOfObject:primaryVariant6];

    v48 = v54;
    v52 = v49 - v51;
    if (v49 - v51 < 0)
    {
      v52 = v51 - v49;
    }

    if (v52 != 1)
    {
      [v54 removeObjectAtIndex:v49];
      if (v51)
      {
        v53 = v51 - 1;
      }

      else
      {
        v53 = 1;
      }

      [v54 insertObject:v22 atIndex:v53];
      v48 = v54;
    }
  }

  [(TUIKey *)self setArrangedVariantsArray:v48];

LABEL_59:
}

- (BOOL)isBaseKeyOnRight
{
  variantPopupBias = [(UIKBTree *)self->_backingTree variantPopupBias];

  if (variantPopupBias)
  {
    variantPopupBias2 = [(UIKBTree *)self->_backingTree variantPopupBias];
    if ([variantPopupBias2 isEqualToString:@"right"])
    {
LABEL_5:

      return 0;
    }

    variantPopupBias3 = [(UIKBTree *)self->_backingTree variantPopupBias];
    if ([variantPopupBias3 isEqualToString:@"fixed-right"])
    {

      goto LABEL_5;
    }

    variantPopupBias4 = [(UIKBTree *)self->_backingTree variantPopupBias];
    v8 = [variantPopupBias4 isEqualToString:@"strictly-right"];

    if (v8)
    {
      return 0;
    }

    variantPopupBias5 = [(UIKBTree *)self->_backingTree variantPopupBias];
    if ([variantPopupBias5 isEqualToString:@"left"])
    {
      goto LABEL_11;
    }

    variantPopupBias6 = [(UIKBTree *)self->_backingTree variantPopupBias];
    if ([variantPopupBias6 isEqualToString:@"fixed-left"])
    {

LABEL_11:
      return 1;
    }

    variantPopupBias7 = [(UIKBTree *)self->_backingTree variantPopupBias];
    v12 = [variantPopupBias7 isEqualToString:@"strictly-left"];

    if (v12)
    {
      return 1;
    }
  }

  return [(UIKBTree *)self->_backingTree dynamicDisplayCorner]== 4;
}

- (void)setKeyShape:(id)shape
{
  shapeCopy = shape;
  shape = [(UIKBTree *)self->_backingTree shape];
  v5 = [shapeCopy isEqual:shape];

  if ((v5 & 1) == 0)
  {
    [(UIKBTree *)self->_backingTree setShape:shapeCopy];
  }
}

- (CGRect)frame
{
  [(UIKBTree *)self->_backingTree frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)paddedFrame
{
  [(UIKBTree *)self->_backingTree paddedFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (int64_t)layoutTypeForKey:(id)key
{
  keyCopy = key;
  displayType = [keyCopy displayType];
  interactionType = [keyCopy interactionType];
  if (displayType <= 0x35)
  {
    if (((1 << displayType) & 0x38000304A4703CLL) != 0)
    {
      v6 = 3;
      goto LABEL_4;
    }

    if (displayType == 25)
    {
      v6 = 4;
      goto LABEL_4;
    }

    if (displayType == 50)
    {
      name = [keyCopy name];
      v9 = [name containsString:@"Middle"];

      v6 = v9;
      goto LABEL_4;
    }
  }

  v10 = 4;
  if (interactionType != 15)
  {
    v10 = 2;
  }

  if (((1 << interactionType) & 0x26000026E70) != 0)
  {
    v10 = 3;
  }

  if (interactionType <= 0x29)
  {
    v6 = v10;
  }

  else
  {
    v6 = 2;
  }

LABEL_4:

  return v6;
}

+ (id)keyFromKBTree:(id)tree layoutType:(int64_t)type layoutShape:(int64_t)shape multiplier:(double)multiplier
{
  treeCopy = tree;
  v10 = [TUIKey keyFromKBTree:treeCopy];
  [v10 setLayoutType:type];
  subtrees = [treeCopy subtrees];
  [v10 setArrangedVariantsArray:subtrees];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v10 setFlickableSet:v12];

  [v10 setLayoutShape:shape];
  [v10 setMultiplier:multiplier];
  [v10 setBackingTree:treeCopy];
  displayString = [treeCopy displayString];

  [v10 setDisplayString:displayString];

  return v10;
}

+ (id)keyFromKBTree:(id)tree
{
  treeCopy = tree;
  v4 = objc_alloc_init(TUIKey);
  subtrees = [treeCopy subtrees];
  [(TUIKey *)v4 setArrangedVariantsArray:subtrees];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(TUIKey *)v4 setFlickableSet:v6];

  [(TUIKey *)v4 setLayoutType:-1];
  [(TUIKey *)v4 setLayoutShape:0];
  [(TUIKey *)v4 setMultiplier:0.0];
  [(TUIKey *)v4 setBackingTree:treeCopy];
  displayString = [treeCopy displayString];

  [(TUIKey *)v4 setDisplayString:displayString];

  return v4;
}

@end