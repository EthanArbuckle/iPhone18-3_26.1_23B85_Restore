@interface ATXUIFeedbackBiomeCorrelateHandler
+ (id)uiFeedbackCorrelateHandler;
- (BOOL)_proactiveSuggestionsContainEqualExecutablesWithSuggestion1:(id)a3 suggestion2:(id)a4;
- (id)boxedExecutableHashForProactiveSuggestion:(id)a3;
- (id)correlateWithCurrentEvent:(id)a3;
- (void)receiveCurrentEvent:(id)a3;
- (void)receivePriorEvent:(id)a3;
- (void)updateMostRecentlySeenBlendingUICacheUpdateUUID:(id)a3;
@end

@implementation ATXUIFeedbackBiomeCorrelateHandler

+ (id)uiFeedbackCorrelateHandler
{
  v2 = objc_alloc(objc_opt_class());
  v3 = objc_opt_new();
  v4 = [v2 initWithInitialContext:v3];

  return v4;
}

- (void)updateMostRecentlySeenBlendingUICacheUpdateUUID:(id)a3
{
  v4 = a3;
  v5 = [(BPSCorrelateHandler *)self context];
  [v5 updatePinnedBlendingModelUICacheUpdateUUID:v4];

  v6 = [(BPSCorrelateHandler *)self context];
  [v6 pruneContextStateOlderThanBlendingUUID:v4];
}

- (void)receivePriorEvent:(id)a3
{
  v4 = a3;
  v5 = [(BPSCorrelateHandler *)self context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 eventBody];
    v7 = v6;
    if (v6)
    {
      if ([v6 conformsToProtocol:&unk_1F5A51B48])
      {
        [v5 addContext:v7];
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
        [v5 addBlendingModelUICacheUpdate:v7];
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
        [v5 addClientModelCacheUpdate:v7];
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

- (void)receiveCurrentEvent:(id)a3
{
  v3 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ATXUIFeedbackBiomeCorrelateHandler receiveCurrentEvent:];
  }
}

- (id)correlateWithCurrentEvent:(id)a3
{
  v160 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v93 = objc_opt_new();
  v5 = v4;
  v6 = [(BPSCorrelateHandler *)self context];
  v7 = [v6 context];
  v8 = [v5 sessionEndDate];
  [v7 updateTimeContextWithDate:v8];

  v101 = objc_opt_new();
  v100 = objc_opt_new();
  v99 = objc_opt_new();
  v9 = [v5 blendingUICacheUpdateUUID];
  v10 = [v6 clientModelCacheUpdatesForUICacheUpdateUUID:v9];

  v94 = v5;
  v11 = [v5 blendingUICacheUpdateUUID];
  v92 = v6;
  v12 = [v6 blendingModelUICacheUpdateForUUID:v11];

  if ([v10 count] && v12)
  {
    v91 = v12;
    v89 = v7;
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
          v18 = [v17 suggestions];
          v19 = [v18 countByEnumeratingWithState:&v142 objects:v158 count:16];
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
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v142 + 1) + 8 * j);
                v24 = [v23 uuid];
                [v13 setObject:v23 forKeyedSubscript:v24];
              }

              v20 = [v18 countByEnumeratingWithState:&v142 objects:v158 count:16];
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
    v25 = [v94 engagedUUIDs];
    v26 = [v25 countByEnumeratingWithState:&v138 objects:v157 count:16];
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
            objc_enumerationMutation(v25);
          }

          v30 = [v13 objectForKeyedSubscript:*(*(&v138 + 1) + 8 * k)];
          if (v30)
          {
            [v100 addObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v138 objects:v157 count:16];
      }

      while (v27);
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v31 = [v94 shownUUIDs];
    v32 = [v31 countByEnumeratingWithState:&v134 objects:v156 count:16];
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
            objc_enumerationMutation(v31);
          }

          v36 = [v13 objectForKeyedSubscript:*(*(&v134 + 1) + 8 * m)];
          if (v36)
          {
            [v101 addObject:v36];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v134 objects:v156 count:16];
      }

      while (v33);
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v37 = [v94 rejectedUUIDs];
    v38 = [v37 countByEnumeratingWithState:&v130 objects:v155 count:16];
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
            objc_enumerationMutation(v37);
          }

          v42 = [v13 objectForKeyedSubscript:*(*(&v130 + 1) + 8 * n)];
          if (v42)
          {
            [v99 addObject:v42];
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v130 objects:v155 count:16];
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
          v47 = [v44 suggestions];
          v48 = [v47 countByEnumeratingWithState:&v122 objects:v153 count:16];
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
                  objc_enumerationMutation(v47);
                }

                v52 = *(*(&v122 + 1) + 8 * ii);
                v53 = [(ATXUIFeedbackBiomeCorrelateHandler *)self boxedExecutableHashForProactiveSuggestion:v52];
                [v46 setObject:v52 forKey:v53];
              }

              v49 = [v47 countByEnumeratingWithState:&v122 objects:v153 count:16];
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
            v80 = [contexta array];
            v81 = [v109 array];
            v82 = [obja array];
            v83 = [v94 consumerSubType];
            v84 = [v92 context];
            v79 = obja;
            v85 = [(ATXProactiveSuggestionUIFeedbackResult *)v97 initWithShownSuggestions:v80 engagedSuggestions:v81 rejectedSuggestions:v82 session:v94 consumerSubType:v83 clientCacheUpdate:v98 uiCacheUpdate:v91 context:v84];

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
    v7 = v89;
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

- (id)boxedExecutableHashForProactiveSuggestion:(id)a3
{
  v3 = [a3 executableSpecification];
  v4 = [v3 executableObjectHash];

  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v4];

  return v5;
}

- (BOOL)_proactiveSuggestionsContainEqualExecutablesWithSuggestion1:(id)a3 suggestion2:(id)a4
{
  v5 = a4;
  v6 = [a3 executableSpecification];
  v7 = [v5 executableSpecification];

  LOBYTE(v5) = [v6 fuzzyIsEqualToExecutableSpecification:v7];
  return v5;
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