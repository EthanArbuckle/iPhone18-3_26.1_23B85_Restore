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
  v1 = [a1 _valueForTraitNamed:@"PRXCardSizeClass"];
  v2 = [v1 integerValue];

  return v2;
}

@end