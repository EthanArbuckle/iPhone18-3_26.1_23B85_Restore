@interface RTWiFiScanMetrics
+ (id)binsForWiFiAPsCount;
+ (unint64_t)bucketForWiFiAPsCount:(unint64_t)count;
+ (void)submitWiFiScanMetricsWithErrorCode:(unint64_t)code accessPointsscanResultsCount:(unint64_t)count isScanIssuedByOtherClient:(BOOL)client isCacheQuery:(BOOL)query;
- (RTWiFiScanMetrics)initWithAccessPointsscanResultsCount:(unint64_t)count errorCode:(unint64_t)code isCacheQuery:(BOOL)query isScanIssuedByOtherClient:(BOOL)client;
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

+ (void)submitWiFiScanMetricsWithErrorCode:(unint64_t)code accessPointsscanResultsCount:(unint64_t)count isScanIssuedByOtherClient:(BOOL)client isCacheQuery:(BOOL)query
{
  v6 = [[RTWiFiScanMetrics alloc] initWithAccessPointsscanResultsCount:count errorCode:code isCacheQuery:query isScanIssuedByOtherClient:client];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    [(RTMetric *)v6 submitMetricsWithError:&v8];
  }
}

- (RTWiFiScanMetrics)initWithAccessPointsscanResultsCount:(unint64_t)count errorCode:(unint64_t)code isCacheQuery:(BOOL)query isScanIssuedByOtherClient:(BOOL)client
{
  clientCopy = client;
  queryCopy = query;
  v22.receiver = self;
  v22.super_class = RTWiFiScanMetrics;
  v10 = [(RTMetric *)&v22 init];
  if (v10)
  {
    v11 = +[RTWiFiScanMetrics binsForWiFiAPsCount];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    v13 = [RTMetric binForNumber:v12 bins:v11];
    metrics = [(RTMetric *)v10 metrics];
    [metrics setObject:v13 forKeyedSubscript:@"wifiScanTotalAccessPointsCount"];

    code = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", code];
    metrics2 = [(RTMetric *)v10 metrics];
    [metrics2 setObject:code forKeyedSubscript:@"errorCode"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:queryCopy];
    metrics3 = [(RTMetric *)v10 metrics];
    [metrics3 setObject:v17 forKeyedSubscript:@"isCacheQuery"];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:clientCopy];
    metrics4 = [(RTMetric *)v10 metrics];
    [metrics4 setObject:v19 forKeyedSubscript:@"isScanIssuedByAnotherClient"];
  }

  return v10;
}

+ (unint64_t)bucketForWiFiAPsCount:(unint64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  binsForWiFiAPsCount = [self binsForWiFiAPsCount];
  v6 = [self binForNumber:v4 bins:binsForWiFiAPsCount];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end