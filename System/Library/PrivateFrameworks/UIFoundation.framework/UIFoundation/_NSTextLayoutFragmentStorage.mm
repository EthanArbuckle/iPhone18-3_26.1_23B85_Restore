@interface _NSTextLayoutFragmentStorage
- (BOOL)revalidateLayoutFragmentRangeForLocation:(id)location;
- (id)adjustedTextRangeWithTextRange:(id)range adjustment:(unint64_t)adjustment;
- (id)enumerateTextLayoutFragmentFromLocation:(id)location options:(int64_t)options usingBlock:(id)block;
- (id)enumerateTextLayoutFragmentInTextRange:(id)range options:(int64_t)options usingBlock:(id)block;
- (id)textLayoutFragmentForTextLocation:(id)location allowsTrailingEdge:(BOOL)edge;
- (int64_t)offsetDeltaForLastTextLayoutFragment;
- (void)invalidateTextLayoutFragmentsInTextRange:(id)range adjustTextRange:(BOOL)textRange;
- (void)invalidateTextLayoutFragmentsInTextRange:(id)range delta:(int64_t)delta;
- (void)setTextLayoutFragments:(id)fragments;
@end

@implementation _NSTextLayoutFragmentStorage

- (int64_t)offsetDeltaForLastTextLayoutFragment
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = objc_autoreleasePoolPush();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68___NSTextLayoutFragmentStorage_offsetDeltaForLastTextLayoutFragment__block_invoke;
  v8[3] = &unk_1E7266ED8;
  v8[4] = self;
  v8[5] = &v9;
  v7.receiver = self;
  v7.super_class = _NSTextLayoutFragmentStorage;
  v4 = [(_NSTextRunStorage *)&v7 enumerateObjectsFromLocation:0 options:1 usingBlock:v8];
  objc_autoreleasePoolPop(v3);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (id)adjustedTextRangeWithTextRange:(id)range adjustment:(unint64_t)adjustment
{
  rangeCopy = range;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___NSTextLayoutFragmentStorage_adjustedTextRangeWithTextRange_adjustment___block_invoke;
  v9[3] = &unk_1E7266DE8;
  objc_copyWeak(&v10, &location);
  v7 = [rangeCopy textRangeWithAdjustment:adjustment rangeProvider:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

- (id)enumerateTextLayoutFragmentInTextRange:(id)range options:(int64_t)options usingBlock:(id)block
{
  rangeCopy = range;
  blockCopy = block;
  offsetDeltaForLastTextLayoutFragment = [(_NSTextLayoutFragmentStorage *)self offsetDeltaForLastTextLayoutFragment];
  if (options)
  {
    endLocation = [rangeCopy endLocation];
    [rangeCopy location];
  }

  else
  {
    endLocation = [rangeCopy location];
    [rangeCopy endLocation];
  }
  v12 = ;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  if (offsetDeltaForLastTextLayoutFragment)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = options | 2;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90___NSTextLayoutFragmentStorage_enumerateTextLayoutFragmentInTextRange_options_usingBlock___block_invoke;
  v19[3] = &unk_1E7266E10;
  v22 = &v24;
  v23 = options & 1;
  v14 = v12;
  v20 = v14;
  v15 = blockCopy;
  v21 = v15;
  v16 = [(_NSTextRunStorage *)self enumerateObjectsFromLocation:endLocation options:optionsCopy usingBlock:v19];
  v17 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v17;
}

- (id)enumerateTextLayoutFragmentFromLocation:(id)location options:(int64_t)options usingBlock:(id)block
{
  locationCopy = location;
  blockCopy = block;
  if ((options & 2) != 0)
  {
    v11 = 0;
    optionsCopy2 = options;
  }

  else
  {
    offsetDeltaForLastTextLayoutFragment = [(_NSTextLayoutFragmentStorage *)self offsetDeltaForLastTextLayoutFragment];
    v11 = offsetDeltaForLastTextLayoutFragment != 0;
    if (offsetDeltaForLastTextLayoutFragment)
    {
      optionsCopy2 = options;
    }

    else
    {
      optionsCopy2 = options | 2;
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91___NSTextLayoutFragmentStorage_enumerateTextLayoutFragmentFromLocation_options_usingBlock___block_invoke;
  v16[3] = &unk_1E7266E38;
  v17 = blockCopy;
  v18 = (options & 2) == 0;
  v19 = v11;
  v13 = blockCopy;
  v14 = [(_NSTextRunStorage *)self enumerateObjectsFromLocation:locationCopy options:optionsCopy2 usingBlock:v16];

  return v14;
}

- (id)textLayoutFragmentForTextLocation:(id)location allowsTrailingEdge:(BOOL)edge
{
  locationCopy = location;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85___NSTextLayoutFragmentStorage_textLayoutFragmentForTextLocation_allowsTrailingEdge___block_invoke;
  v17[3] = &unk_1E7266E60;
  v7 = locationCopy;
  v18 = v7;
  v19 = &v20;
  v8 = [(_NSTextLayoutFragmentStorage *)self enumerateTextLayoutFragmentFromLocation:v7 options:0 usingBlock:v17];
  v9 = v21[5];
  if (!v9)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85___NSTextLayoutFragmentStorage_textLayoutFragmentForTextLocation_allowsTrailingEdge___block_invoke_2;
    v13[3] = &unk_1E7266E88;
    edgeCopy = edge;
    v14 = v7;
    v15 = &v20;
    v10 = [(_NSTextLayoutFragmentStorage *)self enumerateTextLayoutFragmentFromLocation:v14 options:1 usingBlock:v13];

    v9 = v21[5];
  }

  v11 = v9;

  _Block_object_dispose(&v20, 8);

  return v11;
}

- (void)setTextLayoutFragments:(id)fragments
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55___NSTextLayoutFragmentStorage_setTextLayoutFragments___block_invoke;
  v3[3] = &unk_1E7266EB0;
  v3[4] = self;
  [fragments enumerateObjectsUsingBlock:v3];
}

- (void)invalidateTextLayoutFragmentsInTextRange:(id)range delta:(int64_t)delta
{
  v6 = [(_NSTextLayoutFragmentStorage *)self adjustedTextRangeWithTextRange:range adjustment:6];
  if (v6)
  {
    [(_NSTextRunStorage *)self invalidateElementsInRange:v6 delta:delta];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)invalidateTextLayoutFragmentsInTextRange:(id)range adjustTextRange:(BOOL)textRange
{
  textRangeCopy = textRange;
  rangeCopy = range;
  if (textRangeCopy)
  {
    offsetDeltaForLastTextLayoutFragment = [(_NSTextLayoutFragmentStorage *)self offsetDeltaForLastTextLayoutFragment];
  }

  else
  {
    offsetDeltaForLastTextLayoutFragment = 0;
  }

  [(_NSTextLayoutFragmentStorage *)self invalidateTextLayoutFragmentsInTextRange:rangeCopy delta:offsetDeltaForLastTextLayoutFragment];
}

- (BOOL)revalidateLayoutFragmentRangeForLocation:(id)location
{
  locationCopy = location;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73___NSTextLayoutFragmentStorage_revalidateLayoutFragmentRangeForLocation___block_invoke;
  v8[3] = &unk_1E7266F00;
  v8[4] = &v21;
  v8[5] = &v15;
  v8[6] = &v9;
  v5 = [(_NSTextRunStorage *)self enumerateObjectsFromLocation:locationCopy options:0 usingBlock:v8];
  v6 = v22[5];
  if (v6)
  {
    [(_NSTextRunStorage *)self invalidateElementsInRange:v10[5] delta:0];
    [(_NSTextRunStorage *)self setObject:v22[5] forRange:v16[5]];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v6 != 0;
}

@end