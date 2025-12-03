@interface SBCPlaybackPositionEntity
- (SBCPlaybackPositionEntity)initWithCoder:(id)coder;
- (SBCPlaybackPositionEntity)initWithPlaybackPositionDomain:(id)domain ubiquitousIdentifier:(id)identifier foreignDatabaseEntityID:(int64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)iTunesCloudEntity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBCPlaybackPositionEntity

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithPlaybackPositionDomain:self->_playbackPositionDomain ubiquitousIdentifier:self->_ubiquitousIdentifier foreignDatabaseEntityID:self->_foreignDatabaseEntityID];
  v5 = v4;
  if (v4)
  {
    [v4 setBookmarkTimestamp:self->_bookmarkTimestamp];
    [v5 setBookmarkTime:self->_bookmarkTime];
    [v5 setUserPlayCount:self->_userPlayCount];
    [v5 setHasBeenPlayed:self->_hasBeenPlayed];
  }

  selfCopy = self;

  return selfCopy;
}

- (SBCPlaybackPositionEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"SBCPlaybackPositionDomain"];
  v6 = [coderCopy decodeObjectForKey:@"SBCUbiquitousIdentifier"];
  v7 = -[SBCPlaybackPositionEntity initWithPlaybackPositionDomain:ubiquitousIdentifier:foreignDatabaseEntityID:](self, "initWithPlaybackPositionDomain:ubiquitousIdentifier:foreignDatabaseEntityID:", v5, v6, [coderCopy decodeInt64ForKey:@"SBCForeignDatabaseEntityID"]);
  if (v7)
  {
    [coderCopy decodeDoubleForKey:@"SBCBookmarkTimestamp"];
    v7->_bookmarkTimestamp = v8;
    [coderCopy decodeDoubleForKey:@"SBCBookmarkTime"];
    v7->_bookmarkTime = v9;
    v7->_userPlayCount = [coderCopy decodeIntegerForKey:@"SBCUserPlayCount"];
    v7->_hasBeenPlayed = [coderCopy decodeBoolForKey:@"SBCHasBeenPlayed"];
    v10 = [coderCopy decodeBoolForKey:@"SBCBookmarkTimeModified"];
    propertyMonitor_0 = propertyMonitor_0 & 0xFE | v10;
    if ([coderCopy decodeBoolForKey:@"SBCHasBeenPlayedModified"])
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    propertyMonitor_0 = propertyMonitor_0 & 0xF7 | v11;
    if ([coderCopy decodeBoolForKey:@"SBCUserPlayCountModified"])
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    propertyMonitor_0 = propertyMonitor_0 & 0xFB | v12;
    if ([coderCopy decodeBoolForKey:@"SBCBookmarkTimestampModified"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    propertyMonitor_0 = propertyMonitor_0 & 0xFD | v13;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  playbackPositionDomain = self->_playbackPositionDomain;
  coderCopy = coder;
  [coderCopy encodeObject:playbackPositionDomain forKey:@"SBCPlaybackPositionDomain"];
  [coderCopy encodeObject:self->_ubiquitousIdentifier forKey:@"SBCUbiquitousIdentifier"];
  [coderCopy encodeInt64:self->_foreignDatabaseEntityID forKey:@"SBCForeignDatabaseEntityID"];
  [coderCopy encodeDouble:@"SBCBookmarkTimestamp" forKey:self->_bookmarkTimestamp];
  [coderCopy encodeDouble:@"SBCBookmarkTime" forKey:self->_bookmarkTime];
  [coderCopy encodeInteger:self->_userPlayCount forKey:@"SBCUserPlayCount"];
  [coderCopy encodeBool:self->_hasBeenPlayed forKey:@"SBCHasBeenPlayed"];
  [coderCopy encodeBool:propertyMonitor_0 & 1 forKey:@"SBCBookmarkTimeModified"];
  [coderCopy encodeBool:(propertyMonitor_0 >> 3) & 1 forKey:@"SBCHasBeenPlayedModified"];
  [coderCopy encodeBool:(propertyMonitor_0 >> 2) & 1 forKey:@"SBCUserPlayCountModified"];
  [coderCopy encodeBool:(propertyMonitor_0 >> 1) & 1 forKey:@"SBCBookmarkTimestampModified"];
}

- (id)iTunesCloudEntity
{
  domainIdentifier = [(SBCPlaybackPositionDomain *)self->_playbackPositionDomain domainIdentifier];
  v4 = domainIdentifier;
  v5 = *MEMORY[0x277D7F948];
  if (domainIdentifier)
  {
    v5 = domainIdentifier;
  }

  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x277D7FBB8]) initWithDomain:v6];
  [v7 setPlaybackPositionKey:self->_ubiquitousIdentifier];
  foreignDatabasePath = [(SBCPlaybackPositionDomain *)self->_playbackPositionDomain foreignDatabasePath];
  v9 = SBCPathWithScrubbedMount(foreignDatabasePath);

  allLibraries = [MEMORY[0x277D2B5F8] allLibraries];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __46__SBCPlaybackPositionEntity_iTunesCloudEntity__block_invoke;
  v24 = &unk_279D24E08;
  v11 = v9;
  v25 = v11;
  v12 = v7;
  v26 = v12;
  [allLibraries enumerateObjectsUsingBlock:&v21];

  if (self->_foreignDatabaseEntityID)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{v21, v22, v23, v24, v25}];
    [v12 setItemPersistentIdentifier:v13];
  }

  if ([(SBCPlaybackPositionEntity *)self bookmarkTimestampModified:v21])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_bookmarkTimestamp];
    [v12 setBookmarkTimestamp:v14];
  }

  if ([(SBCPlaybackPositionEntity *)self bookmarkTimeModified])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_bookmarkTime];
    [v12 setBookmarkTime:v15];
  }

  if ([(SBCPlaybackPositionEntity *)self userPlayCountModified])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_userPlayCount];
    [v12 setUserPlayCount:v16];
  }

  if ([(SBCPlaybackPositionEntity *)self hasBeenPlayedModified])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasBeenPlayed];
    [v12 setHasBeenPlayed:v17];
  }

  v18 = v26;
  v19 = v12;

  return v12;
}

void __46__SBCPlaybackPositionEntity_iTunesCloudEntity__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 databasePath];
  v7 = SBCPathWithScrubbedMount(v6);
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = [v10 libraryUID];
    [*(a1 + 40) setLibraryIdentifier:v9];

    *a4 = 1;
  }
}

- (SBCPlaybackPositionEntity)initWithPlaybackPositionDomain:(id)domain ubiquitousIdentifier:(id)identifier foreignDatabaseEntityID:(int64_t)d
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SBCPlaybackPositionEntity;
  v9 = [(SBCPlaybackPositionEntity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ubiquitousIdentifier, identifier);
    v10->_foreignDatabaseEntityID = d;
    propertyMonitor_0 = 0;
  }

  return v10;
}

@end