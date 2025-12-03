@interface MiniPlayerView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC9SeymourUI14MiniPlayerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)playbackControlTapped:(id)tapped;
- (void)tapRecognized:(id)recognized;
@end

@implementation MiniPlayerView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20B83AF5C(32.0, 0.0);
  sub_20B83AF5C(32.0, 0.0);
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for MiniPlayerView();
  [(MiniPlayerView *)&v3 layoutSubviews];
}

- (void)playbackControlTapped:(id)tapped
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI14MiniPlayerView_presenter))
  {
    v4 = *(tapped + OBJC_IVAR____TtC9SeymourUI15PlaybackControl_type);
    tappedCopy = tapped;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_20BF74A84(v4);
    swift_unknownObjectRelease();
  }
}

- (void)tapRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  sub_20BF48B84();
}

- (_TtC9SeymourUI14MiniPlayerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  if (view)
  {
    v5 = view;
    objc_opt_self();
    view = swift_dynamicCastObjCClass();
    if (!view)
    {

      view = 0;
    }
  }

  v6 = view == 0;

  return v6;
}

@end