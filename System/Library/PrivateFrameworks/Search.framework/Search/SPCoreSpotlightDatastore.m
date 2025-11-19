@interface SPCoreSpotlightDatastore
+ (BOOL)_isKeyboardCJK:(id)a3;
+ (SPCoreSpotlightDatastore)sharedInstance;
+ (id)_makeUniqueFetchAttributesWithAttributes:(id)a3 extraAttributes:(id)a4;
+ (id)removedDuplicatePhotosSectionsFromSections:(id)a3 isPhotosScopedSearch:(BOOL)a4;
+ (id)sectionWithBundleIdentifier:(id)a3 andAddToMap:(id)a4;
+ (void)_handleRemoteProxyError:(id)a3;
+ (void)initialize;
+ (void)modifyBatchSize:(unint64_t *)a3 batchIncrement:(unint64_t *)a4 batches:(unint64_t *)a5 withSectionsCount:(unint64_t)a6;
+ (void)setButtonOnPhotosInAppSection:(id)a3 withQuery:(id)a4 queryString:(id)a5 queryParams:(id)a6;
+ (void)updatePhoneFavorites;
- (BOOL)topHitNominatedByPommesScoringforBundleIdentifier:(id)a3;
- (id)_topHitQueryParametersForSearchString:(id)a3 searchEntities:(id)a4 contextIdentifier:(id)a5 queryKind:(unint64_t)a6 needsFuzzy:(BOOL)a7 checkForMath:(BOOL)a8 isCJK:(BOOL)a9 disableNLP:(BOOL)a10 disableOCR:(BOOL)a11 previousQueryKind:(unint64_t)a12 clientBundle:(id)a13 keyboardLanguage:(id)a14 queryID:(int64_t)a15;
- (id)coreSpotlightQueryTaskWithQuery:(id)a3 reuseTask:(id)a4;
- (id)performQuery:(id)a3 isCorrectedQuery:(BOOL)a4 reuseTask:(id)a5 needsFuzzy:(BOOL)a6 pommesRewrite:(id)a7 embeddingsRequery:(BOOL)a8;
- (id)rankingQueriesAddingQueryTerms:(id)a3 rankingQueries:(id)a4;
- (id)taskForTopHitQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7;
- (id)taskForTopHitQueryWithQueryString:(id)a3 queryContext:(id)a4 resultsHandler:(id)a5 completionHandler:(id)a6;
- (void)activate;
- (void)clearInput;
- (void)deactivate;
- (void)dealloc;
- (void)hideIrrelevantCalendarResultsForSection:(id)a3;
- (void)performQueryRewriteForQuery:(id)a3 withCorrection:(id)a4 task:(id)a5;
- (void)preheat;
- (void)processSection:(id)a3 forQuery:(id)a4 rawQuery:(id)a5 usingTopHitThreshold:;
- (void)processUserActivitiesForSection:(id)a3;
- (void)removeDuplicatesInSection:(id)a3 query:(id)a4;
- (void)sortResultsInSection:(id)a3 currentTime:(double)a4;
- (void)updateCoreSuggestionsSection:(id)a3;
- (void)updateMailVIPList;
@end

@implementation SPCoreSpotlightDatastore

+ (SPCoreSpotlightDatastore)sharedInstance
{
  if (qword_1000A8448 != -1)
  {
    sub_100062FC4();
  }

  v3 = qword_1000A8440;

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v46 = a1;
    v3 = SSSectionIdentifierSyndicatedPhotos;
    v51[0] = SSSectionIdentifierSyndicatedLinks;
    v51[1] = SSSectionIdentifierSyndicatedPhotos;
    v4 = SSSectionIdentifierSyndicatedPhotosMessages;
    v5 = SSSectionIdentifierSyndicatedPhotosNotes;
    v51[2] = SSSectionIdentifierSyndicatedPhotosMessages;
    v51[3] = SSSectionIdentifierSyndicatedPhotosNotes;
    v6 = SSSectionIdentifierSyndicatedPhotosFiles;
    v7 = SSSectionIdentifierSyndicatedPhotosFromPhotos;
    v51[4] = SSSectionIdentifierSyndicatedPhotosFiles;
    v51[5] = SSSectionIdentifierSyndicatedPhotosFromPhotos;
    v8 = SSPhotosBundleIdentifier;
    v51[6] = SSContactsBundleIdentifier;
    v51[7] = SSPhotosBundleIdentifier;
    v9 = [NSArray arrayWithObjects:v51 count:8];
    v10 = [NSSet setWithArray:v9];
    v11 = qword_1000A8460;
    qword_1000A8460 = v10;

    v12 = [[NSSet alloc] initWithObjects:{@"com.apple.application", @"com.apple.mobilesafari", @"com.apple.Preferences", @"com.apple.MobileAddressBook", @"com.apple.shortcuts", 0}];
    v13 = qword_1000A8470;
    qword_1000A8470 = v12;

    v50[0] = v3;
    v50[1] = v4;
    v50[2] = v5;
    v50[3] = v6;
    v50[4] = v7;
    v50[5] = v8;
    v14 = [NSArray arrayWithObjects:v50 count:6];
    v15 = [NSSet setWithArray:v14];
    v16 = qword_1000A8468;
    qword_1000A8468 = v15;

    v17 = [NSSet alloc];
    v49 = v3;
    v18 = [NSArray arrayWithObjects:&v49 count:1];
    v19 = [v17 initWithArray:v18];
    v20 = qword_1000A8450;
    qword_1000A8450 = v19;

    v21 = [NSSet alloc];
    v48[0] = v4;
    v48[1] = v5;
    v48[2] = v6;
    v48[3] = v7;
    v22 = [NSArray arrayWithObjects:v48 count:4];
    v23 = [v21 initWithArray:v22];
    v24 = qword_1000A8458;
    qword_1000A8458 = v23;

    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = qword_1000A8478;
    qword_1000A8478 = v25;

    v27 = [NSUserDefaults alloc];
    v28 = [v27 initWithSuiteName:SpotlightDaemonBundleID];
    v29 = qword_1000A8480;
    qword_1000A8480 = v28;

    byte_1000A8488 = os_variant_has_internal_diagnostics();
    qword_1000A8490 = [qword_1000A8480 integerForKey:@"meContactExists"];
    v30 = [qword_1000A8480 objectForKey:@"meContactIdentifier"];
    v31 = qword_1000A8428;
    qword_1000A8428 = v30;

    v32 = [qword_1000A8480 objectForKey:@"meEmailAddresses"];
    v33 = qword_1000A8430;
    qword_1000A8430 = v32;

    v34 = dispatch_group_create();
    v35 = qword_1000A8498;
    qword_1000A8498 = v34;

    if (byte_1000A8488 == 1)
    {
      v36 = NSHomeDirectory();
      v37 = [v36 stringByAppendingString:@"/Library/Logs/CrashReporter/DiagnosticLogs/Search/Ranking"];

      v38 = +[NSFileManager defaultManager];
      [v38 createDirectoryAtPath:v37 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v39 = +[SRResourcesManager sharedResourcesManager];
    [v39 loadAllParameters];

    +[SSRankingManager reloadRankingParametersFromTrial];
    +[SSRankingManager getSuggestionsRankingThresholds];
    SISetCompletionRankingWeights();
    v40 = qword_1000A8498;
    v41 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100033300;
    block[3] = &unk_1000923B0;
    block[4] = v46;
    dispatch_group_async(v40, v41, block);

    v42 = [NSOrderedSet alloc];
    v43 = rankingAttributeNameArray();
    v44 = [v42 initWithArray:v43];
    v45 = qword_1000A84B0;
    qword_1000A84B0 = v44;
  }
}

+ (void)_handleRemoteProxyError:(id)a3
{
  v3 = a3;
  v4 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100063054(v3);
  }
}

- (void)updateMailVIPList
{
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDVIPServicesProtocol];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000338C8;
  v8[3] = &unk_100091E30;
  v8[4] = self;
  v4 = [MSXPCService remoteProxyForXPCInterface:v3 connectionErrorHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003391C;
  v6[3] = &unk_100093300;
  v7 = os_transaction_create();
  v5 = v7;
  [v4 orderedVIPAddressesAndUnreadCountsWithCompletion:v6];
}

+ (void)updatePhoneFavorites
{
  v2 = +[CNFavorites sharedInstance];
  v3 = [v2 entries];
  v4 = [v3 copy];

  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) contactProperty];
        v12 = [v11 contact];

        v13 = [v12 identifier];
        [v5 addObject:v13];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&unk_1000A84B8);
  v14 = [v5 copy];
  v15 = qword_1000A8438;
  qword_1000A8438 = v14;

  os_unfair_lock_unlock(&unk_1000A84B8);
}

- (void)dealloc
{
  notify_cancel(self->_changedToken);
  v3.receiver = self;
  v3.super_class = SPCoreSpotlightDatastore;
  [(SPCoreSpotlightDatastore *)&v3 dealloc];
}

- (void)preheat
{
  v2 = si_tracing_current_span();
  v16 = *v2;
  v17 = *(v2 + 16);
  v18 = *(v2 + 32);
  v3 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  *v2 = v3;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v5;
  *(v2 + 28) = 102;
  *(v2 + 32) = "[SPCoreSpotlightDatastore preheat]";
  si_tracing_log_span_begin();
  v7 = +[SDController rankQueue];
  v8 = qos_class_self();
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, &stru_100093320);
  tracing_dispatch_async();

  v10 = *v2;
  v11 = *(v2 + 8);
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v14 = *(v2 + 28);
  v15 = *(v2 + 32);
  si_tracing_log_span_end();
  *v2 = v16;
  *(v2 + 16) = v17;
  *(v2 + 32) = v18;
}

- (void)activate
{
  v3 = si_tracing_current_span();
  v4 = *(v3 + 16);
  v39 = *v3;
  v40 = v4;
  v41 = *(v3 + 32);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightDatastore activate]";
  si_tracing_log_span_begin();
  v9 = *(self + 8);
  if ((v9 & 0x20) == 0)
  {
    v10 = +[SDController workQueue];
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &stru_100093340);
    tracing_dispatch_async();

    if (*(self + 57))
    {
      v12 = dispatch_get_global_queue(25, 0);
      tracing_dispatch_async();

      *(self + 57) &= ~1u;
    }

    v13 = +[PRSModelManager sharedModelManager];
    [v13 activate];

    v14 = +[CSFileProviderContainerCache sharedInstance];
    [v14 refreshCache];

    v15 = +[MCProfileConnection sharedConnection];
    *(self + 8) = *(self + 8) & 0xFB | (4 * ([v15 effectiveBoolValueForSetting:MCFeatureExplicitContentAllowed] != 2));
    *(self + 8) = *(self + 8) & 0xF7 | (8 * ([v15 effectiveBoolValueForSetting:MCFeatureMusicVideosAllowed] != 2));
    v16 = [v15 effectiveValueForSetting:MCFeatureMaximumMoviesRating];
    maxMovieRating = self->_maxMovieRating;
    self->_maxMovieRating = v16;

    v18 = [v15 effectiveValueForSetting:MCFeatureMaximumTVShowsRating];
    maxTVShowRating = self->_maxTVShowRating;
    self->_maxTVShowRating = v18;

    if ([v15 isBookstoreEroticaAllowed])
    {
      v20 = 16;
    }

    else
    {
      v20 = 0;
    }

    *(self + 8) = *(self + 8) & 0xEF | v20;
    v21 = SPFastHiddenAppsGetNoBuild();
    v22 = [v21 mutableCopy];

    v23 = +[SDAppUninstallMonitor applicationsExcludedFromUninstall];
    [v22 minusSet:v23];

    v24 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v43 = [v22 count];
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%lu hiddenApps set during activate", buf, 0xCu);
    }

    v25 = [v22 allObjects];
    v26 = qword_1000A84C0;
    qword_1000A84C0 = v25;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034434;
    block[3] = &unk_1000921C8;
    block[4] = self;
    if (qword_1000A84C8 != -1)
    {
      dispatch_once(&qword_1000A84C8, block);
    }

    v9 = *(self + 8);
  }

  *(self + 8) = v9 | 0x20;
  v27 = atomic_load(&dword_1000A8420);
  if (v27 <= 0)
  {
    [(SPCoreSpotlightDatastore *)self preheat];
    atomic_store(1u, &dword_1000A8420);
  }

  else
  {
    atomic_fetch_add(&dword_1000A8420, 1u);
  }

  os_unfair_lock_lock(&unk_1000A84D0);
  v28 = +[SSRankingFeedbackHandler copyRenderEngagementCounts];
  renderEngagementCounts = self->_renderEngagementCounts;
  self->_renderEngagementCounts = v28;

  os_unfair_lock_unlock(&unk_1000A84D0);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100034510;
  v37[3] = &unk_1000921C8;
  v37[4] = self;
  if (qword_1000A84D8 != -1)
  {
    dispatch_once(&qword_1000A84D8, v37);
  }

  v30 = *v3;
  v31 = *(v3 + 8);
  v32 = *(v3 + 16);
  v33 = *(v3 + 24);
  v34 = *(v3 + 28);
  v35 = *(v3 + 32);
  si_tracing_log_span_end();
  v36 = v40;
  *v3 = v39;
  *(v3 + 16) = v36;
  *(v3 + 32) = v41;
}

- (void)deactivate
{
  v3 = si_tracing_current_span();
  v22 = *v3;
  v23 = *(v3 + 16);
  v24 = *(v3 + 32);
  v4 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v3 + 8);
  v7 = *(v3 + 24);
  *v3 = v4;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v6;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightDatastore deactivate]";
  si_tracing_log_span_begin();
  v8 = *(self + 8);
  if ((v8 & 0x20) != 0)
  {
    v9 = +[SRResourcesManager sharedResourcesManager];
    [v9 loadAllParameters];

    +[SSRankingManager reloadRankingParametersFromTrial];
    +[SSRankingManager getSuggestionsRankingThresholds];
    SISetCompletionRankingWeights();
    v10 = +[PRSModelManager sharedModelManager];
    [v10 deactivate];

    v11 = +[PRSModelManager sharedModelManager];
    [v11 triggerUpdate];

    [(SPCoreSpotlightDatastore *)self updateMailVIPList];
    [objc_opt_class() updatePhoneFavorites];
    os_unfair_lock_lock(&unk_1000A84B8);
    v12 = qword_1000A84A0;
    v13 = qword_1000A8438;
    os_unfair_lock_unlock(&unk_1000A84B8);
    [PRSQueryRankingConfiguration updateMailVIP:v12 phoneFavorites:v13 meEmailAddresses:qword_1000A8430];
    +[PRSRankingItemRanker clearState];
    v14 = +[SDController workQueue];
    v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &stru_100093380);
    tracing_dispatch_async();

    v8 = *(self + 8);
  }

  *(self + 8) = v8 & 0xDF;
  v16 = *v3;
  v17 = *(v3 + 8);
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  v20 = *(v3 + 28);
  v21 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v22;
  *(v3 + 16) = v23;
  *(v3 + 32) = v24;
}

- (void)clearInput
{
  v3 = si_tracing_current_span();
  v16 = *v3;
  v17 = *(v3 + 16);
  v18 = *(v3 + 32);
  v4 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v3 + 8);
  v7 = *(v3 + 24);
  *v3 = v4;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v6;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightDatastore clearInput]";
  si_tracing_log_span_begin();
  os_unfair_lock_lock(&unk_1000A84D0);
  v8 = +[SSRankingFeedbackHandler copyRenderEngagementCounts];
  renderEngagementCounts = self->_renderEngagementCounts;
  self->_renderEngagementCounts = v8;

  os_unfair_lock_unlock(&unk_1000A84D0);
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v16;
  *(v3 + 16) = v17;
  *(v3 + 32) = v18;
}

- (void)updateCoreSuggestionsSection:(id)a3
{
  v37 = a3;
  v3 = si_tracing_current_span();
  v4 = *(v3 + 16);
  v46 = *v3;
  v47 = v4;
  v48 = *(v3 + 32);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightDatastore updateCoreSuggestionsSection:]";
  si_tracing_log_span_begin();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [v37 results];
  v10 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v43;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v42 + 1) + 8 * v13);
        if (v14)
        {
          v16 = [*(*(&v42 + 1) + 8 * v13) relatedBundleID];
          v17 = [v14 isEqualToString:v16];

          if ((v17 & 1) == 0)
          {

            goto LABEL_14;
          }
        }

        v11 = [v15 relatedBundleID];

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    if (v11)
    {
      v35 = [SDLocUtilities displayNameForBundleIdentifer:v11];
      if (v35)
      {
        v18 = [qword_1000A8478 localizedStringForKey:@"DOMAIN_PSEUDOCONTACT_TEMPLATE" value:&stru_100094040 table:@"Search"];
        v36 = [NSString stringWithFormat:v18, v35];

        v19 = 0;
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_14:

    v11 = 0;
  }

  v36 = [qword_1000A8478 localizedStringForKey:@"DOMAIN_PSEUDOCONTACT_APPS" value:&stru_100094040 table:@"Search"];
  v35 = 0;
  v19 = 1;
LABEL_16:
  [v37 setTitle:v36];
  if (v19)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = [v37 results];
    v21 = [v20 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v21)
    {
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          v25 = [v24 relatedBundleID];

          if (v25)
          {
            v26 = [v24 relatedBundleID];
            v27 = [SDLocUtilities displayNameForBundleIdentifer:v26];
            [v24 setFootnote:v27];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v21);
    }
  }

  v28 = *v3;
  v29 = *(v3 + 8);
  v30 = *(v3 + 16);
  v31 = *(v3 + 24);
  v32 = *(v3 + 28);
  v33 = *(v3 + 32);
  si_tracing_log_span_end();
  v34 = v47;
  *v3 = v46;
  *(v3 + 16) = v34;
  *(v3 + 32) = v48;
}

- (BOOL)topHitNominatedByPommesScoringforBundleIdentifier:(id)a3
{
  v3 = qword_1000A84E8;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1000631B4();
  }

  v5 = [qword_1000A84E0 containsObject:v4];

  return v5;
}

- (void)processSection:(id)a3 forQuery:(id)a4 rawQuery:(id)a5 usingTopHitThreshold:
{
  v7 = v6;
  v8 = v5;
  v11 = a3;
  v127 = a4;
  v118 = a5;
  v12 = si_tracing_current_span();
  v13 = *(v12 + 16);
  v147 = *v12;
  v148 = v13;
  v149 = *(v12 + 32);
  v14 = *v12;
  spanid = si_tracing_calc_next_spanid();
  v16 = *(v12 + 8);
  v17 = *(v12 + 24);
  *v12 = v14;
  *(v12 + 8) = spanid;
  *(v12 + 16) = v16;
  *(v12 + 28) = 102;
  *(v12 + 32) = "[SPCoreSpotlightDatastore processSection:forQuery:rawQuery:usingTopHitThreshold:]";
  si_tracing_log_span_begin();
  v119 = v12;
  v18 = [v127 isPeopleSearch];
  v19 = SPMaxVisibleResultsCountPerSection();
  v20 = [v11 bundleIdentifier];
  IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

  v22 = 50;
  if (!IsSyndicatedPhotos)
  {
    v22 = v19;
  }

  if (!(v18 & 1 | ((IsSyndicatedPhotos & 1) == 0)))
  {
    v23 = [v127 isPhotosSearch];
    v22 = 20;
    if (v23)
    {
      v22 = 50;
    }
  }

  if (v18)
  {
    v22 = 50;
  }

  if (v22 <= 0)
  {
    v24 = 3;
  }

  else
  {
    v24 = v22;
  }

  [v11 setMaxInitiallyVisibleResults:v24];
  v25 = [v11 bundleIdentifier];
  v121 = [SDLocUtilities displayNameForBundleIdentifer:v25];

  if (v121)
  {
    [v11 setTitle:v121];
  }

  v26 = [v11 bundleIdentifier];
  v27 = [v26 isEqualToString:CoreSuggestionsBundleID];

  if (v27)
  {
    [(SPCoreSpotlightDatastore *)self updateCoreSuggestionsSection:v11];
  }

  v28 = [v11 title];

  if (!v28)
  {
    [v11 setTitle:@"?"];
    [v11 setResults:&__NSArray0__struct];
  }

  v29 = [v11 bundleIdentifier];
  v30 = [v29 isEqual:SafariBundleID];

  v117 = v30;
  if (v30)
  {
    EvaluatorWithBlock = _MDCreateSimpleQueryEvaluatorWithBlock();
    if (EvaluatorWithBlock)
    {
      _MDSimpleQuerySetWidcardAttributes();
    }

    v120 = EvaluatorWithBlock;
    v126 = objc_alloc_init(NSMutableSet);
    v124 = objc_alloc_init(NSMutableDictionary);
    v122 = objc_alloc_init(NSMutableSet);
    v130 = objc_alloc_init(NSMutableDictionary);
    v128 = objc_alloc_init(NSMutableSet);
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v32 = [v11 resultSet];
    v33 = [v32 countByEnumeratingWithState:&v143 objects:v154 count:16];
    if (v33)
    {
      obj = v32;
      v137 = *v144;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v144 != v137)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v143 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v36 = [v35 contentURL];
            if (v36)
            {
              v37 = [v35 title];
              v38 = [v37 text];
              v39 = v38 == 0;

              if (!v39)
              {
                v40 = [v35 contentURL];
                v41 = [NSURL URLWithString:v40];

                if (!v41)
                {
                  goto LABEL_62;
                }

                v42 = [NSURLComponents componentsWithURL:v41 resolvingAgainstBaseURL:1];
                v43 = v42;
                if (!v42)
                {
                  goto LABEL_61;
                }

                [v42 setQuery:0];
                [v43 setFragment:0];
                v133 = v43;
                v131 = [v43 string];
                v135 = [v130 objectForKey:?];
                v44 = [v35 title];
                v45 = [v44 text];
                v134 = [v135 objectForKey:v45];

                if (v134)
                {
                  v46 = [v134 contentURL];
                  v47 = [v46 length];
                  v48 = [v35 contentURL];
                  LOBYTE(v47) = v47 > [v48 length];

                  if (v47)
                  {
                    [v128 addObject:v134];
                    v49 = [v35 title];
                    v132 = [v49 text];
                    [v135 setObject:v35 forKey:v132];
                    goto LABEL_59;
                  }

                  [v128 addObject:v35];
LABEL_60:

                  v43 = v133;
LABEL_61:

LABEL_62:
                  continue;
                }

                if (!v135)
                {
                  v135 = objc_alloc_init(NSMutableDictionary);
                  [v130 setObject:v135 forKey:v131];
                }

                v50 = [v35 title];
                v51 = [v50 text];
                [v135 setObject:v35 forKey:v51];

                [v133 setPath:@"/"];
                v52 = [v133 URL];
                v132 = [v52 host];
                v53 = [v52 scheme];
                v129 = v52;
                if (v53)
                {
                  v54 = v132 == 0;
                }

                else
                {
                  v54 = 1;
                }

                v55 = !v54;

                if ((v55 & 1) == 0)
                {
                  goto LABEL_58;
                }

                v56 = [v129 scheme];
                v125 = [v56 caseInsensitiveCompare:@"https"];

                v49 = v129;
                if ([v129 isEqual:v41])
                {
                  [v126 addObject:v132];
                  [v124 removeObjectForKey:v132];
                  [v122 removeObject:v132];
LABEL_59:

                  goto LABEL_60;
                }

                if ([v126 containsObject:v132])
                {
                  goto LABEL_59;
                }

                v57 = [v124 objectForKeyedSubscript:v132];
                if (v57)
                {
                  v58 = [v122 containsObject:v132];
                  if (v125)
                  {
                    v59 = 1;
                  }

                  else
                  {
                    v59 = v58;
                  }

                  if ((v120 == 0) | v59 & 1)
                  {
                    goto LABEL_58;
                  }
                }

                else if (!v120)
                {
LABEL_58:
                  v49 = v129;
                  goto LABEL_59;
                }

                if (_MDSimpleQueryObjectMatches())
                {
                  v60 = [v35 title];
                  v61 = [v60 text];
                  v62 = _MDStringPrefixOfString() == -1;

                  if (v62)
                  {
                    v63 = objc_opt_new();
                    v116 = objc_opt_new();
                    v114 = objc_opt_new();
                    [v114 setBundleIdentifier:SafariBundleID];
                    [v116 setThumbnail:v114];
                    v64 = [SFRichText textWithString:v132];
                    [v116 setTitle:v64];

                    v65 = [SFPunchout punchoutWithURL:v129];
                    v153 = v65;
                    v66 = [NSArray arrayWithObjects:&v153 count:1];
                    [v116 setPunchoutOptions:v66];

                    v67 = [SFRichText textWithString:v132];
                    v152 = v67;
                    v68 = [NSArray arrayWithObjects:&v152 count:1];
                    [v116 setDescriptions:v68];

                    v69 = objc_opt_new();
                    [v63 setInlineCard:v69];

                    v151 = v116;
                    v70 = [NSArray arrayWithObjects:&v151 count:1];
                    v71 = [v63 inlineCard];
                    [v71 setCardSections:v70];

                    v115 = [v129 absoluteString];
                    [v63 setContentURL:v115];
                    [v63 setTopHit:{objc_msgSend(v35, "topHit")}];
                    [v63 setForceNoTopHit:{objc_msgSend(v35, "forceNoTopHit")}];
                    v72 = [v35 score];
                    [v63 setScore:{v72, v73}];
                    v74 = [v35 protectionClass];
                    [v63 setProtectionClass:v74];

                    [v35 rankingScore];
                    [v63 setRankingScore:?];
                    v75 = [v35 applicationBundleIdentifier];
                    [v63 setApplicationBundleIdentifier:v75];

                    v76 = [v35 sectionBundleIdentifier];
                    [v63 setSectionBundleIdentifier:v76];

                    v77 = [v35 resultBundleId];
                    [v63 setResultBundleId:v77];

                    [v63 setType:{objc_msgSend(v35, "type")}];
                    [v63 setQueryId:{objc_msgSend(v35, "queryId")}];
                    [v63 setCompletedQuery:v132];
                    [v63 setCompletion:v132];
                    v78 = SyntheticBookmarkIdentifierPrefix;
                    v79 = [v35 identifier];
                    v80 = [(__CFString *)v78 stringByAppendingString:v79];
                    [v63 setIdentifier:v80];

                    v81 = [v35 rankingItem];
                    [v81 attributes];
                    v82 = SSCompactRankingAttrsCopy();

                    SSCompactRankingAttrsUpdateValue();
                    SSCompactRankingAttrsUpdateValue();
                    SSCompactRankingAttrsUpdateValue();
                    v83 = [[PRSRankingItem alloc] initWithAttrs:v82];
                    [v63 setRankingItem:v83];

                    v113 = [v35 rankingItem];
                    v84 = [v113 L2FeatureVector];
                    [v84 originalL2Score];
                    v86 = v85;
                    v87 = [v63 rankingItem];
                    v88 = [v87 L2FeatureVector];
                    LODWORD(v89) = v86;
                    [v88 setOriginalL2Score:v89];

                    [v124 setObject:v63 forKey:v132];
                    if (!v125)
                    {
                      [v122 addObject:v132];
                    }
                  }
                }

                goto LABEL_58;
              }
            }
          }
        }

        v32 = obj;
        v33 = [obj countByEnumeratingWithState:&v143 objects:v154 count:16];
      }

      while (v33);
    }

    if (v120)
    {
      _MDSimpleQueryDeallocate();
    }

    if ([v124 count])
    {
      v90 = [v124 allValues];
      v91 = [v11 resultSet];
      [v91 addObjectsFromArray:v90];
    }

    v92 = [v11 resultSet];
    [v92 minusSet:v128];
  }

  v138 = SSEnableSpotlightTopHitPersonalizedRanking();
  if (v138)
  {
    v93 = [v11 bundleIdentifier];
    v94 = [(SPCoreSpotlightDatastore *)self topHitNominatedByPommesScoringforBundleIdentifier:v93];
  }

  else
  {
    v94 = 0;
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v95 = [v11 resultSet];
  v96 = [v95 countByEnumeratingWithState:&v139 objects:v150 count:16];
  if (v96)
  {
    v97 = *v140;
    do
    {
      for (j = 0; j != v96; j = j + 1)
      {
        if (*v140 != v97)
        {
          objc_enumerationMutation(v95);
        }

        v99 = *(*(&v139 + 1) + 8 * j);
        v100 = [v99 score];
        if (v100 & v8 | v101 & v7)
        {
          v102 = v94;
        }

        else
        {
          v102 = 1;
        }

        if ((v102 & 1) == 0 && [v99 topHit] != 2)
        {
          [v99 setTopHit:1];
        }

        v103 = [v11 bundleIdentifier];
        [v99 setSectionBundleIdentifier:v103];
      }

      v96 = [v95 countByEnumeratingWithState:&v139 objects:v150 count:16];
    }

    while (v96);
  }

  if (!(v138 & 1 | ((v117 & 1) == 0)))
  {
    v104 = [v127 queryContext];
    v105 = [v104 searchString];
    [SSRankingManager determineTopHitsForSafariSection:v11 forQuery:v105];

    [SSRankingManager moveSafariTopHitsToTopOfSection:v11];
  }

  [v127 currentTime];
  [(SPCoreSpotlightDatastore *)self sortResultsInSection:v11 currentTime:?];
  [(SPCoreSpotlightDatastore *)self processUserActivitiesForSection:v11];
  [(SPCoreSpotlightDatastore *)self removeDuplicatesInSection:v11 query:v127];

  v106 = *v119;
  v107 = *(v119 + 8);
  v108 = *(v119 + 16);
  v109 = *(v119 + 24);
  v110 = *(v119 + 28);
  v111 = *(v119 + 32);
  si_tracing_log_span_end();
  v112 = v148;
  *v119 = v147;
  *(v119 + 16) = v112;
  *(v119 + 32) = v149;
}

- (void)hideIrrelevantCalendarResultsForSection:(id)a3
{
  v3 = a3;
  v4 = si_tracing_current_span();
  v5 = *(v4 + 16);
  v53 = *v4;
  v54 = v5;
  v55 = *(v4 + 32);
  v6 = *v4;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v4 + 8);
  v9 = *(v4 + 24);
  *v4 = v6;
  *(v4 + 8) = spanid;
  *(v4 + 16) = v8;
  *(v4 + 28) = 102;
  *(v4 + 32) = "[SPCoreSpotlightDatastore hideIrrelevantCalendarResultsForSection:]";
  si_tracing_log_span_begin();
  v35 = v4;
  v39 = objc_alloc_init(NSMutableArray);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = [v3 resultSet];
  v11 = [v10 countByEnumeratingWithState:&v49 objects:v56 count:16];
  v36 = v3;
  v12 = 0;
  if (v11)
  {
    v40 = 0;
    v41 = 0;
    obj = v10;
    v38 = 0;
    v13 = 0;
    v14 = 0;
    v42 = *v50;
    while (1)
    {
      v43 = v11;
      v15 = 0;
      v16 = v12;
      do
      {
        if (*v50 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v49 + 1) + 8 * v15);
        v47 = -1;
        v48 = -1;
        v45 = -1;
        v46 = -1;
        v44 = -1;
        v18 = [v17 interestingDate];
        v19 = [v17 compatibilityTitle];
        if (!v18)
        {
          v12 = v16;
LABEL_29:
          [v39 addObject:v17];
          goto LABEL_30;
        }

        v20 = +[SSDateFormatManager calendar];
        [v20 getEra:0 year:&v48 month:&v47 day:&v46 fromDate:v18];

        v21 = +[SSDateFormatManager calendar];
        [v21 getEra:0 yearForWeekOfYear:0 weekOfYear:&v44 weekday:&v45 fromDate:v18];

        v22 = [v17 domainIdentifier];
        v12 = v22;
        v23 = 0;
        if (v19 && v22)
        {
          if ([v16 isEqualToString:v22] && objc_msgSend(v14, "isEqualToString:", v19))
          {
            v23 = v45 == v40 || v46 == v41;
            if (v48 == v13 && v47 == v38)
            {
              v26 = v46 == v41 + 1 || v46 == v41 - 1;
              v23 |= v26;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        v27 = v19;

        v40 = v45;
        v41 = v46;
        v38 = v47;
        v14 = v27;
        v13 = v48;
        if ((v23 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_30:

        v15 = v15 + 1;
        v16 = v12;
      }

      while (v43 != v15);
      v10 = obj;
      v11 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (!v11)
      {
        goto LABEL_34;
      }
    }
  }

  v14 = 0;
LABEL_34:

  [v36 clearResults];
  [v36 addResultsFromArray:v39];

  v28 = *v35;
  v29 = *(v35 + 8);
  v30 = *(v35 + 16);
  v31 = *(v35 + 24);
  v32 = *(v35 + 28);
  v33 = *(v35 + 32);
  si_tracing_log_span_end();
  v34 = v54;
  *v35 = v53;
  *(v35 + 16) = v34;
  *(v35 + 32) = v55;
}

- (void)removeDuplicatesInSection:(id)a3 query:(id)a4
{
  v74 = a3;
  v71 = a4;
  v7 = si_tracing_current_span();
  v8 = *(v7 + 16);
  v88 = *v7;
  v89 = v8;
  v90 = *(v7 + 32);
  v9 = *v7;
  spanid = si_tracing_calc_next_spanid();
  v11 = *(v7 + 8);
  v12 = *(v7 + 24);
  *v7 = v9;
  *(v7 + 8) = spanid;
  *(v7 + 16) = v11;
  *(v7 + 28) = 102;
  *(v7 + 32) = "[SPCoreSpotlightDatastore removeDuplicatesInSection:query:]";
  si_tracing_log_span_begin();
  v70 = v7;
  v13 = [v74 results];
  v14 = [v13 copy];

  v15 = objc_alloc_init(NSMutableSet);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v84 objects:v97 count:16];
  if (v16)
  {
    v17 = *v85;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v85 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v84 + 1) + 8 * i);
        v4 = [v19 sectionBundleIdentifier];
        v5 = [v19 externalIdentifier];
        if (v5)
        {
          if ([v15 containsObject:v5])
          {
            [v74 removeResults:v19];
            v20 = SPLogForSPLogCategoryQuery();
            v21 = v20;
            if (gSPLogDebugAsDefault)
            {
              v22 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v22 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v20, v22))
            {
              *buf = 138412546;
              v94 = v4;
              v95 = 2112;
              v96 = v5;
              _os_log_impl(&_mh_execute_header, v21, v22, "Remove duplicate for %@ / %@", buf, 0x16u);
            }
          }

          else
          {
            [v15 addObject:v5];
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v16);
  }

  v72 = [v71 queryContext];
  if ([v72 isSearchToolClient])
  {
LABEL_34:
  }

  else
  {
    v23 = [v74 bundleIdentifier];
    v24 = [v23 isEqualToString:PRSRankingMessagesBundleString];

    if (v24)
    {
      [v15 removeAllObjects];
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v72 = obj;
      v25 = [v72 countByEnumeratingWithState:&v80 objects:v92 count:16];
      if (!v25)
      {
        goto LABEL_34;
      }

      v26 = 0;
      v27 = *v81;
      v4 = &OBJC_IVAR___SPParsecDatastore__sessionStartTime;
      v5 = &OBJC_IVAR___SPParsecDatastore__sessionStartTime;
      while (1)
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v81 != v27)
          {
            objc_enumerationMutation(v72);
          }

          v29 = *(*(&v80 + 1) + 8 * j);
          v30 = [v29 domainIdentifier];

          v31 = [v30 isEqualToString:MessagesAttachmentDomain];
          if ((v31 | [v30 isEqualToString:MessagesChatDomain]))
          {
            v26 = [v29 accountIdentifier];

            if (!v26)
            {
              continue;
            }
          }

          else
          {
            v26 = v30;
            if (!v30)
            {
              continue;
            }
          }

          if ([v15 containsObject:v26])
          {
            [v74 removeResults:v29];
          }

          else
          {
            [v15 addObject:v26];
          }
        }

        v25 = [v72 countByEnumeratingWithState:&v80 objects:v92 count:16];
        if (!v25)
        {

          goto LABEL_34;
        }
      }
    }
  }

  v32 = [v71 queryContext];
  if ([v32 isSearchToolClient])
  {
    goto LABEL_51;
  }

  v33 = [v74 bundleIdentifier];
  v34 = [v33 isEqualToString:PRSRankingPodcastsBundleString];

  if (v34)
  {
    [v15 removeAllObjects];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v32 = obj;
    v35 = [v32 countByEnumeratingWithState:&v76 objects:v91 count:16];
    if (!v35)
    {
      goto LABEL_51;
    }

    v36 = *v77;
    while (1)
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v77 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v5 = *(*(&v76 + 1) + 8 * k);
        v38 = [v5 stringForDedupe];
        if (v38)
        {
          v39 = [v5 domainIdentifier];
          if ([v39 isEqualToString:@"com.apple.siri.interactions"])
          {
          }

          else
          {
            v40 = [v5 domainIdentifier];
            v4 = [v40 isEqualToString:@"com.apple.siri.upcomingmedia"];

            if (!v4)
            {
              continue;
            }
          }

          v41 = [v5 stringForDedupe];
          v42 = [v15 containsObject:v41];

          if (v42)
          {
            [v74 removeResults:v5];
          }

          else
          {
            v43 = [v5 stringForDedupe];
            [v15 addObject:v43];
          }
        }
      }

      v35 = [v32 countByEnumeratingWithState:&v76 objects:v91 count:16];
      if (!v35)
      {
LABEL_51:

        break;
      }
    }
  }

  v44 = [v74 bundleIdentifier];
  v45 = SSPommesRankingForSectionBundle();

  if (v45)
  {
    v46 = [v71 queryContext];
    v47 = [v46 searchString];
    SSRearrangeDuplicatesInSection();
  }

  if (SSEnableSpotlightTopHitPersonalizedRanking())
  {
    v48 = [v71 queryContext];
    v49 = [v48 searchEntities];
    v50 = [v49 count];
    if (v50 && ([v71 queryContext], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "searchEntities"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "lastObject"), v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v5, "isScopedSearch") & 1) != 0))
    {
      v51 = 1;
    }

    else
    {
      v52 = [v71 queryContext];
      v51 = [v52 isAdvancedSyntax];

      if (!v50)
      {
LABEL_60:

        v53 = [v71 queryContext];
        v73 = [v53 searchString];
        v54 = [v71 queryContext];
        v55 = [v54 queryIdent];
        v56 = [v71 queryContext];
        v57 = [v56 searchEntities];
        v58 = [v57 count];
        v59 = [v71 queryContext];
        [v59 currentTime];
        v61 = v60;
        v62 = [v71 queryContext];
        +[PRSRankingItemRanker thresholdResultsInSection:userQuery:queryID:isEntitiesSearch:currentTime:isScopedSearch:isSearchToolClient:](PRSRankingItemRanker, "thresholdResultsInSection:userQuery:queryID:isEntitiesSearch:currentTime:isScopedSearch:isSearchToolClient:", v74, v73, v55, v58 != 0, v51, [v62 isSearchToolClient], v61);

        goto LABEL_61;
      }
    }

    goto LABEL_60;
  }

LABEL_61:

  v63 = *v70;
  v64 = *(v70 + 8);
  v65 = *(v70 + 16);
  v66 = *(v70 + 24);
  v67 = *(v70 + 28);
  v68 = *(v70 + 32);
  si_tracing_log_span_end();
  v69 = v89;
  *v70 = v88;
  *(v70 + 16) = v69;
  *(v70 + 32) = v90;
}

- (void)processUserActivitiesForSection:(id)a3
{
  v101 = a3;
  v3 = si_tracing_current_span();
  v4 = *(v3 + 16);
  v125 = *v3;
  v126 = v4;
  v127 = *(v3 + 32);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightDatastore processUserActivitiesForSection:]";
  si_tracing_log_span_begin();
  v96 = v3;
  v102 = objc_alloc_init(NSMutableDictionary);
  v100 = objc_alloc_init(NSMutableSet);
  v9 = [v101 results];
  v10 = [v9 copy];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v121 objects:v134 count:16];
  if (v12)
  {
    v13 = *v122;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v122 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v121 + 1) + 8 * i);
        v16 = [v15 externalIdentifier];
        if (!v16)
        {
          v17 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v133 = v15;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "result missing identifier %@", buf, 0xCu);
          }
        }

        v18 = [v15 userActivityRequiredString];
        if (v16)
        {
          v19 = v18 == 0;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        if (v20)
        {
          [v102 setObject:v15 forKey:v16];
          v21 = [v15 compatibilityTitle];
          if (v21)
          {
            [v100 addObject:v21];
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v121 objects:v134 count:16];
    }

    while (v12);
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v22 = v11;
  v23 = [v22 countByEnumeratingWithState:&v117 objects:v131 count:16];
  if (v23)
  {
    v24 = *v118;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v118 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v117 + 1) + 8 * j);
        v27 = [v26 relatedUniqueIdentifier];
        if (v27)
        {
          v28 = [v26 userActivityRequiredString];
          v29 = v28 == 0;

          if (v29)
          {
            v30 = [v102 objectForKey:v27];
            v31 = v30 == 0;

            if (v31)
            {
              [v102 setObject:v26 forKey:v27];
              v32 = [v26 compatibilityTitle];
              if (v32)
              {
                [v100 addObject:v32];
              }
            }
          }
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v117 objects:v131 count:16];
    }

    while (v23);
  }

  v97 = objc_alloc_init(NSMutableDictionary);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v22;
  v33 = [obj countByEnumeratingWithState:&v113 objects:v130 count:16];
  if (v33)
  {
    v103 = *v114;
    do
    {
      v104 = v33;
      for (k = 0; k != v104; k = k + 1)
      {
        if (*v114 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v113 + 1) + 8 * k);
        v36 = [v35 compatibilityTitle];
        if (!v36 && ([v35 hasDetail] & 1) == 0)
        {
          v37 = [v35 sectionBundleIdentifier];
          IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
          if (IsSyndicatedPhotos && ([v35 contentType], v98 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v98, "isEqualToString:", @"public.item")))
          {
          }

          else
          {
            v39 = [v35 identifier];
            v40 = [v39 hasPrefix:SyntheticBookmarkIdentifierPrefix];

            if (IsSyndicatedPhotos)
            {
            }

            if ((v40 & 1) == 0)
            {
              [v101 removeResults:v35];
              goto LABEL_68;
            }
          }
        }

        v41 = [v35 userActivityRequiredString];

        if (v41)
        {
          v42 = [v35 relatedUniqueIdentifier];
          if (v42)
          {
            v43 = [v35 fileProviderIdentifier];

            if (!v43)
            {
              v44 = [v102 objectForKey:v42];
              v45 = v44;
              if (v44)
              {
                v46 = [v44 score];
                v48 = v47;
                v49 = [v35 score];
                [v45 setScore:{__PAIR128__(v50, v49) + __PAIR128__(v48, v46)}];
                [v101 removeResults:v35];
                if (([v45 hasAssociatedUserActivity] & 1) == 0)
                {
                  [v45 setPubliclyIndexable:{objc_msgSend(v35, "publiclyIndexable")}];
                  [v45 setHasAssociatedUserActivity:1];
                  v51 = [v35 launchDates];
                  [v45 setLaunchDates:v51];
                  goto LABEL_65;
                }
              }

              else
              {
                v52 = [v97 objectForKey:v42];
                v51 = v52;
                if (v52)
                {
                  v53 = [v52 score];
                  v55 = v54;
                  v56 = [v35 score];
                  v57 = v56;
                  v59 = v58;
                  if (__PAIR128__(v58, v56) >= __PAIR128__(v55, v53))
                  {
                    v62 = [v35 buddyScore];
                    [v35 setBuddyScore:{__PAIR128__(v63, v62) + __PAIR128__(v55, v53)}];
                    [v101 removeResults:v51];
                    [v97 setObject:v35 forKey:v42];
                  }

                  else
                  {
                    v60 = [v51 buddyScore];
                    [v51 setBuddyScore:{__PAIR128__(v61, v60) + __PAIR128__(v59, v57)}];
                    [v101 removeResults:v35];
                  }
                }

                else
                {
                  [v97 setObject:v35 forKey:v42];
                }

LABEL_65:
              }
            }
          }

          else if (v36)
          {
            if ([v100 containsObject:v36] && (objc_msgSend(v35, "hasDetail") & 1) == 0)
            {
              [v101 removeResults:v35];
            }

            else
            {
              [v100 addObject:v36];
            }
          }
        }

LABEL_68:
      }

      v33 = [obj countByEnumeratingWithState:&v113 objects:v130 count:16];
    }

    while (v33);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v64 = [v101 resultSet];
  v65 = [v64 countByEnumeratingWithState:&v109 objects:v129 count:16];
  if (v65)
  {
    v66 = *v110;
    do
    {
      for (m = 0; m != v65; m = m + 1)
      {
        if (*v110 != v66)
        {
          objc_enumerationMutation(v64);
        }

        v68 = *(*(&v109 + 1) + 8 * m);
        v69 = [v68 score];
        v71 = v70;
        v72 = [v68 buddyScore];
        [v68 setScore:{__PAIR128__(v73, v72) + __PAIR128__(v71, v69)}];
      }

      v65 = [v64 countByEnumeratingWithState:&v109 objects:v129 count:16];
    }

    while (v65);
  }

  v74 = objc_alloc_init(NSMutableDictionary);
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v75 = obj;
  v76 = [v75 countByEnumeratingWithState:&v105 objects:v128 count:16];
  if (v76)
  {
    v77 = *v106;
    do
    {
      for (n = 0; n != v76; n = n + 1)
      {
        if (*v106 != v77)
        {
          objc_enumerationMutation(v75);
        }

        v79 = *(*(&v105 + 1) + 8 * n);
        v80 = [v79 itemIdentifier];

        if (v80)
        {
          v81 = [v79 itemIdentifier];
          v82 = [v74 objectForKey:v81];

          if (v82)
          {
            v83 = [v82 score];
            v85 = v84;
            v86 = [v79 score];
            if (__PAIR128__(v87, v86) < __PAIR128__(v85, v83))
            {
              [v101 removeResults:v79];
LABEL_88:

              continue;
            }

            [v101 removeResults:v82];
          }

          v88 = [v79 itemIdentifier];
          [v74 setObject:v79 forKey:v88];

          goto LABEL_88;
        }
      }

      v76 = [v75 countByEnumeratingWithState:&v105 objects:v128 count:16];
    }

    while (v76);
  }

  v89 = *v96;
  v90 = *(v96 + 8);
  v91 = *(v96 + 16);
  v92 = *(v96 + 24);
  v93 = *(v96 + 28);
  v94 = *(v96 + 32);
  si_tracing_log_span_end();
  v95 = v126;
  *v96 = v125;
  *(v96 + 16) = v95;
  *(v96 + 32) = v127;
}

- (void)sortResultsInSection:(id)a3 currentTime:(double)a4
{
  v19 = a3;
  v6 = si_tracing_current_span();
  v20 = *v6;
  v21 = *(v6 + 16);
  v22 = *(v6 + 32);
  v7 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v6 + 8);
  v10 = *(v6 + 24);
  *v6 = v7;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v9;
  *(v6 + 28) = 102;
  *(v6 + 32) = "[SPCoreSpotlightDatastore sortResultsInSection:currentTime:]";
  si_tracing_log_span_begin();
  [PRSRankingItemRanker sortResultsInSection:v19 currentTime:a4];
  v11 = [v19 bundleIdentifier];
  v12 = [v11 isEqual:SSCalendarBundleIdentifier];

  if (v12)
  {
    [(SPCoreSpotlightDatastore *)self hideIrrelevantCalendarResultsForSection:v19];
  }

  v13 = *v6;
  v14 = *(v6 + 8);
  v15 = *(v6 + 16);
  v16 = *(v6 + 24);
  v17 = *(v6 + 28);
  v18 = *(v6 + 32);
  si_tracing_log_span_end();
  *v6 = v20;
  *(v6 + 16) = v21;
  *(v6 + 32) = v22;
}

- (id)rankingQueriesAddingQueryTerms:(id)a3 rankingQueries:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7)
  {
    v8 = [v5 objectAtIndex:v7 - 1];
    v9 = [v6 arrayByAddingObject:v8];

    v6 = v9;
  }

  return v6;
}

- (id)_topHitQueryParametersForSearchString:(id)a3 searchEntities:(id)a4 contextIdentifier:(id)a5 queryKind:(unint64_t)a6 needsFuzzy:(BOOL)a7 checkForMath:(BOOL)a8 isCJK:(BOOL)a9 disableNLP:(BOOL)a10 disableOCR:(BOOL)a11 previousQueryKind:(unint64_t)a12 clientBundle:(id)a13 keyboardLanguage:(id)a14 queryID:(int64_t)a15
{
  v119 = a8;
  v125 = a7;
  v17 = a3;
  v132 = a4;
  v123 = a5;
  v130 = a13;
  v129 = a14;
  v18 = si_tracing_current_span();
  v19 = *(v18 + 16);
  v154 = *v18;
  v155 = v19;
  v156 = *(v18 + 32);
  v20 = *v18;
  spanid = si_tracing_calc_next_spanid();
  v22 = *(v18 + 8);
  v23 = *(v18 + 24);
  *v18 = v20;
  *(v18 + 8) = spanid;
  *(v18 + 16) = v22;
  *(v18 + 28) = 102;
  *(v18 + 32) = "[SPCoreSpotlightDatastore _topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:]";
  si_tracing_log_span_begin();
  v126 = v18;
  v24 = SPLogForSPLogCategoryDefault();
  v25 = v24;
  if (gSPLogDebugAsDefault)
  {
    v26 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v26 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v24, v26))
  {
    *buf = 67109120;
    LODWORD(v158) = qos_class_self();
    _os_log_impl(&_mh_execute_header, v25, v26, "[SPCoreSpotlightDatastore]QOS _topHitQueryParameters: %d", buf, 8u);
  }

  v27 = objc_opt_new();
  [v27 setObject:&__kCFBooleanFalse forKey:@"isNLQuery"];
  [v27 setObject:&__kCFBooleanFalse forKey:@"isAdvancedSyntax"];
  [v27 setObject:&__kCFBooleanFalse forKey:@"isMath"];
  [v27 setObject:&__NSArray0__struct forKey:@"suggestions"];
  [v27 setObject:&__NSDictionary0__struct forKey:@"rankCategories"];
  [v27 setObject:&__NSDictionary0__struct forKey:@"rankTerms"];
  [v27 setObject:&__NSArray0__struct forKey:@"queryTerms"];
  [v27 setObject:&stru_100094040 forKey:@"query"];
  [v27 setObject:&stru_100094040 forKey:@"completionString"];
  [v27 setObject:&off_100098AC8 forKey:@"completionCount"];
  [v27 setObject:&off_100098AC8 forKey:@"completionOptions"];
  [v27 setObject:&__NSArray0__struct forKey:@"completionAttributes"];
  v134 = v27;
  if (!qword_1000A8490 && !qword_1000A8428)
  {
    dispatch_group_wait(qword_1000A8498, 0xFFFFFFFFFFFFFFFFLL);
  }

  v28 = v17;
  v122 = [v28 length];
  v133 = v28;
  v121 = [v28 length];
  v141 = objc_opt_new();
  v140 = objc_opt_new();
  v131 = objc_opt_new();
  v139 = objc_opt_new();
  v138 = objc_opt_new();
  if (v132 && [v132 count] && objc_msgSend(v132, "count"))
  {
    v152 = 0u;
    v153 = 0u;
    v151 = 0u;
    v150 = 0u;
    obj = v132;
    v29 = [obj countByEnumeratingWithState:&v150 objects:v162 count:16];
    if (v29)
    {
      v30 = *v151;
      v31 = v28;
      do
      {
        v32 = 0;
        v33 = v31;
        do
        {
          if (*v151 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v150 + 1) + 8 * v32);
          v31 = [v34 queryString];

          v35 = [v34 spotlightQueryString];
          if (v35)
          {
            [v141 addObject:v35];
          }

          v36 = [v34 spotlightFilterQueries];
          if (v36)
          {
            [v140 addObjectsFromArray:v36];
          }

          v37 = [v34 spotlightRankCategories];
          if (v37)
          {
            [v138 addEntriesFromDictionary:v37];
          }

          v38 = [v34 spotlightRankTerms];
          if (v38)
          {
            [v139 addEntriesFromDictionary:v38];
          }

          v39 = [v34 isScopedSearch];
          v40 = [v34 isNLPEntitySearch];

          v32 = v32 + 1;
          v33 = v31;
        }

        while (v29 != v32);
        v29 = [obj countByEnumeratingWithState:&v150 objects:v162 count:16];
      }

      while (v29);
    }

    else
    {
      v40 = 0;
      v39 = 0;
      v31 = v133;
    }

    v42 = [v139 keysSortedByValueUsingSelector:"compare:"];
    [v131 addObjectsFromArray:v42];

    v41 = v31;
  }

  else
  {
    v40 = 0;
    v39 = 0;
    v41 = v133;
  }

  v124 = v41;
  if (![v41 length] || !((objc_msgSend(v141, "count") == 0) | v39 & 1))
  {
    v127 = 0;
    obja = v133;
    goto LABEL_124;
  }

  if (a6 - 1 < 8 && ((0xE3u >> (a6 - 1)) & 1) != 0)
  {
    v43 = 0;
    goto LABEL_48;
  }

  if (a12 - 1 < 2)
  {
    if (a6 != 10)
    {
      goto LABEL_43;
    }

LABEL_42:
    v43 = 0;
    goto LABEL_48;
  }

  if (a6 == 10 && a12 - 6 < 3)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (a6 == 11 && v130)
  {
    v43 = 0;
    if (v125)
    {
      v43 = [v130 isEqualToString:PRSRankingSearchBundleString] ^ 1;
    }
  }

  else
  {
    v43 = 0;
  }

LABEL_48:
  BYTE3(v111) = v43;
  BYTE2(v111) = v119;
  BYTE1(v111) = v39;
  LOBYTE(v111) = a11;
  v44 = SSDefaultQueryParseResultsForQueryString();
  v118 = v44;
  if (v44)
  {
    v45 = [v44 objectForKeyedSubscript:{@"query", v111}];
    if (SSEnableAppSearchV2() && (a6 > 0xA || ((1 << a6) & 0x430) == 0))
    {
      v46 = SPFastApplicationsNamesGetNoBuild();
      if ([v46 count])
      {
        v47 = getAppCorrectionIfAny();
        v116 = v46;
        if ([v47 count])
        {
          v148 = 0u;
          v149 = 0u;
          v146 = 0u;
          v147 = 0u;
          objb = v47;
          v48 = [objb countByEnumeratingWithState:&v146 objects:v161 count:16];
          v112 = v47;
          if (v48)
          {
            v49 = *v147;
            do
            {
              v50 = v48;
              v51 = 0;
              v52 = v45;
              do
              {
                if (*v147 != v49)
                {
                  objc_enumerationMutation(objb);
                }

                v53 = *(*(&v146 + 1) + 8 * v51);
                v54 = SPLogForSPLogCategoryDefault();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                {
                  v55 = CSRedactString();
                  v56 = CSRedactString();
                  *buf = 138412546;
                  v158 = v55;
                  v159 = 2112;
                  v160 = v56;
                  _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <AppSpellCorrection> query: %@, app correction: %@", buf, 0x16u);
                }

                v45 = [v52 stringByAppendingFormat:@" || ((kMDItemDisplayName=\"%@\"cwd) && (kMDItemContentType == \"com.apple.application\"", v53];

                v51 = v51 + 1;
                v52 = v45;
              }

              while (v50 != v51);
              v48 = [objb countByEnumeratingWithState:&v146 objects:v161 count:16];
            }

            while (v48);
          }

          v47 = v112;
        }

        v46 = v116;
      }
    }

    obja = [v118 objectForKeyedSubscript:@"completionString"];

    if (v119)
    {
      v57 = [v118 objectForKeyedSubscript:@"isMath"];
      if (v57)
      {
        v58 = [v118 objectForKeyedSubscript:@"isMath"];
        v127 = [v58 BOOLValue];
      }

      else
      {
        v127 = 0;
      }
    }

    else
    {
      v127 = 0;
    }
  }

  else
  {
    v45 = 0;
    v127 = 0;
    obja = v133;
  }

  v59 = 0;
  v60 = 0;
  if (v122 >= 3 && !a10)
  {
    v61 = +[NSMutableDictionary dictionary];
    v62 = v61;
    if (v123)
    {
      [v61 setObject:v123 forKeyedSubscript:@"kMDQueryOptionContextIdentifier"];
    }

    if ([v129 length])
    {
      [v62 setValue:v129 forKey:@"keyboardLanguage"];
    }

    v63 = [NSNumber numberWithInteger:a15];
    [v62 setValue:v63 forKey:@"queryID"];

    v113 = SSGetCurrentLocale();
    if (v113)
    {
      v64 = [v113 languageIdentifier];
      v65 = [v64 length] == 0;

      if (!v65)
      {
        v66 = [v113 languageIdentifier];
        [v62 setValue:v66 forKey:@"localeLanguage"];
      }
    }

    v67 = v130;
    if ([v67 hasPrefix:@"com.apple.omniSearch"] & 1) != 0 || (objc_msgSend(v67, "hasPrefix:", @"com.apple.intelligenceflow"))
    {
    }

    else
    {
      v91 = [v67 hasPrefix:@"com.apple.ondeviceeval"];

      if (!v91)
      {
        goto LABEL_86;
      }
    }

    [v62 setValue:&__kCFBooleanTrue forKey:@"isSearchToolClient"];
LABEL_86:
    v68 = SSQueryParseResultsForQueryString();
    v69 = v68;
    if (v68)
    {
      v120 = [v68 objectForKeyedSubscript:@"nlQuery"];
      v60 = [v69 objectForKeyedSubscript:@"annQuery"];
      v70 = [v69 objectForKeyedSubscript:@"isNLQuery"];
      v40 = [v70 BOOLValue];

      v117 = [v69 objectForKeyedSubscript:@"rankCategories"];
      v71 = [v69 objectForKeyedSubscript:@"rankTerms"];
      v115 = [v69 objectForKeyedSubscript:@"queryTerms"];
      v114 = [v69 objectForKeyedSubscript:@"suggestions"];
      v72 = [v69 objectForKeyedSubscript:@"filterQueries"];
      if ([v72 count])
      {
        [v134 setObject:v72 forKey:@"filterQueries"];
      }

      v73 = [v69 objectForKeyedSubscript:@"queryUnderstandingOutput"];
      [v134 setObject:v73 forKey:@"queryUnderstandingOutput"];
      v59 = v73 != 0;
    }

    else
    {
      v60 = 0;
      v59 = 0;
      v120 = 0;
      v114 = 0;
      v115 = 0;
      v71 = 0;
      v117 = 0;
    }

    goto LABEL_93;
  }

  v69 = 0;
  v120 = 0;
  v114 = 0;
  v115 = 0;
  v71 = 0;
  v117 = 0;
LABEL_93:
  if (!v45)
  {
    v145 = 0;
    v74 = SSPhraseQueryEscapeString();
    v75 = 0;
    if (v122 > 2)
    {
      v76 = 1;
    }

    else
    {
      v76 = v39;
    }

    if (v76 == 1)
    {
      [NSString stringWithFormat:@"(**=%@*cwdt)", v74];
    }

    else
    {
      [NSString stringWithFormat:@"((*=%@*cwdt) || (kMDItemTextContent=%@cwdt))", v74, v74];
    }
    v45 = ;
  }

  v77 = v45;
  v78 = v77;
  if (((v120 != 0) & v40) == 1)
  {
    if (v117)
    {
      [v138 addEntriesFromDictionary:v117];
    }

    if (v71)
    {
      [v139 addEntriesFromDictionary:v71];
    }

    if (v115)
    {
      [v131 addObjectsFromArray:v115];
    }

    v79 = v78;
    if ([v120 length])
    {
      v79 = [NSString stringWithFormat:@"(%@ || %@)", v120, v78];
    }

    if (v114)
    {
      [v134 setObject:v114 forKey:@"suggestions"];
    }

    v40 = 1;
  }

  else
  {
    v79 = v77;
    if (v59)
    {
      if (v117)
      {
        [v138 addEntriesFromDictionary:v117];
      }

      if (v71)
      {
        [v139 addEntriesFromDictionary:v71];
      }

      v40 = 1;
      v79 = v78;
    }
  }

  if ([v60 length])
  {
    v80 = [NSString stringWithFormat:@"(%@ || %@)", v60, v79];

    v79 = v80;
  }

  if (!v79)
  {
    v79 = @"*=*";
  }

  [v141 addObject:v79];

  v41 = v124;
LABEL_124:
  v81 = _os_feature_enabled_impl();
  v82 = _os_feature_enabled_impl();
  if (a6 - 1 <= 1)
  {
    v83 = v82;
    v84 = [v41 length];
    v85 = v84 > 3;
    if (v84 <= 3 && ((v81 ^ 1) & 1) == 0)
    {
      v85 = [v41 length] != 0;
    }

    if (v85 && v121)
    {
      v143[0] = _NSConcreteStackBlock;
      v143[1] = 3221225472;
      v143[2] = sub_1000387C8;
      v143[3] = &unk_100093400;
      v144 = v81;
      v86 = v143;
      if (qword_1000A8500 != -1)
      {
        dispatch_once(&qword_1000A8500, v86);
      }

      if (v81)
      {
        if (v83)
        {
          v87 = 16768;
        }

        else
        {
          v87 = 384;
        }

        v88 = qword_1000A84F0;
        v89 = 50;
        goto LABEL_154;
      }

      v90 = SIGetCompletionOptionsFromRankingWeights();
      v87 = v90;
      if (v121 > 5)
      {
        if (v121 <= 8)
        {
          v92 = 40;
          if (v121 == 6)
          {
            v92 = 25;
          }

          if (v121 == 8)
          {
            v89 = 50;
          }

          else
          {
            v89 = v92;
          }
        }

        else
        {
          v89 = 65;
        }

        goto LABEL_153;
      }

      if (v90)
      {
        if (v121 == 5)
        {
          goto LABEL_140;
        }
      }

      else if (v121 >= 3)
      {
LABEL_140:
        v89 = 20;
        goto LABEL_153;
      }

      v88 = qword_1000A84F8;
      v89 = 20;
      if (v88)
      {
LABEL_154:
        [v134 setObject:obja forKey:@"completionString"];
        v93 = [NSNumber numberWithUnsignedInt:v87];
        [v134 setObject:v93 forKey:@"completionOptions"];

        v94 = [NSNumber numberWithInteger:v89];
        [v134 setObject:v94 forKey:@"completionCount"];

        [v134 setObject:v88 forKey:@"completionAttributes"];
        goto LABEL_155;
      }

LABEL_153:
      v88 = qword_1000A84F0;
      v87 = v87 | 0x60;
      goto LABEL_154;
    }
  }

LABEL_155:
  if ([v141 count])
  {
    v95 = [v141 componentsJoinedByString:@" && "];
  }

  else
  {
    v95 = @"(true)");
  }

  if ([v140 count])
  {
    v96 = [v140 componentsJoinedByString:@" && "];

    if (v96)
    {
      v97 = [NSString stringWithFormat:@"((%@) && (%@))", v95, v96];

      v95 = v97;
    }
  }

  else
  {
    v96 = 0;
  }

  [v134 setObject:v138 forKey:@"rankCategories"];
  [v134 setObject:v139 forKey:@"rankTerms"];
  [v134 setObject:v131 forKey:@"queryTerms"];
  v98 = [NSNumber numberWithBool:v40];
  [v134 setObject:v98 forKey:@"isNLQuery"];

  v99 = [NSNumber numberWithBool:0];
  [v134 setObject:v99 forKey:@"isAdvancedSyntax"];

  v100 = [NSNumber numberWithBool:v127];
  [v134 setObject:v100 forKey:@"isMath"];

  [v134 setObject:v95 forKey:@"query"];
  v142 = v134;
  _checkMatch(v40, v130, v129, v133, v95, v125, &v142);
  v101 = v142;

  v102 = v101;
  v103 = *v126;
  v104 = *(v126 + 8);
  v105 = *(v126 + 16);
  v106 = *(v126 + 24);
  v107 = *(v126 + 28);
  v108 = *(v126 + 32);
  si_tracing_log_span_end();
  v109 = v155;
  *v126 = v154;
  *(v126 + 16) = v109;
  *(v126 + 32) = v156;

  return v102;
}

- (id)coreSpotlightQueryTaskWithQuery:(id)a3 reuseTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    [(SPCoreSpotlightQueryTask *)v9 reset];
  }

  else
  {
    v9 = [[SPCoreSpotlightQueryTask alloc] initWithStore:self resultPipe:v6];
    [(SPCoreSpotlightQueryTask *)v9 setPriorityIndexEnabled:self->_priorityIndexEnabled];
  }

  return v9;
}

- (id)performQuery:(id)a3 isCorrectedQuery:(BOOL)a4 reuseTask:(id)a5 needsFuzzy:(BOOL)a6 pommesRewrite:(id)a7 embeddingsRequery:(BOOL)a8
{
  v377 = a8;
  v374 = a6;
  v10 = a3;
  v380 = a5;
  v379 = a7;
  v11 = si_tracing_current_span();
  v12 = *(v11 + 16);
  v495 = *v11;
  v496 = v12;
  v497 = *(v11 + 32);
  v388 = v11;
  v13 = *v11;
  spanid = si_tracing_calc_next_spanid();
  v15 = *(v388 + 8);
  v16 = *(v388 + 24);
  *v388 = v13;
  *(v388 + 8) = spanid;
  *(v388 + 16) = v15;
  *(v388 + 28) = 102;
  *(v388 + 32) = "[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]";
  si_tracing_log_span_begin();
  v389 = v10;
  if (qword_1000A8520 != -1)
  {
    sub_1000631C8();
  }

  v17 = SPLogForSPLogCategoryDefault();
  v18 = v17;
  if (gSPLogDebugAsDefault)
  {
    v19 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v19 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v17, v19))
  {
    *buf = 67109120;
    *&buf[4] = qos_class_self();
    _os_log_impl(&_mh_execute_header, v18, v19, "QOS performQuery: %d", buf, 8u);
  }

  v20 = [[NSUUID alloc] initWithUUIDString:@"E3D90047-9384-482F-8CAF-739CA04382BE"];
  [v10 queryIdent];
  SSDefaultsLogForTrigger();

  if (qword_1000A8530 != -1)
  {
    sub_1000631DC();
  }

  v21 = [v10 queryContext];
  v386 = [v21 getTrimmedSearchString];

  v22 = [v10 queryContext];
  v384 = [v22 queryKind];

  v23 = [v10 queryContext];
  [v23 whyQuery];

  if (![v386 length] && (v384 - 9) >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v24 = 0;
    goto LABEL_267;
  }

  [v10 externalID];
  kdebug_trace();
  v25 = SPLogForSPLogCategoryTelemetry();
  v26 = [v10 externalID];
  if (v26 && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, v26, "coreSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v491[0] = 0;
  v491[1] = v491;
  v491[2] = 0x3810000000;
  v491[3] = &unk_1000860FE;
  v492 = 0;
  v494 = 0;
  v493 = 0;
  v27 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v494 = 0;
  v492 = v27;
  v493 = 0;
  if ((*(self + 8) & 0x20) != 0)
  {
    atomic_fetch_add(&dword_1000A8420, 1u);
  }

  else
  {
    [(SPCoreSpotlightDatastore *)self activate];
  }

  [v10 currentTime];
  v29 = v28;
  v30 = [v10 queryContext];
  v383 = [v30 searchString];

  if (byte_1000A8488 == 1)
  {
    [qword_1000A8480 setObject:v383 forKey:@"lastQueryString"];
  }

  if ([v10 isCJK])
  {
    v31 = 2;
  }

  else
  {
    v31 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v31;
  if (([v10 previousQueryKind] == 1 || objc_msgSend(v10, "previousQueryKind") == 2) && v384 == 10)
  {
    v384 = [v10 previousQueryKind];
  }

  v32 = [v10 queryContext];
  v33 = [v32 deviceAuthenticationState] == 2;

  if (v33)
  {
    v34 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Skipping corespotlight query because of biometryLockout", buf, 2u);
    }

    v35 = [(SPCoreSpotlightDatastore *)self coreSpotlightQueryTaskWithQuery:v10 reuseTask:v380];
    [v35 finish];
    v24 = 0;

    goto LABEL_266;
  }

  v36 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v10 hash];
    *buf = 134217984;
    *&buf[4] = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#query corespotlight start (qid: %lld)", buf, 0xCu);
  }

  v373 = sub_10004B314();
  v370 = [v10 itemRanker];
  os_unfair_lock_lock(&unk_1000A84B8);
  v361 = qword_1000A8438;
  v362 = qword_1000A84A0;
  os_unfair_lock_unlock(&unk_1000A84B8);
  v38 = [v10 queryContext];
  v39 = [v38 searchEntities];
  if (!v39)
  {

    goto LABEL_41;
  }

  v40 = [v389 queryContext];
  v41 = [v40 searchEntities];
  v42 = [v41 count] == 0;

  if (v42)
  {
LABEL_41:
    v360 = 0;
    v363 = 0;
    goto LABEL_42;
  }

  v43 = [v389 queryContext];
  v44 = [v43 searchEntities];
  v45 = [v44 lastObject];

  LODWORD(v43) = [v45 isScopedSearch];
  v360 = [v45 tokenText];
  v46 = [v45 currentSearchString];

  if (v43)
  {
    v47 = 8;
  }

  else
  {
    v47 = 0;
  }

  v363 = v47;
  v383 = v46;
LABEL_42:
  v48 = objc_opt_new();
  [v48 setFetchAttributes:v373];
  [v389 currentTime];
  [v48 setCurrentTime:?];
  v49 = [v389 queryContext];
  v50 = [v49 keyboardPrimaryLanguage];
  [v48 setKeyboardLanguage:v50];

  v51 = [v379 searchQueryContext];
  v52 = [v51 rewriteContext];
  [v48 setRewriteContext:v52];

  [v48 setEntitledAttributes:7];
  [v48 setDisableNLP:0];
  [v48 setQueryID:{objc_msgSend(v389, "hash")}];
  [v48 setUserQuery:v383];
  v53 = [v389 queryContext];
  [v48 setFetchl2Signals:{objc_msgSend(v53, "fetchL2Signals")}];

  [v48 setPriorityIndexQuery:1];
  v54 = [v389 queryContext];
  [v48 setEnableInstantAnswers:{objc_msgSend(v54, "enablePersonalAnswers")}];

  v55 = [v389 maxCount];
  if (v55 == 13)
  {
    v56 = 20;
  }

  else
  {
    v366 = v55;
    if (v55 != 50)
    {
      goto LABEL_47;
    }

    v56 = 100;
  }

  v366 = v56;
LABEL_47:
  v57 = SPLogForSPLogCategoryDefault();
  v58 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v57, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 67109120;
    *&buf[4] = v366;
    _os_log_impl(&_mh_execute_header, v57, ((v58 & 1) == 0), "Rank count:%d", buf, 8u);
  }

  if (([v389 cancelled] & 1) == 0)
  {
    if (a4 || v374 || v377)
    {
      [v389 setPreviousQueryKind:v384];
      v384 = 10;
    }

    if (v377)
    {
      v59 = [[NSMutableArray alloc] initWithCapacity:5];
      v490 = v59;
      v60 = [v370 requery:&v490];
      v351 = v490;

      [v370 resetWithSearchString:v60];
      v61 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v60;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Word embeddings on, new search string = %@", buf, 0xCu);
      }

      v383 = v60;
    }

    else
    {
      v351 = 0;
    }

    v381 = [v389 queryContext];
    v368 = [v381 searchEntities];
    v62 = [v389 connection];
    v63 = [v62 bundleID];
    v64 = *(self + 8);
    v65 = [v48 disableNLP];
    v66 = [v389 queryContext];
    v67 = [v66 disableOCR];
    v68 = [v389 previousQueryKind];
    v69 = [v389 itemRanker];
    v70 = [v69 keyboardLanguage];
    v71 = [v389 queryID];
    v352 = PRSRankingSearchBundleString;
    BYTE2(v302) = v67;
    BYTE1(v302) = v65;
    LOBYTE(v302) = (v64 & 2) != 0;
    v376 = [SPCoreSpotlightDatastore _topHitQueryParametersForSearchString:"_topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:" searchEntities:v383 contextIdentifier:v368 queryKind:v63 needsFuzzy:v384 checkForMath:v374 isCJK:1 disableNLP:v302 disableOCR:v68 previousQueryKind:PRSRankingSearchBundleString clientBundle:v70 keyboardLanguage:v71 queryID:?];

    v72 = [v376 objectForKeyedSubscript:@"queryUnderstandingOutput"];
    v73 = [v389 queryContext];
    [v73 setQueryUnderstandingOutput:v72];

    v74 = [v376 objectForKeyedSubscript:@"queryUnderstandingOutput"];
    [v48 setQueryUnderstandingOutput:v74];

    v369 = [v376 objectForKeyedSubscript:@"query"];
    v349 = [v376 objectForKeyedSubscript:@"filterQueries"];
    v348 = [v376 objectForKeyedSubscript:@"suggestions"];
    v75 = [v376 objectForKeyedSubscript:@"isMath"];
    v343 = [v75 BOOLValue];

    v76 = [v376 objectForKeyedSubscript:@"isNLQuery"];
    v356 = [v76 BOOLValue];

    v77 = [v389 queryContext];
    v78 = [v77 isSearchToolClient];

    if ([v48 enableInstantAnswers])
    {
      v79 = 1;
    }

    else
    {
      v80 = [v389 queryContext];
      v79 = [v80 isSearchToolClient];
    }

    v81 = *(self + 8);
    v82 = [v389 queryContext];
    v83 = +[CSInstantAnswers isInstantAnswerTriggerQuery:isCJK:isSearchTool:](CSInstantAnswers, "isInstantAnswerTriggerQuery:isCJK:isSearchTool:", v383, (v81 >> 1) & 1, [v82 isSearchToolClient]);

    if ((v79 | v78))
    {
      v84 = +[SPCoreSpotlightIndexer sharedInstance];
      v489 = 0;
      v488 = 0;
      [v84 processSearchString:v383 intoTrimmedString:&v489 andTokens:&v488];
      v355 = v489;
      v358 = v488;
    }

    else
    {
      v358 = 0;
      v355 = 0;
    }

    v85 = [v48 queryUnderstandingOutput];
    v359 = [CSPersonalAnswers personalAnswersEventIntentForQUOutput:v85 isDebugLoggingEnabled:0];

    if (v359)
    {
      v86 = v79;
    }

    else
    {
      v86 = 0;
    }

    if ((v86 & v83 & 1) == 0)
    {
      [v48 setDisableBundles:&off_100099078];
    }

    v87 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v88 = CSRedactString();
      *buf = 138412802;
      *&buf[4] = v88;
      *&buf[12] = 1024;
      *&buf[14] = v79;
      *&buf[18] = 1024;
      *&buf[20] = v83;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[personal answers][query] For Query = %@, personalAnswersAllowed = %d, isPersonalAnswersTriggeringQuery = %d", buf, 0x18u);
    }

    if ((v79 & v83) != 1)
    {
      goto LABEL_109;
    }

    if ([CSInstantAnswers overrideParsedQuery:v383])
    {
      v89 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v90 = CSRedactString();
        *buf = 138412290;
        *&buf[4] = v90;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[personal answers][query] Overriding parsed query for searchString = %@", buf, 0xCu);
      }
    }

    v91 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v92 = CSRedactString();
      *buf = 138412290;
      *&buf[4] = v92;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "[personal answers][query] using fallback personalAnswerQuery for searchString = %@", buf, 0xCu);
    }

    if ([v358 count] >= 2)
    {
      v93 = 2;
    }

    else
    {
      v93 = 3;
    }

    v94 = *(self + 8);
    if ((v94 & 2) != 0)
    {
      if ([v355 length] < 3)
      {
        v95 = 1;
LABEL_90:
        v96 = +[NSMutableSet set];
        v97 = [CSPersonalAnswers personalAnswersFallbackQueries:v358 queryComponents:&__NSArray0__struct searchString:v355 answerAttributeIntents:v96 isShortQuery:v95 locale:@"en"];
        if (v97)
        {
          v98 = [CSPersonalAnswers attributesFromIntent:v96];
          v99 = [v48 fetchAttributes];
          v100 = [v98 allObjects];
          v101 = [v99 arrayByAddingObjectsFromArray:v100];
          [v48 setFetchAttributes:v101];

          [v48 setInstantAnswersBundleIDs:&off_100099090];
          [v48 setInstantAnswersQueries:v97];
          v102 = logForCSLogCategoryQuery();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
          {
            sub_100063204();
          }

          [v48 setDisableBundles:&__NSArray0__struct];
          if (!v359)
          {
            v103 = objc_opt_new();
            v104 = [NSString alloc];
            v105 = [v104 initWithFormat:@"(%@ != %@)", MDItemBundleID, @"com.apple.spotlight.events"];
            [v103 addObject:v369];
            [v103 addObject:v105];
            v106 = [v103 componentsJoinedByString:@" && "];

            v369 = v106;
          }

          v107 = logForCSLogCategoryQuery();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = CSRedactString();
            *buf = 138412290;
            *&buf[4] = v108;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "[personal answers][query] Modified queryString = %@", buf, 0xCu);
          }

          v109 = logForCSLogCategoryQuery();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
          {
            sub_100063278();
          }

          v110 = [v96 allObjects];
          [v48 setAnswerAttributes:v110];

          v111 = [v96 allObjects];
          v112 = [v389 queryContext];
          [v112 setAnswerAttributes:v111];
        }

        v113 = [v389 queryContext];
        v114 = [v113 answerAttributes];
        if ([v114 count])
        {
          v115 = 1;
        }

        else
        {
          v115 = v359 == 0;
        }

        v116 = !v115;

        if (v116)
        {
          v117 = [CSPersonalAnswers attributeIntentsFromQU:v359];
          v118 = [v389 queryContext];
          [v118 setAnswerAttributes:v117];
        }

LABEL_109:
        if (v78)
        {
          v119 = +[SPCoreSpotlightIndexer sharedInstance];
          v120 = objc_opt_respondsToSelector();

          if (v120)
          {
            v121 = +[SPCoreSpotlightIndexer sharedInstance];
            [v121 rewriteFirstPassQueryWithQueryString:v369 context:v48 trimmedSearchStringTokens:v358 populateDateSynonyms:1];
          }
        }

        [v48 setMaxCount:v366];
        [v48 setGrouped:v366 != 0];
        if (v377 && v383)
        {
          if ([v351 count])
          {
            v122 = [v351 componentsJoinedByString:@" || "];
            v123 = [NSString stringWithFormat:@"(%@ || %@)", v369, v122];

            v369 = v123;
          }

          v124 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v369;
            _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "Word embeddings on, new query string = %@", buf, 0xCu);
          }
        }

        v125 = [v376 objectForKeyedSubscript:@"completionString"];
        v126 = [v125 length];

        if (v126)
        {
          v127 = [v376 objectForKeyedSubscript:@"completionString"];
          [v48 setCompletionString:v127];

          v128 = [v376 objectForKeyedSubscript:@"completionCount"];
          [v48 setCompletionResultCount:{objc_msgSend(v128, "intValue")}];

          v129 = [v376 objectForKeyedSubscript:@"completionOptions"];
          [v48 setCompletionOptions:{objc_msgSend(v129, "unsignedIntValue")}];

          v130 = [v376 objectForKeyedSubscript:@"completionAttributes"];
          [v48 setCompletionAttributes:v130];
        }

        v131 = SPLogForSPLogCategoryDefault();
        v132 = v131;
        if (gSPLogDebugAsDefault)
        {
          v133 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v133 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v131, v133))
        {
          v134 = [v48 dominantRankingQueryCount];
          v135 = [v48 dominatedRankingQueryCount];
          v136 = [v48 shortcutBit];
          v137 = [v48 highMatchBit];
          v138 = [v48 lowMatchBit];
          v139 = [v48 highRecencyBit];
          v140 = [v48 lowRecencyBit];
          *buf = 134219520;
          *&buf[4] = v134;
          *&buf[12] = 2048;
          *&buf[14] = v135;
          *&buf[22] = 2048;
          v509 = v136;
          *v510 = 2048;
          *&v510[2] = v137;
          *&v510[10] = 2048;
          *&v510[12] = v138;
          v511 = 2048;
          v512 = v139;
          v513 = 2048;
          v514 = v140;
          _os_log_impl(&_mh_execute_header, v132, v133, "dominantRankingQueryCount:%ld dominatedRankingQueryCount:%ld shortcutBit:%ld, highMatchBit:%ld, lowMatchBit:%ld, highRecencyBit:%ld, lowRecencyBit:%ld", buf, 0x48u);
        }

        v141 = SPLogForSPLogCategoryDefault();
        v142 = v141;
        if (gSPLogDebugAsDefault)
        {
          v143 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v143 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v141, v143))
        {
          v144 = [v48 rankingQueries];
          *buf = 138412802;
          *&buf[4] = v369;
          *&buf[12] = 2112;
          *&buf[14] = v144;
          *&buf[22] = 2048;
          v509 = v366;
          _os_log_impl(&_mh_execute_header, v142, v143, "Query string: %@\n\tRanking: %@\n\tmaxCount:%lld", buf, 0x20u);
        }

        v484 = 0;
        v485 = &v484;
        v486 = 0x2020000000;
        v487 = [v389 isPeopleSearch];
        v145 = qword_1000A8428;
        v146 = qword_1000A8430;
        v147 = v384;
        if (v384 == 10)
        {
          v147 = [v389 previousQueryKind];
        }

        v148 = *(v485 + 24);
        v149 = [v48 keyboardLanguage];
        v382 = [v370 rankingConfigurationWithMeContact:v145 emailAddresses:v146 phoneFavorites:v361 vipList:v362 clientBundle:v352 spotlightQuery:v369 userQuery:v383 tokenString:v360 queryKind:v147 flags:v148 | v363 keyboardLanguage:v149];

        v150 = [v48 completionString];

        if (v150)
        {
          v151 = [v382 fuzzyMatchMask];
          [v48 setFuzzyMask:{v151, v152}];
          v153 = [v382 fuzzyMatchCheck];
          [v48 setFuzzyMatch:{v153, v154}];
        }

        v155 = [v382 rankingQueries];
        v156 = [v376 objectForKeyedSubscript:@"queryTerms"];
        v350 = [v376 objectForKeyedSubscript:@"rankCategories"];
        v157 = [v155 count];
        v347 = v156;
        if (v356)
        {
          if (v156)
          {
            v158 = PRSRankingItemRankerAddJunkFilter();
            v159 = [(SPCoreSpotlightDatastore *)self rankingQueriesAddingQueryTerms:v158 rankingQueries:v155];

            v155 = v159;
          }

          if (v350)
          {
            v160 = [v350 keysSortedByValueUsingSelector:"compare:"];
            [v370 setRankCategories:v160];
          }

          [v370 setIsNLSearch:1];
        }

        v161 = [v155 count];
        [v48 setParseUserQuery:v356];
        [v48 setRankingQueries:v155];
        [v48 setStrongRankingQueryCount:{objc_msgSend(v382, "strongRankingQueryCount")}];
        v364 = v161 - v157;
        [v48 setDominantRankingQueryCount:{objc_msgSend(v382, "dominantRankingQueryCount") + v161 - v157}];
        [v48 setDominatedRankingQueryCount:{objc_msgSend(v382, "dominatedRankingQueryCount")}];
        [v48 setShortcutBit:{objc_msgSend(v382, "shortcutBit")}];
        [v48 setHighMatchBit:{objc_msgSend(v382, "highMatchBit")}];
        [v48 setLowMatchBit:{objc_msgSend(v382, "lowMatchBit")}];
        [v48 setHighRecencyBit:{objc_msgSend(v382, "highRecencyBit")}];
        [v48 setLowRecencyBit:{objc_msgSend(v382, "lowRecencyBit")}];
        v346 = v155;
        v162 = [v382 requiredAttributes];
        v357 = [v162 array];

        v163 = [v48 fetchAttributes];
        v164 = [NSSet setWithArray:v163];

        v165 = objc_opt_class();
        v166 = [v48 fetchAttributes];
        v167 = [v165 _makeUniqueFetchAttributesWithAttributes:v166 extraAttributes:v357];
        [v48 setFetchAttributes:v167];

        v168 = [v48 fetchAttributes];
        v169 = [v168 count];

        Mutable = CFBitVectorCreateMutable(kCFAllocatorDefault, v169);
        CFBitVectorSetCount(Mutable, v169);
        v482 = 0u;
        v483 = 0u;
        v480 = 0u;
        v481 = 0u;
        v171 = [v48 fetchAttributes];
        v172 = [v171 countByEnumeratingWithState:&v480 objects:v507 count:16];
        if (v172)
        {
          v173 = 0;
          v174 = *v481;
          do
          {
            for (i = 0; i != v172; i = i + 1)
            {
              if (*v481 != v174)
              {
                objc_enumerationMutation(v171);
              }

              v176 = *(*(&v480 + 1) + 8 * i);
              v177 = [v48 fetchAttributes];
              v178 = [v177 objectAtIndex:v173];
              if (v178 != v176)
              {
                __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]", "SPCoreSpotlightDatastore.m", 3242, "[queryContext.fetchAttributes objectAtIndex:(NSUInteger)bvi] == s");
              }

              if ([v164 containsObject:v176])
              {
                CFBitVectorSetBitAtIndex(Mutable, v173, 1u);
              }

              ++v173;
            }

            v172 = [v171 countByEnumeratingWithState:&v480 objects:v507 count:16];
          }

          while (v172);

          [v48 setNonTopHitFetchAttributeIndexesBits:Mutable];
        }

        else
        {
        }

        v179 = 0;
        v180 = "[originalFetchSet containsObject:[queryContext.fetchAttributes objectAtIndex:(NSUInteger)i]]";
        while (v179 < CFBitVectorGetCount(Mutable))
        {
          if (CFBitVectorGetBitAtIndex(Mutable, v179))
          {
            v181 = [v48 fetchAttributes];
            v182 = [v181 objectAtIndex:v179];
            if (([v164 containsObject:v182] & 1) == 0)
            {
              v301 = 3254;
              goto LABEL_271;
            }
          }

          else
          {
            v181 = [v48 fetchAttributes];
            v182 = [v181 objectAtIndex:v179];
            if ([v164 containsObject:v182])
            {
              v301 = 3256;
              v180 = "![originalFetchSet containsObject:[queryContext.fetchAttributes objectAtIndex:(NSUInteger)i]]";
LABEL_271:
              __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]", "SPCoreSpotlightDatastore.m", v301, v180);
            }
          }

          ++v179;
        }

        CFRelease(Mutable);
        if (!v369)
        {
          v24 = 0;
LABEL_264:

          _Block_object_dispose(&v484, 8);
          goto LABEL_265;
        }

        [v389 setAllowAnonymousDataCollection:{objc_msgSend(v382, "allowAnonymousDataCollection")}];
        [v48 setInternal:1];
        [v48 setLowPriority:0];
        v183 = v364 + [v382 rankingBitCount] - 3;
        v184 = -1 << v183;
        v185 = (v183 & 0x40) == 0;
        if ((v183 & 0x40) != 0)
        {
          v186 = 0;
        }

        else
        {
          v186 = -1 << v183;
        }

        v187 = v184 | (0x7FFFFFFFFFFFFFFFuLL >> ~v183);
        if (v185)
        {
          v188 = v187;
        }

        else
        {
          v188 = v184;
        }

        v189 = SPLogForSPLogCategoryDefault();
        v190 = v189;
        v336 = v188;
        v337 = v186;
        if (gSPLogDebugAsDefault)
        {
          v191 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v191 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v189, v191))
        {
          v192 = [v48 rankingQueries];
          v193 = [v192 count];
          *buf = 67109120;
          *&buf[4] = v193;
          _os_log_impl(&_mh_execute_header, v190, v191, "ranking queries count %d", buf, 8u);
        }

        v365 = +[NSMutableArray array];
        [v365 addObject:@"kMDItemDisableSearchInSpotlight!=1"];
        if ([v349 count])
        {
          [v365 addObjectsFromArray:v349];
        }

        if ((*(self + 8) & 4) != 0)
        {
          v194 = @"!(kMDItemContentRating=1 && (_kMDItemBundleID=com.apple.mobileslideshow || _kMDItemBundleID=com.apple.MobileSMS))";
        }

        else
        {
          v194 = @"(kMDItemContentRating!=1)";
        }

        [v365 addObject:v194];
        v195 = *(self + 8);
        if ((v195 & 8) == 0)
        {
          v196 = [NSString stringWithFormat:@"(%@ != %@)", MDItemMediaTypes, CSMediaTypeMusicVideo];
          [v365 addObject:v196];

          v195 = *(self + 8);
        }

        if ((v195 & 0x10) == 0)
        {
          [v365 addObject:@"(!(_kMDItemBundleID=com.apple.iBooks && kMDItemGenre=Erotica))"];
        }

        if ([v389 parsecAvailable])
        {
          [v365 addObject:@"(!(_kMDItemBundleID=com.apple.Maps))"];
        }

        v197 = [v389 queryContext];
        v198 = [v197 deviceAuthenticationState] == 0;

        if (!v198)
        {
          v506[0] = SPApplicationBundleIdGeneralApplication;
          v506[1] = SPApplicationBundleIdGeneralAppClips;
          v506[2] = PRSRankingShortcutsBundleString;
          v199 = [NSArray arrayWithObjects:v506 count:3];
          [v48 setBundleIDs:v199];

          v505 = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v200 = [NSArray arrayWithObjects:&v505 count:1];
          [v48 setProtectionClasses:v200];

LABEL_201:
          [v365 addObject:@"(_kMDItemUserActivityType != \"com.apple.stocks.v2.ForYouFeed\" && _kMDItemUserActivityType != \"com.apple.stocks.v2.SymbolFeed\""];
          v209 = +[SPCoreSpotlightIndexer sharedInstance];
          v210 = objc_opt_respondsToSelector();

          if (v210)
          {
            v211 = +[SPCoreSpotlightIndexer sharedInstance];
            v209 = [v211 fileProviderDomainFilterQueries];

            if (v209)
            {
              [v365 addObjectsFromArray:v209];
            }
          }

          [v365 addObject:@"(kMDItemIsTrashed!=1)"];
          if ([v365 count])
          {
            v212 = [v48 filterQueries];
            if (v212)
            {
              v209 = [v48 filterQueries];
              v213 = [v209 arrayByAddingObjectsFromArray:v365];
            }

            else
            {
              v213 = v365;
            }

            [v48 setFilterQueries:v213];
            if (v212)
            {
            }
          }

          [v365 addObject:@"(_kMDItemUserActivityType != \"com.apple.stocks.v2.ForYouFeed\" && _kMDItemUserActivityType != \"com.apple.stocks.v2.SymbolFeed\""];
          v214 = [v389 disabledBundles];
          if ([v214 count])
          {
            v215 = [v214 arrayByAddingObjectsFromArray:qword_1000A84C0];
          }

          else
          {
            v215 = qword_1000A84C0;
          }

          v216 = v215;

          v217 = PRSRankingPeopleFindMyBundleString;
          v218 = [v216 containsObject:PRSRankingPeopleFindMyBundleString];
          v219 = PRSRankingFindMyBundleString;
          v220 = [v216 containsObject:PRSRankingFindMyBundleString];
          if (!(v220 & 1 | ((v218 & 1) == 0)) || (v219 = v217, !(v218 & 1 | ((v220 & 1) == 0))))
          {
            v221 = [v216 arrayByAddingObject:v219];

            v216 = v221;
          }

          if ([v216 containsObject:PRSRankingContactsBundleString])
          {
            v222 = PRSRankingPersonBundleString;
            if (([v216 containsObject:PRSRankingPersonBundleString] & 1) == 0)
            {
              v223 = [v216 arrayByAddingObject:v222];

              v216 = v223;
            }
          }

          v224 = [v48 disableBundles];
          v225 = [v224 arrayByAddingObjectsFromArray:v216];
          [v48 setDisableBundles:v225];
          v339 = v216;

          v345 = [v389 disabledApps];
          if ([v345 count])
          {
            v342 = [NSSet setWithArray:v345];
          }

          else
          {
            v342 = 0;
          }

          v226 = [v48 bundleIDs];
          v227 = [v226 count] == 0;

          if (v227)
          {
            [v48 setPommes:1];
          }

          else
          {
            v228 = [v389 queryContext];
            v229 = [v228 isSearchToolClient];

            if (v229)
            {
              +[SDPommesFeature allBundleIDsUsingPommesRankingSearchTool];
            }

            else
            {
              +[SDPommesFeature allBundleIDsUsingPommesRanking];
            }
            v230 = ;
            v231 = [NSSet setWithArray:v230];

            v232 = [v48 bundleIDs];
            v233 = [NSSet setWithArray:v232];

            [v48 setPommes:{objc_msgSend(v231, "intersectsSet:", v233)}];
          }

          v234 = [v389 queryContext];
          v235 = [v234 hasMarkedText];

          if (v235)
          {
            v236 = [v389 queryContext];
            v237 = [v236 markedTextArray];
            [v48 setMarkedTextArray:v237];
          }

          if ([v389 cancelled])
          {
            v24 = 0;
          }

          else
          {
            v238 = SPLogForSPLogCategoryQuery();
            v239 = v238;
            if (gSPLogDebugAsDefault)
            {
              v240 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v240 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v238, v240))
            {
              *buf = 138412546;
              *&buf[4] = v369;
              *&buf[12] = 2112;
              *&buf[14] = v339;
              _os_log_impl(&_mh_execute_header, v239, v240, "Starting query:%@, disabledBundleIds:%@", buf, 0x16u);
            }

            v340 = [(SPCoreSpotlightDatastore *)self coreSpotlightQueryTaskWithQuery:v389 reuseTask:v380];
            v241 = [v48 rankingQueries];
            v242 = [v340 rankingInfo];
            [v242 setRankingQueries:v241];

            v478 = 0u;
            v479 = 0u;
            v476 = 0u;
            v477 = 0u;
            v243 = [v48 rankingQueries];
            v244 = [v243 countByEnumeratingWithState:&v476 objects:v504 count:16];
            if (v244)
            {
              v245 = *v477;
              do
              {
                for (j = 0; j != v244; j = j + 1)
                {
                  if (*v477 != v245)
                  {
                    objc_enumerationMutation(v243);
                  }

                  v247 = *(*(&v476 + 1) + 8 * j);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v248 = [v247 objectForKey:@"kCIBitCount"];
                      [v248 integerValue];
                    }
                  }
                }

                v244 = [v243 countByEnumeratingWithState:&v476 objects:v504 count:16];
              }

              while (v244);
            }

            v249 = [v389 queryContext];
            v250 = [v249 searchEntities];
            v251 = [v340 rankingInfo];
            [v251 setDisableResultTruncation:v250 == 0];

            [v340 beginQuery:v389];
            v475[0] = 0;
            v475[1] = v475;
            v475[2] = 0x2020000000;
            v475[3] = 0;
            v353 = objc_opt_new();
            LOBYTE(v249) = [v389 isPhotosSearch];
            v252 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedLinks andAddToMap:v353];
            v253 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedPhotos andAddToMap:v353];
            [objc_opt_class() setButtonOnPhotosInAppSection:v253 withQuery:v389 queryString:v369 queryParams:v376];
            [v253 setDoNotFold:0];
            v330 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedPhotosMessages andAddToMap:v353];
            v328 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedPhotosNotes andAddToMap:v353];
            v327 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedPhotosFiles andAddToMap:v353];
            v326 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedPhotosFromPhotos andAddToMap:v353];
            v254 = [objc_opt_class() sectionWithBundleIdentifier:SSContactsBundleIdentifier andAddToMap:v353];
            [v254 setDoNotFold:0];
            v325 = v254;
            v324 = [objc_opt_class() sectionWithBundleIdentifier:SSPeopleBundleIdentifier andAddToMap:v353];
            v323 = [objc_opt_class() sectionWithBundleIdentifier:SSPhotosBundleIdentifier andAddToMap:v353];
            v255 = [v48 fetchAttributes];
            v256 = [v255 count];
            v320 = v253;
            v321 = v252;
            v322 = v249;
            v318 = objc_opt_new();
            v257 = objc_alloc_init(NSMutableIndexSet);
            if (v256)
            {
              for (k = 0; k != v256; ++k)
              {
                v259 = [v382 requiredAttributes];
                v260 = [v255 objectAtIndexedSubscript:k];
                v261 = [v259 containsObject:v260];

                if (v261)
                {
                  [v257 addIndex:k];
                }
              }
            }

            v473[0] = 0;
            v473[1] = v473;
            v473[2] = 0x2020000000;
            v474 = 0;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v509 = sub_10003C26C;
            *v510 = sub_10003C27C;
            *&v510[8] = objc_opt_new();
            v262 = [v389 queryContext];
            v335 = [SSSuggestionResultBuilder buildResultsWithSuggestionsData:v348 queryContext:v262];

            [*(*&buf[8] + 40) addObjectsFromArray:v335];
            v315 = [[NSMapTable alloc] initWithKeyOptions:66307 valueOptions:0 capacity:256];
            v263 = [[NSPointerFunctions alloc] initWithOptions:258];
            [v263 setAcquireFunction:0];
            [v263 setRelinquishFunction:sub_10003C284];
            v264 = [NSMapTable alloc];
            v265 = [[NSPointerFunctions alloc] initWithOptions:66307];
            v312 = [v264 initWithKeyPointerFunctions:v265 valuePointerFunctions:v263 capacity:256];
            v334 = v263;

            v266 = [NSMapTable alloc];
            v267 = [[NSPointerFunctions alloc] initWithOptions:66307];
            v268 = [v266 initWithKeyPointerFunctions:v267 valuePointerFunctions:v263 capacity:256];

            v269 = [[SFClientTimingFeedback alloc] initWithEvent:@"com.apple.searchd.feature.extraction" timeInterval:0 queryId:{objc_msgSend(v48, "queryID")}];
            v310 = [[SFClientTimingFeedback alloc] initWithEvent:@"com.apple.searchd.indomain.score.computation" timeInterval:0 queryId:{objc_msgSend(v48, "queryID")}];
            v311 = v269;
            v472[0] = 0;
            v472[1] = v472;
            v472[2] = 0x2020000000;
            v472[3] = 0;
            v270 = *(v388 + 16);
            v469 = *v388;
            v470 = v270;
            v471 = *(v388 + 32);
            v463 = 0;
            v464 = &v463;
            v465 = 0x3032000000;
            v466 = sub_10003C288;
            v467 = sub_10003C2B4;
            v468 = 0;
            v454[0] = _NSConcreteStackBlock;
            v454[1] = 3221225472;
            v454[2] = sub_10003C2BC;
            v454[3] = &unk_100093490;
            v271 = *v388;
            v272 = *(v388 + 16);
            v462 = *(v388 + 32);
            v461 = v272;
            v460 = v271;
            val = v389;
            v455 = val;
            v341 = v340;
            v456 = v341;
            v457 = &v463;
            v458 = v473;
            v459 = buf;
            v332 = [v454 copy];
            v444[0] = _NSConcreteStackBlock;
            v444[1] = 3221225472;
            v444[2] = sub_10003CAB4;
            v444[3] = &unk_1000934B8;
            v449 = v469;
            v450 = v470;
            v451 = v471;
            v452 = v29;
            v453 = v366;
            v316 = v315;
            v445 = v316;
            v448 = &v484;
            v273 = v312;
            v446 = v273;
            v313 = v268;
            v447 = v313;
            v367 = objc_retainBlock(v444);
            os_unfair_lock_lock(&unk_1000A84D0);
            v308 = [(NSDictionary *)self->_renderEngagementCounts copy];
            os_unfair_lock_unlock(&unk_1000A84D0);
            objc_initWeak(&location, val);
            objc_initWeak(&from, v341);
            *v498 = 0;
            v499 = v498;
            v500 = 0x3032000000;
            v501 = sub_10003C26C;
            v502 = sub_10003C27C;
            v503 = 0;
            v274 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v275 = dispatch_queue_attr_make_with_overcommit();
            v276 = qos_class_self();
            v277 = dispatch_queue_attr_make_with_qos_class(v275, v276, 0);
            v278 = dispatch_queue_create("result processing", v277);

            v397[0] = _NSConcreteStackBlock;
            v397[1] = 3221225472;
            v397[2] = sub_10003DFA8;
            v397[3] = &unk_1000935D0;
            v431 = v469;
            v432 = v470;
            v433 = v471;
            objc_copyWeak(&v429, &location);
            objc_copyWeak(&v430, &from);
            v307 = v278;
            v398 = v307;
            v305 = v316;
            v399 = v305;
            v306 = v273;
            v400 = v306;
            v314 = v313;
            v401 = v314;
            v402 = v383;
            v403 = v342;
            v423 = v498;
            v434 = v256;
            v304 = v257;
            v404 = v304;
            v279 = v48;
            v405 = v279;
            v406 = v370;
            v317 = v308;
            v407 = v317;
            v303 = v353;
            v408 = v303;
            v354 = v318;
            v409 = v354;
            v424 = v475;
            v309 = v330;
            v410 = v309;
            v319 = v328;
            v411 = v319;
            v329 = v327;
            v412 = v329;
            v280 = v323;
            v435 = v384;
            v425 = v473;
            v331 = v280;
            v413 = v280;
            v414 = self;
            v437 = v377;
            v438 = v343;
            v281 = v369;
            v415 = v281;
            v439 = a4;
            v440 = v322;
            v441 = v374;
            v397[5] = v336;
            v397[4] = v337;
            v375 = v325;
            v416 = v375;
            v378 = v324;
            v417 = v378;
            v338 = v321;
            v418 = v338;
            v344 = v320;
            v419 = v344;
            v372 = v326;
            v420 = v372;
            v426 = buf;
            v427 = v472;
            v428 = v491;
            v282 = v310;
            v421 = v282;
            v385 = v311;
            v422 = v385;
            v436 = v29;
            v283 = objc_retainBlock(v397);
            v284 = v464[5];
            v464[5] = v283;

            objc_initWeak(&v396, self);
            v285 = +[SPCoreSpotlightIndexer sharedInstance];
            v390[0] = _NSConcreteStackBlock;
            v390[1] = 3221225472;
            v390[2] = sub_100042660;
            v390[3] = &unk_1000935F8;
            objc_copyWeak(&v391, &v396);
            objc_copyWeak(&v392, &from);
            v393 = v469;
            v394 = v470;
            v395 = v471;
            v390[4] = &v463;
            v286 = [v285 taskForTopHitQueryWithQueryString:v281 queryContext:v279 eventHandler:v367 resultsHandler:v332 completionHandler:v390];
            [v341 setJob:v286];

            objc_destroyWeak(&v392);
            objc_destroyWeak(&v391);
            objc_destroyWeak(&v396);

            objc_destroyWeak(&v430);
            objc_destroyWeak(&v429);

            _Block_object_dispose(v498, 8);
            objc_destroyWeak(&from);
            objc_destroyWeak(&location);
            if ([val cancelled])
            {
              v24 = 0;
            }

            else
            {
              v287 = SPLogForSPLogCategoryDefault();
              v288 = v287;
              if (gSPLogDebugAsDefault)
              {
                v289 = OS_LOG_TYPE_DEFAULT;
              }

              else
              {
                v289 = OS_LOG_TYPE_DEBUG;
              }

              if (os_log_type_enabled(v287, v289))
              {
                v290 = qos_class_self();
                *v498 = 67109120;
                *&v498[4] = v290;
                _os_log_impl(&_mh_execute_header, v288, v289, "QOS pre startQueryTask: %d", v498, 8u);
              }

              v291 = +[SPCoreSpotlightIndexer sharedInstance];
              v292 = [v341 job];
              [v291 startQueryTask:v292];

              v24 = v341;
            }

            _Block_object_dispose(&v463, 8);
            _Block_object_dispose(v472, 8);

            _Block_object_dispose(buf, 8);
            _Block_object_dispose(v473, 8);

            _Block_object_dispose(v475, 8);
          }

          goto LABEL_264;
        }

        maxMovieRating = self->_maxMovieRating;
        if (maxMovieRating && [(NSNumber *)maxMovieRating intValue]<= 999)
        {
          v202 = [(NSNumber *)self->_maxMovieRating intValue];
          v203 = [NSString stringWithFormat:@"(%@!=%@ || %@<=%d)", MDItemMediaTypes, CSMediaTypeMovie, MDItemExtendedContentRating, v202];
          [v365 addObject:v203];
        }

        maxTVShowRating = self->_maxTVShowRating;
        if (maxTVShowRating && [(NSNumber *)maxTVShowRating intValue]<= 999)
        {
          v205 = [(NSNumber *)self->_maxTVShowRating intValue];
          v206 = [NSString stringWithFormat:@"(%@!=%@ || %@<=%d)", MDItemMediaTypes, CSMediaTypeTVShow, MDItemExtendedContentRating, v205];
          [v365 addObject:v206];
        }

        v207 = [v389 contentFilters];
        if (!v207)
        {
          goto LABEL_201;
        }

        if (v207)
        {
          if ((v207 & 2) != 0)
          {
            v208 = @"(kMDItemIsLocal=1 || _kMDItemBundleID!=com.apple.Music || _kMDItemBundleID!=com.apple.videos)";
          }

          else
          {
            v208 = @"(kMDItemIsLocal=1 || _kMDItemBundleID!=com.apple.Music)";
          }
        }

        else
        {
          if ((v207 & 2) == 0)
          {
            goto LABEL_201;
          }

          v208 = @"(kMDItemIsLocal=1 || _kMDItemBundleID!=com.apple.videos)";
        }

        [v365 addObject:v208];
        goto LABEL_201;
      }

      v94 = *(self + 8);
    }

    v95 = (v94 & 2) == 0 && [v355 length] <= v93;
    goto LABEL_90;
  }

  v24 = 0;
LABEL_265:

LABEL_266:
  _Block_object_dispose(v491, 8);
LABEL_267:

  v293 = *v388;
  v294 = *(v388 + 8);
  v295 = *(v388 + 16);
  v296 = *(v388 + 24);
  v297 = *(v388 + 28);
  v298 = *(v388 + 32);
  si_tracing_log_span_end();
  v299 = v496;
  *v388 = v495;
  *(v388 + 16) = v299;
  *(v388 + 32) = v497;

  return v24;
}

+ (void)modifyBatchSize:(unint64_t *)a3 batchIncrement:(unint64_t *)a4 batches:(unint64_t *)a5 withSectionsCount:(unint64_t)a6
{
  if (qword_1000A8550 != -1)
  {
    sub_100063468();
  }

  v10 = a6 / 7;
  v11 = a6 % 7 != 0;
  if (a6 % 7)
  {
    ++v10;
  }

  if (v10 % dword_1000A8548)
  {
    v12 = 6;
    v13 = 4;
    while (1)
    {
      v10 = a6 / v12;
      v11 = a6 % v12 != 0;
      if (a6 % v12)
      {
        ++v10;
      }

      if (v12 <= 4)
      {
        break;
      }

      --v12;
      if (!(v10 % dword_1000A8548))
      {
        v13 = v12 + 1;
        break;
      }
    }
  }

  else
  {
    v13 = 7;
  }

  *a3 = v13;
  *a4 = v11;
  *a5 = v10;
}

+ (id)sectionWithBundleIdentifier:(id)a3 andAddToMap:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:v5];
  }

  else
  {
    v8 = [SFMutableResultSection mutableSectionWithBundleId:v5];
    [v8 setDomain:1];
    [v8 setDoNotFold:1];
    [v6 setObject:v8 forKey:v5];
  }

  return v8;
}

+ (void)setButtonOnPhotosInAppSection:(id)a3 withQuery:(id)a4 queryString:(id)a5 queryParams:(id)a6
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 queryContext];
  v10 = [v9 searchEntities];
  v11 = [v10 lastObject];

  if (v11)
  {
    v12 = [v11 currentSearchString];
  }

  else
  {
    v13 = [v7 queryContext];
    v12 = [v13 searchString];
  }

  if (!v12)
  {
    v12 = &stru_100094040;
  }

  if (([v7 isPeopleSearch] & 1) == 0)
  {
    v26 = @"kMDQueryOptionContextIdentifier";
    v14 = [v7 connection];
    v15 = [v14 bundleID];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_100094040;
    }

    v27 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v19 = SSQueryParserStripKindFromString();

    v12 = v19;
  }

  v20 = [SPSearchEntity searchEntityWithPhotosSearchString:v12 fromSuggestion:0];
  v21 = [v20 command];
  v22 = objc_opt_new();
  [v22 setSymbolName:@"chevron.forward"];
  v23 = objc_opt_new();
  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"SHOW_MORE" value:&stru_100094040 table:@"SpotlightServices"];
  [v23 setTitle:v25];

  [v23 setImage:v22];
  [v23 setCommand:v21];
  [v8 setButton:v23];
}

+ (id)removedDuplicatePhotosSectionsFromSections:(id)a3 isPhotosScopedSearch:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    goto LABEL_15;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v34;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v33 + 1) + 8 * i);
      v13 = qword_1000A8458;
      v14 = [v12 bundleIdentifier];
      if ([v13 containsObject:v14])
      {
        v15 = [v12 results];
        v16 = [v15 count];

        if (v16)
        {
          ++v9;
        }
      }

      else
      {
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v8);
  if (v9 == 1)
  {
LABEL_15:
    v17 = &qword_1000A8450;
  }

  else
  {
LABEL_16:
    v17 = &qword_1000A8458;
  }

  v18 = *v17;
  v19 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v29 + 1) + 8 * j);
        v26 = [v25 bundleIdentifier];
        v27 = [v18 containsObject:v26];

        if ((v27 & 1) == 0)
        {
          [v19 addObject:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }

  return v19;
}

- (void)performQueryRewriteForQuery:(id)a3 withCorrection:(id)a4 task:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 cancelled] & 1) == 0)
  {
    v11 = [v8 correctedQueryWithCorrection:v9];
    v12 = SPLogForSPLogCategoryQuery();
    v13 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v12, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v14 = [v8 queryContext];
      v15 = [v14 searchString];
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, ((v13 & 1) == 0), "CoreSpotlight performing rewriting query %@ with correction %@", &v17, 0x16u);
    }

    v16 = [(SPCoreSpotlightDatastore *)self performQuery:v11 isCorrectedQuery:1 reuseTask:v10 needsFuzzy:1 pommesRewrite:0 embeddingsRequery:0];
  }
}

+ (id)_makeUniqueFetchAttributesWithAttributes:(id)a3 extraAttributes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count") + objc_msgSend(v6, "count")}];
  v8 = [NSMutableSet setWithArray:v5];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = qword_1000A84B0;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (([v5 containsObject:{v14, v17}] & 1) != 0 || objc_msgSend(v6, "containsObject:", v14))
        {
          [v7 addObject:v14];
          [v8 removeObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v15 = [v8 allObjects];
    [v7 addObjectsFromArray:v15];
  }

  return v7;
}

+ (BOOL)_isKeyboardCJK:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([v3 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"zh") & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"ko"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"yue"];
  }

  return v4;
}

- (id)taskForTopHitQueryWithQueryString:(id)a3 queryContext:(id)a4 resultsHandler:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v171 = a5;
  v170 = a6;
  v364 = 0;
  v365 = &v364;
  v366 = 0x3032000000;
  v367 = sub_10003C26C;
  v368 = sub_10003C27C;
  v169 = v9;
  v369 = v169;
  if (!v365[5])
  {
    __assert_rtn("[SPCoreSpotlightDatastore taskForTopHitQueryWithQueryString:queryContext:resultsHandler:completionHandler:]", "SPCoreSpotlightDatastore.m", 4924, "queryString");
  }

  v11 = [v10 maxCount];
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11)
  {
    v12 = v11;
  }

  v174 = v12;
  if ([v10 maxRankedResultCount] < 1)
  {
    v14 = 100;
  }

  else
  {
    v13 = [v10 maxRankedResultCount];
    v14 = 100;
    if (v13 < 0x64)
    {
      v14 = v13;
    }
  }

  v180 = v14;
  v193 = v10;
  if ([v10 internal])
  {
    v15 = [v10 bundleIDs];
    if ([v15 count] == 1)
    {
      [v15 firstObject];
    }

    else
    {
      [v10 clientBundleID];
    }
    v179 = ;
  }

  else
  {
    v179 = [v10 clientBundleID];
  }

  v181 = [v10 userQuery];
  v173 = [v179 isEqualToString:PRSRankingMailBundleString];
  if (v173)
  {
    v16 = [v181 length];
    if (v16 < 5)
    {
      v17 = 20;
    }

    else if (v16 <= 8)
    {
      if (v16 == 8)
      {
        v17 = 50;
      }

      else
      {
        v17 = 25;
        if (v16 > 6)
        {
          v17 = 40;
        }
      }
    }

    else
    {
      v17 = 65;
    }

    v180 = v17;
    if ([v10 generateSuggestions])
    {
      v18 = [v181 length];
      v19 = v180;
      if (!v18)
      {
        v19 = 100;
      }

      v180 = v19;
    }
  }

  v178 = [v10 keyboardLanguage];
  v188 = [v10 fetchAttributes];
  v177 = +[SDSearchQuery isCJK];
  v172 = [SPCoreSpotlightDatastore _isKeyboardCJK:v178];
  v20 = [PRSRankingItemRanker alloc];
  v21 = [v10 queryID];
  [v10 currentTime];
  v22 = [v20 initWithSearchString:v181 queryID:v21 language:v178 currentTime:?];
  [v22 activate];
  v358 = 0;
  v359 = &v358;
  v360 = 0x3032000000;
  v361 = sub_10003C26C;
  v362 = sub_10003C27C;
  v363 = 0;
  v175 = v22;
  if (v181 && [v10 parseUserQuery])
  {
    if ([v10 maxCount])
    {
      v23 = [v10 maxCount];
      if (v23 <= v180)
      {
        v24 = v180;
      }

      else
      {
        v24 = v23;
      }
    }

    else
    {
      v24 = 0;
    }

    [v10 setMaxCount:v24];
    [v10 setGrouped:v180 != 0];
    *(&v168 + 1) = [v10 disableNLP];
    LOBYTE(v168) = v177;
    v26 = -[SPCoreSpotlightDatastore _topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:](self, "_topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:", v181, &__NSArray0__struct, v168, 11, v179, v178, [v10 queryID], v169, v170, v171);
    v27 = v359[5];
    v359[5] = v26;

    v28 = [v359[5] objectForKeyedSubscript:@"query"];
    v29 = [v28 mutableCopy];

    if ([v29 length] && objc_msgSend(v365[5], "length") && (objc_msgSend(v29, "isEqualToString:", v365[5]) & 1) == 0)
    {
      objc_msgSend(v29, "appendString:", @"&&(");
      [v29 appendString:v365[5]];
      [v29 appendString:@""]);
      v30 = [NSString stringWithFormat:@"(%@)", v29];
      v31 = v365[5];
      v365[5] = v30;
    }
  }

  else
  {
    if (v174 <= v180)
    {
      v25 = v180;
    }

    else
    {
      v25 = v174;
    }

    [v10 setMaxCount:v25];
  }

  v352 = 0;
  v353 = &v352;
  v354 = 0x3032000000;
  v355 = sub_10003C26C;
  v356 = sub_10003C27C;
  v357 = 0;
  if (v173)
  {
    os_unfair_lock_lock(&unk_1000A84B8);
    v32 = qword_1000A8438;
    v33 = qword_1000A84A0;
    os_unfair_lock_unlock(&unk_1000A84B8);
    v34 = qword_1000A8428;
    v35 = qword_1000A8430;
    v36 = v365[5];
    v37 = [v10 keyboardLanguage];
    v38 = [v175 rankingConfigurationWithMeContact:v34 emailAddresses:v35 phoneFavorites:v32 vipList:v33 clientBundle:v179 spotlightQuery:v36 userQuery:v181 tokenString:0 queryKind:11 flags:0 keyboardLanguage:v37];
    v39 = v353[5];
    v353[5] = v38;
  }

  else
  {
    v40 = v365[5];
    v32 = [v10 keyboardLanguage];
    v41 = [v175 rankingConfigurationWithMeContact:0 emailAddresses:0 phoneFavorites:0 vipList:0 clientBundle:v179 spotlightQuery:v40 userQuery:v181 tokenString:0 queryKind:11 flags:0 keyboardLanguage:v32];
    v33 = v353[5];
    v353[5] = v41;
  }

  v42 = [v10 completionString];

  if (v42)
  {
    v43 = [v353[5] fuzzyMatchMask];
    [v10 setFuzzyMask:{v43, v44}];
    v45 = [v353[5] fuzzyMatchCheck];
    [v10 setFuzzyMatch:{v45, v46}];
  }

  v47 = [v10 bundleIDs];
  v48 = [v47 count];

  if (v48)
  {
    v49 = +[NSMutableString string];
    objc_msgSend(v49, "appendFormat:", @"FieldMatch(%@,"), MDItemBundleID;
    v351 = 0u;
    v350 = 0u;
    v349 = 0u;
    v348 = 0u;
    v50 = [v10 bundleIDs];
    v51 = [v50 countByEnumeratingWithState:&v348 objects:v378 count:16];
    if (v51)
    {
      v52 = *v349;
      do
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v349 != v52)
          {
            objc_enumerationMutation(v50);
          }

          [v49 appendFormat:@"%@, ", *(*(&v348 + 1) + 8 * i)];
        }

        v51 = [v50 countByEnumeratingWithState:&v348 objects:v378 count:16];
      }

      while (v51);
    }

    v54 = [v49 substringToIndex:{objc_msgSend(v49, "length") - 1}];
    v55 = [v54 mutableCopy];

    [v55 appendString:@""]);
    v56 = [NSMutableArray arrayWithObject:v55];
    v57 = [v359[5] objectForKeyedSubscript:@"filterQueries"];
    if ([v57 count])
    {
      [v56 addObjectsFromArray:v57];
    }

    v58 = [v10 filterQueries];
    v59 = v58 == 0;

    if (v59)
    {
      [v10 setFilterQueries:v56];
    }

    else
    {
      v60 = [v10 filterQueries];
      v61 = [v60 arrayByAddingObjectsFromArray:v56];
      [v10 setFilterQueries:v61];
    }
  }

  v342 = 0;
  v343 = &v342;
  v344 = 0x3032000000;
  v345 = sub_10003C26C;
  v346 = sub_10003C27C;
  v347 = [v353[5] rankingQueries];
  v62 = v359[5];
  v63 = v10;
  if (v62)
  {
    v64 = [v62 objectForKeyedSubscript:@"queryTerms"];
    v65 = [v359[5] objectForKeyedSubscript:@"rankCategories"];
    [v343[5] count];
    v66 = [v359[5] objectForKeyedSubscript:@"isNLQuery"];
    v67 = [v66 BOOLValue];

    if (v67)
    {
      if (v64)
      {
        v68 = PRSRankingItemRankerAddJunkFilter();
        v69 = [(SPCoreSpotlightDatastore *)self rankingQueriesAddingQueryTerms:v68 rankingQueries:v343[5]];
        v70 = v343[5];
        v343[5] = v69;
      }

      if (v65)
      {
        v71 = [v65 keysSortedByValueUsingSelector:"compare:"];
        [v175 setRankCategories:v71];
      }

      [v175 setIsNLSearch:1];
    }

    [v343[5] count];

    v63 = v10;
  }

  else
  {
    v67 = 0;
  }

  [v63 setParseUserQuery:v67];
  [v63 setRankingQueries:v343[5]];
  [v63 setStrongRankingQueryCount:{objc_msgSend(v353[5], "strongRankingQueryCount")}];
  [v63 setDominantRankingQueryCount:{objc_msgSend(v353[5], "dominantRankingQueryCount")}];
  [v63 setDominatedRankingQueryCount:{objc_msgSend(v353[5], "dominatedRankingQueryCount")}];
  [v63 setShortcutBit:{objc_msgSend(v353[5], "shortcutBit")}];
  [v63 setHighMatchBit:{objc_msgSend(v353[5], "highMatchBit")}];
  [v63 setLowMatchBit:{objc_msgSend(v353[5], "lowMatchBit")}];
  [v63 setHighRecencyBit:{objc_msgSend(v353[5], "highRecencyBit")}];
  [v63 setLowRecencyBit:{objc_msgSend(v353[5], "lowRecencyBit")}];
  v336 = 0;
  v337 = &v336;
  v338 = 0x3032000000;
  v339 = sub_10003C26C;
  v340 = sub_10003C27C;
  v72 = [v353[5] requiredAttributes];
  v341 = [v72 array];

  v73 = [v10 bundleIDs];
  if ([v73 count] != 1)
  {
    goto LABEL_73;
  }

  v74 = [v10 bundleIDs];
  v75 = [v74 objectAtIndexedSubscript:0];
  IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

  if (IsSyndicatedPhotos)
  {
    v77 = +[SSPommesPhotosRanker PhotosRankingRequiredAttributes];
    v73 = v337[5];
    v337[5] = v77;
LABEL_73:
  }

  v78 = [v10 fetchAttributes];
  v79 = [v78 count];

  v80 = [v10 fetchAttributes];
  v192 = [NSSet setWithArray:v80];

  v81 = objc_opt_class();
  v82 = [v10 fetchAttributes];
  v83 = [v81 _makeUniqueFetchAttributesWithAttributes:v82 extraAttributes:v337[5]];
  [v10 setFetchAttributes:v83];

  v84 = [v10 fetchAttributes];
  [v10 setTopHitExtraFetchAttributeCount:{objc_msgSend(v84, "count") - v79}];

  v85 = [v10 fetchAttributes];
  v86 = [v85 count];

  Mutable = CFBitVectorCreateMutable(kCFAllocatorDefault, v86);
  CFBitVectorSetCount(Mutable, v86);
  v335 = 0u;
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v88 = [v10 fetchAttributes];
  v89 = [v88 countByEnumeratingWithState:&v332 objects:v377 count:16];
  if (v89)
  {
    v90 = 0;
    v91 = *v333;
    do
    {
      for (j = 0; j != v89; j = j + 1)
      {
        if (*v333 != v91)
        {
          objc_enumerationMutation(v88);
        }

        v93 = *(*(&v332 + 1) + 8 * j);
        v94 = [v193 fetchAttributes];
        v95 = [v94 objectAtIndex:v90];
        if (v95 != v93)
        {
          __assert_rtn("[SPCoreSpotlightDatastore taskForTopHitQueryWithQueryString:queryContext:resultsHandler:completionHandler:]", "SPCoreSpotlightDatastore.m", 5116, "[queryContext.fetchAttributes objectAtIndex:(NSUInteger)bvi] == s");
        }

        if ([v192 containsObject:v93])
        {
          CFBitVectorSetBitAtIndex(Mutable, v90, 1u);
        }

        ++v90;
      }

      v89 = [v88 countByEnumeratingWithState:&v332 objects:v377 count:16];
    }

    while (v89);

    v96 = v193;
    [v193 setNonTopHitFetchAttributeIndexesBits:Mutable];
  }

  else
  {

    v96 = v10;
  }

  v97 = 0;
  v98 = "[originalFetchSet containsObject:[queryContext.fetchAttributes objectAtIndex:(NSUInteger)i]]";
  while (v97 < CFBitVectorGetCount(Mutable))
  {
    if (CFBitVectorGetBitAtIndex(Mutable, v97))
    {
      v99 = [v96 fetchAttributes];
      v100 = [v99 objectAtIndex:v97];
      if (([v192 containsObject:v100] & 1) == 0)
      {
        v167 = 5128;
        goto LABEL_133;
      }
    }

    else
    {
      v99 = [v96 fetchAttributes];
      v100 = [v99 objectAtIndex:v97];
      if ([v192 containsObject:v100])
      {
        v167 = 5130;
        v98 = "![originalFetchSet containsObject:[queryContext.fetchAttributes objectAtIndex:(NSUInteger)i]]";
LABEL_133:
        __assert_rtn("[SPCoreSpotlightDatastore taskForTopHitQueryWithQueryString:queryContext:resultsHandler:completionHandler:]", "SPCoreSpotlightDatastore.m", v167, v98);
      }
    }

    ++v97;
    v96 = v193;
  }

  CFRelease(Mutable);
  v326 = 0;
  v327 = &v326;
  v328 = 0x3032000000;
  v329 = sub_10003C26C;
  v330 = sub_10003C27C;
  v331 = [v96 fetchAttributes];
  v322 = 0;
  v323 = &v322;
  v324 = 0x2020000000;
  v325 = [v327[5] count];
  v320[0] = 0;
  v320[1] = v320;
  v320[2] = 0x3032000000;
  v320[3] = sub_10003C26C;
  v320[4] = sub_10003C27C;
  v321 = objc_opt_new();
  v318[0] = 0;
  v318[1] = v318;
  v318[2] = 0x3032000000;
  v318[3] = sub_10003C26C;
  v318[4] = sub_10003C27C;
  v319 = objc_opt_new();
  v312 = 0;
  v313 = &v312;
  v314 = 0x3032000000;
  v315 = sub_10003C26C;
  v316 = sub_10003C27C;
  v101 = [NSMutableData alloc];
  v317 = [v101 initWithLength:((8 * v323[3] + 504) >> 6) + 8];
  v308 = 0;
  v309 = &v308;
  v310 = 0x2020000000;
  v311 = [v313[5] mutableBytes];
  v102 = v309[3];
  v103 = v323[3];
  *v102 = v103;
  bzero(v102 + 1, (8 * v103 + 504) >> 6);
  v306 = 0;
  v307[0] = &v306;
  v307[1] = 0x2020000000;
  v307[2] = 0x7FFFFFFFFFFFFFFFLL;
  v304 = 0;
  v305[0] = &v304;
  v305[1] = 0x2020000000;
  v305[2] = 0x7FFFFFFFFFFFFFFFLL;
  v302 = 0;
  v303[0] = &v302;
  v303[1] = 0x2020000000;
  v303[2] = 0x7FFFFFFFFFFFFFFFLL;
  v300 = 0;
  v301[0] = &v300;
  v301[1] = 0x2020000000;
  v301[2] = 0x7FFFFFFFFFFFFFFFLL;
  v298 = 0;
  v299[0] = &v298;
  v299[1] = 0x2020000000;
  v299[2] = 0x7FFFFFFFFFFFFFFFLL;
  v296 = 0;
  v297[0] = &v296;
  v297[1] = 0x2020000000;
  v297[2] = 0x7FFFFFFFFFFFFFFFLL;
  if (v323[3])
  {
    v104 = 0;
    v105 = MDItemContentCreationDate;
    v106 = MDItemBundleID;
    v186 = MDMailConversationID;
    v183 = MDQueryResultScoreL1;
    do
    {
      v107 = [v353[5] requiredAttributes];
      v108 = [v327[5] objectAtIndexedSubscript:v104];
      v109 = [v107 containsObject:v108];

      if (v109)
      {
        v110 = v309[3];
        if (*v110 > v104)
        {
          v110[(v104 >> 6) + 1] |= 1 << v104;
        }
      }

      v111 = [v327[5] objectAtIndexedSubscript:v104];
      v112 = [v111 isEqualToString:v105];

      v113 = v307;
      if (v112)
      {
        goto LABEL_104;
      }

      v114 = [v327[5] objectAtIndexedSubscript:v104];
      v115 = [v114 isEqualToString:v106];

      v113 = v305;
      if (v115)
      {
        goto LABEL_104;
      }

      v116 = [v327[5] objectAtIndexedSubscript:v104];
      v117 = [v116 isEqualToString:@"kMDQueryResultNewMatchedExtraQueriesField"];

      v113 = v303;
      if (v117)
      {
        goto LABEL_104;
      }

      v118 = [v327[5] objectAtIndexedSubscript:v104];
      v119 = [v118 isEqualToString:@"_kMDItemExternalID"];

      v113 = v301;
      if (v119)
      {
        goto LABEL_104;
      }

      v120 = [v327[5] objectAtIndexedSubscript:v104];
      v121 = [v120 isEqualToString:v186];

      v113 = v299;
      if ((v121 & 1) != 0 || ([v327[5] objectAtIndexedSubscript:v104], v122 = objc_claimAutoreleasedReturnValue(), v123 = objc_msgSend(v122, "isEqualToString:", v183), v122, v113 = v297, v123))
      {
LABEL_104:
        *(*v113 + 24) = v104;
      }

      ++v104;
    }

    while (v104 < v323[3]);
  }

  v294 = 0;
  v295[0] = &v294;
  v295[1] = 0x2020000000;
  v295[2] = 0x7FFFFFFFFFFFFFFFLL;
  v292 = 0;
  v293[0] = &v292;
  v293[1] = 0x2020000000;
  v293[2] = 0x7FFFFFFFFFFFFFFFLL;
  v290 = 0;
  v291[0] = &v290;
  v291[1] = 0x2020000000;
  v291[2] = 0x7FFFFFFFFFFFFFFFLL;
  v284 = 0;
  v285 = &v284;
  v286 = 0x3032000000;
  v287 = sub_10003C26C;
  v288 = sub_10003C27C;
  v289 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v188 count]);
  v124 = [NSOrderedSet orderedSetWithArray:v327[5]];
  v283 = 0u;
  v282 = 0u;
  v280 = 0u;
  v281 = 0u;
  obj = v188;
  v125 = [obj countByEnumeratingWithState:&v280 objects:v376 count:16];
  if (v125)
  {
    v126 = *v281;
    v189 = MDQueryResultScoreL2;
    v184 = MDQueryResultScoreL1;
    v182 = MDItemPhotosL2Signals;
    do
    {
      for (k = 0; k != v125; k = k + 1)
      {
        if (*v281 != v126)
        {
          objc_enumerationMutation(obj);
        }

        v128 = *(*(&v280 + 1) + 8 * k);
        v129 = [v124 indexOfObject:v128];
        v130 = v285[5];
        v131 = [NSNumber numberWithInteger:v129];
        [v130 addObject:v131];

        if (*(v293[0] + 24) != 0x7FFFFFFFFFFFFFFFLL || (v132 = [v128 isEqualToString:v189], v133 = v293, (v132 & 1) == 0))
        {
          if (*(v295[0] + 24) != 0x7FFFFFFFFFFFFFFFLL || (v134 = [v128 isEqualToString:v184], v133 = v295, (v134 & 1) == 0))
          {
            if (*(v291[0] + 24) != 0x7FFFFFFFFFFFFFFFLL)
            {
              continue;
            }

            v135 = [v128 isEqualToString:v182];
            v133 = v291;
            if (!v135)
            {
              continue;
            }
          }
        }

        *(*v133 + 24) = v129;
      }

      v125 = [obj countByEnumeratingWithState:&v280 objects:v376 count:16];
    }

    while (v125);
  }

  v274 = 0;
  v275 = &v274;
  v276 = 0x3032000000;
  v277 = sub_10003C26C;
  v278 = sub_10003C27C;
  v279 = 0;
  v268[0] = _NSConcreteStackBlock;
  v268[1] = 3221225472;
  v268[2] = sub_1000451D8;
  v268[3] = &unk_100093640;
  v270 = &v284;
  v271 = &v294;
  v272 = &v292;
  v273 = &v290;
  v136 = v171;
  v269 = v136;
  v137 = objc_retainBlock(v268);
  v257[0] = _NSConcreteStackBlock;
  v257[1] = 3221225472;
  v257[2] = sub_1000455E0;
  v257[3] = &unk_100093690;
  v262 = &v274;
  v138 = v175;
  v258 = v138;
  v263 = v318;
  v264 = v180;
  v265 = v174;
  v139 = v193;
  v259 = v139;
  v266 = v177;
  v140 = v179;
  v260 = v140;
  v267 = v172;
  v141 = v137;
  v261 = v141;
  v142 = objc_retainBlock(v257);
  v247[0] = _NSConcreteStackBlock;
  v247[1] = 3221225472;
  v247[2] = sub_100045A7C;
  v247[3] = &unk_1000936E0;
  v252 = &v274;
  v143 = v138;
  v248 = v143;
  v254 = v180;
  v144 = v139;
  v249 = v144;
  v145 = v140;
  v250 = v145;
  v253 = &v352;
  v255 = v177;
  v256 = v172;
  v146 = v141;
  v251 = v146;
  v246[0] = 0;
  v246[1] = v246;
  v246[2] = 0x2020000000;
  v246[3] = 0;
  v228[0] = _NSConcreteStackBlock;
  v228[1] = 3221225472;
  v228[2] = sub_10004600C;
  v228[3] = &unk_100093780;
  v233 = v318;
  v147 = objc_retainBlock(v247);
  v229 = v147;
  v148 = v136;
  v230 = v148;
  v234 = v320;
  v194 = v146;
  v231 = v194;
  v235 = &v274;
  v236 = &v322;
  v237 = &v306;
  v238 = &v304;
  v239 = &v302;
  v240 = &v300;
  v241 = &v298;
  v242 = &v296;
  v243 = &v308;
  v244 = &v326;
  v149 = v142;
  v232 = v149;
  v245 = v246;
  v150 = [v228 copy];
  v151 = SPLogForSPLogCategoryQuery();
  v152 = v151;
  if (gSPLogDebugAsDefault)
  {
    v153 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v153 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v151, v153))
  {
    v154 = v365[5];
    *buf = 138412802;
    v371 = v181;
    v372 = 2112;
    v373 = v154;
    v374 = 2048;
    v375 = v180;
    _os_log_impl(&_mh_execute_header, v152, v153, "Starting topHit query, searchString:%@, queryString:%@, hitCount:%lu", buf, 0x20u);
  }

  v155 = +[SPCoreSpotlightIndexer sharedInstance];
  v156 = v365[5];
  v195[0] = _NSConcreteStackBlock;
  v195[1] = 3221225472;
  v195[2] = sub_100046C94;
  v195[3] = &unk_1000937F8;
  v206 = v320;
  v157 = v170;
  v203 = v157;
  v187 = v145;
  v196 = v187;
  v185 = v148;
  v204 = v185;
  v158 = v143;
  v197 = v158;
  v207 = v246;
  v190 = v181;
  v198 = v190;
  v159 = v144;
  v224 = v174;
  v208 = &v358;
  v199 = v159;
  v200 = self;
  v226 = v177;
  v160 = v178;
  v201 = v160;
  v209 = &v364;
  v227 = v173;
  v210 = &v352;
  v211 = &v342;
  v212 = &v336;
  v213 = &v326;
  v214 = &v322;
  v215 = &v312;
  v216 = &v308;
  v217 = &v306;
  v218 = &v304;
  v219 = &v302;
  v220 = &v300;
  v221 = &v298;
  v222 = &v296;
  v223 = &v284;
  v161 = obj;
  v202 = v161;
  v162 = v150;
  v205 = v162;
  v225 = v180;
  v163 = [v155 taskForTopHitQueryWithQueryString:v156 queryContext:v159 eventHandler:0 resultsHandler:v162 completionHandler:v195];
  v164 = v275[5];
  v275[5] = v163;

  v165 = v275[5];
  _Block_object_dispose(v246, 8);

  _Block_object_dispose(&v274, 8);
  _Block_object_dispose(&v284, 8);

  _Block_object_dispose(&v290, 8);
  _Block_object_dispose(&v292, 8);
  _Block_object_dispose(&v294, 8);
  _Block_object_dispose(&v296, 8);
  _Block_object_dispose(&v298, 8);
  _Block_object_dispose(&v300, 8);
  _Block_object_dispose(&v302, 8);
  _Block_object_dispose(&v304, 8);
  _Block_object_dispose(&v306, 8);
  _Block_object_dispose(&v308, 8);
  _Block_object_dispose(&v312, 8);

  _Block_object_dispose(v318, 8);
  _Block_object_dispose(v320, 8);

  _Block_object_dispose(&v322, 8);
  _Block_object_dispose(&v326, 8);

  _Block_object_dispose(&v336, 8);
  _Block_object_dispose(&v342, 8);

  _Block_object_dispose(&v352, 8);
  _Block_object_dispose(&v358, 8);

  _Block_object_dispose(&v364, 8);

  return v165;
}

- (id)taskForTopHitQueryWithQueryString:(id)a3 queryContext:(id)a4 eventHandler:(id)a5 resultsHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v14)
  {
    sub_10006352C();
  }

  v17 = v16;
  v18 = [(SPCoreSpotlightDatastore *)self taskForTopHitQueryWithQueryString:v12 queryContext:v13 resultsHandler:v15 completionHandler:v16];

  return v18;
}

@end