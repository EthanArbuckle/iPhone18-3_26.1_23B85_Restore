@interface TIKeyboardBehaviors_Simple
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_Simple

- (id)keyBehaviorsForState:(id)state
{
  stateCopy = state;
  if ([stateCopy hasCandidates])
  {
    if ([stateCopy hasCandidateSelected])
    {
      v4 = 4;
    }

    else
    {
      v4 = 3;
    }

    v5 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v4 forReturnKey:2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end