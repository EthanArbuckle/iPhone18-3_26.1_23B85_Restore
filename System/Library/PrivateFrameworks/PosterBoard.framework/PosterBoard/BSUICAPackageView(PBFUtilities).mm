@interface BSUICAPackageView(PBFUtilities)
+ (id)pbf_galleryHeroMicaViewForExtension:()PBFUtilities;
@end

@implementation BSUICAPackageView(PBFUtilities)

+ (id)pbf_galleryHeroMicaViewForExtension:()PBFUtilities
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  posterExtensionBundleIdentifier = [v3 posterExtensionBundleIdentifier];
  v5 = [posterExtensionBundleIdentifier isEqualToString:@"com.apple.weather.poster"];

  if (v5)
  {
    if (pbf_galleryHeroMicaViewForExtension__onceToken != -1)
    {
      +[BSUICAPackageView(PBFUtilities) pbf_galleryHeroMicaViewForExtension:];
    }

    v6 = PBFLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      posterExtensionBundleIdentifier2 = [v3 posterExtensionBundleIdentifier];
      v10 = 138412290;
      v11 = posterExtensionBundleIdentifier2;
      _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "BSUICAPackageView(PBFUtilities) using %@ fallback mica view", &v10, 0xCu);
    }

    v8 = pbf_galleryHeroMicaViewForExtension__weatherView;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end