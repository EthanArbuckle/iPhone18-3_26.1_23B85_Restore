@interface OneUpSharePlayVideoPlaybackDelegate
- (_TtC12PhotosUICore35OneUpSharePlayVideoPlaybackDelegate)init;
- (id)playbackCoordinator:(id)a3 identifierForPlayerItem:(id)a4;
@end

@implementation OneUpSharePlayVideoPlaybackDelegate

- (id)playbackCoordinator:(id)a3 identifierForPlayerItem:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore35OneUpSharePlayVideoPlaybackDelegate_displayAsset);
  v5 = self;
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