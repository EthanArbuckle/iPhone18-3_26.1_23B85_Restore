@interface TIKeyboardBehaviors_Thai_24Key
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_Thai_24Key

- (id)keyBehaviorsForState:(id)a3
{
  if ([a3 hasInput])
  {
    v3 = 11;
    v4 = 2;
  }

  else
  {
    v3 = 7;
    v4 = 9;
  }

  v5 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v3 forReturnKey:v4];

  return v5;
}

@end