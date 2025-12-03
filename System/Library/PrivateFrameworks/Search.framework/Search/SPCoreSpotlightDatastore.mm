@interface SPCoreSpotlightDatastore
+ (BOOL)_isKeyboardCJK:(id)k;
+ (SPCoreSpotlightDatastore)sharedInstance;
+ (id)_makeUniqueFetchAttributesWithAttributes:(id)attributes extraAttributes:(id)extraAttributes;
+ (id)removedDuplicatePhotosSectionsFromSections:(id)sections isPhotosScopedSearch:(BOOL)search;
+ (id)sectionWithBundleIdentifier:(id)identifier andAddToMap:(id)map;
+ (void)_handleRemoteProxyError:(id)error;
+ (void)initialize;
+ (void)modifyBatchSize:(unint64_t *)size batchIncrement:(unint64_t *)increment batches:(unint64_t *)batches withSectionsCount:(unint64_t)count;
+ (void)setButtonOnPhotosInAppSection:(id)section withQuery:(id)query queryString:(id)string queryParams:(id)params;
+ (void)updatePhoneFavorites;
- (BOOL)topHitNominatedByPommesScoringforBundleIdentifier:(id)identifier;
- (id)_topHitQueryParametersForSearchString:(id)string searchEntities:(id)entities contextIdentifier:(id)identifier queryKind:(unint64_t)kind needsFuzzy:(BOOL)fuzzy checkForMath:(BOOL)math isCJK:(BOOL)k disableNLP:(BOOL)self0 disableOCR:(BOOL)self1 previousQueryKind:(unint64_t)self2 clientBundle:(id)self3 keyboardLanguage:(id)self4 queryID:(int64_t)self5;
- (id)coreSpotlightQueryTaskWithQuery:(id)query reuseTask:(id)task;
- (id)performQuery:(id)query isCorrectedQuery:(BOOL)correctedQuery reuseTask:(id)task needsFuzzy:(BOOL)fuzzy pommesRewrite:(id)rewrite embeddingsRequery:(BOOL)requery;
- (id)rankingQueriesAddingQueryTerms:(id)terms rankingQueries:(id)queries;
- (id)taskForTopHitQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
- (id)taskForTopHitQueryWithQueryString:(id)string queryContext:(id)context resultsHandler:(id)handler completionHandler:(id)completionHandler;
- (void)activate;
- (void)clearInput;
- (void)deactivate;
- (void)dealloc;
- (void)hideIrrelevantCalendarResultsForSection:(id)section;
- (void)performQueryRewriteForQuery:(id)query withCorrection:(id)correction task:(id)task;
- (void)preheat;
- (void)processSection:(id)section forQuery:(id)query rawQuery:(id)rawQuery usingTopHitThreshold:;
- (void)processUserActivitiesForSection:(id)section;
- (void)removeDuplicatesInSection:(id)section query:(id)query;
- (void)sortResultsInSection:(id)section currentTime:(double)time;
- (void)updateCoreSuggestionsSection:(id)section;
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
  if (objc_opt_class() == self)
  {
    selfCopy = self;
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
    block[4] = selfCopy;
    dispatch_group_async(v40, v41, block);

    v42 = [NSOrderedSet alloc];
    v43 = rankingAttributeNameArray();
    v44 = [v42 initWithArray:v43];
    v45 = qword_1000A84B0;
    qword_1000A84B0 = v44;
  }
}

+ (void)_handleRemoteProxyError:(id)error
{
  errorCopy = error;
  v4 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100063054(errorCopy);
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
  entries = [v2 entries];
  v4 = [entries copy];

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

        contactProperty = [*(*(&v16 + 1) + 8 * v10) contactProperty];
        contact = [contactProperty contact];

        identifier = [contact identifier];
        [v5 addObject:identifier];

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

    allObjects = [v22 allObjects];
    v26 = qword_1000A84C0;
    qword_1000A84C0 = allObjects;

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

- (void)updateCoreSuggestionsSection:(id)section
{
  sectionCopy = section;
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
  results = [sectionCopy results];
  v10 = [results countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v10)
  {
    relatedBundleID2 = 0;
    v12 = *v43;
    while (2)
    {
      v13 = 0;
      v14 = relatedBundleID2;
      do
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(results);
        }

        v15 = *(*(&v42 + 1) + 8 * v13);
        if (v14)
        {
          relatedBundleID = [*(*(&v42 + 1) + 8 * v13) relatedBundleID];
          v17 = [v14 isEqualToString:relatedBundleID];

          if ((v17 & 1) == 0)
          {

            goto LABEL_14;
          }
        }

        relatedBundleID2 = [v15 relatedBundleID];

        v13 = v13 + 1;
        v14 = relatedBundleID2;
      }

      while (v10 != v13);
      v10 = [results countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    if (relatedBundleID2)
    {
      v35 = [SDLocUtilities displayNameForBundleIdentifer:relatedBundleID2];
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

    relatedBundleID2 = 0;
  }

  v36 = [qword_1000A8478 localizedStringForKey:@"DOMAIN_PSEUDOCONTACT_APPS" value:&stru_100094040 table:@"Search"];
  v35 = 0;
  v19 = 1;
LABEL_16:
  [sectionCopy setTitle:v36];
  if (v19)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    results2 = [sectionCopy results];
    v21 = [results2 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v21)
    {
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(results2);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          relatedBundleID3 = [v24 relatedBundleID];

          if (relatedBundleID3)
          {
            relatedBundleID4 = [v24 relatedBundleID];
            v27 = [SDLocUtilities displayNameForBundleIdentifer:relatedBundleID4];
            [v24 setFootnote:v27];
          }
        }

        v21 = [results2 countByEnumeratingWithState:&v38 objects:v49 count:16];
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

- (BOOL)topHitNominatedByPommesScoringforBundleIdentifier:(id)identifier
{
  v3 = qword_1000A84E8;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    sub_1000631B4();
  }

  v5 = [qword_1000A84E0 containsObject:identifierCopy];

  return v5;
}

- (void)processSection:(id)section forQuery:(id)query rawQuery:(id)rawQuery usingTopHitThreshold:
{
  v7 = v6;
  v8 = v5;
  sectionCopy = section;
  queryCopy = query;
  rawQueryCopy = rawQuery;
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
  isPeopleSearch = [queryCopy isPeopleSearch];
  v19 = SPMaxVisibleResultsCountPerSection();
  bundleIdentifier = [sectionCopy bundleIdentifier];
  IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

  v22 = 50;
  if (!IsSyndicatedPhotos)
  {
    v22 = v19;
  }

  if (!(isPeopleSearch & 1 | ((IsSyndicatedPhotos & 1) == 0)))
  {
    isPhotosSearch = [queryCopy isPhotosSearch];
    v22 = 20;
    if (isPhotosSearch)
    {
      v22 = 50;
    }
  }

  if (isPeopleSearch)
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

  [sectionCopy setMaxInitiallyVisibleResults:v24];
  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  v121 = [SDLocUtilities displayNameForBundleIdentifer:bundleIdentifier2];

  if (v121)
  {
    [sectionCopy setTitle:v121];
  }

  bundleIdentifier3 = [sectionCopy bundleIdentifier];
  v27 = [bundleIdentifier3 isEqualToString:CoreSuggestionsBundleID];

  if (v27)
  {
    [(SPCoreSpotlightDatastore *)self updateCoreSuggestionsSection:sectionCopy];
  }

  title = [sectionCopy title];

  if (!title)
  {
    [sectionCopy setTitle:@"?"];
    [sectionCopy setResults:&__NSArray0__struct];
  }

  bundleIdentifier4 = [sectionCopy bundleIdentifier];
  v30 = [bundleIdentifier4 isEqual:SafariBundleID];

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
    resultSet = [sectionCopy resultSet];
    v33 = [resultSet countByEnumeratingWithState:&v143 objects:v154 count:16];
    if (v33)
    {
      obj = resultSet;
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
            contentURL = [v35 contentURL];
            if (contentURL)
            {
              title2 = [v35 title];
              text = [title2 text];
              v39 = text == 0;

              if (!v39)
              {
                contentURL2 = [v35 contentURL];
                v41 = [NSURL URLWithString:contentURL2];

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
                string = [v43 string];
                v135 = [v130 objectForKey:?];
                title3 = [v35 title];
                text2 = [title3 text];
                v134 = [v135 objectForKey:text2];

                if (v134)
                {
                  contentURL3 = [v134 contentURL];
                  v47 = [contentURL3 length];
                  contentURL4 = [v35 contentURL];
                  LOBYTE(v47) = v47 > [contentURL4 length];

                  if (v47)
                  {
                    [v128 addObject:v134];
                    title4 = [v35 title];
                    text3 = [title4 text];
                    [v135 setObject:v35 forKey:text3];
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
                  [v130 setObject:v135 forKey:string];
                }

                title5 = [v35 title];
                text4 = [title5 text];
                [v135 setObject:v35 forKey:text4];

                [v133 setPath:@"/"];
                v52 = [v133 URL];
                text3 = [v52 host];
                scheme = [v52 scheme];
                v129 = v52;
                if (scheme)
                {
                  v54 = text3 == 0;
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

                scheme2 = [v129 scheme];
                v125 = [scheme2 caseInsensitiveCompare:@"https"];

                title4 = v129;
                if ([v129 isEqual:v41])
                {
                  [v126 addObject:text3];
                  [v124 removeObjectForKey:text3];
                  [v122 removeObject:text3];
LABEL_59:

                  goto LABEL_60;
                }

                if ([v126 containsObject:text3])
                {
                  goto LABEL_59;
                }

                v57 = [v124 objectForKeyedSubscript:text3];
                if (v57)
                {
                  v58 = [v122 containsObject:text3];
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
                  title4 = v129;
                  goto LABEL_59;
                }

                if (_MDSimpleQueryObjectMatches())
                {
                  title6 = [v35 title];
                  text5 = [title6 text];
                  v62 = _MDStringPrefixOfString() == -1;

                  if (v62)
                  {
                    v63 = objc_opt_new();
                    v116 = objc_opt_new();
                    v114 = objc_opt_new();
                    [v114 setBundleIdentifier:SafariBundleID];
                    [v116 setThumbnail:v114];
                    v64 = [SFRichText textWithString:text3];
                    [v116 setTitle:v64];

                    v65 = [SFPunchout punchoutWithURL:v129];
                    v153 = v65;
                    v66 = [NSArray arrayWithObjects:&v153 count:1];
                    [v116 setPunchoutOptions:v66];

                    v67 = [SFRichText textWithString:text3];
                    v152 = v67;
                    v68 = [NSArray arrayWithObjects:&v152 count:1];
                    [v116 setDescriptions:v68];

                    v69 = objc_opt_new();
                    [v63 setInlineCard:v69];

                    v151 = v116;
                    v70 = [NSArray arrayWithObjects:&v151 count:1];
                    inlineCard = [v63 inlineCard];
                    [inlineCard setCardSections:v70];

                    absoluteString = [v129 absoluteString];
                    [v63 setContentURL:absoluteString];
                    [v63 setTopHit:{objc_msgSend(v35, "topHit")}];
                    [v63 setForceNoTopHit:{objc_msgSend(v35, "forceNoTopHit")}];
                    score = [v35 score];
                    [v63 setScore:{score, v73}];
                    protectionClass = [v35 protectionClass];
                    [v63 setProtectionClass:protectionClass];

                    [v35 rankingScore];
                    [v63 setRankingScore:?];
                    applicationBundleIdentifier = [v35 applicationBundleIdentifier];
                    [v63 setApplicationBundleIdentifier:applicationBundleIdentifier];

                    sectionBundleIdentifier = [v35 sectionBundleIdentifier];
                    [v63 setSectionBundleIdentifier:sectionBundleIdentifier];

                    resultBundleId = [v35 resultBundleId];
                    [v63 setResultBundleId:resultBundleId];

                    [v63 setType:{objc_msgSend(v35, "type")}];
                    [v63 setQueryId:{objc_msgSend(v35, "queryId")}];
                    [v63 setCompletedQuery:text3];
                    [v63 setCompletion:text3];
                    v78 = SyntheticBookmarkIdentifierPrefix;
                    identifier = [v35 identifier];
                    v80 = [(__CFString *)v78 stringByAppendingString:identifier];
                    [v63 setIdentifier:v80];

                    rankingItem = [v35 rankingItem];
                    [rankingItem attributes];
                    v82 = SSCompactRankingAttrsCopy();

                    SSCompactRankingAttrsUpdateValue();
                    SSCompactRankingAttrsUpdateValue();
                    SSCompactRankingAttrsUpdateValue();
                    v83 = [[PRSRankingItem alloc] initWithAttrs:v82];
                    [v63 setRankingItem:v83];

                    rankingItem2 = [v35 rankingItem];
                    l2FeatureVector = [rankingItem2 L2FeatureVector];
                    [l2FeatureVector originalL2Score];
                    v86 = v85;
                    rankingItem3 = [v63 rankingItem];
                    l2FeatureVector2 = [rankingItem3 L2FeatureVector];
                    LODWORD(v89) = v86;
                    [l2FeatureVector2 setOriginalL2Score:v89];

                    [v124 setObject:v63 forKey:text3];
                    if (!v125)
                    {
                      [v122 addObject:text3];
                    }
                  }
                }

                goto LABEL_58;
              }
            }
          }
        }

        resultSet = obj;
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
      allValues = [v124 allValues];
      resultSet2 = [sectionCopy resultSet];
      [resultSet2 addObjectsFromArray:allValues];
    }

    resultSet3 = [sectionCopy resultSet];
    [resultSet3 minusSet:v128];
  }

  v138 = SSEnableSpotlightTopHitPersonalizedRanking();
  if (v138)
  {
    bundleIdentifier5 = [sectionCopy bundleIdentifier];
    v94 = [(SPCoreSpotlightDatastore *)self topHitNominatedByPommesScoringforBundleIdentifier:bundleIdentifier5];
  }

  else
  {
    v94 = 0;
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  resultSet4 = [sectionCopy resultSet];
  v96 = [resultSet4 countByEnumeratingWithState:&v139 objects:v150 count:16];
  if (v96)
  {
    v97 = *v140;
    do
    {
      for (j = 0; j != v96; j = j + 1)
      {
        if (*v140 != v97)
        {
          objc_enumerationMutation(resultSet4);
        }

        v99 = *(*(&v139 + 1) + 8 * j);
        score2 = [v99 score];
        if (score2 & v8 | v101 & v7)
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

        bundleIdentifier6 = [sectionCopy bundleIdentifier];
        [v99 setSectionBundleIdentifier:bundleIdentifier6];
      }

      v96 = [resultSet4 countByEnumeratingWithState:&v139 objects:v150 count:16];
    }

    while (v96);
  }

  if (!(v138 & 1 | ((v117 & 1) == 0)))
  {
    queryContext = [queryCopy queryContext];
    searchString = [queryContext searchString];
    [SSRankingManager determineTopHitsForSafariSection:sectionCopy forQuery:searchString];

    [SSRankingManager moveSafariTopHitsToTopOfSection:sectionCopy];
  }

  [queryCopy currentTime];
  [(SPCoreSpotlightDatastore *)self sortResultsInSection:sectionCopy currentTime:?];
  [(SPCoreSpotlightDatastore *)self processUserActivitiesForSection:sectionCopy];
  [(SPCoreSpotlightDatastore *)self removeDuplicatesInSection:sectionCopy query:queryCopy];

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

- (void)hideIrrelevantCalendarResultsForSection:(id)section
{
  sectionCopy = section;
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
  resultSet = [sectionCopy resultSet];
  v11 = [resultSet countByEnumeratingWithState:&v49 objects:v56 count:16];
  v36 = sectionCopy;
  v12 = 0;
  if (v11)
  {
    v40 = 0;
    v41 = 0;
    obj = resultSet;
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
        interestingDate = [v17 interestingDate];
        compatibilityTitle = [v17 compatibilityTitle];
        if (!interestingDate)
        {
          v12 = v16;
LABEL_29:
          [v39 addObject:v17];
          goto LABEL_30;
        }

        v20 = +[SSDateFormatManager calendar];
        [v20 getEra:0 year:&v48 month:&v47 day:&v46 fromDate:interestingDate];

        v21 = +[SSDateFormatManager calendar];
        [v21 getEra:0 yearForWeekOfYear:0 weekOfYear:&v44 weekday:&v45 fromDate:interestingDate];

        domainIdentifier = [v17 domainIdentifier];
        v12 = domainIdentifier;
        v23 = 0;
        if (compatibilityTitle && domainIdentifier)
        {
          if ([v16 isEqualToString:domainIdentifier] && objc_msgSend(v14, "isEqualToString:", compatibilityTitle))
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

        v27 = compatibilityTitle;

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
      resultSet = obj;
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

- (void)removeDuplicatesInSection:(id)section query:(id)query
{
  sectionCopy = section;
  queryCopy = query;
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
  results = [sectionCopy results];
  v14 = [results copy];

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
        sectionBundleIdentifier = [v19 sectionBundleIdentifier];
        externalIdentifier = [v19 externalIdentifier];
        if (externalIdentifier)
        {
          if ([v15 containsObject:externalIdentifier])
          {
            [sectionCopy removeResults:v19];
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
              v94 = sectionBundleIdentifier;
              v95 = 2112;
              v96 = externalIdentifier;
              _os_log_impl(&_mh_execute_header, v21, v22, "Remove duplicate for %@ / %@", buf, 0x16u);
            }
          }

          else
          {
            [v15 addObject:externalIdentifier];
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v16);
  }

  queryContext = [queryCopy queryContext];
  if ([queryContext isSearchToolClient])
  {
LABEL_34:
  }

  else
  {
    bundleIdentifier = [sectionCopy bundleIdentifier];
    v24 = [bundleIdentifier isEqualToString:PRSRankingMessagesBundleString];

    if (v24)
    {
      [v15 removeAllObjects];
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      queryContext = obj;
      v25 = [queryContext countByEnumeratingWithState:&v80 objects:v92 count:16];
      if (!v25)
      {
        goto LABEL_34;
      }

      accountIdentifier = 0;
      v27 = *v81;
      sectionBundleIdentifier = &OBJC_IVAR___SPParsecDatastore__sessionStartTime;
      externalIdentifier = &OBJC_IVAR___SPParsecDatastore__sessionStartTime;
      while (1)
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v81 != v27)
          {
            objc_enumerationMutation(queryContext);
          }

          v29 = *(*(&v80 + 1) + 8 * j);
          domainIdentifier = [v29 domainIdentifier];

          v31 = [domainIdentifier isEqualToString:MessagesAttachmentDomain];
          if ((v31 | [domainIdentifier isEqualToString:MessagesChatDomain]))
          {
            accountIdentifier = [v29 accountIdentifier];

            if (!accountIdentifier)
            {
              continue;
            }
          }

          else
          {
            accountIdentifier = domainIdentifier;
            if (!domainIdentifier)
            {
              continue;
            }
          }

          if ([v15 containsObject:accountIdentifier])
          {
            [sectionCopy removeResults:v29];
          }

          else
          {
            [v15 addObject:accountIdentifier];
          }
        }

        v25 = [queryContext countByEnumeratingWithState:&v80 objects:v92 count:16];
        if (!v25)
        {

          goto LABEL_34;
        }
      }
    }
  }

  queryContext2 = [queryCopy queryContext];
  if ([queryContext2 isSearchToolClient])
  {
    goto LABEL_51;
  }

  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  v34 = [bundleIdentifier2 isEqualToString:PRSRankingPodcastsBundleString];

  if (v34)
  {
    [v15 removeAllObjects];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    queryContext2 = obj;
    v35 = [queryContext2 countByEnumeratingWithState:&v76 objects:v91 count:16];
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
          objc_enumerationMutation(queryContext2);
        }

        externalIdentifier = *(*(&v76 + 1) + 8 * k);
        stringForDedupe = [externalIdentifier stringForDedupe];
        if (stringForDedupe)
        {
          domainIdentifier2 = [externalIdentifier domainIdentifier];
          if ([domainIdentifier2 isEqualToString:@"com.apple.siri.interactions"])
          {
          }

          else
          {
            domainIdentifier3 = [externalIdentifier domainIdentifier];
            sectionBundleIdentifier = [domainIdentifier3 isEqualToString:@"com.apple.siri.upcomingmedia"];

            if (!sectionBundleIdentifier)
            {
              continue;
            }
          }

          stringForDedupe2 = [externalIdentifier stringForDedupe];
          v42 = [v15 containsObject:stringForDedupe2];

          if (v42)
          {
            [sectionCopy removeResults:externalIdentifier];
          }

          else
          {
            stringForDedupe3 = [externalIdentifier stringForDedupe];
            [v15 addObject:stringForDedupe3];
          }
        }
      }

      v35 = [queryContext2 countByEnumeratingWithState:&v76 objects:v91 count:16];
      if (!v35)
      {
LABEL_51:

        break;
      }
    }
  }

  bundleIdentifier3 = [sectionCopy bundleIdentifier];
  v45 = SSPommesRankingForSectionBundle();

  if (v45)
  {
    queryContext3 = [queryCopy queryContext];
    searchString = [queryContext3 searchString];
    SSRearrangeDuplicatesInSection();
  }

  if (SSEnableSpotlightTopHitPersonalizedRanking())
  {
    queryContext4 = [queryCopy queryContext];
    searchEntities = [queryContext4 searchEntities];
    v50 = [searchEntities count];
    if (v50 && ([queryCopy queryContext], sectionBundleIdentifier = objc_claimAutoreleasedReturnValue(), objc_msgSend(sectionBundleIdentifier, "searchEntities"), queryContext2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(queryContext2, "lastObject"), externalIdentifier = objc_claimAutoreleasedReturnValue(), (objc_msgSend(externalIdentifier, "isScopedSearch") & 1) != 0))
    {
      isAdvancedSyntax = 1;
    }

    else
    {
      queryContext5 = [queryCopy queryContext];
      isAdvancedSyntax = [queryContext5 isAdvancedSyntax];

      if (!v50)
      {
LABEL_60:

        queryContext6 = [queryCopy queryContext];
        searchString2 = [queryContext6 searchString];
        queryContext7 = [queryCopy queryContext];
        queryIdent = [queryContext7 queryIdent];
        queryContext8 = [queryCopy queryContext];
        searchEntities2 = [queryContext8 searchEntities];
        v58 = [searchEntities2 count];
        queryContext9 = [queryCopy queryContext];
        [queryContext9 currentTime];
        v61 = v60;
        queryContext10 = [queryCopy queryContext];
        +[PRSRankingItemRanker thresholdResultsInSection:userQuery:queryID:isEntitiesSearch:currentTime:isScopedSearch:isSearchToolClient:](PRSRankingItemRanker, "thresholdResultsInSection:userQuery:queryID:isEntitiesSearch:currentTime:isScopedSearch:isSearchToolClient:", sectionCopy, searchString2, queryIdent, v58 != 0, isAdvancedSyntax, [queryContext10 isSearchToolClient], v61);

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

- (void)processUserActivitiesForSection:(id)section
{
  sectionCopy = section;
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
  results = [sectionCopy results];
  v10 = [results copy];

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
        externalIdentifier = [v15 externalIdentifier];
        if (!externalIdentifier)
        {
          v17 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v133 = v15;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "result missing identifier %@", buf, 0xCu);
          }
        }

        userActivityRequiredString = [v15 userActivityRequiredString];
        if (externalIdentifier)
        {
          v19 = userActivityRequiredString == 0;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        if (v20)
        {
          [v102 setObject:v15 forKey:externalIdentifier];
          compatibilityTitle = [v15 compatibilityTitle];
          if (compatibilityTitle)
          {
            [v100 addObject:compatibilityTitle];
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
        relatedUniqueIdentifier = [v26 relatedUniqueIdentifier];
        if (relatedUniqueIdentifier)
        {
          userActivityRequiredString2 = [v26 userActivityRequiredString];
          v29 = userActivityRequiredString2 == 0;

          if (v29)
          {
            v30 = [v102 objectForKey:relatedUniqueIdentifier];
            v31 = v30 == 0;

            if (v31)
            {
              [v102 setObject:v26 forKey:relatedUniqueIdentifier];
              compatibilityTitle2 = [v26 compatibilityTitle];
              if (compatibilityTitle2)
              {
                [v100 addObject:compatibilityTitle2];
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
        compatibilityTitle3 = [v35 compatibilityTitle];
        if (!compatibilityTitle3 && ([v35 hasDetail] & 1) == 0)
        {
          sectionBundleIdentifier = [v35 sectionBundleIdentifier];
          IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
          if (IsSyndicatedPhotos && ([v35 contentType], v98 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v98, "isEqualToString:", @"public.item")))
          {
          }

          else
          {
            identifier = [v35 identifier];
            v40 = [identifier hasPrefix:SyntheticBookmarkIdentifierPrefix];

            if (IsSyndicatedPhotos)
            {
            }

            if ((v40 & 1) == 0)
            {
              [sectionCopy removeResults:v35];
              goto LABEL_68;
            }
          }
        }

        userActivityRequiredString3 = [v35 userActivityRequiredString];

        if (userActivityRequiredString3)
        {
          relatedUniqueIdentifier2 = [v35 relatedUniqueIdentifier];
          if (relatedUniqueIdentifier2)
          {
            fileProviderIdentifier = [v35 fileProviderIdentifier];

            if (!fileProviderIdentifier)
            {
              v44 = [v102 objectForKey:relatedUniqueIdentifier2];
              v45 = v44;
              if (v44)
              {
                score = [v44 score];
                v48 = v47;
                score2 = [v35 score];
                [v45 setScore:{__PAIR128__(v50, score2) + __PAIR128__(v48, score)}];
                [sectionCopy removeResults:v35];
                if (([v45 hasAssociatedUserActivity] & 1) == 0)
                {
                  [v45 setPubliclyIndexable:{objc_msgSend(v35, "publiclyIndexable")}];
                  [v45 setHasAssociatedUserActivity:1];
                  launchDates = [v35 launchDates];
                  [v45 setLaunchDates:launchDates];
                  goto LABEL_65;
                }
              }

              else
              {
                v52 = [v97 objectForKey:relatedUniqueIdentifier2];
                launchDates = v52;
                if (v52)
                {
                  score3 = [v52 score];
                  v55 = v54;
                  score4 = [v35 score];
                  v57 = score4;
                  v59 = v58;
                  if (__PAIR128__(v58, score4) >= __PAIR128__(v55, score3))
                  {
                    buddyScore = [v35 buddyScore];
                    [v35 setBuddyScore:{__PAIR128__(v63, buddyScore) + __PAIR128__(v55, score3)}];
                    [sectionCopy removeResults:launchDates];
                    [v97 setObject:v35 forKey:relatedUniqueIdentifier2];
                  }

                  else
                  {
                    buddyScore2 = [launchDates buddyScore];
                    [launchDates setBuddyScore:{__PAIR128__(v61, buddyScore2) + __PAIR128__(v59, v57)}];
                    [sectionCopy removeResults:v35];
                  }
                }

                else
                {
                  [v97 setObject:v35 forKey:relatedUniqueIdentifier2];
                }

LABEL_65:
              }
            }
          }

          else if (compatibilityTitle3)
          {
            if ([v100 containsObject:compatibilityTitle3] && (objc_msgSend(v35, "hasDetail") & 1) == 0)
            {
              [sectionCopy removeResults:v35];
            }

            else
            {
              [v100 addObject:compatibilityTitle3];
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
  resultSet = [sectionCopy resultSet];
  v65 = [resultSet countByEnumeratingWithState:&v109 objects:v129 count:16];
  if (v65)
  {
    v66 = *v110;
    do
    {
      for (m = 0; m != v65; m = m + 1)
      {
        if (*v110 != v66)
        {
          objc_enumerationMutation(resultSet);
        }

        v68 = *(*(&v109 + 1) + 8 * m);
        score5 = [v68 score];
        v71 = v70;
        buddyScore3 = [v68 buddyScore];
        [v68 setScore:{__PAIR128__(v73, buddyScore3) + __PAIR128__(v71, score5)}];
      }

      v65 = [resultSet countByEnumeratingWithState:&v109 objects:v129 count:16];
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
        itemIdentifier = [v79 itemIdentifier];

        if (itemIdentifier)
        {
          itemIdentifier2 = [v79 itemIdentifier];
          v82 = [v74 objectForKey:itemIdentifier2];

          if (v82)
          {
            score6 = [v82 score];
            v85 = v84;
            score7 = [v79 score];
            if (__PAIR128__(v87, score7) < __PAIR128__(v85, score6))
            {
              [sectionCopy removeResults:v79];
LABEL_88:

              continue;
            }

            [sectionCopy removeResults:v82];
          }

          itemIdentifier3 = [v79 itemIdentifier];
          [v74 setObject:v79 forKey:itemIdentifier3];

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

- (void)sortResultsInSection:(id)section currentTime:(double)time
{
  sectionCopy = section;
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
  [PRSRankingItemRanker sortResultsInSection:sectionCopy currentTime:time];
  bundleIdentifier = [sectionCopy bundleIdentifier];
  v12 = [bundleIdentifier isEqual:SSCalendarBundleIdentifier];

  if (v12)
  {
    [(SPCoreSpotlightDatastore *)self hideIrrelevantCalendarResultsForSection:sectionCopy];
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

- (id)rankingQueriesAddingQueryTerms:(id)terms rankingQueries:(id)queries
{
  termsCopy = terms;
  queriesCopy = queries;
  v7 = [termsCopy count];
  if (v7)
  {
    v8 = [termsCopy objectAtIndex:v7 - 1];
    v9 = [queriesCopy arrayByAddingObject:v8];

    queriesCopy = v9;
  }

  return queriesCopy;
}

- (id)_topHitQueryParametersForSearchString:(id)string searchEntities:(id)entities contextIdentifier:(id)identifier queryKind:(unint64_t)kind needsFuzzy:(BOOL)fuzzy checkForMath:(BOOL)math isCJK:(BOOL)k disableNLP:(BOOL)self0 disableOCR:(BOOL)self1 previousQueryKind:(unint64_t)self2 clientBundle:(id)self3 keyboardLanguage:(id)self4 queryID:(int64_t)self5
{
  mathCopy = math;
  fuzzyCopy = fuzzy;
  stringCopy = string;
  entitiesCopy = entities;
  identifierCopy = identifier;
  bundleCopy = bundle;
  languageCopy = language;
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

  v28 = stringCopy;
  v122 = [v28 length];
  v133 = v28;
  v121 = [v28 length];
  v141 = objc_opt_new();
  v140 = objc_opt_new();
  v131 = objc_opt_new();
  v139 = objc_opt_new();
  v138 = objc_opt_new();
  if (entitiesCopy && [entitiesCopy count] && objc_msgSend(entitiesCopy, "count"))
  {
    v152 = 0u;
    v153 = 0u;
    v151 = 0u;
    v150 = 0u;
    obj = entitiesCopy;
    v29 = [obj countByEnumeratingWithState:&v150 objects:v162 count:16];
    if (v29)
    {
      v30 = *v151;
      queryString = v28;
      do
      {
        v32 = 0;
        v33 = queryString;
        do
        {
          if (*v151 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v150 + 1) + 8 * v32);
          queryString = [v34 queryString];

          spotlightQueryString = [v34 spotlightQueryString];
          if (spotlightQueryString)
          {
            [v141 addObject:spotlightQueryString];
          }

          spotlightFilterQueries = [v34 spotlightFilterQueries];
          if (spotlightFilterQueries)
          {
            [v140 addObjectsFromArray:spotlightFilterQueries];
          }

          spotlightRankCategories = [v34 spotlightRankCategories];
          if (spotlightRankCategories)
          {
            [v138 addEntriesFromDictionary:spotlightRankCategories];
          }

          spotlightRankTerms = [v34 spotlightRankTerms];
          if (spotlightRankTerms)
          {
            [v139 addEntriesFromDictionary:spotlightRankTerms];
          }

          isScopedSearch = [v34 isScopedSearch];
          isNLPEntitySearch = [v34 isNLPEntitySearch];

          v32 = v32 + 1;
          v33 = queryString;
        }

        while (v29 != v32);
        v29 = [obj countByEnumeratingWithState:&v150 objects:v162 count:16];
      }

      while (v29);
    }

    else
    {
      isNLPEntitySearch = 0;
      isScopedSearch = 0;
      queryString = v133;
    }

    v42 = [v139 keysSortedByValueUsingSelector:"compare:"];
    [v131 addObjectsFromArray:v42];

    v41 = queryString;
  }

  else
  {
    isNLPEntitySearch = 0;
    isScopedSearch = 0;
    v41 = v133;
  }

  v124 = v41;
  if (![v41 length] || !((objc_msgSend(v141, "count") == 0) | isScopedSearch & 1))
  {
    bOOLValue = 0;
    obja = v133;
    goto LABEL_124;
  }

  if (kind - 1 < 8 && ((0xE3u >> (kind - 1)) & 1) != 0)
  {
    v43 = 0;
    goto LABEL_48;
  }

  if (queryKind - 1 < 2)
  {
    if (kind != 10)
    {
      goto LABEL_43;
    }

LABEL_42:
    v43 = 0;
    goto LABEL_48;
  }

  if (kind == 10 && queryKind - 6 < 3)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (kind == 11 && bundleCopy)
  {
    v43 = 0;
    if (fuzzyCopy)
    {
      v43 = [bundleCopy isEqualToString:PRSRankingSearchBundleString] ^ 1;
    }
  }

  else
  {
    v43 = 0;
  }

LABEL_48:
  BYTE3(v111) = v43;
  BYTE2(v111) = mathCopy;
  BYTE1(v111) = isScopedSearch;
  LOBYTE(v111) = r;
  v44 = SSDefaultQueryParseResultsForQueryString();
  v118 = v44;
  if (v44)
  {
    v45 = [v44 objectForKeyedSubscript:{@"query", v111}];
    if (SSEnableAppSearchV2() && (kind > 0xA || ((1 << kind) & 0x430) == 0))
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

    if (mathCopy)
    {
      v57 = [v118 objectForKeyedSubscript:@"isMath"];
      if (v57)
      {
        v58 = [v118 objectForKeyedSubscript:@"isMath"];
        bOOLValue = [v58 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    v45 = 0;
    bOOLValue = 0;
    obja = v133;
  }

  v59 = 0;
  v60 = 0;
  if (v122 >= 3 && !p)
  {
    v61 = +[NSMutableDictionary dictionary];
    v62 = v61;
    if (identifierCopy)
    {
      [v61 setObject:identifierCopy forKeyedSubscript:@"kMDQueryOptionContextIdentifier"];
    }

    if ([languageCopy length])
    {
      [v62 setValue:languageCopy forKey:@"keyboardLanguage"];
    }

    v63 = [NSNumber numberWithInteger:d];
    [v62 setValue:v63 forKey:@"queryID"];

    v113 = SSGetCurrentLocale();
    if (v113)
    {
      languageIdentifier = [v113 languageIdentifier];
      v65 = [languageIdentifier length] == 0;

      if (!v65)
      {
        languageIdentifier2 = [v113 languageIdentifier];
        [v62 setValue:languageIdentifier2 forKey:@"localeLanguage"];
      }
    }

    v67 = bundleCopy;
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
      isNLPEntitySearch = [v70 BOOLValue];

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
      v76 = isScopedSearch;
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
  if (((v120 != 0) & isNLPEntitySearch) == 1)
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

    isNLPEntitySearch = 1;
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

      isNLPEntitySearch = 1;
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
  if (kind - 1 <= 1)
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
  v98 = [NSNumber numberWithBool:isNLPEntitySearch];
  [v134 setObject:v98 forKey:@"isNLQuery"];

  v99 = [NSNumber numberWithBool:0];
  [v134 setObject:v99 forKey:@"isAdvancedSyntax"];

  v100 = [NSNumber numberWithBool:bOOLValue];
  [v134 setObject:v100 forKey:@"isMath"];

  [v134 setObject:v95 forKey:@"query"];
  v142 = v134;
  _checkMatch(isNLPEntitySearch, bundleCopy, languageCopy, v133, v95, fuzzyCopy, &v142);
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

- (id)coreSpotlightQueryTaskWithQuery:(id)query reuseTask:(id)task
{
  queryCopy = query;
  taskCopy = task;
  v8 = taskCopy;
  if (taskCopy)
  {
    v9 = taskCopy;
    [(SPCoreSpotlightQueryTask *)v9 reset];
  }

  else
  {
    v9 = [[SPCoreSpotlightQueryTask alloc] initWithStore:self resultPipe:queryCopy];
    [(SPCoreSpotlightQueryTask *)v9 setPriorityIndexEnabled:self->_priorityIndexEnabled];
  }

  return v9;
}

- (id)performQuery:(id)query isCorrectedQuery:(BOOL)correctedQuery reuseTask:(id)task needsFuzzy:(BOOL)fuzzy pommesRewrite:(id)rewrite embeddingsRequery:(BOOL)requery
{
  requeryCopy = requery;
  fuzzyCopy = fuzzy;
  queryCopy = query;
  taskCopy = task;
  rewriteCopy = rewrite;
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
  v389 = queryCopy;
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
  [queryCopy queryIdent];
  SSDefaultsLogForTrigger();

  if (qword_1000A8530 != -1)
  {
    sub_1000631DC();
  }

  queryContext = [queryCopy queryContext];
  getTrimmedSearchString = [queryContext getTrimmedSearchString];

  queryContext2 = [queryCopy queryContext];
  queryKind = [queryContext2 queryKind];

  queryContext3 = [queryCopy queryContext];
  [queryContext3 whyQuery];

  if (![getTrimmedSearchString length] && (queryKind - 9) >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v24 = 0;
    goto LABEL_267;
  }

  [queryCopy externalID];
  kdebug_trace();
  v25 = SPLogForSPLogCategoryTelemetry();
  externalID = [queryCopy externalID];
  if (externalID && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "coreSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
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

  [queryCopy currentTime];
  v29 = v28;
  queryContext4 = [queryCopy queryContext];
  searchString = [queryContext4 searchString];

  if (byte_1000A8488 == 1)
  {
    [qword_1000A8480 setObject:searchString forKey:@"lastQueryString"];
  }

  if ([queryCopy isCJK])
  {
    v31 = 2;
  }

  else
  {
    v31 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v31;
  if (([queryCopy previousQueryKind] == 1 || objc_msgSend(queryCopy, "previousQueryKind") == 2) && queryKind == 10)
  {
    queryKind = [queryCopy previousQueryKind];
  }

  queryContext5 = [queryCopy queryContext];
  v33 = [queryContext5 deviceAuthenticationState] == 2;

  if (v33)
  {
    v34 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Skipping corespotlight query because of biometryLockout", buf, 2u);
    }

    v35 = [(SPCoreSpotlightDatastore *)self coreSpotlightQueryTaskWithQuery:queryCopy reuseTask:taskCopy];
    [v35 finish];
    v24 = 0;

    goto LABEL_266;
  }

  v36 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [queryCopy hash];
    *buf = 134217984;
    *&buf[4] = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#query corespotlight start (qid: %lld)", buf, 0xCu);
  }

  v373 = sub_10004B314();
  itemRanker = [queryCopy itemRanker];
  os_unfair_lock_lock(&unk_1000A84B8);
  v361 = qword_1000A8438;
  v362 = qword_1000A84A0;
  os_unfair_lock_unlock(&unk_1000A84B8);
  queryContext6 = [queryCopy queryContext];
  searchEntities = [queryContext6 searchEntities];
  if (!searchEntities)
  {

    goto LABEL_41;
  }

  queryContext7 = [v389 queryContext];
  searchEntities2 = [queryContext7 searchEntities];
  v42 = [searchEntities2 count] == 0;

  if (v42)
  {
LABEL_41:
    tokenText = 0;
    v363 = 0;
    goto LABEL_42;
  }

  queryContext8 = [v389 queryContext];
  searchEntities3 = [queryContext8 searchEntities];
  lastObject = [searchEntities3 lastObject];

  LODWORD(queryContext8) = [lastObject isScopedSearch];
  tokenText = [lastObject tokenText];
  currentSearchString = [lastObject currentSearchString];

  if (queryContext8)
  {
    v47 = 8;
  }

  else
  {
    v47 = 0;
  }

  v363 = v47;
  searchString = currentSearchString;
LABEL_42:
  v48 = objc_opt_new();
  [v48 setFetchAttributes:v373];
  [v389 currentTime];
  [v48 setCurrentTime:?];
  queryContext9 = [v389 queryContext];
  keyboardPrimaryLanguage = [queryContext9 keyboardPrimaryLanguage];
  [v48 setKeyboardLanguage:keyboardPrimaryLanguage];

  searchQueryContext = [rewriteCopy searchQueryContext];
  rewriteContext = [searchQueryContext rewriteContext];
  [v48 setRewriteContext:rewriteContext];

  [v48 setEntitledAttributes:7];
  [v48 setDisableNLP:0];
  [v48 setQueryID:{objc_msgSend(v389, "hash")}];
  [v48 setUserQuery:searchString];
  queryContext10 = [v389 queryContext];
  [v48 setFetchl2Signals:{objc_msgSend(queryContext10, "fetchL2Signals")}];

  [v48 setPriorityIndexQuery:1];
  queryContext11 = [v389 queryContext];
  [v48 setEnableInstantAnswers:{objc_msgSend(queryContext11, "enablePersonalAnswers")}];

  maxCount = [v389 maxCount];
  if (maxCount == 13)
  {
    v56 = 20;
  }

  else
  {
    v366 = maxCount;
    if (maxCount != 50)
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
    if (correctedQuery || fuzzyCopy || requeryCopy)
    {
      [v389 setPreviousQueryKind:queryKind];
      queryKind = 10;
    }

    if (requeryCopy)
    {
      v59 = [[NSMutableArray alloc] initWithCapacity:5];
      v490 = v59;
      v60 = [itemRanker requery:&v490];
      v351 = v490;

      [itemRanker resetWithSearchString:v60];
      v61 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v60;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Word embeddings on, new search string = %@", buf, 0xCu);
      }

      searchString = v60;
    }

    else
    {
      v351 = 0;
    }

    queryContext12 = [v389 queryContext];
    searchEntities4 = [queryContext12 searchEntities];
    connection = [v389 connection];
    bundleID = [connection bundleID];
    v64 = *(self + 8);
    disableNLP = [v48 disableNLP];
    queryContext13 = [v389 queryContext];
    disableOCR = [queryContext13 disableOCR];
    previousQueryKind = [v389 previousQueryKind];
    itemRanker2 = [v389 itemRanker];
    keyboardLanguage = [itemRanker2 keyboardLanguage];
    queryID = [v389 queryID];
    v352 = PRSRankingSearchBundleString;
    BYTE2(v302) = disableOCR;
    BYTE1(v302) = disableNLP;
    LOBYTE(v302) = (v64 & 2) != 0;
    v376 = [SPCoreSpotlightDatastore _topHitQueryParametersForSearchString:"_topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:" searchEntities:searchString contextIdentifier:searchEntities4 queryKind:bundleID needsFuzzy:queryKind checkForMath:fuzzyCopy isCJK:1 disableNLP:v302 disableOCR:previousQueryKind previousQueryKind:PRSRankingSearchBundleString clientBundle:keyboardLanguage keyboardLanguage:queryID queryID:?];

    v72 = [v376 objectForKeyedSubscript:@"queryUnderstandingOutput"];
    queryContext14 = [v389 queryContext];
    [queryContext14 setQueryUnderstandingOutput:v72];

    v74 = [v376 objectForKeyedSubscript:@"queryUnderstandingOutput"];
    [v48 setQueryUnderstandingOutput:v74];

    v369 = [v376 objectForKeyedSubscript:@"query"];
    v349 = [v376 objectForKeyedSubscript:@"filterQueries"];
    v348 = [v376 objectForKeyedSubscript:@"suggestions"];
    v75 = [v376 objectForKeyedSubscript:@"isMath"];
    bOOLValue = [v75 BOOLValue];

    v76 = [v376 objectForKeyedSubscript:@"isNLQuery"];
    bOOLValue2 = [v76 BOOLValue];

    queryContext15 = [v389 queryContext];
    isSearchToolClient = [queryContext15 isSearchToolClient];

    if ([v48 enableInstantAnswers])
    {
      isSearchToolClient2 = 1;
    }

    else
    {
      queryContext16 = [v389 queryContext];
      isSearchToolClient2 = [queryContext16 isSearchToolClient];
    }

    v81 = *(self + 8);
    queryContext17 = [v389 queryContext];
    v83 = +[CSInstantAnswers isInstantAnswerTriggerQuery:isCJK:isSearchTool:](CSInstantAnswers, "isInstantAnswerTriggerQuery:isCJK:isSearchTool:", searchString, (v81 >> 1) & 1, [queryContext17 isSearchToolClient]);

    if ((isSearchToolClient2 | isSearchToolClient))
    {
      v84 = +[SPCoreSpotlightIndexer sharedInstance];
      v489 = 0;
      v488 = 0;
      [v84 processSearchString:searchString intoTrimmedString:&v489 andTokens:&v488];
      v355 = v489;
      v358 = v488;
    }

    else
    {
      v358 = 0;
      v355 = 0;
    }

    queryUnderstandingOutput = [v48 queryUnderstandingOutput];
    v359 = [CSPersonalAnswers personalAnswersEventIntentForQUOutput:queryUnderstandingOutput isDebugLoggingEnabled:0];

    if (v359)
    {
      v86 = isSearchToolClient2;
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
      *&buf[14] = isSearchToolClient2;
      *&buf[18] = 1024;
      *&buf[20] = v83;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[personal answers][query] For Query = %@, personalAnswersAllowed = %d, isPersonalAnswersTriggeringQuery = %d", buf, 0x18u);
    }

    if ((isSearchToolClient2 & v83) != 1)
    {
      goto LABEL_109;
    }

    if ([CSInstantAnswers overrideParsedQuery:searchString])
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
          fetchAttributes = [v48 fetchAttributes];
          allObjects = [v98 allObjects];
          v101 = [fetchAttributes arrayByAddingObjectsFromArray:allObjects];
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

          allObjects2 = [v96 allObjects];
          [v48 setAnswerAttributes:allObjects2];

          allObjects3 = [v96 allObjects];
          queryContext18 = [v389 queryContext];
          [queryContext18 setAnswerAttributes:allObjects3];
        }

        queryContext19 = [v389 queryContext];
        answerAttributes = [queryContext19 answerAttributes];
        if ([answerAttributes count])
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
          queryContext20 = [v389 queryContext];
          [queryContext20 setAnswerAttributes:v117];
        }

LABEL_109:
        if (isSearchToolClient)
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
        if (requeryCopy && searchString)
        {
          if ([v351 count])
          {
            v122 = [v351 componentsJoinedByString:@" || "];
            v122 = [NSString stringWithFormat:@"(%@ || %@)", v369, v122];

            v369 = v122;
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
          dominantRankingQueryCount = [v48 dominantRankingQueryCount];
          dominatedRankingQueryCount = [v48 dominatedRankingQueryCount];
          shortcutBit = [v48 shortcutBit];
          highMatchBit = [v48 highMatchBit];
          lowMatchBit = [v48 lowMatchBit];
          highRecencyBit = [v48 highRecencyBit];
          lowRecencyBit = [v48 lowRecencyBit];
          *buf = 134219520;
          *&buf[4] = dominantRankingQueryCount;
          *&buf[12] = 2048;
          *&buf[14] = dominatedRankingQueryCount;
          *&buf[22] = 2048;
          v509 = shortcutBit;
          *v510 = 2048;
          *&v510[2] = highMatchBit;
          *&v510[10] = 2048;
          *&v510[12] = lowMatchBit;
          v511 = 2048;
          v512 = highRecencyBit;
          v513 = 2048;
          v514 = lowRecencyBit;
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
          rankingQueries = [v48 rankingQueries];
          *buf = 138412802;
          *&buf[4] = v369;
          *&buf[12] = 2112;
          *&buf[14] = rankingQueries;
          *&buf[22] = 2048;
          v509 = v366;
          _os_log_impl(&_mh_execute_header, v142, v143, "Query string: %@\n\tRanking: %@\n\tmaxCount:%lld", buf, 0x20u);
        }

        v484 = 0;
        v485 = &v484;
        v486 = 0x2020000000;
        isPeopleSearch = [v389 isPeopleSearch];
        v145 = qword_1000A8428;
        v146 = qword_1000A8430;
        previousQueryKind2 = queryKind;
        if (queryKind == 10)
        {
          previousQueryKind2 = [v389 previousQueryKind];
        }

        v148 = *(v485 + 24);
        keyboardLanguage2 = [v48 keyboardLanguage];
        v382 = [itemRanker rankingConfigurationWithMeContact:v145 emailAddresses:v146 phoneFavorites:v361 vipList:v362 clientBundle:v352 spotlightQuery:v369 userQuery:searchString tokenString:tokenText queryKind:previousQueryKind2 flags:v148 | v363 keyboardLanguage:keyboardLanguage2];

        completionString = [v48 completionString];

        if (completionString)
        {
          fuzzyMatchMask = [v382 fuzzyMatchMask];
          [v48 setFuzzyMask:{fuzzyMatchMask, v152}];
          fuzzyMatchCheck = [v382 fuzzyMatchCheck];
          [v48 setFuzzyMatch:{fuzzyMatchCheck, v154}];
        }

        rankingQueries2 = [v382 rankingQueries];
        v156 = [v376 objectForKeyedSubscript:@"queryTerms"];
        v350 = [v376 objectForKeyedSubscript:@"rankCategories"];
        v157 = [rankingQueries2 count];
        v347 = v156;
        if (bOOLValue2)
        {
          if (v156)
          {
            v158 = PRSRankingItemRankerAddJunkFilter();
            v159 = [(SPCoreSpotlightDatastore *)self rankingQueriesAddingQueryTerms:v158 rankingQueries:rankingQueries2];

            rankingQueries2 = v159;
          }

          if (v350)
          {
            v160 = [v350 keysSortedByValueUsingSelector:"compare:"];
            [itemRanker setRankCategories:v160];
          }

          [itemRanker setIsNLSearch:1];
        }

        v161 = [rankingQueries2 count];
        [v48 setParseUserQuery:bOOLValue2];
        [v48 setRankingQueries:rankingQueries2];
        [v48 setStrongRankingQueryCount:{objc_msgSend(v382, "strongRankingQueryCount")}];
        v364 = v161 - v157;
        [v48 setDominantRankingQueryCount:{objc_msgSend(v382, "dominantRankingQueryCount") + v161 - v157}];
        [v48 setDominatedRankingQueryCount:{objc_msgSend(v382, "dominatedRankingQueryCount")}];
        [v48 setShortcutBit:{objc_msgSend(v382, "shortcutBit")}];
        [v48 setHighMatchBit:{objc_msgSend(v382, "highMatchBit")}];
        [v48 setLowMatchBit:{objc_msgSend(v382, "lowMatchBit")}];
        [v48 setHighRecencyBit:{objc_msgSend(v382, "highRecencyBit")}];
        [v48 setLowRecencyBit:{objc_msgSend(v382, "lowRecencyBit")}];
        v346 = rankingQueries2;
        requiredAttributes = [v382 requiredAttributes];
        array = [requiredAttributes array];

        fetchAttributes2 = [v48 fetchAttributes];
        v164 = [NSSet setWithArray:fetchAttributes2];

        v165 = objc_opt_class();
        fetchAttributes3 = [v48 fetchAttributes];
        v167 = [v165 _makeUniqueFetchAttributesWithAttributes:fetchAttributes3 extraAttributes:array];
        [v48 setFetchAttributes:v167];

        fetchAttributes4 = [v48 fetchAttributes];
        v169 = [fetchAttributes4 count];

        Mutable = CFBitVectorCreateMutable(kCFAllocatorDefault, v169);
        CFBitVectorSetCount(Mutable, v169);
        v482 = 0u;
        v483 = 0u;
        v480 = 0u;
        v481 = 0u;
        fetchAttributes5 = [v48 fetchAttributes];
        v172 = [fetchAttributes5 countByEnumeratingWithState:&v480 objects:v507 count:16];
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
                objc_enumerationMutation(fetchAttributes5);
              }

              v176 = *(*(&v480 + 1) + 8 * i);
              fetchAttributes6 = [v48 fetchAttributes];
              v178 = [fetchAttributes6 objectAtIndex:v173];
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

            v172 = [fetchAttributes5 countByEnumeratingWithState:&v480 objects:v507 count:16];
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
            fetchAttributes7 = [v48 fetchAttributes];
            v182 = [fetchAttributes7 objectAtIndex:v179];
            if (([v164 containsObject:v182] & 1) == 0)
            {
              v301 = 3254;
              goto LABEL_271;
            }
          }

          else
          {
            fetchAttributes7 = [v48 fetchAttributes];
            v182 = [fetchAttributes7 objectAtIndex:v179];
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
          rankingQueries3 = [v48 rankingQueries];
          v193 = [rankingQueries3 count];
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
          cSMediaTypeMusicVideo = [NSString stringWithFormat:@"(%@ != %@)", MDItemMediaTypes, CSMediaTypeMusicVideo];
          [v365 addObject:cSMediaTypeMusicVideo];

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

        queryContext21 = [v389 queryContext];
        v198 = [queryContext21 deviceAuthenticationState] == 0;

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
          fileProviderDomainFilterQueries = +[SPCoreSpotlightIndexer sharedInstance];
          v210 = objc_opt_respondsToSelector();

          if (v210)
          {
            v211 = +[SPCoreSpotlightIndexer sharedInstance];
            fileProviderDomainFilterQueries = [v211 fileProviderDomainFilterQueries];

            if (fileProviderDomainFilterQueries)
            {
              [v365 addObjectsFromArray:fileProviderDomainFilterQueries];
            }
          }

          [v365 addObject:@"(kMDItemIsTrashed!=1)"];
          if ([v365 count])
          {
            filterQueries = [v48 filterQueries];
            if (filterQueries)
            {
              fileProviderDomainFilterQueries = [v48 filterQueries];
              v213 = [fileProviderDomainFilterQueries arrayByAddingObjectsFromArray:v365];
            }

            else
            {
              v213 = v365;
            }

            [v48 setFilterQueries:v213];
            if (filterQueries)
            {
            }
          }

          [v365 addObject:@"(_kMDItemUserActivityType != \"com.apple.stocks.v2.ForYouFeed\" && _kMDItemUserActivityType != \"com.apple.stocks.v2.SymbolFeed\""];
          disabledBundles = [v389 disabledBundles];
          if ([disabledBundles count])
          {
            v215 = [disabledBundles arrayByAddingObjectsFromArray:qword_1000A84C0];
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

          disableBundles = [v48 disableBundles];
          v225 = [disableBundles arrayByAddingObjectsFromArray:v216];
          [v48 setDisableBundles:v225];
          v339 = v216;

          disabledApps = [v389 disabledApps];
          if ([disabledApps count])
          {
            v342 = [NSSet setWithArray:disabledApps];
          }

          else
          {
            v342 = 0;
          }

          bundleIDs = [v48 bundleIDs];
          v227 = [bundleIDs count] == 0;

          if (v227)
          {
            [v48 setPommes:1];
          }

          else
          {
            queryContext22 = [v389 queryContext];
            isSearchToolClient3 = [queryContext22 isSearchToolClient];

            if (isSearchToolClient3)
            {
              +[SDPommesFeature allBundleIDsUsingPommesRankingSearchTool];
            }

            else
            {
              +[SDPommesFeature allBundleIDsUsingPommesRanking];
            }
            v230 = ;
            v231 = [NSSet setWithArray:v230];

            bundleIDs2 = [v48 bundleIDs];
            v233 = [NSSet setWithArray:bundleIDs2];

            [v48 setPommes:{objc_msgSend(v231, "intersectsSet:", v233)}];
          }

          queryContext23 = [v389 queryContext];
          hasMarkedText = [queryContext23 hasMarkedText];

          if (hasMarkedText)
          {
            queryContext24 = [v389 queryContext];
            markedTextArray = [queryContext24 markedTextArray];
            [v48 setMarkedTextArray:markedTextArray];
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

            v340 = [(SPCoreSpotlightDatastore *)self coreSpotlightQueryTaskWithQuery:v389 reuseTask:taskCopy];
            rankingQueries4 = [v48 rankingQueries];
            rankingInfo = [v340 rankingInfo];
            [rankingInfo setRankingQueries:rankingQueries4];

            v478 = 0u;
            v479 = 0u;
            v476 = 0u;
            v477 = 0u;
            rankingQueries5 = [v48 rankingQueries];
            v244 = [rankingQueries5 countByEnumeratingWithState:&v476 objects:v504 count:16];
            if (v244)
            {
              v245 = *v477;
              do
              {
                for (j = 0; j != v244; j = j + 1)
                {
                  if (*v477 != v245)
                  {
                    objc_enumerationMutation(rankingQueries5);
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

                v244 = [rankingQueries5 countByEnumeratingWithState:&v476 objects:v504 count:16];
              }

              while (v244);
            }

            queryContext25 = [v389 queryContext];
            searchEntities5 = [queryContext25 searchEntities];
            rankingInfo2 = [v340 rankingInfo];
            [rankingInfo2 setDisableResultTruncation:searchEntities5 == 0];

            [v340 beginQuery:v389];
            v475[0] = 0;
            v475[1] = v475;
            v475[2] = 0x2020000000;
            v475[3] = 0;
            v353 = objc_opt_new();
            LOBYTE(queryContext25) = [v389 isPhotosSearch];
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
            fetchAttributes8 = [v48 fetchAttributes];
            v256 = [fetchAttributes8 count];
            v320 = v253;
            v321 = v252;
            v322 = queryContext25;
            v318 = objc_opt_new();
            v257 = objc_alloc_init(NSMutableIndexSet);
            if (v256)
            {
              for (k = 0; k != v256; ++k)
              {
                requiredAttributes2 = [v382 requiredAttributes];
                v260 = [fetchAttributes8 objectAtIndexedSubscript:k];
                v261 = [requiredAttributes2 containsObject:v260];

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
            queryContext26 = [v389 queryContext];
            v335 = [SSSuggestionResultBuilder buildResultsWithSuggestionsData:v348 queryContext:queryContext26];

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
            v402 = searchString;
            v403 = v342;
            v423 = v498;
            v434 = v256;
            v304 = v257;
            v404 = v304;
            v279 = v48;
            v405 = v279;
            v406 = itemRanker;
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
            v435 = queryKind;
            v425 = v473;
            v331 = v280;
            v413 = v280;
            selfCopy = self;
            v437 = requeryCopy;
            v438 = bOOLValue;
            v281 = v369;
            v415 = v281;
            correctedQueryCopy = correctedQuery;
            v440 = v322;
            v441 = fuzzyCopy;
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
          intValue = [(NSNumber *)self->_maxMovieRating intValue];
          v202 = [NSString stringWithFormat:@"(%@!=%@ || %@<=%d)", MDItemMediaTypes, CSMediaTypeMovie, MDItemExtendedContentRating, intValue];
          [v365 addObject:v202];
        }

        maxTVShowRating = self->_maxTVShowRating;
        if (maxTVShowRating && [(NSNumber *)maxTVShowRating intValue]<= 999)
        {
          intValue2 = [(NSNumber *)self->_maxTVShowRating intValue];
          v205 = [NSString stringWithFormat:@"(%@!=%@ || %@<=%d)", MDItemMediaTypes, CSMediaTypeTVShow, MDItemExtendedContentRating, intValue2];
          [v365 addObject:v205];
        }

        contentFilters = [v389 contentFilters];
        if (!contentFilters)
        {
          goto LABEL_201;
        }

        if (contentFilters)
        {
          if ((contentFilters & 2) != 0)
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
          if ((contentFilters & 2) == 0)
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

+ (void)modifyBatchSize:(unint64_t *)size batchIncrement:(unint64_t *)increment batches:(unint64_t *)batches withSectionsCount:(unint64_t)count
{
  if (qword_1000A8550 != -1)
  {
    sub_100063468();
  }

  v10 = count / 7;
  v11 = count % 7 != 0;
  if (count % 7)
  {
    ++v10;
  }

  if (v10 % dword_1000A8548)
  {
    v12 = 6;
    v13 = 4;
    while (1)
    {
      v10 = count / v12;
      v11 = count % v12 != 0;
      if (count % v12)
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

  *size = v13;
  *increment = v11;
  *batches = v10;
}

+ (id)sectionWithBundleIdentifier:(id)identifier andAddToMap:(id)map
{
  identifierCopy = identifier;
  mapCopy = map;
  v7 = [mapCopy objectForKeyedSubscript:identifierCopy];

  if (v7)
  {
    v8 = [mapCopy objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v8 = [SFMutableResultSection mutableSectionWithBundleId:identifierCopy];
    [v8 setDomain:1];
    [v8 setDoNotFold:1];
    [mapCopy setObject:v8 forKey:identifierCopy];
  }

  return v8;
}

+ (void)setButtonOnPhotosInAppSection:(id)section withQuery:(id)query queryString:(id)string queryParams:(id)params
{
  queryCopy = query;
  sectionCopy = section;
  queryContext = [queryCopy queryContext];
  searchEntities = [queryContext searchEntities];
  lastObject = [searchEntities lastObject];

  if (lastObject)
  {
    currentSearchString = [lastObject currentSearchString];
  }

  else
  {
    queryContext2 = [queryCopy queryContext];
    currentSearchString = [queryContext2 searchString];
  }

  if (!currentSearchString)
  {
    currentSearchString = &stru_100094040;
  }

  if (([queryCopy isPeopleSearch] & 1) == 0)
  {
    v26 = @"kMDQueryOptionContextIdentifier";
    connection = [queryCopy connection];
    bundleID = [connection bundleID];
    v16 = bundleID;
    if (bundleID)
    {
      v17 = bundleID;
    }

    else
    {
      v17 = &stru_100094040;
    }

    v27 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v19 = SSQueryParserStripKindFromString();

    currentSearchString = v19;
  }

  v20 = [SPSearchEntity searchEntityWithPhotosSearchString:currentSearchString fromSuggestion:0];
  command = [v20 command];
  v22 = objc_opt_new();
  [v22 setSymbolName:@"chevron.forward"];
  v23 = objc_opt_new();
  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"SHOW_MORE" value:&stru_100094040 table:@"SpotlightServices"];
  [v23 setTitle:v25];

  [v23 setImage:v22];
  [v23 setCommand:command];
  [sectionCopy setButton:v23];
}

+ (id)removedDuplicatePhotosSectionsFromSections:(id)sections isPhotosScopedSearch:(BOOL)search
{
  sectionsCopy = sections;
  v6 = sectionsCopy;
  if (search)
  {
    goto LABEL_15;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [sectionsCopy countByEnumeratingWithState:&v33 objects:v38 count:16];
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
      bundleIdentifier = [v12 bundleIdentifier];
      if ([v13 containsObject:bundleIdentifier])
      {
        results = [v12 results];
        v16 = [results count];

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
        bundleIdentifier2 = [v25 bundleIdentifier];
        v27 = [v18 containsObject:bundleIdentifier2];

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

- (void)performQueryRewriteForQuery:(id)query withCorrection:(id)correction task:(id)task
{
  queryCopy = query;
  correctionCopy = correction;
  taskCopy = task;
  if (([queryCopy cancelled] & 1) == 0)
  {
    v11 = [queryCopy correctedQueryWithCorrection:correctionCopy];
    v12 = SPLogForSPLogCategoryQuery();
    v13 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v12, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      queryContext = [queryCopy queryContext];
      searchString = [queryContext searchString];
      v17 = 138412546;
      v18 = searchString;
      v19 = 2112;
      v20 = correctionCopy;
      _os_log_impl(&_mh_execute_header, v12, ((v13 & 1) == 0), "CoreSpotlight performing rewriting query %@ with correction %@", &v17, 0x16u);
    }

    v16 = [(SPCoreSpotlightDatastore *)self performQuery:v11 isCorrectedQuery:1 reuseTask:taskCopy needsFuzzy:1 pommesRewrite:0 embeddingsRequery:0];
  }
}

+ (id)_makeUniqueFetchAttributesWithAttributes:(id)attributes extraAttributes:(id)extraAttributes
{
  attributesCopy = attributes;
  extraAttributesCopy = extraAttributes;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(attributesCopy, "count") + objc_msgSend(extraAttributesCopy, "count")}];
  v8 = [NSMutableSet setWithArray:attributesCopy];
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
        if (([attributesCopy containsObject:{v14, v17}] & 1) != 0 || objc_msgSend(extraAttributesCopy, "containsObject:", v14))
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
    allObjects = [v8 allObjects];
    [v7 addObjectsFromArray:allObjects];
  }

  return v7;
}

+ (BOOL)_isKeyboardCJK:(id)k
{
  lowercaseString = [k lowercaseString];
  if ([lowercaseString hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(lowercaseString, "hasPrefix:", @"zh") & 1) != 0 || (objc_msgSend(lowercaseString, "hasPrefix:", @"ko"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [lowercaseString hasPrefix:@"yue"];
  }

  return v4;
}

- (id)taskForTopHitQueryWithQueryString:(id)string queryContext:(id)context resultsHandler:(id)handler completionHandler:(id)completionHandler
{
  stringCopy = string;
  contextCopy = context;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v364 = 0;
  v365 = &v364;
  v366 = 0x3032000000;
  v367 = sub_10003C26C;
  v368 = sub_10003C27C;
  v169 = stringCopy;
  v369 = v169;
  if (!v365[5])
  {
    __assert_rtn("[SPCoreSpotlightDatastore taskForTopHitQueryWithQueryString:queryContext:resultsHandler:completionHandler:]", "SPCoreSpotlightDatastore.m", 4924, "queryString");
  }

  maxCount = [contextCopy maxCount];
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (maxCount)
  {
    v12 = maxCount;
  }

  v174 = v12;
  if ([contextCopy maxRankedResultCount] < 1)
  {
    v14 = 100;
  }

  else
  {
    maxRankedResultCount = [contextCopy maxRankedResultCount];
    v14 = 100;
    if (maxRankedResultCount < 0x64)
    {
      v14 = maxRankedResultCount;
    }
  }

  v180 = v14;
  v193 = contextCopy;
  if ([contextCopy internal])
  {
    bundleIDs = [contextCopy bundleIDs];
    if ([bundleIDs count] == 1)
    {
      [bundleIDs firstObject];
    }

    else
    {
      [contextCopy clientBundleID];
    }
    clientBundleID = ;
  }

  else
  {
    clientBundleID = [contextCopy clientBundleID];
  }

  userQuery = [contextCopy userQuery];
  v173 = [clientBundleID isEqualToString:PRSRankingMailBundleString];
  if (v173)
  {
    v16 = [userQuery length];
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
    if ([contextCopy generateSuggestions])
    {
      v18 = [userQuery length];
      v19 = v180;
      if (!v18)
      {
        v19 = 100;
      }

      v180 = v19;
    }
  }

  keyboardLanguage = [contextCopy keyboardLanguage];
  fetchAttributes = [contextCopy fetchAttributes];
  v177 = +[SDSearchQuery isCJK];
  v172 = [SPCoreSpotlightDatastore _isKeyboardCJK:keyboardLanguage];
  v20 = [PRSRankingItemRanker alloc];
  queryID = [contextCopy queryID];
  [contextCopy currentTime];
  v22 = [v20 initWithSearchString:userQuery queryID:queryID language:keyboardLanguage currentTime:?];
  [v22 activate];
  v358 = 0;
  v359 = &v358;
  v360 = 0x3032000000;
  v361 = sub_10003C26C;
  v362 = sub_10003C27C;
  v363 = 0;
  v175 = v22;
  if (userQuery && [contextCopy parseUserQuery])
  {
    if ([contextCopy maxCount])
    {
      maxCount2 = [contextCopy maxCount];
      if (maxCount2 <= v180)
      {
        v24 = v180;
      }

      else
      {
        v24 = maxCount2;
      }
    }

    else
    {
      v24 = 0;
    }

    [contextCopy setMaxCount:v24];
    [contextCopy setGrouped:v180 != 0];
    *(&v168 + 1) = [contextCopy disableNLP];
    LOBYTE(v168) = v177;
    v26 = -[SPCoreSpotlightDatastore _topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:](self, "_topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:", userQuery, &__NSArray0__struct, v168, 11, clientBundleID, keyboardLanguage, [contextCopy queryID], v169, completionHandlerCopy, handlerCopy);
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

    [contextCopy setMaxCount:v25];
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
    keyboardLanguage3 = qword_1000A8438;
    v33 = qword_1000A84A0;
    os_unfair_lock_unlock(&unk_1000A84B8);
    v34 = qword_1000A8428;
    v35 = qword_1000A8430;
    v36 = v365[5];
    keyboardLanguage2 = [contextCopy keyboardLanguage];
    v38 = [v175 rankingConfigurationWithMeContact:v34 emailAddresses:v35 phoneFavorites:keyboardLanguage3 vipList:v33 clientBundle:clientBundleID spotlightQuery:v36 userQuery:userQuery tokenString:0 queryKind:11 flags:0 keyboardLanguage:keyboardLanguage2];
    v39 = v353[5];
    v353[5] = v38;
  }

  else
  {
    v40 = v365[5];
    keyboardLanguage3 = [contextCopy keyboardLanguage];
    v41 = [v175 rankingConfigurationWithMeContact:0 emailAddresses:0 phoneFavorites:0 vipList:0 clientBundle:clientBundleID spotlightQuery:v40 userQuery:userQuery tokenString:0 queryKind:11 flags:0 keyboardLanguage:keyboardLanguage3];
    v33 = v353[5];
    v353[5] = v41;
  }

  completionString = [contextCopy completionString];

  if (completionString)
  {
    fuzzyMatchMask = [v353[5] fuzzyMatchMask];
    [contextCopy setFuzzyMask:{fuzzyMatchMask, v44}];
    fuzzyMatchCheck = [v353[5] fuzzyMatchCheck];
    [contextCopy setFuzzyMatch:{fuzzyMatchCheck, v46}];
  }

  bundleIDs2 = [contextCopy bundleIDs];
  v48 = [bundleIDs2 count];

  if (v48)
  {
    v49 = +[NSMutableString string];
    objc_msgSend(v49, "appendFormat:", @"FieldMatch(%@,"), MDItemBundleID;
    v351 = 0u;
    v350 = 0u;
    v349 = 0u;
    v348 = 0u;
    bundleIDs3 = [contextCopy bundleIDs];
    v51 = [bundleIDs3 countByEnumeratingWithState:&v348 objects:v378 count:16];
    if (v51)
    {
      v52 = *v349;
      do
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v349 != v52)
          {
            objc_enumerationMutation(bundleIDs3);
          }

          [v49 appendFormat:@"%@, ", *(*(&v348 + 1) + 8 * i)];
        }

        v51 = [bundleIDs3 countByEnumeratingWithState:&v348 objects:v378 count:16];
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

    filterQueries = [contextCopy filterQueries];
    v59 = filterQueries == 0;

    if (v59)
    {
      [contextCopy setFilterQueries:v56];
    }

    else
    {
      filterQueries2 = [contextCopy filterQueries];
      v61 = [filterQueries2 arrayByAddingObjectsFromArray:v56];
      [contextCopy setFilterQueries:v61];
    }
  }

  v342 = 0;
  v343 = &v342;
  v344 = 0x3032000000;
  v345 = sub_10003C26C;
  v346 = sub_10003C27C;
  rankingQueries = [v353[5] rankingQueries];
  v62 = v359[5];
  v63 = contextCopy;
  if (v62)
  {
    v64 = [v62 objectForKeyedSubscript:@"queryTerms"];
    v65 = [v359[5] objectForKeyedSubscript:@"rankCategories"];
    [v343[5] count];
    v66 = [v359[5] objectForKeyedSubscript:@"isNLQuery"];
    bOOLValue = [v66 BOOLValue];

    if (bOOLValue)
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

    v63 = contextCopy;
  }

  else
  {
    bOOLValue = 0;
  }

  [v63 setParseUserQuery:bOOLValue];
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
  requiredAttributes = [v353[5] requiredAttributes];
  array = [requiredAttributes array];

  bundleIDs4 = [contextCopy bundleIDs];
  if ([bundleIDs4 count] != 1)
  {
    goto LABEL_73;
  }

  bundleIDs5 = [contextCopy bundleIDs];
  v75 = [bundleIDs5 objectAtIndexedSubscript:0];
  IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

  if (IsSyndicatedPhotos)
  {
    v77 = +[SSPommesPhotosRanker PhotosRankingRequiredAttributes];
    bundleIDs4 = v337[5];
    v337[5] = v77;
LABEL_73:
  }

  fetchAttributes2 = [contextCopy fetchAttributes];
  v79 = [fetchAttributes2 count];

  fetchAttributes3 = [contextCopy fetchAttributes];
  v192 = [NSSet setWithArray:fetchAttributes3];

  v81 = objc_opt_class();
  fetchAttributes4 = [contextCopy fetchAttributes];
  v83 = [v81 _makeUniqueFetchAttributesWithAttributes:fetchAttributes4 extraAttributes:v337[5]];
  [contextCopy setFetchAttributes:v83];

  fetchAttributes5 = [contextCopy fetchAttributes];
  [contextCopy setTopHitExtraFetchAttributeCount:{objc_msgSend(fetchAttributes5, "count") - v79}];

  fetchAttributes6 = [contextCopy fetchAttributes];
  v86 = [fetchAttributes6 count];

  Mutable = CFBitVectorCreateMutable(kCFAllocatorDefault, v86);
  CFBitVectorSetCount(Mutable, v86);
  v335 = 0u;
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  fetchAttributes7 = [contextCopy fetchAttributes];
  v89 = [fetchAttributes7 countByEnumeratingWithState:&v332 objects:v377 count:16];
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
          objc_enumerationMutation(fetchAttributes7);
        }

        v93 = *(*(&v332 + 1) + 8 * j);
        fetchAttributes8 = [v193 fetchAttributes];
        v95 = [fetchAttributes8 objectAtIndex:v90];
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

      v89 = [fetchAttributes7 countByEnumeratingWithState:&v332 objects:v377 count:16];
    }

    while (v89);

    v96 = v193;
    [v193 setNonTopHitFetchAttributeIndexesBits:Mutable];
  }

  else
  {

    v96 = contextCopy;
  }

  v97 = 0;
  v98 = "[originalFetchSet containsObject:[queryContext.fetchAttributes objectAtIndex:(NSUInteger)i]]";
  while (v97 < CFBitVectorGetCount(Mutable))
  {
    if (CFBitVectorGetBitAtIndex(Mutable, v97))
    {
      fetchAttributes9 = [v96 fetchAttributes];
      v100 = [fetchAttributes9 objectAtIndex:v97];
      if (([v192 containsObject:v100] & 1) == 0)
      {
        v167 = 5128;
        goto LABEL_133;
      }
    }

    else
    {
      fetchAttributes9 = [v96 fetchAttributes];
      v100 = [fetchAttributes9 objectAtIndex:v97];
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
  fetchAttributes10 = [v96 fetchAttributes];
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
  mutableBytes = [v313[5] mutableBytes];
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
      requiredAttributes2 = [v353[5] requiredAttributes];
      v108 = [v327[5] objectAtIndexedSubscript:v104];
      v109 = [requiredAttributes2 containsObject:v108];

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
  v289 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [fetchAttributes count]);
  v124 = [NSOrderedSet orderedSetWithArray:v327[5]];
  v283 = 0u;
  v282 = 0u;
  v280 = 0u;
  v281 = 0u;
  obj = fetchAttributes;
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
  v136 = handlerCopy;
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
  v140 = clientBundleID;
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
    v371 = userQuery;
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
  v157 = completionHandlerCopy;
  v203 = v157;
  v187 = v145;
  v196 = v187;
  v185 = v148;
  v204 = v185;
  v158 = v143;
  v197 = v158;
  v207 = v246;
  v190 = userQuery;
  v198 = v190;
  v159 = v144;
  v224 = v174;
  v208 = &v358;
  v199 = v159;
  selfCopy = self;
  v226 = v177;
  v160 = keyboardLanguage;
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

- (id)taskForTopHitQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  stringCopy = string;
  contextCopy = context;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  if (handlerCopy)
  {
    sub_10006352C();
  }

  v17 = completionHandlerCopy;
  v18 = [(SPCoreSpotlightDatastore *)self taskForTopHitQueryWithQueryString:stringCopy queryContext:contextCopy resultsHandler:resultsHandlerCopy completionHandler:completionHandlerCopy];

  return v18;
}

@end