@interface StepperTableViewCell
- (_TtC5TeaUI20StepperTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)valueChanged;
@end

@implementation StepperTableViewCell

- (_TtC5TeaUI20StepperTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D813AE48(a3, a4, v6);
}

- (void)valueChanged
{
  v2 = self;
  sub_1D813B578();
}

@end