@interface W5WiFiLinkQualityUpdate
- (BOOL)conformsToProtocol:(id)a3;
- (W5WiFiLinkQualityUpdate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation W5WiFiLinkQualityUpdate

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5WiFiLinkQualityUpdate;
  if (-[W5WiFiLinkQualityUpdate conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5WiFiLinkQualityUpdate allocWithZone:?]];
  [(W5WiFiLinkQualityUpdate *)v4 setRssi:self->_rssi];
  [(W5WiFiLinkQualityUpdate *)v4 setTxRate:self->_txRate];
  *&v5 = self->_cca;
  [(W5WiFiLinkQualityUpdate *)v4 setCca:v5];
  [(W5WiFiLinkQualityUpdate *)v4 setTimestamp:self->_timestamp];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_rssi forKey:@"_rssi"];
  [a3 encodeInteger:self->_txRate forKey:@"_txRate"];
  *&v5 = self->_cca;
  [a3 encodeFloat:@"_cca" forKey:v5];
  timestamp = self->_timestamp;

  [a3 encodeDouble:@"_timestamp" forKey:timestamp];
}

- (W5WiFiLinkQualityUpdate)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = W5WiFiLinkQualityUpdate;
  v4 = [(W5WiFiLinkQualityUpdate *)&v8 init];
  if (v4)
  {
    v4->_rssi = [a3 decodeIntegerForKey:@"_rssi"];
    v4->_txRate = [a3 decodeIntegerForKey:@"_txRate"];
    [a3 decodeFloatForKey:@"_cca"];
    v4->_cca = v5;
    [a3 decodeDoubleForKey:@"_timestamp"];
    v4->_timestamp = v6;
  }

  return v4;
}

@end