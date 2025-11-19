@interface ICPlaybackPositionEntity(SBCPrivate)
- (SBCPlaybackPositionEntity)sbcEntity;
@end

@implementation ICPlaybackPositionEntity(SBCPrivate)

- (SBCPlaybackPositionEntity)sbcEntity
{
  v2 = [a1 playbackPositionKey];

  if (v2)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    v3 = [MEMORY[0x277D2B5F8] allLibraries];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__ICPlaybackPositionEntity_SBCPrivate__sbcEntity__block_invoke;
    v20[3] = &unk_279D24E30;
    v20[4] = a1;
    v20[5] = &v21;
    [v3 enumerateObjectsUsingBlock:v20];

    v4 = [SBCPlaybackPositionDomain alloc];
    v5 = [a1 playbackPositionDomain];
    v6 = [(SBCPlaybackPositionDomain *)v4 initWithDomainIdentifier:v5 foreignDatabasePath:v22[5]];

    v7 = [SBCPlaybackPositionEntity alloc];
    v8 = [a1 playbackPositionKey];
    v9 = [a1 itemPersistentIdentifier];
    v10 = -[SBCPlaybackPositionEntity initWithPlaybackPositionDomain:ubiquitousIdentifier:foreignDatabaseEntityID:](v7, "initWithPlaybackPositionDomain:ubiquitousIdentifier:foreignDatabaseEntityID:", v6, v8, [v9 longLongValue]);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = objc_alloc_init(SBCPlaybackPositionEntity);
  }

  v11 = [a1 bookmarkTimestamp];

  if (v11)
  {
    v12 = [a1 bookmarkTimestamp];
    [v12 doubleValue];
    [(SBCPlaybackPositionEntity *)v10 setBookmarkTimestamp:?];
  }

  v13 = [a1 bookmarkTime];

  if (v13)
  {
    v14 = [a1 bookmarkTime];
    [v14 doubleValue];
    [(SBCPlaybackPositionEntity *)v10 setBookmarkTime:?];
  }

  v15 = [a1 userPlayCount];

  if (v15)
  {
    v16 = [a1 userPlayCount];
    -[SBCPlaybackPositionEntity setUserPlayCount:](v10, "setUserPlayCount:", [v16 unsignedIntValue]);
  }

  v17 = [a1 hasBeenPlayed];

  if (v17)
  {
    v18 = [a1 hasBeenPlayed];
    -[SBCPlaybackPositionEntity setHasBeenPlayed:](v10, "setHasBeenPlayed:", [v18 BOOLValue]);
  }

  return v10;
}

@end