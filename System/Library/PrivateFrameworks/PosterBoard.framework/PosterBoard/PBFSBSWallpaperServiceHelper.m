@interface PBFSBSWallpaperServiceHelper
+ (SBSWallpaperService)wallpaperService;
@end

@implementation PBFSBSWallpaperServiceHelper

+ (SBSWallpaperService)wallpaperService
{
  v2 = objc_alloc_init(getSBSWallpaperServiceClass());

  return v2;
}

@end