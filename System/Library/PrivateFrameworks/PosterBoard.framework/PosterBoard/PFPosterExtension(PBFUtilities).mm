@interface PFPosterExtension(PBFUtilities)
- (uint64_t)pbf_supportsGalleryOrUserDefaultsHasItOverriddenToSupportGallery:()PBFUtilities;
@end

@implementation PFPosterExtension(PBFUtilities)

- (uint64_t)pbf_supportsGalleryOrUserDefaultsHasItOverriddenToSupportGallery:()PBFUtilities
{
  v5 = [a1 posterExtensionInfoPlist];
  v6 = [v5 pbf_supportsGallery];

  if (v6)
  {
    return 1;
  }

  v8 = [a1 posterExtensionBundleIdentifier];
  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v9 stringArrayForKey:@"ShowSamplePoster"];
  v7 = [v10 containsObject:v8];

  if (a3)
  {
    *a3 = v7;
  }

  return v7;
}

@end