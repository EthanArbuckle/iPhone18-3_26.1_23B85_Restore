@interface SliderTableViewCell
- (_TtC5TeaUI19SliderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)valueChanged;
@end

@implementation SliderTableViewCell

- (_TtC5TeaUI19SliderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1D81198EC(v4, v4, v6);
}

- (void)valueChanged
{
  v2 = self;
  sub_1D811A0E0();
}

@end