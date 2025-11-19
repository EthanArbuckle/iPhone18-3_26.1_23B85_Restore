@interface SFAuthenticateAccountResult
- (SFAuthenticateAccountResult)initWithAuthenticatedAccounts:(id)a3 knownHomeUserIdentifiers:(id)a4 isVoiceProfileAvailable:(BOOL)a5;
@end

@implementation SFAuthenticateAccountResult

- (SFAuthenticateAccountResult)initWithAuthenticatedAccounts:(id)a3 knownHomeUserIdentifiers:(id)a4 isVoiceProfileAvailable:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SFAuthenticateAccountResult;
  v11 = [(SFAuthenticateAccountResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_authenticatedAccounts, a3);
    objc_storeStrong(&v12->_knownHomeUserIdentifiers, a4);
    v12->_isVoiceProfileAvailable = a5;
  }

  return v12;
}

@end