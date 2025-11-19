@interface UIHitTestGestureContainer
@end

@implementation UIHitTestGestureContainer

BOOL ___UIHitTestGestureContainer_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = (*(*(a1 + 40) + 16))();
  v9 = performHitTest(v4, a2, v5, v6, v7, v8, *(a1 + 64));
  v10 = *(*(a1 + 48) + 8);
  v11 = v9;
  if (!v9)
  {
    v11 = *(v10 + 40);
  }

  objc_storeStrong((v10 + 40), v11);

  return v9 != 0;
}

@end