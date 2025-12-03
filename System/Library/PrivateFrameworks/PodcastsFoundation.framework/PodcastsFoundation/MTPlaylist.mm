@interface MTPlaylist
+ (id)predicateForIsHidden:(BOOL)hidden;
+ (id)propertiesToObserveForDownloadableEpisodes;
+ (id)sortDescriptors;
- (void)setIncludesAllPodcasts:(BOOL)podcasts;
- (void)setIsItunesPlaylist:(BOOL)playlist;
- (void)setIsUngroupedList:(BOOL)list;
- (void)setMediaLibraryId:(int64_t)id;
- (void)setNeedsUpdate:(BOOL)update;
@end

@implementation MTPlaylist

+ (id)sortDescriptors
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortOrder" ascending:0];
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setMediaLibraryId:(int64_t)id
{
  if ([(MTPlaylist *)self mediaLibraryId]!= id)
  {
    [(MTPlaylist *)self willChangeValueForKey:@"mediaLibraryId"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:id];
    [(MTPlaylist *)self setPrimitiveValue:v5 forKey:@"mediaLibraryId"];

    [(MTPlaylist *)self didChangeValueForKey:@"mediaLibraryId"];
  }
}

+ (id)propertiesToObserveForDownloadableEpisodes
{
  v7[9] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7[0] = @"uuid";
  v7[1] = @"unplayedCount";
  v7[2] = @"episodes";
  v7[3] = @"deletedEpisodes";
  v7[4] = @"settings";
  v7[5] = @"sortOrder";
  v7[6] = @"defaultSettings";
  v7[7] = @"containerOrder";
  v7[8] = @"hidden";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:9];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setIsUngroupedList:(BOOL)list
{
  listCopy = list;
  flags = [(MTPlaylist *)self flags];
  if (((((flags & 0x100) == 0) ^ listCopy) & 1) == 0)
  {
    v6 = 256;
    if (!listCopy)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:flags & 0xFFFFFFFFFFFFFEFFLL | v6];
  }
}

- (void)setIsItunesPlaylist:(BOOL)playlist
{
  playlistCopy = playlist;
  flags = [(MTPlaylist *)self flags];
  if (((((flags & 2) == 0) ^ playlistCopy) & 1) == 0)
  {
    v6 = 2;
    if (!playlistCopy)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:flags & 0xFFFFFFFFFFFFFFFDLL | v6];
  }
}

- (void)setIncludesAllPodcasts:(BOOL)podcasts
{
  podcastsCopy = podcasts;
  flags = [(MTPlaylist *)self flags];
  if (((((flags & 0x10) == 0) ^ podcastsCopy) & 1) == 0)
  {
    v6 = 16;
    if (!podcastsCopy)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:flags & 0xFFFFFFFFFFFFFFEFLL | v6];
  }
}

- (void)setNeedsUpdate:(BOOL)update
{
  updateCopy = update;
  flags = [(MTPlaylist *)self flags];
  if (((((flags & 0x20) == 0) ^ updateCopy) & 1) == 0)
  {
    v6 = 32;
    if (!updateCopy)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:flags & 0xFFFFFFFFFFFFFFDFLL | v6];
  }
}

+ (id)predicateForIsHidden:(BOOL)hidden
{
  v3 = &unk_1F54BDD00;
  if (hidden)
  {
    v3 = &unk_1F54BDCE8;
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"hidden", v3];
}

@end