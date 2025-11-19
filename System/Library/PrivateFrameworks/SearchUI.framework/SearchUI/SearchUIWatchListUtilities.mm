@interface SearchUIWatchListUtilities
+ (BOOL)channelHasBeenSeen:(id)a3 seenChannels:(id)a4;
+ (id)buttonForChannelDetails:(id)a3 punchoutURLs:(id)a4 tvAppDeeplinkURL:(id)a5 isEntitled:(BOOL)a6 isContinuing:(BOOL)a7 isContainerItem:(BOOL)a8 hasDescriptiveSeasonTitle:(BOOL)a9 seasonNumber:(id)a10 episodeNumber:(id)a11 isHorizontallySrollingStyle:(BOOL)a12;
+ (id)buttonForChannelOffer:(id)a3 channel:(id)a4 episode:(id)a5;
+ (id)buttonForOffer:(id)a3 playable:(id)a4;
+ (id)buttonForPlayable:(id)a3 isHorizontallySrollingStyle:(BOOL)a4;
+ (id)buttonWithTitle:(id)a3 subtitle:(id)a4 punchoutURL:(id)a5 type:(unint64_t)a6 image:(id)a7 storeIdentifier:(id)a8;
+ (id)buttonsForPlayables:(id)a3 channels:(id)a4 currentEpisode:(id)a5 isUpNextable:(BOOL)a6 watchListState:(id)a7 isHorizontallySrollingStyle:(BOOL)a8;
+ (int)watchListTypeForType:(int)a3 isMediaContainer:(BOOL)a4;
+ (int64_t)wlkTypeForType:(int)a3;
+ (void)computeButtonsForWatchListIdentifier:(id)a3 type:(int)a4 isHorizontallySrollingStyle:(BOOL)a5 completion:(id)a6;
+ (void)fetchButtonsForWatchListIdentifier:(id)a3 type:(int)a4 isHorizontallySrollingStyle:(BOOL)a5 completion:(id)a6;
+ (void)fetchButtonsForWatchListIdentifier:(id)a3 type:(int)a4 isHorizontallySrollingStyle:(BOOL)a5 fetchButtons:(BOOL)a6 completion:(id)a7;
+ (void)fetchWatchListStateForWatchListIdentifier:(id)a3 type:(int)a4 completion:(id)a5;
+ (void)generateMediaContainerWatchListReponseForWatchListIdentifier:(id)a3 type:(int)a4 completion:(id)a5;
+ (void)generateWatchListReponseForWatchListIdentifier:(id)a3 type:(int)a4 completion:(id)a5;
+ (void)updateStatusIsInWatchList:(BOOL)a3 watchListItemWithIdentifier:(id)a4 completion:(id)a5;
@end

@implementation SearchUIWatchListUtilities

+ (int64_t)wlkTypeForType:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return 1;
  }

  else
  {
    return qword_1DA272998[a3 - 1];
  }
}

+ (int)watchListTypeForType:(int)a3 isMediaContainer:(BOOL)a4
{
  if (a4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  if (a3)
  {
    return a3;
  }

  else
  {
    return v4;
  }
}

+ (void)generateWatchListReponseForWatchListIdentifier:(id)a3 type:(int)a4 completion:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = MEMORY[0x1E69E14E8];
  v10 = a3;
  v11 = [[v9 alloc] initWithCanonicalID:v10];

  [v11 setCaller:@"SearchUI"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__SearchUIWatchListUtilities_generateWatchListReponseForWatchListIdentifier_type_completion___block_invoke;
  v13[3] = &unk_1E85B2B70;
  v14 = v8;
  v12 = v8;
  [v11 makeRequestWithCompletion:v13 canonicalType:{objc_msgSend(a1, "wlkTypeForType:", v5)}];
}

+ (void)generateMediaContainerWatchListReponseForWatchListIdentifier:(id)a3 type:(int)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __107__SearchUIWatchListUtilities_generateMediaContainerWatchListReponseForWatchListIdentifier_type_completion___block_invoke;
  v12[3] = &unk_1E85B2C10;
  v14 = v9;
  v15 = a1;
  v16 = a4;
  v13 = v8;
  v10 = v9;
  v11 = v8;
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

+ (void)fetchWatchListStateForWatchListIdentifier:(id)a3 type:(int)a4 completion:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__SearchUIWatchListUtilities_fetchWatchListStateForWatchListIdentifier_type_completion___block_invoke;
  v10[3] = &unk_1E85B2AF0;
  v11 = v8;
  v9 = v8;
  [a1 fetchButtonsForWatchListIdentifier:a3 type:v5 isHorizontallySrollingStyle:1 fetchButtons:0 completion:v10];
}

+ (void)fetchButtonsForWatchListIdentifier:(id)a3 type:(int)a4 isHorizontallySrollingStyle:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = *&a4;
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __109__SearchUIWatchListUtilities_fetchButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_completion___block_invoke;
  v12[3] = &unk_1E85B2AF0;
  v13 = v10;
  v11 = v10;
  [a1 fetchButtonsForWatchListIdentifier:a3 type:v7 isHorizontallySrollingStyle:v6 fetchButtons:1 completion:v12];
}

+ (void)fetchButtonsForWatchListIdentifier:(id)a3 type:(int)a4 isHorizontallySrollingStyle:(BOOL)a5 fetchButtons:(BOOL)a6 completion:(id)a7
{
  v7 = a5;
  v8 = *&a4;
  v10 = fetchButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_fetchButtons_completion__onceToken;
  v11 = a7;
  v12 = a3;
  v14 = v12;
  if (v10 == -1)
  {
    v13 = v12;
  }

  else
  {
    +[SearchUIWatchListUtilities fetchButtonsForWatchListIdentifier:type:isHorizontallySrollingStyle:fetchButtons:completion:];
    v13 = v14;
  }

  [fetchButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_fetchButtons_completion__cache getButtonsForWatchListIdentifier:v13 type:v8 isHorizontallySrollingStyle:v7 completion:v11];
}

uint64_t __122__SearchUIWatchListUtilities_fetchButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_fetchButtons_completion___block_invoke()
{
  fetchButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_fetchButtons_completion__cache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)computeButtonsForWatchListIdentifier:(id)a3 type:(int)a4 isHorizontallySrollingStyle:(BOOL)a5 completion:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (v10)
  {
    v13 = objc_opt_class();
    if ((v8 & 0xFFFFFFFE) == 2)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __111__SearchUIWatchListUtilities_computeButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_completion___block_invoke;
      v19[3] = &unk_1E85B2C38;
      v21 = a1;
      v22 = a5;
      v20 = v12;
      [v13 generateMediaContainerWatchListReponseForWatchListIdentifier:v10 type:v8 completion:v19];
      v14 = v20;
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __111__SearchUIWatchListUtilities_computeButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_completion___block_invoke_2;
      v15[3] = &unk_1E85B2C60;
      v17 = a1;
      v18 = a5;
      v16 = v12;
      [v13 generateWatchListReponseForWatchListIdentifier:v10 type:v8 completion:v15];
      v14 = v16;
    }
  }

  else
  {
    (*(v11 + 2))(v11, 0, 0, 0);
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

+ (id)buttonsForPlayables:(id)a3 channels:(id)a4 currentEpisode:(id)a5 isUpNextable:(BOOL)a6 watchListState:(id)a7 isHorizontallySrollingStyle:(BOOL)a8
{
  v8 = a8;
  v83 = a6;
  v105 = *MEMORY[0x1E69E9840];
  v81 = a3;
  v12 = a4;
  v13 = a5;
  v82 = a7;
  v88 = v8;
  v14 = 4;
  if (v8)
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
  obj = v12;
  v15 = [obj countByEnumeratingWithState:&v99 objects:v104 count:16];
  v89 = v13;
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
      v20 = [v19 details];
      if (v20 && ([a1 channelHasBeenSeen:v20 seenChannels:v93] & 1) == 0)
      {
        v21 = [v13 playable];
        v22 = [v19 punchoutUrls];
        v23 = [v20 channelID];
        v24 = [v21 channelID];
        if ([v23 isEqual:v24])
        {
          v25 = [v19 seasonNumbers];
          v26 = [v13 seasonNumber];
          v27 = [v25 containsObject:v26];

          if (v27)
          {
            v28 = [v21 punchoutUrls];
            if (v28)
            {
              v13 = v89;
              v29 = [v89 seasonNumber];
              v30 = [v89 episodeNumber];
              v28 = v28;
              v31 = v22;
              v22 = v28;
              goto LABEL_20;
            }

            v30 = 0;
            v29 = 0;
            v13 = v89;
LABEL_21:

            goto LABEL_22;
          }
        }

        else
        {
        }

        if ([v20 isiTunes])
        {
          v28 = [v22 mutableCopy];
          v13 = v89;
          v32 = [v89 tvAppDeeplinkURL];
          v31 = [v32 absoluteString];

          if (v31)
          {
            [v28 setObject:v31 forKey:v84];
            v28 = v28;

            v30 = 0;
            v29 = 0;
            v22 = v28;
          }

          else
          {
            v30 = 0;
            v29 = 0;
          }

LABEL_20:

          goto LABEL_21;
        }

        v30 = 0;
        v29 = 0;
        v13 = v89;
LABEL_22:
        v33 = [v19 subscriptionOffers];
        v34 = [v33 firstObject];

        if (!v34 || v92)
        {
          v35 = [v21 tvAppDeeplinkURL];
          v36 = [v20 isSubscribed];
          v37 = [v13 seasonTitle];
          LOBYTE(v79) = v88;
          LOBYTE(v78) = v37 != 0;
          v38 = [a1 buttonForChannelDetails:v20 punchoutURLs:v22 tvAppDeeplinkURL:v35 isEntitled:v36 isContinuing:0 isContainerItem:1 hasDescriptiveSeasonTitle:v78 seasonNumber:v29 episodeNumber:v30 isHorizontallySrollingStyle:v79];

          if (v38)
          {
            [v90 addObject:v38];
          }

          v13 = v89;
        }

        else
        {
          v92 = [a1 buttonForChannelOffer:v34 channel:v19 episode:v13];
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
  v40 = v81;
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
        v48 = [v47 isEntitled];
        v49 = [v47 channelDetails];
        v50 = [a1 channelHasBeenSeen:v49 seenChannels:v93];

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
            v52 = [a1 buttonForPlayable:v47 isHorizontallySrollingStyle:v88];
            if (v52)
            {
              [v90 addObject:v52];
            }
          }

          else
          {
            v54 = [v47 bestStoreSubscriptionOffer];
            v92 = [a1 buttonForOffer:v54 playable:v47];
          }
        }

        v43 |= v48;
      }

      v42 = [v40 countByEnumeratingWithState:&v95 objects:v103 count:16];
    }

    while (v42);

    v55 = v92;
    if ((v43 & (v92 != 0)) == 1)
    {

      v55 = 0;
    }

    v13 = v89;
    v92 = v55;
    v56 = v55 != 0;
    v57 = v80 - v83 - v56;
    if (v44)
    {
      v58 = [v90 count];
      v59 = v87 < v57 && (v57 - v58) < 1;
      v60 = v59 ? 1 : v57 - v58;
      if (v60 >= 1)
      {
        v61 = objc_opt_new();
        v62 = [v44 bestStoreRentalOffer];
        if (v62)
        {
          v63 = [v44 bestStoreBuyOffer];
          v65 = v60 == 1 && v63 != 0;
        }

        else
        {
          v65 = 0;
        }

        v66 = [v44 isEntitled];
        if (v65 || v66)
        {
          v68 = [a1 buttonForPlayable:v44 isHorizontallySrollingStyle:v88];
          [v61 addObject:v68];
        }

        else
        {
          v67 = [v44 bestStoreRentalOffer];
          v68 = [a1 buttonForOffer:v67 playable:v44];

          if (v68)
          {
            [v61 addObject:v68];
          }

          v69 = [v44 bestStoreBuyOffer];
          v70 = [a1 buttonForOffer:v69 playable:v44];

          if (v70)
          {
            [v61 addObject:v70];
          }

          if (![v61 count])
          {
            v71 = [v44 storeOffers];
            v72 = [v71 lastObject];
            v73 = [a1 buttonForOffer:v72 playable:v44];

            if (v73)
            {
              [v61 addObject:v73];
            }

            v13 = v89;
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
    v57 = v80 - v83 - v56;
  }

  while ([v90 count] > v57)
  {
    [v90 removeLastObject];
  }

  if (v56)
  {
    [v90 addObject:v92];
  }

  if (v83)
  {
    v75 = objc_opt_new();
    [v75 setWatchListState:v82];
    [v75 setButtonType:3];
    [v90 addObject:v75];
  }

  v76 = v90;

  return v90;
}

+ (BOOL)channelHasBeenSeen:(id)a3 seenChannels:(id)a4
{
  v5 = a4;
  v6 = [a3 channelID];
  v7 = [v5 containsObject:v6];
  if ((v7 & 1) == 0)
  {
    [v5 addObject:v6];
  }

  return v7;
}

+ (id)buttonForPlayable:(id)a3 isHorizontallySrollingStyle:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 channelDetails];
  v8 = [v6 punchoutUrls];
  v9 = [v6 tvAppDeeplinkURL];
  v10 = [v6 isEntitled];
  v11 = [v6 playEvent];

  LOBYTE(v15) = a4;
  LOBYTE(v14) = 0;
  v12 = [a1 buttonForChannelDetails:v7 punchoutURLs:v8 tvAppDeeplinkURL:v9 isEntitled:v10 isContinuing:v11 != 0 isContainerItem:0 hasDescriptiveSeasonTitle:v14 seasonNumber:0 episodeNumber:0 isHorizontallySrollingStyle:v15];

  return v12;
}

+ (id)buttonForChannelDetails:(id)a3 punchoutURLs:(id)a4 tvAppDeeplinkURL:(id)a5 isEntitled:(BOOL)a6 isContinuing:(BOOL)a7 isContainerItem:(BOOL)a8 hasDescriptiveSeasonTitle:(BOOL)a9 seasonNumber:(id)a10 episodeNumber:(id)a11 isHorizontallySrollingStyle:(BOOL)a12
{
  v12 = a8;
  v13 = a7;
  v14 = a6;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v64 = a10;
  v20 = a11;
  v61 = [v17 sui_channelName];
  v63 = v20;
  if (([v17 isAppInstalled] & 1) != 0 || objc_msgSend(v17, "isFirstParty"))
  {
    v21 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69E1710]];
    v59 = v18;
    v22 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69E1708]];
    v23 = v22;
    if (!v14 || !v21 || (v20 ? (v24 = v64 == 0) : (v24 = 1), v24 && v12))
    {
      if (v19 | v22)
      {
        v25 = v61;
        if (v19)
        {
          v26 = v19;
        }

        else
        {
          v26 = [MEMORY[0x1E695DFF8] URLWithString:v22];
        }

        v29 = v26;
        if ([v17 isApSubscription])
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
      v29 = 0;
      goto LABEL_15;
    }

    v29 = [MEMORY[0x1E695DFF8] URLWithString:v21];
    if (v12)
    {
      os_unfair_lock_lock(&sSeasonTitleLock);
      v37 = sSeasonTitlesEnabled;
      os_unfair_lock_unlock(&sSeasonTitleLock);
      v38 = [v17 sui_seasonEpisodeLabel:v37 seasonTitleAvailable:a9 seasonNumber:v64 episodeNumber:v63];
      v39 = v38;
      v40 = MEMORY[0x1E696AEC0];
      if (a12)
      {
        v41 = [SearchUIUtilities localizedStringForKey:@"PLAY_EPISODE_FORMAT"];
        v42 = [SearchUIUtilities localizedStringForKey:@"PLAY"];
        v28 = [v40 stringWithValidatedFormat:v41 validFormatSpecifiers:@"%@ %@" error:0, v42, v39];

        v25 = v61;
      }

      else
      {
        v41 = v61;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v38, v61];
        v25 = v28 = 0;
      }
    }

    else
    {
      if (!v13)
      {
        if (a12)
        {
          v28 = [SearchUIUtilities localizedStringForKey:@"PLAY"];
        }

        else
        {
          v28 = 0;
        }

        v27 = 1;
LABEL_15:
        v25 = v61;
LABEL_36:
        v36 = objc_opt_new();
        if ([v17 isFirstParty])
        {
          v47 = [SearchUIUtilities bundleIdentifierForApp:18];
          [(SearchUIWatchListIconImage *)v36 setBundleIdentifier:v47];
        }

        else
        {
          v47 = [v17 appBundleIDs];
          [v47 firstObject];
          v62 = v17;
          v48 = v27;
          v49 = v29;
          v50 = v28;
          v51 = v21;
          v52 = v23;
          v53 = v25;
          v55 = v54 = v19;
          [(SearchUIWatchListIconImage *)v36 setBundleIdentifier:v55];

          v19 = v54;
          v25 = v53;
          v23 = v52;
          v21 = v51;
          v28 = v50;
          v29 = v49;
          v27 = v48;
          v17 = v62;
        }

        v33 = 0;
        v18 = v59;
        goto LABEL_40;
      }

      v46 = [SearchUIUtilities localizedStringForKey:@"CONTINUE"];
      v39 = v46;
      if (a12)
      {
        v28 = v46;
        v25 = v61;
      }

      else
      {
        v57 = MEMORY[0x1E696AEC0];
        v58 = [SearchUIUtilities localizedStringForKey:@"CONTINUE_IN_FORMAT"];
        v25 = [v57 stringWithValidatedFormat:v58 validFormatSpecifiers:@"%@ %@" error:0, v39, v61];

        v28 = 0;
      }
    }

    v27 = 1;
    goto LABEL_36;
  }

  v30 = v19;
  v31 = [v17 appStoreURL];

  if (!v31)
  {
    v29 = 0;
    v28 = 0;
    v36 = 0;
    v33 = 0;
    v44 = 0;
    v19 = v30;
    v25 = v61;
    v45 = v63;
    goto LABEL_43;
  }

  v28 = [SearchUIUtilities localizedStringForKey:@"INSTALL_BUTTON_TITLE"];
  v29 = [v17 appStoreURL];
  v32 = [v17 appAdamIDs];
  v33 = [v32 firstObject];

  if (a12)
  {
    v34 = [SearchUIWatchListIconImage alloc];
    v35 = [v17 images];
    v36 = [(SearchUIWatchListIconImage *)v34 initWithArtwork:v35];

    [(SearchUIWatchListIconImage *)v36 setSize:45.0, 45.0];
  }

  else
  {
    v36 = 0;
  }

  v27 = 2;
  v19 = v30;
  v25 = v61;
LABEL_40:
  v45 = v63;
  if (v29)
  {
    v44 = [a1 buttonWithTitle:v28 subtitle:v25 punchoutURL:v29 type:v27 image:v36 storeIdentifier:v33];
  }

  else
  {
    v44 = 0;
  }

LABEL_43:

  return v44;
}

+ (id)buttonForOffer:(id)a3 playable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 channelDetails];
  v9 = [v8 isFirstParty];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [v7 punchoutUrls];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69E1708]];
  v13 = [v10 URLWithString:v12];

  v14 = [v7 channelDetails];
  v15 = [v14 appBundleIDs];
  v16 = [v15 firstObject];

  if (v13)
  {
    v17 = v9 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    v18 = [SearchUIUtilities bundleIdentifierForApp:18];

    v19 = [v7 tvAppDeeplinkURL];

    v16 = v18;
    v13 = v19;
  }

  v20 = 0;
  if (v6 && v13)
  {
    v21 = [v6 sui_buttonTitle];
    v22 = [v7 channelDetails];
    v23 = [v22 sui_channelName];
    v24 = [v6 sui_buttonSubtitleWithServiceName:v23];

    if (v21)
    {
      v25 = objc_opt_new();
      [v25 setBundleIdentifier:v16];
      v20 = [a1 buttonWithTitle:v21 subtitle:v24 punchoutURL:v13 type:0 image:v25 storeIdentifier:0];

      v24 = v21;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

+ (id)buttonForChannelOffer:(id)a3 channel:(id)a4 episode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 tvAppDeeplinkURL];
  v11 = v10;
  v12 = 0;
  if (v8 && v10)
  {
    v13 = [v8 sui_buttonTitle];
    v14 = [v9 details];
    v15 = [v14 sui_channelName];
    v16 = [v8 sui_buttonSubtitleWithServiceName:v15];

    if (v13)
    {
      v17 = objc_opt_new();
      v18 = [SearchUIUtilities bundleIdentifierForApp:18];
      [v17 setBundleIdentifier:v18];

      v12 = [a1 buttonWithTitle:v13 subtitle:v16 punchoutURL:v11 type:0 image:v17 storeIdentifier:0];

      v16 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)buttonWithTitle:(id)a3 subtitle:(id)a4 punchoutURL:(id)a5 type:(unint64_t)a6 image:(id)a7 storeIdentifier:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_opt_new();
  [v18 setTitle:v17];

  [v18 setSubtitle:v16];
  [v18 setPunchoutURL:v15];

  [v18 setButtonType:a6];
  [v18 setThumbnailImage:v14];

  [v18 setStoreIdentifier:v13];

  return v18;
}

+ (void)updateStatusIsInWatchList:(BOOL)a3 watchListItemWithIdentifier:(id)a4 completion:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__SearchUIWatchListUtilities_updateStatusIsInWatchList_watchListItemWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E85B2B48;
  v17 = v6;
  v9 = v7;
  v15 = v9;
  v10 = v8;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  v12 = 0x1E69E14C0;
  if (!v6)
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