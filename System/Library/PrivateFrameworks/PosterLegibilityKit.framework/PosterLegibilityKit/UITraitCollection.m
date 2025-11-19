@interface UITraitCollection
@end

@implementation UITraitCollection

void __98__UITraitCollection_PosterLegibilityKitAdditions__plk_traitCollectionNotingShouldBeBackdropAware___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v2 numberWithBool:v3];
  v5 = objc_opt_self();
  [v4 setObject:v6 forTrait:v5];
}

@end