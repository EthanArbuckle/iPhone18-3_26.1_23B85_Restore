@interface VSBaseYNResultHandler
- (id)actionForRecognitionResult:(id)result;
@end

@implementation VSBaseYNResultHandler

- (id)actionForRecognitionResult:(id)result
{
  recognitionAction = [result recognitionAction];
  elementCount = [result elementCount];
  v12 = 0;
  objc_opt_class();
  v6 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    recognitionAction = 0;
  }

  if (recognitionAction)
  {
    v7 = elementCount < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 1;
    while (1)
    {
      [result getElementClassIdentifier:&v12 value:0 atIndex:v8 - 1];
      v9 = [v12 isEqualToString:@"yes"];
      if (v9)
      {
        break;
      }

      if ([v12 isEqualToString:@"no"])
      {
        deniedAction = [recognitionAction deniedAction];
        goto LABEL_12;
      }

      v6 = 0;
LABEL_14:
      if (v8 < elementCount)
      {
        ++v8;
        if (!v6)
        {
          continue;
        }
      }

      return v6;
    }

    deniedAction = [recognitionAction confirmedAction];
LABEL_12:
    v6 = deniedAction;
    [recognitionAction _setConfirmed:v9];
    goto LABEL_14;
  }

  return v6;
}

@end