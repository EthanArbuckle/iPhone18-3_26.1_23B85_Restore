@interface LSPropertyList(PFAdditionsInternal)
- (_PFRoleManifest)pf_roleManifest;
@end

@implementation LSPropertyList(PFAdditionsInternal)

- (_PFRoleManifest)pf_roleManifest
{
  v2 = objc_getAssociatedObject(self, "roleManifest");
  if (!v2)
  {
    v2 = [[_PFRoleManifest alloc] initWithPropertyList:self];
    objc_setAssociatedObject(self, "roleManifest", v2, 1);
  }

  return v2;
}

@end