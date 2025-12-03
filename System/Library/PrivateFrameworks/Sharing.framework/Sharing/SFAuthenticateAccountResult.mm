@interface SFAuthenticateAccountResult
- (SFAuthenticateAccountResult)initWithAuthenticatedAccounts:(id)accounts knownHomeUserIdentifiers:(id)identifiers isVoiceProfileAvailable:(BOOL)available;
@end

@implementation SFAuthenticateAccountResult

- (SFAuthenticateAccountResult)initWithAuthenticatedAccounts:(id)accounts knownHomeUserIdentifiers:(id)identifiers isVoiceProfileAvailable:(BOOL)available
{
  accountsCopy = accounts;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = SFAuthenticateAccountResult;
  v11 = [(SFAuthenticateAccountResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_authenticatedAccounts, accounts);
    objc_storeStrong(&v12->_knownHomeUserIdentifiers, identifiers);
    v12->_isVoiceProfileAvailable = available;
  }

  return v12;
}

@end