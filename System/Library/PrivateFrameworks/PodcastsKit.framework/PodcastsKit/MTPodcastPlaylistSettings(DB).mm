@interface MTPodcastPlaylistSettings(DB)
- (void)setNeedsUpdate:()DB;
@end

@implementation MTPodcastPlaylistSettings(DB)

- (void)setNeedsUpdate:()DB
{
  v5 = [a1 playlist];
  v6 = [v5 needsUpdate];

  v7 = [a1 flags];
  if (((((v7 & 2) == 0) ^ a3) & 1) == 0)
  {
    v8 = a3 | v6;
    v9 = 2;
    if (!a3)
    {
      v9 = 0;
    }

    [a1 setFlags:v7 & 0xFFFFFFFFFFFFFFFDLL | v9];
    v10 = [a1 playlist];
    [v10 setNeedsUpdate:v8 & 1];

    v11 = [a1 playlistIfDefault];
    v12 = [v11 needsUpdate];

    v13 = [a1 playlistIfDefault];
    [v13 setNeedsUpdate:(a3 | v12) & 1];
  }
}

@end