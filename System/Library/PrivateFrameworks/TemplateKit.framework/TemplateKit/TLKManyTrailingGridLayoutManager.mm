@interface TLKManyTrailingGridLayoutManager
+ (id)computeTruncationForAlignments:(id)alignments indexForFirstTrailingColumn:(unint64_t)column totalEqualColumns:(unint64_t)columns;
- (CGSize)sizeForFittingSize:(CGSize)size forRow:(id)row;
- (_NSRange)ignoreRange;
- (double)gridArrangement:(id)arrangement widthOfColumnAtIndex:(int64_t)index spacingAfter:(double *)after;
@end

@implementation TLKManyTrailingGridLayoutManager

- (CGSize)sizeForFittingSize:(CGSize)size forRow:(id)row
{
  height = size.height;
  width = size.width;
  rowCopy = row;
  [(TLKGridLayoutManager *)self cachedFittingSize];
  if (width != v9 || height != v8)
  {
    [(TLKGridLayoutManager *)self setCachedFittingSize:width, height];
    gridArrangement = [(TLKGridLayoutManager *)self gridArrangement];
    [gridArrangement layoutSizeFittingSize:{width, height}];
    [(TLKGridLayoutManager *)self setCachedGridSize:?];

    itemsForRows = [(TLKGridLayoutManager *)self itemsForRows];
    v13 = [itemsForRows count];

    if (v13)
    {
      v14 = 0;
      v15 = 0.0;
      do
      {
        itemsForRows2 = [(TLKGridLayoutManager *)self itemsForRows];
        v17 = [itemsForRows2 objectAtIndexedSubscript:v14];
        firstObject = [v17 firstObject];

        [firstObject sizeForTargetSize:{width, height}];
        if (v15 < v19)
        {
          v15 = v19;
        }

        ++v14;
        itemsForRows3 = [(TLKGridLayoutManager *)self itemsForRows];
        v21 = [itemsForRows3 count];
      }

      while (v14 < v21);
    }

    else
    {
      v15 = 0.0;
    }

    +[TLKLabelItem minimumWidthForLabelItem];
    v23 = vcvtmd_u64_f64((width - v15) / v22);
    alignments = [(TLKGridLayoutManager *)self alignments];
    v25 = [alignments count] - v23;

    if (v25 > 0)
    {
      v26 = 1;
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(TLKManyTrailingGridLayoutManager *)self setIgnoreRange:v26, v25 & ~(v25 >> 63)];
    gridArrangement2 = [(TLKGridLayoutManager *)self gridArrangement];
    [gridArrangement2 reloadData];
  }

  v34.receiver = self;
  v34.super_class = TLKManyTrailingGridLayoutManager;
  [(TLKGridLayoutManager *)&v34 sizeForFittingSize:rowCopy forRow:width, height];
  v29 = v28;
  v31 = v30;

  v32 = v29;
  v33 = v31;
  result.height = v33;
  result.width = v32;
  return result;
}

- (double)gridArrangement:(id)arrangement widthOfColumnAtIndex:(int64_t)index spacingAfter:(double *)after
{
  v10.receiver = self;
  v10.super_class = TLKManyTrailingGridLayoutManager;
  [(TLKGridLayoutManager *)&v10 gridArrangement:arrangement widthOfColumnAtIndex:index spacingAfter:after];
  if ([(TLKManyTrailingGridLayoutManager *)self ignoreRange]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return *MEMORY[0x1E698B6F8];
  }

  ignoreRange = [(TLKManyTrailingGridLayoutManager *)self ignoreRange];
  if (index < ignoreRange)
  {
    return *MEMORY[0x1E698B6F8];
  }

  result = 0.0;
  if (index - ignoreRange >= v9)
  {
    return *MEMORY[0x1E698B6F8];
  }

  return result;
}

+ (id)computeTruncationForAlignments:(id)alignments indexForFirstTrailingColumn:(unint64_t)column totalEqualColumns:(unint64_t)columns
{
  alignmentsCopy = alignments;
  v6 = objc_opt_new();
  if ([alignmentsCopy count])
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

    while (v7 < [alignmentsCopy count]);
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