@interface StepperTableViewCell
- (_TtC5TeaUI20StepperTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)valueChanged;
@end

@implementation StepperTableViewCell

- (_TtC5TeaUI20StepperTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D813AE48(style, identifier, v6);
}

- (void)valueChanged
{
  selfCopy = self;
  sub_1D813B578();
}

@end