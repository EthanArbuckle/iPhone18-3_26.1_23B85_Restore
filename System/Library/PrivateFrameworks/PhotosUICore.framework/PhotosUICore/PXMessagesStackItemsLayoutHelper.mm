@interface PXMessagesStackItemsLayoutHelper
- ($559C86641F1F299F94BFFDDA7F58F470)baseGeometryForIndex:(SEL)index visibleRect:(int64_t)rect;
- (CGSize)maxItemSizeForReferenceSize:(CGSize)size;
- (PXMessagesStackItemsLayoutHelper)init;
- (double)horizontalContentMarginForReferenceSize:(CGSize)size itemAspect:(double)aspect;
- (void)_swapBaseZPositions;
- (void)_updateInternalState;
- (void)dealloc;
- (void)getGeometries:(id *)geometries count:(unint64_t)count forVisibleRect:(CGRect)rect focus:(double)focus archSide:(unint64_t)side keyframeOverride:(int64_t)override;
- (void)performChanges:(id)changes;
- (void)setZOrderArchSide:(unint64_t)side;
@end

@implementation PXMessagesStackItemsLayoutHelper

- ($559C86641F1F299F94BFFDDA7F58F470)baseGeometryForIndex:(SEL)index visibleRect:(int64_t)rect
{
  y = a5.origin.y;
  x = a5.origin.x;
  selfCopy = self;
  if (rect < 0 || *&self->var1.width <= rect)
  {
    width = a5.size.width;
    height = a5.size.height;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:index object:selfCopy file:@"PXMessagesStackItemsLayoutHelper.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"index >= 0 && index < _baseGeometriesSize"}];

    a5.size.width = width;
    a5.size.height = height;
  }

  v11 = *&selfCopy->var1.height + 80 * rect;
  v12 = *(v11 + 16);
  retstr->var0 = *v11;
  retstr->var1 = v12;
  v13 = *(v11 + 32);
  v14 = *(v11 + 64);
  *&retstr->var4 = *(v11 + 48);
  *&retstr->var6 = v14;
  *&v14 = y + retstr->var0.y * a5.size.height;
  retstr->var0.x = x + retstr->var0.x * a5.size.width;
  *&retstr->var0.y = v14;
  v15 = a5.size.height;
  retstr->var1 = vmulq_f64(a5.size, retstr->var1);
  *&retstr->var2 = v13;
  return self;
}

- (double)horizontalContentMarginForReferenceSize:(CGSize)size itemAspect:(double)aspect
{
  height = size.height;
  width = size.width;
  v9 = [(PXMessagesStackItemsLayoutHelper *)self stackedItemsCount]+ 1;
  if (v9 >= self->_baseGeometriesSize)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayoutHelper.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"centralIndex < _baseGeometriesSize"}];
  }

  MEMORY[0x1A590D300](aspect, width * self->_baseGeometries[v9].var1.width, height * self->_baseGeometries[v9].var1.height);

  PXRectWithCenterAndSize();
}

- (CGSize)maxItemSizeForReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [(PXMessagesStackItemsLayoutHelper *)self stackedItemsCount]+ 1;
  if (v7 >= self->_baseGeometriesSize)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayoutHelper.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"centralIndex < _baseGeometriesSize"}];
  }

  v8 = &self->_baseGeometries[v7];
  v9 = width * v8->var1.width;
  v10 = height * v8->var1.height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)getGeometries:(id *)geometries count:(unint64_t)count forVisibleRect:(CGRect)rect focus:(double)focus archSide:(unint64_t)side keyframeOverride:(int64_t)override
{
  v13 = 2 * [(PXMessagesStackItemsLayoutHelper *)self stackedItemsCount]+ 3;
  stackedItemsCount = [(PXMessagesStackItemsLayoutHelper *)self stackedItemsCount];
  if (v13 != count)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayoutHelper.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"totalItemCount == count"}];
  }

  if (v13 > self->_baseGeometriesSize)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayoutHelper.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"totalItemCount <= _baseGeometriesSize"}];
  }

  if (side - 1 <= 1)
  {
    [(PXMessagesStackItemsLayoutHelper *)self setZOrderArchSide:side];
  }

  if (v13 >= 1)
  {
    v15 = stackedItemsCount + 1;
    if (focus <= 0.0)
    {
      v16 = 0;
      if (focus < 0.0)
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = v13 > 1;
    }

    if (side == 2)
    {
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    else if (side == 1 && v16 == v15)
    {
LABEL_18:
      PXFloatByParabolicallyInterpolatingFloats();
    }

    PXFloatByLinearlyInterpolatingFloats();
  }
}

- (void)setZOrderArchSide:(unint64_t)side
{
  if (self->_zOrderArchSide != side)
  {
    self->_zOrderArchSide = side;
    [(PXMessagesStackItemsLayoutHelper *)self _swapBaseZPositions];
  }
}

- (void)_swapBaseZPositions
{
  stackedItemsCount = [(PXMessagesStackItemsLayoutHelper *)self stackedItemsCount];
  v5 = 2 * stackedItemsCount;
  if (2 * stackedItemsCount + 3 > self->_baseGeometriesSize)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayoutHelper.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"expectedCount <= _baseGeometriesSize"}];
  }

  v6 = v5 + 2;
  if (v5 + 2 >= 1)
  {
    baseGeometries = self->_baseGeometries;
    p_var2 = &baseGeometries[2 * stackedItemsCount + 2].var2;
    v9 = &baseGeometries->var2;
    v10 = 1;
    do
    {
      v11 = *v9;
      *v9 = *p_var2;
      v9 += 10;
      *p_var2 = v11;
      p_var2 -= 10;
    }

    while (v10++ < --v6);
  }
}

- (void)_updateInternalState
{
  stackedItemsCount = [(PXMessagesStackItemsLayoutHelper *)self stackedItemsCount];
  v5 = 2 * stackedItemsCount + 3;
  if (v5 > self->_baseGeometriesSize)
  {
    self->_baseGeometriesSize = v5;
    v6 = malloc_type_realloc(self->_baseGeometries, 80 * v5, 0x10000404247E4FDuLL);
    self->_baseGeometries = v6;
    if (!v6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayoutHelper.m" lineNumber:69 description:@"Unable to reallocate memory for geometries"];
    }
  }

  [(PXMessagesStackItemsLayoutHelper *)self rotationAngle];
  v8 = v7;
  [(PFMessagesStackLayoutFrameSolver *)self->_frameSolver setStackedItemsCount:stackedItemsCount];
  [(PXMessagesStackItemsLayoutHelper *)self normalizedContentInsets];
  [(PFMessagesStackLayoutFrameSolver *)self->_frameSolver setNormalizedVerticalInsets:?];
  [(PXMessagesStackItemsLayoutHelper *)self normalizedStackVerticalOffset];
  [(PFMessagesStackLayoutFrameSolver *)self->_frameSolver setNormalizedVerticalOffset:?];
  [(PXMessagesStackItemsLayoutHelper *)self normalizedStackSizeTransform];
  [(PFMessagesStackLayoutFrameSolver *)self->_frameSolver setNormalizedSizeTransform:?];
  [(PFMessagesStackLayoutFrameSolver *)self->_frameSolver setRotationAngle:v8];
  normalizedStackHorizontalOffsets = [(PXMessagesStackItemsLayoutHelper *)self normalizedStackHorizontalOffsets];
  [(PFMessagesStackLayoutFrameSolver *)self->_frameSolver setNormalizedHorizontalOffsets:normalizedStackHorizontalOffsets];

  [(PFMessagesStackLayoutFrameSolver *)self->_frameSolver getGeometries:self->_baseGeometries count:self->_baseGeometriesSize];
  self->_zOrderArchSide = 2;
  v10 = &self->_baseGeometries[stackedItemsCount];
  self->_initialItemCentralGeometry.center = v10[1].var0;
  var1 = v10[1].var1;
  v12 = *&v10[1].var2;
  v13 = *&v10[1].var6;
  *&self->_initialItemCentralGeometry.alpha = *&v10[1].var4;
  *&self->_initialItemCentralGeometry.tapbackScale = v13;
  self->_initialItemCentralGeometry.size = var1;
  *&self->_initialItemCentralGeometry.zPos = v12;
  v15 = *&v10[1].var4;
  v14 = *&v10[1].var6;
  v16 = *&v10[1].var2;
  self->_finalItemCentralGeometry.size = v10[1].var1;
  *&self->_finalItemCentralGeometry.zPos = v16;
  *&self->_finalItemCentralGeometry.alpha = v15;
  *&self->_finalItemCentralGeometry.tapbackScale = v14;
  self->_finalItemCentralGeometry.center = v10[1].var0;
  v17 = +[PXMessagesUISettings sharedInstance];
  LODWORD(normalizedStackHorizontalOffsets) = [v17 applyRotationToFirstAndLast];

  if (normalizedStackHorizontalOffsets)
  {
    self->_initialItemCentralGeometry.rotationAngle = -v8;
    self->_finalItemCentralGeometry.rotationAngle = v8;
  }
}

- (void)performChanges:(id)changes
{
  ++self->_nestedChanges;
  (*(changes + 2))(changes, self);
  v4 = self->_nestedChanges - 1;
  self->_nestedChanges = v4;
  if (!v4)
  {

    [(PXMessagesStackItemsLayoutHelper *)self _updateInternalState];
  }
}

- (void)dealloc
{
  baseGeometries = self->_baseGeometries;
  if (baseGeometries)
  {
    free(baseGeometries);
    self->_baseGeometries = 0;
  }

  v4.receiver = self;
  v4.super_class = PXMessagesStackItemsLayoutHelper;
  [(PXMessagesStackItemsLayoutHelper *)&v4 dealloc];
}

- (PXMessagesStackItemsLayoutHelper)init
{
  v7.receiver = self;
  v7.super_class = PXMessagesStackItemsLayoutHelper;
  v2 = [(PXMessagesStackItemsLayoutHelper *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_baseGeometriesSize = 7;
    v2->_baseGeometries = malloc_type_calloc(7uLL, 0x50uLL, 0x10000404247E4FDuLL);
    v4 = objc_alloc_init(MEMORY[0x1E69C0710]);
    frameSolver = v3->_frameSolver;
    v3->_frameSolver = v4;
  }

  return v3;
}

@end