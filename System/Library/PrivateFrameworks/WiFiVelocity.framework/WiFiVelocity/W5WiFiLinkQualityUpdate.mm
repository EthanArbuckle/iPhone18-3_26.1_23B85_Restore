@interface W5WiFiLinkQualityUpdate
- (BOOL)conformsToProtocol:(id)protocol;
- (W5WiFiLinkQualityUpdate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5WiFiLinkQualityUpdate

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5WiFiLinkQualityUpdate;
  if (-[W5WiFiLinkQualityUpdate conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([protocol isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&unk_2883436F0];
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"RSSI: %ld dBm\n", self->_rssi];
  [v3 appendFormat:@"txRate: %ld Mbps\n", self->_txRate];
  [v3 appendFormat:@"CCA: %f%%\n", self->_cca];
  [v3 appendFormat:@"Timestamp: %f\n", *&self->_timestamp];
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5WiFiLinkQualityUpdate allocWithZone:?]];
  [(W5WiFiLinkQualityUpdate *)v4 setRssi:self->_rssi];
  [(W5WiFiLinkQualityUpdate *)v4 setTxRate:self->_txRate];
  *&v5 = self->_cca;
  [(W5WiFiLinkQualityUpdate *)v4 setCca:v5];
  [(W5WiFiLinkQualityUpdate *)v4 setTimestamp:self->_timestamp];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_rssi forKey:@"_rssi"];
  [coder encodeInteger:self->_txRate forKey:@"_txRate"];
  *&v5 = self->_cca;
  [coder encodeFloat:@"_cca" forKey:v5];
  timestamp = self->_timestamp;

  [coder encodeDouble:@"_timestamp" forKey:timestamp];
}

- (W5WiFiLinkQualityUpdate)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = W5WiFiLinkQualityUpdate;
  v4 = [(W5WiFiLinkQualityUpdate *)&v8 init];
  if (v4)
  {
    v4->_rssi = [coder decodeIntegerForKey:@"_rssi"];
    v4->_txRate = [coder decodeIntegerForKey:@"_txRate"];
    [coder decodeFloatForKey:@"_cca"];
    v4->_cca = v5;
    [coder decodeDoubleForKey:@"_timestamp"];
    v4->_timestamp = v6;
  }

  return v4;
}

@end