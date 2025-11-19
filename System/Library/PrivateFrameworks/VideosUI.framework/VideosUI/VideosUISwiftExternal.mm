@interface VideosUISwiftExternal
+ (id)ascAppInstallerViewControllerWithTitle:(id)a3 subtitle:(id)a4 request:(id)a5 forceDSIDlessInstall:(BOOL)a6 onFlowCompletion:(id)a7;
+ (id)createTVAppExtensionViewControllerWithURL:(id)a3;
+ (id)createTVAppExtensionViewControllerWithURL:(id)a3 completionBlock:(id)a4;
+ (void)buildMenuWithBuilder:(id)a3;
@end

@implementation VideosUISwiftExternal

+ (id)createTVAppExtensionViewControllerWithURL:(id)a3
{
  v3 = a3;
  v4 = [[_TtC8VideosUI32TVAppExtensionHostViewController alloc] initWithURL:v3];

  return v4;
}

+ (id)createTVAppExtensionViewControllerWithURL:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_TtC8VideosUI32TVAppExtensionHostViewController alloc] initWithUrl:v6 completion:v5];

  return v7;
}

+ (id)ascAppInstallerViewControllerWithTitle:(id)a3 subtitle:(id)a4 request:(id)a5 forceDSIDlessInstall:(BOOL)a6 onFlowCompletion:(id)a7
{
  v7 = a6;
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[VUIASCAppInstallerViewController alloc] initWithTitle:v14 subtitle:v13 request:v12 forceDSIDless:v7 onFlowComplete:v11];

  return v15;
}

+ (void)buildMenuWithBuilder:(id)a3
{
  v5 = a3;
  if (_UIEnhancedMainMenuEnabled())
  {
    v3 = [v5 system];
    v4 = [MEMORY[0x1E69DCC88] mainSystem];

    if (v3 == v4)
    {
      [_TtC8VideosUI8VideosUI buildCustomMenuWithBuilder:v5];
    }
  }
}

@end