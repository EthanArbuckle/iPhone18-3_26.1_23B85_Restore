@interface _PSMessagesPinningSuggester
- (BOOL)loadPSConfig;
- (_CDInteractionStore)interactionStore;
- (_PSMessagesPinningSuggester)initWithRegularityThreshold:(double)threshold intensityThreshold:(double)intensityThreshold regularityWeight:(double)weight intensityWeight:(double)intensityWeight minimalInteration:(int64_t)interation minimalUniqueDaysInteracted:(int64_t)interacted interactionStore:(id)store lookbackWindow:(double)self0 outgoingOnly:(BOOL)self1;
- (id)chatGuidsBasedOnRegularityAndIntensityWithMaxSuggestions:(int64_t)suggestions referenceDate:(id)date minimumDaysOfHistory:(int64_t)history maxInteractionsForQuery:(int64_t)query;
- (id)chatGuidsForMessagesPinningWithMaxSuggestions:(int64_t)suggestions;
- (id)chatGuidsForPinningHeuristicApproachWithMaxSuggestions:(int64_t)suggestions forReferenceDate:(id)date;
- (id)getPayloadOfFeedback:(id)feedback;
- (void)dealloc;
- (void)provideMessagesPinningFeedback:(id)feedback;
- (void)submitMessagesPinningFeedback:(id)feedback;
- (void)updateModelProperties:(id)properties;
@end

@implementation _PSMessagesPinningSuggester

- (BOOL)loadPSConfig
{
  v3 = +[_PSConfig messagesPinningConfig];
  psMessagesPinningConfig = self->_psMessagesPinningConfig;
  self->_psMessagesPinningConfig = v3;

  v5 = self->_psMessagesPinningConfig;
  if (v5)
  {
    [(_PSMessagesPinningSuggester *)self updateModelProperties:self->_psMessagesPinningConfig];
    v6 = +[_PSLogging messagePinningChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_INFO, "Loaded psConfig", v8, 2u);
    }
  }

  return v5 != 0;
}

- (void)updateModelProperties:(id)properties
{
  propertiesCopy = properties;
  [(_PSMessagesPinningSuggester *)self setConfigVersion:@"2"];
  v8 = [propertiesCopy objectForKeyedSubscript:@"2"];

  v5 = [v8 objectForKeyedSubscript:@"_PSMessagesPinningBoostGroups"];
  -[_PSMessagesPinningSuggester setBoostGroups:](self, "setBoostGroups:", [v5 integerValue] != 0);

  v6 = [v8 objectForKeyedSubscript:@"_PSMessagesPinningOutgoingOnly"];
  -[_PSMessagesPinningSuggester setOutgoingOnly:](self, "setOutgoingOnly:", [v6 integerValue] != 0);

  v7 = [v8 objectForKeyedSubscript:@"_PSMessagesPinningBoostIndividualFavorites"];
  -[_PSMessagesPinningSuggester setBoostIndividualFavorites:](self, "setBoostIndividualFavorites:", [v7 integerValue] != 0);
}

- (_PSMessagesPinningSuggester)initWithRegularityThreshold:(double)threshold intensityThreshold:(double)intensityThreshold regularityWeight:(double)weight intensityWeight:(double)intensityWeight minimalInteration:(int64_t)interation minimalUniqueDaysInteracted:(int64_t)interacted interactionStore:(id)store lookbackWindow:(double)self0 outgoingOnly:(BOOL)self1
{
  storeCopy = store;
  v29.receiver = self;
  v29.super_class = _PSMessagesPinningSuggester;
  v22 = [(_PSMessagesPinningSuggester *)&v29 init];
  v23 = v22;
  if (v22)
  {
    v22->_regularityThreshold = threshold;
    v22->_intensityThreshold = intensityThreshold;
    v22->_regularityWeight = weight;
    v22->_intensityWeight = intensityWeight;
    v22->_minimalInteractions = interation;
    v22->_minimalUniqueDaysInteracted = interacted;
    if (storeCopy)
    {
      objc_storeStrong(&v22->_interactionStore, store);
    }

    v23->_lookbackWindow = window;
    v23->_outgoingOnly = only;
    v23->_lock._os_unfair_lock_opaque = 0;
    v24 = objc_alloc(MEMORY[0x1E696B0B8]);
    v25 = [v24 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    connection = v23->_connection;
    v23->_connection = v25;

    v27 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)v23->_connection setRemoteObjectInterface:v27];

    [(NSXPCConnection *)v23->_connection resume];
    [(_PSMessagesPinningSuggester *)v23 loadPSConfig];
  }

  return v23;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _PSMessagesPinningSuggester;
  [(_PSMessagesPinningSuggester *)&v3 dealloc];
}

- (_CDInteractionStore)interactionStore
{
  os_unfair_lock_lock(&self->_lock);
  interactionStore = self->_interactionStore;
  if (!interactionStore)
  {
    v4 = MEMORY[0x1E69978F8];
    defaultDatabaseDirectory = [MEMORY[0x1E69978F8] defaultDatabaseDirectory];
    v6 = [v4 storeWithDirectory:defaultDatabaseDirectory readOnly:1];
    v7 = self->_interactionStore;
    self->_interactionStore = v6;

    interactionStore = self->_interactionStore;
  }

  v8 = interactionStore;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)chatGuidsForMessagesPinningWithMaxSuggestions:(int64_t)suggestions
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  connection = self->_connection;
  if (connection)
  {
    date = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_15];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:suggestions];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77___PSMessagesPinningSuggester_chatGuidsForMessagesPinningWithMaxSuggestions___block_invoke_44;
    v12[3] = &unk_1E7C243A0;
    v12[4] = &v13;
    [date rankedMessagesPinsWithMaxSuggestions:v7 reply:v12];

    if ([v14[5] count])
    {
      v8 = v14[5];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = v8;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v9 = [(_PSMessagesPinningSuggester *)self chatGuidsForPinningHeuristicApproachWithMaxSuggestions:suggestions forReferenceDate:date];
  }

  v10 = v9;

  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)chatGuidsForPinningHeuristicApproachWithMaxSuggestions:(int64_t)suggestions forReferenceDate:(id)date
{
  dateCopy = date;
  2500 = [(_PSMessagesPinningSuggester *)self chatGuidsBasedOnRegularityAndIntensityWithMaxSuggestions:suggestions referenceDate:dateCopy minimumDaysOfHistory:+[_PSPrivacyDataRetentionPeriod maxInteractionsForQuery:"numberOfDaysInMonth"], 2500];

  return 2500;
}

- (id)chatGuidsBasedOnRegularityAndIntensityWithMaxSuggestions:(int64_t)suggestions referenceDate:(id)date minimumDaysOfHistory:(int64_t)history maxInteractionsForQuery:(int64_t)query
{
  v204[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if ([MEMORY[0x1E69978B8] isRunningOnInternalBuild])
  {
    v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PeopleSuggester.MessagesPinning"];
    if ([v9 integerForKey:@"TestModeEnabled"] == 1)
    {
      [(_PSMessagesPinningSuggester *)self setMinimalInteractions:0];
      [(_PSMessagesPinningSuggester *)self setMinimalUniqueDaysInteracted:0];
      history = 0;
    }
  }

  selfCopy = self;
  outgoingOnly = [(_PSMessagesPinningSuggester *)self outgoingOnly];
  v11 = MEMORY[0x1E696AE18];
  v12 = +[_PSConstants mobileMessagesBundleId];
  v13 = v12;
  if (outgoingOnly)
  {
    v204[0] = v12;
    v14 = +[_PSConstants macMessagesBundleId];
    v204[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v204 count:2];
    [v11 predicateWithFormat:@"(bundleId IN %@) AND (mechanism == %@) AND (direction IN %@)", v15, &unk_1F2D8B598, &unk_1F2D8C270];
  }

  else
  {
    v203[0] = v12;
    v14 = +[_PSConstants macMessagesBundleId];
    v203[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:2];
    [v11 predicateWithFormat:@"(bundleId IN %@) AND (mechanism == %@)", v15, &unk_1F2D8B598, v144];
  }
  v16 = ;

  v17 = MEMORY[0x1E696AE18];
  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:(-86400 * history)];
  v19 = [v17 predicateWithFormat:@"startDate < %@", v18];

  v20 = MEMORY[0x1E696AB28];
  v202[0] = v16;
  v202[1] = v19;
  v152 = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  interactionStore = [(_PSMessagesPinningSuggester *)selfCopy interactionStore];
  v192 = 0;
  v147 = v22;
  v24 = [interactionStore queryInteractionsUsingPredicate:v22 sortDescriptors:0 limit:1 error:&v192];
  v25 = v192;

  v148 = v25;
  if (v25)
  {
    v26 = +[_PSLogging messagePinningChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_PSMessagesPinningSuggester chatGuidsBasedOnRegularityAndIntensityWithMaxSuggestions:referenceDate:minimumDaysOfHistory:maxInteractionsForQuery:];
    }

LABEL_11:
    v27 = MEMORY[0x1E695E0F0];
    goto LABEL_141;
  }

  if (![v24 count])
  {
    v26 = +[_PSLogging messagePinningChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v26, OS_LOG_TYPE_DEFAULT, "Minimum Days of History Check Failed", buf, 2u);
    }

    goto LABEL_11;
  }

  [(_PSMessagesPinningSuggester *)selfCopy lookbackWindow];
  v150 = [dateCopy dateByAddingTimeInterval:-v28];
  v150 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate >= %@", v150];

  v163 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v168 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v161 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v162 = [MEMORY[0x1E695DFA8] set];
  v159 = +[_PSContactResolver handlesForContactFavorites];
  v145 = MEMORY[0x1E695E0F0];
  queryCopy = query;
  v152 = v150;
  v146 = v16;
  v171 = v31;
  v160 = v32;
  v165 = v30;
  while (2)
  {
    v33 = v24;
    context = objc_autoreleasePoolPush();
    v34 = MEMORY[0x1E696AB28];
    v201[0] = v16;
    v201[1] = v152;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v201 count:2];
    v36 = [v34 andPredicateWithSubpredicates:v35];

    v37 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    interactionStore2 = [(_PSMessagesPinningSuggester *)selfCopy interactionStore];
    v153 = v37;
    v200 = v37;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v200 count:1];
    v191 = 0;
    v154 = v36;
    v40 = [interactionStore2 queryInteractionsUsingPredicate:v36 sortDescriptors:v39 limit:query error:&v191];
    v41 = v191;

    v156 = v41;
    v157 = v40;
    if (v41)
    {
      obj = +[_PSLogging messagePinningChannel];
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v199 = v41;
        _os_log_error_impl(&dword_1B5ED1000, obj, OS_LOG_TYPE_ERROR, "Error while querying interation store %@", buf, 0xCu);
      }

      v24 = v40;
      v42 = v165;
LABEL_18:
      v43 = v161;
      goto LABEL_77;
    }

    lastObject = [v40 lastObject];
    startDate = [lastObject startDate];
    [v150 timeIntervalSinceDate:startDate];
    if (v46 < 0.0)
    {
      v47 = [v40 count];

      if (v47 != queryCopy)
      {
        v16 = v146;
        v42 = v165;
        goto LABEL_24;
      }

      v48 = MEMORY[0x1E696AE18];
      lastObject = [v40 lastObject];
      startDate = [lastObject startDate];
      v49 = [v48 predicateWithFormat:@"((startDate >= %@) AND (startDate < %@))", v150, startDate];

      v152 = v49;
      v16 = v146;
    }

    v42 = v165;

LABEL_24:
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v24 = v157;
    obj = v157;
    v174 = [obj countByEnumeratingWithState:&v187 objects:v197 count:16];
    if (!v174)
    {
      goto LABEL_18;
    }

    v173 = *v188;
    do
    {
      for (i = 0; i != v174; ++i)
      {
        if (*v188 != v173)
        {
          objc_enumerationMutation(obj);
        }

        v51 = *(*(&v187 + 1) + 8 * i);
        v52 = objc_autoreleasePoolPush();
        domainIdentifier = [v51 domainIdentifier];
        v54 = [domainIdentifier componentsSeparatedByString:@""];;
        lastObject2 = [v54 lastObject];

        if (domainIdentifier)
        {
          v56 = lastObject2 == 0;
        }

        else
        {
          v56 = 1;
        }

        if (v56)
        {
          goto LABEL_74;
        }

        recipients = [v51 recipients];
        if ([recipients count] != 1 || !objc_msgSend(v51, "direction"))
        {
          goto LABEL_45;
        }

        recipients2 = [v51 recipients];
        firstObject = [recipients2 firstObject];
        personId = [firstObject personId];

        if (personId)
        {
          recipients3 = [v51 recipients];
          firstObject2 = [recipients3 firstObject];
          recipients = [firstObject2 identifier];

          recipients4 = [v51 recipients];
          firstObject3 = [recipients4 firstObject];
          personId2 = [firstObject3 personId];

          v66 = [v160 objectForKeyedSubscript:recipients];

          if (v66)
          {
            v67 = [v160 objectForKeyedSubscript:recipients];

            personId2 = v67;
          }

          else
          {
            [v160 setObject:personId2 forKeyedSubscript:recipients];
          }

          v68 = [v161 objectForKeyedSubscript:personId2];

          if (v68)
          {
            v69 = [v161 objectForKeyedSubscript:personId2];

            v70 = [v69 componentsSeparatedByString:@""];;
            lastObject3 = [v70 lastObject];

            lastObject2 = lastObject3;
            domainIdentifier = v69;
          }

          else
          {
            [v161 setObject:domainIdentifier forKeyedSubscript:personId2];
          }

          if ([v159 containsObject:recipients])
          {
            [v162 addObject:domainIdentifier];
          }

LABEL_45:
        }

        if ([v51 direction] == 1 || objc_msgSend(v51, "direction") == 3)
        {
          recipients5 = [v51 recipients];
          if ([recipients5 count] == 1)
          {
            recipients6 = [v51 recipients];
            firstObject4 = [recipients6 firstObject];
            personId3 = [firstObject4 personId];
            v166 = firstObject4;
            v167 = recipients6;
            if (!personId3)
            {

              personId3 = 0;
              v31 = v171;
              v81 = recipients5;
              goto LABEL_73;
            }

            v74 = 1;
          }

          else
          {
            v74 = 0;
          }

          v75 = 1;
        }

        else
        {
          v74 = 0;
          v75 = 0;
        }

        sender = [v51 sender];
        personId4 = [sender personId];
        if (personId4)
        {
          v78 = 0;
        }

        else
        {
          v78 = [v51 direction] == 0;
        }

        if (v74)
        {

          v31 = v171;
          if ((v75 & 1) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_59;
        }

        v31 = v171;
        if (!v75)
        {
LABEL_62:
          if (v78)
          {
            goto LABEL_74;
          }

LABEL_63:
          v79 = [v168 objectForKey:lastObject2];

          if (!v79)
          {
            [v168 setObject:domainIdentifier forKey:lastObject2];
          }

          startDate2 = [v51 startDate];
          v81 = [_PSMessagesPinningUtilities startOfDayForDate:startDate2];

          v82 = [v165 objectForKey:lastObject2];

          if (v82)
          {
            v83 = [v165 objectForKey:lastObject2];
            intValue = [v83 intValue];

            v85 = [MEMORY[0x1E696AD98] numberWithInt:(intValue + 1)];
            [v165 setObject:v85 forKey:lastObject2];
          }

          else
          {
            [v165 setObject:&unk_1F2D8B5E0 forKey:lastObject2];
          }

          v86 = [v31 objectForKey:lastObject2];

          if (v86)
          {
            v87 = [v31 objectForKey:lastObject2];
            [v87 addObject:v81];
          }

          else
          {
            v87 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v81, 0}];
            [v31 setObject:v87 forKey:lastObject2];
          }

          [v163 addObject:v81];
LABEL_73:

          goto LABEL_74;
        }

LABEL_59:

        if (!v78)
        {
          goto LABEL_63;
        }

LABEL_74:

        objc_autoreleasePoolPop(v52);
      }

      v174 = [obj countByEnumeratingWithState:&v187 objects:v197 count:16];
    }

    while (v174);
    v16 = v146;
    v24 = v157;
    v42 = v165;
    v32 = v160;
    v43 = v161;
LABEL_77:

    objc_autoreleasePoolPop(context);
    if (!v156)
    {
      query = queryCopy;
      if ([v24 count] < queryCopy)
      {
        allKeys = [v42 allKeys];
        v183 = 0u;
        v184 = 0u;
        v185 = 0u;
        v186 = 0u;
        v89 = [allKeys countByEnumeratingWithState:&v183 objects:v196 count:16];
        if (v89)
        {
          v90 = v89;
          v91 = *v184;
          do
          {
            for (j = 0; j != v90; ++j)
            {
              if (*v184 != v91)
              {
                objc_enumerationMutation(allKeys);
              }

              v93 = *(*(&v183 + 1) + 8 * j);
              v94 = [v165 objectForKey:v93];
              v95 = [v31 objectForKey:v93];
              v96 = [v95 count];

              LODWORD(v95) = [v94 intValue];
              if ([(_PSMessagesPinningSuggester *)selfCopy minimalInteractions]> v95 || v96 < [(_PSMessagesPinningSuggester *)selfCopy minimalUniqueDaysInteracted])
              {
                [v165 removeObjectForKey:v93];
                [v31 removeObjectForKey:v93];
              }
            }

            v90 = [allKeys countByEnumeratingWithState:&v183 objects:v196 count:16];
          }

          while (v90);
        }

        v97 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:suggestions];
        v98 = [v163 count];
        v179 = 0u;
        v180 = 0u;
        v181 = 0u;
        v182 = 0u;
        v99 = v165;
        v100 = [v99 countByEnumeratingWithState:&v179 objects:v195 count:16];
        if (v100)
        {
          v101 = v100;
          v102 = *v180;
          v103 = v98;
          do
          {
            for (k = 0; k != v101; ++k)
            {
              if (*v180 != v102)
              {
                objc_enumerationMutation(v99);
              }

              v105 = *(*(&v179 + 1) + 8 * k);
              v106 = [v171 objectForKey:v105];
              v107 = [v106 count] / v103;

              v108 = [v99 objectForKey:v105];
              v109 = [v108 intValue] / v103;

              v110 = [v168 objectForKey:v105];
              v111 = [v162 containsObject:v110];
              if ([(_PSMessagesPinningSuggester *)selfCopy boostIndividualFavorites]&& (v111 & 1) != 0 || ([(_PSMessagesPinningSuggester *)selfCopy regularityThreshold], v107 >= v117) && ([(_PSMessagesPinningSuggester *)selfCopy intensityThreshold], v109 >= v118))
              {
                [(_PSMessagesPinningSuggester *)selfCopy regularityWeight];
                v113 = v112;
                [(_PSMessagesPinningSuggester *)selfCopy intensityWeight];
                v194[0] = v105;
                v113 = [MEMORY[0x1E696AD98] numberWithDouble:v109 * v114 + v107 * v113];
                v194[1] = v113;
                v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:2];

                if ([v97 count])
                {
                  [v97 insertObject:v116 atIndex:{objc_msgSend(v97, "indexOfObject:inSortedRange:options:usingComparator:", v116, 0, objc_msgSend(v97, "count"), 1024, &__block_literal_global_91)}];
                }

                else
                {
                  [v97 addObject:v116];
                }
              }
            }

            v101 = [v99 countByEnumeratingWithState:&v179 objects:v195 count:16];
          }

          while (v101);
        }

        orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v120 = v97;
        v121 = [v120 countByEnumeratingWithState:&v175 objects:v193 count:16];
        if (v121)
        {
          v122 = v121;
          v123 = 0;
          v124 = *v176;
          do
          {
            for (m = 0; m != v122; ++m)
            {
              if (*v176 != v124)
              {
                objc_enumerationMutation(v120);
              }

              firstObject5 = [*(*(&v175 + 1) + 8 * m) firstObject];
              v127 = [v168 objectForKey:firstObject5];
              [orderedSet addObject:v127];
              if ([firstObject5 containsString:@"chat"])
              {
                v123 |= [orderedSet count] <= suggestions;
              }
            }

            v122 = [v120 countByEnumeratingWithState:&v175 objects:v193 count:16];
          }

          while (v122);
        }

        else
        {
          v123 = 0;
        }

        if ([(_PSMessagesPinningSuggester *)selfCopy boostIndividualFavorites])
        {
          v128 = [orderedSet copy];
          v129 = [orderedSet count];
          if (v129 - 1 >= 0)
          {
            v130 = v129;
            do
            {
              v131 = [v128 objectAtIndexedSubscript:--v130];
              if ([v162 containsObject:v131])
              {
                [orderedSet removeObject:v131];
                [orderedSet insertObject:v131 atIndex:0];
              }
            }

            while (v130 > 0);
          }
        }

        array = [orderedSet array];
        v133 = [orderedSet count];
        if (v133 >= suggestions)
        {
          suggestionsCopy = suggestions;
        }

        else
        {
          suggestionsCopy = v133;
        }

        v135 = [array subarrayWithRange:{0, suggestionsCopy}];
        v136 = [v135 mutableCopy];

        if (-[_PSMessagesPinningSuggester boostGroups](selfCopy, "boostGroups") && ((-[_PSMessagesPinningSuggester boostIndividualFavorites](selfCopy, "boostIndividualFavorites") | v123) & 1) == 0 && [v120 count] >= 4 && objc_msgSend(v120, "count") >= 4)
        {
          v137 = 3;
          while (1)
          {
            v138 = [v120 objectAtIndexedSubscript:v137];
            firstObject6 = [v138 firstObject];

            if ([firstObject6 containsString:@"chat"])
            {
              break;
            }

            v140 = [v120 count];
            if (v137 <= 3 && ++v137 < v140)
            {
              continue;
            }

            goto LABEL_139;
          }

          v141 = [v168 objectForKey:firstObject6];
          [v136 removeLastObject];
          [v136 addObject:v141];
        }

LABEL_139:
        v145 = [v136 copy];

        v16 = v146;
        v24 = v157;
        v42 = v165;
        v31 = v171;
        v32 = v160;
        v43 = v161;
        break;
      }

      continue;
    }

    break;
  }

  v26 = v150;
  v27 = v145;
LABEL_141:

  v142 = *MEMORY[0x1E69E9840];

  return v27;
}

- (void)provideMessagesPinningFeedback:(id)feedback
{
  connection = self->_connection;
  feedbackCopy = feedback;
  if (connection)
  {
    v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_97_0];
    [v5 provideMessagesPinningFeedback:feedbackCopy];

    v6 = v5;
  }

  else
  {
    [(_PSMessagesPinningSuggester *)self submitMessagesPinningFeedback:feedbackCopy];
    v6 = feedbackCopy;
  }
}

- (void)submitMessagesPinningFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = [[_PS_TPSDiscoverabilitySignal alloc] initWithIdentifier:@"com.apple.messages.pinningUIShown"];
  [(_PS_TPSDiscoverabilitySignal *)v5 donateSignalWithCompletion:&__block_literal_global_103];
  actionType = [feedbackCopy actionType];
  v7 = +[_PSLogging feedbackChannel];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (actionType == 1)
  {
    if (v8)
    {
      *buf = 0;
      v9 = "Feedback for messages pinning onboarding: Acceptance";
      goto LABEL_9;
    }
  }

  else if (actionType)
  {
    if (v8)
    {
      *buf = 0;
      v9 = "Feedback for messages pinning onboarding: unknown action type";
      goto LABEL_9;
    }
  }

  else if (v8)
  {
    *buf = 0;
    v9 = "Feedback for messages pinning onboarding: Skip";
LABEL_9:
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_INFO, v9, buf, 2u);
  }

  v11 = [(_PSMessagesPinningSuggester *)self getPayloadOfFeedback:feedbackCopy];
  v10 = v11;
  AnalyticsSendEventLazy();
}

- (id)getPayloadOfFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = +[_PSMessagesPinningUtilities actionTypeToString:](_PSMessagesPinningUtilities, "actionTypeToString:", [feedbackCopy actionType]);
  v35 = v5;
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"actionType"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:null forKeyedSubscript:@"actionType"];
  }

  actualPinnings = [feedbackCopy actualPinnings];
  v8 = [_PSMessagesPinningUtilities suggestionsToString:actualPinnings];

  v34 = v8;
  if (v8)
  {
    [v4 setObject:v8 forKeyedSubscript:@"actualPinnings"];
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:null2 forKeyedSubscript:@"actualPinnings"];
  }

  onboardingSuggestions = [feedbackCopy onboardingSuggestions];
  v11 = [_PSMessagesPinningUtilities suggestionsToString:onboardingSuggestions];

  v33 = v11;
  if (v11)
  {
    [v4 setObject:v11 forKeyedSubscript:@"onboardingSuggestions"];
  }

  else
  {
    null3 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:null3 forKeyedSubscript:@"onboardingSuggestions"];
  }

  actualPinnings2 = [feedbackCopy actualPinnings];
  v14 = [actualPinnings2 count];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  [v4 setObject:v15 forKeyedSubscript:@"numOfActualPinnings"];

  onboardingSuggestions2 = [feedbackCopy onboardingSuggestions];
  v17 = [onboardingSuggestions2 count];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
  [v4 setObject:v18 forKeyedSubscript:@"numOfSuggestions"];

  actualPinnings3 = [feedbackCopy actualPinnings];
  v20 = [_PSMessagesPinningUtilities chatGuidsFromSuggestions:actualPinnings3];

  onboardingSuggestions3 = [feedbackCopy onboardingSuggestions];
  v22 = [_PSMessagesPinningUtilities chatGuidsFromSuggestions:onboardingSuggestions3];

  v23 = [_PSMessagesPinningUtilities intersectionsOfActualPinnings:v20 fromTopN:3 suggestions:v22];
  if (v23)
  {
    [v4 setObject:v23 forKeyedSubscript:@"numOfGoodSuggestionsInTop3"];
  }

  else
  {
    null4 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:null4 forKeyedSubscript:@"numOfGoodSuggestionsInTop3"];
  }

  v25 = [_PSMessagesPinningUtilities intersectionsOfActualPinnings:v20 fromTopN:9 suggestions:v22];
  if (v25)
  {
    [v4 setObject:v25 forKeyedSubscript:@"numOfGoodSuggestionsInTop9"];
  }

  else
  {
    null5 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:null5 forKeyedSubscript:@"numOfGoodSuggestionsInTop9"];
  }

  eventDate = [feedbackCopy eventDate];
  v28 = [_PSMessagesPinningUtilities dateToString:eventDate];

  if (v28)
  {
    [v4 setObject:v28 forKeyedSubscript:@"eventDate"];
  }

  else
  {
    null6 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:null6 forKeyedSubscript:@"eventDate"];
  }

  v30 = +[_PSMessagesPinningUtilities interactionMethodToString:](_PSMessagesPinningUtilities, "interactionMethodToString:", [feedbackCopy interactionMethod]);
  if (v30)
  {
    [v4 setObject:v30 forKeyedSubscript:@"trialId"];
  }

  else
  {
    null7 = [MEMORY[0x1E695DFB0] null];
    [v4 setObject:null7 forKeyedSubscript:@"trialId"];
  }

  return v4;
}

- (void)chatGuidsBasedOnRegularityAndIntensityWithMaxSuggestions:referenceDate:minimumDaysOfHistory:maxInteractionsForQuery:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Error while querying interation store for minimumDaysOfHistoryCheck %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end