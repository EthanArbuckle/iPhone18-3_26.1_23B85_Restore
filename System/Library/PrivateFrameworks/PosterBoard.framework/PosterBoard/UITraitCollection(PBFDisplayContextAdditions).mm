@interface UITraitCollection(PBFDisplayContextAdditions)
+ (id)pbf_traitCollectionCompatibleWithContext:()PBFDisplayContextAdditions;
@end

@implementation UITraitCollection(PBFDisplayContextAdditions)

+ (id)pbf_traitCollectionCompatibleWithContext:()PBFDisplayContextAdditions
{
  v3 = a3;
  v4 = MEMORY[0x277D75C80];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__UITraitCollection_PBFDisplayContextAdditions__pbf_traitCollectionCompatibleWithContext___block_invoke;
  v8[3] = &unk_2782C93A0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 traitCollectionWithTraits:v8];

  return v6;
}

@end