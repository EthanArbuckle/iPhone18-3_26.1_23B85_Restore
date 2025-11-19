@interface UISTouchAuthenticationTelemetryShouldReportBundleID
@end

@implementation UISTouchAuthenticationTelemetryShouldReportBundleID

void ___UISTouchAuthenticationTelemetryShouldReportBundleID_block_invoke()
{
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = [v1 deviceIdentifierForVendor];
  [v0 getUUIDBytes:&unk_1ED51BF88];
}

@end