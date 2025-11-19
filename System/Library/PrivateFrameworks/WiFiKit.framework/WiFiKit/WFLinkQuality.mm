@interface WFLinkQuality
- (BOOL)isEqual:(id)a3;
- (WFLinkQuality)init;
- (WFLinkQuality)initWithSSID:(id)a3 rssi:(int64_t)a4 scaledRSSI:(float)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation WFLinkQuality

- (WFLinkQuality)initWithSSID:(id)a3 rssi:(int64_t)a4 scaledRSSI:(float)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = WFLinkQuality;
  v10 = [(WFLinkQuality *)&v13 init];
  v11 = v10;
  if (v10 && (objc_storeStrong(&v10->_ssid, a3), v11->_ssid))
  {
    v11->_rssi = a4;
    v11->_scaledRssi = a5;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(WFLinkQuality *)self ssid];
  v6 = [v5 copyWithZone:a3];

  v7 = objc_alloc(objc_opt_class());
  v8 = [(WFLinkQuality *)self rssi];
  [(WFLinkQuality *)self scaledRssi];
  v9 = [v7 initWithSSID:v6 rssi:v8 scaledRSSI:?];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFLinkQuality *)self ssid];
  v7 = [(WFLinkQuality *)self rssi];
  [(WFLinkQuality *)self scaledRssi];
  v9 = [v3 stringWithFormat:@"<%@: %p SSID: %@ RSSI: %d ScaledRSSI: %f>", v5, self, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [(WFLinkQuality *)self ssid];
  v6 = [v4 ssid];
  if (![v5 isEqualToString:v6] || (v7 = -[WFLinkQuality rssi](self, "rssi"), v7 != objc_msgSend(v4, "rssi")))
  {

    goto LABEL_7;
  }

  [(WFLinkQuality *)self scaledRssi];
  v9 = v8;
  [v4 scaledRssi];
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