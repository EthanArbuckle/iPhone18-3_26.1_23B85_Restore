@interface UIBarsUseDynamicType
@end

@implementation UIBarsUseDynamicType

void ___UIBarsUseDynamicType_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    byte_1ED49BF61 = 1;
  }

  v0 = _UIKitUserDefaults();
  v2 = [v0 objectForKey:@"BarUseDynamicType"];

  v1 = v2;
  if (v2)
  {
    byte_1ED49BF61 = [v2 BOOLValue];
    v1 = v2;
  }
}

@end