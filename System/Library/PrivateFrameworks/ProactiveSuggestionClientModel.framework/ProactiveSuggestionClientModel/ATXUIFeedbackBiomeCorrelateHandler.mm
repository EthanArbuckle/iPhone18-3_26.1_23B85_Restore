@interface ATXUIFeedbackBiomeCorrelateHandler
+ (id)uiFeedbackCorrelateHandler;
- (BOOL)_proactiveSuggestionsContainEqualExecutablesWithSuggestion1:(id)suggestion1 suggestion2:(id)suggestion2;
- (id)boxedExecutableHashForProactiveSuggestion:(id)suggestion;
- (id)correlateWithCurrentEvent:(id)event;
- (void)receiveCurrentEvent:(id)event;
- (void)receivePriorEvent:(id)event;
- (void)updateMostRecentlySeenBlendingUICacheUpdateUUID:(id)d;
@end

@implementation ATXUIFeedbackBiomeCorrelateHandler

+ (id)uiFeedbackCorrelateHandler
{
  v2 = objc_alloc(objc_opt_class());
  v3 = objc_opt_new();
  v4 = [v2 initWithInitialContext:v3];

  return v4;
}

- (void)updateMostRecentlySeenBlendingUICacheUpdateUUID:(id)d
{
  dCopy = d;
  context = [(BPSCorrelateHandler *)self context];
  [context updatePinnedBlendingModelUICacheUpdateUUID:dCopy];

  context2 = [(BPSCorrelateHandler *)self context];
  [context2 pruneContextStateOlderThanBlendingUUID:dCopy];
}

- (void)receivePriorEvent:(id)event
{
  eventCopy = event;
  context = [(BPSCorrelateHandler *)self context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    eventBody = [eventCopy eventBody];
    v7 = eventBody;
    if (eventBody)
    {
      if ([eventBody conformsToProtocol:&unk_1F5A51B48])
      {
        [context addContext:v7];
        v8 = __atxlog_handle_blending_ecosystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [ATXUIFeedbackBiomeCorrelateHandler receivePriorEvent:];
        }

LABEL_13:

        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [context addBlendingModelUICacheUpdate:v7];
        v8 = __atxlog_handle_blending_ecosystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(ATXUIFeedbackBiomeCorrelateHandler *)self receivePriorEvent:v7];
        }

        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [context addClientModelCacheUpdate:v7];
        v8 = __atxlog_handle_blending_ecosystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(ATXUIFeedbackBiomeCorrelateHandler *)self receivePriorEvent:v7];
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_14:
}

- (void)receiveCurrentEvent:(id)event
{
  v3 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ATXUIFeedbackBiomeCorrelateHandler receiveCurrentEvent:];
  }
}

- (id)correlateWithCurrentEvent:(id)event
{
  v160 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v93 = objc_opt_new();
  v5 = eventCopy;
  context = [(BPSCorrelateHandler *)self context];
  v6Context = [context context];
  sessionEndDate = [v5 sessionEndDate];
  [v6Context updateTimeContextWithDate:sessionEndDate];

  v101 = objc_opt_new();
  v100 = objc_opt_new();
  v99 = objc_opt_new();
  blendingUICacheUpdateUUID = [v5 blendingUICacheUpdateUUID];
  v10 = [context clientModelCacheUpdatesForUICacheUpdateUUID:blendingUICacheUpdateUUID];

  v94 = v5;
  blendingUICacheUpdateUUID2 = [v5 blendingUICacheUpdateUUID];
  v92 = context;
  v12 = [context blendingModelUICacheUpdateForUUID:blendingUICacheUpdateUUID2];

  if ([v10 count] && v12)
  {
    v91 = v12;
    v89 = v6Context;
    v13 = objc_opt_new();
    context = objc_autoreleasePoolPush();
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v88 = v10;
    obj = v10;
    v14 = [obj countByEnumeratingWithState:&v146 objects:v159 count:16];
    if (v14)
    {
      v15 = v14;
      v108 = *v147;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v147 != v108)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v146 + 1) + 8 * i);
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          suggestions = [v17 suggestions];
          v19 = [suggestions countByEnumeratingWithState:&v142 objects:v158 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v143;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v143 != v21)
                {
                  objc_enumerationMutation(suggestions);
                }

                v23 = *(*(&v142 + 1) + 8 * j);
                uuid = [v23 uuid];
                [v13 setObject:v23 forKeyedSubscript:uuid];
              }

              v20 = [suggestions countByEnumeratingWithState:&v142 objects:v158 count:16];
            }

            while (v20);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v146 objects:v159 count:16];
      }

      while (v15);
    }

    objc_autoreleasePoolPop(context);
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    engagedUUIDs = [v94 engagedUUIDs];
    v26 = [engagedUUIDs countByEnumeratingWithState:&v138 objects:v157 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v139;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v139 != v28)
          {
            objc_enumerationMutation(engagedUUIDs);
          }

          v30 = [v13 objectForKeyedSubscript:*(*(&v138 + 1) + 8 * k)];
          if (v30)
          {
            [v100 addObject:v30];
          }
        }

        v27 = [engagedUUIDs countByEnumeratingWithState:&v138 objects:v157 count:16];
      }

      while (v27);
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    shownUUIDs = [v94 shownUUIDs];
    v32 = [shownUUIDs countByEnumeratingWithState:&v134 objects:v156 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v135;
      do
      {
        for (m = 0; m != v33; ++m)
        {
          if (*v135 != v34)
          {
            objc_enumerationMutation(shownUUIDs);
          }

          v36 = [v13 objectForKeyedSubscript:*(*(&v134 + 1) + 8 * m)];
          if (v36)
          {
            [v101 addObject:v36];
          }
        }

        v33 = [shownUUIDs countByEnumeratingWithState:&v134 objects:v156 count:16];
      }

      while (v33);
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    rejectedUUIDs = [v94 rejectedUUIDs];
    v38 = [rejectedUUIDs countByEnumeratingWithState:&v130 objects:v155 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v131;
      do
      {
        for (n = 0; n != v39; ++n)
        {
          if (*v131 != v40)
          {
            objc_enumerationMutation(rejectedUUIDs);
          }

          v42 = [v13 objectForKeyedSubscript:*(*(&v130 + 1) + 8 * n)];
          if (v42)
          {
            [v99 addObject:v42];
          }
        }

        v39 = [rejectedUUIDs countByEnumeratingWithState:&v130 objects:v155 count:16];
      }

      while (v39);
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v90 = obj;
    v96 = [v90 countByEnumeratingWithState:&v126 objects:v154 count:16];
    if (v96)
    {
      v95 = *v127;
      do
      {
        v43 = 0;
        do
        {
          if (*v127 != v95)
          {
            objc_enumerationMutation(v90);
          }

          v103 = v43;
          v44 = *(*(&v126 + 1) + 8 * v43);
          v102 = objc_autoreleasePoolPush();
          contexta = objc_opt_new();
          v45 = objc_opt_new();
          obja = objc_opt_new();
          v46 = objc_opt_new();
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v98 = v44;
          suggestions2 = [v44 suggestions];
          v48 = [suggestions2 countByEnumeratingWithState:&v122 objects:v153 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v123;
            do
            {
              for (ii = 0; ii != v49; ++ii)
              {
                if (*v123 != v50)
                {
                  objc_enumerationMutation(suggestions2);
                }

                v52 = *(*(&v122 + 1) + 8 * ii);
                v53 = [(ATXUIFeedbackBiomeCorrelateHandler *)self boxedExecutableHashForProactiveSuggestion:v52];
                [v46 setObject:v52 forKey:v53];
              }

              v49 = [suggestions2 countByEnumeratingWithState:&v122 objects:v153 count:16];
            }

            while (v49);
          }

          v109 = v45;

          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v54 = v101;
          v55 = [v54 countByEnumeratingWithState:&v118 objects:v152 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v119;
            do
            {
              for (jj = 0; jj != v56; ++jj)
              {
                if (*v119 != v57)
                {
                  objc_enumerationMutation(v54);
                }

                v59 = *(*(&v118 + 1) + 8 * jj);
                v60 = [(ATXUIFeedbackBiomeCorrelateHandler *)self boxedExecutableHashForProactiveSuggestion:v59];
                v61 = [v46 objectForKey:v60];
                if (v61 && [(ATXUIFeedbackBiomeCorrelateHandler *)self _proactiveSuggestionsContainEqualExecutablesWithSuggestion1:v59 suggestion2:v61])
                {
                  [contexta addObject:v61];
                }
              }

              v56 = [v54 countByEnumeratingWithState:&v118 objects:v152 count:16];
            }

            while (v56);
          }

          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v62 = v100;
          v63 = [v62 countByEnumeratingWithState:&v114 objects:v151 count:16];
          if (v63)
          {
            v64 = v63;
            v65 = *v115;
            do
            {
              for (kk = 0; kk != v64; ++kk)
              {
                if (*v115 != v65)
                {
                  objc_enumerationMutation(v62);
                }

                v67 = *(*(&v114 + 1) + 8 * kk);
                v68 = [(ATXUIFeedbackBiomeCorrelateHandler *)self boxedExecutableHashForProactiveSuggestion:v67];
                v69 = [v46 objectForKey:v68];
                if (v69 && [(ATXUIFeedbackBiomeCorrelateHandler *)self _proactiveSuggestionsContainEqualExecutablesWithSuggestion1:v67 suggestion2:v69])
                {
                  [v109 addObject:v69];
                }
              }

              v64 = [v62 countByEnumeratingWithState:&v114 objects:v151 count:16];
            }

            while (v64);
          }

          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v70 = v99;
          v71 = [v70 countByEnumeratingWithState:&v110 objects:v150 count:16];
          if (v71)
          {
            v72 = v71;
            v73 = *v111;
            do
            {
              for (mm = 0; mm != v72; ++mm)
              {
                if (*v111 != v73)
                {
                  objc_enumerationMutation(v70);
                }

                v75 = *(*(&v110 + 1) + 8 * mm);
                v76 = [(ATXUIFeedbackBiomeCorrelateHandler *)self boxedExecutableHashForProactiveSuggestion:v75];
                v77 = [v46 objectForKey:v76];
                if (v77 && [(ATXUIFeedbackBiomeCorrelateHandler *)self _proactiveSuggestionsContainEqualExecutablesWithSuggestion1:v75 suggestion2:v77])
                {
                  [obja addObject:v77];
                }
              }

              v72 = [v70 countByEnumeratingWithState:&v110 objects:v150 count:16];
            }

            while (v72);
          }

          v79 = obja;
          v78 = v109;
          if ([contexta count])
          {
            v97 = [ATXProactiveSuggestionUIFeedbackResult alloc];
            array = [contexta array];
            array2 = [v109 array];
            array3 = [obja array];
            consumerSubType = [v94 consumerSubType];
            context2 = [v92 context];
            v79 = obja;
            v85 = [(ATXProactiveSuggestionUIFeedbackResult *)v97 initWithShownSuggestions:array engagedSuggestions:array2 rejectedSuggestions:array3 session:v94 consumerSubType:consumerSubType clientCacheUpdate:v98 uiCacheUpdate:v91 context:context2];

            v78 = v109;
            [v93 addObject:v85];
          }

          objc_autoreleasePoolPop(v102);
          v43 = v103 + 1;
        }

        while (v103 + 1 != v96);
        v96 = [v90 countByEnumeratingWithState:&v126 objects:v154 count:16];
      }

      while (v96);
    }

    v10 = v88;
    v6Context = v89;
    v12 = v91;
  }

  else
  {
    v13 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(ATXUIFeedbackBiomeCorrelateHandler *)self correlateWithCurrentEvent:v94, v13];
    }
  }

  v86 = *MEMORY[0x1E69E9840];

  return v93;
}

- (id)boxedExecutableHashForProactiveSuggestion:(id)suggestion
{
  executableSpecification = [suggestion executableSpecification];
  executableObjectHash = [executableSpecification executableObjectHash];

  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:executableObjectHash];

  return v5;
}

- (BOOL)_proactiveSuggestionsContainEqualExecutablesWithSuggestion1:(id)suggestion1 suggestion2:(id)suggestion2
{
  suggestion2Copy = suggestion2;
  executableSpecification = [suggestion1 executableSpecification];
  executableSpecification2 = [suggestion2Copy executableSpecification];

  LOBYTE(suggestion2Copy) = [executableSpecification fuzzyIsEqualToExecutableSpecification:executableSpecification2];
  return suggestion2Copy;
}

- (void)receivePriorEvent:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 clientModelId];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)receivePriorEvent:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 uuid];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)receivePriorEvent:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)receiveCurrentEvent:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)correlateWithCurrentEvent:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{objc_msgSend(a2, "consumerSubType")}];
  OUTLINED_FUNCTION_0_8();
  _os_log_fault_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_FAULT, "%@ - could not find any client caches for session with consumerSubType: %@", v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end