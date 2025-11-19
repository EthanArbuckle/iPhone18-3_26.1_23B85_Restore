@interface WFCurrentNetworkScanRecord
- (WFCurrentNetworkScanRecord)initWithScanResult:(id)a3 knownNetworkProfile:(id)a4;
@end

@implementation WFCurrentNetworkScanRecord

- (WFCurrentNetworkScanRecord)initWithScanResult:(id)a3 knownNetworkProfile:(id)a4
{
  v8.receiver = self;
  v8.super_class = WFCurrentNetworkScanRecord;
  v5 = a4;
  v6 = [(WFNetworkScanRecord *)&v8 initWithScanResults:a3];
  [(WFNetworkScanRecord *)v6 setMatchingKnownNetworkProfile:v5, v8.receiver, v8.super_class];

  return v6;
}

@end