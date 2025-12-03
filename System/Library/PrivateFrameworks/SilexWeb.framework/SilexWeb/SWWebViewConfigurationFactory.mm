@interface SWWebViewConfigurationFactory
- (SWWebViewConfigurationFactory)initWithProcessPool:(id)pool websiteDataStore:(id)store;
- (id)createWebViewConfigurationWithUserContentController:(id)controller mediaSettings:(id)settings;
@end

@implementation SWWebViewConfigurationFactory

- (SWWebViewConfigurationFactory)initWithProcessPool:(id)pool websiteDataStore:(id)store
{
  poolCopy = pool;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = SWWebViewConfigurationFactory;
  v9 = [(SWWebViewConfigurationFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_processPool, pool);
    objc_storeStrong(&v10->_websiteDataStore, store);
  }

  return v10;
}

- (id)createWebViewConfigurationWithUserContentController:(id)controller mediaSettings:(id)settings
{
  v6 = MEMORY[0x1E69853A8];
  settingsCopy = settings;
  controllerCopy = controller;
  v9 = objc_alloc_init(v6);
  processPool = [(SWWebViewConfigurationFactory *)self processPool];
  [v9 setProcessPool:processPool];

  [v9 setAllowsAirPlayForMediaPlayback:0];
  [v9 setAllowsPictureInPictureMediaPlayback:0];
  [v9 setUserContentController:controllerCopy];

  [v9 _setWaitsForPaintAfterViewDidMoveToWindow:0];
  websiteDataStore = [(SWWebViewConfigurationFactory *)self websiteDataStore];
  [v9 setWebsiteDataStore:websiteDataStore];

  [v9 setAllowsInlineMediaPlayback:1];
  [v9 _setInlineMediaPlaybackRequiresPlaysInlineAttribute:1];
  [v9 setMediaTypesRequiringUserActionForPlayback:{objc_msgSend(settingsCopy, "mediaTypesRequiringUserActionForPlayback")}];
  [v9 _setOverrideContentSecurityPolicy:@"img-src 'self' https: news-datastore-assets: *"];
  [v9 setWritingToolsBehavior:-1];
  v12 = objc_alloc_init(MEMORY[0x1E6985338]);
  [v12 _setShouldAllowUserInstalledFonts:0];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  fullScreenEnabled = [settingsCopy fullScreenEnabled];
  if (userInterfaceIdiom == 1)
  {
    v16 = fullScreenEnabled;
  }

  else
  {
    v16 = 0;
  }

  [v12 _setFullScreenEnabled:v16];
  [v9 setPreferences:v12];

  return v9;
}

@end