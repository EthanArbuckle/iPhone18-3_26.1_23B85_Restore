@interface UIApplication(Debugging)
+ (id)_pu_debugSearchViewControllerHierarchyUsingBlock:()Debugging;
@end

@implementation UIApplication(Debugging)

+ (id)_pu_debugSearchViewControllerHierarchyUsingBlock:()Debugging
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__98245;
  v10 = __Block_byref_object_dispose__98246;
  v11 = 0;
  v5 = a3;
  PXEnumerateViewControllersUsingBlock();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

@end