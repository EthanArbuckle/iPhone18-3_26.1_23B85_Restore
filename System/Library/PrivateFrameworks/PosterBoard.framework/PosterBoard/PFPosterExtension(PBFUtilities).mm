@interface PFPosterExtension(PBFUtilities)
- (uint64_t)pbf_supportsGalleryOrUserDefaultsHasItOverriddenToSupportGallery:()PBFUtilities;
@end

@implementation PFPosterExtension(PBFUtilities)

- (uint64_t)pbf_supportsGalleryOrUserDefaultsHasItOverriddenToSupportGallery:()PBFUtilities
{
  posterExtensionInfoPlist = [self posterExtensionInfoPlist];
  pbf_supportsGallery = [posterExtensionInfoPlist pbf_supportsGallery];

  if (pbf_supportsGallery)
  {
    return 1;
  }

  posterExtensionBundleIdentifier = [self posterExtensionBundleIdentifier];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults stringArrayForKey:@"ShowSamplePoster"];
  v7 = [v10 containsObject:posterExtensionBundleIdentifier];

  if (a3)
  {
    *a3 = v7;
  }

  return v7;
}

@end