@interface ReviewActionHandlerForType
@end

@implementation ReviewActionHandlerForType

uint64_t ___ReviewActionHandlerForType_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  v6 = PXStickersReviewViewController(v3, v4);
  v7 = [v5 navigationController];

  [v7 pushViewController:v6 animated:1];
  return 1;
}

@end