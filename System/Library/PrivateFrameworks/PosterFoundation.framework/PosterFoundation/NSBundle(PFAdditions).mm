@interface NSBundle(PFAdditions)
- (id)pf_defaultRole;
- (id)pf_supportedRoles;
@end

@implementation NSBundle(PFAdditions)

- (id)pf_supportedRoles
{
  pf_roleManifest = [self pf_roleManifest];
  pf_supportedRoles = [pf_roleManifest pf_supportedRoles];

  return pf_supportedRoles;
}

- (id)pf_defaultRole
{
  pf_roleManifest = [self pf_roleManifest];
  pf_defaultRole = [pf_roleManifest pf_defaultRole];

  return pf_defaultRole;
}

@end