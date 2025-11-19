@interface SBFProceduralWallpaper
+ (id)identifier;
- (void)setAnimating:(BOOL)a3;
@end

@implementation SBFProceduralWallpaper

+ (id)identifier
{
  v2 = SBLogWallpaper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_1BEA11000, v2, OS_LOG_TYPE_ERROR, "SBFProceduralWallpaper subclasses must implement +identifier", v3, 2u);
  }

  __assert_rtn("+[SBFProceduralWallpaper identifier]", "SBFWallpaperUtilties.m", 38, "0");
}

- (void)setAnimating:(BOOL)a3
{
  v3 = SBLogWallpaper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_ERROR, "SBFProceduralWallpaper subclasses must implement -setAnimating:", v4, 2u);
  }

  __assert_rtn("[SBFProceduralWallpaper setAnimating:]", "SBFWallpaperUtilties.m", 44, "0");
}

@end