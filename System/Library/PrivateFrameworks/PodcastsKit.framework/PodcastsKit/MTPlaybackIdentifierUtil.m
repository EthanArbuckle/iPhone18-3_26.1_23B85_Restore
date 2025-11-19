@interface MTPlaybackIdentifierUtil
+ (id)__queryStringToQueryDictionary:(id)a3;
+ (id)__stringByRemovingPercentEscapes:(id)a3;
+ (id)__stringWithPercentEscape:(id)a3;
- (BOOL)isLocalSetPlaybackQueueURLString:(id)a3;
- (BOOL)isSubscribeCommandURLString:(id)a3;
- (BOOL)isUniversalPlaybackIdentifierURLString:(id)a3;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)a3;
- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)a3 forIdentifiers:(id)a4;
- (id)_playbackRequestIdentifierWithHost:(id)a3 queryComponents:(id)a4;
- (id)_playbackRequestIdentifierWithHost:(id)a3 queryKey:(id)a4 value:(id)a5;
- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)a3 podcastFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 episodeUuid:(id)a6 episodeGuid:(id)a7 episodeStoreId:(int64_t)a8 context:(int64_t)a9 contextSortType:(int64_t)a10 sampPlaybackOrder:(id)a11;
- (id)episodeUuidForSetPlaybackQueueRequestIdentifier:(id)a3;
- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)a3 episodeUuid:(id)a4 sampPlaybackOrder:(id)a5;
- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)a3;
- (id)playbackQueueIdentifierForPodcastAdamId:(id)a3 sampPlaybackOrder:(id)a4;
- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)a3;
- (id)playbackRequestURLWithDSID:(id)a3 baseRequestURLString:(id)a4;
- (id)playbackRequestURLWithPlayReason:(unint64_t)a3 baseRequestURLString:(id)a4;
- (id)podcastUuidForSetPlaybackQueueRequestIdentifier:(id)a3;
- (id)universalPlaybackQueueIdentifierForStationUuid:(id)a3 episodeUuid:(id)a4 episodeGuid:(id)a5 episodeStoreId:(int64_t)a6 podcastFeedUrl:(id)a7;
- (int64_t)_episodeContextFromString:(id)a3;
- (int64_t)_episodeContextSortFromString:(id)a3;
- (int64_t)_episodeOrderFromString:(id)a3;
- (unint64_t)_playQueueTypeForRequestURL:(id)a3;
- (unint64_t)_playReasonFromString:(id)a3;
@end

@implementation MTPlaybackIdentifierUtil

- (id)playbackRequestURLWithPlayReason:(unint64_t)a3 baseRequestURLString:(id)a4
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:a4];
  v5 = objc_opt_class();
  v6 = [v4 query];
  v7 = [v5 __queryStringToQueryDictionary:v6];

  v8 = NSPersistentStringForMTPlayReason();
  [v7 setObject:v8 forKey:@"playReason"];

  v9 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v10 = [v4 scheme];
  [v9 setScheme:v10];

  v11 = [v4 host];
  [v9 setHost:v11];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__MTPlaybackIdentifierUtil_playbackRequestURLWithPlayReason_baseRequestURLString___block_invoke;
  v16[3] = &unk_279A44BA0;
  v17 = v7;
  v12 = v7;
  v13 = [v12 mt_compactMap:v16];
  [v9 setQueryItems:v13];

  v14 = [v9 string];

  return v14;
}

id __82__MTPlaybackIdentifierUtil_playbackRequestURLWithPlayReason_baseRequestURLString___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD18];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v7 = [v5 initWithName:v4 value:v6];

  return v7;
}

- (id)playbackRequestURLWithDSID:(id)a3 baseRequestURLString:(id)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEBC0] URLWithString:a4];
  v7 = objc_opt_class();
  v8 = [v6 query];
  v9 = [v7 __queryStringToQueryDictionary:v8];

  v10 = [v5 stringValue];

  if (v10)
  {
    v11 = [v5 stringValue];
    [v9 setObject:v11 forKey:@"enqueuerDSID"];
  }

  v12 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v13 = [v6 scheme];
  [v12 setScheme:v13];

  v14 = [v6 host];
  [v12 setHost:v14];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__MTPlaybackIdentifierUtil_playbackRequestURLWithDSID_baseRequestURLString___block_invoke;
  v19[3] = &unk_279A44BA0;
  v20 = v9;
  v15 = v9;
  v16 = [v15 mt_compactMap:v19];
  [v12 setQueryItems:v16];

  v17 = [v12 string];

  return v17;
}

id __76__MTPlaybackIdentifierUtil_playbackRequestURLWithDSID_baseRequestURLString___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD18];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
  v7 = [v5 initWithName:v4 value:v6];

  return v7;
}

- (BOOL)isLocalSetPlaybackQueueURLString:(id)a3
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:a3];
  v4 = [v3 host];
  if ([v4 length])
  {
    if (isLocalSetPlaybackQueueURLString__onceToken != -1)
    {
      [MTPlaybackIdentifierUtil isLocalSetPlaybackQueueURLString:];
    }

    v5 = [isLocalSetPlaybackQueueURLString__commandsSupported containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __61__MTPlaybackIdentifierUtil_isLocalSetPlaybackQueueURLString___block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"playPodcast";
  v3[1] = @"playPodcasts";
  v3[2] = @"playStation";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = isLocalSetPlaybackQueueURLString__commandsSupported;
  isLocalSetPlaybackQueueURLString__commandsSupported = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSubscribeCommandURLString:(id)a3
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:a3];
  v4 = [v3 host];
  v5 = [v4 isEqualToString:@"subscribe"];

  return v5;
}

- (BOOL)isUniversalPlaybackIdentifierURLString:(id)a3
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:a3];
  v4 = [v3 host];
  v5 = [v4 isEqualToString:@"playItem"];

  return v5;
}

- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = *MEMORY[0x277D48610];
  }

  v5 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcasts" queryKey:@"playbackOrder" value:v4];

  return v5;
}

- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)a3 episodeUuid:(id)a4 sampPlaybackOrder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length] || objc_msgSend(v9, "length"))
  {
    v11 = [(MTPlaybackIdentifierUtil *)self universalPlaybackQueueIdentifierForPodcastUuid:v8 podcastFeedUrl:0 podcastStoreId:0 episodeUuid:v9 episodeGuid:0 episodeStoreId:0 sampPlaybackOrder:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)a3 podcastFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 episodeUuid:(id)a6 episodeGuid:(id)a7 episodeStoreId:(int64_t)a8 context:(int64_t)a9 contextSortType:(int64_t)a10 sampPlaybackOrder:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a11;
  if (![v20 length])
  {
    v21 = *MEMORY[0x277D48610];

    v20 = v21;
  }

  v22 = [v18 length];
  v23 = [v16 length];
  v24 = [MEMORY[0x277CBEB38] dictionary];
  [v24 setObject:v20 forKey:@"playbackOrder"];
  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_11;
    }

    v25 = [MEMORY[0x277D3DAE8] sharedInstance];
    v26 = [v25 mainOrPrivateContext];

    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__2;
    v45 = __Block_byref_object_dispose__2;
    v46 = 0;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __187__MTPlaybackIdentifierUtil__universalPlaybackQueueIdentifierForPodcastUuid_podcastFeedUrl_podcastStoreId_episodeUuid_episodeGuid_episodeStoreId_context_contextSortType_sampPlaybackOrder___block_invoke;
    v37[3] = &unk_279A44930;
    v27 = v26;
    v38 = v27;
    v39 = v18;
    v40 = &v41;
    [v27 performBlockAndWait:v37];
    if ([v42[5] length])
    {
      [v24 setObject:v42[5] forKey:@"uuid"];
    }

    _Block_object_dispose(&v41, 8);
    goto LABEL_10;
  }

  [v24 setObject:v16 forKey:@"uuid"];
  if (v22)
  {
LABEL_10:
    [v24 setObject:v18 forKey:@"episodeUuid"];
  }

LABEL_11:
  if ([v17 length])
  {
    v28 = [objc_opt_class() __stringWithPercentEscape:v17];
    [v24 setObject:v28 forKey:@"podcastFeedUrl"];
  }

  if ([v19 length])
  {
    [v24 setObject:v19 forKey:@"episodeGuid"];
  }

  v29 = *MEMORY[0x277D3DD88];
  if (a5 && v29 != a5)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a5];
    [v24 setObject:v30 forKey:@"storeCollectionId"];
  }

  if (a8 && v29 != a8)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a8];
    [v24 setObject:v31 forKey:@"storeTrackId"];
  }

  v32 = NSPersistentStringForMTEpisodeContext();
  [v24 setObject:v32 forKey:@"context"];

  v33 = NSPersistentStringForMTEpisodeContextSortType();
  [v24 setObject:v33 forKey:@"contextSortType"];

  v34 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcast" queryComponents:v24];

  return v34;
}

void __187__MTPlaybackIdentifierUtil__universalPlaybackQueueIdentifierForPodcastUuid_podcastFeedUrl_podcastStoreId_episodeUuid_episodeGuid_episodeStoreId_context_contextSortType_sampPlaybackOrder___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v2 = [v6 podcast];
  v3 = [v2 uuid];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)playbackQueueIdentifierForPodcastAdamId:(id)a3 sampPlaybackOrder:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!v6)
  {
    v6 = *MEMORY[0x277D48610];
  }

  v13[0] = @"storeCollectionId";
  v13[1] = @"playbackOrder";
  v14[0] = a3;
  v14[1] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcast" queryComponents:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() __stringWithPercentEscape:v4];

  v6 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"subscribe" queryKey:@"podcastFeedUrl" value:v5];

  return v6;
}

- (id)universalPlaybackQueueIdentifierForStationUuid:(id)a3 episodeUuid:(id)a4 episodeGuid:(id)a5 episodeStoreId:(int64_t)a6 podcastFeedUrl:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = MEMORY[0x277CBEB38];
  v15 = a3;
  v16 = [v14 dictionaryWithCapacity:5];
  [v16 setObject:v15 forKey:@"uuid"];

  if ([v11 length])
  {
    [v16 setObject:v11 forKey:@"episodeUuid"];
  }

  if ([v12 length])
  {
    [v16 setObject:v12 forKey:@"episodeGuid"];
  }

  if ([v13 length])
  {
    v17 = [objc_opt_class() __stringWithPercentEscape:v13];
    [v16 setObject:v17 forKey:@"podcastFeedUrl"];
  }

  v18 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playStation" queryComponents:v16];

  return v18;
}

- (id)episodeUuidForSetPlaybackQueueRequestIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:a3];
  v4 = [v3 pf_queryAsDictionary];
  v5 = objc_alloc(MEMORY[0x277D3DB00]);
  v6 = [v4 objectForKeyedSubscript:@"storeTrackId"];
  [v5 setStoreTrackId:{objc_msgSend(v6, "longLongValue")}];

  v7 = [v4 objectForKeyedSubscript:@"episodeUuid"];
  [v5 setUuid:v7];

  v8 = [v4 objectForKeyedSubscript:@"episodeGuid"];
  [v5 setEpisodeGuid:v8];

  v9 = [v4 objectForKeyedSubscript:@"episodeTitle"];
  v10 = [v9 stringByRemovingPercentEscapes];
  [v5 setEpisodeTitle:v10];

  v11 = [v4 objectForKeyedSubscript:@"podcastTitle"];
  v12 = [v11 stringByRemovingPercentEscapes];
  [v5 setPodcastTitle:v12];

  v13 = [v4 objectForKeyedSubscript:@"podcastFeedUrl"];
  v14 = [v13 stringByRemovingPercentEscapes];
  v15 = [v14 stringByRemovingPercentEscapes];
  [v5 setPodcastFeedUrl:v15];

  v16 = [v4 objectForKeyedSubscript:@"streamUrl"];
  v17 = [v16 stringByRemovingPercentEscapes];
  v18 = [v17 stringByRemovingPercentEscapes];
  [v5 setStreamUrl:v18];

  v19 = [MEMORY[0x277D3DB08] sharedInstance];
  v20 = [v19 findEpisodeWithRequest:v5];

  v21 = [v20 uuid];

  return v21;
}

- (id)podcastUuidForSetPlaybackQueueRequestIdentifier:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v5 = [v4 pf_queryAsDictionary];
  v6 = [v5 objectForKeyedSubscript:@"podcastFeedUrl"];
  v7 = [v6 stringByRemovingPercentEscapes];
  v8 = [v7 stringByRemovingPercentEscapes];

  v9 = [v5 objectForKeyedSubscript:@"storeCollectionId"];
  v10 = [v9 longLongValue];

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  v12 = [MEMORY[0x277D3DAE8] sharedInstance];
  v13 = [v12 mainOrPrivateContext];

  v14 = [objc_alloc(MEMORY[0x277D3DB48]) initWithFeedUrl:v8 storeIdentifier:v11];
  v15 = objc_alloc(MEMORY[0x277CBE428]);
  v16 = [v15 initWithEntityName:*MEMORY[0x277D3DD50]];
  v17 = [MEMORY[0x277D3DB38] predicateForIdentifer:v14];
  [v16 setPredicate:v17];

  [v16 setFetchLimit:1];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2;
  v40 = __Block_byref_object_dispose__2;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__MTPlaybackIdentifierUtil_podcastUuidForSetPlaybackQueueRequestIdentifier___block_invoke;
  v25[3] = &unk_279A44BC8;
  v18 = v13;
  v26 = v18;
  v19 = v16;
  v27 = v19;
  v28 = &v36;
  v29 = &v30;
  [v18 performBlockAndWait:v25];
  if (v37[5])
  {
    v20 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = v37[5];
      *buf = 138412290;
      v43 = v21;
      _os_log_impl(&dword_25E9F0000, v20, OS_LOG_TYPE_ERROR, "Error fetching podcast for playback identifier: %@", buf, 0xCu);
    }

    v22 = 0;
  }

  else
  {
    v22 = v31[5];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __76__MTPlaybackIdentifierUtil_podcastUuidForSetPlaybackQueueRequestIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 firstObject];
  v7 = [v6 uuid];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = +[(MTSingleton *)MTAccountController];
  v6 = [v5 activeDsid];
  v7 = [(MTPlaybackIdentifierUtil *)self playbackQueueWithDsid:v6 forIdentifiers:v4];

  return v7;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)a3 forIdentifiers:(id)a4
{
  v5 = *MEMORY[0x277CBECE8];
  v6 = a4;
  v7 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

  if (a3)
  {
    v10 = a3;
    keys = @"enqueuerDSID";
    v8 = CFDictionaryCreate(0, &keys, &v10, 1, 0, MEMORY[0x277CBF150]);
    MRSystemAppPlaybackQueueSetUserInfo();
    CFRelease(v8);
  }

  return v7;
}

- (unint64_t)_playQueueTypeForRequestURL:(id)a3
{
  v3 = _playQueueTypeForRequestURL__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [MTPlaybackIdentifierUtil _playQueueTypeForRequestURL:];
  }

  v5 = _playQueueTypeForRequestURL__map;
  v6 = [v4 host];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = v7;
  v9 = &unk_2870B6BF0;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v10 unsignedIntegerValue];
  return v11;
}

void __56__MTPlaybackIdentifierUtil__playQueueTypeForRequestURL___block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"playPodcasts";
  v3[1] = @"playPodcast";
  v4[0] = &unk_2870B6BA8;
  v4[1] = &unk_2870B6BC0;
  v3[2] = @"playStation";
  v4[2] = &unk_2870B6BD8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = _playQueueTypeForRequestURL__map;
  _playQueueTypeForRequestURL__map = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_playbackRequestIdentifierWithHost:(id)a3 queryKey:(id)a4 value:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17[0] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v13 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:v11 queryComponents:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_playbackRequestIdentifierWithHost:(id)a3 queryComponents:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v7 setScheme:@"podcasts"];
  v21 = v5;
  [v7 setHost:v5];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = objc_alloc(MEMORY[0x277CCAD18]);
        v16 = [v9 objectForKeyedSubscript:v14];
        v17 = [v15 initWithName:v14 value:v16];

        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  [v7 setQueryItems:v8];
  v18 = [v7 string];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (int64_t)_episodeOrderFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D48618]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D48620]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_playReasonFromString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = MTPlayReasonFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_episodeContextFromString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = MTEpisodeContextFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_episodeContextSortFromString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = MTEpisodeContextSortTypeFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)__stringWithPercentEscape:(id)a3
{
  v3 = CFURLCreateStringByAddingPercentEscapes(0, a3, 0, @"\uFFFC!$&'()+,/:;=?@", 0x8000100u);

  return v3;
}

+ (id)__stringByRemovingPercentEscapes:(id)a3
{
  v3 = CFURLCreateStringByReplacingPercentEscapes(*MEMORY[0x277CBECE8], a3, &stru_2870B1390);

  return v3;
}

+ (id)__queryStringToQueryDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a3 componentsSeparatedByString:@"&"];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"="];
        v10 = [v9 objectAtIndex:0];
        v11 = [MEMORY[0x277CBEB68] null];
        if ([v9 count] >= 2)
        {
          v12 = [v9 objectAtIndex:1];

          v11 = v12;
        }

        [v4 setObject:v11 forKey:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end