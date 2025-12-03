@interface SPRecommendationDatastoreToken
- (SPRecommendationDatastoreToken)initWithStore:(id)store;
- (id)buildSearchResultWithRecommendations:(id)recommendations query:(id)query;
- (void)begin:(id)begin;
@end

@implementation SPRecommendationDatastoreToken

- (SPRecommendationDatastoreToken)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = SPRecommendationDatastoreToken;
  v6 = [(SPRecommendationDatastoreToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v7->_type = 9;
  }

  return v7;
}

- (void)begin:(id)begin
{
  beginCopy = begin;
  queryContext = [beginCopy queryContext];
  getTrimmedSearchString = [queryContext getTrimmedSearchString];
  v7 = [getTrimmedSearchString mutableCopy];

  v8 = +[NSLocale currentLocale];
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("Query Queue", v9);

  v54[0] = 0;
  v11 = [[SREMusicRetrieval alloc] initWithLocale:v8 queue:v10 error:v54];
  v38 = v54[0];
  if (![v11 isMusicRecEligible:v7])
  {
    v26 = SPLogForSPLogCategoryTelemetry();
    externalID = [beginCopy externalID];
    if (externalID)
    {
      v28 = externalID;
      if (os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v28, "recommendationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v29 = +[SDController workQueue];
    v39 = beginCopy;
    md_tracing_dispatch_async_propagating();

    v17 = v39;
    goto LABEL_29;
  }

  v12 = SSDefaultsGetResources();
  v13 = [[NSUUID alloc] initWithUUIDString:@"6ee794d6-a63f-11ed-afa1-0242ac120002"];
  [v12 logForTrigger:v13 queryID:{objc_msgSend(queryContext, "queryIdent")}];

  LODWORD(v12) = SSShowMusicRec();
  v14 = logForCSLogCategoryRecs();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*warn* Music recommendation retrieval disabled from Trial.", buf, 2u);
    }

    v30 = SPLogForSPLogCategoryTelemetry();
    externalID2 = [beginCopy externalID];
    if (externalID2)
    {
      v32 = externalID2;
      if (os_signpost_enabled(v30))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v32, "recommendationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v33 = +[SDController workQueue];
    v40 = beginCopy;
    md_tracing_dispatch_async_propagating();

    v17 = v40;
    goto LABEL_29;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Starting Music recommendation retrieval.", buf, 2u);
  }

  v16 = dispatch_semaphore_create(0);
  *buf = 0;
  v49 = buf;
  v50 = 0x3032000000;
  v51 = sub_100004700;
  v52 = sub_100004710;
  v53 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100004718;
  v47[3] = &unk_100091E08;
  v47[4] = buf;
  [v11 setCandidatesHandler:v47];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100004784;
  v45[3] = &unk_100091E30;
  v17 = v16;
  v46 = v17;
  [v11 setCompletionHandler:v45];
  [v11 retrieveMusicWithQuery:v7 queryID:{objc_msgSend(beginCopy, "queryIdent")}];
  v18 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_1000621A8();
  }

  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  v19 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v44[0]) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Music recommendation retrieval ended.", v44, 2u);
  }

  v20 = SPLogForSPLogCategoryTelemetry();
  externalID3 = [beginCopy externalID];
  if (externalID3 && os_signpost_enabled(v20))
  {
    LOWORD(v44[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, externalID3, "recommendationSpotlightLatency", " enableTelemetry=YES ", v44, 2u);
  }

  objc_initWeak(v44, beginCopy);
  v22 = *(v49 + 5);
  if (!v22 || ![v22 count])
  {
    v34 = +[SDController workQueue];
    v42[1] = _NSConcreteStackBlock;
    v42[2] = 3221225472;
    v42[3] = sub_1000047D4;
    v42[4] = &unk_100091E58;
    objc_copyWeak(&v43, v44);
    v42[5] = self;
    md_tracing_dispatch_async_propagating();

    objc_destroyWeak(&v43);
    objc_destroyWeak(v44);

    _Block_object_dispose(buf, 8);
LABEL_29:
    v35 = v38;
    goto LABEL_30;
  }

  v37 = [(SPRecommendationDatastoreToken *)self buildSearchResultWithRecommendations:*(v49 + 5) query:beginCopy];
  v23 = objc_opt_new();
  [v23 setPinToTop:1];
  v24 = v23;
  [v24 setMaxInitiallyVisibleResults:1];
  [v24 setBundleIdentifier:PRSRankingRecommendationSongBundleString];
  [v24 setTitle:@"Apple Music"];
  [v24 setResults:v37];
  if (self->_cancelled)
  {
    v25 = logForCSLogCategoryRecs();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000621DC();
    }
  }

  else
  {
    v36 = +[SDController workQueue];
    objc_copyWeak(v42, v44);
    v41 = v24;
    md_tracing_dispatch_async_propagating();

    objc_destroyWeak(v42);
  }

  v35 = v38;

  objc_destroyWeak(v44);
  _Block_object_dispose(buf, 8);

LABEL_30:
}

- (id)buildSearchResultWithRecommendations:(id)recommendations query:(id)query
{
  recommendationsCopy = recommendations;
  queryCopy = query;
  v53 = [NSMutableArray arrayWithCapacity:3];
  v54 = +[NSMutableString string];
  v6 = 0;
  v52 = PRSRankingRecommendationSongBundleString;
  v56 = recommendationsCopy;
  do
  {
    if (v6 >= [recommendationsCopy count])
    {
      break;
    }

    v7 = [recommendationsCopy objectAtIndexedSubscript:v6];
    v58 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v7 trackId]);
    [v54 appendString:?];
    [v54 appendString:@" "];
    v8 = objc_opt_new();
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"media:%ld", [v7 trackId]);
    [v8 setIdentifier:v9];

    trackName = [v7 trackName];
    v11 = [SFText textWithString:trackName];
    [v8 setTitle:v11];

    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"https://music.apple.com/us/album/close-friends/%ld?i=%ld", [v7 collectionId], objc_msgSend(v7, "trackId"));
    [v8 setCompletion:v12];

    v13 = [NSURL alloc];
    completion = [v8 completion];
    v15 = [v13 initWithString:completion];
    [v8 setUrl:v15];

    [v8 setStoreIdentifier:@"278911476"];
    [v8 setSectionBundleIdentifier:v52];
    [v8 setSectionHeader:@"Apple Music"];
    [v8 setDomainName:@"media"];
    [v8 setMinimumRankOfTopHitToSuppressResult:15];
    [v8 setResultType:@"media"];
    [v8 setResultTemplate:@"generic"];
    [v8 setType:1];
    [v8 setQueryId:{objc_msgSend(queryCopy, "queryIdent")}];
    v16 = objc_alloc_init(SFCard);
    v17 = objc_alloc_init(SFDetailedRowCardSection);
    v63 = v17;
    v18 = [NSArray arrayWithObjects:&v63 count:1];
    v57 = v16;
    [v16 setCardSections:v18];

    v19 = objc_alloc_init(SFOpenPunchoutCommand);
    [v17 setCommand:v19];
    [v19 setCommandDetail:@"open_media"];
    v20 = objc_alloc_init(SFPunchout);
    [v19 setPunchout:v20];

    punchout = [v19 punchout];
    [punchout setBundleIdentifier:@"com.apple.Music"];

    v22 = [v8 url];
    v62 = v22;
    v23 = [NSArray arrayWithObjects:&v62 count:1];
    punchout2 = [v19 punchout];
    [punchout2 setUrls:v23];

    [v17 setType:@"detailed_row"];
    v25 = [SFURLImage alloc];
    v26 = [NSURL alloc];
    artworkURL = [v7 artworkURL];
    v28 = [v26 initWithString:artworkURL];
    v29 = [v25 initWithURL:v28];
    [v17 setThumbnail:v29];

    v30 = objc_alloc_init(SFRichText);
    [v17 setTitle:v30];

    title = [v17 title];
    [title setStarRating:0.0];

    title2 = [v17 title];
    [title2 setMaxLines:2];

    title3 = [v17 title];
    trackName2 = [v7 trackName];
    [title3 setText:trackName2];

    v35 = objc_alloc_init(SFRichText);
    artistName = [v7 artistName];
    [v35 setText:artistName];

    v37 = objc_alloc_init(SFRichText);
    collectionName = [v7 collectionName];
    [v37 setText:collectionName];

    v39 = objc_alloc_init(SFRichText);
    [v39 setMaxLines:0];
    if ([v7 trackExplicitness])
    {
      [v39 setContentAdvisory:@"Explicit"];
    }

    trackTimeMillis = [v7 trackTimeMillis];
    recommendationsCopy = v56;
    if (trackTimeMillis >= 1000)
    {
      v41 = trackTimeMillis / 1000;
      if ((trackTimeMillis / 1000) >> 7 <= 0x2A2)
      {
        if (v41 >= 0xE10)
        {
          [NSString stringWithFormat:@"%lu:%02lu:%02lu", v41 / 0xE10, v41 % 0xE10 / 0x3C, v41 % 0x3C];
        }

        else
        {
          [NSString stringWithFormat:@"%lu:%02lu", v41 % 0xE10 / 0x3C, v41 % 0x3C, v51];
        }
        v42 = ;
        v43 = objc_alloc_init(SFRichText);
        [v17 setFootnote:v43];

        footnote = [v17 footnote];
        [footnote setText:v42];

        footnote2 = [v17 footnote];
        [footnote2 setMaxLines:1];

        recommendationsCopy = v56;
      }
    }

    v61[0] = v35;
    v61[1] = v37;
    v61[2] = v39;
    v46 = [NSArray arrayWithObjects:v61 count:3];
    [v17 setDescriptions:v46];

    [v8 setInlineCard:v57];
    [v53 addObject:v8];

    ++v6;
  }

  while (v6 != 3);
  v47 = os_log_create("com.apple.corespotlight", "recs");
  queryIdent = [queryCopy queryIdent];
  if ((queryIdent - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    v49 = queryIdent;
    if (os_signpost_enabled(v47))
    {
      *buf = 138412290;
      v60 = v54;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_EVENT, v49, "SRERenderingResults", "AdamIDs: %@", buf, 0xCu);
    }
  }

  return v53;
}

@end