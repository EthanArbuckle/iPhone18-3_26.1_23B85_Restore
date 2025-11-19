@interface SBIconListModelTransaction
@end

@implementation SBIconListModelTransaction

void __44___SBIconListModelTransaction_commitChanges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 56) == 1)
  {
    [v3 node:*(a1 + 32) didAddContainedNodeIdentifiers:*(a1 + 40)];
    v3 = v4;
  }

  if (*(a1 + 57) == 1)
  {
    [v4 node:*(a1 + 32) didRemoveContainedNodeIdentifiers:*(a1 + 48)];
    v3 = v4;
  }
}

@end