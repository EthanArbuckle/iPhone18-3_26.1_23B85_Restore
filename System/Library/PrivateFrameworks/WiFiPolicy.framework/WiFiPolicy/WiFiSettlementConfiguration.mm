@interface WiFiSettlementConfiguration
- (WiFiSettlementConfiguration)init;
- (id)description;
@end

@implementation WiFiSettlementConfiguration

- (WiFiSettlementConfiguration)init
{
  v3.receiver = self;
  v3.super_class = WiFiSettlementConfiguration;
  result = [(WiFiSettlementConfiguration *)&v3 init];
  if (result)
  {
    *&result->_maxScansWithoutMatchForUnsettlement = xmmword_2333AB190;
    *&result->_lowConfidenceSettlementTime = xmmword_2333AB1A0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  [v6 appendFormat:@"maxNetworks: %lu ", -[WiFiSettlementConfiguration maxNetworksForSettlement](self, "maxNetworksForSettlement")];
  [v6 appendFormat:@"maxScans: %lu ", -[WiFiSettlementConfiguration maxScansWithoutMatchForUnsettlement](self, "maxScansWithoutMatchForUnsettlement")];
  [(WiFiSettlementConfiguration *)self lowConfidenceSettlementTime];
  [v6 appendFormat:@"low: %f ", v7];
  [(WiFiSettlementConfiguration *)self highConfidenceSettlementTime];
  [v6 appendFormat:@"high: %f", v8];
  [v6 appendString:@">"];

  return v6;
}

@end