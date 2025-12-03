@interface MTPodcast(DB_App)
+ (id)allPossibleEpisodeListSortOrderProperties;
+ (id)podcastUuidForFeedUrl:()DB_App ctx:;
+ (id)podcastUuidForFeedUrlString:()DB_App ctx:;
+ (id)sortDescriptorsForNewestOnTop;
+ (id)sortDescriptorsForOldestOnTop;
- (BOOL)hasMultipleSeasons;
- (id)sortDescriptorsForPlayOrder;
- (id)sortDescriptorsForSortOrder;
- (uint64_t)applyShowTypeSetting:()DB_App;
- (uint64_t)hasAtLeastOneSeason;
- (uint64_t)seasonSortDescriptorsForSortOrder;
- (uint64_t)setDeletePlayedEpisodes:()DB_App;
- (uint64_t)setFeedChangedDate:()DB_App;
- (uint64_t)setLastImplicitlyFollowedDate:()DB_App;
- (uint64_t)setModifiedDate:()DB_App;
- (uint64_t)setUpdateAvg:()DB_App;
- (uint64_t)setUpdateStdDev:()DB_App;
- (uint64_t)sortDescriptorsForPlayOrderByEpisodeNumber;
- (uint64_t)sortDescriptorsForPlayOrderByPubDate;
- (uint64_t)updateCursorPosition:()DB_App;
- (void)markPlaylistsForUpdate;
- (void)setAuthor:()DB_App;
- (void)setImageURL:()DB_App;
- (void)setItemDescription:()DB_App;
- (void)setPlaybackNewestToOldest:()DB_App;
- (void)setShowTypeInFeed:()DB_App;
- (void)setShowTypeSetting:()DB_App;
- (void)setSortAscending:()DB_App;
- (void)setWebpageURL:()DB_App;
@end

@implementation MTPodcast(DB_App)

- (void)markPlaylistsForUpdate
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  playlistSettings = [self playlistSettings];
  v2 = [playlistSettings countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(playlistSettings);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        [v6 setNeedsUpdate:1];
        playlist = [v6 playlist];
        [playlist setNeedsUpdate:1];
      }

      v3 = [playlistSettings countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setDeletePlayedEpisodes:()DB_App
{
  v5 = *MEMORY[0x277D3DE38];
  [self willChangeValueForKey:*MEMORY[0x277D3DE38]];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [self setPrimitiveValue:v6 forKey:v5];

  [self didChangeValueForKey:v5];

  return [self markPlaylistsForUpdate];
}

- (uint64_t)setLastImplicitlyFollowedDate:()DB_App
{
  result = [self lastImplicitlyFollowedDate];
  if (v5 < a2)
  {
    v6 = *MEMORY[0x277D3DE90];
    [self willChangeValueForKey:*MEMORY[0x277D3DE90]];
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [self setPrimitiveValue:v7 forKey:v6];

    return [self didChangeValueForKey:v6];
  }

  return result;
}

- (uint64_t)setModifiedDate:()DB_App
{
  lenientSharedInstance = [MEMORY[0x277D3DB78] lenientSharedInstance];
  [lenientSharedInstance timestampBoundByNow:a2];
  v6 = v5;

  v7 = *MEMORY[0x277D3DEA0];
  [self willChangeValueForKey:*MEMORY[0x277D3DEA0]];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
  [self setPrimitiveValue:v8 forKey:v7];

  return [self didChangeValueForKey:v7];
}

- (void)setAuthor:()DB_App
{
  v9 = a3;
  author = [self author];
  v5 = v9 | author;

  if (v5)
  {
    author2 = [self author];
    v7 = [author2 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DE20];
      [self willChangeValueForKey:*MEMORY[0x277D3DE20]];
      [self setPrimitiveValue:v9 forKey:v8];
      [self didChangeValueForKey:v8];
    }
  }
}

- (void)setItemDescription:()DB_App
{
  v9 = a3;
  itemDescription = [self itemDescription];
  v5 = v9 | itemDescription;

  if (v5)
  {
    itemDescription2 = [self itemDescription];
    v7 = [itemDescription2 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DE40];
      [self willChangeValueForKey:*MEMORY[0x277D3DE40]];
      [self setPrimitiveValue:v9 forKey:v8];
      [self didChangeValueForKey:v8];
    }
  }
}

- (uint64_t)setFeedChangedDate:()DB_App
{
  result = [self feedChangedDate];
  if (vabdd_f64(v5, a2) > 2.22044605e-16)
  {
    v6 = *MEMORY[0x277D3DE60];
    [self willChangeValueForKey:*MEMORY[0x277D3DE60]];
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [self setPrimitiveValue:v7 forKey:v6];

    return [self didChangeValueForKey:v6];
  }

  return result;
}

- (uint64_t)setUpdateStdDev:()DB_App
{
  result = [self updateStdDev];
  if (vabdd_f64(v5, a2) > 2.22044605e-16)
  {
    v6 = *MEMORY[0x277D3DEF8];
    [self willChangeValueForKey:*MEMORY[0x277D3DEF8]];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    [self setPrimitiveValue:v7 forKey:v6];

    return [self didChangeValueForKey:v6];
  }

  return result;
}

- (uint64_t)setUpdateAvg:()DB_App
{
  result = [self updateAvg];
  if (vabdd_f64(v5, a2) > 2.22044605e-16)
  {
    v6 = *MEMORY[0x277D3DEF0];
    [self willChangeValueForKey:*MEMORY[0x277D3DEF0]];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    [self setPrimitiveValue:v7 forKey:v6];

    return [self didChangeValueForKey:v6];
  }

  return result;
}

- (void)setImageURL:()DB_App
{
  v9 = a3;
  imageURL = [self imageURL];
  v5 = v9 | imageURL;

  if (v5)
  {
    imageURL2 = [self imageURL];
    v7 = [imageURL2 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DE80];
      [self willChangeValueForKey:*MEMORY[0x277D3DE80]];
      [self setPrimitiveValue:v9 forKey:v8];
      [self didChangeValueForKey:v8];
    }
  }
}

- (void)setShowTypeInFeed:()DB_App
{
  v9 = a3;
  showTypeInFeed = [self showTypeInFeed];
  v5 = v9 | showTypeInFeed;

  if (v5)
  {
    showTypeInFeed2 = [self showTypeInFeed];
    v7 = [showTypeInFeed2 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DEB8];
      [self willChangeValueForKey:*MEMORY[0x277D3DEB8]];
      [self setPrimitiveValue:v9 forKey:v8];
      [self didChangeValueForKey:v8];
    }
  }
}

- (void)setWebpageURL:()DB_App
{
  v9 = a3;
  webpageURL = [self webpageURL];
  v5 = v9 | webpageURL;

  if (v5)
  {
    webpageURL2 = [self webpageURL];
    v7 = [webpageURL2 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DF18];
      [self willChangeValueForKey:*MEMORY[0x277D3DF18]];
      [self setPrimitiveValue:v9 forKey:v8];
      [self didChangeValueForKey:v8];
    }
  }
}

- (void)setShowTypeSetting:()DB_App
{
  v25 = *MEMORY[0x277D85DE8];
  if ([self showTypeSetting] != a3)
  {
    v5 = [self isValidShowTypeSetting:a3];
    v6 = _MTLogCategoryDatabase();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        title = [self title];
        feedURL = [self feedURL];
        storeCollectionId = [self storeCollectionId];
        uuid = [self uuid];
        v15 = 134350083;
        v16 = a3;
        v17 = 2113;
        v18 = title;
        v19 = 2113;
        v20 = feedURL;
        v21 = 2049;
        v22 = storeCollectionId;
        v23 = 2114;
        v24 = uuid;
        _os_log_impl(&dword_25E9F0000, v6, OS_LOG_TYPE_DEFAULT, "Switching show type setting to %{public}lld, show %{private}@, %{private}@, %{private}lld, %{public}@", &v15, 0x34u);
      }

      v12 = *MEMORY[0x277D3DEC0];
      [self willChangeValueForKey:*MEMORY[0x277D3DEC0]];
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
      [self setPrimitiveValue:v13 forKey:v12];

      [self didChangeValueForKey:v12];
      [self applyShowTypeSetting:a3];
    }

    else
    {
      if (v7)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_25E9F0000, v6, OS_LOG_TYPE_DEFAULT, "WARNING: Ignoring attempt to set an invalid show type", &v15, 2u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (uint64_t)applyShowTypeSetting:()DB_App
{
  v2 = [MEMORY[0x277D3DB38] sortOrderAscForShowType:?];
  v3 = v2;
  [self setSortAscending:v2];

  return [self setPlaybackNewestToOldest:v3 ^ 1u];
}

- (void)setSortAscending:()DB_App
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v6 = @"true";
    }

    else
    {
      v6 = @"false";
    }

    title = [self title];
    feedURL = [self feedURL];
    storeCollectionId = [self storeCollectionId];
    uuid = [self uuid];
    v15 = 138544387;
    v16 = v6;
    v17 = 2113;
    v18 = title;
    v19 = 2113;
    v20 = feedURL;
    v21 = 2049;
    v22 = storeCollectionId;
    v23 = 2114;
    v24 = uuid;
    _os_log_impl(&dword_25E9F0000, v5, OS_LOG_TYPE_DEFAULT, "Switching SortAscendingFlag to %{public}@, show %{private}@, %{private}@, %{private}lld, %{public}@", &v15, 0x34u);
  }

  flags = [self flags];
  if (((((flags & 2) == 0) ^ a3) & 1) == 0)
  {
    v12 = 2;
    if (!a3)
    {
      v12 = 0;
    }

    [self setFlags:flags & 0xFFFFFFFFFFFFFFFDLL | v12];
    [self markPlaylistsForUpdate];
    mEMORY[0x277D3DB80] = [MEMORY[0x277D3DB80] shared];
    [mEMORY[0x277D3DB80] markSubscriptionSyncDirty:1 for:{objc_msgSend(self, "syncType")}];
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)allPossibleEpisodeListSortOrderProperties
{
  v23[4] = *MEMORY[0x277D85DE8];
  v19 = objc_alloc(MEMORY[0x277CBEB18]);
  v21 = *MEMORY[0x277D3DCA0];
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:? ascending:?];
  v23[0] = v0;
  v1 = *MEMORY[0x277D3DC18];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC18] ascending:1];
  v23[1] = v2;
  v3 = *MEMORY[0x277D3DC58];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC58] ascending:0];
  v23[2] = v4;
  v5 = *MEMORY[0x277D3DCB8];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCB8] ascending:1 selector:sel_localizedStandardCompare_];
  v23[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [v19 initWithArray:v7];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v21 ascending:0];
  v22[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v1 ascending:0];
  v22[1] = v9;
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v3 ascending:1];
  v22[2] = v10;
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v5 ascending:1 selector:sel_localizedStandardCompare_];
  v22[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v20 addObjectsFromArray:v12];

  v13 = MEMORY[0x277CBEB98];
  v14 = [v20 mt_compactMap:&__block_literal_global_4];
  v15 = [v13 setWithArray:v14];
  allObjects = [v15 allObjects];

  v17 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)sortDescriptorsForSortOrder
{
  v16[4] = *MEMORY[0x277D85DE8];
  if ([self isSerialShowTypeInFeed])
  {
    seasonSortDescriptorsForSortOrder = [self seasonSortDescriptorsForSortOrder];
  }

  else
  {
    sortAscending = [self sortAscending];
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = *MEMORY[0x277D3DCA0];
    if (sortAscending)
    {
      v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v5 ascending:1];
      v16[0] = v6;
      v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC18] ascending:1];
      v16[1] = v7;
      v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC58] ascending:0];
      v16[2] = v8;
      v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCB8] ascending:1 selector:sel_localizedStandardCompare_];
      v16[3] = v9;
      v10 = MEMORY[0x277CBEA60];
      v11 = v16;
    }

    else
    {
      v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v5 ascending:0];
      v15[0] = v6;
      v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC18] ascending:0];
      v15[1] = v7;
      v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC58] ascending:1];
      v15[2] = v8;
      v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCB8] ascending:1 selector:sel_localizedStandardCompare_];
      v15[3] = v9;
      v10 = MEMORY[0x277CBEA60];
      v11 = v15;
    }

    v12 = [v10 arrayWithObjects:v11 count:4];
    seasonSortDescriptorsForSortOrder = [v4 initWithArray:v12];
  }

  v13 = *MEMORY[0x277D85DE8];

  return seasonSortDescriptorsForSortOrder;
}

- (uint64_t)seasonSortDescriptorsForSortOrder
{
  v1 = MEMORY[0x277D3DAF8];
  showTypeSetting = [self showTypeSetting];

  return [v1 seasonSortDescriptors:showTypeSetting];
}

+ (id)sortDescriptorsForOldestOnTop
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCA0] ascending:1];
  v7[0] = v0;
  v1 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC18] ascending:1];
  v7[1] = v1;
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC58] ascending:0];
  v7[2] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCB8] ascending:1 selector:sel_localizedStandardCompare_];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)sortDescriptorsForNewestOnTop
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCA0] ascending:0];
  v7[0] = v0;
  v1 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC18] ascending:0];
  v7[1] = v1;
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC58] ascending:1];
  v7[2] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCB8] ascending:1 selector:sel_localizedStandardCompare_];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)sortDescriptorsForPlayOrder
{
  if ([self isSerialShowTypeInFeed])
  {
    [self sortDescriptorsForPlayOrderByEpisodeNumber];
  }

  else
  {
    [self sortDescriptorsForPlayOrderByPubDate];
  }
  v2 = ;

  return v2;
}

- (uint64_t)sortDescriptorsForPlayOrderByPubDate
{
  playbackNewestToOldest = [self playbackNewestToOldest];
  v2 = objc_opt_class();

  return [v2 sortDescriptorsForNewestToOldest:playbackNewestToOldest];
}

- (uint64_t)sortDescriptorsForPlayOrderByEpisodeNumber
{
  v1 = MEMORY[0x277D3DAF8];
  showTypeSetting = [self showTypeSetting];

  return [v1 seasonSortDescriptors:showTypeSetting];
}

- (void)setPlaybackNewestToOldest:()DB_App
{
  playbackNewestToOldest = [self playbackNewestToOldest];
  flags = [self flags];
  if (((((flags & 8) == 0) ^ a3) & 1) == 0)
  {
    v7 = 8;
    if (!a3)
    {
      v7 = 0;
    }

    [self setFlags:flags & 0xFFFFFFFFFFFFFFF7 | v7];
    [self markPlaylistsForUpdate];
    mEMORY[0x277D3DB80] = [MEMORY[0x277D3DB80] shared];
    [mEMORY[0x277D3DB80] markSubscriptionSyncDirty:1 for:{objc_msgSend(self, "syncType")}];

    if (playbackNewestToOldest != a3)
    {

      [self updateCursorPosition:0];
    }
  }
}

- (uint64_t)updateCursorPosition:()DB_App
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  managedObjectContext = [self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__MTPodcast_DB_App__updateCursorPosition___block_invoke;
  v9[3] = &unk_279A44D60;
  v9[4] = self;
  v6 = managedObjectContext;
  v10 = v6;
  v11 = &v13;
  v12 = a3;
  [v6 performBlockAndWait:v9];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

+ (id)podcastUuidForFeedUrlString:()DB_App ctx:
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__3;
    v17 = __Block_byref_object_dispose__3;
    v18 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__MTPodcast_DB_App__podcastUuidForFeedUrlString_ctx___block_invoke;
    v9[3] = &unk_279A44930;
    v10 = v6;
    v11 = v5;
    v12 = &v13;
    [v10 performBlockAndWait:v9];
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)podcastUuidForFeedUrl:()DB_App ctx:
{
  v6 = a4;
  absoluteString = [a3 absoluteString];
  v8 = [self podcastUuidForFeedUrlString:absoluteString ctx:v6];

  return v8;
}

- (uint64_t)hasAtLeastOneSeason
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  managedObjectContext = [self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__MTPodcast_DB_App__hasAtLeastOneSeason__block_invoke;
  v6[3] = &unk_279A44D88;
  v6[4] = self;
  v8 = &v9;
  v3 = managedObjectContext;
  v7 = v3;
  [v3 performBlockAndWait:v6];
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

- (BOOL)hasMultipleSeasons
{
  seasonNumbers = [self seasonNumbers];
  v2 = [seasonNumbers count] > 1;

  return v2;
}

@end