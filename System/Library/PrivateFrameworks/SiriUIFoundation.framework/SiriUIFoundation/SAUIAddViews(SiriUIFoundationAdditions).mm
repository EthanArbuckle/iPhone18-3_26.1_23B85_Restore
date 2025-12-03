@interface SAUIAddViews(SiriUIFoundationAdditions)
- (BOOL)sruif_isEmptyUtteranceView;
- (uint64_t)sruif_usefulUserResultType;
@end

@implementation SAUIAddViews(SiriUIFoundationAdditions)

- (uint64_t)sruif_usefulUserResultType
{
  af_dialogPhase = [self af_dialogPhase];
  isReflectionDialogPhase = [af_dialogPhase isReflectionDialogPhase];

  return isReflectionDialogPhase ^ 1u;
}

- (BOOL)sruif_isEmptyUtteranceView
{
  views = [self views];
  views2 = [self views];
  firstObject = [views2 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v5 = [views count];

  if (v5 == 1)
  {
    views2 = [views firstObject];
    firstObject = [views2 speakableText];
    if (firstObject && ([views2 speakableText], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "length")))
    {
      v6 = 0;
    }

    else
    {
      text = [views2 text];
      if (text)
      {
        text2 = [views2 text];
        v6 = [text2 length] == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!firstObject)
      {
        goto LABEL_13;
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

@end