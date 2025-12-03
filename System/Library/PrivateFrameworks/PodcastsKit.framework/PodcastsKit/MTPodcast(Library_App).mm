@interface MTPodcast(Library_App)
+ (void)setRemovePlayedDownloadsSetting:()Library_App forPodcastUuid:;
- (id)prepareForDeletion;
- (uint64_t)countOfUnplayedRssEpisodes;
- (void)_updateChannelRelationship:()Library_App deassociate:;
- (void)setChannel:()Library_App;
- (void)setSubscribed:()Library_App;
- (void)setTitle:()Library_App;
- (void)setUpdatedFeedURL:()Library_App;
- (void)updateEpisodesMetadataIdentifiers;
@end

@implementation MTPodcast(Library_App)

- (void)setTitle:()Library_App
{
  v9 = a3;
  title = [self title];
  v5 = v9 | title;

  if (v5)
  {
    title2 = [self title];
    v7 = [title2 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DEE0];
      [self willChangeValueForKey:*MEMORY[0x277D3DEE0]];
      [self setPrimitiveValue:v9 forKey:v8];
      [self didChangeValueForKey:v8];
      [self updateEpisodesMetadataIdentifiers];
    }
  }
}

- (void)setUpdatedFeedURL:()Library_App
{
  v4 = *MEMORY[0x277D3DF08];
  v5 = a3;
  [self willChangeValueForKey:v4];
  [self setPrimitiveValue:v5 forKey:v4];

  [self didChangeValueForKey:v4];
  [self updateEpisodesMetadataIdentifiers];
  mEMORY[0x277D3DB80] = [MEMORY[0x277D3DB80] shared];
  [mEMORY[0x277D3DB80] markSubscriptionSyncDirty:1 for:{objc_msgSend(self, "syncType")}];
}

- (void)setSubscribed:()Library_App
{
  if ([self subscribed] != a3)
  {
    v5 = *MEMORY[0x277D3DED8];
    [self willChangeValueForKey:*MEMORY[0x277D3DED8]];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    [self setPrimitiveValue:v6 forKey:v5];

    [self didChangeValueForKey:v5];
    mEMORY[0x277D3DB80] = [MEMORY[0x277D3DB80] shared];
    [mEMORY[0x277D3DB80] markSubscriptionSyncDirty:1 for:{objc_msgSend(self, "syncType")}];
  }
}

- (void)setChannel:()Library_App
{
  v8 = a3;
  channel = [self channel];
  v5 = [v8 isEqual:channel];

  if ((v5 & 1) == 0)
  {
    channel2 = [self channel];
    v7 = *MEMORY[0x277D3DE30];
    [self willChangeValueForKey:*MEMORY[0x277D3DE30]];
    [self setPrimitiveValue:v8 forKey:v7];
    [self didChangeValueForKey:v7];
    [self setChannelStoreId:{objc_msgSend(v8, "storeId")}];
    [self _updateChannelRelationship:channel2 deassociate:1];
    [self _updateChannelRelationship:v8 deassociate:0];
  }
}

- (void)_updateChannelRelationship:()Library_App deassociate:
{
  if (a3)
  {
    v6 = a3;
    podcastUuids = [v6 podcastUuids];
    v10 = [podcastUuids mutableCopy];

    v8 = v10;
    if (!v10)
    {
      v8 = objc_opt_new();
    }

    v11 = v8;
    uuid = [self uuid];
    if (a4)
    {
      [v11 removeObject:uuid];
    }

    else
    {
      [v11 addObject:uuid];
    }

    [v6 setPodcastUuids:v11];
  }
}

- (void)updateEpisodesMetadataIdentifiers
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  episodes = [self episodes];
  v2 = [episodes countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(episodes);
        }

        [*(*(&v7 + 1) + 8 * v5++) updateUPPIdentifierIfNeeded];
      }

      while (v3 != v5);
      v3 = [episodes countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)prepareForDeletion
{
  channel = [self channel];
  [self _updateChannelRelationship:channel deassociate:1];

  v4.receiver = self;
  v4.super_class = &off_2870BFEC0;
  return objc_msgSendSuper2(&v4, sel_prepareForDeletion);
}

+ (void)setRemovePlayedDownloadsSetting:()Library_App forPodcastUuid:
{
  v5 = a4;
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__MTPodcast_Library_App__setRemovePlayedDownloadsSetting_forPodcastUuid___block_invoke;
  v10[3] = &unk_279A44F90;
  v11 = mainOrPrivateContext;
  v12 = v5;
  v13 = a3;
  v8 = v5;
  v9 = mainOrPrivateContext;
  [v9 performBlockAndWaitWithSave:v10];
}

- (uint64_t)countOfUnplayedRssEpisodes
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  managedObjectContext = [self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__MTPodcast_Library_App__countOfUnplayedRssEpisodes__block_invoke;
  v6[3] = &unk_279A44D88;
  v6[4] = self;
  v8 = &v9;
  v3 = managedObjectContext;
  v7 = v3;
  [v3 performBlockAndWait:v6];
  v4 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v4;
}

@end