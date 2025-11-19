@interface WRWorkflowEventTracker
+ (id)tailspinDirectory;
+ (uint64_t)isReservedSignpostName:(uint64_t)a1;
+ (uint64_t)isReservedWorkflowName:(uint64_t)a1;
+ (void)cleanupDirectory:(void *)a3 ofFilesWithSuffix:(void *)a4 olderThan:;
+ (void)cleanupWorkflowResponsivenessDiagnosticsDirectory;
+ (void)makeTailspinDirectory;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)stats;
- (BOOL)gatherDiagnosticsIfNeeded;
- (BOOL)handleSignpost:(id)a3;
- (BOOL)inMiddleOfEvent;
- (NSArray)allSignpostTrackers;
- (NSMutableDictionary)environment;
- (WRWorkflowEventTracker)initWithEncodedDict:(id)a3 error:(id *)a4;
- (WRWorkflowEventTracker)initWithEncodedString:(id)a3 error:(id *)a4;
- (WRWorkflowEventTracker)initWithSpindump:(id)a3 error:(id *)a4;
- (WRWorkflowEventTracker)initWithTailspin:(id)a3 error:(id *)a4;
- (WRWorkflowEventTracker)initWithWorkflow:(id)a3 eventCompletionCallback:(id)a4;
- (id)debugDescription;
- (id)diagnosticsExceedingThresholds;
- (id)encodedDict;
- (id)encodedStringWithError:(id *)a3;
- (id)eventIdentifierForSignpostObject:(void *)a3 wrSignopst:;
- (id)individuationIdentifierForSignpostEvent:(void *)a3 individuationFieldName:;
- (id)individuationIdentifierForSignpostObject:(void *)a3 individuationFieldName:;
- (id)initForLiveStreamingWithWorkflow:(id)a3 timeoutQueue:(id)a4 eventCompletionCallback:(id)a5;
- (id)initForReadbackWithWorkflow:(id)a3 eventCompletionCallback:(id)a4;
- (id)initWithWorkflow:(id *)a1;
- (id)trackerForWRSignpost:(void *)a3 individuationIdentifier:;
- (id)valueForFieldName:(void *)a3 inSignpostEvent:;
- (id)valueForFieldName:(void *)a3 inSignpostObject:;
- (uint64_t)gatherDiagnosticsWithTailspin:(int)a3 tailspinIncludeOSLogs:;
- (uint64_t)handleError:(void *)a3 atEndTime:;
- (uint64_t)handleSignpost:(void *)a3 wrsignpost:;
- (uint64_t)haveAnyEndSignpostsWithIndividuationFieldName:(uint64_t)a1;
- (void)applySignpost:(void *)a3 toSignpostTracker:;
- (void)checkForNonPublicField:(void *)a3 fieldName:(void *)a4 messageArgument:;
- (void)doneHandlingSignpostsWithEndTimeMachContNs:(unint64_t)a3;
- (void)fillInNonDiagnosticSignpost:(void *)a1;
- (void)gatherDiagnosticsIfNeeded;
- (void)generateTelemetry;
- (void)initWithEncodedData:(void *)a3 error:;
- (void)newConcurrentEventWithIdentifier:(void *)a1;
- (void)reportCoreAnalyticsEventForSignpost:(void *)a3 allCount:(void *)a4 allDurationUnionSec:(void *)a5 allDurationSumSec:(void *)a6 allDurationLongestSec:(void *)a7 allDurationUntrackedSec:(void *)a8 allDurationNonNetworkBoundSec:(void *)a9 allTimeUntilFirstSignpost:(void *)a10 allTimeAfterLastSignpost:(void *)a11 incompleteCount:(void *)a12 completeDurationUnionSec:(void *)a13 completeDurationSumSec:(void *)a14 completeDurationLongestSec:(void *)a15 completeTimeUntilFirstSignpost:(void *)a16 environment:;
- (void)reportErrorsAndResetAtMachContNs:(void *)a3 date:;
- (void)reset;
- (void)resetWithoutReportingErrors;
- (void)sawIndividuationFieldName:(void *)a3 withIndividuationIdentifier:;
- (void)submitCAEventName:(void *)a3 dict:(void *)a4 forSignpost:;
@end

@implementation WRWorkflowEventTracker

- (id)initForReadbackWithWorkflow:(id)a3 eventCompletionCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WRWorkflowEventTracker *)&self->super.isa initWithWorkflow:v6];
  if (v8)
  {
    v9 = MEMORY[0x277C5A9A0](v7);
    v10 = v8[18];
    v8[18] = v9;

    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    v12 = [v6 allSignposts];
    v13 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];
    v14 = v8[13];
    v8[13] = v13;

    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = [v6 endSignpostGroups];
    v17 = [v15 initWithCapacity:{objc_msgSend(v16, "count")}];
    v18 = v8[19];
    v8[19] = v17;

    v19 = [v6 endSignpostGroups];
    v20 = [v19 count];

    if (v20)
    {
      v22 = 0;
      do
      {
        Property = objc_getProperty(v8, v21, 152, 1);
        v24 = MEMORY[0x277CBEB68];
        v25 = Property;
        v26 = [v24 null];
        [v25 addObject:v26];

        ++v22;
        v27 = [v6 endSignpostGroups];
        v28 = [v27 count];
      }

      while (v22 < v28);
    }
  }

  return v8;
}

- (id)initForLiveStreamingWithWorkflow:(id)a3 timeoutQueue:(id)a4 eventCompletionCallback:(id)a5
{
  v9 = a4;
  v10 = [(WRWorkflowEventTracker *)self initForReadbackWithWorkflow:a3 eventCompletionCallback:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 15, a4);
  }

  return v11;
}

- (BOOL)inMiddleOfEvent
{
  v2 = [(WRWorkflowEventTracker *)self eventStart];
  v3 = v2 != 0;

  return v3;
}

- (id)valueForFieldName:(void *)a3 inSignpostObject:
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = 0;
  if (a1 && v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      v7 = [(WRWorkflowEventTracker *)a1 valueForFieldName:v5 inSignpostEvent:v8];
      if (!v7)
      {
        [v8 name];

        v9 = [a1 workflow];
        [v9 name];

        [a1 eventIdentifier];
        v10 = [a1 eventIdentifier];

        v11 = *__error();
        v12 = _wrlog();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
        if (v10)
        {
          if (v13)
          {
            v14 = [a1 workflow];
            v15 = [v14 name];
            v16 = [a1 eventIdentifier];
            v17 = [v8 name];
            *buf = 138544386;
            v44 = v15;
            v45 = 2114;
            v46 = v16;
            v47 = 2114;
            v48 = v17;
            v49 = 2114;
            v50 = v5;
            v51 = 2112;
            v52 = 0;
            _os_log_fault_impl(&dword_2746E5000, v12, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: No field value", buf, 0x34u);
          }
        }

        else if (v13)
        {
          v36 = [a1 workflow];
          v37 = [v36 name];
          v38 = [v8 name];
          *buf = 138544130;
          v44 = v37;
          v45 = 2114;
          v46 = v38;
          v47 = 2114;
          v48 = v5;
          v49 = 2112;
          v50 = 0;
          _os_log_fault_impl(&dword_2746E5000, v12, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: No field value", buf, 0x2Au);
        }

        *__error() = v11;
      }

LABEL_29:

      goto LABEL_30;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 beginEvent];
      v18 = [(WRWorkflowEventTracker *)a1 valueForFieldName:v5 inSignpostEvent:v8];
      if (v18)
      {
        v7 = v18;
      }

      else
      {
        v24 = [v6 endEvent];
        v25 = [(WRWorkflowEventTracker *)a1 valueForFieldName:v5 inSignpostEvent:v24];
        if (!v25)
        {
          [v6 name];

          v26 = [a1 workflow];
          [v26 name];

          [a1 eventIdentifier];
          v27 = [a1 eventIdentifier];

          v28 = *__error();
          v29 = _wrlog();
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);
          if (v27)
          {
            if (v30)
            {
              v42 = [a1 workflow];
              v31 = [v42 name];
              v32 = [a1 eventIdentifier];
              v33 = [v6 name];
              *buf = 138544386;
              v44 = v31;
              v45 = 2114;
              v46 = v32;
              v47 = 2114;
              v48 = v33;
              v49 = 2114;
              v50 = v5;
              v51 = 2112;
              v52 = 0;
              _os_log_fault_impl(&dword_2746E5000, v29, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: No field value", buf, 0x34u);
            }
          }

          else if (v30)
          {
            v39 = [a1 workflow];
            v40 = [v39 name];
            v41 = [v6 name];
            *buf = 138544130;
            v44 = v40;
            v45 = 2114;
            v46 = v41;
            v47 = 2114;
            v48 = v5;
            v49 = 2112;
            v50 = 0;
            _os_log_fault_impl(&dword_2746E5000, v29, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: No field value", buf, 0x2Au);
          }

          *__error() = v28;
        }

        v7 = v25;
      }

      goto LABEL_29;
    }

    v19 = [a1 workflow];
    [v19 name];

    [a1 eventIdentifier];
    v20 = [a1 eventIdentifier];

    v21 = *__error();
    v22 = _wrlog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT);
    if (v20)
    {
      if (v23)
      {
        [WRWorkflowEventTracker valueForFieldName:inSignpostObject:];
      }
    }

    else if (v23)
    {
      [WRWorkflowEventTracker valueForFieldName:inSignpostObject:];
    }

    v7 = 0;
    *__error() = v21;
  }

LABEL_30:

  v34 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)valueForFieldName:(void *)a3 inSignpostEvent:
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a1 && v5)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [v6 metadataSegments];
    v9 = [obj countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (v9)
    {
      v10 = v9;
      v41 = a1;
      v42 = v7;
      v44 = v5;
      v11 = *v50;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v49 + 1) + 8 * i);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v14 = [v13 placeholderTokens];
          v15 = [v14 countByEnumeratingWithState:&v45 objects:v63 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v46;
LABEL_10:
            v18 = 0;
            while (1)
            {
              if (*v46 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v45 + 1) + 8 * v18);
              if ([v19 hasPrefix:@"name="])
              {
                break;
              }

              if (v16 == ++v18)
              {
                v16 = [v14 countByEnumeratingWithState:&v45 objects:v63 count:16];
                if (v16)
                {
                  goto LABEL_10;
                }

                goto LABEL_16;
              }
            }

            v20 = PlaceholderNameMatches(v19, v44);

            if (!v20)
            {
              continue;
            }

            v21 = [v13 argument];
            v7 = v42;
            v5 = v44;
            [(WRWorkflowEventTracker *)v41 checkForNonPublicField:v42 fieldName:v44 messageArgument:v21];
            v22 = [v21 type];
            switch(v22)
            {
              case 3:
                v32 = [v21 argumentObject];
                v8 = [v32 stringValue];

                goto LABEL_38;
              case 2:
                [v42 name];

                v23 = [v41 workflow];
                [v23 name];

                [v41 eventIdentifier];
                v24 = [v41 eventIdentifier];

                v25 = *__error();
                v26 = _wrlog();
                v27 = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);
                if (v24)
                {
                  if (v27)
                  {
                    v28 = [v41 workflow];
                    v29 = [v28 name];
                    v30 = [v41 eventIdentifier];
                    v31 = [v42 name];
                    *buf = 138544386;
                    v54 = v29;
                    v55 = 2114;
                    v56 = v30;
                    v57 = 2114;
                    v58 = v31;
                    v59 = 2114;
                    v60 = v44;
                    v61 = 2112;
                    v62 = 0;
                    _os_log_fault_impl(&dword_2746E5000, v26, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: metadata is data type", buf, 0x34u);
                    goto LABEL_33;
                  }

LABEL_37:

                  v8 = 0;
                  *__error() = v25;
                  goto LABEL_38;
                }

                if (!v27)
                {
                  goto LABEL_37;
                }

                v36 = [v41 workflow];
                v37 = [v36 name];
                v38 = [v42 name];
                *buf = 138544130;
                v54 = v37;
                v55 = 2114;
                v56 = v38;
                v57 = 2114;
                v58 = v44;
                v59 = 2112;
                v60 = 0;
                _os_log_fault_impl(&dword_2746E5000, v26, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: metadata is data type", buf, 0x2Au);
                break;
              case 1:
                v8 = [v21 argumentObject];
LABEL_38:

                goto LABEL_39;
              default:
                [v42 name];

                v33 = [v41 workflow];
                [v33 name];

                [v41 eventIdentifier];
                v34 = [v41 eventIdentifier];

                v25 = *__error();
                v26 = _wrlog();
                v35 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
                if (v34)
                {
                  if (v35)
                  {
                    v28 = [v41 workflow];
                    v29 = [v28 name];
                    v30 = [v41 eventIdentifier];
                    v31 = [v42 name];
                    *buf = 138544386;
                    v54 = v29;
                    v55 = 2114;
                    v56 = v30;
                    v57 = 2114;
                    v58 = v31;
                    v59 = 2114;
                    v60 = v44;
                    v61 = 2112;
                    v62 = 0;
                    _os_log_error_impl(&dword_2746E5000, v26, OS_LOG_TYPE_ERROR, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: found missing individuation identifier", buf, 0x34u);
LABEL_33:

                    v5 = v44;
                  }

                  goto LABEL_37;
                }

                if (!v35)
                {
                  goto LABEL_37;
                }

                v36 = [v41 workflow];
                v37 = [v36 name];
                v38 = [v42 name];
                *buf = 138544130;
                v54 = v37;
                v55 = 2114;
                v56 = v38;
                v57 = 2114;
                v58 = v44;
                v59 = 2112;
                v60 = 0;
                _os_log_error_impl(&dword_2746E5000, v26, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: found missing individuation identifier", buf, 0x2Au);
                break;
            }

            goto LABEL_37;
          }

LABEL_16:
        }

        v10 = [obj countByEnumeratingWithState:&v49 objects:v64 count:16];
        if (!v10)
        {
          v8 = 0;
          v5 = v44;
          v7 = v42;
          goto LABEL_39;
        }
      }
    }

    v8 = 0;
LABEL_39:
  }

  v39 = *MEMORY[0x277D85DE8];

  return v8;
}

void __58__WRWorkflowEventTracker_applySignpost_toSignpostTracker___block_invoke(uint64_t a1, void *a2)
{
  v159 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v125 = a1;
  v124 = (a1 + 32);
  v4 = [*(a1 + 32) signpost];
  v5 = [v4 environmentFieldNames];

  if (v5)
  {
    v127 = v5;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v123 = v3;
    obj = [v3 metadataSegments];
    v129 = [obj countByEnumeratingWithState:&v138 objects:v158 count:16];
    if (!v129)
    {
      goto LABEL_108;
    }

    v128 = *v139;
    *&v6 = 138543874;
    v109 = v6;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v139 != v128)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v138 + 1) + 8 * v7);
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v9 = [v8 placeholderTokens];
        v10 = [v9 countByEnumeratingWithState:&v134 objects:v157 count:16];
        if (!v10)
        {
          goto LABEL_25;
        }

        v11 = v10;
        v12 = *v135;
LABEL_9:
        v13 = 0;
        while (1)
        {
          if (*v135 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v134 + 1) + 8 * v13);
          if ([v14 hasPrefix:@"name="])
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v134 objects:v157 count:16];
            if (!v11)
            {
LABEL_25:

              goto LABEL_27;
            }

            goto LABEL_9;
          }
        }

        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v15 = v127;
        v16 = [v15 countByEnumeratingWithState:&v130 objects:v156 count:16];
        if (!v16)
        {
          goto LABEL_24;
        }

        v17 = v16;
        v18 = *v131;
LABEL_18:
        v19 = 0;
        while (1)
        {
          if (*v131 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v130 + 1) + 8 * v19);
          if (PlaceholderNameMatches(v14, v20))
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v130 objects:v156 count:16];
            if (!v17)
            {
LABEL_24:

              goto LABEL_25;
            }

            goto LABEL_18;
          }
        }

        v21 = v20;

        if (v21)
        {
          goto LABEL_55;
        }

LABEL_27:
        v22 = [v8 stringPrefix];
        if (!v22)
        {
          goto LABEL_49;
        }

        v21 = v22;
        v23 = [v22 length];
        v24 = [v21 UTF8String];
        if (!v24)
        {
          goto LABEL_47;
        }

        v25 = v24;
        v26 = (v24 + v23 - 1);
        if (*v26 != 61)
        {
          goto LABEL_47;
        }

        if (v26 == v24)
        {
          v27 = 0;
          goto LABEL_40;
        }

        v27 = 0;
        while (2)
        {
          v28 = v25[v23 - 1 + v27];
          if ((v28 & 0x80000000) == 0)
          {
            if ((*(MEMORY[0x277D85DE0] + 4 * v28 + 60) & 0x4000) != 0)
            {
              break;
            }

            goto LABEL_36;
          }

          if (!__maskrune(v28, 0x4000uLL))
          {
LABEL_36:
            --v27;
            if (!(v23 - 1 + v27))
            {
              goto LABEL_40;
            }

            continue;
          }

          break;
        }

        v25 = &v25[v23 - 1 + v27];
LABEL_40:
        v29 = *v25;
        if ((v29 & 0x80000000) != 0)
        {
          v30 = __maskrune(v29, 0x4000uLL);
        }

        else
        {
          v30 = *(MEMORY[0x277D85DE0] + 4 * v29 + 60) & 0x4000;
        }

        if (v30)
        {
          v31 = v27 + 1;
        }

        else
        {
          v31 = v27;
        }

        if ((v31 & 0x8000000000000000) == 0)
        {
LABEL_47:
          v32 = 0;
          goto LABEL_48;
        }

        v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v26[v31] length:-v31 encoding:4];
        if (!v32)
        {
          goto LABEL_48;
        }

        v33 = [v127 indexOfObject:v32];
        if (v33 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_48;
        }

        v34 = [v127 objectAtIndexedSubscript:v33];

        if (v34)
        {
          v21 = v34;
LABEL_55:
          v32 = [v8 argument];
          [(WRWorkflowEventTracker *)*(v125 + 40) checkForNonPublicField:v123 fieldName:v21 messageArgument:v32];
          Property = *(v125 + 32);
          if (Property)
          {
            Property = objc_getProperty(Property, v35, 32, 1);
          }

          if (!Property)
          {
            __58__WRWorkflowEventTracker_applySignpost_toSignpostTracker___block_invoke_cold_1(v124);
          }

          v37 = [v32 type];
          if (v37 != 3)
          {
            if (v37 == 2)
            {
              v53 = [*v124 signpost];
              v54 = [v53 individuationFieldName];

              if (v54)
              {
                v55 = [*(v125 + 32) signpost];
                [v55 individuationFieldName];

                [*(v125 + 32) individuationIdentifier];
                [v123 name];

                v56 = [*(v125 + 40) workflow];
                [v56 name];

                [*(v125 + 40) eventIdentifier];
                v57 = [*(v125 + 40) eventIdentifier];

                v58 = *__error();
                v59 = _wrlog();
                v60 = os_log_type_enabled(v59, OS_LOG_TYPE_FAULT);
                if (v57)
                {
                  if (v60)
                  {
                    v115 = [*(v125 + 40) workflow];
                    log = [v115 name];
                    v61 = [*(v125 + 40) eventIdentifier];
                    v62 = [v123 name];
                    v112 = [*(v125 + 32) signpost];
                    v63 = [v112 individuationFieldName];
                    v64 = [*(v125 + 32) individuationIdentifier];
                    *buf = 138544642;
                    v143 = log;
                    v144 = 2114;
                    v145 = v61;
                    v146 = 2114;
                    v147 = v62;
                    v148 = 2114;
                    v149 = v63;
                    v150 = 2112;
                    v151 = v64;
                    v152 = 2114;
                    v153 = v21;
                    _os_log_fault_impl(&dword_2746E5000, v59, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: contained environment %{public}@ not a number/string", buf, 0x3Eu);
                    goto LABEL_74;
                  }

                  goto LABEL_103;
                }

                if (!v60)
                {
                  goto LABEL_103;
                }

                loga = [*(v125 + 40) workflow];
                v99 = [loga name];
                v100 = [v123 name];
                v117 = [*(v125 + 32) signpost];
                v101 = [v117 individuationFieldName];
                v102 = [*(v125 + 32) individuationIdentifier];
                *buf = 138544386;
                v143 = v99;
                v144 = 2114;
                v145 = v100;
                v146 = 2114;
                v147 = v101;
                v148 = 2112;
                v149 = v102;
                v150 = 2114;
                v151 = v21;
                _os_log_fault_impl(&dword_2746E5000, v59, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: contained environment %{public}@ not a number/string", buf, 0x34u);
                goto LABEL_95;
              }

              [v123 name];

              v85 = [*(v125 + 40) workflow];
              [v85 name];

              [*(v125 + 40) eventIdentifier];
              v86 = [*(v125 + 40) eventIdentifier];

              v58 = *__error();
              v59 = _wrlog();
              v87 = os_log_type_enabled(v59, OS_LOG_TYPE_FAULT);
              if (v86)
              {
                if (!v87)
                {
                  goto LABEL_103;
                }

                v88 = [*(v125 + 40) workflow];
                v89 = [v88 name];
                v90 = [*(v125 + 40) eventIdentifier];
                v91 = [v123 name];
                *buf = 138544130;
                v143 = v89;
                v144 = 2114;
                v145 = v90;
                v146 = 2114;
                v147 = v91;
                v148 = 2114;
                v149 = v21;
                _os_log_fault_impl(&dword_2746E5000, v59, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: contained environment %{public}@ not a number/string", buf, 0x2Au);
                goto LABEL_88;
              }

              if (!v87)
              {
                goto LABEL_103;
              }

              v88 = [*(v125 + 40) workflow];
              v103 = [v88 name];
              v104 = [v123 name];
              *buf = v109;
              v143 = v103;
              v144 = 2114;
              v145 = v104;
              v146 = 2114;
              v147 = v21;
              _os_log_fault_impl(&dword_2746E5000, v59, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: contained environment %{public}@ not a number/string", buf, 0x20u);
            }

            else
            {
              if (v37 == 1)
              {
                goto LABEL_62;
              }

              v65 = [*v124 signpost];
              v66 = [v65 individuationFieldName];

              if (v66)
              {
                v67 = [*(v125 + 32) signpost];
                [v67 individuationFieldName];

                [*(v125 + 32) individuationIdentifier];
                [v123 name];

                v68 = [*(v125 + 40) workflow];
                [v68 name];

                [*(v125 + 40) eventIdentifier];
                v69 = [*(v125 + 40) eventIdentifier];

                v58 = *__error();
                v59 = _wrlog();
                v70 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
                if (v69)
                {
                  if (v70)
                  {
                    v115 = [*(v125 + 40) workflow];
                    log = [v115 name];
                    v61 = [*(v125 + 40) eventIdentifier];
                    v62 = [v123 name];
                    v112 = [*(v125 + 32) signpost];
                    v63 = [v112 individuationFieldName];
                    v64 = [*(v125 + 32) individuationIdentifier];
                    *buf = 138544642;
                    v143 = log;
                    v144 = 2114;
                    v145 = v61;
                    v146 = 2114;
                    v147 = v62;
                    v148 = 2114;
                    v149 = v63;
                    v150 = 2112;
                    v151 = v64;
                    v152 = 2114;
                    v153 = v21;
                    _os_log_error_impl(&dword_2746E5000, v59, OS_LOG_TYPE_ERROR, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: missing environment %{public}@", buf, 0x3Eu);
LABEL_74:

                    v71 = v115;
LABEL_96:
                  }

LABEL_103:

                  *__error() = v58;
                  v83 = [MEMORY[0x277CBEB68] null];
LABEL_104:
                  v105 = v83;
                  v106 = *v124;
                  if (*v124)
                  {
                    v106 = objc_getProperty(v106, v84, 32, 1);
                  }

                  [v106 setObject:v105 forKeyedSubscript:v21];

LABEL_48:
                  goto LABEL_49;
                }

                if (!v70)
                {
                  goto LABEL_103;
                }

                loga = [*(v125 + 40) workflow];
                v99 = [loga name];
                v100 = [v123 name];
                v117 = [*(v125 + 32) signpost];
                v101 = [v117 individuationFieldName];
                v102 = [*(v125 + 32) individuationIdentifier];
                *buf = 138544386;
                v143 = v99;
                v144 = 2114;
                v145 = v100;
                v146 = 2114;
                v147 = v101;
                v148 = 2112;
                v149 = v102;
                v150 = 2114;
                v151 = v21;
                _os_log_error_impl(&dword_2746E5000, v59, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: missing environment %{public}@", buf, 0x34u);
LABEL_95:

                v71 = loga;
                goto LABEL_96;
              }

              [v123 name];

              v92 = [*(v125 + 40) workflow];
              [v92 name];

              [*(v125 + 40) eventIdentifier];
              v93 = [*(v125 + 40) eventIdentifier];

              v58 = *__error();
              v59 = _wrlog();
              v94 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
              if (v93)
              {
                if (!v94)
                {
                  goto LABEL_103;
                }

                v88 = [*(v125 + 40) workflow];
                v89 = [v88 name];
                v90 = [*(v125 + 40) eventIdentifier];
                v91 = [v123 name];
                *buf = 138544130;
                v143 = v89;
                v144 = 2114;
                v145 = v90;
                v146 = 2114;
                v147 = v91;
                v148 = 2114;
                v149 = v21;
                _os_log_error_impl(&dword_2746E5000, v59, OS_LOG_TYPE_ERROR, "%{public}@<%{public}@>: %{public}@: missing environment %{public}@", buf, 0x2Au);
LABEL_88:

LABEL_102:
                goto LABEL_103;
              }

              if (!v94)
              {
                goto LABEL_103;
              }

              v88 = [*(v125 + 40) workflow];
              v103 = [v88 name];
              v104 = [v123 name];
              *buf = v109;
              v143 = v103;
              v144 = 2114;
              v145 = v104;
              v146 = 2114;
              v147 = v21;
              _os_log_error_impl(&dword_2746E5000, v59, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: missing environment %{public}@", buf, 0x20u);
            }

            goto LABEL_102;
          }

LABEL_62:
          v38 = [*v124 signpost];
          v39 = [v38 individuationFieldName];

          if (v39)
          {
            v40 = [*(v125 + 32) signpost];
            [v40 individuationFieldName];

            [*(v125 + 32) individuationIdentifier];
            [v123 name];

            v41 = [*(v125 + 40) workflow];
            [v41 name];

            [*(v125 + 40) eventIdentifier];
            v42 = [*(v125 + 40) eventIdentifier];

            v43 = *__error();
            v44 = _wrlog();
            v45 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
            if (v42)
            {
              if (v45)
              {
                v111 = [*(v125 + 40) workflow];
                [v111 name];
                v46 = v114 = v43;
                v47 = [*(v125 + 40) eventIdentifier];
                v48 = [v123 name];
                v110 = [*(v125 + 32) signpost];
                [v110 individuationFieldName];
                v49 = logb = v44;
                v50 = [*(v125 + 32) individuationIdentifier];
                v51 = [v32 argumentObject];
                *buf = 138544898;
                v143 = v46;
                v144 = 2114;
                v145 = v47;
                v146 = 2114;
                v147 = v48;
                v148 = 2114;
                v149 = v49;
                v150 = 2112;
                v151 = v50;
                v152 = 2114;
                v153 = v21;
                v154 = 2114;
                v155 = v51;
                _os_log_impl(&dword_2746E5000, logb, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: contained environment %{public}@->%{public}@", buf, 0x48u);

                v44 = logb;
                v43 = v114;
                v52 = v111;
                goto LABEL_80;
              }

              goto LABEL_81;
            }

            if (!v45)
            {
              goto LABEL_81;
            }

            v116 = [*(v125 + 40) workflow];
            logd = [v116 name];
            v79 = [v123 name];
            v113 = [*(v125 + 32) signpost];
            v80 = [v113 individuationFieldName];
            v81 = [*(v125 + 32) individuationIdentifier];
            v82 = [v32 argumentObject];
            *buf = 138544642;
            v143 = logd;
            v144 = 2114;
            v145 = v79;
            v146 = 2114;
            v147 = v80;
            v148 = 2112;
            v149 = v81;
            v150 = 2114;
            v151 = v21;
            v152 = 2114;
            v153 = v82;
            _os_log_impl(&dword_2746E5000, v44, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@->%@: contained environment %{public}@->%{public}@", buf, 0x3Eu);

            v52 = v116;
          }

          else
          {
            [v123 name];

            v72 = [*(v125 + 40) workflow];
            [v72 name];

            [*(v125 + 40) eventIdentifier];
            v73 = [*(v125 + 40) eventIdentifier];

            v43 = *__error();
            v44 = _wrlog();
            v74 = os_log_type_enabled(v44, OS_LOG_TYPE_INFO);
            if (!v73)
            {
              if (v74)
              {
                v95 = [*(v125 + 40) workflow];
                v96 = [v95 name];
                v97 = [v123 name];
                v98 = [v32 argumentObject];
                *buf = 138544130;
                v143 = v96;
                v144 = 2114;
                v145 = v97;
                v146 = 2114;
                v147 = v21;
                v148 = 2114;
                v149 = v98;
                _os_log_impl(&dword_2746E5000, v44, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: contained environment %{public}@->%{public}@", buf, 0x2Au);
              }

              goto LABEL_81;
            }

            if (!v74)
            {
LABEL_81:

              *__error() = v43;
              v83 = [v32 argumentObject];
              goto LABEL_104;
            }

            logc = [*(v125 + 40) workflow];
            v75 = [logc name];
            v76 = [*(v125 + 40) eventIdentifier];
            v77 = [v123 name];
            v78 = [v32 argumentObject];
            *buf = 138544386;
            v143 = v75;
            v144 = 2114;
            v145 = v76;
            v146 = 2114;
            v147 = v77;
            v148 = 2114;
            v149 = v21;
            v150 = 2114;
            v151 = v78;
            _os_log_impl(&dword_2746E5000, v44, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: contained environment %{public}@->%{public}@", buf, 0x34u);

            v52 = logc;
          }

LABEL_80:

          goto LABEL_81;
        }

LABEL_49:
        ++v7;
      }

      while (v7 != v129);
      v107 = [obj countByEnumeratingWithState:&v138 objects:v158 count:16];
      v129 = v107;
      if (!v107)
      {
LABEL_108:

        v3 = v123;
        v5 = v127;
        break;
      }
    }
  }

  v108 = *MEMORY[0x277D85DE8];
}

- (void)doneHandlingSignpostsWithEndTimeMachContNs:(unint64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (![(WRWorkflowEventTracker *)self inMiddleOfEvent])
  {
    goto LABEL_14;
  }

  v5 = [(WRWorkflowEventTracker *)self workflow];
  if ([v5 hasMaximumEventDuration])
  {
    v6 = [(WRWorkflowEventTracker *)self workflow];
    [v6 maximumEventDuration];
    v8 = v7;
    v9 = [(WRWorkflowEventTracker *)self eventStart];
    if (v8 < (a3 + [v9 machContTimeNs]) / 1000000000.0)
    {
      v10 = [(WRWorkflowEventTracker *)self ignoreEventTimeouts];

      if (!v10)
      {
        [WRWorkflowEventTracker doneHandlingSignpostsWithEndTimeMachContNs:];
        goto LABEL_14;
      }

      goto LABEL_8;
    }
  }

LABEL_8:
  v11 = [(WRWorkflowEventTracker *)self workflow];
  [v11 name];

  [(WRWorkflowEventTracker *)self eventIdentifier];
  v12 = [(WRWorkflowEventTracker *)self eventIdentifier];

  v13 = *__error();
  v14 = _wrlog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v15)
    {
      v16 = [(WRWorkflowEventTracker *)self workflow];
      v17 = [v16 name];
      v18 = [(WRWorkflowEventTracker *)self eventIdentifier];
      v22 = 138543618;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_2746E5000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: Incomplete event when done handling signposts, ignoring", &v22, 0x16u);
    }
  }

  else if (v15)
  {
    v19 = [(WRWorkflowEventTracker *)self workflow];
    v20 = [v19 name];
    v22 = 138543362;
    v23 = v20;
    _os_log_impl(&dword_2746E5000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Incomplete event when done handling signposts, ignoring", &v22, 0xCu);
  }

  *__error() = v13;
LABEL_14:
  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleSignpost:(id)a3
{
  v185 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 isSyntheticIntervalEvent];
  v7 = [(WRWorkflowEventTracker *)self workflow];
  v8 = [(WRWorkflow *)v7 wrsignpostForSignpostObject:v4];

  if (v8)
  {
    v9 = [(WRWorkflowEventTracker *)self workflow];
    v10 = [v9 workflowSupportsConcurrentEvents];

    if (v10)
    {
      v160 = v8;
      selfa = self;
      if (v5)
      {
        v11 = [v8 individuationFieldName];
        if (v11 && ![v5 eventType])
        {
          v44 = v6;
          v45 = [(WRWorkflowEventTracker *)selfa workflow];
          v46 = [v45 startSignposts];
          if ([v46 indexOfObjectIdenticalTo:v8] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v119 = [v8 individuationFieldName];
            v120 = [(WRWorkflowEventTracker *)selfa haveAnyEndSignpostsWithIndividuationFieldName:v119];

            if (v120)
            {
              v8 = v160;
              v13 = selfa;
              [(WRWorkflowEventTracker *)v160 handleSignpost:v5, buf];
              v12 = *buf;
            }

            else
            {
              v12 = 0;
              v8 = v160;
              v13 = selfa;
            }
          }

          else
          {

            v12 = 0;
            v13 = selfa;
          }

          v6 = v44;
LABEL_11:
          v14 = [v8 eventIdentifierFieldName];
          if (v14)
          {
          }

          else if (([v8 eventIdentifierIsSignpostID] & 1) == 0)
          {
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            if (v13)
            {
              Property = objc_getProperty(v13, v15, 112, 1);
            }

            else
            {
              Property = 0;
            }

            v17 = [Property copy];
            v18 = [v17 countByEnumeratingWithState:&v167 objects:v184 count:16];
            if (v18)
            {
              v19 = v18;
              v150 = v5;
              v153 = v12;
              v155 = v6;
              v20 = 0;
              v21 = *v168;
              v159 = v17;
              do
              {
                v22 = 0;
                do
                {
                  if (*v168 != v21)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v23 = *(*(&v167 + 1) + 8 * v22);
                  v24 = [(WRWorkflowEventTracker *)v23 handleSignpost:v4 wrsignpost:v8];
                  if (([v23 inMiddleOfEvent] & 1) == 0)
                  {
                    v26 = v23 ? objc_getProperty(v23, v25, 136, 1) : 0;
                    if (![v26 count])
                    {
                      v27 = v4;
                      v28 = [(WRWorkflowEventTracker *)v13 workflow];
                      [v28 name];

                      [v23 eventIdentifier];
                      v29 = [v23 eventIdentifier];

                      v30 = *__error();
                      v31 = _wrlog();
                      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
                      if (v29)
                      {
                        if (v32)
                        {
                          v158 = [(WRWorkflowEventTracker *)selfa workflow];
                          v157 = [v158 name];
                          v33 = [v23 eventIdentifier];
                          *buf = 138543618;
                          *&buf[4] = v157;
                          v174 = 2114;
                          v175 = v33;
                          v34 = v33;
                          _os_log_debug_impl(&dword_2746E5000, v31, OS_LOG_TYPE_DEBUG, "%{public}@<%{public}@>: concurrent workflow done", buf, 0x16u);
                        }
                      }

                      else if (v32)
                      {
                        [(WRWorkflowEventTracker *)v182 handleSignpost:&v183, v31];
                      }

                      *__error() = v30;
                      v13 = selfa;
                      if (selfa)
                      {
                        v36 = objc_getProperty(selfa, v35, 112, 1);
                      }

                      else
                      {
                        v36 = 0;
                      }

                      v4 = v27;
                      v17 = v159;
                      [v36 removeObjectIdenticalTo:v23];
                      v8 = v160;
                    }
                  }

                  v20 |= v24;
                  ++v22;
                }

                while (v19 != v22);
                v37 = [v17 countByEnumeratingWithState:&v167 objects:v184 count:16];
                v19 = v37;
              }

              while (v37);

              v5 = v150;
              v12 = v153;
              v6 = v155;
              if (v20)
              {
                v39 = 1;
                if (!v153)
                {
LABEL_39:
                  if (v6)
                  {
LABEL_140:

                    goto LABEL_141;
                  }

                  if (v39)
                  {
                    ++selfa->_numHandledSignposts;
                    goto LABEL_140;
                  }

LABEL_52:
                  ++selfa->_numOutsideSignposts;
                  goto LABEL_140;
                }

LABEL_120:
                v118 = selfa;
                if (selfa)
                {
                  v118 = objc_getProperty(selfa, v38, 136, 1);
                }

                if (v118)
                {
                  [(WRWorkflowEventTracker *)selfa == 0 handleSignpost:v12];
                }

                else
                {
                  [(WRWorkflowEventTracker *)v12 handleSignpost:?];
                }

                goto LABEL_39;
              }
            }

            else
            {
            }

            if (!v12)
            {
              [v4 name];

              v41 = [(WRWorkflowEventTracker *)v13 workflow];
              [v41 name];

              v42 = *__error();
              v43 = _wrlog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                [WRWorkflowEventTracker handleSignpost:];
              }

              *__error() = v42;
              if (v6)
              {
                goto LABEL_140;
              }

              goto LABEL_52;
            }

            v76 = v6;
            v77 = [objc_getProperty(v12 v38];

            if (v77)
            {
              [objc_getProperty(v12 v78];

              objc_getProperty(v12, v100, 16, 1);
              [v4 name];

              v101 = [(WRWorkflowEventTracker *)selfa workflow];
              [v101 name];

              v81 = *__error();
              _wrlog();
              v82 = v102 = v12;
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
              {
                v103 = [(WRWorkflowEventTracker *)selfa workflow];
                v104 = [v103 name];
                v105 = [v4 name];
                [objc_getProperty(v102 v106];
                v107 = v152 = v5;
                v79 = v102;
                v109 = objc_getProperty(v102, v108, 16, 1);
                v110 = [v4 startMachContinuousTime];
                *buf = 138544386;
                *&buf[4] = v104;
                v174 = 2114;
                v175 = v105;
                v176 = 2114;
                v177 = v107;
                v178 = 2112;
                v179 = v109;
                v180 = 2048;
                v181 = v110;
                _os_log_debug_impl(&dword_2746E5000, v82, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@: %{public}@->%@: outside any workflow event (%llu)", buf, 0x34u);

                v5 = v152;
                v8 = v160;
              }

              else
              {
                v79 = v102;
              }
            }

            else
            {
              v79 = v12;
              [v4 name];

              v80 = [(WRWorkflowEventTracker *)selfa workflow];
              [v80 name];

              v81 = *__error();
              v82 = _wrlog();
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
              {
                [WRWorkflowEventTracker handleSignpost:];
              }
            }

            v6 = v76;

            v39 = 0;
            *__error() = v81;
            v12 = v79;
            goto LABEL_120;
          }

          [(WRWorkflowEventTracker *)v13 eventIdentifierForSignpostObject:v4 wrSignopst:v8];
          v49 = v47 = v8;
          v156 = v6;
          v154 = v12;
          if (v49)
          {
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v151 = v5;
            v50 = v4;
            if (v13)
            {
              v51 = objc_getProperty(v13, v48, 112, 1);
            }

            else
            {
              v51 = 0;
            }

            v52 = [v51 copy];
            v53 = [v52 countByEnumeratingWithState:&v162 objects:v171 count:16];
            if (v53)
            {
              v54 = v53;
              v55 = *v163;
              while (2)
              {
                for (i = 0; i != v54; ++i)
                {
                  if (*v163 != v55)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v57 = *(*(&v162 + 1) + 8 * i);
                  v58 = [v57 eventIdentifier];
                  v59 = [v58 isEqualToString:v49];

                  if (v59)
                  {
                    v4 = v50;
                    v66 = [(WRWorkflowEventTracker *)v57 handleSignpost:v50 wrsignpost:v160];
                    v5 = v151;
                    v68 = selfa;
                    if (([v57 inMiddleOfEvent] & 1) == 0)
                    {
                      v69 = v57 ? objc_getProperty(v57, v67, 136, 1) : 0;
                      if (![v69 count])
                      {
                        v70 = [(WRWorkflowEventTracker *)selfa workflow];
                        [v70 name];

                        [v57 eventIdentifier];
                        v71 = [v57 eventIdentifier];

                        v72 = *__error();
                        v73 = _wrlog();
                        v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG);
                        if (v71)
                        {
                          if (v74)
                          {
                            [WRWorkflowEventTracker handleSignpost:];
                          }
                        }

                        else if (v74)
                        {
                          [WRWorkflowEventTracker handleSignpost:?];
                        }

                        *__error() = v72;
                        v5 = v151;
                        v68 = selfa;
                        if (selfa)
                        {
                          v123 = objc_getProperty(selfa, v122, 112, 1);
                        }

                        else
                        {
                          v123 = 0;
                        }

                        [v123 removeObjectIdenticalTo:v57];
                      }
                    }

                    if ((v156 & 1) == 0)
                    {
                      v124 = 80;
                      if (v66)
                      {
                        v124 = 72;
                      }

                      ++*(&v68->super.isa + v124);
                    }

                    v12 = v154;
                    goto LABEL_139;
                  }
                }

                v54 = [v52 countByEnumeratingWithState:&v162 objects:v171 count:16];
                if (v54)
                {
                  continue;
                }

                break;
              }
            }

            v4 = v50;
            [v50 name];

            v60 = [(WRWorkflowEventTracker *)selfa workflow];
            [v60 name];

            v61 = *__error();
            v62 = _wrlog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              v130 = [(WRWorkflowEventTracker *)selfa workflow];
              v131 = [v130 name];
              v132 = [v50 name];
              *buf = 138543874;
              *&buf[4] = v131;
              v174 = 2114;
              v175 = v49;
              v176 = 2114;
              v177 = v132;
              _os_log_debug_impl(&dword_2746E5000, v62, OS_LOG_TYPE_DEBUG, "%{public}@<%{public}@>: %{public}@: No concurrent event with event identifier", buf, 0x20u);
            }

            *__error() = v61;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v63 = [(WRWorkflowEventTracker *)selfa workflow];
              v64 = [v63 startSignposts];
              v65 = [v64 indexOfObjectIdenticalTo:v160] != 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v65 = 0;
            }

            v5 = v151;
            v12 = v154;
            v111 = v156;
            if (v65 || v154)
            {
              [v50 name];

              v133 = [(WRWorkflowEventTracker *)selfa workflow];
              [v133 name];

              v134 = *__error();
              v135 = _wrlog();
              if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
              {
                v136 = [(WRWorkflowEventTracker *)selfa workflow];
                v137 = [v136 name];
                v138 = [v50 name];
                *buf = 138543874;
                *&buf[4] = v137;
                v174 = 2114;
                v175 = v49;
                v176 = 2114;
                v177 = v138;
                _os_log_debug_impl(&dword_2746E5000, v135, OS_LOG_TYPE_DEBUG, "%{public}@<%{public}@>: %{public}@: Allocating new concurrent event", buf, 0x20u);

                v111 = v156;
                v12 = v154;

                v5 = v151;
              }

              *__error() = v134;
              v139 = [(WRWorkflowEventTracker *)selfa newConcurrentEventWithIdentifier:v49];
              v140 = [(WRWorkflowEventTracker *)v139 handleSignpost:v50 wrsignpost:v160];
              if ((v111 & 1) == 0)
              {
                v141 = 80;
                if (v140)
                {
                  v141 = 72;
                }

                ++*(&selfa->super.isa + v141);
              }
            }

            else if ((v156 & 1) == 0)
            {
              ++selfa->_numOutsideSignposts;
            }

            goto LABEL_139;
          }

          if ([v47 eventIdentifierIsSignpostID])
          {
            v75 = @"signpost id";
          }

          else
          {
            v75 = [v47 eventIdentifierFieldName];
            if (!v75)
            {
              v83 = v5;
              [v4 name];

              v121 = [(WRWorkflowEventTracker *)v13 workflow];
              [v121 name];

              v85 = *__error();
              v86 = _wrlog();
              if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
              {
                v88 = selfa;
                [WRWorkflowEventTracker handleSignpost:];
                v75 = 0;
                v87 = 1;
                goto LABEL_89;
              }

              v75 = 0;
              v87 = 1;
              goto LABEL_88;
            }
          }

          v83 = v5;
          [v4 name];

          v84 = [(WRWorkflowEventTracker *)v13 workflow];
          [v84 name];

          v85 = *__error();
          v86 = _wrlog();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            v127 = [(WRWorkflowEventTracker *)selfa workflow];
            v128 = [v127 name];
            v129 = [v4 name];
            *buf = 138544130;
            *&buf[4] = v128;
            v174 = 2114;
            v175 = v129;
            v176 = 2114;
            v177 = v75;
            v178 = 2112;
            v179 = 0;
            _os_log_error_impl(&dword_2746E5000, v86, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: Unable to get event identifier, ignoring signpost", buf, 0x2Au);

            v88 = selfa;
            v87 = 0;
            goto LABEL_89;
          }

          v87 = 0;
LABEL_88:
          v88 = selfa;
LABEL_89:

          *__error() = v85;
          [(WRWorkflowEventTracker *)v88 workflow];
          v90 = v89 = v88;
          v91 = [v90 startSignposts];
          v92 = [v91 indexOfObjectIdenticalTo:v160];

          [v4 name];
          v93 = [(WRWorkflowEventTracker *)v89 workflow];
          [v93 name];

          v94 = *__error();
          v95 = _wrlog();
          v96 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
          v5 = v83;
          if (v92 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v97 = v156;
            if (v87)
            {
              v98 = selfa;
              if (v96)
              {
                [WRWorkflowEventTracker handleSignpost:];
              }
            }

            else
            {
              v98 = selfa;
              if (v96)
              {
                v142 = [(WRWorkflowEventTracker *)selfa workflow];
                [v142 name];
                v144 = v143 = v5;
                v145 = [v4 name];
                *buf = 138544130;
                *&buf[4] = v144;
                v174 = 2114;
                v175 = v145;
                v176 = 2114;
                v177 = v75;
                v178 = 2112;
                v179 = 0;
                _os_log_error_impl(&dword_2746E5000, v95, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: Unable to get event identifier, ignoring signpost", buf, 0x2Au);

                v5 = v143;
                v98 = selfa;
              }
            }

            *__error() = v94;
            v12 = v154;
          }

          else
          {
            v97 = v156;
            if (v87)
            {
              v99 = selfa;
              if (v96)
              {
                [WRWorkflowEventTracker handleSignpost:];
              }
            }

            else
            {
              v99 = selfa;
              if (v96)
              {
                v146 = [(WRWorkflowEventTracker *)selfa workflow];
                [v146 name];
                v148 = v147 = v5;
                v149 = [v4 name];
                *buf = 138544130;
                *&buf[4] = v148;
                v174 = 2114;
                v175 = v149;
                v176 = 2114;
                v177 = v75;
                v178 = 2112;
                v179 = 0;
                _os_log_error_impl(&dword_2746E5000, v95, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: %{public}@->%@: Unable to get event identifier for start signpost, throwing out all current events in case they were incomplete events", buf, 0x2Au);

                v5 = v147;
                v99 = selfa;
              }
            }

            *__error() = v94;
            memset(v166, 0, sizeof(v166));
            if (v99)
            {
              v113 = objc_getProperty(v99, v112, 112, 1);
            }

            else
            {
              v113 = 0;
            }

            v12 = v154;
            v114 = v113;
            v115 = [v114 countByEnumeratingWithState:v166 objects:v172 count:16];
            if (v115)
            {
              [(WRWorkflowEventTracker *)v166 handleSignpost:v114, v115, v172];
            }

            v98 = selfa;
            if (selfa)
            {
              v117 = objc_getProperty(selfa, v116, 112, 1);
            }

            else
            {
              v117 = 0;
            }

            [v117 removeAllObjects];
          }

          if ((v97 & 1) == 0)
          {
            ++v98->_numOutsideSignposts;
          }

LABEL_139:
          v8 = v160;
          goto LABEL_140;
        }
      }

      v12 = 0;
      v13 = self;
      goto LABEL_11;
    }

    v40 = [(WRWorkflowEventTracker *)self handleSignpost:v4 wrsignpost:v8];
    if ((v6 & 1) == 0)
    {
      if (v40)
      {
        ++self->_numHandledSignposts;
      }

      else
      {
        ++self->_numOutsideSignposts;
      }
    }
  }

  else if ((v6 & 1) == 0)
  {
    ++self->_numUnhandledSignposts;
  }

LABEL_141:

  v125 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

- (uint64_t)handleSignpost:(void *)a3 wrsignpost:
{
  v429 = *MEMORY[0x277D85DE8];
  v391 = a2;
  newValue = a3;
  if (!a1)
  {
    goto LABEL_75;
  }

  self = a1;
  v6 = objc_getProperty(a1, v5, 120, 1);
  v7 = 0x277D54000uLL;
  if (v6)
  {
    goto LABEL_3;
  }

  v8 = a1;
  if (![a1 inMiddleOfEvent])
  {
    goto LABEL_9;
  }

  v6 = [a1 workflow];
  if (![v6 hasMaximumEventDuration])
  {
LABEL_3:
    v8 = self;
LABEL_9:

    goto LABEL_10;
  }

  v8 = a1;
  v9 = [a1 ignoreEventTimeouts];

  if ((v9 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v391 timeRecordedNanoseconds];
    }

    else
    {
      v143 = [v391 beginEvent];
      v10 = [v143 timeRecordedNanoseconds];

      v8 = self;
    }

    v144 = [v8 eventStart];
    v145 = [v144 machContTimeNs];
    v146 = [self workflow];
    [v146 maximumEventDuration];
    v148 = v145 + (v147 * 1000000000.0);

    v149 = v148 >= v10;
    v8 = self;
    v7 = 0x277D54000;
    if (!v149)
    {
      [(WRWorkflowEventTracker *)v391 handleSignpost:v10 wrsignpost:self, buf];
      v6 = *buf;
      goto LABEL_3;
    }
  }

LABEL_10:
  v11 = *(v7 + 4088);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_76;
  }

  v373 = v391;
  v12 = [v8 workflow];
  v13 = [v12 startSignposts];
  v14 = [v13 indexOfObjectIdenticalTo:newValue];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [self inMiddleOfEvent];
    [v373 name];

    v17 = [self workflow];
    [v17 name];

    [self eventIdentifier];
    v18 = [self eventIdentifier];

    v19 = *__error();
    v20 = _wrlog();
    v21 = v20;
    if (v16)
    {
      v22 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      if (v18)
      {
        if (v22)
        {
          [WRWorkflowEventTracker handleSignpost:v373 wrsignpost:?];
        }
      }

      else if (v22)
      {
        [WRWorkflowEventTracker handleSignpost:v373 wrsignpost:?];
      }
    }

    else
    {
      v23 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v23)
        {
          v24 = [self workflow];
          v25 = [v24 name];
          v26 = [self eventIdentifier];
          [v373 name];
          v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          [v373 beginDate];
          v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v29 = COERCE_DOUBLE([v373 startMachContinuousTime]);
          *buf = 138544386;
          *&buf[4] = v25;
          v410 = 2114;
          v411 = v26;
          v412 = 2114;
          v413 = v27;
          v414 = 2112;
          v415 = v28;
          v416 = 2048;
          v417 = v29;
          _os_log_impl(&dword_2746E5000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: %{public}@: event start @ %@ (%llu)", buf, 0x34u);
        }
      }

      else if (v23)
      {
        v30 = [self workflow];
        v31 = [v30 name];
        v32 = [v373 name];
        [v373 beginDate];
        v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v34 = COERCE_DOUBLE([v373 startMachContinuousTime]);
        *buf = 138544130;
        *&buf[4] = v31;
        v410 = 2114;
        v411 = v32;
        v412 = 2112;
        v413 = v33;
        v414 = 2048;
        v415 = v34;
        _os_log_impl(&dword_2746E5000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: event start @ %@ (%llu)", buf, 0x2Au);
      }
    }

    *__error() = v19;
    v36 = objc_getProperty(self, v35, 136, 1);
    v37 = [v373 timeRecordedNanoseconds];
    v38 = [v373 beginDate];
    v39 = [v38 dateByAddingTimeInterval:{(objc_msgSend(v373, "timeRecordedNanoseconds") - objc_msgSend(v373, "startNanoseconds")) / 1000000000.0}];
    [(WRWorkflowEventTracker *)self reportErrorsAndResetAtMachContNs:v37 date:v39];

    v407 = 0u;
    v408 = 0u;
    v405 = 0u;
    v406 = 0u;
    obj = v36;
    v41 = [obj countByEnumeratingWithState:&v405 objects:v428 count:16];
    if (v41)
    {
      v42 = *v406;
      do
      {
        v43 = 0;
        do
        {
          if (*v406 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v405 + 1) + 8 * v43);
          if (v44)
          {
            Property = objc_getProperty(*(*(&v405 + 1) + 8 * v43), v40, 8, 1);
          }

          else
          {
            Property = 0;
          }

          v46 = Property;
          v47 = [v46 individuationFieldName];

          if (v47)
          {
            if (v44)
            {
              v49 = objc_getProperty(v44, v48, 16, 1);
            }

            else
            {
              v49 = 0;
            }

            [(WRWorkflowEventTracker *)self sawIndividuationFieldName:v47 withIndividuationIdentifier:v49];
          }

          else
          {
            if (v44)
            {
              v50 = objc_getProperty(v44, v48, 8, 1);
            }

            else
            {
              v50 = 0;
            }

            v51 = v50;
            [v51 name];

            v52 = [self workflow];
            [v52 name];

            [self eventIdentifier];
            v53 = [self eventIdentifier];

            v54 = v53 == 0;
            v55 = *__error();
            v56 = _wrlog();
            v57 = os_log_type_enabled(v56, OS_LOG_TYPE_FAULT);
            if (v54)
            {
              if (v57)
              {
                v389 = [self workflow];
                v386 = [v389 name];
                if (v44)
                {
                  v66 = objc_getProperty(v44, v65, 8, 1);
                }

                else
                {
                  v66 = 0;
                }

                v67 = v66;
                v69 = [v67 name];
                if (v44)
                {
                  v70 = objc_getProperty(v44, v68, 16, 1);
                }

                else
                {
                  v70 = 0;
                }

                v71 = COERCE_DOUBLE(v70);
                *buf = 138543874;
                *&buf[4] = v386;
                v410 = 2114;
                v411 = v69;
                v412 = 2112;
                v413 = v71;
                _os_log_fault_impl(&dword_2746E5000, v56, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: No indivudation field name for identifier %@", buf, 0x20u);
              }
            }

            else if (v57)
            {
              v388 = [self workflow];
              v385 = [v388 name];
              v379 = [self eventIdentifier];
              if (v44)
              {
                v59 = objc_getProperty(v44, v58, 8, 1);
              }

              else
              {
                v59 = 0;
              }

              v60 = v59;
              [v60 name];
              v62 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              if (v44)
              {
                v63 = objc_getProperty(v44, v61, 16, 1);
              }

              else
              {
                v63 = 0;
              }

              v64 = COERCE_DOUBLE(v63);
              *buf = 138544130;
              *&buf[4] = v385;
              v410 = 2114;
              v411 = v379;
              v412 = 2114;
              v413 = v62;
              v414 = 2112;
              v415 = v64;
              _os_log_fault_impl(&dword_2746E5000, v56, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: No indivudation field name for identifier %@", buf, 0x2Au);
            }

            *__error() = v55;
          }

          ++v43;
        }

        while (v41 != v43);
        v72 = [obj countByEnumeratingWithState:&v405 objects:v428 count:16];
        v41 = v72;
      }

      while (v72);
    }

    objc_setProperty_atomic(self, v73, newValue, 40);
    v74 = [WRTimestampAndThread alloc];
    v75 = [v373 processID];
    v76 = [v373 threadID];
    v77 = [v373 startNanoseconds];
    v78 = [v373 beginDate];
    v79 = [(WRTimestampAndThread *)&v74->super.isa initWithPID:v75 threadID:v76 machContTimeNs:v77 date:v78];
    objc_setProperty_atomic(self, v80, v79, 32);

    v82 = objc_getProperty(self, v81, 120, 1);
    if (!v82)
    {
      goto LABEL_73;
    }

    v83 = [self workflow];
    if ([v83 hasMaximumEventDuration])
    {
      v84 = [self ignoreEventTimeouts];

      if (v84)
      {
LABEL_73:

        goto LABEL_74;
      }

      v85 = [v373 startNanoseconds];
      v83 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v82);
      v86 = [self workflow];
      [v86 maximumEventDuration];
      v88 = v87;

      if (v88 / 100.0 >= 1.0)
      {
        v89 = v88 / 100.0;
      }

      else
      {
        v89 = 1.0;
      }

      v90 = [self workflow];
      [v90 maximumEventDuration];
      v92 = dispatch_time(0, (v91 * 1000000000.0));
      dispatch_source_set_timer(v83, v92, 0xFFFFFFFFFFFFFFFFLL, (v89 * 1000000000.0));

      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __52__WRWorkflowEventTracker_handleSignpost_wrsignpost___block_invoke;
      handler[3] = &unk_279EE32B8;
      handler[4] = self;
      handler[5] = v85;
      dispatch_source_set_event_handler(v83, handler);
      dispatch_activate(v83);
      objc_setProperty_atomic(self, v93, v83, 128);
    }

    goto LABEL_73;
  }

  if (![v373 eventType] && (objc_msgSend(self, "inMiddleOfEvent") & 1) == 0)
  {
    v15 = [newValue individuationFieldName];

    if (v15)
    {
      [(WRWorkflowEventTracker *)newValue handleSignpost:v373 wrsignpost:?];
    }
  }

LABEL_74:
  v94 = [v373 isSyntheticIntervalEvent];

  if ((v94 & 1) == 0)
  {
LABEL_76:
    [newValue individuationFieldName];
    obja = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [(WRWorkflowEventTracker *)self individuationIdentifierForSignpostObject:v391 individuationFieldName:*&obja];
    v390 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v387 = [(WRWorkflowEventTracker *)self trackerForWRSignpost:*&v390 individuationIdentifier:?];
    if (![self inMiddleOfEvent] || (v96 = objc_msgSend(v391, "endNanoseconds"), objc_msgSend(self, "eventStart"), v97 = objc_claimAutoreleasedReturnValue(), LODWORD(v96) = v96 < objc_msgSend(v97, "machContTimeNs"), v97, v96))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v98 = [v391 startNanoseconds], objc_msgSend(v391, "beginEvent"), v99 = objc_claimAutoreleasedReturnValue(), v100 = objc_msgSend(v99, "threadID"), v99, objc_msgSend(objc_getProperty(self, v101, 136, 1), "count")))
      {
        [(WRWorkflowEventTracker *)self handleSignpost:v98 wrsignpost:v100, buf];
        v95 = buf[0];
      }

      else
      {
        v95 = 0;
      }

      goto LABEL_200;
    }

    if (obja != 0.0 && v390 != 0.0)
    {
      [(WRWorkflowEventTracker *)self sawIndividuationFieldName:*&v390 withIndividuationIdentifier:?];
    }

    v102 = [v391 startNanoseconds];
    v103 = v102 == [v391 endNanoseconds];
    [v391 name];

    v104 = [self workflow];
    [v104 name];

    [self eventIdentifier];
    v105 = [self eventIdentifier];

    v106 = *__error();
    v107 = _wrlog();
    v108 = os_log_type_enabled(v107, OS_LOG_TYPE_INFO);
    if (v103)
    {
      if (obja == 0.0)
      {
        if (v105)
        {
          if (v108)
          {
            v126 = [self workflow];
            v127 = [v126 name];
            v128 = [self eventIdentifier];
            [v391 name];
            v129 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v130 = [v391 startNanoseconds];
            v131 = [self eventStart];
            v132 = [v131 machContTimeNs];
            v133 = COERCE_DOUBLE([v391 startMachContinuousTime]);
            *buf = 138544386;
            *&buf[4] = v127;
            v410 = 2114;
            v411 = v128;
            v412 = 2114;
            v413 = v129;
            v414 = 2048;
            v415 = (v130 - v132) / 1000000000.0;
            v416 = 2048;
            v417 = v133;
            _os_log_impl(&dword_2746E5000, v107, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: event middle %+.3fs @%llu", buf, 0x34u);
          }
        }

        else if (v108)
        {
          v166 = [self workflow];
          v167 = [v166 name];
          v168 = [v391 name];
          v169 = [v391 startNanoseconds];
          v170 = [self eventStart];
          v171 = [v170 machContTimeNs];
          v172 = COERCE_DOUBLE([v391 startMachContinuousTime]);
          *buf = 138544130;
          *&buf[4] = v167;
          v410 = 2114;
          v411 = v168;
          v412 = 2048;
          v413 = (v169 - v171) / 1000000000.0;
          v414 = 2048;
          v415 = v172;
          _os_log_impl(&dword_2746E5000, v107, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: event middle %+.3fs @%llu", buf, 0x2Au);
        }
      }

      else if (v105)
      {
        if (v108)
        {
          v109 = [self workflow];
          v110 = [v109 name];
          v111 = [self eventIdentifier];
          [v391 name];
          v112 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v113 = [v391 startNanoseconds];
          v114 = [self eventStart];
          v115 = [v114 machContTimeNs];
          *&v116 = COERCE_DOUBLE([v391 startMachContinuousTime]);
          *buf = 138544898;
          *&buf[4] = v110;
          v410 = 2114;
          v411 = v111;
          v412 = 2114;
          v413 = v112;
          v414 = 2114;
          v415 = obja;
          v416 = 2112;
          v417 = v390;
          v418 = 2048;
          v419 = (v113 - v115) / 1000000000.0;
          v420 = 2048;
          v421 = *&v116;
          _os_log_impl(&dword_2746E5000, v107, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: event middle %+.3fs @%llu", buf, 0x48u);
        }
      }

      else if (v108)
      {
        v150 = [self workflow];
        v151 = [v150 name];
        v152 = [v391 name];
        v153 = [v391 startNanoseconds];
        v154 = [self eventStart];
        v155 = [v154 machContTimeNs];
        v156 = COERCE_DOUBLE([v391 startMachContinuousTime]);
        *buf = 138544642;
        *&buf[4] = v151;
        v410 = 2114;
        v411 = v152;
        v412 = 2114;
        v413 = obja;
        v414 = 2112;
        v415 = v390;
        v416 = 2048;
        v417 = (v153 - v155) / 1000000000.0;
        v418 = 2048;
        v419 = v156;
        _os_log_impl(&dword_2746E5000, v107, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@->%@: event middle %+.3fs @%llu", buf, 0x3Eu);
      }
    }

    else if (obja == 0.0)
    {
      if (v105)
      {
        if (v108)
        {
          v134 = [self workflow];
          v375 = [v134 name];
          v370 = [self eventIdentifier];
          [v391 name];
          v366 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v364 = [v391 startNanoseconds];
          v381 = [self eventStart];
          v135 = [v381 machContTimeNs];
          v136 = [v391 endNanoseconds];
          v137 = [self eventStart];
          v138 = [v137 machContTimeNs];
          v139 = [v391 endNanoseconds];
          v140 = [v391 startNanoseconds];
          *&v141 = COERCE_DOUBLE([v391 startMachContinuousTime]);
          v142 = COERCE_DOUBLE([v391 endMachContinuousTime]);
          *buf = 138545154;
          *&buf[4] = v375;
          v410 = 2114;
          v411 = v370;
          v412 = 2114;
          v413 = v366;
          v414 = 2048;
          v415 = (v364 - v135) / 1000000000.0;
          v416 = 2048;
          v417 = (v136 - v138) / 1000000000.0;
          v418 = 2048;
          v419 = (v139 - v140) / 1000000000.0;
          v420 = 2048;
          v421 = *&v141;
          v422 = 2048;
          v423 = v142;
          _os_log_impl(&dword_2746E5000, v107, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: event middle %+.3fs - %+.3fs (%.3fs) @%llu-%llu", buf, 0x52u);
        }
      }

      else if (v108)
      {
        v173 = [self workflow];
        v377 = [v173 name];
        v372 = [v391 name];
        v368 = [v391 startNanoseconds];
        v383 = [self eventStart];
        v174 = [v383 machContTimeNs];
        v175 = [v391 endNanoseconds];
        v176 = [self eventStart];
        v177 = [v176 machContTimeNs];
        v178 = [v391 endNanoseconds];
        v179 = [v391 startNanoseconds];
        v180 = COERCE_DOUBLE([v391 startMachContinuousTime]);
        *&v181 = COERCE_DOUBLE([v391 endMachContinuousTime]);
        *buf = 138544898;
        *&buf[4] = v377;
        v410 = 2114;
        v411 = v372;
        v412 = 2048;
        v413 = (v368 - v174) / 1000000000.0;
        v414 = 2048;
        v415 = (v175 - v177) / 1000000000.0;
        v416 = 2048;
        v417 = (v178 - v179) / 1000000000.0;
        v418 = 2048;
        v419 = v180;
        v420 = 2048;
        v421 = *&v181;
        _os_log_impl(&dword_2746E5000, v107, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: event middle %+.3fs - %+.3fs (%.3fs) @%llu-%llu", buf, 0x48u);
      }
    }

    else if (v105)
    {
      if (v108)
      {
        v117 = [self workflow];
        v374 = [v117 name];
        v369 = [self eventIdentifier];
        [v391 name];
        v365 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v363 = [v391 startNanoseconds];
        v380 = [self eventStart];
        v118 = [v380 machContTimeNs];
        v119 = [v391 endNanoseconds];
        v120 = [self eventStart];
        v121 = [v120 machContTimeNs];
        v122 = [v391 endNanoseconds];
        v123 = [v391 startNanoseconds];
        v124 = [v391 startMachContinuousTime];
        v125 = [v391 endMachContinuousTime];
        *buf = 138545666;
        *&buf[4] = v374;
        v410 = 2114;
        v411 = v369;
        v412 = 2114;
        v413 = v365;
        v414 = 2114;
        v415 = obja;
        v416 = 2112;
        v417 = v390;
        v418 = 2048;
        v419 = (v363 - v118) / 1000000000.0;
        v420 = 2048;
        v421 = (v119 - v121) / 1000000000.0;
        v422 = 2048;
        v423 = (v122 - v123) / 1000000000.0;
        v424 = 2048;
        v425 = v124;
        v426 = 2048;
        v427 = v125;
        _os_log_impl(&dword_2746E5000, v107, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: event middle %+.3fs - %+.3fs (%.3fs) @%llu-%llu", buf, 0x66u);
      }
    }

    else if (v108)
    {
      v157 = [self workflow];
      v371 = [v157 name];
      v376 = [v391 name];
      v367 = [v391 startNanoseconds];
      v382 = [self eventStart];
      v158 = [v382 machContTimeNs];
      v159 = [v391 endNanoseconds];
      v160 = [self eventStart];
      v161 = [v160 machContTimeNs];
      v162 = [v391 endNanoseconds];
      v163 = [v391 startNanoseconds];
      v164 = COERCE_DOUBLE([v391 startMachContinuousTime]);
      v165 = [v391 endMachContinuousTime];
      *buf = 138545410;
      *&buf[4] = v371;
      v410 = 2114;
      v411 = v376;
      v412 = 2114;
      v413 = obja;
      v414 = 2112;
      v415 = v390;
      v416 = 2048;
      v417 = (v367 - v158) / 1000000000.0;
      v418 = 2048;
      v419 = (v159 - v161) / 1000000000.0;
      v420 = 2048;
      v421 = (v162 - v163) / 1000000000.0;
      v422 = 2048;
      v423 = v164;
      v424 = 2048;
      v425 = v165;
      _os_log_impl(&dword_2746E5000, v107, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@->%@: event middle %+.3fs - %+.3fs (%.3fs) @%llu-%llu", buf, 0x5Cu);
    }

    *__error() = v106;
    [(WRWorkflowEventTracker *)self applySignpost:v391 toSignpostTracker:v387];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v391 eventType])
    {
LABEL_199:
      v95 = 1;
LABEL_200:

      goto LABEL_201;
    }

    v183 = objc_getProperty(self, v182, 152, 1);
    v184 = [v183 count] == 0;

    if (v184)
    {
      goto LABEL_186;
    }

    v384 = 0;
    v186 = 0;
    v187 = 0;
    while (1)
    {
      v188 = objc_getProperty(self, v185, 152, 1);
      v189 = [v188 objectAtIndexedSubscript:v187];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v186)
        {
          goto LABEL_190;
        }

        v190 = [self workflow];
        v191 = [v190 endSignpostGroups];
        v192 = [v191 objectAtIndexedSubscript:v187];
        v193 = [v192 indexOfObjectIdenticalTo:newValue] == 0x7FFFFFFFFFFFFFFFLL;

        if (!v193)
        {
          if (v390 == 0.0)
          {
            [newValue name];

            v195 = [self workflow];
            [v195 name];

            [self eventIdentifier];
            v196 = [self eventIdentifier];

            v197 = *__error();
            v198 = _wrlog();
            v199 = os_log_type_enabled(v198, OS_LOG_TYPE_INFO);
            if (obja == 0.0)
            {
              if (v196)
              {
                if (v199)
                {
                  v216 = [self workflow];
                  v217 = [v216 name];
                  v218 = [self eventIdentifier];
                  [newValue name];
                  v219 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  *buf = 138543874;
                  *&buf[4] = v217;
                  v410 = 2114;
                  v411 = v218;
                  v412 = 2114;
                  v413 = v219;
                  _os_log_impl(&dword_2746E5000, v198, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: End signpost group candidate", buf, 0x20u);
                }
              }

              else if (v199)
              {
                v228 = [self workflow];
                v229 = [v228 name];
                v230 = [newValue name];
                *buf = 138543618;
                *&buf[4] = v229;
                v410 = 2114;
                v411 = v230;
                _os_log_impl(&dword_2746E5000, v198, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: End signpost group candidate", buf, 0x16u);
              }
            }

            else if (v196)
            {
              if (v199)
              {
                v200 = [self workflow];
                v201 = [v200 name];
                v202 = [self eventIdentifier];
                [newValue name];
                v203 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                *buf = 138544386;
                *&buf[4] = v201;
                v410 = 2114;
                v411 = v202;
                v412 = 2114;
                v413 = v203;
                v414 = 2114;
                v415 = obja;
                v416 = 2112;
                v417 = 0.0;
                _os_log_impl(&dword_2746E5000, v198, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: End signpost group candidate", buf, 0x34u);
              }
            }

            else if (v199)
            {
              v220 = [self workflow];
              v221 = [v220 name];
              v222 = [newValue name];
              *buf = 138544130;
              *&buf[4] = v221;
              v410 = 2114;
              v411 = v222;
              v412 = 2114;
              v413 = obja;
              v414 = 2112;
              v415 = 0.0;
              _os_log_impl(&dword_2746E5000, v198, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@->%@: End signpost group candidate", buf, 0x2Au);
            }

            *__error() = v197;
            [objc_getProperty(self v231];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v194 = v189;
            }

            else
            {
              v204 = [MEMORY[0x277CBEB68] null];
              v205 = v189 == v204;

              if (!v205)
              {
                [newValue name];

                v206 = [self workflow];
                [v206 name];

                [self eventIdentifier];
                v207 = [self eventIdentifier];

                v208 = *__error();
                v209 = _wrlog();
                v210 = os_log_type_enabled(v209, OS_LOG_TYPE_FAULT);
                if (obja == 0.0)
                {
                  if (v207)
                  {
                    if (v210)
                    {
                      v223 = [self workflow];
                      v224 = [v223 name];
                      v225 = [self eventIdentifier];
                      [newValue name];
                      v226 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                      *&v227 = COERCE_DOUBLE(object_getClassName(v189));
                      *buf = 138544130;
                      *&buf[4] = v224;
                      v410 = 2114;
                      v411 = v225;
                      v412 = 2114;
                      v413 = v226;
                      v414 = 2080;
                      v415 = *&v227;
                      _os_log_fault_impl(&dword_2746E5000, v209, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: candidateEndSignpostTracker is bad class %s", buf, 0x2Au);
                    }
                  }

                  else if (v210)
                  {
                    v295 = [self workflow];
                    v296 = [v295 name];
                    v297 = [newValue name];
                    *&v298 = COERCE_DOUBLE(object_getClassName(v189));
                    *buf = 138543874;
                    *&buf[4] = v296;
                    v410 = 2114;
                    v411 = v297;
                    v412 = 2080;
                    v413 = *&v298;
                    _os_log_fault_impl(&dword_2746E5000, v209, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: candidateEndSignpostTracker is bad class %s", buf, 0x20u);
                  }
                }

                else if (v207)
                {
                  if (v210)
                  {
                    v211 = [self workflow];
                    v212 = [v211 name];
                    v213 = [self eventIdentifier];
                    [newValue name];
                    v214 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *&v215 = COERCE_DOUBLE(object_getClassName(v189));
                    *buf = 138544642;
                    *&buf[4] = v212;
                    v410 = 2114;
                    v411 = v213;
                    v412 = 2114;
                    v413 = v214;
                    v414 = 2114;
                    v415 = obja;
                    v416 = 2112;
                    v417 = v390;
                    v418 = 2080;
                    v419 = *&v215;
                    _os_log_fault_impl(&dword_2746E5000, v209, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: candidateEndSignpostTracker is bad class %s", buf, 0x3Eu);
                  }
                }

                else if (v210)
                {
                  v232 = [self workflow];
                  v233 = [v232 name];
                  v234 = [newValue name];
                  *&v235 = COERCE_DOUBLE(object_getClassName(v189));
                  *buf = 138544386;
                  *&buf[4] = v233;
                  v410 = 2114;
                  v411 = v234;
                  v412 = 2114;
                  v413 = obja;
                  v414 = 2112;
                  v415 = v390;
                  v416 = 2080;
                  v417 = *&v235;
                  _os_log_fault_impl(&dword_2746E5000, v209, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: candidateEndSignpostTracker is bad class %s", buf, 0x34u);
                }

                *__error() = v208;
              }

              v194 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v237 = objc_getProperty(self, v236, 152, 1);
              [v237 setObject:v194 atIndexedSubscript:v187];
            }

            v398 = 0;
            v399 = &v398;
            v400 = 0x3032000000;
            v401 = __Block_byref_object_copy_;
            v402 = __Block_byref_object_dispose_;
            v403 = 0;
            v395[0] = MEMORY[0x277D85DD0];
            v395[1] = 3221225472;
            v395[2] = __52__WRWorkflowEventTracker_handleSignpost_wrsignpost___block_invoke_209;
            v395[3] = &unk_279EE32E0;
            v238 = *&v390;
            v396 = v238;
            v397 = &v398;
            [v194 enumerateKeysAndObjectsUsingBlock:v395];
            v239 = *(v399 + 5);
            if (v239)
            {
              [v194 setObject:v387 forKeyedSubscript:v238];
              if (obja == 0.0)
              {
                [newValue name];

                v252 = [self workflow];
                [v252 name];

                [self eventIdentifier];
                v253 = [self eventIdentifier];

                if (!v253)
                {
                  v254 = *__error();
                  v255 = _wrlog();
                  if (os_log_type_enabled(v255, OS_LOG_TYPE_DEBUG))
                  {
                    v290 = v239;
                    v291 = [self workflow];
                    v292 = [v291 name];
                    v293 = [newValue name];
                    v294 = v399[5];
                    *buf = 138543874;
                    *&buf[4] = v292;
                    v410 = 2114;
                    v411 = v293;
                    v412 = 2112;
                    v413 = v294;
                    _os_log_debug_impl(&dword_2746E5000, v255, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@: End signpost with individuation, still needs %@", buf, 0x20u);

                    v239 = v290;
                  }

                  goto LABEL_175;
                }

                v242 = *__error();
                v243 = _wrlog();
                if (os_log_type_enabled(v243, OS_LOG_TYPE_DEBUG))
                {
                  v279 = v239;
                  v280 = [self workflow];
                  v281 = [v280 name];
                  v282 = [self eventIdentifier];
                  [newValue name];
                  v283 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  v284 = v399[5];
                  *buf = 138544130;
                  *&buf[4] = v281;
                  v410 = 2114;
                  v411 = v282;
                  v412 = 2114;
                  v413 = v283;
                  v414 = 2112;
                  v415 = v284;
                  _os_log_debug_impl(&dword_2746E5000, v243, OS_LOG_TYPE_DEBUG, "%{public}@<%{public}@>: %{public}@: End signpost with individuation, still needs %@", buf, 0x2Au);

                  v239 = v279;
                }

LABEL_162:

                *__error() = v242;
              }

              else
              {
                [newValue name];

                v240 = [self workflow];
                [v240 name];

                [self eventIdentifier];
                v241 = [self eventIdentifier];

                if (v241)
                {
                  v242 = *__error();
                  v243 = _wrlog();
                  if (os_log_type_enabled(v243, OS_LOG_TYPE_DEBUG))
                  {
                    v273 = v239;
                    v274 = [self workflow];
                    v275 = [v274 name];
                    v276 = [self eventIdentifier];
                    [newValue name];
                    v277 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    v278 = v399[5];
                    *buf = 138544642;
                    *&buf[4] = v275;
                    v410 = 2114;
                    v411 = v276;
                    v412 = 2114;
                    v413 = v277;
                    v414 = 2114;
                    v415 = obja;
                    v416 = 2112;
                    v417 = v390;
                    v418 = 2112;
                    v419 = v278;
                    _os_log_debug_impl(&dword_2746E5000, v243, OS_LOG_TYPE_DEBUG, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: End signpost with individuation, still needs %@", buf, 0x3Eu);

                    v239 = v273;
                  }

                  goto LABEL_162;
                }

                v254 = *__error();
                v255 = _wrlog();
                if (os_log_type_enabled(v255, OS_LOG_TYPE_DEBUG))
                {
                  v285 = v239;
                  v286 = [self workflow];
                  v287 = [v286 name];
                  v288 = [newValue name];
                  v289 = v399[5];
                  *buf = 138544386;
                  *&buf[4] = v287;
                  v410 = 2114;
                  v411 = v288;
                  v412 = 2114;
                  v413 = obja;
                  v414 = 2112;
                  v415 = v390;
                  v416 = 2112;
                  v417 = v289;
                  _os_log_debug_impl(&dword_2746E5000, v255, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@: %{public}@->%@: End signpost with individuation, still needs %@", buf, 0x34u);

                  v239 = v285;
                }

LABEL_175:

                *__error() = v254;
              }

              v384 = 1;
            }

            else
            {
              if (obja == 0.0)
              {
                [newValue name];

                v256 = [self workflow];
                [v256 name];

                [self eventIdentifier];
                v257 = [self eventIdentifier];

                if (v257)
                {
                  v246 = *__error();
                  v247 = _wrlog();
                  if (os_log_type_enabled(v247, OS_LOG_TYPE_INFO))
                  {
                    v258 = [self workflow];
                    v259 = [v258 name];
                    v260 = [self eventIdentifier];
                    [newValue name];
                    v261 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = 138543874;
                    *&buf[4] = v259;
                    v410 = 2114;
                    v411 = v260;
                    v412 = 2114;
                    v413 = v261;
                    _os_log_impl(&dword_2746E5000, v247, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: End signpost with individuation, set as candidate for group", buf, 0x20u);

                    v239 = 0;
                  }
                }

                else
                {
                  v246 = *__error();
                  v247 = _wrlog();
                  if (os_log_type_enabled(v247, OS_LOG_TYPE_INFO))
                  {
                    v265 = [self workflow];
                    v266 = [v265 name];
                    v267 = [newValue name];
                    *buf = 138543618;
                    *&buf[4] = v266;
                    v410 = 2114;
                    v411 = v267;
                    _os_log_impl(&dword_2746E5000, v247, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: End signpost with individuation, set as candidate for group", buf, 0x16u);

                    v239 = 0;
                  }
                }
              }

              else
              {
                [newValue name];

                v244 = [self workflow];
                [v244 name];

                [self eventIdentifier];
                v245 = [self eventIdentifier];

                if (v245)
                {
                  v246 = *__error();
                  v247 = _wrlog();
                  if (os_log_type_enabled(v247, OS_LOG_TYPE_INFO))
                  {
                    v248 = [self workflow];
                    v249 = [v248 name];
                    v250 = [self eventIdentifier];
                    [newValue name];
                    v251 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = 138544386;
                    *&buf[4] = v249;
                    v410 = 2114;
                    v411 = v250;
                    v412 = 2114;
                    v413 = v251;
                    v414 = 2114;
                    v415 = obja;
                    v416 = 2112;
                    v417 = v390;
                    _os_log_impl(&dword_2746E5000, v247, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: End signpost with individuation, set as candidate for group", buf, 0x34u);

                    v239 = 0;
                  }
                }

                else
                {
                  v246 = *__error();
                  v247 = _wrlog();
                  if (os_log_type_enabled(v247, OS_LOG_TYPE_INFO))
                  {
                    v262 = [self workflow];
                    v263 = [v262 name];
                    v264 = [newValue name];
                    *buf = 138544130;
                    *&buf[4] = v263;
                    v410 = 2114;
                    v411 = v264;
                    v412 = 2114;
                    v413 = obja;
                    v414 = 2112;
                    v415 = v390;
                    _os_log_impl(&dword_2746E5000, v247, OS_LOG_TYPE_INFO, "%{public}@: %{public}@: %{public}@->%@: End signpost with individuation, set as candidate for group", buf, 0x2Au);

                    v239 = 0;
                  }
                }
              }

              *__error() = v246;
              v269 = objc_getProperty(self, v268, 152, 1);
              [v269 setObject:v387 atIndexedSubscript:v187];
            }

            _Block_object_dispose(&v398, 8);
            if (v239)
            {

              if (v384)
              {
                goto LABEL_199;
              }

              goto LABEL_203;
            }
          }

          if (v384)
          {
LABEL_190:

            goto LABEL_199;
          }

          v384 = 0;
          v186 = 1;
          goto LABEL_183;
        }

        v186 = 0;
        v384 = 1;
      }

LABEL_183:

      v271 = objc_getProperty(self, v270, 152, 1);
      v272 = [v271 count];

      if (++v187 >= v272)
      {
        if (v384)
        {
          goto LABEL_199;
        }

        if ((v186 & 1) == 0)
        {
LABEL_186:
          [v391 name];

          v299 = [self workflow];
          [v299 name];

          [self eventIdentifier];
          v300 = [self eventIdentifier];

          v301 = *__error();
          v302 = _wrlog();
          v303 = os_log_type_enabled(v302, OS_LOG_TYPE_FAULT);
          if (obja == 0.0)
          {
            if (v300)
            {
              if (v303)
              {
                [WRWorkflowEventTracker handleSignpost:wrsignpost:];
              }
            }

            else if (v303)
            {
              [WRWorkflowEventTracker handleSignpost:v391 wrsignpost:?];
            }
          }

          else if (v300)
          {
            if (v303)
            {
              v304 = [self workflow];
              v305 = [v304 name];
              v306 = [self eventIdentifier];
              [v391 name];
              v307 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138544386;
              *&buf[4] = v305;
              v410 = 2114;
              v411 = v306;
              v412 = 2114;
              v413 = v307;
              v414 = 2114;
              v415 = obja;
              v416 = 2112;
              v417 = v390;
              _os_log_fault_impl(&dword_2746E5000, v302, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: No missing end signposts, but didn't find an end signpost tracker", buf, 0x34u);
            }
          }

          else if (v303)
          {
            v308 = [self workflow];
            v309 = [v308 name];
            v310 = [v391 name];
            *buf = 138544130;
            *&buf[4] = v309;
            v410 = 2114;
            v411 = v310;
            v412 = 2114;
            v413 = obja;
            v414 = 2112;
            v415 = v390;
            _os_log_fault_impl(&dword_2746E5000, v302, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@: %{public}@->%@: No missing end signposts, but didn't find an end signpost tracker", buf, 0x2Au);
          }

          *__error() = v301;
          [(WRWorkflowEventTracker *)self resetWithoutReportingErrors];
          goto LABEL_199;
        }

LABEL_203:
        [v391 name];

        v314 = [self workflow];
        [v314 name];

        [self eventIdentifier];
        v315 = [self eventIdentifier];

        v316 = *__error();
        v317 = _wrlog();
        v318 = os_log_type_enabled(v317, OS_LOG_TYPE_DEFAULT);
        if (obja == 0.0)
        {
          if (v315)
          {
            if (v318)
            {
              v327 = [self workflow];
              v328 = [v327 name];
              v329 = [self eventIdentifier];
              [v391 name];
              v330 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v331 = [v391 endNanoseconds];
              v332 = [self eventStart];
              v333 = [v332 machContTimeNs];
              v334 = COERCE_DOUBLE([v391 endMachContinuousTime]);
              *buf = 138544386;
              *&buf[4] = v328;
              v410 = 2114;
              v411 = v329;
              v412 = 2114;
              v413 = v330;
              v414 = 2048;
              v415 = (v331 - v333) / 1000000000.0;
              v416 = 2048;
              v417 = v334;
              _os_log_impl(&dword_2746E5000, v317, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: %{public}@: event end %+.3fs @%llu", buf, 0x34u);
            }
          }

          else if (v318)
          {
            v342 = [self workflow];
            v343 = [v342 name];
            v344 = [v391 name];
            v345 = [v391 endNanoseconds];
            v346 = [self eventStart];
            v347 = [v346 machContTimeNs];
            v348 = COERCE_DOUBLE([v391 endMachContinuousTime]);
            *buf = 138544130;
            *&buf[4] = v343;
            v410 = 2114;
            v411 = v344;
            v412 = 2048;
            v413 = (v345 - v347) / 1000000000.0;
            v414 = 2048;
            v415 = v348;
            _os_log_impl(&dword_2746E5000, v317, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: event end %+.3fs @%llu", buf, 0x2Au);
          }
        }

        else if (v315)
        {
          if (v318)
          {
            v319 = [self workflow];
            v320 = [v319 name];
            v321 = [self eventIdentifier];
            [v391 name];
            v322 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v323 = [v391 endNanoseconds];
            v324 = [self eventStart];
            v325 = [v324 machContTimeNs];
            *&v326 = COERCE_DOUBLE([v391 endMachContinuousTime]);
            *buf = 138544898;
            *&buf[4] = v320;
            v410 = 2114;
            v411 = v321;
            v412 = 2114;
            v413 = v322;
            v414 = 2114;
            v415 = obja;
            v416 = 2112;
            v417 = v390;
            v418 = 2048;
            v419 = (v323 - v325) / 1000000000.0;
            v420 = 2048;
            v421 = *&v326;
            _os_log_impl(&dword_2746E5000, v317, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: event end %+.3fs @%llu", buf, 0x48u);
          }
        }

        else if (v318)
        {
          v335 = [self workflow];
          v336 = [v335 name];
          v337 = [v391 name];
          v338 = [v391 endNanoseconds];
          v339 = [self eventStart];
          v340 = [v339 machContTimeNs];
          v341 = COERCE_DOUBLE([v391 endMachContinuousTime]);
          *buf = 138544642;
          *&buf[4] = v336;
          v410 = 2114;
          v411 = v337;
          v412 = 2114;
          v413 = obja;
          v414 = 2112;
          v415 = v390;
          v416 = 2048;
          v417 = (v338 - v340) / 1000000000.0;
          v418 = 2048;
          v419 = v341;
          _os_log_impl(&dword_2746E5000, v317, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: %{public}@->%@: event end %+.3fs @%llu", buf, 0x3Eu);
        }

        *__error() = v316;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v349 = [v391 processID];
          v350 = [v391 threadID];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v351 = [v391 endEvent];
            v349 = [v351 processID];

            v352 = [v391 endEvent];
            v350 = [v352 threadID];
          }

          else
          {
            v350 = 0;
            v349 = -1;
          }
        }

        v353 = [WRTimestampAndThread alloc];
        v354 = [v391 endNanoseconds];
        v355 = [v391 endDate];
        v356 = [(WRTimestampAndThread *)&v353->super.isa initWithPID:v349 threadID:v350 machContTimeNs:v354 date:v355];
        objc_setProperty_atomic(self, v357, v356, 48);

        v358 = [v387 signpost];
        objc_setProperty_atomic(self, v359, v358, 56);

        v361 = objc_getProperty(self, v360, 144, 1);
        v361[2](v361, self);

        [(WRWorkflowEventTracker *)self resetWithoutReportingErrors];
        goto LABEL_199;
      }
    }
  }

LABEL_75:
  v95 = 0;
LABEL_201:

  v312 = *MEMORY[0x277D85DE8];
  return v95;
}

void __52__WRWorkflowEventTracker_handleSignpost_wrsignpost___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStart];
  v3 = [v2 machContTimeNs];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    mach_get_times();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:0];
    if (WRMachTimebaseForLiveMachine_once != -1)
    {
      __52__WRWorkflowEventTracker_handleSignpost_wrsignpost___block_invoke_cold_1();
    }

    v6 = 0;
    if (HIDWORD(WRMachTimebaseForLiveMachine_timebase) && WRMachTimebaseForLiveMachine_timebase)
    {
      v6 = 0;
      if (WRMachTimebaseForLiveMachine_timebase != HIDWORD(WRMachTimebaseForLiveMachine_timebase))
      {
        v6 = __udivti3();
      }
    }

    [(WRWorkflowEventTracker *)*(a1 + 32) reportErrorsAndResetAtMachContNs:v6 date:v5];
  }
}

void __52__WRWorkflowEventTracker_handleSignpost_wrsignpost___block_invoke_209(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = MEMORY[0x277CBEB68];
  v9 = a3;
  v10 = [v8 null];

  if (v10 == v9)
  {
    v11 = [v12 isEqualToString:*(a1 + 32)];

    if ((v11 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
  }
}

void __37__WRWorkflowEventTracker_environment__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = [*(a1 + 32) signpost];
  v10 = [v9 name];
  v11 = [v8 initWithFormat:@"%@_%@", v10, v7];

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v11];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(WRWorkflowEventTracker *)self workflow];
  v5 = [v4 debugDescription];
  v6 = [v3 initWithFormat:@"Tracker for %@", v5];

  return v6;
}

+ (id)tailspinDirectory
{
  objc_opt_self();
  if (tailspinDirectory_onceToken != -1)
  {
    +[WRWorkflowEventTracker tailspinDirectory];
  }

  v0 = tailspinDirectory_url;

  return v0;
}

uint64_t __43__WRWorkflowEventTracker_tailspinDirectory__block_invoke()
{
  tailspinDirectory_url = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/private/var/db/WorkflowResponsiveness/Tailspins" isDirectory:1];

  return MEMORY[0x2821F96F8]();
}

+ (void)makeTailspinDirectory
{
  objc_opt_self();
  if (makeTailspinDirectory_onceToken != -1)
  {
    +[WRWorkflowEventTracker makeTailspinDirectory];
  }
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v0 = +[WRWorkflowEventTracker tailspinDirectory];
  v1 = [v0 path];
  if (!v1)
  {
    v6 = *__error();
    v7 = _wrlog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_7();
    }

    goto LABEL_11;
  }

  v2 = [v0 fileSystemRepresentation];
  if (!v2)
  {
    v6 = *__error();
    v7 = _wrlog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_6();
    }

    goto LABEL_11;
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v1];

  if ((v5 & 1) == 0)
  {
    if (geteuid())
    {
      v6 = *__error();
      v7 = _wrlog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_1();
      }

LABEL_11:

      *__error() = v6;
      goto LABEL_12;
    }

    v25 = *MEMORY[0x277CCA180];
    v26[0] = &unk_28838A6C8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v24 = 0;
    v11 = [v10 createDirectoryAtURL:v0 withIntermediateDirectories:1 attributes:v9 error:&v24];
    v12 = v24;

    if (v11)
    {
      v13 = open(v3, 0);
      if (v13 == -1)
      {
        v21 = *__error();
        v22 = _wrlog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_5();
        }

        *__error() = v21;
      }

      else
      {
        v14 = v13;
        v23 = 74245;
        v15 = ffsctl(v13, 0xC0084A44uLL, &v23, 0);
        v16 = *__error();
        v17 = _wrlog();
        v18 = v17;
        if (v15)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_3();
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_4();
        }

        *__error() = v16;
        close(v14);
      }
    }

    else
    {
      v19 = *__error();
      v20 = _wrlog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_2();
      }

      *__error() = v19;
    }
  }

LABEL_12:

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)cleanupWorkflowResponsivenessDiagnosticsDirectory
{
  v4 = +[WRWorkflowEventTracker tailspinDirectory];
  [(WRWorkflowEventTracker *)259200.0 cleanupDirectory:a1 ofFilesWithSuffix:v4 olderThan:@"tailspin"];
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/private/var/db/WorkflowResponsiveness" isDirectory:1];
  [(WRWorkflowEventTracker *)259200.0 cleanupDirectory:a1 ofFilesWithSuffix:v3 olderThan:@"tailspin"];
}

+ (void)cleanupDirectory:(void *)a3 ofFilesWithSuffix:(void *)a4 olderThan:
{
  v73[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v51 = a4;
  objc_opt_self();
  v7 = [v6 path];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v8 fileExistsAtPath:v7])
    {
      v54 = *MEMORY[0x277CBE8A8];
      v55 = *MEMORY[0x277CBE8E8];
      v73[0] = *MEMORY[0x277CBE8E8];
      v73[1] = v54;
      v9 = *MEMORY[0x277CBE7C0];
      v73[2] = *MEMORY[0x277CBE7C0];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
      v11 = [v8 enumeratorAtURL:v6 includingPropertiesForKeys:v10 options:5 errorHandler:&__block_literal_global_233];

      if (v11)
      {
        v50 = v8;
        v48 = v7;
        v49 = v6;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v47 = v11;
        obj = v11;
        v56 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
        if (!v56)
        {
          goto LABEL_43;
        }

        v53 = *v60;
        v12 = -a1;
        while (1)
        {
          v13 = 0;
          do
          {
            if (*v60 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v59 + 1) + 8 * v13);
            v71[0] = v55;
            v71[1] = v54;
            v71[2] = v9;
            v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:3];
            v58 = 0;
            v16 = [v14 resourceValuesForKeys:v15 error:&v58];
            v17 = v58;

            v18 = [v16 objectForKeyedSubscript:v55];
            v19 = [v16 objectForKeyedSubscript:v54];
            v20 = [v16 objectForKeyedSubscript:v9];
            v21 = v20;
            if (v18)
            {
              v22 = v19 == 0;
            }

            else
            {
              v22 = 1;
            }

            if (v22 || v20 == 0)
            {
              v24 = *__error();
              v25 = _wrlog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138413058;
                v64 = v14;
                v65 = 2112;
                v66 = v18;
                v67 = 2112;
                v68 = v19;
                v69 = 2112;
                v70 = v21;
                v26 = v25;
                v27 = "WR cleanup: Unable to get info about %@: filename:%@ isRegularFile:%@ creationDate:%@";
                v28 = 42;
LABEL_19:
                _os_log_error_impl(&dword_2746E5000, v26, OS_LOG_TYPE_ERROR, v27, buf, v28);
              }
            }

            else
            {
              v29 = [v19 BOOLValue];
              if (v29)
              {
                if ([v18 hasSuffix:v51])
                {
                  [v21 timeIntervalSinceNow];
                  v31 = v30;
                  v24 = *__error();
                  v25 = _wrlog();
                  v32 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
                  if (v31 <= v12)
                  {
                    if (v32)
                    {
                      *buf = 138543618;
                      v64 = v14;
                      v65 = 2114;
                      v66 = v21;
                      _os_log_impl(&dword_2746E5000, v25, OS_LOG_TYPE_INFO, "WR cleanup: %{public}@ created at %{public}@, removing", buf, 0x16u);
                    }

                    *__error() = v24;
                    v57 = 0;
                    v37 = [v50 removeItemAtURL:v14 error:&v57];
                    v38 = v57;
                    v17 = v38;
                    if ((v37 & 1) == 0)
                    {
                      v24 = *__error();
                      v25 = _wrlog();
                      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_38;
                      }

                      *buf = 138543618;
                      v64 = v14;
                      v65 = 2114;
                      v66 = v17;
                      v26 = v25;
                      v27 = "Unable to remove %{public}@: %{public}@";
                      v28 = 22;
                      goto LABEL_19;
                    }

                    if (!v38)
                    {
                      goto LABEL_39;
                    }

                    v24 = *__error();
                    v25 = _wrlog();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138543618;
                      v64 = v14;
                      v65 = 2114;
                      v66 = v17;
                      v33 = v25;
                      v34 = "Removed %{public}@ successfully, but received error: %{public}@";
                      goto LABEL_36;
                    }
                  }

                  else if (v32)
                  {
                    *buf = 138543618;
                    v64 = v14;
                    v65 = 2114;
                    v66 = v21;
                    v33 = v25;
                    v34 = "WR cleanup: %{public}@ created at %{public}@, skipping";
LABEL_36:
                    _os_log_impl(&dword_2746E5000, v33, OS_LOG_TYPE_INFO, v34, buf, 0x16u);
                  }
                }

                else
                {
                  v24 = *__error();
                  v25 = _wrlog();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v64 = v14;
                    v35 = v25;
                    v36 = "WR cleanup: %@ is not a tailspin file";
                    goto LABEL_29;
                  }
                }
              }

              else
              {
                v24 = *__error();
                v25 = _wrlog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v64 = v14;
                  v35 = v25;
                  v36 = "WR cleanup: %@ is not a regular file";
LABEL_29:
                  _os_log_debug_impl(&dword_2746E5000, v35, OS_LOG_TYPE_DEBUG, v36, buf, 0xCu);
                }
              }
            }

LABEL_38:

            *__error() = v24;
LABEL_39:

            ++v13;
          }

          while (v56 != v13);
          v39 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
          v56 = v39;
          if (!v39)
          {
LABEL_43:

            v7 = v48;
            v6 = v49;
            v8 = v50;
            v11 = v47;
            goto LABEL_53;
          }
        }
      }

      v44 = *__error();
      v45 = _wrlog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        +[WRWorkflowEventTracker cleanupDirectory:ofFilesWithSuffix:olderThan:];
      }

      *__error() = v44;
LABEL_53:
    }

    else
    {
      v42 = *__error();
      v43 = _wrlog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [WRWorkflowEventTracker cleanupDirectory:v43 ofFilesWithSuffix:? olderThan:?];
      }

      *__error() = v42;
    }
  }

  else
  {
    v40 = *__error();
    v41 = _wrlog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      +[WRWorkflowEventTracker cleanupDirectory:ofFilesWithSuffix:olderThan:];
    }

    *__error() = v40;
  }

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __71__WRWorkflowEventTracker_cleanupDirectory_ofFilesWithSuffix_olderThan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = *__error();
  v7 = _wrlog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __71__WRWorkflowEventTracker_cleanupDirectory_ofFilesWithSuffix_olderThan___block_invoke_cold_1();
  }

  *__error() = v6;
  return 1;
}

- (WRWorkflowEventTracker)initWithEncodedDict:(id)a3 error:(id *)a4
{
  v6 = a3;
  v90 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  else
  {
    a4 = &v90;
  }

  v89.receiver = self;
  v89.super_class = WRWorkflowEventTracker;
  v13 = [(WRWorkflowEventTracker *)&v89 init];
  if (v13)
  {
    v20 = DictGetDict(v6, @"wt_workflow", a4);
    if (!v20)
    {
      if (*a4)
      {
        v30 = 0;
      }

      else
      {
        WRMakeError(7, @"No workflow in tracker dict %@", v14, v15, v16, v17, v18, v19, v6);
        *a4 = v30 = 0;
      }

      goto LABEL_54;
    }

    v27 = [[WRWorkflow alloc] initWithEncodedDict:v20 error:a4];
    if (!v27)
    {
      if (*a4)
      {
        v30 = 0;
      }

      else
      {
        WRMakeError(3, @"No such workflow, or workflow disabled", v21, v22, v23, v24, v25, v26, v74);
        *a4 = v30 = 0;
      }

      goto LABEL_53;
    }

    objc_storeStrong(&v13->_workflow, v27);
    v28 = DictGetNumber(v6, @"wt_error_code", a4);
    v29 = v28;
    if (*a4)
    {
      v30 = 0;
LABEL_52:

LABEL_53:
LABEL_54:

      goto LABEL_55;
    }

    if (v28)
    {
      v31 = DictGetString(v6, @"wt_error_description", a4);
      if (*a4)
      {
        goto LABEL_18;
      }

      v32 = [v29 integerValue];
      v39 = WRMakeError(v32, @"%@", v33, v34, v35, v36, v37, v38, v31);
      error = v13->_error;
      v13->_error = v39;
    }

    v41 = DictGetString(v6, @"wt_signpost_start", a4);
    v31 = v41;
    if (!*a4)
    {
      if (v41 && ([(WRWorkflow *)v27 wrsignpostWithName:v41], v42 = objc_claimAutoreleasedReturnValue(), startSignpost = v13->_startSignpost, v13->_startSignpost = v42, startSignpost, !v13->_startSignpost))
      {
        v45 = [(WRWorkflow *)v27 name];
        WRMakeError(7, @"Workflow %@ start signpost %@ doesn't exist", v50, v51, v52, v53, v54, v55, v45);
        *a4 = v30 = 0;
      }

      else
      {
        v44 = DictGetString(v6, @"wt_signpost_end", a4);
        v45 = v44;
        if (*a4)
        {
          v30 = 0;
        }

        else
        {
          if (v44 && ([(WRWorkflow *)v27 wrsignpostWithName:v44], v46 = objc_claimAutoreleasedReturnValue(), endSignpost = v13->_endSignpost, v13->_endSignpost = v46, endSignpost, !v13->_endSignpost))
          {
            v49 = [(WRWorkflow *)v27 name];
            WRMakeError(7, @"Workflow %@ end signpost %@ doesn't exist", v57, v58, v59, v60, v61, v62, v49);
            *a4 = v30 = 0;
          }

          else
          {
            v48 = DictGetDict(v6, @"wt_event_start", a4);
            v49 = v48;
            if (*a4 || v48 && [WRWorkflowEventTracker initWithEncodedDict:error:])
            {
              v30 = 0;
            }

            else
            {
              v56 = DictGetDict(v6, @"wt_event_end", a4);
              if (*a4)
              {
                v30 = 0;
              }

              else
              {
                v78 = v56;
                if (v56 && [WRWorkflowEventTracker initWithEncodedDict:error:]|| (DictGetString(v6, @"wt_event_identifier", a4), v63 = objc_claimAutoreleasedReturnValue(), eventIdentifier = v13->_eventIdentifier, v13->_eventIdentifier = v63, eventIdentifier, *a4))
                {
                  v30 = 0;
                }

                else
                {
                  v77 = DictGetDict(v6, @"wt_signpost_trackers", a4);
                  if (v77)
                  {
                    v83 = 0;
                    v84 = &v83;
                    v85 = 0x3032000000;
                    v86 = __Block_byref_object_copy_;
                    v87 = __Block_byref_object_dispose_;
                    v88 = 0;
                    obj = objc_alloc_init(MEMORY[0x277CBEB18]);
                    v79[0] = MEMORY[0x277D85DD0];
                    v79[1] = 3221225472;
                    v79[2] = __52__WRWorkflowEventTracker_initWithEncodedDict_error___block_invoke;
                    v79[3] = &unk_279EE3370;
                    v82 = &v83;
                    v80 = v27;
                    v71 = obj;
                    v81 = v71;
                    [v77 enumerateKeysAndObjectsUsingBlock:v79];
                    v75 = v71;
                    v72 = v84[5];
                    if (v72)
                    {
                      v30 = 0;
                      *a4 = v72;
                    }

                    else
                    {
                      objc_storeStrong(&v13->_allSignpostTrackersMutable, obj);
                      v30 = v13;
                    }

                    _Block_object_dispose(&v83, 8);
                  }

                  else if (*a4)
                  {
                    WRMakeError(7, @"WRWorkflowEventTracker: No signpost trackers in dict", v65, v66, v67, v68, v69, v70, v74);
                    *a4 = v30 = 0;
                  }

                  else
                  {
                    v30 = 0;
                  }
                }

                v56 = v78;
              }
            }
          }
        }
      }

      goto LABEL_51;
    }

LABEL_18:
    v30 = 0;
LABEL_51:

    goto LABEL_52;
  }

  WRMakeError(2, @"Unable to init WRWorkflowEventTracker", v7, v8, v9, v10, v11, v12, v74);
  *a4 = v30 = 0;
LABEL_55:

  return v30;
}

void __52__WRWorkflowEventTracker_initWithEncodedDict_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [(WRWorkflow *)*(a1 + 32) wrsignpostWithName:v7];
    if (v9)
    {
      v50 = a4;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v53;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v53 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v52 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              ClassName = object_getClassName(v15);
              v46 = WRMakeError(6, @"Invalid type in signpostTrackerDicts (%s)", v40, v41, v42, v43, v44, v45, ClassName);
              v47 = *(*(a1 + 48) + 8);
              v48 = *(v47 + 40);
              *(v47 + 40) = v46;

LABEL_17:
              *v50 = 1;
              goto LABEL_18;
            }

            v16 = [WRSignpostTracker alloc];
            v17 = *(*(a1 + 48) + 8);
            obj = *(v17 + 40);
            v18 = [(WRSignpostTracker *)v16 initWithEncodedDict:v15 signpost:v9 error:&obj];
            objc_storeStrong((v17 + 40), obj);
            if (!v18)
            {
              goto LABEL_17;
            }

            [*(a1 + 40) addObject:v18];
          }

          v12 = [v10 countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }

    else
    {
      v29 = [*(a1 + 32) name];
      v36 = WRMakeError(7, @"Workflow %@ signpost %@ doesn't exist", v30, v31, v32, v33, v34, v35, v29);
      v37 = *(*(a1 + 48) + 8);
      v38 = *(v37 + 40);
      *(v37 + 40) = v36;

      *a4 = 1;
    }
  }

  else
  {
    v19 = object_getClassName(v7);
    object_getClassName(v8);
    v26 = WRMakeError(6, @"Invalid type in signpostTrackerDicts (%s -> %s)", v20, v21, v22, v23, v24, v25, v19);
    v27 = *(*(a1 + 48) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    *a4 = 1;
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (WRWorkflowEventTracker)initWithTailspin:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  v67 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  else
  {
    a4 = &v67;
  }

  if ([v6 UTF8String])
  {
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy_;
    v65 = __Block_byref_object_dispose_;
    v66 = 0;
    if (ktrace_file_open())
    {
      v60[1] = MEMORY[0x277D85DD0];
      v60[2] = 3221225472;
      v60[3] = __49__WRWorkflowEventTracker_initWithTailspin_error___block_invoke;
      v60[4] = &unk_279EE3398;
      v60[5] = &v61;
      v14 = ktrace_file_iterate();
      ktrace_file_close();
      if (!v14)
      {
        v36 = v62[5];
        if (v36)
        {
          v60[0] = 0;
          self = [(WRWorkflowEventTracker *)self initWithEncodedString:v36 error:v60];
          v42 = v60[0];
          if (self)
          {
            v43 = [(WRWorkflowEventTracker *)self workflow];
            v44 = [v43 allowListForDiagnostics];
            v45 = [(WRWorkflowEventTracker *)self workflow];
            v46 = [v45 allowListForAllSignposts];

            if (v44 == v46)
            {
              v28 = self;
            }

            else
            {
              v47 = objc_alloc_init(MEMORY[0x277D55030]);
              v48 = [(WRWorkflowEventTracker *)self workflow];
              v49 = [v48 allowListForAllSignposts];
              [v47 setSubsystemCategoryFilter:v49];
              v57 = v42;

              v58[0] = MEMORY[0x277D85DD0];
              v58[1] = 3221225472;
              v58[2] = __49__WRWorkflowEventTracker_initWithTailspin_error___block_invoke_2;
              v58[3] = &unk_279EE33C0;
              v50 = self;
              v59 = v50;
              v51 = MEMORY[0x277C5A9A0](v58);
              [v47 setBeginEventProcessingBlock:v51];
              [v47 setEmitEventProcessingBlock:v51];
              [v47 setIntervalCompletionProcessingBlock:v51];
              v52 = [(WRWorkflowEventTracker *)v50 eventStart];
              v53 = [v52 date];
              v54 = [(WRWorkflowEventTracker *)v50 eventEnd];
              v55 = [v54 date];
              v56 = [v47 processTraceFileWithPath:v7 startDate:v53 endDate:v55 errorOut:a4];

              if (v56)
              {
                v28 = v50;
              }

              else
              {
                v28 = 0;
              }

              v42 = v57;
            }
          }

          else
          {
            WRMakeErrorWithUnderlyingError(6, v42, @"Tailspin %@ is not a Workflow Responsiveness tailspin", v37, v38, v39, v40, v41, v7);
            *a4 = v28 = 0;
          }
        }

        else
        {
          WRMakeError(7, @"No reason string in tailspin file %@", 0, v15, v16, v17, v18, v19, v7);
          *a4 = v28 = 0;
        }

        goto LABEL_11;
      }

      v20 = objc_alloc(MEMORY[0x277CCA9B8]);
      v21 = [v20 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      v27 = WRMakeErrorWithUnderlyingError(2, v21, @"Error iterating over tailspin file %@", v22, v23, v24, v25, v26, v7);
    }

    else
    {
      v29 = objc_alloc(MEMORY[0x277CCA9B8]);
      v21 = [v29 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      v27 = WRMakeErrorWithUnderlyingError(2, v21, @"Could not open tailspin file %@", v30, v31, v32, v33, v34, v7);
    }

    *a4 = v27;

    v28 = 0;
LABEL_11:
    _Block_object_dispose(&v61, 8);

    goto LABEL_12;
  }

  WRMakeError(2, @"Unable to get uft8 string from %@", v8, v9, v10, v11, v12, v13, v7);
  *a4 = v28 = 0;
LABEL_12:

  return v28;
}

uint64_t __49__WRWorkflowEventTracker_initWithTailspin_error___block_invoke(uint64_t a1)
{
  v2 = ktrace_chunk_tag();
  v3 = ktrace_chunk_version_major();
  if (ktrace_config_create())
  {
    reason = ktrace_config_get_reason();
    if (reason)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:reason];
      v6 = *(*(a1 + 32) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
LABEL_8:

      return 0;
    }

    ktrace_config_destroy();
  }

  result = 1;
  if (v2 == 36867 && v3 <= 1)
  {
    v9 = ktrace_chunk_size();
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:ktrace_chunk_map_data() length:v9 freeWhenDone:0];
    v10 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:0];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D82D08]];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    ktrace_chunk_unmap_data();
    goto LABEL_8;
  }

  return result;
}

uint64_t __49__WRWorkflowEventTracker_initWithTailspin_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workflow];
  v5 = [v4 allowListForDiagnostics];
  v6 = [v3 subsystem];
  v7 = [v3 category];
  v8 = [v5 passesSubsystem:v6 category:v7];

  if ((v8 & 1) == 0)
  {
    [(WRWorkflowEventTracker *)*(a1 + 32) fillInNonDiagnosticSignpost:v3];
  }

  return 1;
}

- (WRWorkflowEventTracker)initWithSpindump:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  v76 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  else
  {
    a4 = &v76;
  }

  v8 = [v6 UTF8String];
  if (!v8)
  {
    WRMakeError(2, @"Unable to get uft8 string from %@", v9, v10, v11, v12, v13, v14, v7);
    *a4 = v28 = 0;
    goto LABEL_24;
  }

  v15 = open(v8, 0);
  if (v15 == -1)
  {
    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
    v30 = [v29 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *a4 = WRMakeErrorWithUnderlyingError(7, v30, @"Unable to open %@", v31, v32, v33, v34, v35, v7);

LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  v16 = v15;
  v17 = fdopen(v15, "r");
  if (!v17)
  {
    v36 = objc_alloc(MEMORY[0x277CCA9B8]);
    v37 = [v36 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *a4 = WRMakeErrorWithUnderlyingError(7, v37, @"Unable to fdopen %@", v38, v39, v40, v41, v42, v7);

    close(v16);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = malloc_type_malloc(0x800uLL, 0xDC81CD91uLL);
  do
  {
    if (!fgets(v19, 2048, v18))
    {
      free(v19);
      *a4 = WRMakeError(7, @"Spindump has no custom output", v43, v44, v45, v46, v47, v48, v74);
      goto LABEL_22;
    }
  }

  while (strncmp("Custom Output:", v19, 0xEuLL));
  free(v19);
  v20 = MEMORY[0x277C5A650](v18);
  memset(&v75, 0, sizeof(v75));
  if (fstat(v16, &v75))
  {
    v21 = objc_alloc(MEMORY[0x277CCA9B8]);
    v22 = [v21 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    WRMakeErrorWithUnderlyingError(7, v22, @"Unable to fstat %@", v23, v24, v25, v26, v27, v7);
    goto LABEL_21;
  }

  v49 = v75.st_size - v20;
  if (v75.st_size <= v20)
  {
    v59 = objc_alloc(MEMORY[0x277CCA9B8]);
    v22 = [v59 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    WRMakeErrorWithUnderlyingError(7, v22, @"Spindump custom output is empty", v60, v61, v62, v63, v64, v74);
    *a4 = LABEL_21:;

LABEL_22:
    fclose(v18);
    goto LABEL_23;
  }

  v50 = malloc_type_malloc(v75.st_size - v20, 0xB423B514uLL);
  if (!v50)
  {
    v66 = objc_alloc(MEMORY[0x277CCA9B8]);
    v67 = [v66 initWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *a4 = WRMakeErrorWithUnderlyingError(2, v67, @"Unable to malloc %lu buffer", v68, v69, v70, v71, v72, v49);

    goto LABEL_22;
  }

  v51 = v50;
  v52 = fread(v50, v49, 1uLL, v18);
  fclose(v18);
  if (v52 != 1)
  {
    *a4 = WRMakeError(2, @"Unable to fread custom output from %@", v53, v54, v55, v56, v57, v58, v7);
    free(v51);
    goto LABEL_23;
  }

  v73 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v51 length:v49 freeWhenDone:1];
  self = [(WRWorkflowEventTracker *)self initWithEncodedData:v73 error:a4];

  v28 = self;
LABEL_24:

  return v28;
}

- (id)encodedStringWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  v4 = [(WRWorkflowEventTracker *)self encodedDict];
  v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:3 error:a3];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
    v19 = v12;
    if (v12)
    {
      v20 = v12;
    }

    else if (a3)
    {
      *a3 = WRMakeError(2, @"Failed to create encoded string, unable to create UTF8 string from JSON data (%@)\n", v13, v14, v15, v16, v17, v18, v4);
    }
  }

  else if (a3 && !*a3)
  {
    WRMakeError(2, @"Failed to create encoded string, unable to serialize into JSON (%@)\n", v5, v6, v7, v8, v9, v10, v4);
    *a3 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (WRWorkflowEventTracker)initWithEncodedString:(id)a3 error:(id *)a4
{
  v12 = [a3 dataUsingEncoding:4];
  if (v12)
  {
    self = [(WRWorkflowEventTracker *)self initWithEncodedData:v12 error:a4];
    v13 = self;
  }

  else if (a4)
  {
    WRMakeError(2, @"Unable to create data with encoded string", v6, v7, v8, v9, v10, v11, v15);
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)gatherDiagnosticsIfNeeded
{
  v2 = self;
  v197 = *MEMORY[0x277D85DE8];
  v3 = [(WRWorkflowEventTracker *)self eventStart];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [(WRWorkflowEventTracker *)v2 startSignpost];
  if (!v5)
  {
LABEL_7:

    goto LABEL_8;
  }

  v6 = v5;
  v7 = [(WRWorkflowEventTracker *)v2 eventEnd];
  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(WRWorkflowEventTracker *)v2 error];
  if (v9)
  {

    goto LABEL_16;
  }

  v18 = [(WRWorkflowEventTracker *)v2 endSignpost];

  if (!v18)
  {
LABEL_8:
    v10 = [(WRWorkflowEventTracker *)v2 workflow];
    [v10 name];

    [(WRWorkflowEventTracker *)v2 eventIdentifier];
    v11 = [(WRWorkflowEventTracker *)v2 eventIdentifier];

    v12 = *__error();
    v13 = _wrlog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
    if (v11)
    {
      if (v14)
      {
        [WRWorkflowEventTracker gatherDiagnosticsIfNeeded];
      }
    }

    else if (v14)
    {
      [(WRWorkflowEventTracker *)v2 gatherDiagnosticsIfNeeded];
    }

    goto LABEL_13;
  }

LABEL_16:
  v19 = [(WRWorkflowEventTracker *)v2 workflow];
  v20 = [v19 workflowDiagnostics];
  v21 = [v20 count];

  if (!v21)
  {
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v22 = [(WRWorkflowEventTracker *)v2 workflow];
    v23 = [v22 allSignposts];

    v24 = [v23 countByEnumeratingWithState:&v179 objects:v196 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v180;
LABEL_19:
      v27 = 0;
      while (1)
      {
        if (*v180 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v179 + 1) + 8 * v27) diagnostics];
        v29 = [v28 count];

        if (v29)
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [v23 countByEnumeratingWithState:&v179 objects:v196 count:16];
          if (!v25)
          {
            goto LABEL_25;
          }

          goto LABEL_19;
        }
      }

      goto LABEL_29;
    }

LABEL_25:

    v30 = [(WRWorkflowEventTracker *)v2 workflow];
    [v30 name];

    [(WRWorkflowEventTracker *)v2 eventIdentifier];
    v31 = [(WRWorkflowEventTracker *)v2 eventIdentifier];

    v12 = *__error();
    v13 = _wrlog();
    v32 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v31)
    {
      if (v32)
      {
        [WRWorkflowEventTracker gatherDiagnosticsIfNeeded];
      }
    }

    else if (v32)
    {
      [(WRWorkflowEventTracker *)v2 gatherDiagnosticsIfNeeded];
    }

LABEL_13:

    v15 = 0;
    *__error() = v12;
    goto LABEL_14;
  }

LABEL_29:
  v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v34 = [(WRWorkflowEventTracker *)v2 allSignpostTrackers];
  v141 = [v34 countByEnumeratingWithState:&v175 objects:v195 count:16];
  if (!v141)
  {
    goto LABEL_69;
  }

  v35 = *v176;
  v149 = v34;
  do
  {
    v36 = 0;
    do
    {
      if (*v176 != v35)
      {
        objc_enumerationMutation(v34);
      }

      obj = v36;
      v37 = *(*(&v175 + 1) + 8 * v36);
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v147 = v37;
      v38 = [v37 emits];
      v39 = [v38 countByEnumeratingWithState:&v171 objects:v194 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v172;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v172 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v171 + 1) + 8 * i);
            v44 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v43, "pid")}];
            if (([v33 containsObject:v44] & 1) == 0)
            {
              if (WRProcessIsBeingDebugged([v43 pid]))
              {
                v76 = [(WRWorkflowEventTracker *)v2 workflow];
                [v76 name];

                [(WRWorkflowEventTracker *)v2 eventIdentifier];
                v77 = v2;
                v78 = [(WRWorkflowEventTracker *)v2 eventIdentifier];

                v79 = *__error();
                v80 = _wrlog();
                v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
                if (!v78)
                {
                  if (v81)
                  {
                    v86 = [(WRWorkflowEventTracker *)v77 workflow];
                    v87 = [v86 name];
                    v88 = [v43 pid];
                    *buf = 138543618;
                    v189 = v87;
                    v190 = 1024;
                    LODWORD(v191) = v88;
                    _os_log_impl(&dword_2746E5000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@: Process [%d] is being debugged, not saving diagnostics", buf, 0x12u);

                    goto LABEL_108;
                  }

LABEL_109:

                  *__error() = v79;
                  v15 = 0;
                  goto LABEL_110;
                }

                if (!v81)
                {
                  goto LABEL_109;
                }

                v82 = [(WRWorkflowEventTracker *)v77 workflow];
                v83 = [v82 name];
                v84 = [(WRWorkflowEventTracker *)v77 eventIdentifier];
                v85 = [v43 pid];
                *buf = 138543874;
                v189 = v83;
                v190 = 2114;
                v191 = v84;
                v192 = 1024;
                v193 = v85;
                _os_log_impl(&dword_2746E5000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: Process [%d] is being debugged, not saving diagnostics", buf, 0x1Cu);
LABEL_94:

                goto LABEL_109;
              }

              [v33 addObject:v44];
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v171 objects:v194 count:16];
        }

        while (v40);
      }

      v140 = v35;
      v145 = v2;

      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v38 = [v147 intervals];
      v45 = [v38 countByEnumeratingWithState:&v167 objects:v187 count:16];
      if (!v45)
      {
        goto LABEL_57;
      }

      v46 = v45;
      v47 = *v168;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v168 != v47)
          {
            objc_enumerationMutation(v38);
          }

          v49 = *(*(&v167 + 1) + 8 * j);
          v50 = MEMORY[0x277CCABB0];
          v51 = [v49 start];
          v44 = [v50 numberWithInt:{objc_msgSend(v51, "pid")}];

          if (([v33 containsObject:v44] & 1) == 0)
          {
            v52 = [v49 start];
            IsBeingDebugged = WRProcessIsBeingDebugged([v52 pid]);

            if (IsBeingDebugged)
            {
              v89 = [(WRWorkflowEventTracker *)v145 workflow];
              [v89 name];

              [(WRWorkflowEventTracker *)v145 eventIdentifier];
              v90 = [(WRWorkflowEventTracker *)v145 eventIdentifier];

              v79 = *__error();
              v80 = _wrlog();
              v91 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
              if (v90)
              {
                if (!v91)
                {
                  goto LABEL_109;
                }

                v82 = [(WRWorkflowEventTracker *)v145 workflow];
                v83 = [v82 name];
                v84 = [(WRWorkflowEventTracker *)v145 eventIdentifier];
                v92 = [v49 start];
                v93 = [v92 pid];
                *buf = 138543874;
                v189 = v83;
                v190 = 2114;
                v191 = v84;
                v192 = 1024;
                v193 = v93;
LABEL_93:
                _os_log_impl(&dword_2746E5000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: Process [%d] is being debugged, not saving diagnostics", buf, 0x1Cu);

                goto LABEL_94;
              }

              if (!v91)
              {
                goto LABEL_109;
              }

              v86 = [(WRWorkflowEventTracker *)v145 workflow];
              v105 = [v86 name];
              v106 = [v49 start];
              v107 = [v106 pid];
              *buf = 138543618;
              v189 = v105;
              v190 = 1024;
              LODWORD(v191) = v107;
LABEL_104:
              _os_log_impl(&dword_2746E5000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@: Process [%d] is being debugged, not saving diagnostics", buf, 0x12u);

              goto LABEL_107;
            }

            [v33 addObject:v44];
          }

          v54 = MEMORY[0x277CCABB0];
          v55 = [v49 end];
          v44 = [v54 numberWithInt:{objc_msgSend(v55, "pid")}];

          if ([v33 containsObject:v44])
          {
            goto LABEL_55;
          }

          v56 = [v49 end];
          v57 = WRProcessIsBeingDebugged([v56 pid]);

          if (v57)
          {
            v94 = [(WRWorkflowEventTracker *)v145 workflow];
            [v94 name];

            [(WRWorkflowEventTracker *)v145 eventIdentifier];
            v95 = [(WRWorkflowEventTracker *)v145 eventIdentifier];

            v79 = *__error();
            v80 = _wrlog();
            v96 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
            if (v95)
            {
              if (!v96)
              {
                goto LABEL_109;
              }

              v82 = [(WRWorkflowEventTracker *)v145 workflow];
              v83 = [v82 name];
              v84 = [(WRWorkflowEventTracker *)v145 eventIdentifier];
              v92 = [v49 end];
              v97 = [v92 pid];
              *buf = 138543874;
              v189 = v83;
              v190 = 2114;
              v191 = v84;
              v192 = 1024;
              v193 = v97;
              goto LABEL_93;
            }

            if (!v96)
            {
              goto LABEL_109;
            }

            v86 = [(WRWorkflowEventTracker *)v145 workflow];
            v105 = [v86 name];
            v106 = [v49 end];
            v108 = [v106 pid];
            *buf = 138543618;
            v189 = v105;
            v190 = 1024;
            LODWORD(v191) = v108;
            goto LABEL_104;
          }

          [v33 addObject:v44];
LABEL_55:
        }

        v46 = [v38 countByEnumeratingWithState:&v167 objects:v187 count:16];
      }

      while (v46);
LABEL_57:

      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v38 = [v147 incompleteIntervalStarts];
      v58 = [v38 countByEnumeratingWithState:&v163 objects:v186 count:16];
      v35 = v140;
      if (v58)
      {
        v59 = v58;
        v60 = *v164;
LABEL_59:
        v61 = 0;
        while (1)
        {
          if (*v164 != v60)
          {
            objc_enumerationMutation(v38);
          }

          v62 = *(*(&v163 + 1) + 8 * v61);
          v44 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v62, "pid", v140)}];
          if (([v33 containsObject:v44] & 1) == 0)
          {
            if (WRProcessIsBeingDebugged([v62 pid]))
            {
              v98 = [(WRWorkflowEventTracker *)v145 workflow];
              [v98 name];

              [(WRWorkflowEventTracker *)v145 eventIdentifier];
              v99 = [(WRWorkflowEventTracker *)v145 eventIdentifier];

              v79 = *__error();
              v80 = _wrlog();
              v100 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
              if (v99)
              {
                if (v100)
                {
                  v101 = [(WRWorkflowEventTracker *)v145 workflow];
                  v102 = [v101 name];
                  v103 = [(WRWorkflowEventTracker *)v145 eventIdentifier];
                  v104 = [v62 pid];
                  *buf = 138543874;
                  v189 = v102;
                  v190 = 2114;
                  v191 = v103;
                  v192 = 1024;
                  v193 = v104;
                  _os_log_impl(&dword_2746E5000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: Process [%d] is being debugged, not saving diagnostics", buf, 0x1Cu);
                }

                goto LABEL_109;
              }

              if (!v100)
              {
                goto LABEL_109;
              }

              v86 = [(WRWorkflowEventTracker *)v145 workflow];
              v105 = [v86 name];
              v109 = [v62 pid];
              *buf = 138543618;
              v189 = v105;
              v190 = 1024;
              LODWORD(v191) = v109;
              _os_log_impl(&dword_2746E5000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@: Process [%d] is being debugged, not saving diagnostics", buf, 0x12u);
LABEL_107:

LABEL_108:
              goto LABEL_109;
            }

            [v33 addObject:v44];
          }

          if (v59 == ++v61)
          {
            v59 = [v38 countByEnumeratingWithState:&v163 objects:v186 count:16];
            if (v59)
            {
              goto LABEL_59;
            }

            break;
          }
        }
      }

      v36 = obj + 1;
      v2 = v145;
      v34 = v149;
    }

    while (obj + 1 != v141);
    v141 = [v149 countByEnumeratingWithState:&v175 objects:v195 count:16];
  }

  while (v141);
LABEL_69:

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v146 = v2;
  v63 = [(WRWorkflowEventTracker *)v2 diagnosticsExceedingThresholds];
  v64 = [v63 countByEnumeratingWithState:&v159 objects:v185 count:16];
  v65 = v64;
  v66 = v64 != 0;
  v67 = 0;
  if (v64)
  {
    v68 = *v160;
    v69 = v64;
    while (2)
    {
      for (k = 0; k != v69; ++k)
      {
        if (*v160 != v68)
        {
          objc_enumerationMutation(v63);
        }

        v71 = *(*(&v159 + 1) + 8 * k);
        if ([v71 gatherTailspin])
        {
          if ([v71 tailspinIncludeOSLogs])
          {

            LOBYTE(v75) = 1;
            v72 = v146;
            goto LABEL_112;
          }

          v67 = 1;
        }
      }

      v69 = [v63 countByEnumeratingWithState:&v159 objects:v185 count:16];
      if (v69)
      {
        continue;
      }

      break;
    }
  }

  v72 = v146;
  v73 = [(WRWorkflowEventTracker *)v146 error];

  if (!v73)
  {
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    if (v146)
    {
      Property = objc_getProperty(v146, v74, 104, 1);
    }

    else
    {
      Property = 0;
    }

    obja = Property;
    v150 = [obja countByEnumeratingWithState:&v155 objects:v184 count:16];
    v75 = 0;
    if (v150)
    {
      v148 = *v156;
      while (2)
      {
        v116 = 0;
        v117 = v75;
        do
        {
          if (*v156 != v148)
          {
            objc_enumerationMutation(obja);
          }

          v118 = *(*(&v155 + 1) + 8 * v116);
          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          v154 = 0u;
          v119 = [(WRWorkflowEventTracker *)v72 eventStart];
          [v119 machContTimeNs];
          v120 = [(WRWorkflowEventTracker *)v72 eventEnd];
          [v120 machContTimeNs];
          v121 = [WRSignpostTracker diagnosticsExceedingThresholdsWithEventStartNs:v118 eventEndNs:?];

          v122 = [v121 countByEnumeratingWithState:&v151 objects:v183 count:16];
          if (v122)
          {
            v123 = v122;
            v142 = v117;
            v124 = *v152;
LABEL_127:
            v125 = 0;
            while (1)
            {
              if (*v152 != v124)
              {
                objc_enumerationMutation(v121);
              }

              v126 = *(*(&v151 + 1) + 8 * v125);
              if ([v126 gatherTailspin])
              {
                v67 = 1;
                v75 = 1;
                v66 = 1;
                if ([v126 tailspinIncludeOSLogs])
                {
                  break;
                }
              }

              if (v123 == ++v125)
              {
                v123 = [v121 countByEnumeratingWithState:&v151 objects:v183 count:16];
                if (v123)
                {
                  goto LABEL_127;
                }

                v66 = 1;
                v75 = v142;
                break;
              }
            }
          }

          else
          {
            v75 = v117;
          }

          if (v67 & 1) != 0 && (v75)
          {
            LOBYTE(v75) = 1;
            v67 = 1;
            v72 = v146;
            goto LABEL_142;
          }

          ++v116;
          v117 = v75;
          v72 = v146;
        }

        while (v116 != v150);
        v150 = [obja countByEnumeratingWithState:&v155 objects:v184 count:16];
        if (v150)
        {
          continue;
        }

        break;
      }
    }

LABEL_142:

    if (!v66)
    {
      goto LABEL_147;
    }

LABEL_143:
    if (v67)
    {
LABEL_112:
      if (MEMORY[0x2822399D0])
      {
        v15 = [(WRWorkflowEventTracker *)v72 gatherDiagnosticsWithTailspin:v75 & 1 tailspinIncludeOSLogs:?];
        goto LABEL_110;
      }

      v110 = [(WRWorkflowEventTracker *)v72 workflow];
      [v110 name];

      [(WRWorkflowEventTracker *)v72 eventIdentifier];
      v111 = [(WRWorkflowEventTracker *)v72 eventIdentifier];

      v112 = *__error();
      v113 = _wrlog();
      v114 = os_log_type_enabled(v113, OS_LOG_TYPE_ERROR);
      if (v111)
      {
        if (v114)
        {
          [WRWorkflowEventTracker gatherDiagnosticsIfNeeded];
        }
      }

      else if (v114)
      {
        [(WRWorkflowEventTracker *)v72 gatherDiagnosticsIfNeeded];
      }
    }

    else
    {
      v127 = [(WRWorkflowEventTracker *)v72 workflow];
      [v127 name];

      [(WRWorkflowEventTracker *)v72 eventIdentifier];
      v128 = [(WRWorkflowEventTracker *)v72 eventIdentifier];

      v112 = *__error();
      v113 = _wrlog();
      v129 = os_log_type_enabled(v113, OS_LOG_TYPE_ERROR);
      if (v128)
      {
        if (v129)
        {
          [WRWorkflowEventTracker gatherDiagnosticsIfNeeded];
        }
      }

      else if (v129)
      {
        [(WRWorkflowEventTracker *)v72 gatherDiagnosticsIfNeeded];
      }
    }

    v15 = 0;
    *__error() = v112;
    goto LABEL_110;
  }

  if (v65)
  {
    LOBYTE(v75) = 0;
    goto LABEL_143;
  }

LABEL_147:
  v130 = [(WRWorkflowEventTracker *)v72 workflow];
  [v130 name];

  [(WRWorkflowEventTracker *)v72 eventIdentifier];
  v131 = [(WRWorkflowEventTracker *)v72 eventIdentifier];

  v132 = *__error();
  v133 = _wrlog();
  v134 = os_log_type_enabled(v133, OS_LOG_TYPE_INFO);
  if (v131)
  {
    if (v134)
    {
      v135 = [(WRWorkflowEventTracker *)v72 workflow];
      v136 = [v135 name];
      v137 = [(WRWorkflowEventTracker *)v72 eventIdentifier];
      *buf = 138543618;
      v189 = v136;
      v190 = 2114;
      v191 = v137;
      _os_log_impl(&dword_2746E5000, v133, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: No diagnostic thresholds were exceeded", buf, 0x16u);
    }
  }

  else if (v134)
  {
    v138 = [(WRWorkflowEventTracker *)v72 workflow];
    v139 = [v138 name];
    *buf = 138543362;
    v189 = v139;
    _os_log_impl(&dword_2746E5000, v133, OS_LOG_TYPE_INFO, "%{public}@: No diagnostic thresholds were exceeded", buf, 0xCu);
  }

  v15 = 0;
  *__error() = v132;
LABEL_110:

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke(uint64_t a1, char a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v10 = (a1 + 32);
    v11 = [*(a1 + 32) workflow];
    [v11 name];

    [*v10 eventIdentifier];
    v12 = [*v10 eventIdentifier];

    v13 = *__error();
    v14 = _wrlog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v15)
      {
        __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_1();
      }
    }

    else if (v15)
    {
      __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_2();
    }

    *__error() = v13;
    goto LABEL_24;
  }

  v3 = [*(a1 + 40) fileSystemRepresentation];
  if (!v3)
  {
    v16 = [*(a1 + 32) workflow];
    [v16 name];

    [*(a1 + 32) eventIdentifier];
    v17 = [*(a1 + 32) eventIdentifier];

    v7 = *__error();
    v8 = _wrlog();
    v18 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v18)
      {
        __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_5();
      }
    }

    else if (v18)
    {
      __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_6();
    }

    goto LABEL_23;
  }

  v4 = v3;
  if (fclonefileat(*(a1 + 56), -1, v3, 0))
  {
    v5 = [*(a1 + 32) workflow];
    [v5 name];

    [*(a1 + 32) eventIdentifier];
    v6 = [*(a1 + 32) eventIdentifier];

    v7 = *__error();
    v8 = _wrlog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v9)
      {
        __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_3();
      }
    }

    else if (v9)
    {
      __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_4();
    }

LABEL_23:

    *__error() = v7;
LABEL_24:
    result = close(*(a1 + 56));
    goto LABEL_25;
  }

  close(*(a1 + 56));
  v19 = [*(a1 + 32) workflow];
  [v19 name];

  [*(a1 + 32) eventIdentifier];
  v20 = [*(a1 + 32) eventIdentifier];

  v21 = *__error();
  v22 = _wrlog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v23)
    {
      v24 = [*(a1 + 32) workflow];
      v25 = [v24 name];
      v26 = [*(a1 + 32) eventIdentifier];
      v31 = 138543874;
      v32 = v25;
      v33 = 2114;
      v34 = v26;
      v35 = 2082;
      v36 = v4;
      _os_log_impl(&dword_2746E5000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: saved tailspin file %{public}s for slow workflow, notifying spindump", &v31, 0x20u);
    }
  }

  else if (v23)
  {
    v29 = [*(a1 + 32) workflow];
    v30 = [v29 name];
    v31 = 138543618;
    v32 = v30;
    v33 = 2082;
    v34 = v4;
    _os_log_impl(&dword_2746E5000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: saved tailspin file %{public}s for slow workflow, notifying spindump", &v31, 0x16u);
  }

  *__error() = v21;
  SPReportWorkflowResponsivenessDelay();
  result = +[WRWorkflowEventTracker cleanupWorkflowResponsivenessDiagnosticsDirectory];
LABEL_25:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)stats
{
  v4 = retstr;
  v161 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v146 = 0;
  v147 = 0;
  v144 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  v5 = [(WRWorkflowEventTracker *)self eventStart];
  v6 = [v5 machContTimeNs];

  v127 = self;
  v7 = [(WRWorkflowEventTracker *)self eventEnd];
  v8 = [v7 machContTimeNs];

  if (!v6 || !v8 || v8 <= v6)
  {
    goto LABEL_100;
  }

  v109 = v8 - v6;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = [(WRWorkflowEventTracker *)self allSignpostTrackers];
  v123 = [obj countByEnumeratingWithState:&v138 objects:v160 count:16];
  if (v123)
  {
    v131 = 0;
    v132 = 0;
    v10 = 0;
    v134 = 0;
    v11 = 0;
    v12 = 0;
    v122 = *v139;
    v121 = v4;
    while (1)
    {
      for (i = 0; i != v123; ++i)
      {
        if (*v139 != v122)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v138 + 1) + 8 * i);
        v15 = [v14 signpost];
        v16 = [v15 networkBound];

        v137 = [v14 intervals];
        v17 = [v137 count];
        v133 = v14;
        v136 = [v14 incompleteIntervalStarts];
        v135 = [v136 count];
        if (!(v17 + v135))
        {
          goto LABEL_52;
        }

        v126 = v12;
        v125 = i;
        v124 = v16;
        if (v17)
        {
          __ptr = v10;
          v18 = 0;
          while (1)
          {
            v19 = v17;
            v20 = [v137 objectAtIndexedSubscript:v18];
            v21 = [v20 start];
            v22 = [v21 machContTimeNs];

            if (v22 <= v6)
            {
              v23 = v6;
            }

            else
            {
              v23 = v22;
            }

            v24 = [v137 objectAtIndexedSubscript:v18];
            v25 = [v24 end];
            v26 = [v25 machContTimeNs];

            if (v26 >= v8)
            {
              v27 = v8;
            }

            else
            {
              v27 = v26;
            }

            if (v27 >= v23)
            {
              __ptr = reallocf(__ptr, 16 * (v11 + 1));
              v36 = &__ptr[16 * v11];
              *v36 = v23;
              v36[1] = v27;
              v37 = [v133 signpost];
              v38 = [v37 networkBound];

              if (v38)
              {
                v132 = reallocf(v132, 16 * (HIDWORD(v134) + 1));
                v39 = &v132[16 * HIDWORD(v134)];
                *v39 = v23;
                v39[1] = v27;
                ++HIDWORD(v134);
              }

              else
              {
                v131 = reallocf(v131, 16 * (v134 + 1));
                v40 = &v131[16 * v134];
                *v40 = v23;
                v40[1] = v27;
                LODWORD(v134) = v134 + 1;
              }

              ++v11;
              v17 = v19;
              goto LABEL_28;
            }

            v28 = [(WRWorkflowEventTracker *)v127 workflow];
            [v28 name];

            [(WRWorkflowEventTracker *)v127 eventIdentifier];
            v29 = [(WRWorkflowEventTracker *)v127 eventIdentifier];

            v30 = *__error();
            v31 = _wrlog();
            v32 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);
            v17 = v19;
            if (v29)
            {
              if (v32)
              {
                v118 = [(WRWorkflowEventTracker *)v127 workflow];
                v33 = [v118 name];
                v111 = [(WRWorkflowEventTracker *)v127 eventIdentifier];
                v116 = [v137 objectAtIndexedSubscript:v18];
                v114 = [v116 start];
                v110 = [v114 machContTimeNs];
                v17 = v19;
                v112 = [v137 objectAtIndexedSubscript:v18];
                v34 = [v112 end];
                v35 = [v34 machContTimeNs];
                *buf = 138544642;
                v149 = v33;
                v150 = 2114;
                v151 = v111;
                v152 = 2048;
                v153 = v110;
                v154 = 2048;
                v155 = v35;
                v156 = 2048;
                v157 = v6;
                v158 = 2048;
                v159 = v8;
                _os_log_fault_impl(&dword_2746E5000, v31, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: signpost interval %llu-%llu outside event time range %llu-%llu", buf, 0x3Eu);

LABEL_31:
              }
            }

            else if (v32)
            {
              v118 = [(WRWorkflowEventTracker *)v127 workflow];
              v33 = [v118 name];
              v117 = [v137 objectAtIndexedSubscript:v18];
              v115 = [v117 start];
              v113 = [v115 machContTimeNs];
              v17 = v19;
              v41 = [v137 objectAtIndexedSubscript:v18];
              v42 = [v41 end];
              v43 = [v42 machContTimeNs];
              *buf = 138544386;
              v149 = v33;
              v150 = 2048;
              v151 = v113;
              v152 = 2048;
              v153 = v43;
              v154 = 2048;
              v155 = v6;
              v156 = 2048;
              v157 = v8;
              _os_log_fault_impl(&dword_2746E5000, v31, OS_LOG_TYPE_FAULT, "%{public}@: signpost interval %llu-%llu outside event time range %llu-%llu", buf, 0x34u);

              goto LABEL_31;
            }

            *__error() = v30;
LABEL_28:
            if (v17 == ++v18)
            {
              v10 = __ptr;
              v147 = __ptr;
              v143 = v131;
              v145 = v132;
              v4 = v121;
              v12 = v126;
              i = v125;
              v16 = v124;
              break;
            }
          }
        }

        LODWORD(v146) = v11;
        LODWORD(v144) = HIDWORD(v134);
        LODWORD(v142) = v134;
        if (!v135)
        {
          goto LABEL_51;
        }

        v44 = 0;
        var2 = v4->var2;
        do
        {
          v46 = [v136 objectAtIndexedSubscript:v44];
          v47 = [v46 machContTimeNs];

          if (v47 <= v6)
          {
            v48 = v6;
          }

          else
          {
            v48 = v47;
          }

          if (v8 < v48)
          {
            v49 = [(WRWorkflowEventTracker *)v127 workflow];
            [v49 name];

            [(WRWorkflowEventTracker *)v127 eventIdentifier];
            v50 = [(WRWorkflowEventTracker *)v127 eventIdentifier];

            v51 = *__error();
            v52 = _wrlog();
            v53 = os_log_type_enabled(v52, OS_LOG_TYPE_FAULT);
            if (v50)
            {
              if (v53)
              {
                v119 = [(WRWorkflowEventTracker *)v127 workflow];
                __ptra = [v119 name];
                v54 = [(WRWorkflowEventTracker *)v127 eventIdentifier];
                v55 = [v136 objectAtIndexedSubscript:v44];
                v56 = [v55 machContTimeNs];
                *buf = 138544130;
                v149 = __ptra;
                v150 = 2114;
                v151 = v54;
                v152 = 2048;
                v153 = v56;
                v154 = 2048;
                v155 = v8;
                _os_log_fault_impl(&dword_2746E5000, v52, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: incomplete interval %llu after event end %llu", buf, 0x2Au);

                v57 = v119;
                goto LABEL_50;
              }
            }

            else if (v53)
            {
              __ptrb = [(WRWorkflowEventTracker *)v127 workflow];
              v63 = [__ptrb name];
              v64 = [v136 objectAtIndexedSubscript:v44];
              v65 = [v64 machContTimeNs];
              *buf = 138543874;
              v149 = v63;
              v150 = 2048;
              v151 = v65;
              v152 = 2048;
              v153 = v8;
              _os_log_fault_impl(&dword_2746E5000, v52, OS_LOG_TYPE_FAULT, "%{public}@: incomplete interval %llu after event end %llu", buf, 0x20u);

              v57 = __ptrb;
LABEL_50:
            }

            *__error() = v51;
            goto LABEL_47;
          }

          ++var2;
          v10 = reallocf(v10, 16 * (v11 + 1));
          v58 = &v10[16 * v11];
          *v58 = v48;
          v58[1] = v8;
          v59 = [v133 signpost];
          v60 = [v59 networkBound];

          if (v60)
          {
            v132 = reallocf(v132, 16 * (HIDWORD(v134) + 1));
            v61 = &v132[16 * HIDWORD(v134)];
            *v61 = v48;
            v61[1] = v8;
            ++HIDWORD(v134);
          }

          else
          {
            v131 = reallocf(v131, 16 * (v134 + 1));
            v62 = &v131[16 * v134];
            *v62 = v48;
            v62[1] = v8;
            LODWORD(v134) = v134 + 1;
          }

          ++v11;
LABEL_47:
          ++v44;
        }

        while (v135 != v44);
        v4 = v121;
        v121->var2 = var2;
        v147 = v10;
        v143 = v131;
        v145 = v132;
        v12 = v126;
        i = v125;
        v16 = v124;
LABEL_51:
        LODWORD(v146) = v11;
        LODWORD(v144) = HIDWORD(v134);
        LODWORD(v142) = v134;
LABEL_52:
        v12 |= v16;
      }

      v123 = [obj countByEnumeratingWithState:&v138 objects:v160 count:16];
      if (!v123)
      {
        goto LABEL_56;
      }
    }
  }

  LOBYTE(v12) = 0;
LABEL_56:

  WRRangesSortAndCoalesce(&v146);
  v66 = v146;
  v67 = 0;
  if (v146)
  {
    v68 = v147 + 8;
    do
    {
      v67 = &v67[*v68 - *(v68 - 1)];
      v68 += 2;
      --v66;
    }

    while (v66);
    if (v67 > v109)
    {
      v69 = [(WRWorkflowEventTracker *)v127 workflow];
      [v69 name];

      [(WRWorkflowEventTracker *)v127 eventIdentifier];
      v70 = [(WRWorkflowEventTracker *)v127 eventIdentifier];

      v71 = *__error();
      v72 = _wrlog();
      v73 = os_log_type_enabled(v72, OS_LOG_TYPE_FAULT);
      if (v70)
      {
        if (v73)
        {
          v74 = [(WRWorkflowEventTracker *)v127 workflow];
          v75 = [v74 name];
          v76 = [(WRWorkflowEventTracker *)v127 eventIdentifier];
          *buf = 138544130;
          v149 = v75;
          v150 = 2114;
          v151 = v76;
          v152 = 2048;
          v153 = v67;
          v154 = 2048;
          v155 = v109;
          _os_log_fault_impl(&dword_2746E5000, v72, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: union of all signposts duration %llu > workflow event duration %llu", buf, 0x2Au);

LABEL_102:
        }
      }

      else if (v73)
      {
        v74 = [(WRWorkflowEventTracker *)v127 workflow];
        v75 = [v74 name];
        *buf = 138543874;
        v149 = v75;
        v150 = 2048;
        v151 = v67;
        v152 = 2048;
        v153 = v109;
        _os_log_fault_impl(&dword_2746E5000, v72, OS_LOG_TYPE_FAULT, "%{public}@: union of all signposts duration %llu > workflow event duration %llu", buf, 0x20u);
        goto LABEL_102;
      }

      v78 = __error();
      v77 = 0;
      *v78 = v71;
      goto LABEL_66;
    }
  }

  v77 = v109 - v67;
LABEL_66:
  v4->var0 = v77;
  LODWORD(v146) = 0;
  free(v147);
  v147 = 0;
  if (v12)
  {
    WRRangesSortAndCoalesce(&v144);
    WRRangesSortAndCoalesce(&v142);
    v79 = v144;
    if (!v144)
    {
      goto LABEL_90;
    }

    v80 = v142;
    if (!v142)
    {
      goto LABEL_86;
    }

    v81 = 0;
    v82 = 0;
    do
    {
      if (v82 < v80)
      {
        v83 = v145;
        v84 = 16 * v82;
        do
        {
          v85 = *(v143 + v84 + 8);
          v86 = &v83[2 * v81];
          if (v85 > *v86)
          {
            v87 = *(v143 + v84);
            v88 = v86[1];
            if (v87 >= v88)
            {
              break;
            }

            if (*v86 >= v87)
            {
              if (v85 >= v88)
              {
                *v86 = v88;
              }

              else
              {
                *v86 = v85;
                v83[2 * v81 + 1] = v88;
              }
            }

            else
            {
              v86[1] = v87;
              if (v85 < v88)
              {
                v89 = v144 + ~v81;
                LODWORD(v144) = v144 + 1;
                v90 = reallocf(v83, 16 * v144);
                v83 = v90;
                v145 = v90;
                if (v89)
                {
                  memmove(&v90[16 * v81 + 32], &v90[16 * v81 + 16], v89);
                }

                v91 = &v83[2 * ++v81];
                *v91 = v85;
                v91[1] = v88;
                v80 = v142;
              }
            }
          }

          ++v82;
          v84 += 16;
        }

        while (v82 < v80);
        v82 = v82;
        v79 = v144;
      }

      ++v81;
    }

    while (v81 < v79);
    WRRangesSortAndCoalesce(&v144);
    v79 = v144;
    if (v144)
    {
LABEL_86:
      v92 = 0;
      v93 = v79;
      v94 = v145 + 8;
      do
      {
        v92 = &v92[*v94 - *(v94 - 1)];
        v94 += 2;
        --v93;
      }

      while (v93);
    }

    else
    {
LABEL_90:
      v92 = 0;
    }

    if (v109 <= v92)
    {
      v98 = [(WRWorkflowEventTracker *)v127 workflow];
      [v98 name];

      [(WRWorkflowEventTracker *)v127 eventIdentifier];
      v99 = [(WRWorkflowEventTracker *)v127 eventIdentifier];

      v100 = *__error();
      v101 = _wrlog();
      v102 = os_log_type_enabled(v101, OS_LOG_TYPE_FAULT);
      if (v99)
      {
        if (v102)
        {
          v103 = [(WRWorkflowEventTracker *)v127 workflow];
          v104 = [v103 name];
          v105 = [(WRWorkflowEventTracker *)v127 eventIdentifier];
          *buf = 138544130;
          v149 = v104;
          v150 = 2114;
          v151 = v105;
          v152 = 2048;
          v153 = v92;
          v154 = 2048;
          v155 = v109;
          _os_log_fault_impl(&dword_2746E5000, v101, OS_LOG_TYPE_FAULT, "%{public}@<%{public}@>: network-bound duration %llu > workflow event duration %llu", buf, 0x2Au);
        }
      }

      else if (v102)
      {
        v107 = [(WRWorkflowEventTracker *)v127 workflow];
        v108 = [v107 name];
        *buf = 138543874;
        v149 = v108;
        v150 = 2048;
        v151 = v92;
        v152 = 2048;
        v153 = v109;
        _os_log_fault_impl(&dword_2746E5000, v101, OS_LOG_TYPE_FAULT, "%{public}@: network-bound duration %llu > workflow event duration %llu", buf, 0x20u);
      }

      *__error() = v100;
    }

    else
    {
      v4->var1 = v109 - v92;
    }
  }

  else
  {
    v95 = [(WRWorkflowEventTracker *)v127 eventEnd];
    v96 = [v95 machContTimeNs];
    v97 = [(WRWorkflowEventTracker *)v127 eventStart];
    v4->var1 = v96 - [v97 machContTimeNs];
  }

  free(v143);
  free(v145);
LABEL_100:
  v106 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)generateTelemetry
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 workflow];
  v2 = [v1 name];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)reportCoreAnalyticsEventForSignpost:(void *)a3 allCount:(void *)a4 allDurationUnionSec:(void *)a5 allDurationSumSec:(void *)a6 allDurationLongestSec:(void *)a7 allDurationUntrackedSec:(void *)a8 allDurationNonNetworkBoundSec:(void *)a9 allTimeUntilFirstSignpost:(void *)a10 allTimeAfterLastSignpost:(void *)a11 incompleteCount:(void *)a12 completeDurationUnionSec:(void *)a13 completeDurationSumSec:(void *)a14 completeDurationLongestSec:(void *)a15 completeTimeUntilFirstSignpost:(void *)a16 environment:
{
  v22 = a2;
  v69 = a3;
  v68 = a4;
  v23 = a5;
  v24 = a6;
  v67 = a7;
  v66 = a8;
  v65 = a9;
  v64 = a10;
  v63 = a11;
  v62 = a12;
  v61 = a13;
  v60 = a14;
  v59 = a15;
  v70 = a16;
  if (a1)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26 = [a1 workflow];
    v27 = [v26 name];
    v28 = WRSanitizeForCA(v27, 0);

    if (v22)
    {
      v29 = WRSanitizeForCA(v22, 0);
    }

    else
    {
      v29 = 0;
    }

    v30 = [a1 error];
    [v25 setObject:v28 forKeyedSubscript:@"workflowName"];
    v58 = v29;
    if (v30)
    {
      v31 = v24;
      v32 = [v30 domain];
      v33 = [v32 isEqualToString:@"WorkflowResponsivenessError"];

      if (v33)
      {
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v30, "code")}];
        [v25 setObject:v34 forKeyedSubscript:@"error"];

        v24 = v31;
      }

      else
      {
        v35 = v28;
        v36 = v23;
        v37 = v22;
        v38 = [a1 workflow];
        [v38 name];

        [a1 eventIdentifier];
        v39 = [a1 eventIdentifier];

        v40 = *__error();
        v41 = _wrlog();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_FAULT);
        if (v39)
        {
          if (v42)
          {
            [WRWorkflowEventTracker reportCoreAnalyticsEventForSignpost:allCount:allDurationUnionSec:allDurationSumSec:allDurationLongestSec:allDurationUntrackedSec:allDurationNonNetworkBoundSec:allTimeUntilFirstSignpost:allTimeAfterLastSignpost:incompleteCount:completeDurationUnionSec:completeDurationSumSec:completeDurationLongestSec:completeTimeUntilFirstSignpost:environment:];
          }
        }

        else if (v42)
        {
          [WRWorkflowEventTracker reportCoreAnalyticsEventForSignpost:a1 allCount:v30 allDurationUnionSec:? allDurationSumSec:? allDurationLongestSec:? allDurationUntrackedSec:? allDurationNonNetworkBoundSec:? allTimeUntilFirstSignpost:? allTimeAfterLastSignpost:? incompleteCount:? completeDurationUnionSec:? completeDurationSumSec:? completeDurationLongestSec:? completeTimeUntilFirstSignpost:? environment:?];
        }

        *__error() = v40;
        [v25 setObject:&unk_28838A6E0 forKeyedSubscript:@"error"];
        v22 = v37;
        v23 = v36;
        v24 = v31;
        v28 = v35;
      }

      v29 = v58;
    }

    [v25 setObject:v29 forKeyedSubscript:@"signpostName"];
    [v25 setObject:v69 forKeyedSubscript:@"occurrencesCount"];
    [v25 setObject:v65 forKeyedSubscript:@"delaySec"];
    [v25 setObject:v64 forKeyedSubscript:@"delayAfterSec"];
    [v25 setObject:v23 forKeyedSubscript:@"durationSec"];
    [v25 setObject:v68 forKeyedSubscript:@"durationUnionSec"];
    v54 = v24;
    [v25 setObject:v24 forKeyedSubscript:@"durationLongestSec"];
    [v25 setObject:v67 forKeyedSubscript:@"durationUntrackedSec"];
    [v25 setObject:v66 forKeyedSubscript:@"durationNonNetworkBoundSec"];
    [v25 setObject:v63 forKeyedSubscript:@"incompleteOccurrencesCount"];
    [v25 setObject:v59 forKeyedSubscript:@"completeDelaySec"];
    [v25 setObject:v61 forKeyedSubscript:@"completeDurationSec"];
    [v25 setObject:v62 forKeyedSubscript:@"completeDurationUnionSec"];
    [v25 setObject:v60 forKeyedSubscript:@"completeDurationLongestSec"];
    v55 = v23;
    v57 = v28;
    if (v30)
    {
      v43 = [@"com.apple.workflow-responsiveness" stringByAppendingString:@"-error"];
    }

    else
    {
      v43 = @"com.apple.workflow-responsiveness";
    }

    v44 = [(__CFString *)v43 stringByAppendingString:@"-generic"];
    [(WRWorkflowEventTracker *)a1 submitCAEventName:v44 dict:v25 forSignpost:v22];
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    if (v70)
    {
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __370__WRWorkflowEventTracker_reportCoreAnalyticsEventForSignpost_allCount_allDurationUnionSec_allDurationSumSec_allDurationLongestSec_allDurationUntrackedSec_allDurationNonNetworkBoundSec_allTimeUntilFirstSignpost_allTimeAfterLastSignpost_incompleteCount_completeDurationUnionSec_completeDurationSumSec_completeDurationLongestSec_completeTimeUntilFirstSignpost_environment___block_invoke;
      v71[3] = &unk_279EE3438;
      v75 = &v76;
      v45 = v25;
      v72 = v45;
      v46 = v22;
      v73 = v46;
      v74 = a1;
      [v70 enumerateKeysAndObjectsUsingBlock:v71];

      if (v77[3])
      {
        if (v58)
        {
          [(__CFString *)v43 stringByAppendingFormat:@"-%@-%@", v57, v58];
        }

        else
        {
          [(__CFString *)v43 stringByAppendingFormat:@"-%@", v57];
        }
        v47 = ;
        v48 = v47;
        if (v22)
        {
          v53 = v47;
          v49 = [a1 workflow];
          v50 = [(WRWorkflow *)v49 wrsignpostWithName:v46];

          if (v50)
          {
            v51 = [v50 customEnvironmentCoreAnalyticsEventName];

            if (v51)
            {
              v52 = [v50 customEnvironmentCoreAnalyticsEventName];

              v53 = v52;
            }
          }

          v48 = v53;
        }

        [(WRWorkflowEventTracker *)a1 submitCAEventName:v48 dict:v45 forSignpost:v46];
      }
    }

    _Block_object_dispose(&v76, 8);

    v24 = v54;
    v23 = v55;
  }
}

void __43__WRWorkflowEventTracker_generateTelemetry__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 statsWithEventEndNs:*(a1 + 40)];
  }

  v5 = [v4 signpost];
  [v5 name];

  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v8 = [v7 workflow];
  [v8 name];

  [*v6 eventIdentifier];
  v9 = [*v6 eventIdentifier];

  v10 = *__error();
  v11 = _wrlog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v12)
    {
      __43__WRWorkflowEventTracker_generateTelemetry__block_invoke_cold_1();
    }
  }

  else if (v12)
  {
    __43__WRWorkflowEventTracker_generateTelemetry__block_invoke_cold_2(v6);
  }

  *__error() = v10;
}

void __370__WRWorkflowEventTracker_reportCoreAnalyticsEventForSignpost_allCount_allDurationUnionSec_allDurationSumSec_allDurationLongestSec_allDurationUntrackedSec_allDurationNonNetworkBoundSec_allTimeUntilFirstSignpost_allTimeAfterLastSignpost_incompleteCount_completeDurationUnionSec_completeDurationSumSec_completeDurationLongestSec_completeTimeUntilFirstSignpost_environment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = WRSanitizeForCA(v5, 1);
    v9 = [v7 initWithFormat:@"env_%@", v8];

    v10 = [*(a1 + 32) objectForKeyedSubscript:v9];

    if (!v10)
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v9];
LABEL_9:

      goto LABEL_10;
    }

    v11 = [*(a1 + 48) workflow];
    [v11 name];

    [*(a1 + 48) eventIdentifier];
    v12 = [*(a1 + 48) eventIdentifier];

    v13 = *__error();
    v14 = _wrlog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v15)
      {
        v16 = [*(a1 + 48) workflow];
        v17 = [v16 name];
        v18 = [*(a1 + 48) eventIdentifier];
        v19 = *(a1 + 40);
        *buf = 138544386;
        v23 = v17;
        v24 = 2114;
        v25 = v18;
        v26 = 2114;
        v27 = v19;
        v28 = 2114;
        v29 = v5;
        v30 = 2112;
        v31 = v6;
        _os_log_error_impl(&dword_2746E5000, v14, OS_LOG_TYPE_ERROR, "%{public}@<%{public}@>: %{public}@: Cannot log telemetry for %{public}@ -> %@, conflicts with existing entry", buf, 0x34u);

LABEL_12:
      }
    }

    else if (v15)
    {
      v16 = [*(a1 + 48) workflow];
      v17 = [v16 name];
      v21 = *(a1 + 40);
      *buf = 138544130;
      v23 = v17;
      v24 = 2114;
      v25 = v21;
      v26 = 2114;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      _os_log_error_impl(&dword_2746E5000, v14, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: Cannot log telemetry for %{public}@ -> %@, conflicts with existing entry", buf, 0x2Au);
      goto LABEL_12;
    }

    *__error() = v13;
    goto LABEL_9;
  }

LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)isReservedWorkflowName:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [&unk_28838A698 containsObject:v2];

  return v3;
}

+ (uint64_t)isReservedSignpostName:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [&unk_28838A6B0 containsObject:v2];

  return v3;
}

- (WRWorkflowEventTracker)initWithWorkflow:(id)a3 eventCompletionCallback:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__WRWorkflowEventTracker_initWithWorkflow_eventCompletionCallback___block_invoke;
  v10[3] = &unk_279EE3460;
  v11 = v6;
  v7 = v6;
  v8 = [(WRWorkflowEventTracker *)self initForReadbackWithWorkflow:a3 eventCompletionCallback:v10];

  return v8;
}

void __67__WRWorkflowEventTracker_initWithWorkflow_eventCompletionCallback___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [v3 eventStart];
  v4 = [v3 eventEnd];
  v5 = [v3 startSignpost];
  v6 = [v3 endSignpost];
  (*(v2 + 16))(v2, v3, v7, v4, v5, v6);
}

- (id)initWithWorkflow:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = WRWorkflowEventTracker;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return a1;
}

- (NSArray)allSignpostTrackers
{
  if (self)
  {
    self = OUTLINED_FUNCTION_69(self, a2);
  }

  v2 = [(WRWorkflowEventTracker *)self copy];

  return v2;
}

- (void)reset
{
  v18 = *MEMORY[0x277D85DE8];
  [(WRWorkflowEventTracker *)self reportErrorsAndResetAtMachContNs:0 date:?];
  OUTLINED_FUNCTION_52();
  if (self)
  {
    Property = objc_getProperty(self, v3, 112, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  OUTLINED_FUNCTION_76();
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
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
          objc_enumerationMutation(v5);
        }

        [(WRWorkflowEventTracker *)*(v16 + 8 * v10++) reportErrorsAndResetAtMachContNs:0 date:?];
      }

      while (v8 != v10);
      OUTLINED_FUNCTION_76();
      v8 = OUTLINED_FUNCTION_75(v11, v12, v13, v14);
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reportErrorsAndResetAtMachContNs:(void *)a3 date:
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a1)
  {
    if (![a1 inMiddleOfEvent])
    {
LABEL_19:
      [(WRWorkflowEventTracker *)a1 resetWithoutReportingErrors];
      goto LABEL_20;
    }

    v8 = [a1 workflow];
    [v8 name];

    [a1 eventIdentifier];
    v9 = [a1 eventIdentifier];

    v10 = *__error();
    v11 = _wrlog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v12)
      {
        v13 = [a1 workflow];
        [v13 name];
        objc_claimAutoreleasedReturnValue();
        v14 = [OUTLINED_FUNCTION_68() eventIdentifier];
        *buf = 138543618;
        v47 = v3;
        v48 = 2114;
        v49 = v14;
        _os_log_error_impl(&dword_2746E5000, v11, OS_LOG_TYPE_ERROR, "%{public}@<%{public}@>: reset in middle of event, reporting error", buf, 0x16u);

        goto LABEL_8;
      }
    }

    else if (v12)
    {
      v13 = [a1 workflow];
      v3 = [v13 name];
      *buf = 138543362;
      v47 = v3;
      _os_log_error_impl(&dword_2746E5000, v11, OS_LOG_TYPE_ERROR, "%{public}@: reset in middle of event, reporting error", buf, 0xCu);
LABEL_8:
    }

    *__error() = v10;
    if (!a2 || !v6)
    {
      v32 = WRMakeError(5, @"Workflow event incomplete", v15, v16, v17, v18, v19, v20, v44);
      [(WRWorkflowEventTracker *)a1 handleError:v32 atEndTime:0];
      goto LABEL_18;
    }

    v21 = [a1 workflow];
    if ([v21 hasMaximumEventDuration])
    {
      v22 = [a1 eventStart];
      v23 = [v22 machContTimeNs];
      v24 = [a1 workflow];
      [v24 maximumEventDuration];
      if (v23 + (v25 * 1000000000.0) <= a2)
      {
        v37 = [a1 ignoreEventTimeouts];

        if ((v37 & 1) == 0)
        {
          v45 = [WRTimestampAndThread alloc];
          v21 = [a1 eventStart];
          [v21 machContTimeNs];
          v38 = [OUTLINED_FUNCTION_68() workflow];
          [v38 maximumEventDuration];
          v40 = (v39 * 1000000000.0);
          v41 = [a1 eventStart];
          [v41 date];
          objc_claimAutoreleasedReturnValue();
          v42 = [OUTLINED_FUNCTION_34() workflow];
          [v42 maximumEventDuration];
          v43 = [v10 dateByAddingTimeInterval:?];
          v32 = [(WRTimestampAndThread *)&v45->super.isa initWithPID:0 threadID:&v24[v40] machContTimeNs:v43 date:?];

          v33 = @"Workflow event timed out";
          v34 = 4;
          goto LABEL_16;
        }

LABEL_15:
        v32 = [[WRTimestampAndThread alloc] initWithPID:0 threadID:a2 machContTimeNs:v6 date:?];
        v33 = @"Workflow event incomplete";
        v34 = 5;
LABEL_16:
        WRMakeError(v34, v33, v26, v27, v28, v29, v30, v31, v44);
        objc_claimAutoreleasedReturnValue();
        v35 = OUTLINED_FUNCTION_87();
        [(WRWorkflowEventTracker *)v35 handleError:v21 atEndTime:v32];

LABEL_18:
        goto LABEL_19;
      }
    }

    goto LABEL_15;
  }

LABEL_20:

  v36 = *MEMORY[0x277D85DE8];
}

- (uint64_t)handleError:(void *)a3 atEndTime:
{
  if (result)
  {
    v3 = result;
    v4 = a3;
    v5 = OUTLINED_FUNCTION_49();
    objc_setProperty_atomic(v5, v6, v7, 64);
    v8 = OUTLINED_FUNCTION_48();
    objc_setProperty_atomic(v8, v9, v10, 48);

    v12 = *(objc_getProperty(v3, v11, 144, 1) + 2);

    return v12();
  }

  return result;
}

- (void)resetWithoutReportingErrors
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 128, 1))
    {
      Property = objc_getProperty(a1, v3, 128, 1);
      dispatch_source_cancel(Property);
      v5 = OUTLINED_FUNCTION_21();
      objc_setProperty_atomic(v5, v6, v7, 128);
    }

    v8 = OUTLINED_FUNCTION_21();
    objc_setProperty_atomic(v8, v9, v10, 32);
    v11 = OUTLINED_FUNCTION_21();
    objc_setProperty_atomic(v11, v12, v13, 40);
    v14 = OUTLINED_FUNCTION_21();
    objc_setProperty_atomic(v14, v15, v16, 48);
    v17 = OUTLINED_FUNCTION_21();
    objc_setProperty_atomic(v17, v18, v19, 56);
    v20 = OUTLINED_FUNCTION_21();
    objc_setProperty_atomic(v20, v21, v22, 64);
    [OUTLINED_FUNCTION_96(a1 v23)];
    v24 = [a1 workflow];
    v25 = [v24 endSignpostGroups];
    v26 = [v25 count];

    if (v26)
    {
      v28 = 0;
      do
      {
        v29 = OUTLINED_FUNCTION_96(a1, v27);
        v30 = [OUTLINED_FUNCTION_43() null];
        [v25 addObject:v30];

        ++v28;
        v31 = [a1 workflow];
        v25 = [v31 endSignpostGroups];
        v32 = [v25 count];
      }

      while (v28 < v32);
    }

    v33 = objc_alloc(MEMORY[0x277CBEB18]);
    v34 = [a1 workflow];
    v35 = [v34 allSignposts];
    v36 = [v33 initWithCapacity:{objc_msgSend(v35, "count")}];
    v37 = OUTLINED_FUNCTION_49();
    objc_setProperty_atomic(v37, v38, v39, 104);

    v40 = OUTLINED_FUNCTION_21();

    objc_setProperty_atomic(v40, v41, v42, 136);
  }
}

- (id)individuationIdentifierForSignpostObject:(void *)a3 individuationFieldName:
{
  if (a1)
  {
    a1 = [(WRWorkflowEventTracker *)a1 valueForFieldName:a3 inSignpostObject:a2];
    v3 = vars8;
  }

  return a1;
}

- (id)eventIdentifierForSignpostObject:(void *)a3 wrSignopst:
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (a1)
  {
    if ([v9 eventIdentifierIsSignpostID])
    {
      objc_opt_class();
      if (OUTLINED_FUNCTION_73())
      {
        v11 = v8;
LABEL_8:
        v14 = v11;
        v15 = [v11 scope];
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        [OUTLINED_FUNCTION_65() scope];
        v17 = OUTLINED_FUNCTION_33();
        if (v15 == 2)
        {
          [v17 threadID];
          v18 = [v3 initWithFormat:@"%lu-%llu-%llu", v4, 2, objc_msgSend(OUTLINED_FUNCTION_90(), "signpostId")];
        }

        else if (v15 == 1)
        {
          v18 = [v3 initWithFormat:@"%lu-%d-%llu", v4, objc_msgSend(v17, "processID"), objc_msgSend(v14, "signpostId")];
        }

        else
        {
          v18 = [v3 initWithFormat:@"%lu-%llu", v4, objc_msgSend(v17, "signpostId"), v38];
        }

        v13 = v18;

        goto LABEL_20;
      }

      objc_opt_class();
      if (OUTLINED_FUNCTION_73())
      {
        v11 = [v8 endEvent];
        goto LABEL_8;
      }

      v19 = [a1 workflow];
      [v19 name];

      [a1 eventIdentifier];
      v20 = [a1 eventIdentifier];

      v21 = *__error();
      v22 = _wrlog();
      v23 = OUTLINED_FUNCTION_99(v22);
      if (v20)
      {
        if (v23)
        {
          v24 = [a1 workflow];
          [v24 name];
          objc_claimAutoreleasedReturnValue();
          v40 = [OUTLINED_FUNCTION_90() eventIdentifier];
          object_getClassName(v8);
          OUTLINED_FUNCTION_37();
          _os_log_fault_impl(v25, v26, v27, v28, v29, 0x20u);
        }
      }

      else if (v23)
      {
        v32 = [a1 workflow];
        v39 = [v32 name];
        object_getClassName(v8);
        OUTLINED_FUNCTION_37();
        _os_log_fault_impl(v33, v34, v35, v36, v37, 0x16u);
      }

      v13 = 0;
      *__error() = v21;
    }

    else
    {
      [v10 eventIdentifierFieldName];
      objc_claimAutoreleasedReturnValue();
      v12 = OUTLINED_FUNCTION_33();
      v13 = [(WRWorkflowEventTracker *)v12 valueForFieldName:v4 inSignpostObject:v8];
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_20:

  v30 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)checkForNonPublicField:(void *)a3 fieldName:(void *)a4 messageArgument:
{
  v14 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1 && v9 && *(a1 + 96) && [v9 privacyLevel] != 2)
  {
    v11 = *(a1 + 96);
    [v14 name];
    objc_claimAutoreleasedReturnValue();
    v12 = [OUTLINED_FUNCTION_50() objectForKeyedSubscript:v4];

    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = *(a1 + 96);
      [v14 name];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_33() setObject:v12 forKeyedSubscript:v4];
    }

    if (([v12 containsObject:v8] & 1) == 0)
    {
      [v12 addObject:v8];
    }
  }
}

- (id)individuationIdentifierForSignpostEvent:(void *)a3 individuationFieldName:
{
  if (a1)
  {
    a1 = [(WRWorkflowEventTracker *)a1 valueForFieldName:a3 inSignpostEvent:a2];
    v3 = vars8;
  }

  return a1;
}

- (id)trackerForWRSignpost:(void *)a3 individuationIdentifier:
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    OUTLINED_FUNCTION_52();
    v9 = OUTLINED_FUNCTION_69(a1, v8);
    OUTLINED_FUNCTION_76();
    v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
    if (v11)
    {
      v3 = v11;
      v12 = *v29;
LABEL_4:
      v13 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_91(v29);
        if (!v14)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(v28 + 8 * v13);
        v16 = [v15 signpost];

        if (v16 == v6)
        {
          break;
        }

        if (v3 == ++v13)
        {
          OUTLINED_FUNCTION_76();
          v3 = OUTLINED_FUNCTION_100(v17, v18, v19, v20);
          if (v3)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }
      }

      v21 = [v15 individuationIdentifier];
      v22 = v21;
      if (v21 == v7 || v7 && v21 && ([v7 isEqualToString:v21] & 1) != 0)
      {
        v3 = v15;

        goto LABEL_16;
      }
    }

LABEL_20:

    v25 = [WRSignpostTracker alloc];
    [WRSignpostTracker initWithSignpost:individuationIdentifier:];
    v26 = OUTLINED_FUNCTION_33();
    [OUTLINED_FUNCTION_69(v26 v27)];
  }

  else
  {
    v3 = 0;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (uint64_t)haveAnyEndSignpostsWithIndividuationFieldName:(uint64_t)a1
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [OUTLINED_FUNCTION_77() workflow];
    v5 = [v4 endSignpostGroups];

    v8 = OUTLINED_FUNCTION_74(v6, v7, v32, v36);
    if (v8)
    {
      v9 = v8;
      v27 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          OUTLINED_FUNCTION_92(v34);
          if (!v11)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(v33 + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v29;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v29 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v28 + 1) + 8 * j) individuationFieldName];
                v19 = [v18 isEqualToString:v3];

                if (v19)
                {

                  v24 = 1;
                  goto LABEL_20;
                }
              }

              v15 = OUTLINED_FUNCTION_100(v20, v21, &v28, v35);
              if (v15)
              {
                continue;
              }

              break;
            }
          }
        }

        v9 = OUTLINED_FUNCTION_74(v22, v23, v32, v36);
        v24 = 0;
      }

      while (v9);
    }

    else
    {
      v24 = 0;
    }

LABEL_20:
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)sawIndividuationFieldName:(void *)a3 withIndividuationIdentifier:
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v75 = a3;
  if (a1)
  {
    v6 = [a1 workflow];
    v7 = [v6 endSignpostGroups];

    if (![v7 count])
    {
      goto LABEL_44;
    }

    v8 = 0;
    v66 = v7;
    while (1)
    {
      v9 = [v7 objectAtIndexedSubscript:v8];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = v9;
      v10 = [v9 countByEnumeratingWithState:&v78 objects:v94 count:16];
      if (!v10)
      {
        goto LABEL_43;
      }

      v11 = v10;
      v12 = *v79;
      v76 = v8;
      do
      {
        v13 = 0;
        do
        {
          OUTLINED_FUNCTION_92(v79);
          if (!v14)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v78 + 1) + 8 * v13);
          v16 = [v15 individuationFieldName];
          v17 = [v16 isEqualToString:v5];

          if (v17)
          {
            v19 = [OUTLINED_FUNCTION_96(a1 v18)];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_37;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v19;
              goto LABEL_20;
            }

            v21 = [MEMORY[0x277CBEB68] null];

            if (v19 != v21)
            {
              v22 = [a1 workflow];
              [v22 name];

              [a1 eventIdentifier];
              v23 = [a1 eventIdentifier];

              v24 = *__error();
              v25 = _wrlog();
              v26 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
              if (v23)
              {
                if (v26)
                {
                  loga = [a1 workflow];
                  v72 = [loga name];
                  v27 = [a1 eventIdentifier];
                  object_getClassName(v19);
                  *buf = 138543874;
                  OUTLINED_FUNCTION_85();
                  v86 = 2080;
                  v87 = v28;
                  OUTLINED_FUNCTION_78();
                  _os_log_fault_impl(v29, v30, v31, "%{public}@<%{public}@>: candidateEndSignpostTracker is bad class %s", v32, 0x20u);

                  v33 = loga;
                  goto LABEL_41;
                }
              }

              else if (v26)
              {
                v74 = [a1 workflow];
                v58 = [v74 name];
                ClassName = object_getClassName(v19);
                *buf = 138543618;
                v83 = v58;
                v84 = 2080;
                v85 = ClassName;
                OUTLINED_FUNCTION_78();
                _os_log_fault_impl(v60, v61, v62, "%{public}@: candidateEndSignpostTracker is bad class %s", v63, 0x16u);

                v33 = v74;
LABEL_41:
              }

              *__error() = v24;
            }

            v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [OUTLINED_FUNCTION_96(a1 v34)];
LABEL_20:
            v35 = [v20 objectForKeyedSubscript:v75];

            if (v35)
            {
              goto LABEL_36;
            }

            v36 = [a1 workflow];
            [v36 name];

            [a1 eventIdentifier];
            v37 = [a1 eventIdentifier];

            v73 = *__error();
            v38 = _wrlog();
            v39 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);
            if (v5)
            {
              if (v37)
              {
                if (v39)
                {
                  v67 = [a1 workflow];
                  [v67 name];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_43() eventIdentifier];
                  v40 = logb = v38;
                  v41 = [v15 name];
                  OUTLINED_FUNCTION_28();
                  v85 = v40;
                  v86 = v42;
                  v87 = @"<signpost>";
                  v88 = v42;
                  v89 = v5;
                  v90 = 2112;
                  v91 = v75;
                  v92 = 2112;
                  v93 = v43;
                  _os_log_impl(&dword_2746E5000, logb, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: Saw new individuation identifier needed for end signpost %@", buf, 0x3Eu);

                  v38 = logb;
                  goto LABEL_28;
                }

LABEL_35:

                *__error() = v73;
                v57 = [MEMORY[0x277CBEB68] null];
                [v20 setObject:v57 forKeyedSubscript:v75];

LABEL_36:
                v8 = v76;
LABEL_37:

                goto LABEL_38;
              }

              if (!v39)
              {
                goto LABEL_35;
              }

              log = [a1 workflow];
              v49 = [log name];
              v50 = [v15 name];
              OUTLINED_FUNCTION_28();
              v85 = @"<signpost>";
              v86 = v51;
              v87 = v5;
              v88 = 2112;
              v89 = v75;
              v90 = 2112;
              v91 = v52;
              v53 = v38;
              v54 = "%{public}@: %{public}@: %{public}@->%@: Saw new individuation identifier needed for end signpost %@";
              v55 = 52;
LABEL_33:
              _os_log_impl(&dword_2746E5000, v53, OS_LOG_TYPE_INFO, v54, buf, v55);

              v48 = log;
            }

            else
            {
              if (!v37)
              {
                if (!v39)
                {
                  goto LABEL_35;
                }

                log = [a1 workflow];
                v49 = [log name];
                v50 = [v15 name];
                OUTLINED_FUNCTION_28();
                v85 = @"<signpost>";
                v86 = 2112;
                v87 = v56;
                v53 = v38;
                v54 = "%{public}@: %{public}@: Saw new individuation identifier needed for end signpost %@";
                v55 = 32;
                goto LABEL_33;
              }

              if (!v39)
              {
                goto LABEL_35;
              }

              v67 = [a1 workflow];
              logc = [v67 name];
              v44 = [a1 eventIdentifier];
              v45 = [v15 name];
              *buf = 138544130;
              OUTLINED_FUNCTION_85();
              v86 = v46;
              v87 = @"<signpost>";
              v88 = 2112;
              v89 = v47;
              _os_log_impl(&dword_2746E5000, v38, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: Saw new individuation identifier needed for end signpost %@", buf, 0x2Au);

LABEL_28:
              v48 = v67;
            }

            goto LABEL_35;
          }

LABEL_38:
          ++v13;
        }

        while (v11 != v13);
        v64 = [obj countByEnumeratingWithState:&v78 objects:v94 count:16];
        v11 = v64;
      }

      while (v64);
LABEL_43:

      ++v8;
      v7 = v66;
      if (v8 >= [v66 count])
      {
LABEL_44:

        break;
      }
    }
  }

  v65 = *MEMORY[0x277D85DE8];
}

- (void)applySignpost:(void *)a3 toSignpostTracker:
{
  v189 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    v178[0] = MEMORY[0x277D85DD0];
    v178[1] = 3221225472;
    v178[2] = __58__WRWorkflowEventTracker_applySignpost_toSignpostTracker___block_invoke;
    v178[3] = &unk_279EE3290;
    v10 = v8;
    v179 = v10;
    v180 = a1;
    v11 = MEMORY[0x277C5A9A0](v178);
    objc_opt_class();
    if (OUTLINED_FUNCTION_73())
    {
      v12 = v7;
      if ([v12 isSyntheticIntervalEvent])
      {
        v13 = [v10 signpost];
        v14 = [v13 individuationFieldName];

        if (v14)
        {
          v15 = [v10 signpost];
          [v15 individuationFieldName];

          [v10 individuationIdentifier];
          [v12 name];

          v16 = [a1 workflow];
          [v16 name];

          [a1 eventIdentifier];
          v17 = [a1 eventIdentifier];

          v18 = *__error();
          v19 = _wrlog();
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
          if (v17)
          {
            if (v20)
            {
              v176 = [a1 workflow];
              v171 = [v176 name];
              v169 = [a1 eventIdentifier];
              v21 = [v12 name];
              v173 = [v10 signpost];
              v22 = [v173 individuationFieldName];
              v23 = [v10 individuationIdentifier];
              OUTLINED_FUNCTION_25();
              v184 = v169;
              v185 = v24;
              *v186 = v21;
              *&v186[8] = v24;
              *&v186[10] = v22;
              *&v186[18] = 2112;
              *&v186[20] = v25;
              OUTLINED_FUNCTION_78();
              _os_log_fault_impl(v26, v27, v28, v29, v30, 0x34u);

LABEL_71:
            }
          }

          else if (v20)
          {
            v176 = [a1 workflow];
            [v176 name];
            objc_claimAutoreleasedReturnValue();
            v119 = [OUTLINED_FUNCTION_84() name];
            v175 = [v10 signpost];
            v120 = [v175 individuationFieldName];
            v121 = [v10 individuationIdentifier];
            *buf = 138544130;
            v182 = v4;
            OUTLINED_FUNCTION_10();
            *v186 = v120;
            *&v186[8] = 2112;
            *&v186[10] = v122;
            OUTLINED_FUNCTION_78();
            _os_log_fault_impl(v123, v124, v125, v126, v127, 0x2Au);

            goto LABEL_71;
          }

LABEL_21:
          *__error() = v18;
LABEL_22:

          goto LABEL_23;
        }

        [v12 name];

        v44 = [a1 workflow];
        [v44 name];

        [a1 eventIdentifier];
        v45 = [a1 eventIdentifier];

        v18 = *__error();
        v46 = _wrlog();
        v47 = OUTLINED_FUNCTION_99(v46);
        if (v45)
        {
          if (v47)
          {
            v48 = [a1 workflow];
            v14 = [v48 name];
            v49 = [a1 eventIdentifier];
            v50 = [v12 name];
            *buf = 138543874;
            v182 = v14;
            OUTLINED_FUNCTION_10();
            *v186 = v51;
            OUTLINED_FUNCTION_23();
            _os_log_fault_impl(v52, v53, v54, v55, v56, 0x20u);

LABEL_90:
          }
        }

        else if (v47)
        {
          v48 = [a1 workflow];
          [v48 name];
          objc_claimAutoreleasedReturnValue();
          v49 = [OUTLINED_FUNCTION_64() name];
          OUTLINED_FUNCTION_25();
          v184 = v151;
          OUTLINED_FUNCTION_23();
          _os_log_fault_impl(v152, v153, v154, v155, v156, 0x16u);
          goto LABEL_90;
        }

        goto LABEL_21;
      }

      v58 = OUTLINED_FUNCTION_53();
      v59(v58, v12);
      v60 = [WRTimestampAndThread alloc];
      v61 = [OUTLINED_FUNCTION_67() processID];
      v62 = [v12 threadID];
      [v12 endNanoseconds];
      v63 = [OUTLINED_FUNCTION_84() endDate];
      v64 = [(WRTimestampAndThread *)v3 initWithPID:v61 threadID:v62 machContTimeNs:v4 date:v63];

      if ([v12 eventType])
      {
        if (!v10 || (v66 = OUTLINED_FUNCTION_94(v10, v65)) == 0)
        {
          v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (v10)
          {
            v69 = v10;
            v70 = v68;
            v71 = 48;
            goto LABEL_45;
          }

LABEL_47:
          [(WRTimestampAndThread *)v64 insertIntoSortedArray:v68];

          goto LABEL_22;
        }
      }

      else if (!v10 || (v66 = OUTLINED_FUNCTION_94(v10, v65)) == 0)
      {
        v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v10)
        {
          v69 = v10;
          v70 = v68;
          v71 = 56;
LABEL_45:
          objc_setProperty_atomic(v69, v67, v70, v71);
          goto LABEL_47;
        }

        goto LABEL_47;
      }

      v68 = v66;
      goto LABEL_47;
    }

    objc_opt_class();
    if ((OUTLINED_FUNCTION_73() & 1) == 0)
    {
      v31 = [a1 workflow];
      [v31 name];

      [a1 eventIdentifier];
      v32 = [a1 eventIdentifier];

      v33 = *__error();
      v34 = _wrlog();
      v35 = OUTLINED_FUNCTION_99(v34);
      if (v32)
      {
        if (v35)
        {
          v36 = [a1 workflow];
          v3 = [v36 name];
          v37 = [a1 eventIdentifier];
          object_getClassName(v7);
          OUTLINED_FUNCTION_24();
          v184 = v37;
          v185 = 2082;
          *v186 = v38;
          OUTLINED_FUNCTION_23();
          _os_log_fault_impl(v39, v40, v41, v42, v43, 0x20u);

LABEL_49:
        }
      }

      else if (v35)
      {
        v36 = [a1 workflow];
        [v36 name];
        objc_claimAutoreleasedReturnValue();
        v83 = OUTLINED_FUNCTION_68();
        ClassName = object_getClassName(v83);
        *buf = 138543618;
        v182 = v3;
        v183 = 2082;
        v184 = ClassName;
        OUTLINED_FUNCTION_23();
        _os_log_fault_impl(v85, v86, v87, v88, v89, 0x16u);
        goto LABEL_49;
      }

      *__error() = v33;
LABEL_23:

      goto LABEL_24;
    }

    v12 = [v7 beginEvent];
    v72 = [v7 endEvent];
    v74 = v72;
    v75 = 0;
    if (!v10)
    {
      goto LABEL_38;
    }

LABEL_31:
    for (i = OUTLINED_FUNCTION_71(v72, v73); ; i = 0)
    {
      v77 = [i count];
      if (v75 >= v77)
      {
        v80 = 0;
        goto LABEL_53;
      }

      v79 = v10 ? OUTLINED_FUNCTION_71(v77, v78) : 0;
      v80 = [v79 objectAtIndexedSubscript:v75];
      [v80 machContTimeNs];
      if (v3 == [OUTLINED_FUNCTION_67() startNanoseconds])
      {
        [v80 threadID];
        v81 = [OUTLINED_FUNCTION_67() threadID];
        if (v3 == v81)
        {
          break;
        }
      }

      v75 = (v75 + 1);
      if (v10)
      {
        goto LABEL_31;
      }

LABEL_38:
      ;
    }

    if (v10)
    {
      v90 = OUTLINED_FUNCTION_71(v81, v82);
    }

    else
    {
      v90 = 0;
    }

    [v90 removeObjectAtIndex:v75];
LABEL_53:
    if (([v12 isSyntheticIntervalEvent] & 1) == 0 && !v80)
    {
      v91 = OUTLINED_FUNCTION_53();
      v92(v91, v12);
    }

    v93 = OUTLINED_FUNCTION_53();
    v94(v93, v74);
    v170 = [v12 processID];
    v168 = [v12 threadID];
    v177 = [v74 processID];
    v174 = [v74 threadID];
    v172 = v74;
    if (([v12 overridesBeginTime] & 1) == 0 && !objc_msgSend(v74, "overridesBeginTime"))
    {
      if (([v12 overridesEndTime] & 1) != 0 || objc_msgSend(v74, "overridesEndTime"))
      {
        v174 = 0;
        v177 = -1;
      }

      goto LABEL_81;
    }

    if (([v12 overridesEndTime] & 1) == 0 && !objc_msgSend(v74, "overridesEndTime"))
    {
      v168 = 0;
      v170 = -1;
LABEL_81:
      if (v80)
      {
        v140 = v80;
      }

      else
      {
        v141 = [WRTimestampAndThread alloc];
        v142 = [OUTLINED_FUNCTION_67() startNanoseconds];
        v75 = [v12 beginDate];
        v140 = [(WRTimestampAndThread *)v3 initWithPID:v170 threadID:v168 machContTimeNs:v142 date:v75];
      }

      v143 = [WRTimestampAndThread alloc];
      [OUTLINED_FUNCTION_68() endNanoseconds];
      v144 = [OUTLINED_FUNCTION_27() endDate];
      v145 = [(WRTimestampAndThread *)v3 initWithPID:v177 threadID:v174 machContTimeNs:v75 date:v144];

      v146 = [WRIntervalAndThreads alloc];
      v148 = [WRIntervalAndThreads initWithStart:end:];
      if (!v10 || (v149 = objc_getProperty(v10, v147, 40, 1)) == 0)
      {
        v149 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v10)
        {
          objc_setProperty_atomic(v10, v150, v149, 40);
        }
      }

      [(WRIntervalAndThreads *)v148 insertIntoSortedArray:v149];

      goto LABEL_22;
    }

    v95 = [v10 signpost];
    v96 = [v95 individuationFieldName];

    if (!v96)
    {
      [v74 name];

      v97 = [a1 workflow];
      [v97 name];

      [a1 eventIdentifier];
      v3 = [a1 eventIdentifier];

      v98 = *__error();
      v75 = _wrlog();
      v99 = os_log_type_enabled(v75, OS_LOG_TYPE_INFO);
      if (v3)
      {
        if (v99)
        {
          v167 = [a1 workflow];
          [v167 name];
          v128 = loga = v98;
          v3 = [a1 eventIdentifier];
          v129 = [v172 name];
          *buf = 138544898;
          v182 = v128;
          v183 = 2114;
          v184 = v3;
          v185 = 2114;
          *v186 = v129;
          *&v186[8] = 1024;
          *&v186[10] = v170;
          *&v186[14] = 2048;
          *&v186[16] = v168;
          *&v186[24] = 1024;
          *&v186[26] = v177;
          *&v186[30] = 2048;
          *&v186[32] = v174;
          OUTLINED_FUNCTION_54();
          _os_log_impl(v130, v131, v132, v133, v134, 0x40u);

          v98 = loga;
        }
      }

      else if (v99)
      {
        v165 = [a1 workflow];
        v3 = [v165 name];
        v100 = [v172 name];
        OUTLINED_FUNCTION_24();
        v184 = v101;
        v185 = 1024;
        *v186 = v170;
        *&v186[4] = 2048;
        *&v186[6] = v168;
        *&v186[14] = 1024;
        *&v186[16] = v177;
        *&v186[20] = 2048;
        *&v186[22] = v174;
        OUTLINED_FUNCTION_54();
        _os_log_impl(v102, v103, v104, v105, v106, 0x36u);
      }

      *__error() = v98;
      goto LABEL_81;
    }

    v107 = [v10 signpost];
    [v107 individuationFieldName];

    [v10 individuationIdentifier];
    [v74 name];

    v108 = [a1 workflow];
    [v108 name];

    [a1 eventIdentifier];
    v3 = [a1 eventIdentifier];

    v166 = *__error();
    v75 = _wrlog();
    v109 = os_log_type_enabled(v75, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v109)
      {
        v161 = [a1 workflow];
        v157 = [v161 name];
        v135 = [a1 eventIdentifier];
        v3 = [v74 name];
        v159 = [v10 signpost];
        [v159 individuationFieldName];
        v136 = logb = v75;
        [v10 individuationIdentifier];
        objc_claimAutoreleasedReturnValue();
        *buf = 138545410;
        v182 = v157;
        OUTLINED_FUNCTION_10();
        *v186 = v3;
        *&v186[8] = v137;
        *&v186[10] = v136;
        *&v186[18] = 2112;
        *&v186[20] = v138;
        v139 = v138;
        *&v186[28] = 1024;
        *&v186[30] = v170;
        *&v186[34] = 2048;
        *&v186[36] = v168;
        *&v186[44] = 1024;
        *&v186[46] = v177;
        v187 = 2048;
        v188 = v174;
        _os_log_impl(&dword_2746E5000, logb, OS_LOG_TYPE_INFO, "%{public}@<%{public}@>: %{public}@: %{public}@->%@: Both begin and end times are overridden - assuming they occurred on [%d] thread 0x%#llx and [%d] thread 0x%#llx", buf, 0x54u);

        v75 = logb;
        v118 = v161;
        goto LABEL_79;
      }
    }

    else if (v109)
    {
      log = [a1 workflow];
      v158 = [log name];
      v110 = [v74 name];
      v160 = [v10 signpost];
      v111 = [v160 individuationFieldName];
      [v10 individuationIdentifier];
      objc_claimAutoreleasedReturnValue();
      *buf = 138545154;
      v182 = v158;
      OUTLINED_FUNCTION_10();
      *v186 = v111;
      *&v186[8] = 2112;
      *&v186[10] = v112;
      v3 = v112;
      *&v186[18] = 1024;
      *&v186[20] = v170;
      *&v186[24] = 2048;
      *&v186[26] = v168;
      *&v186[34] = 1024;
      *&v186[36] = v177;
      *&v186[40] = 2048;
      *&v186[42] = v174;
      OUTLINED_FUNCTION_54();
      _os_log_impl(v113, v114, v115, v116, v117, 0x4Au);

      v118 = log;
LABEL_79:
    }

    *__error() = v166;
    goto LABEL_81;
  }

LABEL_24:

  v57 = *MEMORY[0x277D85DE8];
}

- (void)newConcurrentEventWithIdentifier:(void *)a1
{
  v6 = a2;
  if (a1)
  {
    Property = objc_getProperty(a1, v5, 120, 1);
    v8 = [WRWorkflowEventTracker alloc];
    [OUTLINED_FUNCTION_43() workflow];
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_13();
    if (Property)
    {
      v11 = objc_getProperty(v9, v10, 120, 1);
      v12 = OUTLINED_FUNCTION_66();
      v14 = [v2 initForLiveStreamingWithWorkflow:v3 timeoutQueue:Property eventCompletionCallback:{objc_getProperty(v12, v13, 144, 1)}];
    }

    else
    {
      v14 = [v2 initForReadbackWithWorkflow:v3 eventCompletionCallback:{objc_getProperty(v9, v10, 144, 1)}];
    }

    if (v14)
    {
      objc_setProperty_atomic(v14, v15, v6, 24);
    }

    if (objc_getProperty(a1, v15, 112, 1))
    {
      [objc_getProperty(a1 v16];
    }

    else
    {
      [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v14, 0}];
      v17 = OUTLINED_FUNCTION_13();
      objc_setProperty_atomic(v17, v18, v3, 112);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)fillInNonDiagnosticSignpost:(void *)a1
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a1)
  {
    v8 = [a1 workflow];
    v9 = [(WRWorkflow *)v8 wrsignpostForSignpostObject:v7];

    if (!v9)
    {
      goto LABEL_5;
    }

    objc_opt_class();
    if (OUTLINED_FUNCTION_73() & 1) != 0 && ([v7 isSyntheticIntervalEvent])
    {
      goto LABEL_5;
    }

    [v9 individuationFieldName];
    objc_claimAutoreleasedReturnValue();
    v11 = OUTLINED_FUNCTION_13();
    [(WRWorkflowEventTracker *)v11 individuationIdentifierForSignpostObject:v7 individuationFieldName:v8];
    objc_claimAutoreleasedReturnValue();
    v12 = OUTLINED_FUNCTION_66();
    [(WRWorkflowEventTracker *)v12 trackerForWRSignpost:v9 individuationIdentifier:v2];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_68() startNanoseconds];
    [OUTLINED_FUNCTION_34() endNanoseconds];
    [OUTLINED_FUNCTION_27() name];

    v13 = [a1 workflow];
    [v13 name];

    [a1 eventIdentifier];
    v14 = [a1 eventIdentifier];

    v57 = *__error();
    v15 = _wrlog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v4 == v5)
    {
      if (v8)
      {
        if (!v14)
        {
          if (v16)
          {
            v55 = [a1 workflow];
            [v55 name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_27() name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_45() startNanoseconds];
            v4 = [OUTLINED_FUNCTION_39() eventStart];
            OUTLINED_FUNCTION_16([v4 machContTimeNs]);
            OUTLINED_FUNCTION_98();
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_42();
            OUTLINED_FUNCTION_6();
            v22 = 62;
            goto LABEL_19;
          }

LABEL_36:

          *__error() = v57;
          [(WRWorkflowEventTracker *)a1 applySignpost:v7 toSignpostTracker:v3];

LABEL_5:
          goto LABEL_6;
        }

        if (!v16)
        {
          goto LABEL_36;
        }

        v55 = [a1 workflow];
        v29 = [v55 name];
        [a1 eventIdentifier];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_34() name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_27() startNanoseconds];
        v52 = [OUTLINED_FUNCTION_39() eventStart];
        OUTLINED_FUNCTION_16([v52 machContTimeNs]);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_41();
        OUTLINED_FUNCTION_6();
        v35 = 72;
      }

      else
      {
        if (!v14)
        {
          if (v16)
          {
            v55 = [a1 workflow];
            [v55 name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_27() name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_45() startNanoseconds];
            v4 = [OUTLINED_FUNCTION_39() eventStart];
            OUTLINED_FUNCTION_16([v4 machContTimeNs]);
            OUTLINED_FUNCTION_98();
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_6();
            v22 = 42;
LABEL_19:
            _os_log_impl(v17, v18, v19, v20, v21, v22);
LABEL_33:

            goto LABEL_34;
          }

          goto LABEL_36;
        }

        if (!v16)
        {
          goto LABEL_36;
        }

        v55 = [a1 workflow];
        v29 = [v55 name];
        [a1 eventIdentifier];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_34() name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_27() startNanoseconds];
        v52 = [OUTLINED_FUNCTION_39() eventStart];
        OUTLINED_FUNCTION_16([v52 machContTimeNs]);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_6();
        v35 = 52;
      }

      _os_log_impl(v30, v31, v32, v33, v34, v35);
    }

    else
    {
      if (v8)
      {
        if (v14)
        {
          if (v16)
          {
            v55 = [a1 workflow];
            v5 = [v55 name];
            [a1 eventIdentifier];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_45() name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_34() startNanoseconds];
            v54 = [OUTLINED_FUNCTION_39() eventStart];
            OUTLINED_FUNCTION_16([v54 machContTimeNs]);
            OUTLINED_FUNCTION_97();
            v50 = [OUTLINED_FUNCTION_82() eventStart];
            [v50 machContTimeNs];
            OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_95();
            OUTLINED_FUNCTION_19();
            [v7 endMachContinuousTime];
            OUTLINED_FUNCTION_12();
            OUTLINED_FUNCTION_41();
            OUTLINED_FUNCTION_6();
            _os_log_impl(v42, v43, v44, v45, v46, 0x66u);

            goto LABEL_33;
          }

          goto LABEL_36;
        }

        if (!v16)
        {
          goto LABEL_36;
        }

        v55 = [a1 workflow];
        [v55 name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_34() name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_27() startNanoseconds];
        v51 = [OUTLINED_FUNCTION_39() eventStart];
        OUTLINED_FUNCTION_16([v51 machContTimeNs]);
        OUTLINED_FUNCTION_97();
        v48 = [OUTLINED_FUNCTION_82() eventStart];
        [v48 machContTimeNs];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_19();
        [OUTLINED_FUNCTION_45() endMachContinuousTime];
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_6();
        v28 = 92;
      }

      else
      {
        if (v14)
        {
          if (v16)
          {
            v53 = [a1 workflow];
            v56 = [v53 name];
            [a1 eventIdentifier];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_45() name];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_27() startNanoseconds];
            v49 = [OUTLINED_FUNCTION_39() eventStart];
            OUTLINED_FUNCTION_16([v49 machContTimeNs]);
            OUTLINED_FUNCTION_97();
            v47 = [OUTLINED_FUNCTION_82() eventStart];
            [v47 machContTimeNs];
            OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_95();
            OUTLINED_FUNCTION_19();
            [OUTLINED_FUNCTION_34() endMachContinuousTime];
            OUTLINED_FUNCTION_36();
            OUTLINED_FUNCTION_83();
            OUTLINED_FUNCTION_6();
            _os_log_impl(v36, v37, v38, v39, v40, 0x52u);

            v41 = v53;
LABEL_35:

            goto LABEL_36;
          }

          goto LABEL_36;
        }

        if (!v16)
        {
          goto LABEL_36;
        }

        v55 = [a1 workflow];
        [v55 name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_34() name];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_27() startNanoseconds];
        v51 = [OUTLINED_FUNCTION_39() eventStart];
        OUTLINED_FUNCTION_16([v51 machContTimeNs]);
        OUTLINED_FUNCTION_97();
        v48 = [OUTLINED_FUNCTION_82() eventStart];
        [v48 machContTimeNs];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_95();
        OUTLINED_FUNCTION_19();
        [OUTLINED_FUNCTION_45() endMachContinuousTime];
        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_6();
        v28 = 72;
      }

      _os_log_impl(v23, v24, v25, v26, v27, v28);
    }

LABEL_34:
    v41 = v55;
    goto LABEL_35;
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

- (NSMutableDictionary)environment
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (self)
  {
    v5 = OUTLINED_FUNCTION_69(self, v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 environment];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __37__WRWorkflowEventTracker_environment__block_invoke;
        v17[3] = &unk_279EE3308;
        v17[4] = v11;
        v18 = v4;
        [v12 enumerateKeysAndObjectsUsingBlock:v17];
      }

      v8 = OUTLINED_FUNCTION_74(v13, v14, &v19, v23);
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)diagnosticsExceedingThresholds
{
  v36 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v2 = [a1 workflow];
    v3 = [v2 workflowDiagnostics];

    v6 = OUTLINED_FUNCTION_75(v4, v5, &v31, v35);
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          if ([v10 hasTriggerThresholdDurationSingle])
          {
            v11 = [a1 eventEnd];
            if (v11)
            {
              v12 = v11;
              v13 = [a1 eventStart];
              if (v13)
              {
                v14 = v13;
                v15 = [a1 error];

                if (!v15)
                {
                  if ([v10 reportOmittingNetworkBoundIntervals])
                  {
                    [a1 stats];
                    v16 = 0;
                  }

                  else
                  {
                    v17 = [a1 eventEnd];
                    v18 = [v17 machContTimeNs];
                    v19 = [a1 eventStart];
                    v16 = v18 - [v19 machContTimeNs];
                  }

                  [v10 triggerThresholdDurationSingle];
                  if (v20 <= v16 / 1000000000.0)
                  {
                    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    [v27 addObject:v10];
                    goto LABEL_27;
                  }
                }
              }

              else
              {
              }
            }
          }

          v21 = [v10 triggerEventTimeout];
          if (v21)
          {
            v23 = [a1 error];
            v24 = v23;
            if (v23)
            {
              v25 = [v23 domain];
              if ([v25 isEqualToString:@"WorkflowResponsivenessError"])
              {
                v26 = [v24 code];

                if (v26 == 4)
                {
                  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [v27 addObject:v10];

                  goto LABEL_27;
                }
              }

              else
              {
              }
            }
          }
        }

        v7 = OUTLINED_FUNCTION_75(v21, v22, &v31, v35);
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_27:

    v28 = [v27 copy];
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)encodedDict
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = [(WRWorkflowEventTracker *)self workflow];
  v5 = [v4 encodedDict];
  v6 = [OUTLINED_FUNCTION_40() initWithObjectsAndKeys:{@"wt_workflow", 0}];

  v7 = [(WRWorkflowEventTracker *)self startSignpost];
  v8 = [v7 name];
  [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];

  v9 = [(WRWorkflowEventTracker *)self endSignpost];
  v10 = [v9 name];
  [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];

  v11 = [(WRWorkflowEventTracker *)self error];

  if (v11)
  {
    v12 = [(WRWorkflowEventTracker *)self error];
    v13 = [v12 domain];
    v14 = [v13 isEqualToString:@"WorkflowResponsivenessError"];

    if (v14)
    {
LABEL_10:
      v26 = [(WRWorkflowEventTracker *)self error];
      [v26 code];
      v27 = [OUTLINED_FUNCTION_88() numberWithInteger:?];
      [OUTLINED_FUNCTION_48() setObject:? forKeyedSubscript:?];

      v28 = [(WRWorkflowEventTracker *)self error];
      v29 = [v28 userInfo];
      v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277CCA068]];
      [v6 setObject:v30 forKeyedSubscript:@"wt_error_description"];

      goto LABEL_11;
    }

    v15 = [(WRWorkflowEventTracker *)self workflow];
    [v15 name];

    [(WRWorkflowEventTracker *)self eventIdentifier];
    v16 = [(WRWorkflowEventTracker *)self eventIdentifier];

    v17 = *__error();
    v18 = _wrlog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);
    if (v16)
    {
      if (v19)
      {
        v20 = [(WRWorkflowEventTracker *)self workflow];
        [v20 name];
        objc_claimAutoreleasedReturnValue();
        v21 = [OUTLINED_FUNCTION_66() eventIdentifier];
        v23 = [(WRWorkflowEventTracker *)self error];
        v59 = 138543874;
        v60 = v14;
        OUTLINED_FUNCTION_35();
        v62 = v21;
        v63 = 2112;
        v64 = v24;
        OUTLINED_FUNCTION_56(&dword_2746E5000, v18, v25, "%{public}@<%{public}@>: Have error with bad domain %@", &v59);

        goto LABEL_8;
      }
    }

    else if (v19)
    {
      v20 = [(WRWorkflowEventTracker *)self workflow];
      [v20 name];
      objc_claimAutoreleasedReturnValue();
      v21 = [OUTLINED_FUNCTION_66() error];
      v59 = 138543618;
      v60 = v14;
      v61 = 2112;
      v62 = v21;
      OUTLINED_FUNCTION_44(&dword_2746E5000, v18, v22, "%{public}@: Have error with bad domain %@", &v59);
LABEL_8:
    }

    *__error() = v17;
    goto LABEL_10;
  }

LABEL_11:
  v31 = [(WRWorkflowEventTracker *)self eventStart];
  v32 = [(WRTimestampAndThread *)v31 encodedDict];
  [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];

  v33 = [(WRWorkflowEventTracker *)self eventEnd];
  v34 = [(WRTimestampAndThread *)v33 encodedDict];
  [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];

  v35 = [(WRWorkflowEventTracker *)self eventIdentifier];
  [OUTLINED_FUNCTION_48() setObject:? forKeyedSubscript:?];

  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v37 = [(WRWorkflowEventTracker *)self allSignpostTrackers];
  v38 = [v37 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v55;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        OUTLINED_FUNCTION_91(v55);
        if (!v42)
        {
          objc_enumerationMutation(v37);
        }

        v43 = *(*(&v54 + 1) + 8 * i);
        v44 = [v43 signpost];
        v45 = [v44 name];

        v46 = [v36 objectForKeyedSubscript:v45];
        if (!v46)
        {
          v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v36 setObject:v46 forKeyedSubscript:v45];
        }

        v47 = [(WRSignpostTracker *)v43 encodedDict];
        [v46 addObject:v47];
      }

      v39 = OUTLINED_FUNCTION_74(v48, v49, &v54, v58);
    }

    while (v39);
  }

  v50 = [v36 copy];
  [OUTLINED_FUNCTION_49() setObject:? forKeyedSubscript:?];

  v51 = [v6 copy];
  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

- (void)initWithEncodedData:(void *)a3 error:
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1;
  v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:0 error:0];
  if (v11)
  {
    v4 = [OUTLINED_FUNCTION_49() initWithEncodedDict:? error:?];
    v17 = 0;
    if (v4)
    {
      v18 = v4;
    }

    else if (a3)
    {
      *a3 = WRMakeErrorWithUnderlyingError(6, v17, @"Encoded string does not contain a workflow event", v12, v13, v14, v15, v16, v21);
    }

    v19 = v4;
  }

  else if (a3)
  {
    WRMakeError(6, @"String is not an encoded dictionary", v5, v6, v7, v8, v9, v10, v21);
    *a3 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (uint64_t)gatherDiagnosticsWithTailspin:(int)a3 tailspinIncludeOSLogs:
{
  v3 = a1;
  v164 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [a1 workflow];
    [v4 name];

    [v3 eventIdentifier];
    v5 = [v3 eventIdentifier];

    v6 = *__error();
    v7 = _wrlog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v8)
      {
        goto LABEL_8;
      }

      v9 = [v3 workflow];
      v10 = [v9 name];
      v11 = [v3 eventIdentifier];
      *buf = 138543618;
      *&buf[4] = v10;
      OUTLINED_FUNCTION_35();
      v161 = v12;
      _os_log_impl(&dword_2746E5000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@<%{public}@>: Generating diagnostics", buf, 0x16u);
    }

    else
    {
      if (!v8)
      {
        goto LABEL_8;
      }

      v9 = [v3 workflow];
      v10 = [v9 name];
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_impl(&dword_2746E5000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Generating diagnostics", buf, 0xCu);
    }

LABEL_8:
    *__error() = v6;
    +[WRWorkflowEventTracker makeTailspinDirectory];
    v13 = MEMORY[0x277CCACA8];
    v14 = [v3 workflow];
    v15 = [v14 name];
    v16 = [v3 eventStart];
    v17 = [v16 date];
    v18 = v17;
    if (!v17)
    {
      v18 = [MEMORY[0x277CBEAA8] date];
    }

    v19 = _MergedGlobals;
    v20 = v18;
    if (v19 != -1)
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_538);
    }

    v21 = [qword_28159D110 stringFromDate:v20];

    v22 = [v13 stringWithFormat:@"%@-%@.%@", v15, v21, @"tailspin"];

    if (!v17)
    {
    }

    v23 = +[WRWorkflowEventTracker tailspinDirectory];
    v155 = v22;
    v24 = [v23 URLByAppendingPathComponent:v22];

    v157 = 0;
    v25 = [v3 encodedStringWithError:&v157];
    v26 = v157;
    if (v25)
    {
LABEL_20:
      v46 = [v24 URLByAppendingPathExtension:@"temp"];
      v47 = v46;
      if (v46)
      {
        v48 = [v46 fileSystemRepresentation];
        if (v48)
        {
          v49 = v48;
          v50 = open(v48, 3586, 420);
          if (v50 != -1)
          {
            v51 = v50;
            v151 = v26;
            if (unlink(v49))
            {
              v52 = [v3 workflow];
              [v52 name];

              [v3 eventIdentifier];
              v53 = [v3 eventIdentifier];

              v54 = *__error();
              v55 = _wrlog();
              v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
              if (v53)
              {
                if (v56)
                {
                  v57 = [v3 workflow];
                  v58 = [v57 name];
                  v59 = [v3 eventIdentifier];
                  v60 = __error();
                  OUTLINED_FUNCTION_15(*v60, 5.8384e-34);
                  OUTLINED_FUNCTION_8();
                  _os_log_error_impl(v61, v62, v63, v64, v65, 0x26u);
                }
              }

              else if (v56)
              {
                v135 = [v3 workflow];
                v136 = [v135 name];
                v137 = *__error();
                *buf = 138543874;
                *&buf[4] = v136;
                OUTLINED_FUNCTION_47(v137);
                OUTLINED_FUNCTION_8();
                _os_log_error_impl(v138, v139, v140, v141, v142, 0x1Cu);
              }

              *__error() = v54;
              close(v51);
              v3 = 0;
            }

            else
            {
              *buf = 0;
              mach_get_times();
              v113 = *MEMORY[0x277D82D28];
              v158[0] = *MEMORY[0x277D82CC8];
              v158[1] = v113;
              v159[0] = MEMORY[0x277CBEC38];
              v159[1] = MEMORY[0x277CBEC28];
              v158[2] = *MEMORY[0x277D82D18];
              v114 = [MEMORY[0x277CCABB0] numberWithInt:WRIsAppleInternal() ^ 1];
              v158[3] = *MEMORY[0x277D82D08];
              v159[2] = v114;
              v159[3] = v25;
              v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:4];
              v116 = [v115 mutableCopy];

              if (a3)
              {
                [v116 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D82CC0]];
              }

              dispatch_get_global_queue(0, 0);
              objc_claimAutoreleasedReturnValue();
              v117 = [OUTLINED_FUNCTION_64() workflow];
              v118 = [v117 name];
              v119 = WRCreateOSTransaction("Gathering tailspin for workflow %s", [v118 UTF8String]);

              v156 = v24;
              v120 = v119;
              tailspin_dump_output_with_options();

              v3 = 1;
            }

            v22 = v155;
            v26 = v151;
            goto LABEL_52;
          }

          v90 = [v3 workflow];
          [v90 name];

          [v3 eventIdentifier];
          v91 = [v3 eventIdentifier];

          v68 = *__error();
          v69 = _wrlog();
          v92 = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
          if (v91)
          {
            if (v92)
            {
              v93 = [v3 workflow];
              [v93 name];
              v94 = v153 = v26;
              v95 = [v3 eventIdentifier];
              v96 = __error();
              OUTLINED_FUNCTION_15(*v96, 5.8384e-34);
              OUTLINED_FUNCTION_8();
              _os_log_error_impl(v97, v98, v99, v100, v101, 0x26u);

              v26 = v153;
            }
          }

          else if (v92)
          {
            v143 = [v3 workflow];
            v144 = [v143 name];
            v145 = *__error();
            *buf = 138543874;
            *&buf[4] = v144;
            OUTLINED_FUNCTION_47(v145);
            OUTLINED_FUNCTION_8();
            _os_log_error_impl(v146, v147, v148, v149, v150, 0x1Cu);
          }

LABEL_41:

          v3 = 0;
          *__error() = v68;
LABEL_52:

          goto LABEL_53;
        }

        v82 = [v3 workflow];
        [v82 name];

        [v3 eventIdentifier];
        v83 = [v3 eventIdentifier];

        v68 = *__error();
        v69 = _wrlog();
        v84 = os_log_type_enabled(v69, OS_LOG_TYPE_FAULT);
        if (v83)
        {
          if (!v84)
          {
            goto LABEL_41;
          }

          v71 = [v3 workflow];
          [v71 name];
          objc_claimAutoreleasedReturnValue();
          v3 = [OUTLINED_FUNCTION_84() eventIdentifier];
          OUTLINED_FUNCTION_51(5.8383e-34);
          *(v85 + 4) = v21;
          OUTLINED_FUNCTION_35();
          *(v87 + 14) = v86;
          v162 = v88;
          v163 = v47;
          OUTLINED_FUNCTION_56(&dword_2746E5000, v69, v89, "%{public}@<%{public}@>: Unable to get fileSystemRepresentation for %{public}@", buf);
LABEL_33:

          goto LABEL_41;
        }

        if (!v84)
        {
          goto LABEL_41;
        }

        v102 = [v3 workflow];
        v103 = [v102 name];
        OUTLINED_FUNCTION_51(5.8382e-34);
        *(v132 + 4) = v131;
        OUTLINED_FUNCTION_35();
        *(v133 + 14) = v47;
        OUTLINED_FUNCTION_44(&dword_2746E5000, v69, v134, "%{public}@: Unable to get fileSystemRepresentation for %{public}@", buf);
      }

      else
      {
        v66 = [v3 workflow];
        [v66 name];

        [v3 eventIdentifier];
        v67 = [v3 eventIdentifier];

        v68 = *__error();
        v69 = _wrlog();
        v70 = os_log_type_enabled(v69, OS_LOG_TYPE_ERROR);
        if (v67)
        {
          if (!v70)
          {
            goto LABEL_41;
          }

          v71 = [v3 workflow];
          [v71 name];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_84() eventIdentifier];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_66() path];
          v72 = v152 = v26;
          OUTLINED_FUNCTION_51(5.8383e-34);
          *(v73 + 4) = v21;
          OUTLINED_FUNCTION_35();
          *(v74 + 14) = v3;
          v162 = v75;
          v163 = v76;
          OUTLINED_FUNCTION_8();
          _os_log_error_impl(v77, v78, v79, v80, v81, 0x20u);

          v26 = v152;
          goto LABEL_33;
        }

        if (!v70)
        {
          goto LABEL_41;
        }

        v102 = [v3 workflow];
        v103 = [v102 name];
        v104 = [v24 path];
        OUTLINED_FUNCTION_51(5.8382e-34);
        *(v105 + 4) = v103;
        OUTLINED_FUNCTION_35();
        *(v107 + 14) = v106;
        OUTLINED_FUNCTION_8();
        _os_log_error_impl(v108, v109, v110, v111, v112, 0x16u);
      }

      goto LABEL_41;
    }

    v27 = [v3 workflow];
    [v27 name];

    [v3 eventIdentifier];
    v28 = [v3 eventIdentifier];

    v29 = *__error();
    v30 = _wrlog();
    v31 = OUTLINED_FUNCTION_99(v30);
    if (v28)
    {
      if (v31)
      {
        v32 = [v3 workflow];
        [v32 name];
        objc_claimAutoreleasedReturnValue();
        v33 = [OUTLINED_FUNCTION_64() eventIdentifier];
        OUTLINED_FUNCTION_51(5.8383e-34);
        *(v34 + 4) = v18;
        OUTLINED_FUNCTION_35();
        *(v36 + 14) = v35;
        v162 = v37;
        v163 = v26;
        OUTLINED_FUNCTION_37();
        _os_log_fault_impl(v38, v39, v40, v41, v42, 0x20u);

LABEL_55:
      }
    }

    else if (v31)
    {
      v32 = [v3 workflow];
      v18 = [v32 name];
      OUTLINED_FUNCTION_51(5.8382e-34);
      *(v124 + 4) = v123;
      OUTLINED_FUNCTION_35();
      *(v125 + 14) = v26;
      OUTLINED_FUNCTION_37();
      _os_log_fault_impl(v126, v127, v128, v129, v130, 0x16u);
      goto LABEL_55;
    }

    *__error() = v29;
    v43 = objc_alloc(MEMORY[0x277CCACA8]);
    v44 = [v3 workflow];
    v45 = [v44 name];
    v25 = [v43 initWithFormat:@"Workflow responsiveness delay detected in %@", v45];

    goto LABEL_20;
  }

LABEL_53:
  v121 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)submitCAEventName:(void *)a3 dict:(void *)a4 forSignpost:
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v11 = [a1 workflow];
    [v11 name];

    [a1 eventIdentifier];
    v12 = [a1 eventIdentifier];

    v13 = *__error();
    v14 = _wrlog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v12)
      {
        if (v15)
        {
          v16 = [a1 workflow];
          [v16 name];
          objc_claimAutoreleasedReturnValue();
          v17 = [OUTLINED_FUNCTION_64() eventIdentifier];
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_26();
          v23 = 52;
LABEL_9:
          _os_log_debug_impl(v18, v19, v20, v21, v22, v23);

          goto LABEL_13;
        }

        goto LABEL_13;
      }

      if (!v15)
      {
        goto LABEL_13;
      }

      v24 = [a1 workflow];
      v25 = [v24 name];
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_26();
      v31 = 42;
    }

    else
    {
      if (v12)
      {
        if (v15)
        {
          v16 = [a1 workflow];
          [v16 name];
          objc_claimAutoreleasedReturnValue();
          v17 = [OUTLINED_FUNCTION_64() eventIdentifier];
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_63();
          OUTLINED_FUNCTION_26();
          v23 = 42;
          goto LABEL_9;
        }

LABEL_13:

        *__error() = v13;
        AnalyticsSendEvent();
        goto LABEL_14;
      }

      if (!v15)
      {
        goto LABEL_13;
      }

      v24 = [a1 workflow];
      v25 = [v24 name];
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_26();
      v31 = 32;
    }

    _os_log_debug_impl(v26, v27, v28, v29, v30, v31);

    goto LABEL_13;
  }

LABEL_14:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)valueForFieldName:inSignpostObject:.cold.1()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_22();
  v11 = *MEMORY[0x277D85DE8];
  v3 = [v2 workflow];
  [v3 name];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_50() eventIdentifier];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_65();
  object_getClassName(v4);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_56(v5, v6, v7, v8, v9);

  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_81();
}

- (void)valueForFieldName:inSignpostObject:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 workflow];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_13();
  object_getClassName(v3);
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __58__WRWorkflowEventTracker_applySignpost_toSignpostTracker___block_invoke_cold_1(id *a1)
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (*a1)
  {
    objc_setProperty_atomic(*a1, v2, v3, 32);
  }
}

- (void)doneHandlingSignpostsWithEndTimeMachContNs:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v8 = WRMakeError(4, @"Workflow event timed out", v2, v3, v4, v5, v6, v7, v11);
  v9 = [[WRTimestampAndThread alloc] initWithPID:0 threadID:v1 machContTimeNs:0 date:?];
  [(WRWorkflowEventTracker *)v0 handleError:v8 atEndTime:v9];

  [(WRWorkflowEventTracker *)v0 resetWithoutReportingErrors];
}

- (void)handleSignpost:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 workflow];
  v8 = [v7 name];
  *a1 = 138543362;
  *a3 = v8;
  _os_log_debug_impl(&dword_2746E5000, a4, OS_LOG_TYPE_DEBUG, "%{public}@: concurrent workflow done", a1, 0xCu);
}

- (void)handleSignpost:.cold.3()
{
  OUTLINED_FUNCTION_86();
  v9 = *MEMORY[0x277D85DE8];
  v3 = [v2 workflow];
  [v3 name];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_65() name];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_33() startMachContinuousTime];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_81();
}

- (uint64_t)handleSignpost:(uint64_t)a3 .cold.4(char a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_70(a2, a2);
  }

  return [v4 addObject:a3];
}

- (void)handleSignpost:(uint64_t)a1 .cold.5(uint64_t a1, char a2)
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{a1, 0}];
  if ((a2 & 1) == 0)
  {
    v4 = OUTLINED_FUNCTION_49();
    objc_setProperty_atomic(v4, v5, v6, 136);
  }
}

- (void)handleSignpost:.cold.7()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x277D85DE8];
  v2 = [v1 workflow];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_13() eventIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleSignpost:(void *)a1 .cold.8(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 workflow];
  v2 = [v1 name];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleSignpost:.cold.9()
{
  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 workflow];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_13() name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleSignpost:.cold.10()
{
  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 workflow];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_13() name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (uint64_t)handleSignpost:(uint64_t)a3 .cold.11(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 16);
  do
  {
    v9 = 0;
    do
    {
      OUTLINED_FUNCTION_92(*(a1 + 16));
      if (!v11)
      {
        objc_enumerationMutation(a2);
      }

      [(WRWorkflowEventTracker *)*(*(a1 + 8) + 8 * v9++) resetWithoutReportingErrors];
    }

    while (a3 != v9);
    result = [a2 countByEnumeratingWithState:a1 objects:a4 count:16];
    a3 = result;
  }

  while (result);
  return result;
}

- (void)handleSignpost:(uint64_t)a3 wrsignpost:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_22();
  v9 = [v8 beginDate];
  *a4 = v9;
  v10 = [v9 dateByAddingTimeInterval:{OUTLINED_FUNCTION_16(objc_msgSend(v6, "startNanoseconds")) / 1000000000.0}];
  [(WRWorkflowEventTracker *)v4 reportErrorsAndResetAtMachContNs:v5 date:v10];
}

- (void)handleSignpost:(void *)a1 wrsignpost:(void *)a2 .cold.2(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [a1 workflow];
  v5 = [v4 name];
  v6 = [a1 eventIdentifier];
  v7 = [a2 name];
  [a2 startMachContinuousTime];
  [a2 startNanoseconds];
  v8 = [a1 eventStart];
  OUTLINED_FUNCTION_16([v8 machContTimeNs]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_59();
  _os_log_error_impl(v9, v10, OS_LOG_TYPE_ERROR, v11, v12, 0x34u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleSignpost:(void *)a1 wrsignpost:(void *)a2 .cold.3(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 workflow];
  v5 = [v4 name];
  v6 = [a2 name];
  [a2 startMachContinuousTime];
  [a2 startNanoseconds];
  v7 = [a1 eventStart];
  OUTLINED_FUNCTION_16([v7 machContTimeNs]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_59();
  _os_log_error_impl(v8, v9, OS_LOG_TYPE_ERROR, v10, v11, 0x2Au);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleSignpost:wrsignpost:.cold.5()
{
  OUTLINED_FUNCTION_86();
  v1 = v0;
  v3 = v2;
  v14 = *MEMORY[0x277D85DE8];
  v4 = [v2 workflow];
  v5 = [v4 name];
  v6 = [v3 eventIdentifier];
  v7 = [v1 name];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_56(v8, v9, v10, v11, v12);

  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_81();
}

- (void)handleSignpost:(void *)a1 wrsignpost:(void *)a2 .cold.6(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 workflow];
  v4 = [v3 name];
  v5 = [a2 name];
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44(v6, v7, v8, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleSignpost:(uint64_t)a3 wrsignpost:(_BYTE *)a4 .cold.7(void *a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v8 = 0;
  while (1)
  {
    Property = [OUTLINED_FUNCTION_70(a1 a2)];
    v11 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v10, 24, 1);
    }

    if ([Property machContTimeNs] == a2)
    {
      v13 = v11 ? objc_getProperty(v11, v12, 24, 1) : 0;
      if ([v13 threadID] == a3)
      {
        break;
      }
    }

    if (++v8 >= [OUTLINED_FUNCTION_70(a1 v15)])
    {
      goto LABEL_12;
    }
  }

  [OUTLINED_FUNCTION_70(a1 v14)];

LABEL_12:
  *a4 = 0;
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17();
  v6 = *MEMORY[0x277D85DE8];
  geteuid();
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  v4 = 2112;
  v5 = v0;
  OUTLINED_FUNCTION_44(&dword_2746E5000, v1, v1, "Unable to create folder at %{public}@: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  v4 = 1024;
  v5 = v0;
  _os_log_fault_impl(&dword_2746E5000, v1, OS_LOG_TYPE_FAULT, "Failed to mark %{public}@ with purgeable children: %{errno}d", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(&dword_2746E5000, v0, OS_LOG_TYPE_DEBUG, "Marked %{public}@ with purgeable children", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_5()
{
  OUTLINED_FUNCTION_17();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_46(&dword_2746E5000, v0, v1, "WR mkdir: Unable to get path cstr from %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__WRWorkflowEventTracker_makeTailspinDirectory__block_invoke_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_46(&dword_2746E5000, v0, v1, "WR mkdir: Unable to get path from %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)cleanupDirectory:ofFilesWithSuffix:olderThan:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_46(&dword_2746E5000, v0, v1, "WR cleanup: Unable to create enumerator for %{public}@ to clean up workflow responsiveness directory", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)cleanupDirectory:ofFilesWithSuffix:olderThan:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_46(&dword_2746E5000, v0, v1, "WR cleanup: Unable to get path from %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__WRWorkflowEventTracker_cleanupDirectory_ofFilesWithSuffix_olderThan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x277D85DE8];
  [v1 path];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_43() debugDescription];
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)initWithEncodedDict:error:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v3 = [[WRTimestampAndThread alloc] initWithEncodedDict:v2 error:v1];
  v4 = *(v0 + 32);
  *(v0 + 32) = v3;

  return *(v0 + 32) == 0;
}

- (BOOL)initWithEncodedDict:error:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v3 = [[WRTimestampAndThread alloc] initWithEncodedDict:v2 error:v1];
  v4 = *(v0 + 48);
  *(v0 + 48) = v3;

  return *(v0 + 48) == 0;
}

- (void)gatherDiagnosticsIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 workflow];
  v2 = [v1 name];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_22();
  v2 = *MEMORY[0x277D85DE8];
  v4 = [OUTLINED_FUNCTION_60(v3) workflow];
  v5 = [v4 name];
  v6 = [*v1 eventIdentifier];
  v7 = [*(v0 + 40) path];
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_18();
  _os_log_error_impl(v8, v9, OS_LOG_TYPE_ERROR, v10, v11, 0x20u);

  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_81();
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*v1 workflow];
  v3 = [v2 name];
  v4 = [*(v0 + 40) path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_22();
  v1 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_60(v2) workflow];
  v4 = [v3 name];
  v5 = [*v0 eventIdentifier];
  v6 = *__error();
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_18();
  _os_log_error_impl(v7, v8, OS_LOG_TYPE_ERROR, v9, v10, 0x26u);

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_81();
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_14();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_60(v1) workflow];
  v9 = [v2 name];
  v10 = *__error();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *MEMORY[0x277D85DE8];
  v4 = [OUTLINED_FUNCTION_60(v1) workflow];
  v5 = [v4 name];
  v6 = [*v2 eventIdentifier];
  v7 = *v0;
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);

  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_81();
}

void __78__WRWorkflowEventTracker_gatherDiagnosticsWithTailspin_tailspinIncludeOSLogs___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_14();
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*v1 workflow];
  v3 = [v2 name];
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)reportCoreAnalyticsEventForSignpost:allCount:allDurationUnionSec:allDurationSumSec:allDurationLongestSec:allDurationUntrackedSec:allDurationNonNetworkBoundSec:allTimeUntilFirstSignpost:allTimeAfterLastSignpost:incompleteCount:completeDurationUnionSec:completeDurationSumSec:completeDurationLongestSec:completeTimeUntilFirstSignpost:environment:.cold.1()
{
  OUTLINED_FUNCTION_86();
  v1 = v0;
  v3 = v2;
  v14 = *MEMORY[0x277D85DE8];
  v4 = [v2 workflow];
  v5 = [v4 name];
  v6 = [v3 eventIdentifier];
  v7 = [v1 domain];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_56(v8, v9, v10, v11, v12);

  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_81();
}

- (void)reportCoreAnalyticsEventForSignpost:(void *)a1 allCount:(void *)a2 allDurationUnionSec:allDurationSumSec:allDurationLongestSec:allDurationUntrackedSec:allDurationNonNetworkBoundSec:allTimeUntilFirstSignpost:allTimeAfterLastSignpost:incompleteCount:completeDurationUnionSec:completeDurationSumSec:completeDurationLongestSec:completeTimeUntilFirstSignpost:environment:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 workflow];
  v4 = [v3 name];
  v5 = [a2 domain];
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44(v6, v7, v8, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

void __43__WRWorkflowEventTracker_generateTelemetry__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_55();
  v1 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_60(v2) workflow];
  v4 = [v3 name];
  [*v0 eventIdentifier];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_50() signpost];
  v6 = [v5 name];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_59();
  _os_log_debug_impl(v7, v8, OS_LOG_TYPE_DEBUG, v9, v10, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_81();
}

void __43__WRWorkflowEventTracker_generateTelemetry__block_invoke_cold_2(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*a1 workflow];
  [v2 name];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_65() signpost];
  v4 = [v3 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end