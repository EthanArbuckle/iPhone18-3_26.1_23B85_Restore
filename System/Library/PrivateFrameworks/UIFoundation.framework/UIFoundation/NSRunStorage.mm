@interface NSRunStorage
+ (void)_setConsistencyCheckingEnabled:(BOOL)enabled superCheckEnabled:(BOOL)checkEnabled;
+ (void)initialize;
- (NSRunStorage)initWithElementSize:(unint64_t)size capacity:(unint64_t)capacity;
- (NSRunStorage)initWithRunStorage:(id)storage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_consistencyCheck:(int64_t)check;
- (void)_consistencyError:(int64_t)error startAtZeroError:(BOOL)zeroError cacheError:(BOOL)cacheError inconsistentBlockError:(BOOL)blockError;
- (void)_ensureCapacity:(unint64_t)capacity;
- (void)_moveGapAndMergeWithBlockRange:(_NSRange)range;
- (void)_moveGapToBlockIndex:(unint64_t)index;
- (void)dealloc;
- (void)elementAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (void)insertElement:(void *)element range:(_NSRange)range coalesceRuns:(BOOL)runs;
- (void)replaceElementsInRange:(_NSRange)range withElement:(void *)element coalesceRuns:(BOOL)runs;
@end

@implementation NSRunStorage

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
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

- (NSRunStorage)initWithElementSize:(unint64_t)size capacity:(unint64_t)capacity
{
  v11.receiver = self;
  v11.super_class = NSRunStorage;
  v6 = [(NSRunStorage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    capacityCopy = 5;
    if (capacity > 5)
    {
      capacityCopy = capacity;
    }

    *(v6 + 3) = 0;
    *(v6 + 4) = capacityCopy;
    *(v6 + 1) = 0;
    *(v6 + 2) = size;
    *(v6 + 40) = xmmword_18E856180;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    *(v6 + 4) = vnegq_f64(v9);
    *(v6 + 10) = 0;
    *(v6 + 11) = 0;
    [v6 _allocData:capacityCopy * (size + 8)];
    if (!v7->_runs)
    {
      [(NSRunStorage *)v7 dealloc];
      return 0;
    }
  }

  return v7;
}

- (NSRunStorage)initWithRunStorage:(id)storage
{
  v4 = [(NSRunStorage *)self initWithElementSize:*(storage + 2) capacity:*(storage + 4)];
  v5 = v4;
  if (v4)
  {
    v4->_count = *(storage + 1);
    v4->_numBlocks = *(storage + 3);
    memmove(v4->_runs, *(storage + 7), (v4->_elementSize + 8) * v4->_maxBlocks);
    *(storage + 11) = v5->_gapBlockIndex;
    *(storage + 5) = v5->_indexDeltaStartBlock;
    *(storage + 6) = v5->_indexDelta;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithRunStorage:self];
}

- (void)elementAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  _NSBlockNumberForIndex(self, index, range);
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

- (void)replaceElementsInRange:(_NSRange)range withElement:(void *)element coalesceRuns:(BOOL)runs
{
  if (range.length)
  {
    v7.location = v5;
    v7.length = v6;
    _replaceElements(self, v7, v6, element, runs);
  }
}

- (void)insertElement:(void *)element range:(_NSRange)range coalesceRuns:(BOOL)runs
{
  if (range.length)
  {
    v6.location = range.location;
    v6.length = 0;
    _replaceElements(self, v6, range.length, element, runs);
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

- (void)_ensureCapacity:(unint64_t)capacity
{
  maxBlocks = self->_maxBlocks;
  if (maxBlocks < capacity)
  {
    if (maxBlocks >> 16)
    {
      capacityCopy = ((5 * maxBlocks) >> 2) + 1;
    }

    else
    {
      capacityCopy = maxBlocks + (maxBlocks >> 1) + 1;
    }

    if (maxBlocks <= 0xFFF)
    {
      capacityCopy = (2 * maxBlocks) | 1;
    }

    if (capacityCopy <= capacity)
    {
      capacityCopy = capacity;
    }

    self->_maxBlocks = capacityCopy;
    numBlocks = self->_numBlocks;
    [(NSRunStorage *)self _reallocData:(self->_elementSize + 8) * capacityCopy];
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

- (void)_moveGapToBlockIndex:(unint64_t)index
{
  numBlocks = self->_numBlocks;
  maxBlocks = self->_maxBlocks;
  v7 = maxBlocks - numBlocks;
  if (maxBlocks != numBlocks)
  {
    gapBlockIndex = self->_gapBlockIndex;
    if (gapBlockIndex < index)
    {
      runs = self->_runs;
      v10 = self->_elementSize + 8;
      v11 = runs + v10 * (v7 + gapBlockIndex);
      v12 = runs + v10 * gapBlockIndex;
      v13 = v10 * (index - gapBlockIndex);
LABEL_6:
      memmove(v12, v11, v13);
      goto LABEL_7;
    }

    if (gapBlockIndex > index)
    {
      v14 = self->_runs;
      v15 = self->_elementSize + 8;
      v11 = v14 + v15 * index;
      v12 = v14 + v15 * (maxBlocks - (numBlocks - index));
      v13 = v15 * (gapBlockIndex - index);
      goto LABEL_6;
    }
  }

LABEL_7:
  self->_gapBlockIndex = index;
}

- (void)_moveGapAndMergeWithBlockRange:(_NSRange)range
{
  length = range.length;
  gapBlockIndex = self->_gapBlockIndex;
  if (gapBlockIndex < range.location || gapBlockIndex > range.location + range.length)
  {
    [(NSRunStorage *)self _moveGapToBlockIndex:?];
  }

  else
  {
    self->_gapBlockIndex = range.location;
  }

  self->_numBlocks -= length;
}

+ (void)_setConsistencyCheckingEnabled:(BOOL)enabled superCheckEnabled:(BOOL)checkEnabled
{
  _NSConsistencyCheckEnabled = enabled;
  _NSSuperConsistencyCheckEnabled = checkEnabled;
  v4 = _NSPreviousValidDescription;
  v5 = _NSPreviousValidDescription;
  atomic_compare_exchange_strong(&_NSPreviousValidDescription, &v5, 0);
  if (v5 == v4)
  {
  }
}

- (void)_consistencyCheck:(int64_t)check
{
  if (!check && (_NSSuperConsistencyCheckEnabled & 1) != 0)
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

  [(NSRunStorage *)self _consistencyError:check startAtZeroError:v12 & 1 cacheError:v14 & 1 inconsistentBlockError:v13 & 1];
}

- (void)_consistencyError:(int64_t)error startAtZeroError:(BOOL)zeroError cacheError:(BOOL)cacheError inconsistentBlockError:(BOOL)blockError
{
  blockErrorCopy = blockError;
  cacheErrorCopy = cacheError;
  zeroErrorCopy = zeroError;
  error = [MEMORY[0x1E696AD60] stringWithFormat:@"NSRunStorage inconsistent (outData = %ld):\n", error];
  v11 = error;
  if (zeroErrorCopy)
  {
    [error appendFormat:@"    Error: First block's index is not zero.\n"];
    if (!cacheErrorCopy)
    {
LABEL_3:
      if (!blockErrorCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!cacheErrorCopy)
  {
    goto LABEL_3;
  }

  [v11 appendFormat:@"    Error: Access cache range is invalid.\n"];
  if (blockErrorCopy)
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