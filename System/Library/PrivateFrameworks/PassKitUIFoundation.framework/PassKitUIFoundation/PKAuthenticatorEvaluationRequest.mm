@interface PKAuthenticatorEvaluationRequest
- (PKAuthenticatorEvaluationRequest)initWithPolicy:(int64_t)policy;
- (void)dealloc;
- (void)setAccessControlRef:(__SecAccessControl *)ref;
@end

@implementation PKAuthenticatorEvaluationRequest

- (PKAuthenticatorEvaluationRequest)initWithPolicy:(int64_t)policy
{
  v5.receiver = self;
  v5.super_class = PKAuthenticatorEvaluationRequest;
  result = [(PKAuthenticatorEvaluationRequest *)&v5 init];
  if (result)
  {
    result->_policy = policy;
    result->_maxBiometryFailures = *MEMORY[0x277D38590];
  }

  return result;
}

- (void)dealloc
{
  accessControlRef = self->_accessControlRef;
  if (accessControlRef)
  {
    CFRelease(accessControlRef);
  }

  v4.receiver = self;
  v4.super_class = PKAuthenticatorEvaluationRequest;
  [(PKAuthenticatorEvaluationRequest *)&v4 dealloc];
}

- (void)setAccessControlRef:(__SecAccessControl *)ref
{
  accessControlRef = self->_accessControlRef;
  if (accessControlRef != ref)
  {
    if (accessControlRef)
    {
      CFRelease(accessControlRef);
      self->_accessControlRef = 0;
    }

    if (ref)
    {
      self->_accessControlRef = CFRetain(ref);
    }
  }
}

@end