@interface SystemContactPicker.SystemContactPickerViewController
- (_TtCV9SnippetUI19SystemContactPicker33SystemContactPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)viewDidLoad;
@end

@implementation SystemContactPicker.SystemContactPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_26A521E08();
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26A521F48();
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_26A522064(v8, v7);
}

- (_TtCV9SnippetUI19SystemContactPicker33SystemContactPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_26A8517B8();
  }

  v5 = a4;
  sub_26A5221B0();
}

@end