@interface NSUserDefaults
@end

@implementation NSUserDefaults

id __58__NSUserDefaults_WKAdditions__wk_wallpaperKitUserDefaults__block_invoke()
{
  if (WKIgnoreLogicalScreenClassForWallpaperBundleKey_block_invoke_na_once_token_0 != -1)
  {
    __58__NSUserDefaults_WKAdditions__wk_wallpaperKitUserDefaults__block_invoke_cold_1();
  }

  v1 = WKIgnoreLogicalScreenClassForWallpaperBundleKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __58__NSUserDefaults_WKAdditions__wk_wallpaperKitUserDefaults__block_invoke_2()
{
  WKIgnoreLogicalScreenClassForWallpaperBundleKey_block_invoke_na_once_object_0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.WallpaperKit"];

  return MEMORY[0x1EEE66BB8]();
}

@end