@interface NSBundle(PFAdditionsInternal)
- (_PFRoleManifest)pf_roleManifest;
@end

@implementation NSBundle(PFAdditionsInternal)

- (_PFRoleManifest)pf_roleManifest
{
  v2 = objc_getAssociatedObject(self, "roleManifest");
  if (!v2)
  {
    v3 = [_PFRoleManifest alloc];
    infoDictionary = [self infoDictionary];
    v2 = [(_PFRoleManifest *)v3 initWithInfoDictionary:infoDictionary];

    objc_setAssociatedObject(self, "roleManifest", v2, 1);
  }

  return v2;
}

@end