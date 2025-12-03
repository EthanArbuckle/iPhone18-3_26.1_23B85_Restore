@interface MTPodcastPlaylistSettings
- (int64_t)integerForEpisodesToShow;
- (void)setNeedsUpdate:(BOOL)update;
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
        playlist = [(MTPodcastPlaylistSettings *)self playlist];
        defaultSettings = [playlist defaultSettings];
        integerForEpisodesToShow = [defaultSettings integerForEpisodesToShow];

        return integerForEpisodesToShow;
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

- (void)setNeedsUpdate:(BOOL)update
{
  updateCopy = update;
  playlist = [(MTPodcastPlaylistSettings *)self playlist];
  needsUpdate = [playlist needsUpdate];

  flags = [(MTPodcastPlaylistSettings *)self flags];
  if (((((flags & 2) == 0) ^ updateCopy) & 1) == 0)
  {
    v8 = updateCopy | needsUpdate;
    v9 = 2;
    if (!updateCopy)
    {
      v9 = 0;
    }

    [(MTPodcastPlaylistSettings *)self setFlags:flags & 0xFFFFFFFFFFFFFFFDLL | v9];
    playlist2 = [(MTPodcastPlaylistSettings *)self playlist];
    [playlist2 setNeedsUpdate:v8 & 1];

    playlistIfDefault = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    needsUpdate2 = [playlistIfDefault needsUpdate];

    playlistIfDefault2 = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    [playlistIfDefault2 setNeedsUpdate:(updateCopy | needsUpdate2) & 1];
  }
}

@end