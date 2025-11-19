@interface TIKeyboardBehaviors_WaitingForCandidates
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_WaitingForCandidates

- (id)keyBehaviorsForState:(id)a3
{
  v3 = a3;
  if ([v3 hasInput] && (objc_msgSend(v3, "hasCandidates") & 1) == 0)
  {
    v4 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:8 forReturnKey:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end