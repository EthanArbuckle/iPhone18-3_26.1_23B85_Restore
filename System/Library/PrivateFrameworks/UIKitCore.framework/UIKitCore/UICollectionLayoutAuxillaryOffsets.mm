@interface UICollectionLayoutAuxillaryOffsets
@end

@implementation UICollectionLayoutAuxillaryOffsets

void __55___UICollectionLayoutAuxillaryOffsets_initWithOffsets___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 mutableCopy];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:a2];
}

void __50___UICollectionLayoutAuxillaryOffsets_description__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendFormat:@"%@:", a2];
  v6.location = [*(a1 + 40) rangeForElementKind:a2];
  v4 = *(a1 + 32);
  v5 = NSStringFromRange(v6);
  [v4 appendFormat:@"%@"], v5);

  ++*(*(*(a1 + 48) + 8) + 24);
}

@end