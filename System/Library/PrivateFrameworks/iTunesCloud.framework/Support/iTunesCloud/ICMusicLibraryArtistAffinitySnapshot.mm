@interface ICMusicLibraryArtistAffinitySnapshot
- (ICMusicLibraryArtistAffinitySnapshot)initWithContentItemSnapshot:(id)snapshot;
- (float)legacyScore;
- (id)debugDescription;
- (int64_t)daysSinceLastPlayedDate;
@end

@implementation ICMusicLibraryArtistAffinitySnapshot

- (id)debugDescription
{
  artistName = [(ICMusicLibraryArtistAffinitySnapshot *)self artistName];
  [(ICMusicLibraryArtistAffinitySnapshot *)self legacyScore];
  v5 = v4;
  artistAdamID = [(ICMusicLibraryArtistAffinitySnapshot *)self artistAdamID];
  cumulativePlayCount = [(ICMusicLibraryArtistAffinitySnapshot *)self cumulativePlayCount];
  cumulativeSkipCount = [(ICMusicLibraryArtistAffinitySnapshot *)self cumulativeSkipCount];
  [(ICMusicLibraryArtistAffinitySnapshot *)self averagePlaysPerItemAdded];
  v9 = v8;
  uniqueAlbums = [(ICMusicLibraryArtistAffinitySnapshot *)self uniqueAlbums];
  v11 = [uniqueAlbums count];
  uniqueSongs = [(ICMusicLibraryArtistAffinitySnapshot *)self uniqueSongs];
  v13 = [uniqueSongs count];
  uniqueDatesWithAddedContent = [(ICMusicLibraryArtistAffinitySnapshot *)self uniqueDatesWithAddedContent];
  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Artist: %@: Score: %f, artistID: %lld, cumulativePlayCount: %ld, cumulativeSkipCount: %ld, playsPerItem: %f, uniqueAlbums: %lu, uniqueSongs: %lu, daysWithAdds: %lu, daysSinceLastPlay: %ld", artistName, *&v5, artistAdamID, cumulativePlayCount, cumulativeSkipCount, v9, v11, v13, [uniqueDatesWithAddedContent count], -[ICMusicLibraryArtistAffinitySnapshot daysSinceLastPlayedDate](self, "daysSinceLastPlayedDate"));

  return v15;
}

- (float)legacyScore
{
  v3 = [(NSMutableArray *)self->_uniqueSongs count];
  v4 = [(NSMutableArray *)self->_uniqueAlbums count];
  lastPlayedDate = self->_lastPlayedDate;
  if (lastPlayedDate)
  {
    [(NSDate *)lastPlayedDate timeIntervalSinceNow];
    *&v6 = v6;
    v7 = ((((*&v6 / 60.0) / 60.0) / 24.0) / 7.0) * 0.25;
  }

  else
  {
    v7 = 0.0;
  }

  return roundf((((v4 * 0.85) + (v3 * 0.55)) + ((self->_cumulativePlayCount * -0.15) + (self->_cumulativePlayCount * 0.45))) + (v7 * -0.1));
}

- (int64_t)daysSinceLastPlayedDate
{
  lastPlayedDate = self->_lastPlayedDate;
  if (!lastPlayedDate)
  {
    return -1;
  }

  [(NSDate *)lastPlayedDate timeIntervalSinceNow];
  v4 = v3 / 60.0 / 60.0 / 24.0;
  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return -v4;
  }
}

- (ICMusicLibraryArtistAffinitySnapshot)initWithContentItemSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v18.receiver = self;
  v18.super_class = ICMusicLibraryArtistAffinitySnapshot;
  v5 = [(ICMusicLibraryArtistAffinitySnapshot *)&v18 init];
  if (v5)
  {
    artistMetadataDescriptor = [snapshotCopy artistMetadataDescriptor];
    [(ICMusicLibraryArtistAffinitySnapshot *)v5 setArtistMetadataDescriptor:artistMetadataDescriptor];

    v7 = [NSMutableArray alloc];
    songMetadataDescriptor = [snapshotCopy songMetadataDescriptor];
    v9 = [v7 initWithObjects:{songMetadataDescriptor, 0}];
    [(ICMusicLibraryArtistAffinitySnapshot *)v5 setUniqueSongs:v9];

    v10 = [NSMutableArray alloc];
    albumMetadataDescriptor = [snapshotCopy albumMetadataDescriptor];
    v12 = [v10 initWithObjects:{albumMetadataDescriptor, 0}];
    [(ICMusicLibraryArtistAffinitySnapshot *)v5 setUniqueAlbums:v12];

    v13 = [NSMutableSet alloc];
    libraryAddedDate = [snapshotCopy libraryAddedDate];
    v15 = [v13 initWithObjects:{libraryAddedDate, 0}];
    [(ICMusicLibraryArtistAffinitySnapshot *)v5 setUniqueDatesWithAddedContent:v15];

    lastPlayedDate = [snapshotCopy lastPlayedDate];
    [(ICMusicLibraryArtistAffinitySnapshot *)v5 setLastPlayedDate:lastPlayedDate];

    -[ICMusicLibraryArtistAffinitySnapshot setCumulativePlayCount:](v5, "setCumulativePlayCount:", [snapshotCopy playCount]);
    -[ICMusicLibraryArtistAffinitySnapshot setCumulativeSkipCount:](v5, "setCumulativeSkipCount:", [snapshotCopy skipCount]);
  }

  return v5;
}

@end