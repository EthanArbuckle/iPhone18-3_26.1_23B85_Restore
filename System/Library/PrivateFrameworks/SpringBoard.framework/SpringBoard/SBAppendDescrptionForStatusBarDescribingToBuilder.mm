@interface SBAppendDescrptionForStatusBarDescribingToBuilder
@end

@implementation SBAppendDescrptionForStatusBarDescribingToBuilder

void ___SBAppendDescrptionForStatusBarDescribingToBuilder_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) statusBarPartStyles];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___SBAppendDescrptionForStatusBarDescribingToBuilder_block_invoke_2;
  v3[3] = &unk_2783B12A8;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void ___SBAppendDescrptionForStatusBarDescribingToBuilder_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = _SBStringFromStatusBarStyle([v10 integerValue]);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v10 stringValue];
  }

  v9 = v8;

  [*(a1 + 32) appendString:v9 withName:v5 skipIfEmpty:1];
}

@end