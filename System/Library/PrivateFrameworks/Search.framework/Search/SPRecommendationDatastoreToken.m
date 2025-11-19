@interface SPRecommendationDatastoreToken
- (SPRecommendationDatastoreToken)initWithStore:(id)a3;
- (id)buildSearchResultWithRecommendations:(id)a3 query:(id)a4;
- (void)begin:(id)a3;
@end

@implementation SPRecommendationDatastoreToken

- (SPRecommendationDatastoreToken)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPRecommendationDatastoreToken;
  v6 = [(SPRecommendationDatastoreToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v7->_type = 9;
  }

  return v7;
}

- (void)begin:(id)a3
{
  v4 = a3;
  v5 = [v4 queryContext];
  v6 = [v5 getTrimmedSearchString];
  v7 = [v6 mutableCopy];

  v8 = +[NSLocale currentLocale];
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("Query Queue", v9);

  v54[0] = 0;
  v11 = [[SREMusicRetrieval alloc] initWithLocale:v8 queue:v10 error:v54];
  v38 = v54[0];
  if (![v11 isMusicRecEligible:v7])
  {
    v26 = SPLogForSPLogCategoryTelemetry();
    v27 = [v4 externalID];
    if (v27)
    {
      v28 = v27;
      if (os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v28, "recommendationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v29 = +[SDController workQueue];
    v39 = v4;
    md_tracing_dispatch_async_propagating();

    v17 = v39;
    goto LABEL_29;
  }

  v12 = SSDefaultsGetResources();
  v13 = [[NSUUID alloc] initWithUUIDString:@"6ee794d6-a63f-11ed-afa1-0242ac120002"];
  [v12 logForTrigger:v13 queryID:{objc_msgSend(v5, "queryIdent")}];

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
    v31 = [v4 externalID];
    if (v31)
    {
      v32 = v31;
      if (os_signpost_enabled(v30))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v32, "recommendationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v33 = +[SDController workQueue];
    v40 = v4;
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
  [v11 retrieveMusicWithQuery:v7 queryID:{objc_msgSend(v4, "queryIdent")}];
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
  v21 = [v4 externalID];
  if (v21 && os_signpost_enabled(v20))
  {
    LOWORD(v44[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v21, "recommendationSpotlightLatency", " enableTelemetry=YES ", v44, 2u);
  }

  objc_initWeak(v44, v4);
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

  v37 = [(SPRecommendationDatastoreToken *)self buildSearchResultWithRecommendations:*(v49 + 5) query:v4];
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

- (id)buildSearchResultWithRecommendations:(id)a3 query:(id)a4
{
  v5 = a3;
  v55 = a4;
  v53 = [NSMutableArray arrayWithCapacity:3];
  v54 = +[NSMutableString string];
  v6 = 0;
  v52 = PRSRankingRecommendationSongBundleString;
  v56 = v5;
  do
  {
    if (v6 >= [v5 count])
    {
      break;
    }

    v7 = [v5 objectAtIndexedSubscript:v6];
    v58 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v7 trackId]);
    [v54 appendString:?];
    [v54 appendString:@" "];
    v8 = objc_opt_new();
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"media:%ld", [v7 trackId]);
    [v8 setIdentifier:v9];

    v10 = [v7 trackName];
    v11 = [SFText textWithString:v10];
    [v8 setTitle:v11];

    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"https://music.apple.com/us/album/close-friends/%ld?i=%ld", [v7 collectionId], objc_msgSend(v7, "trackId"));
    [v8 setCompletion:v12];

    v13 = [NSURL alloc];
    v14 = [v8 completion];
    v15 = [v13 initWithString:v14];
    [v8 setUrl:v15];

    [v8 setStoreIdentifier:@"278911476"];
    [v8 setSectionBundleIdentifier:v52];
    [v8 setSectionHeader:@"Apple Music"];
    [v8 setDomainName:@"media"];
    [v8 setMinimumRankOfTopHitToSuppressResult:15];
    [v8 setResultType:@"media"];
    [v8 setResultTemplate:@"generic"];
    [v8 setType:1];
    [v8 setQueryId:{objc_msgSend(v55, "queryIdent")}];
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

    v21 = [v19 punchout];
    [v21 setBundleIdentifier:@"com.apple.Music"];

    v22 = [v8 url];
    v62 = v22;
    v23 = [NSArray arrayWithObjects:&v62 count:1];
    v24 = [v19 punchout];
    [v24 setUrls:v23];

    [v17 setType:@"detailed_row"];
    v25 = [SFURLImage alloc];
    v26 = [NSURL alloc];
    v27 = [v7 artworkURL];
    v28 = [v26 initWithString:v27];
    v29 = [v25 initWithURL:v28];
    [v17 setThumbnail:v29];

    v30 = objc_alloc_init(SFRichText);
    [v17 setTitle:v30];

    v31 = [v17 title];
    [v31 setStarRating:0.0];

    v32 = [v17 title];
    [v32 setMaxLines:2];

    v33 = [v17 title];
    v34 = [v7 trackName];
    [v33 setText:v34];

    v35 = objc_alloc_init(SFRichText);
    v36 = [v7 artistName];
    [v35 setText:v36];

    v37 = objc_alloc_init(SFRichText);
    v38 = [v7 collectionName];
    [v37 setText:v38];

    v39 = objc_alloc_init(SFRichText);
    [v39 setMaxLines:0];
    if ([v7 trackExplicitness])
    {
      [v39 setContentAdvisory:@"Explicit"];
    }

    v40 = [v7 trackTimeMillis];
    v5 = v56;
    if (v40 >= 1000)
    {
      v41 = v40 / 1000;
      if ((v40 / 1000) >> 7 <= 0x2A2)
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

        v44 = [v17 footnote];
        [v44 setText:v42];

        v45 = [v17 footnote];
        [v45 setMaxLines:1];

        v5 = v56;
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
  v48 = [v55 queryIdent];
  if ((v48 - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    v49 = v48;
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