@interface UITextSelectionRect(WFInsetting)
- (WFInsetTextSelectionRect)wf_selectionRectByInsetting:()WFInsetting;
@end

@implementation UITextSelectionRect(WFInsetting)

- (WFInsetTextSelectionRect)wf_selectionRectByInsetting:()WFInsetting
{
  v5 = [[WFInsetTextSelectionRect alloc] initWithSelectionRect:a1 insets:a2, a3, a4, a5];

  return v5;
}

@end