@interface SDSearchQuery
+ (BOOL)isCJK;
+ (BOOL)sectionSupportsShowMoreInApp:(id)a3;
+ (id)appGenreMap;
+ (id)searchContinuationCompatibilitySet;
+ (void)initialize;
+ (void)invalidateCacheForSearchContinuation;
+ (void)prepareCacheForSearchContinuation;
- (BOOL)forceAboveFoldResultsWithQuery:(id)a3 topHitSection:(id)a4 sections:(id)a5;
- (BOOL)isBullseyeCommittedSearch;
- (BOOL)isBullseyeNonCommittedSearch;
- (BOOL)parsecAvailable;
- (BOOL)storeCompletedSearch:(id)a3 withSections:(id)a4;
- (BOOL)storeCompletedSearch:(id)a3 withSections:(id)a4 suggestionResults:(id)a5;
- (BOOL)storeSearchProgress:(id)a3 withSections:(id)a4 suggestionResults:(id)a5;
- (SDSearchQuery)initWithQueryContext:(id)a3 externalID:(unsigned int)a4 connection:(id)a5;
- (__CFArray)copyMatchInfo;
- (id)contactSuggestionsWithSearchString:(id)a3;
- (id)correctedQueryWithCorrection:(id)a3;
- (id)dedupeLocalSectionsByBundleId:(id)a3;
- (id)detailTextFromBundleIDs:(id)a3;
- (id)orderedCategories:(id)a3;
- (id)suggestionsWithSearchString:(id)a3 sections:(id)a4 topHitSection:(id)a5 highestLocalScore:(double)a6;
- (id)waitForQueryCorrections;
- (void)addDictionarySections:(id)a3;
- (void)addMatchInfo:(_MDPlistContainer *)a3;
- (void)addQueryCorrections:(id)a3;
- (void)addSuggestionsToSectionsForSending:(id)a3 searchString:(id)a4 updatedSections:(BOOL)a5 queryKind:(unint64_t)a6;
- (void)addTopHitSectionIfNecessaryToSectionsForSending:(id)a3 updatedSections:(BOOL)a4 isScopedSearch:(BOOL)a5;
- (void)cancel;
- (void)deDuplicateMailResults:(id)a3;
- (void)deDuplicateSection:(id)a3 againstSection:(id)a4;
- (void)dealloc;
- (void)logPerfToAnalytics:(int)a3;
- (void)prepareAndSend:(id)a3 force:(BOOL)a4 moreComing:(BOOL)a5 reason:(int)a6;
- (void)sendCompletions:(id)a3;
- (void)sendError:(id)a3;
- (void)sendLogValuesForDebuggingRanking:(id)a3;
- (void)sendQueryCompleted;
- (void)sendQueryReset;
- (void)sendResults:(id)a3 reset:(BOOL)a4 partiallyComplete:(BOOL)a5 update:(BOOL)a6 complete:(BOOL)a7 unchanged:(BOOL)a8 delayedTopHit:(BOOL)a9 reason:(int)a10;
- (void)sendResultsForKeys:(id)a3 toSendSections:(id)a4;
- (void)sendSuggestions:(id)a3;
- (void)sendTTRLogsWithSections:(id)a3;
- (void)serverSideDedupe:(id)a3;
- (void)setBundlesSupportingAppScoping:(id)a3;
- (void)start;
- (void)storeWillComplete:(id)a3;
@end

@implementation SDSearchQuery

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [[NSSet alloc] initWithObjects:{@"com.apple.application", @"com.apple.mobilesafari", @"com.apple.Preferences", @"com.apple.MobileAddressBook", @"com.apple.shortcuts", 0}];
    v3 = qword_1000A82D8;
    qword_1000A82D8 = v2;

    v4 = [NSMutableSet setWithObjects:@"com.apple.mobilecal", @"com.apple.Health", @"com.apple.Music", @"com.apple.podcasts", @"com.apple.reminders", @"com.apple.MobileAddressBook", @"com.apple.mobilenotes", @"com.apple.mobilemail", @"com.apple.MobileSMS", @"com.apple.Maps", @"com.apple.DocumentsApp", 0];
    v5 = qword_1000A82E0;
    qword_1000A82E0 = v4;

    v6 = qword_1000A82E8;
    qword_1000A82E8 = &off_100098F18;

    qword_1000A82F0 = MGGetSInt32Answer();
  }
}

+ (id)appGenreMap
{
  os_unfair_lock_lock(&stru_1000A82F8);
  v2 = [qword_1000A82E8 copy];
  os_unfair_lock_unlock(&stru_1000A82F8);

  return v2;
}

+ (id)searchContinuationCompatibilitySet
{
  os_unfair_lock_lock(&stru_1000A82F8);
  v2 = [qword_1000A82E0 copy];
  os_unfair_lock_unlock(&stru_1000A82F8);

  return v2;
}

- (void)start
{
  v3 = SPLogForSPLogCategoryTelemetry();
  v4 = v3;
  externalID = self->_externalID;
  if (externalID && os_signpost_enabled(v3))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "spotlightLatency", " enableTelemetry=YES ", v9, 2u);
  }

  self->_startTime = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  +[NSDate timeIntervalSinceReferenceDate];
  self->_startTimeIntervalSinceReferenceDate = v6;
  v7 = self->_externalID;
  v8 = *&self->SPSearchQuery_opaque[OBJC_IVAR___SPSearchQuery__searchString];
  SDTraceAdd();
  self->_genreGroupingEnabled = SPGenreGroupingEnabled();
  self->_shouldRecomputeSuggestions = 1;
}

- (void)cancel
{
  externalID = self->_externalID;
  SDTraceAdd();
  v28.receiver = self;
  v28.super_class = SDSearchQuery;
  [(SDSearchQuery *)&v28 cancel];
  v4 = [(SDSearchQuery *)self itemRanker];
  [v4 cancel];

  [(SSRankingManager *)self->_rankingManager cancel];
  v5 = [(NSMutableArray *)self->_slowTokens copy];
  v6 = [(NSMutableArray *)self->_tokens copy];
  slowTokens = self->_slowTokens;
  self->_slowTokens = 0;

  tokens = self->_tokens;
  self->_tokens = 0;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v24 + 1) + 8 * v13) cancel];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * v18) cancel];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v16);
  }

  categoryToResultMapping = self->_categoryToResultMapping;
  self->_categoryToResultMapping = 0;

  self->_sentTaggedTopHits = 0;
  [(SDSearchQuery *)self setMessage:0];
}

- (void)sendSuggestions:(id)a3
{
  v4 = a3;
  v5 = [[SPXPCMessage alloc] initWithName:@"Suggestions"];
  v18 = @"QID";
  v6 = [NSNumber numberWithUnsignedInt:self->_externalID];
  v19 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v5 setInfo:v7];

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  [v5 setRootObject:v8];
  v10 = SPLogForSPLogCategoryDefault();
  v11 = v10;
  if (gSPLogDebugAsDefault)
  {
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v12 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v10, v12))
  {
    v17[0] = 67109120;
    v17[1] = qos_class_self();
    _os_log_impl(&_mh_execute_header, v11, v12, "QOS sendSuggestions 1: %d", v17, 8u);
  }

  if (([(SDSearchQuery *)self cancelled]& 1) == 0)
  {
    v13 = [[SFClientTimingFeedback alloc] initWithEvent:@"com.apple.searchd.backend.suggestions.end" timeInterval:0 queryId:{-[SDSearchQuery queryIdent](self, "queryIdent")}];
    [(SPXPCConnection *)self->_connection sendMessage:v5];
    v14 = +[SPFeedbackProxy sharedProxy];
    v15 = [(SDSearchQuery *)self queryIdent];
    v16 = [(SPXPCConnection *)self->_connection bundleID];
    [v14 sendFeedbackType:21 feedback:v13 queryId:v15 clientID:v16];
  }
}

+ (void)prepareCacheForSearchContinuation
{
  v2 = +[SDController backgroundWorkQueue];
  tracing_dispatch_async();
}

+ (void)invalidateCacheForSearchContinuation
{
  v2 = +[SDController backgroundWorkQueue];
  tracing_dispatch_async();
}

+ (BOOL)sectionSupportsShowMoreInApp:(id)a3
{
  v3 = a3;
  v4 = +[SDSearchQuery searchContinuationCompatibilitySet];
  v5 = [v3 bundleIdentifier];

  LOBYTE(v3) = [v4 containsObject:v5];
  return v3;
}

- (void)setBundlesSupportingAppScoping:(id)a3
{
  v4 = [a3 allObjects];
  bundlesSupportingAppScoping = self->_bundlesSupportingAppScoping;
  self->_bundlesSupportingAppScoping = v4;

  _objc_release_x1();
}

- (BOOL)isBullseyeNonCommittedSearch
{
  v3 = [(SDSearchQuery *)self queryContext];
  v4 = [v3 queryKind];

  return v4 == 2 || v4 == 10 && self->_previousQueryKind == 2;
}

- (BOOL)isBullseyeCommittedSearch
{
  v3 = [(SDSearchQuery *)self queryContext];
  v4 = [v3 queryKind];

  if ((v4 - 5) < 4)
  {
    return 1;
  }

  if (v4 == 10)
  {
    return self->_previousQueryKind - 5 < 4;
  }

  return 0;
}

- (void)sendTTRLogsWithSections:(id)a3
{
  rankingManager = self->_rankingManager;
  v5 = a3;
  v6 = [(SDSearchQuery *)self queryContext];
  [(SSRankingManager *)rankingManager sendTTRLogsWithSections:v5 queryContext:v6 isCommittedSearch:[(SDSearchQuery *)self isBullseyeCommittedSearch] parsecCameLaterThanSRT:self->_parsecCameLaterThanSRT];

  v7 = [(SSRankingManager *)self->_rankingManager logValues];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(SSRankingManager *)self->_rankingManager logValues];
    [(SDSearchQuery *)self sendLogValuesForDebuggingRanking:v9];
  }
}

- (void)deDuplicateMailResults:(id)a3
{
  v17 = a3;
  v3 = [NSMutableSet alloc];
  v4 = [v17 resultSet];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = objc_opt_new();
  v7 = [v17 resultSet];
  v8 = [v7 count];

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [v17 resultSet];
      v11 = [v10 objectAtIndexedSubscript:i];

      v12 = [v11 rankingItem];
      v13 = v12;
      if (v12)
      {
        [v12 attributes];
        v14 = SSCompactRankingAttrsGetValue();
        if (v14)
        {
          v15 = v14;
          if ([v5 containsObject:v14])
          {
            [v6 addIndex:i];
          }

          else
          {
            [v5 addObject:v15];
          }
        }
      }
    }
  }

  v16 = [v17 resultSet];
  [v16 removeObjectsAtIndexes:v6];
}

- (void)deDuplicateSection:(id)a3 againstSection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSMutableSet alloc];
  v8 = [v6 resultSet];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v10 = [v5 bundleIdentifier];
  if (([v10 isEqual:PRSRankingAppsBundleString] & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v11 = [v5 bundleIdentifier];
  v12 = [v6 bundleIdentifier];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = [v6 results];
    v14 = [v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v45;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = [*(*(&v44 + 1) + 8 * v17) rankingItem];
          v19 = [v18 isServerAlternativeResult];

          if (v19)
          {

            v20 = v5;
            v5 = v6;
            goto LABEL_13;
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  v20 = v6;
LABEL_13:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = [v20 resultSet];
  v22 = [v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v41;
    do
    {
      v25 = 0;
      do
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v40 + 1) + 8 * v25) identifier];
        if (v26)
        {
          [v9 addObject:v26];
        }

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v23);
  }

  v27 = objc_alloc_init(NSMutableIndexSet);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v28 = [v5 resultSet];
  v29 = [v28 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *v37;
    do
    {
      v33 = 0;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v34 = [*(*(&v36 + 1) + 8 * v33) identifier];
        if (v34 && [v9 containsObject:v34])
        {
          [v27 addIndex:v31];
        }

        ++v31;

        v33 = v33 + 1;
      }

      while (v30 != v33);
      v30 = [v28 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v30);
  }

  v35 = [v5 resultSet];
  [v35 removeObjectsAtIndexes:v27];
}

- (id)dedupeLocalSectionsByBundleId:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v5 = objc_alloc_init(NSMutableIndexSet);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) bundleIdentifier];
        v13 = v12;
        if (v12 && ([v12 hasPrefix:@"com.apple.parsec"] & 1) == 0)
        {
          if ([v4 containsObject:v13])
          {
            [v5 addIndex:v9];
          }

          else
          {
            [v4 addObject:v13];
          }

          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v14 = [v6 mutableCopy];
    [v14 removeObjectsAtIndexes:v5];

    v6 = v14;
  }

  return v6;
}

- (void)serverSideDedupe:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v192 = objc_opt_new();
  v197 = objc_opt_new();
  v202 = objc_opt_new();
  v209 = objc_opt_new();
  v196 = objc_opt_new();
  v7 = self;
  v8 = objc_opt_new();
  v200 = [NSCharacterSet characterSetWithCharactersInString:@"_"];
  v221 = SSEnableSpotlightTopHitPersonalizedRanking();
  v9 = [(SDSearchQuery *)self dedupeLocalSectionsByBundleId:v4];

  v219 = v5;
  v211 = v6;
  if ([v9 count])
  {
    v10 = [v9 objectAtIndex:0];
    v11 = [v10 bundleIdentifier];
    if ([v11 isEqual:@"com.apple.spotlight.tophits"])
    {
      v12 = [v10 resultSet];
      v13 = [v12 firstObject];
      v14 = [v13 sectionBundleIdentifier];
      v15 = sub_100011F64(v14);

      if (v15)
      {
        v189 = v10;
      }

      else
      {
        v189 = 0;
      }

      v5 = v219;
    }

    else
    {

      v189 = 0;
    }

    v6 = v211;
  }

  else
  {
    v189 = 0;
  }

  v187 = +[NSDate now];
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  obj = v9;
  v194 = [obj countByEnumeratingWithState:&v237 objects:v256 count:16];
  if (v194)
  {
    v193 = *v238;
    v190 = PRSRankingMailBundleString;
    v220 = PRSRankingUserTypedURLBundleString;
    v214 = PRSRankingSafariBundleString;
    v204 = PRSRankingParsecWebIndexBundleString;
    v213 = PRSRankingCalendarBundleString;
    v203 = MDItemIdentifier;
    v186 = MDItemStartDate;
    v208 = PRSRankingPeopleFindMyBundleString;
    v201 = MDItemContactIdentifier;
    v207 = PRSRankingAppsBundleString;
    v184 = SSSectionIdentifierTopHits;
    v206 = SSSectionIdentifierSyndicatedLinks;
    v212 = PRSRankingShortcutsBundleString;
    v199 = MDItemRunnableShortcutsAssociatedSettingsPreference;
    v210 = PRSRankingSettingsBundleString;
    v205 = PRSRankingPeoplePurchaseRequestBundleString;
    v185 = v7;
    v215 = v8;
    do
    {
      v16 = 0;
      do
      {
        if (*v238 != v193)
        {
          objc_enumerationMutation(obj);
        }

        v198 = v16;
        v17 = *(*(&v237 + 1) + 8 * v16);
        if (!-[SDSearchQuery isBullseyeCommittedSearch](v7, "isBullseyeCommittedSearch") || ([v17 bundleIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"com.apple.spotlight.tophits"), v18, (v19 & 1) == 0))
        {
          v222 = objc_alloc_init(NSMutableIndexSet);
          v20 = [v17 results];
          v21 = [v20 firstObject];
          v22 = [v21 sectionBundleIdentifier];
          v23 = [v22 isEqualToString:v190];

          if (v23)
          {
            [(SDSearchQuery *)v7 deDuplicateMailResults:v17];
            v24 = v222;
LABEL_205:

            v6 = v211;
            goto LABEL_206;
          }

          v25 = v17;
          v226 = v17;
          if (v17 != v189)
          {
            v26 = [v17 resultSet];
            v27 = [v26 firstObject];
            v28 = [v27 sectionBundleIdentifier];
            v29 = [v189 resultSet];
            v30 = [v29 firstObject];
            v31 = [v30 sectionBundleIdentifier];
            if ([v28 isEqualToString:v31])
            {
              v32 = [(SDSearchQuery *)v7 isBullseyeCommittedSearch];

              v25 = v226;
              if ((v32 & 1) == 0)
              {
                [(SDSearchQuery *)v7 deDuplicateSection:v226 againstSection:v189];
              }
            }

            else
            {

              v25 = v226;
            }
          }

          v33 = [v25 resultSet];
          v34 = [v33 count];

          if (!v34)
          {
            v181 = 0;
            v8 = v215;
LABEL_204:
            v182 = v181;
            v183 = [v25 resultSet];
            v24 = v222;
            [v183 removeObjectsAtIndexes:v222];

            v7 = v185;
            goto LABEL_205;
          }

          v35 = 0;
          v36 = 0;
          v216 = 0;
          v37 = 0;
          v8 = v215;
          while (2)
          {
            v38 = [v25 resultSet];
            v39 = [v38 objectAtIndexedSubscript:v35];

            v218 = [NSNumber numberWithUnsignedInt:v37];

            v40 = [v39 resultBundleId];
            LODWORD(v38) = [v40 isEqualToString:v220];

            if (v38)
            {
              v41 = v37;
            }

            else
            {
              v41 = v216;
            }

            v216 = v41;
            v42 = [v39 sectionBundleIdentifier];
            v228 = v39;
            v217 = v37;
            if ([v42 isEqualToString:v214])
            {

              goto LABEL_32;
            }

            v43 = [v39 sectionBundleIdentifier];
            v44 = [v43 isEqualToString:v204];

            if (!v44)
            {
              v223 = 0;
              v227 = 0;
              goto LABEL_90;
            }

LABEL_32:
            v235 = 0u;
            v236 = 0u;
            v233 = 0u;
            v234 = 0u;
            v45 = [v39 alternativeURLs];
            v46 = [v45 countByEnumeratingWithState:&v233 objects:v255 count:16];
            if (!v46)
            {

              v223 = 0;
              v39 = v228;
              goto LABEL_62;
            }

            v47 = v46;
            v223 = 0;
            v227 = 0;
            v48 = *v234;
            while (2)
            {
              v49 = 0;
              v224 = v47;
              while (2)
              {
                if (*v234 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = [*(*(&v233 + 1) + 8 * v49) absoluteString];
                v51 = strippedURL();

                v52 = [v5 objectForKey:v51];
                v53 = [v52 objectAtIndex:0];
                v54 = v53;
                if (!v53)
                {
                  v254[0] = v228;
                  v254[1] = v25;
                  v57 = [NSArray arrayWithObjects:v254 count:2];
                  [v5 setObject:v57 forKey:v51];
                  goto LABEL_56;
                }

                if (v53 != v228)
                {
                  v55 = v48;
                  v56 = v45;
                  v57 = [v52 objectAtIndex:1];
                  v58 = v227;
                  if (v227)
                  {
                    if (v227 != v54)
                    {
                      if ([v227 topHit] >= 1)
                      {
                        goto LABEL_42;
                      }

                      if ([v54 topHit] >= 1)
                      {
                        v59 = v227;
                        goto LABEL_53;
                      }

                      v58 = v227;
                      [v227 l2score];
                      v67 = v66;
                      [v54 l2score];
                      if (v67 >= v68)
                      {
LABEL_42:
                        v59 = v54;
                        v60 = v57;
                        v61 = v222;
                        v62 = v58;
                      }

                      else
                      {
                        v59 = v227;
LABEL_53:
                        v61 = v222;
                        v60 = v223;
                        v62 = v54;
                      }

                      sub_100011FB4(v59, v60, v61, v62, v25);
                    }
                  }

                  else
                  {
                    v63 = v54;
                    v57 = v57;

                    v227 = v63;
                    if (v221)
                    {
                      v64 = [v63 resultBundleId];
                      v65 = [v64 isEqualToString:v220];

                      if (v65)
                      {
                        [SSTopHitNominationManager setTopHitCandidate:v63];
                      }

                      v223 = v57;
                      v5 = v219;
                      v25 = v226;
                    }

                    else
                    {
                      v223 = v57;
                    }
                  }

                  v45 = v56;
                  v48 = v55;
                  v47 = v224;
LABEL_56:
                }

                if (v47 != ++v49)
                {
                  continue;
                }

                break;
              }

              v47 = [v45 countByEnumeratingWithState:&v233 objects:v255 count:16];
              if (v47)
              {
                continue;
              }

              break;
            }

            v8 = v215;
            v39 = v228;
            if (!v227)
            {
LABEL_62:
              v231 = 0u;
              v232 = 0u;
              v229 = 0u;
              v230 = 0u;
              v69 = [v39 punchout];
              v70 = [v69 urls];

              v71 = [v70 countByEnumeratingWithState:&v229 objects:v253 count:16];
              if (!v71)
              {
                v227 = 0;
                goto LABEL_77;
              }

              v72 = v71;
              v227 = 0;
              v73 = *v230;
              while (1)
              {
                for (i = 0; i != v72; i = i + 1)
                {
                  if (*v230 != v73)
                  {
                    objc_enumerationMutation(v70);
                  }

                  v75 = [*(*(&v229 + 1) + 8 * i) absoluteString];
                  v76 = strippedURL();

                  v77 = [v5 objectForKey:v76];
                  v78 = [v77 objectAtIndex:0];
                  v79 = v78;
                  if (v78)
                  {
                    v25 = v226;
                    if (v78 == v39)
                    {
                      goto LABEL_72;
                    }

                    v80 = v227;
                    v227 = v78;
                  }

                  else
                  {
                    v252[0] = v39;
                    v25 = v226;
                    v252[1] = v226;
                    v80 = [NSArray arrayWithObjects:v252 count:2];
                    [v5 setObject:v80 forKey:v76];
                  }

                  v39 = v228;
LABEL_72:
                }

                v72 = [v70 countByEnumeratingWithState:&v229 objects:v253 count:16];
                if (!v72)
                {
LABEL_77:

                  v8 = v215;
                  break;
                }
              }
            }

            v81 = [v39 contentURL];

            if (!v81 || v227)
            {
              LODWORD(v37) = v217;
              goto LABEL_90;
            }

            v82 = [v39 contentURL];
            strippedURL();
            v84 = v83 = v39;

            v37 = [v5 objectForKey:v84];
            v85 = [v37 objectAtIndex:0];
            v86 = v85;
            if (v85)
            {
              if (v85 != v83)
              {
                if (v221)
                {
                  v87 = [v85 resultBundleId];
                  v88 = [v87 isEqualToString:v220];

                  if (v88)
                  {
                    v250[0] = v228;
                    v250[1] = v25;
                    v89 = [NSArray arrayWithObjects:v250 count:2];
                    [v5 setObject:v89 forKey:v84];

                    v227 = 0;
                    v90 = v216;
                    goto LABEL_196;
                  }
                }

                v227 = v86;
LABEL_89:

                LODWORD(v37) = v217;
                v39 = v228;
LABEL_90:
                v92 = [v39 storeIdentifier];

                if (v92)
                {
                  v93 = [v39 storeIdentifier];
                  v94 = [v211 objectForKeyedSubscript:v93];

                  v95 = [v94 objectAtIndex:0];
                  v96 = [v94 objectAtIndex:1];
                  if (!v95)
                  {
                    v97 = v37;
                    v249[0] = v39;
                    v249[1] = v25;
                    v37 = [NSArray arrayWithObjects:v249 count:2];
                    v98 = [v39 storeIdentifier];
                    [v211 setObject:v37 forKeyedSubscript:v98];

                    v25 = v226;
                    goto LABEL_98;
                  }

                  if (v95 != v227)
                  {
                    if ([v95 type] == 26)
                    {
                      v97 = v37;
                      v37 = v227;
                      v227 = v95;
                      goto LABEL_98;
                    }

                    if ([v39 type] == 26)
                    {
                      v97 = v37;
                      handleHiddenResult();
                      [v96 removeResults:v95];
                      v37 = v227;
                      v227 = 0;
LABEL_98:

                      LODWORD(v37) = v97;
                    }
                  }
                }

                v99 = [v39 sectionBundleIdentifier];
                v100 = [v99 isEqualToString:v213];

                if (!v100)
                {
                  goto LABEL_125;
                }

                v101 = [v39 valueForAttribute:v203 withType:objc_opt_class()];
                v84 = v101;
                if (v101)
                {
                  if ([v101 length] >= 0x24)
                  {
                    v102 = [v84 substringToIndex:36];
                    if (v102)
                    {
                      v103 = v102;
                      v104 = [v192 objectForKeyedSubscript:v102];
                      v105 = v104;
                      if (v104)
                      {
                        v225 = v103;
                        v106 = [v104 objectAtIndexedSubscript:0];
                        v191 = v105;
                        v195 = [v105 objectAtIndexedSubscript:1];
                        v107 = v106;
                        v108 = [v106 valueForAttribute:v186 withType:objc_opt_class()];
                        v109 = [v228 valueForAttribute:v186 withType:objc_opt_class()];
                        v110 = [v108 earlierDate:v187];

                        v111 = [v109 earlierDate:v187];

                        v112 = [v108 earlierDate:v109];

                        v113 = v110 != v108;
                        if (v110 != v108 || v111 != v109)
                        {
                          if (v111 == v109)
                          {
                            v113 = 1;
                          }

                          if (v113)
                          {
                            v118 = v110 == v108;
                            if (v110 != v108 && v111 == v109)
                            {
                              goto LABEL_118;
                            }

                            v117 = v106;
                            if (v118 || v111 == v109)
                            {
                              LODWORD(v37) = v217;
                              goto LABEL_123;
                            }

                            if (v112 == v108)
                            {
                              v120 = v106;
                              goto LABEL_119;
                            }

                            v114 = v228;
                            v119 = v228;

                            v246 = v119;
                            v116 = &v246;
                          }

                          else
                          {
                            v114 = v228;
                            v122 = v228;

                            v247 = v122;
                            v116 = &v247;
                          }

LABEL_121:
                          LODWORD(v37) = v217;
                          v116[1] = v218;
                          v123 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
                          [v192 setObject:v123 forKeyedSubscript:v225];

                          v124 = v195;
                          v121 = v114;
                          v120 = v114;
                          v117 = v107;
                          v228 = v107;
                          v218 = v124;
                          goto LABEL_122;
                        }

                        if (v112 == v108)
                        {
                          v114 = v228;
                          v115 = v228;

                          v248 = v115;
                          v116 = &v248;
                          goto LABEL_121;
                        }

LABEL_118:
                        v117 = v106;
                        v120 = v106;
LABEL_119:
                        LODWORD(v37) = v217;
                        v121 = v227;
LABEL_122:
                        v125 = v117;

                        v227 = v120;
LABEL_123:
                        v103 = v225;
                        v105 = v191;

                        v8 = v215;
                      }

                      else
                      {
                        v245[0] = v228;
                        v245[1] = v218;
                        v117 = [NSArray arrayWithObjects:v245 count:2];
                        [v192 setObject:v117 forKeyedSubscript:v103];
                      }

                      v39 = v228;
LABEL_125:
                      v126 = [v39 sectionBundleIdentifier];
                      v127 = [v126 isEqualToString:v208];

                      if (v127)
                      {
                        v128 = [v39 valueForAttribute:v201 withType:objc_opt_class()];
                        if (v128)
                        {
                          v129 = [v197 objectForKeyedSubscript:v128];

                          v227 = v129;
                          if (!v129)
                          {
                            [v197 setObject:v39 forKeyedSubscript:v128];
                            v227 = 0;
                          }
                        }
                      }

                      v130 = [v39 sectionBundleIdentifier];
                      v131 = [v130 isEqualToString:v207];

                      v228 = v39;
                      if (!v131)
                      {
                        v136 = v209;
                        goto LABEL_144;
                      }

                      v84 = [v39 identifier];
                      if (v84)
                      {
                        v132 = [v202 objectForKeyedSubscript:v84];

                        if (v132)
                        {
                          v133 = [v132 rankingItem];
                          v134 = [v228 rankingItem];
                          v135 = v134;
                          if (!v133 || !v134 || ![v133 isTopHit] || v133 != v135 || objc_msgSend(v135, "isServerAlternativeResult"))
                          {

                            goto LABEL_142;
                          }

                          v172 = [v25 bundleIdentifier];
                          v173 = [v172 isEqualToString:v184];

                          v25 = v226;
                          v136 = v209;
                          if (!v173)
                          {
                            v227 = v132;
                            v5 = v219;
                            goto LABEL_197;
                          }

LABEL_143:

                          v227 = v132;
                          v39 = v228;
LABEL_144:
                          v137 = [v39 sectionBundleIdentifier];
                          v138 = [v137 isEqualToString:v206];

                          if (v138)
                          {
                            v139 = [v39 url];
                            if (v139)
                            {
                              v140 = [v196 objectForKeyedSubscript:v139];

                              v227 = v140;
                              v5 = v219;
                              if (!v140)
                              {
                                [v196 setObject:v39 forKeyedSubscript:v139];
                                v227 = 0;
                              }
                            }

                            else
                            {
                              v5 = v219;
                            }
                          }

                          else
                          {
                            v5 = v219;
                          }

                          v141 = [v39 sectionBundleIdentifier];
                          v142 = [v141 isEqualToString:v212];

                          if (v142)
                          {
                            v143 = [v39 valueForAttribute:v199 withType:objc_opt_class()];
                            if (v143)
                            {
                              v144 = [v136 objectForKeyedSubscript:v143];
                              v145 = v144;
                              if (v144)
                              {
                                v146 = [v144 objectAtIndexedSubscript:0];
                                v147 = [v146 sectionBundleIdentifier];
                                v148 = [v147 isEqualToString:v210];

                                if (v148)
                                {
                                  v149 = [v145 objectAtIndexedSubscript:1];
                                  handleHiddenResult();
                                  [v149 removeResults:v146];

                                  v227 = 0;
                                }

                                v5 = v219;
                                v25 = v226;
                              }

                              else
                              {
                                v244[0] = v39;
                                v244[1] = v25;
                                v146 = [NSArray arrayWithObjects:v244 count:2];
                                [v136 setObject:v146 forKeyedSubscript:v143];
                              }
                            }
                          }

                          v150 = [v39 sectionBundleIdentifier];
                          v151 = [v150 isEqualToString:v210];

                          if (v151)
                          {
                            v152 = [v39 identifier];
                            v153 = [v136 objectForKeyedSubscript:v152];
                            v154 = v153;
                            if (v153)
                            {
                              v155 = [v153 objectAtIndexedSubscript:0];
                              v156 = [v155 sectionBundleIdentifier];
                              v157 = [v156 isEqualToString:v212];

                              if (v157)
                              {
                                v155 = v155;

                                v227 = v155;
                              }

                              v5 = v219;
                              v25 = v226;
                            }

                            else
                            {
                              v243[0] = v39;
                              v243[1] = v25;
                              v155 = [NSArray arrayWithObjects:v243 count:2];
                              [v136 setObject:v155 forKeyedSubscript:v152];
                            }
                          }

                          v158 = [v39 sectionBundleIdentifier];
                          v159 = [v158 isEqualToString:v205];

                          if (v159)
                          {
                            v160 = [v39 identifier];
                            v161 = [v160 rangeOfCharacterFromSet:v200];
                            if (v161 != 0x7FFFFFFFFFFFFFFFLL)
                            {
                              v162 = v161;
                              if (v161 < [v160 length])
                              {
                                v163 = [v160 substringToIndex:v162];
                                v164 = [v160 substringWithRange:{v162 + 1, objc_msgSend(v160, "length") + ~v162}];
                                if ([v163 length] && objc_msgSend(v164, "length"))
                                {
                                  v37 = [v8 objectForKeyedSubscript:v164];
                                  [v37 objectAtIndexedSubscript:1];
                                  v166 = v165 = v8;
                                  v167 = [v37 objectAtIndexedSubscript:0];
                                  if (v37)
                                  {
                                    if ([v163 compare:v166] == 1)
                                    {
                                      v241 = v39;
                                      v242 = v163;
                                      v168 = [NSArray arrayWithObjects:&v241 count:2];
                                      [v215 setObject:v168 forKeyedSubscript:v164];

                                      v169 = v39;
                                      v170 = v169;
                                      v25 = v226;
                                      v171 = v170;
                                    }

                                    else
                                    {
                                      v170 = v167;
                                      v171 = v227;
                                    }

                                    v227 = v170;
                                  }

                                  else
                                  {
                                    v241 = v39;
                                    v242 = v163;
                                    v171 = [NSArray arrayWithObjects:&v241 count:2];
                                    [v165 setObject:v171 forKeyedSubscript:v164];
                                  }

                                  v8 = v215;
                                  LODWORD(v37) = v217;
                                  v39 = v228;
                                }
                              }
                            }
                          }

                          if (v227)
                          {
                            v174 = [v39 inlineCard];
                            if (v174)
                            {
                              [v227 setInlineCard:v174];
                            }

                            v84 = [v39 compactCard];

                            if (v84)
                            {
                              [v227 setCompactCard:v84];
                            }

                            v37 = [v228 punchout];
                            if (v37)
                            {
                              v175 = [v227 punchout];

                              if (!v175)
                              {
                                [v227 setPunchout:v37];
                              }
                            }

                            v86 = [v228 completedQuery];
                            v176 = [v228 completedQuery];

                            if (v176)
                            {
                              [v227 setCompletedQuery:v86];
                            }

                            v177 = [v228 completion];

                            if (v177)
                            {
                              v178 = [v228 completion];
                              [v227 setCompletion:v178];
                            }

                            handleHiddenResult();
                            v90 = [v218 unsignedIntValue];
LABEL_196:
                            [v222 addIndex:v90];

                            LODWORD(v37) = v217;
                            goto LABEL_197;
                          }

                          v227 = 0;
LABEL_199:

                          v35 = (v37 + 1);
                          v179 = [v25 resultSet];
                          v180 = [v179 count];

                          v181 = v218;
                          v36 = v218;
                          v37 = v35;
                          if (v180 <= v35)
                          {
                            goto LABEL_204;
                          }

                          continue;
                        }

                        [v202 setObject:v228 forKeyedSubscript:v84];
                      }

                      else
                      {
                        v132 = v227;
                      }

LABEL_142:
                      v136 = v209;
                      goto LABEL_143;
                    }
                  }
                }

LABEL_197:

                v39 = v228;
                goto LABEL_199;
              }
            }

            else
            {
              v251[0] = v83;
              v251[1] = v25;
              v91 = [NSArray arrayWithObjects:v251 count:2];
              [v5 setObject:v91 forKey:v84];
            }

            break;
          }

          v227 = 0;
          goto LABEL_89;
        }

LABEL_206:
        v16 = v198 + 1;
      }

      while ((v198 + 1) != v194);
      v194 = [obj countByEnumeratingWithState:&v237 objects:v256 count:16];
    }

    while (v194);
  }
}

- (void)addDictionarySections:(id)a3
{
  v4 = a3;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v48 = self;
  v5 = self->_actualSentSections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v66;
    v9 = SSSectionIdentifierTopHits;
    v10 = PRSRankingParsecDictionaryBundleString;
    v46 = v4;
    v47 = v5;
    v45 = SSSectionIdentifierTopHits;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v66 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v65 + 1) + 8 * i);
        if ([v12 resultsCount])
        {
          v13 = [v12 bundleIdentifier];
          v14 = [v13 isEqualToString:v9];

          if (v14)
          {
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v15 = [v12 resultSet];
            v16 = [v15 countByEnumeratingWithState:&v61 objects:v72 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v62;
              while (2)
              {
                for (j = 0; j != v17; j = j + 1)
                {
                  if (*v62 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = [*(*(&v61 + 1) + 8 * j) sectionBundleIdentifier];
                  v21 = [v20 isEqualToString:v10];

                  if (v21)
                  {
                    v24 = 0;
                    v4 = v46;
                    v5 = v47;
                    goto LABEL_22;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v61 objects:v72 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

            v5 = v47;
            v9 = v45;
          }

          else
          {
            v22 = [v12 bundleIdentifier];
            v23 = [v22 isEqualToString:v10];

            if (v23)
            {
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v15 = [v12 resultSet];
              v41 = [v15 countByEnumeratingWithState:&v57 objects:v71 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v58;
                v4 = v46;
                v24 = 1;
                while (2)
                {
                  for (k = 0; k != v42; k = k + 1)
                  {
                    if (*v58 != v43)
                    {
                      objc_enumerationMutation(v15);
                    }

                    if ([*(*(&v57 + 1) + 8 * k) topHit] > 0)
                    {
                      v24 = 0;
                      goto LABEL_22;
                    }
                  }

                  v42 = [v15 countByEnumeratingWithState:&v57 objects:v71 count:16];
                  if (v42)
                  {
                    continue;
                  }

                  break;
                }
              }

              else
              {
                v24 = 1;
                v4 = v46;
              }

LABEL_22:

              goto LABEL_24;
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v65 objects:v73 count:16];
      v24 = 1;
      v4 = v46;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 1;
  }

LABEL_24:

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v25 = v4;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v53 objects:v70 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v54;
    v29 = PRSRankingDictionaryBundleString;
LABEL_26:
    v30 = 0;
    while (1)
    {
      if (*v54 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v31 = *(*(&v53 + 1) + 8 * v30);
      v32 = [v31 bundleIdentifier];
      v33 = [v32 isEqualToString:v29];

      if (v33)
      {
        break;
      }

      if (v27 == ++v30)
      {
        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v53 objects:v70 count:16];
        if (v27)
        {
          goto LABEL_26;
        }

        goto LABEL_43;
      }
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = [v31 resultSet];
    v35 = [v34 countByEnumeratingWithState:&v49 objects:v69 count:16];
    if (!v35)
    {
LABEL_41:

      goto LABEL_43;
    }

    v36 = v35;
    v37 = *v50;
LABEL_35:
    v38 = 0;
    while (1)
    {
      if (*v50 != v37)
      {
        objc_enumerationMutation(v34);
      }

      if ([*(*(&v49 + 1) + 8 * v38) topHit] >= 1)
      {
        break;
      }

      if (v36 == ++v38)
      {
        v36 = [v34 countByEnumeratingWithState:&v49 objects:v69 count:16];
        if (v36)
        {
          goto LABEL_35;
        }

        goto LABEL_41;
      }
    }

    if (v24)
    {
      goto LABEL_43;
    }

    [v31 clearResults];
    actualSentSections = v25;
  }

  else
  {
LABEL_43:

    v39 = [(NSArray *)v48->_actualSentSections arrayByAddingObjectsFromArray:v25];
    actualSentSections = v48->_actualSentSections;
    v48->_actualSentSections = v39;
  }
}

- (void)sendResults:(id)a3 reset:(BOOL)a4 partiallyComplete:(BOOL)a5 update:(BOOL)a6 complete:(BOOL)a7 unchanged:(BOOL)a8 delayedTopHit:(BOOL)a9 reason:(int)a10
{
  v331 = a8;
  v338 = a4;
  v339 = a7;
  v337 = a6;
  v333 = a5;
  v11 = a3;
  v12 = [(SDSearchQuery *)self queryContext];
  v13 = [v12 isSearchToolClient];

  v351 = v13;
  if ((v13 & 1) == 0)
  {
    [(SDSearchQuery *)self serverSideDedupe:v11];
  }

  v332 = [(NSArray *)v11 count];
  if (v332)
  {
    if ([(NSArray *)self->_sentSections count])
    {
      v14 = [(SDSearchQuery *)self didReceiveCoreSpotlightProgress];
      if (a10 <= 1 && v14)
      {
        [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
        v15 = sub_100014E9C(self->_actualSentSections);
        actualSentSections = self->_actualSentSections;
        self->_actualSentSections = v15;
      }

      else if (a10 == 3)
      {
        v19 = [(NSArray *)v11 firstObject];
        v20 = [v19 bundleIdentifier];
        v21 = [(NSArray *)self->_sentSections firstObject];
        v22 = [v21 bundleIdentifier];
        v23 = [v20 isEqual:v22];

        if (v23)
        {
          [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
          v24 = [(NSArray *)v11 copy];
        }

        else
        {
          v24 = 0;
        }

        v25 = sub_100014E9C(self->_actualSentSections);
        v26 = self->_actualSentSections;
        self->_actualSentSections = v25;

        if (v24)
        {
          goto LABEL_23;
        }
      }

      if ((v351 & 1) != 0 || [(SDSearchQuery *)self isBullseyeCommittedSearch])
      {
        v27 = [[NSMutableOrderedSet alloc] initWithCapacity:{-[NSArray count](self->_sentSections, "count")}];
        v28 = v27;
        if (a9)
        {
          [v27 addObjectsFromArray:v11];
          sentSections = self->_sentSections;
        }

        else
        {
          [v27 addObjectsFromArray:self->_sentSections];
          sentSections = v11;
        }

        [v28 addObjectsFromArray:sentSections];
        v24 = [v28 array];

        goto LABEL_23;
      }

      v18 = [(NSArray *)self->_sentSections arrayByAddingObjectsFromArray:v11];
    }

    else
    {
      v18 = [(NSArray *)v11 copy];
    }

    v24 = v18;
LABEL_23:
    objc_storeStrong(&self->_sentSections, v24);

    v17 = 1;
    goto LABEL_24;
  }

  v17 = v337 || v339 || v338 || v333;
LABEL_24:
  v334 = v17;
  v30 = [(SDSearchQuery *)self queryContext];
  v31 = [v30 isSearchToolClient];

  v360 = self;
  if (v31)
  {
    obj = 0;
    v359 = 0;
    v391 = 0;
    v396 = 0;
    v397 = 0;
    v32 = -1.79769313e308;
    v33 = v11;
    goto LABEL_137;
  }

  v347 = SSMaxSectionsBelowSuggestions();
  v441 = 0u;
  v442 = 0u;
  v443 = 0u;
  v444 = 0u;
  v34 = v11;
  v392 = [(NSArray *)v34 countByEnumeratingWithState:&v441 objects:v464 count:16];
  if (!v392)
  {
    v359 = 0;
    v391 = 0;
    v396 = 0;
    v397 = 0;
    v32 = -1.79769313e308;
    goto LABEL_64;
  }

  v359 = 0;
  v396 = 0;
  v397 = 0;
  v385 = *v442;
  v391 = 0;
  v371 = SSContactsBundleIdentifier;
  v379 = SSPeopleBundleIdentifier;
  v365 = SSSectionIdentifierSuggestions;
  v361 = SSSectionIdentifierTopHits;
  v32 = -1.79769313e308;
  obja = v34;
  do
  {
    for (i = 0; i != v392; i = i + 1)
    {
      if (*v442 != v385)
      {
        objc_enumerationMutation(obja);
      }

      v36 = *(*(&v441 + 1) + 8 * i);
      v37 = [v36 bundleIdentifier];
      v38 = [v37 isEqual:v379];

      if (v38)
      {
        v39 = v36;

        v397 = v39;
      }

      v40 = [v36 bundleIdentifier];
      v41 = [v40 isEqual:v371];

      if (v41)
      {
        v42 = v36;

        v396 = v42;
      }

      v43 = [v36 bundleIdentifier];
      v44 = [v43 isEqual:v365];

      if (v44)
      {
        v45 = v36;

        v391 = v45;
      }

      v46 = [v36 bundleIdentifier];
      if ([v46 isEqualToString:v361])
      {
        v47 = [v36 results];
        v48 = [v47 count];

        if (v48 != 1)
        {
          goto LABEL_41;
        }

        v46 = v359;
        v359 = v36;
      }

LABEL_41:
      v439 = 0u;
      v440 = 0u;
      v437 = 0u;
      v438 = 0u;
      v49 = [v36 results];
      v50 = [v49 countByEnumeratingWithState:&v437 objects:v463 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = 0;
        v53 = *v438;
        do
        {
          for (j = 0; j != v51; j = j + 1)
          {
            if (*v438 != v53)
            {
              objc_enumerationMutation(v49);
            }

            v55 = *(*(&v437 + 1) + 8 * j);
            v56 = [v55 type];
            v57 = [v55 type];
            if (v56 != 36)
            {
              v62 = v57;
              if ([v55 type] != 2 && v62 != 37)
              {
                continue;
              }
            }

            v58 = [v55 rankingItem];
            v59 = [v58 L2FeatureVector];
            [v59 originalL2Score];
            v61 = v60;

            if (v32 < v61)
            {
              v32 = v61;
            }

            v52 = 1;
          }

          v51 = [v49 countByEnumeratingWithState:&v437 objects:v463 count:16];
        }

        while (v51);

        if (v52)
        {
          self = v360;
          if ([(SDSearchQuery *)v360 isNLPSearch]|| [(SDSearchQuery *)v360 isPeopleSearch])
          {
            [v36 setMaxInitiallyVisibleResults:{objc_msgSend(v36, "resultsCount")}];
          }
        }

        else
        {
          self = v360;
        }
      }

      else
      {
      }
    }

    v34 = obja;
    v392 = [(NSArray *)obja countByEnumeratingWithState:&v441 objects:v464 count:16];
  }

  while (v392);
LABEL_64:

  if (a10 != 4)
  {
    v63 = [(SDSearchQuery *)self queryContext];
    v64 = +[SSShortcutsRankingManager moveShortcutsToRelatedAppSectionsForAllSections:isAsYouTypeTopHitSearch:sectionBuilderBlock:](SSShortcutsRankingManager, "moveShortcutsToRelatedAppSectionsForAllSections:isAsYouTypeTopHitSearch:sectionBuilderBlock:", v34, [v63 queryKind] == 2, &stru_100092870);

    v34 = v64;
  }

  v435 = 0u;
  v436 = 0u;
  v433 = 0u;
  v434 = 0u;
  v33 = v34;
  v65 = [(NSArray *)v33 countByEnumeratingWithState:&v433 objects:v462 count:16];
  if (!v65)
  {
    obj = 0;
    goto LABEL_136;
  }

  v66 = v65;
  obj = 0;
  v67 = *v434;
  v68 = SSContactsBundleIdentifier;
  v69 = SSPeopleBundleIdentifier;
  v342 = v33;
  v344 = *v434;
  v372 = SSContactsBundleIdentifier;
  v380 = SSPeopleBundleIdentifier;
  while (2)
  {
    v70 = 0;
    while (2)
    {
      if (*v434 != v67)
      {
        objc_enumerationMutation(v33);
      }

      v71 = *(*(&v433 + 1) + 8 * v70);
      v72 = [v71 bundleIdentifier];
      v73 = [v72 isEqual:v68];

      if (v73)
      {
        v74 = v397 == 0;
      }

      else
      {
        v74 = 1;
      }

      if (!v74)
      {
        goto LABEL_132;
      }

      v75 = [v71 bundleIdentifier];
      v76 = [v75 isEqual:v69];

      if (v76 && v396 != 0)
      {
        goto LABEL_132;
      }

      v78 = [v71 resultsCount];
      if (!v78)
      {
        goto LABEL_132;
      }

      v393 = v78;
      if ([(SDSearchQuery *)self isScopedAppSearch])
      {
        [v71 setMaxInitiallyVisibleResults:50];
        v79 = 50;
        goto LABEL_122;
      }

      if (![SDSearchQuery sectionSupportsShowMoreInApp:v71])
      {
        v89 = [v71 bundleIdentifier];
        IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

        if (IsSyndicatedPhotos)
        {
          v79 = 14;
        }

        else
        {
          v79 = [(SDSearchQuery *)self maxCount];
        }

        goto LABEL_122;
      }

      v79 = [v71 maxInitiallyVisibleResults];
      if (v351 & 1) != 0 || (SPHideSearchThroughSuggestions())
      {
        goto LABEL_110;
      }

      v431 = 0u;
      v432 = 0u;
      v429 = 0u;
      v430 = 0u;
      v80 = [v71 resultSet];
      v81 = [v80 countByEnumeratingWithState:&v429 objects:v461 count:16];
      if (!v81)
      {
LABEL_108:

        goto LABEL_110;
      }

      v82 = v81;
      v83 = v79;
      v84 = *v430;
      while (2)
      {
        v85 = 0;
LABEL_90:
        if (*v430 != v84)
        {
          objc_enumerationMutation(v80);
        }

        v86 = *(*(&v429 + 1) + 8 * v85);
        if ([v86 isFuzzyMatch])
        {
LABEL_96:
          if (v82 == ++v85)
          {
            v82 = [v80 countByEnumeratingWithState:&v429 objects:v461 count:16];
            if (v82)
            {
              continue;
            }

            v67 = v344;
            v68 = v372;
            v79 = v83;
            goto LABEL_107;
          }

          goto LABEL_90;
        }

        break;
      }

      v87 = [v86 userActivityType];
      v88 = v87;
      if (v87 && ![v87 isEqualToString:CSSearchableItemActionType])
      {

        goto LABEL_96;
      }

      v91 = obj;
      if (!obj)
      {
        v91 = objc_opt_new();
      }

      obj = v91;
      v92 = [v71 title];
      v67 = v344;
      v68 = v372;
      v79 = v83;
      if (v92)
      {
        v93 = v92;
        v94 = [v71 bundleIdentifier];

        if (v94)
        {
          v95 = [v71 bundleIdentifier];
          [obj addObject:v95];

          v80 = [v71 title];
          v79 = v83;
          [obj addObject:v80];
LABEL_107:
          self = v360;
          goto LABEL_108;
        }
      }

      self = v360;
LABEL_110:
      if (v347)
      {
        v386 = v79;
        v96 = objc_opt_new();
        v97 = objc_opt_new();
        [v97 setActivityType:CSQueryContinuationActionType];
        v353 = v97;
        [v96 setUserActivityData:v97];
        v427 = 0u;
        v428 = 0u;
        v425 = 0u;
        v426 = 0u;
        v98 = [v71 results];
        v99 = [v98 countByEnumeratingWithState:&v425 objects:v460 count:16];
        if (v99)
        {
          v100 = v99;
          v101 = *v426;
          do
          {
            for (k = 0; k != v100; k = k + 1)
            {
              if (*v426 != v101)
              {
                objc_enumerationMutation(v98);
              }

              v103 = *(*(&v425 + 1) + 8 * k);
              v104 = [v103 moreResultsPunchout];
              v105 = v104;
              if (v104)
              {
                v106 = v104;
              }

              else
              {
                v106 = v96;
              }

              [v103 setMoreResultsPunchout:v106];
            }

            v100 = [v98 countByEnumeratingWithState:&v425 objects:v460 count:16];
          }

          while (v100);
        }

        self = v360;
        v33 = v342;
        v67 = v344;
        v68 = v372;
        v79 = v386;
      }

LABEL_122:
      v107 = SPLogForSPLogCategoryQuery();
      v108 = v107;
      if (gSPLogDebugAsDefault)
      {
        v109 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v109 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v107, v109))
      {
        v110 = [v71 title];
        v111 = [v71 domain];
        *buf = 138413058;
        *&buf[4] = v110;
        v456 = 2048;
        *v457 = v111;
        *&v457[8] = 2048;
        v458 = v79;
        LOWORD(v459[0]) = 2048;
        *(v459 + 2) = v393;
        _os_log_impl(&_mh_execute_header, v108, v109, "Sending section title:%@, domain:%ld, maxCount:%ld, resultCount:%ld", buf, 0x2Au);

        v68 = v372;
      }

      v112 = [v71 resultSet];
      if ([v112 count] > v79)
      {
        v387 = v79;
        v113 = [(SDSearchQuery *)self queryContext];
        v114 = [v113 isSearchToolClient];

        if (v114)
        {
          v69 = v380;
          goto LABEL_132;
        }

        v112 = [v71 resultSet];
        v115 = [[NSMutableOrderedSet alloc] initWithOrderedSet:v112 range:0 copyItems:{v387, 1}];
        [v71 setResultSet:v115];
      }

      v69 = v380;

LABEL_132:
      if (++v70 != v66)
      {
        continue;
      }

      break;
    }

    v66 = [(NSArray *)v33 countByEnumeratingWithState:&v433 objects:v462 count:16];
    if (v66)
    {
      continue;
    }

    break;
  }

LABEL_136:

LABEL_137:
  if (!v334)
  {
LABEL_207:
    v170 = 0;
    v171 = v397;
    v172 = v359;
    goto LABEL_384;
  }

  v343 = v33;
  v116 = SPLogForSPLogCategoryQuery();
  v117 = v116;
  if (gSPLogDebugAsDefault)
  {
    v118 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v118 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v116, v118))
  {
    v119 = [(NSArray *)v343 count];
    *buf = 134219008;
    *&buf[4] = v119;
    v456 = 1024;
    *v457 = v339;
    *&v457[4] = 1024;
    *&v457[6] = v338;
    LOWORD(v458) = 1024;
    *(&v458 + 2) = v333;
    HIWORD(v458) = 1024;
    v459[0] = v337;
    _os_log_impl(&_mh_execute_header, v117, v118, "Sending results, sectionCount:%ld, complete:%d, reset:%d, partiallyComplete:%d, update:%d", buf, 0x24u);
  }

  if (qword_1000A8310 != -1)
  {
    sub_1000625B4();
  }

  v120 = SPMaxCountTopHits();
  SPMinTopHitThresholdForBigResult();
  v122 = v121;
  if ([(SDSearchQuery *)self isBullseyeCommittedSearch])
  {
    if (self->_isPeopleSearch)
    {
      v123 = SPMaxSectionsBeforeShowMoreWithScopedSearch();
    }

    else
    {
      v123 = SPMaxSectionsBeforeShowMore();
    }
  }

  else
  {
    v123 = SSMaxSectionsBelowSuggestions();
  }

  if (v332 >= v123)
  {
    v124 = v123;
  }

  else
  {
    v124 = v332;
  }

  if (!self->_topHitsManager)
  {
    v125 = [SSBullseyeTopHitsManager alloc];
    v126 = *&self->SPSearchQuery_opaque[OBJC_IVAR___SPSearchQuery__queryID];
    categoryToResultMapping = self->_categoryToResultMapping;
    topHitSection = self->_topHitSection;
    v129 = [(SDSearchQuery *)self queryContext];
    v130 = [v125 initWithQueryId:v126 categoryToResultMapping:categoryToResultMapping currentTopHitSection:topHitSection queryContext:v129 ranker:self->_itemRanker];
    topHitsManager = self->_topHitsManager;
    self->_topHitsManager = v130;
  }

  if (v351)
  {
LABEL_156:
    v132 = v343;
  }

  else if (v332)
  {
    v133 = [(SDSearchQuery *)self queryContext];
    v134 = [v133 searchEntities];
    if (v134)
    {
      v135 = [(SDSearchQuery *)self queryContext];
      v136 = [v135 searchEntities];
      if ([v136 count])
      {
        v137 = [(SDSearchQuery *)self queryContext];
        v138 = [v137 searchEntities];
        v139 = [v138 lastObject];
        v140 = [v139 isScopedSearch];

        self = v360;
      }

      else
      {
        v140 = 0;
      }
    }

    else
    {
      v140 = 0;
    }

    if (v337 || (v140 & 1) != 0)
    {
      goto LABEL_156;
    }

    v141 = [(NSArray *)self->_actualSentSections firstObject];
    v142 = v141;
    if (v141)
    {
      v143 = [v141 bundleIdentifier];
      v144 = [v143 isEqual:@"com.apple.spotlight.tophits"];

      if ((v144 & 1) == 0)
      {

        v142 = 0;
      }
    }

    v145 = self->_topHitsManager;
    v146 = [(SDSearchQuery *)self isBullseyeCommittedSearch]|| [(SDSearchQuery *)self isEntitySearch];
    v424 = v142;
    v132 = [(SSBullseyeTopHitsManager *)v145 tagOrFilterHiddenSectionsForClient:v343 isCommittedSearch:v146 maxVisibleSections:v124 maxTopHitsCount:v120 minThresholdForBigResult:&v424 topHitSection:v122];
    v147 = v424;

    if (v147 && [v147 resultsCount])
    {
      self->_sentTaggedTopHits = 1;
    }
  }

  else
  {
    v132 = 0;
  }

  [(SDSearchQuery *)self queryIdent];
  v148 = v132;
  v149 = v148;
  if (v148)
  {
    v150 = v148;
  }

  else
  {
    v150 = &__NSArray0__struct;
  }

  if (a10 != 4)
  {
    v160 = v150;
    goto LABEL_200;
  }

  if (![(NSArray *)v150 count])
  {
LABEL_199:
    v160 = 0;
    goto LABEL_200;
  }

  v151 = [(NSArray *)v150 objectAtIndex:0];
  v152 = [v151 bundleIdentifier];
  v153 = [v152 isEqualToString:@"com.apple.spotlight.tophits"];

  if (!v153)
  {
LABEL_198:

    goto LABEL_199;
  }

  v154 = [v151 resultSet];
  v155 = [v154 objectAtIndexedSubscript:0];
  v156 = [v155 sectionBundleIdentifier];

  if (!v156 || !sub_100011F64(v156))
  {
LABEL_197:

    goto LABEL_198;
  }

  if (!SSIsCounterFactual())
  {
    v161 = SSPriorityIndexFastPathEnabled();
    v162 = [NSUUID alloc];
    if (v161)
    {
      v163 = [v162 initWithUUIDString:priorityIndexDidTakeFastPathUUID];
      SSDefaultsLogForTrigger();

      goto LABEL_192;
    }

    v164 = [v162 initWithUUIDString:priorityIndexDidNotTakeFastPathUUID];
    SSDefaultsLogForTrigger();

    v159 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
LABEL_195:
      _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "Withholding priority index fast path because it's disabled", buf, 2u);
    }

LABEL_196:

    goto LABEL_197;
  }

  v157 = [NSUUID alloc];
  v158 = [v157 initWithUUIDString:priorityIndexDidTakeFastPathUUID];
  SSDefaultsLogForTrigger();

  if (!SSPriorityIndexFastPathEnabled())
  {
    v159 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      goto LABEL_195;
    }

    goto LABEL_196;
  }

LABEL_192:
  *buf = v151;
  v160 = [NSArray arrayWithObjects:buf count:1];

LABEL_200:
  if (!v160)
  {
    v169 = SPLogForSPLogCategoryDefault();
    v33 = v343;
    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "Withholding early priority index results", buf, 2u);
    }

    [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
    goto LABEL_207;
  }

  v394 = v160;
  v165 = objc_alloc_init(NSMutableArray);
  if (a10 == 4 || (-[SDSearchQuery queryContext](self, "queryContext"), v166 = objc_claimAutoreleasedReturnValue(), v167 = [v166 isSearchToolClient], v166, (v167 & 1) != 0))
  {
    v168 = 0;
    v352 = 0;
    goto LABEL_326;
  }

  v173 = +[SSQueryIntentManager isEnabled];
  if (a10 != 2 && v173 && [(SDSearchQuery *)self isBullseyeNonCommittedSearch])
  {
    v174 = [(SDSearchQuery *)self queryContext];
    v175 = [(SSRankingManager *)self->_rankingManager rankingConfiguration];
    [SSQueryIntentManager setQueryIntentForQueryContext:v174 sections:v394 rankingInfo:v175];

    v176 = [(SDSearchQuery *)self queryContext];
    v177 = [SSQueryIntentManager applySectionPolicyForQueryContext:v176 sections:v394];

    v394 = v177;
  }

  v178 = v397;
  v179 = v359;
  if (!v391)
  {
    v168 = 0;
    v352 = 0;
    goto LABEL_248;
  }

  v422 = 0u;
  v423 = 0u;
  v420 = 0u;
  v421 = 0u;
  v354 = v394;
  v381 = [v354 countByEnumeratingWithState:&v420 objects:v454 count:16];
  v168 = 0;
  if (!v381)
  {
    v352 = 0;
    goto LABEL_247;
  }

  v352 = 0;
  v373 = *v421;
  v366 = SSSectionIdentifierTopHits;
  v348 = SSShortcutsBundleIdentifier;
  while (2)
  {
    v180 = 0;
    while (2)
    {
      if (*v421 != v373)
      {
        objc_enumerationMutation(v354);
      }

      v181 = *(*(&v420 + 1) + 8 * v180);
      v182 = [v181 bundleIdentifier];
      v183 = [v182 isEqual:v366];

      if (v183)
      {
        v388 = v180;
        v184 = v181;

        v418 = 0u;
        v419 = 0u;
        v416 = 0u;
        v417 = 0u;
        v185 = [v184 results];
        v186 = [v185 countByEnumeratingWithState:&v416 objects:v453 count:16];
        if (v186)
        {
          v187 = v186;
          v362 = v184;
          v188 = *v417;
          while (1)
          {
            for (m = 0; m != v187; m = m + 1)
            {
              if (*v417 != v188)
              {
                objc_enumerationMutation(v185);
              }

              v190 = *(*(&v416 + 1) + 8 * m);
              if (!v168)
              {
                v194 = [*(*(&v416 + 1) + 8 * m) contactIdentifier];
                if (v194)
                {

LABEL_231:
                  v196 = [v190 contactIdentifier];
                  v193 = v196;
                  if (v196)
                  {
                    v193 = v196;
                    v168 = v193;
                  }

                  else
                  {
                    v168 = [v190 personIdentifier];
                  }

LABEL_234:

                  continue;
                }

                v195 = [v190 personIdentifier];

                if (v195)
                {
                  goto LABEL_231;
                }
              }

              v191 = [v190 sectionBundleIdentifier];
              v192 = [v191 isEqualToString:@"com.apple.application"];

              if (v192 && ![v165 count])
              {
                v193 = [v190 resultBundleId];
                [v165 addObject:v193];
                goto LABEL_234;
              }
            }

            v187 = [v185 countByEnumeratingWithState:&v416 objects:v453 count:16];
            if (!v187)
            {
              v179 = v362;
              v178 = v397;
              goto LABEL_241;
            }
          }
        }

        v179 = v184;
LABEL_241:

        v180 = v388;
      }

      else
      {
        v197 = [v181 bundleIdentifier];
        v198 = [v197 isEqual:v348];

        if (v198)
        {
          v388 = v180;
          v185 = v352;
          v352 = v181;
          goto LABEL_241;
        }
      }

      if (++v180 != v381)
      {
        continue;
      }

      break;
    }

    v381 = [v354 countByEnumeratingWithState:&v420 objects:v454 count:16];
    if (v381)
    {
      continue;
    }

    break;
  }

LABEL_247:

LABEL_248:
  v199 = [v178 resultSet];
  v200 = [v199 count];

  v359 = v179;
  if (!v200)
  {
    goto LABEL_314;
  }

  v389 = objc_alloc_init(NSMutableArray);
  v382 = objc_opt_new();
  v345 = objc_opt_new();
  v201 = [v178 results];
  v202 = [v201 copy];

  v203 = [v396 results];
  v204 = [v203 copy];

  v414 = 0u;
  v415 = 0u;
  v412 = 0u;
  v413 = 0u;
  v363 = v204;
  v205 = [v363 countByEnumeratingWithState:&v412 objects:v452 count:16];
  if (v205)
  {
    v206 = v205;
    v374 = 0;
    v207 = *v413;
    do
    {
      for (n = 0; n != v206; n = n + 1)
      {
        if (*v413 != v207)
        {
          objc_enumerationMutation(v363);
        }

        v209 = *(*(&v412 + 1) + 8 * n);
        v210 = [v209 contactIdentifier];

        if (v210)
        {
          v211 = [v209 contactIdentifier];
          [v382 setObject:v209 forKey:v211];

          if ((v374 & 1) != 0 || ([v209 contactIdentifier], v212 = objc_claimAutoreleasedReturnValue(), v213 = objc_msgSend(v212, "isEqualToString:", v168), v212, (v213 & 1) == 0))
          {
            [v389 addObject:v209];
          }

          else
          {
            v374 = 1;
          }
        }
      }

      v206 = [v363 countByEnumeratingWithState:&v412 objects:v452 count:16];
    }

    while (v206);
  }

  else
  {
    v374 = 0;
  }

  if (qword_1000A8320 != -1)
  {
    sub_1000625DC();
  }

  v410 = 0u;
  v411 = 0u;
  v408 = 0u;
  v409 = 0u;
  v355 = v202;
  v214 = [v355 countByEnumeratingWithState:&v408 objects:v451 count:16];
  if (!v214)
  {
    v216 = 0;
    v218 = v389;
    goto LABEL_288;
  }

  v215 = v214;
  v216 = 0;
  v217 = *v409;
  v218 = v389;
  while (2)
  {
    v219 = 0;
    while (2)
    {
      if (*v409 != v217)
      {
        objc_enumerationMutation(v355);
      }

      v220 = *(*(&v408 + 1) + 8 * v219);
      v221 = [v220 personIdentifier];

      if (v221)
      {
        v222 = qword_1000A8318;
        v223 = [v220 personIdentifier];
        v407 = v216;
        v224 = [v222 unifiedContactWithIdentifier:v223 keysToFetch:qword_1000A8328 error:&v407];
        v225 = v407;
        v226 = v216;
        v216 = v225;

        if (v216)
        {
          if ([v216 code] != 200)
          {
            v227 = SPLogForSPLogCategoryDefault();
            if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
            {
              v228 = [v216 localizedDescription];
              *buf = 138412290;
              *&buf[4] = v228;
              _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "*warn* CNContactStore fetch error: %@", buf, 0xCu);
            }

            goto LABEL_283;
          }
        }

        else
        {
          v229 = [v220 personIdentifier];
          v230 = [v382 objectForKey:v229];

          if (v230)
          {
            v216 = 0;
          }

          else
          {
            v231 = [v220 personIdentifier];
            [v382 setObject:v220 forKey:v231];

            v232 = [v220 title];
            v233 = [v232 text];
            v227 = SSNormalizedQueryString();

            if (([v345 containsObject:v227] & 1) == 0)
            {
              [v345 addObject:v227];
              if ((v374 & 1) == 0)
              {
                v234 = [v220 personIdentifier];
                v235 = [v234 isEqualToString:v168];

                if (v235)
                {
                  v216 = 0;
                  v374 = 1;
                  goto LABEL_283;
                }
              }

              [v389 addObject:v220];
            }

            v216 = 0;
LABEL_283:
          }
        }
      }

      if (v215 != ++v219)
      {
        continue;
      }

      break;
    }

    v215 = [v355 countByEnumeratingWithState:&v408 objects:v451 count:16];
    if (v215)
    {
      continue;
    }

    break;
  }

LABEL_288:
  v335 = v216;

  v236 = [v218 count];
  if (v236 >= SPMaxVisibleResultsCountPerSection())
  {
    v237 = SPMaxVisibleResultsCountPerSection();
  }

  else
  {
    v237 = [v218 count];
  }

  v367 = v237;
  v238 = v382;
  v239 = v345;
  v405 = 0u;
  v406 = 0u;
  v403 = 0u;
  v404 = 0u;
  v394 = v394;
  v240 = [v394 countByEnumeratingWithState:&v403 objects:v450 count:16];
  if (v240)
  {
    v241 = v240;
    v242 = 0;
    v243 = *v404;
    v244 = SSContactsBundleIdentifier;
    v349 = SSPeopleBundleIdentifier;
    v375 = -1;
    do
    {
      v245 = 0;
      v340 = v242;
      do
      {
        if (*v404 != v243)
        {
          objc_enumerationMutation(v394);
        }

        v246 = *(*(&v403 + 1) + 8 * v245);
        v247 = [v246 bundleIdentifier];
        v248 = [v247 isEqual:v244];

        if (v248)
        {
          [v246 setMaxInitiallyVisibleResults:v367];
          [v246 setResults:v389];
        }

        else
        {
          v249 = [v246 bundleIdentifier];
          v250 = [v249 isEqual:v349];

          v251 = v375;
          if (v250)
          {
            v251 = v242;
            v252 = v396 == 0;
          }

          else
          {
            v252 = 0;
          }

          if (v252)
          {
            [v246 setBundleIdentifier:v244];
            [v246 setMaxInitiallyVisibleResults:v367];
            [v246 setResults:v389];
            v253 = obj;
            if (!obj)
            {
              v253 = objc_opt_new();
            }

            v254 = [v246 bundleIdentifier];
            [v253 addObject:v254];

            v255 = [v246 title];
            obj = v253;
            [v253 addObject:v255];
          }

          else
          {
            v375 = v251;
          }
        }

        ++v242;
        ++v245;
      }

      while (v241 != v245);
      v242 = &v241[v340];
      v241 = [v394 countByEnumeratingWithState:&v403 objects:v450 count:16];
    }

    while (v241);

    if (v375 < 0)
    {
      v238 = v382;
      v218 = v389;
      v239 = v345;
    }

    else
    {
      v238 = v382;
      v218 = v389;
      v239 = v345;
      if (v396)
      {
        v256 = [v394 mutableCopy];
        [v256 removeObjectAtIndex:v375];
        v257 = v256;

        goto LABEL_312;
      }
    }
  }

  else
  {
    v257 = v394;
LABEL_312:
    v394 = v257;
  }

LABEL_314:
  if (v391)
  {
    v401 = 0u;
    v402 = 0u;
    v399 = 0u;
    v400 = 0u;
    v394 = v394;
    v258 = [v394 countByEnumeratingWithState:&v399 objects:v449 count:16];
    if (v258)
    {
      v259 = v258;
      v260 = *v400;
      v261 = SSSectionIdentifierSuggestions;
      do
      {
        for (ii = 0; ii != v259; ii = ii + 1)
        {
          if (*v400 != v260)
          {
            objc_enumerationMutation(v394);
          }

          v263 = *(*(&v399 + 1) + 8 * ii);
          v264 = [v263 bundleIdentifier];
          v265 = [v264 isEqual:v261];

          if (v265)
          {
            v266 = [(SDSearchQuery *)v360 suggestionsWithSearchString:*&v360->SPSearchQuery_opaque[OBJC_IVAR___SPSearchQuery__searchString] sections:v394 topHitSection:v359 highestLocalScore:v32];
            [v263 setResults:v266];
          }
        }

        v259 = [v394 countByEnumeratingWithState:&v399 objects:v449 count:16];
      }

      while (v259);
    }
  }

  self = v360;
LABEL_326:
  v267 = [(SDSearchQuery *)self queryContext];
  v268 = [v267 isSearchToolClient];

  if (v268)
  {
    v269 = [(SDSearchQuery *)self queryContext];
    v270 = [SSRankingManager processSearchToolFinalResults:v394 queryContext:v269];

    v271 = v270;
  }

  else
  {
    v271 = v394;
  }

  v272 = [SSTopHitNominationManager postProcessSectionsBasedOnTopHitSection:v271 withTopHitSection:v359];

  [SSTopHitNominationManager finalizeTopHitsInSections:v272 withTopHitSection:v359];
  [SSRankingManager fillRankingPosition:v272];
  if (a10 == 2 && (-[SDSearchQuery queryContext](self, "queryContext"), v273 = objc_claimAutoreleasedReturnValue(), v274 = [v273 isSearchToolClient], v273, (v274 & 1) == 0))
  {
    [(SDSearchQuery *)self addDictionarySections:v272];
  }

  else
  {
    objc_storeStrong(&self->_actualSentSections, v272);
  }

  v275 = [(SDSearchQuery *)self queryContext];
  v276 = [v275 isSearchToolClient];

  v395 = v272;
  if ((v276 & 1) == 0)
  {
    v277 = +[SDFeedbackInterceptor sharedInstance];
    v390 = self->_actualSentSections;
    v383 = *&self->SPSearchQuery_opaque[OBJC_IVAR___SPSearchQuery__searchString];
    v376 = [(SDSearchQuery *)self queryIdent];
    allowAnonymousDataCollection = self->_allowAnonymousDataCollection;
    itemRanker = self->_itemRanker;
    v279 = [(SSRankingManager *)self->_rankingManager rankingConfiguration];
    v280 = [(SDSearchQuery *)self internalDebug];
    v281 = [(SDSearchQuery *)v360 queryContext];
    v282 = [v281 keyboardPrimaryLanguage];
    v283 = [(SDSearchQuery *)v360 connection];
    v284 = [v283 bundleID];
    LOBYTE(v330) = v280;
    self = v360;
    [v277 willSendSections:v390 forQuery:v383 queryIdentifier:v376 allowAnonymousDataCollection:allowAnonymousDataCollection withRankerUsed:itemRanker withRankingConfiguration:v279 internalDebug:v330 keyboardPrimaryLanguage:v282 clientID:v284];

    v272 = v395;
  }

  if ([(SDSearchQuery *)self isInternalDevice]&& v339)
  {
    [(SDSearchQuery *)self sendTTRLogsWithSections:self->_actualSentSections];
  }

  v285 = [v272 count];
  if (v285 % 7)
  {
    v286 = v285 / 7 + 1;
  }

  else
  {
    v286 = v285 / 7;
  }

  v287 = 6;
  do
  {
    if (v286 % dword_1000A8308)
    {
      break;
    }

    v286 = v285 % v287 ? v285 / v287 + 1 : v285 / v287;
  }

  while (v287-- > 4);
  if (v285)
  {
    v289 = 0;
    goto LABEL_351;
  }

  if (self->_sendStableSections)
  {
    v289 = [(NSArray *)self->_stableSections count]!= 0;
    v286 = 1;
LABEL_351:
    v290 = [[SPXPCMessage alloc] initWithName:@"SearchResults" batchSize:v286];
    v447[0] = @"TBC";
    v377 = [NSNumber numberWithUnsignedInteger:v286];
    v448[0] = v377;
    v447[1] = @"QID";
    v291 = [NSNumber numberWithUnsignedInt:self->_externalID];
    v369 = v291;
    fbq = self->_fbq;
    if (!fbq)
    {
      fbq = &stru_100094040;
    }

    v448[1] = v291;
    v448[2] = fbq;
    v447[2] = @"FBQ";
    v447[3] = @"WFBQ";
    web_fbq = self->_web_fbq;
    if (!web_fbq)
    {
      web_fbq = &stru_100094040;
    }

    v448[3] = web_fbq;
    v447[4] = @"QDR";
    v364 = [NSNumber numberWithBool:v338];
    v448[4] = v364;
    v447[5] = @"QDP";
    v356 = [NSNumber numberWithBool:v333];
    v448[5] = v356;
    v447[6] = @"QFP";
    v350 = [NSNumber numberWithInt:a10 == 4];
    v448[6] = v350;
    v447[7] = @"QDU";
    v346 = [NSNumber numberWithBool:v337];
    v448[7] = v346;
    v447[8] = @"QDC";
    v341 = [NSNumber numberWithBool:v339];
    v448[8] = v341;
    v447[9] = @"DTH";
    v336 = [NSNumber numberWithBool:a9];
    v448[9] = v336;
    v447[10] = @"QNC";
    v294 = [NSNumber numberWithBool:v331];
    v448[10] = v294;
    v447[11] = @"QFS";
    v295 = [NSNumber numberWithBool:v289];
    v448[11] = v295;
    v447[12] = @"BT";
    v296 = [NSNumber numberWithDouble:v360->_blendingTime];
    v448[12] = v296;
    v447[13] = @"GES";
    v297 = [(SDSearchQuery *)v360 geoUserSessionEntityString];
    v298 = v297;
    if (v297)
    {
      v299 = v297;
    }

    else
    {
      v299 = &stru_100094040;
    }

    bundlesSupportingAppScoping = v360->_bundlesSupportingAppScoping;
    if (!bundlesSupportingAppScoping)
    {
      bundlesSupportingAppScoping = &__NSArray0__struct;
    }

    v448[13] = v299;
    v448[14] = bundlesSupportingAppScoping;
    v447[14] = @"SAS";
    v447[15] = @"SMIA";
    v301 = obj;
    if (!obj)
    {
      v301 = &__NSArray0__struct;
    }

    v448[15] = v301;
    v302 = [NSDictionary dictionaryWithObjects:v448 forKeys:v447 count:16];
    [v290 setInfo:v302];

    v303 = v360;
    v304 = v395;
    v398 = v395;
    v305 = v290;
    tracing_dispatch_apply();
    if (([(SDSearchQuery *)v360 cancelled]& 1) == 0)
    {
      [(SPXPCConnection *)v360->_connection sendMessage:v305];
    }

    v171 = v397;
    v172 = v359;
    v170 = v352;
  }

  else
  {
    v305 = [[SPXPCMessage alloc] initWithName:@"SearchResults"];
    v445[0] = @"QID";
    v316 = [NSNumber numberWithUnsignedInt:self->_externalID];
    v384 = v316;
    v317 = self->_fbq;
    if (!v317)
    {
      v317 = &stru_100094040;
    }

    v446[0] = v316;
    v446[1] = v317;
    v445[1] = @"FBQ";
    v445[2] = @"WFBQ";
    v318 = self->_web_fbq;
    if (!v318)
    {
      v318 = &stru_100094040;
    }

    v446[2] = v318;
    v445[3] = @"QDR";
    v378 = [NSNumber numberWithBool:v338];
    v446[3] = v378;
    v445[4] = @"QDP";
    v370 = [NSNumber numberWithBool:v333];
    v446[4] = v370;
    v445[5] = @"QFP";
    v319 = [NSNumber numberWithInt:a10 == 4];
    v446[5] = v319;
    v445[6] = @"QDU";
    v320 = [NSNumber numberWithBool:v337];
    v446[6] = v320;
    v445[7] = @"QDC";
    v321 = [NSNumber numberWithBool:v339];
    v446[7] = v321;
    v445[8] = @"QNC";
    v322 = [NSNumber numberWithBool:v331];
    v446[8] = v322;
    v445[9] = @"BT";
    v323 = [NSNumber numberWithDouble:v360->_blendingTime];
    v446[9] = v323;
    v445[10] = @"GES";
    v324 = [(SDSearchQuery *)v360 geoUserSessionEntityString];
    v325 = v324;
    if (v324)
    {
      v326 = v324;
    }

    else
    {
      v326 = &stru_100094040;
    }

    v327 = v360->_bundlesSupportingAppScoping;
    if (!v327)
    {
      v327 = &__NSArray0__struct;
    }

    v446[10] = v326;
    v446[11] = v327;
    v445[11] = @"SAS";
    v445[12] = @"SMIA";
    v328 = obj;
    if (!obj)
    {
      v328 = &__NSArray0__struct;
    }

    v446[12] = v328;
    v329 = [NSDictionary dictionaryWithObjects:v446 forKeys:v445 count:13];
    [v305 setInfo:v329];

    v303 = v360;
    if (([(SDSearchQuery *)v360 cancelled]& 1) == 0)
    {
      [(SPXPCConnection *)v360->_connection sendMessage:v305];
    }

    v171 = v397;
    v172 = v359;
    v170 = v352;
    v304 = v395;
  }

  stableSections = v303->_stableSections;
  v303->_stableSections = 0;

  v307 = [(SDSearchQuery *)v303 queryContext];
  v308 = [v307 isSearchToolClient];

  if ((v308 & 1) == 0)
  {
    v309 = [[SFClientTimingFeedback alloc] initWithEvent:@"com.apple.searchd.backend.query.end" timeInterval:0 queryId:{-[SDSearchQuery queryIdent](v303, "queryIdent")}];
    if (!v337)
    {
      v310 = +[SPFeedbackProxy sharedProxy];
      v311 = [(SDSearchQuery *)v303 queryIdent];
      v312 = [(SPXPCConnection *)v303->_connection bundleID];
      [v310 sendFeedbackType:21 feedback:v309 queryId:v311 clientID:v312];

      v304 = v395;
    }
  }

  if ([(NSMutableArray *)v303->_slowTokens count]|| [(NSMutableArray *)v303->_tokens count]|| [(NSMutableArray *)v303->_delayedStartTokens count])
  {
    v313 = 0;
  }

  else if ([(NSMutableArray *)v303->_delayedStartStores count])
  {
    v313 = 0;
  }

  else
  {
    v313 = v339;
  }

  if (v338)
  {
    [(SDSearchQuery *)v303 externalID];
    kdebug_trace();
  }

  if (v339)
  {
    [(SDSearchQuery *)v303 externalID];
    kdebug_trace();
  }

  v33 = v343;
  if (v313)
  {
    v314 = v303->_categoryToResultMapping;
    v303->_categoryToResultMapping = 0;

    [(SDSearchQuery *)v303 setServer_features:0];
    [(SDSearchQuery *)v303 setTokens:0];
    [(SDSearchQuery *)v303 setSlowTokens:0];
  }

  if (a10 == 4)
  {
    v315 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v315, OS_LOG_TYPE_DEFAULT, "Sending early priority index results", buf, 2u);
    }

    v303->_sentPriority = 1;
  }

LABEL_384:
}

- (void)sendError:(id)a3
{
  v4 = a3;
  v9 = [[SPXPCMessage alloc] initWithName:@"SearchError"];
  v5 = [NSNumber numberWithInt:self->_externalID];
  v6 = [v4 code];

  v7 = [NSNumber numberWithInteger:v6];
  v8 = [NSDictionary dictionaryWithObjectsAndKeys:v5, @"QID", v7, @"ERR", 0];
  [v9 setInfo:v8];

  if (([(SDSearchQuery *)self cancelled]& 1) == 0)
  {
    [(SPXPCConnection *)self->_connection sendMessage:v9];
  }
}

- (void)sendQueryCompleted
{
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (gSPLogDebugAsDefault)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    *buf = 67109120;
    v23 = qos_class_self();
    _os_log_impl(&_mh_execute_header, v4, v5, "QOS sendQueryCompleted 1: %d", buf, 8u);
  }

  externalID = self->_externalID;
  +[NSDate timeIntervalSinceReferenceDate];
  startTimeIntervalSinceReferenceDate = self->_startTimeIntervalSinceReferenceDate;
  SDTraceAdd();
  v8 = SPLogForSPLogCategoryDefault();
  v9 = v8;
  if (gSPLogDebugAsDefault)
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v8, v10))
  {
    v11 = qos_class_self();
    *buf = 67109120;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v9, v10, "QOS sendQueryCompleted 2: %d", buf, 8u);
  }

  v12 = SPLogForSPLogCategoryQuery();
  v13 = v12;
  if (gSPLogDebugAsDefault)
  {
    v14 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v14 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v12, v14))
  {
    v15 = self->_externalID;
    *buf = 67109120;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v13, v14, "Completed query %d", buf, 8u);
  }

  v16 = SPLogForSPLogCategoryTelemetry();
  v17 = v16;
  v18 = self->_externalID;
  if (v18 && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "spotlightLatency", " enableTelemetry=YES ", buf, 2u);
  }

  connection = self->_connection;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000156BC;
  v21[3] = &unk_1000921C8;
  v21[4] = self;
  [(SPXPCConnection *)connection barrier:v21];
  categoryToResultMapping = self->_categoryToResultMapping;
  self->_categoryToResultMapping = 0;

  [(SDSearchQuery *)self setTokens:0];
  [(SDSearchQuery *)self setSlowTokens:0];
  [(SDSearchQuery *)self setDelayedStartTokens:0];
  [(SDSearchQuery *)self setDelayedStartStores:0];
  self->_parsecCameLaterThanSRT = 0;
  self->_parsecEntityCameEarly = 0;
  self->_receivedLateParsecResults = 0;
  self->_shouldRecomputeSuggestions = 1;
  self->_sentTaggedTopHits = 0;
}

- (void)sendQueryReset
{
  [(SDSearchQuery *)self externalID];
  kdebug_trace();
  v3 = SPLogForSPLogCategoryQuery();
  v4 = v3;
  if (gSPLogDebugAsDefault)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    externalID = self->_externalID;
    v10[0] = 67109120;
    v10[1] = externalID;
    _os_log_impl(&_mh_execute_header, v4, v5, "Reset query %d", v10, 8u);
  }

  v7 = [[SPXPCMessage alloc] initWithName:@"SearchReset"];
  v8 = [NSNumber numberWithInt:self->_externalID];
  v9 = [NSDictionary dictionaryWithObject:v8 forKey:@"QID"];
  [v7 setInfo:v9];

  [(SPXPCConnection *)self->_connection sendMessage:v7];
}

- (void)sendLogValuesForDebuggingRanking:(id)a3
{
  v4 = a3;
  v5 = [[SPXPCMessage alloc] initWithName:@"DebugRanking"];
  v8[0] = @"QID";
  v6 = [NSNumber numberWithUnsignedInt:self->_externalID];
  v8[1] = @"RD";
  v9[0] = v6;
  v9[1] = v4;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v5 setInfo:v7];

  if (([(SDSearchQuery *)self cancelled]& 1) == 0)
  {
    [(SPXPCConnection *)self->_connection sendMessage:v5];
  }
}

- (id)orderedCategories:(id)a3
{
  v4 = a3;
  v19 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:v8];
        v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 domain]);
        v11 = [(SDSearchQuery *)self queryContext];
        v12 = [v11 searchDomains];
        v13 = [v12 indexOfObject:v10];

        v14 = [NSNumber numberWithUnsignedLongLong:v13];
        [v19 setObject:v14 forKey:v8];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v15 = [v19 keysSortedByValueWithOptions:1 usingComparator:&stru_100092918];

  return v15;
}

- (void)sendResultsForKeys:(id)a3 toSendSections:(id)a4
{
  v6 = a4;
  v7 = [(SDSearchQuery *)self orderedCategories:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:*(*(&v13 + 1) + 8 * v11)];
        [v6 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)prepareAndSend:(id)a3 force:(BOOL)a4 moreComing:(BOOL)a5 reason:(int)a6
{
  v8 = a4;
  v10 = a3;
  if (v8)
  {
    self->_didForceSend = 1;
  }

  if (!a5)
  {
    v22 = [(NSMutableArray *)self->_slowTokens count];
    v23 = [(NSMutableArray *)self->_delayedStartTokens count];
    v24 = [(NSMutableArray *)self->_delayedStartStores count];
    v25 = [(NSMutableArray *)self->_tokens count];
    if (&v24[v23])
    {
      v26 = 0;
    }

    else
    {
      v26 = (v22 | v25) == 0;
    }

    v27 = v26;
    if (v25)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27 ^ 1;
    }

    v29 = SPLogForSPLogCategoryQuery();
    v30 = v29;
    if (gSPLogDebugAsDefault)
    {
      v31 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v31 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v29, v31))
    {
      v32 = v10;
      v33 = v28;
      v34 = v27;
      bottomPlacedSections = self->_bottomPlacedSections;
      v36 = [(NSMutableDictionary *)self->_categoryToResultMapping allKeys];
      *buf = 138412546;
      v52 = bottomPlacedSections;
      v27 = v34;
      v28 = v33;
      v10 = v32;
      v53 = 2112;
      v54 = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "#query send bottomRankedCategories %@ from %@", buf, 0x16u);
    }

    v37 = SPLogForSPLogCategoryQuery();
    v38 = v37;
    if (gSPLogDebugAsDefault)
    {
      v39 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v39 = OS_LOG_TYPE_DEBUG;
    }

    v40 = os_log_type_enabled(v37, v39);
    if (v22)
    {
      if (v40)
      {
        slowTokens = self->_slowTokens;
        tokens = self->_tokens;
        *buf = 138412546;
        v52 = slowTokens;
        v53 = 2112;
        v54 = tokens;
        _os_log_impl(&_mh_execute_header, v38, v39, "#query still waiting for %@ and %@", buf, 0x16u);
      }

      v43 = SPLogForSPLogCategoryQuery();
      v38 = v43;
      if (gSPLogDebugAsDefault)
      {
        v44 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v44 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_46;
      }

      v45 = self->_bottomPlacedSections;
      *buf = 138412290;
      v52 = v45;
      v46 = "#query _bottomRankedCategories %@";
      v47 = v38;
      v48 = v44;
      v49 = 12;
    }

    else
    {
      if (!v40)
      {
LABEL_46:

        didForceSend = self->_didForceSend;
        LODWORD(v50) = a6;
        v19 = self;
        v20 = v10;
        v17 = v28;
        v21 = v27;
        goto LABEL_47;
      }

      *buf = 0;
      v46 = "#query No waiting stores";
      v47 = v38;
      v48 = v39;
      v49 = 2;
    }

    _os_log_impl(&_mh_execute_header, v47, v48, v46, buf, v49);
    goto LABEL_46;
  }

  if (a6 == 5)
  {
    v11 = [(NSMutableArray *)self->_slowTokens count];
    v12 = [(NSMutableArray *)self->_delayedStartTokens count];
    v13 = [(NSMutableArray *)self->_delayedStartStores count];
    v14 = [(NSMutableArray *)self->_tokens count];
    if (&v13[v12])
    {
      v15 = 0;
    }

    else
    {
      v15 = (v14 | v11) == 0;
    }

    v17 = !v15 && v14 == 0;
    didForceSend = self->_didForceSend;
    LODWORD(v50) = 5;
    v19 = self;
    v20 = v10;
    v21 = 1;
    goto LABEL_47;
  }

  if ((-[SDSearchQuery infinitePatience](self, "infinitePatience") & 1) == 0 && [v10 count])
  {
    v17 = a6 == 4;
    didForceSend = self->_didForceSend;
    LODWORD(v50) = a6;
    v19 = self;
    v20 = v10;
    v21 = 0;
LABEL_47:
    [(SDSearchQuery *)v19 sendResults:v20 reset:didForceSend partiallyComplete:v17 update:0 complete:v21 delayedTopHit:0 reason:v50];
  }
}

- (void)logPerfToAnalytics:(int)a3
{
  if (a3 > 4)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = (&off_100092AA0)[a3];
  }

  sub_100016448(self, v3, self->_startTime);
}

- (void)addMatchInfo:(_MDPlistContainer *)a3
{
  obj = self;
  objc_sync_enter(obj);
  matchInfo = obj->_matchInfo;
  if (!matchInfo)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = obj->_matchInfo;
    obj->_matchInfo = v5;

    matchInfo = obj->_matchInfo;
  }

  [(NSMutableArray *)matchInfo addObject:a3];
  objc_sync_exit(obj);
}

- (__CFArray)copyMatchInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_matchInfo copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)detailTextFromBundleIDs:(id)a3
{
  v3 = a3;
  if (SSEnableLocalDetailText())
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = v6;
    v8 = *v32;
    v9 = SPApplicationBundleIdGeneralApplication;
    v10 = SPApplicationBundleIdGeneralAppClips;
    v11 = &MDItemContentModificationDate_ptr;
    v12 = @"DOMAIN_APPLICATION";
    while (1)
    {
      v13 = 0;
      v30 = v7;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        if ([v14 isEqualToString:{v9, v29}])
        {
          v15 = v11[221];
          v16 = v12;
          goto LABEL_11;
        }

        if ([v14 isEqualToString:v10])
        {
          v15 = v11[221];
          v16 = @"DOMAIN_APP_CLIPS";
LABEL_11:
          v17 = [v15 localizedSearchStringWithIdentifier:v16];
          if (!v17)
          {
            goto LABEL_13;
          }

LABEL_12:
          [v4 addObject:v17];
          goto LABEL_13;
        }

        v18 = v9;
        v19 = v8;
        v20 = v10;
        v21 = v4;
        v22 = v5;
        v23 = v11;
        v24 = v12;
        v25 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v14 allowPlaceholder:1 error:0];
        v17 = [v25 localizedName];

        v12 = v24;
        v11 = v23;
        v5 = v22;
        v4 = v21;
        v10 = v20;
        v8 = v19;
        v9 = v18;
        v7 = v30;
        if (v17)
        {
          goto LABEL_12;
        }

LABEL_13:

        v13 = v13 + 1;
      }

      while (v7 != v13);
      v26 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v7 = v26;
      if (!v26)
      {
LABEL_18:

        v27 = [v4 componentsJoinedByString:{@", "}];

        v3 = v29;
        goto LABEL_20;
      }
    }
  }

  v27 = 0;
LABEL_20:

  return v27;
}

- (id)contactSuggestionsWithSearchString:(id)a3
{
  v27 = objc_alloc_init(NSMutableArray);
  v28 = SSContactsBundleIdentifier;
  v3 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:?];
  if (v3)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v3;
    v4 = [v3 results];
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (!v5)
    {
      goto LABEL_23;
    }

    v6 = v5;
    v7 = *v30;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v10 = SPLogForSPLogCategoryDefault();
        v11 = v10;
        if (gSPLogDebugAsDefault)
        {
          v12 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v12 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v10, v12))
        {
          v13 = [v9 title];
          v14 = [v13 text];
          *buf = 138412290;
          v34 = v14;
          _os_log_impl(&_mh_execute_header, v11, v12, "Check result %@", buf, 0xCu);
        }

        v15 = [v9 contactIdentifier];
        if (v15)
        {
          v16 = v15;
          v17 = [v9 personIdentifier];
          if (v17)
          {

LABEL_15:
            goto LABEL_16;
          }

          v18 = [v9 resultBundleId];
          v19 = [v18 isEqual:v28];

          if (v19)
          {
            v16 = [v9 lastUsedDate];
            [v16 timeIntervalSinceNow];
            if (v20 <= -40996800.0)
            {
              goto LABEL_15;
            }

            v21 = [v9 hasTextContentMatch];

            if (v21)
            {
              v22 = [(SDSearchQuery *)self queryContext];
              v16 = [SSSuggestionResultBuilder buildResultWithResult:v9 queryContext:v22];

              [v27 addObject:v16];
              goto LABEL_15;
            }
          }
        }

LABEL_16:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v23 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
      v6 = v23;
      if (!v23)
      {
LABEL_23:

        v3 = v25;
        break;
      }
    }
  }

  return v27;
}

- (BOOL)forceAboveFoldResultsWithQuery:(id)a3 topHitSection:(id)a4 sections:(id)a5
{
  v5 = a5;
  if (_os_feature_enabled_impl() && [v5 count] >= 2)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      v10 = PRSRankingAppsBundleString;
      v11 = PRSRankingAppClipsBundleString;
      v23 = PRSRankingSearchSuggestionsBundleString;
      v12 = 1;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ((v12 & 1) == 0)
          {
            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [v14 bundleIdentifier];
            if ([v15 isEqualToString:v10])
            {

LABEL_19:
              v20 = 1;
              goto LABEL_20;
            }

            v16 = [v14 bundleIdentifier];
            v17 = [v16 isEqualToString:v11];

            if (v17)
            {
              goto LABEL_19;
            }

            if (a4)
            {
              v18 = [v14 bundleIdentifier];
              v19 = [v18 isEqualToString:v23];

              if (!v19)
              {
                goto LABEL_19;
              }
            }
          }

          v12 = 0;
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v12 = 0;
        v20 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_20:

    v5 = v22;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)suggestionsWithSearchString:(id)a3 sections:(id)a4 topHitSection:(id)a5 highestLocalScore:(double)a6
{
  v88 = a3;
  v83 = a4;
  v9 = a5;
  v86 = objc_alloc_init(NSMutableArray);
  v10 = objc_alloc_init(NSMutableArray);
  v91 = objc_alloc_init(NSMutableArray);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v87 = v9;
  v11 = [v9 results];
  v12 = [v11 countByEnumeratingWithState:&v105 objects:v114 count:16];
  if (!v12)
  {
    v92 = 0;
    goto LABEL_18;
  }

  v13 = v12;
  v92 = 0;
  v14 = *v106;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v106 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v105 + 1) + 8 * i);
      v17 = [v16 entityIdentifier];

      if (v17)
      {
        v18 = [v16 entityIdentifier];
        [v10 addObject:v18];
      }

      v19 = [v16 contactIdentifier];
      if (v19)
      {
      }

      else
      {
        v20 = [v16 personIdentifier];

        if (!v20)
        {
          goto LABEL_12;
        }
      }

      v21 = [v16 title];
      v22 = [v21 text];
      v23 = SSNormalizedQueryString();

      [v91 addObject:v23];
LABEL_12:
      v24 = [v16 rankingItem];
      if (v24)
      {
        v25 = [v16 rankingItem];
        v26 = ([v25 bundleIDType] >> 8) & 1;

        v92 |= v26;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v105 objects:v114 count:16];
  }

  while (v13);
LABEL_18:

  if (_os_feature_enabled_impl())
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = v83;
    v27 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v102;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v102 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v101 + 1) + 8 * j);
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v32 = [v31 results];
          v33 = [v32 countByEnumeratingWithState:&v97 objects:v112 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v98;
            do
            {
              for (k = 0; k != v34; k = k + 1)
              {
                if (*v98 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v97 + 1) + 8 * k);
                v38 = [v37 entityIdentifier];

                if (v38)
                {
                  v39 = [v37 entityIdentifier];
                  [v10 addObject:v39];
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v97 objects:v112 count:16];
            }

            while (v34);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
      }

      while (v28);
    }
  }

  obja = [(SDSearchQuery *)self contactSuggestionsWithSearchString:v88];
  v40 = [(SSRankingManager *)self->_rankingManager rankingConfiguration];
  v41 = [v40 localResultQualityThreshold];
  v42 = v41;
  v43 = &off_100098F90;
  if (v41)
  {
    v43 = v41;
  }

  v44 = v43;

  v85 = [(SDSearchQuery *)self queryContext];
  if (SSCreateAsTypedSuggestion())
  {
    v45 = [SFSearchSuggestion alloc];
    v46 = [v45 initWithIdentifier:SSSuggestionIdentifierActualSearch suggestion:v88 query:v88 score:6 type:1.0];
    v47 = [(SDSearchQuery *)self queryContext];
    v77 = [SSSuggestionResultBuilder buildResultWithSuggestion:v46 queryContext:v47];
  }

  else
  {
    v77 = 0;
  }

  v48 = [SFSearchSuggestion alloc];
  v49 = [v48 initWithIdentifier:SSSuggestionIdentifierSearchWeb suggestion:v88 query:v88 score:14 type:1.0];
  v50 = [NSBundle bundleForClass:objc_opt_class()];
  v51 = [v50 localizedStringForKey:@"SUGGESTION_DETAIL_WEB" value:&stru_100094040 table:@"SpotlightServices"];

  v80 = v51;
  [v49 setDetailText:v51];
  v52 = [(SDSearchQuery *)self queryContext];
  v84 = [SSSuggestionResultBuilder buildResultWithSuggestion:v49 queryContext:v52];

  serverSuggestionResults = self->_serverSuggestionResults;
  if (!serverSuggestionResults)
  {
    serverSuggestionResults = &__NSArray0__struct;
  }

  v54 = serverSuggestionResults;
  localSuggestionResults = self->_localSuggestionResults;
  if (!localSuggestionResults)
  {
    localSuggestionResults = &__NSArray0__struct;
  }

  v56 = localSuggestionResults;
  v76 = +[SSBullseyeSuggestionsManager sharedSuggestionsManager];
  v111[0] = v44;
  v110[0] = @"qualityThreshold";
  v110[1] = @"prefersLocalUserTypedSuggestion";
  v57 = [NSNumber numberWithBool:[(SDSearchQuery *)self prefersLocalUserTypedSuggestion]];
  v111[1] = v57;
  v110[2] = @"suggestionsAreBlended";
  v58 = [NSNumber numberWithBool:self->_suggestionsAreBlended];
  v111[2] = v58;
  v110[3] = @"localFilteringScore";
  [NSNumber numberWithDouble:a6];
  v59 = v78 = v44;
  v111[3] = v59;
  v110[4] = @"ForceAboveFoldResults";
  v60 = v83;
  v61 = [NSNumber numberWithBool:[(SDSearchQuery *)self forceAboveFoldResultsWithQuery:v88 topHitSection:v87 sections:v83]];
  v111[4] = v61;
  v62 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:5];
  v79 = v56;
  v82 = v54;
  v63 = [v76 orderedSuggestionsWithQueryContext:v85 filters:v86 entityFilters:v10 contactFilters:v91 userSuggestion:v77 userWebSuggestion:v84 shortcutSuggestionResults:&__NSArray0__struct actionSuggestionResults:&__NSArray0__struct contactSuggestionResults:obja serverSuggestionResults:v54 localSuggestionResults:v56 options:v62];

  v64 = v63;
  if ((v92 & 1) != 0 && [v63 count] >= 3 && objc_msgSend(v83, "count") >= 3)
  {
    v65 = [v83 objectAtIndexedSubscript:2];
    v66 = [v65 bundleIdentifier];
    v67 = [v66 isEqualToString:PRSRankingAppsBundleString];

    if (v67)
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v68 = [v83 objectAtIndexedSubscript:2];
      v69 = [v68 results];

      v70 = [v69 countByEnumeratingWithState:&v93 objects:v109 count:16];
      if (v70)
      {
        v71 = v70;
        v72 = *v94;
        while (2)
        {
          for (m = 0; m != v71; m = m + 1)
          {
            if (*v94 != v72)
            {
              objc_enumerationMutation(v69);
            }

            if (([SSTopHitNominationManager passLikelihoodForTopHitCandidate:*(*(&v93 + 1) + 8 * m)]& 1) != 0)
            {
              v74 = [v64 subarrayWithRange:{0, 2}];

              v60 = v83;
              goto LABEL_59;
            }
          }

          v71 = [v69 countByEnumeratingWithState:&v93 objects:v109 count:16];
          if (v71)
          {
            continue;
          }

          break;
        }
      }

      v60 = v83;
    }
  }

  v74 = v64;
LABEL_59:

  return v74;
}

- (void)addSuggestionsToSectionsForSending:(id)a3 searchString:(id)a4 updatedSections:(BOOL)a5 queryKind:(unint64_t)a6
{
  if (a6 - 1 <= 1)
  {
    v8 = a4;
    v9 = a3;
    v10 = [SFSearchSuggestion alloc];
    v11 = [v10 initWithIdentifier:SSSuggestionIdentifierActualSearch suggestion:v8 query:v8 score:6 type:1.0];

    v12 = [(SDSearchQuery *)self queryContext];
    v13 = [SSSuggestionResultBuilder buildResultWithSuggestion:v11 queryContext:v12];

    v14 = objc_opt_new();
    suggestionsSection = self->_suggestionsSection;
    self->_suggestionsSection = v14;

    [(SFMutableResultSection *)self->_suggestionsSection setBundleIdentifier:SSSectionIdentifierSuggestions];
    v17 = v13;
    v16 = [NSArray arrayWithObjects:&v17 count:1];
    [(SFMutableResultSection *)self->_suggestionsSection setResults:v16];

    [v9 addObject:self->_suggestionsSection];
  }
}

- (void)addTopHitSectionIfNecessaryToSectionsForSending:(id)a3 updatedSections:(BOOL)a4 isScopedSearch:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  if (!a5)
  {
    v9 = SSEnableSpotlightTopHitPersonalizedRanking();
    v10 = &selRef_setSearchEntities_;
    v73 = self;
    if (!v6 || self->_didSendTopHits || [(SFMutableResultSection *)self->_topHitSection resultsCount])
    {
      if (self->_didSendResults)
      {
        v11 = SPLogForSPLogCategoryDefault();
        v12 = gSPLogInfoAsDefault;
        if (os_log_type_enabled(v11, ((gSPLogInfoAsDefault & 1) == 0)))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, ((v12 & 1) == 0), "Skipping current top hits nomination due to previous dispatch.", buf, 2u);
        }

        v10 = &selRef_setSearchEntities_;
        if (v9)
        {
          v71 = v8;
          v13 = [QUData alloc];
          v14 = [(SDSearchQuery *)self queryContext];
          v72 = [v13 initWithQueryContext:v14];

          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          obj = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
          v15 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
          if (!v15)
          {
            goto LABEL_21;
          }

          v16 = v15;
          v17 = *v77;
          while (1)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v77 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v76 + 1) + 8 * i);
              if ([v19 resultsCount])
              {
                v20 = [v19 resultSet];
                v21 = [v20 objectAtIndexedSubscript:0];
                v22 = [v21 rankingItem];
                if (v22)
                {
                  v23 = v22;
                  v24 = [v19 resultSet];
                  v25 = [v24 objectAtIndexedSubscript:0];
                  v26 = [v25 rankingItem];
                  [v26 likelihood];
                  v28 = v27;

                  if (v28 >= 2.22044605e-16)
                  {
                    continue;
                  }

                  rankingManager = v73->_rankingManager;
                  v20 = [(SDSearchQuery *)v73 queryContext];
                  [v20 currentTime];
                  v31 = v30;
                  v32 = [(SDSearchQuery *)v73 queryIdent];
                  v21 = [(SDSearchQuery *)v73 itemRanker];
                  LOBYTE(v65) = 0;
                  [(SSRankingManager *)rankingManager calculateLikelihoodAndPriorForSection:v19 currentTime:0 shortcutResult:v32 queryId:v21 ranker:0 nominateLocalTopHit:v72 qu:v31 isSearchToolClient:v65];
                }
              }
            }

            v16 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
            if (!v16)
            {
LABEL_21:

              goto LABEL_22;
            }
          }
        }
      }
    }

    else
    {
      v71 = v8;
      [NSBundle bundleForClass:objc_opt_class()];
      v40 = v39 = self;
      v72 = [v40 localizedStringForKey:@"DOMAIN_TOPHIT" value:&stru_100094040 table:@"Search"];

      if (qword_1000A82F0 == 3)
      {
        v41 = 6;
      }

      else
      {
        v41 = 4;
      }

      if (v9)
      {
        obja = v41;
        v42 = [QUData alloc];
        v43 = [(SDSearchQuery *)v39 queryContext];
        v70 = [v42 initWithQueryContext:v43];

        v68 = v39->_rankingManager;
        v69 = [(NSMutableDictionary *)v39->_categoryToResultMapping allValues];
        v44 = [(SDSearchQuery *)v39 itemRanker];
        v67 = [(SDSearchQuery *)v39 isBullseyeNonCommittedSearch];
        v45 = [(SDSearchQuery *)v39 isBullseyeCommittedSearch];
        v46 = v39->_parsecEnabled || v39->_parsecSettingEnabled;
        v53 = [(SDSearchQuery *)v39 queryIdent];
        v54 = [(SDSearchQuery *)v39 queryContext];
        v55 = [v54 isSearchToolClient];
        v56 = [(SDSearchQuery *)v39 queryContext];
        [v56 currentTime];
        LOBYTE(v66) = v55;
        BYTE1(v65) = v46 & 1;
        LOBYTE(v65) = v45;
        v57 = [SSRankingManager nominateLocalTopHitsFromSections:v68 withItemRanker:"nominateLocalTopHitsFromSections:withItemRanker:sectionHeader:maxInitiallyVisibleResults:shortcutResult:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:parsecEnabled:maxNumAppsInTopHitSection:queryId:isSearchToolClient:qu:currentTime:" sectionHeader:v69 maxInitiallyVisibleResults:v44 shortcutResult:v72 isBullseyeNonCommittedSearch:1 isBullseyeCommittedSearch:0 parsecEnabled:v67 maxNumAppsInTopHitSection:v65 queryId:obja isSearchToolClient:v53 qu:v66 currentTime:v70];
        topHitSection = v39->_topHitSection;
        v39->_topHitSection = v57;
      }

      else
      {
        v47 = v39->_rankingManager;
        v48 = [(NSMutableDictionary *)v39->_categoryToResultMapping allValues];
        v49 = [(SDSearchQuery *)v39 itemRanker];
        v50 = [(SDSearchQuery *)v39 isBullseyeNonCommittedSearch];
        v51 = [(SDSearchQuery *)v39 isBullseyeCommittedSearch];
        v52 = v39->_parsecEnabled || v39->_parsecSettingEnabled;
        LOBYTE(v65) = v52 & 1;
        v59 = [(SSRankingManager *)v47 makeTopHitSectionUsingSections:v48 withItemRanker:v49 sectionHeader:v72 shortcutResult:0 isBullseyeNonCommittedSearch:v50 isBullseyeCommittedSearch:v51 parsecEnabled:v65 maxNumAppsInTopHitSection:v41];
        v60 = v39->_topHitSection;
        v39->_topHitSection = v59;

        v61 = SPLogForSPLogCategoryDefault();
        v62 = v61;
        if (gSPLogDebugAsDefault)
        {
          v63 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v63 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v61, v63))
        {
          v64 = [(SFMutableResultSection *)v73->_topHitSection resultsCount];
          *buf = 134217984;
          v82 = v64;
          _os_log_impl(&_mh_execute_header, v62, v63, "Top hit section count: %lu  Allow multiple apps: YES", buf, 0xCu);
        }
      }

LABEL_22:
      v8 = v71;
      v10 = &selRef_setSearchEntities_;

      self = v73;
    }

    v33 = *(v10 + 858);
    v34 = [*&self->SPSearchQuery_opaque[v33] results];
    if ([v34 count])
    {
      v35 = 0;
      do
      {
        v36 = [v34 objectAtIndex:v35];
        v37 = [v36 rankingItem];
        [v37 setBundleIDType:{objc_msgSend(v37, "bundleIDType") | 0x8000}];

        ++v35;
      }

      while (v35 < [v34 count]);
    }

    v38 = [(SDSearchQuery *)v73 topHitsReadyToSend:*&v73->SPSearchQuery_opaque[v33]];
    [(SDSearchQuery *)v73 internalDebug];
    if (v38)
    {
      [v8 insertObject:*&v73->SPSearchQuery_opaque[v33] atIndex:0];
      v73->_didSendTopHits = 1;
    }
  }
}

- (void)storeWillComplete:(id)a3
{
  v4 = a3;
  v5 = SPLogForSPLogCategoryQuery();
  v6 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v5, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, ((v6 & 1) == 0), "storeWillComplete %@", &v11, 0xCu);
  }

  self->_timeOut = self->_timeOut * 1.5;
  if (self->_timer)
  {
    if (![(NSMutableArray *)self->_tokens count])
    {
      v7 = CFAbsoluteTimeGetCurrent() - self->_storeStartTime;
      timeOut = self->_timeOut;
      if (v7 < timeOut * 1.5)
      {
        timer = self->_timer;
        v10 = dispatch_time(0, ((timeOut - v7) * 1000000000.0));
        dispatch_source_set_timer(timer, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
      }
    }
  }
}

- (void)sendCompletions:(id)a3
{
  v4 = a3;
  v5 = [[SPXPCMessage alloc] initWithName:@"LocalSuggestions"];
  v21 = @"QID";
  v6 = [NSNumber numberWithUnsignedInt:self->_externalID];
  v22 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [v5 setInfo:v7];

  v8 = SPLogForSPLogCategoryDefault();
  v9 = v8;
  if (gSPLogDebugAsDefault)
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v8, v10))
  {
    v19 = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v9, v10, "Send completions %@", &v19, 0xCu);
  }

  v11 = SPLogForSPLogCategoryDefault();
  v12 = v11;
  if (gSPLogDebugAsDefault)
  {
    v13 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v13 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v11, v13))
  {
    v14 = qos_class_self();
    v19 = 67109120;
    LODWORD(v20) = v14;
    _os_log_impl(&_mh_execute_header, v12, v13, "QOS sendQueryCompleted 1: %d", &v19, 8u);
  }

  [v5 setRootObject:v4];
  v15 = SPLogForSPLogCategoryDefault();
  v16 = v15;
  if (gSPLogDebugAsDefault)
  {
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v17 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v15, v17))
  {
    v18 = qos_class_self();
    v19 = 67109120;
    LODWORD(v20) = v18;
    _os_log_impl(&_mh_execute_header, v16, v17, "QOS sendQueryCompleted 2: %d", &v19, 8u);
  }

  if (([(SDSearchQuery *)self cancelled]& 1) == 0)
  {
    [(SPXPCConnection *)self->_connection sendMessage:v5];
  }
}

- (BOOL)storeSearchProgress:(id)a3 withSections:(id)a4 suggestionResults:(id)a5
{
  v8 = a3;
  v44 = a4;
  v43 = a5;
  v45 = v8;
  if (v8)
  {
    v9 = SPLogForSPLogCategoryQuery();
    v10 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v9, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      v11 = *&self->SPSearchQuery_opaque[OBJC_IVAR___SPSearchQuery__searchString];
      *buf = 138412802;
      v58 = v11;
      v59 = 2112;
      v60 = v45;
      v61 = 2048;
      v62 = [v44 count];
      _os_log_impl(&_mh_execute_header, v9, ((v10 & 1) == 0), "storeSearchProgress, query:%@, token:%@, sectionCount:%ld", buf, 0x20u);
    }

    if (![v45 type])
    {
      self->_didReceiveCoreSpotlightProgress = 1;
      objc_storeStrong(&self->_localSuggestionResults, a5);
    }

    v42 = [v45 store];
    if (objc_opt_respondsToSelector())
    {
      v12 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v38 = [(SDSearchQuery *)self queryContext];
        v39 = [v38 searchString];
        v40 = [v45 rankingInfo];
        *buf = 138412802;
        v58 = v39;
        v59 = 2112;
        v60 = v42;
        v61 = 2112;
        v62 = v40;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "query %@: Store %@ got new ranking_info: %@", buf, 0x20u);
      }

      rankingManager = self->_rankingManager;
      v14 = [v45 rankingInfo];
      [(SSRankingManager *)rankingManager updateWithNewRankingInfo:v14];
    }

    v41 = self->_categoryToResultMapping;
    objc_sync_enter(v41);
    v15 = [(SDSearchQuery *)self queryIdent];
    v16 = [(SDSearchQuery *)self queryContext];
    v17 = [v16 searchString];
    [SSRankingUtilities logSections:v44 message:@"L1 progress" queryId:v15 query:v17];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v44;
    v18 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v18)
    {
      v19 = *v52;
      v48 = SSPeopleBundleIdentifier;
      v46 = SSSectionIdentifierPeopleSuggestions;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v52 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v51 + 1) + 8 * i);
          if ([v21 resultsCount])
          {
            memset(v50, 0, sizeof(v50));
            v22 = [v21 results];
            if ([v22 countByEnumeratingWithState:v50 objects:v55 count:16])
            {
              v23 = **(&v50[0] + 1);
              v24 = [**(&v50[0] + 1) personIdentifier];
              if (v24)
              {
                v25 = [v23 resultBundleId];
                if ([v25 isEqual:v48])
                {

                  goto LABEL_21;
                }

                v26 = [v23 resultBundleId];
                v27 = [v26 isEqual:v46];

                if (v27)
                {
LABEL_21:
                  [v21 setBundleIdentifier:v48];
                }
              }
            }

            categoryToResultMapping = self->_categoryToResultMapping;
            v29 = [v21 bundleIdentifier];
            v30 = [(NSMutableDictionary *)categoryToResultMapping objectForKeyedSubscript:v29];

            if (v30)
            {
              [(SDSearchQuery *)self deDuplicateSection:v21 againstSection:v30];
              v31 = [v21 results];
              [v30 addResultsFromArray:v31];

              v32 = [v21 bundleIdentifier];
              v33 = [v32 isEqualToString:@"com.apple.application"];

              if (v33)
              {
                [v30 sortRange:0 options:objc_msgSend(v30 usingComparator:{"resultsCount"), 16, &stru_1000929B0}];
              }
            }

            else
            {
              v34 = self->_categoryToResultMapping;
              v35 = [v21 bundleIdentifier];
              v36 = v35;
              if (!v35)
              {
                v47 = [v21 title];
                v36 = v47;
              }

              [(NSMutableDictionary *)v34 setObject:v21 forKeyedSubscript:v36];
              if (!v35)
              {
              }

              [(NSMutableOrderedSet *)self->_sectionOrderByInsertion addObject:v21];
            }

            continue;
          }
        }

        v18 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v18);
    }

    objc_sync_exit(v41);
    [(SDSearchQuery *)self sendFinishedDomains:4];
  }

  return 0;
}

- (BOOL)storeCompletedSearch:(id)a3 withSections:(id)a4 suggestionResults:(id)a5
{
  v8 = a3;
  obj = a4;
  v183 = a5;
  v9 = si_tracing_current_span();
  v10 = *(v9 + 16);
  v228 = *v9;
  v229 = v10;
  v230 = *(v9 + 32);
  v11 = *v9;
  spanid = si_tracing_calc_next_spanid();
  v13 = *(v9 + 8);
  v14 = *(v9 + 24);
  *v9 = v11;
  *(v9 + 8) = spanid;
  *(v9 + 16) = v13;
  *(v9 + 28) = 102;
  *(v9 + 32) = "[SDSearchQuery storeCompletedSearch:withSections:suggestionResults:]";
  si_tracing_log_span_begin();
  v185 = v9;
  v186 = v8;
  if (!v8)
  {
    goto LABEL_188;
  }

  v15 = SPLogForSPLogCategoryQuery();
  v197 = self;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *&self->SPSearchQuery_opaque[OBJC_IVAR___SPSearchQuery__searchString];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 length];
      if (v18 > 4)
      {
        v20 = [v17 substringToIndex:3];
        v21 = [v17 substringFromIndex:v18 - 1];
        v19 = [NSString stringWithFormat:@"%@...%@<%lu chars>", v20, v21, v18];
      }

      else
      {
        v19 = v17;
      }
    }

    else
    {
      v19 = 0;
    }

    v22 = v19;
    *buf = 138412802;
    v232 = v22;
    v233 = 2112;
    v234 = *&v186;
    v235 = 2048;
    v236 = [obj count];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "storeCompletedSearch, query:%@, token:%@, sectionCount:%ld", buf, 0x20u);
  }

  objc_opt_class();
  v23 = v186;
  v24 = v197;
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v25 = [v186 fbq];
    fbq = v197->_fbq;
    v197->_fbq = v25;

    v27 = [v186 web_fbq];
    web_fbq = v197->_web_fbq;
    v197->_web_fbq = v27;

    v29 = [v186 server_features];
    server_features = v197->_server_features;
    v197->_server_features = v29;

    v197->_suggestionsAreBlended = [v186 suggestionsAreBlended];
    v31 = [v186 querySuggestionResults];
    serverSuggestionResults = v197->_serverSuggestionResults;
    v197->_serverSuggestionResults = v31;

    v23 = v186;
    v24 = v197;
  }

  else
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  if (![v23 type])
  {
    objc_storeStrong(&v24->_localSuggestionResults, a5);
    v23 = v186;
    v24 = v197;
  }

  [v23 store];
  v184 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  externalID = v24->_externalID;
  +[NSDate timeIntervalSinceReferenceDate];
  startTimeIntervalSinceReferenceDate = v24->_startTimeIntervalSinceReferenceDate;
  v35 = [objc_opt_class() description];
  SDTraceAdd();

  v36 = v197;
  if (objc_opt_respondsToSelector())
  {
    v37 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v175 = [(SDSearchQuery *)v197 queryContext];
      v176 = [v175 searchString];
      v177 = [v186 rankingInfo];
      *buf = 138412802;
      v232 = v176;
      v233 = 2112;
      v234 = v184;
      v235 = 2112;
      v236 = v177;
      _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "query %@: Store %@ got new ranking_info: %@", buf, 0x20u);
    }

    rankingManager = v197->_rankingManager;
    v39 = [v186 rankingInfo];
    [(SSRankingManager *)rankingManager updateWithNewRankingInfo:v39];

    v36 = v197;
  }

  v180 = v36[28];
  objc_sync_enter(v180);
  v40 = [v36 queryIdent];
  v41 = [v36 queryContext];
  v42 = [v41 searchString];
  [SSRankingUtilities logSections:obj message:@"L1 complete" queryId:v40 query:v42];

  v43 = SSEnableSpotlightTopHitPersonalizedRanking();
  v194 = v43;
  if (v43)
  {
    v44 = [QUData alloc];
    v45 = [(SDSearchQuery *)v197 queryContext];
    v187 = [v44 initWithQueryContext:v45];

    v43 = v194;
  }

  else
  {
    v187 = 0;
  }

  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  obj = obj;
  v46 = [obj countByEnumeratingWithState:&v224 objects:v246 count:16];
  if (v46)
  {
    v196 = *v225;
    v192 = SSPeopleBundleIdentifier;
    v188 = SSSectionIdentifierPeopleSuggestions;
    do
    {
      for (i = 0; i != v46; i = i + 1)
      {
        if (*v225 != v196)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v224 + 1) + 8 * i);
        if ([v48 resultsCount])
        {
          if (v43)
          {
            v49 = [v48 resultSet];
            v50 = [v49 objectAtIndexedSubscript:0];
            v51 = [v50 rankingItem];
            if (!v51)
            {
              goto LABEL_31;
            }

            v52 = [v48 resultSet];
            v53 = [v52 objectAtIndexedSubscript:0];
            v54 = [v53 rankingItem];
            [v54 likelihood];
            v56 = v55 < 2.22044605e-16;

            if (v56)
            {
              v57 = v197->_rankingManager;
              v49 = [(SDSearchQuery *)v197 queryContext];
              [v49 currentTime];
              v59 = v58;
              v50 = [(SDSearchQuery *)v197 queryContext];
              v60 = [v50 queryIdent];
              v61 = [(SDSearchQuery *)v197 itemRanker];
              LOBYTE(v178) = 0;
              [(SSRankingManager *)v57 calculateLikelihoodAndPriorForSection:v48 currentTime:0 shortcutResult:v60 queryId:v61 ranker:0 nominateLocalTopHit:v187 qu:v59 isSearchToolClient:v178];

LABEL_31:
            }
          }

          memset(v223, 0, sizeof(v223));
          v62 = [v48 results];
          if ([v62 countByEnumeratingWithState:v223 objects:v245 count:16])
          {
            v63 = **(&v223[0] + 1);
            v64 = [**(&v223[0] + 1) personIdentifier];
            if (v64)
            {
              v65 = [v63 resultBundleId];
              if ([v65 isEqual:v192])
              {

                goto LABEL_37;
              }

              v66 = [v63 resultBundleId];
              v67 = [v66 isEqual:v188];

              if (v67)
              {
LABEL_37:
                [v48 setBundleIdentifier:v192];
              }
            }
          }

          categoryToResultMapping = v197->_categoryToResultMapping;
          v69 = [v48 bundleIdentifier];
          v70 = [(NSMutableDictionary *)categoryToResultMapping objectForKeyedSubscript:v69];

          if (v70)
          {
            [(SDSearchQuery *)v197 deDuplicateSection:v48 againstSection:v70];
            v71 = [v48 results];
            [v70 addResultsFromArray:v71];

            v72 = [v48 bundleIdentifier];
            v73 = [v72 isEqualToString:@"com.apple.application"];

            if ((v73 & (isKindOfClass ^ 1)) != 0)
            {
              [v70 sortRange:0 options:objc_msgSend(v70 usingComparator:{"resultsCount"), 16, &stru_1000929D0}];
            }
          }

          else
          {
            v74 = v197->_categoryToResultMapping;
            v75 = [v48 bundleIdentifier];
            v76 = v75;
            if (!v75)
            {
              v190 = [v48 title];
              v76 = v190;
            }

            [(NSMutableDictionary *)v74 setObject:v48 forKeyedSubscript:v76];
            if (!v75)
            {
            }

            [(NSMutableOrderedSet *)v197->_sectionOrderByInsertion addObject:v48];
          }

          v43 = v194;
          continue;
        }
      }

      v46 = [obj countByEnumeratingWithState:&v224 objects:v246 count:16];
    }

    while (v46);
  }

  objc_sync_exit(v180);
  v191 = [(NSMutableArray *)v197->_delayedStartTokens containsObject:v186];
  v77 = v197;
  objc_sync_enter(v77);
  v77->_shouldRecomputeSuggestions = 1;
  v78 = SPLogForSPLogCategoryQuery();
  v79 = v78;
  if (gSPLogDebugAsDefault)
  {
    v80 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v80 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v78, v80))
  {
    *buf = 138412290;
    v232 = *&v184;
    _os_log_impl(&_mh_execute_header, v79, v80, "Completed search for store %@", buf, 0xCu);
  }

  [(NSMutableArray *)v77->_tokens removeObject:v186];
  [(NSMutableArray *)v77->_slowTokens removeObject:v186];
  [(NSMutableArray *)v197->_delayedStartTokens removeObject:v186];
  [(NSMutableArray *)v77->_finishedTokens addObject:v186];
  v81 = SPLogForSPLogCategoryQuery();
  v82 = v81;
  if (gSPLogDebugAsDefault)
  {
    v83 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v83 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v81, v83))
  {
    tokens = v77->_tokens;
    slowTokens = v77->_slowTokens;
    *buf = 138412546;
    v232 = tokens;
    v233 = 2112;
    v234 = *&slowTokens;
    _os_log_impl(&_mh_execute_header, v82, v83, "Remaining stores %@ %@", buf, 0x16u);
  }

  *(&v189 + 1) = [(NSMutableArray *)v77->_slowTokens count];
  v86 = v197;
  v181 = [(NSMutableArray *)v197->_delayedStartTokens count];
  v179 = [(NSMutableArray *)v77->_delayedStartStores count];
  v87 = [(NSMutableArray *)v77->_tokens count];
  *&v189 = v87;
  if (__PAIR128__(*(&v189 + 1), v87) == 0 && [(NSMutableArray *)v77->_delayedStartStores count])
  {
    v221 = 0u;
    v222 = 0u;
    v219 = 0u;
    v220 = 0u;
    v88 = v77->_delayedStartStores;
    v89 = [(NSMutableArray *)v88 countByEnumeratingWithState:&v219 objects:v244 count:16];
    if (v89)
    {
      v90 = *v220;
      do
      {
        for (j = 0; j != v89; j = j + 1)
        {
          if (*v220 != v90)
          {
            objc_enumerationMutation(v88);
          }

          v92 = [*(*(&v219 + 1) + 8 * j) performQuery:v77];
          if (v92)
          {
            [(NSMutableArray *)v197->_delayedStartTokens addObject:v92];
          }
        }

        v89 = [(NSMutableArray *)v88 countByEnumeratingWithState:&v219 objects:v244 count:16];
      }

      while (v89);
    }

    [(NSMutableArray *)v77->_delayedStartStores removeAllObjects];
    v86 = v197;
  }

  if ([(NSMutableArray *)v77->_slowTokens count])
  {
    v193 = 0;
  }

  else
  {
    v193 = [(NSMutableArray *)v77->_tokens count]== 0;
  }

  if (v191)
  {
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    obj = obj;
    v93 = 0;
    v94 = [obj countByEnumeratingWithState:&v215 objects:v243 count:16];
    if (v94)
    {
      v95 = *v216;
      do
      {
        for (k = 0; k != v94; k = k + 1)
        {
          if (*v216 != v95)
          {
            objc_enumerationMutation(obj);
          }

          v97 = *(*(&v215 + 1) + 8 * k);
          v211 = 0u;
          v212 = 0u;
          v213 = 0u;
          v214 = 0u;
          v98 = [v97 results];
          v99 = [v98 countByEnumeratingWithState:&v211 objects:v242 count:16];
          if (v99)
          {
            v100 = *v212;
            while (2)
            {
              for (m = 0; m != v99; m = m + 1)
              {
                if (*v212 != v100)
                {
                  objc_enumerationMutation(v98);
                }

                if ([*(*(&v211 + 1) + 8 * m) topHit] == 2)
                {
                  v93 = 1;
                  goto LABEL_90;
                }
              }

              v99 = [v98 countByEnumeratingWithState:&v211 objects:v242 count:16];
              if (v99)
              {
                continue;
              }

              break;
            }
          }

LABEL_90:
        }

        v94 = [obj countByEnumeratingWithState:&v215 objects:v243 count:16];
      }

      while (v94);
    }

    v77->_shouldRecomputeSuggestions = 0;
    v86 = v197;
    if (([(SDSearchQuery *)v77 cancelled]& 1) == 0)
    {
      if ([(NSMutableArray *)v77->_bottomPlacedSections count])
      {
        v102 = [obj arrayByAddingObjectsFromArray:v77->_bottomPlacedSections];

        obj = v102;
        v86 = v197;
      }

      if ([v186 type] == 4)
      {
        [obj count];
      }

      if (&v179[v181])
      {
        v121 = 0;
      }

      else
      {
        v121 = v189 == 0;
      }

      v122 = v121;
      HIDWORD(v178) = 2;
      LOBYTE(v178) = v93 & 1;
      [SDSearchQuery sendResults:v77 reset:"sendResults:reset:partiallyComplete:update:complete:unchanged:delayedTopHit:reason:" partiallyComplete:obj update:0 complete:0 unchanged:v122 ^ 1u delayedTopHit:v178 reason:?];
    }

    goto LABEL_134;
  }

  v103 = v77->_didForceSend || !v193;
  if (!v103)
  {
    if (v77->_parsecEntityCameEarly)
    {
      timer = v77->_timer;
      if (timer)
      {
        dispatch_source_cancel(timer);
        dispatch_source_set_event_handler(v77->_timer, 0);
        v106 = v77->_timer;
        v77->_timer = 0;

        v104 = 0;
        v86 = v197;
      }

      else
      {
        v104 = 0;
      }

      goto LABEL_133;
    }

    if (!v77->_parsecCameLaterThanSRT)
    {
      v123 = v77->_timer;
      if (v123)
      {
        dispatch_source_cancel(v123);
        dispatch_source_set_event_handler(v77->_timer, 0);
        v124 = v77->_timer;
        v77->_timer = 0;

        v86 = v197;
      }

      [(SDSearchQuery *)v77 sendFinishedDomains:0];
      goto LABEL_134;
    }

LABEL_107:
    v107 = objc_autoreleasePoolPush();
    v77->_didSendResults = 0;
    v77->_sendStableSections = 1;
    v108 = [(NSArray *)v77->_actualSentSections arrayByAddingObjectsFromArray:obj];
    stableSections = v77->_stableSections;
    v77->_stableSections = v108;

    v110 = objc_opt_new();
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    obj = obj;
    v111 = [obj countByEnumeratingWithState:&v207 objects:v241 count:16];
    if (v111)
    {
      v112 = *v208;
      do
      {
        for (n = 0; n != v111; n = n + 1)
        {
          if (*v208 != v112)
          {
            objc_enumerationMutation(obj);
          }

          v114 = *(*(&v207 + 1) + 8 * n);
          if (v114)
          {
            v115 = [v114 results];
            [v110 addObjectsFromArray:v115];
          }
        }

        v111 = [obj countByEnumeratingWithState:&v207 objects:v241 count:16];
      }

      while (v111);
    }

    if ([v110 count])
    {
      v77->_receivedLateParsecResults = 1;
      v116 = [[SFResultsReceivedAfterTimeoutFeedback alloc] initWithResults:v110];
      v117 = +[SPFeedbackProxy sharedProxy];
      v118 = [(SDSearchQuery *)v77 queryIdent];
      v119 = [(SPXPCConnection *)v77->_connection bundleID];
      [v117 sendFeedbackType:14 feedback:v116 queryId:v118 clientID:v119];
    }

    if (SSDisplayLateServerSuggestions())
    {
      v120 = [(NSArray *)v77->_serverSuggestionResults count]!= 0;
    }

    else
    {
      v120 = 0;
    }

    v77->_shouldRecomputeSuggestions = v120;
    [(SDSearchQuery *)v77 sendFinishedDomains:3];

    objc_autoreleasePoolPop(v107);
    v86 = v197;
    goto LABEL_134;
  }

  if (v77->_parsecCameLaterThanSRT)
  {
    goto LABEL_107;
  }

  if ((isKindOfClass & v77->_isEntitySearch & 1) == 0 || ![(NSMutableArray *)v77->_tokens count]|| [(NSMutableArray *)v77->_slowTokens count])
  {
    goto LABEL_134;
  }

  v77->_parsecEntityCameEarly = 1;
  v104 = 5;
LABEL_133:
  [(SDSearchQuery *)v77 sendFinishedDomains:!v103 reason:v104];
LABEL_134:
  if (v193)
  {
    v125 = [(NSMutableArray *)v86->_delayedStartTokens count];
    if (!([(NSMutableArray *)v77->_delayedStartStores count]+ v125) && !v77->_sentCompleted)
    {
      [(SDSearchQuery *)v77 sendQueryCompleted];
      bottomPlacedSections = v77->_bottomPlacedSections;
      v77->_bottomPlacedSections = 0;

      v77->_sentCompleted = 1;
    }
  }

  objc_sync_exit(v77);

  if (![(NSMutableArray *)v77->_slowTokens count]&& ![(NSMutableArray *)v77->_tokens count])
  {
    v127 = [[SFClientTimingFeedback alloc] initWithEvent:@"com.apple.searchd.backend.stores.end" timeInterval:0 queryId:{-[SDSearchQuery queryIdent](v77, "queryIdent")}];
    v128 = +[SPFeedbackProxy sharedProxy];
    v129 = [(SDSearchQuery *)v77 queryIdent];
    v130 = [(SPXPCConnection *)v77->_connection bundleID];
    [v128 sendFeedbackType:21 feedback:v127 queryId:v129 clientID:v130];
  }

  if (![(NSMutableArray *)v77->_slowTokens count]|| [(NSMutableArray *)v77->_tokens count]|| (v77->_timer != 0) | v191 & 1)
  {
    v131 = CFAbsoluteTimeGetCurrent() - v77->_storeStartTime;
    if ([(NSMutableArray *)v77->_tokens count])
    {
      v132 = SPLogForSPLogCategoryDefault();
      v133 = v132;
      if (gSPLogDebugAsDefault)
      {
        v134 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v134 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v132, v134))
      {
        v135 = v77->_tokens;
        *buf = 138412546;
        v232 = v135;
        v233 = 2048;
        v234 = v131;
        _os_log_impl(&_mh_execute_header, v133, v134, "Not waiting on parsec t:%@ (%f)", buf, 0x16u);
      }
    }

    else
    {
      v136 = SPLogForSPLogCategoryDefault();
      v133 = v136;
      if (gSPLogDebugAsDefault)
      {
        v137 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v137 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v136, v137))
      {
        v138 = [(NSMutableArray *)v77->_slowTokens count];
        v139 = COERCE_DOUBLE([(NSMutableArray *)v77->_tokens count]);
        v140 = v77->_timer;
        *buf = 134219008;
        v232 = v138;
        v233 = 2048;
        v234 = v139;
        v235 = 2048;
        v236 = v140;
        v237 = 1024;
        v238 = v191;
        v239 = 2048;
        v240 = v131;
        _os_log_impl(&_mh_execute_header, v133, v137, "Not waiting on parsec st:%ld t:%ld ti:%p d:%d (%f)", buf, 0x30u);
      }
    }
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v142 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "No more fast data stores, waiting for parsec", buf, 2u);
    }

    objc_initWeak(buf, v77);
    v143 = *(v185 + 16);
    v204 = *v185;
    v205 = v143;
    v206 = *(v185 + 32);
    v202[0] = _NSConcreteStackBlock;
    v202[1] = 3221225472;
    v202[2] = sub_10001BCB0;
    v202[3] = &unk_100092A38;
    objc_copyWeak(&v203, buf);
    v202[4] = v77;
    v144 = objc_retainBlock(v202);
    v145 = Current - v77->_storeStartTime;
    if (v145 >= v77->_timeOut)
    {
      v162 = SPLogForSPLogCategoryDefault();
      v163 = v162;
      if (gSPLogDebugAsDefault)
      {
        v164 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v164 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v162, v164))
      {
        *v201 = 0;
        _os_log_impl(&_mh_execute_header, v163, v164, "No more fast data stores, send", v201, 2u);
      }

      v165 = v77->_timer;
      if (v165)
      {
        dispatch_source_cancel(v165);
        dispatch_source_set_event_handler(v77->_timer, 0);
        v166 = v77->_timer;
        v77->_timer = 0;
      }

      (v144[2])(v144, 0);
      v77->_parsecCameLaterThanSRT = 1;
      v77->_shouldRecomputeSuggestions = 1;
    }

    else
    {
      v146 = SPLogForSPLogCategoryDefault();
      v147 = v146;
      if (gSPLogDebugAsDefault)
      {
        v148 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v148 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v146, v148))
      {
        *v201 = 0;
        _os_log_impl(&_mh_execute_header, v147, v148, "No more fast data stores, within parsec timeout", v201, 2u);
      }

      timeOut = SSPriorityIndexDelayMilliseconds() / 1000.0;
      sentPriority = v77->_sentPriority;
      v151 = v145 >= timeOut || v77->_sentPriority;
      if (v151)
      {
        if (!v77->_sentPriority)
        {
          v152 = SPLogForSPLogCategoryDefault();
          v153 = v152;
          if (gSPLogDebugAsDefault)
          {
            v154 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v154 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v152, v154))
          {
            *v201 = 0;
            _os_log_impl(&_mh_execute_header, v153, v154, "Send for CoreSpotlight priority path", v201, 2u);
          }

          (v144[2])(v144, 1);
        }

        timeOut = v77->_timeOut;
      }

      v155 = +[SDController workQueue];
      v156 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v155);
      v157 = v77->_timer;
      v77->_timer = v156;

      v158 = v77->_timer;
      v159 = dispatch_time(0, ((timeOut - v145) * 1000000000.0));
      dispatch_source_set_timer(v158, v159, 0xFFFFFFFFFFFFFFFFLL, 0);
      v160 = [v144 copy];

      v161 = v77->_timer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10001C244;
      handler[3] = &unk_100092A60;
      v144 = v160;
      v199 = v144;
      v200 = v151;
      dispatch_source_set_event_handler(v161, handler);
      dispatch_resume(v77->_timer);
    }

    objc_destroyWeak(&v203);
    objc_destroyWeak(buf);
  }

  v9 = v185;
LABEL_188:
  v167 = *v9;
  v168 = *(v9 + 8);
  v169 = *(v9 + 16);
  v170 = *(v9 + 24);
  v171 = *(v9 + 28);
  v172 = *(v9 + 32);
  si_tracing_log_span_end();
  v173 = v229;
  *v185 = v228;
  *(v185 + 16) = v173;
  *(v185 + 32) = v230;

  return 0;
}

- (BOOL)storeCompletedSearch:(id)a3 withSections:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(SDSearchQuery *)self cancelled]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(SDSearchQuery *)self storeCompletedSearch:v6 withSections:v7 suggestionResults:0];
  }

  return v8;
}

+ (BOOL)isCJK
{
  if (qword_1000A8338 != -1)
  {
    sub_100062604();
  }

  return byte_1000A8330;
}

- (SDSearchQuery)initWithQueryContext:(id)a3 externalID:(unsigned int)a4 connection:(id)a5
{
  v96 = a3;
  v93 = a5;
  v8 = si_tracing_current_span();
  v9 = *(v8 + 16);
  v103 = *v8;
  v104 = v9;
  v105 = *(v8 + 32);
  v10 = *v8;
  spanid = si_tracing_calc_next_spanid();
  v12 = *(v8 + 8);
  v13 = *(v8 + 24);
  *v8 = v10;
  *(v8 + 8) = spanid;
  *(v8 + 16) = v12;
  *(v8 + 28) = 102;
  *(v8 + 32) = "[SDSearchQuery initWithQueryContext:externalID:connection:]";
  si_tracing_log_span_begin();
  v89 = v8;
  v91 = [[SFClientTimingFeedback alloc] initWithEvent:@"com.apple.searchd.backend.query.start" timeInterval:0 queryId:{objc_msgSend(v96, "queryIdent")}];
  v90 = [[SFClientTimingFeedback alloc] initWithEvent:@"com.apple.searchd.backend.suggestions.start" timeInterval:0 queryId:{objc_msgSend(v96, "queryIdent")}];
  v92 = [v96 queryIdent];
  v95 = [v93 bundleID];
  v94 = +[SPFeedbackProxy sharedProxy];
  [v94 sendFeedbackType:21 feedback:v91 queryId:v92 clientID:v95];
  [v94 sendFeedbackType:21 feedback:v90 queryId:v92 clientID:v95];
  v102.receiver = self;
  v102.super_class = SDSearchQuery;
  v14 = [(SDSearchQuery *)&v102 initWithSearchQueryContext:v96];
  if (v14)
  {
    if (v93)
    {
      v15 = [[NSMutableArray alloc] initWithCapacity:8];
      tokens = v14->_tokens;
      v14->_tokens = v15;

      v17 = [[NSMutableArray alloc] initWithCapacity:8];
      slowTokens = v14->_slowTokens;
      v14->_slowTokens = v17;

      v19 = [[NSMutableArray alloc] initWithCapacity:8];
      delayedStartStores = v14->_delayedStartStores;
      v14->_delayedStartStores = v19;

      v21 = [[NSMutableArray alloc] initWithCapacity:8];
      delayedStartTokens = v14->_delayedStartTokens;
      v14->_delayedStartTokens = v21;

      v23 = [[NSMutableArray alloc] initWithCapacity:8];
      finishedTokens = v14->_finishedTokens;
      v14->_finishedTokens = v23;

      v25 = objc_alloc_init(NSMutableDictionary);
      categoryToResultMapping = v14->_categoryToResultMapping;
      v14->_categoryToResultMapping = v25;

      v27 = objc_opt_new();
      sectionOrderByInsertion = v14->_sectionOrderByInsertion;
      v14->_sectionOrderByInsertion = v27;

      v14->_externalID = a4;
      objc_storeStrong(&v14->_connection, a5);
      v29 = [v96 disabledDomains];
      v14->_parsecSettingEnabled = [v29 containsObject:&off_100098A50] ^ 1;

      v30 = objc_opt_new();
      [(SDSearchQuery *)v14 setCategoryEngagements:v30];

      v14->_isRewrite = 0;
      v14->_isNLPSearch = 0;
      v31 = dispatch_semaphore_create(0);
      correctionsSem = v14->_correctionsSem;
      v14->_correctionsSem = v31;

      v33 = OBJC_IVAR___SPSearchQuery__searchString;
      v34 = *&v14->SPSearchQuery_opaque[OBJC_IVAR___SPSearchQuery__searchString];
      v35 = [v96 searchEntities];
      v36 = [v35 count];

      if (v36)
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v37 = [v96 searchEntities];
        v38 = [v37 countByEnumeratingWithState:&v98 objects:v106 count:16];
        if (!v38)
        {
          goto LABEL_21;
        }

        v39 = *v99;
        while (1)
        {
          v40 = 0;
          v41 = v34;
          do
          {
            if (*v99 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v98 + 1) + 8 * v40);
            v43 = [v42 isAppEntitySearch];
            v44 = &OBJC_IVAR___SDSearchQuery__isScopedAppSearch;
            if (v43 & 1) != 0 || (v45 = [v42 isContactEntitySearch], v44 = &OBJC_IVAR___SDSearchQuery__isPeopleSearch, (v45) || (v46 = objc_msgSend(v42, "isPhotosEntitySearch"), v44 = &OBJC_IVAR___SDSearchQuery__isPhotosSearch, (v46))
            {
              p_isNLPSearch = &v14->SPSearchQuery_opaque[*v44];
LABEL_13:
              *p_isNLPSearch = 1;
              goto LABEL_14;
            }

            v48 = [v42 isNLPEntitySearch];
            p_isNLPSearch = &v14->_isNLPSearch;
            if (v48)
            {
              goto LABEL_13;
            }

LABEL_14:
            if ([v42 isCommandEntitySearch])
            {
              v14->_isEntitySearch = 1;
              [(SDSearchQuery *)v14 setInfinitePatience:1];
            }

            [v42 updateSearchString:*&v14->SPSearchQuery_opaque[v33]];
            v34 = [v42 currentSearchString];

            v40 = v40 + 1;
            v41 = v34;
          }

          while (v38 != v40);
          v49 = [v37 countByEnumeratingWithState:&v98 objects:v106 count:16];
          v38 = v49;
          if (!v49)
          {
LABEL_21:

            break;
          }
        }
      }

      v50 = [v96 keyboardPrimaryLanguage];
      v51 = [v50 lowercaseString];

      v52 = +[NSLocale currentLocale];
      v97 = [v52 objectForKey:NSLocaleLanguageCode];

      if (![v51 hasPrefix:@"en"] || (v53 = objc_msgSend(v97, "hasPrefix:", @"en"), v54 = v97, (v53 & 1) != 0))
      {
        v54 = v51;
      }

      v55 = v54;
      if (+[SDSearchQuery isCJK](SDSearchQuery, "isCJK") || ([v51 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v51, "hasPrefix:", @"zh") & 1) != 0)
      {
        v56 = 1;
      }

      else
      {
        v56 = [v51 hasPrefix:@"ko"];
      }

      v14->_isCJK = v56;
      [SSRankingManager prepareTopHitsParametersForLanguage:v55];
      v57 = [[SSRankingManager alloc] initWithQuery:v34];
      rankingManager = v14->_rankingManager;
      v14->_rankingManager = v57;

      v59 = CFPreferencesCopyAppValue(@"SearchRankingUseCreationDateL2", @"com.apple.searchd");
      v60 = CFPreferencesCopyAppValue(@"SearchRankingL2YWeight", @"com.apple.searchd");
      if (v14->_isPeopleSearch)
      {
        v61 = [(SDSearchQuery *)v14 itemRanker];
        [v61 setIsPeopleSearch:1];
      }

      v62 = [PRSRankingItemRanker alloc];
      isCJK = v14->_isCJK;
      [v59 doubleValue];
      v65 = v64;
      [v60 doubleValue];
      v67 = v66;
      [(SDSearchQuery *)v14 currentTime];
      v69 = [v62 initWithSearchString:v34 queryID:v92 language:v55 isCJK:isCJK experimentalWeight1:v65 experimentalWeight2:v67 currentTime:v68];
      [(SDSearchQuery *)v14 setItemRanker:v69];

      [(SDSearchQuery *)v14 setIsInternalDevice:os_variant_has_internal_diagnostics()];
      v14->_parsecCameLaterThanSRT = 0;
      v14->_parsecEntityCameEarly = 0;
      v14->_shouldRecomputeSuggestions = 1;
      v70 = [v96 searchEntities];
      v71 = [v70 count];

      if (v71)
      {
        v72 = [v96 searchEntities];
        v73 = [v72 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v75 = [v96 searchEntities];
          v76 = [v75 firstObject];
          v77 = [v76 preferredBundleIDs];
          preferredBundleIDs = v14->_preferredBundleIDs;
          v14->_preferredBundleIDs = v77;

          v14->_enforcePreferredBundleIDs = 1;
        }
      }
    }

    v79 = [SDController datastoreForDomain:2];
    v14->_parsecEnabled = [v79 parsecEnabled];
  }

  v80 = v14;

  v81 = *v89;
  v82 = *(v89 + 8);
  v83 = *(v89 + 16);
  v84 = *(v89 + 24);
  v85 = *(v89 + 28);
  v86 = *(v89 + 32);
  si_tracing_log_span_end();

  v87 = v104;
  *v89 = v103;
  *(v89 + 16) = v87;
  *(v89 + 32) = v105;

  return v80;
}

- (id)correctedQueryWithCorrection:(id)a3
{
  v4 = a3;
  v5 = [[SPSearchQueryContext alloc] initWithSearchString:v4];

  v6 = [(SDSearchQuery *)self queryContext];
  [v5 setWhyQuery:18];
  [v5 setQueryKind:10];
  [v5 setQueryIdent:{-[SDSearchQuery queryIdent](self, "queryIdent")}];
  v7 = [v6 keyboardLanguage];
  [v5 setKeyboardLanguage:v7];

  v8 = [v6 keyboardPrimaryLanguage];
  [v5 setKeyboardPrimaryLanguage:v8];

  [v6 scaleFactor];
  [v5 setScaleFactor:?];
  v9 = [v6 searchDomains];
  [v5 setSearchDomains:v9];

  v10 = [v6 disabledDomains];
  [v5 setDisabledDomains:v10];

  v11 = [(SDSearchQuery *)self disabledApps];
  [v5 setDisabledApps:v11];

  v12 = [(SDSearchQuery *)self disabledBundles];
  [v5 setDisabledBundles:v12];

  v13 = [v6 markedTextArray];
  [v5 setMarkedTextArray:v13];

  [v5 setPromoteLocalResults:{-[SDSearchQuery promoteLocalResults](self, "promoteLocalResults")}];
  [v5 setPromoteParsecResults:{-[SDSearchQuery promoteParsecResults](self, "promoteParsecResults")}];
  [v5 setNoTokenize:{-[SDSearchQuery noTokenize](self, "noTokenize")}];
  [v5 setDeviceAuthenticationState:{objc_msgSend(v6, "deviceAuthenticationState")}];
  v14 = [v6 queryUnderstandingOutput];
  [v5 setQueryUnderstandingOutput:v14];

  v15 = [SDSearchQuery alloc];
  v16 = [(SDSearchQuery *)self externalID];
  v17 = [(SDSearchQuery *)self connection];
  v18 = [(SDSearchQuery *)v15 initWithQueryContext:v5 externalID:v16 connection:v17];

  v19 = [(SDSearchQuery *)self queryContext];
  -[SDSearchQuery setPreviousQueryKind:](v18, "setPreviousQueryKind:", [v19 queryKind]);

  [(SDSearchQuery *)v18 setInfinitePatience:[(SDSearchQuery *)self infinitePatience]];
  [(SDSearchQuery *)v18 setNoTokenize:[(SDSearchQuery *)self noTokenize]];
  [(SDSearchQuery *)v18 setPromoteParsecResults:[(SDSearchQuery *)self promoteParsecResults]];
  [(SDSearchQuery *)v18 setPromoteLocalResults:[(SDSearchQuery *)self promoteLocalResults]];
  [(SDSearchQuery *)v18 setContentFilters:[(SDSearchQuery *)self contentFilters]];
  [(SDSearchQuery *)v18 setMaxCount:[(SDSearchQuery *)self maxCount]];
  v20 = [(SDSearchQuery *)self message];
  [(SDSearchQuery *)v18 setMessage:v20];

  [(SDSearchQuery *)v18 setIsWideScreen:[(SDSearchQuery *)self isWideScreen]];
  [(SDSearchQuery *)v18 setInternalDebug:[(SDSearchQuery *)self internalDebug]];
  [(SDSearchQuery *)v18 setIsRewrite:1];

  return v18;
}

- (void)dealloc
{
  v3 = [(SDSearchQuery *)self message];
  v4 = [v3 needsReply];

  if (v4)
  {
    v5 = [(SDSearchQuery *)self message];
    [v5 sendReply:&__NSDictionary0__struct];
  }

  if ([(SDSearchQuery *)self cancelled])
  {
    sub_100016448(self, "cancel", self->_startTime);
  }

  v6.receiver = self;
  v6.super_class = SDSearchQuery;
  [(SDSearchQuery *)&v6 dealloc];
}

- (id)waitForQueryCorrections
{
  correctionsSem = self->_correctionsSem;
  v4 = dispatch_time(0, 500000000);
  dispatch_semaphore_wait(correctionsSem, v4);
  corrections = self->_corrections;

  return corrections;
}

- (void)addQueryCorrections:(id)a3
{
  objc_storeStrong(&self->_corrections, a3);
  v5 = a3;
  dispatch_semaphore_signal(self->_correctionsSem);
}

- (BOOL)parsecAvailable
{
  if (!self->_parsecEnabled)
  {
    return 0;
  }

  v2 = [SDController datastoreForDomain:2];
  v3 = [v2 available];

  return v3;
}

@end