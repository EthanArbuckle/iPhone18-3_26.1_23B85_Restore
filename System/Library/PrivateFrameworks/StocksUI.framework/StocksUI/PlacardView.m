@interface PlacardView
- (_TtC8StocksUI11PlacardView)initWithCoder:(id)a3;
- (_TtC8StocksUI11PlacardView)initWithFrame:(CGRect)a3;
@end

@implementation PlacardView

- (_TtC8StocksUI11PlacardView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(PlacardView *)&v12 initWithFrame:x, y, width, height];
  [(PlacardView *)v10 addSubview:*(&v10->super.super.super.isa + OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel)];
  return v10;
}

- (_TtC8StocksUI11PlacardView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end