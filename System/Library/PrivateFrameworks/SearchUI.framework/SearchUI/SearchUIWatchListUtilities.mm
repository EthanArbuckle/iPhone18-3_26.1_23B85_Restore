@interface SearchUIWatchListUtilities
+ (BOOL)channelHasBeenSeen:(id)seen seenChannels:(id)channels;
+ (id)buttonForChannelDetails:(id)details punchoutURLs:(id)ls tvAppDeeplinkURL:(id)l isEntitled:(BOOL)entitled isContinuing:(BOOL)continuing isContainerItem:(BOOL)item hasDescriptiveSeasonTitle:(BOOL)title seasonNumber:(id)self0 episodeNumber:(id)self1 isHorizontallySrollingStyle:(BOOL)self2;
+ (id)buttonForChannelOffer:(id)offer channel:(id)channel episode:(id)episode;
+ (id)buttonForOffer:(id)offer playable:(id)playable;
+ (id)buttonForPlayable:(id)playable isHorizontallySrollingStyle:(BOOL)style;
+ (id)buttonWithTitle:(id)title subtitle:(id)subtitle punchoutURL:(id)l type:(unint64_t)type image:(id)image storeIdentifier:(id)identifier;
+ (id)buttonsForPlayables:(id)playables channels:(id)channels currentEpisode:(id)episode isUpNextable:(BOOL)nextable watchListState:(id)state isHorizontallySrollingStyle:(BOOL)style;
+ (int)watchListTypeForType:(int)type isMediaContainer:(BOOL)container;
+ (int64_t)wlkTypeForType:(int)type;
+ (void)computeButtonsForWatchListIdentifier:(id)identifier type:(int)type isHorizontallySrollingStyle:(BOOL)style completion:(id)completion;
+ (void)fetchButtonsForWatchListIdentifier:(id)identifier type:(int)type isHorizontallySrollingStyle:(BOOL)style completion:(id)completion;
+ (void)fetchButtonsForWatchListIdentifier:(id)identifier type:(int)type isHorizontallySrollingStyle:(BOOL)style fetchButtons:(BOOL)buttons completion:(id)completion;
+ (void)fetchWatchListStateForWatchListIdentifier:(id)identifier type:(int)type completion:(id)completion;
+ (void)generateMediaContainerWatchListReponseForWatchListIdentifier:(id)identifier type:(int)type completion:(id)completion;
+ (void)generateWatchListReponseForWatchListIdentifier:(id)identifier type:(int)type completion:(id)completion;
+ (void)updateStatusIsInWatchList:(BOOL)list watchListItemWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SearchUIWatchListUtilities

+ (int64_t)wlkTypeForType:(int)type
{
  if ((type - 1) > 4)
  {
    return 1;
  }

  else
  {
    return qword_1DA272998[type - 1];
  }
}

+ (int)watchListTypeForType:(int)type isMediaContainer:(BOOL)container
{
  if (container)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  if (type)
  {
    return type;
  }

  else
  {
    return v4;
  }
}

+ (void)generateWatchListReponseForWatchListIdentifier:(id)identifier type:(int)type completion:(id)completion
{
  v5 = *&type;
  completionCopy = completion;
  v9 = MEMORY[0x1E69E14E8];
  identifierCopy = identifier;
  v11 = [[v9 alloc] initWithCanonicalID:identifierCopy];

  [v11 setCaller:@"SearchUI"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__SearchUIWatchListUtilities_generateWatchListReponseForWatchListIdentifier_type_completion___block_invoke;
  v13[3] = &unk_1E85B2B70;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 makeRequestWithCompletion:v13 canonicalType:{objc_msgSend(self, "wlkTypeForType:", v5)}];
}

+ (void)generateMediaContainerWatchListReponseForWatchListIdentifier:(id)identifier type:(int)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__SearchUIWatchListUtilities_generateMediaContainerWatchListReponseForWatchListIdentifier_type_completion___block_invoke;
  v12[3] = &unk_1E85B2C10;
  v14 = completionCopy;
  selfCopy = self;
  typeCopy = type;
  v13 = identifierCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  [SearchUIUtilities dispatchAsyncIfNecessary:v12];
}

void __107__SearchUIWatchListUtilities_generateMediaContainerWatchListReponseForWatchListIdentifier_type_completion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69E14E0]) initWithCanonicalID:*(a1 + 32)];
  [v2 setCaller:@"SearchUI"];
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy_;
  v20[4] = __Block_byref_object_dispose_;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v19 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __107__SearchUIWatchListUtilities_generateMediaContainerWatchListReponseForWatchListIdentifier_type_completion___block_invoke_104;
  v14[3] = &unk_1E85B2B98;
  v16 = v20;
  v17 = v18;
  v4 = v3;
  v15 = v4;
  [v2 makeRequestWithCompletion:v14 canonicalType:{objc_msgSend(*(a1 + 48), "wlkTypeForType:", *(a1 + 56))}];
  os_unfair_lock_lock(&sSeasonTitleLock);
  v5 = sSeasonTitlesFlagCached;
  os_unfair_lock_unlock(&sSeasonTitleLock);
  if ((v5 & 1) == 0)
  {
    dispatch_group_enter(v4);
    v6 = MEMORY[0x1E69E14F0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __107__SearchUIWatchListUtilities_generateMediaContainerWatchListReponseForWatchListIdentifier_type_completion___block_invoke_2;
    v12[3] = &unk_1E85B2BC0;
    v13 = v4;
    [v6 sui_fetchSeasonTitlesSettingWithCompletionHandler:v12];
  }

  v7 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__SearchUIWatchListUtilities_generateMediaContainerWatchListReponseForWatchListIdentifier_type_completion___block_invoke_3;
  block[3] = &unk_1E85B2BE8;
  v9 = *(a1 + 40);
  v10 = v20;
  v11 = v18;
  dispatch_group_notify(v4, v7, block);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
}

void __107__SearchUIWatchListUtilities_generateMediaContainerWatchListReponseForWatchListIdentifier_type_completion___block_invoke_104(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __107__SearchUIWatchListUtilities_generateMediaContainerWatchListReponseForWatchListIdentifier_type_completion___block_invoke_2(uint64_t a1, char a2)
{
  os_unfair_lock_lock(&sSeasonTitleLock);
  sSeasonTitlesEnabled = a2;
  sSeasonTitlesFlagCached = 1;
  os_unfair_lock_unlock(&sSeasonTitleLock);
  v4 = *(a1 + 32);

  dispatch_group_leave(v4);
}

+ (void)fetchWatchListStateForWatchListIdentifier:(id)identifier type:(int)type completion:(id)completion
{
  v5 = *&type;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__SearchUIWatchListUtilities_fetchWatchListStateForWatchListIdentifier_type_completion___block_invoke;
  v10[3] = &unk_1E85B2AF0;
  v11 = completionCopy;
  v9 = completionCopy;
  [self fetchButtonsForWatchListIdentifier:identifier type:v5 isHorizontallySrollingStyle:1 fetchButtons:0 completion:v10];
}

+ (void)fetchButtonsForWatchListIdentifier:(id)identifier type:(int)type isHorizontallySrollingStyle:(BOOL)style completion:(id)completion
{
  styleCopy = style;
  v7 = *&type;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __109__SearchUIWatchListUtilities_fetchButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_completion___block_invoke;
  v12[3] = &unk_1E85B2AF0;
  v13 = completionCopy;
  v11 = completionCopy;
  [self fetchButtonsForWatchListIdentifier:identifier type:v7 isHorizontallySrollingStyle:styleCopy fetchButtons:1 completion:v12];
}

+ (void)fetchButtonsForWatchListIdentifier:(id)identifier type:(int)type isHorizontallySrollingStyle:(BOOL)style fetchButtons:(BOOL)buttons completion:(id)completion
{
  styleCopy = style;
  v8 = *&type;
  v10 = fetchButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_fetchButtons_completion__onceToken;
  completionCopy = completion;
  identifierCopy = identifier;
  v14 = identifierCopy;
  if (v10 == -1)
  {
    v13 = identifierCopy;
  }

  else
  {
    +[SearchUIWatchListUtilities fetchButtonsForWatchListIdentifier:type:isHorizontallySrollingStyle:fetchButtons:completion:];
    v13 = v14;
  }

  [fetchButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_fetchButtons_completion__cache getButtonsForWatchListIdentifier:v13 type:v8 isHorizontallySrollingStyle:styleCopy completion:completionCopy];
}

uint64_t __122__SearchUIWatchListUtilities_fetchButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_fetchButtons_completion___block_invoke()
{
  fetchButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_fetchButtons_completion__cache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)computeButtonsForWatchListIdentifier:(id)identifier type:(int)type isHorizontallySrollingStyle:(BOOL)style completion:(id)completion
{
  v8 = *&type;
  identifierCopy = identifier;
  completionCopy = completion;
  v12 = completionCopy;
  if (identifierCopy)
  {
    v13 = objc_opt_class();
    if ((v8 & 0xFFFFFFFE) == 2)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __111__SearchUIWatchListUtilities_computeButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_completion___block_invoke;
      v19[3] = &unk_1E85B2C38;
      selfCopy = self;
      styleCopy = style;
      v20 = v12;
      [v13 generateMediaContainerWatchListReponseForWatchListIdentifier:identifierCopy type:v8 completion:v19];
      v14 = v20;
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __111__SearchUIWatchListUtilities_computeButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_completion___block_invoke_2;
      v15[3] = &unk_1E85B2C60;
      selfCopy2 = self;
      styleCopy2 = style;
      v16 = v12;
      [v13 generateWatchListReponseForWatchListIdentifier:identifierCopy type:v8 completion:v15];
      v14 = v16;
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __111__SearchUIWatchListUtilities_computeButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v11 isWatchListable])
  {
    v6 = [[SearchUIWatchListState alloc] initWithContainerResponse:v11];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = [v11 channels];
  v9 = [v11 currentEpisode];
  v10 = [v7 buttonsForPlayables:0 channels:v8 currentEpisode:v9 isUpNextable:objc_msgSend(v11 watchListState:"isWatchListable") isHorizontallySrollingStyle:{v6, *(a1 + 48)}];

  (*(*(a1 + 32) + 16))();
}

void __111__SearchUIWatchListUtilities_computeButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 isWatchListable])
  {
    v6 = [[SearchUIWatchListState alloc] initWithResponse:v10];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = [v10 playables];
  v9 = [v7 buttonsForPlayables:v8 channels:0 currentEpisode:0 isUpNextable:objc_msgSend(v10 watchListState:"isWatchListable") isHorizontallySrollingStyle:{v6, *(a1 + 48)}];

  (*(*(a1 + 32) + 16))();
}

+ (id)buttonsForPlayables:(id)playables channels:(id)channels currentEpisode:(id)episode isUpNextable:(BOOL)nextable watchListState:(id)state isHorizontallySrollingStyle:(BOOL)style
{
  styleCopy = style;
  nextableCopy = nextable;
  v105 = *MEMORY[0x1E69E9840];
  playablesCopy = playables;
  channelsCopy = channels;
  episodeCopy = episode;
  stateCopy = state;
  v88 = styleCopy;
  v14 = 4;
  if (styleCopy)
  {
    v14 = 0x7FFFFFFFLL;
  }

  v80 = v14;
  v90 = objc_opt_new();
  v93 = objc_opt_new();
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = channelsCopy;
  v15 = [obj countByEnumeratingWithState:&v99 objects:v104 count:16];
  v89 = episodeCopy;
  if (!v15)
  {
    v92 = 0;
    goto LABEL_35;
  }

  v16 = v15;
  v92 = 0;
  v17 = *v100;
  v84 = *MEMORY[0x1E69E1708];
  v85 = *v100;
  do
  {
    v18 = 0;
    v86 = v16;
    do
    {
      if (*v100 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v99 + 1) + 8 * v18);
      details = [v19 details];
      if (details && ([self channelHasBeenSeen:details seenChannels:v93] & 1) == 0)
      {
        playable = [episodeCopy playable];
        punchoutUrls = [v19 punchoutUrls];
        channelID = [details channelID];
        channelID2 = [playable channelID];
        if ([channelID isEqual:channelID2])
        {
          seasonNumbers = [v19 seasonNumbers];
          seasonNumber = [episodeCopy seasonNumber];
          v27 = [seasonNumbers containsObject:seasonNumber];

          if (v27)
          {
            punchoutUrls2 = [playable punchoutUrls];
            if (punchoutUrls2)
            {
              episodeCopy = v89;
              seasonNumber2 = [v89 seasonNumber];
              episodeNumber = [v89 episodeNumber];
              punchoutUrls2 = punchoutUrls2;
              absoluteString = punchoutUrls;
              punchoutUrls = punchoutUrls2;
              goto LABEL_20;
            }

            episodeNumber = 0;
            seasonNumber2 = 0;
            episodeCopy = v89;
LABEL_21:

            goto LABEL_22;
          }
        }

        else
        {
        }

        if ([details isiTunes])
        {
          punchoutUrls2 = [punchoutUrls mutableCopy];
          episodeCopy = v89;
          tvAppDeeplinkURL = [v89 tvAppDeeplinkURL];
          absoluteString = [tvAppDeeplinkURL absoluteString];

          if (absoluteString)
          {
            [punchoutUrls2 setObject:absoluteString forKey:v84];
            punchoutUrls2 = punchoutUrls2;

            episodeNumber = 0;
            seasonNumber2 = 0;
            punchoutUrls = punchoutUrls2;
          }

          else
          {
            episodeNumber = 0;
            seasonNumber2 = 0;
          }

LABEL_20:

          goto LABEL_21;
        }

        episodeNumber = 0;
        seasonNumber2 = 0;
        episodeCopy = v89;
LABEL_22:
        subscriptionOffers = [v19 subscriptionOffers];
        firstObject = [subscriptionOffers firstObject];

        if (!firstObject || v92)
        {
          tvAppDeeplinkURL2 = [playable tvAppDeeplinkURL];
          isSubscribed = [details isSubscribed];
          seasonTitle = [episodeCopy seasonTitle];
          LOBYTE(v79) = v88;
          LOBYTE(v78) = seasonTitle != 0;
          v38 = [self buttonForChannelDetails:details punchoutURLs:punchoutUrls tvAppDeeplinkURL:tvAppDeeplinkURL2 isEntitled:isSubscribed isContinuing:0 isContainerItem:1 hasDescriptiveSeasonTitle:v78 seasonNumber:seasonNumber2 episodeNumber:episodeNumber isHorizontallySrollingStyle:v79];

          if (v38)
          {
            [v90 addObject:v38];
          }

          episodeCopy = v89;
        }

        else
        {
          v92 = [self buttonForChannelOffer:firstObject channel:v19 episode:episodeCopy];
        }

        v17 = v85;
        v16 = v86;
      }

      ++v18;
    }

    while (v16 != v18);
    v39 = [obj countByEnumeratingWithState:&v99 objects:v104 count:16];
    v16 = v39;
  }

  while (v39);
LABEL_35:

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v40 = playablesCopy;
  v41 = [v40 countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = 0;
    v44 = 0;
    v45 = *v96;
    v87 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v96 != v45)
        {
          objc_enumerationMutation(v40);
        }

        v47 = *(*(&v95 + 1) + 8 * i);
        isEntitled = [v47 isEntitled];
        channelDetails = [v47 channelDetails];
        v50 = [self channelHasBeenSeen:channelDetails seenChannels:v93];

        if ((v50 & 1) == 0)
        {
          if ([v47 isiTunes])
          {
            v51 = v47;

            v87 = [v90 count];
            v44 = v51;
          }

          else if (v92 || ([v47 bestStoreSubscriptionOffer], v53 = objc_claimAutoreleasedReturnValue(), v53, !v53))
          {
            v52 = [self buttonForPlayable:v47 isHorizontallySrollingStyle:v88];
            if (v52)
            {
              [v90 addObject:v52];
            }
          }

          else
          {
            bestStoreSubscriptionOffer = [v47 bestStoreSubscriptionOffer];
            v92 = [self buttonForOffer:bestStoreSubscriptionOffer playable:v47];
          }
        }

        v43 |= isEntitled;
      }

      v42 = [v40 countByEnumeratingWithState:&v95 objects:v103 count:16];
    }

    while (v42);

    v55 = v92;
    if ((v43 & (v92 != 0)) == 1)
    {

      v55 = 0;
    }

    episodeCopy = v89;
    v92 = v55;
    v56 = v55 != 0;
    v57 = v80 - nextableCopy - v56;
    if (v44)
    {
      v58 = [v90 count];
      v59 = v87 < v57 && (v57 - v58) < 1;
      v60 = v59 ? 1 : v57 - v58;
      if (v60 >= 1)
      {
        v61 = objc_opt_new();
        bestStoreRentalOffer = [v44 bestStoreRentalOffer];
        if (bestStoreRentalOffer)
        {
          bestStoreBuyOffer = [v44 bestStoreBuyOffer];
          v65 = v60 == 1 && bestStoreBuyOffer != 0;
        }

        else
        {
          v65 = 0;
        }

        isEntitled2 = [v44 isEntitled];
        if (v65 || isEntitled2)
        {
          v68 = [self buttonForPlayable:v44 isHorizontallySrollingStyle:v88];
          [v61 addObject:v68];
        }

        else
        {
          bestStoreRentalOffer2 = [v44 bestStoreRentalOffer];
          v68 = [self buttonForOffer:bestStoreRentalOffer2 playable:v44];

          if (v68)
          {
            [v61 addObject:v68];
          }

          bestStoreBuyOffer2 = [v44 bestStoreBuyOffer];
          v70 = [self buttonForOffer:bestStoreBuyOffer2 playable:v44];

          if (v70)
          {
            [v61 addObject:v70];
          }

          if (![v61 count])
          {
            storeOffers = [v44 storeOffers];
            lastObject = [storeOffers lastObject];
            v73 = [self buttonForOffer:lastObject playable:v44];

            if (v73)
            {
              [v61 addObject:v73];
            }

            episodeCopy = v89;
          }
        }

        if ([v61 count])
        {
          v74 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v87, objc_msgSend(v61, "count")}];
          [v90 insertObjects:v61 atIndexes:v74];
        }
      }
    }
  }

  else
  {

    v44 = 0;
    v56 = v92 != 0;
    v57 = v80 - nextableCopy - v56;
  }

  while ([v90 count] > v57)
  {
    [v90 removeLastObject];
  }

  if (v56)
  {
    [v90 addObject:v92];
  }

  if (nextableCopy)
  {
    v75 = objc_opt_new();
    [v75 setWatchListState:stateCopy];
    [v75 setButtonType:3];
    [v90 addObject:v75];
  }

  v76 = v90;

  return v90;
}

+ (BOOL)channelHasBeenSeen:(id)seen seenChannels:(id)channels
{
  channelsCopy = channels;
  channelID = [seen channelID];
  v7 = [channelsCopy containsObject:channelID];
  if ((v7 & 1) == 0)
  {
    [channelsCopy addObject:channelID];
  }

  return v7;
}

+ (id)buttonForPlayable:(id)playable isHorizontallySrollingStyle:(BOOL)style
{
  playableCopy = playable;
  channelDetails = [playableCopy channelDetails];
  punchoutUrls = [playableCopy punchoutUrls];
  tvAppDeeplinkURL = [playableCopy tvAppDeeplinkURL];
  isEntitled = [playableCopy isEntitled];
  playEvent = [playableCopy playEvent];

  LOBYTE(v15) = style;
  LOBYTE(v14) = 0;
  v12 = [self buttonForChannelDetails:channelDetails punchoutURLs:punchoutUrls tvAppDeeplinkURL:tvAppDeeplinkURL isEntitled:isEntitled isContinuing:playEvent != 0 isContainerItem:0 hasDescriptiveSeasonTitle:v14 seasonNumber:0 episodeNumber:0 isHorizontallySrollingStyle:v15];

  return v12;
}

+ (id)buttonForChannelDetails:(id)details punchoutURLs:(id)ls tvAppDeeplinkURL:(id)l isEntitled:(BOOL)entitled isContinuing:(BOOL)continuing isContainerItem:(BOOL)item hasDescriptiveSeasonTitle:(BOOL)title seasonNumber:(id)self0 episodeNumber:(id)self1 isHorizontallySrollingStyle:(BOOL)self2
{
  itemCopy = item;
  continuingCopy = continuing;
  entitledCopy = entitled;
  detailsCopy = details;
  lsCopy = ls;
  lCopy = l;
  numberCopy = number;
  episodeNumberCopy = episodeNumber;
  sui_channelName = [detailsCopy sui_channelName];
  v63 = episodeNumberCopy;
  if (([detailsCopy isAppInstalled] & 1) != 0 || objc_msgSend(detailsCopy, "isFirstParty"))
  {
    v21 = [lsCopy objectForKeyedSubscript:*MEMORY[0x1E69E1710]];
    v59 = lsCopy;
    v22 = [lsCopy objectForKeyedSubscript:*MEMORY[0x1E69E1708]];
    v23 = v22;
    if (!entitledCopy || !v21 || (episodeNumberCopy ? (v24 = numberCopy == 0) : (v24 = 1), v24 && itemCopy))
    {
      if (lCopy | v22)
      {
        v25 = sui_channelName;
        if (lCopy)
        {
          v26 = lCopy;
        }

        else
        {
          v26 = [MEMORY[0x1E695DFF8] URLWithString:v22];
        }

        appStoreURL2 = v26;
        if ([detailsCopy isApSubscription])
        {
          v43 = @"SUBSCRIBE_BUTTON_TITLE";
        }

        else
        {
          v43 = @"OPEN_BUTTON_TITLE";
        }

        v28 = [SearchUIUtilities localizedStringForKey:v43];
        v27 = 0;
        goto LABEL_36;
      }

      v27 = 0;
      v28 = 0;
      appStoreURL2 = 0;
      goto LABEL_15;
    }

    appStoreURL2 = [MEMORY[0x1E695DFF8] URLWithString:v21];
    if (itemCopy)
    {
      os_unfair_lock_lock(&sSeasonTitleLock);
      v37 = sSeasonTitlesEnabled;
      os_unfair_lock_unlock(&sSeasonTitleLock);
      v38 = [detailsCopy sui_seasonEpisodeLabel:v37 seasonTitleAvailable:title seasonNumber:numberCopy episodeNumber:v63];
      v39 = v38;
      v40 = MEMORY[0x1E696AEC0];
      if (style)
      {
        v41 = [SearchUIUtilities localizedStringForKey:@"PLAY_EPISODE_FORMAT"];
        v42 = [SearchUIUtilities localizedStringForKey:@"PLAY"];
        v28 = [v40 stringWithValidatedFormat:v41 validFormatSpecifiers:@"%@ %@" error:0, v42, v39];

        v25 = sui_channelName;
      }

      else
      {
        v41 = sui_channelName;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v38, sui_channelName];
        v25 = v28 = 0;
      }
    }

    else
    {
      if (!continuingCopy)
      {
        if (style)
        {
          v28 = [SearchUIUtilities localizedStringForKey:@"PLAY"];
        }

        else
        {
          v28 = 0;
        }

        v27 = 1;
LABEL_15:
        v25 = sui_channelName;
LABEL_36:
        v36 = objc_opt_new();
        if ([detailsCopy isFirstParty])
        {
          appBundleIDs = [SearchUIUtilities bundleIdentifierForApp:18];
          [(SearchUIWatchListIconImage *)v36 setBundleIdentifier:appBundleIDs];
        }

        else
        {
          appBundleIDs = [detailsCopy appBundleIDs];
          [appBundleIDs firstObject];
          v62 = detailsCopy;
          v48 = v27;
          v49 = appStoreURL2;
          v50 = v28;
          v51 = v21;
          v52 = v23;
          v53 = v25;
          v55 = v54 = lCopy;
          [(SearchUIWatchListIconImage *)v36 setBundleIdentifier:v55];

          lCopy = v54;
          v25 = v53;
          v23 = v52;
          v21 = v51;
          v28 = v50;
          appStoreURL2 = v49;
          v27 = v48;
          detailsCopy = v62;
        }

        firstObject = 0;
        lsCopy = v59;
        goto LABEL_40;
      }

      v46 = [SearchUIUtilities localizedStringForKey:@"CONTINUE"];
      v39 = v46;
      if (style)
      {
        v28 = v46;
        v25 = sui_channelName;
      }

      else
      {
        v57 = MEMORY[0x1E696AEC0];
        v58 = [SearchUIUtilities localizedStringForKey:@"CONTINUE_IN_FORMAT"];
        v25 = [v57 stringWithValidatedFormat:v58 validFormatSpecifiers:@"%@ %@" error:0, v39, sui_channelName];

        v28 = 0;
      }
    }

    v27 = 1;
    goto LABEL_36;
  }

  v30 = lCopy;
  appStoreURL = [detailsCopy appStoreURL];

  if (!appStoreURL)
  {
    appStoreURL2 = 0;
    v28 = 0;
    v36 = 0;
    firstObject = 0;
    v44 = 0;
    lCopy = v30;
    v25 = sui_channelName;
    v45 = v63;
    goto LABEL_43;
  }

  v28 = [SearchUIUtilities localizedStringForKey:@"INSTALL_BUTTON_TITLE"];
  appStoreURL2 = [detailsCopy appStoreURL];
  appAdamIDs = [detailsCopy appAdamIDs];
  firstObject = [appAdamIDs firstObject];

  if (style)
  {
    v34 = [SearchUIWatchListIconImage alloc];
    images = [detailsCopy images];
    v36 = [(SearchUIWatchListIconImage *)v34 initWithArtwork:images];

    [(SearchUIWatchListIconImage *)v36 setSize:45.0, 45.0];
  }

  else
  {
    v36 = 0;
  }

  v27 = 2;
  lCopy = v30;
  v25 = sui_channelName;
LABEL_40:
  v45 = v63;
  if (appStoreURL2)
  {
    v44 = [self buttonWithTitle:v28 subtitle:v25 punchoutURL:appStoreURL2 type:v27 image:v36 storeIdentifier:firstObject];
  }

  else
  {
    v44 = 0;
  }

LABEL_43:

  return v44;
}

+ (id)buttonForOffer:(id)offer playable:(id)playable
{
  offerCopy = offer;
  playableCopy = playable;
  channelDetails = [playableCopy channelDetails];
  isFirstParty = [channelDetails isFirstParty];

  v10 = MEMORY[0x1E695DFF8];
  punchoutUrls = [playableCopy punchoutUrls];
  v12 = [punchoutUrls objectForKeyedSubscript:*MEMORY[0x1E69E1708]];
  v13 = [v10 URLWithString:v12];

  channelDetails2 = [playableCopy channelDetails];
  appBundleIDs = [channelDetails2 appBundleIDs];
  firstObject = [appBundleIDs firstObject];

  if (v13)
  {
    v17 = isFirstParty == 0;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    v18 = [SearchUIUtilities bundleIdentifierForApp:18];

    tvAppDeeplinkURL = [playableCopy tvAppDeeplinkURL];

    firstObject = v18;
    v13 = tvAppDeeplinkURL;
  }

  v20 = 0;
  if (offerCopy && v13)
  {
    sui_buttonTitle = [offerCopy sui_buttonTitle];
    channelDetails3 = [playableCopy channelDetails];
    sui_channelName = [channelDetails3 sui_channelName];
    v24 = [offerCopy sui_buttonSubtitleWithServiceName:sui_channelName];

    if (sui_buttonTitle)
    {
      v25 = objc_opt_new();
      [v25 setBundleIdentifier:firstObject];
      v20 = [self buttonWithTitle:sui_buttonTitle subtitle:v24 punchoutURL:v13 type:0 image:v25 storeIdentifier:0];

      v24 = sui_buttonTitle;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

+ (id)buttonForChannelOffer:(id)offer channel:(id)channel episode:(id)episode
{
  offerCopy = offer;
  channelCopy = channel;
  tvAppDeeplinkURL = [episode tvAppDeeplinkURL];
  v11 = tvAppDeeplinkURL;
  v12 = 0;
  if (offerCopy && tvAppDeeplinkURL)
  {
    sui_buttonTitle = [offerCopy sui_buttonTitle];
    details = [channelCopy details];
    sui_channelName = [details sui_channelName];
    v16 = [offerCopy sui_buttonSubtitleWithServiceName:sui_channelName];

    if (sui_buttonTitle)
    {
      v17 = objc_opt_new();
      v18 = [SearchUIUtilities bundleIdentifierForApp:18];
      [v17 setBundleIdentifier:v18];

      v12 = [self buttonWithTitle:sui_buttonTitle subtitle:v16 punchoutURL:v11 type:0 image:v17 storeIdentifier:0];

      v16 = sui_buttonTitle;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)buttonWithTitle:(id)title subtitle:(id)subtitle punchoutURL:(id)l type:(unint64_t)type image:(id)image storeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageCopy = image;
  lCopy = l;
  subtitleCopy = subtitle;
  titleCopy = title;
  v18 = objc_opt_new();
  [v18 setTitle:titleCopy];

  [v18 setSubtitle:subtitleCopy];
  [v18 setPunchoutURL:lCopy];

  [v18 setButtonType:type];
  [v18 setThumbnailImage:imageCopy];

  [v18 setStoreIdentifier:identifierCopy];

  return v18;
}

+ (void)updateStatusIsInWatchList:(BOOL)list watchListItemWithIdentifier:(id)identifier completion:(id)completion
{
  listCopy = list;
  identifierCopy = identifier;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__SearchUIWatchListUtilities_updateStatusIsInWatchList_watchListItemWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E85B2B48;
  v17 = listCopy;
  v9 = identifierCopy;
  v15 = v9;
  v10 = completionCopy;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  v12 = 0x1E69E14C0;
  if (!listCopy)
  {
    v12 = 0x1E69E15B0;
  }

  v13 = [objc_alloc(*v12) initWithCanonicalID:v9];
  [v13 setCaller:@"SearchUI"];
  [v13 makeRequestWithCompletion:v11];
}

void __95__SearchUIWatchListUtilities_updateStatusIsInWatchList_watchListItemWithIdentifier_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = SearchUITapLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __95__SearchUIWatchListUtilities_updateStatusIsInWatchList_watchListItemWithIdentifier_completion___block_invoke_cold_1(a1, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __95__SearchUIWatchListUtilities_updateStatusIsInWatchList_watchListItemWithIdentifier_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v3 = @"add";
  }

  else
  {
    v3 = @"remove";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Failed to %@ %@ to watchlist", &v4, 0x16u);
}

@end