@interface PXGHitInfoObject
- (PXGHitInfoObject)init;
- (PXGHitInfoObject)initWithHitInfo:(id *)info;
- (int64_t)compare:(id)compare;
@end

@implementation PXGHitInfoObject

- (int64_t)compare:(id)compare
{
  selfCopy = self;
  compareCopy = compare;
  hitInfo = [(PXGHitInfoObject *)self hitInfo];
  hitInfo2 = [compareCopy hitInfo];

  var1 = hitInfo->var1;
  v10 = *(hitInfo2 + 8);
  if (var1 < v10)
  {
    return -1;
  }

  if (var1 != v10)
  {
    return 1;
  }

  var2 = hitInfo->var3.var0.var2;
  v12 = *(hitInfo2 + 40);
  if (var2 < v12)
  {
    return -1;
  }

  if (var2 != v12)
  {
    return 1;
  }

  v13 = hitInfo->var2;
  v14 = *(hitInfo2 + 16);
  if (v13 < v14)
  {
    return -1;
  }

  if (v13 != v14)
  {
    return 1;
  }

  if (hitInfo->var0 > *hitInfo2)
  {
    return -1;
  }

  return hitInfo->var0 != *hitInfo2;
}

- (PXGHitInfoObject)initWithHitInfo:(id *)info
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