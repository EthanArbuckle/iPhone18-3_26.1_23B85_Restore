@interface MANAutoAssetSetLockTracker
+ (id)summaryNewMaxColumnStrings;
+ (id)summaryPaddedBanner:(id)banner;
+ (id)summaryPaddedHeader:(id)header;
+ (id)summaryPaddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before;
- (MANAutoAssetSetLockTracker)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)initForClientLockReason:(id)reason lockingWithUsagePolicy:(id)policy;
- (id)summary;
- (id)summaryPadded:(id)padded;
- (void)encodeWithCoder:(id)coder;
- (void)summaryBuildMaxColumnStrings:(id)strings;
@end

@implementation MANAutoAssetSetLockTracker

- (id)initForClientLockReason:(id)reason lockingWithUsagePolicy:(id)policy
{
  reasonCopy = reason;
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = MANAutoAssetSetLockTracker;
  v9 = [(MANAutoAssetSetLockTracker *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientLockReason, reason);
    objc_storeStrong(&v10->_lockUsagePolicy, policy);
    *&v10->_activeLockCount = vdupq_n_s64(1uLL);
    *&v10->_totalLockCount = xmmword_33BC90;
    v11 = +[NSDate date];
    firstLockTimestamp = v10->_firstLockTimestamp;
    v10->_firstLockTimestamp = v11;

    objc_storeStrong(&v10->_lastRefreshTimestamp, v10->_firstLockTimestamp);
  }

  return v10;
}

- (MANAutoAssetSetLockTracker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MANAutoAssetSetLockTracker;
  v5 = [(MANAutoAssetSetLockTracker *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientLockReason"];
    clientLockReason = v5->_clientLockReason;
    v5->_clientLockReason = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockUsagePolicy"];
    lockUsagePolicy = v5->_lockUsagePolicy;
    v5->_lockUsagePolicy = v8;

    v5->_activeLockCount = [coderCopy decodeIntegerForKey:@"activeLockCount"];
    v5->_maximumLockCount = [coderCopy decodeIntegerForKey:@"maximumLockCount"];
    v5->_totalLockCount = [coderCopy decodeIntegerForKey:@"totalLockCount"];
    v5->_continueCount = [coderCopy decodeIntegerForKey:@"continueLockCount"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstLockTimestamp"];
    firstLockTimestamp = v5->_firstLockTimestamp;
    v5->_firstLockTimestamp = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastRefreshTimestamp"];
    lastRefreshTimestamp = v5->_lastRefreshTimestamp;
    v5->_lastRefreshTimestamp = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientLockReason = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  [coderCopy encodeObject:clientLockReason forKey:@"clientLockReason"];

  lockUsagePolicy = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  [coderCopy encodeObject:lockUsagePolicy forKey:@"lockUsagePolicy"];

  [coderCopy encodeInteger:-[MANAutoAssetSetLockTracker activeLockCount](self forKey:{"activeLockCount"), @"activeLockCount"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetLockTracker maximumLockCount](self forKey:{"maximumLockCount"), @"maximumLockCount"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetLockTracker totalLockCount](self forKey:{"totalLockCount"), @"totalLockCount"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetLockTracker continueCount](self forKey:{"continueCount"), @"continueLockCount"}];
  firstLockTimestamp = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  [coderCopy encodeObject:firstLockTimestamp forKey:@"firstLockTimestamp"];

  lastRefreshTimestamp = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  [coderCopy encodeObject:lastRefreshTimestamp forKey:@"lastRefreshTimestamp"];
}

- (id)copy
{
  v3 = [MANAutoAssetSetLockTracker alloc];
  clientLockReason = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  lockUsagePolicy = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  v6 = [(MANAutoAssetSetLockTracker *)v3 initForClientLockReason:clientLockReason lockingWithUsagePolicy:lockUsagePolicy];

  [v6 setActiveLockCount:{-[MANAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")}];
  [v6 setMaximumLockCount:{-[MANAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")}];
  [v6 setTotalLockCount:{-[MANAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")}];
  [v6 setContinueCount:{-[MANAutoAssetSetLockTracker continueCount](self, "continueCount")}];
  firstLockTimestamp = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  v8 = [firstLockTimestamp copy];
  [v6 setFirstLockTimestamp:v8];

  lastRefreshTimestamp = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v10 = [lastRefreshTimestamp copy];
  [v6 setLastRefreshTimestamp:v10];

  return v6;
}

- (id)description
{
  clientLockReason = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];
  lockUsagePolicy = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  activeLockCount = [(MANAutoAssetSetLockTracker *)self activeLockCount];
  maximumLockCount = [(MANAutoAssetSetLockTracker *)self maximumLockCount];
  totalLockCount = [(MANAutoAssetSetLockTracker *)self totalLockCount];
  continueCount = [(MANAutoAssetSetLockTracker *)self continueCount];
  firstLockTimestamp = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  lastRefreshTimestamp = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v12 = [NSString stringWithFormat:@">>>\n        clientLockReason: %@\n         lockUsagePolicy: %@\n         activeLockCount: %lld\n        maximumLockCount: %lld\n          totalLockCount: %lld\n           continueCount: %lld\n      firstLockTimestamp: %@\n    lastRefreshTimestamp: %@\n<<<]", summary, summary2, activeLockCount, maximumLockCount, totalLockCount, continueCount, firstLockTimestamp, lastRefreshTimestamp];

  if (lockUsagePolicy)
  {
  }

  return v12;
}

- (id)summary
{
  clientLockReason = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];

  lockUsagePolicy = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v7 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v8 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v9 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v10 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v11 = [NSString alloc];
  firstLockTimestamp = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  v13 = [v11 initWithFormat:@"%@", firstLockTimestamp];

  v14 = [NSString alloc];
  lastRefreshTimestamp = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v16 = [v14 initWithFormat:@"%@", lastRefreshTimestamp];

  v17 = [NSString stringWithFormat:@"clientReason:%@|policy:%@|locks active:%@, max:%@, total:%@|continues:%@|first:%@|last:%@", summary, summary2, v7, v8, v9, v10, v13, v16];

  return v17;
}

- (void)summaryBuildMaxColumnStrings:(id)strings
{
  stringsCopy = strings;
  clientLockReason = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];

  lockUsagePolicy = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v8 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v9 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v10 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v11 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v12 = [NSString alloc];
  firstLockTimestamp = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  v14 = [v12 initWithFormat:@"%@", firstLockTimestamp];

  v15 = [NSString alloc];
  lastRefreshTimestamp = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v17 = [v15 initWithFormat:@"%@", lastRefreshTimestamp];

  v18 = [summary length];
  v19 = [stringsCopy safeStringForKey:@"clientLockReason"];
  v20 = [v19 length];

  if (v18 > v20)
  {
    [stringsCopy setSafeObject:summary forKey:@"clientLockReason"];
  }

  v21 = [(__CFString *)summary2 length];
  v22 = [stringsCopy safeStringForKey:@"lockUsagePolicy"];
  v23 = [v22 length];

  if (v21 > v23)
  {
    [stringsCopy setSafeObject:summary2 forKey:@"lockUsagePolicy"];
  }

  v24 = [v8 length];
  v25 = [stringsCopy safeStringForKey:@"activeLockCount"];
  v26 = [v25 length];

  if (v24 > v26)
  {
    [stringsCopy setSafeObject:v8 forKey:@"activeLockCount"];
  }

  v27 = [v9 length];
  v28 = [stringsCopy safeStringForKey:@"maximumLockCount"];
  v29 = [v28 length];

  if (v27 > v29)
  {
    [stringsCopy setSafeObject:v9 forKey:@"maximumLockCount"];
  }

  v30 = [v10 length];
  v31 = [stringsCopy safeStringForKey:@"totalLockCount"];
  v32 = [v31 length];

  if (v30 > v32)
  {
    [stringsCopy setSafeObject:v10 forKey:@"totalLockCount"];
  }

  v33 = [v11 length];
  v34 = [stringsCopy safeStringForKey:@"continueLockCount"];
  v35 = [v34 length];

  if (v33 > v35)
  {
    [stringsCopy setSafeObject:v11 forKey:@"continueLockCount"];
  }

  v36 = [v14 length];
  v37 = [stringsCopy safeStringForKey:@"firstLockTimestamp"];
  v38 = [v37 length];

  if (v36 > v38)
  {
    [stringsCopy setSafeObject:v14 forKey:@"firstLockTimestamp"];
  }

  v39 = [v17 length];
  v40 = [stringsCopy safeStringForKey:@"lastRefreshTimestamp"];
  v41 = [v40 length];

  if (v39 > v41)
  {
    [stringsCopy setSafeObject:v17 forKey:@"lastRefreshTimestamp"];
  }
}

- (id)summaryPadded:(id)padded
{
  paddedCopy = padded;
  clientLockReason = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];

  lockUsagePolicy = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v35 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v29 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v27 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v34 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v8 = [NSString alloc];
  firstLockTimestamp = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  v33 = [v8 initWithFormat:@"%@", firstLockTimestamp];

  v10 = [NSString alloc];
  lastRefreshTimestamp = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v32 = [v10 initWithFormat:@"%@", lastRefreshTimestamp];

  v31 = [paddedCopy safeStringForKey:@"clientLockReason"];
  v25 = [MANAutoAssetSetLockTracker summaryPaddedString:summary paddingToLenghtOfString:v31 paddingWith:@" " paddingBefore:0];
  v30 = [paddedCopy safeStringForKey:@"lockUsagePolicy"];
  v23 = [MANAutoAssetSetLockTracker summaryPaddedString:summary2 paddingToLenghtOfString:v30 paddingWith:@" " paddingBefore:0];
  v28 = [paddedCopy safeStringForKey:@"activeLockCount"];
  v21 = [MANAutoAssetSetLockTracker summaryPaddedString:v35 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:1];
  v24 = [paddedCopy safeStringForKey:@"maximumLockCount"];
  v12 = [MANAutoAssetSetLockTracker summaryPaddedString:v29 paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:1];
  v22 = [paddedCopy safeStringForKey:@"totalLockCount"];
  v13 = [MANAutoAssetSetLockTracker summaryPaddedString:v27 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v20 = [paddedCopy safeStringForKey:@"continueLockCount"];
  v14 = [MANAutoAssetSetLockTracker summaryPaddedString:v34 paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:1];
  v15 = [paddedCopy safeStringForKey:@"firstLockTimestamp"];
  v16 = [MANAutoAssetSetLockTracker summaryPaddedString:v33 paddingToLenghtOfString:v15 paddingWith:@" " paddingBefore:1];
  v17 = [paddedCopy safeStringForKey:@"lastRefreshTimestamp"];

  v18 = [MANAutoAssetSetLockTracker summaryPaddedString:v32 paddingToLenghtOfString:v17 paddingWith:@" " paddingBefore:1];
  v26 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@", v25, v23, v21, v12, v13, v14, v16, v18];

  return v26;
}

+ (id)summaryNewMaxColumnStrings
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setSafeObject:@"clientLockReason" forKey:@"clientLockReason"];
  [v2 setSafeObject:@"lockUsagePolicy" forKey:@"lockUsagePolicy"];
  [v2 setSafeObject:@"activeLockCount" forKey:@"activeLockCount"];
  [v2 setSafeObject:@"maximumLockCount" forKey:@"maximumLockCount"];
  [v2 setSafeObject:@"totalLockCount" forKey:@"totalLockCount"];
  [v2 setSafeObject:@"continueLockCount" forKey:@"continueLockCount"];
  [v2 setSafeObject:@"firstLockTimestamp" forKey:@"firstLockTimestamp"];
  [v2 setSafeObject:@"lastRefreshTimestamp" forKey:@"lastRefreshTimestamp"];

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
  v21 = [headerCopy safeStringForKey:@"clientLockReason"];
  v17 = [MANAutoAssetSetLockTracker summaryPaddedString:@"clientLockReason" paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v20 = [headerCopy safeStringForKey:@"lockUsagePolicy"];
  v15 = [MANAutoAssetSetLockTracker summaryPaddedString:@"lockUsagePolicy" paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:0];
  v18 = [headerCopy safeStringForKey:@"activeLockCount"];
  v13 = [MANAutoAssetSetLockTracker summaryPaddedString:@"activeLockCount" paddingToLenghtOfString:v18 paddingWith:@" " paddingBefore:0];
  v16 = [headerCopy safeStringForKey:@"maximumLockCount"];
  v11 = [MANAutoAssetSetLockTracker summaryPaddedString:@"maximumLockCount" paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:0];
  v14 = [headerCopy safeStringForKey:@"totalLockCount"];
  v4 = [MANAutoAssetSetLockTracker summaryPaddedString:@"totalLockCount" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [headerCopy safeStringForKey:@"continueLockCount"];
  v5 = [MANAutoAssetSetLockTracker summaryPaddedString:@"continueLockCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v6 = [headerCopy safeStringForKey:@"firstLockTimestamp"];
  v7 = [MANAutoAssetSetLockTracker summaryPaddedString:@"firstLockTimestamp" paddingToLenghtOfString:v6 paddingWith:@" " paddingBefore:0];
  v8 = [headerCopy safeStringForKey:@"lastRefreshTimestamp"];

  v9 = [MANAutoAssetSetLockTracker summaryPaddedString:@"lastRefreshTimestamp" paddingToLenghtOfString:v8 paddingWith:@" " paddingBefore:0];
  v19 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@", v17, v15, v13, v11, v4, v5, v7, v9];

  return v19;
}

+ (id)summaryPaddedBanner:(id)banner
{
  bannerCopy = banner;
  v21 = [bannerCopy safeStringForKey:@"clientLockReason"];
  v17 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v21 paddingWith:@"=" paddingBefore:0];
  v20 = [bannerCopy safeStringForKey:@"lockUsagePolicy"];
  v15 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v20 paddingWith:@"=" paddingBefore:0];
  v18 = [bannerCopy safeStringForKey:@"activeLockCount"];
  v13 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v18 paddingWith:@"=" paddingBefore:0];
  v16 = [bannerCopy safeStringForKey:@"maximumLockCount"];
  v11 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v16 paddingWith:@"=" paddingBefore:0];
  v14 = [bannerCopy safeStringForKey:@"totalLockCount"];
  v4 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v14 paddingWith:@"=" paddingBefore:0];
  v12 = [bannerCopy safeStringForKey:@"continueLockCount"];
  v5 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v12 paddingWith:@"=" paddingBefore:0];
  v6 = [bannerCopy safeStringForKey:@"firstLockTimestamp"];
  v7 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v6 paddingWith:@"=" paddingBefore:0];
  v8 = [bannerCopy safeStringForKey:@"lastRefreshTimestamp"];

  v9 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v8 paddingWith:@"=" paddingBefore:0];
  v19 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@", v17, v15, v13, v11, v4, v5, v7, v9];

  return v19;
}

@end