@interface PULayoutSectionSimpleSampler
- (PULayoutSectionSimpleSampler)initWithNumberOfVisibleItems:(int64_t)a3 numberOfRealItems:(int64_t)a4;
- (int64_t)indexForUnsampledIndex:(int64_t)a3 isMainItem:(BOOL *)a4;
- (int64_t)unsampledIndexForIndex:(int64_t)a3;
- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)a3 usingBlock:(id)a4;
@end

@implementation PULayoutSectionSimpleSampler

- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v15 = 0;
  if (location < (location + length))
  {
    v8 = length - 1;
    do
    {
      v9 = v8;
      numberOfVisibleItems = self->_numberOfVisibleItems;
      numberOfRealItems = self->_numberOfRealItems;
      if (numberOfRealItems <= numberOfVisibleItems)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _unsampledIndexForIndex(NSInteger, NSInteger, NSInteger)"}];
        [v14 handleFailureInFunction:v13 file:@"PULayoutSectioning.m" lineNumber:374 description:@"Invalid use"];
      }

      if (numberOfVisibleItems - 1 <= location)
      {
        v12 = numberOfRealItems - 1;
      }

      else
      {
        v12 = (numberOfVisibleItems - 1 + numberOfRealItems * location) / numberOfVisibleItems;
      }

      v7[2](v7, location, v12, &v15);
      if (v15)
      {
        break;
      }

      ++location;
      v8 = v9 - 1;
    }

    while (v9);
  }
}

- (int64_t)unsampledIndexForIndex:(int64_t)a3
{
  numberOfVisibleItems = self->_numberOfVisibleItems;
  numberOfRealItems = self->_numberOfRealItems;
  if (numberOfRealItems <= numberOfVisibleItems)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _unsampledIndexForIndex(NSInteger, NSInteger, NSInteger)"}];
    [v7 handleFailureInFunction:v8 file:@"PULayoutSectioning.m" lineNumber:374 description:@"Invalid use"];
  }

  if (numberOfVisibleItems - 1 <= a3)
  {
    return numberOfRealItems - 1;
  }

  else
  {
    return (numberOfVisibleItems - 1 + numberOfRealItems * a3) / numberOfVisibleItems;
  }
}

- (int64_t)indexForUnsampledIndex:(int64_t)a3 isMainItem:(BOOL *)a4
{
  numberOfVisibleItems = self->_numberOfVisibleItems;
  numberOfRealItems = self->_numberOfRealItems;
  if (numberOfRealItems <= numberOfVisibleItems)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _indexForUnsampledIndex(NSInteger, NSInteger, NSInteger)"}];
    [v14 handleFailureInFunction:v15 file:@"PULayoutSectioning.m" lineNumber:366 description:@"Invalid use"];
  }

  v9 = numberOfVisibleItems * a3 / numberOfRealItems;
  if (a4)
  {
    v10 = self->_numberOfVisibleItems;
    v11 = self->_numberOfRealItems;
    if (v11 <= v10)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _unsampledIndexForIndex(NSInteger, NSInteger, NSInteger)"}];
      [v16 handleFailureInFunction:v17 file:@"PULayoutSectioning.m" lineNumber:374 description:@"Invalid use"];
    }

    if (v10 - 1 <= v9)
    {
      v12 = v11 - 1;
    }

    else
    {
      v12 = (v10 - 1 + v11 * v9) / v10;
    }

    *a4 = v12 == a3;
  }

  return numberOfVisibleItems * a3 / numberOfRealItems;
}

- (PULayoutSectionSimpleSampler)initWithNumberOfVisibleItems:(int64_t)a3 numberOfRealItems:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PULayoutSectionSimpleSampler;
  result = [(PULayoutSectionSimpleSampler *)&v7 init];
  if (result)
  {
    result->_numberOfVisibleItems = a3;
    result->_numberOfRealItems = a4;
  }

  return result;
}

@end