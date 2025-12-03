@interface MCAssetAudio
- (NSSet)songs;
- (void)addSong:(id)song;
- (void)demolish;
- (void)removeSong:(id)song;
@end

@implementation MCAssetAudio

- (void)demolish
{
  objc_sync_enter(self);
  mSongs = self->mSongs;
  if (mSongs)
  {
    [(NSMutableSet *)mSongs removeAllObjects];
  }

  self->mSongs = 0;
  objc_sync_exit(self);
  v4.receiver = self;
  v4.super_class = MCAssetAudio;
  [(MCAsset *)&v4 demolish];
}

- (NSSet)songs
{
  objc_sync_enter(self);
  mSongs = self->mSongs;
  if (mSongs)
  {
    v4 = [(NSMutableSet *)mSongs copy];
  }

  else
  {
    v4 = sEmptySet;
  }

  objc_sync_exit(self);
  return v4;
}

- (void)addSong:(id)song
{
  objc_sync_enter(self);
  mSongs = self->mSongs;
  if (!mSongs)
  {
    mSongs = objc_alloc_init(NSMutableSet);
    self->mSongs = mSongs;
  }

  [(NSMutableSet *)mSongs addObject:song];

  objc_sync_exit(self);
}

- (void)removeSong:(id)song
{
  objc_sync_enter(self);
  [(NSMutableSet *)self->mSongs removeObject:song];
  if (![(NSMutableSet *)self->mSongs count])
  {

    self->mSongs = 0;
  }

  objc_sync_exit(self);
}

@end