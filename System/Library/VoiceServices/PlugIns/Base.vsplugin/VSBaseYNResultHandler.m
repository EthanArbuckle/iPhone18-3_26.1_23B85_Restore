@interface VSBaseYNResultHandler
- (id)actionForRecognitionResult:(id)a3;
@end

@implementation VSBaseYNResultHandler

- (id)actionForRecognitionResult:(id)a3
{
  v4 = [a3 recognitionAction];
  v5 = [a3 elementCount];
  v12 = 0;
  objc_opt_class();
  v6 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
  }

  if (v4)
  {
    v7 = v5 < 1;
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
      [a3 getElementClassIdentifier:&v12 value:0 atIndex:v8 - 1];
      v9 = [v12 isEqualToString:@"yes"];
      if (v9)
      {
        break;
      }

      if ([v12 isEqualToString:@"no"])
      {
        v10 = [v4 deniedAction];
        goto LABEL_12;
      }

      v6 = 0;
LABEL_14:
      if (v8 < v5)
      {
        ++v8;
        if (!v6)
        {
          continue;
        }
      }

      return v6;
    }

    v10 = [v4 confirmedAction];
LABEL_12:
    v6 = v10;
    [v4 _setConfirmed:v9];
    goto LABEL_14;
  }

  return v6;
}

@end