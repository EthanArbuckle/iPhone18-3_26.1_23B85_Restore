@interface SATelemetryManager
+ (id)SATelAppInfoTranslationTable;
+ (id)SATelTimeInfoTranslationTable;
+ (id)SATelTotalsDirStatsInfoTranslationTable;
+ (id)SATelTotalsInfoTranslationTable;
+ (id)getLastSentTelemetryDate:(BOOL)a3;
+ (id)newWithSAFOptions:(unint64_t)a3;
+ (void)clearLastTelemetryData:(id)a3;
+ (void)getLastTelemetryData:(id)a3;
+ (void)updateLastSentTelemetryDate:(BOOL)a3;
- (SATelemetryManager)initWithSAFOptions:(unint64_t)a3;
- (double)stopTimeForTimeInfoEntry:(int64_t)a3;
- (id)createAppColumn:(id)a3;
- (id)dictionaryDescription;
- (id)fillFilteredInfoDict:(id)a3 withNumberOfApps:(unint64_t)a4 withAppInfoArr:(id)a5 withFilterCriteria:(int64_t)a6 withMetricType:(id)a7;
- (id)getFirstPartyAppsInfoKeys;
- (id)getTelAppInfoTranslation:(int64_t)a3;
- (id)getTelTimeInfoTranslation:(int64_t)a3;
- (id)getTelTotalsDirStatsInfoTranslation:(int64_t)a3;
- (id)getTelTotalsInfoTranslation:(int64_t)a3;
- (id)getThirdPartyAppsInfoKeys;
- (id)getTimeInfoTranslatedDictionary;
- (id)getTotalsDirstatInfoTranslatedDictionary;
- (id)getTotalsInfoTranslatedDictionary;
- (id)getVendorValueforBundleIDs:(id)a3;
- (id)setAppInfoDictWithFirstPartyAppsKeys:(id)a3 WithThirdPartyAppKeys:(id)a4;
- (id)sortAppsInfo:(id)a3 by:(int64_t)a4 withOption:(int64_t)a5;
- (unint64_t)getValueForAppInfoEntry:(int64_t)a3 forBundleIDs:(id)a4;
- (unint64_t)getValueForDirStatsTotalsInfoEntry:(int64_t)a3;
- (unint64_t)getValueForTimeInfoEntry:(int64_t)a3;
- (unint64_t)getValueForTotalsInfoEntry:(int64_t)a3;
- (void)addValue:(unint64_t)a3 forAppInfoEntry:(int64_t)a4 forBundleIDs:(id)a5;
- (void)addValue:(unint64_t)a3 forDirStatsTotalsInfoEntry:(int64_t)a4;
- (void)addValue:(unint64_t)a3 forTimeInfoEntry:(int64_t)a4;
- (void)addValue:(unint64_t)a3 forTotalsInfoEntry:(int64_t)a4;
- (void)hasResultsError;
- (void)removeAppsWithMultipleVendors;
- (void)saveTelemetryDataToDisk:(id)a3 thirdPartyAppKeys:(id)a4;
- (void)setSystemDataSize:(unint64_t)a3;
- (void)setValue:(unint64_t)a3 forAppInfoEntry:(int64_t)a4 forBundleIDs:(id)a5;
- (void)setValue:(unint64_t)a3 forDirStatsTotalsInfoEntry:(int64_t)a4;
- (void)setValue:(unint64_t)a3 forTimeInfoEntry:(int64_t)a4;
- (void)setValue:(unint64_t)a3 forTotalsInfoEntry:(int64_t)a4;
- (void)startTimeForTimeInfoEntry:(int64_t)a3;
- (void)subtractValue:(unint64_t)a3 forAppInfoEntry:(int64_t)a4 forBundleIDs:(id)a5;
- (void)subtractValue:(unint64_t)a3 forTotalsInfoEntry:(int64_t)a4;
- (void)updateBundleIDs:(id)a3 appCacheSize:(unint64_t)a4;
- (void)updateBundleIDs:(id)a3 appCacheSize:(unint64_t)a4 CDPluginSize:(unint64_t)a5;
- (void)updateBundleIDs:(id)a3 attributionSize:(unint64_t)a4 attributionCloneSize:(unint64_t)a5 attributionTagCount:(unint64_t)a6;
- (void)updateBundleIDs:(id)a3 usedDirStat:(BOOL)a4 fixedSize:(unint64_t)a5 dataSize:(unint64_t)a6 cloneSize:(unint64_t)a7 purgeableSize:(unint64_t)a8 fileCount:(unint64_t)a9;
- (void)updateBundleIDs:(id)a3 withPurgeableTagSize:(unint64_t)a4;
- (void)updateBundleIDs:(id)a3 withSUPurgeableSize:(unint64_t)a4;
- (void)updateCacheFileCount:(unint64_t)a3 forBundleIDs:(id)a4;
- (void)updateCloneInfoWithBundleIDs:(id)a3 withItemSize:(id)a4;
- (void)updateDirStatInfo:(BOOL)a3 usedDirsStat:(BOOL)a4 failedDirStat:(BOOL)a5 skippedDirStat:(BOOL)a6;
- (void)updateDirStatInfo:(id)a3;
- (void)updateSAFOptionWithPathsList:(id)a3;
- (void)updateTotalsInfo:(unint64_t)a3 totalPurgeable:(unint64_t)a4;
@end

@implementation SATelemetryManager

- (SATelemetryManager)initWithSAFOptions:(unint64_t)a3
{
  v41.receiver = self;
  v41.super_class = SATelemetryManager;
  v4 = [(SATelemetryManager *)&v41 init];
  if (v4)
  {
    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];
    runSignature = v4->_runSignature;
    v4->_runSignature = v6;

    v4->_appsNumber = 0;
    v4->_SAFOptions = a3;
    v8 = +[SASupport getiCloudPlanSizeGB];
    icloudPlan = v4->_icloudPlan;
    v4->_icloudPlan = v8;

    v10 = objc_opt_new();
    appsInfo = v4->_appsInfo;
    v4->_appsInfo = v10;

    v12 = objc_opt_new();
    totalsInfo = v4->_totalsInfo;
    v4->_totalsInfo = v12;

    v14 = v4->_totalsInfo;
    v15 = [(SATelemetryManager *)v4 getTelTotalsInfoTranslation:0];
    [(NSMutableDictionary *)v14 setValue:@"totals-info" forKey:v15];

    v16 = v4->_totalsInfo;
    v17 = v4->_runSignature;
    v18 = [(SATelemetryManager *)v4 getTelTotalsInfoTranslation:1];
    [(NSMutableDictionary *)v16 setValue:v17 forKey:v18];

    v19 = v4->_totalsInfo;
    v20 = v4->_icloudPlan;
    v21 = [(SATelemetryManager *)v4 getTelTotalsInfoTranslation:2];
    [(NSMutableDictionary *)v19 setValue:v20 forKey:v21];

    v22 = objc_opt_new();
    totalsDstatsInfo = v4->_totalsDstatsInfo;
    v4->_totalsDstatsInfo = v22;

    v24 = v4->_totalsDstatsInfo;
    v25 = [(SATelemetryManager *)v4 getTelTotalsDirStatsInfoTranslation:0];
    [(NSMutableDictionary *)v24 setValue:@"totals-dstats-info" forKey:v25];

    v26 = v4->_totalsDstatsInfo;
    v27 = v4->_runSignature;
    v28 = [(SATelemetryManager *)v4 getTelTotalsDirStatsInfoTranslation:1];
    [(NSMutableDictionary *)v26 setValue:v27 forKey:v28];

    v29 = objc_opt_new();
    timeInfo = v4->_timeInfo;
    v4->_timeInfo = v29;

    v31 = v4->_timeInfo;
    v32 = v4->_runSignature;
    v33 = [(SATelemetryManager *)v4 getTelTimeInfoTranslation:1];
    [(NSMutableDictionary *)v31 setValue:v32 forKey:v33];

    v34 = objc_opt_new();
    firstPartyfilteredInfo = v4->_firstPartyfilteredInfo;
    v4->_firstPartyfilteredInfo = v34;

    v36 = objc_opt_new();
    thirdPartyfilteredInfo = v4->_thirdPartyfilteredInfo;
    v4->_thirdPartyfilteredInfo = v36;

    v38 = objc_opt_new();
    times = v4->_times;
    v4->_times = v38;
  }

  return v4;
}

+ (id)newWithSAFOptions:(unint64_t)a3
{
  v4 = [SATelemetryManager alloc];

  return [(SATelemetryManager *)v4 initWithSAFOptions:a3];
}

- (id)createAppColumn:(id)a3
{
  v4 = a3;
  v5 = [SAUtilities breakCommaSeparatedStringToComponents:v4];
  v6 = [v5 count];
  v7 = objc_opt_new();
  if (v6 == 1)
  {
    v8 = 2;
  }

  else
  {
    v9 = [v5 anyObject];
    v10 = [(SATelemetryManager *)self getTelAppInfoTranslation:2];
    [v7 setValue:v9 forKey:v10];

    v8 = 26;
  }

  v11 = [(SATelemetryManager *)self getTelAppInfoTranslation:v8];
  [v7 setValue:v4 forKey:v11];

  v12 = [(SATelemetryManager *)self getTelAppInfoTranslation:0];
  [v7 setValue:@"app-info" forKey:v12];

  runSignature = self->_runSignature;
  v14 = [(SATelemetryManager *)self getTelAppInfoTranslation:1];
  [v7 setValue:runSignature forKey:v14];

  v15 = [NSNumber numberWithUnsignedLongLong:v6];
  v16 = [(SATelemetryManager *)self getTelAppInfoTranslation:8];
  [v7 setValue:v15 forKey:v16];

  v17 = [NSNumber numberWithUnsignedLongLong:[(SATelemetryManager *)self appsNumber]];
  v18 = [(SATelemetryManager *)self getTelAppInfoTranslation:6];
  [v7 setValue:v17 forKey:v18];

  v19 = [NSNumber numberWithUnsignedLongLong:[(SATelemetryManager *)self SAFOptions]];
  v20 = [(SATelemetryManager *)self getTelAppInfoTranslation:5];
  [v7 setValue:v19 forKey:v20];

  icloudPlan = self->_icloudPlan;
  v22 = [(SATelemetryManager *)self getTelAppInfoTranslation:4];
  [v7 setValue:icloudPlan forKey:v22];

  v23 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v24 = v5;
  v25 = [v24 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v25)
  {
    v27 = 0;
    v35 = v24;
LABEL_15:

    goto LABEL_17;
  }

  v26 = v25;
  v43 = v4;
  v27 = 0;
  v28 = *v45;
  do
  {
    v29 = v24;
    v30 = 0;
    v31 = v27;
    do
    {
      if (*v45 != v28)
      {
        objc_enumerationMutation(v29);
      }

      v27 = [SAQuery getLSBundleRecordForBundle:*(*(&v44 + 1) + 8 * v30)];

      v32 = [SAQuery guesstimateBundleId:v27];
      v33 = [v32 stringByReplacingOccurrencesOfString:@" withString:{", &stru_100066450}];

      [v23 addObject:v33];
      v30 = v30 + 1;
      v31 = v27;
    }

    while (v26 != v30);
    v24 = v29;
    v26 = [v29 countByEnumeratingWithState:&v44 objects:v48 count:16];
  }

  while (v26);

  if (v27)
  {
    v34 = [v27 bundleVersion];

    v4 = v43;
    if (!v34)
    {
      goto LABEL_17;
    }

    v35 = [v27 bundleVersion];
    v36 = [(SATelemetryManager *)self getTelAppInfoTranslation:7];
    [v7 setValue:v35 forKey:v36];

    goto LABEL_15;
  }

  v4 = v43;
LABEL_17:
  v37 = v23;
  v38 = [v23 allObjects];
  v39 = [v38 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

  v40 = [v39 componentsJoinedByString:{@", "}];
  v41 = [(SATelemetryManager *)self getTelAppInfoTranslation:3];
  [v7 setValue:v40 forKey:v41];

  [(NSMutableDictionary *)self->_appsInfo setValue:v7 forKey:v4];
  [(SATelemetryManager *)self setAppsNumber:[(SATelemetryManager *)self appsNumber]+ 1];

  return v7;
}

- (void)setValue:(unint64_t)a3 forAppInfoEntry:(int64_t)a4 forBundleIDs:(id)a5
{
  v13 = a5;
  v8 = objc_autoreleasePoolPush();
  v9 = self->_appsInfo;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)self->_appsInfo objectForKey:v13];
  if (!v10)
  {
    v10 = [(SATelemetryManager *)self createAppColumn:v13];
  }

  v11 = [NSNumber numberWithUnsignedLongLong:a3];
  v12 = [(SATelemetryManager *)self getTelAppInfoTranslation:a4];
  [v10 setValue:v11 forKey:v12];

  objc_sync_exit(v9);
  objc_autoreleasePoolPop(v8);
}

- (unint64_t)getValueForAppInfoEntry:(int64_t)a3 forBundleIDs:(id)a4
{
  v6 = a4;
  v7 = self->_appsInfo;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_appsInfo objectForKey:v6];
  if (v8)
  {
    v9 = [(SATelemetryManager *)self getTelAppInfoTranslation:a3];
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      v11 = [v10 longLongValue];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(v7);
  return v11;
}

- (id)getVendorValueforBundleIDs:(id)a3
{
  v4 = a3;
  v5 = self->_appsInfo;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_appsInfo objectForKey:v4];
  if (v6)
  {
    v7 = [(SATelemetryManager *)self getTelAppInfoTranslation:3];
    v8 = [v6 objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v5);

  return v8;
}

- (void)updateCacheFileCount:(unint64_t)a3 forBundleIDs:(id)a4
{
  [(SATelemetryManager *)self addValue:a3 forAppInfoEntry:29 forBundleIDs:a4];

  [(SATelemetryManager *)self addValue:a3 forTotalsInfoEntry:24];
}

- (void)addValue:(unint64_t)a3 forAppInfoEntry:(int64_t)a4 forBundleIDs:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v10 = v8;
    v9 = self->_appsInfo;
    objc_sync_enter(v9);
    [(SATelemetryManager *)self setValue:[(SATelemetryManager *)self getValueForAppInfoEntry:a4 forBundleIDs:v10]+ a3 forAppInfoEntry:a4 forBundleIDs:v10];
    objc_sync_exit(v9);

    v8 = v10;
  }
}

- (void)subtractValue:(unint64_t)a3 forAppInfoEntry:(int64_t)a4 forBundleIDs:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = self->_appsInfo;
    objc_sync_enter(v9);
    v10 = [(SATelemetryManager *)self getValueForAppInfoEntry:a4 forBundleIDs:v8];
    if (v10 >= a3)
    {
      [(SATelemetryManager *)self setValue:v10 - a3 forAppInfoEntry:a4 forBundleIDs:v8];
    }

    else
    {
      v11 = SALog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100041EE4();
      }
    }

    objc_sync_exit(v9);
  }
}

- (void)updateCloneInfoWithBundleIDs:(id)a3 withItemSize:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[SATelemetryManager addValue:forAppInfoEntry:forBundleIDs:](self, "addValue:forAppInfoEntry:forBundleIDs:", [v6 dataSize], 23, v7);
  -[SATelemetryManager addValue:forAppInfoEntry:forBundleIDs:](self, "addValue:forAppInfoEntry:forBundleIDs:", [v6 dataSize], 17, v7);
  -[SATelemetryManager addValue:forAppInfoEntry:forBundleIDs:](self, "addValue:forAppInfoEntry:forBundleIDs:", [v6 cloneSize], 25, v7);
  -[SATelemetryManager addValue:forAppInfoEntry:forBundleIDs:](self, "addValue:forAppInfoEntry:forBundleIDs:", [v6 cloneSize], 18, v7);
  -[SATelemetryManager addValue:forAppInfoEntry:forBundleIDs:](self, "addValue:forAppInfoEntry:forBundleIDs:", [v6 purgeableSize], 24, v7);
  -[SATelemetryManager addValue:forAppInfoEntry:forBundleIDs:](self, "addValue:forAppInfoEntry:forBundleIDs:", [v6 purgeableSize], 19, v7);

  v8 = [v6 cloneSize];

  [(SATelemetryManager *)self addValue:v8 forTotalsInfoEntry:20];
}

- (void)updateBundleIDs:(id)a3 usedDirStat:(BOOL)a4 fixedSize:(unint64_t)a5 dataSize:(unint64_t)a6 cloneSize:(unint64_t)a7 purgeableSize:(unint64_t)a8 fileCount:(unint64_t)a9
{
  v13 = a4;
  v15 = a3;
  v19 = v15;
  if (v13)
  {
    [(SATelemetryManager *)self addValue:a6 forAppInfoEntry:9 forBundleIDs:v15];
    [(SATelemetryManager *)self addValue:a6 forTotalsInfoEntry:6];
    [(SATelemetryManager *)self addValue:a8 forAppInfoEntry:10 forBundleIDs:v19];
    [(SATelemetryManager *)self addValue:a8 forTotalsInfoEntry:7];
    [(SATelemetryManager *)self addValue:a7 forAppInfoEntry:11 forBundleIDs:v19];
    [(SATelemetryManager *)self addValue:a7 forTotalsInfoEntry:8];
    [(SATelemetryManager *)self addValue:1 forAppInfoEntry:12 forBundleIDs:v19];
    v15 = v19;
  }

  [(SATelemetryManager *)self addValue:a5 forAppInfoEntry:22 forBundleIDs:v15];
  [(SATelemetryManager *)self addValue:a6 forAppInfoEntry:23 forBundleIDs:v19];
  [(SATelemetryManager *)self addValue:a7 forAppInfoEntry:25 forBundleIDs:v19];
  [(SATelemetryManager *)self addValue:a7 forTotalsInfoEntry:20];
  [(SATelemetryManager *)self addValue:a8 forAppInfoEntry:24 forBundleIDs:v19];
  v16 = v19;
  if (a9)
  {
    if (a5)
    {
      v17 = 23;
      v18 = 28;
    }

    else
    {
      if (!a6)
      {
        goto LABEL_9;
      }

      v17 = 22;
      v18 = 27;
    }

    [(SATelemetryManager *)self addValue:a9 forAppInfoEntry:v18 forBundleIDs:v19];
    [(SATelemetryManager *)self addValue:a9 forTotalsInfoEntry:v17];
    v16 = v19;
  }

LABEL_9:
}

- (void)updateBundleIDs:(id)a3 attributionSize:(unint64_t)a4 attributionCloneSize:(unint64_t)a5 attributionTagCount:(unint64_t)a6
{
  v10 = a3;
  [(SATelemetryManager *)self addValue:a4 forAppInfoEntry:23 forBundleIDs:v10];
  [(SATelemetryManager *)self addValue:a4 forAppInfoEntry:13 forBundleIDs:v10];
  [(SATelemetryManager *)self addValue:a4 forTotalsInfoEntry:10];
  [(SATelemetryManager *)self addValue:a5 forAppInfoEntry:15 forBundleIDs:v10];
  [(SATelemetryManager *)self addValue:a5 forTotalsInfoEntry:13];
  [(SATelemetryManager *)self addValue:a6 forAppInfoEntry:16 forBundleIDs:v10];

  [(SATelemetryManager *)self addValue:a6 forTotalsInfoEntry:14];
}

- (void)updateBundleIDs:(id)a3 withPurgeableTagSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SATelemetryManager *)self getValueForAppInfoEntry:5 forBundleIDs:v6];
  [(SATelemetryManager *)self addValue:a4 forAppInfoEntry:24 forBundleIDs:v6];
  [(SATelemetryManager *)self subtractValue:a4 forAppInfoEntry:23 forBundleIDs:v6];
  [(SATelemetryManager *)self addValue:a4 forAppInfoEntry:14 forBundleIDs:v6];
  [(SATelemetryManager *)self subtractValue:a4 forAppInfoEntry:13 forBundleIDs:v6];

  [(SATelemetryManager *)self subtractValue:a4 forTotalsInfoEntry:10];
  [(SATelemetryManager *)self addValue:a4 forTotalsInfoEntry:19];
  if (v7 == 1)
  {
    v8 = 11;
  }

  else
  {
    v8 = 12;
  }

  [(SATelemetryManager *)self addValue:a4 forTotalsInfoEntry:v8];
}

- (void)updateBundleIDs:(id)a3 appCacheSize:(unint64_t)a4 CDPluginSize:(unint64_t)a5
{
  v8 = a3;
  [(SATelemetryManager *)self addValue:a5 + a4 forAppInfoEntry:24 forBundleIDs:v8];
  [(SATelemetryManager *)self addValue:a4 forAppInfoEntry:20 forBundleIDs:v8];
  [(SATelemetryManager *)self addValue:a4 forTotalsInfoEntry:15];
  [(SATelemetryManager *)self addValue:a5 forAppInfoEntry:21 forBundleIDs:v8];

  [(SATelemetryManager *)self addValue:a5 forTotalsInfoEntry:16];
}

- (void)updateBundleIDs:(id)a3 appCacheSize:(unint64_t)a4
{
  [(SATelemetryManager *)self addValue:a4 forAppInfoEntry:20 forBundleIDs:a3];

  [(SATelemetryManager *)self addValue:a4 forTotalsInfoEntry:15];
}

- (void)updateBundleIDs:(id)a3 withSUPurgeableSize:(unint64_t)a4
{
  v6 = a3;
  [(SATelemetryManager *)self addValue:a4 forAppInfoEntry:23 forBundleIDs:v6];
  [(SATelemetryManager *)self subtractValue:a4 forAppInfoEntry:24 forBundleIDs:v6];
}

- (void)setSystemDataSize:(unint64_t)a3
{
  [(SATelemetryManager *)self setValue:a3 forAppInfoEntry:23 forBundleIDs:@"com.apple.fakeapp.SystemData"];

  [(SATelemetryManager *)self setValue:a3 forTotalsInfoEntry:18];
}

- (void)updateSAFOptionWithPathsList:(id)a3
{
  v4 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = self;
  obj = [(NSMutableDictionary *)self->_appsInfo allKeys];
  v5 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    v8 = &SBSCopyDisplayIdentifiers_ptr;
    v25 = *v35;
    do
    {
      v9 = 0;
      v26 = v6;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        if (([v10 isEqual:@"com.apple.fakeapp.SystemData"] & 1) == 0 && (objc_msgSend(v10, "isEqual:", @"com.apple.fakeapp.System") & 1) == 0 && (objc_msgSend(v10, "isEqual:", @"com.apple.fakeapp.SoftwareUpdate") & 1) == 0 && (objc_msgSend(v10, "isEqual:", @"com.apple.fakeapp.SoftwareUpdateReserve") & 1) == 0)
        {
          v27 = v9;
          v11 = v8[211];
          v12 = [v10 componentsSeparatedByString:{@", "}];
          v13 = [v11 setWithArray:v12];

          v14 = v10;
          if ([v13 count] >= 2 && objc_msgSend(v13, "containsObject:", @"com.apple.Bridge"))
          {
            [v13 removeObject:@"com.apple.Bridge"];
          }

          v15 = [v8[211] setWithSet:v13];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = v13;
          v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v31;
            do
            {
              v20 = 0;
              do
              {
                if (*v31 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v30 + 1) + 8 * v20);
                v22 = [v4 appPathList];
                v23 = [v22 objectForKeyedSubscript:v21];

                if (!v23 || ([v23 isUserVisible] & 1) == 0)
                {
                  [v15 removeObject:v21];
                }

                v20 = v20 + 1;
              }

              while (v18 != v20);
              v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v18);
          }

          if (![v15 count])
          {
            [(SATelemetryManager *)v24 setValue:2 forAppInfoEntry:5 forBundleIDs:v14];
          }

          v7 = v25;
          v6 = v26;
          v8 = &SBSCopyDisplayIdentifiers_ptr;
          v9 = v27;
        }

        objc_autoreleasePoolPop(context);
        v9 = v9 + 1;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v6);
  }
}

- (void)setValue:(unint64_t)a3 forTotalsInfoEntry:(int64_t)a4
{
  obj = self->_totalsInfo;
  objc_sync_enter(obj);
  totalsInfo = self->_totalsInfo;
  v8 = [NSNumber numberWithUnsignedLongLong:a3];
  v9 = [(SATelemetryManager *)self getTelTotalsInfoTranslation:a4];
  [(NSMutableDictionary *)totalsInfo setValue:v8 forKey:v9];

  objc_sync_exit(obj);
}

- (unint64_t)getValueForTotalsInfoEntry:(int64_t)a3
{
  v5 = self->_totalsInfo;
  objc_sync_enter(v5);
  totalsInfo = self->_totalsInfo;
  v7 = [(SATelemetryManager *)self getTelTotalsInfoTranslation:a3];
  v8 = [(NSMutableDictionary *)totalsInfo objectForKey:v7];

  if (v8)
  {
    v9 = [v8 longLongValue];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v5);
  return v9;
}

- (void)addValue:(unint64_t)a3 forTotalsInfoEntry:(int64_t)a4
{
  if (a3)
  {
    obj = self->_totalsInfo;
    objc_sync_enter(obj);
    [(SATelemetryManager *)self setValue:[(SATelemetryManager *)self getValueForTotalsInfoEntry:a4]+ a3 forTotalsInfoEntry:a4];
    objc_sync_exit(obj);
  }
}

- (void)subtractValue:(unint64_t)a3 forTotalsInfoEntry:(int64_t)a4
{
  if (a3)
  {
    v7 = self->_totalsInfo;
    objc_sync_enter(v7);
    v8 = [(SATelemetryManager *)self getValueForTotalsInfoEntry:a4];
    if (v8 >= a3)
    {
      [(SATelemetryManager *)self setValue:v8 - a3 forTotalsInfoEntry:a4];
    }

    else
    {
      v9 = SALog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100041F64();
      }
    }

    objc_sync_exit(v7);
  }
}

- (void)updateTotalsInfo:(unint64_t)a3 totalPurgeable:(unint64_t)a4
{
  [(SATelemetryManager *)self setValue:a3 >> 12 forTotalsInfoEntry:21];

  [(SATelemetryManager *)self setValue:a4 forTotalsInfoEntry:19];
}

- (void)setValue:(unint64_t)a3 forDirStatsTotalsInfoEntry:(int64_t)a4
{
  obj = self->_totalsDstatsInfo;
  objc_sync_enter(obj);
  totalsDstatsInfo = self->_totalsDstatsInfo;
  v8 = [NSNumber numberWithUnsignedLongLong:a3];
  v9 = [(SATelemetryManager *)self getTelTotalsDirStatsInfoTranslation:a4];
  [(NSMutableDictionary *)totalsDstatsInfo setValue:v8 forKey:v9];

  objc_sync_exit(obj);
}

- (unint64_t)getValueForDirStatsTotalsInfoEntry:(int64_t)a3
{
  v5 = self->_totalsDstatsInfo;
  objc_sync_enter(v5);
  totalsDstatsInfo = self->_totalsDstatsInfo;
  v7 = [(SATelemetryManager *)self getTelTotalsDirStatsInfoTranslation:a3];
  v8 = [(NSMutableDictionary *)totalsDstatsInfo objectForKey:v7];

  if (v8)
  {
    v9 = [v8 longLongValue];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v5);
  return v9;
}

- (void)addValue:(unint64_t)a3 forDirStatsTotalsInfoEntry:(int64_t)a4
{
  if (a3)
  {
    obj = self->_totalsDstatsInfo;
    objc_sync_enter(obj);
    [(SATelemetryManager *)self setValue:[(SATelemetryManager *)self getValueForDirStatsTotalsInfoEntry:a4]+ a3 forDirStatsTotalsInfoEntry:a4];
    objc_sync_exit(obj);
  }
}

- (void)updateDirStatInfo:(id)a3
{
  v4 = a3;
  [(SATelemetryManager *)self addValue:1 forDirStatsTotalsInfoEntry:2];
  if ([v4 enabledDirStat])
  {
    [(SATelemetryManager *)self addValue:1 forTotalsInfoEntry:9];
    [(SATelemetryManager *)self addValue:1 forDirStatsTotalsInfoEntry:3];
  }

  if ([v4 usedDirStat])
  {
    [(SATelemetryManager *)self addValue:1 forDirStatsTotalsInfoEntry:4];
  }

  if ([v4 failedDirStat])
  {
    [(SATelemetryManager *)self addValue:1 forDirStatsTotalsInfoEntry:5];
  }

  if ([v4 skippedDirStat])
  {
    [(SATelemetryManager *)self addValue:1 forDirStatsTotalsInfoEntry:6];
  }
}

- (void)updateDirStatInfo:(BOOL)a3 usedDirsStat:(BOOL)a4 failedDirStat:(BOOL)a5 skippedDirStat:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [(SATelemetryManager *)self addValue:1 forDirStatsTotalsInfoEntry:2];
  if (v9)
  {
    [(SATelemetryManager *)self addValue:1 forTotalsInfoEntry:9];
    [(SATelemetryManager *)self addValue:1 forDirStatsTotalsInfoEntry:3];
    if (!v8)
    {
LABEL_3:
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_10:
      [(SATelemetryManager *)self addValue:1 forDirStatsTotalsInfoEntry:5];
      if (!v6)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  else if (!v8)
  {
    goto LABEL_3;
  }

  [(SATelemetryManager *)self addValue:1 forDirStatsTotalsInfoEntry:4];
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (!v6)
  {
    return;
  }

LABEL_5:

  [(SATelemetryManager *)self addValue:1 forDirStatsTotalsInfoEntry:6];
}

- (void)setValue:(unint64_t)a3 forTimeInfoEntry:(int64_t)a4
{
  obj = self->_timeInfo;
  objc_sync_enter(obj);
  timeInfo = self->_timeInfo;
  v8 = [NSNumber numberWithUnsignedLongLong:a3];
  v9 = [(SATelemetryManager *)self getTelTimeInfoTranslation:a4];
  [(NSMutableDictionary *)timeInfo setValue:v8 forKey:v9];

  objc_sync_exit(obj);
}

- (unint64_t)getValueForTimeInfoEntry:(int64_t)a3
{
  v5 = self->_timeInfo;
  objc_sync_enter(v5);
  timeInfo = self->_timeInfo;
  v7 = [(SATelemetryManager *)self getTelTimeInfoTranslation:a3];
  v8 = [(NSMutableDictionary *)timeInfo valueForKey:v7];

  if (v8)
  {
    v9 = [v8 longLongValue];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(v5);
  return v9;
}

- (void)addValue:(unint64_t)a3 forTimeInfoEntry:(int64_t)a4
{
  if (a3)
  {
    obj = self->_timeInfo;
    objc_sync_enter(obj);
    [(SATelemetryManager *)self setValue:[(SATelemetryManager *)self getValueForTimeInfoEntry:a4]+ a3 forTimeInfoEntry:a4];
    objc_sync_exit(obj);
  }
}

- (void)startTimeForTimeInfoEntry:(int64_t)a3
{
  v5 = self->_timeInfo;
  objc_sync_enter(v5);
  times = self->_times;
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [(NSMutableDictionary *)times objectForKey:v7];

  if (v8)
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100041FE4();
    }
  }

  else
  {
    v10 = self->_times;
    v9 = +[NSDate date];
    v11 = [NSNumber numberWithInteger:a3];
    [(NSMutableDictionary *)v10 setObject:v9 forKey:v11];
  }

  objc_sync_exit(v5);
}

- (double)stopTimeForTimeInfoEntry:(int64_t)a3
{
  v5 = self->_timeInfo;
  objc_sync_enter(v5);
  times = self->_times;
  v7 = [NSNumber numberWithInteger:a3];
  v8 = [(NSMutableDictionary *)times objectForKey:v7];

  if (v8)
  {
    v9 = +[NSDate date];
    [v9 timeIntervalSinceDate:v8];
    v11 = v10;

    [(SATelemetryManager *)self addValue:(v11 * 1000.0) forTimeInfoEntry:a3];
  }

  else
  {
    v12 = SALog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100042060();
    }

    v11 = 0.0;
  }

  objc_sync_exit(v5);
  return v11;
}

- (id)dictionaryDescription
{
  appsInfo = self->_appsInfo;
  v4 = [(SATelemetryManager *)self getTotalsInfoTranslatedDictionary];
  v5 = [(SATelemetryManager *)self getTotalsDirstatInfoTranslatedDictionary];
  v6 = [(SATelemetryManager *)self getTimeInfoTranslatedDictionary];
  v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:appsInfo, @"AppsInfo", v4, @"TotalsInfo", v5, @"TotalDirstatsInfo", v6, @"TimeInfo", self->_thirdPartyfilteredInfo, @"ThirdPartyFilteredInfo", 0];

  return v7;
}

- (id)sortAppsInfo:(id)a3 by:(int64_t)a4 withOption:(int64_t)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100036900;
  v7[3] = &unk_100065C28;
  v7[4] = self;
  v7[5] = a4;
  v5 = [a3 sortedArrayUsingComparator:{v7, a4, a5}];

  return v5;
}

- (id)getFirstPartyAppsInfoKeys
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_appsInfo;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(SATelemetryManager *)self getVendorValueforBundleIDs:v9, v12];
        if (([v10 isEqualToString:@"Apple"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.fakeapp.SystemData") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.fakeapp.SoftwareUpdate") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.fakeapp.System") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"com.apple.fakeapp.SyncedContent") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"com.apple.fakeapp.SoftwareUpdateReserve"))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)getThirdPartyAppsInfoKeys
{
  v15 = objc_opt_new();
  v16 = self;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_appsInfo;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = @"com.apple.fakeapp.SyncedContent";
    v8 = @"com.apple.fakeapp.SoftwareUpdateReserve";
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (([v10 isEqualToString:{@"com.apple.fakeapp.SystemData", v15}] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"com.apple.fakeapp.SoftwareUpdate") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"com.apple.fakeapp.System") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", v7) & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", v8) & 1) == 0)
        {
          v11 = v7;
          v12 = v8;
          v13 = [(SATelemetryManager *)v16 getVendorValueforBundleIDs:v10];
          if (([v13 isEqualToString:@"Apple"] & 1) == 0)
          {
            [v15 addObject:v10];
          }

          v8 = v12;
          v7 = v11;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  return v15;
}

- (id)fillFilteredInfoDict:(id)a3 withNumberOfApps:(unint64_t)a4 withAppInfoArr:(id)a5 withFilterCriteria:(int64_t)a6 withMetricType:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  if ([v12 count] <= a4)
  {
    v39 = v12;
  }

  else
  {
    v41 = a6;
    v42 = v13;
    v43 = v12;
    [v12 subarrayWithRange:{a4, objc_msgSend(v12, "count") - a4}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v56 = 0u;
    v47 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v47)
    {
      v45 = *v54;
      do
      {
        v14 = 0;
        do
        {
          if (*v54 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v48 = v14;
          v15 = [(NSMutableDictionary *)self->_appsInfo valueForKey:*(*(&v53 + 1) + 8 * v14)];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v50;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v50 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v49 + 1) + 8 * i);
                v21 = [v15 valueForKey:v20];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v23 = [v15 valueForKey:v20];
                  v24 = [v23 longLongValue];
                  v25 = [v11 valueForKey:v20];
                  v26 = v25;
                  if (v25)
                  {
                    v25 = [v25 longLongValue];
                  }

                  v27 = [NSNumber numberWithUnsignedLongLong:&v24[v25]];
                  [v11 setValue:v27 forKey:v20];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v17);
          }

          v14 = v48 + 1;
        }

        while ((v48 + 1) != v47);
        v47 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v47);
    }

    v28 = [(SATelemetryManager *)self getTelAppInfoTranslation:0];
    v13 = v42;
    [v11 setValue:v42 forKey:v28];

    runSignature = self->_runSignature;
    v30 = [(SATelemetryManager *)self getTelAppInfoTranslation:1];
    [v11 setValue:runSignature forKey:v30];

    icloudPlan = self->_icloudPlan;
    v32 = [(SATelemetryManager *)self getTelAppInfoTranslation:4];
    [v11 setValue:icloudPlan forKey:v32];

    v33 = [NSNumber numberWithUnsignedLongLong:self->_SAFOptions];
    v34 = [(SATelemetryManager *)self getTelAppInfoTranslation:5];
    [v11 setValue:v33 forKey:v34];

    v35 = [(SATelemetryManager *)self getTelAppInfoTranslation:v41];
    v36 = [(SATelemetryManager *)self getTelAppInfoTranslation:2];
    [v11 setValue:v35 forKey:v36];

    v37 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [obj count]);
    v38 = [(SATelemetryManager *)self getTelAppInfoTranslation:6];
    [v11 setValue:v37 forKey:v38];

    v12 = v43;
    v39 = [v43 subarrayWithRange:{0, a4}];
  }

  return v39;
}

- (id)setAppInfoDictWithFirstPartyAppsKeys:(id)a3 WithThirdPartyAppKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v30;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        [(SATelemetryManager *)self setValue:v12 forAppInfoEntry:6 forBundleIDs:v15];
        v16 = [(NSMutableDictionary *)self->_appsInfo objectForKey:v15];
        [v8 addObject:v16];

        ++v12;
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * j);
        [(SATelemetryManager *)self setValue:v12 forAppInfoEntry:6 forBundleIDs:v22, v25];
        v23 = [(NSMutableDictionary *)self->_appsInfo objectForKey:v22];
        [v8 addObject:v23];

        ++v12;
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  return v8;
}

- (void)removeAppsWithMultipleVendors
{
  v3 = [(NSMutableDictionary *)self->_appsInfo copy];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100037430;
  v4[3] = &unk_1000653C0;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

+ (id)SATelAppInfoTranslationTable
{
  if (qword_1000737B8 != -1)
  {
    sub_100042208();
  }

  v3 = qword_1000737B0;

  return v3;
}

+ (id)SATelTotalsInfoTranslationTable
{
  if (qword_1000737C8 != -1)
  {
    sub_10004221C();
  }

  v3 = qword_1000737C0;

  return v3;
}

+ (id)SATelTotalsDirStatsInfoTranslationTable
{
  if (qword_1000737D8 != -1)
  {
    sub_100042230();
  }

  v3 = qword_1000737D0;

  return v3;
}

+ (id)SATelTimeInfoTranslationTable
{
  if (qword_1000737E8 != -1)
  {
    sub_100042244();
  }

  v3 = qword_1000737E0;

  return v3;
}

- (id)getTelAppInfoTranslation:(int64_t)a3
{
  v4 = +[SATelemetryManager SATelAppInfoTranslationTable];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)getTelTotalsInfoTranslation:(int64_t)a3
{
  v4 = +[SATelemetryManager SATelTotalsInfoTranslationTable];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)getTelTotalsDirStatsInfoTranslation:(int64_t)a3
{
  v4 = +[SATelemetryManager SATelTotalsDirStatsInfoTranslationTable];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)getTelTimeInfoTranslation:(int64_t)a3
{
  v4 = +[SATelemetryManager SATelTimeInfoTranslationTable];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)hasResultsError
{
  v2 = self;
  v3 = [(SATelemetryManager *)self getValueForTotalsInfoEntry:18];
  v4 = SASpeculativeDownloadAnalytics;
  if (+[SATapToRadar forceTTR])
  {
    [SATapToRadar sendTapToRadarNotificationWithDescription:&stru_100066450 highPriorityProblem:0];
LABEL_3:
    v5 = 0;
    goto LABEL_13;
  }

  if (v3 <= 0x640000000)
  {
    if (v3 != 0x40000000)
    {
      goto LABEL_3;
    }

    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100042258();
    }

    v5 = @"SystemData size is negative";
  }

  else
  {
    v5 = [NSString stringWithFormat:@"SystemData size: %llu > %llu", v3, 0x640000000];
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000422EC();
    }
  }

  [SATapToRadar sendTapToRadarNotificationWithDescription:v5 highPriorityProblem:0];
LABEL_13:
  v8 = +[SASupport getDiskCapacity];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v2->_appsInfo;
  v29 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v29)
  {
    v28 = *v39;
    v9 = &SBSCopyDisplayIdentifiers_ptr;
    v31 = v2;
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v10;
        v32 = *(*(&v38 + 1) + 8 * v10);
        v11 = [(NSMutableDictionary *)v2->_appsInfo objectForKey:?];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v12)
        {
          v13 = v12;
          v33 = *v35;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v35 != v33)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v34 + 1) + 8 * i);
              v16 = [v11 objectForKey:v15];
              v17 = v9[190];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [v16 longLongValue];
                if ((v18 & 0x8000000000000000) != 0)
                {
                  v21 = v8;
                  v22 = [(SATelemetryManager *)v2 getTelAppInfoTranslation:9];
                  if ([v15 isEqualToString:v22])
                  {

                    goto LABEL_33;
                  }

                  v23 = [(SATelemetryManager *)v2 getTelAppInfoTranslation:17];
                  v24 = [v15 isEqualToString:v23];

                  if (v24)
                  {
                    v2 = v31;
                    v4 = SASpeculativeDownloadAnalytics;
LABEL_33:
                    v8 = v21;
                  }

                  else
                  {
                    v25 = [NSString stringWithFormat:@"%@ %@: < 0", v32, v15];

                    v26 = SALog();
                    v4 = SASpeculativeDownloadAnalytics;
                    v8 = v21;
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v43 = "[SATelemetryManager hasResultsError]";
                      v44 = 2112;
                      v45 = v25;
                      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: %@", buf, 0x16u);
                    }

                    [SATapToRadar sendTapToRadarNotificationWithDescription:v25 highPriorityProblem:0];
                    v5 = v25;
                    v2 = v31;
                  }

                  v9 = &SBSCopyDisplayIdentifiers_ptr;
                  goto LABEL_38;
                }

                if (v18 > v8)
                {
                  v19 = [NSString stringWithFormat:@"%@ %@: %llu > diskCapacity: %llu", v32, v15, v18, v8];

                  v20 = SALog();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v43 = "[SATelemetryManager hasResultsError]";
                    v44 = 2112;
                    v45 = v19;
                    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: %@", buf, 0x16u);
                  }

                  [&v4[15] sendTapToRadarNotificationWithDescription:v19 highPriorityProblem:1];
                  v5 = v19;
                }
              }

LABEL_38:
            }

            v13 = [v11 countByEnumeratingWithState:&v34 objects:v46 count:16];
          }

          while (v13);
        }

        v10 = v30 + 1;
      }

      while ((v30 + 1) != v29);
      v29 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v29);
  }
}

+ (void)updateLastSentTelemetryDate:(BOOL)a3
{
  v3 = @"lastUserSentTelemetryDate";
  if (a3)
  {
    v3 = @"lastDailyActivitySentTelemetryDate";
  }

  v4 = v3;
  v5 = +[NSDate date];
  [SARunTimeDataManager setRunTimeDataObject:v5 forKey:v4];
}

+ (id)getLastSentTelemetryDate:(BOOL)a3
{
  if (a3)
  {
    v3 = @"lastDailyActivitySentTelemetryDate";
  }

  else
  {
    v3 = @"lastUserSentTelemetryDate";
  }

  return [SARunTimeDataManager runTimeDataObjectForKey:v3];
}

- (void)saveTelemetryDataToDisk:(id)a3 thirdPartyAppKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSFileManager defaultManager];
  v19 = 0;
  v9 = [v8 createDirectoryAtPath:@"/var/db/spaceattribution" withIntermediateDirectories:1 attributes:0 error:&v19];
  v10 = v19;
  if (v9)
  {
    v11 = [(SATelemetryManager *)self setAppInfoDictWithFirstPartyAppsKeys:v6 WithThirdPartyAppKeys:v7];
    v12 = [(SATelemetryManager *)self dictionaryDescription];
    [v12 setObject:v11 forKey:@"AppsInfo"];
    v18 = v10;
    v13 = [NSJSONSerialization dataWithJSONObject:v12 options:1 error:&v18];
    v14 = v18;

    if (v14)
    {
      v15 = SALog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000423FC();
      }
    }

    else
    {
      v16 = [NSString stringWithFormat:@"%@/%@", @"/var/db/spaceattribution", @"SpaceAttributionTelemetryData.json"];
      v17 = 0;
      [v13 writeToFile:v16 options:1 error:&v17];
      v14 = v17;

      if (!v14)
      {
LABEL_11:

        v10 = v14;
        goto LABEL_12;
      }

      v15 = SALog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100042478();
      }
    }

    goto LABEL_11;
  }

  v11 = SALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100042368();
  }

LABEL_12:
}

+ (void)getLastTelemetryData:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%@/%@", @"/var/db/spaceattribution", @"SpaceAttributionTelemetryData.json"];
  v13 = 0;
  v5 = [NSData dataWithContentsOfFile:v4 options:0 error:&v13];
  v6 = v13;

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100042570();
    }

    v3[2](v3, 0, v6);
  }

  else
  {
    v12 = 0;
    v9 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v12];
    v10 = v12;
    v6 = v10;
    if (v10)
    {
      v11 = SALog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000424F4();
      }
    }

    (v3)[2](v3, v9, v6);
  }
}

- (id)getTimeInfoTranslatedDictionary
{
  if (qword_1000737F8 != -1)
  {
    sub_1000425EC();
  }

  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_timeInfo;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_timeInfo objectForKey:v9, v13];
        v11 = [qword_1000737F0 objectForKey:v9];
        [v3 setValue:v10 forKey:v11];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)getTotalsDirstatInfoTranslatedDictionary
{
  if (qword_100073808 != -1)
  {
    sub_100042600();
  }

  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_totalsDstatsInfo;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_totalsDstatsInfo objectForKey:v9, v13];
        v11 = [qword_100073800 objectForKey:v9];
        [v3 setValue:v10 forKey:v11];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)getTotalsInfoTranslatedDictionary
{
  if (qword_100073818 != -1)
  {
    sub_100042614();
  }

  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_totalsInfo;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_totalsInfo objectForKey:v9, v13];
        v11 = [qword_100073810 objectForKey:v9];
        [v3 setValue:v10 forKey:v11];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (void)clearLastTelemetryData:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [NSString stringWithFormat:@"%@/%@", @"/var/db/spaceattribution", @"SpaceAttributionTelemetryData.json"];
  v7 = 0;
  [v4 removeItemAtPath:v5 error:&v7];
  v6 = v7;

  v3[2](v3, v6);
}

@end