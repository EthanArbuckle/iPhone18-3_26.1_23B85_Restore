@interface TSTCoordinateArray
- (BOOL)isEqual:(id)a3;
- (TSTCoordinateArray)initWithCount:(unsigned int)a3 atOffset:(unsigned int)a4;
- (id)description;
- (void)dealloc;
@end

@implementation TSTCoordinateArray

- (TSTCoordinateArray)initWithCount:(unsigned int)a3 atOffset:(unsigned int)a4
{
  v9.receiver = self;
  v9.super_class = TSTCoordinateArray;
  v6 = [(TSTCoordinateArray *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mOffset = a4;
    v6->mCount = a3;
    v6->mCoordinates = malloc_type_calloc(8uLL, a3 + 1, 0x100004000313F17uLL);
    v7->mAverage = 0.0;
    v7->mVisibleIndices = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{v7->mOffset, a3}];
    v7->mLayoutDirectionIsLeftToRight = 1;
    v7->mTableWidth = 0.0;
  }

  return v7;
}

- (void)dealloc
{
  mCoordinates = self->mCoordinates;
  if (mCoordinates)
  {
    free(mCoordinates);
  }

  v4.receiver = self;
  v4.super_class = TSTCoordinateArray;
  [(TSTCoordinateArray *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4 || *&self->mOffset != *(v4 + 8) || self->mAverage != *(v4 + 24))
  {
    return 0;
  }

  v5 = self->mCount - 1;
  do
  {
    v6 = v5 + 1 < 1;
    if (v5 + 1 < 1)
    {
      break;
    }

    v7 = self->mCoordinates[v5];
    v8 = *(*(v4 + 16) + 8 * v5--);
  }

  while (v7 == v8);
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@ %p offset=%u average=%f", NSStringFromClass(v4), self, self->mOffset, *&self->mAverage];
  v6 = v5;
  if (self->mCoordinates)
  {
    [v5 appendString:@" coordinates={"];
    if (self->mCount)
    {
      v7 = 0;
      v8 = @"}>";
      do
      {
        [v6 appendFormat:@"\n  { offset=%u -> coordinate=%f }", v7 + self->mOffset, *&self->mCoordinates[v7]];
        ++v7;
      }

      while (v7 < self->mCount);
    }

    else
    {
      v8 = @"}>";
    }
  }

  else
  {
    v8 = @" coordinates={empty}>";
  }

  [v6 appendString:v8];
  return v6;
}

@end