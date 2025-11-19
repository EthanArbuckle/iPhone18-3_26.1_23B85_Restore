@interface UIPhysicalButtonSuccinctConfigurationsDescriptionForSet
@end

@implementation UIPhysicalButtonSuccinctConfigurationsDescriptionForSet

void ___UIPhysicalButtonSuccinctConfigurationsDescriptionForSet_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = 48;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    v5 = 40;
  }

  v6 = *(a1 + v5);
  v7 = _NSStringFromUIPhysicalButton([a2 _button]);
  [v4 appendFormat:@"%@%@ (%llu)", v6, v7, objc_msgSend(a2, "_generation")];

  ++*(*(*(a1 + 56) + 8) + 24);
}

@end