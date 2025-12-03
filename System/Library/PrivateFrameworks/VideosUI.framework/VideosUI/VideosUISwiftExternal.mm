@interface VideosUISwiftExternal
+ (id)ascAppInstallerViewControllerWithTitle:(id)title subtitle:(id)subtitle request:(id)request forceDSIDlessInstall:(BOOL)install onFlowCompletion:(id)completion;
+ (id)createTVAppExtensionViewControllerWithURL:(id)l;
+ (id)createTVAppExtensionViewControllerWithURL:(id)l completionBlock:(id)block;
+ (void)buildMenuWithBuilder:(id)builder;
@end

@implementation VideosUISwiftExternal

+ (id)createTVAppExtensionViewControllerWithURL:(id)l
{
  lCopy = l;
  v4 = [[_TtC8VideosUI32TVAppExtensionHostViewController alloc] initWithURL:lCopy];

  return v4;
}

+ (id)createTVAppExtensionViewControllerWithURL:(id)l completionBlock:(id)block
{
  blockCopy = block;
  lCopy = l;
  v7 = [[_TtC8VideosUI32TVAppExtensionHostViewController alloc] initWithUrl:lCopy completion:blockCopy];

  return v7;
}

+ (id)ascAppInstallerViewControllerWithTitle:(id)title subtitle:(id)subtitle request:(id)request forceDSIDlessInstall:(BOOL)install onFlowCompletion:(id)completion
{
  installCopy = install;
  completionCopy = completion;
  requestCopy = request;
  subtitleCopy = subtitle;
  titleCopy = title;
  v15 = [[VUIASCAppInstallerViewController alloc] initWithTitle:titleCopy subtitle:subtitleCopy request:requestCopy forceDSIDless:installCopy onFlowComplete:completionCopy];

  return v15;
}

+ (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  if (_UIEnhancedMainMenuEnabled())
  {
    system = [builderCopy system];
    mainSystem = [MEMORY[0x1E69DCC88] mainSystem];

    if (system == mainSystem)
    {
      [_TtC8VideosUI8VideosUI buildCustomMenuWithBuilder:builderCopy];
    }
  }
}

@end