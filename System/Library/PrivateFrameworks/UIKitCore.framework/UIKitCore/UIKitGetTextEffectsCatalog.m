@interface UIKitGetTextEffectsCatalog
@end

@implementation UIKitGetTextEffectsCatalog

void ___UIKitGetTextEffectsCatalog_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E6999368]);
  v1 = MEMORY[0x1E696AAE8];
  v5 = _UIKitResourceBundlePath(@"TextEffectsCatalog.bundle");
  v2 = [v1 bundleWithPath:v5];
  v3 = [v0 initWithName:@"TextEffects" fromBundle:v2 error:0];
  v4 = qword_1ED4A3170;
  qword_1ED4A3170 = v3;
}

@end