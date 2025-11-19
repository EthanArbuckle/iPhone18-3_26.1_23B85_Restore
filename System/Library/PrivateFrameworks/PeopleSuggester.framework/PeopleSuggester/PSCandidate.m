@interface PSCandidate
@end

@implementation PSCandidate

void __29___PSCandidate_selfCandidate__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[_PSCandidate alloc] initWithDomainId:@"self" derivedIntentId:@"self" bundleId:@"self" recipientsId:0];
  v2 = [(_PSCandidate *)v1 candidateForDeduping];
  v3 = selfCandidate__pasExprOnceResult;
  selfCandidate__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

@end