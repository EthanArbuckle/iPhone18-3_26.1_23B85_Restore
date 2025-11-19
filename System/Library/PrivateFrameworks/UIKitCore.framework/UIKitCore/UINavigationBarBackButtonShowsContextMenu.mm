@interface UINavigationBarBackButtonShowsContextMenu
@end

@implementation UINavigationBarBackButtonShowsContextMenu

void ___UINavigationBarBackButtonShowsContextMenu_block_invoke()
{
  v0 = _UIKitUserDefaults();
  v2 = [v0 objectForKey:@"NavigationBarBackButtonShowsContextMenu"];

  if (v2)
  {
    v1 = [v2 BOOLValue];
  }

  else
  {
    v1 = dyld_program_sdk_at_least();
  }

  byte_1ED49BF62 = v1;
}

@end