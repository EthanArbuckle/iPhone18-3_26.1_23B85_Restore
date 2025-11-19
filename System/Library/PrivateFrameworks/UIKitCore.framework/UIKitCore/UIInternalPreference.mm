@interface UIInternalPreference
@end

@implementation UIInternalPreference

id _UIInternalPreference_ViewControllersInheritTraitsFromViewHierarchy_block_invoke_2(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"Controller" options:12];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v1 substringToIndex:v2];
  }

  return v3;
}

id _UIInternalPreference_ForceIOSDeviceInsets_block_invoke(void *a1)
{
  v1 = a1;
  v2 = [v1 parentModalViewController];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 parentViewController];
  }

  v5 = v4;

  return v5;
}

@end