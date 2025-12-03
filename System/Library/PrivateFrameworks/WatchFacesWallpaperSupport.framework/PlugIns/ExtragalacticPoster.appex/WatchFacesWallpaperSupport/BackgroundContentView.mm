@interface BackgroundContentView
- (_TtC19ExtragalacticPoster21BackgroundContentView)initWithFrame:(CGRect)frame;
@end

@implementation BackgroundContentView

- (_TtC19ExtragalacticPoster21BackgroundContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_portraitSize) = CGSizeZero;
  v8 = OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_primaryBannerLayer;
  v9 = type metadata accessor for ExtragalacticBannerLayer();
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(v9) init];
  v10 = OBJC_IVAR____TtC19ExtragalacticPoster21BackgroundContentView_secondaryBannerLayer;
  *(&self->super.super.super.isa + v10) = [objc_allocWithZone(v9) init];
  v13.receiver = self;
  v13.super_class = type metadata accessor for BackgroundContentView();
  height = [(BackgroundContentView *)&v13 initWithFrame:x, y, width, height];
  sub_100010C90();

  return height;
}

@end