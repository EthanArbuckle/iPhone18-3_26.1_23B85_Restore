@interface TIKeyboardBehaviors_Wubixing
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_Wubixing

- (id)keyBehaviorsForState:(id)state
{
  stateCopy = state;
  hasCandidates = [stateCopy hasCandidates];
  hasInput = [stateCopy hasInput];
  if (hasCandidates)
  {
    if ((hasInput & 1) != 0 || [stateCopy hasCandidateSelected])
    {
      if ([stateCopy spaceConfirmation])
      {
        if ([stateCopy hardwareKeyboardMode])
        {
          if ([stateCopy userSelectedCurrentCandidate])
          {
            v6 = 2;
          }

          else
          {
            v6 = 10;
          }
        }

        else
        {
          v6 = 10;
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
    if (!hasInput)
    {
      v8 = 0;
      goto LABEL_17;
    }

    v7 = 8;
    v6 = 8;
  }

  v8 = [TIKeyboardKeyBehaviors behaviorForSpaceKey:v7 forReturnKey:v6];
LABEL_17:

  return v8;
}

@end