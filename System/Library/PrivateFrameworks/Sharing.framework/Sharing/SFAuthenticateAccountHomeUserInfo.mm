@interface SFAuthenticateAccountHomeUserInfo
- (SFAuthenticateAccountHomeUserInfo)initWithHomeUUID:(id)d userUUID:(id)iD isRMVEnabled:(BOOL)enabled;
@end

@implementation SFAuthenticateAccountHomeUserInfo

- (SFAuthenticateAccountHomeUserInfo)initWithHomeUUID:(id)d userUUID:(id)iD isRMVEnabled:(BOOL)enabled
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = SFAuthenticateAccountHomeUserInfo;
  v11 = [(SFAuthenticateAccountHomeUserInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeUniqueIdentifier, d);
    objc_storeStrong(&v12->_userUniqueIdentifier, iD);
    v12->_isRMVEnabled = enabled;
  }

  return v12;
}

@end