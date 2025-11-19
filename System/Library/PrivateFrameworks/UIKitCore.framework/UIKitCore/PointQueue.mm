@interface PointQueue
@end

@implementation PointQueue

void __47___PointQueue_effectiveStartIndexBasedOnLength__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 length];
  v10 = v9;
  [v8 length];
  v12 = v11;

  if (v10 - v12 > 200.0)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

@end