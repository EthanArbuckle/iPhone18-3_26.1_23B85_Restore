@interface StoryPassthroughMusicCurationProvider
- (NSArray)recentlyUsedAppleMusicSongIDs;
- (NSArray)recentlyUsedFlexSongIDs;
- (id)requestMusicCurationForAssetContainer:(id)container options:(id)options resultHandler:(id)handler;
- (void)setRecentlyUsedAppleMusicSongIDs:(id)ds;
- (void)setRecentlyUsedFlexSongIDs:(id)ds;
@end

@implementation StoryPassthroughMusicCurationProvider

- (id)requestMusicCurationForAssetContainer:(id)container options:(id)options resultHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  containerCopy = container;
  optionsCopy = options;

  v11 = sub_1A48D6FBC(containerCopy, options, self, v8);
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

- (void)setRecentlyUsedFlexSongIDs:(id)ds
{
  if (ds)
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

- (void)setRecentlyUsedAppleMusicSongIDs:(id)ds
{
  if (ds)
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