@interface TIKeyboardBehaviors_Zhuyin
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_Zhuyin

- (id)keyBehaviorsForState:(id)a3
{
  v3 = a3;
  if ([v3 hasInput])
  {
    if ([v3 followsZhuyin])
    {
      v4 = 100;
    }

    else if ([v3 hasCandidateSelected])
    {
      v4 = 4;
    }

    else
    {
      v4 = 3;
    }

    goto LABEL_10;
  }

  if ([v3 hasCandidates])
  {
    if (![v3 hasCandidateSelected])
    {
      v4 = 7;
      v5 = 9;
      goto LABEL_11;
    }

    v4 = 4;
LABEL_10:
    v5 = 2;
LABEL_11:
    v6 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v4 forReturnKey:v5];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

@end