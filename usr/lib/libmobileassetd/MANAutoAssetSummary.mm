@interface MANAutoAssetSummary
+ (id)assetRepresentationName:(int64_t)a3;
+ (id)summaryNewMaxColumnStrings;
+ (id)summaryPaddedBanner:(id)a3;
+ (id)summaryPaddedHeader:(id)a3;
+ (id)summaryPaddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6;
- (MANAutoAssetSummary)initWithAssetSelector:(id)a3 withAssetRepresentation:(int64_t)a4 withAssetWasPatched:(BOOL)a5 withAssetIsStaged:(BOOL)a6 withJobStatus:(id)a7 withScheduledIntervalSecs:(int64_t)a8 withScheduledRemainingSecs:(int64_t)a9 withPushDelaySecs:(int64_t)a10 withActiveClientCount:(int64_t)a11 withActiveMonitorCount:(int64_t)a12 withMaximumClientCount:(int64_t)a13 withTotalClientCount:(int64_t)a14;
- (MANAutoAssetSummary)initWithCoder:(id)a3;
- (id)assetRepresentationName;
- (id)description;
- (id)summary;
- (id)summaryPadded:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)summaryBuildMaxColumnStrings:(id)a3;
@end

@implementation MANAutoAssetSummary

- (MANAutoAssetSummary)initWithAssetSelector:(id)a3 withAssetRepresentation:(int64_t)a4 withAssetWasPatched:(BOOL)a5 withAssetIsStaged:(BOOL)a6 withJobStatus:(id)a7 withScheduledIntervalSecs:(int64_t)a8 withScheduledRemainingSecs:(int64_t)a9 withPushDelaySecs:(int64_t)a10 withActiveClientCount:(int64_t)a11 withActiveMonitorCount:(int64_t)a12 withMaximumClientCount:(int64_t)a13 withTotalClientCount:(int64_t)a14
{
  v21 = a3;
  v22 = a7;
  v28.receiver = self;
  v28.super_class = MANAutoAssetSummary;
  v23 = [(MANAutoAssetSummary *)&v28 init];
  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = a8;
      v24 = _MADLog(@"Auto");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "{MANAutoAssetSummary-initWithAssetSelector} WARNING: wrong class provided as jobStatus", buf, 2u);
      }

      a8 = v26;
    }

    objc_storeStrong(&v23->_assetSelector, a3);
    v23->_assetRepresentation = a4;
    v23->_assetWasPatched = a5;
    v23->_assetIsStaged = a6;
    objc_storeStrong(&v23->_jobStatus, a7);
    v23->_scheduledIntervalSecs = a8;
    v23->_scheduledRemainingSecs = a9;
    v23->_pushDelaySecs = a10;
    v23->_activeClientCount = a11;
    v23->_activeMonitorCount = a12;
    v23->_maximumClientCount = a13;
    v23->_totalClientCount = a14;
  }

  return v23;
}

- (MANAutoAssetSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MANAutoAssetSummary;
  v5 = [(MANAutoAssetSummary *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v6;

    v5->_assetRepresentation = [v4 decodeInt64ForKey:@"assetRepresentation"];
    v5->_assetWasPatched = [v4 decodeBoolForKey:@"assetWasPatched"];
    v5->_assetIsStaged = [v4 decodeBoolForKey:@"assetIsStaged"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"jobStatus"];
    jobStatus = v5->_jobStatus;
    v5->_jobStatus = v8;

    v5->_scheduledIntervalSecs = [v4 decodeIntegerForKey:@"scheduledIntervalSecs"];
    v5->_scheduledRemainingSecs = [v4 decodeIntegerForKey:@"scheduledRemainingSecs"];
    v5->_pushDelaySecs = [v4 decodeIntegerForKey:@"pushDelaySecs"];
    v5->_activeClientCount = [v4 decodeIntegerForKey:@"activeClientCount"];
    v5->_activeMonitorCount = [v4 decodeIntegerForKey:@"activeMonitorCount"];
    v5->_maximumClientCount = [v4 decodeIntegerForKey:@"maximumClientCount"];
    v5->_totalClientCount = [v4 decodeIntegerForKey:@"totalClientCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MANAutoAssetSummary *)self assetSelector];
  [v6 encodeObject:v4 forKey:@"assetSelector"];

  [v6 encodeInteger:-[MANAutoAssetSummary assetRepresentation](self forKey:{"assetRepresentation"), @"assetRepresentation"}];
  [v6 encodeBool:-[MANAutoAssetSummary assetWasPatched](self forKey:{"assetWasPatched"), @"assetWasPatched"}];
  [v6 encodeBool:-[MANAutoAssetSummary assetIsStaged](self forKey:{"assetIsStaged"), @"assetIsStaged"}];
  v5 = [(MANAutoAssetSummary *)self jobStatus];
  [v6 encodeObject:v5 forKey:@"jobStatus"];

  [v6 encodeInteger:-[MANAutoAssetSummary scheduledIntervalSecs](self forKey:{"scheduledIntervalSecs"), @"scheduledIntervalSecs"}];
  [v6 encodeInteger:-[MANAutoAssetSummary pushDelaySecs](self forKey:{"pushDelaySecs"), @"pushDelaySecs"}];
  [v6 encodeInteger:-[MANAutoAssetSummary scheduledRemainingSecs](self forKey:{"scheduledRemainingSecs"), @"scheduledRemainingSecs"}];
  [v6 encodeInteger:-[MANAutoAssetSummary activeClientCount](self forKey:{"activeClientCount"), @"activeClientCount"}];
  [v6 encodeInteger:-[MANAutoAssetSummary activeMonitorCount](self forKey:{"activeMonitorCount"), @"activeMonitorCount"}];
  [v6 encodeInteger:-[MANAutoAssetSummary maximumClientCount](self forKey:{"maximumClientCount"), @"maximumClientCount"}];
  [v6 encodeInteger:-[MANAutoAssetSummary totalClientCount](self forKey:{"totalClientCount"), @"totalClientCount"}];
}

- (id)description
{
  v3 = [(MANAutoAssetSummary *)self assetSelector];
  v28 = [v3 summary];
  v27 = [(MANAutoAssetSummary *)self assetRepresentationName];
  if ([(MANAutoAssetSummary *)self assetWasPatched])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v26 = v4;
  if ([(MANAutoAssetSummary *)self assetIsStaged])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v25 = v5;
  v24 = [(MANAutoAssetSummary *)self scheduledIntervalSecs];
  v6 = [(MANAutoAssetSummary *)self scheduledRemainingSecs];
  v7 = [(MANAutoAssetSummary *)self pushDelaySecs];
  v8 = [(MANAutoAssetSummary *)self activeClientCount];
  v9 = [(MANAutoAssetSummary *)self activeMonitorCount];
  v10 = [(MANAutoAssetSummary *)self maximumClientCount];
  v11 = [(MANAutoAssetSummary *)self totalClientCount];
  v12 = [(MANAutoAssetSummary *)self jobStatus];
  if (v12)
  {
    v13 = [(MANAutoAssetSummary *)self jobStatus];
    [v13 description];
    v15 = v14 = v3;
    v22 = v11;
    v20 = v9;
    v16 = v27;
    v17 = v28;
    v18 = [NSString stringWithFormat:@">>>\n                   assetSelector: %@\n             assetRepresentation: %@\n                 assetWasPatched: %@\n                   assetIsStaged: %@\n           scheduledIntervalSecs: %ld\n          scheduledRemainingSecs: %ld\n                   pushDelaySecs: %ld\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n%@<<<]", v28, v27, v26, v25, v24, v6, v7, v8, v20, v10, v22, v15];

    v3 = v14;
  }

  else
  {
    v23 = v11;
    v21 = v9;
    v16 = v27;
    v17 = v28;
    v18 = [NSString stringWithFormat:@">>>\n                   assetSelector: %@\n             assetRepresentation: %@\n                 assetWasPatched: %@\n                   assetIsStaged: %@\n           scheduledIntervalSecs: %ld\n          scheduledRemainingSecs: %ld\n                   pushDelaySecs: %ld\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n%@<<<]", v28, v27, v26, v25, v24, v6, v7, v8, v21, v10, v23, @"                       jobStatus: N\n"];
  }

  return v18;
}

- (id)summary
{
  v3 = [(MANAutoAssetSummary *)self assetSelector];
  v20 = [v3 summary];

  v19 = [(MANAutoAssetSummary *)self assetRepresentationName];
  if ([(MANAutoAssetSummary *)self assetWasPatched])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v18 = v4;
  if ([(MANAutoAssetSummary *)self assetIsStaged])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v17 = v5;
  v6 = [(MANAutoAssetSummary *)self jobStatus];
  if (v6)
  {
    v7 = [(MANAutoAssetSummary *)self jobStatus];
    v21 = [v7 summary];
  }

  else
  {
    v21 = @"NONE";
  }

  v14 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledIntervalSecs](self, "scheduledIntervalSecs")];
  v16 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledRemainingSecs](self, "scheduledRemainingSecs")];
  v8 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary pushDelaySecs](self, "pushDelaySecs")];
  v9 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeClientCount](self, "activeClientCount")];
  v10 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeMonitorCount](self, "activeMonitorCount")];
  v11 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary maximumClientCount](self, "maximumClientCount")];
  v12 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary totalClientCount](self, "totalClientCount")];
  v15 = [NSString stringWithFormat:@"asset(%@)[%@]|patched:%@|staged:%@|status:%@|interval:%@|remaining:%@|pushDelay:%@|clients:%@|monitors:%@|maxClients:%@|totalClients:%@", v20, v19, v18, v17, v21, v14, v16, v8, v9, v10, v11, v12];

  return v15;
}

- (void)summaryBuildMaxColumnStrings:(id)a3
{
  v58 = a3;
  v4 = [(MANAutoAssetSummary *)self assetSelector];
  v5 = [v4 summary];

  v57 = [(MANAutoAssetSummary *)self assetRepresentationName];
  if ([(MANAutoAssetSummary *)self assetWasPatched])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v7 = v6;
  if ([(MANAutoAssetSummary *)self assetIsStaged])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v54 = v8;
  v9 = [(MANAutoAssetSummary *)self jobStatus];
  if (v9)
  {
    v10 = [(MANAutoAssetSummary *)self jobStatus];
    v56 = [v10 summary];
  }

  else
  {
    v56 = @"NONE";
  }

  v55 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledIntervalSecs](self, "scheduledIntervalSecs")];
  v11 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledRemainingSecs](self, "scheduledRemainingSecs")];
  v12 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary pushDelaySecs](self, "pushDelaySecs")];
  v13 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeClientCount](self, "activeClientCount")];
  v14 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeMonitorCount](self, "activeMonitorCount")];
  v15 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary maximumClientCount](self, "maximumClientCount")];
  v16 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary totalClientCount](self, "totalClientCount")];
  v53 = v5;
  v17 = [v5 length];
  v18 = [v58 safeStringForKey:@"assetSelector"];
  v19 = [v18 length];

  if (v17 > v19)
  {
    [v58 setSafeObject:v53 forKey:@"assetSelector"];
  }

  v20 = [v57 length];
  v21 = [v58 safeStringForKey:@"assetRepresentation"];
  v22 = [v21 length];

  if (v20 > v22)
  {
    [v58 setSafeObject:v57 forKey:@"assetRepresentation"];
  }

  v23 = [(__CFString *)v7 length];
  v24 = [v58 safeStringForKey:@"assetWasPatched"];
  v25 = [v24 length];

  if (v23 > v25)
  {
    [v58 setSafeObject:v7 forKey:@"assetWasPatched"];
  }

  v26 = [(__CFString *)v54 length];
  v27 = [v58 safeStringForKey:@"assetIsStaged"];
  v28 = [v27 length];

  if (v26 > v28)
  {
    [v58 setSafeObject:v7 forKey:@"assetIsStaged"];
  }

  v29 = [(__CFString *)v56 length];
  v30 = [v58 safeStringForKey:@"jobStatus"];
  v31 = [v30 length];

  if (v29 > v31)
  {
    [v58 setSafeObject:v56 forKey:@"jobStatus"];
  }

  v32 = [v55 length];
  v33 = [v58 safeStringForKey:@"scheduledIntervalSecs"];
  v34 = [v33 length];

  if (v32 > v34)
  {
    [v58 setSafeObject:v55 forKey:@"scheduledIntervalSecs"];
  }

  v35 = [v11 length];
  v36 = [v58 safeStringForKey:@"scheduledRemainingSecs"];
  v37 = [v36 length];

  if (v35 > v37)
  {
    [v58 setSafeObject:v11 forKey:@"scheduledRemainingSecs"];
  }

  v38 = [v12 length];
  v39 = [v58 safeStringForKey:@"pushDelaySecs"];
  v40 = [v39 length];

  if (v38 > v40)
  {
    [v58 setSafeObject:v12 forKey:@"pushDelaySecs"];
  }

  v41 = [v13 length];
  v42 = [v58 safeStringForKey:@"activeClientCount"];
  v43 = [v42 length];

  if (v41 > v43)
  {
    [v58 setSafeObject:v13 forKey:@"activeClientCount"];
  }

  v44 = [v14 length];
  v45 = [v58 safeStringForKey:@"activeMonitorCount"];
  v46 = [v45 length];

  if (v44 > v46)
  {
    [v58 setSafeObject:v14 forKey:@"activeMonitorCount"];
  }

  v47 = [v15 length];
  v48 = [v58 safeStringForKey:@"maximumClientCount"];
  v49 = [v48 length];

  if (v47 > v49)
  {
    [v58 setSafeObject:v15 forKey:@"maximumClientCount"];
  }

  v50 = [v16 length];
  v51 = [v58 safeStringForKey:@"totalClientCount"];
  v52 = [v51 length];

  if (v50 > v52)
  {
    [v58 setSafeObject:v16 forKey:@"totalClientCount"];
  }
}

- (id)summaryPadded:(id)a3
{
  v4 = a3;
  v5 = [(MANAutoAssetSummary *)self assetSelector];
  v6 = [v5 summary];

  v7 = [(MANAutoAssetSummary *)self assetRepresentationName];
  if ([(MANAutoAssetSummary *)self assetWasPatched])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v48 = v8;
  if ([(MANAutoAssetSummary *)self assetIsStaged])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v34 = v9;
  v10 = [(MANAutoAssetSummary *)self jobStatus];
  if (v10)
  {
    v11 = [(MANAutoAssetSummary *)self jobStatus];
    v49 = [v11 summary];
  }

  else
  {
    v49 = @"NONE";
  }

  v36 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledIntervalSecs](self, "scheduledIntervalSecs")];
  v32 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledRemainingSecs](self, "scheduledRemainingSecs")];
  v47 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary pushDelaySecs](self, "pushDelaySecs")];
  v46 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeClientCount](self, "activeClientCount")];
  v45 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeMonitorCount](self, "activeMonitorCount")];
  v44 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary maximumClientCount](self, "maximumClientCount")];
  v43 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary totalClientCount](self, "totalClientCount")];
  v39 = [v4 safeStringForKey:@"assetSelector"];
  v30 = v6;
  v42 = [MANAutoAssetSummary summaryPaddedString:v6 paddingToLenghtOfString:v39 paddingWith:@" " paddingBefore:0];
  v38 = [v4 safeStringForKey:@"assetRepresentation"];
  v29 = v7;
  v41 = [MANAutoAssetSummary summaryPaddedString:v7 paddingToLenghtOfString:v38 paddingWith:@" " paddingBefore:0];
  v37 = [v4 safeStringForKey:@"assetWasPatched"];
  v40 = [MANAutoAssetSummary summaryPaddedString:v48 paddingToLenghtOfString:v37 paddingWith:@" " paddingBefore:0];
  v33 = [v4 safeStringForKey:@"assetIsStaged"];
  v26 = [MANAutoAssetSummary summaryPaddedString:v34 paddingToLenghtOfString:v33 paddingWith:@" " paddingBefore:0];

  v35 = [v4 safeStringForKey:@"jobStatus"];
  v24 = [MANAutoAssetSummary summaryPaddedString:v49 paddingToLenghtOfString:v35 paddingWith:@" " paddingBefore:0];
  v28 = [v4 safeStringForKey:@"scheduledIntervalSecs"];
  v23 = [MANAutoAssetSummary summaryPaddedString:v36 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:1];
  v27 = [v4 safeStringForKey:@"scheduledRemainingSecs"];
  v19 = [MANAutoAssetSummary summaryPaddedString:v32 paddingToLenghtOfString:v27 paddingWith:@" " paddingBefore:1];
  v25 = [v4 safeStringForKey:@"pushDelaySecs"];
  v20 = [MANAutoAssetSummary summaryPaddedString:v47 paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:1];
  v22 = [v4 safeStringForKey:@"activeClientCount"];
  v12 = [MANAutoAssetSummary summaryPaddedString:v46 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v21 = [v4 safeStringForKey:@"activeMonitorCount"];
  v13 = [MANAutoAssetSummary summaryPaddedString:v45 paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:1];
  v14 = [v4 safeStringForKey:@"maximumClientCount"];
  v15 = [MANAutoAssetSummary summaryPaddedString:v44 paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:1];
  v16 = [v4 safeStringForKey:@"totalClientCount"];

  v17 = [MANAutoAssetSummary summaryPaddedString:v43 paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:1];
  v31 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v42, v41, v40, v26, v24, v23, v19, v20, v12, v13, v15, v17];

  return v31;
}

- (id)assetRepresentationName
{
  v2 = [(MANAutoAssetSummary *)self assetRepresentation];

  return [MANAutoAssetSummary assetRepresentationName:v2];
}

+ (id)assetRepresentationName:(int64_t)a3
{
  v3 = @"UNKNOWN";
  if (a3 > 400)
  {
    v4 = @"AvailableForStaging";
    v8 = @"BeingStaged";
    v9 = @"Staged";
    if (a3 != 603)
    {
      v9 = @"UNKNOWN";
    }

    if (a3 != 602)
    {
      v8 = v9;
    }

    if (a3 != 601)
    {
      v4 = v8;
    }

    if (a3 == 600)
    {
      v3 = @"CandidateForStaging";
    }

    if (a3 == 500)
    {
      v3 = @"VersionDownloaded";
    }

    if (a3 == 401)
    {
      v3 = @"ScheduledPushed";
    }

    v7 = a3 <= 600;
  }

  else
  {
    v4 = @"AwaitingUnlock";
    v5 = @"Active";
    v6 = @"Scheduled";
    if (a3 != 400)
    {
      v6 = @"UNKNOWN";
    }

    if (a3 != 300)
    {
      v5 = v6;
    }

    if (a3 != 201)
    {
      v4 = v5;
    }

    if (a3 == 200)
    {
      v3 = @"AwaitingSync";
    }

    if (a3 == 100)
    {
      v3 = @"Monitor";
    }

    if (!a3)
    {
      v3 = @"None";
    }

    v7 = a3 <= 200;
  }

  if (v7)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)summaryNewMaxColumnStrings
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setSafeObject:@"assetSelector" forKey:@"assetSelector"];
  [v2 setSafeObject:@"assetRepresentation" forKey:@"assetRepresentation"];
  [v2 setSafeObject:@"assetWasPatched" forKey:@"assetWasPatched"];
  [v2 setSafeObject:@"assetIsStaged" forKey:@"assetIsStaged"];
  [v2 setSafeObject:@"jobStatus" forKey:@"jobStatus"];
  [v2 setSafeObject:@"scheduledIntervalSecs" forKey:@"scheduledIntervalSecs"];
  [v2 setSafeObject:@"scheduledRemainingSecs" forKey:@"scheduledRemainingSecs"];
  [v2 setSafeObject:@"activeClientCount" forKey:@"activeClientCount"];
  [v2 setSafeObject:@"activeMonitorCount" forKey:@"activeMonitorCount"];
  [v2 setSafeObject:@"maximumClientCount" forKey:@"maximumClientCount"];
  [v2 setSafeObject:@"totalClientCount" forKey:@"totalClientCount"];

  return v2;
}

+ (id)summaryPaddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  v13 = [v12 length];
  v14 = v12;
  if (v13 < [v10 length])
  {
    v15 = [v10 length];
    v16 = v15 - [v12 length];
    v17 = +[NSString string];
    v18 = [v17 stringByPaddingToLength:v16 withString:v11 startingAtIndex:0];

    v19 = [NSString alloc];
    if (v6)
    {
      v20 = [v19 initWithFormat:@"%@%@", v18, v12];
    }

    else
    {
      v20 = [v19 initWithFormat:@"%@%@", v12, v18];
    }

    v14 = v20;
  }

  return v14;
}

+ (id)summaryPaddedHeader:(id)a3
{
  v3 = a3;
  v25 = [v3 safeStringForKey:@"assetSelector"];
  v27 = [MANAutoAssetSummary summaryPaddedString:@"assetSelector" paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:0];
  v24 = [v3 safeStringForKey:@"assetRepresentation"];
  v19 = [MANAutoAssetSummary summaryPaddedString:@"assetRepresentation" paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:0];
  v23 = [v3 safeStringForKey:@"assetWasPatched"];
  v17 = [MANAutoAssetSummary summaryPaddedString:@"assetWasPatched" paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v21 = [v3 safeStringForKey:@"assetIsStaged"];
  v15 = [MANAutoAssetSummary summaryPaddedString:@"assetIsStaged" paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v20 = [v3 safeStringForKey:@"jobStatus"];
  v26 = [MANAutoAssetSummary summaryPaddedString:@"jobStatus" paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:0];
  v18 = [v3 safeStringForKey:@"scheduledIntervalSecs"];
  v13 = [MANAutoAssetSummary summaryPaddedString:@"scheduledIntervalSecs" paddingToLenghtOfString:v18 paddingWith:@" " paddingBefore:0];
  v16 = [v3 safeStringForKey:@"scheduledRemainingSecs"];
  v11 = [MANAutoAssetSummary summaryPaddedString:@"scheduledRemainingSecs" paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:0];
  v14 = [v3 safeStringForKey:@"activeClientCount"];
  v4 = [MANAutoAssetSummary summaryPaddedString:@"activeClientCount" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [v3 safeStringForKey:@"activeMonitorCount"];
  v5 = [MANAutoAssetSummary summaryPaddedString:@"activeMonitorCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v6 = [v3 safeStringForKey:@"maximumClientCount"];
  v7 = [MANAutoAssetSummary summaryPaddedString:@"maximumClientCount" paddingToLenghtOfString:v6 paddingWith:@" " paddingBefore:0];
  v8 = [v3 safeStringForKey:@"totalClientCount"];

  v9 = [MANAutoAssetSummary summaryPaddedString:@"totalClientCount" paddingToLenghtOfString:v8 paddingWith:@" " paddingBefore:0];
  v22 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v27, v19, v17, v15, v26, v13, v11, v4, v5, v7, v9];

  return v22;
}

+ (id)summaryPaddedBanner:(id)a3
{
  v3 = a3;
  v25 = [v3 safeStringForKey:@"assetSelector"];
  v27 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v25 paddingWith:@"=" paddingBefore:0];
  v24 = [v3 safeStringForKey:@"assetRepresentation"];
  v26 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v24 paddingWith:@"=" paddingBefore:0];
  v23 = [v3 safeStringForKey:@"assetWasPatched"];
  v18 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v23 paddingWith:@"=" paddingBefore:0];
  v21 = [v3 safeStringForKey:@"assetIsStaged"];
  v16 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v21 paddingWith:@"=" paddingBefore:0];
  v20 = [v3 safeStringForKey:@"jobStatus"];
  v11 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v20 paddingWith:@"=" paddingBefore:0];
  v19 = [v3 safeStringForKey:@"scheduledIntervalSecs"];
  v14 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v19 paddingWith:@"=" paddingBefore:0];
  v17 = [v3 safeStringForKey:@"scheduledRemainingSecs"];
  v12 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v17 paddingWith:@"=" paddingBefore:0];
  v15 = [v3 safeStringForKey:@"activeClientCount"];
  v4 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v15 paddingWith:@"=" paddingBefore:0];
  v13 = [v3 safeStringForKey:@"activeMonitorCount"];
  v5 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v13 paddingWith:@"=" paddingBefore:0];
  v6 = [v3 safeStringForKey:@"maximumClientCount"];
  v7 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v6 paddingWith:@"=" paddingBefore:0];
  v8 = [v3 safeStringForKey:@"totalClientCount"];

  v9 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v8 paddingWith:@"=" paddingBefore:0];
  v22 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v27, v26, v18, v16, v11, v14, v12, v4, v5, v7, v9];

  return v22;
}

@end