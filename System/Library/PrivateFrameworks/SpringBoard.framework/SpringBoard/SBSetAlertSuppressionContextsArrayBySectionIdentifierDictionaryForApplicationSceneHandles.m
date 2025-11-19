@interface SBSetAlertSuppressionContextsArrayBySectionIdentifierDictionaryForApplicationSceneHandles
@end

@implementation SBSetAlertSuppressionContextsArrayBySectionIdentifierDictionaryForApplicationSceneHandles

void ___SBSetAlertSuppressionContextsArrayBySectionIdentifierDictionaryForApplicationSceneHandles_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CBEB98];
  v6 = a2;
  v7 = [v5 setWithArray:a3];
  [v4 setObject:v7 forKey:v6];
}

@end