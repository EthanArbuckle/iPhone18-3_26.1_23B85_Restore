@interface TIAutocorrectionList(UIKitSupplementalItemExtras)
- (id)ui_allSupplementalCandidates;
@end

@implementation TIAutocorrectionList(UIKitSupplementalItemExtras)

- (id)ui_allSupplementalCandidates
{
  v2 = objc_opt_respondsToSelector();
  v3 = MEMORY[0x1E695E0F0];
  predictionsIfSupplemental = MEMORY[0x1E695E0F0];
  if (v2)
  {
    predictionsIfSupplemental = [self predictionsIfSupplemental];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([self autocorrectionIfSupplemental], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(predictionsIfSupplemental, "count") + 1}];
    [v7 addObject:v6];
    if (predictionsIfSupplemental)
    {
      v8 = predictionsIfSupplemental;
    }

    else
    {
      v8 = v3;
    }

    [v7 addObjectsFromArray:v8];
  }

  else
  {
    v7 = predictionsIfSupplemental;
  }

  return v7;
}

@end