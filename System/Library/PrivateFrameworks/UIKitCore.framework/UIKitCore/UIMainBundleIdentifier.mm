@interface UIMainBundleIdentifier
@end

@implementation UIMainBundleIdentifier

void ___UIMainBundleIdentifier_block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = qword_1ED4A26E0;
  qword_1ED4A26E0 = v0;
}

@end