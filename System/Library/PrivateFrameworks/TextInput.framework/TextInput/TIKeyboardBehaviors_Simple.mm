@interface TIKeyboardBehaviors_Simple
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_Simple

- (id)keyBehaviorsForState:(id)a3
{
  v3 = a3;
  if ([v3 hasCandidates])
  {
    if ([v3 hasCandidateSelected])
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