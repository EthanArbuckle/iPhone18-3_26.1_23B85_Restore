@interface RTMapItemProviderBluePOIWiFiScanMetrics
+ (id)binsForFingerprintsCount;
+ (id)binsForVisitDuration;
+ (id)binsForWiFiAPsCount;
+ (id)binsForWiFiInterval;
+ (unint64_t)bucketForFingerprintsCount:(unint64_t)a3;
+ (unint64_t)bucketForVisitInterval:(double)a3;
+ (unint64_t)bucketForWiFiAPsCount:(unint64_t)a3;
+ (unint64_t)bucketForWiFiInterval:(double)a3;
+ (void)submitBluePOIWiFiScanMetricsWithFingerprintsCount:(unint64_t)a3 fingerprintsZeroAccessPointsCount:(unint64_t)a4 fingerprintsNonZeroAccessPointsCount:(unint64_t)a5 isFingerprintWindowFallback:(BOOL)a6 timeIntervalSinceEarliestFingerprint:(double)a7 timeIntervalSinceLatestFingerprint:(double)a8 totalAccessPointsCount:(unint64_t)a9 visitInterval:(double)a10 visitSource:(int64_t)a11;
- (RTMapItemProviderBluePOIWiFiScanMetrics)initWithFingerprintsCount:(unint64_t)a3 fingerprintsZeroAccessPointsCount:(unint64_t)a4 fingerprintsNonZeroAccessPointsCount:(unint64_t)a5 isFingerprintWindowFallback:(BOOL)a6 timeIntervalSinceEarliestFingerprint:(double)a7 timeIntervalSinceLatestFingerprint:(double)a8 totalAccessPointsCount:(unint64_t)a9 visitInterval:(double)a10 visitSource:(int64_t)a11;
@end

@implementation RTMapItemProviderBluePOIWiFiScanMetrics

- (RTMapItemProviderBluePOIWiFiScanMetrics)initWithFingerprintsCount:(unint64_t)a3 fingerprintsZeroAccessPointsCount:(unint64_t)a4 fingerprintsNonZeroAccessPointsCount:(unint64_t)a5 isFingerprintWindowFallback:(BOOL)a6 timeIntervalSinceEarliestFingerprint:(double)a7 timeIntervalSinceLatestFingerprint:(double)a8 totalAccessPointsCount:(unint64_t)a9 visitInterval:(double)a10 visitSource:(int64_t)a11
{
  v13 = a6;
  v47.receiver = self;
  v47.super_class = RTMapItemProviderBluePOIWiFiScanMetrics;
  v20 = [(RTMetric *)&v47 init];
  if (v20)
  {
    v46 = a11;
    v45 = +[RTMapItemProviderBluePOIWiFiScanMetrics binsForWiFiAPsCount];
    v21 = +[RTMapItemProviderBluePOIWiFiScanMetrics binsForFingerprintsCount];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v23 = [RTMetric binForNumber:v22 bins:v21];
    v24 = [(RTMetric *)v20 metrics];
    [v24 setObject:v23 forKeyedSubscript:@"fingerprintsCount"];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v26 = [RTMetric binForNumber:v25 bins:v21];
    v27 = [(RTMetric *)v20 metrics];
    [v27 setObject:v26 forKeyedSubscript:@"fingerprintsWithZeroAPsCount"];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    v29 = [RTMetric binForNumber:v28 bins:v21];
    v30 = [(RTMetric *)v20 metrics];
    [v30 setObject:v29 forKeyedSubscript:@"fingerprintsWithNonZeroAPsCount"];

    v31 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    v32 = [(RTMetric *)v20 metrics];
    [v32 setObject:v31 forKeyedSubscript:@"isFingerprintWindowFallback"];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "bucketForWiFiInterval:", a7)}];
    v34 = [(RTMetric *)v20 metrics];
    [v34 setObject:v33 forKeyedSubscript:@"timeIntervalEarliesttWiFiScan"];

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "bucketForWiFiInterval:", a8)}];
    v36 = [(RTMetric *)v20 metrics];
    [v36 setObject:v35 forKeyedSubscript:@"timeIntervalLatestWiFiScan"];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a9];
    v38 = [RTMetric binForNumber:v37 bins:v45];
    v39 = [(RTMetric *)v20 metrics];
    [v39 setObject:v38 forKeyedSubscript:@"totalAccessPointsCount"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "bucketForVisitInterval:", a10)}];
    v41 = [(RTMetric *)v20 metrics];
    [v41 setObject:v40 forKeyedSubscript:@"visitDuration"];

    v42 = [MEMORY[0x277CCABB0] numberWithInteger:v46];
    v43 = [(RTMetric *)v20 metrics];
    [v43 setObject:v42 forKeyedSubscript:@"visitSource"];
  }

  return v20;
}

+ (unint64_t)bucketForVisitInterval:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v5 = [a1 binsForVisitDuration];
  v6 = [a1 binForNumber:v4 bins:v5];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

+ (id)binsForVisitDuration
{
  v2 = binsForVisitDuration_binsForVisitDuration;
  if (!binsForVisitDuration_binsForVisitDuration)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2845A0D28];
    v4 = binsForVisitDuration_binsForVisitDuration;
    binsForVisitDuration_binsForVisitDuration = v3;

    v5 = 23;
    v6 = 3600;
    do
    {
      v7 = binsForVisitDuration_binsForVisitDuration;
      v8 = [MEMORY[0x277CCABB0] numberWithLong:v6];
      [v7 addObject:v8];

      v6 += 3600;
      --v5;
    }

    while (v5);
    v9 = 4;
    v10 = 86400;
    do
    {
      v11 = binsForVisitDuration_binsForVisitDuration;
      v12 = [MEMORY[0x277CCABB0] numberWithLong:v10];
      [v11 addObject:v12];

      v10 += 86400;
      --v9;
    }

    while (v9);
    v2 = binsForVisitDuration_binsForVisitDuration;
  }

  return v2;
}

+ (id)binsForWiFiAPsCount
{
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2845A0D40];
  v3 = 10;
  do
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    [v2 addObject:v4];

    v3 = (v3 + 10);
  }

  while (v3 != 60);
  v5 = 100;
  do
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [v2 addObject:v6];

    v5 = (v5 + 100);
  }

  while (v5 != 600);

  return v2;
}

+ (id)binsForFingerprintsCount
{
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2845A0D58];
  v3 = 10;
  do
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    [v2 addObject:v4];

    v3 = (v3 + 10);
  }

  while (v3 != 110);

  return v2;
}

+ (unint64_t)bucketForWiFiInterval:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v5 = [a1 binsForWiFiInterval];
  v6 = [a1 binForNumber:v4 bins:v5];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

+ (id)binsForWiFiInterval
{
  v2 = binsForWiFiInterval_binsForWiFiInterval;
  if (!binsForWiFiInterval_binsForWiFiInterval)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2845A0D70];
    v4 = binsForWiFiInterval_binsForWiFiInterval;
    binsForWiFiInterval_binsForWiFiInterval = v3;

    v5 = 1;
    do
    {
      v6 = binsForWiFiInterval_binsForWiFiInterval;
      v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
      [v6 addObject:v7];

      v5 = (v5 + 1);
    }

    while (v5 != 15);
    for (i = 60; i != 960; i += 60)
    {
      v9 = binsForWiFiInterval_binsForWiFiInterval;
      v10 = [MEMORY[0x277CCABB0] numberWithLong:i];
      [v9 addObject:v10];
    }

    v2 = binsForWiFiInterval_binsForWiFiInterval;
  }

  return v2;
}

+ (unint64_t)bucketForWiFiAPsCount:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [a1 binsForWiFiAPsCount];
  v6 = [a1 binForNumber:v4 bins:v5];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

+ (unint64_t)bucketForFingerprintsCount:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [a1 binsForFingerprintsCount];
  v6 = [a1 binForNumber:v4 bins:v5];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

+ (void)submitBluePOIWiFiScanMetricsWithFingerprintsCount:(unint64_t)a3 fingerprintsZeroAccessPointsCount:(unint64_t)a4 fingerprintsNonZeroAccessPointsCount:(unint64_t)a5 isFingerprintWindowFallback:(BOOL)a6 timeIntervalSinceEarliestFingerprint:(double)a7 timeIntervalSinceLatestFingerprint:(double)a8 totalAccessPointsCount:(unint64_t)a9 visitInterval:(double)a10 visitSource:(int64_t)a11
{
  v11 = [[RTMapItemProviderBluePOIWiFiScanMetrics alloc] initWithFingerprintsCount:a3 fingerprintsZeroAccessPointsCount:a4 fingerprintsNonZeroAccessPointsCount:a5 isFingerprintWindowFallback:a6 timeIntervalSinceEarliestFingerprint:a9 timeIntervalSinceLatestFingerprint:a11 totalAccessPointsCount:a7 visitInterval:a8 visitSource:a10];
  v12 = v11;
  if (v11)
  {
    v13 = 0;
    [(RTMetric *)v11 submitMetricsWithError:&v13];
  }
}

@end