@interface UITraitCollection(PosterLegibilityKitAdditions)
+ (id)plk_traitCollectionNotingShouldBeBackdropAware:()PosterLegibilityKitAdditions;
- (id)plk_shouldBeBackdropAware;
@end

@implementation UITraitCollection(PosterLegibilityKitAdditions)

+ (id)plk_traitCollectionNotingShouldBeBackdropAware:()PosterLegibilityKitAdditions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __98__UITraitCollection_PosterLegibilityKitAdditions__plk_traitCollectionNotingShouldBeBackdropAware___block_invoke;
  v5[3] = &__block_descriptor_33_e27_v16__0___UIMutableTraits__8l;
  v6 = a3;
  v3 = [self traitCollectionWithTraits:v5];

  return v3;
}

- (id)plk_shouldBeBackdropAware
{
  v2 = objc_opt_self();
  v3 = [self objectForTrait:v2];

  return v3;
}

@end