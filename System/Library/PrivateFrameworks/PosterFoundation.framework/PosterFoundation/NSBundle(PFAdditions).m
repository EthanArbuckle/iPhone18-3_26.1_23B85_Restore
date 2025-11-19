@interface NSBundle(PFAdditions)
- (id)pf_defaultRole;
- (id)pf_supportedRoles;
@end

@implementation NSBundle(PFAdditions)

- (id)pf_supportedRoles
{
  v1 = [a1 pf_roleManifest];
  v2 = [v1 pf_supportedRoles];

  return v2;
}

- (id)pf_defaultRole
{
  v1 = [a1 pf_roleManifest];
  v2 = [v1 pf_defaultRole];

  return v2;
}

@end