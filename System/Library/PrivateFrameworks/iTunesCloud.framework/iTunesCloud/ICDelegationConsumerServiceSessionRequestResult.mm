@interface ICDelegationConsumerServiceSessionRequestResult
- (ICDelegationConsumerServiceSessionRequestResult)initWithDelegateToken:(id)a3 storefrontIdentifier:(id)a4 resultError:(id)a5;
@end

@implementation ICDelegationConsumerServiceSessionRequestResult

- (ICDelegationConsumerServiceSessionRequestResult)initWithDelegateToken:(id)a3 storefrontIdentifier:(id)a4 resultError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ICDelegationConsumerServiceSessionRequestResult;
  v11 = [(ICDelegationConsumerServiceSessionRequestResult *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    delegateToken = v11->_delegateToken;
    v11->_delegateToken = v12;

    v14 = [v10 copy];
    resultError = v11->_resultError;
    v11->_resultError = v14;

    v16 = [v9 copy];
    storefrontIdentifier = v11->_storefrontIdentifier;
    v11->_storefrontIdentifier = v16;
  }

  return v11;
}

@end