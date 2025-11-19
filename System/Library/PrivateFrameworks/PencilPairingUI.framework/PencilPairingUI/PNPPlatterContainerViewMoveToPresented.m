@interface PNPPlatterContainerViewMoveToPresented
@end

@implementation PNPPlatterContainerViewMoveToPresented

uint64_t ___PNPPlatterContainerViewMoveToPresented_block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresented:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t ___PNPPlatterContainerViewMoveToPresented_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end