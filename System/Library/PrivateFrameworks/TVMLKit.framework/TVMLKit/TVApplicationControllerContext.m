@interface TVApplicationControllerContext
- (TVApplicationControllerContext)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TVApplicationControllerContext

- (TVApplicationControllerContext)init
{
  v6.receiver = self;
  v6.super_class = TVApplicationControllerContext;
  v2 = [(TVApplicationControllerContext *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    launchOptions = v2->_launchOptions;
    v2->_launchOptions = v3;

    v2->_supportsPictureInPicturePlayback = 1;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TVApplicationControllerContext allocWithZone:?]];
  v5 = [(TVApplicationControllerContext *)self javaScriptApplicationURL];
  [(TVApplicationControllerContext *)v4 setJavaScriptApplicationURL:v5];

  v6 = [(TVApplicationControllerContext *)self storageIdentifier];
  [(TVApplicationControllerContext *)v4 setStorageIdentifier:v6];

  v7 = [(TVApplicationControllerContext *)self launchOptions];
  [(TVApplicationControllerContext *)v4 setLaunchOptions:v7];

  [(TVApplicationControllerContext *)v4 setSupplementary:[(TVApplicationControllerContext *)self isSupplementary]];
  v8 = [(TVApplicationControllerContext *)self appLocalJSURL];
  [(TVApplicationControllerContext *)v4 setAppLocalJSURL:v8];

  v9 = [(TVApplicationControllerContext *)self appJSCachePath];
  [(TVApplicationControllerContext *)v4 setAppJSCachePath:v9];

  v10 = [(TVApplicationControllerContext *)self bagBootURLKey];
  [(TVApplicationControllerContext *)v4 setBagBootURLKey:v10];

  v11 = [(TVApplicationControllerContext *)self offlineJSURL];
  [(TVApplicationControllerContext *)v4 setOfflineJSURL:v11];

  [(TVApplicationControllerContext *)v4 setSupportsPictureInPicturePlayback:[(TVApplicationControllerContext *)self supportsPictureInPicturePlayback]];
  return v4;
}

@end