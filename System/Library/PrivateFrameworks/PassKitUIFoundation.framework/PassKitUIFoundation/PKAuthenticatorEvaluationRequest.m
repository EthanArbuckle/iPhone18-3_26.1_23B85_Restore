@interface PKAuthenticatorEvaluationRequest
- (PKAuthenticatorEvaluationRequest)initWithPolicy:(int64_t)a3;
- (void)dealloc;
- (void)setAccessControlRef:(__SecAccessControl *)a3;
@end

@implementation PKAuthenticatorEvaluationRequest

- (PKAuthenticatorEvaluationRequest)initWithPolicy:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKAuthenticatorEvaluationRequest;
  result = [(PKAuthenticatorEvaluationRequest *)&v5 init];
  if (result)
  {
    result->_policy = a3;
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

- (void)setAccessControlRef:(__SecAccessControl *)a3
{
  accessControlRef = self->_accessControlRef;
  if (accessControlRef != a3)
  {
    if (accessControlRef)
    {
      CFRelease(accessControlRef);
      self->_accessControlRef = 0;
    }

    if (a3)
    {
      self->_accessControlRef = CFRetain(a3);
    }
  }
}

@end