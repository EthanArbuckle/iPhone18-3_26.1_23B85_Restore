@interface MTNowPlayingArtworkProvider
- (MTNowPlayingArtworkProvider)init;
- (id)fetchInfoCenterArtworkWith:(id)a3 at:(double)a4 of:(CGSize)a5 completion:(id)a6;
@end

@implementation MTNowPlayingArtworkProvider

- (id)fetchInfoCenterArtworkWith:(id)a3 at:(double)a4 of:(CGSize)a5 completion:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = _Block_copy(a6);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = self;
  v15 = NowPlayingArtworkProviderObjCWrapper.fetchInfoCenterArtwork(with:at:of:completion:)(v13, sub_21B3F8E4C, v12, a4, width, height);

  return v15;
}

- (MTNowPlayingArtworkProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end