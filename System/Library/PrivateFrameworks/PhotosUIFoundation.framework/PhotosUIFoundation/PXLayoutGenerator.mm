@interface PXLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (NSIndexSet)geometryKinds;
- (NSString)diagnosticDescription;
- (PXLayoutGenerator)init;
- (PXLayoutGenerator)initWithMetrics:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)numberOfGeometriesWithKind:(int64_t)a3;
- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5;
- (void)setItemCount:(unint64_t)a3;
- (void)setItemLayoutInfoBlock:(id)a3;
- (void)setKeyItemIndex:(unint64_t)a3;
- (void)setMetrics:(id)a3;
@end

@implementation PXLayoutGenerator

- (NSString)diagnosticDescription
{
  v3 = [(PXLayoutGenerator *)self itemCount];
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithFormat:@"<%@: %p; count=%lu, key=%lu\n", v6, self, v3, -[PXLayoutGenerator keyItemIndex](self, "keyItemIndex")];

  v8 = [(PXLayoutGenerator *)self metrics];
  v9 = [v8 diagnosticDescription];
  [v7 appendFormat:@"\tmetrics={%@}\n", v9];

  v10 = [(PXLayoutGenerator *)self itemLayoutInfoBlock];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v12 = v10[2](v10, i);
      [v12 size];
      v13 = NSStringFromCGSize(v17);
      [v12 weight];
      [v7 appendFormat:@"\t%li size=%@ weight=%f\n", i, v13, v14];
    }
  }

  [v7 appendString:@">"];

  return v7;
}

- (void)getGeometries:(_PXLayoutGeometry *)a3 inRange:(_NSRange)a4 withKind:(int64_t)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"PXLayoutGenerator.m" lineNumber:132 description:{@"Method %s is a responsibility of subclass %@", "-[PXLayoutGenerator getGeometries:inRange:withKind:]", v9}];

  abort();
}

- (unint64_t)numberOfGeometriesWithKind:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return [(PXLayoutGenerator *)self itemCount];
  }
}

- (NSIndexSet)geometryKinds
{
  if (geometryKinds_onceToken != -1)
  {
    dispatch_once(&geometryKinds_onceToken, &__block_literal_global_778);
  }

  v3 = geometryKinds_kinds;

  return v3;
}

uint64_t __34__PXLayoutGenerator_geometryKinds__block_invoke()
{
  geometryKinds_kinds = [MEMORY[0x1E696AC90] indexSetWithIndex:0];

  return MEMORY[0x1EEE66BB8]();
}

- (CGSize)size
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXLayoutGenerator.m" lineNumber:111 description:{@"Method %s is a responsibility of subclass %@", "-[PXLayoutGenerator size]", v6}];

  abort();
}

- (CGSize)estimatedSize
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXLayoutGenerator.m" lineNumber:107 description:{@"Method %s is a responsibility of subclass %@", "-[PXLayoutGenerator estimatedSize]", v6}];

  abort();
}

- (void)setItemLayoutInfoBlock:(id)a3
{
  if (self->_itemLayoutInfoBlock != a3)
  {
    v5 = [a3 copy];
    itemLayoutInfoBlock = self->_itemLayoutInfoBlock;
    self->_itemLayoutInfoBlock = v5;

    [(PXLayoutGenerator *)self invalidate];
  }
}

- (void)setKeyItemIndex:(unint64_t)a3
{
  if (self->_keyItemIndex != a3)
  {
    self->_keyItemIndex = a3;
    [(PXLayoutGenerator *)self invalidate];
  }
}

- (void)setItemCount:(unint64_t)a3
{
  if (self->_itemCount != a3)
  {
    self->_itemCount = a3;
    [(PXLayoutGenerator *)self invalidate];
  }
}

- (void)setMetrics:(id)a3
{
  v4 = a3;
  if (self->_metrics != v4)
  {
    v7 = v4;
    if (![(PXLayoutMetrics *)v4 isEqual:?])
    {
      v5 = [(PXLayoutMetrics *)v7 copy];
      metrics = self->_metrics;
      self->_metrics = v5;

      [(PXLayoutGenerator *)self invalidate];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithMetrics:self->_metrics];
  v4[2] = self->_itemCount;
  v5 = [self->_itemLayoutInfoBlock copy];
  v6 = v4[4];
  v4[4] = v5;

  v4[3] = self->_keyItemIndex;
  return v4;
}

- (PXLayoutGenerator)initWithMetrics:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXLayoutGenerator;
  v5 = [(PXLayoutGenerator *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    metrics = v5->_metrics;
    v5->_metrics = v6;

    v5->_keyItemIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (PXLayoutGenerator)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXLayoutGenerator.m" lineNumber:50 description:{@"%s is not available as initializer", "-[PXLayoutGenerator init]"}];

  abort();
}

@end