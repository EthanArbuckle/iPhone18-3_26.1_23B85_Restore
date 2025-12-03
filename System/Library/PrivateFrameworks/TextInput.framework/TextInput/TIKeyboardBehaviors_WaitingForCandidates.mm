@interface TIKeyboardBehaviors_WaitingForCandidates
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_WaitingForCandidates

- (id)keyBehaviorsForState:(id)state
{
  stateCopy = state;
  if ([stateCopy hasInput] && (objc_msgSend(stateCopy, "hasCandidates") & 1) == 0)
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