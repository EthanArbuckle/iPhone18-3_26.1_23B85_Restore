@interface NSRunStorage
+ (void)_setConsistencyCheckingEnabled:(BOOL)a3 superCheckEnabled:(BOOL)a4;
+ (void)initialize;
- (NSRunStorage)initWithElementSize:(unint64_t)a3 capacity:(unint64_t)a4;
- (NSRunStorage)initWithRunStorage:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_consistencyCheck:(int64_t)a3;
- (void)_consistencyError:(int64_t)a3 startAtZeroError:(BOOL)a4 cacheError:(BOOL)a5 inconsistentBlockError:(BOOL)a6;
- (void)_ensureCapacity:(unint64_t)a3;
- (void)_moveGapAndMergeWithBlockRange:(_NSRange)a3;
- (void)_moveGapToBlockIndex:(unint64_t)a3;
- (void)dealloc;
- (void)elementAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (void)insertElement:(void *)a3 range:(_NSRange)a4 coalesceRuns:(BOOL)a5;
- (void)replaceElementsInRange:(_NSRange)a3 withElement:(void *)a4 coalesceRuns:(BOOL)a5;
@end

@implementation NSRunStorage

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

- (void)dealloc
{
  if (self->_runs)
  {
    [(NSRunStorage *)self _deallocData];
  }

  v3.receiver = self;
  v3.super_class = NSRunStorage;
  [(NSRunStorage *)&v3 dealloc];
}

- (NSRunStorage)initWithElementSize:(unint64_t)a3 capacity:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = NSRunStorage;
  v6 = [(NSRunStorage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = 5;
    if (a4 > 5)
    {
      v8 = a4;
    }

    *(v6 + 3) = 0;
    *(v6 + 4) = v8;
    *(v6 + 1) = 0;
    *(v6 + 2) = a3;
    *(v6 + 40) = xmmword_18E856180;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    *(v6 + 4) = vnegq_f64(v9);
    *(v6 + 10) = 0;
    *(v6 + 11) = 0;
    [v6 _allocData:v8 * (a3 + 8)];
    if (!v7->_runs)
    {
      [(NSRunStorage *)v7 dealloc];
      return 0;
    }
  }

  return v7;
}

- (NSRunStorage)initWithRunStorage:(id)a3
{
  v4 = [(NSRunStorage *)self initWithElementSize:*(a3 + 2) capacity:*(a3 + 4)];
  v5 = v4;
  if (v4)
  {
    v4->_count = *(a3 + 1);
    v4->_numBlocks = *(a3 + 3);
    memmove(v4->_runs, *(a3 + 7), (v4->_elementSize + 8) * v4->_maxBlocks);
    *(a3 + 11) = v5->_gapBlockIndex;
    *(a3 + 5) = v5->_indexDeltaStartBlock;
    *(a3 + 6) = v5->_indexDelta;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithRunStorage:self];
}

- (void)elementAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  _NSBlockNumberForIndex(self, a3, a4);
  if (self->_gapBlockIndex <= v5)
  {
    v6 = self->_maxBlocks - self->_numBlocks;
  }

  else
  {
    v6 = 0;
  }

  return &self->_runs->var1[(self->_elementSize + 8) * (v6 + v5)];
}

- (void)replaceElementsInRange:(_NSRange)a3 withElement:(void *)a4 coalesceRuns:(BOOL)a5
{
  if (a3.length)
  {
    v7.location = v5;
    v7.length = v6;
    _replaceElements(self, v7, v6, a4, a5);
  }
}

- (void)insertElement:(void *)a3 range:(_NSRange)a4 coalesceRuns:(BOOL)a5
{
  if (a4.length)
  {
    v6.location = a4.location;
    v6.length = 0;
    _replaceElements(self, v6, a4.length, a3, a5);
  }
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = NSRunStorage;
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n", -[NSRunStorage description](&v14, sel_description)];
  [v3 appendFormat:@"    %lu %lu-byte element(s) in %lu block(s).  Capacity %lu blocks.\n", self->_count, self->_elementSize, self->_numBlocks, self->_maxBlocks];
  if (self->_indexDeltaStartBlock == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"    Index delta not currently in use.\n";
  }

  else
  {
    indexDelta = self->_indexDelta;
    indexDeltaStartBlock = self->_indexDeltaStartBlock;
    v4 = @"    Index delta of %ld, starting at block %lu.\n";
  }

  [v3 appendFormat:v4, indexDelta, indexDeltaStartBlock];
  [v3 appendFormat:@"    Gap at block index %lu.\n", self->_gapBlockIndex];
  if (self->_numBlocks)
  {
    [v3 appendString:@"    Block ranges: "];
    numBlocks = self->_numBlocks;
    if (numBlocks)
    {
      v6 = 0;
      for (i = 0; i < numBlocks; ++i)
      {
        if (self->_gapBlockIndex <= i)
        {
          v8 = self->_maxBlocks - numBlocks;
        }

        else
        {
          v8 = 0;
        }

        v9 = *(&self->_runs->var0 + (self->_elementSize + 8) * (v8 + i));
        if (i >= self->_indexDeltaStartBlock)
        {
          v9 += self->_indexDelta;
        }

        if (i)
        {
          [v3 appendFormat:@"%lu: {%lu, %lu}, ", i - 1, v6, v9 - v6];
          numBlocks = self->_numBlocks;
        }

        v6 = v9;
      }

      v10 = numBlocks - 1;
    }

    else
    {
      v9 = 0;
      v10 = -1;
    }

    [v3 appendFormat:@"%lu: {%lu, %lu}\n", v10, v9, self->_count - v9];
  }

  return v3;
}

- (void)_ensureCapacity:(unint64_t)a3
{
  maxBlocks = self->_maxBlocks;
  if (maxBlocks < a3)
  {
    if (maxBlocks >> 16)
    {
      v5 = ((5 * maxBlocks) >> 2) + 1;
    }

    else
    {
      v5 = maxBlocks + (maxBlocks >> 1) + 1;
    }

    if (maxBlocks <= 0xFFF)
    {
      v5 = (2 * maxBlocks) | 1;
    }

    if (v5 <= a3)
    {
      v5 = a3;
    }

    self->_maxBlocks = v5;
    numBlocks = self->_numBlocks;
    [(NSRunStorage *)self _reallocData:(self->_elementSize + 8) * v5];
    gapBlockIndex = self->_gapBlockIndex;
    v8 = self->_numBlocks;
    v9 = v8 > gapBlockIndex;
    v10 = v8 - gapBlockIndex;
    if (v9)
    {
      runs = self->_runs;
      v12 = self->_elementSize + 8;
      v13 = runs + (self->_maxBlocks - v10) * v12;

      memmove(v13, runs + v12 * (maxBlocks - numBlocks + gapBlockIndex), v12 * v10);
    }
  }
}

- (void)_moveGapToBlockIndex:(unint64_t)a3
{
  numBlocks = self->_numBlocks;
  maxBlocks = self->_maxBlocks;
  v7 = maxBlocks - numBlocks;
  if (maxBlocks != numBlocks)
  {
    gapBlockIndex = self->_gapBlockIndex;
    if (gapBlockIndex < a3)
    {
      runs = self->_runs;
      v10 = self->_elementSize + 8;
      v11 = runs + v10 * (v7 + gapBlockIndex);
      v12 = runs + v10 * gapBlockIndex;
      v13 = v10 * (a3 - gapBlockIndex);
LABEL_6:
      memmove(v12, v11, v13);
      goto LABEL_7;
    }

    if (gapBlockIndex > a3)
    {
      v14 = self->_runs;
      v15 = self->_elementSize + 8;
      v11 = v14 + v15 * a3;
      v12 = v14 + v15 * (maxBlocks - (numBlocks - a3));
      v13 = v15 * (gapBlockIndex - a3);
      goto LABEL_6;
    }
  }

LABEL_7:
  self->_gapBlockIndex = a3;
}

- (void)_moveGapAndMergeWithBlockRange:(_NSRange)a3
{
  length = a3.length;
  gapBlockIndex = self->_gapBlockIndex;
  if (gapBlockIndex < a3.location || gapBlockIndex > a3.location + a3.length)
  {
    [(NSRunStorage *)self _moveGapToBlockIndex:?];
  }

  else
  {
    self->_gapBlockIndex = a3.location;
  }

  self->_numBlocks -= length;
}

+ (void)_setConsistencyCheckingEnabled:(BOOL)a3 superCheckEnabled:(BOOL)a4
{
  _NSConsistencyCheckEnabled = a3;
  _NSSuperConsistencyCheckEnabled = a4;
  v4 = _NSPreviousValidDescription;
  v5 = _NSPreviousValidDescription;
  atomic_compare_exchange_strong(&_NSPreviousValidDescription, &v5, 0);
  if (v5 == v4)
  {
  }
}

- (void)_consistencyCheck:(int64_t)a3
{
  if (!a3 && (_NSSuperConsistencyCheckEnabled & 1) != 0)
  {
    v5 = _NSPreviousValidDescription;
    v6 = [(NSRunStorage *)self description];
    v7 = v5;
    atomic_compare_exchange_strong(&_NSPreviousValidDescription, &v7, v6);
    if (v7 == v5)
    {
      v8 = v6;
    }
  }

  numBlocks = self->_numBlocks;
  if (!numBlocks)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    goto LABEL_26;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  if (numBlocks + 1 > 1)
  {
    v15 = numBlocks + 1;
  }

  do
  {
    if (numBlocks == v11)
    {
      count = self->_count;
    }

    else
    {
      if (self->_gapBlockIndex <= v11)
      {
        v17 = self->_maxBlocks - numBlocks;
      }

      else
      {
        v17 = 0;
      }

      count = *(&self->_runs->var0 + (self->_elementSize + 8) * (v17 + v11));
      if (self->_indexDeltaStartBlock <= v11)
      {
        count += self->_indexDelta;
      }
    }

    if (v11)
    {
      if (v11 - 1 == self->_cachedBlock && (self->_cachedBlockRange.location != v10 || self->_cachedBlockRange.length != count - v10))
      {
        v14 = 1;
      }

      v13 |= count <= v10;
    }

    else
    {
      v12 |= count != 0;
    }

    ++v11;
    v10 = count;
  }

  while (v15 != v11);
  if ((v12 & 1) == 0)
  {
LABEL_26:
    if ((v14 & 1) == 0 && (v13 & 1) == 0)
    {
      return;
    }
  }

  [(NSRunStorage *)self _consistencyError:a3 startAtZeroError:v12 & 1 cacheError:v14 & 1 inconsistentBlockError:v13 & 1];
}

- (void)_consistencyError:(int64_t)a3 startAtZeroError:(BOOL)a4 cacheError:(BOOL)a5 inconsistentBlockError:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = [MEMORY[0x1E696AD60] stringWithFormat:@"NSRunStorage inconsistent (outData = %ld):\n", a3];
  v11 = v10;
  if (v8)
  {
    [v10 appendFormat:@"    Error: First block's index is not zero.\n"];
    if (!v7)
    {
LABEL_3:
      if (!v6)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v7)
  {
    goto LABEL_3;
  }

  [v11 appendFormat:@"    Error: Access cache range is invalid.\n"];
  if (v6)
  {
LABEL_4:
    [v11 appendFormat:@"    Error: A block's index is less than or equal to its preceding block's index.\n"];
  }

LABEL_5:
  if (_NSSuperConsistencyCheckEnabled == 1)
  {
    [v11 appendFormat:@"    Previous state: %@\n", _NSPreviousValidDescription];
  }

  [v11 appendFormat:@"    Current state: %@\n", -[NSRunStorage description](self, "description")];
  NSLog(@"%@", v11);
}

@end