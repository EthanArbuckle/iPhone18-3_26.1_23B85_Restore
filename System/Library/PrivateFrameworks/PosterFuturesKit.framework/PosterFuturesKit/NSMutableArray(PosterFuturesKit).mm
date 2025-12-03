@interface NSMutableArray(PosterFuturesKit)
- (uint64_t)pft_addObject:()PosterFuturesKit count:;
- (uint64_t)pft_addObject:()PosterFuturesKit orPlaceholder:;
- (void)pft_addNonNilObject:()PosterFuturesKit;
- (void)pft_addNonNilObjectIfNotPresent:()PosterFuturesKit;
- (void)pft_insertNonNilObject:()PosterFuturesKit atIndex:;
- (void)pft_removeObjectsPassingTest:()PosterFuturesKit;
- (void)pft_reverseObjectsInRange:()PosterFuturesKit;
- (void)pft_rotateRange:()PosterFuturesKit by:;
@end

@implementation NSMutableArray(PosterFuturesKit)

- (void)pft_addNonNilObject:()PosterFuturesKit
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

- (void)pft_addNonNilObjectIfNotPresent:()PosterFuturesKit
{
  v4 = a3;
  if (([self containsObject:?] & 1) == 0)
  {
    [self pft_addNonNilObject:v4];
  }
}

- (uint64_t)pft_addObject:()PosterFuturesKit orPlaceholder:
{
  if (!a3)
  {
    a3 = a4;
  }

  return [self addObject:a3];
}

- (uint64_t)pft_addObject:()PosterFuturesKit count:
{
  if (a4)
  {
    v4 = a4;
    v6 = result;
    do
    {
      result = [v6 addObject:a3];
      --v4;
    }

    while (v4);
  }

  return result;
}

- (void)pft_insertNonNilObject:()PosterFuturesKit atIndex:
{
  if (a3)
  {
    return [self insertObject:? atIndex:?];
  }

  return self;
}

- (void)pft_removeObjectsPassingTest:()PosterFuturesKit
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__NSMutableArray_PosterFuturesKit__pft_removeObjectsPassingTest___block_invoke;
  v7[3] = &unk_279A52E78;
  v8 = v4;
  v5 = v4;
  v6 = [self indexesOfObjectsPassingTest:v7];
  [self removeObjectsAtIndexes:v6];
}

- (void)pft_reverseObjectsInRange:()PosterFuturesKit
{
  if (a4 >= 2)
  {
    v8 = [self subarrayWithRange:?];
    pft_reversed = [v8 pft_reversed];

    [self replaceObjectsInRange:a3 withObjectsFromArray:{a4, pft_reversed}];
  }
}

- (void)pft_rotateRange:()PosterFuturesKit by:
{
  if (a4 >= 2)
  {
    v6 = (a4 & ((a5 % a4) >> 63)) + a5 % a4;
    if (v6)
    {
      v9 = [self count];
      v20.location = 0;
      v20.length = v9;
      v23.location = a3;
      v23.length = a4;
      v10 = NSIntersectionRange(v20, v23);
      if (a3 != v10.location || a4 != v10.length)
      {
        v13 = MEMORY[0x277CCACA8];
        v21.location = a3;
        v21.length = a4;
        v14 = NSStringFromRange(v21);
        v22.location = 0;
        v22.length = v9;
        v15 = NSStringFromRange(v22);
        v16 = [v13 stringWithFormat:@"rotation range (%@) out of bounds (%@)", v14, v15];

        v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE730] reason:v16 userInfo:0];
        objc_exception_throw(v17);
      }

      v11 = a3 + a4 - v6;
      v18 = [self subarrayWithRange:{v11, v6}];
      [self removeObjectsInRange:{v11, v6}];
      v12 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{a3, v6}];
      [self insertObjects:v18 atIndexes:v12];
    }
  }
}

@end