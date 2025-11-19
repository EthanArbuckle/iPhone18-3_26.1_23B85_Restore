@interface StoryPassthroughMusicCurationProvider
- (NSArray)recentlyUsedAppleMusicSongIDs;
- (NSArray)recentlyUsedFlexSongIDs;
- (id)requestMusicCurationForAssetContainer:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)setRecentlyUsedAppleMusicSongIDs:(id)a3;
- (void)setRecentlyUsedFlexSongIDs:(id)a3;
@end

@implementation StoryPassthroughMusicCurationProvider

- (id)requestMusicCurationForAssetContainer:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;

  v11 = sub_1A48D6FBC(v9, a4, self, v8);
  _Block_release(v8);
  _Block_release(v8);

  return v11;
}

- (NSArray)recentlyUsedFlexSongIDs
{
  swift_beginAccess();
  if (*(self + 3))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

- (void)setRecentlyUsedFlexSongIDs:(id)a3
{
  if (a3)
  {
    v4 = sub_1A524CA34();
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  *(self + 3) = v4;
}

- (NSArray)recentlyUsedAppleMusicSongIDs
{
  swift_beginAccess();
  if (*(self + 4))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

- (void)setRecentlyUsedAppleMusicSongIDs:(id)a3
{
  if (a3)
  {
    v4 = sub_1A524CA34();
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  *(self + 4) = v4;
}

@end