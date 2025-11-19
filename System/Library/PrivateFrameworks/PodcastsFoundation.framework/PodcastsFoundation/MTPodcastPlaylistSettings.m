@interface MTPodcastPlaylistSettings
- (int64_t)integerForEpisodesToShow;
- (void)setNeedsUpdate:(BOOL)a3;
@end

@implementation MTPodcastPlaylistSettings

- (int64_t)integerForEpisodesToShow
{
  result = [(MTPodcastPlaylistSettings *)self episodesToShow];
  if (result > 3)
  {
    switch(result)
    {
      case 4:
        return 5;
      case 5:
        return 10;
      case 6:
        v5 = [(MTPodcastPlaylistSettings *)self playlist];
        v6 = [v5 defaultSettings];
        v7 = [v6 integerForEpisodesToShow];

        return v7;
      default:
        return 0;
    }
  }

  else
  {
    if (result == 3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (result == 2)
    {
      v4 = 2;
    }

    if (result != 1)
    {
      return v4;
    }
  }

  return result;
}

- (void)setNeedsUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcastPlaylistSettings *)self playlist];
  v6 = [v5 needsUpdate];

  v7 = [(MTPodcastPlaylistSettings *)self flags];
  if (((((v7 & 2) == 0) ^ v3) & 1) == 0)
  {
    v8 = v3 | v6;
    v9 = 2;
    if (!v3)
    {
      v9 = 0;
    }

    [(MTPodcastPlaylistSettings *)self setFlags:v7 & 0xFFFFFFFFFFFFFFFDLL | v9];
    v10 = [(MTPodcastPlaylistSettings *)self playlist];
    [v10 setNeedsUpdate:v8 & 1];

    v11 = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    v12 = [v11 needsUpdate];

    v13 = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    [v13 setNeedsUpdate:(v3 | v12) & 1];
  }
}

@end