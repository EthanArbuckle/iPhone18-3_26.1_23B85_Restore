@interface WLKPlayable
+ (id)playablesWithDictionaries:(id)dictionaries context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSArray)storeOffers;
- (WLKPlayable)initWithDictionary:(id)dictionary context:(id)context;
- (WLKStoreOffer)bestStoreBuyOffer;
- (WLKStoreOffer)bestStoreRentalOffer;
- (WLKStoreOffer)bestStoreSubscriptionOffer;
- (id)_localesArrayForDictionary:(id)dictionary andKey:(id)key;
- (id)description;
@end

@implementation WLKPlayable

+ (id)playablesWithDictionaries:(id)dictionaries context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  contextCopy = context;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = dictionariesCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = objc_autoreleasePoolPush();
          v16 = [self alloc];
          v17 = [v16 initWithDictionary:v14 context:{contextCopy, v20}];
          [v8 addObject:v17];

          objc_autoreleasePoolPop(v15);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (WLKPlayable)initWithDictionary:(id)dictionary context:(id)context
{
  dictionaryCopy = dictionary;
  contextCopy = context;
  if (dictionaryCopy)
  {
    v114.receiver = self;
    v114.super_class = WLKPlayable;
    v8 = [(WLKPlayable *)&v114 init];
    if (!v8)
    {
LABEL_65:
      self = v8;
      selfCopy = self;
      goto LABEL_66;
    }

    v9 = [dictionaryCopy wlk_stringForKey:@"airingType"];
    if ([v9 isEqual:@"Live"])
    {
      v10 = 1;
    }

    else if ([v9 isEqual:@"Replay"])
    {
      v10 = 2;
    }

    else
    {
      if ([v9 isEqual:@"OnDemand"])
      {
        v8->_airingType = 0;
        goto LABEL_12;
      }

      v10 = -1;
    }

    v8->_airingType = v10;
LABEL_12:
    v12 = [dictionaryCopy wlk_arrayForKey:@"audioTrackFormats"];
    v13 = [v12 copy];
    audioTrackFormats = v8->_audioTrackFormats;
    v8->_audioTrackFormats = v13;

    v15 = [dictionaryCopy wlk_stringForKey:@"channelId"];
    v16 = [v15 copy];
    channelID = v8->_channelID;
    v8->_channelID = v16;

    v18 = [dictionaryCopy wlk_stringForKey:@"id"];
    v19 = [v18 copy];
    playableID = v8->_playableID;
    v8->_playableID = v19;

    v21 = [dictionaryCopy wlk_stringForKey:@"contentId"];
    v22 = [v21 copy];
    contentID = v8->_contentID;
    v8->_contentID = v22;

    v8->_duration = [dictionaryCopy wlk_numberForKey:@"duration"];
    v24 = [dictionaryCopy valueForKey:@"isEntitledToPlayOnDevice"];

    if (v24)
    {
      v25 = @"isEntitledToPlayOnDevice";
    }

    else
    {
      v25 = @"isEntitled";
    }

    v8->_entitled = [dictionaryCopy wlk_BOOLForKey:v25 defaultValue:0];
    v8->_entitledAnywhere = [dictionaryCopy wlk_BOOLForKey:@"isEntitledToPlay" defaultValue:0];
    v26 = [dictionaryCopy wlk_stringForKey:@"externalId"];
    v27 = [v26 copy];
    externalID = v8->_externalID;
    v8->_externalID = v27;

    v29 = [dictionaryCopy wlk_stringForKey:@"externalServiceId"];
    v30 = [v29 copy];
    externalServiceID = v8->_externalServiceID;
    v8->_externalServiceID = v30;

    v8->_itunes = [dictionaryCopy wlk_BOOLForKey:@"isItunes" defaultValue:0];
    v8->_subtitled = [dictionaryCopy wlk_BOOLForKey:@"isSubtitled" defaultValue:0];
    v32 = [dictionaryCopy wlk_stringForKey:@"videoQuality"];
    v33 = [v32 copy];
    videoQuality = v8->_videoQuality;
    v8->_videoQuality = v33;

    v35 = [dictionaryCopy wlk_stringForKey:@"videoColorRange"];
    v36 = [v35 copy];
    videoColorRange = v8->_videoColorRange;
    v8->_videoColorRange = v36;

    v38 = contextCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 wlk_stringForKey:@"WLKModelContextKeyCanonicalID"];
      canonicalID = v8->_canonicalID;
      v8->_canonicalID = v39;

      v41 = [v38 wlk_arrayForKey:@"WLKModelContextKeyChannels"];
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __42__WLKPlayable_initWithDictionary_context___block_invoke;
      v112[3] = &unk_279E5F158;
      v113 = v8;
      [v41 enumerateObjectsUsingBlock:v112];
    }

    if (!v8->_channelDetails)
    {
      v42 = +[WLKChannelUtilities sharedInstance];
      v43 = [v42 channelForID:v8->_channelID];
      channelDetails = v8->_channelDetails;
      v8->_channelDetails = v43;
    }

    v110 = [dictionaryCopy wlk_dictionaryForKey:@"eventTime"];
    v45 = [v110 wlk_dictionaryForKey:@"tuneInTime"];
    v46 = [v45 wlk_dateFromMillisecondsSince1970ForKey:@"startTime"];
    startAirTime = v8->_startAirTime;
    v8->_startAirTime = v46;

    v109 = v45;
    v48 = [v45 wlk_dateFromMillisecondsSince1970ForKey:@"endTime"];
    endAirTime = v8->_endAirTime;
    v8->_endAirTime = v48;

    v8->_contentSourceType = -1;
    v50 = [dictionaryCopy wlk_stringForKey:@"type"];
    if ([v50 length])
    {
      if ([v50 isEqualToString:@"Vod"])
      {
        v51 = 0;
      }

      else
      {
        if (![v50 isEqualToString:@"Event"])
        {
          goto LABEL_25;
        }

        v51 = 1;
      }

      v8->_contentSourceType = v51;
    }

LABEL_25:
    v52 = [dictionaryCopy wlk_dictionaryForKey:@"content"];
    if (v52)
    {
      v53 = [[WLKBasicContentMetadata alloc] initWithDictionary:v52];
      if (v53)
      {
        objc_storeStrong(&v8->_content, v53);
      }
    }

    v54 = [[WLKComingSoonInfo alloc] initWithDictionary:dictionaryCopy brandID:v8->_channelID];
    comingSoonInfo = v8->_comingSoonInfo;
    v8->_comingSoonInfo = v54;

    v108 = v50;
    if (v8->_itunes)
    {
      v56 = [dictionaryCopy wlk_dictionaryForKey:@"itunesMediaApiData"];
      v57 = [v56 wlk_arrayForKey:@"movieClips"];
      if (v57)
      {
        v58 = [WLKMovieClip movieClipsWithArray:v57];
        movieClips = v8->_movieClips;
        v8->_movieClips = v58;
      }

      v111 = v56;
      v60 = [v56 wlk_arrayForKey:@"offers"];
      if (v60)
      {
        v61 = [[WLKOfferListing alloc] initWithMAPIDictionaries:v60];
        offerListing = v8->_offerListing;
        v8->_offerListing = v61;
      }
    }

    else
    {
      v111 = 0;
    }

    v107 = v52;
    v63 = [dictionaryCopy wlk_arrayForKey:@"subscriptionOffers"];
    if (v63)
    {
      v64 = [WLKStoreOffer offersWithSubscriptionDictionaries:v63];
      subscriptionOffers = v8->_subscriptionOffers;
      v8->_subscriptionOffers = v64;
    }

    v66 = [dictionaryCopy wlk_dictionaryForKey:@"punchoutUrls"];
    v67 = [v66 copy];
    punchoutUrls = v8->_punchoutUrls;
    v8->_punchoutUrls = v67;

    v69 = [dictionaryCopy wlk_stringForKey:@"url"];
    v70 = [v69 copy];

    v71 = [MEMORY[0x277CBEBC0] URLWithString:v70];
    tvAppDeeplinkURL = v8->_tvAppDeeplinkURL;
    v8->_tvAppDeeplinkURL = v71;

    v73 = [(WLKPlayable *)v8 _localesArrayForDictionary:dictionaryCopy andKey:@"closedCaptionedLocales"];
    closedCaptionLocales = v8->_closedCaptionLocales;
    v8->_closedCaptionLocales = v73;

    v75 = [(WLKPlayable *)v8 _localesArrayForDictionary:dictionaryCopy andKey:@"subtitledLocales"];
    if (v75)
    {
      objc_storeStrong(&v8->_subtitledLocales, v75);
    }

    v76 = [(WLKPlayable *)v8 _localesArrayForDictionary:dictionaryCopy andKey:@"audioTrackLocales"];
    audioTrackLocales = v8->_audioTrackLocales;
    v8->_audioTrackLocales = v76;

    v78 = [(WLKPlayable *)v8 _localesArrayForDictionary:dictionaryCopy andKey:@"adLocales"];
    adLocales = v8->_adLocales;
    v8->_adLocales = v78;

    v80 = [WLKLocale alloc];
    v81 = [dictionaryCopy wlk_dictionaryForKey:@"primaryLocale"];
    v82 = [(WLKLocale *)v80 initWithDictionary:v81];
    primaryLocale = v8->_primaryLocale;
    v8->_primaryLocale = v82;

    v84 = [(WLKPlayable *)v8 _localesArrayForDictionary:dictionaryCopy andKey:@"sdhLocales"];
    SDHLocales = v8->_SDHLocales;
    v8->_SDHLocales = v84;

    v86 = [dictionaryCopy wlk_dictionaryForKey:@"playEvent"];
    if (v86)
    {
      v87 = [[WLKPlayEvent alloc] initWithDictionary:v86];
      playEvent = v8->_playEvent;
      v8->_playEvent = v87;
    }

    v8->_appInstalled = [(WLKChannelDetails *)v8->_channelDetails isAppInstalled];
    if (!v8->_itunes && ![(WLKChannelDetails *)v8->_channelDetails isApSubscription])
    {
      goto LABEL_64;
    }

    v105 = v38;
    v106 = v9;
    v89 = v8->_punchoutUrls;
    v90 = contextCopy;
    if (v89)
    {
      dictionary = [(NSDictionary *)v89 mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v92 = dictionary;
    v93 = [dictionary wlk_stringForKey:@"open"];
    v94 = [v93 length];

    if (!v94)
    {
      absoluteString = [(NSURL *)v8->_tvAppDeeplinkURL absoluteString];
      if (absoluteString)
      {
        [v92 setObject:absoluteString forKey:@"open"];
      }
    }

    if (!v8->_entitled || ([v92 wlk_stringForKey:@"play"], v96 = objc_claimAutoreleasedReturnValue(), v97 = objc_msgSend(v96, "length"), v96, v97))
    {
LABEL_63:
      v102 = [v92 copy];
      v103 = v8->_punchoutUrls;
      v8->_punchoutUrls = v102;

      contextCopy = v90;
      v38 = v105;
      v9 = v106;
LABEL_64:

      goto LABEL_65;
    }

    if ([objc_opt_class() isFullTVAppEnabled])
    {
      v98 = [WLKPlayableUtilities _punchoutURLForDirectPlayback:v8->_tvAppDeeplinkURL ignoreExtras:1];
      v99 = v98;
      if (v98)
      {
        absoluteString2 = [v98 absoluteString];
LABEL_58:
        v101 = absoluteString2;
LABEL_60:

        if (v101)
        {
          [v92 setObject:v101 forKey:@"play"];
        }

        goto LABEL_63;
      }
    }

    else
    {
      v99 = [v111 wlk_stringForKey:@"id"];
      if (v99)
      {
        absoluteString2 = [MEMORY[0x277CCACA8] stringWithFormat:@"videos://play?adam-id=%@&allowCloudPlayback=1", v99];
        goto LABEL_58;
      }
    }

    v101 = 0;
    goto LABEL_60;
  }

  selfCopy = 0;
LABEL_66:

  return selfCopy;
}

void __42__WLKPlayable_initWithDictionary_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 channelID];
  v8 = [v7 isEqualToString:*(*(a1 + 32) + 32)];

  if (v8)
  {
    objc_storeStrong((*(a1 + 32) + 40), a2);
    *a4 = 1;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  canonicalID = [(WLKPlayable *)self canonicalID];
  channelDetails = [(WLKPlayable *)self channelDetails];
  title = [channelDetails title];
  v8 = [v3 stringWithFormat:@"<%@: %p> ID: %@, Channel: %@, Source Type: %ld, Entitled: %d", v4, self, canonicalID, title, -[WLKPlayable contentSourceType](self, "contentSourceType"), -[WLKPlayable isEntitled](self, "isEntitled")];;

  return v8;
}

- (NSArray)storeOffers
{
  offerListing = [(WLKPlayable *)self offerListing];
  storeOffers = [offerListing storeOffers];

  return storeOffers;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    playableID = [(WLKPlayable *)self playableID];
    playableID2 = [equalCopy playableID];
    if ([playableID isEqualToString:playableID2])
    {
      canonicalID = [(WLKPlayable *)self canonicalID];
      canonicalID2 = [equalCopy canonicalID];
      v9 = [canonicalID isEqualToString:canonicalID2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WLKStoreOffer)bestStoreBuyOffer
{
  offerListing = [(WLKPlayable *)self offerListing];
  bestStoreBuyOffer = [offerListing bestStoreBuyOffer];

  return bestStoreBuyOffer;
}

- (WLKStoreOffer)bestStoreRentalOffer
{
  offerListing = [(WLKPlayable *)self offerListing];
  bestStoreRentalOffer = [offerListing bestStoreRentalOffer];

  return bestStoreRentalOffer;
}

- (WLKStoreOffer)bestStoreSubscriptionOffer
{
  subscriptionOffers = [(WLKPlayable *)self subscriptionOffers];
  firstObject = [subscriptionOffers firstObject];

  return firstObject;
}

- (id)_localesArrayForDictionary:(id)dictionary andKey:(id)key
{
  v4 = [dictionary wlk_arrayForKey:key];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__WLKPlayable__localesArrayForDictionary_andKey___block_invoke;
    v9[3] = &unk_279E5F4A8;
    v10 = array;
    v6 = array;
    [v4 enumerateObjectsUsingBlock:v9];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __49__WLKPlayable__localesArrayForDictionary_andKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[WLKLocale alloc] initWithDictionary:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

@end