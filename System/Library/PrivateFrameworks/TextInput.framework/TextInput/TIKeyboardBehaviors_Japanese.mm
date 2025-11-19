@interface TIKeyboardBehaviors_Japanese
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_Japanese

- (id)keyBehaviorsForState:(id)a3
{
  v3 = a3;
  if ([v3 hasCandidates])
  {
    if ([v3 followsIncompleteRomaji])
    {
      v4 = 13;
    }

    else if ([v3 hasInput])
    {
      v4 = 4;
    }

    else
    {
      v4 = 12;
    }

    if ([v3 hasCandidateSelected])
    {
      v7 = 2;
    }

    else if ([v3 hasInput])
    {
      v7 = 10;
    }

    else
    {
      v7 = 9;
    }

    if ([v3 hasInput])
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
    if ([v3 hasInput])
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