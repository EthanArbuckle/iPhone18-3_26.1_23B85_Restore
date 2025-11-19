@interface SwitchTableViewCell
- (_TtC5TeaUI19SwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)valueChanged;
@end

@implementation SwitchTableViewCell

- (_TtC5TeaUI19SwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1D80BD454(v4, v4, v6);
}

- (void)valueChanged
{
  v2 = self;
  sub_1D80BD668();
}

@end