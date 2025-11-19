@interface UIColor
@end

@implementation UIColor

id __54__UIColor_WorkflowUI__wf_usableColorWithPaletteColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = *(a1 + 32);
  if (v3 == 2)
  {
    [v4 darkBaseColor];
  }

  else
  {
    [v4 baseColor];
  }
  v5 = ;
  v6 = [v5 UIColor];

  return v6;
}

id __51__UIColor_WorkflowUI__wf_libraryCellSelectionColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = 1.0;
  if (v2 == 2)
  {
    v3 = 0.0;
  }

  v4 = [MEMORY[0x277D75348] colorWithWhite:v3 alpha:0.300000012];

  return v4;
}

id __47__UIColor_WorkflowUI__wf_wizardBackgroundColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.0;
    v3 = 0.0;
    v4 = 0.0;
    v5 = 1.0;
  }

  else
  {
    v2 = 0.937254906;
    v4 = 0.952941179;
    v5 = 1.0;
    v3 = 0.937254906;
  }

  v6 = [MEMORY[0x277D75348] colorWithRed:v2 green:v3 blue:v4 alpha:v5];

  return v6;
}

@end