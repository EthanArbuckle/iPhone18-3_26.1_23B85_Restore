@interface SFAuthenticateAccountHomeUserInfo
- (SFAuthenticateAccountHomeUserInfo)initWithHomeUUID:(id)a3 userUUID:(id)a4 isRMVEnabled:(BOOL)a5;
@end

@implementation SFAuthenticateAccountHomeUserInfo

- (SFAuthenticateAccountHomeUserInfo)initWithHomeUUID:(id)a3 userUUID:(id)a4 isRMVEnabled:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SFAuthenticateAccountHomeUserInfo;
  v11 = [(SFAuthenticateAccountHomeUserInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeUniqueIdentifier, a3);
    objc_storeStrong(&v12->_userUniqueIdentifier, a4);
    v12->_isRMVEnabled = a5;
  }

  return v12;
}

@end