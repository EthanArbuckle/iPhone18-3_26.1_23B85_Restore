@interface UIIsPreDawnTraitChangeFragileApp
@end

@implementation UIIsPreDawnTraitChangeFragileApp

void ___UIIsPreDawnTraitChangeFragileApp_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    byte_1ED498B42 = 0;
  }

  else
  {
    v0 = _UIMainBundleIdentifier();
    byte_1ED498B42 = [&unk_1EFE2DA50 containsObject:v0];
  }
}

@end