@interface PXStoryRelatedLayoutGenerator
+ (BOOL)isExpectedKeyItemAtIndex:(int64_t)index;
+ (int64_t)_preferredNumberOfItemsForUserInterfaceIdiom:(int64_t)idiom;
+ (int64_t)preferredNumberOfItemsForExtendedTraitCollection:(id)collection;
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXStoryRelatedLayoutGenerator)initWithMetrics:(id)metrics;
- (UIEdgeInsets)scrollableOutsets;
- (const)_framesForItemInRange:(_NSRange)range;
- (void)_prepareIfNeeded;
- (void)adjustTargetScrollOffset:(CGPoint *)offset forVelocity:(CGPoint)velocity currentScrollOffset:(CGPoint)scrollOffset shouldHideContent:(BOOL *)content;
- (void)dealloc;
- (void)getFrames:(CGRect *)frames forItemsInRange:(_NSRange)range;
- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind;
- (void)invalidate;
@end

@implementation PXStoryRelatedLayoutGenerator

- (void)_prepareIfNeeded
{
  if (!self->_isPrepared)
  {
    [(PXStoryRelatedLayoutGenerator *)self itemCount];
    metrics = [(PXStoryRelatedLayoutGenerator *)self metrics];
    [metrics referenceSize];
    v6 = v5;
    v8 = v7;
    [metrics interitemSpacing];
    [metrics margins];
    v10 = v9;
    v12 = v11;
    v15 = v6 - (v13 + v14);
    layoutMode = [metrics layoutMode];
    if (layoutMode > 2)
    {
      v19 = v12;
      if (layoutMode == 3)
      {
        PXSizeGetAspectRatio();
      }
    }

    else
    {
      v17 = v8 - (v10 + v12);
      if (layoutMode == 1)
      {
        v19 = v12;
      }

      else if (layoutMode == 2)
      {
        if (v15 / 0.75 < v17)
        {
          v17 = v15 / 0.75;
        }

        v19 = v12 + fmax(v8 - v12 - v10 - v17, 0.0) * 0.5;
      }

      else
      {
        v19 = v12;
        if (!layoutMode)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedLayoutGenerator.m" lineNumber:212 description:@"Code which should be unreachable has been reached"];

          abort();
        }
      }
    }

    [metrics scrollOffset];
    [metrics offscreenFraction];
    PXClamp();
  }
}

- (const)_framesForItemInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  itemCount = [(PXStoryRelatedLayoutGenerator *)self itemCount];
  if (location + length > itemCount)
  {
    v9 = itemCount;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12.location = location;
    v12.length = length;
    v11 = NSStringFromRange(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedLayoutGenerator.m" lineNumber:183 description:{@"range %@ out of bounds (0..<%li)", v11, v9}];
  }

  [(PXStoryRelatedLayoutGenerator *)self _prepareIfNeeded];
  return &self->_itemFrames[location];
}

- (void)getFrames:(CGRect *)frames forItemsInRange:(_NSRange)range
{
  length = range.length;
  v6 = [(PXStoryRelatedLayoutGenerator *)self _framesForItemInRange:range.location, range.length];

  memcpy(frames, v6, 32 * length);
}

- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind
{
  if (!kind)
  {
    length = range.length;
    [(PXStoryRelatedLayoutGenerator *)self _framesForItemInRange:range.location, range.length];
    if (length)
    {
      PXRectGetCenter();
    }
  }
}

- (void)adjustTargetScrollOffset:(CGPoint *)offset forVelocity:(CGPoint)velocity currentScrollOffset:(CGPoint)scrollOffset shouldHideContent:(BOOL *)content
{
  *content = 0;
  v6 = 0.0;
  if (scrollOffset.x >= 0.0)
  {
    if (velocity.x >= 0.0)
    {
      if (velocity.x <= 0.0)
      {
        return;
      }

      v7 = 24;
      goto LABEL_7;
    }
  }

  else if (velocity.x <= 0.0)
  {
    *content = 1;
    v7 = 8;
LABEL_7:
    v6 = *(&self->_scrollableOutsets.top + v7);
  }

  offset->x = v6;
}

- (UIEdgeInsets)scrollableOutsets
{
  [(PXStoryRelatedLayoutGenerator *)self _prepareIfNeeded];
  top = self->_scrollableOutsets.top;
  left = self->_scrollableOutsets.left;
  bottom = self->_scrollableOutsets.bottom;
  right = self->_scrollableOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)size
{
  [(PXStoryRelatedLayoutGenerator *)self _prepareIfNeeded];
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)estimatedSize
{
  metrics = [(PXStoryRelatedLayoutGenerator *)self metrics];
  [metrics referenceSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PXStoryRelatedLayoutGenerator;
  [(PXStoryRelatedLayoutGenerator *)&v3 invalidate];
  self->_isPrepared = 0;
}

- (void)dealloc
{
  free(self->_itemFrames);
  v3.receiver = self;
  v3.super_class = PXStoryRelatedLayoutGenerator;
  [(PXStoryRelatedLayoutGenerator *)&v3 dealloc];
}

- (PXStoryRelatedLayoutGenerator)initWithMetrics:(id)metrics
{
  v4.receiver = self;
  v4.super_class = PXStoryRelatedLayoutGenerator;
  return [(PXStoryRelatedLayoutGenerator *)&v4 initWithMetrics:metrics];
}

+ (BOOL)isExpectedKeyItemAtIndex:(int64_t)index
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PXStoryRelatedLayoutGenerator_isExpectedKeyItemAtIndex___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isExpectedKeyItemAtIndex__onceToken != -1)
  {
    dispatch_once(&isExpectedKeyItemAtIndex__onceToken, block);
  }

  if (index)
  {
    v4 = index == 3;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (isExpectedKeyItemAtIndex__numberOfItemsOnCurrentDevice == 6)
  {
    return v5;
  }

  else
  {
    return index == 0;
  }
}

void __58__PXStoryRelatedLayoutGenerator_isExpectedKeyItemAtIndex___block_invoke()
{
  [MEMORY[0x1E69DC938] currentDevice];
  [objc_claimAutoreleasedReturnValue() userInterfaceIdiom];
  PXUserInterfaceIdiomFromUIUserInterfaceIdiom();
}

+ (int64_t)_preferredNumberOfItemsForUserInterfaceIdiom:(int64_t)idiom
{
  if (idiom >= 6)
  {
    v13 = v4;
    v14 = v3;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedLayoutGenerator.m" lineNumber:86 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return qword_1A5381978[idiom];
}

+ (int64_t)preferredNumberOfItemsForExtendedTraitCollection:(id)collection
{
  userInterfaceIdiom = [collection userInterfaceIdiom];

  return [self _preferredNumberOfItemsForUserInterfaceIdiom:userInterfaceIdiom];
}

@end