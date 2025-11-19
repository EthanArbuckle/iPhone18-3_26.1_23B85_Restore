@interface TIKeyboardBehaviors_Autocorrect
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_Autocorrect

- (id)keyBehaviorsForState:(id)a3
{
  if ([a3 hasCandidates])
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