@interface SystemContactPicker.SystemContactPickerViewController
- (_TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController)initWithCoder:(id)coder;
- (_TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)viewDidLoad;
@end

@implementation SystemContactPicker.SystemContactPickerViewController

- (_TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1F3F8();
  return sub_1F570(v4);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1F570();
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1F690();
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_1F78C(selfCopy, contactCopy);
}

- (_TtCV12SystemPlugin19SystemContactPicker33SystemContactPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_29B14();
  }

  bundleCopy = bundle;
  sub_1F8B8();
}

@end