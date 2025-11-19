@interface TIKeyboardBehaviors_Pinyin
- (id)keyBehaviorsForState:(id)a3;
@end

@implementation TIKeyboardBehaviors_Pinyin

- (id)keyBehaviorsForState:(id)a3
{
  v3 = a3;
  v4 = [v3 hasInput];
  v5 = [v3 hasCandidates];
  if (!v4)
  {
    if (!v5)
    {
      v19 = 0;
      goto LABEL_51;
    }

    if (![v3 hardwareKeyboardMode])
    {
      if ([v3 hasCandidateSelected])
      {
        if ([v3 showsExtendedList] && !objc_msgSend(v3, "hardwareKeyboardMode"))
        {
          v18 = 4;
        }

        else if ([v3 spaceConfirmation])
        {
          v18 = 5;
        }

        else
        {
          v18 = 4;
        }

        v15 = 2;
      }

      else
      {
        v18 = 7;
        v15 = 9;
      }

      goto LABEL_50;
    }

    v16 = [v3 spaceConfirmation];
    v17 = [v3 hasCandidateSelected];
    if (v16)
    {
      if (v17)
      {
        v13 = 2;
      }

      else
      {
        v13 = 7;
      }

      v17 = [v3 hasCandidateSelected];
    }

    else if (v17)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }

    if (v17)
    {
      v15 = 2;
    }

    else
    {
      v15 = 9;
    }

    goto LABEL_49;
  }

  if (v5)
  {
    v6 = [v3 hardwareKeyboardMode];
    v7 = [v3 spaceConfirmation];
    v8 = v7;
    if (v6)
    {
      v9 = [v3 hasCandidateSelected];
      v10 = 5;
      if (v9)
      {
        v10 = 2;
      }

      v11 = 3;
      if (v9)
      {
        v11 = 4;
      }

      v12 = v8 == 0;
      if (v8)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      if (v12)
      {
        v14 = 2;
      }

      else
      {
        v14 = 10;
      }

      if ([v3 userSelectedCurrentCandidate])
      {
        v15 = 2;
      }

      else
      {
        v15 = v14;
      }
    }

    else if (v7 && (![v3 showsExtendedList] || (objc_msgSend(v3, "showsCandidatesInLayout") & 1) != 0))
    {
      if ([v3 hasCandidateSelected])
      {
        v13 = 2;
      }

      else
      {
        v13 = 5;
      }

      v15 = 10;
    }

    else
    {
      if ([v3 hasCandidateSelected])
      {
        v13 = 4;
      }

      else
      {
        v13 = 3;
      }

      v15 = 2;
    }

LABEL_49:
    v18 = v13;
    goto LABEL_50;
  }

  v18 = 8;
  v15 = 10;
LABEL_50:
  v19 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v18 forReturnKey:v15];
LABEL_51:

  return v19;
}

@end