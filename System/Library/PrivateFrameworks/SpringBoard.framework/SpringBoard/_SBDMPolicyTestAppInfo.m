@interface _SBDMPolicyTestAppInfo
- (BOOL)isBlockedForScreenTimeExpiration;
- (int64_t)screenTimePolicy;
@end

@implementation _SBDMPolicyTestAppInfo

- (BOOL)isBlockedForScreenTimeExpiration
{
  if ([(_SBDMPolicyTestAppInfo *)self testAppBlocked])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _SBDMPolicyTestAppInfo;
  return [(_SBDMPolicyTestAppInfo *)&v4 isBlockedForScreenTimeExpiration];
}

- (int64_t)screenTimePolicy
{
  if ([(_SBDMPolicyTestAppInfo *)self testAppBlocked])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _SBDMPolicyTestAppInfo;
  return [(_SBDMPolicyTestAppInfo *)&v4 screenTimePolicy];
}

@end