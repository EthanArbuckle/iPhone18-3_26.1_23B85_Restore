@interface TIKeyboardBehaviors_Thai
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_Thai

- (id)keyBehaviorsForState:(id)state
{
  stateCopy = state;
  if ([stateCopy hasAutocorrection])
  {
    if ([stateCopy isContinuousPathUnderway])
    {
      v4 = 7;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 7;
  }

  v5 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v4 forReturnKey:0];

  return v5;
}

@end