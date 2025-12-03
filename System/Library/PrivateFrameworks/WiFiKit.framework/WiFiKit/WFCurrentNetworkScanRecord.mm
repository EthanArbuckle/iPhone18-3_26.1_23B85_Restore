@interface WFCurrentNetworkScanRecord
- (WFCurrentNetworkScanRecord)initWithScanResult:(id)result knownNetworkProfile:(id)profile;
@end

@implementation WFCurrentNetworkScanRecord

- (WFCurrentNetworkScanRecord)initWithScanResult:(id)result knownNetworkProfile:(id)profile
{
  v8.receiver = self;
  v8.super_class = WFCurrentNetworkScanRecord;
  profileCopy = profile;
  v6 = [(WFNetworkScanRecord *)&v8 initWithScanResults:result];
  [(WFNetworkScanRecord *)v6 setMatchingKnownNetworkProfile:profileCopy, v8.receiver, v8.super_class];

  return v6;
}

@end