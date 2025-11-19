@interface _PXGAbsoluteSublayoutComposition
- (CGRect)contentBounds;
- (CGSize)contentSize;
- (void)dealloc;
- (void)insertRange:(_NSRange)a3;
- (void)removeRange:(_NSRange)a3;
- (void)setFrames:(const CGRect *)a3 forSublayoutsInRange:(_NSRange)a4;
- (void)setOrigins:(const CGPoint *)a3 forSublayoutsInRange:(_NSRange)a4;
- (void)setReferenceDepths:(const double *)a3 forSublayoutsInRange:(_NSRange)a4;
- (void)setSpriteTransforms:(id *)a3 forSublayoutsInRange:(_NSRange)a4;
- (void)setZPositions:(const double *)a3 forSublayoutsInRange:(_NSRange)a4;
- (void)updateEstimatedSublayoutGeometries;
- (void)updateSublayoutGeometriesFromAnchorSublayoutIndex:(int64_t)a3 usingSublayoutUpdateBlock:(id)a4;
@end

@implementation _PXGAbsoluteSublayoutComposition

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)contentBounds
{
  [(_PXGAbsoluteSublayoutComposition *)self contentSize];

  PXRectWithOriginAndSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)updateSublayoutGeometriesFromAnchorSublayoutIndex:(int64_t)a3 usingSublayoutUpdateBlock:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __112___PXGAbsoluteSublayoutComposition_updateSublayoutGeometriesFromAnchorSublayoutIndex_usingSublayoutUpdateBlock___block_invoke;
  v13[3] = &unk_2782ABC30;
  v7 = v6;
  v14 = v7;
  v8 = MEMORY[0x21CEE40A0](v13);
  v9 = [(PXGSublayoutComposition *)self numberOfSublayouts];
  if ([(_PXGAbsoluteSublayoutComposition *)self shouldUpdateSublayoutsInStrictOrder])
  {
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        v8[2](v8, i);
      }
    }
  }

  else
  {
    v8[2](v8, a3);
    if (a3 >= 1)
    {
      v11 = 0;
      do
      {
        v8[2](v8, v11++);
      }

      while (a3 != v11);
    }

    v12 = a3 + 1;
    if (v12 < v9)
    {
      do
      {
        v8[2](v8, v12++);
      }

      while (v9 != v12);
    }
  }
}

- (void)updateEstimatedSublayoutGeometries
{
  v4 = [(PXGSublayoutComposition *)self sublayoutGeometries];
  v5 = [(PXGSublayoutComposition *)self numberOfSublayouts];
  if (v5 != self->_sublayoutCount)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXGAbsoluteCompositeLayout.m" lineNumber:198 description:{@"number of sublayouts (%li) doesn't match the number of sublayout frames (%li)", v5, self->_sublayoutCount}];
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    p_var4 = &v4->var4;
    do
    {
      v10 = &self->_sublayoutFrames[v6];
      origin = v10->origin;
      size = v10->size;
      p_var4->var2 = self->_sublayoutZPositions[v8];
      *&p_var4[-1].var1 = size;
      *&p_var4->var0 = origin;
      *&p_var4[-2].var0 = size;
      p_var4[-2].var2 = self->_sublayoutReferenceDepths[v8];
      v13 = &self->_sublayoutSpriteTransforms[v7];
      var1 = v13->var1;
      v16 = *&v13->var0.c;
      v15 = *&v13->var0.tx;
      *&p_var4[1].var0 = *&v13->var0.a;
      *&p_var4[1].var2 = v16;
      ++v8;
      *&p_var4[2].var1 = v15;
      p_var4[3].var0 = var1;
      ++v7;
      ++v6;
      p_var4 = (p_var4 + 136);
    }

    while (v5 != v8);
  }
}

- (void)setSpriteTransforms:(id *)a3 forSublayoutsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_sublayoutCount)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v12.location = location;
    v12.length = length;
    v10 = NSStringFromRange(v12);
    [v9 handleFailureInMethod:a2 object:self file:@"PXGAbsoluteCompositeLayout.m" lineNumber:190 description:{@"range (%@) not within 0 ..< %li", v10, self->_sublayoutCount}];
  }

  memcpy(&self->_sublayoutSpriteTransforms[location], a3, 56 * length);

  [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
}

- (void)setReferenceDepths:(const double *)a3 forSublayoutsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_sublayoutCount)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v12.location = location;
    v12.length = length;
    v10 = NSStringFromRange(v12);
    [v9 handleFailureInMethod:a2 object:self file:@"PXGAbsoluteCompositeLayout.m" lineNumber:184 description:{@"range (%@) not within 0 ..< %li", v10, self->_sublayoutCount}];
  }

  memcpy(&self->_sublayoutReferenceDepths[location], a3, 8 * length);

  [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
}

- (void)setZPositions:(const double *)a3 forSublayoutsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_sublayoutCount)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v12.location = location;
    v12.length = length;
    v10 = NSStringFromRange(v12);
    [v9 handleFailureInMethod:a2 object:self file:@"PXGAbsoluteCompositeLayout.m" lineNumber:178 description:{@"range (%@) not within 0 ..< %li", v10, self->_sublayoutCount}];
  }

  memcpy(&self->_sublayoutZPositions[location], a3, 8 * length);

  [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
}

- (void)setFrames:(const CGRect *)a3 forSublayoutsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_sublayoutCount)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v12.location = location;
    v12.length = length;
    v10 = NSStringFromRange(v12);
    [v9 handleFailureInMethod:a2 object:self file:@"PXGAbsoluteCompositeLayout.m" lineNumber:172 description:{@"range (%@) not within 0 ..< %li", v10, self->_sublayoutCount}];
  }

  memcpy(&self->_sublayoutFrames[location], a3, 32 * length);

  [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
}

- (void)setOrigins:(const CGPoint *)a3 forSublayoutsInRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_sublayoutCount)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v14.location = location;
    v14.length = length;
    v12 = NSStringFromRange(v14);
    [v11 handleFailureInMethod:a2 object:self file:@"PXGAbsoluteCompositeLayout.m" lineNumber:164 description:{@"range (%@) not within 0 ..< %li", v12, self->_sublayoutCount}];

    if (!length)
    {
      goto LABEL_5;
    }
  }

  else if (!a4.length)
  {
    goto LABEL_5;
  }

  v8 = location;
  do
  {
    v9 = *a3++;
    self->_sublayoutFrames[v8++].origin = v9;
    --length;
  }

  while (length);
LABEL_5:

  [(_PXGAbsoluteSublayoutComposition *)self updateEstimatedSublayoutGeometries];
}

- (void)removeRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  _PXGArrayRemoveRange(self->_sublayoutFrames, 32, self->_sublayoutCount, a3.location, a3.length);
  _PXGArrayRemoveRange(self->_sublayoutZPositions, 8, self->_sublayoutCount, location, length);
  _PXGArrayRemoveRange(self->_sublayoutReferenceDepths, 8, self->_sublayoutCount, location, length);
  _PXGArrayRemoveRange(self->_sublayoutSpriteTransforms, 56, self->_sublayoutCount, location, length);
  v6 = self->_sublayoutCount - length;
  self->_sublayoutCount = v6;
  self->_sublayoutFrames = malloc_type_realloc(self->_sublayoutFrames, 32 * v6, 0x42760281uLL);
  self->_sublayoutZPositions = malloc_type_realloc(self->_sublayoutZPositions, 8 * self->_sublayoutCount, 0x42760281uLL);
  self->_sublayoutReferenceDepths = malloc_type_realloc(self->_sublayoutReferenceDepths, 8 * self->_sublayoutCount, 0x42760281uLL);
  self->_sublayoutSpriteTransforms = malloc_type_realloc(self->_sublayoutSpriteTransforms, 56 * self->_sublayoutCount, 0x42760281uLL);
}

- (void)insertRange:(_NSRange)a3
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    v6 = self->_sublayoutCount + a3.length;
    self->_sublayoutCount = v6;
    self->_sublayoutFrames = malloc_type_realloc(self->_sublayoutFrames, 32 * v6, 0x42760281uLL);
    self->_sublayoutZPositions = malloc_type_realloc(self->_sublayoutZPositions, 8 * self->_sublayoutCount, 0x42760281uLL);
    self->_sublayoutReferenceDepths = malloc_type_realloc(self->_sublayoutReferenceDepths, 8 * self->_sublayoutCount, 0x42760281uLL);
    self->_sublayoutSpriteTransforms = malloc_type_realloc(self->_sublayoutSpriteTransforms, 56 * self->_sublayoutCount, 0x42760281uLL);
    _PXGArrayInsertRange(self->_sublayoutFrames, 32, self->_sublayoutCount, location, length);
    _PXGArrayInsertRange(self->_sublayoutZPositions, 8, self->_sublayoutCount, location, length);
    _PXGArrayInsertRange(self->_sublayoutReferenceDepths, 8, self->_sublayoutCount, location, length);
    _PXGArrayInsertRange(self->_sublayoutSpriteTransforms, 56, self->_sublayoutCount, location, length);
    v7 = location;
    v8 = location;
    do
    {
      self->_sublayoutZPositions[v8] = 0.0;
      self->_sublayoutReferenceDepths[v8] = 1.0;
      v9 = &self->_sublayoutSpriteTransforms[v7];
      *&v9->var0.a = PXGSpriteGeometryTransformIdentity;
      *&v9->var0.c = unk_21AE2E188;
      *&v9->var0.tx = xmmword_21AE2E198;
      v9->var1 = 0.0;
      ++v7;
      ++v8;
      --length;
    }

    while (length);
  }
}

- (void)dealloc
{
  free(self->_sublayoutFrames);
  free(self->_sublayoutZPositions);
  free(self->_sublayoutReferenceDepths);
  free(self->_sublayoutSpriteTransforms);
  v3.receiver = self;
  v3.super_class = _PXGAbsoluteSublayoutComposition;
  [(_PXGAbsoluteSublayoutComposition *)&v3 dealloc];
}

@end