@interface PULayoutSectionSimpleSampler
- (PULayoutSectionSimpleSampler)initWithNumberOfVisibleItems:(int64_t)items numberOfRealItems:(int64_t)realItems;
- (int64_t)indexForUnsampledIndex:(int64_t)index isMainItem:(BOOL *)item;
- (int64_t)unsampledIndexForIndex:(int64_t)index;
- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)range usingBlock:(id)block;
@end

@implementation PULayoutSectionSimpleSampler

- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _unsampledIndexForIndex(NSInteger, NSInteger, NSInteger)"}];
        [currentHandler handleFailureInFunction:v13 file:@"PULayoutSectioning.m" lineNumber:374 description:@"Invalid use"];
      }

      if (numberOfVisibleItems - 1 <= location)
      {
        v12 = numberOfRealItems - 1;
      }

      else
      {
        v12 = (numberOfVisibleItems - 1 + numberOfRealItems * location) / numberOfVisibleItems;
      }

      blockCopy[2](blockCopy, location, v12, &v15);
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

- (int64_t)unsampledIndexForIndex:(int64_t)index
{
  numberOfVisibleItems = self->_numberOfVisibleItems;
  numberOfRealItems = self->_numberOfRealItems;
  if (numberOfRealItems <= numberOfVisibleItems)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _unsampledIndexForIndex(NSInteger, NSInteger, NSInteger)"}];
    [currentHandler handleFailureInFunction:v8 file:@"PULayoutSectioning.m" lineNumber:374 description:@"Invalid use"];
  }

  if (numberOfVisibleItems - 1 <= index)
  {
    return numberOfRealItems - 1;
  }

  else
  {
    return (numberOfVisibleItems - 1 + numberOfRealItems * index) / numberOfVisibleItems;
  }
}

- (int64_t)indexForUnsampledIndex:(int64_t)index isMainItem:(BOOL *)item
{
  numberOfVisibleItems = self->_numberOfVisibleItems;
  numberOfRealItems = self->_numberOfRealItems;
  if (numberOfRealItems <= numberOfVisibleItems)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _indexForUnsampledIndex(NSInteger, NSInteger, NSInteger)"}];
    [currentHandler handleFailureInFunction:v15 file:@"PULayoutSectioning.m" lineNumber:366 description:@"Invalid use"];
  }

  v9 = numberOfVisibleItems * index / numberOfRealItems;
  if (item)
  {
    v10 = self->_numberOfVisibleItems;
    v11 = self->_numberOfRealItems;
    if (v11 <= v10)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _unsampledIndexForIndex(NSInteger, NSInteger, NSInteger)"}];
      [currentHandler2 handleFailureInFunction:v17 file:@"PULayoutSectioning.m" lineNumber:374 description:@"Invalid use"];
    }

    if (v10 - 1 <= v9)
    {
      v12 = v11 - 1;
    }

    else
    {
      v12 = (v10 - 1 + v11 * v9) / v10;
    }

    *item = v12 == index;
  }

  return numberOfVisibleItems * index / numberOfRealItems;
}

- (PULayoutSectionSimpleSampler)initWithNumberOfVisibleItems:(int64_t)items numberOfRealItems:(int64_t)realItems
{
  v7.receiver = self;
  v7.super_class = PULayoutSectionSimpleSampler;
  result = [(PULayoutSectionSimpleSampler *)&v7 init];
  if (result)
  {
    result->_numberOfVisibleItems = items;
    result->_numberOfRealItems = realItems;
  }

  return result;
}

@end