@interface TIKeyboardBehaviors_Japanese
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_Japanese

- (id)keyBehaviorsForState:(id)state
{
  stateCopy = state;
  if ([stateCopy hasCandidates])
  {
    if ([stateCopy followsIncompleteRomaji])
    {
      v4 = 13;
    }

    else if ([stateCopy hasInput])
    {
      v4 = 4;
    }

    else
    {
      v4 = 12;
    }

    if ([stateCopy hasCandidateSelected])
    {
      v7 = 2;
    }

    else if ([stateCopy hasInput])
    {
      v7 = 10;
    }

    else
    {
      v7 = 9;
    }

    if ([stateCopy hasInput])
    {
      v9 = 4;
    }

    else
    {
      v9 = 1;
    }

    v8 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v4 forReturnKey:v7 forTabKey:v9];
  }

  else
  {
    if ([stateCopy hasInput])
    {
      v5 = 8;
      v6 = 10;
    }

    else
    {
      v5 = 12;
      v6 = 0;
    }

    v8 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v5 forReturnKey:v6];
  }

  v10 = v8;

  return v10;
}

@end