@interface RTWiFiScanMetrics
+ (id)binsForWiFiAPsCount;
+ (unint64_t)bucketForWiFiAPsCount:(unint64_t)a3;
+ (void)submitWiFiScanMetricsWithErrorCode:(unint64_t)a3 accessPointsscanResultsCount:(unint64_t)a4 isScanIssuedByOtherClient:(BOOL)a5 isCacheQuery:(BOOL)a6;
- (RTWiFiScanMetrics)initWithAccessPointsscanResultsCount:(unint64_t)a3 errorCode:(unint64_t)a4 isCacheQuery:(BOOL)a5 isScanIssuedByOtherClient:(BOOL)a6;
@end

@implementation RTWiFiScanMetrics

+ (id)binsForWiFiAPsCount
{
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2845A18B0];
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

+ (void)submitWiFiScanMetricsWithErrorCode:(unint64_t)a3 accessPointsscanResultsCount:(unint64_t)a4 isScanIssuedByOtherClient:(BOOL)a5 isCacheQuery:(BOOL)a6
{
  v6 = [[RTWiFiScanMetrics alloc] initWithAccessPointsscanResultsCount:a4 errorCode:a3 isCacheQuery:a6 isScanIssuedByOtherClient:a5];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    [(RTMetric *)v6 submitMetricsWithError:&v8];
  }
}

- (RTWiFiScanMetrics)initWithAccessPointsscanResultsCount:(unint64_t)a3 errorCode:(unint64_t)a4 isCacheQuery:(BOOL)a5 isScanIssuedByOtherClient:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v22.receiver = self;
  v22.super_class = RTWiFiScanMetrics;
  v10 = [(RTMetric *)&v22 init];
  if (v10)
  {
    v11 = +[RTWiFiScanMetrics binsForWiFiAPsCount];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v13 = [RTMetric binForNumber:v12 bins:v11];
    v14 = [(RTMetric *)v10 metrics];
    [v14 setObject:v13 forKeyedSubscript:@"wifiScanTotalAccessPointsCount"];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a4];
    v16 = [(RTMetric *)v10 metrics];
    [v16 setObject:v15 forKeyedSubscript:@"errorCode"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v18 = [(RTMetric *)v10 metrics];
    [v18 setObject:v17 forKeyedSubscript:@"isCacheQuery"];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v20 = [(RTMetric *)v10 metrics];
    [v20 setObject:v19 forKeyedSubscript:@"isScanIssuedByAnotherClient"];
  }

  return v10;
}

+ (unint64_t)bucketForWiFiAPsCount:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [a1 binsForWiFiAPsCount];
  v6 = [a1 binForNumber:v4 bins:v5];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

@end