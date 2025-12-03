@interface MTPodcastPlaylistSettings(DB)
- (void)setNeedsUpdate:()DB;
@end

@implementation MTPodcastPlaylistSettings(DB)

- (void)setNeedsUpdate:()DB
{
  playlist = [self playlist];
  needsUpdate = [playlist needsUpdate];

  flags = [self flags];
  if (((((flags & 2) == 0) ^ a3) & 1) == 0)
  {
    v8 = a3 | needsUpdate;
    v9 = 2;
    if (!a3)
    {
      v9 = 0;
    }

    [self setFlags:flags & 0xFFFFFFFFFFFFFFFDLL | v9];
    playlist2 = [self playlist];
    [playlist2 setNeedsUpdate:v8 & 1];

    playlistIfDefault = [self playlistIfDefault];
    needsUpdate2 = [playlistIfDefault needsUpdate];

    playlistIfDefault2 = [self playlistIfDefault];
    [playlistIfDefault2 setNeedsUpdate:(a3 | needsUpdate2) & 1];
  }
}

@end