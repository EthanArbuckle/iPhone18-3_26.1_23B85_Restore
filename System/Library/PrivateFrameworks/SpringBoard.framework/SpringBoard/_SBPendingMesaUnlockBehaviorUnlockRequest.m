@interface _SBPendingMesaUnlockBehaviorUnlockRequest
- (_SBPendingMesaUnlockBehaviorUnlockRequest)initWithBehavior:(id)a3 request:(id)a4 feedback:(id)a5;
@end

@implementation _SBPendingMesaUnlockBehaviorUnlockRequest

- (_SBPendingMesaUnlockBehaviorUnlockRequest)initWithBehavior:(id)a3 request:(id)a4 feedback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _SBPendingMesaUnlockBehaviorUnlockRequest;
  v12 = [(_SBPendingMesaUnlockBehaviorUnlockRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_behavior, a3);
    objc_storeStrong(&v13->_request, a4);
    objc_storeStrong(&v13->_feedback, a5);
  }

  return v13;
}

@end