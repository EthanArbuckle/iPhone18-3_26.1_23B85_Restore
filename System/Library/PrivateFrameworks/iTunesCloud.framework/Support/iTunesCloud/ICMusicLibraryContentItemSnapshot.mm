@interface ICMusicLibraryContentItemSnapshot
- (ICMusicLibraryContentItemSnapshot)initWithSong:(id)a3;
- (id)debugDescription;
@end

@implementation ICMusicLibraryContentItemSnapshot

- (id)debugDescription
{
  v3 = [(ICMusicLibraryContentMetadataDescriptor *)self->_artistMetadataDescriptor title];
  v4 = [(ICMusicLibraryContentMetadataDescriptor *)self->_songMetadataDescriptor title];
  v5 = [(ICMusicLibraryContentMetadataDescriptor *)self->_albumMetadataDescriptor title];
  v6 = [NSString stringWithFormat:@"%@ - %@ - %@, playCount: %ld", v3, v4, v5, self->_playCount];
  v7 = [v6 mutableCopy];

  if (self->_lastPlayedDate)
  {
    v8 = [v7 stringByAppendingFormat:@", lastPlayedDate: %@", self->_lastPlayedDate];
  }

  return v7;
}

- (ICMusicLibraryContentItemSnapshot)initWithSong:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = ICMusicLibraryContentItemSnapshot;
  v5 = [(ICMusicLibraryContentItemSnapshot *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v5->_hasArtistAndAlbumData = 1;
    v7 = [ICMusicLibraryContentMetadataDescriptor alloc];
    v8 = [v4 title];
    v9 = [v4 identifiers];
    v10 = [v9 universalStore];
    v11 = -[ICMusicLibraryContentMetadataDescriptor initWithTitle:andStoreAdamID:](v7, "initWithTitle:andStoreAdamID:", v8, [v10 adamID]);
    [(ICMusicLibraryContentItemSnapshot *)v6 setSongMetadataDescriptor:v11];

    v12 = [v4 artist];
    if (!v12)
    {
      v6->_hasArtistAndAlbumData = 0;
    }

    v13 = [ICMusicLibraryContentMetadataDescriptor alloc];
    v14 = [v12 name];
    v15 = [v12 identifiers];
    v16 = [v15 universalStore];
    v17 = -[ICMusicLibraryContentMetadataDescriptor initWithTitle:andStoreAdamID:](v13, "initWithTitle:andStoreAdamID:", v14, [v16 adamID]);
    [(ICMusicLibraryContentItemSnapshot *)v6 setArtistMetadataDescriptor:v17];

    v18 = [v4 album];
    v19 = v18;
    if (v6->_hasArtistAndAlbumData && !v18)
    {
      v6->_hasArtistAndAlbumData = 0;
    }

    v20 = [ICMusicLibraryContentMetadataDescriptor alloc];
    v21 = [v19 title];
    v22 = [v19 identifiers];
    v23 = [v22 universalStore];
    v24 = -[ICMusicLibraryContentMetadataDescriptor initWithTitle:andStoreAdamID:](v20, "initWithTitle:andStoreAdamID:", v21, [v23 adamID]);
    [(ICMusicLibraryContentItemSnapshot *)v6 setAlbumMetadataDescriptor:v24];

    -[ICMusicLibraryContentItemSnapshot setPlayCount:](v6, "setPlayCount:", [v4 playCount]);
    -[ICMusicLibraryContentItemSnapshot setSkipCount:](v6, "setSkipCount:", [v4 skipCount]);
    [v4 userRating];
    [(ICMusicLibraryContentItemSnapshot *)v6 setUserRating:?];
    v25 = [v4 lastDevicePlaybackDate];
    [(ICMusicLibraryContentItemSnapshot *)v6 setLastPlayedDate:v25];

    v26 = [v4 libraryAddedDate];
    [(ICMusicLibraryContentItemSnapshot *)v6 setLibraryAddedDate:v26];
  }

  return v6;
}

@end