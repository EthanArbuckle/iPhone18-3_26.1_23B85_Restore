@interface WiFiAwareDatapathPerformanceReport
+ (id)performanceFor:(unsigned __int8)for datapathType:(int64_t)type peerMacAddress:(id)address;
- (WiFiAwareDatapathPerformanceReport)initWithCoder:(id)coder;
- (WiFiAwareDatapathPerformanceReport)initWithTimestamp:(id)timestamp localTimestamp:(id)localTimestamp throughputCeilingMbps:(id)mbps throughputCapacityMbps:(id)capacityMbps txLatency:(id)latency signalStrength:(id)strength durationActive:(double)active;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwareDatapathPerformanceReport

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"WiFiAwareDatapathPerformanceReport.timestamp"];
  [coderCopy encodeObject:self->_localTimestamp forKey:@"WiFiAwareDatapathPerformanceReport.localTimestamp"];
  [coderCopy encodeObject:self->_throughputCeilingMbps forKey:@"WiFiAwareDatapathPerformanceReport.throughputCeiling"];
  [coderCopy encodeObject:self->_throughputCapacityMbps forKey:@"WiFiAwareDatapathPerformanceReport.throughputCapacity"];
  [coderCopy encodeObject:self->_txLatency forKey:@"WiFiAwareDatapathPerformanceReport.txLatency"];
  [coderCopy encodeObject:self->_signalStrength forKey:@"WiFiAwareDatapathPerformanceReport.signalStrength"];
  [coderCopy encodeDouble:@"WiFiAwareDatapathPerformanceReport.durationActive" forKey:self->_durationActive];
}

- (WiFiAwareDatapathPerformanceReport)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDatapathPerformanceReport.timestamp"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDatapathPerformanceReport.localTimestamp"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDatapathPerformanceReport.throughputCeiling"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDatapathPerformanceReport.throughputCapacity"];
  v9 = MEMORY[0x277CBEB98];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"WiFiAwareDatapathPerformanceReport.txLatency"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WiFiAwareDatapathPerformanceReport.signalStrength"];
  [coderCopy decodeDoubleForKey:@"WiFiAwareDatapathPerformanceReport.durationActive"];
  v15 = v14;

  v16 = [(WiFiAwareDatapathPerformanceReport *)self initWithTimestamp:v5 localTimestamp:v6 throughputCeilingMbps:v7 throughputCapacityMbps:v8 txLatency:v12 signalStrength:v13 durationActive:v15];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (WiFiAwareDatapathPerformanceReport)initWithTimestamp:(id)timestamp localTimestamp:(id)localTimestamp throughputCeilingMbps:(id)mbps throughputCapacityMbps:(id)capacityMbps txLatency:(id)latency signalStrength:(id)strength durationActive:(double)active
{
  timestampCopy = timestamp;
  localTimestampCopy = localTimestamp;
  mbpsCopy = mbps;
  capacityMbpsCopy = capacityMbps;
  latencyCopy = latency;
  strengthCopy = strength;
  v26.receiver = self;
  v26.super_class = WiFiAwareDatapathPerformanceReport;
  v20 = [(WiFiAwareDatapathPerformanceReport *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_timestamp, timestamp);
    objc_storeStrong(&v21->_localTimestamp, localTimestamp);
    objc_storeStrong(&v21->_throughputCeilingMbps, mbps);
    objc_storeStrong(&v21->_throughputCapacityMbps, capacityMbps);
    objc_storeStrong(&v21->_txLatency, latency);
    objc_storeStrong(&v21->_signalStrength, strength);
    v21->_durationActive = active;
  }

  return v21;
}

+ (id)performanceFor:(unsigned __int8)for datapathType:(int64_t)type peerMacAddress:(id)address
{
  addressCopy = address;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__WiFiAwareDatapathPerformanceReport_performanceFor_datapathType_peerMacAddress___block_invoke;
  v11[3] = &unk_2787AAFC8;
  forCopy = for;
  v12 = addressCopy;
  typeCopy = type;
  v8 = addressCopy;
  v9 = [WiFiP2PXPCConnection directQueryOnEndpointType:1 error:0 querying:v11];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WiFiAwareDatapathPerformanceReport alloc];
  timestamp = [(WiFiAwareDatapathPerformanceReport *)self timestamp];
  localTimestamp = [(WiFiAwareDatapathPerformanceReport *)self localTimestamp];
  throughputCeilingMbps = [(WiFiAwareDatapathPerformanceReport *)self throughputCeilingMbps];
  throughputCapacityMbps = [(WiFiAwareDatapathPerformanceReport *)self throughputCapacityMbps];
  txLatency = [(WiFiAwareDatapathPerformanceReport *)self txLatency];
  signalStrength = [(WiFiAwareDatapathPerformanceReport *)self signalStrength];
  [(WiFiAwareDatapathPerformanceReport *)self durationActive];
  v11 = [(WiFiAwareDatapathPerformanceReport *)v4 initWithTimestamp:timestamp localTimestamp:localTimestamp throughputCeilingMbps:throughputCeilingMbps throughputCapacityMbps:throughputCapacityMbps txLatency:txLatency signalStrength:signalStrength durationActive:?];

  return v11;
}

@end