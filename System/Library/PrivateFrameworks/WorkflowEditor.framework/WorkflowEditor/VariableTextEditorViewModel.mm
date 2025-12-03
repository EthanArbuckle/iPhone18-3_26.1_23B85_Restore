@interface VariableTextEditorViewModel
- (void)slotTextAttachmentNeedsDisplay:(id)display;
@end

@implementation VariableTextEditorViewModel

- (void)slotTextAttachmentNeedsDisplay:(id)display
{
  displayCopy = display;

  sub_2745BBCA4(displayCopy);
}

@end