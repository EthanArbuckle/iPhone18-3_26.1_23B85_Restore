@interface SPBookmarkDatastoreToken
- (SPBookmarkDatastoreToken)initWithStore:(id)a3;
- (void)begin:(id)a3;
@end

@implementation SPBookmarkDatastoreToken

- (SPBookmarkDatastoreToken)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPBookmarkDatastoreToken;
  v6 = [(SPBookmarkDatastoreToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v7->_type = 3;
  }

  return v7;
}

- (void)begin:(id)a3
{
  v4 = a3;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v62 = *v5;
  v63 = v6;
  v64 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPBookmarkDatastoreToken begin:]";
  si_tracing_log_span_begin();
  v11 = [v4 queryContext];
  v12 = [v11 getTrimmedSearchString];
  v13 = [v12 mutableCopy];

  v14 = SSEnableSpotlightTopHitPersonalizedRanking();
  objc_initWeak(&location, v4);
  v15 = [v11 disabledBundles];
  v16 = PRSRankingSafariBundleString;
  if ([v15 containsObject:PRSRankingSafariBundleString])
  {

LABEL_6:
    v19 = +[SDController workQueue];
    v59[1] = _NSConcreteStackBlock;
    v59[2] = 3221225472;
    v59[3] = sub_10002D540;
    v59[4] = &unk_100091E58;
    objc_copyWeak(&v60, &location);
    v59[5] = self;
    md_tracing_dispatch_async_propagating();

    objc_destroyWeak(&v60);
    goto LABEL_24;
  }

  v17 = looksLikeURL();

  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ([v13 containsString:@"://"])
  {
    v18 = v13;
  }

  else
  {
    v18 = [NSString stringWithFormat:@"https://%@", v13];
  }

  v20 = v18;
  v56 = [NSURL URLWithString:v18];
  v55 = v20;
  if (v56 && ([v56 scheme], (v21 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v56, "host"), v22 = objc_claimAutoreleasedReturnValue(), v23 = v22 == 0, v22, v21, !v23))
  {
    v24 = objc_opt_new();
    v54 = objc_opt_new();
    v53 = objc_opt_new();
    [v53 setIconType:1];
    [v54 setThumbnail:v53];
    v25 = [SFRichText textWithString:v13];
    [v54 setTitle:v25];

    v26 = [SFPunchout punchoutWithURL:v56];
    v68 = v26;
    v27 = [NSArray arrayWithObjects:&v68 count:1];
    [v54 setPunchoutOptions:v27];

    v28 = [SFRichText textWithString:v13];
    v67 = v28;
    v29 = [NSArray arrayWithObjects:&v67 count:1];
    [v54 setDescriptions:v29];

    v30 = objc_opt_new();
    [v24 setInlineCard:v30];

    v66 = v54;
    v31 = [NSArray arrayWithObjects:&v66 count:1];
    v32 = [v24 inlineCard];
    [v32 setCardSections:v31];

    [v24 setContentURL:v55];
    [v24 setApplicationBundleIdentifier:v16];
    [v24 setSectionBundleIdentifier:v16];
    [v24 setResultBundleId:PRSRankingUserTypedURLBundleString];
    [v24 setType:2];
    [v24 setQueryId:{objc_msgSend(v4, "queryIdent")}];
    v33 = [@"userTypedURL-" stringByAppendingString:v13];
    [v24 setIdentifier:v33];

    [v24 setProtectionClass:NSFileProtectionCompleteUntilFirstUserAuthentication];
    if ((v14 & 1) == 0)
    {
      [v24 setIsSafariTopHit:1];
      [v24 setTopHit:SSSetTopHitWithReasonString()];
    }

    [v24 setForceNoTopHit:0];
    v34 = [v56 host];
    [v24 setCompletion:v34];

    v35 = SSCompactRankingAttrsAlloc();
    SSCompactRankingAttrsUpdateValue();
    SSCompactRankingAttrsUpdateValue();
    SSCompactRankingAttrsUpdateValue();
    v36 = [[PRSRankingItem alloc] initWithAttrs:v35];
    [v24 setRankingItem:v36];

    if (v14)
    {
      v37 = [v24 rankingItem];
      [v37 setBundleIDType:{objc_msgSend(v37, "bundleIDType") | 0x80}];
    }

    v38 = objc_opt_new();
    [v38 setMaxInitiallyVisibleResults:1];
    [v38 setBundleIdentifier:v16];
    v39 = [LSApplicationProxy applicationProxyForIdentifier:v16];
    v40 = [v39 localizedName];
    [v38 setTitle:v40];

    v65 = v24;
    v41 = [NSArray arrayWithObjects:&v65 count:1];
    [v38 setResults:v41];

    if (v14)
    {
      [v38 setDomain:1];
    }

    if (!self->_cancelled)
    {
      v42 = +[SDController workQueue];
      objc_copyWeak(v58, &location);
      v57 = v38;
      md_tracing_dispatch_async_propagating();

      objc_destroyWeak(v58);
    }
  }

  else
  {
    v43 = +[SDController workQueue];
    v58[1] = _NSConcreteStackBlock;
    v58[2] = 3221225472;
    v58[3] = sub_10002D598;
    v58[4] = &unk_100091E58;
    objc_copyWeak(v59, &location);
    v58[5] = self;
    md_tracing_dispatch_async_propagating();

    v44 = SPLogForSPLogCategoryDefault();
    v45 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v44, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      *buf = 138412290;
      v70 = v20;
      _os_log_impl(&_mh_execute_header, v44, ((v45 & 1) == 0), "Failed to create URL from query %@", buf, 0xCu);
    }

    objc_destroyWeak(v59);
  }

LABEL_24:
  objc_destroyWeak(&location);

  v46 = *v5;
  v47 = *(v5 + 8);
  v48 = *(v5 + 16);
  v49 = *(v5 + 24);
  v50 = *(v5 + 28);
  v51 = *(v5 + 32);
  si_tracing_log_span_end();
  v52 = v63;
  *v5 = v62;
  *(v5 + 16) = v52;
  *(v5 + 32) = v64;
}

@end