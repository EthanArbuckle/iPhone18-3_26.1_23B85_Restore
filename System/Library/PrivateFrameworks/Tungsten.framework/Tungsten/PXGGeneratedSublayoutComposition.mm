@interface PXGGeneratedSublayoutComposition
- (CGRect)contentBounds;
- (PXLayoutGenerator)configuredLayoutGenerator;
- (void)dealloc;
- (void)referenceSizeDidChange;
- (void)updateEstimatedSublayoutGeometries;
- (void)updateSublayoutGeometriesFromAnchorSublayoutIndex:(int64_t)index usingSublayoutUpdateBlock:(id)block;
@end

@implementation PXGGeneratedSublayoutComposition

- (PXLayoutGenerator)configuredLayoutGenerator
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGGeneratedSublayoutComposition.m" lineNumber:89 description:{@"Method %s is a responsibility of subclass %@", "-[PXGGeneratedSublayoutComposition configuredLayoutGenerator]", v6}];

  abort();
}

- (CGRect)contentBounds
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  [(PXLayoutGenerator *)self->_layoutGenerator size];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)updateSublayoutGeometriesFromAnchorSublayoutIndex:(int64_t)index usingSublayoutUpdateBlock:(id)block
{
  blockCopy = block;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __112__PXGGeneratedSublayoutComposition_updateSublayoutGeometriesFromAnchorSublayoutIndex_usingSublayoutUpdateBlock___block_invoke;
  v13[3] = &unk_2782ABC30;
  v7 = blockCopy;
  v14 = v7;
  v8 = MEMORY[0x21CEE40A0](v13);
  v8[2](v8, index);
  if (index >= 1)
  {
    v9 = 0;
    do
    {
      v8[2](v8, v9++);
    }

    while (index != v9);
  }

  numberOfSublayouts = [(PXGSublayoutComposition *)self numberOfSublayouts];
  v11 = index + 1;
  if (v11 < numberOfSublayouts)
  {
    v12 = numberOfSublayouts;
    do
    {
      v8[2](v8, v11++);
    }

    while (v12 != v11);
  }
}

- (void)updateEstimatedSublayoutGeometries
{
  configuredLayoutGenerator = [(PXGGeneratedSublayoutComposition *)self configuredLayoutGenerator];
  layoutGenerator = self->_layoutGenerator;
  self->_layoutGenerator = configuredLayoutGenerator;

  numberOfSublayouts = [(PXGSublayoutComposition *)self numberOfSublayouts];
  sublayoutGeometries = [(PXGSublayoutComposition *)self sublayoutGeometries];
  if ([(PXLayoutGenerator *)self->_layoutGenerator numberOfGeometriesWithKind:0]!= numberOfSublayouts)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGGeneratedSublayoutComposition.m" lineNumber:44 description:@"count mismatch"];
  }

  layoutGeometriesCapacity = self->_layoutGeometriesCapacity;
  if (numberOfSublayouts <= layoutGeometriesCapacity)
  {
    layoutGeometries = self->_layoutGeometries;
  }

  else
  {
    v9 = numberOfSublayouts;
    if (layoutGeometriesCapacity >= 1)
    {
      v9 = self->_layoutGeometriesCapacity;
      do
      {
        v9 *= 2;
      }

      while (v9 < numberOfSublayouts);
    }

    self->_layoutGeometriesCapacity = v9;
    layoutGeometries = malloc_type_realloc(self->_layoutGeometries, 152 * v9, 0x42760281uLL);
    self->_layoutGeometries = layoutGeometries;
  }

  [(PXLayoutGenerator *)self->_layoutGenerator getGeometries:layoutGeometries inRange:0 withKind:numberOfSublayouts, 0];
  if (numberOfSublayouts >= 1)
  {
    v11 = 0;
    do
    {
      v12 = &self->_layoutGeometries[v11];
      v13 = &sublayoutGeometries[v12->var0];
      PXRectWithCenterAndSize();
      var4 = v12->var4;
      v13->var4.var0 = v15;
      v13->var4.var1 = v16;
      v13->var4.var2 = var4;
      v13->var3.width = v17;
      v13->var3.height = v18;
      v13->var0 = v13->var3;
      v13->var2 = v12->var5;
      ++v11;
      --numberOfSublayouts;
    }

    while (numberOfSublayouts);
  }
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGGeneratedSublayoutComposition;
  [(PXGSublayoutComposition *)&v3 referenceSizeDidChange];
  [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
}

- (void)dealloc
{
  free(self->_layoutGeometries);
  v3.receiver = self;
  v3.super_class = PXGGeneratedSublayoutComposition;
  [(PXGGeneratedSublayoutComposition *)&v3 dealloc];
}

@end