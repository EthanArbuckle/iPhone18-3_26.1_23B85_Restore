@interface TIKeyboardBehaviors_Zhuyin
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_Zhuyin

- (id)keyBehaviorsForState:(id)state
{
  stateCopy = state;
  if ([stateCopy hasInput])
  {
    if ([stateCopy followsZhuyin])
    {
      v4 = 100;
    }

    else if ([stateCopy hasCandidateSelected])
    {
      v4 = 4;
    }

    else
    {
      v4 = 3;
    }

    goto LABEL_10;
  }

  if ([stateCopy hasCandidates])
  {
    if (![stateCopy hasCandidateSelected])
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