@interface CalendarDayIndicatorView
- (_TtC9SeymourUI24CalendarDayIndicatorView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation CalendarDayIndicatorView

- (_TtC9SeymourUI24CalendarDayIndicatorView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_shapeLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_appearance) = 0x3FF0000000000000;
  v5 = (self + OBJC_IVAR____TtC9SeymourUI24CalendarDayIndicatorView_oldRect);
  *v5 = 0u;
  v5[1] = 0u;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20B86EC0C();
}

@end