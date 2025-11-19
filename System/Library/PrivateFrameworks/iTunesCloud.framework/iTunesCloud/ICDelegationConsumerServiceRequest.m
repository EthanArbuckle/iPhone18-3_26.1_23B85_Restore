@interface ICDelegationConsumerServiceRequest
- (ICDelegationConsumerServiceRequest)initWithUserIdentityDelegationAccountUUIDs:(id)a3 requestContext:(id)a4 timeoutInterval:(double)a5;
@end

@implementation ICDelegationConsumerServiceRequest

- (ICDelegationConsumerServiceRequest)initWithUserIdentityDelegationAccountUUIDs:(id)a3 requestContext:(id)a4 timeoutInterval:(double)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = ICDelegationConsumerServiceRequest;
  v10 = [(ICDelegationConsumerServiceRequest *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    userIdentityDelegationAccountUUIDs = v10->_userIdentityDelegationAccountUUIDs;
    v10->_userIdentityDelegationAccountUUIDs = v11;

    v13 = [v9 copy];
    requestContext = v10->_requestContext;
    v10->_requestContext = v13;

    v10->_timeoutInterval = a5;
  }

  return v10;
}

@end