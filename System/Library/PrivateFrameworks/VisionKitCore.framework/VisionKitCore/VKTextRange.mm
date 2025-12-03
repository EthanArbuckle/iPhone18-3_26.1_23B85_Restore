@interface VKTextRange
+ (VKTextRange)emptyRange;
+ (VKTextRange)rangeWithNSRange:(_NSRange)range;
+ (VKTextRange)rangeWithNSRanges:(id)ranges;
+ (VKTextRange)rangeWithStart:(id)start end:(id)end;
+ (VKTextRange)rangeWithStartOffset:(unint64_t)offset endOffset:(unint64_t)endOffset;
+ (VKTextRange)rangeWithVKRanges:(id)ranges;
+ (id)emptyRangeWithOffset:(unint64_t)offset;
+ (id)emptyRangeWithPosition:(id)position;
- (BOOL)containsTextPosition:(id)position;
- (BOOL)intersectsNSRange:(_NSRange)range;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNSNotFound;
- (NSArray)nsRangeArray;
- (NSArray)rangeArray;
- (VKTextPosition)end;
- (VKTextPosition)start;
- (VKTextRange)initWithIndexSet:(id)set;
- (VKTextRange)initWithRange:(_NSRange)range;
- (VKTextRange)initWithStart:(id)start end:(id)end;
- (VKTextRange)initWithStartOffset:(unint64_t)offset endOffset:(unint64_t)endOffset;
- (_NSRange)nsRange;
- (id)summaryDescription;
- (unint64_t)hash;
- (unint64_t)length;
- (unint64_t)rangeCount;
@end

@implementation VKTextRange

- (VKTextRange)initWithStart:(id)start end:(id)end
{
  endCopy = end;
  offset = [start offset];
  offset2 = [endCopy offset];

  return [(VKTextRange *)self initWithStartOffset:offset endOffset:offset2];
}

- (VKTextRange)initWithStartOffset:(unint64_t)offset endOffset:(unint64_t)endOffset
{
  v13.receiver = self;
  v13.super_class = VKTextRange;
  v6 = [(VKTextRange *)&v13 init];
  v7 = v6;
  if (v6)
  {
    if (offset >= endOffset)
    {
      offsetCopy = endOffset;
    }

    else
    {
      offsetCopy = offset;
    }

    if (offset <= endOffset)
    {
      offsetCopy2 = endOffset;
    }

    else
    {
      offsetCopy2 = offset;
    }

    if (offsetCopy == 0x7FFFFFFFFFFFFFFFLL || offsetCopy2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      indexSet = [MEMORY[0x1E696AC90] indexSet];
    }

    else
    {
      if (endOffset == offset)
      {
        v6->_emptyIndex = offsetCopy;
        return v7;
      }

      indexSet = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{offsetCopy, offsetCopy2 - offsetCopy}];
    }

    indexSet = v7->_indexSet;
    v7->_indexSet = indexSet;
  }

  return v7;
}

- (VKTextRange)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9.receiver = self;
  v9.super_class = VKTextRange;
  v5 = [(VKTextRange *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{location, length}];
    indexSet = v5->_indexSet;
    v5->_indexSet = v6;

    if (!length)
    {
      [(VKTextRange *)v5 setEmptyIndex:location];
    }
  }

  return v5;
}

- (VKTextRange)initWithIndexSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = VKTextRange;
  v5 = [(VKTextRange *)&v9 init];
  if (v5)
  {
    v6 = [setCopy copy];
    indexSet = v5->_indexSet;
    v5->_indexSet = v6;
  }

  return v5;
}

+ (VKTextRange)rangeWithStart:(id)start end:(id)end
{
  endCopy = end;
  startCopy = start;
  v8 = [[self alloc] initWithStart:startCopy end:endCopy];

  return v8;
}

+ (VKTextRange)rangeWithStartOffset:(unint64_t)offset endOffset:(unint64_t)endOffset
{
  v4 = [[self alloc] initWithStartOffset:offset endOffset:endOffset];

  return v4;
}

+ (id)emptyRangeWithPosition:(id)position
{
  positionCopy = position;
  v5 = [[self alloc] initWithStart:positionCopy end:positionCopy];

  return v5;
}

+ (id)emptyRangeWithOffset:(unint64_t)offset
{
  v3 = [[self alloc] initWithRange:{offset, 0}];

  return v3;
}

+ (VKTextRange)rangeWithNSRange:(_NSRange)range
{
  v3 = [[self alloc] initWithRange:{range.location, range.length}];

  return v3;
}

+ (VKTextRange)rangeWithNSRanges:(id)ranges
{
  rangesCopy = ranges;
  if ([rangesCopy count] == 1)
  {
    v4 = [VKTextRange alloc];
    firstObject = [rangesCopy firstObject];
    rangeValue = [firstObject rangeValue];
    v8 = [(VKTextRange *)v4 initWithRange:rangeValue, v7];
LABEL_5:

    goto LABEL_7;
  }

  if ([rangesCopy count] >= 2)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__VKTextRange_rangeWithNSRanges___block_invoke;
    v11[3] = &unk_1E7BE4E88;
    v12 = v9;
    firstObject = v9;
    [rangesCopy enumerateObjectsUsingBlock:v11];
    v8 = [[VKTextRange alloc] initWithIndexSet:firstObject];

    goto LABEL_5;
  }

  v8 = +[VKTextRange emptyRange];
LABEL_7:

  return v8;
}

uint64_t __33__VKTextRange_rangeWithNSRanges___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 rangeValue];

  return [v2 addIndexesInRange:{v4, v3}];
}

+ (VKTextRange)rangeWithVKRanges:(id)ranges
{
  rangesCopy = ranges;
  v4 = [rangesCopy count];
  if (v4 == 1)
  {
    firstObject = [rangesCopy firstObject];
LABEL_8:
    v9 = firstObject;
    goto LABEL_9;
  }

  if (v4 < 2)
  {
    firstObject = +[VKTextRange emptyRange];
    goto LABEL_8;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __33__VKTextRange_rangeWithVKRanges___block_invoke;
  v14 = &unk_1E7BE4EB0;
  v7 = v6;
  v15 = v7;
  v16 = &v17;
  [rangesCopy enumerateObjectsUsingBlock:&v11];
  v8 = [VKTextRange alloc];
  v9 = [(VKTextRange *)v8 initWithIndexSet:v7, v11, v12, v13, v14];
  if ([(VKTextRange *)v9 isEmpty])
  {
    [(VKTextRange *)v9 setEmptyIndex:v18[3]];
  }

  _Block_object_dispose(&v17, 8);
LABEL_9:

  return v9;
}

void __33__VKTextRange_rangeWithVKRanges___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 nsRange];
  [v3 addIndexesInRange:{v5, v6}];
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = [v4 startOffset];

  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  *(*(*(a1 + 40) + 8) + 24) = v9;
}

- (BOOL)containsTextPosition:(id)position
{
  if (!position)
  {
    return 0;
  }

  positionCopy = position;
  indexSet = [(VKTextRange *)self indexSet];
  offset = [positionCopy offset];

  LOBYTE(positionCopy) = [indexSet containsIndex:offset];
  return positionCopy;
}

+ (VKTextRange)emptyRange
{
  v2 = objc_alloc_init(VKTextRange);

  return v2;
}

- (BOOL)isEmpty
{
  indexSet = [(VKTextRange *)self indexSet];
  v3 = [indexSet count] == 0;

  return v3;
}

- (_NSRange)nsRange
{
  nsRangeArray = [(VKTextRange *)self nsRangeArray];
  if ([nsRangeArray count])
  {
    firstObject = [nsRangeArray firstObject];
    rangeValue = [firstObject rangeValue];

    lastObject = [nsRangeArray lastObject];
    rangeValue2 = [lastObject rangeValue];
    v9 = v8;

    v10 = v9 - rangeValue + rangeValue2;
  }

  else
  {
    rangeValue = [(VKTextRange *)self emptyIndex];
    v10 = 0;
  }

  v11 = rangeValue;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (NSArray)nsRangeArray
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!self->_nsRangeArray)
  {
    if ([(VKTextRange *)self isEmpty])
    {
      indexSet = [MEMORY[0x1E696B098] valueWithRange:{-[VKTextRange emptyIndex](self, "emptyIndex"), 0}];
      v8[0] = indexSet;
      vk_rangeArray = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      indexSet = [(VKTextRange *)self indexSet];
      vk_rangeArray = [indexSet vk_rangeArray];
    }

    nsRangeArray = self->_nsRangeArray;
    self->_nsRangeArray = vk_rangeArray;
  }

  v6 = self->_nsRangeArray;

  return v6;
}

- (NSArray)rangeArray
{
  rangeArray = self->_rangeArray;
  if (!rangeArray)
  {
    nsRangeArray = [(VKTextRange *)self nsRangeArray];
    v5 = [nsRangeArray vk_map:&__block_literal_global_7];
    v6 = self->_rangeArray;
    self->_rangeArray = v5;

    rangeArray = self->_rangeArray;
  }

  return rangeArray;
}

VKTextRange *__25__VKTextRange_rangeArray__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 rangeValue];

  return [VKTextRange rangeWithNSRange:v3, v2];
}

- (VKTextPosition)start
{
  nsRange = [(VKTextRange *)self nsRange];

  return [VKTextPosition positionWithOffset:nsRange];
}

- (VKTextPosition)end
{
  nsRange = [(VKTextRange *)self nsRange];

  return [VKTextPosition positionWithOffset:nsRange + v3];
}

- (BOOL)isNSNotFound
{
  indexSet = [(VKTextRange *)self indexSet];
  v4 = [indexSet firstIndex] == 0x7FFFFFFFFFFFFFFFLL || -[NSIndexSet lastIndex](self->_indexSet, "lastIndex") == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (unint64_t)rangeCount
{
  indexSet = [(VKTextRange *)self indexSet];
  rangeCount = [indexSet rangeCount];

  return rangeCount;
}

- (unint64_t)length
{
  indexSet = [(VKTextRange *)self indexSet];
  v3 = [indexSet count];

  return v3;
}

- (BOOL)intersectsNSRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  indexSet = [(VKTextRange *)self indexSet];
  LOBYTE(length) = [indexSet intersectsIndexesInRange:{location, length}];

  return length;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([equalCopy isEmpty] && -[VKTextRange isEmpty](self, "isEmpty"))
    {
      emptyIndex = [(VKTextRange *)self emptyIndex];
      v6 = emptyIndex == [equalCopy emptyIndex];
    }

    else
    {
      indexSet = [(VKTextRange *)self indexSet];
      indexSet2 = [equalCopy indexSet];
      v6 = [indexSet isEqualToIndexSet:indexSet2];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  indexSet = [(VKTextRange *)self indexSet];
  v3 = [indexSet hash];

  return v3;
}

- (id)summaryDescription
{
  v3 = MEMORY[0x1E696AEC0];
  startOffset = [(VKTextRange *)self startOffset];
  endOffset = [(VKTextRange *)self endOffset];
  v10.location = [(VKTextRange *)self nsRange];
  v6 = NSStringFromRange(v10);
  v7 = [v3 stringWithFormat:@"Start: %ld End:%ld Range: %@", startOffset, endOffset, v6];

  return v7;
}

@end