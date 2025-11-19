@interface MANAutoAssetSetLockTracker
+ (id)summaryNewMaxColumnStrings;
+ (id)summaryPaddedBanner:(id)a3;
+ (id)summaryPaddedHeader:(id)a3;
+ (id)summaryPaddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6;
- (MANAutoAssetSetLockTracker)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)initForClientLockReason:(id)a3 lockingWithUsagePolicy:(id)a4;
- (id)summary;
- (id)summaryPadded:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)summaryBuildMaxColumnStrings:(id)a3;
@end

@implementation MANAutoAssetSetLockTracker

- (id)initForClientLockReason:(id)a3 lockingWithUsagePolicy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MANAutoAssetSetLockTracker;
  v9 = [(MANAutoAssetSetLockTracker *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientLockReason, a3);
    objc_storeStrong(&v10->_lockUsagePolicy, a4);
    *&v10->_activeLockCount = vdupq_n_s64(1uLL);
    *&v10->_totalLockCount = xmmword_33BC90;
    v11 = +[NSDate date];
    firstLockTimestamp = v10->_firstLockTimestamp;
    v10->_firstLockTimestamp = v11;

    objc_storeStrong(&v10->_lastRefreshTimestamp, v10->_firstLockTimestamp);
  }

  return v10;
}

- (MANAutoAssetSetLockTracker)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MANAutoAssetSetLockTracker;
  v5 = [(MANAutoAssetSetLockTracker *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientLockReason"];
    clientLockReason = v5->_clientLockReason;
    v5->_clientLockReason = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockUsagePolicy"];
    lockUsagePolicy = v5->_lockUsagePolicy;
    v5->_lockUsagePolicy = v8;

    v5->_activeLockCount = [v4 decodeIntegerForKey:@"activeLockCount"];
    v5->_maximumLockCount = [v4 decodeIntegerForKey:@"maximumLockCount"];
    v5->_totalLockCount = [v4 decodeIntegerForKey:@"totalLockCount"];
    v5->_continueCount = [v4 decodeIntegerForKey:@"continueLockCount"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstLockTimestamp"];
    firstLockTimestamp = v5->_firstLockTimestamp;
    v5->_firstLockTimestamp = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastRefreshTimestamp"];
    lastRefreshTimestamp = v5->_lastRefreshTimestamp;
    v5->_lastRefreshTimestamp = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  [v4 encodeObject:v5 forKey:@"clientLockReason"];

  v6 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  [v4 encodeObject:v6 forKey:@"lockUsagePolicy"];

  [v4 encodeInteger:-[MANAutoAssetSetLockTracker activeLockCount](self forKey:{"activeLockCount"), @"activeLockCount"}];
  [v4 encodeInteger:-[MANAutoAssetSetLockTracker maximumLockCount](self forKey:{"maximumLockCount"), @"maximumLockCount"}];
  [v4 encodeInteger:-[MANAutoAssetSetLockTracker totalLockCount](self forKey:{"totalLockCount"), @"totalLockCount"}];
  [v4 encodeInteger:-[MANAutoAssetSetLockTracker continueCount](self forKey:{"continueCount"), @"continueLockCount"}];
  v7 = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  [v4 encodeObject:v7 forKey:@"firstLockTimestamp"];

  v8 = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  [v4 encodeObject:v8 forKey:@"lastRefreshTimestamp"];
}

- (id)copy
{
  v3 = [MANAutoAssetSetLockTracker alloc];
  v4 = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  v5 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  v6 = [(MANAutoAssetSetLockTracker *)v3 initForClientLockReason:v4 lockingWithUsagePolicy:v5];

  [v6 setActiveLockCount:{-[MANAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")}];
  [v6 setMaximumLockCount:{-[MANAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")}];
  [v6 setTotalLockCount:{-[MANAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")}];
  [v6 setContinueCount:{-[MANAutoAssetSetLockTracker continueCount](self, "continueCount")}];
  v7 = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  v8 = [v7 copy];
  [v6 setFirstLockTimestamp:v8];

  v9 = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v10 = [v9 copy];
  [v6 setLastRefreshTimestamp:v10];

  return v6;
}

- (id)description
{
  v15 = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  v3 = [v15 summary];
  v4 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (v4)
  {
    v14 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
    v5 = [v14 summary];
  }

  else
  {
    v5 = @"NONE";
  }

  v6 = [(MANAutoAssetSetLockTracker *)self activeLockCount];
  v7 = [(MANAutoAssetSetLockTracker *)self maximumLockCount];
  v8 = [(MANAutoAssetSetLockTracker *)self totalLockCount];
  v9 = [(MANAutoAssetSetLockTracker *)self continueCount];
  v10 = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  v11 = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v12 = [NSString stringWithFormat:@">>>\n        clientLockReason: %@\n         lockUsagePolicy: %@\n         activeLockCount: %lld\n        maximumLockCount: %lld\n          totalLockCount: %lld\n           continueCount: %lld\n      firstLockTimestamp: %@\n    lastRefreshTimestamp: %@\n<<<]", v3, v5, v6, v7, v8, v9, v10, v11];

  if (v4)
  {
  }

  return v12;
}

- (id)summary
{
  v3 = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  v19 = [v3 summary];

  v4 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (v4)
  {
    v5 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
    v6 = [v5 summary];
  }

  else
  {
    v6 = @"NONE";
  }

  v7 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v8 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v9 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v10 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v11 = [NSString alloc];
  v12 = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  v13 = [v11 initWithFormat:@"%@", v12];

  v14 = [NSString alloc];
  v15 = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v16 = [v14 initWithFormat:@"%@", v15];

  v17 = [NSString stringWithFormat:@"clientReason:%@|policy:%@|locks active:%@, max:%@, total:%@|continues:%@|first:%@|last:%@", v19, v6, v7, v8, v9, v10, v13, v16];

  return v17;
}

- (void)summaryBuildMaxColumnStrings:(id)a3
{
  v43 = a3;
  v4 = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  v42 = [v4 summary];

  v5 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (v5)
  {
    v6 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
    v7 = [v6 summary];
  }

  else
  {
    v7 = @"NONE";
  }

  v8 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v9 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v10 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v11 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v12 = [NSString alloc];
  v13 = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  v14 = [v12 initWithFormat:@"%@", v13];

  v15 = [NSString alloc];
  v16 = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v17 = [v15 initWithFormat:@"%@", v16];

  v18 = [v42 length];
  v19 = [v43 safeStringForKey:@"clientLockReason"];
  v20 = [v19 length];

  if (v18 > v20)
  {
    [v43 setSafeObject:v42 forKey:@"clientLockReason"];
  }

  v21 = [(__CFString *)v7 length];
  v22 = [v43 safeStringForKey:@"lockUsagePolicy"];
  v23 = [v22 length];

  if (v21 > v23)
  {
    [v43 setSafeObject:v7 forKey:@"lockUsagePolicy"];
  }

  v24 = [v8 length];
  v25 = [v43 safeStringForKey:@"activeLockCount"];
  v26 = [v25 length];

  if (v24 > v26)
  {
    [v43 setSafeObject:v8 forKey:@"activeLockCount"];
  }

  v27 = [v9 length];
  v28 = [v43 safeStringForKey:@"maximumLockCount"];
  v29 = [v28 length];

  if (v27 > v29)
  {
    [v43 setSafeObject:v9 forKey:@"maximumLockCount"];
  }

  v30 = [v10 length];
  v31 = [v43 safeStringForKey:@"totalLockCount"];
  v32 = [v31 length];

  if (v30 > v32)
  {
    [v43 setSafeObject:v10 forKey:@"totalLockCount"];
  }

  v33 = [v11 length];
  v34 = [v43 safeStringForKey:@"continueLockCount"];
  v35 = [v34 length];

  if (v33 > v35)
  {
    [v43 setSafeObject:v11 forKey:@"continueLockCount"];
  }

  v36 = [v14 length];
  v37 = [v43 safeStringForKey:@"firstLockTimestamp"];
  v38 = [v37 length];

  if (v36 > v38)
  {
    [v43 setSafeObject:v14 forKey:@"firstLockTimestamp"];
  }

  v39 = [v17 length];
  v40 = [v43 safeStringForKey:@"lastRefreshTimestamp"];
  v41 = [v40 length];

  if (v39 > v41)
  {
    [v43 setSafeObject:v17 forKey:@"lastRefreshTimestamp"];
  }
}

- (id)summaryPadded:(id)a3
{
  v4 = a3;
  v5 = [(MANAutoAssetSetLockTracker *)self clientLockReason];
  v37 = [v5 summary];

  v6 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (v6)
  {
    v7 = [(MANAutoAssetSetLockTracker *)self lockUsagePolicy];
    v36 = [v7 summary];
  }

  else
  {
    v36 = @"NONE";
  }

  v35 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v29 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v27 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v34 = [[NSString alloc] initWithFormat:@"%lld", -[MANAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v8 = [NSString alloc];
  v9 = [(MANAutoAssetSetLockTracker *)self firstLockTimestamp];
  v33 = [v8 initWithFormat:@"%@", v9];

  v10 = [NSString alloc];
  v11 = [(MANAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v32 = [v10 initWithFormat:@"%@", v11];

  v31 = [v4 safeStringForKey:@"clientLockReason"];
  v25 = [MANAutoAssetSetLockTracker summaryPaddedString:v37 paddingToLenghtOfString:v31 paddingWith:@" " paddingBefore:0];
  v30 = [v4 safeStringForKey:@"lockUsagePolicy"];
  v23 = [MANAutoAssetSetLockTracker summaryPaddedString:v36 paddingToLenghtOfString:v30 paddingWith:@" " paddingBefore:0];
  v28 = [v4 safeStringForKey:@"activeLockCount"];
  v21 = [MANAutoAssetSetLockTracker summaryPaddedString:v35 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:1];
  v24 = [v4 safeStringForKey:@"maximumLockCount"];
  v12 = [MANAutoAssetSetLockTracker summaryPaddedString:v29 paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:1];
  v22 = [v4 safeStringForKey:@"totalLockCount"];
  v13 = [MANAutoAssetSetLockTracker summaryPaddedString:v27 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v20 = [v4 safeStringForKey:@"continueLockCount"];
  v14 = [MANAutoAssetSetLockTracker summaryPaddedString:v34 paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:1];
  v15 = [v4 safeStringForKey:@"firstLockTimestamp"];
  v16 = [MANAutoAssetSetLockTracker summaryPaddedString:v33 paddingToLenghtOfString:v15 paddingWith:@" " paddingBefore:1];
  v17 = [v4 safeStringForKey:@"lastRefreshTimestamp"];

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
  v21 = [v3 safeStringForKey:@"clientLockReason"];
  v17 = [MANAutoAssetSetLockTracker summaryPaddedString:@"clientLockReason" paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v20 = [v3 safeStringForKey:@"lockUsagePolicy"];
  v15 = [MANAutoAssetSetLockTracker summaryPaddedString:@"lockUsagePolicy" paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:0];
  v18 = [v3 safeStringForKey:@"activeLockCount"];
  v13 = [MANAutoAssetSetLockTracker summaryPaddedString:@"activeLockCount" paddingToLenghtOfString:v18 paddingWith:@" " paddingBefore:0];
  v16 = [v3 safeStringForKey:@"maximumLockCount"];
  v11 = [MANAutoAssetSetLockTracker summaryPaddedString:@"maximumLockCount" paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:0];
  v14 = [v3 safeStringForKey:@"totalLockCount"];
  v4 = [MANAutoAssetSetLockTracker summaryPaddedString:@"totalLockCount" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [v3 safeStringForKey:@"continueLockCount"];
  v5 = [MANAutoAssetSetLockTracker summaryPaddedString:@"continueLockCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v6 = [v3 safeStringForKey:@"firstLockTimestamp"];
  v7 = [MANAutoAssetSetLockTracker summaryPaddedString:@"firstLockTimestamp" paddingToLenghtOfString:v6 paddingWith:@" " paddingBefore:0];
  v8 = [v3 safeStringForKey:@"lastRefreshTimestamp"];

  v9 = [MANAutoAssetSetLockTracker summaryPaddedString:@"lastRefreshTimestamp" paddingToLenghtOfString:v8 paddingWith:@" " paddingBefore:0];
  v19 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@", v17, v15, v13, v11, v4, v5, v7, v9];

  return v19;
}

+ (id)summaryPaddedBanner:(id)a3
{
  v3 = a3;
  v21 = [v3 safeStringForKey:@"clientLockReason"];
  v17 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v21 paddingWith:@"=" paddingBefore:0];
  v20 = [v3 safeStringForKey:@"lockUsagePolicy"];
  v15 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v20 paddingWith:@"=" paddingBefore:0];
  v18 = [v3 safeStringForKey:@"activeLockCount"];
  v13 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v18 paddingWith:@"=" paddingBefore:0];
  v16 = [v3 safeStringForKey:@"maximumLockCount"];
  v11 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v16 paddingWith:@"=" paddingBefore:0];
  v14 = [v3 safeStringForKey:@"totalLockCount"];
  v4 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v14 paddingWith:@"=" paddingBefore:0];
  v12 = [v3 safeStringForKey:@"continueLockCount"];
  v5 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v12 paddingWith:@"=" paddingBefore:0];
  v6 = [v3 safeStringForKey:@"firstLockTimestamp"];
  v7 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v6 paddingWith:@"=" paddingBefore:0];
  v8 = [v3 safeStringForKey:@"lastRefreshTimestamp"];

  v9 = [MANAutoAssetSetLockTracker summaryPaddedString:&stru_4BD3F0 paddingToLenghtOfString:v8 paddingWith:@"=" paddingBefore:0];
  v19 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@", v17, v15, v13, v11, v4, v5, v7, v9];

  return v19;
}

@end