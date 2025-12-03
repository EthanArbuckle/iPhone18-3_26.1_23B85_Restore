@interface ICMusicLibraryContentItemSnapshot
- (ICMusicLibraryContentItemSnapshot)initWithSong:(id)song;
- (id)debugDescription;
@end

@implementation ICMusicLibraryContentItemSnapshot

- (id)debugDescription
{
  title = [(ICMusicLibraryContentMetadataDescriptor *)self->_artistMetadataDescriptor title];
  title2 = [(ICMusicLibraryContentMetadataDescriptor *)self->_songMetadataDescriptor title];
  title3 = [(ICMusicLibraryContentMetadataDescriptor *)self->_albumMetadataDescriptor title];
  v6 = [NSString stringWithFormat:@"%@ - %@ - %@, playCount: %ld", title, title2, title3, self->_playCount];
  v7 = [v6 mutableCopy];

  if (self->_lastPlayedDate)
  {
    v8 = [v7 stringByAppendingFormat:@", lastPlayedDate: %@", self->_lastPlayedDate];
  }

  return v7;
}

- (ICMusicLibraryContentItemSnapshot)initWithSong:(id)song
{
  songCopy = song;
  v28.receiver = self;
  v28.super_class = ICMusicLibraryContentItemSnapshot;
  v5 = [(ICMusicLibraryContentItemSnapshot *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v5->_hasArtistAndAlbumData = 1;
    v7 = [ICMusicLibraryContentMetadataDescriptor alloc];
    title = [songCopy title];
    identifiers = [songCopy identifiers];
    universalStore = [identifiers universalStore];
    v11 = -[ICMusicLibraryContentMetadataDescriptor initWithTitle:andStoreAdamID:](v7, "initWithTitle:andStoreAdamID:", title, [universalStore adamID]);
    [(ICMusicLibraryContentItemSnapshot *)v6 setSongMetadataDescriptor:v11];

    artist = [songCopy artist];
    if (!artist)
    {
      v6->_hasArtistAndAlbumData = 0;
    }

    v13 = [ICMusicLibraryContentMetadataDescriptor alloc];
    name = [artist name];
    identifiers2 = [artist identifiers];
    universalStore2 = [identifiers2 universalStore];
    v17 = -[ICMusicLibraryContentMetadataDescriptor initWithTitle:andStoreAdamID:](v13, "initWithTitle:andStoreAdamID:", name, [universalStore2 adamID]);
    [(ICMusicLibraryContentItemSnapshot *)v6 setArtistMetadataDescriptor:v17];

    album = [songCopy album];
    v19 = album;
    if (v6->_hasArtistAndAlbumData && !album)
    {
      v6->_hasArtistAndAlbumData = 0;
    }

    v20 = [ICMusicLibraryContentMetadataDescriptor alloc];
    title2 = [v19 title];
    identifiers3 = [v19 identifiers];
    universalStore3 = [identifiers3 universalStore];
    v24 = -[ICMusicLibraryContentMetadataDescriptor initWithTitle:andStoreAdamID:](v20, "initWithTitle:andStoreAdamID:", title2, [universalStore3 adamID]);
    [(ICMusicLibraryContentItemSnapshot *)v6 setAlbumMetadataDescriptor:v24];

    -[ICMusicLibraryContentItemSnapshot setPlayCount:](v6, "setPlayCount:", [songCopy playCount]);
    -[ICMusicLibraryContentItemSnapshot setSkipCount:](v6, "setSkipCount:", [songCopy skipCount]);
    [songCopy userRating];
    [(ICMusicLibraryContentItemSnapshot *)v6 setUserRating:?];
    lastDevicePlaybackDate = [songCopy lastDevicePlaybackDate];
    [(ICMusicLibraryContentItemSnapshot *)v6 setLastPlayedDate:lastDevicePlaybackDate];

    libraryAddedDate = [songCopy libraryAddedDate];
    [(ICMusicLibraryContentItemSnapshot *)v6 setLibraryAddedDate:libraryAddedDate];
  }

  return v6;
}

@end