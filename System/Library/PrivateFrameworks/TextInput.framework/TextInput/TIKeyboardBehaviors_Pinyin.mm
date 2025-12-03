@interface TIKeyboardBehaviors_Pinyin
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_Pinyin

- (id)keyBehaviorsForState:(id)state
{
  stateCopy = state;
  hasInput = [stateCopy hasInput];
  hasCandidates = [stateCopy hasCandidates];
  if (!hasInput)
  {
    if (!hasCandidates)
    {
      v19 = 0;
      goto LABEL_51;
    }

    if (![stateCopy hardwareKeyboardMode])
    {
      if ([stateCopy hasCandidateSelected])
      {
        if ([stateCopy showsExtendedList] && !objc_msgSend(stateCopy, "hardwareKeyboardMode"))
        {
          v18 = 4;
        }

        else if ([stateCopy spaceConfirmation])
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

    spaceConfirmation = [stateCopy spaceConfirmation];
    hasCandidateSelected = [stateCopy hasCandidateSelected];
    if (spaceConfirmation)
    {
      if (hasCandidateSelected)
      {
        v13 = 2;
      }

      else
      {
        v13 = 7;
      }

      hasCandidateSelected = [stateCopy hasCandidateSelected];
    }

    else if (hasCandidateSelected)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }

    if (hasCandidateSelected)
    {
      v15 = 2;
    }

    else
    {
      v15 = 9;
    }

    goto LABEL_49;
  }

  if (hasCandidates)
  {
    hardwareKeyboardMode = [stateCopy hardwareKeyboardMode];
    spaceConfirmation2 = [stateCopy spaceConfirmation];
    v8 = spaceConfirmation2;
    if (hardwareKeyboardMode)
    {
      hasCandidateSelected2 = [stateCopy hasCandidateSelected];
      v10 = 5;
      if (hasCandidateSelected2)
      {
        v10 = 2;
      }

      v11 = 3;
      if (hasCandidateSelected2)
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

      if ([stateCopy userSelectedCurrentCandidate])
      {
        v15 = 2;
      }

      else
      {
        v15 = v14;
      }
    }

    else if (spaceConfirmation2 && (![stateCopy showsExtendedList] || (objc_msgSend(stateCopy, "showsCandidatesInLayout") & 1) != 0))
    {
      if ([stateCopy hasCandidateSelected])
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
      if ([stateCopy hasCandidateSelected])
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