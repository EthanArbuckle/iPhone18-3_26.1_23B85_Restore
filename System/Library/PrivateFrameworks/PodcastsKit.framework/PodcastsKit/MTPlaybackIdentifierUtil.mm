@interface MTPlaybackIdentifierUtil
+ (id)__queryStringToQueryDictionary:(id)dictionary;
+ (id)__stringByRemovingPercentEscapes:(id)escapes;
+ (id)__stringWithPercentEscape:(id)escape;
- (BOOL)isLocalSetPlaybackQueueURLString:(id)string;
- (BOOL)isSubscribeCommandURLString:(id)string;
- (BOOL)isUniversalPlaybackIdentifierURLString:(id)string;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)identifiers;
- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)dsid forIdentifiers:(id)identifiers;
- (id)_playbackRequestIdentifierWithHost:(id)host queryComponents:(id)components;
- (id)_playbackRequestIdentifierWithHost:(id)host queryKey:(id)key value:(id)value;
- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)uuid podcastFeedUrl:(id)url podcastStoreId:(int64_t)id episodeUuid:(id)episodeUuid episodeGuid:(id)guid episodeStoreId:(int64_t)storeId context:(int64_t)context contextSortType:(int64_t)self0 sampPlaybackOrder:(id)self1;
- (id)episodeUuidForSetPlaybackQueueRequestIdentifier:(id)identifier;
- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)uuid episodeUuid:(id)episodeUuid sampPlaybackOrder:(id)order;
- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)order;
- (id)playbackQueueIdentifierForPodcastAdamId:(id)id sampPlaybackOrder:(id)order;
- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)url;
- (id)playbackRequestURLWithDSID:(id)d baseRequestURLString:(id)string;
- (id)playbackRequestURLWithPlayReason:(unint64_t)reason baseRequestURLString:(id)string;
- (id)podcastUuidForSetPlaybackQueueRequestIdentifier:(id)identifier;
- (id)universalPlaybackQueueIdentifierForStationUuid:(id)uuid episodeUuid:(id)episodeUuid episodeGuid:(id)guid episodeStoreId:(int64_t)id podcastFeedUrl:(id)url;
- (int64_t)_episodeContextFromString:(id)string;
- (int64_t)_episodeContextSortFromString:(id)string;
- (int64_t)_episodeOrderFromString:(id)string;
- (unint64_t)_playQueueTypeForRequestURL:(id)l;
- (unint64_t)_playReasonFromString:(id)string;
@end

@implementation MTPlaybackIdentifierUtil

- (id)playbackRequestURLWithPlayReason:(unint64_t)reason baseRequestURLString:(id)string
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:string];
  v5 = objc_opt_class();
  query = [v4 query];
  v7 = [v5 __queryStringToQueryDictionary:query];

  v8 = NSPersistentStringForMTPlayReason();
  [v7 setObject:v8 forKey:@"playReason"];

  v9 = objc_alloc_init(MEMORY[0x277CCACE0]);
  scheme = [v4 scheme];
  [v9 setScheme:scheme];

  host = [v4 host];
  [v9 setHost:host];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__MTPlaybackIdentifierUtil_playbackRequestURLWithPlayReason_baseRequestURLString___block_invoke;
  v16[3] = &unk_279A44BA0;
  v17 = v7;
  v12 = v7;
  v13 = [v12 mt_compactMap:v16];
  [v9 setQueryItems:v13];

  string = [v9 string];

  return string;
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

- (id)playbackRequestURLWithDSID:(id)d baseRequestURLString:(id)string
{
  dCopy = d;
  v6 = [MEMORY[0x277CBEBC0] URLWithString:string];
  v7 = objc_opt_class();
  query = [v6 query];
  v9 = [v7 __queryStringToQueryDictionary:query];

  stringValue = [dCopy stringValue];

  if (stringValue)
  {
    stringValue2 = [dCopy stringValue];
    [v9 setObject:stringValue2 forKey:@"enqueuerDSID"];
  }

  v12 = objc_alloc_init(MEMORY[0x277CCACE0]);
  scheme = [v6 scheme];
  [v12 setScheme:scheme];

  host = [v6 host];
  [v12 setHost:host];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__MTPlaybackIdentifierUtil_playbackRequestURLWithDSID_baseRequestURLString___block_invoke;
  v19[3] = &unk_279A44BA0;
  v20 = v9;
  v15 = v9;
  v16 = [v15 mt_compactMap:v19];
  [v12 setQueryItems:v16];

  string = [v12 string];

  return string;
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

- (BOOL)isLocalSetPlaybackQueueURLString:(id)string
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:string];
  host = [v3 host];
  if ([host length])
  {
    if (isLocalSetPlaybackQueueURLString__onceToken != -1)
    {
      [MTPlaybackIdentifierUtil isLocalSetPlaybackQueueURLString:];
    }

    v5 = [isLocalSetPlaybackQueueURLString__commandsSupported containsObject:host];
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

- (BOOL)isSubscribeCommandURLString:(id)string
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:string];
  host = [v3 host];
  v5 = [host isEqualToString:@"subscribe"];

  return v5;
}

- (BOOL)isUniversalPlaybackIdentifierURLString:(id)string
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:string];
  host = [v3 host];
  v5 = [host isEqualToString:@"playItem"];

  return v5;
}

- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)order
{
  orderCopy = order;
  if (!orderCopy)
  {
    orderCopy = *MEMORY[0x277D48610];
  }

  v5 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcasts" queryKey:@"playbackOrder" value:orderCopy];

  return v5;
}

- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)uuid episodeUuid:(id)episodeUuid sampPlaybackOrder:(id)order
{
  uuidCopy = uuid;
  episodeUuidCopy = episodeUuid;
  orderCopy = order;
  if ([uuidCopy length] || objc_msgSend(episodeUuidCopy, "length"))
  {
    v11 = [(MTPlaybackIdentifierUtil *)self universalPlaybackQueueIdentifierForPodcastUuid:uuidCopy podcastFeedUrl:0 podcastStoreId:0 episodeUuid:episodeUuidCopy episodeGuid:0 episodeStoreId:0 sampPlaybackOrder:orderCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)uuid podcastFeedUrl:(id)url podcastStoreId:(int64_t)id episodeUuid:(id)episodeUuid episodeGuid:(id)guid episodeStoreId:(int64_t)storeId context:(int64_t)context contextSortType:(int64_t)self0 sampPlaybackOrder:(id)self1
{
  uuidCopy = uuid;
  urlCopy = url;
  episodeUuidCopy = episodeUuid;
  guidCopy = guid;
  orderCopy = order;
  if (![orderCopy length])
  {
    v21 = *MEMORY[0x277D48610];

    orderCopy = v21;
  }

  v22 = [episodeUuidCopy length];
  v23 = [uuidCopy length];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:orderCopy forKey:@"playbackOrder"];
  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_11;
    }

    mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
    mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

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
    v27 = mainOrPrivateContext;
    v38 = v27;
    v39 = episodeUuidCopy;
    v40 = &v41;
    [v27 performBlockAndWait:v37];
    if ([v42[5] length])
    {
      [dictionary setObject:v42[5] forKey:@"uuid"];
    }

    _Block_object_dispose(&v41, 8);
    goto LABEL_10;
  }

  [dictionary setObject:uuidCopy forKey:@"uuid"];
  if (v22)
  {
LABEL_10:
    [dictionary setObject:episodeUuidCopy forKey:@"episodeUuid"];
  }

LABEL_11:
  if ([urlCopy length])
  {
    v28 = [objc_opt_class() __stringWithPercentEscape:urlCopy];
    [dictionary setObject:v28 forKey:@"podcastFeedUrl"];
  }

  if ([guidCopy length])
  {
    [dictionary setObject:guidCopy forKey:@"episodeGuid"];
  }

  v29 = *MEMORY[0x277D3DD88];
  if (id && v29 != id)
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", id];
    [dictionary setObject:v30 forKey:@"storeCollectionId"];
  }

  if (storeId && v29 != storeId)
  {
    storeId = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", storeId];
    [dictionary setObject:storeId forKey:@"storeTrackId"];
  }

  v32 = NSPersistentStringForMTEpisodeContext();
  [dictionary setObject:v32 forKey:@"context"];

  v33 = NSPersistentStringForMTEpisodeContextSortType();
  [dictionary setObject:v33 forKey:@"contextSortType"];

  v34 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcast" queryComponents:dictionary];

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

- (id)playbackQueueIdentifierForPodcastAdamId:(id)id sampPlaybackOrder:(id)order
{
  v14[2] = *MEMORY[0x277D85DE8];
  orderCopy = order;
  if (!orderCopy)
  {
    orderCopy = *MEMORY[0x277D48610];
  }

  v13[0] = @"storeCollectionId";
  v13[1] = @"playbackOrder";
  v14[0] = id;
  v14[1] = orderCopy;
  v7 = MEMORY[0x277CBEAC0];
  idCopy = id;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcast" queryComponents:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)url
{
  urlCopy = url;
  v5 = [objc_opt_class() __stringWithPercentEscape:urlCopy];

  v6 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"subscribe" queryKey:@"podcastFeedUrl" value:v5];

  return v6;
}

- (id)universalPlaybackQueueIdentifierForStationUuid:(id)uuid episodeUuid:(id)episodeUuid episodeGuid:(id)guid episodeStoreId:(int64_t)id podcastFeedUrl:(id)url
{
  episodeUuidCopy = episodeUuid;
  guidCopy = guid;
  urlCopy = url;
  v14 = MEMORY[0x277CBEB38];
  uuidCopy = uuid;
  v16 = [v14 dictionaryWithCapacity:5];
  [v16 setObject:uuidCopy forKey:@"uuid"];

  if ([episodeUuidCopy length])
  {
    [v16 setObject:episodeUuidCopy forKey:@"episodeUuid"];
  }

  if ([guidCopy length])
  {
    [v16 setObject:guidCopy forKey:@"episodeGuid"];
  }

  if ([urlCopy length])
  {
    v17 = [objc_opt_class() __stringWithPercentEscape:urlCopy];
    [v16 setObject:v17 forKey:@"podcastFeedUrl"];
  }

  v18 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playStation" queryComponents:v16];

  return v18;
}

- (id)episodeUuidForSetPlaybackQueueRequestIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:identifier];
  pf_queryAsDictionary = [v3 pf_queryAsDictionary];
  v5 = objc_alloc(MEMORY[0x277D3DB00]);
  v6 = [pf_queryAsDictionary objectForKeyedSubscript:@"storeTrackId"];
  [v5 setStoreTrackId:{objc_msgSend(v6, "longLongValue")}];

  v7 = [pf_queryAsDictionary objectForKeyedSubscript:@"episodeUuid"];
  [v5 setUuid:v7];

  v8 = [pf_queryAsDictionary objectForKeyedSubscript:@"episodeGuid"];
  [v5 setEpisodeGuid:v8];

  v9 = [pf_queryAsDictionary objectForKeyedSubscript:@"episodeTitle"];
  stringByRemovingPercentEscapes = [v9 stringByRemovingPercentEscapes];
  [v5 setEpisodeTitle:stringByRemovingPercentEscapes];

  v11 = [pf_queryAsDictionary objectForKeyedSubscript:@"podcastTitle"];
  stringByRemovingPercentEscapes2 = [v11 stringByRemovingPercentEscapes];
  [v5 setPodcastTitle:stringByRemovingPercentEscapes2];

  v13 = [pf_queryAsDictionary objectForKeyedSubscript:@"podcastFeedUrl"];
  stringByRemovingPercentEscapes3 = [v13 stringByRemovingPercentEscapes];
  v14StringByRemovingPercentEscapes = [stringByRemovingPercentEscapes3 stringByRemovingPercentEscapes];
  [v5 setPodcastFeedUrl:v14StringByRemovingPercentEscapes];

  v16 = [pf_queryAsDictionary objectForKeyedSubscript:@"streamUrl"];
  stringByRemovingPercentEscapes4 = [v16 stringByRemovingPercentEscapes];
  v17StringByRemovingPercentEscapes = [stringByRemovingPercentEscapes4 stringByRemovingPercentEscapes];
  [v5 setStreamUrl:v17StringByRemovingPercentEscapes];

  mEMORY[0x277D3DB08] = [MEMORY[0x277D3DB08] sharedInstance];
  v20 = [mEMORY[0x277D3DB08] findEpisodeWithRequest:v5];

  uuid = [v20 uuid];

  return uuid;
}

- (id)podcastUuidForSetPlaybackQueueRequestIdentifier:(id)identifier
{
  v44 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:identifierCopy];
  pf_queryAsDictionary = [v4 pf_queryAsDictionary];
  v6 = [pf_queryAsDictionary objectForKeyedSubscript:@"podcastFeedUrl"];
  stringByRemovingPercentEscapes = [v6 stringByRemovingPercentEscapes];
  v7StringByRemovingPercentEscapes = [stringByRemovingPercentEscapes stringByRemovingPercentEscapes];

  v9 = [pf_queryAsDictionary objectForKeyedSubscript:@"storeCollectionId"];
  longLongValue = [v9 longLongValue];

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

  v14 = [objc_alloc(MEMORY[0x277D3DB48]) initWithFeedUrl:v7StringByRemovingPercentEscapes storeIdentifier:v11];
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
  v18 = mainOrPrivateContext;
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

- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[(MTSingleton *)MTAccountController];
  activeDsid = [v5 activeDsid];
  v7 = [(MTPlaybackIdentifierUtil *)self playbackQueueWithDsid:activeDsid forIdentifiers:identifiersCopy];

  return v7;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)dsid forIdentifiers:(id)identifiers
{
  v5 = *MEMORY[0x277CBECE8];
  identifiersCopy = identifiers;
  v7 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

  if (dsid)
  {
    dsidCopy = dsid;
    keys = @"enqueuerDSID";
    v8 = CFDictionaryCreate(0, &keys, &dsidCopy, 1, 0, MEMORY[0x277CBF150]);
    MRSystemAppPlaybackQueueSetUserInfo();
    CFRelease(v8);
  }

  return v7;
}

- (unint64_t)_playQueueTypeForRequestURL:(id)l
{
  v3 = _playQueueTypeForRequestURL__onceToken;
  lCopy = l;
  if (v3 != -1)
  {
    [MTPlaybackIdentifierUtil _playQueueTypeForRequestURL:];
  }

  v5 = _playQueueTypeForRequestURL__map;
  host = [lCopy host];

  v7 = [v5 objectForKeyedSubscript:host];
  v8 = v7;
  v9 = &unk_2870B6BF0;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  return unsignedIntegerValue;
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

- (id)_playbackRequestIdentifierWithHost:(id)host queryKey:(id)key value:(id)value
{
  v17[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v17[0] = value;
  v8 = MEMORY[0x277CBEAC0];
  valueCopy = value;
  keyCopy2 = key;
  hostCopy = host;
  v12 = [v8 dictionaryWithObjects:v17 forKeys:&keyCopy count:1];

  v13 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:hostCopy queryComponents:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_playbackRequestIdentifierWithHost:(id)host queryComponents:(id)components
{
  v27 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  componentsCopy = components;
  v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v7 setScheme:@"podcasts"];
  v21 = hostCopy;
  [v7 setHost:hostCopy];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(componentsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = componentsCopy;
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
  string = [v7 string];

  v19 = *MEMORY[0x277D85DE8];

  return string;
}

- (int64_t)_episodeOrderFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x277D48618]])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x277D48620]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_playReasonFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = MTPlayReasonFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_episodeContextFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = MTEpisodeContextFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_episodeContextSortFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = MTEpisodeContextSortTypeFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)__stringWithPercentEscape:(id)escape
{
  v3 = CFURLCreateStringByAddingPercentEscapes(0, escape, 0, @"\uFFFC!$&'()+,/:;=?@", 0x8000100u);

  return v3;
}

+ (id)__stringByRemovingPercentEscapes:(id)escapes
{
  v3 = CFURLCreateStringByReplacingPercentEscapes(*MEMORY[0x277CBECE8], escapes, &stru_2870B1390);

  return v3;
}

+ (id)__queryStringToQueryDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [dictionary componentsSeparatedByString:@"&"];
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
        null = [MEMORY[0x277CBEB68] null];
        if ([v9 count] >= 2)
        {
          v12 = [v9 objectAtIndex:1];

          null = v12;
        }

        [v4 setObject:null forKey:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end