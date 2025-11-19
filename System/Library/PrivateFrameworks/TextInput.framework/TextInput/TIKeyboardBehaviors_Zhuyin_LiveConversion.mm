@interface TIKeyboardBehaviors_Zhuyin_LiveConversion
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_Zhuyin_LiveConversion

- (id)keyBehaviorsForState:(id)a3
{
  v3 = a3;
  if ([v3 hasInput])
  {
    if ([v3 followsZhuyin])
    {
      v4 = 100;
      v5 = 2;
LABEL_17:
      v9 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v4 forReturnKey:v5];
      goto LABEL_18;
    }

    if ([v3 hasCandidateSelected])
    {
      v8 = 4;
    }

    else
    {
      v8 = 13;
    }

    if ([v3 hasCandidateSelected])
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    v6 = v8;
  }

  else
  {
    if (![v3 hasCandidates])
    {
      v10 = 0;
      goto LABEL_19;
    }

    if (![v3 hasCandidateSelected])
    {
      v4 = 7;
      v5 = 9;
      goto LABEL_17;
    }

    v6 = 4;
    v7 = 4;
  }

  v9 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v6 forReturnKey:2 forTabKey:v7];
LABEL_18:
  v10 = v9;
LABEL_19:

  return v10;
}

@end