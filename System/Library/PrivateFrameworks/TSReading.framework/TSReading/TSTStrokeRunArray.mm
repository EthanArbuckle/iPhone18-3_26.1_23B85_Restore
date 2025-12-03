@interface TSTStrokeRunArray
- (TSTStrokeRunArray)initWithCount:(unsigned int)count;
- (id)description;
- (void)dealloc;
@end

@implementation TSTStrokeRunArray

- (TSTStrokeRunArray)initWithCount:(unsigned int)count
{
  v8.receiver = self;
  v8.super_class = TSTStrokeRunArray;
  v4 = [(TSTStrokeRunArray *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (count <= 1)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    v4->mCount = count;
    v4->mAllocCount = countCopy;
    v4->mStrokes = malloc_type_calloc(0x20uLL, countCopy, 0x1080040D89E363BuLL);
    v5->mLastLookup = 0;
    v5->mMaxWidth = 0.0;
    v5->mHasCustomStrokes = 0;
    pthread_rwlock_init(&v5->mRWLock, 0);
  }

  return v5;
}

- (void)dealloc
{
  mCount = self->mCount;
  if (mCount)
  {
    v4 = mCount - 1;
    v5 = 32 * mCount - 32;
    do
    {
      if (v4 >= self->mCount)
      {
        v6 = 0;
      }

      else
      {
        v6 = self->mStrokes + v5;
      }

      TSTStrokeRunSet(v6, 0, 0, 0, 0, 0);
      --v4;
      v5 -= 32;
    }

    while (v4 != -1);
  }

  mStrokes = self->mStrokes;
  if (mStrokes)
  {
    free(mStrokes);
    self->mStrokes = 0;
  }

  *&self->mCount = 0;
  pthread_rwlock_destroy(&self->mRWLock);
  v8.receiver = self;
  v8.super_class = TSTStrokeRunArray;
  [(TSTStrokeRunArray *)&v8 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->mHasCustomStrokes)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"<%@ %p count=%u hasCustomStrokes=%@ maxWidth=%f", v5, self, self->mCount, v6, *&self->mMaxWidth];
  v8 = v7;
  if (self->mStrokes)
  {
    [v7 appendString:@" strokeRuns={"];
    if (self->mCount)
    {
      v9 = 0;
      v10 = 0;
      v11 = @"}>";
      do
      {
        v12 = &self->mStrokes[v9];
        var0 = v12->var0;
        var1 = v12->var1;
        v15 = [v12->var2 description];
        if (*(&self->mStrokes[v9] + 24))
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        if ((*(&self->mStrokes[v9] + 24) & 2) != 0)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        [v8 appendFormat:@"\n  { start=%u -> stop=%u stroke=%@ valid=%@ custom=%@}", var0, var1, v15, v16, v17];
        ++v10;
        ++v9;
      }

      while (v10 < self->mCount);
    }

    else
    {
      v11 = @"}>";
    }
  }

  else
  {
    v11 = @" strokeRuns={empty}>";
  }

  [v8 appendString:v11];
  return v8;
}

@end