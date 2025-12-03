@interface PlaybackTrackView
- (_TtC9SeymourUI17PlaybackTrackView)initWithCoder:(id)coder;
- (_TtC9SeymourUI17PlaybackTrackView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PlaybackTrackView

- (_TtC9SeymourUI17PlaybackTrackView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9SeymourUI17PlaybackTrackView_trackLayoutGuide;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI17PlaybackTrackView_layout) = 0x401C000000000000;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PlaybackTrackView();
  v2 = v4.receiver;
  [(PlaybackTrackView *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (_TtC9SeymourUI17PlaybackTrackView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end