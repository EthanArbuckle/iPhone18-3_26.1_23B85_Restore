@interface UITraitCollection(PRXUITraitCollectionExtras)
+ (id)prx_traitCollectionWithCardSizeClass:()PRXUITraitCollectionExtras;
- (uint64_t)prx_cardSizeClass;
@end

@implementation UITraitCollection(PRXUITraitCollectionExtras)

+ (id)prx_traitCollectionWithCardSizeClass:()PRXUITraitCollectionExtras
{
  v0 = MEMORY[0x277D75C80];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v2 = [v0 _traitCollectionWithValue:v1 forTraitNamed:@"PRXCardSizeClass"];

  return v2;
}

- (uint64_t)prx_cardSizeClass
{
  v1 = [self _valueForTraitNamed:@"PRXCardSizeClass"];
  integerValue = [v1 integerValue];

  return integerValue;
}

@end