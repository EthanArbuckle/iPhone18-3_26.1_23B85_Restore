@interface ICMusicLibraryArtistAffinitySnapshot
- (ICMusicLibraryArtistAffinitySnapshot)initWithContentItemSnapshot:(id)a3;
- (float)legacyScore;
- (id)debugDescription;
- (int64_t)daysSinceLastPlayedDate;
@end

@implementation ICMusicLibraryArtistAffinitySnapshot

- (id)debugDescription
{
  v3 = [(ICMusicLibraryArtistAffinitySnapshot *)self artistName];
  [(ICMusicLibraryArtistAffinitySnapshot *)self legacyScore];
  v5 = v4;
  v17 = [(ICMusicLibraryArtistAffinitySnapshot *)self artistAdamID];
  v6 = [(ICMusicLibraryArtistAffinitySnapshot *)self cumulativePlayCount];
  v7 = [(ICMusicLibraryArtistAffinitySnapshot *)self cumulativeSkipCount];
  [(ICMusicLibraryArtistAffinitySnapshot *)self averagePlaysPerItemAdded];
  v9 = v8;
  v10 = [(ICMusicLibraryArtistAffinitySnapshot *)self uniqueAlbums];
  v11 = [v10 count];
  v12 = [(ICMusicLibraryArtistAffinitySnapshot *)self uniqueSongs];
  v13 = [v12 count];
  v14 = [(ICMusicLibraryArtistAffinitySnapshot *)self uniqueDatesWithAddedContent];
  v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Artist: %@: Score: %f, artistID: %lld, cumulativePlayCount: %ld, cumulativeSkipCount: %ld, playsPerItem: %f, uniqueAlbums: %lu, uniqueSongs: %lu, daysWithAdds: %lu, daysSinceLastPlay: %ld", v3, *&v5, v17, v6, v7, v9, v11, v13, [v14 count], -[ICMusicLibraryArtistAffinitySnapshot daysSinceLastPlayedDate](self, "daysSinceLastPlayedDate"));

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

- (ICMusicLibraryArtistAffinitySnapshot)initWithContentItemSnapshot:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ICMusicLibraryArtistAffinitySnapshot;
  v5 = [(ICMusicLibraryArtistAffinitySnapshot *)&v18 init];
  if (v5)
  {
    v6 = [v4 artistMetadataDescriptor];
    [(ICMusicLibraryArtistAffinitySnapshot *)v5 setArtistMetadataDescriptor:v6];

    v7 = [NSMutableArray alloc];
    v8 = [v4 songMetadataDescriptor];
    v9 = [v7 initWithObjects:{v8, 0}];
    [(ICMusicLibraryArtistAffinitySnapshot *)v5 setUniqueSongs:v9];

    v10 = [NSMutableArray alloc];
    v11 = [v4 albumMetadataDescriptor];
    v12 = [v10 initWithObjects:{v11, 0}];
    [(ICMusicLibraryArtistAffinitySnapshot *)v5 setUniqueAlbums:v12];

    v13 = [NSMutableSet alloc];
    v14 = [v4 libraryAddedDate];
    v15 = [v13 initWithObjects:{v14, 0}];
    [(ICMusicLibraryArtistAffinitySnapshot *)v5 setUniqueDatesWithAddedContent:v15];

    v16 = [v4 lastPlayedDate];
    [(ICMusicLibraryArtistAffinitySnapshot *)v5 setLastPlayedDate:v16];

    -[ICMusicLibraryArtistAffinitySnapshot setCumulativePlayCount:](v5, "setCumulativePlayCount:", [v4 playCount]);
    -[ICMusicLibraryArtistAffinitySnapshot setCumulativeSkipCount:](v5, "setCumulativeSkipCount:", [v4 skipCount]);
  }

  return v5;
}

@end