@interface TIKeyboardBehaviors_Cangjie
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_Cangjie

- (id)keyBehaviorsForState:(id)a3
{
  v3 = a3;
  v4 = [v3 hasCandidates];
  v5 = [v3 hasInput];
  if (v4)
  {
    if ((v5 & 1) != 0 || [v3 hasCandidateSelected])
    {
      if ([v3 spaceConfirmation])
      {
        if ([v3 hardwareKeyboardMode])
        {
          v6 = 2;
        }

        else
        {
          v6 = 4;
        }

        v7 = 2;
      }

      else
      {
        v7 = 4;
        v6 = 2;
      }
    }

    else
    {
      v7 = 7;
      v6 = 9;
    }
  }

  else
  {
    if (!v5)
    {
      v8 = 0;
      goto LABEL_15;
    }

    v7 = 8;
    v6 = 8;
  }

  v8 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v7 forReturnKey:v6];
LABEL_15:

  return v8;
}

@end