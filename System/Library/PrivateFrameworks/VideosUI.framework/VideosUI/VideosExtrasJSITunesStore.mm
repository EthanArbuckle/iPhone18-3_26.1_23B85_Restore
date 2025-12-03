@interface VideosExtrasJSITunesStore
- (UIViewController)formPresentationViewController;
- (void)loadStoreURL:(id)l playOnLaunch:(id)launch;
@end

@implementation VideosExtrasJSITunesStore

- (void)loadStoreURL:(id)l playOnLaunch:(id)launch
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:{l, launch}];
  if (v4)
  {
    v7 = v4;
    v5 = +[VUIInterfaceFactory sharedInstance];
    openURLHandler = [v5 openURLHandler];

    [openURLHandler processItunesExtrasStoreLink:v7];
    v4 = v7;
  }
}

- (UIViewController)formPresentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_formPresentationViewController);

  return WeakRetained;
}

@end