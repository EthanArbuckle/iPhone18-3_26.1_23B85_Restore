@interface SmartShortcutPickerViewControllerManager
- (_TtP10WorkflowUI48SmartShortcutPickerViewControllerManagerDelegate_)delegate;
- (id)makeViewControllerWith:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation SmartShortcutPickerViewControllerManager

- (_TtP10WorkflowUI48SmartShortcutPickerViewControllerManagerDelegate_)delegate
{
  v2 = sub_2747EA2C8();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_2747EA338();
}

- (id)makeViewControllerWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2747EA380(v4);
  v7 = v6;

  return v7;
}

@end