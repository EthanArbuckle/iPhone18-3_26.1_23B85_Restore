@interface PRSWallpaperLocationStateObserver
- (PRSWallpaperLocationStateObserver)init;
@end

@implementation PRSWallpaperLocationStateObserver

- (PRSWallpaperLocationStateObserver)init
{
  v3.receiver = self;
  v3.super_class = PRSWallpaperLocationStateObserver;
  result = [(PRSWallpaperLocationStateObserver *)&v3 init];
  if (result)
  {
    result->_locations = 12;
    result->_needsSandboxExtensions = 1;
  }

  return result;
}

@end