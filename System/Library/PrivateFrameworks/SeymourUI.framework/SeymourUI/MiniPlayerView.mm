@interface MiniPlayerView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC9SeymourUI14MiniPlayerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)playbackControlTapped:(id)a3;
- (void)tapRecognized:(id)a3;
@end

@implementation MiniPlayerView

- (void)layoutSubviews
{
  v2 = self;
  sub_20B83AF5C(32.0, 0.0);
  sub_20B83AF5C(32.0, 0.0);
  v3.receiver = v2;
  v3.super_class = type metadata accessor for MiniPlayerView();
  [(MiniPlayerView *)&v3 layoutSubviews];
}

- (void)playbackControlTapped:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_presenter))
  {
    v4 = *(a3 + OBJC_IVAR____TtC9SeymourUI15PlaybackControl_type);
    v5 = a3;
    v6 = self;
    swift_unknownObjectRetain();
    sub_20BF74A84(v4);
    swift_unknownObjectRelease();
  }
}

- (void)tapRecognized:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BF48B84();
}

- (_TtC9SeymourUI14MiniPlayerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [a4 view];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {

      v4 = 0;
    }
  }

  v6 = v4 == 0;

  return v6;
}

@end