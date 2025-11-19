@interface VKTextRange
+ (VKTextRange)emptyRange;
+ (VKTextRange)rangeWithNSRange:(_NSRange)a3;
+ (VKTextRange)rangeWithNSRanges:(id)a3;
+ (VKTextRange)rangeWithStart:(id)a3 end:(id)a4;
+ (VKTextRange)rangeWithStartOffset:(unint64_t)a3 endOffset:(unint64_t)a4;
+ (VKTextRange)rangeWithVKRanges:(id)a3;
+ (id)emptyRangeWithOffset:(unint64_t)a3;
+ (id)emptyRangeWithPosition:(id)a3;
- (BOOL)containsTextPosition:(id)a3;
- (BOOL)intersectsNSRange:(_NSRange)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNSNotFound;
- (NSArray)nsRangeArray;
- (NSArray)rangeArray;
- (VKTextPosition)end;
- (VKTextPosition)start;
- (VKTextRange)initWithIndexSet:(id)a3;
- (VKTextRange)initWithRange:(_NSRange)a3;
- (VKTextRange)initWithStart:(id)a3 end:(id)a4;
- (VKTextRange)initWithStartOffset:(unint64_t)a3 endOffset:(unint64_t)a4;
- (_NSRange)nsRange;
- (id)summaryDescription;
- (unint64_t)hash;
- (unint64_t)length;
- (unint64_t)rangeCount;
@end

@implementation VKTextRange

- (VKTextRange)initWithStart:(id)a3 end:(id)a4
{
  v6 = a4;
  v7 = [a3 offset];
  v8 = [v6 offset];

  return [(VKTextRange *)self initWithStartOffset:v7 endOffset:v8];
}

- (VKTextRange)initWithStartOffset:(unint64_t)a3 endOffset:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = VKTextRange;
  v6 = [(VKTextRange *)&v13 init];
  v7 = v6;
  if (v6)
  {
    if (a3 >= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a3;
    }

    if (a3 <= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a3;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [MEMORY[0x1E696AC90] indexSet];
    }

    else
    {
      if (a4 == a3)
      {
        v6->_emptyIndex = v8;
        return v7;
      }

      v10 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v8, v9 - v8}];
    }

    indexSet = v7->_indexSet;
    v7->_indexSet = v10;
  }

  return v7;
}

- (VKTextRange)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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

- (VKTextRange)initWithIndexSet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VKTextRange;
  v5 = [(VKTextRange *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    indexSet = v5->_indexSet;
    v5->_indexSet = v6;
  }

  return v5;
}

+ (VKTextRange)rangeWithStart:(id)a3 end:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithStart:v7 end:v6];

  return v8;
}

+ (VKTextRange)rangeWithStartOffset:(unint64_t)a3 endOffset:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithStartOffset:a3 endOffset:a4];

  return v4;
}

+ (id)emptyRangeWithPosition:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithStart:v4 end:v4];

  return v5;
}

+ (id)emptyRangeWithOffset:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithRange:{a3, 0}];

  return v3;
}

+ (VKTextRange)rangeWithNSRange:(_NSRange)a3
{
  v3 = [[a1 alloc] initWithRange:{a3.location, a3.length}];

  return v3;
}

+ (VKTextRange)rangeWithNSRanges:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [VKTextRange alloc];
    v5 = [v3 firstObject];
    v6 = [v5 rangeValue];
    v8 = [(VKTextRange *)v4 initWithRange:v6, v7];
LABEL_5:

    goto LABEL_7;
  }

  if ([v3 count] >= 2)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__VKTextRange_rangeWithNSRanges___block_invoke;
    v11[3] = &unk_1E7BE4E88;
    v12 = v9;
    v5 = v9;
    [v3 enumerateObjectsUsingBlock:v11];
    v8 = [[VKTextRange alloc] initWithIndexSet:v5];

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

+ (VKTextRange)rangeWithVKRanges:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 == 1)
  {
    v5 = [v3 firstObject];
LABEL_8:
    v9 = v5;
    goto LABEL_9;
  }

  if (v4 < 2)
  {
    v5 = +[VKTextRange emptyRange];
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
  [v3 enumerateObjectsUsingBlock:&v11];
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

- (BOOL)containsTextPosition:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(VKTextRange *)self indexSet];
  v6 = [v4 offset];

  LOBYTE(v4) = [v5 containsIndex:v6];
  return v4;
}

+ (VKTextRange)emptyRange
{
  v2 = objc_alloc_init(VKTextRange);

  return v2;
}

- (BOOL)isEmpty
{
  v2 = [(VKTextRange *)self indexSet];
  v3 = [v2 count] == 0;

  return v3;
}

- (_NSRange)nsRange
{
  v3 = [(VKTextRange *)self nsRangeArray];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 rangeValue];

    v6 = [v3 lastObject];
    v7 = [v6 rangeValue];
    v9 = v8;

    v10 = v9 - v5 + v7;
  }

  else
  {
    v5 = [(VKTextRange *)self emptyIndex];
    v10 = 0;
  }

  v11 = v5;
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
      v3 = [MEMORY[0x1E696B098] valueWithRange:{-[VKTextRange emptyIndex](self, "emptyIndex"), 0}];
      v8[0] = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      v3 = [(VKTextRange *)self indexSet];
      v4 = [v3 vk_rangeArray];
    }

    nsRangeArray = self->_nsRangeArray;
    self->_nsRangeArray = v4;
  }

  v6 = self->_nsRangeArray;

  return v6;
}

- (NSArray)rangeArray
{
  rangeArray = self->_rangeArray;
  if (!rangeArray)
  {
    v4 = [(VKTextRange *)self nsRangeArray];
    v5 = [v4 vk_map:&__block_literal_global_7];
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
  v2 = [(VKTextRange *)self nsRange];

  return [VKTextPosition positionWithOffset:v2];
}

- (VKTextPosition)end
{
  v2 = [(VKTextRange *)self nsRange];

  return [VKTextPosition positionWithOffset:v2 + v3];
}

- (BOOL)isNSNotFound
{
  v3 = [(VKTextRange *)self indexSet];
  v4 = [v3 firstIndex] == 0x7FFFFFFFFFFFFFFFLL || -[NSIndexSet lastIndex](self->_indexSet, "lastIndex") == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (unint64_t)rangeCount
{
  v2 = [(VKTextRange *)self indexSet];
  v3 = [v2 rangeCount];

  return v3;
}

- (unint64_t)length
{
  v2 = [(VKTextRange *)self indexSet];
  v3 = [v2 count];

  return v3;
}

- (BOOL)intersectsNSRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(VKTextRange *)self indexSet];
  LOBYTE(length) = [v5 intersectsIndexesInRange:{location, length}];

  return length;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v4 isEmpty] && -[VKTextRange isEmpty](self, "isEmpty"))
    {
      v5 = [(VKTextRange *)self emptyIndex];
      v6 = v5 == [v4 emptyIndex];
    }

    else
    {
      v7 = [(VKTextRange *)self indexSet];
      v8 = [v4 indexSet];
      v6 = [v7 isEqualToIndexSet:v8];
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
  v2 = [(VKTextRange *)self indexSet];
  v3 = [v2 hash];

  return v3;
}

- (id)summaryDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(VKTextRange *)self startOffset];
  v5 = [(VKTextRange *)self endOffset];
  v10.location = [(VKTextRange *)self nsRange];
  v6 = NSStringFromRange(v10);
  v7 = [v3 stringWithFormat:@"Start: %ld End:%ld Range: %@", v4, v5, v6];

  return v7;
}

@end