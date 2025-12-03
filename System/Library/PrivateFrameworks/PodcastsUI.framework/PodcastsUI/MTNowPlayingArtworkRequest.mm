@interface MTNowPlayingArtworkRequest
- (MTNowPlayingArtworkRequest)init;
- (void)cancel;
@end

@implementation MTNowPlayingArtworkRequest

- (void)cancel
{
  selfCopy = self;
  sub_21B4C7698();
}

- (MTNowPlayingArtworkRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end