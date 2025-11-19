@interface PPEventScorer
+ (id)cacheKeyforCoreRoutineCacheForStartDate:(void *)a3 endDate:;
+ (id)emailAddressFromEKAttendee:(uint64_t)a1;
+ (id)participantsInEvent:(uint64_t)a1;
+ (void)clearAssetCache;
+ (void)enrichDictionary:(id)a3 withEvent:(id)a4 interningSet:(id)a5;
+ (void)setLocationsOfInterestLocations:(id)a3 withReferenceDate:(id)a4;
- (BOOL)isHomeCalendar:(id)a3;
- (BOOL)isWorkCalendar:(id)a3;
- (BOOL)scoreIsExtraordinary:(double)a3 rankingOptions:(int)a4;
- (PPEventScorer)init;
- (PPEventScorer)initWithPastEventTitlesAndParticipants:(id)a3 andEarliestStartTime:(double)a4 shouldConsiderAlarms:(BOOL)a5 withOptions:(int)a6 trialWrapper:(id)a7;
- (id)eventScorerConfig;
- (id)scoreEvent:(id)a3 usingDate:(id)a4;
@end

@implementation PPEventScorer

- (BOOL)scoreIsExtraordinary:(double)a3 rankingOptions:(int)a4
{
  v4 = a4;
  v6 = [(PPEventScorer *)self eventScorerConfig];
  v7 = v6;
  if (!v6)
  {
    v11 = 1000.0;
LABEL_10:
    v13 = v11 < a3;
    goto LABEL_11;
  }

  if ((v4 & 2) != 0)
  {
    v8 = @"highExtraordinaryThreshold";
  }

  else
  {
    v8 = @"extraordinaryThreshold";
  }

  v9 = [v6 objectForKeyedSubscript:v8];
  [v9 doubleValue];
  v11 = v10;

  if (v11 != 0.0)
  {
    goto LABEL_10;
  }

  v12 = pp_events_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPEventRankerFeaturizer: Scoring threshold set to 0", v15, 2u);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)eventScorerConfig
{
  if (a1)
  {
    if (eventScorerConfig_onceToken != -1)
    {
      dispatch_once(&eventScorerConfig_onceToken, &__block_literal_global_105_13386);
    }

    v2 = [_configCache objectForKey:@"TCK"];
    if (!v2)
    {
      pthread_mutex_lock(&configLock);
      v3 = [*(a1 + 64) plistForFactorName:@"EventRankerConfig.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_EVENTS"];
      if ([v3 count])
      {
        v2 = v3;
        [_configCache setObject:v2 forKey:@"TCK"];
      }

      else
      {
        v2 = 0;
      }

      pthread_mutex_unlock(&configLock);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __34__PPEventScorer_eventScorerConfig__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _configCache;
  _configCache = v0;

  v2 = _configCache;

  return [v2 setCountLimit:1];
}

- (BOOL)isHomeCalendar:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  v5 = ([v4 isEqualToString:@"Home"] & 1) != 0 || objc_msgSend(v3, "type") == 4;

  return v5;
}

- (BOOL)isWorkCalendar:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  if ([v4 isEqualToString:@"Work"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 source];
    v7 = [v6 title];
    v5 = [v7 isEqualToString:@"calendar.apple.com"];
  }

  return v5;
}

- (id)scoreEvent:(id)a3 usingDate:(id)a4
{
  v309 = *MEMORY[0x277D85DE8];
  v281 = a3;
  v279 = a4;
  v287 = self;
  v6 = [[PPEventRankerFeaturizer alloc] initWithTrialWrapper:self->_trialWrapper];
  v7 = [(PPEventRankerFeaturizer *)v6 featureSchema];

  if (v7)
  {
    context = objc_autoreleasePoolPush();
    v8 = v281;
    v9 = v7;
    v301 = 0u;
    v302 = 0u;
    v303 = 0u;
    v304 = 0u;
    v10 = objc_autoreleasePoolPush();
    v283 = v8;
    obj = [v8 recurrenceRules];
    objc_autoreleasePoolPop(v10);
    v11 = [obj countByEnumeratingWithState:&v301 objects:&buf count:16];
    if (v11)
    {
      v12 = *v302;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v302 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v301 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [v14 frequency];
          v17 = [v9 objectForKeyedSubscript:@"RecurrenceFeatures"];
          v18 = v17;
          v19 = @"RecurrenceRuleSet";
          if (v16 <= 3)
          {
            v19 = off_278979A68[v16];
          }

          v20 = [v17 objectForKeyedSubscript:v19];
          [v20 setObject:&unk_284784218 forKeyedSubscript:@"Value"];

          objc_autoreleasePoolPop(v15);
        }

        v11 = [obj countByEnumeratingWithState:&v301 objects:&buf count:16];
      }

      while (v11);
    }

    if (([v283 hasRecurrenceRules] & 1) == 0 && objc_msgSend(v283, "isDetached"))
    {
      v21 = [v9 objectForKeyedSubscript:@"RecurrenceFeatures"];
      v22 = [v21 objectForKeyedSubscript:@"RecurrenceRuleEventIsDetached"];
      [v22 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
    }

    v23 = v9;

    v24 = v283;
    v25 = v23;
    if (v287)
    {
      [v24 duration];
      if (v26 > 43200.0)
      {
        v27 = [v25 objectForKeyedSubscript:@"DurationFeatures"];
        v28 = [v27 objectForKeyedSubscript:@"DurationLongerThan12Hrs"];
        [v28 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
      }

      [v24 duration];
      if (v29 > 79200.0)
      {
        v30 = [v25 objectForKeyedSubscript:@"DurationFeatures"];
        v31 = [v30 objectForKeyedSubscript:@"DurationLongerThan24Hrs"];
        [v31 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
      }

      [v24 duration];
      if (v32 > 432000.0)
      {
        v33 = [v25 objectForKeyedSubscript:@"DurationFeatures"];
        v34 = [v33 objectForKeyedSubscript:@"DurationLongerThan5Days"];
        [v34 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
      }

      v35 = MEMORY[0x277CCABB0];
      [v24 duration];
      v36 = [v35 numberWithDouble:?];
      v37 = [v25 objectForKeyedSubscript:@"DurationFeatures"];
      v38 = [v37 objectForKeyedSubscript:@"Duration"];
      [v38 setObject:v36 forKeyedSubscript:@"Value"];

      v39 = v25;
    }

    else
    {
      v39 = 0;
    }

    v40 = v24;
    v41 = v39;
    if (!v287)
    {
      v64 = 0;
      v43 = 0;
LABEL_46:

      v65 = v40;
      v66 = v64;
      if (v43)
      {
        [v65 travelTime];
        if (v67 > 0.0)
        {
          v68 = MEMORY[0x277CCABB0];
          [v65 travelTime];
          v70 = [v68 numberWithDouble:floor(v69 / 60.0 / 10.0)];
          v71 = [v66 objectForKeyedSubscript:@"EventAttributeFeatures"];
          v72 = [v71 objectForKeyedSubscript:@"TravelTimeSet"];
          [v72 setObject:v70 forKeyedSubscript:@"Value"];
        }

        v73 = v66;
      }

      else
      {
        v73 = 0;
      }

      v74 = v73;
      if (v287)
      {
        v75 = [v65 attachments];
        v76 = [v75 count];

        if (v76)
        {
          v77 = [v74 objectForKeyedSubscript:@"EventAttributeFeatures"];
          v78 = [v77 objectForKeyedSubscript:@"Attachments"];
          [v78 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
        }

        v79 = v74;
      }

      else
      {
        v79 = 0;
      }

      v80 = v65;
      v81 = v79;
      if (v287)
      {
        v82 = objc_autoreleasePoolPush();
        v83 = [v80 suggestionInfo];
        objc_autoreleasePoolPop(v82);

        if (v83)
        {
          v84 = objc_autoreleasePoolPush();
          v85 = [v81 objectForKeyedSubscript:@"EventAttributeFeatures"];
          v86 = [v85 objectForKeyedSubscript:@"SuggestionsInfo"];
          [v86 setObject:&unk_284784218 forKeyedSubscript:@"Value"];

          v87 = [v80 customObjectForKey:*MEMORY[0x277D3A760]];
          v88 = [v87 objectForKeyedSubscript:@"SGEventMetadataCategoryDescriptionKey"];
          v89 = [v88 isEqualToString:@"Flight"];

          if (v89)
          {
            v90 = [v81 objectForKeyedSubscript:@"EventAttributeFeatures"];
            v91 = [v90 objectForKeyedSubscript:@"StructuredEventFlight"];
            [v91 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
          }

          objc_autoreleasePoolPop(v84);
        }

        v92 = v81;
      }

      else
      {
        v92 = 0;
      }

      v93 = v287;

      v94 = v92;
      if (v287)
      {
        if ([v80 hasNotes])
        {
          v95 = [v94 objectForKeyedSubscript:@"EventAttributeFeatures"];
          v96 = [v95 objectForKeyedSubscript:@"Notes"];
          [v96 setObject:&unk_284784218 forKeyedSubscript:@"Value"];

          v93 = v287;
        }

        v97 = v94;
      }

      else
      {
        v97 = 0;
      }

      v98 = v97;
      if (v93)
      {
        v99 = [v80 URL];

        if (v99)
        {
          v100 = [v98 objectForKeyedSubscript:@"EventAttributeFeatures"];
          v101 = [v100 objectForKeyedSubscript:@"URL"];
          [v101 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
        }

        v102 = v98;
      }

      else
      {
        v102 = 0;
      }

      v103 = v102;
      if (v287)
      {
        v104 = [v80 calendar];
        v105 = [v104 allowsContentModifications];

        if ((v105 & 1) == 0)
        {
          v106 = [v103 objectForKeyedSubscript:@"EventAttributeFeatures"];
          v107 = [v106 objectForKeyedSubscript:@"ContentModificationsNotAllowed"];
          [v107 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
        }

        v108 = v103;
      }

      else
      {
        v108 = 0;
      }

      v109 = v80;
      v110 = v108;
      if (!v287)
      {
        v121 = 0;
        goto LABEL_80;
      }

      v111 = [v109 calendar];
      if ([v111 isSubscribed])
      {
      }

      else
      {
        v112 = [v109 calendar];
        v113 = [v112 source];
        v114 = [v113 sourceType];

        if (v114 != 4)
        {
LABEL_77:
          v117 = [v109 calendar];
          v118 = [v117 sharingStatus];

          if (v118 == 2)
          {
            v119 = [v110 objectForKeyedSubscript:@"CalendarFeatures"];
            v120 = [v119 objectForKeyedSubscript:@"Shared"];
            [v120 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
          }

          v121 = v110;
LABEL_80:

          v122 = v109;
          v123 = v121;
          v124 = v287;
          if (v287)
          {
            if (v287->_pastEventTitlesAndParticipants)
            {
              v125 = [v122 title];
              v124 = v287;
              if (v125)
              {
                pastEventTitlesAndParticipants = v287->_pastEventTitlesAndParticipants;
                v127 = [v122 title];
                v128 = [(NSDictionary *)pastEventTitlesAndParticipants objectForKeyedSubscript:v127];

                v124 = v287;
                if (v128)
                {
                  v129 = [v123 objectForKeyedSubscript:@"TitleFeatures"];
                  v130 = [v129 objectForKeyedSubscript:@"RecurringTitle"];
                  [v130 setObject:&unk_284784218 forKeyedSubscript:@"Value"];

                  v124 = v287;
                }
              }
            }

            v131 = v123;
          }

          else
          {
            v131 = 0;
          }

          v132 = v131;
          if (v124)
          {
            if (*(v124 + 56))
            {
              v133 = [(PPEventScorer *)v124 eventScorerConfig];
              v134 = v133;
              if (v133)
              {
                pastTitlesCount = v287->_pastTitlesCount;
                v136 = [v133 objectForKeyedSubscript:@"minEkEventsForThreshold"];
                v137 = [v136 integerValue];

                if (pastTitlesCount > v137)
                {
                  v138 = [MEMORY[0x277CCABB0] numberWithInteger:v287->_pastTitlesCount];
                  v139 = [v132 objectForKeyedSubscript:@"TitleFeatures"];
                  v140 = [v139 objectForKeyedSubscript:@"PastTitleCount"];
                  [v140 setObject:v138 forKeyedSubscript:@"Value"];
                }
              }

              v124 = v287;
            }

            v141 = v132;
          }

          else
          {
            v141 = 0;
          }

          v142 = v122;
          v143 = v141;
          v282 = v142;
          if (!v124)
          {
            v165 = 0;
LABEL_116:

            v280 = v165;
            if (!v287)
            {
              v207 = 0;
              goto LABEL_174;
            }

            v278 = [PPEventScorer participantsInEvent:v282];
            if (![v278 count])
            {
LABEL_173:
              v207 = v280;

LABEL_174:
              v208 = v207;
              if (v287)
              {
                v209 = [v282 selfAttendee];
                v210 = [v209 participantRole];

                if ((v210 - 2) <= 2)
                {
                  v211 = off_2789751F0[v210 - 2];
                  v212 = [v208 objectForKeyedSubscript:@"ParticipantsFeatures"];
                  v213 = [v212 objectForKeyedSubscript:*v211];
                  [v213 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
                }

                v214 = v208;
              }

              else
              {
                v214 = 0;
              }

              v215 = v214;
              v216 = v287;
              if (v287)
              {
                v217 = [v282 availability];
                if (v217 <= 2)
                {
                  v218 = off_278975208[v217];
                  v219 = [v215 objectForKeyedSubscript:@"EventAttributeFeatures"];
                  v220 = [v219 objectForKeyedSubscript:*v218];
                  [v220 setObject:&unk_284784218 forKeyedSubscript:@"Value"];

                  v216 = v287;
                }

                v221 = v215;
              }

              else
              {
                v221 = 0;
              }

              v222 = v282;
              v223 = v221;
              if (v216)
              {
                v224 = [PPEventScorer participantsInEvent:v222];
                v225 = [v224 mutableCopy];

                if ([v225 count])
                {
                  v226 = [v222 selfAttendee];
                  v227 = [PPEventScorer emailAddressFromEKAttendee:v226];

                  if (v227)
                  {
                    [v225 removeObject:v227];
                  }

                  v303 = 0u;
                  v304 = 0u;
                  v301 = 0u;
                  v302 = 0u;
                  v228 = v225;
                  v229 = [v228 countByEnumeratingWithState:&v301 objects:&buf count:16];
                  if (v229)
                  {
                    v230 = *v302;
                    v231 = 0.0;
                    do
                    {
                      for (j = 0; j != v229; ++j)
                      {
                        if (*v302 != v230)
                        {
                          objc_enumerationMutation(v228);
                        }

                        v233 = [(NSDictionary *)v287->_pastEventTitlesAndParticipants objectForKeyedSubscript:*(*(&v301 + 1) + 8 * j)];
                        v234 = v233 == 0;

                        if (!v234)
                        {
                          v231 = v231 + 1.0;
                        }
                      }

                      v229 = [v228 countByEnumeratingWithState:&v301 objects:&buf count:16];
                    }

                    while (v229);
                  }

                  else
                  {
                    v231 = 0.0;
                  }

                  if (v231 / [v228 count] > 0.0)
                  {
                    v235 = [MEMORY[0x277CCABB0] numberWithDouble:?];
                    v236 = [v223 objectForKeyedSubscript:@"ParticipantsFeatures"];
                    v237 = [v236 objectForKeyedSubscript:@"ParticipantsInPast"];
                    [v237 setObject:v235 forKeyedSubscript:@"Value"];
                  }
                }

                v238 = v223;
              }

              else
              {
                v238 = 0;
              }

              v239 = v279;
              v240 = v238;
              if (v287)
              {
                v241 = [v222 structuredLocationWithoutPrediction];
                v242 = [v241 geoLocation];

                if (v242)
                {
                  v243 = v239;
                  v244 = [PPEventRankerDateUtils dateTwoWeeksPriorToDate:v243];
                  v245 = [PPEventScorer cacheKeyforCoreRoutineCacheForStartDate:v244 endDate:v243];
                  v246 = [routineCache objectForKey:v245];
                  if (!v246)
                  {
                    v246 = [PPRoutineSupport locationsOfInterestVisitedBetweenStartDate:v244 endDate:v243];
                    if (v246)
                    {
                      [routineCache setObject:v246 forKey:v245];
                    }
                  }

                  v303 = 0u;
                  v304 = 0u;
                  v301 = 0u;
                  v302 = 0u;
                  v247 = [v246 countByEnumeratingWithState:&v301 objects:&buf count:16];
                  if (v247)
                  {
                    v248 = *v302;
                    v249 = -1.0;
                    do
                    {
                      for (k = 0; k != v247; ++k)
                      {
                        if (*v302 != v248)
                        {
                          objc_enumerationMutation(v246);
                        }

                        [*(*(&v301 + 1) + 8 * k) distanceFromLocation:v242];
                        if (v249 == -1.0 || v249 > v251)
                        {
                          v249 = v251;
                        }
                      }

                      v247 = [v246 countByEnumeratingWithState:&v301 objects:&buf count:16];
                    }

                    while (v247);
                    if (v249 != 0.0 && v249 > 1000.0)
                    {
                      v252 = [v240 objectForKeyedSubscript:@"RoutineFeatures"];
                      v253 = [v252 objectForKeyedSubscript:@"OutsideLocationsOfInterest"];
                      [v253 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
                    }
                  }

                  else
                  {
                    v249 = -1.0;
                  }

                  v254 = [MEMORY[0x277CCABB0] numberWithDouble:{fmin(floor(v249 / 1000.0), 100.0)}];
                  v255 = [v240 objectForKeyedSubscript:@"RoutineFeatures"];
                  v256 = [v255 objectForKeyedSubscript:@"MinDistanceFromLocationsOfInterest"];
                  [v256 setObject:v254 forKeyedSubscript:@"Value"];
                }

                v257 = v240;
              }

              else
              {
                v257 = 0;
              }

              v258 = v257;
              if (v287)
              {
                v259 = [v222 startDate];
                [PPEventRankerDateUtils secondsFromMidnight:v259];
                v261 = v260;

                earliestStartTime = v287->_earliestStartTime;
                if (earliestStartTime != -1.0 && earliestStartTime + -3600.0 > v261)
                {
                  v263 = [v258 objectForKeyedSubscript:@"UnusualStartTimeFeatures"];
                  v264 = [v263 objectForKeyedSubscript:@"UnusualStartTime"];
                  [v264 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
                }

                v265 = v258;
              }

              else
              {
                v265 = 0;
              }

              v266 = [PPEventRankerFeaturizer scoreFeatureSchema:v265];
              [v266 weightedScore];
              v267 = [(PPEventScorer *)v287 scoreIsExtraordinary:v287->_rankingOptions rankingOptions:?];
              objc_autoreleasePoolPop(context);
              v268 = MEMORY[0x277D3A398];
              [v266 weightedScore];
              v270 = v269;
              v271 = [v266 prominentFeature];
              v272 = [v266 featureValues];
              v63 = [v268 eventHighlightWithEKEvent:v222 score:v271 prominentFeature:v272 features:v267 isExtraordinary:v270];

              goto LABEL_228;
            }

            emailVIPEmailAddresses = v287->_emailVIPEmailAddresses;
            if (emailVIPEmailAddresses)
            {
              v167 = emailVIPEmailAddresses;
            }

            else
            {
              *&v301 = 0;
              *(&v301 + 1) = &v301;
              *&v302 = 0x2050000000;
              v168 = getEMDaemonInterfaceClass_softClass;
              *(&v302 + 1) = getEMDaemonInterfaceClass_softClass;
              if (!getEMDaemonInterfaceClass_softClass)
              {
                *&buf = MEMORY[0x277D85DD0];
                *(&buf + 1) = 3221225472;
                v306 = __getEMDaemonInterfaceClass_block_invoke;
                v307 = &unk_2789792D0;
                v308 = &v301;
                __getEMDaemonInterfaceClass_block_invoke(&buf);
                v168 = *(*(&v301 + 1) + 24);
              }

              v169 = v168;
              _Block_object_dispose(&v301, 8);
              v170 = objc_opt_new();
              v171 = [v170 vipManager];
              if ([v171 conformsToProtocol:&unk_2847B99C0])
              {
                v172 = [v171 allVIPWaitForResult];
              }

              else
              {
                v173 = pp_default_log_handle();
                if (os_log_type_enabled(v173, OS_LOG_TYPE_FAULT))
                {
                  v275 = objc_opt_class();
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v275;
                  v276 = v275;
                  _os_log_fault_impl(&dword_23224A000, v173, OS_LOG_TYPE_FAULT, "[vipManager conformsToProtocol:@protocol(EMVIPReader_Private)] was false (class: %@) -- the VIP set will likely be empty even if the user has VIP’s", &buf, 0xCu);
                }
              }

              v174 = [v171 allVIPEmailAddresses];
              v175 = [v174 copy];
              v176 = v287->_emailVIPEmailAddresses;
              v287->_emailVIPEmailAddresses = v175;

              v167 = v287->_emailVIPEmailAddresses;
              if (!v167)
              {
LABEL_141:
                favoritesEmailAddresses = v287->_favoritesEmailAddresses;
                if (favoritesEmailAddresses)
                {
                  v186 = favoritesEmailAddresses;
                }

                else
                {
                  v192 = objc_opt_new();
                  v193 = PPFavoriteContacts();
                  v298 = 0u;
                  v299 = 0u;
                  v296 = 0u;
                  v297 = 0u;
                  v284 = v193;
                  v194 = [v284 countByEnumeratingWithState:&v296 objects:&buf count:16];
                  if (v194)
                  {
                    obja = *v297;
                    do
                    {
                      for (m = 0; m != v194; ++m)
                      {
                        if (*v297 != obja)
                        {
                          objc_enumerationMutation(v284);
                        }

                        v196 = *(*(&v296 + 1) + 8 * m);
                        v197 = objc_autoreleasePoolPush();
                        v294 = 0u;
                        v295 = 0u;
                        v292 = 0u;
                        v293 = 0u;
                        v198 = [v196 emailAddresses];
                        v199 = [v198 countByEnumeratingWithState:&v292 objects:&v301 count:16];
                        if (v199)
                        {
                          v200 = *v293;
                          do
                          {
                            for (n = 0; n != v199; ++n)
                            {
                              if (*v293 != v200)
                              {
                                objc_enumerationMutation(v198);
                              }

                              v202 = [*(*(&v292 + 1) + 8 * n) value];
                              [(NSSet *)v192 addObject:v202];
                            }

                            v199 = [v198 countByEnumeratingWithState:&v292 objects:&v301 count:16];
                          }

                          while (v199);
                        }

                        objc_autoreleasePoolPop(v197);
                      }

                      v194 = [v284 countByEnumeratingWithState:&v296 objects:&buf count:16];
                    }

                    while (v194);
                  }

                  v203 = v287->_favoritesEmailAddresses;
                  v287->_favoritesEmailAddresses = v192;

                  v186 = v287->_favoritesEmailAddresses;
                  if (!v186)
                  {
                    goto LABEL_172;
                  }
                }

                v303 = 0u;
                v304 = 0u;
                v301 = 0u;
                v302 = 0u;
                v187 = v278;
                v188 = [v187 countByEnumeratingWithState:&v301 objects:&buf count:16];
                if (v188)
                {
                  v189 = *v302;
                  v190 = 0.0;
                  do
                  {
                    for (ii = 0; ii != v188; ++ii)
                    {
                      if (*v302 != v189)
                      {
                        objc_enumerationMutation(v187);
                      }

                      if ([(NSSet *)v186 containsObject:*(*(&v301 + 1) + 8 * ii)])
                      {
                        v190 = v190 + 1.0;
                      }
                    }

                    v188 = [v187 countByEnumeratingWithState:&v301 objects:&buf count:16];
                  }

                  while (v188);
                }

                else
                {
                  v190 = 0.0;
                }

                if (v190 / [v187 count] > 0.0)
                {
                  v204 = [MEMORY[0x277CCABB0] numberWithDouble:?];
                  v205 = [v280 objectForKeyedSubscript:@"ParticipantsFeatures"];
                  v206 = [v205 objectForKeyedSubscript:@"ParticipantsFavorites"];
                  [v206 setObject:v204 forKeyedSubscript:@"Value"];
                }

LABEL_172:

                goto LABEL_173;
              }
            }

            v290 = 0u;
            v291 = 0u;
            v288 = 0u;
            v289 = 0u;
            v177 = v278;
            v178 = [v177 countByEnumeratingWithState:&v288 objects:v300 count:16];
            if (v178)
            {
              v179 = *v289;
              v180 = 0.0;
              do
              {
                for (jj = 0; jj != v178; ++jj)
                {
                  if (*v289 != v179)
                  {
                    objc_enumerationMutation(v177);
                  }

                  if ([(EAEmailAddressSet *)v167 containsObject:*(*(&v288 + 1) + 8 * jj)])
                  {
                    v180 = v180 + 1.0;
                  }
                }

                v178 = [v177 countByEnumeratingWithState:&v288 objects:v300 count:16];
              }

              while (v178);
            }

            else
            {
              v180 = 0.0;
            }

            if (v180 / [v177 count] > 0.0)
            {
              v182 = [MEMORY[0x277CCABB0] numberWithDouble:?];
              v183 = [v280 objectForKeyedSubscript:@"ParticipantsFeatures"];
              v184 = [v183 objectForKeyedSubscript:@"ParticipantsVIP"];
              [v184 setObject:v182 forKeyedSubscript:@"Value"];
            }

            goto LABEL_141;
          }

          v144 = [v142 selfAttendee];

          if (v144)
          {
            v145 = [v142 selfAttendee];
            v146 = [v145 participantStatus];

            if (v146 == 2)
            {
              v147 = [v143 objectForKeyedSubscript:@"ParticipantsFeatures"];
              v148 = [v147 objectForKeyedSubscript:@"SelfAttendeeStatusAccepted"];
              [v148 setObject:&unk_284784218 forKeyedSubscript:@"Value"];

              v303 = 0u;
              v304 = 0u;
              v301 = 0u;
              v302 = 0u;
              v149 = [v282 attendees];
              v150 = [v149 countByEnumeratingWithState:&v301 objects:&buf count:16];
              if (v150)
              {
                v151 = 0;
                v152 = *v302;
                do
                {
                  for (kk = 0; kk != v150; ++kk)
                  {
                    if (*v302 != v152)
                    {
                      objc_enumerationMutation(v149);
                    }

                    if ([*(*(&v301 + 1) + 8 * kk) participantType] == 1)
                    {
                      ++v151;
                    }
                  }

                  v150 = [v149 countByEnumeratingWithState:&v301 objects:&buf count:16];
                }

                while (v150);

                if (v151 == 2)
                {
                  v154 = [v143 objectForKeyedSubscript:@"ParticipantsFeatures"];
                  v155 = [v154 objectForKeyedSubscript:@"AttendeeCountLessThanThree"];
                  [v155 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
                }

                else if (v151 >= 11)
                {
                  v163 = [v143 objectForKeyedSubscript:@"ParticipantsFeatures"];
                  v164 = [v163 objectForKeyedSubscript:@"AtendeeCountMoreThanTen"];
                  [v164 setObject:&unk_284784218 forKeyedSubscript:@"Value"];
                }
              }

              else
              {
              }

              goto LABEL_115;
            }

            v156 = [v282 selfAttendee];
            v157 = [v156 participantStatus];

            if (v157 == 3)
            {
              v158 = [v143 objectForKeyedSubscript:@"ParticipantsFeatures"];
              v159 = [v158 objectForKeyedSubscript:@"SelfAttendeeStatusDeclined"];
LABEL_111:
              v162 = v159;
              [v159 setObject:&unk_284784218 forKeyedSubscript:@"Value"];

              goto LABEL_115;
            }

            v160 = [v282 selfAttendee];
            v161 = [v160 participantStatus];

            if (v161 == 4)
            {
              v158 = [v143 objectForKeyedSubscript:@"ParticipantsFeatures"];
              v159 = [v158 objectForKeyedSubscript:@"SelfAttendeeStatusTentative"];
              goto LABEL_111;
            }
          }

LABEL_115:
          v165 = v143;
          goto LABEL_116;
        }
      }

      v115 = [v110 objectForKeyedSubscript:@"CalendarFeatures"];
      v116 = [v115 objectForKeyedSubscript:@"Subscribed"];
      [v116 setObject:&unk_284784218 forKeyedSubscript:@"Value"];

      goto LABEL_77;
    }

    v42 = [v40 alarms];
    if ([v42 count])
    {
      v43 = v287;
      shouldConsiderAlarms = v287->_shouldConsiderAlarms;

      if (!shouldConsiderAlarms)
      {
LABEL_45:
        v64 = v41;
        goto LABEL_46;
      }

      v45 = [v41 objectForKeyedSubscript:@"EventAttributeFeatures"];
      v46 = [v45 objectForKeyedSubscript:@"AlarmSet"];
      [v46 setObject:&unk_284784218 forKeyedSubscript:@"Value"];

      v303 = 0u;
      v304 = 0u;
      v301 = 0u;
      v302 = 0u;
      v47 = [v40 alarms];
      v48 = [v47 countByEnumeratingWithState:&v301 objects:&buf count:16];
      if (v48)
      {
        v49 = *v302;
        v50 = 0.0;
        do
        {
          for (mm = 0; mm != v48; ++mm)
          {
            if (*v302 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v301 + 1) + 8 * mm);
            v53 = [v52 absoluteDate];

            if (v53)
            {
              v54 = [v52 absoluteDate];
              v55 = [v40 startDate];
              [v54 timeIntervalSinceDate:v55];
              v57 = v56;
            }

            else
            {
              [v52 relativeOffset];
              v57 = v58;
            }

            if (v50 > v57)
            {
              v50 = v57;
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v301 objects:&buf count:16];
        }

        while (v48);

        v43 = v287;
        if (v50 == 0.0)
        {
          goto LABEL_45;
        }

        v59 = [MEMORY[0x277CCABB0] numberWithDouble:{fmin(fabs(floor(v50 / 60.0 / 10.0)), 100.0)}];
        v60 = [v41 objectForKeyedSubscript:@"EventAttributeFeatures"];
        v61 = [v60 objectForKeyedSubscript:@"AlarmTime"];
        [v61 setObject:v59 forKeyedSubscript:@"Value"];
      }

      else
      {
      }
    }

    else
    {
    }

    v43 = v287;
    goto LABEL_45;
  }

  v62 = pp_default_log_handle();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_23224A000, v62, OS_LOG_TYPE_ERROR, "PPEventRankerFeatureSchema is nil", &buf, 2u);
  }

  v63 = [MEMORY[0x277D3A398] eventHighlightWithEKEvent:v281 score:8 prominentFeature:MEMORY[0x277CBEBF8] features:0 isExtraordinary:0.0];
LABEL_228:

  v273 = *MEMORY[0x277D85DE8];

  return v63;
}

+ (id)cacheKeyforCoreRoutineCacheForStartDate:(void *)a3 endDate:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_new();
  [v6 setFormatOptions:275];
  v7 = MEMORY[0x277CCACA8];
  v8 = [v6 stringFromDate:v5];

  v9 = [v6 stringFromDate:v4];

  v10 = [v7 stringWithFormat:@"%@%@", v8, v9];

  return v10;
}

+ (id)participantsInEvent:(uint64_t)a1
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_autoreleasePoolPush();
  v6 = [v2 attendees];
  objc_autoreleasePoolPop(v5);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(PPEventScorer *)v3 emailAddressFromEKAttendee:v11];
        if (v13)
        {
          [v4 addObject:v13];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)emailAddressFromEKAttendee:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if ([v2 participantType] == 1)
  {
    v3 = [v2 emailAddress];
    if ([v3 hasPrefix:@"mailto:"])
    {
      v4 = [v3 substringFromIndex:7];

      v3 = v4;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PPEventScorer)init
{
  v3 = +[PPTrialWrapper sharedInstance];
  v4 = [(PPEventScorer *)self initWithPastEventTitlesAndParticipants:MEMORY[0x277CBEC10] andEarliestStartTime:1 shouldConsiderAlarms:0 withOptions:v3 trialWrapper:-1.0];

  return v4;
}

- (PPEventScorer)initWithPastEventTitlesAndParticipants:(id)a3 andEarliestStartTime:(double)a4 shouldConsiderAlarms:(BOOL)a5 withOptions:(int)a6 trialWrapper:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a7;
  v31.receiver = self;
  v31.super_class = PPEventScorer;
  v15 = [(PPEventScorer *)&v31 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_pastEventTitlesAndParticipants, a3);
    v16->_earliestStartTime = a4;
    v16->_shouldConsiderAlarms = a5;
    emailVIPEmailAddresses = v16->_emailVIPEmailAddresses;
    v16->_emailVIPEmailAddresses = 0;

    favoritesEmailAddresses = v16->_favoritesEmailAddresses;
    v16->_favoritesEmailAddresses = 0;

    v16->_rankingOptions = a6;
    objc_storeStrong(&v16->_trialWrapper, a7);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [(NSDictionary *)v16->_pastEventTitlesAndParticipants allKeys];
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v28;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v22 += [*(*(&v27 + 1) + 8 * i) containsString:@"@"] ^ 1;
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    v16->_pastTitlesCount = v22;
    if (initWithPastEventTitlesAndParticipants_andEarliestStartTime_shouldConsiderAlarms_withOptions_trialWrapper__once != -1)
    {
      dispatch_once(&initWithPastEventTitlesAndParticipants_andEarliestStartTime_shouldConsiderAlarms_withOptions_trialWrapper__once, &__block_literal_global_13454);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __123__PPEventScorer_initWithPastEventTitlesAndParticipants_andEarliestStartTime_shouldConsiderAlarms_withOptions_trialWrapper___block_invoke()
{
  v0 = objc_opt_new();
  v1 = routineCache;
  routineCache = v0;

  v2 = routineCache;

  return [v2 setCountLimit:1];
}

+ (void)clearAssetCache
{
  [_configCache removeAllObjects];

  +[PPEventRankerFeaturizer clearAssetCache];
}

+ (void)setLocationsOfInterestLocations:(id)a3 withReferenceDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PPEventRankerDateUtils dateTwoWeeksPriorToDate:v6];
  v9 = [(PPEventScorer *)a1 cacheKeyforCoreRoutineCacheForStartDate:v8 endDate:v6];

  [routineCache setObject:v7 forKey:v9];
}

+ (void)enrichDictionary:(id)a3 withEvent:(id)a4 interningSet:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PPEventScorer_enrichDictionary_withEvent_interningSet___block_invoke;
  aBlock[3] = &unk_2789751B8;
  v33 = v10;
  v40 = v33;
  v11 = _Block_copy(aBlock);
  v12 = [v9 title];
  v13 = v11[2](v11, v12);

  if (v13)
  {
    v14 = [v8 objectForKeyedSubscript:v13];

    if (v14)
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = [v8 objectForKeyedSubscript:v13];
      v17 = [v15 numberWithInteger:{objc_msgSend(v16, "integerValue") + 1}];
      [v8 setObject:v17 forKeyedSubscript:v13];
    }

    else
    {
      [v8 setObject:&unk_284784218 forKeyedSubscript:v13];
    }
  }

  v31 = v13;
  v34 = v9;
  [(PPEventScorer *)a1 participantsInEvent:v9];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = v38 = 0u;
  v18 = [v30 allObjects];
  v32 = v11;
  v19 = [v18 _pas_mappedArrayWithTransform:v11];

  v20 = [v19 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v35 + 1) + 8 * i);
        v25 = [v8 objectForKeyedSubscript:v24];

        if (v25)
        {
          v26 = MEMORY[0x277CCABB0];
          v27 = [v8 objectForKeyedSubscript:v24];
          v28 = [v26 numberWithInteger:{objc_msgSend(v27, "integerValue") + 1}];
          [v8 setObject:v28 forKeyedSubscript:v24];
        }

        else
        {
          [v8 setObject:&unk_284784218 forKeyedSubscript:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v21);
  }

  v29 = *MEMORY[0x277D85DE8];
}

id __57__PPEventScorer_enrichDictionary_withEvent_interningSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) member:v3];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [v4 copy];

      [*(a1 + 32) addObject:v8];
      v7 = v8;
      v4 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end