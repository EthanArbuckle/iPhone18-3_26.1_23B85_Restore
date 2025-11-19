@interface MicaPlayerCoordinator
- (_TtC14iCloudSettings21MicaPlayerCoordinator)init;
- (void)micaPlayerDidChangePlaybackTime:(id)a3;
- (void)micaPlayerDidStartPlaying:(id)a3;
- (void)micaPlayerDidStopPlaying:(id)a3;
@end

@implementation MicaPlayerCoordinator

- (void)micaPlayerDidChangePlaybackTime:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_275862130(v4);
}

- (void)micaPlayerDidStartPlaying:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2758629C4(&unk_28847F540, sub_275862C9C, &block_descriptor_19);
}

- (void)micaPlayerDidStopPlaying:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2758629C4(&unk_28847F4F0, sub_275862C68, &block_descriptor_13);
}

- (_TtC14iCloudSettings21MicaPlayerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end