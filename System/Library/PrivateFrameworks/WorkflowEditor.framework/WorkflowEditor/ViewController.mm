@interface ViewController
- (_TtC14WorkflowEditorP33_4F6B3E8D8EDFB1AA2880F20B202F8EFE14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)overrideUserInterfaceStyle;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
@end

@implementation ViewController

- (int64_t)overrideUserInterfaceStyle
{
  selfCopy = self;
  v3 = sub_27455B184();

  return v3;
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  selfCopy = self;
  sub_27455B210(style);
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_27445B624;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_27455B2DC(controllerCopy, animated, v8, v9);
  sub_274406A94(v8);
}

- (_TtC14WorkflowEditorP33_4F6B3E8D8EDFB1AA2880F20B202F8EFE14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_27463B6AC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_27455B4CC(v5, v7, bundle);
}

@end