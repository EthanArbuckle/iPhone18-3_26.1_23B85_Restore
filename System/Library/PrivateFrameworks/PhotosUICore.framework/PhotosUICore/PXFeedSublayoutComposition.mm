@interface PXFeedSublayoutComposition
- (id)configuredLayoutGenerator;
- (int64_t)scrollableAxis;
- (void)setSpec:(id)spec;
- (void)visibleRectDidChange;
@end

@implementation PXFeedSublayoutComposition

- (void)visibleRectDidChange
{
  v16.receiver = self;
  v16.super_class = PXFeedSublayoutComposition;
  [(PXGSublayoutComposition *)&v16 visibleRectDidChange];
  spec = [(PXFeedSublayoutComposition *)self spec];
  wantsFirstItemFullscreen = [spec wantsFirstItemFullscreen];

  if (wantsFirstItemFullscreen)
  {
    configuredLayoutGenerator = [(PXFeedSublayoutComposition *)self configuredLayoutGenerator];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = configuredLayoutGenerator;
    }

    else
    {
      v6 = 0;
    }

    [(PXGSublayoutComposition *)self visibleRect];
    v8 = v7;
    v10 = v9;
    spec2 = [(PXFeedSublayoutComposition *)self spec];
    scrollBehavior = [spec2 scrollBehavior];
    [scrollBehavior intrinsicContentOffset];
    v14 = v10 / v13;
    v15 = v10 / v13 <= 1.0;

    [v6 setVisibleOrigin:v15 updateFirstItemPosition:{v8, v10}];
    if (v14 <= 1.0)
    {
      [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
    }
  }
}

- (id)configuredLayoutGenerator
{
  [(PXGSublayoutComposition *)self referenceSize];
  v5 = v4;
  v7 = v6;
  metrics = [(PXLayoutGenerator *)self->_cachedLayoutGenerator metrics];
  [metrics referenceSize];
  v10 = v9;
  v12 = v11;

  if (v5 != v10 || v7 != v12)
  {
    cachedLayoutGenerator = self->_cachedLayoutGenerator;
    self->_cachedLayoutGenerator = 0;
  }

  if (!self->_cachedLayoutGenerator)
  {
    spec = [(PXFeedSublayoutComposition *)self spec];
    v16 = [spec layoutGeneratorWithReferenceSize:{v5, v7}];
    v17 = self->_cachedLayoutGenerator;
    self->_cachedLayoutGenerator = v16;
  }

  [(PXLayoutGenerator *)self->_cachedLayoutGenerator setItemCount:[(PXGSublayoutComposition *)self numberOfSublayouts]];
  v18 = self->_cachedLayoutGenerator;
  if (!v18)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedSublayoutComposition.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"_cachedLayoutGenerator != nil"}];

    v18 = self->_cachedLayoutGenerator;
  }

  return v18;
}

- (int64_t)scrollableAxis
{
  spec = [(PXFeedSublayoutComposition *)self spec];
  scrollBehavior = [spec scrollBehavior];
  axis = [scrollBehavior axis];

  return axis;
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  v6 = specCopy;
  if (self->_spec != specCopy)
  {
    v9 = specCopy;
    v7 = [(PXFeedViewLayoutSpec *)specCopy isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, spec);
      cachedLayoutGenerator = self->_cachedLayoutGenerator;
      self->_cachedLayoutGenerator = 0;

      [(PXGGeneratedSublayoutComposition *)self invalidateLayout];
      v6 = v9;
    }
  }
}

@end