@interface ICDelegationConsumerServiceRequest
- (ICDelegationConsumerServiceRequest)initWithUserIdentityDelegationAccountUUIDs:(id)ds requestContext:(id)context timeoutInterval:(double)interval;
@end

@implementation ICDelegationConsumerServiceRequest

- (ICDelegationConsumerServiceRequest)initWithUserIdentityDelegationAccountUUIDs:(id)ds requestContext:(id)context timeoutInterval:(double)interval
{
  dsCopy = ds;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = ICDelegationConsumerServiceRequest;
  v10 = [(ICDelegationConsumerServiceRequest *)&v16 init];
  if (v10)
  {
    v11 = [dsCopy copy];
    userIdentityDelegationAccountUUIDs = v10->_userIdentityDelegationAccountUUIDs;
    v10->_userIdentityDelegationAccountUUIDs = v11;

    v13 = [contextCopy copy];
    requestContext = v10->_requestContext;
    v10->_requestContext = v13;

    v10->_timeoutInterval = interval;
  }

  return v10;
}

@end