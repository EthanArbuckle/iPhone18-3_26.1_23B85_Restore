@interface BrandingTitleView
- (_TtC8StocksUI17BrandingTitleView)initWithCoder:(id)a3;
- (_TtC8StocksUI17BrandingTitleView)initWithFrame:(CGRect)a3;
@end

@implementation BrandingTitleView

- (_TtC8StocksUI17BrandingTitleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8StocksUI17BrandingTitleView_titleLabel;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v15.receiver = self;
  v15.super_class = ObjectType;
  v10 = [(BrandingTitleView *)&v15 initWithFrame:x, y, width, height];
  v11 = OBJC_IVAR____TtC8StocksUI17BrandingTitleView_titleLabel;
  v12 = *(&v10->super.super.super.isa + OBJC_IVAR____TtC8StocksUI17BrandingTitleView_titleLabel);
  v13 = v10;
  [(BrandingTitleView *)v13 addSubview:v12];
  [*(&v10->super.super.super.isa + v11) setNumberOfLines_];

  return v13;
}

- (_TtC8StocksUI17BrandingTitleView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8StocksUI17BrandingTitleView_titleLabel;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end