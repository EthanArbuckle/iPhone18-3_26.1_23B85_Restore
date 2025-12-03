@interface PlaybackTrackMask
- (_TtC9SeymourUI17PlaybackTrackMask)initWithCoder:(id)coder;
- (_TtC9SeymourUI17PlaybackTrackMask)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PlaybackTrackMask

- (_TtC9SeymourUI17PlaybackTrackMask)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for PlaybackTrackMask();
  height = [(PlaybackTrackMask *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  blackColor = [v8 blackColor];
  [(PlaybackTrackMask *)v9 setBackgroundColor:blackColor];

  return v9;
}

- (_TtC9SeymourUI17PlaybackTrackMask)initWithCoder:(id)coder
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
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

@end