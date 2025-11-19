@interface NSProcessInfo
@end

@implementation NSProcessInfo

void __46__NSProcessInfo_ICAdditions__ic_isCloudDaemon__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  ic_isCloudDaemon_sIsCloudDaemon = [v0 isEqualToString:@"com.apple.itunescloudd"];
}

@end