@interface PlacardView
- (_TtC8StocksUI11PlacardView)initWithCoder:(id)coder;
- (_TtC8StocksUI11PlacardView)initWithFrame:(CGRect)frame;
@end

@implementation PlacardView

- (_TtC8StocksUI11PlacardView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(PlacardView *)&v12 initWithFrame:x, y, width, height];
  [(PlacardView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel)];
  return height;
}

- (_TtC8StocksUI11PlacardView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end