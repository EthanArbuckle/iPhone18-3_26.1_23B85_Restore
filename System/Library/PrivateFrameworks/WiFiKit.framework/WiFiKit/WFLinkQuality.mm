@interface WFLinkQuality
- (BOOL)isEqual:(id)equal;
- (WFLinkQuality)init;
- (WFLinkQuality)initWithSSID:(id)d rssi:(int64_t)rssi scaledRSSI:(float)i;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation WFLinkQuality

- (WFLinkQuality)initWithSSID:(id)d rssi:(int64_t)rssi scaledRSSI:(float)i
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = WFLinkQuality;
  v10 = [(WFLinkQuality *)&v13 init];
  v11 = v10;
  if (v10 && (objc_storeStrong(&v10->_ssid, d), v11->_ssid))
  {
    v11->_rssi = rssi;
    v11->_scaledRssi = i;
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (WFLinkQuality)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFLinkQuality init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  ssid = [(WFLinkQuality *)self ssid];
  v6 = [ssid copyWithZone:zone];

  v7 = objc_alloc(objc_opt_class());
  rssi = [(WFLinkQuality *)self rssi];
  [(WFLinkQuality *)self scaledRssi];
  v9 = [v7 initWithSSID:v6 rssi:rssi scaledRSSI:?];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ssid = [(WFLinkQuality *)self ssid];
  rssi = [(WFLinkQuality *)self rssi];
  [(WFLinkQuality *)self scaledRssi];
  v9 = [v3 stringWithFormat:@"<%@: %p SSID: %@ RSSI: %d ScaledRSSI: %f>", v5, self, ssid, rssi, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  ssid = [(WFLinkQuality *)self ssid];
  ssid2 = [equalCopy ssid];
  if (![ssid isEqualToString:ssid2] || (v7 = -[WFLinkQuality rssi](self, "rssi"), v7 != objc_msgSend(equalCopy, "rssi")))
  {

    goto LABEL_7;
  }

  [(WFLinkQuality *)self scaledRssi];
  v9 = v8;
  [equalCopy scaledRssi];
  v11 = v10;

  if (v9 != v11)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = 1;
LABEL_8:

  return v12;
}

@end