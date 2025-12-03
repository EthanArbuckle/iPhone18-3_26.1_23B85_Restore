@interface SystemContactPicker.SystemContactPickerViewController
- (_TtCV9SnippetUI19SystemContactPicker33SystemContactPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)viewDidLoad;
@end

@implementation SystemContactPicker.SystemContactPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_26A521E08();
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_26A521F48();
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  selfCopy = self;
  sub_26A522064(selfCopy, contactCopy);
}

- (_TtCV9SnippetUI19SystemContactPicker33SystemContactPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_26A8517B8();
  }

  bundleCopy = bundle;
  sub_26A5221B0();
}

@end