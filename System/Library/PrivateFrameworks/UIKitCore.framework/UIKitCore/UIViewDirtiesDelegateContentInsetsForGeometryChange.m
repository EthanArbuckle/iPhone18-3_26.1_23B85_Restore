@interface UIViewDirtiesDelegateContentInsetsForGeometryChange
@end

@implementation UIViewDirtiesDelegateContentInsetsForGeometryChange

void ___UIViewDirtiesDelegateContentInsetsForGeometryChange_block_invoke()
{
  v0 = dyld_program_sdk_at_least();
  byte_1EA9946DD = v0;
  if (v0)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v1 objectForKey:@"UIViewUseStaleDelegateContentInsets"];

    v2 = v4;
    if (v4 || (_UIKitPreferencesOnce(), v3 = objc_claimAutoreleasedReturnValue(), [v3 objectForKey:@"UIViewUseStaleDelegateContentInsets"], v5 = objc_claimAutoreleasedReturnValue(), v3, (v2 = v5) != 0))
    {
      v6 = v2;
      byte_1EA9946DD = [v2 BOOLValue] ^ 1;
    }
  }
}

@end