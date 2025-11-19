@interface UsagePoliciesHandler
- (BOOL)submitLanEventsFor:(id)a3;
- (BOOL)updateBandsInUniqueMOsWithReason:(id)a3;
- (BOOL)updateTopUsedByUsage:(unint64_t)a3 withReason:(id)a4;
- (BOOL)updateTopUsedByUsageWithReason:(id)a3;
- (UsagePoliciesHandler)initWithPersistentContainer:(id)a3;
- (id)cumulativeUsage:(id)a3 onField:(id)a4;
- (id)lastUsagePolicyRunForTimespan:(unint64_t)a3 object:(id)a4;
- (id)prefixForUniqueMOStatsFieldsforTimeSpan:(unint64_t)a3;
- (id)updateUniqueMO:(id)a3 withConstraints:(id)a4 fromStats:(id)a5 aggregatedOn:(id)a6 withTotal:(unint64_t)a7 timespan:(unint64_t)a8 prevPercentile:(unint64_t *)a9;
- (id)usageForTimespan:(unint64_t)a3 by:(id)a4 around:(id)a5;
- (void)updatePoliciesTableWithReason:(id)a3 dateLessThen:(id)a4 object:(id)a5 timeSpan:(unint64_t)a6;
@end

@implementation UsagePoliciesHandler

- (UsagePoliciesHandler)initWithPersistentContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UsagePoliciesHandler;
  v6 = [(UsagePoliciesHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
    v7->_topLANUsagePercentile = 75;
  }

  return v7;
}

- (BOOL)updateTopUsedByUsageWithReason:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [&unk_1F483E5D8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(&unk_1F483E5D8);
        }

        v8 &= -[UsagePoliciesHandler updateTopUsedByUsage:withReason:](self, "updateTopUsedByUsage:withReason:", [*(*(&v12 + 1) + 8 * i) unsignedIntegerValue], v4);
      }

      v6 = [&unk_1F483E5D8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (BOOL)updateBandsInUniqueMOsWithReason:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = +[LANMO entity];
  v54[0] = v4;
  v5 = +[NetworkMO entity];
  v54[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];

  obj = v6;
  v35 = [v6 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v35)
  {
    v34 = *v42;
    v8 = 1;
    *&v7 = 136446978;
    v31 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        container = self->_container;
        v40 = 0;
        v13 = [(WAPersistentContainer *)container fetchObjects:v10 withPredicate:0 withSorting:0 withPrefetchedProperties:0 withLimit:0 withError:&v40];
        v14 = v40;
        if (v14)
        {
          v15 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v20 = [v10 name];
            *buf = v31;
            v47 = "[UsagePoliciesHandler updateBandsInUniqueMOsWithReason:]";
            v48 = 1024;
            v49 = 60;
            v50 = 2112;
            v51 = v20;
            v52 = 2112;
            v53 = v14;
            _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_FAULT, "%{public}s::%d:unable to get all %@ objects: %@", buf, 0x26u);
          }

          v8 = 0;
        }

        else
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v15 = v13;
          v16 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v37;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v8 &= [(WAPersistentContainer *)self->_container updateBandsInUniqueMO:*(*(&v36 + 1) + 8 * i), v31];
              }

              v17 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v17);
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v9 != v35);
      v21 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
      v35 = v21;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  v22 = self->_container;
  v23 = +[PoliciesMO entity];
  v24 = [MEMORY[0x1E695DF00] date];
  v25 = [(WAPersistentContainer *)v22 newDatedEventObjectFor:v23 withDate:v24];

  [v25 setPolicyType:@"UsagePoliciesHandler updateBandsInUniqueMOs"];
  [v25 setReasonForRunning:v32];
  [v25 setOutcome:v8 & 1];
  v26 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = [v25 policyType];
    v28 = [v25 date];
    *buf = 136446978;
    v47 = "[UsagePoliciesHandler updateBandsInUniqueMOsWithReason:]";
    v48 = 1024;
    v49 = 72;
    v50 = 2112;
    v51 = v27;
    v52 = 2112;
    v53 = v28;
    _os_log_impl(&dword_1C8460000, v26, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Stored Policy (%@) run at (%@)", buf, 0x26u);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (BOOL)updateTopUsedByUsage:(unint64_t)a3 withReason:(id)a4
{
  v136 = *MEMORY[0x1E69E9840];
  v85 = a4;
  v118 = 0;
  v102 = a3;
  v5 = [UsageHelper classForTimeSpan:a3 withError:&v118];
  v84 = v118;
  if (v84)
  {
    v76 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
    {
      v83 = [WADeviceAnalyticsClient timeSpanToString:v102];
      *buf = 136446722;
      v122 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
      v123 = 1024;
      v124 = 87;
      v125 = 2112;
      v126 = v83;
      _os_log_impl(&dword_1C8460000, v76, OS_LOG_TYPE_FAULT, "%{public}s::%d:unable to find Usage Entity class for %@", buf, 0x1Cu);
    }

    v87 = 0;
    v90 = 0;
    v100 = 0;
    v98 = v84;
    goto LABEL_80;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v76 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v122 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
      v123 = 1024;
      v124 = 89;
      v125 = 2112;
      v126 = v5;
      _os_log_impl(&dword_1C8460000, v76, OS_LOG_TYPE_FAULT, "%{public}s::%d:Class %@ does not implement aggregateName", buf, 0x1Cu);
    }

    v87 = 0;
    v90 = 0;
    v100 = 0;
    v98 = 0;
    goto LABEL_80;
  }

  v100 = [(objc_class *)v5 performSelector:sel_aggregateName];
  v90 = [(objc_class *)v5 performSelector:sel_jumpBackOneSpan];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v6 = +[LANMO entity];
  v134[0] = v6;
  v7 = +[NetworkMO entity];
  v134[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:2];

  obj = v8;
  v89 = [v8 countByEnumeratingWithState:&v114 objects:v135 count:16];
  if (v89)
  {
    v95 = 0;
    v96 = 0;
    v94 = 0;
    v97 = 0;
    v98 = 0;
    v87 = 0;
    v88 = *v115;
    v9 = 0x1E830D000uLL;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v115 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v93 = v10;
        v11 = *(*(&v114 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v113 = 0;
        v103 = [*(v9 + 656) constraintsForEntity:v11];
        v101 = v11;
        v12 = [(UsagePoliciesHandler *)self lastUsagePolicyRunForTimespan:v102 object:v11];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 date_lt];
          v15 = v13;
          v16 = [v90 compare:v14];

          v17 = v16 == 1;
          v13 = v15;
          if (!v17)
          {
            v57 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v59 = [WADeviceAnalyticsClient timeSpanToString:v102];
              v60 = [v101 name];
              *buf = 136446978;
              v122 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
              v123 = 1024;
              v124 = 102;
              v125 = 2112;
              v126 = v59;
              v127 = 2112;
              v128 = v60;
              _os_log_impl(&dword_1C8460000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Last Complete %@ has already been used to update %@ - skipping", buf, 0x26u);

              v13 = v15;
            }

            goto LABEL_67;
          }
        }

        v91 = v13;
        v18 = [(UsagePoliciesHandler *)self usageForTimespan:v102 by:v103 around:v90];
        v19 = [(UsagePoliciesHandler *)self cumulativeUsage:v18 onField:v100];

        if (v19)
        {
          v20 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = [WADeviceAnalyticsClient timeSpanToString:v102];
            v22 = [v101 name];
            *buf = 136447234;
            v122 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
            v123 = 1024;
            v124 = 106;
            v125 = 2112;
            v126 = v21;
            v127 = 2112;
            v128 = v22;
            v129 = 2112;
            v130 = v19;
            _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%@ Usage by %@: %@", buf, 0x30u);
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v57 = v19;
          v104 = [v57 countByEnumeratingWithState:&v109 objects:v133 count:16];
          if (!v104)
          {
LABEL_60:

            v53 = [v57 firstObject];
            v9 = 0x1E830D000uLL;
            v54 = +[WAPersistentContainer defaultBinnedDateHigherEdgePropertyName];
            v55 = [v53 objectForKeyedSubscript:v54];
            [(UsagePoliciesHandler *)self updatePoliciesTableWithReason:v85 dateLessThen:v55 object:v101 timeSpan:v102];

            v13 = v91;
            v56 = [v91 date];

            v87 = v56;
LABEL_67:

            v64 = v93;
            goto LABEL_68;
          }

          v99 = *v110;
          while (2)
          {
            v23 = 0;
LABEL_17:
            if (*v110 != v99)
            {
              objc_enumerationMutation(v57);
            }

            v24 = *(*(&v109 + 1) + 8 * v23);
            v25 = v113;
            v26 = [(UsagePoliciesHandler *)self topLANUsagePercentile];
            v27 = v57;
            v28 = [v57 lastObject];
            v29 = [v28 objectForKeyedSubscript:@"cumulative"];
            v30 = -[UsagePoliciesHandler updateUniqueMO:withConstraints:fromStats:aggregatedOn:withTotal:timespan:prevPercentile:](self, "updateUniqueMO:withConstraints:fromStats:aggregatedOn:withTotal:timespan:prevPercentile:", v101, v103, v24, v100, [v29 unsignedIntegerValue], v102, &v113);

            if (!v30)
            {
              goto LABEL_66;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
            {
              v61 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
              {
                v62 = [v30 entity];
                v63 = objc_opt_class();
                *buf = 136446978;
                v122 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
                v123 = 1024;
                v124 = 122;
                v125 = 2114;
                v126 = v62;
                v127 = 2112;
                v128 = v63;
                _os_log_impl(&dword_1C8460000, v61, OS_LOG_TYPE_FAULT, "%{public}s::%d:This function runs on entities whose class adopts DeploymentProtocol. %{public}@ (%@) does not", buf, 0x26u);
              }

LABEL_66:
              v57 = v27;

              v9 = 0x1E830D000;
              v13 = v91;
              goto LABEL_67;
            }

            v31 = v30;
            if (([(__CFString *)v31 isPublic]& 1) != 0 || ([(__CFString *)v31 isEnterprise]& 1) != 0 || [(__CFString *)v31 bssCount]>= 16)
            {
              v32 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                if ([(__CFString *)v31 isPublic])
                {
                  v33 = @"Public";
                }

                else
                {
                  v33 = &stru_1F481C4A0;
                }

                if ([(__CFString *)v31 isEnterprise])
                {
                  v34 = @"Enterprise";
                }

                else
                {
                  v34 = &stru_1F481C4A0;
                }

                v35 = [(__CFString *)v31 bssCount];
                *buf = 136447490;
                v36 = @"has more than MaxBssInDeployment bss";
                if (v35 <= 15)
                {
                  v36 = &stru_1F481C4A0;
                }

                v122 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
                v123 = 1024;
                v124 = 133;
                v125 = 2112;
                v126 = v31;
                v127 = 2112;
                v128 = v33;
                v129 = 2112;
                v130 = v34;
                v131 = 2112;
                v132 = v36;
                _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@ is %@ %@ %@ -- ignoring for telemetry", buf, 0x3Au);
              }

              goto LABEL_35;
            }

            v37 = [(__CFString *)v31 entity];
            v38 = +[LANMO entity];

            if (v37 == v38 && v25 < v26)
            {
              v39 = v31;
              [(UsagePoliciesHandler *)self submitLanEventsFor:v39];
              container = self->_container;
              v108 = v98;
              v41 = [(WAPersistentContainer *)container networkCountForLAN:v39 withError:&v108];
              v42 = v108;

              v43 = v94;
              if (v41 > 1)
              {
                v43 = v94 + 1;
              }

              v94 = v43;
              if (v42)
              {
                v51 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136446978;
                  v122 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
                  v123 = 1024;
                  v124 = 144;
                  v125 = 2112;
                  v126 = v39;
                  v127 = 2112;
                  v128 = v42;
                  _os_log_impl(&dword_1C8460000, v51, OS_LOG_TYPE_FAULT, "%{public}s::%d:networkCountForLAN:%@ --> %@", buf, 0x26u);
                }
              }

              ++v97;
            }

            else
            {
              v42 = v98;
            }

            v44 = [(__CFString *)v31 entity];
            v45 = +[NetworkMO entity];

            if (v44 == v45)
            {
              if (v25 < v26)
              {
                v32 = v31;
                ++v96;
                v46 = self->_container;
                v107 = v42;
                v47 = [(WAPersistentContainer *)v46 lansCountInNetwork:v32 withError:&v107];
                v48 = v107;

                v49 = v95;
                if (v47 > 1)
                {
                  v49 = v95 + 1;
                }

                v95 = v49;
                v98 = v48;
                if (v48)
                {
                  v50 = WALogCategoryDeviceStoreHandle();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136446978;
                    v122 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
                    v123 = 1024;
                    v124 = 150;
                    v125 = 2112;
                    v126 = v32;
                    v127 = 2112;
                    v128 = v48;
                    _os_log_impl(&dword_1C8460000, v50, OS_LOG_TYPE_FAULT, "%{public}s::%d:lansCountInNetwork:%@ --> %@", buf, 0x26u);
                  }
                }

LABEL_35:
                v57 = v27;

LABEL_36:
                if (v104 == ++v23)
                {
                  v52 = [v57 countByEnumeratingWithState:&v109 objects:v133 count:16];
                  v104 = v52;
                  if (!v52)
                  {
                    goto LABEL_60;
                  }

                  continue;
                }

                goto LABEL_17;
              }

              v98 = v42;
            }

            else
            {
              v98 = v42;
            }

            break;
          }

          v57 = v27;
          goto LABEL_36;
        }

        v9 = 0x1E830D000;
        v64 = v93;
        v13 = v91;
LABEL_68:

        objc_autoreleasePoolPop(context);
        v10 = v64 + 1;
      }

      while (v10 != v89);
      v65 = [obj countByEnumeratingWithState:&v114 objects:v135 count:16];
      v89 = v65;
      if (!v65)
      {
        goto LABEL_74;
      }
    }
  }

  v87 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v97 = 0;
  v98 = 0;
LABEL_74:

  if (v102 == 2 && v97 && v96)
  {
    v66 = MEMORY[0x1E695DF90];
    v119[0] = @"lans";
    v106 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v97];
    v120[0] = v106;
    v119[1] = @"hasMultiSSID";
    v67 = [MEMORY[0x1E696AD98] numberWithBool:v94 != 0];
    v120[1] = v67;
    v119[2] = @"lansWithMultiSSID";
    v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v94];
    v120[2] = v68;
    v119[3] = @"networks";
    v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v96];
    v120[3] = v69;
    v119[4] = @"hasMultiLAN";
    v70 = [MEMORY[0x1E696AD98] numberWithBool:v95 != 0];
    v120[4] = v70;
    v119[5] = @"networksWithMultiLAN";
    v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v95];
    v120[5] = v71;
    v119[6] = @"secondsSinceLastRun";
    v72 = MEMORY[0x1E696AD98];
    [v87 timeIntervalSinceNow];
    v74 = [v72 numberWithUnsignedInteger:-v73];
    v120[6] = v74;
    v120[7] = MEMORY[0x1E695E118];
    v119[7] = @"ignorePublicNetworks";
    v119[8] = @"ignoreEnterpriseNetworks";
    v120[8] = MEMORY[0x1E695E118];
    v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:9];
    v76 = [v66 dictionaryWithDictionary:v75];

    v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * v94 / v97];
    [v76 setObject:v77 forKeyedSubscript:@"lansWithMultiSSIDPerc"];

    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * v95 / v96];
    [v76 setObject:v78 forKeyedSubscript:@"networksWithMultiLANPerc"];

    v79 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v122 = "[UsagePoliciesHandler updateTopUsedByUsage:withReason:]";
      v123 = 1024;
      v124 = 191;
      v125 = 2112;
      v126 = @"com.apple.wifi.device.LANStats";
      v127 = 2112;
      v128 = v76;
      _os_log_impl(&dword_1C8460000, v79, OS_LOG_TYPE_DEBUG, "%{public}s::%d:submitting %@: %@", buf, 0x26u);
    }

    v80 = +[WAClient sharedClient];
    [v80 submitWiFiAnalytics:@"com.apple.wifi.device.LANStats" data:v76];

LABEL_80:
  }

  v81 = *MEMORY[0x1E69E9840];
  return v84 == 0;
}

- (id)lastUsagePolicyRunForTimespan:(unint64_t)a3 object:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(UsagePoliciesHandler *)self container];
  v8 = [PoliciesUsageMO predicateForPolicyUsageForTimeSpan:a3 forEntity:v6];

  v23 = 0;
  v9 = [v7 mostRecentPolicyFilteredBy:v8 withError:&v23];
  v10 = v23;

  v11 = 0;
  if (!v10 && v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v9;
      v13 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v12 timeSpan];
        v15 = [v12 object];
        v16 = [v12 date];
        v17 = [v12 date_lt];
        *buf = 136447490;
        v25 = "[UsagePoliciesHandler lastUsagePolicyRunForTimespan:object:]";
        v26 = 1024;
        v27 = 208;
        v28 = 2112;
        v29 = v14;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v16;
        v34 = 2112;
        v35 = v17;
      }

      v11 = v12;
    }

    else
    {
      v20 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = objc_opt_class();
        *buf = 136446722;
        v25 = "[UsagePoliciesHandler lastUsagePolicyRunForTimespan:object:]";
        v26 = 1024;
        v27 = 206;
        v28 = 2112;
        v29 = v21;
        v22 = v21;
        _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_FAULT, "%{public}s::%d:class %@ is not a PoliciesUsageMO", buf, 0x1Cu);
      }

      v11 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)usageForTimespan:(unint64_t)a3 by:(id)a4 around:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v31 = 0;
  v10 = [UsageHelper classForTimeSpan:a3 withError:&v31];
  v11 = v31;
  v12 = [WAPersistentContainer dimensionsForUsageEntity:[(objc_class *)v10 performSelector:sel_entity]];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [v12 objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
        [v18 useDimensionAsGroupBy];
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v15);
  }

  v19 = [v12 allValues];
  v20 = [(UsagePoliciesHandler *)self container];
  v26 = v11;
  v21 = [UsageMO usageOf:v19 timeSpan:a3 around:v9 onContainer:v20 withError:&v26];
  v22 = v26;

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)cumulativeUsage:(id)a3 onField:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    context = objc_autoreleasePoolPush();
    v20 = v5;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:v6];
          v10 += [v14 unsignedIntegerValue];

          v15 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v13];
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
          [v15 setObject:v16 forKeyedSubscript:@"cumulative"];

          [v7 addObject:v15];
        }

        v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(context);
    v5 = v20;
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)updateUniqueMO:(id)a3 withConstraints:(id)a4 fromStats:(id)a5 aggregatedOn:(id)a6 withTotal:(unint64_t)a7 timespan:(unint64_t)a8 prevPercentile:(unint64_t *)a9
{
  v94 = *MEMORY[0x1E69E9840];
  v65 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = objc_opt_new();
  v18 = [(UsagePoliciesHandler *)self prefixForUniqueMOStatsFieldsforTimeSpan:a8];
  v66 = v16;
  v19 = [v15 objectForKeyedSubscript:v16];
  [v19 doubleValue];
  v21 = v20;

  v22 = [v15 objectForKeyedSubscript:@"cumulative"];
  [v22 doubleValue];
  v24 = v23;

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v25 = v14;
  v26 = [v25 countByEnumeratingWithState:&v67 objects:v93 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v68;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v68 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v67 + 1) + 8 * i);
        v31 = [v15 objectForKeyedSubscript:v30];
        [v17 setObject:v31 forKeyedSubscript:v30];
      }

      v27 = [v25 countByEnumeratingWithState:&v67 objects:v93 count:16];
    }

    while (v27);
  }

  v32 = v65;
  v33 = [(WAPersistentContainer *)self->_container uniqueObjectFor:v65 withConstraints:v17 allowCreate:0 prefetchProperties:0 withError:0];
  if (!v33)
  {
    v53 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      v54 = [v65 name];
      *buf = 136446978;
      v72 = "[UsagePoliciesHandler updateUniqueMO:withConstraints:fromStats:aggregatedOn:withTotal:timespan:prevPercentile:]";
      v73 = 1024;
      v74 = 269;
      v75 = 2114;
      v76 = v54;
      v77 = 2112;
      v78 = v17;
      _os_log_impl(&dword_1C8460000, v53, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unexpected: cannot find %{public}@ for constraints %@", buf, 0x26u);
    }

    goto LABEL_20;
  }

  v34 = v24 * 100.0;
  v35 = v21 * 100.0 / a7;
  v36 = v34 / a7;
  v37 = [v15 objectForKeyedSubscript:v66];
  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Seconds", v18];
  [v33 setValue:v37 forKey:v38];

  v39 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Percentage", v18];
  [v33 setValue:v39 forKey:v40];

  v41 = [v15 objectForKeyedSubscript:@"cumulative"];
  v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativeSeconds", v18];
  [v33 setValue:v41 forKey:v42];

  v43 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativePercentage", v18];
  [v33 setValue:v43 forKey:v44];

  if (!a9)
  {
    v53 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v72 = "[UsagePoliciesHandler updateUniqueMO:withConstraints:fromStats:aggregatedOn:withTotal:timespan:prevPercentile:]";
      v73 = 1024;
      v74 = 277;
      _os_log_impl(&dword_1C8460000, v53, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unexpected: nil lastPercentile", buf, 0x12u);
    }

LABEL_20:

    v50 = 0;
    goto LABEL_13;
  }

  *a9 = v36;
  v45 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    loga = v45;
    v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Seconds", v18];
    v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Seconds", v18];
    v61 = [v33 valueForKey:v59];
    v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativeSeconds", v18];
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativeSeconds", v18];
    v56 = [v33 valueForKey:v58];
    v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Percentage", v18];
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Percentage", v18];
    v46 = [v33 valueForKey:v57];
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativePercentage", v18];
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@CumulativePercentage", v18];
    v49 = [v33 valueForKey:v48];
    *buf = 136448770;
    v72 = "[UsagePoliciesHandler updateUniqueMO:withConstraints:fromStats:aggregatedOn:withTotal:timespan:prevPercentile:]";
    v73 = 1024;
    v74 = 284;
    v75 = 2112;
    v76 = v33;
    v77 = 2112;
    v78 = v64;
    v79 = 2112;
    v80 = v61;
    v81 = 2112;
    v82 = v60;
    v83 = 2112;
    v84 = v56;
    v85 = 2112;
    v86 = v55;
    v87 = 2112;
    v88 = v46;
    v89 = 2112;
    v90 = v47;
    v91 = 2112;
    v92 = v49;
    _os_log_impl(&dword_1C8460000, loga, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updated %@ with %@(%@): %@(%@) and %@(%@): %@(%@)", buf, 0x6Cu);

    v32 = v65;
    v45 = loga;
  }

  v50 = v33;
LABEL_13:

  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

- (BOOL)submitLanEventsFor:(id)a3
{
  v77[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v66 = "[UsagePoliciesHandler submitLanEventsFor:]";
      v67 = 1024;
      v68 = 300;
      v43 = "%{public}s::%d:nil lan";
      v44 = v7;
      v45 = OS_LOG_TYPE_FAULT;
      v46 = 18;
LABEL_31:
      _os_log_impl(&dword_1C8460000, v44, v45, v43, buf, v46);
    }

LABEL_22:
    v37 = 0;
    goto LABEL_23;
  }

  v5 = [(UsagePoliciesHandler *)self container];
  v62 = 0;
  v6 = [v5 bssidCountBy:&unk_1F483E5F0 inUniqueMO:v4 withError:&v62];
  v7 = v62;

  if (v7)
  {
    v47 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v66 = "[UsagePoliciesHandler submitLanEventsFor:]";
      v67 = 1024;
      v68 = 303;
      v69 = 2112;
      v70 = v4;
      v71 = 2112;
      v72 = v7;
      _os_log_impl(&dword_1C8460000, v47, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch bssidCountByBandInLAN:%@ %@", buf, 0x26u);
    }

    goto LABEL_22;
  }

  if (!v6)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v66 = "[UsagePoliciesHandler submitLanEventsFor:]";
      v67 = 1024;
      v68 = 304;
      v69 = 2112;
      v70 = v4;
      v71 = 2112;
      v72 = 0;
      v43 = "%{public}s::%d:unable to fetch bssidCountByBandInLAN:%@ %@";
      v44 = v7;
      v45 = OS_LOG_TYPE_ERROR;
      v46 = 38;
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v76[0] = @"bssInLANCount";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[__CFString bssCount](v4, "bssCount")}];
  v77[0] = v8;
  v76[1] = @"ssidInLANCount";
  v9 = MEMORY[0x1E696AD98];
  container = self->_container;
  v61 = 0;
  v11 = [(WAPersistentContainer *)container networkCountForLAN:v4 withError:&v61];
  v7 = v61;
  v12 = [v9 numberWithUnsignedInteger:v11];
  v77[1] = v12;
  v76[2] = @"bandsInLANCount";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v77[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:3];

  if (v7)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v66 = "[UsagePoliciesHandler submitLanEventsFor:]";
      v67 = 1024;
      v68 = 313;
      v69 = 2112;
      v70 = v4;
      v71 = 2112;
      v72 = v7;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_FAULT, "%{public}s::%d:networkCountForLAN:%@ --> %@", buf, 0x26u);
    }
  }

  v16 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v66 = "[UsagePoliciesHandler submitLanEventsFor:]";
    v67 = 1024;
    v68 = 316;
    v69 = 2112;
    v70 = @"com.apple.wifi.lan";
    v71 = 2112;
    v72 = v14;
    _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:submitting %@: %@", buf, 0x26u);
  }

  v51 = v4;

  v17 = +[WAClient sharedClient];
  v48 = v14;
  [v17 submitWiFiAnalytics:@"com.apple.wifi.lan" data:v14];

  v60 = 0;
  v59 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v6;
  v52 = [obj countByEnumeratingWithState:&v55 objects:v75 count:16];
  v18 = 0;
  if (v52)
  {
    v19 = @"mostRecentBand";
    v50 = *v56;
    v20 = v7;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v56 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v55 + 1) + 8 * v21);
        v23 = [v22 objectForKeyedSubscript:v19];
        v24 = [v23 shortValue];

        v53 = [(UsagePoliciesHandler *)self checkMissingBandsIn:&v59 from:v18 to:v24];
        v25 = self;
        v26 = [(UsagePoliciesHandler *)self container];
        v27 = [v22 objectForKeyedSubscript:v19];
        v28 = [v27 shortValue];
        v54 = v20;
        v29 = v19;
        v30 = [v26 countNetworksHavingBand:v28 inLan:v51 withError:&v54];
        v7 = v54;

        if (v7)
        {
          v38 = WALogCategoryDeviceStoreHandle();
          v4 = v51;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = [v22 objectForKeyedSubscript:@"mostRecentBand"];
            v40 = +[WADeviceAnalyticsClient bandAsString:](WADeviceAnalyticsClient, "bandAsString:", [v39 shortValue]);
            *buf = 136447234;
            v66 = "[UsagePoliciesHandler submitLanEventsFor:]";
            v67 = 1024;
            v68 = 331;
            v69 = 2112;
            v70 = v51;
            v71 = 2112;
            v72 = v40;
            v73 = 2112;
            v74 = v7;
            _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch networkCountInLan:%@ havingBand:%@ %@", buf, 0x30u);
          }

          goto LABEL_22;
        }

        v31 = +[WAClient sharedClient];
        v63[0] = @"band";
        v32 = [v22 objectForKeyedSubscript:v29];
        v64[0] = v32;
        v63[1] = @"bssInLANCount";
        v33 = +[(UniqueMO *)BSSMO];
        v34 = [v22 objectForKeyedSubscript:v33];
        v64[1] = v34;
        v63[2] = @"ssidInLANCount";
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
        v64[2] = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];
        [v31 submitWiFiAnalytics:@"com.apple.wifi.lan" data:v36];

        v20 = 0;
        *(&v59 + v24) = 1;
        ++v21;
        self = v25;
        v19 = v29;
        v18 = v53;
      }

      while (v52 != v21);
      v20 = 0;
      v7 = 0;
      v52 = [obj countByEnumeratingWithState:&v55 objects:v75 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  [(UsagePoliciesHandler *)self checkMissingBandsIn:&v59 from:v18 to:3];
  v37 = 1;
  v4 = v51;
LABEL_23:

  v41 = *MEMORY[0x1E69E9840];
  return v37;
}

- (void)updatePoliciesTableWithReason:(id)a3 dateLessThen:(id)a4 object:(id)a5 timeSpan:(unint64_t)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(UsagePoliciesHandler *)self container];
  v14 = +[PoliciesUsageMO entity];
  v15 = [MEMORY[0x1E695DF00] date];
  v16 = [v13 newDatedEventObjectFor:v14 withDate:v15];

  [v16 setPolicyType:@"updateTopUsedByUsage"];
  [v16 setReasonForRunning:v12];

  [v16 setDate_lt:v11];
  v17 = [v10 name];

  [v16 setObject:v17];
  v18 = [WADeviceAnalyticsClient timeSpanToString:a6];
  [v16 setTimeSpan:v18];

  v19 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v16 policyType];
    v21 = [v16 date];
    v22 = [v16 object];
    v23 = [v16 timeSpan];
    v24 = [v16 date_lt];
    v26 = 136447746;
    v27 = "[UsagePoliciesHandler updatePoliciesTableWithReason:dateLessThen:object:timeSpan:]";
    v28 = 1024;
    v29 = 372;
    v30 = 2112;
    v31 = v20;
    v32 = 2112;
    v33 = v21;
    v34 = 2112;
    v35 = v22;
    v36 = 2112;
    v37 = v23;
    v38 = 2112;
    v39 = v24;
    _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Stored Policy (%@) run at (%@) with %@ %@ %@", &v26, 0x44u);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)prefixForUniqueMOStatsFieldsforTimeSpan:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 - 1 >= 4)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v9 = "[UsagePoliciesHandler prefixForUniqueMOStatsFieldsforTimeSpan:]";
      v10 = 1024;
      v11 = 397;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_FAULT, "%{public}s::%d:FIXME", buf, 0x12u);
    }

    v3 = 0;
  }

  else
  {
    v3 = off_1E830EF10[a3 - 1];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"latestComplete%@Usage", v3];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end