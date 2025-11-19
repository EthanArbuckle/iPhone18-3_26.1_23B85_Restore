@interface MTPlaylist
+ (id)predicateForIsHidden:(BOOL)a3;
+ (id)propertiesToObserveForDownloadableEpisodes;
+ (id)sortDescriptors;
- (void)setIncludesAllPodcasts:(BOOL)a3;
- (void)setIsItunesPlaylist:(BOOL)a3;
- (void)setIsUngroupedList:(BOOL)a3;
- (void)setMediaLibraryId:(int64_t)a3;
- (void)setNeedsUpdate:(BOOL)a3;
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

- (void)setMediaLibraryId:(int64_t)a3
{
  if ([(MTPlaylist *)self mediaLibraryId]!= a3)
  {
    [(MTPlaylist *)self willChangeValueForKey:@"mediaLibraryId"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
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

- (void)setIsUngroupedList:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPlaylist *)self flags];
  if (((((v5 & 0x100) == 0) ^ v3) & 1) == 0)
  {
    v6 = 256;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:v5 & 0xFFFFFFFFFFFFFEFFLL | v6];
  }
}

- (void)setIsItunesPlaylist:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPlaylist *)self flags];
  if (((((v5 & 2) == 0) ^ v3) & 1) == 0)
  {
    v6 = 2;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:v5 & 0xFFFFFFFFFFFFFFFDLL | v6];
  }
}

- (void)setIncludesAllPodcasts:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPlaylist *)self flags];
  if (((((v5 & 0x10) == 0) ^ v3) & 1) == 0)
  {
    v6 = 16;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:v5 & 0xFFFFFFFFFFFFFFEFLL | v6];
  }
}

- (void)setNeedsUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPlaylist *)self flags];
  if (((((v5 & 0x20) == 0) ^ v3) & 1) == 0)
  {
    v6 = 32;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPlaylist *)self setFlags:v5 & 0xFFFFFFFFFFFFFFDFLL | v6];
  }
}

+ (id)predicateForIsHidden:(BOOL)a3
{
  v3 = &unk_1F54BDD00;
  if (a3)
  {
    v3 = &unk_1F54BDCE8;
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"hidden", v3];
}

@end