@interface TIAutocorrectionList(UIKitSupplementalItemExtras)
- (id)ui_allSupplementalCandidates;
@end

@implementation TIAutocorrectionList(UIKitSupplementalItemExtras)

- (id)ui_allSupplementalCandidates
{
  v2 = objc_opt_respondsToSelector();
  v3 = MEMORY[0x1E695E0F0];
  v4 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    v4 = [a1 predictionsIfSupplemental];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([a1 autocorrectionIfSupplemental], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count") + 1}];
    [v7 addObject:v6];
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v3;
    }

    [v7 addObjectsFromArray:v8];
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

@end