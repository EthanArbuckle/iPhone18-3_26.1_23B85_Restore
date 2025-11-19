@interface NSObject(SAUILayoutSpecifyingOverriding)
- (SAUILayoutSpecifyingOverrider)systemApertureLayoutSpecifyingOverrider;
@end

@implementation NSObject(SAUILayoutSpecifyingOverriding)

- (SAUILayoutSpecifyingOverrider)systemApertureLayoutSpecifyingOverrider
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = objc_getAssociatedObject(v1, "com.apple.SystemApertureUI.layoutSpecifyingOverrider");
  if (!v2)
  {
    v2 = [[SAUILayoutSpecifyingOverrider alloc] initWithTarget:v1];
    objc_setAssociatedObject(v1, "com.apple.SystemApertureUI.layoutSpecifyingOverrider", v2, 1);
  }

  objc_sync_exit(v1);

  return v2;
}

@end