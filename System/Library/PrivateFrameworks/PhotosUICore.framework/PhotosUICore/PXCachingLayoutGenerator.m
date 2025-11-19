@interface PXCachingLayoutGenerator
- (CGSize)size;
- (void)_updateIfNeeded;
- (void)dealloc;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
- (void)invalidate;
- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4;
- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4 itemKinds:(int64_t *)a5;
- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4 itemKinds:(int64_t *)a5 zPositions:(float *)a6;
@end

@implementation PXCachingLayoutGenerator

- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4 itemKinds:(int64_t *)a5 zPositions:(float *)a6
{
  v11 = [(PXCachingLayoutGenerator *)self itemCount];
  if (v11 >= 1)
  {
    bzero(a6, 4 * v11);
  }

  [(PXCachingLayoutGenerator *)self updateContentSize:a3 itemRects:a4 itemKinds:a5];
}

- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4 itemKinds:(int64_t *)a5
{
  v9 = [(PXCachingLayoutGenerator *)self itemCount];
  if (v9 >= 1)
  {
    bzero(a5, 8 * v9);
  }

  [(PXCachingLayoutGenerator *)self updateContentSize:a3 itemRects:a4];
}

- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXCachingLayoutGenerator.m" lineNumber:76 description:{@"Method %s is a responsibility of subclass %@", "-[PXCachingLayoutGenerator updateContentSize:itemRects:]", v8}];

  abort();
}

- (void)_updateIfNeeded
{
  if (!self->_isValid)
  {
    v3 = [(PXCachingLayoutGenerator *)self itemCount];
    itemCapacity = self->_itemCapacity;
    if (v3 > itemCapacity)
    {
      if (itemCapacity)
      {
        do
        {
          itemCapacity *= 2;
        }

        while (itemCapacity < v3);
      }

      else
      {
        itemCapacity = v3;
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

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  length = a4.length;
  v8 = [(PXCachingLayoutGenerator *)self geometryKinds];
  LODWORD(a5) = [v8 containsIndex:a5];

  if (a5)
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