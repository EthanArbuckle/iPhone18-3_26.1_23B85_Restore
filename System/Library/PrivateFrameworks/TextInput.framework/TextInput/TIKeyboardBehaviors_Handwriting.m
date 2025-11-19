@interface TIKeyboardBehaviors_Handwriting
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_Handwriting

- (id)keyBehaviorsForState:(id)a3
{
  v3 = a3;
  v4 = [v3 hasInput];
  v5 = [v3 hasCandidates];
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      if ([v3 hasCandidateSelected])
      {
        v8 = 2;
      }

      else
      {
        v8 = 7;
      }

      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v7 = [v3 hasCandidateSelected];
  if (v6)
  {
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 5;
    }

    goto LABEL_13;
  }

  if (v7)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_14;
  }

  v8 = 8;
LABEL_13:
  v9 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v8 forReturnKey:9];
LABEL_14:

  return v9;
}

@end