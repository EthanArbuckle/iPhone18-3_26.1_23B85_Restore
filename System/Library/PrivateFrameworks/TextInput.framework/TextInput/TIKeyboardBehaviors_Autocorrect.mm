@interface TIKeyboardBehaviors_Autocorrect
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_Autocorrect

- (id)keyBehaviorsForState:(id)state
{
  if ([state hasCandidates])
  {
    v3 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:7 forReturnKey:9];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end