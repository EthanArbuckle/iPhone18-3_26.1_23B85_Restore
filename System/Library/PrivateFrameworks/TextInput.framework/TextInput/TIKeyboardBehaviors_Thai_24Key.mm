@interface TIKeyboardBehaviors_Thai_24Key
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_Thai_24Key

- (id)keyBehaviorsForState:(id)state
{
  if ([state hasInput])
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