@interface SessionAudioPlaybackControls
- (_TtC9SeymourUI28SessionAudioPlaybackControls)initWithCoder:(id)a3;
- (void)playbackControlTapped:(id)a3;
@end

@implementation SessionAudioPlaybackControls

- (_TtC9SeymourUI28SessionAudioPlaybackControls)initWithCoder:(id)a3
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

- (void)playbackControlTapped:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI28SessionAudioPlaybackControls_onPlaybackControlTapped);
  if (v3)
  {
    v5 = a3;
    v6 = self;
    sub_20B584050(v3);
    v3(v5);

    sub_20B5E0F50(v3);
  }
}

@end