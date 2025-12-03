@interface RTMapItemProviderBluePOIWiFiScanMetrics
+ (id)binsForFingerprintsCount;
+ (id)binsForVisitDuration;
+ (id)binsForWiFiAPsCount;
+ (id)binsForWiFiInterval;
+ (unint64_t)bucketForFingerprintsCount:(unint64_t)count;
+ (unint64_t)bucketForVisitInterval:(double)interval;
+ (unint64_t)bucketForWiFiAPsCount:(unint64_t)count;
+ (unint64_t)bucketForWiFiInterval:(double)interval;
+ (void)submitBluePOIWiFiScanMetricsWithFingerprintsCount:(unint64_t)count fingerprintsZeroAccessPointsCount:(unint64_t)pointsCount fingerprintsNonZeroAccessPointsCount:(unint64_t)accessPointsCount isFingerprintWindowFallback:(BOOL)fallback timeIntervalSinceEarliestFingerprint:(double)fingerprint timeIntervalSinceLatestFingerprint:(double)latestFingerprint totalAccessPointsCount:(unint64_t)totalAccessPointsCount visitInterval:(double)self0 visitSource:(int64_t)self1;
- (RTMapItemProviderBluePOIWiFiScanMetrics)initWithFingerprintsCount:(unint64_t)count fingerprintsZeroAccessPointsCount:(unint64_t)pointsCount fingerprintsNonZeroAccessPointsCount:(unint64_t)accessPointsCount isFingerprintWindowFallback:(BOOL)fallback timeIntervalSinceEarliestFingerprint:(double)fingerprint timeIntervalSinceLatestFingerprint:(double)latestFingerprint totalAccessPointsCount:(unint64_t)totalAccessPointsCount visitInterval:(double)self0 visitSource:(int64_t)self1;
@end

@implementation RTMapItemProviderBluePOIWiFiScanMetrics

- (RTMapItemProviderBluePOIWiFiScanMetrics)initWithFingerprintsCount:(unint64_t)count fingerprintsZeroAccessPointsCount:(unint64_t)pointsCount fingerprintsNonZeroAccessPointsCount:(unint64_t)accessPointsCount isFingerprintWindowFallback:(BOOL)fallback timeIntervalSinceEarliestFingerprint:(double)fingerprint timeIntervalSinceLatestFingerprint:(double)latestFingerprint totalAccessPointsCount:(unint64_t)totalAccessPointsCount visitInterval:(double)self0 visitSource:(int64_t)self1
{
  fallbackCopy = fallback;
  v47.receiver = self;
  v47.super_class = RTMapItemProviderBluePOIWiFiScanMetrics;
  v20 = [(RTMetric *)&v47 init];
  if (v20)
  {
    sourceCopy = source;
    v45 = +[RTMapItemProviderBluePOIWiFiScanMetrics binsForWiFiAPsCount];
    v21 = +[RTMapItemProviderBluePOIWiFiScanMetrics binsForFingerprintsCount];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    v23 = [RTMetric binForNumber:v22 bins:v21];
    metrics = [(RTMetric *)v20 metrics];
    [metrics setObject:v23 forKeyedSubscript:@"fingerprintsCount"];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:pointsCount];
    v26 = [RTMetric binForNumber:v25 bins:v21];
    metrics2 = [(RTMetric *)v20 metrics];
    [metrics2 setObject:v26 forKeyedSubscript:@"fingerprintsWithZeroAPsCount"];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:accessPointsCount];
    v29 = [RTMetric binForNumber:v28 bins:v21];
    metrics3 = [(RTMetric *)v20 metrics];
    [metrics3 setObject:v29 forKeyedSubscript:@"fingerprintsWithNonZeroAPsCount"];

    v31 = [MEMORY[0x277CCABB0] numberWithBool:fallbackCopy];
    metrics4 = [(RTMetric *)v20 metrics];
    [metrics4 setObject:v31 forKeyedSubscript:@"isFingerprintWindowFallback"];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "bucketForWiFiInterval:", fingerprint)}];
    metrics5 = [(RTMetric *)v20 metrics];
    [metrics5 setObject:v33 forKeyedSubscript:@"timeIntervalEarliesttWiFiScan"];

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "bucketForWiFiInterval:", latestFingerprint)}];
    metrics6 = [(RTMetric *)v20 metrics];
    [metrics6 setObject:v35 forKeyedSubscript:@"timeIntervalLatestWiFiScan"];

    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:totalAccessPointsCount];
    v38 = [RTMetric binForNumber:v37 bins:v45];
    metrics7 = [(RTMetric *)v20 metrics];
    [metrics7 setObject:v38 forKeyedSubscript:@"totalAccessPointsCount"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "bucketForVisitInterval:", interval)}];
    metrics8 = [(RTMetric *)v20 metrics];
    [metrics8 setObject:v40 forKeyedSubscript:@"visitDuration"];

    v42 = [MEMORY[0x277CCABB0] numberWithInteger:sourceCopy];
    metrics9 = [(RTMetric *)v20 metrics];
    [metrics9 setObject:v42 forKeyedSubscript:@"visitSource"];
  }

  return v20;
}

+ (unint64_t)bucketForVisitInterval:(double)interval
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
  binsForVisitDuration = [self binsForVisitDuration];
  v6 = [self binForNumber:v4 bins:binsForVisitDuration];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
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

+ (unint64_t)bucketForWiFiInterval:(double)interval
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
  binsForWiFiInterval = [self binsForWiFiInterval];
  v6 = [self binForNumber:v4 bins:binsForWiFiInterval];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
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

+ (unint64_t)bucketForWiFiAPsCount:(unint64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  binsForWiFiAPsCount = [self binsForWiFiAPsCount];
  v6 = [self binForNumber:v4 bins:binsForWiFiAPsCount];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (unint64_t)bucketForFingerprintsCount:(unint64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  binsForFingerprintsCount = [self binsForFingerprintsCount];
  v6 = [self binForNumber:v4 bins:binsForFingerprintsCount];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (void)submitBluePOIWiFiScanMetricsWithFingerprintsCount:(unint64_t)count fingerprintsZeroAccessPointsCount:(unint64_t)pointsCount fingerprintsNonZeroAccessPointsCount:(unint64_t)accessPointsCount isFingerprintWindowFallback:(BOOL)fallback timeIntervalSinceEarliestFingerprint:(double)fingerprint timeIntervalSinceLatestFingerprint:(double)latestFingerprint totalAccessPointsCount:(unint64_t)totalAccessPointsCount visitInterval:(double)self0 visitSource:(int64_t)self1
{
  v11 = [[RTMapItemProviderBluePOIWiFiScanMetrics alloc] initWithFingerprintsCount:count fingerprintsZeroAccessPointsCount:pointsCount fingerprintsNonZeroAccessPointsCount:accessPointsCount isFingerprintWindowFallback:fallback timeIntervalSinceEarliestFingerprint:totalAccessPointsCount timeIntervalSinceLatestFingerprint:source totalAccessPointsCount:fingerprint visitInterval:latestFingerprint visitSource:interval];
  v12 = v11;
  if (v11)
  {
    v13 = 0;
    [(RTMetric *)v11 submitMetricsWithError:&v13];
  }
}

@end