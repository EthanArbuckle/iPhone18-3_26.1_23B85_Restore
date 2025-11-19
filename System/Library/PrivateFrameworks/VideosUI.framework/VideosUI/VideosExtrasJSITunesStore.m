@interface VideosExtrasJSITunesStore
- (UIViewController)formPresentationViewController;
- (void)loadStoreURL:(id)a3 playOnLaunch:(id)a4;
@end

@implementation VideosExtrasJSITunesStore

- (void)loadStoreURL:(id)a3 playOnLaunch:(id)a4
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:{a3, a4}];
  if (v4)
  {
    v7 = v4;
    v5 = +[VUIInterfaceFactory sharedInstance];
    v6 = [v5 openURLHandler];

    [v6 processItunesExtrasStoreLink:v7];
    v4 = v7;
  }
}

- (UIViewController)formPresentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_formPresentationViewController);

  return WeakRetained;
}

@end