@interface SAUIAddViews(SiriUIFoundationAdditions)
- (BOOL)sruif_isEmptyUtteranceView;
- (uint64_t)sruif_usefulUserResultType;
@end

@implementation SAUIAddViews(SiriUIFoundationAdditions)

- (uint64_t)sruif_usefulUserResultType
{
  v1 = [a1 af_dialogPhase];
  v2 = [v1 isReflectionDialogPhase];

  return v2 ^ 1u;
}

- (BOOL)sruif_isEmptyUtteranceView
{
  v2 = [a1 views];
  v3 = [a1 views];
  v4 = [v3 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v5 = [v2 count];

  if (v5 == 1)
  {
    v3 = [v2 firstObject];
    v4 = [v3 speakableText];
    if (v4 && ([v3 speakableText], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "length")))
    {
      v6 = 0;
    }

    else
    {
      v7 = [v3 text];
      if (v7)
      {
        v8 = [v3 text];
        v6 = [v8 length] == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v4)
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