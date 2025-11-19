@interface NSString
@end

@implementation NSString

void __59__NSString_ChineseJapanese___asTypeInputsWithNearbyKeyMap___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [MCNearbyKey alloc];
  v5 = [v3 characterAtIndex:0];

  v6 = [(MCNearbyKey *)v4 initWithCharacter:v5 logLikelihood:0.0];
  [v2 addObject:v6];
}

@end