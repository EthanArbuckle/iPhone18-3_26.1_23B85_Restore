@interface UIImage
@end

@implementation UIImage

void __97__UIImage_PBFUtilities__pbf_galleryHeroSnapshotForExtension_descriptorIdentifier_displayContext___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CF0D68]) initWithUniqueIdentifier:@"Gallery Hero image cache"];
  v1 = pbf_galleryHeroSnapshotForExtension_descriptorIdentifier_displayContext__heroCache;
  pbf_galleryHeroSnapshotForExtension_descriptorIdentifier_displayContext__heroCache = v0;
}

id __97__UIImage_PBFUtilities__pbf_galleryHeroSnapshotForExtension_descriptorIdentifier_displayContext___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", a1[4], a1[5]];
  v3 = [MEMORY[0x277D75C80] pbf_traitCollectionCompatibleWithContext:a1[6]];
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:v2 inBundle:v5 compatibleWithTraitCollection:v3];

  return v6;
}

@end