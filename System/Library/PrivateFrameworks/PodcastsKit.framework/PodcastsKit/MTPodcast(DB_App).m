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
  v1 = [a1 playlistSettings];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        [v6 setNeedsUpdate:1];
        v7 = [v6 playlist];
        [v7 setNeedsUpdate:1];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setDeletePlayedEpisodes:()DB_App
{
  v5 = *MEMORY[0x277D3DE38];
  [a1 willChangeValueForKey:*MEMORY[0x277D3DE38]];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [a1 setPrimitiveValue:v6 forKey:v5];

  [a1 didChangeValueForKey:v5];

  return [a1 markPlaylistsForUpdate];
}

- (uint64_t)setLastImplicitlyFollowedDate:()DB_App
{
  result = [a1 lastImplicitlyFollowedDate];
  if (v5 < a2)
  {
    v6 = *MEMORY[0x277D3DE90];
    [a1 willChangeValueForKey:*MEMORY[0x277D3DE90]];
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [a1 setPrimitiveValue:v7 forKey:v6];

    return [a1 didChangeValueForKey:v6];
  }

  return result;
}

- (uint64_t)setModifiedDate:()DB_App
{
  v4 = [MEMORY[0x277D3DB78] lenientSharedInstance];
  [v4 timestampBoundByNow:a2];
  v6 = v5;

  v7 = *MEMORY[0x277D3DEA0];
  [a1 willChangeValueForKey:*MEMORY[0x277D3DEA0]];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
  [a1 setPrimitiveValue:v8 forKey:v7];

  return [a1 didChangeValueForKey:v7];
}

- (void)setAuthor:()DB_App
{
  v9 = a3;
  v4 = [a1 author];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [a1 author];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DE20];
      [a1 willChangeValueForKey:*MEMORY[0x277D3DE20]];
      [a1 setPrimitiveValue:v9 forKey:v8];
      [a1 didChangeValueForKey:v8];
    }
  }
}

- (void)setItemDescription:()DB_App
{
  v9 = a3;
  v4 = [a1 itemDescription];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [a1 itemDescription];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DE40];
      [a1 willChangeValueForKey:*MEMORY[0x277D3DE40]];
      [a1 setPrimitiveValue:v9 forKey:v8];
      [a1 didChangeValueForKey:v8];
    }
  }
}

- (uint64_t)setFeedChangedDate:()DB_App
{
  result = [a1 feedChangedDate];
  if (vabdd_f64(v5, a2) > 2.22044605e-16)
  {
    v6 = *MEMORY[0x277D3DE60];
    [a1 willChangeValueForKey:*MEMORY[0x277D3DE60]];
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a2];
    [a1 setPrimitiveValue:v7 forKey:v6];

    return [a1 didChangeValueForKey:v6];
  }

  return result;
}

- (uint64_t)setUpdateStdDev:()DB_App
{
  result = [a1 updateStdDev];
  if (vabdd_f64(v5, a2) > 2.22044605e-16)
  {
    v6 = *MEMORY[0x277D3DEF8];
    [a1 willChangeValueForKey:*MEMORY[0x277D3DEF8]];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    [a1 setPrimitiveValue:v7 forKey:v6];

    return [a1 didChangeValueForKey:v6];
  }

  return result;
}

- (uint64_t)setUpdateAvg:()DB_App
{
  result = [a1 updateAvg];
  if (vabdd_f64(v5, a2) > 2.22044605e-16)
  {
    v6 = *MEMORY[0x277D3DEF0];
    [a1 willChangeValueForKey:*MEMORY[0x277D3DEF0]];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    [a1 setPrimitiveValue:v7 forKey:v6];

    return [a1 didChangeValueForKey:v6];
  }

  return result;
}

- (void)setImageURL:()DB_App
{
  v9 = a3;
  v4 = [a1 imageURL];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [a1 imageURL];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DE80];
      [a1 willChangeValueForKey:*MEMORY[0x277D3DE80]];
      [a1 setPrimitiveValue:v9 forKey:v8];
      [a1 didChangeValueForKey:v8];
    }
  }
}

- (void)setShowTypeInFeed:()DB_App
{
  v9 = a3;
  v4 = [a1 showTypeInFeed];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [a1 showTypeInFeed];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DEB8];
      [a1 willChangeValueForKey:*MEMORY[0x277D3DEB8]];
      [a1 setPrimitiveValue:v9 forKey:v8];
      [a1 didChangeValueForKey:v8];
    }
  }
}

- (void)setWebpageURL:()DB_App
{
  v9 = a3;
  v4 = [a1 webpageURL];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [a1 webpageURL];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DF18];
      [a1 willChangeValueForKey:*MEMORY[0x277D3DF18]];
      [a1 setPrimitiveValue:v9 forKey:v8];
      [a1 didChangeValueForKey:v8];
    }
  }
}

- (void)setShowTypeSetting:()DB_App
{
  v25 = *MEMORY[0x277D85DE8];
  if ([a1 showTypeSetting] != a3)
  {
    v5 = [a1 isValidShowTypeSetting:a3];
    v6 = _MTLogCategoryDatabase();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v8 = [a1 title];
        v9 = [a1 feedURL];
        v10 = [a1 storeCollectionId];
        v11 = [a1 uuid];
        v15 = 134350083;
        v16 = a3;
        v17 = 2113;
        v18 = v8;
        v19 = 2113;
        v20 = v9;
        v21 = 2049;
        v22 = v10;
        v23 = 2114;
        v24 = v11;
        _os_log_impl(&dword_25E9F0000, v6, OS_LOG_TYPE_DEFAULT, "Switching show type setting to %{public}lld, show %{private}@, %{private}@, %{private}lld, %{public}@", &v15, 0x34u);
      }

      v12 = *MEMORY[0x277D3DEC0];
      [a1 willChangeValueForKey:*MEMORY[0x277D3DEC0]];
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
      [a1 setPrimitiveValue:v13 forKey:v12];

      [a1 didChangeValueForKey:v12];
      [a1 applyShowTypeSetting:a3];
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
  [a1 setSortAscending:v2];

  return [a1 setPlaybackNewestToOldest:v3 ^ 1u];
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

    v7 = [a1 title];
    v8 = [a1 feedURL];
    v9 = [a1 storeCollectionId];
    v10 = [a1 uuid];
    v15 = 138544387;
    v16 = v6;
    v17 = 2113;
    v18 = v7;
    v19 = 2113;
    v20 = v8;
    v21 = 2049;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_25E9F0000, v5, OS_LOG_TYPE_DEFAULT, "Switching SortAscendingFlag to %{public}@, show %{private}@, %{private}@, %{private}lld, %{public}@", &v15, 0x34u);
  }

  v11 = [a1 flags];
  if (((((v11 & 2) == 0) ^ a3) & 1) == 0)
  {
    v12 = 2;
    if (!a3)
    {
      v12 = 0;
    }

    [a1 setFlags:v11 & 0xFFFFFFFFFFFFFFFDLL | v12];
    [a1 markPlaylistsForUpdate];
    v13 = [MEMORY[0x277D3DB80] shared];
    [v13 markSubscriptionSyncDirty:1 for:{objc_msgSend(a1, "syncType")}];
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
  v16 = [v15 allObjects];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)sortDescriptorsForSortOrder
{
  v16[4] = *MEMORY[0x277D85DE8];
  if ([a1 isSerialShowTypeInFeed])
  {
    v2 = [a1 seasonSortDescriptorsForSortOrder];
  }

  else
  {
    v3 = [a1 sortAscending];
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = *MEMORY[0x277D3DCA0];
    if (v3)
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
    v2 = [v4 initWithArray:v12];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)seasonSortDescriptorsForSortOrder
{
  v1 = MEMORY[0x277D3DAF8];
  v2 = [a1 showTypeSetting];

  return [v1 seasonSortDescriptors:v2];
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
  if ([a1 isSerialShowTypeInFeed])
  {
    [a1 sortDescriptorsForPlayOrderByEpisodeNumber];
  }

  else
  {
    [a1 sortDescriptorsForPlayOrderByPubDate];
  }
  v2 = ;

  return v2;
}

- (uint64_t)sortDescriptorsForPlayOrderByPubDate
{
  v1 = [a1 playbackNewestToOldest];
  v2 = objc_opt_class();

  return [v2 sortDescriptorsForNewestToOldest:v1];
}

- (uint64_t)sortDescriptorsForPlayOrderByEpisodeNumber
{
  v1 = MEMORY[0x277D3DAF8];
  v2 = [a1 showTypeSetting];

  return [v1 seasonSortDescriptors:v2];
}

- (void)setPlaybackNewestToOldest:()DB_App
{
  v5 = [a1 playbackNewestToOldest];
  v6 = [a1 flags];
  if (((((v6 & 8) == 0) ^ a3) & 1) == 0)
  {
    v7 = 8;
    if (!a3)
    {
      v7 = 0;
    }

    [a1 setFlags:v6 & 0xFFFFFFFFFFFFFFF7 | v7];
    [a1 markPlaylistsForUpdate];
    v8 = [MEMORY[0x277D3DB80] shared];
    [v8 markSubscriptionSyncDirty:1 for:{objc_msgSend(a1, "syncType")}];

    if (v5 != a3)
    {

      [a1 updateCursorPosition:0];
    }
  }
}

- (uint64_t)updateCursorPosition:()DB_App
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [a1 managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__MTPodcast_DB_App__updateCursorPosition___block_invoke;
  v9[3] = &unk_279A44D60;
  v9[4] = a1;
  v6 = v5;
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
  v7 = [a3 absoluteString];
  v8 = [a1 podcastUuidForFeedUrlString:v7 ctx:v6];

  return v8;
}

- (uint64_t)hasAtLeastOneSeason
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = [a1 managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__MTPodcast_DB_App__hasAtLeastOneSeason__block_invoke;
  v6[3] = &unk_279A44D88;
  v6[4] = a1;
  v8 = &v9;
  v3 = v2;
  v7 = v3;
  [v3 performBlockAndWait:v6];
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

- (BOOL)hasMultipleSeasons
{
  v1 = [a1 seasonNumbers];
  v2 = [v1 count] > 1;

  return v2;
}

@end