@interface WFHotspotDetails
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualHotspotDetails:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation WFHotspotDetails

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFHotspotDetails *)self isEqualHotspotDetails:v4];

  return v5;
}

- (BOOL)isEqualHotspotDetails:(id)a3
{
  v4 = a3;
  v5 = [(WFHotspotDetails *)self batteryLife];
  v6 = [v4 batteryLife];
  if ([v5 isEqual:v6])
  {
    v7 = [(WFHotspotDetails *)self cellularProtocolString];
    v8 = [v4 cellularProtocolString];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(WFHotspotDetails *)self signalStrength];
      v10 = [v4 signalStrength];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(WFHotspotDetails *)self batteryLife];
  v4 = [v3 hash];
  v5 = [(WFHotspotDetails *)self cellularProtocolString];
  v6 = [v5 hash] ^ v4;
  v7 = [(WFHotspotDetails *)self signalStrength];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFHotspotDetails *)self batteryLife];
  v7 = [(WFHotspotDetails *)self cellularProtocolString];
  v8 = [(WFHotspotDetails *)self signalStrength];
  v9 = [v3 stringWithFormat:@"(%@) batteryLife: %@ | cellularProtocolString: %@ | signalStrength: %@", v5, v6, v7, v8];

  return v9;
}

@end