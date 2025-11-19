@interface NSBundle
@end

@implementation NSBundle

void __34__NSBundle_SharingUI__sfui_bundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = sfui_bundle_frameworkBundle;
  sfui_bundle_frameworkBundle = v0;
}

@end