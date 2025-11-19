@interface WiFiAwareDatapathPerformanceReport
+ (id)performanceFor:(unsigned __int8)a3 datapathType:(int64_t)a4 peerMacAddress:(id)a5;
- (WiFiAwareDatapathPerformanceReport)initWithCoder:(id)a3;
- (WiFiAwareDatapathPerformanceReport)initWithTimestamp:(id)a3 localTimestamp:(id)a4 throughputCeilingMbps:(id)a5 throughputCapacityMbps:(id)a6 txLatency:(id)a7 signalStrength:(id)a8 durationActive:(double)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwareDatapathPerformanceReport

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"WiFiAwareDatapathPerformanceReport.timestamp"];
  [v5 encodeObject:self->_localTimestamp forKey:@"WiFiAwareDatapathPerformanceReport.localTimestamp"];
  [v5 encodeObject:self->_throughputCeilingMbps forKey:@"WiFiAwareDatapathPerformanceReport.throughputCeiling"];
  [v5 encodeObject:self->_throughputCapacityMbps forKey:@"WiFiAwareDatapathPerformanceReport.throughputCapacity"];
  [v5 encodeObject:self->_txLatency forKey:@"WiFiAwareDatapathPerformanceReport.txLatency"];
  [v5 encodeObject:self->_signalStrength forKey:@"WiFiAwareDatapathPerformanceReport.signalStrength"];
  [v5 encodeDouble:@"WiFiAwareDatapathPerformanceReport.durationActive" forKey:self->_durationActive];
}

- (WiFiAwareDatapathPerformanceReport)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDatapathPerformanceReport.timestamp"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDatapathPerformanceReport.localTimestamp"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDatapathPerformanceReport.throughputCeiling"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDatapathPerformanceReport.throughputCapacity"];
  v9 = MEMORY[0x277CBEB98];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"WiFiAwareDatapathPerformanceReport.txLatency"];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDatapathPerformanceReport.signalStrength"];
  [v4 decodeDoubleForKey:@"WiFiAwareDatapathPerformanceReport.durationActive"];
  v15 = v14;

  v16 = [(WiFiAwareDatapathPerformanceReport *)self initWithTimestamp:v5 localTimestamp:v6 throughputCeilingMbps:v7 throughputCapacityMbps:v8 txLatency:v12 signalStrength:v13 durationActive:v15];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (WiFiAwareDatapathPerformanceReport)initWithTimestamp:(id)a3 localTimestamp:(id)a4 throughputCeilingMbps:(id)a5 throughputCapacityMbps:(id)a6 txLatency:(id)a7 signalStrength:(id)a8 durationActive:(double)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v26.receiver = self;
  v26.super_class = WiFiAwareDatapathPerformanceReport;
  v20 = [(WiFiAwareDatapathPerformanceReport *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_timestamp, a3);
    objc_storeStrong(&v21->_localTimestamp, a4);
    objc_storeStrong(&v21->_throughputCeilingMbps, a5);
    objc_storeStrong(&v21->_throughputCapacityMbps, a6);
    objc_storeStrong(&v21->_txLatency, a7);
    objc_storeStrong(&v21->_signalStrength, a8);
    v21->_durationActive = a9;
  }

  return v21;
}

+ (id)performanceFor:(unsigned __int8)a3 datapathType:(int64_t)a4 peerMacAddress:(id)a5
{
  v7 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__WiFiAwareDatapathPerformanceReport_performanceFor_datapathType_peerMacAddress___block_invoke;
  v11[3] = &unk_2787AAFC8;
  v14 = a3;
  v12 = v7;
  v13 = a4;
  v8 = v7;
  v9 = [WiFiP2PXPCConnection directQueryOnEndpointType:1 error:0 querying:v11];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WiFiAwareDatapathPerformanceReport alloc];
  v5 = [(WiFiAwareDatapathPerformanceReport *)self timestamp];
  v6 = [(WiFiAwareDatapathPerformanceReport *)self localTimestamp];
  v7 = [(WiFiAwareDatapathPerformanceReport *)self throughputCeilingMbps];
  v8 = [(WiFiAwareDatapathPerformanceReport *)self throughputCapacityMbps];
  v9 = [(WiFiAwareDatapathPerformanceReport *)self txLatency];
  v10 = [(WiFiAwareDatapathPerformanceReport *)self signalStrength];
  [(WiFiAwareDatapathPerformanceReport *)self durationActive];
  v11 = [(WiFiAwareDatapathPerformanceReport *)v4 initWithTimestamp:v5 localTimestamp:v6 throughputCeilingMbps:v7 throughputCapacityMbps:v8 txLatency:v9 signalStrength:v10 durationActive:?];

  return v11;
}

@end