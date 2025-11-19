@interface AXSVideosPreferenceDomain
@end

@implementation AXSVideosPreferenceDomain

CFStringRef ___AXSVideosPreferenceDomain_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = AXCPSharedResourcesDirectory();
  result = CFStringCreateWithFormat(v0, 0, @"%@/Library/Preferences/%@", v1, @"com.apple.videos");
  _AXSVideosPreferenceDomain_Domain = result;
  return result;
}

@end