@interface MANAutoAssetSummary
+ (id)assetRepresentationName:(int64_t)name;
+ (id)summaryNewMaxColumnStrings;
+ (id)summaryPaddedBanner:(id)banner;
+ (id)summaryPaddedHeader:(id)header;
+ (id)summaryPaddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before;
- (MANAutoAssetSummary)initWithAssetSelector:(id)selector withAssetRepresentation:(int64_t)representation withAssetWasPatched:(BOOL)patched withAssetIsStaged:(BOOL)staged withJobStatus:(id)status withScheduledIntervalSecs:(int64_t)secs withScheduledRemainingSecs:(int64_t)remainingSecs withPushDelaySecs:(int64_t)self0 withActiveClientCount:(int64_t)self1 withActiveMonitorCount:(int64_t)self2 withMaximumClientCount:(int64_t)self3 withTotalClientCount:(int64_t)self4;
- (MANAutoAssetSummary)initWithCoder:(id)coder;
- (id)assetRepresentationName;
- (id)description;
- (id)summary;
- (id)summaryPadded:(id)padded;
- (void)encodeWithCoder:(id)coder;
- (void)summaryBuildMaxColumnStrings:(id)strings;
@end

@implementation MANAutoAssetSummary

- (MANAutoAssetSummary)initWithAssetSelector:(id)selector withAssetRepresentation:(int64_t)representation withAssetWasPatched:(BOOL)patched withAssetIsStaged:(BOOL)staged withJobStatus:(id)status withScheduledIntervalSecs:(int64_t)secs withScheduledRemainingSecs:(int64_t)remainingSecs withPushDelaySecs:(int64_t)self0 withActiveClientCount:(int64_t)self1 withActiveMonitorCount:(int64_t)self2 withMaximumClientCount:(int64_t)self3 withTotalClientCount:(int64_t)self4
{
  selectorCopy = selector;
  statusCopy = status;
  v28.receiver = self;
  v28.super_class = MANAutoAssetSummary;
  v23 = [(MANAutoAssetSummary *)&v28 init];
  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      secsCopy = secs;
      v24 = _MADLog(@"Auto");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "{MANAutoAssetSummary-initWithAssetSelector} WARNING: wrong class provided as jobStatus", buf, 2u);
      }

      secs = secsCopy;
    }

    objc_storeStrong(&v23->_assetSelector, selector);
    v23->_assetRepresentation = representation;
    v23->_assetWasPatched = patched;
    v23->_assetIsStaged = staged;
    objc_storeStrong(&v23->_jobStatus, status);
    v23->_scheduledIntervalSecs = secs;
    v23->_scheduledRemainingSecs = remainingSecs;
    v23->_pushDelaySecs = delaySecs;
    v23->_activeClientCount = count;
    v23->_activeMonitorCount = monitorCount;
    v23->_maximumClientCount = clientCount;
    v23->_totalClientCount = totalClientCount;
  }

  return v23;
}

- (MANAutoAssetSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MANAutoAssetSummary;
  v5 = [(MANAutoAssetSummary *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v6;

    v5->_assetRepresentation = [coderCopy decodeInt64ForKey:@"assetRepresentation"];
    v5->_assetWasPatched = [coderCopy decodeBoolForKey:@"assetWasPatched"];
    v5->_assetIsStaged = [coderCopy decodeBoolForKey:@"assetIsStaged"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jobStatus"];
    jobStatus = v5->_jobStatus;
    v5->_jobStatus = v8;

    v5->_scheduledIntervalSecs = [coderCopy decodeIntegerForKey:@"scheduledIntervalSecs"];
    v5->_scheduledRemainingSecs = [coderCopy decodeIntegerForKey:@"scheduledRemainingSecs"];
    v5->_pushDelaySecs = [coderCopy decodeIntegerForKey:@"pushDelaySecs"];
    v5->_activeClientCount = [coderCopy decodeIntegerForKey:@"activeClientCount"];
    v5->_activeMonitorCount = [coderCopy decodeIntegerForKey:@"activeMonitorCount"];
    v5->_maximumClientCount = [coderCopy decodeIntegerForKey:@"maximumClientCount"];
    v5->_totalClientCount = [coderCopy decodeIntegerForKey:@"totalClientCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSelector = [(MANAutoAssetSummary *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  [coderCopy encodeInteger:-[MANAutoAssetSummary assetRepresentation](self forKey:{"assetRepresentation"), @"assetRepresentation"}];
  [coderCopy encodeBool:-[MANAutoAssetSummary assetWasPatched](self forKey:{"assetWasPatched"), @"assetWasPatched"}];
  [coderCopy encodeBool:-[MANAutoAssetSummary assetIsStaged](self forKey:{"assetIsStaged"), @"assetIsStaged"}];
  jobStatus = [(MANAutoAssetSummary *)self jobStatus];
  [coderCopy encodeObject:jobStatus forKey:@"jobStatus"];

  [coderCopy encodeInteger:-[MANAutoAssetSummary scheduledIntervalSecs](self forKey:{"scheduledIntervalSecs"), @"scheduledIntervalSecs"}];
  [coderCopy encodeInteger:-[MANAutoAssetSummary pushDelaySecs](self forKey:{"pushDelaySecs"), @"pushDelaySecs"}];
  [coderCopy encodeInteger:-[MANAutoAssetSummary scheduledRemainingSecs](self forKey:{"scheduledRemainingSecs"), @"scheduledRemainingSecs"}];
  [coderCopy encodeInteger:-[MANAutoAssetSummary activeClientCount](self forKey:{"activeClientCount"), @"activeClientCount"}];
  [coderCopy encodeInteger:-[MANAutoAssetSummary activeMonitorCount](self forKey:{"activeMonitorCount"), @"activeMonitorCount"}];
  [coderCopy encodeInteger:-[MANAutoAssetSummary maximumClientCount](self forKey:{"maximumClientCount"), @"maximumClientCount"}];
  [coderCopy encodeInteger:-[MANAutoAssetSummary totalClientCount](self forKey:{"totalClientCount"), @"totalClientCount"}];
}

- (id)description
{
  assetSelector = [(MANAutoAssetSummary *)self assetSelector];
  summary = [assetSelector summary];
  assetRepresentationName = [(MANAutoAssetSummary *)self assetRepresentationName];
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
  scheduledIntervalSecs = [(MANAutoAssetSummary *)self scheduledIntervalSecs];
  scheduledRemainingSecs = [(MANAutoAssetSummary *)self scheduledRemainingSecs];
  pushDelaySecs = [(MANAutoAssetSummary *)self pushDelaySecs];
  activeClientCount = [(MANAutoAssetSummary *)self activeClientCount];
  activeMonitorCount = [(MANAutoAssetSummary *)self activeMonitorCount];
  maximumClientCount = [(MANAutoAssetSummary *)self maximumClientCount];
  totalClientCount = [(MANAutoAssetSummary *)self totalClientCount];
  jobStatus = [(MANAutoAssetSummary *)self jobStatus];
  if (jobStatus)
  {
    jobStatus2 = [(MANAutoAssetSummary *)self jobStatus];
    [jobStatus2 description];
    v15 = v14 = assetSelector;
    v22 = totalClientCount;
    v20 = activeMonitorCount;
    v16 = assetRepresentationName;
    v17 = summary;
    v18 = [NSString stringWithFormat:@">>>\n                   assetSelector: %@\n             assetRepresentation: %@\n                 assetWasPatched: %@\n                   assetIsStaged: %@\n           scheduledIntervalSecs: %ld\n          scheduledRemainingSecs: %ld\n                   pushDelaySecs: %ld\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n%@<<<]", summary, assetRepresentationName, v26, v25, scheduledIntervalSecs, scheduledRemainingSecs, pushDelaySecs, activeClientCount, v20, maximumClientCount, v22, v15];

    assetSelector = v14;
  }

  else
  {
    v23 = totalClientCount;
    v21 = activeMonitorCount;
    v16 = assetRepresentationName;
    v17 = summary;
    v18 = [NSString stringWithFormat:@">>>\n                   assetSelector: %@\n             assetRepresentation: %@\n                 assetWasPatched: %@\n                   assetIsStaged: %@\n           scheduledIntervalSecs: %ld\n          scheduledRemainingSecs: %ld\n                   pushDelaySecs: %ld\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n%@<<<]", summary, assetRepresentationName, v26, v25, scheduledIntervalSecs, scheduledRemainingSecs, pushDelaySecs, activeClientCount, v21, maximumClientCount, v23, @"                       jobStatus: N\n"];
  }

  return v18;
}

- (id)summary
{
  assetSelector = [(MANAutoAssetSummary *)self assetSelector];
  summary = [assetSelector summary];

  assetRepresentationName = [(MANAutoAssetSummary *)self assetRepresentationName];
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
  jobStatus = [(MANAutoAssetSummary *)self jobStatus];
  if (jobStatus)
  {
    jobStatus2 = [(MANAutoAssetSummary *)self jobStatus];
    summary2 = [jobStatus2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v14 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledIntervalSecs](self, "scheduledIntervalSecs")];
  v16 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledRemainingSecs](self, "scheduledRemainingSecs")];
  v8 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary pushDelaySecs](self, "pushDelaySecs")];
  v9 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeClientCount](self, "activeClientCount")];
  v10 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeMonitorCount](self, "activeMonitorCount")];
  v11 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary maximumClientCount](self, "maximumClientCount")];
  v12 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary totalClientCount](self, "totalClientCount")];
  v15 = [NSString stringWithFormat:@"asset(%@)[%@]|patched:%@|staged:%@|status:%@|interval:%@|remaining:%@|pushDelay:%@|clients:%@|monitors:%@|maxClients:%@|totalClients:%@", summary, assetRepresentationName, v18, v17, summary2, v14, v16, v8, v9, v10, v11, v12];

  return v15;
}

- (void)summaryBuildMaxColumnStrings:(id)strings
{
  stringsCopy = strings;
  assetSelector = [(MANAutoAssetSummary *)self assetSelector];
  summary = [assetSelector summary];

  assetRepresentationName = [(MANAutoAssetSummary *)self assetRepresentationName];
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
  jobStatus = [(MANAutoAssetSummary *)self jobStatus];
  if (jobStatus)
  {
    jobStatus2 = [(MANAutoAssetSummary *)self jobStatus];
    summary2 = [jobStatus2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v55 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledIntervalSecs](self, "scheduledIntervalSecs")];
  v11 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledRemainingSecs](self, "scheduledRemainingSecs")];
  v12 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary pushDelaySecs](self, "pushDelaySecs")];
  v13 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeClientCount](self, "activeClientCount")];
  v14 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeMonitorCount](self, "activeMonitorCount")];
  v15 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary maximumClientCount](self, "maximumClientCount")];
  v16 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary totalClientCount](self, "totalClientCount")];
  v53 = summary;
  v17 = [summary length];
  v18 = [stringsCopy safeStringForKey:@"assetSelector"];
  v19 = [v18 length];

  if (v17 > v19)
  {
    [stringsCopy setSafeObject:v53 forKey:@"assetSelector"];
  }

  v20 = [assetRepresentationName length];
  v21 = [stringsCopy safeStringForKey:@"assetRepresentation"];
  v22 = [v21 length];

  if (v20 > v22)
  {
    [stringsCopy setSafeObject:assetRepresentationName forKey:@"assetRepresentation"];
  }

  v23 = [(__CFString *)v7 length];
  v24 = [stringsCopy safeStringForKey:@"assetWasPatched"];
  v25 = [v24 length];

  if (v23 > v25)
  {
    [stringsCopy setSafeObject:v7 forKey:@"assetWasPatched"];
  }

  v26 = [(__CFString *)v54 length];
  v27 = [stringsCopy safeStringForKey:@"assetIsStaged"];
  v28 = [v27 length];

  if (v26 > v28)
  {
    [stringsCopy setSafeObject:v7 forKey:@"assetIsStaged"];
  }

  v29 = [(__CFString *)summary2 length];
  v30 = [stringsCopy safeStringForKey:@"jobStatus"];
  v31 = [v30 length];

  if (v29 > v31)
  {
    [stringsCopy setSafeObject:summary2 forKey:@"jobStatus"];
  }

  v32 = [v55 length];
  v33 = [stringsCopy safeStringForKey:@"scheduledIntervalSecs"];
  v34 = [v33 length];

  if (v32 > v34)
  {
    [stringsCopy setSafeObject:v55 forKey:@"scheduledIntervalSecs"];
  }

  v35 = [v11 length];
  v36 = [stringsCopy safeStringForKey:@"scheduledRemainingSecs"];
  v37 = [v36 length];

  if (v35 > v37)
  {
    [stringsCopy setSafeObject:v11 forKey:@"scheduledRemainingSecs"];
  }

  v38 = [v12 length];
  v39 = [stringsCopy safeStringForKey:@"pushDelaySecs"];
  v40 = [v39 length];

  if (v38 > v40)
  {
    [stringsCopy setSafeObject:v12 forKey:@"pushDelaySecs"];
  }

  v41 = [v13 length];
  v42 = [stringsCopy safeStringForKey:@"activeClientCount"];
  v43 = [v42 length];

  if (v41 > v43)
  {
    [stringsCopy setSafeObject:v13 forKey:@"activeClientCount"];
  }

  v44 = [v14 length];
  v45 = [stringsCopy safeStringForKey:@"activeMonitorCount"];
  v46 = [v45 length];

  if (v44 > v46)
  {
    [stringsCopy setSafeObject:v14 forKey:@"activeMonitorCount"];
  }

  v47 = [v15 length];
  v48 = [stringsCopy safeStringForKey:@"maximumClientCount"];
  v49 = [v48 length];

  if (v47 > v49)
  {
    [stringsCopy setSafeObject:v15 forKey:@"maximumClientCount"];
  }

  v50 = [v16 length];
  v51 = [stringsCopy safeStringForKey:@"totalClientCount"];
  v52 = [v51 length];

  if (v50 > v52)
  {
    [stringsCopy setSafeObject:v16 forKey:@"totalClientCount"];
  }
}

- (id)summaryPadded:(id)padded
{
  paddedCopy = padded;
  assetSelector = [(MANAutoAssetSummary *)self assetSelector];
  summary = [assetSelector summary];

  assetRepresentationName = [(MANAutoAssetSummary *)self assetRepresentationName];
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
  jobStatus = [(MANAutoAssetSummary *)self jobStatus];
  if (jobStatus)
  {
    jobStatus2 = [(MANAutoAssetSummary *)self jobStatus];
    summary2 = [jobStatus2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v36 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledIntervalSecs](self, "scheduledIntervalSecs")];
  v32 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary scheduledRemainingSecs](self, "scheduledRemainingSecs")];
  v47 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary pushDelaySecs](self, "pushDelaySecs")];
  v46 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeClientCount](self, "activeClientCount")];
  v45 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary activeMonitorCount](self, "activeMonitorCount")];
  v44 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary maximumClientCount](self, "maximumClientCount")];
  v43 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSummary totalClientCount](self, "totalClientCount")];
  v39 = [paddedCopy safeStringForKey:@"assetSelector"];
  v30 = summary;
  v42 = [MANAutoAssetSummary summaryPaddedString:summary paddingToLenghtOfString:v39 paddingWith:@" " paddingBefore:0];
  v38 = [paddedCopy safeStringForKey:@"assetRepresentation"];
  v29 = assetRepresentationName;
  v41 = [MANAutoAssetSummary summaryPaddedString:assetRepresentationName paddingToLenghtOfString:v38 paddingWith:@" " paddingBefore:0];
  v37 = [paddedCopy safeStringForKey:@"assetWasPatched"];
  v40 = [MANAutoAssetSummary summaryPaddedString:v48 paddingToLenghtOfString:v37 paddingWith:@" " paddingBefore:0];
  v33 = [paddedCopy safeStringForKey:@"assetIsStaged"];
  v26 = [MANAutoAssetSummary summaryPaddedString:v34 paddingToLenghtOfString:v33 paddingWith:@" " paddingBefore:0];

  v35 = [paddedCopy safeStringForKey:@"jobStatus"];
  v24 = [MANAutoAssetSummary summaryPaddedString:summary2 paddingToLenghtOfString:v35 paddingWith:@" " paddingBefore:0];
  v28 = [paddedCopy safeStringForKey:@"scheduledIntervalSecs"];
  v23 = [MANAutoAssetSummary summaryPaddedString:v36 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:1];
  v27 = [paddedCopy safeStringForKey:@"scheduledRemainingSecs"];
  v19 = [MANAutoAssetSummary summaryPaddedString:v32 paddingToLenghtOfString:v27 paddingWith:@" " paddingBefore:1];
  v25 = [paddedCopy safeStringForKey:@"pushDelaySecs"];
  v20 = [MANAutoAssetSummary summaryPaddedString:v47 paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:1];
  v22 = [paddedCopy safeStringForKey:@"activeClientCount"];
  v12 = [MANAutoAssetSummary summaryPaddedString:v46 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v21 = [paddedCopy safeStringForKey:@"activeMonitorCount"];
  v13 = [MANAutoAssetSummary summaryPaddedString:v45 paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:1];
  v14 = [paddedCopy safeStringForKey:@"maximumClientCount"];
  v15 = [MANAutoAssetSummary summaryPaddedString:v44 paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:1];
  v16 = [paddedCopy safeStringForKey:@"totalClientCount"];

  v17 = [MANAutoAssetSummary summaryPaddedString:v43 paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:1];
  v31 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v42, v41, v40, v26, v24, v23, v19, v20, v12, v13, v15, v17];

  return v31;
}

- (id)assetRepresentationName
{
  assetRepresentation = [(MANAutoAssetSummary *)self assetRepresentation];

  return [MANAutoAssetSummary assetRepresentationName:assetRepresentation];
}

+ (id)assetRepresentationName:(int64_t)name
{
  v3 = @"UNKNOWN";
  if (name > 400)
  {
    v4 = @"AvailableForStaging";
    v8 = @"BeingStaged";
    v9 = @"Staged";
    if (name != 603)
    {
      v9 = @"UNKNOWN";
    }

    if (name != 602)
    {
      v8 = v9;
    }

    if (name != 601)
    {
      v4 = v8;
    }

    if (name == 600)
    {
      v3 = @"CandidateForStaging";
    }

    if (name == 500)
    {
      v3 = @"VersionDownloaded";
    }

    if (name == 401)
    {
      v3 = @"ScheduledPushed";
    }

    v7 = name <= 600;
  }

  else
  {
    v4 = @"AwaitingUnlock";
    v5 = @"Active";
    v6 = @"Scheduled";
    if (name != 400)
    {
      v6 = @"UNKNOWN";
    }

    if (name != 300)
    {
      v5 = v6;
    }

    if (name != 201)
    {
      v4 = v5;
    }

    if (name == 200)
    {
      v3 = @"AwaitingSync";
    }

    if (name == 100)
    {
      v3 = @"Monitor";
    }

    if (!name)
    {
      v3 = @"None";
    }

    v7 = name <= 200;
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

+ (id)summaryPaddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before
{
  beforeCopy = before;
  stringCopy = string;
  ofStringCopy = ofString;
  withCopy = with;
  v12 = stringCopy;
  v13 = [v12 length];
  v14 = v12;
  if (v13 < [ofStringCopy length])
  {
    v15 = [ofStringCopy length];
    v16 = v15 - [v12 length];
    v17 = +[NSString string];
    v18 = [v17 stringByPaddingToLength:v16 withString:withCopy startingAtIndex:0];

    v19 = [NSString alloc];
    if (beforeCopy)
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

+ (id)summaryPaddedHeader:(id)header
{
  headerCopy = header;
  v25 = [headerCopy safeStringForKey:@"assetSelector"];
  v27 = [MANAutoAssetSummary summaryPaddedString:@"assetSelector" paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:0];
  v24 = [headerCopy safeStringForKey:@"assetRepresentation"];
  v19 = [MANAutoAssetSummary summaryPaddedString:@"assetRepresentation" paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:0];
  v23 = [headerCopy safeStringForKey:@"assetWasPatched"];
  v17 = [MANAutoAssetSummary summaryPaddedString:@"assetWasPatched" paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v21 = [headerCopy safeStringForKey:@"assetIsStaged"];
  v15 = [MANAutoAssetSummary summaryPaddedString:@"assetIsStaged" paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v20 = [headerCopy safeStringForKey:@"jobStatus"];
  v26 = [MANAutoAssetSummary summaryPaddedString:@"jobStatus" paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:0];
  v18 = [headerCopy safeStringForKey:@"scheduledIntervalSecs"];
  v13 = [MANAutoAssetSummary summaryPaddedString:@"scheduledIntervalSecs" paddingToLenghtOfString:v18 paddingWith:@" " paddingBefore:0];
  v16 = [headerCopy safeStringForKey:@"scheduledRemainingSecs"];
  v11 = [MANAutoAssetSummary summaryPaddedString:@"scheduledRemainingSecs" paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:0];
  v14 = [headerCopy safeStringForKey:@"activeClientCount"];
  v4 = [MANAutoAssetSummary summaryPaddedString:@"activeClientCount" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [headerCopy safeStringForKey:@"activeMonitorCount"];
  v5 = [MANAutoAssetSummary summaryPaddedString:@"activeMonitorCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v6 = [headerCopy safeStringForKey:@"maximumClientCount"];
  v7 = [MANAutoAssetSummary summaryPaddedString:@"maximumClientCount" paddingToLenghtOfString:v6 paddingWith:@" " paddingBefore:0];
  v8 = [headerCopy safeStringForKey:@"totalClientCount"];

  v9 = [MANAutoAssetSummary summaryPaddedString:@"totalClientCount" paddingToLenghtOfString:v8 paddingWith:@" " paddingBefore:0];
  v22 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v27, v19, v17, v15, v26, v13, v11, v4, v5, v7, v9];

  return v22;
}

+ (id)summaryPaddedBanner:(id)banner
{
  bannerCopy = banner;
  v25 = [bannerCopy safeStringForKey:@"assetSelector"];
  v27 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v25 paddingWith:@"=" paddingBefore:0];
  v24 = [bannerCopy safeStringForKey:@"assetRepresentation"];
  v26 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v24 paddingWith:@"=" paddingBefore:0];
  v23 = [bannerCopy safeStringForKey:@"assetWasPatched"];
  v18 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v23 paddingWith:@"=" paddingBefore:0];
  v21 = [bannerCopy safeStringForKey:@"assetIsStaged"];
  v16 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v21 paddingWith:@"=" paddingBefore:0];
  v20 = [bannerCopy safeStringForKey:@"jobStatus"];
  v11 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v20 paddingWith:@"=" paddingBefore:0];
  v19 = [bannerCopy safeStringForKey:@"scheduledIntervalSecs"];
  v14 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v19 paddingWith:@"=" paddingBefore:0];
  v17 = [bannerCopy safeStringForKey:@"scheduledRemainingSecs"];
  v12 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v17 paddingWith:@"=" paddingBefore:0];
  v15 = [bannerCopy safeStringForKey:@"activeClientCount"];
  v4 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v15 paddingWith:@"=" paddingBefore:0];
  v13 = [bannerCopy safeStringForKey:@"activeMonitorCount"];
  v5 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v13 paddingWith:@"=" paddingBefore:0];
  v6 = [bannerCopy safeStringForKey:@"maximumClientCount"];
  v7 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v6 paddingWith:@"=" paddingBefore:0];
  v8 = [bannerCopy safeStringForKey:@"totalClientCount"];

  v9 = [MANAutoAssetSummary summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v8 paddingWith:@"=" paddingBefore:0];
  v22 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v27, v26, v18, v16, v11, v14, v12, v4, v5, v7, v9];

  return v22;
}

@end