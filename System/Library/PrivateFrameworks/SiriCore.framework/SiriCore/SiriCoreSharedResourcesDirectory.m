@interface SiriCoreSharedResourcesDirectory
@end

@implementation SiriCoreSharedResourcesDirectory

void ___SiriCoreSharedResourcesDirectory_block_invoke()
{
  v2 = CPSharedResourcesDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"Library/Assistant"];
  v1 = _SiriCoreSharedResourcesDirectory_sUserSupportDirectoryPath;
  _SiriCoreSharedResourcesDirectory_sUserSupportDirectoryPath = v0;
}

@end