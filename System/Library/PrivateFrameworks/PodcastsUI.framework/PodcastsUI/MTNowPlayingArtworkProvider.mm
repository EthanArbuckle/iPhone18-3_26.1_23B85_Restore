@interface MTNowPlayingArtworkProvider
- (MTNowPlayingArtworkProvider)init;
- (id)fetchInfoCenterArtworkWith:(id)with at:(double)at of:(CGSize)of completion:(id)completion;
@end

@implementation MTNowPlayingArtworkProvider

- (id)fetchInfoCenterArtworkWith:(id)with at:(double)at of:(CGSize)of completion:(id)completion
{
  height = of.height;
  width = of.width;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  withCopy = with;
  selfCopy = self;
  v15 = NowPlayingArtworkProviderObjCWrapper.fetchInfoCenterArtwork(with:at:of:completion:)(withCopy, sub_21B3F8E4C, v12, at, width, height);

  return v15;
}

- (MTNowPlayingArtworkProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end