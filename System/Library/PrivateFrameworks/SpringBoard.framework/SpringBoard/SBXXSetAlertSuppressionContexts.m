@interface SBXXSetAlertSuppressionContexts
@end

@implementation SBXXSetAlertSuppressionContexts

void ___SBXXSetAlertSuppressionContexts_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v2;
  _SBSetAlertSuppressionContextArraysBySectionIdentifierDictionary(v1, v3);
}

@end