@interface ICPlaybackPositionEntity(SBCPrivate)
- (SBCPlaybackPositionEntity)sbcEntity;
@end

@implementation ICPlaybackPositionEntity(SBCPrivate)

- (SBCPlaybackPositionEntity)sbcEntity
{
  playbackPositionKey = [self playbackPositionKey];

  if (playbackPositionKey)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    allLibraries = [MEMORY[0x277D2B5F8] allLibraries];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__ICPlaybackPositionEntity_SBCPrivate__sbcEntity__block_invoke;
    v20[3] = &unk_279D24E30;
    v20[4] = self;
    v20[5] = &v21;
    [allLibraries enumerateObjectsUsingBlock:v20];

    v4 = [SBCPlaybackPositionDomain alloc];
    playbackPositionDomain = [self playbackPositionDomain];
    v6 = [(SBCPlaybackPositionDomain *)v4 initWithDomainIdentifier:playbackPositionDomain foreignDatabasePath:v22[5]];

    v7 = [SBCPlaybackPositionEntity alloc];
    playbackPositionKey2 = [self playbackPositionKey];
    itemPersistentIdentifier = [self itemPersistentIdentifier];
    v10 = -[SBCPlaybackPositionEntity initWithPlaybackPositionDomain:ubiquitousIdentifier:foreignDatabaseEntityID:](v7, "initWithPlaybackPositionDomain:ubiquitousIdentifier:foreignDatabaseEntityID:", v6, playbackPositionKey2, [itemPersistentIdentifier longLongValue]);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = objc_alloc_init(SBCPlaybackPositionEntity);
  }

  bookmarkTimestamp = [self bookmarkTimestamp];

  if (bookmarkTimestamp)
  {
    bookmarkTimestamp2 = [self bookmarkTimestamp];
    [bookmarkTimestamp2 doubleValue];
    [(SBCPlaybackPositionEntity *)v10 setBookmarkTimestamp:?];
  }

  bookmarkTime = [self bookmarkTime];

  if (bookmarkTime)
  {
    bookmarkTime2 = [self bookmarkTime];
    [bookmarkTime2 doubleValue];
    [(SBCPlaybackPositionEntity *)v10 setBookmarkTime:?];
  }

  userPlayCount = [self userPlayCount];

  if (userPlayCount)
  {
    userPlayCount2 = [self userPlayCount];
    -[SBCPlaybackPositionEntity setUserPlayCount:](v10, "setUserPlayCount:", [userPlayCount2 unsignedIntValue]);
  }

  hasBeenPlayed = [self hasBeenPlayed];

  if (hasBeenPlayed)
  {
    hasBeenPlayed2 = [self hasBeenPlayed];
    -[SBCPlaybackPositionEntity setHasBeenPlayed:](v10, "setHasBeenPlayed:", [hasBeenPlayed2 BOOLValue]);
  }

  return v10;
}

@end