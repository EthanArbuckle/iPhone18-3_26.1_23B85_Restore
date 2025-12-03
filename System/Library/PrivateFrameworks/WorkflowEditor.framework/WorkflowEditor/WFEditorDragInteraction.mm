@interface WFEditorDragInteraction
- (UIView)view;
- (void)setView:(id)view;
@end

@implementation WFEditorDragInteraction

- (UIView)view
{
  v2 = sub_27459A97C();

  return v2;
}

- (void)setView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_27459A9BC(view);
}

@end