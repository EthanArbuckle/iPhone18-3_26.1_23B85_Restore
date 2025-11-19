@interface SystemContactPicker.SystemContactPickerViewController
- (_TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController)initWithCoder:(id)a3;
- (_TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)viewDidLoad;
@end

@implementation SystemContactPicker.SystemContactPickerViewController

- (_TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1F3F8();
  return sub_1F570(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1F570();
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1F690();
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1F78C(v8, v7);
}

- (_TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_29B14();
  }

  v5 = a4;
  sub_1F8B8();
}

@end