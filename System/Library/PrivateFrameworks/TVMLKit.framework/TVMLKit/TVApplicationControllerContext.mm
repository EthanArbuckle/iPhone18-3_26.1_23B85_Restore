@interface TVApplicationControllerContext
- (TVApplicationControllerContext)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TVApplicationControllerContext

- (TVApplicationControllerContext)init
{
  v6.receiver = self;
  v6.super_class = TVApplicationControllerContext;
  v2 = [(TVApplicationControllerContext *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    launchOptions = v2->_launchOptions;
    v2->_launchOptions = dictionary;

    v2->_supportsPictureInPicturePlayback = 1;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TVApplicationControllerContext allocWithZone:?]];
  javaScriptApplicationURL = [(TVApplicationControllerContext *)self javaScriptApplicationURL];
  [(TVApplicationControllerContext *)v4 setJavaScriptApplicationURL:javaScriptApplicationURL];

  storageIdentifier = [(TVApplicationControllerContext *)self storageIdentifier];
  [(TVApplicationControllerContext *)v4 setStorageIdentifier:storageIdentifier];

  launchOptions = [(TVApplicationControllerContext *)self launchOptions];
  [(TVApplicationControllerContext *)v4 setLaunchOptions:launchOptions];

  [(TVApplicationControllerContext *)v4 setSupplementary:[(TVApplicationControllerContext *)self isSupplementary]];
  appLocalJSURL = [(TVApplicationControllerContext *)self appLocalJSURL];
  [(TVApplicationControllerContext *)v4 setAppLocalJSURL:appLocalJSURL];

  appJSCachePath = [(TVApplicationControllerContext *)self appJSCachePath];
  [(TVApplicationControllerContext *)v4 setAppJSCachePath:appJSCachePath];

  bagBootURLKey = [(TVApplicationControllerContext *)self bagBootURLKey];
  [(TVApplicationControllerContext *)v4 setBagBootURLKey:bagBootURLKey];

  offlineJSURL = [(TVApplicationControllerContext *)self offlineJSURL];
  [(TVApplicationControllerContext *)v4 setOfflineJSURL:offlineJSURL];

  [(TVApplicationControllerContext *)v4 setSupportsPictureInPicturePlayback:[(TVApplicationControllerContext *)self supportsPictureInPicturePlayback]];
  return v4;
}

@end