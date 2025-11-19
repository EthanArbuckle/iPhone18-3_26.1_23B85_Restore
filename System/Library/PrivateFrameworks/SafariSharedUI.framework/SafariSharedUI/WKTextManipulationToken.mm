@interface WKTextManipulationToken
@end

@implementation WKTextManipulationToken

void __80___WKTextManipulationToken_SafariSharedExtras__safari_privacyPreservingMetadata__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

@end