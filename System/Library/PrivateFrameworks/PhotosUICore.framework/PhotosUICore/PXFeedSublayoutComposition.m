@interface PXFeedSublayoutComposition
- (id)configuredLayoutGenerator;
- (int64_t)scrollableAxis;
- (void)setSpec:(id)a3;
- (void)visibleRectDidChange;
@end

@implementation PXFeedSublayoutComposition

- (void)visibleRectDidChange
{
  v16.receiver = self;
  v16.super_class = PXFeedSublayoutComposition;
  [(PXGSublayoutComposition *)&v16 visibleRectDidChange];
  v3 = [(PXFeedSublayoutComposition *)self spec];
  v4 = [v3 wantsFirstItemFullscreen];

  if (v4)
  {
    v5 = [(PXFeedSublayoutComposition *)self configuredLayoutGenerator];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    [(PXGSublayoutComposition *)self visibleRect];
    v8 = v7;
    v10 = v9;
    v11 = [(PXFeedSublayoutComposition *)self spec];
    v12 = [v11 scrollBehavior];
    [v12 intrinsicContentOffset];
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
  v8 = [(PXLayoutGenerator *)self->_cachedLayoutGenerator metrics];
  [v8 referenceSize];
  v10 = v9;
  v12 = v11;

  if (v5 != v10 || v7 != v12)
  {
    cachedLayoutGenerator = self->_cachedLayoutGenerator;
    self->_cachedLayoutGenerator = 0;
  }

  if (!self->_cachedLayoutGenerator)
  {
    v15 = [(PXFeedSublayoutComposition *)self spec];
    v16 = [v15 layoutGeneratorWithReferenceSize:{v5, v7}];
    v17 = self->_cachedLayoutGenerator;
    self->_cachedLayoutGenerator = v16;
  }

  [(PXLayoutGenerator *)self->_cachedLayoutGenerator setItemCount:[(PXGSublayoutComposition *)self numberOfSublayouts]];
  v18 = self->_cachedLayoutGenerator;
  if (!v18)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXFeedSublayoutComposition.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"_cachedLayoutGenerator != nil"}];

    v18 = self->_cachedLayoutGenerator;
  }

  return v18;
}

- (int64_t)scrollableAxis
{
  v2 = [(PXFeedSublayoutComposition *)self spec];
  v3 = [v2 scrollBehavior];
  v4 = [v3 axis];

  return v4;
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_spec != v5)
  {
    v9 = v5;
    v7 = [(PXFeedViewLayoutSpec *)v5 isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, a3);
      cachedLayoutGenerator = self->_cachedLayoutGenerator;
      self->_cachedLayoutGenerator = 0;

      [(PXGGeneratedSublayoutComposition *)self invalidateLayout];
      v6 = v9;
    }
  }
}

@end