@interface PFDeviceTimeRectCollection
- (CGRect)_timeRectInImageSpaceFromPointSpaceRect:(CGRect)rect screenScale:(double)scale;
- (CGRect)imageSpaceTimeRectForPointSpaceTimeRect:(CGRect)rect;
- (CGRect)maxTimeRect;
- (CGRect)maxTimeRectInImageSpace;
- (CGRect)minTimeRect;
- (CGRect)minTimeRectInImageSpace;
- (CGRect)nearestRectForPointSpaceHeight:(double)height;
- (CGRect)rectForPointSpaceHeight:(double)height;
- (PFDeviceTimeRectCollection)initWithInvalidCollection;
- (PFDeviceTimeRectCollection)initWithPointSpaceSortedTimeRects:(id)rects screenScale:(double)scale;
- (void)addTimeRectInOrder:(id)order;
@end

@implementation PFDeviceTimeRectCollection

- (void)addTimeRectInOrder:(id)order
{
  sortedTimeRects = self->_sortedTimeRects;
  orderCopy = order;
  [(NSMutableArray *)self->_sortedTimeRects insertObject:orderCopy atIndex:[(NSMutableArray *)sortedTimeRects indexOfObject:orderCopy inSortedRange:0 options:[(NSMutableArray *)sortedTimeRects count] usingComparator:1024, &__block_literal_global_5_11708]];
}

uint64_t __49__PFDeviceTimeRectCollection_addTimeRectInOrder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 rectValue];
  v6 = v5;
  [v4 rectValue];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

- (CGRect)rectForPointSpaceHeight:(double)height
{
  sortedTimeRects = self->_sortedTimeRects;
  v34[0] = 0;
  v34[1] = 0;
  v34[2] = 0x3FF0000000000000;
  *&v34[3] = height;
  v5 = [MEMORY[0x1E696B098] valueWithBytes:v34 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v6 = [(NSMutableArray *)sortedTimeRects indexOfObject:v5 inSortedRange:0 options:[(NSMutableArray *)self->_sortedTimeRects count] usingComparator:1024, &__block_literal_global_3_11713];

  if (v6 >= [(NSMutableArray *)self->_sortedTimeRects count]- 1)
  {
    v8 = [(NSMutableArray *)self->_sortedTimeRects count];
    v7 = v8 - 1;
    v6 = v8 - 2;
  }

  else
  {
    v7 = v6 + 1;
  }

  v9 = [(NSMutableArray *)self->_sortedTimeRects objectAtIndexedSubscript:v6];
  [v9 rectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(NSMutableArray *)self->_sortedTimeRects objectAtIndexedSubscript:v7];
  [v18 rectValue];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v26 - v17;
  v28 = 1.0;
  if (vabdd_f64(v26, v17) > 0.00000999999975)
  {
    v28 = (height - v17) / v27;
  }

  v29 = v11 + v28 * (v20 - v11);
  v30 = v13 + v28 * (v22 - v13);
  v31 = v15 + v28 * (v24 - v15);
  v32 = v17 + v28 * v27;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

uint64_t __54__PFDeviceTimeRectCollection_rectForPointSpaceHeight___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 rectValue];
  v6 = v5;
  [v4 rectValue];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

- (CGRect)nearestRectForPointSpaceHeight:(double)height
{
  sortedTimeRects = self->_sortedTimeRects;
  v20[0] = 0;
  v20[1] = 0;
  v20[2] = 0x3FF0000000000000;
  *&v20[3] = height;
  v5 = [MEMORY[0x1E696B098] valueWithBytes:v20 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v6 = [(NSMutableArray *)sortedTimeRects indexOfObject:v5 inSortedRange:0 options:[(NSMutableArray *)self->_sortedTimeRects count] usingComparator:1024, &__block_literal_global_11715];

  if (v6 > [(NSMutableArray *)self->_sortedTimeRects count]- 1)
  {
    v6 = [(NSMutableArray *)self->_sortedTimeRects count]- 1;
  }

  v7 = [(NSMutableArray *)self->_sortedTimeRects objectAtIndexedSubscript:v6];
  [v7 rectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

uint64_t __61__PFDeviceTimeRectCollection_nearestRectForPointSpaceHeight___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 rectValue];
  v6 = v5;
  [v4 rectValue];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

- (CGRect)imageSpaceTimeRectForPointSpaceTimeRect:(CGRect)rect
{
  screenScale = self->_screenScale;
  v4 = rect.origin.x * screenScale;
  v5 = rect.origin.y * screenScale;
  v6 = rect.size.width * screenScale;
  v7 = rect.size.height * screenScale;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_timeRectInImageSpaceFromPointSpaceRect:(CGRect)rect screenScale:(double)scale
{
  v4 = rect.origin.x * scale;
  v5 = rect.origin.y * scale;
  v6 = rect.size.width * scale;
  v7 = rect.size.height * scale;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)maxTimeRectInImageSpace
{
  [(PFDeviceTimeRectCollection *)self maxTimeRect];

  [PFDeviceTimeRectCollection _timeRectInImageSpaceFromPointSpaceRect:"_timeRectInImageSpaceFromPointSpaceRect:screenScale:" screenScale:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)maxTimeRect
{
  lastObject = [(NSMutableArray *)self->_sortedTimeRects lastObject];
  [lastObject rectValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)minTimeRectInImageSpace
{
  [(PFDeviceTimeRectCollection *)self minTimeRect];

  [PFDeviceTimeRectCollection _timeRectInImageSpaceFromPointSpaceRect:"_timeRectInImageSpaceFromPointSpaceRect:screenScale:" screenScale:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)minTimeRect
{
  firstObject = [(NSMutableArray *)self->_sortedTimeRects firstObject];
  [firstObject rectValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (PFDeviceTimeRectCollection)initWithInvalidCollection
{
  result = [(PFDeviceTimeRectCollection *)self initWithPointSpaceSortedTimeRects:MEMORY[0x1E695E0F0] screenScale:0.0];
  result->_invalid = 1;
  return result;
}

- (PFDeviceTimeRectCollection)initWithPointSpaceSortedTimeRects:(id)rects screenScale:(double)scale
{
  v10.receiver = self;
  v10.super_class = PFDeviceTimeRectCollection;
  rectsCopy = rects;
  v6 = [(PFDeviceTimeRectCollection *)&v10 init];
  v7 = [rectsCopy mutableCopy];

  sortedTimeRects = v6->_sortedTimeRects;
  v6->_sortedTimeRects = v7;

  v6->_screenScale = scale;
  v6->_invalid = 0;
  return v6;
}

@end