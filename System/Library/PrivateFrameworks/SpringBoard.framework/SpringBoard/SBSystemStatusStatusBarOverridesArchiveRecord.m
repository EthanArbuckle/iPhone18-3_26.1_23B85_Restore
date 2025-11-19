@interface SBSystemStatusStatusBarOverridesArchiveRecord
@end

@implementation SBSystemStatusStatusBarOverridesArchiveRecord

void __98___SBSystemStatusStatusBarOverridesArchiveRecord__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) statusBarData];
  v4 = [v2 appendObject:v3 withName:@"statusBarData" skipIfNil:1];

  v5 = *(a1 + 32);
  v8 = [*(a1 + 40) suppressedBackgroundActivityIdentifiers];
  v6 = [v8 allObjects];
  v7 = [*(a1 + 32) activeMultilinePrefix];
  [v5 appendArraySection:v6 withName:@"suppressedBackgroundActivityIdentifiers" multilinePrefix:v7 skipIfEmpty:1 objectTransformer:&__block_literal_global_60_1];
}

@end