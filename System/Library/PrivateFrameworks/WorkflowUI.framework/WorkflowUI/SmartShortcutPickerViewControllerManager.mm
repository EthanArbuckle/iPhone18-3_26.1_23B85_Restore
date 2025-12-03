@interface SmartShortcutPickerViewControllerManager
- (_TtP10WorkflowUI48SmartShortcutPickerViewControllerManagerDelegate_)delegate;
- (id)makeViewControllerWith:(id)with;
- (void)setDelegate:(id)delegate;
@end

@implementation SmartShortcutPickerViewControllerManager

- (_TtP10WorkflowUI48SmartShortcutPickerViewControllerManagerDelegate_)delegate
{
  v2 = sub_2747EA2C8();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2747EA338();
}

- (id)makeViewControllerWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_2747EA380(withCopy);
  v7 = v6;

  return v7;
}

@end