@interface TextFieldTableViewCell
- (_TtC5TeaUI22TextFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation TextFieldTableViewCell

- (_TtC5TeaUI22TextFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return sub_1D7FF96F4(v4, v4, v6);
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1D7FF99CC(editingCopy);
}

@end