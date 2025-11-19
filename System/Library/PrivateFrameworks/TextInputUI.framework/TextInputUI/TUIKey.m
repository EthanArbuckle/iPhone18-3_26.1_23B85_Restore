@interface TUIKey
+ (id)keyFromKBTree:(id)a3;
+ (id)keyFromKBTree:(id)a3 layoutType:(int64_t)a4 layoutShape:(int64_t)a5 multiplier:(double)a6;
+ (int64_t)layoutTypeForKey:(id)a3;
- (BOOL)isBaseKeyOnRight;
- (CGRect)frame;
- (CGRect)paddedFrame;
- (NSString)adjustedPrimaryVariantDisplayStringForSpecialCases;
- (id)description;
- (id)stringFromLayoutType:(int64_t)a3;
- (id)stringFromShape:(int64_t)a3;
- (void)setKeyShape:(id)a3;
- (void)updateVariantOrderForMultilineSelectorWithRowLimit:(unint64_t)a3;
- (void)updateVariantOrderForSmallLayoutsWithKeyplaneWidth:(double)a3 keyStartingPosition:(unint64_t)a4 variantSelectorType:(int64_t)a5;
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
  v9 = [(TUIKey *)self displayString];
  v10 = [v3 stringWithFormat:@"<%@: %p shape = %@; type = %@; multiplier = %0.2f; display = %@", v4, self, v5, v6, v8, v9];;

  return v10;
}

- (id)stringFromLayoutType:(int64_t)a3
{
  if ((a3 - 2) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E72D76A8 + a3 - 2);
  }
}

- (id)stringFromShape:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E72D7690 + a3);
  }
}

- (NSString)adjustedPrimaryVariantDisplayStringForSpecialCases
{
  v3 = [(TUIKey *)self backingTree];
  v4 = [v3 name];
  v5 = [v4 isEqualToString:@"Apostrophe"];

  if (v5)
  {
    return @"'";
  }

  v7 = [(TUIKey *)self backingTree];
  v8 = [v7 name];
  v9 = [v8 isEqualToString:@"Quotation-Mark"];

  if (v9)
  {
    return @"";
  }

  else
  {
    return 0;
  }
}

- (void)updateVariantOrderForMultilineSelectorWithRowLimit:(unint64_t)a3
{
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(TUIKey *)self arrangedVariantsArray];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [(TUIKey *)self arrangedVariantsArray];
      v11 = [v10 objectAtIndexedSubscript:v8];

      if (v9)
      {
        [v17 insertObject:v11 atIndex:v7 * a3];
        v12 = v8 % a3;
        v9 = v8 % a3 == 1 && v7 != 0;
      }

      else
      {
        [v17 addObject:v11];
        v12 = v8 % a3;
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
      v15 = [(TUIKey *)self arrangedVariantsArray];
      v16 = [v15 count];
    }

    while (v8 < v16);
  }

  [(TUIKey *)self setArrangedVariantsArray:v17];
}

- (void)updateVariantOrderForSmallLayoutsWithKeyplaneWidth:(double)a3 keyStartingPosition:(unint64_t)a4 variantSelectorType:(int64_t)a5
{
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(TUIKey *)self arrangedVariantsArray];
  v10 = [v9 count];

  v11 = [(TUIKey *)self isBaseKeyOnRight];
  v12 = v11;
  if (a5 == 1)
  {
    v13 = 1.33333333;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = a4;
  if (v11 && v10 < a4)
  {
    v15 = v10 - 1;
  }

  else
  {
    v16 = v10 >= (a3 - v14 + 1.0) || v11;
    if (v16 == 1)
    {
      v15 = -(v13 - v14 * v13);
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = [(TUIKey *)self arrangedVariantsArray];
  v18 = [(TUIKey *)self primaryVariant];
  v19 = [v17 indexOfObject:v18];

  if (v19 == v15)
  {
    goto LABEL_59;
  }

  v20 = [(TUIKey *)self arrangedVariantsArray];
  v21 = [v20 count];

  v22 = 0;
  if (v21)
  {
    v23 = 0;
    v24 = v13 * a3;
    v25 = 1;
    v26 = 0.0;
    do
    {
      v27 = [(TUIKey *)self arrangedVariantsArray];
      v28 = [v27 objectAtIndexedSubscript:v23];

      v29 = [v28 secondaryDisplayStrings];
      if ([v29 count])
      {
        if ([v28 displayType] == 7)
        {
          v30 = 0;
LABEL_22:

          if ((v30 & 1) == 0 && !v22)
          {
            v22 = v28;
          }

          goto LABEL_25;
        }

        if (![v28 displayType])
        {
          v30 = [v28 supportsSupplementalDisplayString];
          goto LABEL_22;
        }
      }

LABEL_25:
      v31 = v26 + v14;
      if (v25 & 1 | (v26 + v14 >= v24))
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
      v32 = [(TUIKey *)self arrangedVariantsArray];
      v33 = [v32 count];
    }

    while (v23 < v33);
  }

  v34 = [(TUIKey *)self primaryVariant];
  v35 = [v54 indexOfObject:v34];

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

    v44 = [(TUIKey *)self primaryVariant];
    if ([v54 indexOfObject:v44])
    {
      v45 = [(TUIKey *)self primaryVariant];
      v46 = [v54 indexOfObject:v45];

      if (v46 == v15 || v15 >= v10)
      {
        goto LABEL_50;
      }

      v47 = [(TUIKey *)self primaryVariant];
      [v54 removeObject:v47];

      v44 = [(TUIKey *)self primaryVariant];
      [v54 insertObject:v44 atIndex:v15];
    }
  }

LABEL_50:
  v48 = v54;
  if (v22)
  {
    v49 = [v54 indexOfObject:v22];
    v50 = [(TUIKey *)self primaryVariant];
    v51 = [v54 indexOfObject:v50];

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
  v3 = [(UIKBTree *)self->_backingTree variantPopupBias];

  if (v3)
  {
    v4 = [(UIKBTree *)self->_backingTree variantPopupBias];
    if ([v4 isEqualToString:@"right"])
    {
LABEL_5:

      return 0;
    }

    v5 = [(UIKBTree *)self->_backingTree variantPopupBias];
    if ([v5 isEqualToString:@"fixed-right"])
    {

      goto LABEL_5;
    }

    v7 = [(UIKBTree *)self->_backingTree variantPopupBias];
    v8 = [v7 isEqualToString:@"strictly-right"];

    if (v8)
    {
      return 0;
    }

    v9 = [(UIKBTree *)self->_backingTree variantPopupBias];
    if ([v9 isEqualToString:@"left"])
    {
      goto LABEL_11;
    }

    v10 = [(UIKBTree *)self->_backingTree variantPopupBias];
    if ([v10 isEqualToString:@"fixed-left"])
    {

LABEL_11:
      return 1;
    }

    v11 = [(UIKBTree *)self->_backingTree variantPopupBias];
    v12 = [v11 isEqualToString:@"strictly-left"];

    if (v12)
    {
      return 1;
    }
  }

  return [(UIKBTree *)self->_backingTree dynamicDisplayCorner]== 4;
}

- (void)setKeyShape:(id)a3
{
  v6 = a3;
  v4 = [(UIKBTree *)self->_backingTree shape];
  v5 = [v6 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(UIKBTree *)self->_backingTree setShape:v6];
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

+ (int64_t)layoutTypeForKey:(id)a3
{
  v3 = a3;
  v4 = [v3 displayType];
  v5 = [v3 interactionType];
  if (v4 <= 0x35)
  {
    if (((1 << v4) & 0x38000304A4703CLL) != 0)
    {
      v6 = 3;
      goto LABEL_4;
    }

    if (v4 == 25)
    {
      v6 = 4;
      goto LABEL_4;
    }

    if (v4 == 50)
    {
      v8 = [v3 name];
      v9 = [v8 containsString:@"Middle"];

      v6 = v9;
      goto LABEL_4;
    }
  }

  v10 = 4;
  if (v5 != 15)
  {
    v10 = 2;
  }

  if (((1 << v5) & 0x26000026E70) != 0)
  {
    v10 = 3;
  }

  if (v5 <= 0x29)
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

+ (id)keyFromKBTree:(id)a3 layoutType:(int64_t)a4 layoutShape:(int64_t)a5 multiplier:(double)a6
{
  v9 = a3;
  v10 = [TUIKey keyFromKBTree:v9];
  [v10 setLayoutType:a4];
  v11 = [v9 subtrees];
  [v10 setArrangedVariantsArray:v11];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v10 setFlickableSet:v12];

  [v10 setLayoutShape:a5];
  [v10 setMultiplier:a6];
  [v10 setBackingTree:v9];
  v13 = [v9 displayString];

  [v10 setDisplayString:v13];

  return v10;
}

+ (id)keyFromKBTree:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TUIKey);
  v5 = [v3 subtrees];
  [(TUIKey *)v4 setArrangedVariantsArray:v5];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(TUIKey *)v4 setFlickableSet:v6];

  [(TUIKey *)v4 setLayoutType:-1];
  [(TUIKey *)v4 setLayoutShape:0];
  [(TUIKey *)v4 setMultiplier:0.0];
  [(TUIKey *)v4 setBackingTree:v3];
  v7 = [v3 displayString];

  [(TUIKey *)v4 setDisplayString:v7];

  return v4;
}

@end