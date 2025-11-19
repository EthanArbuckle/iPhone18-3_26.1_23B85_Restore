@interface SBHLibraryPodIconView
@end

@implementation SBHLibraryPodIconView

uint64_t __55___SBHLibraryPodIconView_createNewIconLabelViewFactory__block_invoke()
{
  v0 = [[SBIconLabelViewDefaultFactory alloc] initWithFactoryIdentifier:@"App Library Factory"];
  v1 = createNewIconLabelViewFactory_appLibraryFactory;
  createNewIconLabelViewFactory_appLibraryFactory = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end