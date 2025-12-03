@interface TVPPlaybackReportingEventCollection
+ (double)_totalTimeSpentDoingFPSFetchesFromEndEvents:(id)events;
+ (void)initialize;
- (BOOL)containsEventWithName:(id)name;
- (NSDictionary)rtcReportingEventDict;
- (NSDictionary)startupEventsDict;
- (TVPPlaybackReportingEventCollection)init;
- (void)_addEventWithName:(id)name type:(int64_t)type identifier:(id)identifier value:(id)value timestamp:(id)timestamp forceAdd:(BOOL)add isUIInteraction:(BOOL)interaction;
- (void)_addStartupEventWithName:(id)name timestamp:(double)timestamp durationMS:(id)s toDictionary:(id)dictionary;
- (void)_closeOpenEvents;
- (void)_setError:(id)error inEventDict:(id)dict errorCodeKey:(id)key errorDomainKey:(id)domainKey;
- (void)addOrReplaceStartEventWithName:(id)name date:(id)date;
- (void)setComplete:(BOOL)complete;
@end

@implementation TVPPlaybackReportingEventCollection

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    +[TVPPlaybackReportingEventCollection initialize];
  }
}

uint64_t __49__TVPPlaybackReportingEventCollection_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "TVPPlaybackReportingEventCollection");
  v1 = sLogObject_0;
  sLogObject_0 = v0;

  v2 = [MEMORY[0x277CBEB98] setWithObjects:{TVPPlaybackReportingEventTotalStartupSequence, TVPPlaybackReportingEventPrepareForLoading, TVPPlaybackReportingEventEnsureSufficientDiskSpace, TVPPlaybackReportingEventLoadAVAssetKeysPrimary, TVPPlaybackReportingEventLoadAVAssetKeysSecondary, TVPPlaybackReportingEventLoadAVAssetKeysTotal, TVPPlaybackReportingEventPrepareForPlaybackInitiation, TVPPlaybackReportingEventBookmarkSync, TVPPlaybackReportingEventBuyProduct, TVPPlaybackReportingEventBuyProductServerProcessingTimeMS, TVPPlaybackReportingEventBuyProductBlockedPlaybackStartup, TVPPlaybackReportingEventFetchRental, TVPPlaybackReportingEventLoadBumperConfig, TVPPlaybackReportingEventRentalCheckout, TVPPlaybackReportingEventRentalCheckoutServerProcessingTimeMS, TVPPlaybackReportingEventCRABSLease, TVPPlaybackReportingEventCRABSLeaseServerProcessingTimeMS, TVPPlaybackReportingEventPlaybackStartupResult, TVPPlaybackReportingEventError, TVPPlaybackReportingEventErrorEvent, TVPPlaybackReportingEventTotalUIStartupTimeNotIncludingUserInteraction, @"fpsLongestCertFetchTime", @"fpsLongestRequestDataGenerationTime", @"fpsLongestServerFetchAsMeasuredByAppTime", @"fpsLongestServerProcessingTime", @"fpsLongestFetchTime", @"fpsFetchCount", TVPPlaybackReportingEventRentalCheckoutDoneInParallelWithFPSKeyFetch, TVPPlaybackReportingEventBookmarkSyncPerformed, TVPPlaybackReportingEventSyncedBookmarkMatchesPreviousBookmark, TVPPlaybackReportingEventFPSURLBagFetch, TVPPlaybackReportingEventCreatePlayerItemToLikelyToKeepUp, TVPPlaybackReportingEventWaitingForTimeControlStatus, TVPPlaybackReportingEventUserPlayToLoadingInitiation, @"reportingKeysWereOmittedDueToReportingError", TVPPlaybackReportingEventOpenURLTime, TVPPlaybackReportingEventPlaybackInitiationAction, TVPPlaybackReportingEventLinearTokenFetch, TVPPlaybackReportingEventLongestFetchLocationAuthorizationStatus, TVPPlaybackReportingEventHLSPlaylistPreloadState, 0}];
  v3 = sReportableEvents;
  sReportableEvents = v2;

  sFPSIndividualEvents = [MEMORY[0x277CBEB98] setWithObjects:{TVPPlaybackReportingEventFPSCertFetch, TVPPlaybackReportingEventFPSRequestDataGeneration, TVPPlaybackReportingEventFPSServerKeyFetch, TVPPlaybackReportingEventFPSServerProcessingTimeMS, TVPPlaybackReportingEventFPSOverallFetch, TVPPlaybackReportingEventFPSUsingCachedCertData, TVPPlaybackReportingEventLinearTokenFetch, TVPPlaybackReportingEventFetchLocationAuthorizationStatus, 0}];

  return MEMORY[0x2821F96F8]();
}

- (TVPPlaybackReportingEventCollection)init
{
  v8.receiver = self;
  v8.super_class = TVPPlaybackReportingEventCollection;
  v2 = [(TVPPlaybackReportingEventCollection *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventArray = v2->_eventArray;
    v2->_eventArray = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    openEvents = v2->_openEvents;
    v2->_openEvents = v5;

    v2->_videoType = 0;
  }

  return v2;
}

- (void)addOrReplaceStartEventWithName:(id)name date:(id)date
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dateCopy = date;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  if (nameCopy)
  {
    eventArray = [(TVPPlaybackReportingEventCollection *)self eventArray];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __75__TVPPlaybackReportingEventCollection_addOrReplaceStartEventWithName_date___block_invoke;
    v17[3] = &unk_279D7BAA8;
    v9 = nameCopy;
    v18 = v9;
    v19 = &v20;
    [eventArray enumerateObjectsUsingBlock:v17];

    if (v21[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v9;
        _os_log_impl(&dword_26CEDD000, v10, OS_LOG_TYPE_DEFAULT, "Replacing start event with name %@", buf, 0xCu);
      }

      eventArray2 = [(TVPPlaybackReportingEventCollection *)self eventArray];
      [eventArray2 removeObjectAtIndex:v21[3]];

      openEvents = [(TVPPlaybackReportingEventCollection *)self openEvents];
      [openEvents removeObjectForKey:v9];
    }
  }

  if (dateCopy)
  {
    v13 = MEMORY[0x277CCABB0];
    [dateCopy timeIntervalSinceReferenceDate];
    v14 = [v13 numberWithDouble:?];
  }

  else
  {
    v14 = 0;
  }

  LOBYTE(v16) = 0;
  [(TVPPlaybackReportingEventCollection *)self _addEventWithName:nameCopy type:0 identifier:0 value:0 timestamp:v14 forceAdd:0 isUIInteraction:v16];

  _Block_object_dispose(&v20, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __75__TVPPlaybackReportingEventCollection_addOrReplaceStartEventWithName_date___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 name];
  if ([v7 isEqualToString:*(a1 + 32)])
  {
    v8 = [v9 type];

    if (!v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (BOOL)containsEventWithName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  eventArray = [(TVPPlaybackReportingEventCollection *)self eventArray];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__TVPPlaybackReportingEventCollection_containsEventWithName___block_invoke;
  v8[3] = &unk_279D7BAA8;
  v6 = nameCopy;
  v9 = v6;
  v10 = &v11;
  [eventArray enumerateObjectsUsingBlock:v8];

  LOBYTE(eventArray) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return eventArray;
}

void __61__TVPPlaybackReportingEventCollection_containsEventWithName___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 name];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)setComplete:(BOOL)complete
{
  if (self->_complete != complete)
  {
    self->_complete = complete;
    [(TVPPlaybackReportingEventCollection *)self _closeOpenEvents];
  }
}

- (NSDictionary)rtcReportingEventDict
{
  v179 = *MEMORY[0x277D85DE8];
  v162 = objc_alloc_init(MEMORY[0x277CBEB38]);
  p_cache = TVPPlaybackState.cache;
  v3 = sLogObject_0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "Playback startup events:", buf, 2u);
  }

  v160 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  obj = [(TVPPlaybackReportingEventCollection *)self eventArray];
  v4 = [obj countByEnumeratingWithState:&v170 objects:v178 count:16];
  v5 = 0x277CCA000uLL;
  v6 = 0x2804D5000uLL;
  v7 = 0x2804D5000uLL;
  if (!v4)
  {
    v161 = 0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v164 = 0.0;
    v165 = 0.0;
    v163 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_103;
  }

  v8 = v4;
  v161 = 0;
  v168 = *v171;
  v9 = 0x277CCA000uLL;
  v156 = *MEMORY[0x277CCA7E8];
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v164 = 0.0;
  v165 = 0.0;
  v163 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  do
  {
    v18 = 0;
    v166 = v8;
    do
    {
      if (*v171 != v168)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v170 + 1) + 8 * v18);
      v20 = sReportableEvents;
      name = [v19 name];
      LODWORD(v20) = [v20 containsObject:name];

      if (v20)
      {
        if ([v19 type] == 3)
        {
          name2 = [v19 name];
          if (name2)
          {
            v23 = name2;
            value = [v19 value];

            if (value)
            {
              name3 = [v19 name];
              v26 = [name3 isEqualToString:TVPPlaybackReportingEventError];

              value2 = [v19 value];
              if (!v26)
              {
                goto LABEL_21;
              }

              v28 = *(v9 + 2488);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = value2;
                v30 = v9;
                name5 = v29;
                userInfo = [v29 userInfo];
                v33 = [userInfo objectForKey:v156];

                [(TVPPlaybackReportingEventCollection *)self _setError:name5 inEventDict:v162 errorCodeKey:@"errorCode" errorDomainKey:@"errorDomain"];
                v34 = *(v30 + 2488);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(TVPPlaybackReportingEventCollection *)self _setError:v33 inEventDict:v162 errorCodeKey:@"underlyingErrorCode" errorDomainKey:@"underlyingErrorDomain"];
                }

                value2 = name5;
                goto LABEL_22;
              }

              goto LABEL_23;
            }
          }
        }

        else if ([v19 type] == 1 || objc_msgSend(v19, "type") == 2)
        {
          name4 = [v19 name];

          if (name4)
          {
            value2 = [*(v5 + 2992) numberWithInteger:{objc_msgSend(v19, "durationMS")}];
LABEL_21:
            name5 = [v19 name];
            [(NSDictionary *)v162 setObject:value2 forKey:name5];
LABEL_22:

            v9 = 0x277CCA000;
LABEL_23:

            v8 = v166;
          }
        }
      }

      if ([v19 type])
      {
        if ([v19 type] == 3)
        {
          name6 = [v19 name];
          v37 = [name6 isEqualToString:TVPPlaybackReportingEventFPSServerProcessingTimeMS];

          if (v37)
          {
            value3 = [v19 value];
            v39 = *(v5 + 2992);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              integerValue = [value3 integerValue];
              v41 = p_cache[133];
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v158 = v17;
                v42 = v16;
                v43 = v13;
                v44 = v15;
                v45 = v14;
                v46 = v11;
                v47 = v12;
                v48 = v10;
                v49 = integerValue / 1000.0;
                v50 = v41;
                name7 = [v19 name];
                *buf = 138412546;
                v175 = name7;
                v176 = 2048;
                v177 = v49;
                v10 = v48;
                v12 = v47;
                v11 = v46;
                v14 = v45;
                v15 = v44;
                v13 = v43;
                v16 = v42;
                v17 = v158;
                _os_log_impl(&dword_26CEDD000, v50, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
              }
            }

            v9 = 0x277CCA000;
          }

          else
          {
            v102 = p_cache[133];
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              v103 = v102;
              name8 = [v19 name];
              [v19 value];
              v105 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412546;
              v175 = name8;
              v176 = 2112;
              v177 = v105;
              _os_log_impl(&dword_26CEDD000, v103, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);

              v9 = 0x277CCA000;
            }
          }

          name9 = [v19 name];
          v107 = [name9 isEqualToString:*(v6 + 2760)];

          if (v107)
          {
            value4 = [v19 value];
            v109 = *(v5 + 2992);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [value4 doubleValue];
              v12 = v110;
            }
          }

          name10 = [v19 name];
          v112 = [name10 isEqualToString:TVPPlaybackReportingEventFPSServerProcessingTimeMS];

          if (v112)
          {
            value5 = [v19 value];
            v114 = *(v5 + 2992);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              integerValue2 = [value5 integerValue];
              v116 = v161;
              if (integerValue2 > v161)
              {
                v116 = integerValue2;
              }

              v161 = v116;
            }
          }

          goto LABEL_96;
        }

        if ([v19 type] != 1 && objc_msgSend(v19, "type") != 2)
        {
          goto LABEL_96;
        }

        if ([v19 type] == 2)
        {
          v55 = p_cache[133];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            name11 = [v19 name];
            *buf = 138412290;
            v175 = name11;
            _os_log_impl(&dword_26CEDD000, v55, OS_LOG_TYPE_DEFAULT, "Aborted event: %@", buf, 0xCu);
          }
        }

        v57 = p_cache[133];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          name12 = [v19 name];
          [v19 duration];
          *buf = 138412546;
          v175 = name12;
          v176 = 2048;
          v177 = v59;
          _os_log_impl(&dword_26CEDD000, v57, OS_LOG_TYPE_DEFAULT, "%@Duration: %f", buf, 0x16u);
        }

        name13 = [v19 name];
        v61 = [name13 isEqualToString:TVPPlaybackReportingEventFPSCertFetch];

        if (v61)
        {
          [v19 duration];
          v63 = v163;
          if (v62 >= v163)
          {
            v63 = v62;
          }

          v163 = v63;
        }

        name14 = [v19 name];
        v65 = [name14 isEqualToString:TVPPlaybackReportingEventFPSOverallFetch];

        if (v65)
        {
          [v160 addObject:v19];
          [v19 timestamp];
          [v19 duration];
          if (v66 >= v15)
          {
            v15 = v66;
          }
        }

        name15 = [v19 name];
        v68 = [name15 isEqualToString:TVPPlaybackReportingEventFPSRequestDataGeneration];

        if (v68)
        {
          [v19 duration];
          v70 = v164;
          if (v69 >= v164)
          {
            v70 = v69;
          }

          v164 = v70;
        }

        name16 = [v19 name];
        v72 = [name16 isEqualToString:TVPPlaybackReportingEventFPSServerKeyFetch];

        if (v72)
        {
          [v19 duration];
          v74 = v165;
          if (v73 >= v165)
          {
            v74 = v73;
          }

          v165 = v74;
        }

        name17 = [v19 name];
        v76 = [name17 isEqualToString:TVPPlaybackReportingEventLinearTokenFetch];

        if (v76)
        {
          [v19 duration];
          if (v77 >= v14)
          {
            v14 = v77;
          }
        }

        name18 = [v19 name];
        v79 = [name18 isEqualToString:TVPPlaybackReportingEventFetchLocationAuthorizationStatus];

        if (v79)
        {
          [v19 duration];
          if (v80 >= v10)
          {
            v10 = v80;
          }
        }

        name19 = [v19 name];
        v82 = [name19 isEqualToString:TVPPlaybackReportingEventTotalStartupSequence];

        if (v82)
        {
          [v19 duration];
          [v19 duration];
          v17 = v17 + v83;
        }

        name20 = [v19 name];
        v85 = [name20 isEqualToString:*(v7 + 2792)];

        if (v85)
        {
          [v19 duration];
          v16 = v16 + v86;
        }

        name21 = [v19 name];
        if (([name21 isEqualToString:TVPPlaybackReportingEventRestrictionsPasscodeDisplay] & 1) == 0)
        {
          v88 = v7;
          v89 = v6;
          v90 = p_cache;
          v91 = v5;
          name22 = [v19 name];
          if (([name22 isEqualToString:TVPPlaybackReportingEventResumeMenuDisplay] & 1) == 0)
          {
            name23 = [v19 name];
            if (([name23 isEqualToString:TVPPlaybackReportingEventPressPlayToStartDisplay] & 1) == 0)
            {
              name24 = [v19 name];
              if (([name24 isEqualToString:TVPPlaybackReportingEventBumperVideoDisplay] & 1) == 0)
              {
                name25 = [v19 name];
                if (([name25 isEqualToString:TVPPlaybackReportingEventBumperTextDisplay] & 1) == 0)
                {
                  startEvent = [v19 startEvent];
                  isUIInteraction = [startEvent isUIInteraction];

                  v5 = v91;
                  p_cache = v90;
                  v6 = v89;
                  v7 = v88;
                  v8 = v166;
                  if ((isUIInteraction & 1) == 0)
                  {
LABEL_78:
                    v9 = 0x277CCA000;
                    name26 = [v19 name];
                    v98 = [name26 isEqualToString:TVPPlaybackReportingEventRentalCheckout];

                    if (v98)
                    {
                      [v19 duration];
                      [v19 timestamp];
                    }

                    goto LABEL_96;
                  }

LABEL_77:
                  [v19 duration];
                  v17 = v17 - v95;
                  [v19 duration];
                  v16 = v16 - v96;
                  goto LABEL_78;
                }
              }
            }

            v8 = v166;
          }

          v5 = v91;
          p_cache = v90;
          v6 = v89;
          v7 = v88;
        }

        goto LABEL_77;
      }

      name27 = [v19 name];
      v53 = [name27 isEqualToString:TVPPlaybackReportingEventFPSOverallFetch];

      if (v53)
      {
        [v19 timestamp];
        if (v13 == 0.0)
        {
          v13 = v54;
        }

        else if (v54 < v13)
        {
          v13 = v54;
        }
      }

      else
      {
        name28 = [v19 name];
        v100 = [name28 isEqualToString:TVPPlaybackReportingEventCreatePlayerItemToLikelyToKeepUp];

        if (v100)
        {
          [v19 timestamp];
          v11 = v101;
        }
      }

LABEL_96:
      ++v18;
    }

    while (v8 != v18);
    v117 = [obj countByEnumeratingWithState:&v170 objects:v178 count:16];
    v8 = v117;
  }

  while (v117);
LABEL_103:

  [objc_opt_class() _totalTimeSpentDoingFPSFetchesFromEndEvents:v160];
  v169 = v118;
  v119 = [v160 count];
  if (v119)
  {
    v120 = *&v119;
    v121 = p_cache[133];
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = @"fpsFetchCount";
      v176 = 2048;
      v177 = v120;
      _os_log_impl(&dword_26CEDD000, v121, OS_LOG_TYPE_DEFAULT, "%@: %lu", buf, 0x16u);
    }

    v122 = [*(v5 + 2992) numberWithUnsignedInteger:*&v120];
    [(NSDictionary *)v162 setObject:v122 forKey:@"fpsFetchCount"];
  }

  if (v163 > 0.0)
  {
    v123 = p_cache[133];
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = @"fpsLongestCertFetchTime";
      v176 = 2048;
      v177 = v163;
      _os_log_impl(&dword_26CEDD000, v123, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v124 = [*(v5 + 2992) numberWithInteger:llround(v163 * 1000.0)];
    [(NSDictionary *)v162 setObject:v124 forKey:@"fpsLongestCertFetchTime"];
  }

  if (v164 > 0.0)
  {
    v125 = p_cache[133];
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = @"fpsLongestRequestDataGenerationTime";
      v176 = 2048;
      v177 = v164;
      _os_log_impl(&dword_26CEDD000, v125, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v126 = [*(v5 + 2992) numberWithInteger:llround(v164 * 1000.0)];
    [(NSDictionary *)v162 setObject:v126 forKey:@"fpsLongestRequestDataGenerationTime"];
  }

  if (v165 > 0.0)
  {
    v127 = p_cache[133];
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = @"fpsLongestServerFetchAsMeasuredByAppTime";
      v176 = 2048;
      v177 = v165;
      _os_log_impl(&dword_26CEDD000, v127, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v128 = [*(v5 + 2992) numberWithInteger:llround(v165 * 1000.0)];
    [(NSDictionary *)v162 setObject:v128 forKey:@"fpsLongestServerFetchAsMeasuredByAppTime"];
  }

  if (v161 >= 1)
  {
    v129 = p_cache[133];
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = @"fpsLongestServerProcessingTime";
      v176 = 2048;
      v177 = v161 / 1000.0;
      _os_log_impl(&dword_26CEDD000, v129, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v130 = [*(v5 + 2992) numberWithInteger:v161];
    [(NSDictionary *)v162 setObject:v130 forKey:@"fpsLongestServerProcessingTime"];
  }

  if (v15 > 0.0)
  {
    v131 = p_cache[133];
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = @"fpsLongestFetchTime";
      v176 = 2048;
      v177 = v15;
      _os_log_impl(&dword_26CEDD000, v131, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v132 = [*(v5 + 2992) numberWithInteger:llround(v15 * 1000.0)];
    [(NSDictionary *)v162 setObject:v132 forKey:@"fpsLongestFetchTime"];
  }

  if (v14 > 0.0)
  {
    v133 = p_cache[133];
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = TVPPlaybackReportingEventLinearTokenFetch;
      v176 = 2048;
      v177 = v14;
      _os_log_impl(&dword_26CEDD000, v133, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v134 = [*(v5 + 2992) numberWithInteger:llround(v14 * 1000.0)];
    [(NSDictionary *)v162 setObject:v134 forKey:TVPPlaybackReportingEventLinearTokenFetch];
  }

  if (v169 > 0.0)
  {
    v135 = p_cache[133];
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = TVPPlaybackReportingEventTotalTimeSpendDoingFPSFetches;
      v176 = 2048;
      v177 = v169;
      _os_log_impl(&dword_26CEDD000, v135, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v136 = [*(v5 + 2992) numberWithInteger:llround(v169 * 1000.0)];
    [(NSDictionary *)v162 setObject:v136 forKey:TVPPlaybackReportingEventTotalTimeSpendDoingFPSFetches];
  }

  if (v17 > 0.0)
  {
    v137 = p_cache[133];
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = TVPPlaybackReportingEventTotalUIStartupTimeNotIncludingUserInteraction;
      v176 = 2048;
      v177 = v17;
      _os_log_impl(&dword_26CEDD000, v137, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v138 = [*(v5 + 2992) numberWithInteger:llround(v17 * 1000.0)];
    [(NSDictionary *)v162 setObject:v138 forKey:TVPPlaybackReportingEventTotalUIStartupTimeNotIncludingUserInteraction];
  }

  if (v16 > 0.0)
  {
    v139 = p_cache[133];
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      v140 = *(v7 + 2792);
      *buf = 138412546;
      v175 = v140;
      v176 = 2048;
      v177 = v16;
      _os_log_impl(&dword_26CEDD000, v139, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v141 = [*(v5 + 2992) numberWithInteger:llround(v16 * 1000.0)];
    [(NSDictionary *)v162 setObject:v141 forKey:*(v7 + 2792)];
  }

  if (v11 > 0.0 && v13 > 0.0)
  {
    v142 = v13 - v11;
    v143 = p_cache[133];
    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = @"createAVPlayerItemToFirstFPSFetchTime";
      v176 = 2048;
      v177 = v142;
      _os_log_impl(&dword_26CEDD000, v143, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    if (v142 > 0.0)
    {
      v144 = [*(v5 + 2992) numberWithInteger:llround(v142 * 1000.0)];
      [(NSDictionary *)v162 setObject:v144 forKey:@"createAVPlayerItemToFirstFPSFetchTime"];
    }
  }

  if (v12 > 0.0)
  {
    v145 = [*(v5 + 2992) numberWithInteger:llround(v12 * 1000.0)];
    [(NSDictionary *)v162 setObject:v145 forKey:*(v6 + 2760)];
  }

  if (v10 > 0.0)
  {
    v146 = p_cache[133];
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v175 = TVPPlaybackReportingEventLongestFetchLocationAuthorizationStatus;
      v176 = 2048;
      v177 = v10;
      _os_log_impl(&dword_26CEDD000, v146, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v147 = [*(v5 + 2992) numberWithInteger:llround(v10 * 1000.0)];
    [(NSDictionary *)v162 setObject:v147 forKey:TVPPlaybackReportingEventLongestFetchLocationAuthorizationStatus];
  }

  v148 = [*(v5 + 2992) numberWithBool:{-[TVPPlaybackReportingEventCollection isDownloaded](self, "isDownloaded")}];
  [(NSDictionary *)v162 setObject:v148 forKey:@"isDownloaded"];

  v149 = [*(v5 + 2992) numberWithBool:{-[TVPPlaybackReportingEventCollection isGroupActivity](self, "isGroupActivity")}];
  [(NSDictionary *)v162 setObject:v149 forKey:@"isGroupActivity"];

  v150 = [*(v5 + 2992) numberWithBool:{-[TVPPlaybackReportingEventCollection isGroupActivityOriginator](self, "isGroupActivityOriginator")}];
  [(NSDictionary *)v162 setObject:v150 forKey:@"isGroupActivityOriginator"];

  v151 = v162;
  v152 = *MEMORY[0x277D85DE8];
  return v162;
}

- (NSDictionary)startupEventsDict
{
  v48[6] = *MEMORY[0x277D85DE8];
  rtcReportingEventDict = [(TVPPlaybackReportingEventCollection *)self rtcReportingEventDict];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48[0] = TVPPlaybackReportingEventUserPlayToLoadingInitiation;
  v48[1] = TVPPlaybackReportingEventPrepareForLoading;
  v48[2] = TVPPlaybackReportingEventPrepareForPlaybackInitiation;
  v48[3] = TVPPlaybackReportingEventCreatePlayerItemToLikelyToKeepUp;
  v48[4] = TVPPlaybackReportingEventWaitingForTimeControlStatus;
  v48[5] = TVPPlaybackReportingEventLoadAVAssetKeysTotal;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:6];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  selfCopy = self;
  obj = [(TVPPlaybackReportingEventCollection *)self eventArray];
  v6 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v6)
  {
    v9 = 0.0;
    v10 = 0.0;
    goto LABEL_29;
  }

  v7 = v6;
  v8 = *v44;
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      v12 = v9;
      if (*v44 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v43 + 1) + 8 * i);
      name = [v13 name];
      if ([v4 containsObject:name])
      {
        type = [v13 type];

        if (type != 1)
        {
          goto LABEL_10;
        }

        name = [v13 name];
        startEvent = [v13 startEvent];
        [startEvent timestamp];
        v18 = v17;

        v19 = [rtcReportingEventDict objectForKey:name];
        [(TVPPlaybackReportingEventCollection *)selfCopy _addStartupEventWithName:name timestamp:v19 durationMS:v3 toDictionary:v18];
      }

LABEL_10:
      name2 = [v13 name];
      v21 = [name2 isEqualToString:TVPPlaybackReportingEventTotalStartupSequence];

      if (v21)
      {
        v22 = TVPPlaybackReportingEventTotalUIStartupTimeNotIncludingUserInteraction;
        v23 = [rtcReportingEventDict objectForKey:v22];
        startEvent2 = [v13 startEvent];
        [startEvent2 timestamp];
        [(TVPPlaybackReportingEventCollection *)selfCopy _addStartupEventWithName:v22 timestamp:v23 durationMS:v3 toDictionary:?];
      }

      name3 = [v13 name];
      v26 = [name3 isEqualToString:TVPPlaybackReportingEventFPSOverallFetch];

      if (v26)
      {
        [v40 addObject:v13];
        [v13 timestamp];
        if (v27 >= v10)
        {
          v28 = v10;
        }

        else
        {
          v28 = v27;
        }

        if (v10 == 0.0)
        {
          v10 = v27;
        }

        else
        {
          v10 = v28;
        }
      }

      name4 = [v13 name];
      v30 = [name4 isEqualToString:TVPPlaybackReportingEventFetchLocationAuthorizationStatus];

      if (v30)
      {
        [v39 addObject:v13];
        [v13 timestamp];
        v9 = v31;
        if (v12 != 0.0 && v31 >= v12)
        {
          v9 = v12;
        }
      }

      else
      {
        v9 = v12;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v7);
LABEL_29:

  [objc_opt_class() _totalTimeSpentDoingFPSFetchesFromEndEvents:v40];
  v32 = TVPPlaybackReportingEventTotalTimeSpendDoingFPSFetches;
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:llround(v33 * 1000.0)];
  [(TVPPlaybackReportingEventCollection *)selfCopy _addStartupEventWithName:v32 timestamp:v34 durationMS:v3 toDictionary:v10];

  v35 = TVPPlaybackReportingEventLongestFetchLocationAuthorizationStatus;
  v36 = [rtcReportingEventDict objectForKey:TVPPlaybackReportingEventLongestFetchLocationAuthorizationStatus];
  [(TVPPlaybackReportingEventCollection *)selfCopy _addStartupEventWithName:v35 timestamp:v36 durationMS:v3 toDictionary:v9];

  v37 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_addStartupEventWithName:(id)name timestamp:(double)timestamp durationMS:(id)s toDictionary:(id)dictionary
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  sCopy = s;
  v11 = [[TVPPlaybackStartupEvent alloc] initWithName:nameCopy timestamp:sCopy durationMS:timestamp];

  if (nameCopy)
  {
    [dictionaryCopy setObject:v11 forKey:nameCopy];
  }
}

- (void)_addEventWithName:(id)name type:(int64_t)type identifier:(id)identifier value:(id)value timestamp:(id)timestamp forceAdd:(BOOL)add isUIInteraction:(BOOL)interaction
{
  nameCopy = name;
  identifierCopy = identifier;
  valueCopy = value;
  timestampCopy = timestamp;
  if (add || ![(TVPPlaybackReportingEventCollection *)self complete])
  {
    if ([sFPSIndividualEvents containsObject:nameCopy] && -[TVPPlaybackReportingEventCollection initialFPSRequestsComplete](self, "initialFPSRequestsComplete"))
    {
      v19 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_26CEDD000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring FPS event since initial FPS requests are already complete.", v32, 2u);
      }
    }

    else
    {
      v20 = objc_alloc_init(TVPPlaybackReportingEvent);
      if (!identifierCopy)
      {
        identifierCopy = nameCopy;
      }

      [(TVPPlaybackReportingEvent *)v20 setName:nameCopy];
      if (timestampCopy)
      {
        [timestampCopy doubleValue];
      }

      else
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      }

      [(TVPPlaybackReportingEvent *)v20 setTimestamp:?];
      [(TVPPlaybackReportingEvent *)v20 setType:type];
      [(TVPPlaybackReportingEvent *)v20 setValue:valueCopy];
      [(TVPPlaybackReportingEvent *)v20 setIsUIInteraction:interaction];
      eventArray = [(TVPPlaybackReportingEventCollection *)self eventArray];
      [eventArray addObject:v20];

      if (type)
      {
        if (type <= 2)
        {
          openEvents = [(TVPPlaybackReportingEventCollection *)self openEvents];
          v23 = [openEvents objectForKey:identifierCopy];

          [(TVPPlaybackReportingEvent *)v20 setStartEvent:v23];
          openEvents2 = [(TVPPlaybackReportingEventCollection *)self openEvents];
          [openEvents2 removeObjectForKey:identifierCopy];

          if (!v23)
          {
            v25 = sLogObject_0;
            if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
            {
              [TVPPlaybackReportingEventCollection _addEventWithName:nameCopy type:v25 identifier:? value:? timestamp:? forceAdd:? isUIInteraction:?];
            }

            eventArray2 = [(TVPPlaybackReportingEventCollection *)self eventArray];
            [eventArray2 removeObject:v20];

            if (![(TVPPlaybackReportingEventCollection *)self containsEventWithName:@"reportingKeysWereOmittedDueToReportingError"])
            {
              v27 = objc_alloc_init(TVPPlaybackReportingEvent);
              [(TVPPlaybackReportingEvent *)v27 setName:@"reportingKeysWereOmittedDueToReportingError"];
              [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
              [(TVPPlaybackReportingEvent *)v27 setTimestamp:?];
              [(TVPPlaybackReportingEvent *)v27 setType:3];
              [(TVPPlaybackReportingEvent *)v27 setValue:MEMORY[0x277CBEC38]];
              eventArray3 = [(TVPPlaybackReportingEventCollection *)self eventArray];
              [eventArray3 addObject:v27];
            }
          }
        }
      }

      else
      {
        openEvents3 = [(TVPPlaybackReportingEventCollection *)self openEvents];
        v30 = [openEvents3 objectForKey:identifierCopy];

        if (!v30)
        {
          openEvents4 = [(TVPPlaybackReportingEventCollection *)self openEvents];
          [openEvents4 setObject:v20 forKey:identifierCopy];
        }
      }
    }
  }
}

- (void)_closeOpenEvents
{
  openEvents = [(TVPPlaybackReportingEventCollection *)self openEvents];
  v4 = [openEvents copy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__TVPPlaybackReportingEventCollection__closeOpenEvents__block_invoke;
  v5[3] = &unk_279D7BAD0;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __55__TVPPlaybackReportingEventCollection__closeOpenEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [a3 name];
  LOBYTE(v6) = 0;
  [v4 _addEventWithName:v7 type:2 identifier:v5 value:0 timestamp:0 forceAdd:1 isUIInteraction:v6];
}

- (void)_setError:(id)error inEventDict:(id)dict errorCodeKey:(id)key errorDomainKey:(id)domainKey
{
  dictCopy = dict;
  domainKeyCopy = domainKey;
  keyCopy = key;
  errorCopy = error;
  code = [errorCopy code];
  domain = [errorCopy domain];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  [dictCopy setObject:v14 forKey:keyCopy];

  if (domain)
  {
    [dictCopy setObject:domain forKey:domainKeyCopy];
  }
}

+ (double)_totalTimeSpentDoingFPSFetchesFromEndEvents:(id)events
{
  v39 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        startEvent = [v9 startEvent];
        v11 = startEvent == 0;

        if (!v11)
        {
          v12 = [TVPTimeRange alloc];
          startEvent2 = [v9 startEvent];
          [startEvent2 timestamp];
          v15 = v14;
          [v9 timestamp];
          v17 = [(TVPTimeRange *)v12 initWithStartTime:v15 endTime:v16];
          [v4 addObject:v17];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v6);
  }

  [v4 sortUsingComparator:&__block_literal_global_307];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __83__TVPPlaybackReportingEventCollection__totalTimeSpentDoingFPSFetchesFromEndEvents___block_invoke_308;
  v23[3] = &unk_279D7BB18;
  v23[4] = &v28;
  v23[5] = &v24;
  [v4 enumerateObjectsUsingBlock:v23];
  v18 = v29[5];
  if (v18)
  {
    [v18 duration];
    v20 = v19 + v25[3];
    v25[3] = v20;
  }

  else
  {
    v20 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __83__TVPPlaybackReportingEventCollection__totalTimeSpentDoingFPSFetchesFromEndEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 startTime];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 startTime];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

void __83__TVPPlaybackReportingEventCollection__totalTimeSpentDoingFPSFetchesFromEndEvents___block_invoke_308(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8);
  v22 = v5;
  if (a3)
  {
    v7 = *(v6 + 40);
    [v5 startTime];
    if ([v7 containsTime:?])
    {
      v8 = [TVPTimeRange alloc];
      [*(*(*(a1 + 32) + 8) + 40) startTime];
      v10 = v9;
      [*(*(*(a1 + 32) + 8) + 40) endTime];
      v12 = v11;
      [v22 endTime];
      if (v12 >= v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }

      v15 = [(TVPTimeRange *)v8 initWithStartTime:v10 endTime:v14];
      v16 = *(*(a1 + 32) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      [*(*(*(a1 + 32) + 8) + 40) duration];
      *(*(*(a1 + 40) + 8) + 24) = v19 + *(*(*(a1 + 40) + 8) + 24);
      v20 = *(*(a1 + 32) + 8);
      v21 = v22;
      v17 = *(v20 + 40);
      *(v20 + 40) = v21;
    }
  }

  else
  {
    v18 = v5;
    v17 = *(v6 + 40);
    *(v6 + 40) = v18;
  }
}

- (void)_addEventWithName:(uint64_t)a1 type:(NSObject *)a2 identifier:value:timestamp:forceAdd:isUIInteraction:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26CEDD000, a2, OS_LOG_TYPE_ERROR, "Event %@ has no corresponding start event.  Removing from event array", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end