@interface MCAssetAudio
- (NSSet)songs;
- (void)addSong:(id)a3;
- (void)demolish;
- (void)removeSong:(id)a3;
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

- (void)addSong:(id)a3
{
  objc_sync_enter(self);
  mSongs = self->mSongs;
  if (!mSongs)
  {
    mSongs = objc_alloc_init(NSMutableSet);
    self->mSongs = mSongs;
  }

  [(NSMutableSet *)mSongs addObject:a3];

  objc_sync_exit(self);
}

- (void)removeSong:(id)a3
{
  objc_sync_enter(self);
  [(NSMutableSet *)self->mSongs removeObject:a3];
  if (![(NSMutableSet *)self->mSongs count])
  {

    self->mSongs = 0;
  }

  objc_sync_exit(self);
}

@end