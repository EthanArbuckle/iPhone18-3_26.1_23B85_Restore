@interface WFPreviewTextViewDelegate
- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
@end

@implementation WFPreviewTextViewDelegate

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  v5 = OUTLINED_FUNCTION_3_13();

  return v5;
}

- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu
{
  viewCopy = view;
  itemCopy = item;
  menuCopy = menu;
  selfCopy = self;
  v12 = sub_274BD9E94(viewCopy, itemCopy, menuCopy);

  return v12;
}

@end