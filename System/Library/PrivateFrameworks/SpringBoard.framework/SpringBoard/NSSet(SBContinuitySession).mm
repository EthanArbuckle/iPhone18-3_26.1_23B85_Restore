@interface NSSet(SBContinuitySession)
- (id)sb_setByRemovingReason:()SBContinuitySession;
@end

@implementation NSSet(SBContinuitySession)

- (id)sb_setByRemovingReason:()SBContinuitySession
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__NSSet_SBContinuitySession__sb_setByRemovingReason___block_invoke;
  v8[3] = &unk_2783A8B78;
  v9 = v4;
  v5 = v4;
  v6 = [self bs_filter:v8];

  return v6;
}

@end