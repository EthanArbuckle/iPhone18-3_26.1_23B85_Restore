@interface CHSWidgetDescriptor
@end

@implementation CHSWidgetDescriptor

id __60__CHSWidgetDescriptor_SpringBoardHome__mostInterestingColor__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 resolvedColorWithTraitCollection:v4];
  v6 = [*(a1 + 40) resolvedColorWithTraitCollection:v4];

  [v6 sbh_colorfulness];
  v8 = v7;
  [v5 sbh_colorfulness];
  if (v8 <= v9)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;
  if (!v11)
  {
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = [MEMORY[0x1E69DC888] systemBlueColor];
    }

    v11 = v12;
  }

  return v11;
}

@end