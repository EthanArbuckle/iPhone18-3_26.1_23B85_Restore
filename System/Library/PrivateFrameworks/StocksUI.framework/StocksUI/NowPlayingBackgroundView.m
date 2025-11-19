@interface NowPlayingBackgroundView
- (_TtC8StocksUI24NowPlayingBackgroundView)initWithCoder:(id)a3;
- (_TtC8StocksUI24NowPlayingBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation NowPlayingBackgroundView

- (_TtC8StocksUI24NowPlayingBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  v7 = [(NowPlayingBackgroundView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 secondarySystemBackgroundColor];
  [(NowPlayingBackgroundView *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtC8StocksUI24NowPlayingBackgroundView)initWithCoder:(id)a3
{
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end