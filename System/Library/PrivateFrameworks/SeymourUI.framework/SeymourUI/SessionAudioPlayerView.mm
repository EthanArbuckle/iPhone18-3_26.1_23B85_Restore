@interface SessionAudioPlayerView
- (_TtC9SeymourUI22SessionAudioPlayerView)initWithFrame:(CGRect)frame;
- (void)collapseButtonTapped:(id)tapped;
- (void)exitButtonTapped:(id)tapped;
@end

@implementation SessionAudioPlayerView

- (void)collapseButtonTapped:(id)tapped
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_presenter);
  if (v3)
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      selfCopy = self;
      v6 = sub_20B584050(v4);
      v4(v6);

      sub_20B583ECC(v4);
    }
  }
}

- (void)exitButtonTapped:(id)tapped
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_presenter);
  if (v3)
  {
    v4 = *(v3 + 48);
    if (v4)
    {
      selfCopy = self;
      v6 = sub_20B584050(v4);
      v4(v6);

      sub_20B583ECC(v4);
    }
  }
}

- (_TtC9SeymourUI22SessionAudioPlayerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end