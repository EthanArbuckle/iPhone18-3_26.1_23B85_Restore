@interface _SBPendingMesaUnlockBehaviorUnlockRequest
- (_SBPendingMesaUnlockBehaviorUnlockRequest)initWithBehavior:(id)behavior request:(id)request feedback:(id)feedback;
@end

@implementation _SBPendingMesaUnlockBehaviorUnlockRequest

- (_SBPendingMesaUnlockBehaviorUnlockRequest)initWithBehavior:(id)behavior request:(id)request feedback:(id)feedback
{
  behaviorCopy = behavior;
  requestCopy = request;
  feedbackCopy = feedback;
  v15.receiver = self;
  v15.super_class = _SBPendingMesaUnlockBehaviorUnlockRequest;
  v12 = [(_SBPendingMesaUnlockBehaviorUnlockRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_behavior, behavior);
    objc_storeStrong(&v13->_request, request);
    objc_storeStrong(&v13->_feedback, feedback);
  }

  return v13;
}

@end