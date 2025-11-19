@interface ViewController
- (_TtC14WorkflowEditorP33_4F6B3E8D8EDFB1AA2880F20B202F8EFE14ViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)overrideUserInterfaceStyle;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setOverrideUserInterfaceStyle:(int64_t)a3;
@end

@implementation ViewController

- (int64_t)overrideUserInterfaceStyle
{
  v2 = self;
  v3 = sub_27455B184();

  return v3;
}

- (void)setOverrideUserInterfaceStyle:(int64_t)a3
{
  v4 = self;
  sub_27455B210(a3);
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = self;
  sub_27455B2DC(v10, a4, v8, v9);
  sub_274406A94(v8);
}

- (_TtC14WorkflowEditorP33_4F6B3E8D8EDFB1AA2880F20B202F8EFE14ViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_27463B6AC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_27455B4CC(v5, v7, a4);
}

@end