@interface NowPlayingBackgroundView
- (_TtC8StocksUI24NowPlayingBackgroundView)initWithCoder:(id)coder;
- (_TtC8StocksUI24NowPlayingBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation NowPlayingBackgroundView

- (_TtC8StocksUI24NowPlayingBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  height = [(NowPlayingBackgroundView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  secondarySystemBackgroundColor = [v8 secondarySystemBackgroundColor];
  [(NowPlayingBackgroundView *)v9 setBackgroundColor:secondarySystemBackgroundColor];

  return v9;
}

- (_TtC8StocksUI24NowPlayingBackgroundView)initWithCoder:(id)coder
{
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end