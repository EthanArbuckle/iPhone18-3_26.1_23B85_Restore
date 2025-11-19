@interface SessionIntroSequencePresenter
- (_TtC9SeymourUI29SessionIntroSequencePresenter)init;
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
@end

@implementation SessionIntroSequencePresenter

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  if (*(&self->super.isa + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioSessionCategory))
  {
    if (*(&self->super.isa + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioSessionMode))
    {
      v4 = *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioPlayer);
      *(&self->super.isa + OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_audioPlayer) = 0;
    }
  }
}

- (_TtC9SeymourUI29SessionIntroSequencePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end