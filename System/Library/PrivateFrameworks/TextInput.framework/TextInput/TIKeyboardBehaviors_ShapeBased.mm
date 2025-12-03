@interface TIKeyboardBehaviors_ShapeBased
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_ShapeBased

- (id)keyBehaviorsForState:(id)state
{
  stateCopy = state;
  if ([stateCopy hasCandidates])
  {
    if (([stateCopy hasCandidateSelected] & 1) != 0 || objc_msgSend(stateCopy, "hasInput"))
    {
      v4 = 4;
      v5 = 2;
    }

    else
    {
      v4 = 7;
      v5 = 9;
    }
  }

  else
  {
    if (![stateCopy hasInput])
    {
      v6 = 0;
      goto LABEL_10;
    }

    v4 = 8;
    v5 = 8;
  }

  v6 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v4 forReturnKey:v5];
LABEL_10:

  return v6;
}

@end