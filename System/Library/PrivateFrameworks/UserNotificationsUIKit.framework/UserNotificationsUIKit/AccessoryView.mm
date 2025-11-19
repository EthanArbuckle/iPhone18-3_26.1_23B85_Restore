@interface AccessoryView
- (_TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AccessoryView

- (void)layoutSubviews
{
  v2 = self;
  sub_21E8E3E00();
}

- (_TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_label;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for DebugLabel()) init];
  v9 = OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_dashedBorder;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22UserNotificationsUIKitP33_E56270D007896E6F9A012E31D0F23E8813AccessoryView_borderWidth) = 0x4000000000000000;
  v11.receiver = self;
  v11.super_class = type metadata accessor for AccessoryView();
  return [(AccessoryView *)&v11 initWithFrame:x, y, width, height];
}

@end