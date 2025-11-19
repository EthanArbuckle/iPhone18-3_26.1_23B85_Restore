@interface HasAnyInsertionsForChangeDetails
@end

@implementation HasAnyInsertionsForChangeDetails

void ___HasAnyInsertionsForChangeDetails_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = [*(a1 + 32) itemChangesInSection:a2];
  if (![v7 hasIncrementalChanges] || (objc_msgSend(v7, "insertedIndexes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

@end