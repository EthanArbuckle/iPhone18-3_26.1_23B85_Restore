@interface PXCachingLayoutGenerator
- (CGSize)size;
- (void)_updateIfNeeded;
- (void)dealloc;
- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind;
- (void)invalidate;
- (void)updateContentSize:(CGSize *)size itemRects:(CGRect *)rects;
- (void)updateContentSize:(CGSize *)size itemRects:(CGRect *)rects itemKinds:(int64_t *)kinds;
- (void)updateContentSize:(CGSize *)size itemRects:(CGRect *)rects itemKinds:(int64_t *)kinds zPositions:(float *)positions;
@end

@implementation PXCachingLayoutGenerator

- (void)updateContentSize:(CGSize *)size itemRects:(CGRect *)rects itemKinds:(int64_t *)kinds zPositions:(float *)positions
{
  itemCount = [(PXCachingLayoutGenerator *)self itemCount];
  if (itemCount >= 1)
  {
    bzero(positions, 4 * itemCount);
  }

  [(PXCachingLayoutGenerator *)self updateContentSize:size itemRects:rects itemKinds:kinds];
}

- (void)updateContentSize:(CGSize *)size itemRects:(CGRect *)rects itemKinds:(int64_t *)kinds
{
  itemCount = [(PXCachingLayoutGenerator *)self itemCount];
  if (itemCount >= 1)
  {
    bzero(kinds, 8 * itemCount);
  }

  [(PXCachingLayoutGenerator *)self updateContentSize:size itemRects:rects];
}

- (void)updateContentSize:(CGSize *)size itemRects:(CGRect *)rects
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCachingLayoutGenerator.m" lineNumber:76 description:{@"Method %s is a responsibility of subclass %@", "-[PXCachingLayoutGenerator updateContentSize:itemRects:]", v8}];

  abort();
}

- (void)_updateIfNeeded
{
  if (!self->_isValid)
  {
    itemCount = [(PXCachingLayoutGenerator *)self itemCount];
    itemCapacity = self->_itemCapacity;
    if (itemCount > itemCapacity)
    {
      if (itemCapacity)
      {
        do
        {
          itemCapacity *= 2;
        }

        while (itemCapacity < itemCount);
      }

      else
      {
        itemCapacity = itemCount;
      }

      self->_itemCapacity = itemCapacity;
      _PXGArrayResize();
    }

    [(PXCachingLayoutGenerator *)self updateContentSize:&self->_contentSize itemRects:self->_itemRects itemKinds:self->_itemKinds zPositions:self->_zPositions];
    self->_isValid = 1;
  }
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PXCachingLayoutGenerator;
  [(PXCachingLayoutGenerator *)&v3 invalidate];
  self->_isValid = 0;
}

- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind
{
  length = range.length;
  geometryKinds = [(PXCachingLayoutGenerator *)self geometryKinds];
  LODWORD(kind) = [geometryKinds containsIndex:kind];

  if (kind)
  {
    [(PXCachingLayoutGenerator *)self _updateIfNeeded];
    if (length)
    {
      PXRectGetCenter();
    }
  }
}

- (CGSize)size
{
  [(PXCachingLayoutGenerator *)self _updateIfNeeded];
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  free(self->_itemRects);
  free(self->_itemKinds);
  free(self->_zPositions);
  v3.receiver = self;
  v3.super_class = PXCachingLayoutGenerator;
  [(PXCachingLayoutGenerator *)&v3 dealloc];
}

@end