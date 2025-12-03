@interface ICDelegationConsumerServiceSessionRequestResult
- (ICDelegationConsumerServiceSessionRequestResult)initWithDelegateToken:(id)token storefrontIdentifier:(id)identifier resultError:(id)error;
@end

@implementation ICDelegationConsumerServiceSessionRequestResult

- (ICDelegationConsumerServiceSessionRequestResult)initWithDelegateToken:(id)token storefrontIdentifier:(id)identifier resultError:(id)error
{
  tokenCopy = token;
  identifierCopy = identifier;
  errorCopy = error;
  v19.receiver = self;
  v19.super_class = ICDelegationConsumerServiceSessionRequestResult;
  v11 = [(ICDelegationConsumerServiceSessionRequestResult *)&v19 init];
  if (v11)
  {
    v12 = [tokenCopy copy];
    delegateToken = v11->_delegateToken;
    v11->_delegateToken = v12;

    v14 = [errorCopy copy];
    resultError = v11->_resultError;
    v11->_resultError = v14;

    v16 = [identifierCopy copy];
    storefrontIdentifier = v11->_storefrontIdentifier;
    v11->_storefrontIdentifier = v16;
  }

  return v11;
}

@end