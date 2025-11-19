@interface LSPropertyList(PFAdditionsInternal)
- (_PFRoleManifest)pf_roleManifest;
@end

@implementation LSPropertyList(PFAdditionsInternal)

- (_PFRoleManifest)pf_roleManifest
{
  v2 = objc_getAssociatedObject(a1, "roleManifest");
  if (!v2)
  {
    v2 = [[_PFRoleManifest alloc] initWithPropertyList:a1];
    objc_setAssociatedObject(a1, "roleManifest", v2, 1);
  }

  return v2;
}

@end