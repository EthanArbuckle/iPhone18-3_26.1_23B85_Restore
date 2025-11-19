@interface SWWebViewConfigurationFactory
- (SWWebViewConfigurationFactory)initWithProcessPool:(id)a3 websiteDataStore:(id)a4;
- (id)createWebViewConfigurationWithUserContentController:(id)a3 mediaSettings:(id)a4;
@end

@implementation SWWebViewConfigurationFactory

- (SWWebViewConfigurationFactory)initWithProcessPool:(id)a3 websiteDataStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SWWebViewConfigurationFactory;
  v9 = [(SWWebViewConfigurationFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_processPool, a3);
    objc_storeStrong(&v10->_websiteDataStore, a4);
  }

  return v10;
}

- (id)createWebViewConfigurationWithUserContentController:(id)a3 mediaSettings:(id)a4
{
  v6 = MEMORY[0x1E69853A8];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [(SWWebViewConfigurationFactory *)self processPool];
  [v9 setProcessPool:v10];

  [v9 setAllowsAirPlayForMediaPlayback:0];
  [v9 setAllowsPictureInPictureMediaPlayback:0];
  [v9 setUserContentController:v8];

  [v9 _setWaitsForPaintAfterViewDidMoveToWindow:0];
  v11 = [(SWWebViewConfigurationFactory *)self websiteDataStore];
  [v9 setWebsiteDataStore:v11];

  [v9 setAllowsInlineMediaPlayback:1];
  [v9 _setInlineMediaPlaybackRequiresPlaysInlineAttribute:1];
  [v9 setMediaTypesRequiringUserActionForPlayback:{objc_msgSend(v7, "mediaTypesRequiringUserActionForPlayback")}];
  [v9 _setOverrideContentSecurityPolicy:@"img-src 'self' https: news-datastore-assets: *"];
  [v9 setWritingToolsBehavior:-1];
  v12 = objc_alloc_init(MEMORY[0x1E6985338]);
  [v12 _setShouldAllowUserInstalledFonts:0];
  v13 = [MEMORY[0x1E69DC938] currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v15 = [v7 fullScreenEnabled];
  if (v14 == 1)
  {
    v16 = v15;
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