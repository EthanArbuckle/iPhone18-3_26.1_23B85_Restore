@interface TextFieldTableViewCell
- (_TtC5TeaUI22TextFieldTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation TextFieldTableViewCell

- (_TtC5TeaUI22TextFieldTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7FF99CC(v4);
}

@end