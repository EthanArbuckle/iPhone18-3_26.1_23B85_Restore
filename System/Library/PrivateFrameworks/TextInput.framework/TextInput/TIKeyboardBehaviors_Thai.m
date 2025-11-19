@interface TIKeyboardBehaviors_Thai
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_Thai

- (id)keyBehaviorsForState:(id)a3
{
  v3 = a3;
  if ([v3 hasAutocorrection])
  {
    if ([v3 isContinuousPathUnderway])
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