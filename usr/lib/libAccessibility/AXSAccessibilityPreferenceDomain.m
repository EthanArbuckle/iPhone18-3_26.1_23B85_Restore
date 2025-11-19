@interface AXSAccessibilityPreferenceDomain
@end

@implementation AXSAccessibilityPreferenceDomain

CFStringRef ___AXSAccessibilityPreferenceDomain_block_invoke()
{
  v0 = kAXSAccessibilityPreferenceDomain;
  v1 = *MEMORY[0x1E695E480];
  v2 = AXCPSharedResourcesDirectory();
  result = CFStringCreateWithFormat(v1, 0, @"%@/Library/Preferences/%@", v2, v0);
  _AXSAccessibilityPreferenceDomain_Domain = result;
  return result;
}

@end