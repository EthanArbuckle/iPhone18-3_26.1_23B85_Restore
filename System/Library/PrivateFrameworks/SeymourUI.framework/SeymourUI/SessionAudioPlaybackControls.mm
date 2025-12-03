@interface SessionAudioPlaybackControls
- (_TtC9SeymourUI28SessionAudioPlaybackControls)initWithCoder:(id)coder;
- (void)playbackControlTapped:(id)tapped;
@end

@implementation SessionAudioPlaybackControls

- (_TtC9SeymourUI28SessionAudioPlaybackControls)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28SessionAudioPlaybackControls_onPlaybackControlTapped);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI28SessionAudioPlaybackControls_stackView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.isa + v5) = v6;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)playbackControlTapped:(id)tapped
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28SessionAudioPlaybackControls_onPlaybackControlTapped);
  if (v3)
  {
    tappedCopy = tapped;
    selfCopy = self;
    sub_20B584050(v3);
    v3(tappedCopy);

    sub_20B5E0F50(v3);
  }
}

@end