@interface PMLMutableDenseVector
- (PMLMutableDenseVector)initWithMutableData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)processValuesInPlaceWithBlock:(id)a3;
- (void)scaleInPlaceWithFactor:(float)a3;
- (void)scaleInPlaceWithInversedFactor:(float)a3;
- (void)sumInPlaceWithVector:(id)a3;
@end

@implementation PMLMutableDenseVector

- (void)sumInPlaceWithVector:(id)a3
{
  v4 = a3;
  [(PMLDenseVector *)self count];
  [v4 ptr];

  [(PMLMutableDenseVector *)self mutablePtr];

  cblas_saxpy_NEWLAPACK();
}

- (void)scaleInPlaceWithFactor:(float)a3
{
  [(PMLDenseVector *)self count];
  [(PMLMutableDenseVector *)self mutablePtr];

  cblas_sscal_NEWLAPACK();
}

- (void)scaleInPlaceWithInversedFactor:(float)a3
{
  if (a3 > 0.0)
  {
    [(PMLDenseVector *)self count];
    [(PMLMutableDenseVector *)self mutablePtr];

    cblas_sscal_NEWLAPACK();
  }
}

- (void)processValuesInPlaceWithBlock:(id)a3
{
  v8 = a3;
  v4 = [(PMLMutableDenseVector *)self mutablePtr];
  v5 = [(PMLDenseVector *)self count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v4[i] = v8[2](v8, i, v4[i]);
    }
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PMLMutableDenseVector allocWithZone:a3];
  data = self->super._data;

  return [(PMLDenseVector *)v4 initWithData:data];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PMLDenseVector allocWithZone:a3];
  data = self->super._data;

  return [(PMLDenseVector *)v4 initWithData:data];
}

- (PMLMutableDenseVector)initWithMutableData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PMLMutableDenseVector;
  v6 = [(PMLDenseVector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->super._data, a3);
  }

  return v7;
}

@end