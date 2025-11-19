@interface PlaybackTrackMask
- (_TtC9SeymourUI17PlaybackTrackMask)initWithCoder:(id)a3;
- (_TtC9SeymourUI17PlaybackTrackMask)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PlaybackTrackMask

- (_TtC9SeymourUI17PlaybackTrackMask)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for PlaybackTrackMask();
  v7 = [(PlaybackTrackMask *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 blackColor];
  [(PlaybackTrackMask *)v9 setBackgroundColor:v10];

  return v9;
}

- (_TtC9SeymourUI17PlaybackTrackMask)initWithCoder:(id)a3
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PlaybackTrackMask();
  v2 = v4.receiver;
  [(PlaybackTrackMask *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

@end