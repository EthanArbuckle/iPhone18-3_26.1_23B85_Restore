@interface OneUpSharePlayVideoPlaybackDelegate
- (_TtC12PhotosUICore35OneUpSharePlayVideoPlaybackDelegate)init;
- (id)playbackCoordinator:(id)coordinator identifierForPlayerItem:(id)item;
@end

@implementation OneUpSharePlayVideoPlaybackDelegate

- (id)playbackCoordinator:(id)coordinator identifierForPlayerItem:(id)item
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore35OneUpSharePlayVideoPlaybackDelegate_displayAsset);
  selfCopy = self;
  result = [v4 uuid];
  if (result)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC12PhotosUICore35OneUpSharePlayVideoPlaybackDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end