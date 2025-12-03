@interface TIKeyboardBehaviors_Handwriting
- (id)keyBehaviorsForState:(id)state;
@end

@implementation TIKeyboardBehaviors_Handwriting

- (id)keyBehaviorsForState:(id)state
{
  stateCopy = state;
  hasInput = [stateCopy hasInput];
  hasCandidates = [stateCopy hasCandidates];
  v6 = hasCandidates;
  if (!hasInput)
  {
    if (hasCandidates)
    {
      if ([stateCopy hasCandidateSelected])
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

  hasCandidateSelected = [stateCopy hasCandidateSelected];
  if (v6)
  {
    if (hasCandidateSelected)
    {
      v8 = 2;
    }

    else
    {
      v8 = 5;
    }

    goto LABEL_13;
  }

  if (hasCandidateSelected)
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