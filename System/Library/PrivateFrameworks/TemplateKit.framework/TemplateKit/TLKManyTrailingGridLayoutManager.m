@interface TLKManyTrailingGridLayoutManager
+ (id)computeTruncationForAlignments:(id)a3 indexForFirstTrailingColumn:(unint64_t)a4 totalEqualColumns:(unint64_t)a5;
- (CGSize)sizeForFittingSize:(CGSize)a3 forRow:(id)a4;
- (_NSRange)ignoreRange;
- (double)gridArrangement:(id)a3 widthOfColumnAtIndex:(int64_t)a4 spacingAfter:(double *)a5;
@end

@implementation TLKManyTrailingGridLayoutManager

- (CGSize)sizeForFittingSize:(CGSize)a3 forRow:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(TLKGridLayoutManager *)self cachedFittingSize];
  if (width != v9 || height != v8)
  {
    [(TLKGridLayoutManager *)self setCachedFittingSize:width, height];
    v11 = [(TLKGridLayoutManager *)self gridArrangement];
    [v11 layoutSizeFittingSize:{width, height}];
    [(TLKGridLayoutManager *)self setCachedGridSize:?];

    v12 = [(TLKGridLayoutManager *)self itemsForRows];
    v13 = [v12 count];

    if (v13)
    {
      v14 = 0;
      v15 = 0.0;
      do
      {
        v16 = [(TLKGridLayoutManager *)self itemsForRows];
        v17 = [v16 objectAtIndexedSubscript:v14];
        v18 = [v17 firstObject];

        [v18 sizeForTargetSize:{width, height}];
        if (v15 < v19)
        {
          v15 = v19;
        }

        ++v14;
        v20 = [(TLKGridLayoutManager *)self itemsForRows];
        v21 = [v20 count];
      }

      while (v14 < v21);
    }

    else
    {
      v15 = 0.0;
    }

    +[TLKLabelItem minimumWidthForLabelItem];
    v23 = vcvtmd_u64_f64((width - v15) / v22);
    v24 = [(TLKGridLayoutManager *)self alignments];
    v25 = [v24 count] - v23;

    if (v25 > 0)
    {
      v26 = 1;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(TLKManyTrailingGridLayoutManager *)self setIgnoreRange:v26, v25 & ~(v25 >> 63)];
    v27 = [(TLKGridLayoutManager *)self gridArrangement];
    [v27 reloadData];
  }

  v34.receiver = self;
  v34.super_class = TLKManyTrailingGridLayoutManager;
  [(TLKGridLayoutManager *)&v34 sizeForFittingSize:v7 forRow:width, height];
  v29 = v28;
  v31 = v30;

  v32 = v29;
  v33 = v31;
  result.height = v33;
  result.width = v32;
  return result;
}

- (double)gridArrangement:(id)a3 widthOfColumnAtIndex:(int64_t)a4 spacingAfter:(double *)a5
{
  v10.receiver = self;
  v10.super_class = TLKManyTrailingGridLayoutManager;
  [(TLKGridLayoutManager *)&v10 gridArrangement:a3 widthOfColumnAtIndex:a4 spacingAfter:a5];
  if ([(TLKManyTrailingGridLayoutManager *)self ignoreRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return *MEMORY[0x1E698B6F8];
  }

  v8 = [(TLKManyTrailingGridLayoutManager *)self ignoreRange];
  if (a4 < v8)
  {
    return *MEMORY[0x1E698B6F8];
  }

  result = 0.0;
  if (a4 - v8 >= v9)
  {
    return *MEMORY[0x1E698B6F8];
  }

  return result;
}

+ (id)computeTruncationForAlignments:(id)a3 indexForFirstTrailingColumn:(unint64_t)a4 totalEqualColumns:(unint64_t)a5
{
  v5 = a3;
  v6 = objc_opt_new();
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      if (v7)
      {
        v8 = &unk_1F3AA8300;
        v9 = v7;
      }

      else
      {
        v8 = &unk_1F3AA82F0;
        v9 = 0;
      }

      [v6 setObject:v8 atIndexedSubscript:v9];
      ++v7;
    }

    while (v7 < [v5 count]);
  }

  return v6;
}

- (_NSRange)ignoreRange
{
  p_ignoreRange = &self->_ignoreRange;
  location = self->_ignoreRange.location;
  length = p_ignoreRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end