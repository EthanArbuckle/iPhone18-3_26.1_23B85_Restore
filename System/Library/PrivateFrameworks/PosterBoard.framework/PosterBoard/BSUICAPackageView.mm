@interface BSUICAPackageView
@end

@implementation BSUICAPackageView

void __71__BSUICAPackageView_PBFUtilities__pbf_galleryHeroMicaViewForExtension___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CF0D48]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 initWithPackageName:@"WeatherOrb" inBundle:v3];
  v2 = pbf_galleryHeroMicaViewForExtension__weatherView;
  pbf_galleryHeroMicaViewForExtension__weatherView = v1;
}

@end