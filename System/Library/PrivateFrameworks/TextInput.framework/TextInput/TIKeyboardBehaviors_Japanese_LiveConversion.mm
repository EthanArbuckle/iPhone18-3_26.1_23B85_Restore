@interface TIKeyboardBehaviors_Japanese_LiveConversion
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_Japanese_LiveConversion

- (id)keyBehaviorsForState:(id)state
{
  stateCopy = state;
  if (([stateCopy hasCandidates] & 1) != 0 || !objc_msgSend(stateCopy, "hasInput"))
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardBehaviors_Japanese_LiveConversion;
    v5 = [(TIKeyboardBehaviors_Japanese *)&v8 keyBehaviorsForState:stateCopy];
  }

  else
  {
    v5 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:7 forReturnKey:10 forTabKey:3];
  }

  v6 = v5;

  return v6;
}

@end