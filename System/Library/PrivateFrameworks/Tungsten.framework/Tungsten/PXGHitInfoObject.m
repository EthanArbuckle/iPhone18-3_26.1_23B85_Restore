@interface PXGHitInfoObject
- (PXGHitInfoObject)init;
- (PXGHitInfoObject)initWithHitInfo:(id *)a3;
- (int64_t)compare:(id)a3;
@end

@implementation PXGHitInfoObject

- (int64_t)compare:(id)a3
{
  v5 = self;
  v6 = a3;
  v7 = [(PXGHitInfoObject *)self hitInfo];
  v8 = [v6 hitInfo];

  var1 = v7->var1;
  v10 = *(v8 + 8);
  if (var1 < v10)
  {
    return -1;
  }

  if (var1 != v10)
  {
    return 1;
  }

  var2 = v7->var3.var0.var2;
  v12 = *(v8 + 40);
  if (var2 < v12)
  {
    return -1;
  }

  if (var2 != v12)
  {
    return 1;
  }

  v13 = v7->var2;
  v14 = *(v8 + 16);
  if (v13 < v14)
  {
    return -1;
  }

  if (v13 != v14)
  {
    return 1;
  }

  if (v7->var0 > *v8)
  {
    return -1;
  }

  return v7->var0 != *v8;
}

- (PXGHitInfoObject)initWithHitInfo:(id *)a3
{
  v4.receiver = self;
  v4.super_class = PXGHitInfoObject;
  return [(PXGHitInfoObject *)&v4 init];
}

- (PXGHitInfoObject)init
{
  v5 = 0u;
  v6 = 0u;
  v3 = 0xFFFFFFFFLL;
  v4 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  return [(PXGHitInfoObject *)self initWithHitInfo:&v3];
}

@end