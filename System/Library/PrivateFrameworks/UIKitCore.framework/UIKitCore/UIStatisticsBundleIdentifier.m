@interface UIStatisticsBundleIdentifier
@end

@implementation UIStatisticsBundleIdentifier

uint64_t ___UIStatisticsBundleIdentifier_block_invoke()
{
  _MergedGlobals_1361 = os_variant_has_internal_diagnostics();
  v0 = _UIMainBundleIdentifier();
  v1 = qword_1ED4A2898;
  qword_1ED4A2898 = v0;

  result = [qword_1ED4A2898 hasPrefix:@"com.apple."];
  byte_1ED4A27D1 = result;
  return result;
}

@end