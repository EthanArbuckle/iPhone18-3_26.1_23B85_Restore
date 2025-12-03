@interface MicaPlayerCoordinator
- (_TtC14iCloudSettings21MicaPlayerCoordinator)init;
- (void)micaPlayerDidChangePlaybackTime:(id)time;
- (void)micaPlayerDidStartPlaying:(id)playing;
- (void)micaPlayerDidStopPlaying:(id)playing;
@end

@implementation MicaPlayerCoordinator

- (void)micaPlayerDidChangePlaybackTime:(id)time
{
  timeCopy = time;
  selfCopy = self;
  sub_275862130(timeCopy);
}

- (void)micaPlayerDidStartPlaying:(id)playing
{
  playingCopy = playing;
  selfCopy = self;
  sub_2758629C4(&unk_28847F540, sub_275862C9C, &block_descriptor_19);
}

- (void)micaPlayerDidStopPlaying:(id)playing
{
  playingCopy = playing;
  selfCopy = self;
  sub_2758629C4(&unk_28847F4F0, sub_275862C68, &block_descriptor_13);
}

- (_TtC14iCloudSettings21MicaPlayerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end