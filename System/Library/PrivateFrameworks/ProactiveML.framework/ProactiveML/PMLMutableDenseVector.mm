@interface PMLMutableDenseVector
- (PMLMutableDenseVector)initWithMutableData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)processValuesInPlaceWithBlock:(id)block;
- (void)scaleInPlaceWithFactor:(float)factor;
- (void)scaleInPlaceWithInversedFactor:(float)factor;
- (void)sumInPlaceWithVector:(id)vector;
@end

@implementation PMLMutableDenseVector

- (void)sumInPlaceWithVector:(id)vector
{
  vectorCopy = vector;
  [(PMLDenseVector *)self count];
  [vectorCopy ptr];

  [(PMLMutableDenseVector *)self mutablePtr];

  cblas_saxpy_NEWLAPACK();
}

- (void)scaleInPlaceWithFactor:(float)factor
{
  [(PMLDenseVector *)self count];
  [(PMLMutableDenseVector *)self mutablePtr];

  cblas_sscal_NEWLAPACK();
}

- (void)scaleInPlaceWithInversedFactor:(float)factor
{
  if (factor > 0.0)
  {
    [(PMLDenseVector *)self count];
    [(PMLMutableDenseVector *)self mutablePtr];

    cblas_sscal_NEWLAPACK();
  }
}

- (void)processValuesInPlaceWithBlock:(id)block
{
  blockCopy = block;
  mutablePtr = [(PMLMutableDenseVector *)self mutablePtr];
  v5 = [(PMLDenseVector *)self count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      mutablePtr[i] = blockCopy[2](blockCopy, i, mutablePtr[i]);
    }
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PMLMutableDenseVector allocWithZone:zone];
  data = self->super._data;

  return [(PMLDenseVector *)v4 initWithData:data];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PMLDenseVector allocWithZone:zone];
  data = self->super._data;

  return [(PMLDenseVector *)v4 initWithData:data];
}

- (PMLMutableDenseVector)initWithMutableData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PMLMutableDenseVector;
  v6 = [(PMLDenseVector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->super._data, data);
  }

  return v7;
}

@end