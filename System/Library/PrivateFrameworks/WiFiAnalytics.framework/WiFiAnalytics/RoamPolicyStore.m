@interface RoamPolicyStore
+ (BOOL)doWeHaveEnoughSamplesToBuildChanList:(unint64_t)a3 numRoamSamples:(unint64_t)a4;
+ (BOOL)doWeHaveEnoughSamplesToBuildRoamCache:(unint64_t)a3 numRoamSamples:(unint64_t)a4;
+ (BOOL)doWeHaveEnoughSamplesToDeriveRSSITrigger:(unint64_t)a3 numRoamSamples:(unint64_t)a4;
+ (id)extractChannelList:(id)a3 channelKeyPath:(id)a4 bandKeyPath:(id)a5 logFor:(const char *)a6;
+ (id)neighborChannelsAsArrayOfChanInfo:(id)a3;
+ (id)neighborChannelsOf:(id)a3;
+ (id)rangeStringWithRssiLevel:(unint64_t)a3;
- (BOOL)buildRoamCacheInfoForBss:(id)a3 numRoamSamples:(unint64_t)a4 withError:(id *)a5;
- (BOOL)buildRoamPoliciesForSourceBSS:(id)a3 numRoamSamples:(unint64_t)a4 withError:(id *)a5;
- (BOOL)monitorDeploymentChangesAfterRoam:(id)a3;
- (RoamPolicyStore)initWithAnalyticsStore:(id)a3;
- (id)deriveRoamInfo:(id)a3 numRoamSamplesCollectedSoFar:(unint64_t)a4;
- (void)checkForFrequentRoams:(unint64_t)a3 date:(id)a4 motionState:(int64_t)a5;
- (void)deriveRoamDeltaFromRoamCacheInfo:(id)a3 neighborCount:(unint64_t)a4;
- (void)listOutBTMRoams:(unint64_t)a3;
- (void)listOutLazyRoamScanInfo:(id)a3 neighborCount:(unint64_t)a4 sourceRssi:(int64_t)a5;
- (void)listOutMostUsedRoamReasons:(unint64_t)a3 roamReason:(unint64_t)a4;
- (void)listOutMostUsedSourceRssi:(id)a3 neighborCount:(unint64_t)a4 sourceRssi:(int64_t)a5;
- (void)listOutReassocRoams:(id)a3 neighborCount:(unint64_t)a4 sourceRssi:(int64_t)a5;
- (void)listOutTimeSpentOnBss:(unint64_t)a3 timeSpentOnBss:(unint64_t)a4 motionState:(int64_t)a5;
- (void)locateTheNeighbor:(unint64_t)a3 cacheRssi:(int64_t)a4;
- (void)resetAdaptiveRoamingStateMachine:(id)a3;
- (void)setDeploymentFromRoamCacheInfo:(id)a3 neighborCount:(unint64_t)a4;
- (void)setDeploymentFromRoamInfo:(id)a3 neighborCount:(unint64_t)a4;
- (void)storeNeighborsInfoLearningsFromRoamCacheInfo:(id)a3 neighborCount:(unint64_t)a4;
- (void)storeNeighborsInfoLearningsFromRoamInfo:(id)a3 neighborCount:(unint64_t)a4;
- (void)updateNeighborChannelsFromRoamTargetsChannels:(id)a3 bss:(id)a4;
- (void)updateNeighborChannelsInCoreDataWith:(id)a3 bss:(id)a4;
@end

@implementation RoamPolicyStore

- (RoamPolicyStore)initWithAnalyticsStore:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RoamPolicyStore;
  v6 = [(RoamPolicyStore *)&v12 init];
  v7 = v6;
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_roamPolicyMOHandler, a3);
  if (!v7->_roamPolicyMOHandler)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "[RoamPolicyStore initWithAnalyticsStore:]";
      v15 = 1024;
      v16 = 113;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error getting _roamPolicyMOHandler", buf, 0x12u);
    }

    goto LABEL_7;
  }

  v8 = v7;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)doWeHaveEnoughSamplesToBuildChanList:(unint64_t)a3 numRoamSamples:(unint64_t)a4
{
  v4 = a4 >> 1;
  if (!a4)
  {
    v4 = 50;
  }

  return v4 <= a3;
}

+ (BOOL)doWeHaveEnoughSamplesToBuildRoamCache:(unint64_t)a3 numRoamSamples:(unint64_t)a4
{
  v4 = 100;
  if (a4)
  {
    v4 = a4;
  }

  return v4 <= a3;
}

+ (BOOL)doWeHaveEnoughSamplesToDeriveRSSITrigger:(unint64_t)a3 numRoamSamples:(unint64_t)a4
{
  v4 = 100;
  if (a4)
  {
    v4 = a4;
  }

  return v4 <= a3;
}

- (BOOL)buildRoamPoliciesForSourceBSS:(id)a3 numRoamSamples:(unint64_t)a4 withError:(id *)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v9))
  {
    v10 = [v8 bssid];
    *buf = 138412290;
    v64 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies buildRoamPoliciesForNetwork:", "%@", buf, 0xCu);
  }

  v11 = objc_autoreleasePoolPush();
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = 100;
  }

  v13 = [v8 network];
  v14 = [v13 didDeploymentChange];

  if (v14)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v64 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
      v65 = 1024;
      *v66 = 156;
      *&v66[4] = 2048;
      *&v66[6] = 0;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deployment has changed, Accumulating more roam objects, CurCnt=%lu", buf, 0x1Cu);
    }
  }

  v56 = v11;
  v57 = a5;
  v16 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  v17 = [v16 persistentContainer];
  v18 = +[RoamMO entity];
  v58 = v8;
  v19 = [RoamMO successfulRoamsOutOf:v8];
  v61 = 0;
  v20 = [v17 countObjects:v18 withPredicate:v19 withError:&v61];
  v21 = v61;

  if (v21)
  {
    v34 = 0;
    goto LABEL_37;
  }

  v22 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v64 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
    v65 = 1024;
    *v66 = 168;
    *&v66[4] = 2048;
    *&v66[6] = v12;
    v67 = 2048;
    v68 = v20;
    _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Building Roam Policies: NumRoamSamples to collect = %lu numRoamSamplesCollectedSoFar = %lu", buf, 0x26u);
  }

  v23 = [objc_opt_class() doWeHaveEnoughSamplesToBuildChanList:v20 numRoamSamples:a4];
  v24 = WALogCategoryDeviceStoreHandle();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  v26 = v58;
  if ((v23 & 1) == 0)
  {
    if (v25)
    {
      *buf = 136446722;
      v64 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
      v65 = 1024;
      *v66 = 173;
      *&v66[4] = 2048;
      *&v66[6] = v20;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Not enough samples to calculate Adaptive roaming parameters. RoamSamplesCollectedSoFar %lu", buf, 0x1Cu);
    }

    goto LABEL_42;
  }

  v59 = a4;
  if (v25)
  {
    v27 = [v58 bssid];
    *buf = 136446722;
    v64 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
    v65 = 1024;
    *v66 = 176;
    *&v66[4] = 2112;
    *&v66[6] = v27;
    _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Derive Channel Info for %@", buf, 0x1Cu);
  }

  v28 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  v29 = [v28 persistentContainer];
  v30 = +[RoamMO entity];
  v31 = [RoamMO roamsOutOf:v58];
  v32 = +[WAPersistentContainer sortByNewestDateFirst];
  v62 = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  v60 = 0;
  v34 = [v29 fetchDistinctPropertiesIn:v30 withPredicate:v31 withSorting:v33 withPrefetchedProperties:&unk_1F483E698 withLimit:v20 withError:&v60];
  v21 = v60;

  if (v21)
  {
LABEL_37:
    v55 = 0;
    v38 = 0;
    v44 = 0;
    v45 = v57;
    v26 = v58;
    v46 = v56;
    goto LABEL_29;
  }

  v26 = v58;
  if (!v34)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v54 = [v58 bssid];
      *buf = 136446722;
      v64 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
      v65 = 1024;
      *v66 = 184;
      *&v66[4] = 2112;
      *&v66[6] = v54;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:found no roams from %@", buf, 0x1Cu);
    }

LABEL_42:
    v34 = 0;
    v55 = 0;
LABEL_43:
    v44 = 0;
LABEL_49:
    v46 = v56;
    v45 = v57;

    v38 = 0;
    v21 = 0;
    goto LABEL_29;
  }

  v35 = [objc_opt_class() extractChannelList:v34 channelKeyPath:@"target.mostRecentChannel" bandKeyPath:@"target.mostRecentBand" logFor:"-[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]"];
  v36 = [v35 count];
  v37 = WALogCategoryDeviceStoreHandle();
  v24 = v37;
  v55 = v35;
  if (!v36)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v64 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
      v65 = 1024;
      *v66 = 190;
      *&v66[4] = 2112;
      *&v66[6] = v34;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:resultChannelList empty: %@", buf, 0x1Cu);
    }

    goto LABEL_43;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v64 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
    v65 = 1024;
    *v66 = 192;
    *&v66[4] = 2112;
    *&v66[6] = v35;
    v67 = 2112;
    v68 = v58;
    _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEBUG, "%{public}s::%d:calling updateNeighborChannelsFromRoamTargetsChannels:%@ bss:%@", buf, 0x26u);
  }

  [(RoamPolicyStore *)self updateNeighborChannelsFromRoamTargetsChannels:v35 bss:v58];
  if (([objc_opt_class() doWeHaveEnoughSamplesToDeriveRSSITrigger:v20 numRoamSamples:v59] & 1) == 0)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v64 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
      v65 = 1024;
      *v66 = 198;
      *&v66[4] = 2048;
      *&v66[6] = v20;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Not enough samples to calculate RSSI Trigger. RoamSamplesCollectedSoFar %lu", buf, 0x1Cu);
    }

    v44 = 1;
    goto LABEL_49;
  }

  v38 = [(RoamPolicyStore *)self deriveRoamInfo:v58 numRoamSamplesCollectedSoFar:v20];
  if ([v38 count])
  {
    v39 = 0;
    v40 = &qword_1EC2AB278;
    do
    {
      v41 = [v38 objectAtIndex:v39];
      v42 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *v40;
        *buf = 136446978;
        v64 = "[RoamPolicyStore buildRoamPoliciesForSourceBSS:numRoamSamples:withError:]";
        v65 = 1024;
        *v66 = 206;
        *&v66[4] = 2112;
        *&v66[6] = v41;
        v67 = 2048;
        v68 = v43;
        _os_log_impl(&dword_1C8460000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: BSSID: %@ Occurences: %ld", buf, 0x26u);
      }

      ++v39;
      v40 += 44;
    }

    while (v39 < [v38 count]);
    v21 = 0;
    v44 = 1;
    v45 = v57;
    v26 = v58;
    v46 = v56;
  }

  else
  {
    v21 = 0;
    v44 = 1;
    v46 = v56;
    v45 = v57;
  }

LABEL_29:
  v47 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v47))
  {
    v48 = [v26 bssid];
    v49 = v48;
    v50 = @"NO";
    if (v44)
    {
      v50 = @"YES";
    }

    *buf = 138412546;
    v64 = v48;
    v65 = 2112;
    *v66 = v50;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies buildRoamPoliciesForNetwork:", "%@ hasUpdated: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v46);
  if (v45)
  {
    v51 = v21;
    *v45 = v21;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v44;
}

- (void)updateNeighborChannelsFromRoamTargetsChannels:(id)a3 bss:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  if (!v5)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v15 = 136446466;
    v16 = "[RoamPolicyStore updateNeighborChannelsFromRoamTargetsChannels:bss:]";
    v17 = 1024;
    v18 = 219;
    v14 = "%{public}s::%d:targetChannels nil";
LABEL_10:
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, v14, &v15, 0x12u);
    goto LABEL_5;
  }

  if (![v5 count])
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v15 = 136446466;
    v16 = "[RoamPolicyStore updateNeighborChannelsFromRoamTargetsChannels:bss:]";
    v17 = 1024;
    v18 = 220;
    v14 = "%{public}s::%d:targetChannels is empty";
    goto LABEL_10;
  }

  [v6 setNeighborChannels:v5];
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 bssid];
    v10 = [v6 network];
    v11 = [v10 ssid];
    v12 = [v6 neighborChannels];
    v15 = 136447234;
    v16 = "[RoamPolicyStore updateNeighborChannelsFromRoamTargetsChannels:bss:]";
    v17 = 1024;
    v18 = 224;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:[BSS:%@ SSID:%@] Updated neighborChannels: %@", &v15, 0x30u);
  }

LABEL_5:

  objc_autoreleasePoolPop(v7);
  v13 = *MEMORY[0x1E69E9840];
}

- (id)deriveRoamInfo:(id)a3 numRoamSamplesCollectedSoFar:(unint64_t)a4
{
  v96[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies deriveRoamInfo:ssid:numRoamSamplesCollectedSoFar:", "", buf, 2u);
  }

  context = objc_autoreleasePoolPush();
  v79 = [MEMORY[0x1E695DF70] array];
  v80 = [MEMORY[0x1E695DF70] array];
  v78 = [MEMORY[0x1E695DF70] array];
  v77 = [MEMORY[0x1E695DF70] array];
  bzero(&roamInfo, 0xDC0uLL);
  v7 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  v8 = [v7 persistentContainer];
  v9 = +[RoamMO entity];
  v74 = v5;
  v10 = [RoamMO successfulRoamsOutOf:v5];
  v11 = +[WAPersistentContainer sortByNewestDateFirst];
  v96[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
  v95[0] = @"target.bssid";
  v95[1] = @"fwReason";
  v95[2] = @"sourceRssi";
  v95[3] = @"sourceTimeSpentSecs";
  v95[4] = @"motionState";
  v95[5] = @"date";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:6];
  v84 = 0;
  v14 = [v8 fetchDistinctPropertiesIn:v9 withPredicate:v10 withSorting:v12 withPrefetchedProperties:v13 withLimit:a4 withError:&v84];
  v15 = v84;

  v72 = v15;
  if (v15)
  {
    goto LABEL_72;
  }

  if (!v14)
  {
    v43 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    v67 = [v74 bssid];
    *buf = 136446722;
    v86 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
    v87 = 1024;
    v88 = 262;
    v89 = 2112;
    v90 = v67;
    v68 = "%{public}s::%d:found no successful roams from %@";
    v69 = v43;
    goto LABEL_69;
  }

  v17 = v79;
  v75 = v14;
  if ([v14 count])
  {
    v18 = 0;
    v19 = 0;
    *&v16 = 136446722;
    v71 = v16;
    v20 = 0x1E696A000uLL;
    do
    {
      v21 = [v14 objectAtIndex:{v18, v71, v72}];
      v22 = [v21 valueForKey:@"target.bssid"];
      if (!v22)
      {
        goto LABEL_33;
      }

      if (v19 > 9)
      {
        goto LABEL_14;
      }

      if ([v17 containsObject:v22])
      {
        if (v19)
        {
          goto LABEL_14;
        }
      }

      else
      {
        [v17 addObject:v22];
        v23 = [v22 UTF8String];
        v24 = strlen(v23);
        if (v24 < 0x14)
        {
          memcpy(&roamInfo + 352 * v19++, v23, v24);
LABEL_14:
          v76 = v18;
          v25 = 0;
          v26 = &roamInfo;
          v81 = v22;
          v82 = v19;
          while (2)
          {
            v27 = [*(v20 + 3776) stringWithUTF8String:v26];
            if (![v22 isEqual:v27])
            {
              goto LABEL_27;
            }

            v28 = [v21 valueForKey:@"fwReason"];
            v29 = [v28 unsignedIntegerValue];

            v30 = [v21 valueForKey:@"sourceRssi"];
            v31 = [v30 integerValue];

            v32 = [v21 valueForKey:@"sourceTimeSpentSecs"];
            v33 = [v32 unsignedIntegerValue];

            v34 = [v21 valueForKey:@"motionState"];
            v35 = [v34 integerValue];

            v36 = [v21 valueForKey:@"date"];
            ++v26[39];
            [(RoamPolicyStore *)self listOutMostUsedRoamReasons:v25 roamReason:v29];
            [(RoamPolicyStore *)self listOutTimeSpentOnBss:v25 timeSpentOnBss:v33 motionState:v35];
            [(RoamPolicyStore *)self checkForFrequentRoams:v25 date:v36 motionState:v35];
            if (v29 <= -528348153)
            {
              if (v29 == -528348159)
              {
                [(RoamPolicyStore *)self listOutMostUsedSourceRssi:v80 neighborCount:v25 sourceRssi:v31];
                goto LABEL_26;
              }

              if (v29 != -528348154)
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v29 == -528348152)
              {
                [(RoamPolicyStore *)self listOutLazyRoamScanInfo:v78 neighborCount:v25 sourceRssi:v31];
                goto LABEL_26;
              }

              if (v29 != -528348149)
              {
                if (v29 == -528348141)
                {
                  [(RoamPolicyStore *)self listOutReassocRoams:v77 neighborCount:v25 sourceRssi:v31];
                }

LABEL_26:

                v22 = v81;
                v19 = v82;
                v20 = 0x1E696A000;
LABEL_27:

                ++v25;
                v26 += 44;
                if (v19 == v25)
                {
                  v17 = v79;
                  v14 = v75;
                  v18 = v76;
                  goto LABEL_33;
                }

                continue;
              }
            }

            break;
          }

          [(RoamPolicyStore *)self listOutBTMRoams:v25];
          goto LABEL_26;
        }

        v37 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = v71;
          v86 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
          v87 = 1024;
          v88 = 279;
          v89 = 2048;
          v90 = v24;
          _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_ERROR, "%{public}s::%d:Length exceeded limit:%lu", buf, 0x1Cu);
        }
      }

      v17 = v79;
LABEL_33:

      ++v18;
    }

    while (v18 < [v14 count]);
  }

  v38 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [v74 bssid];
    *buf = 136446722;
    v86 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
    v87 = 1024;
    v88 = 338;
    v89 = 2112;
    v90 = v39;
    _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Neighbors of BSS %@:", buf, 0x1Cu);
  }

  v40 = v79;
  if ([v79 count])
  {
    v41 = 0;
    v42 = &qword_1EC2AB278;
    while (1)
    {
      v43 = [v40 objectAtIndex:v41];
      v44 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *v42;
        *buf = 136446978;
        v86 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
        v87 = 1024;
        v88 = 341;
        v89 = 2112;
        v90 = v43;
        v91 = 2048;
        v92 = v45;
        _os_log_impl(&dword_1C8460000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: BSSID: %@ Occurences: %ld", buf, 0x26u);
      }

      if (*v42 <= 19 && !self->_roamPolicyMOHandler)
      {
        break;
      }

      ++v41;
      v40 = v79;
      v42 += 44;
      if (v41 >= [v79 count])
      {
        goto LABEL_43;
      }
    }

    v67 = WALogCategoryDeviceStoreHandle();
    v14 = v75;
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    *buf = 136446722;
    v86 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
    v87 = 1024;
    v88 = 343;
    v89 = 2112;
    v90 = v43;
    v68 = "%{public}s::%d:Not enough roam samples with %@";
    v69 = v67;
LABEL_69:
    _os_log_impl(&dword_1C8460000, v69, OS_LOG_TYPE_ERROR, v68, buf, 0x1Cu);
LABEL_70:

LABEL_71:
LABEL_72:
    v70 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v70))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v70, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies deriveRoamInfo:ssid:numRoamSamplesCollectedSoFar:", "failed", buf, 2u);
    }

    v64 = 0;
    v58 = v74;
    v63 = v79;
    v46 = v80;
    goto LABEL_64;
  }

LABEL_43:
  v46 = v80;
  v47 = [v80 count];
  if (v47)
  {
    v48 = v47;
    while (1)
    {
      v49 = [v46 valueForKeyPath:@"@max.self"];
      v50 = [v49 intValue];

      v51 = [MEMORY[0x1E696AD98] numberWithInteger:v50];
      v52 = [objc_alloc(MEMORY[0x1E696AB50]) initWithArray:v46];
      v53 = [v52 countForObject:v51];
      if (v50 <= -77)
      {
        v54 = -77;
      }

      else
      {
        v54 = v50;
      }

      v55 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v86 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
        v87 = 1024;
        v88 = 361;
        v89 = 2048;
        v90 = v48;
        v91 = 2048;
        v92 = v54;
        v93 = 2048;
        v94 = v53;
        _os_log_impl(&dword_1C8460000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:RssiObjects =%ld RSSI value =%ld numOccurances =%lu", buf, 0x30u);
      }

      if (v53 > (((((5 * v48) >> 1) & 0x3FFFFFFFFFFFFFFFLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2)
      {
        break;
      }

      v46 = v80;
      [v80 removeObject:v51];
      v48 = [v80 count];

      if (!v48)
      {
        goto LABEL_59;
      }
    }

    v56 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447234;
      v86 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
      v87 = 1024;
      v88 = 364;
      v89 = 2048;
      v90 = v48;
      v91 = 2048;
      v92 = v54;
      v93 = 2048;
      v94 = v53;
      _os_log_impl(&dword_1C8460000, v56, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:RssiObjects =%ld Best RSSI value =%ld numOccurances =%lu", buf, 0x30u);
    }

    if (v48 == 1)
    {
      v54 = -70;
    }

    v46 = v80;
  }

  else
  {
    v54 = -128;
  }

LABEL_59:
  v57 = WALogCategoryDeviceStoreHandle();
  v58 = v74;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [v74 bssid];
    *buf = 136446978;
    v86 = "[RoamPolicyStore deriveRoamInfo:numRoamSamplesCollectedSoFar:]";
    v87 = 1024;
    v88 = 377;
    v89 = 2112;
    v90 = v59;
    v91 = 2048;
    v92 = v54;
    _os_log_impl(&dword_1C8460000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:BSSID %@ Derived RSSI =%ld", buf, 0x26u);
  }

  [v74 setRoamTriggerRssi:v54];
  v60 = [MEMORY[0x1E695DEC8] arrayWithArray:v79];
  [v74 setNeighborBSSIDs:v60];

  v61 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  [v61 updateManagedObjectContextWithoutSave];

  -[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:](self, "storeNeighborsInfoLearningsFromRoamInfo:neighborCount:", v74, [v79 count]);
  v62 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v62))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v62, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies deriveRoamInfo:ssid:numRoamSamplesCollectedSoFar:", "", buf, 2u);
  }

  v63 = v79;
  v64 = v79;
  v14 = v75;
LABEL_64:

  objc_autoreleasePoolPop(context);
  v65 = *MEMORY[0x1E69E9840];

  return v64;
}

- (void)listOutMostUsedRoamReasons:(unint64_t)a3 roamReason:(unint64_t)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  switch(a4)
  {
    case 0xE0820C00:
      break;
    case 0xE0820C01:
      ++*(&roamInfo + 44 * a3 + 3);
      break;
    case 0xE0820C02:
    case 0xE0820C03:
    case 0xE0820C13:
      ++*(&roamInfo + 44 * a3 + 7);
      break;
    case 0xE0820C04:
    case 0xE0820C05:
      ++*(&roamInfo + 44 * a3 + 6);
      break;
    case 0xE0820C06:
    case 0xE0820C0B:
      ++*(&roamInfo + 44 * a3 + 4);
      break;
    case 0xE0820C07:
      ++*(&roamInfo + 44 * a3 + 9);
      break;
    case 0xE0820C08:
      ++*(&roamInfo + 44 * a3 + 5);
      break;
    case 0xE0820C09:
      ++*(&roamInfo + 44 * a3 + 10);
      break;
    case 0xE0820C0A:
      ++*(&roamInfo + 44 * a3 + 11);
      break;
    case 0xE0820C0C:
      ++*(&roamInfo + 44 * a3 + 12);
      break;
    case 0xE0820C0D:
      ++*(&roamInfo + 44 * a3 + 13);
      break;
    case 0xE0820C0E:
      ++*(&roamInfo + 44 * a3 + 14);
      break;
    case 0xE0820C0F:
      ++*(&roamInfo + 44 * a3 + 15);
      break;
    case 0xE0820C10:
      ++*(&roamInfo + 44 * a3 + 16);
      break;
    case 0xE0820C11:
      ++*(&roamInfo + 44 * a3 + 17);
      break;
    case 0xE0820C12:
      ++*(&roamInfo + 44 * a3 + 18);
      break;
    default:
      v6 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446722;
        v16 = "[RoamPolicyStore listOutMostUsedRoamReasons:roamReason:]";
        v17 = 1024;
        v18 = 466;
        v19 = 1024;
        v20 = v4;
        _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:This Roam reason %u is not categorized", &v15, 0x18u);
      }

      break;
  }

  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = (&roamInfo + 352 * a3);
    v10 = v8[6];
    v9 = v8[7];
    v11 = v8[3];
    v12 = v8[4];
    v13 = v8[5];
    v15 = 136448002;
    v16 = "[RoamPolicyStore listOutMostUsedRoamReasons:roamReason:]";
    v17 = 1024;
    v18 = 470;
    v19 = 1024;
    v20 = v4;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v10;
    v27 = 2048;
    v28 = v12;
    v29 = 2048;
    v30 = v13;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_INFO, "%{public}s::%d:Roam Reason = %u, LowRSSI = %ld LinkLossSuppression = %ld BeaconsLost = %ld roamDueToBTM = %ld LazyRoamScan = %ld", &v15, 0x4Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)listOutMostUsedSourceRssi:(id)a3 neighborCount:(unint64_t)a4 sourceRssi:(int64_t)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (a5 <= -70)
  {
    v10 = 0;
    v11 = &roamInfo + 352 * a4;
    v33 = v8;
    v34 = v11 + 200;
    v35 = v11 + 152;
    v12 = v11 + 192;
    v13 = v11 + 184;
    v14 = v11 + 176;
    v15 = v11 + 168;
    v16 = v11 + 160;
    v17 = -70;
    do
    {
      v18 = v17;
      v17 = roamOriginRssiLevels[v10 + 1];
      if ([(RoamPolicyStore *)self inRange:v18 high:v17 value:a5])
      {
        if (v10 == 4)
        {
          v19 = v13;
        }

        else
        {
          v19 = v12;
        }

        v20 = v34;
        v21 = v35;
        if ((v10 - 6) >= 2)
        {
          v20 = v19;
        }

        if (v10 == 2)
        {
          v22 = v15;
        }

        else
        {
          v22 = v14;
        }

        if (v10)
        {
          v21 = v16;
        }

        if (v10 <= 1)
        {
          v22 = v21;
        }

        if (v10 <= 3)
        {
          v20 = v22;
        }

        ++*v20;
      }

      ++v10;
    }

    while (v10 != 8);
    v23 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *v35;
      v25 = *(v35 + 1);
      v26 = *(v35 + 2);
      v27 = *(v35 + 3);
      v28 = *(v35 + 4);
      v29 = *(v35 + 5);
      v30 = *(v35 + 6);
      *buf = 136448514;
      v37 = "[RoamPolicyStore listOutMostUsedSourceRssi:neighborCount:sourceRssi:]";
      v38 = 1024;
      v39 = 513;
      v40 = 2048;
      v41 = a5;
      v42 = 2048;
      v43 = v24;
      v44 = 2048;
      v45 = v25;
      v46 = 2048;
      v47 = v26;
      v48 = 2048;
      v49 = v27;
      v50 = 2048;
      v51 = v28;
      v52 = 2048;
      v53 = v29;
      v54 = 2048;
      v55 = v30;
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_INFO, "%{public}s::%d:Source RSSI %ld HighRSSI %ld UpperHigh %ld Optimum %ld UpperOptimim %ld Mid %ld UpperMid %ld Low %ld", buf, 0x62u);
    }

    v31 = [MEMORY[0x1E696AD98] numberWithInt:a5];
    v9 = v33;
    [v33 addObject:v31];
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)listOutTimeSpentOnBss:(unint64_t)a3 timeSpentOnBss:(unint64_t)a4 motionState:(int64_t)a5
{
  v32 = *MEMORY[0x1E69E9840];
  if (a4 > 0x14)
  {
    if (a4 > 0x3C)
    {
      if (a4 > 0x78)
      {
        if (a4 > 0x1F4)
        {
          if (a4 > 0x258)
          {
            goto LABEL_13;
          }

          v7 = &roamInfo + 352 * a3 + 288;
        }

        else
        {
          v7 = &roamInfo + 352 * a3 + 280;
        }
      }

      else
      {
        v7 = &roamInfo + 352 * a3 + 272;
      }
    }

    else
    {
      v7 = &roamInfo + 352 * a3 + 264;
    }
  }

  else
  {
    if (a5)
    {
      goto LABEL_13;
    }

    v7 = &roamInfo + 352 * a3 + 256;
  }

  ++*v7;
LABEL_13:
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = (&roamInfo + 352 * a3);
    v10 = v9[32];
    v11 = v9[33];
    v12 = v9[34];
    v13 = v9[35];
    v14 = v9[36];
    v16 = 136448002;
    v17 = "[RoamPolicyStore listOutTimeSpentOnBss:timeSpentOnBss:motionState:]";
    v18 = 1024;
    v19 = 538;
    v20 = 2048;
    v21 = a4;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v12;
    v28 = 2048;
    v29 = v13;
    v30 = 2048;
    v31 = v14;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:TimeSpent in Seconds %ld numRoamDurLow %ld  numRoamDurUpperLow %ld numRoamDurMid %ld numRoamDurUpperMid %ld numRoamDurHigh %ld", &v16, 0x4Eu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)checkForFrequentRoams:(unint64_t)a3 date:(id)a4 motionState:(int64_t)a5
{
  v30 = *MEMORY[0x1E69E9840];
  [a4 timeIntervalSinceReferenceDate];
  v8 = &roamInfo + 352 * a3;
  *(v8 + 38) = v7;
  if (a5 <= 1 && *(v8 + 37) != 0.0)
  {
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(v8 + 37)];
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(v8 + 38)];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = 136447490;
      v19 = "[RoamPolicyStore checkForFrequentRoams:date:motionState:]";
      v20 = 1024;
      v21 = 555;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      v28 = 2048;
      v29 = v12;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_INFO, "%{public}s::%d:BSS %@ PrevDate %@ newDate %@ Difference %f", &v18, 0x3Au);
    }

    v15 = checkForFrequentRoams_date_motionState__frequentRoamCount;
    if (v12 < 15.0)
    {
      v15 = ++checkForFrequentRoams_date_motionState__frequentRoamCount;
    }

    if (v15 >= 11)
    {
      v16 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = 136446722;
        v19 = "[RoamPolicyStore checkForFrequentRoams:date:motionState:]";
        v20 = 1024;
        v21 = 561;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_INFO, "%{public}s::%d:Frequent RoamCandidate %@", &v18, 0x1Cu);
      }

      checkForFrequentRoams_date_motionState__frequentRoamCount = 0;
    }

    v7 = *(v8 + 38);
  }

  *(v8 + 37) = v7;
  v17 = *MEMORY[0x1E69E9840];
}

- (void)listOutLazyRoamScanInfo:(id)a3 neighborCount:(unint64_t)a4 sourceRssi:(int64_t)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (a5 && a5 >= -70)
  {
    v10 = 0;
    v11 = &roamInfo + 352 * a4;
    v12 = v11 + 248;
    v42 = v8;
    v43 = v11 + 208;
    v13 = v11 + 240;
    v14 = v11 + 232;
    v15 = v11 + 224;
    v16 = v11 + 216;
    v17 = -10;
    do
    {
      v18 = v17;
      v17 = lazyRoamOriginRssiLevels[v10 + 1];
      if ([(RoamPolicyStore *)self inRange:v18 high:v17 value:a5, v42])
      {
        if (v10 == 4)
        {
          v19 = v13;
        }

        else
        {
          v19 = v12;
        }

        if (v10 == 3)
        {
          v19 = v14;
        }

        if (v10 == 1)
        {
          v20 = v16;
        }

        else
        {
          v20 = v15;
        }

        if (!v10)
        {
          v20 = v43;
        }

        if (v10 <= 2)
        {
          v19 = v20;
        }

        ++*v19;
      }

      ++v10;
    }

    while (v10 != 6);
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = *v43;
      v23 = *(v43 + 1);
      v24 = *(v43 + 2);
      v25 = *(v43 + 3);
      v26 = *(v43 + 4);
      v27 = *(v43 + 5);
      *buf = 136448258;
      v45 = "[RoamPolicyStore listOutLazyRoamScanInfo:neighborCount:sourceRssi:]";
      v46 = 1024;
      v47 = 601;
      v48 = 2048;
      v49 = a5;
      v50 = 2048;
      v51 = v22;
      v52 = 2048;
      v53 = v23;
      v54 = 2048;
      v55 = v24;
      v56 = 2048;
      v57 = v25;
      v58 = 2048;
      v59 = v26;
      v60 = 2048;
      v61 = v27;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_INFO, "%{public}s::%d:Lazy Roam: Source RSSI %ld HighRSSI %ld UpperHigh %ld Optimum %ld UpperOptimim %ld Mid %ld UpperMid %ld", buf, 0x58u);
    }

    v28 = [MEMORY[0x1E696AD98] numberWithInt:a5];
    v9 = v42;
    [v42 addObject:v28];

    v29 = *v43;
    v30 = *(v43 + 1);
    v32 = *(v43 + 2);
    v31 = *(v43 + 3);
    v34 = *(v43 + 4);
    v33 = *(v43 + 5);
    v35 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      if (v29 <= v30)
      {
        v36 = v30;
      }

      else
      {
        v36 = v29;
      }

      if (v36 <= v32)
      {
        v36 = v32;
      }

      if (v36 <= v31)
      {
        v36 = v31;
      }

      if (v36 <= v34)
      {
        v36 = v34;
      }

      if (v36 <= v33)
      {
        v36 = v33;
      }

      *buf = 136446722;
      v45 = "[RoamPolicyStore listOutLazyRoamScanInfo:neighborCount:sourceRssi:]";
      v46 = 1024;
      v47 = 633;
      v48 = 2048;
      v49 = v36 & ~(v36 >> 63);
      v37 = "%{public}s::%d:Largest LazyRoam Bin is %ld\n";
      v38 = v35;
      v39 = OS_LOG_TYPE_INFO;
      v40 = 28;
      goto LABEL_36;
    }
  }

  else
  {
    v35 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v45 = "[RoamPolicyStore listOutLazyRoamScanInfo:neighborCount:sourceRssi:]";
      v46 = 1024;
      v47 = 572;
      v37 = "%{public}s::%d:Continue";
      v38 = v35;
      v39 = OS_LOG_TYPE_DEBUG;
      v40 = 18;
LABEL_36:
      _os_log_impl(&dword_1C8460000, v38, v39, v37, buf, v40);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)listOutReassocRoams:(id)a3 neighborCount:(unint64_t)a4 sourceRssi:(int64_t)a5
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInt:a5];
  [v7 addObject:v8];
}

- (void)listOutBTMRoams:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = &roamInfo + 352 * a3;
  if (*(v3 + 4) > 50 * a3 / 0x64)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
      v7 = 136446722;
      v8 = "[RoamPolicyStore listOutBTMRoams:]";
      v9 = 1024;
      v10 = 646;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_INFO, "%{public}s::%d:This BSS %@ Object experieces too many BTM's", &v7, 0x1Cu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)monitorDeploymentChangesAfterRoam:(id)a3
{
  v147[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v88 = objc_autoreleasePoolPush();
  v89 = [v4 neighborCache];
  v116 = self;
  v5 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  v6 = [v5 persistentContainer];
  v7 = +[RoamMO entity];
  v90 = v4;
  v8 = [v4 source];
  v9 = [RoamMO roamsOutOf:v8];
  v10 = +[WAPersistentContainer sortByNewestDateFirst];
  v147[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:1];
  v146[0] = @"neighborCache";
  v146[1] = @"cacheChannel";
  v146[2] = @"cacheChannelFlags";
  v146[3] = @"cacheRssiBin";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:4];
  v130 = 0;
  v13 = [v6 fetchDistinctPropertiesIn:v7 withPredicate:v9 withSorting:v11 withPrefetchedProperties:v12 withLimit:100 withError:&v130];
  v14 = v130;

  if (v14)
  {
    v94 = 0;
    v81 = 0;
    v80 = v88;
    goto LABEL_91;
  }

  if (!v13)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v86 = [v90 source];
      v87 = [v86 bssid];
      *buf = 136446722;
      v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
      v135 = 1024;
      v136 = 670;
      v137 = 2112;
      v138 = v87;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "%{public}s::%d:found no roams from originBSS:%@ (should have found at least the current one)", buf, 0x1Cu);
    }

    v94 = 0;
    v81 = 0;
    v80 = v88;
    goto LABEL_90;
  }

  v92 = v13;
  v15 = [(RoamPolicyStore *)v116 roamPolicyMOHandler];
  v16 = [v15 persistentContainer];
  v17 = +[RoamMO entity];
  v18 = [v90 target];
  v19 = [RoamMO successfulRoamsInOrOutOf:v18];
  v129 = 0;
  v20 = [v16 countObjects:v17 withPredicate:v19 withError:&v129];
  v14 = v129;

  if (v14)
  {
    v94 = 0;
    v81 = 0;
    v80 = v88;
    goto LABEL_91;
  }

  if (!v20)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v82 = [v90 target];
      v83 = [v82 bssid];
      *buf = 136446722;
      v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
      v135 = 1024;
      v136 = 680;
      v137 = 2112;
      v138 = v83;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:New BSS %@ Added to the deployment", buf, 0x1Cu);
    }

    v94 = 0;
    v81 = 1;
    goto LABEL_89;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v21 = v89;
  v99 = [v21 countByEnumeratingWithState:&v125 objects:v145 count:16];
  if (!v99)
  {
    v94 = 0;
    v81 = 0;
LABEL_89:
    v80 = v88;
    goto LABEL_90;
  }

  obj = v21;
  v111 = 0;
  v22 = 0;
  v91 = 0;
  v23 = 0x1E695D000uLL;
  v98 = *v126;
  v24 = 0x1E830D000uLL;
LABEL_7:
  v25 = 0;
  while (1)
  {
    if (*v126 != v98)
    {
      objc_enumerationMutation(obj);
    }

    v26 = *(*(&v125 + 1) + 8 * v25);
    v27 = *(v23 + 3872);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_81:
    if (++v25 == v99)
    {
      v99 = [obj countByEnumeratingWithState:&v125 objects:v145 count:16];
      if (!v99)
      {
        v94 = v111;
        v80 = v88;
        v13 = v92;
        v21 = obj;
        v81 = v91;
        goto LABEL_90;
      }

      goto LABEL_7;
    }
  }

  v97 = v25;
  v28 = v26;
  v108 = [v28 objectForKey:@"bssid"];
  v29 = [v28 objectForKey:@"rssi"];
  v30 = [v28 objectForKey:@"roamDelta"];
  v101 = v29;
  v115 = [v29 integerValue];
  v113 = [v30 integerValue];
  v31 = [v28 objectForKey:@"channel"];
  v32 = [v31 shortValue];
  v33 = [v28 objectForKey:@"band"];
  v34 = +[WAChanInfo chanInfoWithChannel:band:](WAChanInfo, "chanInfoWithChannel:band:", v32, [v33 shortValue]);

  v35 = [v34 chanInfoDictionary];
  if ([*(v24 + 664) isWildcardMacAddress:v108])
  {

    v23 = 0x1E695D000;
    v25 = v97;
    goto LABEL_81;
  }

  v106 = v34;
  v110 = v30;
  v96 = v28;
  v36 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
    v135 = 1024;
    v136 = 703;
    v137 = 2112;
    v138 = v108;
    v139 = 2048;
    v140 = v115;
    v141 = 2112;
    v142 = v35;
    v143 = 2048;
    v144 = v113;
    _os_log_impl(&dword_1C8460000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:currentCacheBssid  %@ currentRssi %ld currentChannel: %@ currentRoamDelta %ld", buf, 0x3Au);
  }

  v107 = v35;

  v37 = [(AnalyticsStoreMOHandler *)v116->_roamPolicyMOHandler persistentContainer];
  v38 = [v37 bssForBssid:v108 prefetchProperties:&unk_1F483E6B0 withError:0];

  v23 = 0x1E695D000uLL;
  v39 = v101;
  v40 = v110;
  v94 = v38;
  if (v38)
  {
    v41 = +[WAChanInfo chanInfoWithChannel:band:](WAChanInfo, "chanInfoWithChannel:band:", [v38 mostRecentChannel], objc_msgSend(v38, "mostRecentBand"));
    v42 = [v41 chanInfoDictionary];
    v43 = WALogCategoryDeviceStoreHandle();
    v105 = v42;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v90 source];
      v45 = [v44 network];
      v46 = [v45 ssid];
      *buf = 136447234;
      v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
      v135 = 1024;
      v136 = 712;
      v137 = 2112;
      v138 = v108;
      v139 = 2112;
      v140 = v46;
      v141 = 2112;
      v142 = v105;
      _os_log_impl(&dword_1C8460000, v43, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:MyChannel for bssid[%@] ssid[%@] : %@", buf, 0x30u);

      v23 = 0x1E695D000;
      v42 = v105;

      v40 = v110;
    }

    v47 = [v42 isEqualToDictionary:v107];
    v48 = v96;
    if ((v47 & 1) == 0)
    {
      v49 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136447234;
        v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
        v135 = 1024;
        v136 = 715;
        v137 = 2112;
        v138 = v108;
        v139 = 2112;
        v140 = v107;
        v141 = 2112;
        v142 = v105;
        _os_log_impl(&dword_1C8460000, v49, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Change in Channel for BSSID =%@, currentChannel = %@, bssChannel = %@", buf, 0x30u);
      }

      [(RoamPolicyStore *)v116 updateNeighborChannelsInCoreDataWith:v41 bss:v94];
    }
  }

  else
  {
    v105 = 0;
    v48 = v96;
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v100 = v92;
  v102 = [v100 countByEnumeratingWithState:&v121 objects:v132 count:16];
  if (!v102)
  {
    v78 = 1;
    goto LABEL_79;
  }

  v103 = *v122;
  do
  {
    v50 = 0;
    do
    {
      if (*v122 != v103)
      {
        v51 = v50;
        objc_enumerationMutation(v100);
        v50 = v51;
      }

      v104 = v50;
      v52 = *(*(&v121 + 1) + 8 * v50);
      v53 = *(v23 + 3872);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_72;
      }

      v54 = [v52 valueForKey:@"neighborCache"];
      if (!v54)
      {
        goto LABEL_71;
      }

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v95 = v54;
      v114 = v54;
      v55 = [v114 countByEnumeratingWithState:&v117 objects:v131 count:16];
      if (!v55)
      {
        goto LABEL_70;
      }

      v56 = v55;
      v57 = *v118;
      v109 = *v118;
      while (2)
      {
        v58 = 0;
        v112 = v56;
        do
        {
          if (*v118 != v57)
          {
            objc_enumerationMutation(v114);
          }

          v59 = [*(*(&v117 + 1) + 8 * v58) objectForKey:@"bssid"];
          if (([*(v24 + 664) isWildcardMacAddress:v59] & 1) == 0)
          {
            v60 = [(RoamPolicyStore *)v116 roamPolicyMOHandler];
            v61 = [v60 persistentContainer];
            v62 = [v61 mostRecentRoamsFromBssid:v59 withPrefetchedProperties:&unk_1F483E6C8 limit:1];

            v63 = [v62 firstObject];
            v64 = v63;
            if (v63)
            {
              if ([v63 cacheChannel])
              {
                v65 = [WAChanInfo chanInfoWithObjectHavingChInfo:v64 withPrefix:@"cacheC"];
                v66 = [v65 chanInfoDictionary];

                v67 = [v64 cacheRssiBin];
                v68 = [v64 roamDelta];
                v69 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136447490;
                  v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
                  v135 = 1024;
                  v136 = 750;
                  v137 = 2112;
                  v138 = v59;
                  v139 = 2048;
                  v140 = v67;
                  v141 = 2112;
                  v142 = v66;
                  v143 = 2048;
                  v144 = v68;
                  _os_log_impl(&dword_1C8460000, v69, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:CacheBssid  %@ CacheRssiBin %ld CacheChannel %@ CacheRoamDelta %ld", buf, 0x3Au);
                }

                if ([v108 isEqualToString:v59])
                {
                  if (![v66 isEqualToDictionary:v107])
                  {
                    v70 = WALogCategoryDeviceStoreHandle();
                    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136447234;
                      v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
                      v135 = 1024;
                      v136 = 756;
                      v137 = 2112;
                      v138 = v59;
                      v139 = 2112;
                      v140 = v66;
                      v141 = 2112;
                      v142 = v105;
                      _os_log_impl(&dword_1C8460000, v70, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Change in Channel for BSSID %@: CurrentCacheChannel = %@ cacheChannel = %@", buf, 0x30u);
                    }

                    v71 = [(AnalyticsStoreMOHandler *)v116->_roamPolicyMOHandler persistentContainer];
                    v72 = [v71 bssForBssid:v59 prefetchProperties:0 withError:0];

                    [(RoamPolicyStore *)v116 updateNeighborChannelsInCoreDataWith:v106 bss:v72];
                  }

                  v73 = 0;
                  v74 = -10;
                  while (1)
                  {
                    v75 = v74;
                    v74 = roamCacheRssiLevels[v73 + 1];
                    if ([(RoamPolicyStore *)v116 inRange:v75 high:v74 value:v115])
                    {
                      v22 = v73;
                      if (v73 > 3)
                      {
                        break;
                      }
                    }

                    if (++v73 == 5)
                    {
                      goto LABEL_54;
                    }
                  }

                  v22 = v73;
LABEL_54:
                  if (v22 == v67)
                  {
                    v76 = WALogCategoryDeviceStoreHandle();
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136447234;
                      v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
                      v135 = 1024;
                      v136 = 784;
                      v137 = 2112;
                      v138 = v59;
                      v139 = 2048;
                      v140 = v67;
                      v141 = 2048;
                      v142 = v67;
                      _os_log_impl(&dword_1C8460000, v76, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:No Change in location of the BSS = %@ CurrentRssiLevel = %lu cacheRssiBin = %ld", buf, 0x30u);
                    }

                    goto LABEL_64;
                  }

                  v77 = v67 - v22;
                  if (v22 > v67)
                  {
                    v77 = v22 - v67;
                  }

                  if (v77 >= 2)
                  {
                    v79 = WALogCategoryDeviceStoreHandle();
                    v24 = 0x1E830D000;
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136447234;
                      v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
                      v135 = 1024;
                      v136 = 788;
                      v137 = 2112;
                      v138 = v59;
                      v139 = 2048;
                      v140 = v22;
                      v141 = 2112;
                      v142 = v66;
                      _os_log_impl(&dword_1C8460000, v79, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deployment Changed: Network %@ is signicantly moved in or an obstacle is taken out.CurrentRssiLevel = %lu cacheChannel = %@", buf, 0x30u);
                    }

                    v78 = 0;
                    v91 = 1;
                    v23 = 0x1E695D000;
                    v48 = v96;
                    v39 = v101;
                    v40 = v110;
                    goto LABEL_79;
                  }

                  if (v77 == 1)
                  {
                    v76 = WALogCategoryDeviceStoreHandle();
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136446978;
                      v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
                      v135 = 1024;
                      v136 = 792;
                      v137 = 2048;
                      v138 = v22;
                      v139 = 2112;
                      v140 = v66;
                      _os_log_impl(&dword_1C8460000, v76, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Deployment did Change but the change is not significant, CurrentRssiLevel = %lu cacheChannel = %@", buf, 0x26u);
                    }

                    v67 = v22;
LABEL_64:

                    v22 = v67;
                  }
                }

                v24 = 0x1E830D000;
LABEL_66:
              }

              v57 = v109;
              v40 = v110;
              v56 = v112;
              goto LABEL_68;
            }

            v66 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v134 = "[RoamPolicyStore monitorDeploymentChangesAfterRoam:]";
              v135 = 1024;
              v136 = 739;
              v137 = 2112;
              v138 = v59;
              _os_log_impl(&dword_1C8460000, v66, OS_LOG_TYPE_ERROR, "%{public}s::%d:no roams from %@", buf, 0x1Cu);
            }

            goto LABEL_66;
          }

LABEL_68:

          ++v58;
        }

        while (v58 != v56);
        v56 = [v114 countByEnumeratingWithState:&v117 objects:v131 count:16];
        if (v56)
        {
          continue;
        }

        break;
      }

LABEL_70:

      v23 = 0x1E695D000;
      v54 = v95;
      v48 = v96;
      v39 = v101;
LABEL_71:

LABEL_72:
      v50 = v104 + 1;
    }

    while (v104 + 1 != v102);
    v78 = 1;
    v102 = [v100 countByEnumeratingWithState:&v121 objects:v132 count:16];
  }

  while (v102);
LABEL_79:

  v25 = v97;
  if (v78)
  {
    v111 = v94;
    goto LABEL_81;
  }

  v81 = 1;
  v80 = v88;
  v13 = v92;
  v21 = obj;
LABEL_90:

  v14 = 0;
LABEL_91:

  objc_autoreleasePoolPop(v80);
  v84 = *MEMORY[0x1E69E9840];
  return v81 & 1;
}

- (BOOL)buildRoamCacheInfoForBss:(id)a3 numRoamSamples:(unint64_t)a4 withError:(id *)a5
{
  v138[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies buildRoamCacheInfoForNetwork", "", buf, 2u);
  }

  bzero(&roamCacheInfo, 0x410uLL);
  v116 = self;
  v8 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  v9 = [v8 persistentContainer];
  v10 = +[RoamMO entity];
  v11 = [RoamMO roamsOutOf:v6];
  v12 = +[WAPersistentContainer sortByNewestDateFirst];
  v138[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:1];
  v137 = @"neighborCache";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
  v129 = 0;
  v15 = [v9 fetchDistinctPropertiesIn:v10 withPredicate:v11 withSorting:v13 withPrefetchedProperties:v14 withLimit:100 withError:&v129];
  v16 = v129;

  v102 = v16;
  if (v16)
  {
    goto LABEL_108;
  }

  if (!v15)
  {
    v98 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = [v6 bssid];
      *buf = 136446722;
      v132 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
      v133 = 1024;
      v134 = 830;
      v135 = 2112;
      v136 = v99;
      _os_log_impl(&dword_1C8460000, v98, OS_LOG_TYPE_ERROR, "%{public}s::%d:fetchDistinctProperties for roamsOutOf:%@ returned nil", buf, 0x1Cu);
    }

    goto LABEL_107;
  }

  v17 = [v15 count];
  v18 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v132 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
    v133 = 1024;
    v134 = 834;
    v135 = 2048;
    v136 = v17;
    _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Roam Cache Policy: numRoamSamplesCollectedSoFar =%lu", buf, 0x1Cu);
  }

  if (![objc_opt_class() doWeHaveEnoughSamplesToBuildRoamCache:v17 numRoamSamples:a4])
  {
    v98 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v132 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
      v133 = 1024;
      v134 = 838;
      v135 = 2048;
      v136 = v17;
      _os_log_impl(&dword_1C8460000, v98, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Not enough samples to derive policies on RoamCache, Bail out. RoamSamplesCollectedSoFar %lu", buf, 0x1Cu);
    }

LABEL_107:

LABEL_108:
    v91 = 0;
    goto LABEL_96;
  }

  if (![v15 count])
  {
    goto LABEL_92;
  }

  v108 = 0;
  v124 = 0;
  v19 = 0;
  v20 = 0x1E695D000uLL;
  v109 = v6;
  v103 = v15;
  do
  {
    v105 = v19;
    v104 = [v15 objectAtIndex:?];
    v21 = [v104 valueForKey:@"neighborCache"];
    if (v21)
    {
      v106 = [MEMORY[0x1E696AD60] string];
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      obj = v21;
      v22 = [obj countByEnumeratingWithState:&v125 objects:v130 count:16];
      if (!v22)
      {
        goto LABEL_47;
      }

      v23 = v22;
      v24 = *v126;
      v110 = *v126;
      v111 = v21;
      while (1)
      {
        v25 = 0;
        v112 = v23;
        do
        {
          if (*v126 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v125 + 1) + 8 * v25);
          v27 = *(v20 + 3872);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v26;
            v29 = [v28 objectForKey:@"channel"];
            v30 = [v28 objectForKey:@"rssi"];
            v31 = [v28 objectForKey:@"bssid"];
            v121 = [v28 objectForKey:@"roamDelta"];
            v32 = [v28 objectForKey:@"channel"];
            v33 = [v32 shortValue];
            v34 = [v28 objectForKey:@"band"];
            v35 = [v34 shortValue];
            v36 = v33;
            v37 = v30;
            v38 = [WAChanInfo chanInfoWithChannel:v36 band:v35];

            v39 = [v29 integerValue];
            v117 = v38;
            v40 = [v38 simplifiedChannelFlags];
            v41 = [v37 integerValue];
            v119 = v37;
            if (v29)
            {
              if (v37)
              {
                v42 = v41;
                v43 = [v6 bssid];
                if (v43)
                {
                  v44 = v43;
                  v45 = [WAUtil isWildcardMacAddress:v31];

                  if (!v45)
                  {
                    [v106 appendFormat:@" {%@, %@, %@, %@} ", v31, v37, v29, v121];
                    v46 = WALogCategoryDeviceStoreHandle();
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136446722;
                      v132 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
                      v133 = 1024;
                      v134 = 870;
                      v135 = 2112;
                      v136 = v106;
                      _os_log_impl(&dword_1C8460000, v46, OS_LOG_TYPE_DEBUG, "%{public}s::%d:roamCacheStr:%@", buf, 0x1Cu);
                    }

                    v47 = v124;
                    if (v124)
                    {
                      v107 = v40;
                      v48 = &roamCacheInfo;
                      while (1)
                      {
                        v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v48];
                        v50 = [v49 isEqualToString:v31];

                        if (v50)
                        {
                          break;
                        }

                        v48 += 104;
                        if (!--v47)
                        {
                          v108 = 0;
                          v47 = v124;
                          v40 = v107;
                          goto LABEL_28;
                        }
                      }

                      v108 = 1;
                      v47 = v124;
                      v40 = v107;
LABEL_33:
                      if (v47)
                      {
LABEL_34:
                        v124 = v47;
                        v53 = 0;
                        v54 = v40;
                        v55 = &roamCacheInfo;
                        do
                        {
                          v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v55];
                          if ([v31 isEqual:v56])
                          {
                            [(RoamPolicyStore *)v116 locateTheNeighbor:v53 cacheRssi:v42];
                            v55[8] = v39;
                            v55[9] = v54;
                          }

                          ++v53;
                          v55 += 13;
                        }

                        while (v124 != v53);
                      }

                      else
                      {
                        v124 = 0;
                      }
                    }

                    else
                    {
LABEL_28:
                      if (v108 || v47 > 9)
                      {
                        goto LABEL_33;
                      }

                      v51 = [v31 UTF8String];
                      v52 = strlen(v51);
                      if (v52 < 0x14)
                      {
                        memcpy(&roamCacheInfo + 104 * v124, v51, v52);
                        v108 = 0;
                        v47 = v124 + 1;
                        goto LABEL_34;
                      }

                      v57 = WALogCategoryDeviceStoreHandle();
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136446722;
                        v132 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
                        v133 = 1024;
                        v134 = 890;
                        v135 = 2048;
                        v136 = v52;
                        _os_log_impl(&dword_1C8460000, v57, OS_LOG_TYPE_ERROR, "%{public}s::%d:Length exceeded limit:%lu", buf, 0x1Cu);
                      }

                      v108 = 0;
                    }
                  }

                  v6 = v109;
                }
              }
            }

            v20 = 0x1E695D000;
            v24 = v110;
            v21 = v111;
            v23 = v112;
          }

          ++v25;
        }

        while (v25 != v23);
        v23 = [obj countByEnumeratingWithState:&v125 objects:v130 count:16];
        if (!v23)
        {
LABEL_47:

          v15 = v103;
          goto LABEL_50;
        }
      }
    }

    v58 = WALogCategoryDeviceStoreHandle();
    v106 = v58;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v132 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
      v133 = 1024;
      v134 = 847;
      _os_log_impl(&dword_1C8460000, v58, OS_LOG_TYPE_INFO, "%{public}s::%d:RoamCache is nil", buf, 0x12u);
    }

LABEL_50:

    v59 = [v15 count];
    v19 = v105 + 1;
  }

  while (v105 + 1 < v59);
  if (!v124)
  {
LABEL_92:
    v124 = 0;
    goto LABEL_93;
  }

  v60 = &roamCacheInfo;
  v61 = v124;
  v62 = v116;
  do
  {
    v122 = v61;
    v63 = v60[3];
    v64 = v60[4];
    v65 = v64 > v63;
    if (v64 <= v63)
    {
      v66 = v60[3];
    }

    else
    {
      v66 = v60[4];
    }

    v68 = v60[5];
    v67 = v60[6];
    v118 = v66;
    if (v68 <= v66)
    {
      v69 = v66;
    }

    else
    {
      v69 = v60[5];
    }

    if (v68 > v66)
    {
      v65 = 2;
    }

    if (v67 <= v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = v60[6];
    }

    if (v67 > v69)
    {
      v65 = 3;
    }

    v71 = v60[7];
    obja = v70;
    if (v71 > v70)
    {
      v65 = 4;
    }

    v113 = v65;
    v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v60];
    v73 = [(RoamPolicyStore *)v62 roamPolicyMOHandler];
    v74 = [v73 persistentContainer];
    v120 = v72;
    v75 = [v74 mostRecentRoamsFromBssid:v72 withPrefetchedProperties:&unk_1F483E6E0 limit:1];

    v76 = [v75 firstObject];
    v77 = v76;
    if (v76)
    {
      if (v64 <= v63)
      {
        v78 = 0;
      }

      else
      {
        v78 = v64;
      }

      v79 = v78 + v63;
      if (v68 <= v118)
      {
        v80 = 0;
      }

      else
      {
        v80 = v68;
      }

      v81 = v79 + v80;
      if (v67 <= v69)
      {
        v82 = 0;
      }

      else
      {
        v82 = v67;
      }

      v83 = v81 + v82;
      if (v71 <= obja)
      {
        v84 = 0;
      }

      else
      {
        v84 = v71;
      }

      v85 = v83 + v84;
      if (v71 <= obja)
      {
        v86 = obja;
      }

      else
      {
        v86 = v71;
      }

      if (v86 >= 50 * v85 / 0x64)
      {
        [v76 setCacheRssiBin:v113];
      }

      [v77 setCacheChannel:*(v60 + 32)];
      [v77 setCacheChannelFlags:*(v60 + 36)];
      v6 = v109;
      v15 = v103;
      v88 = v120;
      v87 = v122;
    }

    else
    {
      v90 = WALogCategoryDeviceStoreHandle();
      v88 = v120;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v132 = "[RoamPolicyStore buildRoamCacheInfoForBss:numRoamSamples:withError:]";
        v133 = 1024;
        v134 = 948;
        v135 = 2112;
        v136 = v120;
        _os_log_impl(&dword_1C8460000, v90, OS_LOG_TYPE_ERROR, "%{public}s::%d:no recent roams from %@", buf, 0x1Cu);
      }

      v6 = v109;
      v15 = v103;
      v87 = v122;
    }

    v60 += 13;
    v62 = v116;
    v89 = [(RoamPolicyStore *)v116 roamPolicyMOHandler];
    [v89 updateManagedObjectContextWithoutSave];

    v61 = v87 - 1;
  }

  while (v61);
LABEL_93:
  if (v6)
  {
    [(RoamPolicyStore *)v116 storeNeighborsInfoLearningsFromRoamCacheInfo:v6 neighborCount:v124];
  }

  v91 = 1;
LABEL_96:
  v92 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v92))
  {
    v93 = @"NO";
    if (v91)
    {
      v93 = @"YES";
    }

    *buf = 138412290;
    v132 = v93;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v92, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RoamingPolicies buildRoamCacheInfoForNetwork", "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v94 = v102;
  if (a5)
  {
    v95 = v102;
    v94 = v102;
    *a5 = v102;
  }

  v96 = *MEMORY[0x1E69E9840];
  return v91;
}

- (void)locateTheNeighbor:(unint64_t)a3 cacheRssi:(int64_t)a4
{
  v6 = 0;
  v44 = *MEMORY[0x1E69E9840];
  v7 = &roamCacheInfo + 104 * a3;
  v8 = v7 + 56;
  v9 = v7 + 24;
  v10 = v7 + 48;
  v11 = v7 + 40;
  v12 = v7 + 32;
  v13 = -10;
  do
  {
    v14 = v13;
    v13 = roamCacheRssiLevels[v6 + 1];
    if (![(RoamPolicyStore *)self inRange:v14 high:v13 value:a4])
    {
      goto LABEL_11;
    }

    if (v6 > 1)
    {
      v15 = v11;
      if (v6 != 2)
      {
        v15 = v10;
        if (v6 != 3)
        {
          if (v6 != 4)
          {
            goto LABEL_11;
          }

          v15 = v8;
        }
      }

LABEL_10:
      ++*v15;
      goto LABEL_11;
    }

    v15 = v9;
    if (!v6)
    {
      goto LABEL_10;
    }

    v15 = v12;
    if (v6 == 1)
    {
      goto LABEL_10;
    }

LABEL_11:
    ++v6;
  }

  while (v6 != 8);
  v16 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = (&roamCacheInfo + 104 * a3);
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    v19 = v17[3];
    v20 = v17[4];
    v21 = v17[5];
    v22 = v17[6];
    v23 = v17[7];
    *buf = 136448258;
    v27 = "[RoamPolicyStore locateTheNeighbor:cacheRssi:]";
    v28 = 1024;
    v29 = 1001;
    v30 = 2112;
    v31 = v18;
    v32 = 2048;
    v33 = a4;
    v34 = 2048;
    v35 = v19;
    v36 = 2048;
    v37 = v20;
    v38 = 2048;
    v39 = v21;
    v40 = 2048;
    v41 = v22;
    v42 = 2048;
    v43 = v23;
    _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_INFO, "%{public}s::%d:BSS =%@ BSSCacheRSSI =%ld HighRSSI =%ld MidRssi =%ld UpperMid =%ld LowRssi =%ld ReallyLow =%ld", buf, 0x58u);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)resetAdaptiveRoamingStateMachine:(id)a3
{
  v4 = a3;
  [v4 setRoamTriggerRssi:4294967168];
  [v4 setNeighborChannels:0];

  v5 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  [v5 updateManagedObjectContextWithoutSave];
}

- (void)updateNeighborChannelsInCoreDataWith:(id)a3 bss:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x1E695DFA8];
  v10 = [RoamPolicyStore neighborChannelsOf:v7];
  v11 = [v9 setWithSet:v10];

  v12 = [v6 chanInfoDictionary];
  [v11 addObject:v12];

  v13 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v7 bssid];
    v15 = [v7 network];
    v16 = [v15 ssid];
    v19 = 136447490;
    v20 = "[RoamPolicyStore updateNeighborChannelsInCoreDataWith:bss:]";
    v21 = 1024;
    v22 = 1028;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v16;
    v27 = 1024;
    v28 = [v6 channel];
    v29 = 1024;
    v30 = [v6 band];
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:[BSS:%@ SSID:%@] Added Channel %hd Band %hd", &v19, 0x32u);
  }

  [v7 setNeighborChannels:v11];
  v17 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  [v17 updateManagedObjectContextWithoutSave];

  objc_autoreleasePoolPop(v8);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)storeNeighborsInfoLearningsFromRoamInfo:(id)a3 neighborCount:(unint64_t)a4
{
  v102 = *MEMORY[0x1E69E9840];
  v70 = a3;
  v61 = objc_autoreleasePoolPush();
  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    v83 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
    v84 = 1024;
    v85 = 1044;
    v86 = 2048;
    v87 = a4;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_INFO, "%{public}s::%d:neighborCount: %lu", buf, 0x1Cu);
  }

  v64 = a4;

  if (!v70)
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    v83 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
    v84 = 1024;
    v85 = 1046;
    v58 = "%{public}s::%d:bssMO nil";
    goto LABEL_34;
  }

  if (!a4)
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    v83 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
    v84 = 1024;
    v85 = 1047;
    v58 = "%{public}s::%d:neighborCount is 0";
LABEL_34:
    v59 = v56;
    v60 = 18;
    goto LABEL_37;
  }

  if (a4 >= 0xA)
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446722;
    v83 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
    v84 = 1024;
    v85 = 1048;
    v86 = 2048;
    v87 = a4;
    v58 = "%{public}s::%d:neighborCount %lu greater than kMaxNumOfNeighbors.. bailing";
    v59 = v56;
    v60 = 28;
LABEL_37:
    _os_log_impl(&dword_1C8460000, v59, OS_LOG_TYPE_ERROR, v58, buf, v60);
    goto LABEL_29;
  }

  v71 = [MEMORY[0x1E695DF70] array];
  v63 = [BSSMO bssManagedObjectPropertyValue:v70 forKey:@"NeighborInfo"];
  if (v63)
  {
    v74 = [MEMORY[0x1E695DF70] arrayWithArray:?];
    if (!v74)
    {
      v74 = 0;
      goto LABEL_14;
    }

    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v74 count];
      v8 = [v70 bssid];
      *buf = 136446978;
      v83 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
      v84 = 1024;
      v85 = 1056;
      v86 = 2048;
      v87 = v7;
      v88 = 2112;
      v89 = v8;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Prev Neighbor count:%lu for BSSID:%@", buf, 0x26u);
    }
  }

  else
  {
    v74 = [MEMORY[0x1E695DF70] array];
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v70 bssid];
      *buf = 136446722;
      v83 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
      v84 = 1024;
      v85 = 1060;
      v86 = 2112;
      v87 = v9;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:No Neighbor Info for BSSID:%@", buf, 0x1Cu);
    }
  }

LABEL_14:
  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v70 bssid];
    *buf = 136446978;
    v83 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
    v84 = 1024;
    v85 = 1063;
    v86 = 2048;
    v87 = v64;
    v88 = 2112;
    v89 = v11;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:new Neighbor count:%lu  Info for BSSID:%@", buf, 0x26u);
  }

  v12 = &roamInfo;
  v13 = v64;
  do
  {
    context = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x1E695DF90] dictionary];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    [v14 setValue:v15 forKey:@"NeighborBssid"];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[3]];
    [v14 setValue:v16 forKey:@"NeighborBssNumRoamDueToLowRssi"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[4]];
    [v14 setValue:v17 forKey:@"NeighborBssNumRoamDueToBTM"];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[5]];
    [v14 setValue:v18 forKey:@"NeighborBssNumRoamDueToLazyScan"];

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[6]];
    [v14 setValue:v19 forKey:@"NeighborBssNumRoamDueToBeaconLoss"];

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[7]];
    [v14 setValue:v20 forKey:@"NeighborBssNumRoamDueToLinkLossSuppression"];

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[8]];
    [v14 setValue:v21 forKey:@"NeighborBssNumRoamDueToFastRoamFailure"];

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[9]];
    [v14 setValue:v22 forKey:@"NeighborBssNumRoamDueToTSpecRejection"];

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[10]];
    [v14 setValue:v23 forKey:@"NeighborBssNumRoamDueToMinTxRate"];

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[11]];
    [v14 setValue:v24 forKey:@"NeighborBssNumRoamDueToAsymmetricChannel"];

    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[12]];
    [v14 setValue:v25 forKey:@"NeighborBssNumRoamDueToLowRssiAndChannelUsage"];

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[13]];
    [v14 setValue:v26 forKey:@"NeighborBssNumRoamDueToRadar"];

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[14]];
    [v14 setValue:v27 forKey:@"NeighborBssNumRoamDueToCSA"];

    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[15]];
    [v14 setValue:v28 forKey:@"NeighborBssNumRoamDueToEstimatedTPutLow"];

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[16]];
    [v14 setValue:v29 forKey:@"NeighborBssNumRoamDueToSilentRoam"];

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[17]];
    [v14 setValue:v30 forKey:@"NeighborBssNumRoamDueToInactivity"];

    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[18]];
    [v14 setValue:v31 forKey:@"NeighborBssNumRoamDueToRoamScanTimeout"];

    v32 = [MEMORY[0x1E696AD98] numberWithInteger:v12[19]];
    [v14 setValue:v32 forKey:@"NeighborBssNumRoamOriginRssiHigh"];

    v33 = [MEMORY[0x1E696AD98] numberWithInteger:v12[20]];
    [v14 setValue:v33 forKey:@"NeighborBssNumRoamOriginRssiUpperHigh"];

    v34 = [MEMORY[0x1E696AD98] numberWithInteger:v12[21]];
    [v14 setValue:v34 forKey:@"NeighborBssNumRoamOriginRssiOptimum"];

    v35 = [MEMORY[0x1E696AD98] numberWithInteger:v12[22]];
    [v14 setValue:v35 forKey:@"NeighborBssNumRoamOriginRssiUpperOptimum"];

    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v12[23]];
    [v14 setValue:v36 forKey:@"NeighborBssNumRoamOriginRssiMid"];

    v37 = [MEMORY[0x1E696AD98] numberWithInteger:v12[24]];
    [v14 setValue:v37 forKey:@"NeighborBssNumRoamOriginRssiUpperMid"];

    v38 = [MEMORY[0x1E696AD98] numberWithInteger:v12[25]];
    [v14 setValue:v38 forKey:@"NeighborBssNumRoamOriginRssiLow"];

    v39 = [MEMORY[0x1E696AD98] numberWithInteger:v12[26]];
    [v14 setValue:v39 forKey:@"NeighborBssNumLazyRoamOriginRssiHigh"];

    v40 = [MEMORY[0x1E696AD98] numberWithInteger:v12[27]];
    [v14 setValue:v40 forKey:@"NeighborBssNumLazyRoamOriginRssiUpperHigh"];

    v41 = [MEMORY[0x1E696AD98] numberWithInteger:v12[28]];
    [v14 setValue:v41 forKey:@"NeighborBssNumLazyRoamOriginRssiOptimum"];

    v42 = [MEMORY[0x1E696AD98] numberWithInteger:v12[29]];
    [v14 setValue:v42 forKey:@"NeighborBssNumLazyRoamOriginRssiUpperOptimum"];

    v43 = [MEMORY[0x1E696AD98] numberWithInteger:v12[30]];
    [v14 setValue:v43 forKey:@"NeighborBssNumLazyRoamOriginRssiMid"];

    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    v72 = v13;
    if (v74 && [v74 count])
    {
      v78 = 0;
      v79 = &v78;
      v80 = 0x2020000000;
      v81 = -1;
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __73__RoamPolicyStore_storeNeighborsInfoLearningsFromRoamInfo_neighborCount___block_invoke;
      v75[3] = &unk_1E830F4A8;
      v45 = v44;
      v76 = v45;
      v77 = &v78;
      [v74 enumerateObjectsUsingBlock:v75];
      if (v79[3] != -1)
      {
        v69 = [v74 objectAtIndex:?];
        v46 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
        [v46 addEntriesFromDictionary:v14];
        [v74 replaceObjectAtIndex:v79[3] withObject:v46];
        v47 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v66 = v79[3];
          log = v47;
          v48 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiHigh"];
          v65 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiUpperHigh"];
          v68 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiOptimum"];
          v49 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiMid"];
          v50 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiUpperMid"];
          v51 = [v46 valueForKey:@"NeighborBssNumRoamOriginRssiLow"];
          *buf = 136448514;
          v83 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
          v84 = 1024;
          v85 = 1132;
          v86 = 2048;
          v87 = v66;
          v88 = 2112;
          v89 = v45;
          v90 = 2112;
          v91 = v48;
          v92 = 2112;
          v93 = v65;
          v94 = 2112;
          v95 = v68;
          v96 = 2112;
          v97 = v49;
          v98 = 2112;
          v99 = v50;
          v100 = 2112;
          v101 = v51;
          _os_log_impl(&dword_1C8460000, log, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Replaced index %lu with Neighbor:%@ LowRssiRoam (High:%@ UpperHigh:%@ Opt:%@ Mid:%@ UpperMid:%@ Low:%@)", buf, 0x62u);

          v47 = log;
        }

        _Block_object_dispose(&v78, 8);
        goto LABEL_27;
      }

      _Block_object_dispose(&v78, 8);
    }

    v52 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v53 = [v70 bssid];
      *buf = 136446978;
      v83 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamInfo:neighborCount:]";
      v84 = 1024;
      v85 = 1137;
      v86 = 2112;
      v87 = v53;
      v88 = 2112;
      v89 = v44;
      _os_log_impl(&dword_1C8460000, v52, OS_LOG_TYPE_DEBUG, "%{public}s::%d:New Neighbor for BSSID:%@ --- %@", buf, 0x26u);
    }

    [v71 addObject:v14];
LABEL_27:

    objc_autoreleasePoolPop(context);
    v12 += 44;
    v13 = v72 - 1;
  }

  while (v72 != 1);
  [v74 addObjectsFromArray:v71];
  v54 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  [v54 setBssManagedObjectPropertyValueForKeyWithoutSave:v70 forKey:@"NeighborInfo" withValue:v74];

  v55 = [v70 bssid];
  [(RoamPolicyStore *)self setDeploymentFromRoamInfo:v55 neighborCount:v64];

  v56 = v71;
LABEL_29:

  objc_autoreleasePoolPop(v61);
  v57 = *MEMORY[0x1E69E9840];
}

void __73__RoamPolicyStore_storeNeighborsInfoLearningsFromRoamInfo_neighborCount___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v7 = [a2 valueForKey:@"NeighborBssid"];
    if ([v7 isEqualToString:*(a1 + 32)])
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

- (void)storeNeighborsInfoLearningsFromRoamCacheInfo:(id)a3 neighborCount:(unint64_t)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v41 = a3;
  context = objc_autoreleasePoolPush();
  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    v52 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
    v53 = 1024;
    v54 = 1158;
    v55 = 2048;
    v56 = a4;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_INFO, "%{public}s::%d:neighborCount: %lu", buf, 0x1Cu);
  }

  v40 = a4;

  if (!v41)
  {
    v32 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    v52 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
    v53 = 1024;
    v54 = 1160;
    v34 = "%{public}s::%d:bssMO nil";
    goto LABEL_34;
  }

  if (!a4)
  {
    v32 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446466;
    v52 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
    v53 = 1024;
    v54 = 1161;
    v34 = "%{public}s::%d:neighborCount is 0";
LABEL_34:
    v35 = v32;
    v36 = 18;
    goto LABEL_37;
  }

  if (a4 >= 0xA)
  {
    v32 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 136446722;
    v52 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
    v53 = 1024;
    v54 = 1162;
    v55 = 2048;
    v56 = a4;
    v34 = "%{public}s::%d:neighborCount %lu greater than kMaxNumOfNeighbors.. bailing";
    v35 = v32;
    v36 = 28;
LABEL_37:
    _os_log_impl(&dword_1C8460000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
    goto LABEL_29;
  }

  v42 = [MEMORY[0x1E695DF70] array];
  v38 = [BSSMO bssManagedObjectPropertyValue:v41 forKey:@"NeighborInfo"];
  if (v38)
  {
    v43 = [MEMORY[0x1E695DF70] arrayWithArray:?];
    if (!v43)
    {
      v43 = 0;
      goto LABEL_14;
    }

    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v43 count];
      v8 = [v41 bssid];
      *buf = 136447234;
      v52 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
      v53 = 1024;
      v54 = 1170;
      v55 = 2048;
      v56 = v7;
      v57 = 2112;
      v58 = v8;
      v59 = 2112;
      v60 = v43;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Prev Neighbor count:%lu  Info for BSSID:%@ --- %@", buf, 0x30u);
    }
  }

  else
  {
    v43 = [MEMORY[0x1E695DF70] array];
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v41 bssid];
      *buf = 136446722;
      v52 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
      v53 = 1024;
      v54 = 1174;
      v55 = 2112;
      v56 = v9;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:No Neighbor Info for BSSID:%@", buf, 0x1Cu);
    }
  }

LABEL_14:
  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v41 bssid];
    *buf = 136446978;
    v52 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
    v53 = 1024;
    v54 = 1177;
    v55 = 2048;
    v56 = v40;
    v57 = 2112;
    v58 = v11;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:new Neighbor count:%lu  Info for BSSID:%@", buf, 0x26u);
  }

  v12 = &roamCacheInfo;
  v13 = v40;
  do
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    [v15 setValue:v16 forKey:@"NeighborBssid"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[3]];
    [v15 setValue:v17 forKey:@"NeighborBssNumRoamCacheRssiHigh"];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[4]];
    [v15 setValue:v18 forKey:@"NeighborBssNumRoamCacheRssiMid"];

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[5]];
    [v15 setValue:v19 forKey:@"NeighborBssNumRoamCacheRssiUpperMid"];

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[6]];
    [v15 setValue:v20 forKey:@"NeighborBssNumRoamCacheRssiLow"];

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12[7]];
    [v15 setValue:v21 forKey:@"NeighborBssNumRoamCacheRssiReallyLow"];

    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    if (v43 && [v43 count])
    {
      v47 = 0;
      v48 = &v47;
      v49 = 0x2020000000;
      v50 = -1;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __78__RoamPolicyStore_storeNeighborsInfoLearningsFromRoamCacheInfo_neighborCount___block_invoke;
      v44[3] = &unk_1E830F4A8;
      v23 = v22;
      v45 = v23;
      v46 = &v47;
      [v43 enumerateObjectsUsingBlock:v44];
      if (v48[3] != -1)
      {
        v24 = [v43 objectAtIndex:?];
        v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v24];
        [v25 addEntriesFromDictionary:v15];
        [v43 replaceObjectAtIndex:v48[3] withObject:v25];
        v26 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = v48[3];
          *buf = 136446978;
          v52 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
          v53 = 1024;
          v54 = 1214;
          v55 = 2112;
          v56 = v23;
          v57 = 2048;
          v58 = v27;
          _os_log_impl(&dword_1C8460000, v26, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Replaced neighbor %@ dict at existing array index %lu", buf, 0x26u);
        }

        _Block_object_dispose(&v47, 8);
        goto LABEL_27;
      }

      _Block_object_dispose(&v47, 8);
    }

    v28 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v41 bssid];
      *buf = 136446978;
      v52 = "[RoamPolicyStore storeNeighborsInfoLearningsFromRoamCacheInfo:neighborCount:]";
      v53 = 1024;
      v54 = 1219;
      v55 = 2112;
      v56 = v29;
      v57 = 2112;
      v58 = v22;
      _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:New Neighbor for BSSID:%@ --- %@", buf, 0x26u);
    }

    [v42 addObject:v15];
LABEL_27:

    objc_autoreleasePoolPop(v14);
    v12 += 13;
    --v13;
  }

  while (v13);
  [v43 addObjectsFromArray:v42];
  v30 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  [v30 setBssManagedObjectPropertyValueForKeyWithoutSave:v41 forKey:@"NeighborInfo" withValue:v43];

  v31 = [v41 bssid];
  [(RoamPolicyStore *)self setDeploymentFromRoamCacheInfo:v31 neighborCount:v40];

  v32 = v42;
LABEL_29:

  objc_autoreleasePoolPop(context);
  v33 = *MEMORY[0x1E69E9840];
}

void __78__RoamPolicyStore_storeNeighborsInfoLearningsFromRoamCacheInfo_neighborCount___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v7 = [a2 valueForKey:@"NeighborBssid"];
    if ([v7 isEqualToString:*(a1 + 32)])
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

- (void)setDeploymentFromRoamInfo:(id)a3 neighborCount:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (!v6)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v20 = 136446466;
    v21 = "[RoamPolicyStore setDeploymentFromRoamInfo:neighborCount:]";
    v22 = 1024;
    v23 = 1238;
    v17 = "%{public}s::%d:bssid nil";
    v18 = v8;
    v19 = 18;
LABEL_16:
    _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, v17, &v20, v19);
    goto LABEL_11;
  }

  if (a4 >= 0xA)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v20 = 136446722;
    v21 = "[RoamPolicyStore setDeploymentFromRoamInfo:neighborCount:]";
    v22 = 1024;
    v23 = 1239;
    v24 = 2048;
    v25 = a4;
    v17 = "%{public}s::%d:neighborCount %lu greater than kMaxNumOfNeighbors.. bailing";
    v18 = v8;
    v19 = 28;
    goto LABEL_16;
  }

  v8 = [MEMORY[0x1E695DFA8] set];
  [v8 addObject:v6];
  if (a4)
  {
    v9 = &roamInfo;
    v10 = a4;
    do
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      if (v11)
      {
        [v8 addObject:v11];
      }

      v9 += 352;
      --v10;
    }

    while (v10);
  }

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v20 = 136447234;
    v21 = "[RoamPolicyStore setDeploymentFromRoamInfo:neighborCount:]";
    v22 = 1024;
    v23 = 1251;
    v24 = 2112;
    v25 = v6;
    v26 = 2048;
    v27 = a4;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:bssid:%@ neighborCount: %lu neigbors: %@", &v20, 0x30u);
  }

  v13 = [v8 allObjects];
  v14 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  v15 = [v14 managedObjectContext];
  [BSSMO coalesceBssidsIntoDeployment:v13 moc:v15];

LABEL_11:
  objc_autoreleasePoolPop(v7);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setDeploymentFromRoamCacheInfo:(id)a3 neighborCount:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (!v6)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v20 = 136446466;
    v21 = "[RoamPolicyStore setDeploymentFromRoamCacheInfo:neighborCount:]";
    v22 = 1024;
    v23 = 1263;
    v17 = "%{public}s::%d:bssid nil";
    v18 = v8;
    v19 = 18;
LABEL_16:
    _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, v17, &v20, v19);
    goto LABEL_11;
  }

  if (a4 >= 0xA)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v20 = 136446722;
    v21 = "[RoamPolicyStore setDeploymentFromRoamCacheInfo:neighborCount:]";
    v22 = 1024;
    v23 = 1264;
    v24 = 2048;
    v25 = a4;
    v17 = "%{public}s::%d:neighborCount %lu greater than kMaxNumOfNeighbors.. bailing";
    v18 = v8;
    v19 = 28;
    goto LABEL_16;
  }

  v8 = [MEMORY[0x1E695DFA8] set];
  [v8 addObject:v6];
  if (a4)
  {
    v9 = &roamCacheInfo;
    v10 = a4;
    do
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      if (v11)
      {
        [v8 addObject:v11];
      }

      v9 += 104;
      --v10;
    }

    while (v10);
  }

  v12 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v20 = 136446978;
    v21 = "[RoamPolicyStore setDeploymentFromRoamCacheInfo:neighborCount:]";
    v22 = 1024;
    v23 = 1276;
    v24 = 2048;
    v25 = a4;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:neighborCount: %lu neigbors: %@", &v20, 0x26u);
  }

  v13 = [v8 allObjects];
  v14 = [(RoamPolicyStore *)self roamPolicyMOHandler];
  v15 = [v14 managedObjectContext];
  [BSSMO coalesceBssidsIntoDeployment:v13 moc:v15];

LABEL_11:
  objc_autoreleasePoolPop(v7);

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)rangeStringWithRssiLevel:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 >= 8)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v15 = "+[RoamPolicyStore rangeStringWithRssiLevel:]";
      v16 = 1024;
      v17 = 1289;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:invalid level nil", buf, 0x12u);
    }

    v10 = 0;
  }

  else
  {
    v3 = &roamOriginRssiLevels[a3];
    v4 = *v3;
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v3[1]];
    v7 = [v6 stringValue];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v9 = [v8 stringValue];
    v10 = [v5 stringWithFormat:@"[%@, %@]", v7, v9];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)deriveRoamDeltaFromRoamCacheInfo:(id)a3 neighborCount:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v16 = 136446466;
    v17 = "[RoamPolicyStore deriveRoamDeltaFromRoamCacheInfo:neighborCount:]";
    v18 = 1024;
    v19 = 1305;
    v13 = "%{public}s::%d:bssid nil";
    v14 = v7;
    v15 = 18;
LABEL_16:
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, v13, &v16, v15);
    goto LABEL_11;
  }

  if (a4 >= 0xA)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v16 = 136446722;
    v17 = "[RoamPolicyStore deriveRoamDeltaFromRoamCacheInfo:neighborCount:]";
    v18 = 1024;
    v19 = 1306;
    v20 = 2048;
    v21 = a4;
    v13 = "%{public}s::%d:neighborCount %lu greater than kMaxNumOfNeighbors.. bailing";
    v14 = v7;
    v15 = 28;
    goto LABEL_16;
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  [v7 addObject:v5];
  if (a4)
  {
    v8 = &roamCacheInfo;
    v9 = a4;
    do
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      if (v10)
      {
        [v7 addObject:v10];
      }

      v8 += 104;
      --v9;
    }

    while (v9);
  }

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136446978;
    v17 = "[RoamPolicyStore deriveRoamDeltaFromRoamCacheInfo:neighborCount:]";
    v18 = 1024;
    v19 = 1318;
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:neighborCount: %lu neigbors: %@", &v16, 0x26u);
  }

LABEL_11:
  objc_autoreleasePoolPop(v6);

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)extractChannelList:(id)a3 channelKeyPath:(id)a4 bandKeyPath:(id)a5 logFor:(const char *)a6
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v33 = a5;
  v32 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v35;
    *&v12 = 136446978;
    v30 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = [v16 valueForKey:{v9, v30}];
        if (v17)
        {
          v18 = v17;
          v19 = [v16 valueForKey:v9];
          v20 = [v19 integerValue];

          if (v20)
          {
            v21 = [v16 valueForKey:v9];
            v22 = [v21 shortValue];
            v23 = [v16 valueForKey:v33];
            v24 = +[WAChanInfo chanInfoWithChannel:band:](WAChanInfo, "chanInfoWithChannel:band:", v22, [v23 shortValue]);

            if (v24)
            {
              v25 = [v24 chanInfoDictionary];
              [v32 addObject:v25];

              v26 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                v27 = [v24 chanInfoDictionary];
                *buf = v30;
                v39 = "+[RoamPolicyStore extractChannelList:channelKeyPath:bandKeyPath:logFor:]";
                v40 = 1024;
                v41 = 1342;
                v42 = 2080;
                v43 = a6;
                v44 = 2112;
                v45 = v27;
                _os_log_impl(&dword_1C8460000, v26, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s - %@", buf, 0x26u);
              }
            }
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v13);
  }

  v28 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)neighborChannelsAsArrayOfChanInfo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 neighborChannels];

  if (v5)
  {
    v6 = [v3 neighborChannels];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [v3 neighborChannels];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [WAChanInfo chanInfoWithObjectHavingChInfo:*(*(&v16 + 1) + 8 * i) withPrefix:@"c"];
            if (v13)
            {
              [v4 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)neighborChannelsOf:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 neighborChannels];

    if (v5)
    {
      v6 = [v4 neighborChannels];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_11;
      }

      v8 = [v4 neighborChannels];
      v9 = [v8 anyObject];
      objc_opt_class();
      v10 = objc_opt_isKindOfClass();

      if (v10)
      {
        v5 = [v4 neighborChannels];
      }

      else
      {
LABEL_11:
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end