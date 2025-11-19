@interface SBMigSetAlertSuppressionContextsBySectionIdentifier
@end

@implementation SBMigSetAlertSuppressionContextsBySectionIdentifier

uint64_t ___SBMigSetAlertSuppressionContextsBySectionIdentifier_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 60);
  v6 = *(a1 + 80);
  v8[0] = *(a1 + 64);
  v8[1] = v6;
  result = v3(v4, v2, v5, v8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end