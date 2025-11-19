@interface PXStoryRelatedLayoutGenerator
+ (BOOL)isExpectedKeyItemAtIndex:(int64_t)a3;
+ (int64_t)_preferredNumberOfItemsForUserInterfaceIdiom:(int64_t)a3;
+ (int64_t)preferredNumberOfItemsForExtendedTraitCollection:(id)a3;
- (CGSize)estimatedSize;
- (CGSize)size;
- (PXStoryRelatedLayoutGenerator)initWithMetrics:(id)a3;
- (UIEdgeInsets)scrollableOutsets;
- (const)_framesForItemInRange:(_NSRange)a3;
- (void)_prepareIfNeeded;
- (void)adjustTargetScrollOffset:(CGPoint *)a3 forVelocity:(CGPoint)a4 currentScrollOffset:(CGPoint)a5 shouldHideContent:(BOOL *)a6;
- (void)dealloc;
- (void)getFrames:(CGRect *)a3 forItemsInRange:(_NSRange)a4;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
- (void)invalidate;
@end

@implementation PXStoryRelatedLayoutGenerator

- (void)_prepareIfNeeded
{
  if (!self->_isPrepared)
  {
    [(PXStoryRelatedLayoutGenerator *)self itemCount];
    v4 = [(PXStoryRelatedLayoutGenerator *)self metrics];
    [v4 referenceSize];
    v6 = v5;
    v8 = v7;
    [v4 interitemSpacing];
    [v4 margins];
    v10 = v9;
    v12 = v11;
    v15 = v6 - (v13 + v14);
    v16 = [v4 layoutMode];
    if (v16 > 2)
    {
      v19 = v12;
      if (v16 == 3)
      {
        PXSizeGetAspectRatio();
      }
    }

    else
    {
      v17 = v8 - (v10 + v12);
      if (v16 == 1)
      {
        v19 = v12;
      }

      else if (v16 == 2)
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
        if (!v16)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedLayoutGenerator.m" lineNumber:212 description:@"Code which should be unreachable has been reached"];

          abort();
        }
      }
    }

    [v4 scrollOffset];
    [v4 offscreenFraction];
    PXClamp();
  }
}

- (const)_framesForItemInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v7 = [(PXStoryRelatedLayoutGenerator *)self itemCount];
  if (location + length > v7)
  {
    v9 = v7;
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v12.location = location;
    v12.length = length;
    v11 = NSStringFromRange(v12);
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedLayoutGenerator.m" lineNumber:183 description:{@"range %@ out of bounds (0..<%li)", v11, v9}];
  }

  [(PXStoryRelatedLayoutGenerator *)self _prepareIfNeeded];
  return &self->_itemFrames[location];
}

- (void)getFrames:(CGRect *)a3 forItemsInRange:(_NSRange)a4
{
  length = a4.length;
  v6 = [(PXStoryRelatedLayoutGenerator *)self _framesForItemInRange:a4.location, a4.length];

  memcpy(a3, v6, 32 * length);
}

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  if (!a5)
  {
    length = a4.length;
    [(PXStoryRelatedLayoutGenerator *)self _framesForItemInRange:a4.location, a4.length];
    if (length)
    {
      PXRectGetCenter();
    }
  }
}

- (void)adjustTargetScrollOffset:(CGPoint *)a3 forVelocity:(CGPoint)a4 currentScrollOffset:(CGPoint)a5 shouldHideContent:(BOOL *)a6
{
  *a6 = 0;
  v6 = 0.0;
  if (a5.x >= 0.0)
  {
    if (a4.x >= 0.0)
    {
      if (a4.x <= 0.0)
      {
        return;
      }

      v7 = 24;
      goto LABEL_7;
    }
  }

  else if (a4.x <= 0.0)
  {
    *a6 = 1;
    v7 = 8;
LABEL_7:
    v6 = *(&self->_scrollableOutsets.top + v7);
  }

  a3->x = v6;
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
  v2 = [(PXStoryRelatedLayoutGenerator *)self metrics];
  [v2 referenceSize];
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

- (PXStoryRelatedLayoutGenerator)initWithMetrics:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStoryRelatedLayoutGenerator;
  return [(PXStoryRelatedLayoutGenerator *)&v4 initWithMetrics:a3];
}

+ (BOOL)isExpectedKeyItemAtIndex:(int64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PXStoryRelatedLayoutGenerator_isExpectedKeyItemAtIndex___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isExpectedKeyItemAtIndex__onceToken != -1)
  {
    dispatch_once(&isExpectedKeyItemAtIndex__onceToken, block);
  }

  if (a3)
  {
    v4 = a3 == 3;
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
    return a3 == 0;
  }
}

void __58__PXStoryRelatedLayoutGenerator_isExpectedKeyItemAtIndex___block_invoke()
{
  [MEMORY[0x1E69DC938] currentDevice];
  [objc_claimAutoreleasedReturnValue() userInterfaceIdiom];
  PXUserInterfaceIdiomFromUIUserInterfaceIdiom();
}

+ (int64_t)_preferredNumberOfItemsForUserInterfaceIdiom:(int64_t)a3
{
  if (a3 >= 6)
  {
    v13 = v4;
    v14 = v3;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXStoryRelatedLayoutGenerator.m" lineNumber:86 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return qword_1A5381978[a3];
}

+ (int64_t)preferredNumberOfItemsForExtendedTraitCollection:(id)a3
{
  v4 = [a3 userInterfaceIdiom];

  return [a1 _preferredNumberOfItemsForUserInterfaceIdiom:v4];
}

@end