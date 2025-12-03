@interface UIColor(WorkflowUI)
+ (id)wf_usableColorWithPaletteColor:()WorkflowUI;
@end

@implementation UIColor(WorkflowUI)

+ (id)wf_usableColorWithPaletteColor:()WorkflowUI
{
  v2 = [MEMORY[0x277D79E20] colorWithPaletteColor:?];
  paletteGradient = [v2 paletteGradient];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__UIColor_WorkflowUI__wf_usableColorWithPaletteColor___block_invoke;
  v7[3] = &unk_279EE76A0;
  v8 = paletteGradient;
  v4 = paletteGradient;
  v5 = [self colorWithDynamicProvider:v7];

  return v5;
}

@end