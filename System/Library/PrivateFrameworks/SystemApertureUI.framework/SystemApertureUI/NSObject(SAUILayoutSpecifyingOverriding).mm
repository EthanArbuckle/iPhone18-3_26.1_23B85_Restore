@interface NSObject(SAUILayoutSpecifyingOverriding)
- (SAUILayoutSpecifyingOverrider)systemApertureLayoutSpecifyingOverrider;
@end

@implementation NSObject(SAUILayoutSpecifyingOverriding)

- (SAUILayoutSpecifyingOverrider)systemApertureLayoutSpecifyingOverrider
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, "com.apple.SystemApertureUI.layoutSpecifyingOverrider");
  if (!v2)
  {
    v2 = [[SAUILayoutSpecifyingOverrider alloc] initWithTarget:selfCopy];
    objc_setAssociatedObject(selfCopy, "com.apple.SystemApertureUI.layoutSpecifyingOverrider", v2, 1);
  }

  objc_sync_exit(selfCopy);

  return v2;
}

@end