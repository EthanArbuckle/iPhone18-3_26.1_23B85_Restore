@interface PXLayoutGenerator
- (CGSize)estimatedSize;
- (CGSize)size;
- (NSIndexSet)geometryKinds;
- (NSString)diagnosticDescription;
- (PXLayoutGenerator)init;
- (PXLayoutGenerator)initWithMetrics:(id)metrics;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)numberOfGeometriesWithKind:(int64_t)kind;
- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind;
- (void)setItemCount:(unint64_t)count;
- (void)setItemLayoutInfoBlock:(id)block;
- (void)setKeyItemIndex:(unint64_t)index;
- (void)setMetrics:(id)metrics;
@end

@implementation PXLayoutGenerator

- (NSString)diagnosticDescription
{
  itemCount = [(PXLayoutGenerator *)self itemCount];
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithFormat:@"<%@: %p; count=%lu, key=%lu\n", v6, self, itemCount, -[PXLayoutGenerator keyItemIndex](self, "keyItemIndex")];

  metrics = [(PXLayoutGenerator *)self metrics];
  diagnosticDescription = [metrics diagnosticDescription];
  [v7 appendFormat:@"\tmetrics={%@}\n", diagnosticDescription];

  itemLayoutInfoBlock = [(PXLayoutGenerator *)self itemLayoutInfoBlock];
  if (itemCount)
  {
    for (i = 0; i != itemCount; ++i)
    {
      v12 = itemLayoutInfoBlock[2](itemLayoutInfoBlock, i);
      [v12 size];
      v13 = NSStringFromCGSize(v17);
      [v12 weight];
      [v7 appendFormat:@"\t%li size=%@ weight=%f\n", i, v13, v14];
    }
  }

  [v7 appendString:@">"];

  return v7;
}

- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLayoutGenerator.m" lineNumber:132 description:{@"Method %s is a responsibility of subclass %@", "-[PXLayoutGenerator getGeometries:inRange:withKind:]", v9}];

  abort();
}

- (unint64_t)numberOfGeometriesWithKind:(int64_t)kind
{
  if (kind)
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLayoutGenerator.m" lineNumber:111 description:{@"Method %s is a responsibility of subclass %@", "-[PXLayoutGenerator size]", v6}];

  abort();
}

- (CGSize)estimatedSize
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLayoutGenerator.m" lineNumber:107 description:{@"Method %s is a responsibility of subclass %@", "-[PXLayoutGenerator estimatedSize]", v6}];

  abort();
}

- (void)setItemLayoutInfoBlock:(id)block
{
  if (self->_itemLayoutInfoBlock != block)
  {
    v5 = [block copy];
    itemLayoutInfoBlock = self->_itemLayoutInfoBlock;
    self->_itemLayoutInfoBlock = v5;

    [(PXLayoutGenerator *)self invalidate];
  }
}

- (void)setKeyItemIndex:(unint64_t)index
{
  if (self->_keyItemIndex != index)
  {
    self->_keyItemIndex = index;
    [(PXLayoutGenerator *)self invalidate];
  }
}

- (void)setItemCount:(unint64_t)count
{
  if (self->_itemCount != count)
  {
    self->_itemCount = count;
    [(PXLayoutGenerator *)self invalidate];
  }
}

- (void)setMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_metrics != metricsCopy)
  {
    v7 = metricsCopy;
    if (![(PXLayoutMetrics *)metricsCopy isEqual:?])
    {
      v5 = [(PXLayoutMetrics *)v7 copy];
      metrics = self->_metrics;
      self->_metrics = v5;

      [(PXLayoutGenerator *)self invalidate];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithMetrics:self->_metrics];
  v4[2] = self->_itemCount;
  v5 = [self->_itemLayoutInfoBlock copy];
  v6 = v4[4];
  v4[4] = v5;

  v4[3] = self->_keyItemIndex;
  return v4;
}

- (PXLayoutGenerator)initWithMetrics:(id)metrics
{
  metricsCopy = metrics;
  v9.receiver = self;
  v9.super_class = PXLayoutGenerator;
  v5 = [(PXLayoutGenerator *)&v9 init];
  if (v5)
  {
    v6 = [metricsCopy copy];
    metrics = v5->_metrics;
    v5->_metrics = v6;

    v5->_keyItemIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (PXLayoutGenerator)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLayoutGenerator.m" lineNumber:50 description:{@"%s is not available as initializer", "-[PXLayoutGenerator init]"}];

  abort();
}

@end